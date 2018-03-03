; ModuleID = 'coreutils-8.27/src/stdbuf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.anon = type { i64, i32, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.allocator = type { i8* (i64)*, i8* (i8*, i64)*, void (i8*)*, void (i64)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... COMMAND\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Run COMMAND, with modified buffering operations for its standard streams.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [182 x i8] c"  -i, --input=MODE   adjust standard input stream buffering\0A  -o, --output=MODE  adjust standard output stream buffering\0A  -e, --error=MODE   adjust standard error stream buffering\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"\0AIf MODE is 'L' the corresponding stream will be line buffered.\0AThis option is invalid with standard input.\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\0AIf MODE is '0' the corresponding stream will be unbuffered.\0A\00", align 1
@.str.8 = private unnamed_addr constant [253 x i8] c"\0AOtherwise MODE is a number which may be followed by one of the following:\0AKB 1000, K 1024, MB 1000*1000, M 1024*1024, and so on for G, T, P, E, Z, Y.\0AIn this case the corresponding stream will be fully buffered with the buffer\0Asize set to MODE bytes.\0A\00", align 1
@.str.9 = private unnamed_addr constant [267 x i8] c"\0ANOTE: If COMMAND adjusts the buffering of its standard streams ('tee' does\0Afor example) then that will override corresponding changes by 'stdbuf'.\0AAlso some filters (like 'dd' and 'cat' etc.) don't use streams for I/O,\0Aand are thus unaffected by 'stdbuf' settings.\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"stdbuf\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.38 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"+i:o:e:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@stdbuf = internal global [3 x %struct.anon] zeroinitializer, align 16, !dbg !41
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [36 x i8] c"line buffering stdin is meaningless\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"EGkKMPTYZ0\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"%s%c=L\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"_STDBUF_\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"%s%c=%lu\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"failed to update the environment with %s\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"you must specify a buffering mode option\00", align 1
@program_path = internal unnamed_addr global i8* null, align 8, !dbg !39
@.str.52 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"/usr/local/lib/coreutils\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"LD_PRELOAD\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"/usr/local/libexec/coreutils\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"libstdbuf.so\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"failed to find %s\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"%s=%s:%s\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !93
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !99
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !104
@.str.18 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !108
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !115
@.str.62 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.63 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.64 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.68, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.69, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.74, i32 0, i32 0), i8* null], align 16, !dbg !122
@.str.65 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.66 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.67 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.68 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.69 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.70 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.71 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.72 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.73 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.74 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !164
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !171
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !184
@.str.11.75 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.76 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.77 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.78 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.79 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.80 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.81 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !191
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !198
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !186
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !200
@.str.86 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.87 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.88 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.89 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.90 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.91 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.92 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.93 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.94 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.95 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.96 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.97 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.98 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.99 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.102 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.105 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.106 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !206
@.str.1.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.126 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.139 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.142 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !215
@.str.3.143 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.144 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.145 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.146 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.147 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.148 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@stdlib_allocator = local_unnamed_addr constant %struct.allocator { i8* (i64)* @malloc, i8* (i8*, i64)* @realloc, void (i8*)* @free, void (i64)* null }, align 8, !dbg !563

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !659 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !663, metadata !664), !dbg !665
  %2 = icmp eq i32 %0, 0, !dbg !666
  br i1 %2, label %8, label %3, !dbg !668

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !669, !tbaa !672
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !669
  %6 = load i8*, i8** @program_name, align 8, !dbg !669, !tbaa !672
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !676
  br label %54, !dbg !678

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !680
  %10 = load i8*, i8** @program_name, align 8, !dbg !680, !tbaa !672
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !682
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !684
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !672
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !685
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !686
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !672
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !691
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !693
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !693, !tbaa !672
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !694
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !695
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !695, !tbaa !672
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !696
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !697
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !697, !tbaa !672
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !698
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !699
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !699, !tbaa !672
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !700
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !701
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !672
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !702
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([253 x i8], [253 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !703
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !672
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11, !dbg !704
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !705
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !672
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11, !dbg !706
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !59, metadata !664) #11, !dbg !707
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !59, metadata !664) #11, !dbg !707
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !709
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0)) #11, !dbg !710
  %41 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !712
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !70, metadata !664) #11, !dbg !713
  %42 = icmp eq i8* %41, null, !dbg !714
  br i1 %42, label %49, label %43, !dbg !715

; <label>:43:                                     ; preds = %8
  %44 = tail call i32 @strncmp(i8* nonnull %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #13, !dbg !716
  %45 = icmp eq i32 %44, 0, !dbg !716
  br i1 %45, label %49, label %46, !dbg !718

; <label>:46:                                     ; preds = %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !720
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !722
  br label %49, !dbg !724

; <label>:49:                                     ; preds = %8, %43, %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !725
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !726
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !727
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0)) #11, !dbg !728
  br label %54

; <label>:54:                                     ; preds = %49, %3
  tail call void @exit(i32 %0) #14, !dbg !729
  unreachable, !dbg !729
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !730 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i8*], align 16
  tail call void @llvm.dbg.declare(metadata [3 x i8*]* %6, metadata !749, metadata !664), !dbg !798
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !735, metadata !664), !dbg !800
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !736, metadata !664), !dbg !801
  %9 = load i8*, i8** %1, align 8, !dbg !802, !tbaa !672
  tail call void @set_program_name(i8* %9) #11, !dbg !803
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !804
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !805
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !806
  tail call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !807, metadata !664), !dbg !810
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !812, !tbaa !814
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !816
  %14 = bitcast i64* %4 to i8*
  br label %15, !dbg !817

; <label>:15:                                     ; preds = %58, %2
  %16 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !818
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !737, metadata !664), !dbg !820
  switch i32 %16, label %81 [
    i32 -1, label %82
    i32 -131, label %78
    i32 -130, label %77
    i32 101, label %19
    i32 105, label %17
    i32 111, label %18
  ], !dbg !821

; <label>:17:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !822, metadata !664), !dbg !828
  br label %19, !dbg !830

; <label>:18:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !822, metadata !664), !dbg !828
  br label %19, !dbg !832

; <label>:19:                                     ; preds = %18, %17, %15
  %20 = phi i64 [ 1, %18 ], [ 0, %17 ], [ 2, %15 ]
  %21 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 1, !dbg !833
  store i32 %16, i32* %21, align 8, !dbg !834, !tbaa !835
  %22 = load i8*, i8** @optarg, align 8, !dbg !838, !tbaa !672
  %23 = load i8, i8* %22, align 1, !dbg !840, !tbaa !841
  %24 = sext i8 %23 to i32, !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !842, metadata !664), !dbg !848
  %25 = add nsw i32 %24, -9, !dbg !850
  %26 = icmp ult i32 %25, 24, !dbg !850
  br i1 %26, label %27, label %43, !dbg !850

; <label>:27:                                     ; preds = %19
  br label %28, !dbg !850

; <label>:28:                                     ; preds = %27, %35
  %29 = phi i8* [ %36, %35 ], [ %22, %27 ]
  %30 = phi i32 [ %39, %35 ], [ %25, %27 ]
  %31 = trunc i32 %30 to i24, !dbg !850
  %32 = lshr i24 -8388577, %31, !dbg !850
  %33 = and i24 %32, 1, !dbg !850
  %34 = icmp eq i24 %33, 0, !dbg !850
  br i1 %34, label %41, label %35, !dbg !851

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !852
  store i8* %36, i8** @optarg, align 8, !dbg !852, !tbaa !672
  %37 = load i8, i8* %36, align 1, !dbg !840, !tbaa !841
  %38 = sext i8 %37 to i32, !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !842, metadata !664), !dbg !848
  %39 = add nsw i32 %38, -9, !dbg !850
  %40 = icmp ult i32 %39, 24, !dbg !850
  br i1 %40, label %28, label %41, !dbg !850, !llvm.loop !853

; <label>:41:                                     ; preds = %35, %28
  %42 = phi i8* [ %29, %28 ], [ %36, %35 ]
  br label %43, !dbg !855

; <label>:43:                                     ; preds = %41, %19
  %44 = phi i8* [ %22, %19 ], [ %42, %41 ], !dbg !856
  %45 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 2, !dbg !855
  store i8* %44, i8** %45, align 8, !dbg !858, !tbaa !859
  %46 = icmp eq i32 %16, 105, !dbg !860
  %47 = load i8, i8* %44, align 1, !tbaa !841
  %48 = icmp eq i8 %47, 76, !dbg !862
  %49 = and i1 %46, %48, !dbg !864
  br i1 %49, label %50, label %52, !dbg !864

; <label>:50:                                     ; preds = %43
  %51 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !865
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51) #11, !dbg !867
  call void @usage(i32 125) #15, !dbg !869
  unreachable, !dbg !869

; <label>:52:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !744, metadata !664), !dbg !870
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !745, metadata !664), !dbg !871
  %53 = icmp eq i8 %47, 76, !dbg !872
  br i1 %53, label %54, label %59, !dbg !875

; <label>:54:                                     ; preds = %52
  %55 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !877
  %56 = load i8, i8* %55, align 1, !dbg !877, !tbaa !841
  %57 = icmp eq i8 %56, 0, !dbg !880
  br i1 %57, label %58, label %59, !dbg !882

; <label>:58:                                     ; preds = %54, %66
  br label %15, !dbg !818, !llvm.loop !883

; <label>:59:                                     ; preds = %52, %54
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !885, metadata !664) #11, !dbg !893
  call void @llvm.dbg.value(metadata i64* %67, i64 0, metadata !890, metadata !664) #11, !dbg !895
  call void @llvm.lifetime.start(i64 8, i8* nonnull %14) #11, !dbg !896
  call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !891, metadata !897) #11, !dbg !898
  %60 = call i32 @xstrtoumax(i8* nonnull %44, i8** null, i32 10, i64* nonnull %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0)) #11, !dbg !899
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !892, metadata !664) #11, !dbg !900
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !892, metadata !664) #11, !dbg !900
  switch i32 %60, label %63 [
    i32 0, label %66
    i32 1, label %61
  ], !dbg !901

; <label>:61:                                     ; preds = %59
  %62 = tail call i32* @__errno_location() #1, !dbg !902
  br label %70, !dbg !901

; <label>:63:                                     ; preds = %59
  %64 = tail call i32* @__errno_location() #1, !dbg !904
  %65 = load i32, i32* %64, align 4, !dbg !904, !tbaa !814
  br label %70, !dbg !906

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 %20, i32 0, !dbg !907
  %68 = tail call i32* @__errno_location() #1, !dbg !908
  store i32 0, i32* %68, align 4, !dbg !911, !tbaa !814
  %69 = load i64, i64* %4, align 8, !dbg !912, !tbaa !913
  call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !891, metadata !664) #11, !dbg !898
  store i64 %69, i64* %67, align 8, !dbg !914, !tbaa !913
  call void @llvm.lifetime.end(i64 8, i8* nonnull %14) #11, !dbg !915
  br label %58, !dbg !916

; <label>:70:                                     ; preds = %61, %63
  %71 = phi i32* [ %62, %61 ], [ %64, %63 ], !dbg !918
  %72 = phi i32 [ 75, %61 ], [ %65, %63 ], !dbg !919
  store i32 %72, i32* %71, align 4, !dbg !920, !tbaa !814
  call void @llvm.lifetime.end(i64 8, i8* nonnull %14) #11, !dbg !915
  %73 = load i32, i32* %71, align 4, !dbg !918, !tbaa !814
  %74 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !921
  %75 = load i8*, i8** @optarg, align 8, !dbg !918, !tbaa !672
  %76 = call i8* @quote(i8* %75) #11, !dbg !922
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %73, i8* %74, i8* %76) #11, !dbg !924
  unreachable, !dbg !918

; <label>:77:                                     ; preds = %15
  call void @usage(i32 0) #15, !dbg !926
  unreachable, !dbg !926

; <label>:78:                                     ; preds = %15
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !927, !tbaa !672
  %80 = load i8*, i8** @Version, align 8, !dbg !927, !tbaa !672
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* null) #11, !dbg !927
  call void @exit(i32 0) #14, !dbg !928
  unreachable, !dbg !927

; <label>:81:                                     ; preds = %15
  call void @usage(i32 125) #15, !dbg !929
  unreachable, !dbg !929

; <label>:82:                                     ; preds = %15
  %83 = load i32, i32* @optind, align 4, !dbg !930, !tbaa !814
  %84 = sext i32 %83 to i64, !dbg !931
  %85 = getelementptr inbounds i8*, i8** %1, i64 %84, !dbg !931
  call void @llvm.dbg.value(metadata i8** %85, i64 0, metadata !736, metadata !664), !dbg !801
  %86 = icmp slt i32 %83, %0, !dbg !932
  br i1 %86, label %89, label %87, !dbg !934

; <label>:87:                                     ; preds = %82
  %88 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !935
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %88) #11, !dbg !937
  call void @usage(i32 125) #15, !dbg !939
  unreachable, !dbg !939

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !945, metadata !664) #11, !dbg !961
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !945, metadata !664) #11, !dbg !961
  %90 = bitcast i8** %3 to i8*
  %91 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 2), align 16, !dbg !962, !tbaa !859
  %92 = icmp eq i8* %91, null, !dbg !963
  br i1 %92, label %127, label %93, !dbg !964

; <label>:93:                                     ; preds = %89
  call void @llvm.lifetime.start(i64 8, i8* nonnull %90) #11, !dbg !965
  %94 = load i8, i8* %91, align 1, !dbg !966, !tbaa !841
  %95 = icmp eq i8 %94, 76, !dbg !967
  %96 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 1), align 8, !tbaa !835
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !968, metadata !664) #11, !dbg !971
  %97 = add i32 %96, 128, !dbg !976
  %98 = icmp ult i32 %97, 384, !dbg !976
  br i1 %98, label %99, label %105, !dbg !976

; <label>:99:                                     ; preds = %93
  %100 = tail call i32** @__ctype_toupper_loc() #1, !dbg !977
  %101 = load i32*, i32** %100, align 8, !dbg !979, !tbaa !672
  %102 = sext i32 %96 to i64, !dbg !980
  %103 = getelementptr inbounds i32, i32* %101, i64 %102, !dbg !980
  %104 = load i32, i32* %103, align 4, !dbg !980, !tbaa !814
  br label %105, !dbg !981

; <label>:105:                                    ; preds = %99, %93
  %106 = phi i32 [ %104, %99 ], [ %96, %93 ], !dbg !982
  br i1 %95, label %107, label %109, !dbg !984

; <label>:107:                                    ; preds = %105
  call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !953, metadata !664) #11, !dbg !985
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !946, metadata !897) #11, !dbg !986
  %108 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %106) #11, !dbg !987
  call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !952, metadata !664) #11, !dbg !989
  br label %112, !dbg !990

; <label>:109:                                    ; preds = %105
  %110 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 0, i32 0), align 16, !dbg !991, !tbaa !992
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !946, metadata !897) #11, !dbg !986
  %111 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %106, i64 %110) #11, !dbg !993
  call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !952, metadata !664) #11, !dbg !989
  br label %112

; <label>:112:                                    ; preds = %109, %107
  %113 = phi i32 [ %108, %107 ], [ %111, %109 ]
  call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !952, metadata !664) #11, !dbg !989
  %114 = icmp slt i32 %113, 0, !dbg !994
  br i1 %114, label %115, label %116, !dbg !996

; <label>:115:                                    ; preds = %181, %150, %112
  call void @xalloc_die() #14, !dbg !997
  unreachable, !dbg !997

; <label>:116:                                    ; preds = %112
  %117 = load i8*, i8** %3, align 8, !dbg !998, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !946, metadata !664) #11, !dbg !986
  %118 = call i32 @putenv(i8* %117) #11, !dbg !1000
  %119 = icmp eq i32 %118, 0, !dbg !1001
  br i1 %119, label %126, label %120, !dbg !1002

; <label>:120:                                    ; preds = %184, %153, %116
  %121 = tail call i32* @__errno_location() #1, !dbg !1003
  %122 = load i32, i32* %121, align 4, !dbg !1003, !tbaa !814
  %123 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 5) #11, !dbg !1005
  %124 = load i8*, i8** %3, align 8, !dbg !1003, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !946, metadata !664) #11, !dbg !986
  %125 = call i8* @quote(i8* %124) #11, !dbg !1007
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %122, i8* %123, i8* %125) #11, !dbg !1009
  unreachable, !dbg !1003

; <label>:126:                                    ; preds = %116
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.lifetime.end(i64 8, i8* nonnull %90) #11, !dbg !1011
  br label %127, !dbg !1012

; <label>:127:                                    ; preds = %126, %89
  %128 = phi i8 [ 1, %126 ], [ 0, %89 ]
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !945, metadata !664) #11, !dbg !961
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !945, metadata !664) #11, !dbg !961
  %129 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 2), align 8, !dbg !962, !tbaa !859
  %130 = icmp eq i8* %129, null, !dbg !963
  br i1 %130, label %158, label %131, !dbg !964

; <label>:131:                                    ; preds = %127
  call void @llvm.lifetime.start(i64 8, i8* nonnull %90) #11, !dbg !965
  %132 = load i8, i8* %129, align 1, !dbg !966, !tbaa !841
  %133 = icmp eq i8 %132, 76, !dbg !967
  %134 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 1), align 8, !tbaa !835
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !968, metadata !664) #11, !dbg !971
  %135 = add i32 %134, 128, !dbg !976
  %136 = icmp ult i32 %135, 384, !dbg !976
  br i1 %136, label %137, label %143, !dbg !976

; <label>:137:                                    ; preds = %131
  %138 = tail call i32** @__ctype_toupper_loc() #1, !dbg !977
  %139 = load i32*, i32** %138, align 8, !dbg !979, !tbaa !672
  %140 = sext i32 %134 to i64, !dbg !980
  %141 = getelementptr inbounds i32, i32* %139, i64 %140, !dbg !980
  %142 = load i32, i32* %141, align 4, !dbg !980, !tbaa !814
  br label %143, !dbg !981

; <label>:143:                                    ; preds = %137, %131
  %144 = phi i32 [ %142, %137 ], [ %134, %131 ], !dbg !982
  br i1 %133, label %148, label %145, !dbg !984

; <label>:145:                                    ; preds = %143
  %146 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 1, i32 0), align 8, !dbg !991, !tbaa !992
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !946, metadata !897) #11, !dbg !986
  %147 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %144, i64 %146) #11, !dbg !993
  call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !952, metadata !664) #11, !dbg !989
  br label %150

; <label>:148:                                    ; preds = %143
  call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !953, metadata !664) #11, !dbg !985
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !946, metadata !897) #11, !dbg !986
  %149 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %144) #11, !dbg !987
  br label %150, !dbg !990

; <label>:150:                                    ; preds = %148, %145
  %151 = phi i32 [ %149, %148 ], [ %147, %145 ]
  call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !952, metadata !664) #11, !dbg !989
  %152 = icmp slt i32 %151, 0, !dbg !994
  br i1 %152, label %115, label %153, !dbg !996

; <label>:153:                                    ; preds = %150
  %154 = load i8*, i8** %3, align 8, !dbg !998, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !946, metadata !664) #11, !dbg !986
  %155 = call i32 @putenv(i8* %154) #11, !dbg !1000
  %156 = icmp eq i32 %155, 0, !dbg !1001
  br i1 %156, label %157, label %120, !dbg !1002

; <label>:157:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.lifetime.end(i64 8, i8* nonnull %90) #11, !dbg !1011
  br label %158, !dbg !1012

; <label>:158:                                    ; preds = %157, %127
  %159 = phi i8 [ 1, %157 ], [ %128, %127 ]
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !945, metadata !664) #11, !dbg !961
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !945, metadata !664) #11, !dbg !961
  %160 = load i8*, i8** getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 2), align 16, !dbg !962, !tbaa !859
  %161 = icmp eq i8* %160, null, !dbg !963
  br i1 %161, label %189, label %162, !dbg !964

; <label>:162:                                    ; preds = %158
  call void @llvm.lifetime.start(i64 8, i8* nonnull %90) #11, !dbg !965
  %163 = load i8, i8* %160, align 1, !dbg !966, !tbaa !841
  %164 = icmp eq i8 %163, 76, !dbg !967
  %165 = load i32, i32* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 1), align 8, !tbaa !835
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !968, metadata !664) #11, !dbg !971
  %166 = add i32 %165, 128, !dbg !976
  %167 = icmp ult i32 %166, 384, !dbg !976
  br i1 %167, label %168, label %174, !dbg !976

; <label>:168:                                    ; preds = %162
  %169 = tail call i32** @__ctype_toupper_loc() #1, !dbg !977
  %170 = load i32*, i32** %169, align 8, !dbg !979, !tbaa !672
  %171 = sext i32 %165 to i64, !dbg !980
  %172 = getelementptr inbounds i32, i32* %170, i64 %171, !dbg !980
  %173 = load i32, i32* %172, align 4, !dbg !980, !tbaa !814
  br label %174, !dbg !981

; <label>:174:                                    ; preds = %168, %162
  %175 = phi i32 [ %173, %168 ], [ %165, %162 ], !dbg !982
  br i1 %164, label %179, label %176, !dbg !984

; <label>:176:                                    ; preds = %174
  %177 = load i64, i64* getelementptr inbounds ([3 x %struct.anon], [3 x %struct.anon]* @stdbuf, i64 0, i64 2, i32 0), align 16, !dbg !991, !tbaa !992
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !946, metadata !897) #11, !dbg !986
  %178 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %175, i64 %177) #11, !dbg !993
  call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !952, metadata !664) #11, !dbg !989
  br label %181

; <label>:179:                                    ; preds = %174
  call void @llvm.dbg.value(metadata i32 %106, i64 0, metadata !953, metadata !664) #11, !dbg !985
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !946, metadata !897) #11, !dbg !986
  %180 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %3, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 %175) #11, !dbg !987
  br label %181, !dbg !990

; <label>:181:                                    ; preds = %179, %176
  %182 = phi i32 [ %180, %179 ], [ %178, %176 ]
  call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !952, metadata !664) #11, !dbg !989
  %183 = icmp slt i32 %182, 0, !dbg !994
  br i1 %183, label %115, label %184, !dbg !996

; <label>:184:                                    ; preds = %181
  %185 = load i8*, i8** %3, align 8, !dbg !998, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %117, i64 0, metadata !946, metadata !664) #11, !dbg !986
  %186 = call i32 @putenv(i8* %185) #11, !dbg !1000
  %187 = icmp eq i32 %186, 0, !dbg !1001
  br i1 %187, label %188, label %120, !dbg !1002

; <label>:188:                                    ; preds = %184
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.lifetime.end(i64 8, i8* nonnull %90) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !945, metadata !664) #11, !dbg !961
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !945, metadata !664) #11, !dbg !961
  br label %194, !dbg !1013

; <label>:189:                                    ; preds = %158
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !945, metadata !664) #11, !dbg !961
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !940, metadata !664) #11, !dbg !958
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !945, metadata !664) #11, !dbg !961
  %190 = and i8 %159, 1, !dbg !1014
  %191 = icmp eq i8 %190, 0, !dbg !1014
  br i1 %191, label %192, label %194, !dbg !1013

; <label>:192:                                    ; preds = %189
  %193 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i32 5) #11, !dbg !1015
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %193) #11, !dbg !1017
  call void @usage(i32 125) #15, !dbg !1019
  unreachable, !dbg !1019

; <label>:194:                                    ; preds = %189, %188
  %195 = load i8*, i8** @program_name, align 8, !dbg !1020, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %195, i64 0, metadata !1021, metadata !664) #11, !dbg !1035
  %196 = call i8* @strchr(i8* %195, i32 47) #11, !dbg !1037
  %197 = icmp eq i8* %196, null, !dbg !1037
  br i1 %197, label %200, label %198, !dbg !1039

; <label>:198:                                    ; preds = %194
  %199 = call i8* @dir_name(i8* %195) #11, !dbg !1041
  store i8* %199, i8** @program_path, align 8, !dbg !1043, !tbaa !672
  br label %227, !dbg !1044

; <label>:200:                                    ; preds = %194
  %201 = call i8* @xreadlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0)) #11, !dbg !1045
  call void @llvm.dbg.value(metadata i8* %201, i64 0, metadata !1024, metadata !664) #11, !dbg !1046
  %202 = icmp eq i8* %201, null, !dbg !1047
  br i1 %202, label %205, label %203, !dbg !1048

; <label>:203:                                    ; preds = %200
  %204 = call i8* @dir_name(i8* nonnull %201) #11, !dbg !1049
  store i8* %204, i8** @program_path, align 8, !dbg !1050, !tbaa !672
  br label %224, !dbg !1051

; <label>:205:                                    ; preds = %200
  %206 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0)) #11, !dbg !1052
  call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !1024, metadata !664) #11, !dbg !1046
  %207 = icmp eq i8* %206, null, !dbg !1053
  br i1 %207, label %224, label %208, !dbg !1054

; <label>:208:                                    ; preds = %205
  %209 = call noalias i8* @xstrdup(i8* nonnull %206) #11, !dbg !1055
  call void @llvm.dbg.value(metadata i8* %209, i64 0, metadata !1024, metadata !664) #11, !dbg !1046
  %210 = call i8* @strtok(i8* %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #11, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %210, i64 0, metadata !1027, metadata !664) #11, !dbg !1058
  %211 = icmp eq i8* %210, null, !dbg !1059
  br i1 %211, label %224, label %212, !dbg !1061

; <label>:212:                                    ; preds = %208
  br label %213, !dbg !1063

; <label>:213:                                    ; preds = %212, %220
  %214 = phi i8* [ %221, %220 ], [ %210, %212 ]
  %215 = call i8* @file_name_concat(i8* nonnull %214, i8* %195, i8** null) #11, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %215, i64 0, metadata !1031, metadata !664) #11, !dbg !1064
  %216 = call i32 @access(i8* %215, i32 1) #11, !dbg !1065
  %217 = icmp eq i32 %216, 0, !dbg !1067
  br i1 %217, label %218, label %220, !dbg !1068

; <label>:218:                                    ; preds = %213
  %219 = call i8* @dir_name(i8* %215) #11, !dbg !1069
  store i8* %219, i8** @program_path, align 8, !dbg !1071, !tbaa !672
  call void @free(i8* %215) #11, !dbg !1072
  br label %224

; <label>:220:                                    ; preds = %213
  call void @free(i8* %215) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1027, metadata !664) #11, !dbg !1058
  %221 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #11, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %221, i64 0, metadata !1027, metadata !664) #11, !dbg !1058
  %222 = icmp eq i8* %221, null, !dbg !1059
  br i1 %222, label %223, label %213, !dbg !1061, !llvm.loop !1074

; <label>:223:                                    ; preds = %220
  br label %224, !dbg !1046

; <label>:224:                                    ; preds = %223, %218, %208, %205, %203
  %225 = phi i8* [ %201, %203 ], [ null, %205 ], [ %209, %218 ], [ %209, %208 ], [ %209, %223 ]
  call void @llvm.dbg.value(metadata i8* %225, i64 0, metadata !1024, metadata !664) #11, !dbg !1046
  call void @free(i8* %225) #11, !dbg !1077
  %226 = load i8*, i8** @program_path, align 8, !dbg !1078, !tbaa !672
  br label %227

; <label>:227:                                    ; preds = %198, %224
  %228 = phi i8* [ %199, %198 ], [ %226, %224 ]
  %229 = icmp eq i8* %228, null, !dbg !1078
  br i1 %229, label %230, label %232, !dbg !1080

; <label>:230:                                    ; preds = %227
  %231 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !1081
  store i8* %231, i8** @program_path, align 8, !dbg !1082, !tbaa !672
  br label %232, !dbg !1083

; <label>:232:                                    ; preds = %227, %230
  %233 = phi i8* [ %228, %227 ], [ %231, %230 ]
  %234 = ptrtoint i8* %233 to i64, !dbg !1084
  %235 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0)) #11, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %235, i64 0, metadata !754, metadata !664) #11, !dbg !1086
  %236 = bitcast i8** %5 to i8*, !dbg !1087
  call void @llvm.lifetime.start(i64 8, i8* nonnull %236) #11, !dbg !1087
  %237 = bitcast [3 x i8*]* %6 to i8*, !dbg !1088
  call void @llvm.lifetime.start(i64 24, i8* nonnull %237) #11, !dbg !1088
  %238 = bitcast [3 x i8*]* %6 to i64*, !dbg !1089
  store i64 %234, i64* %238, align 16, !dbg !1089, !tbaa !672
  %239 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1, !dbg !1089
  %240 = bitcast i8** %239 to <2 x i8*>*, !dbg !1089
  store <2 x i8*> <i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0), i8* null>, <2 x i8*>* %240, align 8, !dbg !1089, !tbaa !672
  %241 = bitcast i8** %7 to i8*, !dbg !1090
  call void @llvm.lifetime.start(i64 8, i8* nonnull %241) #11, !dbg !1090
  %242 = bitcast %struct.stat* %8 to i8*, !dbg !1091
  call void @llvm.lifetime.start(i64 144, i8* nonnull %242) #11, !dbg !1091
  %243 = load i8, i8* %233, align 1, !dbg !1092, !tbaa !841
  %244 = icmp eq i8 %243, 0, !dbg !1092
  br i1 %244, label %248, label %245, !dbg !1094

; <label>:245:                                    ; preds = %232
  %246 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0, !dbg !1095
  br label %250, !dbg !1096

; <label>:247:                                    ; preds = %268
  br label %248, !dbg !1097

; <label>:248:                                    ; preds = %247, %232
  %249 = call noalias i8* @xstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #11, !dbg !1097
  call void @llvm.dbg.value(metadata i8* %249, i64 0, metadata !758, metadata !664) #11, !dbg !1096
  store i8* %249, i8** %7, align 8, !dbg !1099, !tbaa !672
  br label %273, !dbg !1100

; <label>:250:                                    ; preds = %268, %245
  %251 = phi i8* [ %269, %268 ], [ %233, %245 ]
  %252 = phi i8** [ %262, %268 ], [ %246, %245 ]
  call void @llvm.dbg.value(metadata i8** %7, i64 0, metadata !758, metadata !897) #11, !dbg !1096
  %253 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %7, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* %251, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #11, !dbg !1101
  call void @llvm.dbg.value(metadata i32 %253, i64 0, metadata !752, metadata !664) #11, !dbg !1102
  %254 = icmp slt i32 %253, 0, !dbg !1103
  br i1 %254, label %255, label %256, !dbg !1105

; <label>:255:                                    ; preds = %250
  call void @xalloc_die() #14, !dbg !1106
  unreachable, !dbg !1106

; <label>:256:                                    ; preds = %250
  %257 = load i8*, i8** %7, align 8, !dbg !1107, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %257, i64 0, metadata !758, metadata !664) #11, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !759, metadata !897) #11, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %257, i64 0, metadata !1110, metadata !664) #11, !dbg !1118
  call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !1117, metadata !664) #11, !dbg !1118
  %258 = call i32 @__xstat(i32 1, i8* nonnull %257, %struct.stat* nonnull %8) #11, !dbg !1120
  %259 = icmp eq i32 %258, 0, !dbg !1121
  %260 = load i8*, i8** %7, align 8, !tbaa !672
  br i1 %259, label %272, label %261, !dbg !1122

; <label>:261:                                    ; preds = %256
  call void @llvm.dbg.value(metadata i8* %260, i64 0, metadata !758, metadata !664) #11, !dbg !1096
  call void @free(i8* %260) #11, !dbg !1123
  %262 = getelementptr inbounds i8*, i8** %252, i64 1, !dbg !1124
  call void @llvm.dbg.value(metadata i8** %262, i64 0, metadata !756, metadata !664) #11, !dbg !1125
  %263 = load i8*, i8** %262, align 8, !dbg !1126, !tbaa !672
  %264 = icmp eq i8* %263, null, !dbg !1126
  br i1 %264, label %265, label %268, !dbg !1128

; <label>:265:                                    ; preds = %261
  %266 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0), i32 5) #11, !dbg !1129
  %267 = call i8* @quote(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0)) #11, !dbg !1130
  call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %266, i8* %267) #11, !dbg !1132
  unreachable, !dbg !1129

; <label>:268:                                    ; preds = %261
  call void @llvm.dbg.value(metadata i8** %262, i64 0, metadata !756, metadata !664) #11, !dbg !1125
  call void @llvm.lifetime.end(i64 144, i8* nonnull %242) #11, !dbg !1134
  call void @llvm.dbg.value(metadata i8** %262, i64 0, metadata !756, metadata !664) #11, !dbg !1125
  call void @llvm.lifetime.start(i64 144, i8* nonnull %242) #11, !dbg !1091
  %269 = load i8*, i8** %262, align 8, !dbg !1135, !tbaa !672
  %270 = load i8, i8* %269, align 1, !dbg !1092, !tbaa !841
  %271 = icmp eq i8 %270, 0, !dbg !1092
  br i1 %271, label %247, label %250, !dbg !1094

; <label>:272:                                    ; preds = %256
  br label %273, !dbg !1125

; <label>:273:                                    ; preds = %272, %248
  %274 = phi i8* [ %249, %248 ], [ %260, %272 ]
  call void @llvm.dbg.value(metadata i8** %262, i64 0, metadata !756, metadata !664) #11, !dbg !1125
  call void @llvm.lifetime.end(i64 144, i8* nonnull %242) #11, !dbg !1134
  %275 = icmp eq i8* %235, null, !dbg !1136
  call void @llvm.dbg.value(metadata i8* %274, i64 0, metadata !758, metadata !664) #11, !dbg !1096
  call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !755, metadata !897) #11, !dbg !1138
  br i1 %275, label %278, label %276, !dbg !1139

; <label>:276:                                    ; preds = %273
  %277 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %235, i8* %274) #11, !dbg !1140
  call void @llvm.dbg.value(metadata i32 %277, i64 0, metadata !752, metadata !664) #11, !dbg !1102
  br label %280, !dbg !1141

; <label>:278:                                    ; preds = %273
  %279 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %5, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* %274) #11, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %279, i64 0, metadata !752, metadata !664) #11, !dbg !1102
  br label %280

; <label>:280:                                    ; preds = %278, %276
  %281 = phi i32 [ %277, %276 ], [ %279, %278 ]
  call void @llvm.dbg.value(metadata i32 %281, i64 0, metadata !752, metadata !664) #11, !dbg !1102
  %282 = icmp slt i32 %281, 0, !dbg !1143
  br i1 %282, label %283, label %284, !dbg !1145

; <label>:283:                                    ; preds = %280
  call void @xalloc_die() #14, !dbg !1146
  unreachable, !dbg !1146

; <label>:284:                                    ; preds = %280
  %285 = load i8*, i8** %7, align 8, !dbg !1147, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %285, i64 0, metadata !758, metadata !664) #11, !dbg !1096
  call void @free(i8* %285) #11, !dbg !1148
  %286 = load i8*, i8** %5, align 8, !dbg !1149, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %286, i64 0, metadata !755, metadata !664) #11, !dbg !1138
  %287 = call i32 @putenv(i8* %286) #11, !dbg !1150
  call void @llvm.dbg.value(metadata i32 %287, i64 0, metadata !752, metadata !664) #11, !dbg !1102
  %288 = icmp eq i32 %287, 0, !dbg !1151
  br i1 %288, label %295, label %289, !dbg !1153

; <label>:289:                                    ; preds = %284
  %290 = tail call i32* @__errno_location() #1, !dbg !1154
  %291 = load i32, i32* %290, align 4, !dbg !1154, !tbaa !814
  %292 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 5) #11, !dbg !1156
  %293 = load i8*, i8** %5, align 8, !dbg !1154, !tbaa !672
  call void @llvm.dbg.value(metadata i8* %293, i64 0, metadata !755, metadata !664) #11, !dbg !1138
  %294 = call i8* @quote(i8* %293) #11, !dbg !1158
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %291, i8* %292, i8* %294) #11, !dbg !1160
  unreachable, !dbg !1154

; <label>:295:                                    ; preds = %284
  call void @llvm.lifetime.end(i64 8, i8* nonnull %241) #11, !dbg !1162
  call void @llvm.lifetime.end(i64 24, i8* nonnull %237) #11, !dbg !1162
  call void @llvm.lifetime.end(i64 8, i8* nonnull %236) #11, !dbg !1162
  %296 = load i8*, i8** @program_path, align 8, !dbg !1163, !tbaa !672
  call void @free(i8* %296) #11, !dbg !1164
  %297 = load i8*, i8** %85, align 8, !dbg !1165, !tbaa !672
  %298 = call i32 @execvp(i8* %297, i8** %85) #11, !dbg !1166
  %299 = tail call i32* @__errno_location() #1, !dbg !1167
  %300 = load i32, i32* %299, align 4, !dbg !1167, !tbaa !814
  %301 = icmp eq i32 %300, 2, !dbg !1168
  %302 = select i1 %301, i32 127, i32 126, !dbg !1167
  call void @llvm.dbg.value(metadata i32 %302, i64 0, metadata !748, metadata !664), !dbg !1169
  %303 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !1170
  %304 = load i8*, i8** %85, align 8, !dbg !1171, !tbaa !672
  %305 = call i8* @quote(i8* %304) #11, !dbg !1172
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %300, i8* %303, i8* %305) #11, !dbg !1174
  ret i32 %302, !dbg !1176
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

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @putenv(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @access(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1177 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1179, metadata !664), !dbg !1180
  store i8* %0, i8** @file_name, align 8, !dbg !1181, !tbaa !672
  ret void, !dbg !1182
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1183 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1187, metadata !1188), !dbg !1189
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1190, !tbaa !1191
  ret void, !dbg !1193
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1194 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1199, !tbaa !672
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1200
  %3 = icmp eq i32 %2, 0, !dbg !1201
  br i1 %3, label %21, label %4, !dbg !1202

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1203, !tbaa !1191, !range !1205
  %6 = icmp eq i8 %5, 0, !dbg !1203
  %7 = tail call i32* @__errno_location() #1, !dbg !1206
  br i1 %6, label %11, label %8, !dbg !1208

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1209, !tbaa !814
  %10 = icmp eq i32 %9, 32, !dbg !1211
  br i1 %10, label %21, label %11, !dbg !1212

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !1214
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1196, metadata !664), !dbg !1215
  %13 = load i8*, i8** @file_name, align 8, !dbg !1216, !tbaa !672
  %14 = icmp eq i8* %13, null, !dbg !1216
  %15 = load i32, i32* %7, align 4, !tbaa !814
  br i1 %14, label %18, label %16, !dbg !1217

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1218
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.19, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1220
  br label %19, !dbg !1222

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i8* %12) #11, !dbg !1223
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1224, !tbaa !814
  tail call void @_exit(i32 %20) #14, !dbg !1225
  unreachable, !dbg !1225

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1226, !tbaa !672
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1228
  %24 = icmp eq i32 %23, 0, !dbg !1229
  br i1 %24, label %27, label %25, !dbg !1230

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1231, !tbaa !814
  tail call void @_exit(i32 %26) #14, !dbg !1232
  unreachable, !dbg !1232

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1233
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @dir_name(i8*) local_unnamed_addr #6 !dbg !1234 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1239, metadata !664), !dbg !1241
  %2 = tail call i8* @mdir_name(i8* %0) #11, !dbg !1242
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1240, metadata !664), !dbg !1243
  %3 = icmp eq i8* %2, null, !dbg !1244
  br i1 %3, label %4, label %5, !dbg !1246

; <label>:4:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !1247
  unreachable, !dbg !1247

; <label>:5:                                      ; preds = %1
  ret i8* %2, !dbg !1248
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @dir_len(i8*) local_unnamed_addr #10 !dbg !1249 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1254, metadata !664), !dbg !1257
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1255, metadata !664), !dbg !1258
  %2 = load i8, i8* %0, align 1, !dbg !1259, !tbaa !841
  %3 = icmp eq i8 %2, 47, !dbg !1259
  %4 = zext i1 %3 to i64, !dbg !1260
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1255, metadata !664), !dbg !1258
  %5 = tail call i8* @last_component(i8* %0) #13, !dbg !1262
  %6 = ptrtoint i8* %5 to i64, !dbg !1264
  %7 = ptrtoint i8* %0 to i64, !dbg !1264
  %8 = sub i64 %6, %7, !dbg !1264
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1256, metadata !664), !dbg !1265
  br label %9, !dbg !1266

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ]
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1256, metadata !664), !dbg !1265
  %11 = icmp ult i64 %4, %10, !dbg !1267
  br i1 %11, label %12, label %17, !dbg !1269

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1, !dbg !1271
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1271
  %15 = load i8, i8* %14, align 1, !dbg !1271, !tbaa !841
  %16 = icmp eq i8 %15, 47, !dbg !1271
  br i1 %16, label %9, label %17, !dbg !1273, !llvm.loop !1274

; <label>:17:                                     ; preds = %12, %9
  ret i64 %10, !dbg !1277
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @mdir_name(i8*) local_unnamed_addr #6 !dbg !1278 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1280, metadata !664), !dbg !1284
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1254, metadata !664) #11, !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1255, metadata !664) #11, !dbg !1287
  %2 = load i8, i8* %0, align 1, !dbg !1288, !tbaa !841
  %3 = icmp eq i8 %2, 47, !dbg !1288
  %4 = zext i1 %3 to i64, !dbg !1289
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1255, metadata !664) #11, !dbg !1287
  %5 = tail call i8* @last_component(i8* %0) #13, !dbg !1290
  %6 = ptrtoint i8* %5 to i64, !dbg !1291
  %7 = ptrtoint i8* %0 to i64, !dbg !1291
  %8 = sub i64 %6, %7, !dbg !1291
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1256, metadata !664) #11, !dbg !1292
  br label %9, !dbg !1293

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ]
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1256, metadata !664) #11, !dbg !1292
  %11 = icmp ult i64 %4, %10, !dbg !1294
  br i1 %11, label %12, label %17, !dbg !1295

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1, !dbg !1296
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1296
  %15 = load i8, i8* %14, align 1, !dbg !1296, !tbaa !841
  %16 = icmp eq i8 %15, 47, !dbg !1296
  br i1 %16, label %9, label %17, !dbg !1297, !llvm.loop !1274

; <label>:17:                                     ; preds = %9, %12
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1281, metadata !664), !dbg !1298
  %18 = icmp eq i64 %10, 0, !dbg !1299
  %19 = zext i1 %18 to i64, !dbg !1300
  %20 = add i64 %10, 1, !dbg !1301
  %21 = add i64 %20, %19, !dbg !1302
  %22 = tail call noalias i8* @malloc(i64 %21) #11, !dbg !1303
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1283, metadata !664), !dbg !1304
  %23 = icmp eq i8* %22, null, !dbg !1305
  br i1 %23, label %29, label %24, !dbg !1307

; <label>:24:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %22, i8* nonnull %0, i64 %10, i32 1, i1 false), !dbg !1308
  br i1 %18, label %25, label %26, !dbg !1309

; <label>:25:                                     ; preds = %24
  store i8 46, i8* %22, align 1, !dbg !1310, !tbaa !841
  br label %26, !dbg !1312

; <label>:26:                                     ; preds = %25, %24
  %27 = phi i64 [ 1, %25 ], [ %10, %24 ]
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1281, metadata !664), !dbg !1298
  %28 = getelementptr inbounds i8, i8* %22, i64 %27, !dbg !1313
  store i8 0, i8* %28, align 1, !dbg !1314, !tbaa !841
  br label %29, !dbg !1315

; <label>:29:                                     ; preds = %17, %26
  %30 = phi i8* [ %22, %26 ], [ null, %17 ]
  ret i8* %30, !dbg !1316
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #10 !dbg !1317 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1320, metadata !664), !dbg !1324
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1321, metadata !664), !dbg !1325
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1323, metadata !664), !dbg !1326
  br label %2, !dbg !1327

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1321, metadata !664), !dbg !1325
  %4 = load i8, i8* %3, align 1, !dbg !1328, !tbaa !841
  %5 = icmp eq i8 %4, 47, !dbg !1328
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1330
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1321, metadata !664), !dbg !1325
  br i1 %5, label %2, label %7, !dbg !1331, !llvm.loop !1332

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !1326

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !1333
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !1323, metadata !664), !dbg !1326
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1322, metadata !664), !dbg !1337
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1321, metadata !664), !dbg !1325
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !1338

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !1340
  %15 = icmp eq i8 %14, 0, !dbg !1340
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1321, metadata !664), !dbg !1325
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1323, metadata !664), !dbg !1326
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !1344
  %17 = select i1 %15, i8 %12, i8 0, !dbg !1344
  br label %18, !dbg !1344

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !1323, metadata !664), !dbg !1326
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1321, metadata !664), !dbg !1325
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1345
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1322, metadata !664), !dbg !1337
  %22 = load i8, i8* %21, align 1, !tbaa !841
  br label %8, !dbg !1347, !llvm.loop !1348

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !1351
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #10 !dbg !1352 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1354, metadata !664), !dbg !1357
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1356, metadata !664), !dbg !1358
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !1359
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1355, metadata !664), !dbg !1361
  br label %3, !dbg !1362

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1355, metadata !664), !dbg !1361
  %5 = icmp ugt i64 %4, 1, !dbg !1363
  br i1 %5, label %6, label %11, !dbg !1366

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !1367
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1367
  %9 = load i8, i8* %8, align 1, !dbg !1367, !tbaa !841
  %10 = icmp eq i8 %9, 47, !dbg !1367
  br i1 %10, label %3, label %11, !dbg !1369, !llvm.loop !1371

; <label>:11:                                     ; preds = %3, %6
  ret i64 %4, !dbg !1374
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @file_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1375 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1380, metadata !664), !dbg !1384
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1381, metadata !664), !dbg !1385
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1382, metadata !664), !dbg !1386
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #11, !dbg !1387
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1383, metadata !664), !dbg !1388
  %5 = icmp eq i8* %4, null, !dbg !1389
  br i1 %5, label %6, label %7, !dbg !1391

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !1392
  unreachable, !dbg !1392

; <label>:7:                                      ; preds = %3
  ret i8* %4, !dbg !1393
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1394 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1397, metadata !664), !dbg !1408
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1398, metadata !664), !dbg !1409
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1399, metadata !664), !dbg !1410
  %4 = tail call i8* @last_component(i8* %0) #13, !dbg !1411
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1400, metadata !664), !dbg !1412
  %5 = tail call i64 @base_len(i8* %4) #13, !dbg !1413
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1401, metadata !664), !dbg !1414
  %6 = ptrtoint i8* %4 to i64, !dbg !1415
  %7 = ptrtoint i8* %0 to i64, !dbg !1415
  %8 = sub i64 %6, %7, !dbg !1415
  %9 = add i64 %8, %5, !dbg !1416
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1402, metadata !664), !dbg !1417
  %10 = icmp eq i64 %5, 0, !dbg !1418
  br i1 %10, label %16, label %11, !dbg !1419

; <label>:11:                                     ; preds = %3
  %12 = add i64 %5, -1, !dbg !1420
  %13 = getelementptr inbounds i8, i8* %4, i64 %12, !dbg !1420
  %14 = load i8, i8* %13, align 1, !dbg !1420, !tbaa !841
  %15 = icmp ne i8 %14, 47, !dbg !1422
  br label %16

; <label>:16:                                     ; preds = %3, %11
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1403, metadata !664), !dbg !1423
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1424, metadata !664), !dbg !1429
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1424, metadata !664), !dbg !1429
  br label %18, !dbg !1431

; <label>:18:                                     ; preds = %18, %16
  %19 = phi i8* [ %1, %16 ], [ %22, %18 ]
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1424, metadata !664), !dbg !1429
  %20 = load i8, i8* %19, align 1, !dbg !1433, !tbaa !841
  %21 = icmp eq i8 %20, 47, !dbg !1433
  %22 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1436
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1424, metadata !664), !dbg !1429
  br i1 %21, label %18, label %23, !dbg !1438, !llvm.loop !1440

; <label>:23:                                     ; preds = %18
  %24 = zext i1 %17 to i64, !dbg !1443
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1404, metadata !664), !dbg !1445
  %25 = tail call i64 @strlen(i8* %19) #13, !dbg !1446
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1405, metadata !664), !dbg !1447
  %26 = add i64 %9, 1, !dbg !1448
  %27 = add i64 %26, %24, !dbg !1449
  %28 = add i64 %27, %25, !dbg !1450
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !1451
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1406, metadata !664), !dbg !1452
  %30 = icmp eq i8* %29, null, !dbg !1453
  br i1 %30, label %44, label %31, !dbg !1455

; <label>:31:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1456, metadata !664) #11, !dbg !1466
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1464, metadata !664) #11, !dbg !1466
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1465, metadata !664) #11, !dbg !1466
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %29, i1 false) #11, !dbg !1468
  %33 = tail call i8* @__mempcpy_chk(i8* nonnull %29, i8* nonnull %0, i64 %9, i64 %32) #11, !dbg !1469
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1407, metadata !664), !dbg !1470
  store i8 47, i8* %33, align 1, !dbg !1471, !tbaa !841
  %34 = getelementptr inbounds i8, i8* %33, i64 %24, !dbg !1472
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1407, metadata !664), !dbg !1470
  %35 = icmp eq i8** %2, null, !dbg !1473
  br i1 %35, label %41, label %36, !dbg !1475

; <label>:36:                                     ; preds = %31
  %37 = load i8, i8* %1, align 1, !dbg !1476, !tbaa !841
  %38 = icmp eq i8 %37, 47, !dbg !1476
  %39 = sext i1 %38 to i64, !dbg !1477
  %40 = getelementptr inbounds i8, i8* %34, i64 %39, !dbg !1477
  store i8* %40, i8** %2, align 8, !dbg !1479, !tbaa !672
  br label %41, !dbg !1480

; <label>:41:                                     ; preds = %31, %36
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1456, metadata !664) #11, !dbg !1481
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1464, metadata !664) #11, !dbg !1481
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1465, metadata !664) #11, !dbg !1481
  %42 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %34, i1 false) #11, !dbg !1483
  %43 = tail call i8* @__mempcpy_chk(i8* nonnull %34, i8* nonnull %19, i64 %25, i64 %42) #11, !dbg !1484
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1407, metadata !664), !dbg !1470
  store i8 0, i8* %43, align 1, !dbg !1485, !tbaa !841
  br label %44, !dbg !1486

; <label>:44:                                     ; preds = %23, %41
  %45 = phi i8* [ %29, %41 ], [ null, %23 ]
  ret i8* %45, !dbg !1487
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1488 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1490, metadata !664), !dbg !1493
  %2 = icmp eq i8* %0, null, !dbg !1494
  br i1 %2, label %3, label %6, !dbg !1496

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1497, !tbaa !672
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.62, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1499
  tail call void @abort() #14, !dbg !1500
  unreachable, !dbg !1500

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1501
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1491, metadata !664), !dbg !1502
  %8 = icmp ne i8* %7, null, !dbg !1503
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1504
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1506
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1492, metadata !664), !dbg !1507
  %11 = ptrtoint i8* %10 to i64, !dbg !1508
  %12 = ptrtoint i8* %0 to i64, !dbg !1508
  %13 = sub i64 %11, %12, !dbg !1508
  %14 = icmp sgt i64 %13, 6, !dbg !1510
  br i1 %14, label %15, label %24, !dbg !1511

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1512
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.63, i64 0, i64 0), i64 7) #13, !dbg !1512
  %18 = icmp eq i32 %17, 0, !dbg !1514
  br i1 %18, label %19, label %24, !dbg !1515

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1490, metadata !664), !dbg !1493
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.64, i64 0, i64 0), i64 3) #13, !dbg !1516
  %21 = icmp eq i32 %20, 0, !dbg !1519
  br i1 %21, label %22, label %24, !dbg !1520

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1521
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1490, metadata !664), !dbg !1493
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1523, !tbaa !672
  br label %24, !dbg !1524

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1490, metadata !664), !dbg !1493
  store i8* %25, i8** @program_name, align 8, !dbg !1525, !tbaa !672
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1526, !tbaa !672
  ret void, !dbg !1527
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1528 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1533, metadata !664), !dbg !1536
  %2 = tail call i32* @__errno_location() #1, !dbg !1537
  %3 = load i32, i32* %2, align 4, !dbg !1537, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1534, metadata !664), !dbg !1538
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1539
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1540
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1540
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1542
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1542
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1535, metadata !664), !dbg !1543
  store i32 %3, i32* %2, align 4, !dbg !1544, !tbaa !814
  ret %struct.quoting_options* %8, !dbg !1545
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !1546 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1552, metadata !664), !dbg !1553
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1554
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1554
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1555
  %5 = load i32, i32* %4, align 8, !dbg !1555, !tbaa !1557
  ret i32 %5, !dbg !1559
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1560 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1564, metadata !664), !dbg !1566
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1565, metadata !664), !dbg !1567
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1568
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1568
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1569
  store i32 %1, i32* %5, align 8, !dbg !1571, !tbaa !1557
  ret void, !dbg !1572
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1573 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1577, metadata !664), !dbg !1585
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1578, metadata !664), !dbg !1586
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1579, metadata !664), !dbg !1587
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1580, metadata !664), !dbg !1588
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1589
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1589
  %6 = lshr i8 %1, 5, !dbg !1590
  %7 = zext i8 %6 to i64, !dbg !1590
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1592
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1581, metadata !664), !dbg !1593
  %9 = and i8 %1, 31, !dbg !1594
  %10 = zext i8 %9 to i32, !dbg !1595
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1583, metadata !664), !dbg !1596
  %11 = load i32, i32* %8, align 4, !dbg !1597, !tbaa !814
  %12 = lshr i32 %11, %10, !dbg !1598
  %13 = and i32 %12, 1, !dbg !1599
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1584, metadata !664), !dbg !1600
  %14 = and i32 %2, 1, !dbg !1601
  %15 = xor i32 %13, %14, !dbg !1602
  %16 = shl i32 %15, %10, !dbg !1603
  %17 = xor i32 %16, %11, !dbg !1604
  store i32 %17, i32* %8, align 4, !dbg !1604, !tbaa !814
  ret i32 %13, !dbg !1605
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1606 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1610, metadata !664), !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1611, metadata !664), !dbg !1614
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1610, metadata !664), !dbg !1613
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1617
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1610, metadata !664), !dbg !1613
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1618
  %6 = load i32, i32* %5, align 4, !dbg !1618, !tbaa !1619
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1612, metadata !664), !dbg !1620
  store i32 %1, i32* %5, align 4, !dbg !1621, !tbaa !1619
  ret i32 %6, !dbg !1622
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1623 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1627, metadata !664), !dbg !1630
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1628, metadata !664), !dbg !1631
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1629, metadata !664), !dbg !1632
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1633
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1627, metadata !664), !dbg !1630
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1635
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1627, metadata !664), !dbg !1630
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1636
  store i32 10, i32* %6, align 8, !dbg !1637, !tbaa !1557
  %7 = icmp ne i8* %1, null, !dbg !1638
  %8 = icmp ne i8* %2, null, !dbg !1640
  %9 = and i1 %7, %8, !dbg !1642
  br i1 %9, label %11, label %10, !dbg !1642

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1643
  unreachable, !dbg !1643

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1644
  store i8* %1, i8** %12, align 8, !dbg !1645, !tbaa !1646
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1647
  store i8* %2, i8** %13, align 8, !dbg !1648, !tbaa !1649
  ret void, !dbg !1650
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1651 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1655, metadata !664), !dbg !1663
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1656, metadata !664), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1657, metadata !664), !dbg !1665
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1658, metadata !664), !dbg !1666
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1659, metadata !664), !dbg !1667
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1668
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1668
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1660, metadata !664), !dbg !1669
  %8 = tail call i32* @__errno_location() #1, !dbg !1670
  %9 = load i32, i32* %8, align 4, !dbg !1670, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1661, metadata !664), !dbg !1671
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1672
  %11 = load i32, i32* %10, align 8, !dbg !1672, !tbaa !1557
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1673
  %13 = load i32, i32* %12, align 4, !dbg !1673, !tbaa !1619
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1674
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1675
  %16 = load i8*, i8** %15, align 8, !dbg !1675, !tbaa !1646
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1676
  %18 = load i8*, i8** %17, align 8, !dbg !1676, !tbaa !1649
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1677
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1662, metadata !664), !dbg !1678
  store i32 %9, i32* %8, align 4, !dbg !1679, !tbaa !814
  ret i64 %19, !dbg !1680
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1681 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1687, metadata !664), !dbg !1750
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1688, metadata !664), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1689, metadata !664), !dbg !1752
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1690, metadata !664), !dbg !1753
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1691, metadata !664), !dbg !1754
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1692, metadata !664), !dbg !1755
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1693, metadata !664), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1694, metadata !664), !dbg !1757
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1695, metadata !664), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1697, metadata !664), !dbg !1759
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1698, metadata !664), !dbg !1760
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1699, metadata !664), !dbg !1761
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1700, metadata !664), !dbg !1762
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1701, metadata !664), !dbg !1763
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1764
  %14 = icmp eq i64 %13, 1, !dbg !1765
  %15 = lshr i32 %5, 1, !dbg !1766
  %16 = trunc i32 %15 to i8, !dbg !1766
  %17 = and i8 %16, 1, !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1703, metadata !664), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1704, metadata !664), !dbg !1767
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1705, metadata !664), !dbg !1768
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1706, metadata !664), !dbg !1769
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1770

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1688, metadata !664), !dbg !1751
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1706, metadata !664), !dbg !1769
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1705, metadata !664), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1703, metadata !664), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1690, metadata !664), !dbg !1753
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1701, metadata !664), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1700, metadata !664), !dbg !1762
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1699, metadata !664), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1698, metadata !664), !dbg !1760
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1695, metadata !664), !dbg !1758
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1694, metadata !664), !dbg !1757
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1691, metadata !664), !dbg !1754
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
  ], !dbg !1771

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1691, metadata !664), !dbg !1754
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1703, metadata !664), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1703, metadata !664), !dbg !1766
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1691, metadata !664), !dbg !1754
  br label %95, !dbg !1772

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1703, metadata !664), !dbg !1766
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1691, metadata !664), !dbg !1754
  %43 = and i8 %36, 1, !dbg !1774
  %44 = icmp eq i8 %43, 0, !dbg !1774
  br i1 %44, label %45, label %95, !dbg !1772

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1776
  br i1 %46, label %95, label %47, !dbg !1780

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1782, !tbaa !841
  br label %95, !dbg !1782

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.75, i64 0, i64 0), i32 %28), !dbg !1784
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1694, metadata !664), !dbg !1757
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), i32 %28), !dbg !1788
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1695, metadata !664), !dbg !1758
  br label %51, !dbg !1789

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1695, metadata !664), !dbg !1758
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1694, metadata !664), !dbg !1757
  %54 = and i8 %36, 1, !dbg !1790
  %55 = icmp eq i8 %54, 0, !dbg !1790
  br i1 %55, label %56, label %73, !dbg !1792

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1699, metadata !664), !dbg !1761
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1697, metadata !664), !dbg !1759
  %57 = load i8, i8* %52, align 1, !dbg !1793, !tbaa !841
  %58 = icmp eq i8 %57, 0, !dbg !1797
  br i1 %58, label %73, label %59, !dbg !1797

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1799

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1799
  br i1 %64, label %65, label %67, !dbg !1803

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1805
  store i8 %61, i8* %66, align 1, !dbg !1805, !tbaa !841
  br label %67, !dbg !1805

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1697, metadata !664), !dbg !1759
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1809
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1699, metadata !664), !dbg !1761
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1699, metadata !664), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1697, metadata !664), !dbg !1759
  %70 = load i8, i8* %69, align 1, !dbg !1793, !tbaa !841
  %71 = icmp eq i8 %70, 0, !dbg !1797
  br i1 %71, label %72, label %60, !dbg !1797, !llvm.loop !1811

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1759

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1701, metadata !664), !dbg !1763
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1699, metadata !664), !dbg !1761
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1700, metadata !664), !dbg !1762
  br label %95, !dbg !1815

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1701, metadata !664), !dbg !1763
  br label %77, !dbg !1816

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1701, metadata !664), !dbg !1763
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1703, metadata !664), !dbg !1766
  br label %79, !dbg !1817

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1703, metadata !664), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1701, metadata !664), !dbg !1763
  %82 = and i8 %81, 1, !dbg !1818
  %83 = icmp eq i8 %82, 0, !dbg !1818
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1701, metadata !664), !dbg !1763
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1820
  br label %85, !dbg !1820

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1703, metadata !664), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1701, metadata !664), !dbg !1763
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1691, metadata !664), !dbg !1754
  %88 = and i8 %87, 1, !dbg !1821
  %89 = icmp eq i8 %88, 0, !dbg !1821
  br i1 %89, label %90, label %95, !dbg !1823

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1824
  br i1 %91, label %95, label %92, !dbg !1828

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1830, !tbaa !841
  br label %95, !dbg !1830

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1703, metadata !664), !dbg !1766
  br label %95, !dbg !1832

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1833
  unreachable, !dbg !1833

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1703, metadata !664), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1701, metadata !664), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1700, metadata !664), !dbg !1762
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1699, metadata !664), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1695, metadata !664), !dbg !1758
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1694, metadata !664), !dbg !1757
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1691, metadata !664), !dbg !1754
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1696, metadata !664), !dbg !1834
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
  br label %123, !dbg !1835

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1688, metadata !664), !dbg !1751
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1706, metadata !664), !dbg !1769
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1705, metadata !664), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1690, metadata !664), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1698, metadata !664), !dbg !1760
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1696, metadata !664), !dbg !1834
  %132 = icmp eq i64 %127, -1, !dbg !1836
  br i1 %132, label %135, label %133, !dbg !1838

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1839
  br i1 %134, label %597, label %139, !dbg !1841

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1843
  %137 = load i8, i8* %136, align 1, !dbg !1843, !tbaa !841
  %138 = icmp eq i8 %137, 0, !dbg !1845
  br i1 %138, label %597, label %139, !dbg !1841

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1712, metadata !664), !dbg !1846
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1713, metadata !664), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1714, metadata !664), !dbg !1848
  br i1 %109, label %140, label %155, !dbg !1849

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1851
  %142 = and i1 %110, %132, !dbg !1853
  br i1 %142, label %143, label %145, !dbg !1853

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1690, metadata !664), !dbg !1753
  br label %145, !dbg !1855

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1690, metadata !664), !dbg !1753
  %147 = icmp ugt i64 %141, %146, !dbg !1857
  br i1 %147, label %155, label %148, !dbg !1859

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1860
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1861
  %151 = icmp ne i32 %150, 0, !dbg !1862
  %152 = or i1 %151, %112, !dbg !1862
  %153 = xor i1 %151, true, !dbg !1862
  %154 = zext i1 %153 to i8, !dbg !1862
  br i1 %152, label %155, label %644, !dbg !1862

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1712, metadata !664), !dbg !1846
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1690, metadata !664), !dbg !1753
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1864
  %159 = load i8, i8* %158, align 1, !dbg !1864, !tbaa !841
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1707, metadata !664), !dbg !1865
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
  ], !dbg !1866

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1867

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1868

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1713, metadata !664), !dbg !1847
  %163 = and i8 %128, 1, !dbg !1873
  %164 = icmp eq i8 %163, 0, !dbg !1873
  %165 = and i1 %114, %164, !dbg !1876
  br i1 %165, label %166, label %182, !dbg !1876

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1878
  br i1 %167, label %168, label %170, !dbg !1883

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1885
  store i8 39, i8* %169, align 1, !dbg !1885, !tbaa !841
  br label %170, !dbg !1885

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1697, metadata !664), !dbg !1759
  %172 = icmp ult i64 %171, %131, !dbg !1889
  br i1 %172, label %173, label %175, !dbg !1893

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1895
  store i8 36, i8* %174, align 1, !dbg !1895, !tbaa !841
  br label %175, !dbg !1895

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1697, metadata !664), !dbg !1759
  %177 = icmp ult i64 %176, %131, !dbg !1899
  br i1 %177, label %178, label %180, !dbg !1903

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1905
  store i8 39, i8* %179, align 1, !dbg !1905, !tbaa !841
  br label %180, !dbg !1905

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1704, metadata !664), !dbg !1767
  br label %182, !dbg !1909

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1697, metadata !664), !dbg !1759
  %185 = icmp ult i64 %183, %131, !dbg !1911
  br i1 %185, label %186, label %188, !dbg !1915

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1917
  store i8 92, i8* %187, align 1, !dbg !1917, !tbaa !841
  br label %188, !dbg !1917

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1697, metadata !664), !dbg !1759
  br i1 %106, label %190, label %476, !dbg !1921

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1923
  %192 = icmp ult i64 %191, %156, !dbg !1925
  br i1 %192, label %193, label %476, !dbg !1926

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1927
  %195 = load i8, i8* %194, align 1, !dbg !1927, !tbaa !841
  %196 = add i8 %195, -48, !dbg !1929
  %197 = icmp ult i8 %196, 10, !dbg !1929
  br i1 %197, label %198, label %476, !dbg !1929

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1930
  br i1 %199, label %200, label %202, !dbg !1935

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1937
  store i8 48, i8* %201, align 1, !dbg !1937, !tbaa !841
  br label %202, !dbg !1937

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1697, metadata !664), !dbg !1759
  %204 = icmp ult i64 %203, %131, !dbg !1941
  br i1 %204, label %205, label %207, !dbg !1945

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1947
  store i8 48, i8* %206, align 1, !dbg !1947, !tbaa !841
  br label %207, !dbg !1947

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1697, metadata !664), !dbg !1759
  br label %476, !dbg !1951

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1952

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1953

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1954

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1956

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1958
  %215 = icmp ult i64 %214, %156, !dbg !1960
  br i1 %215, label %216, label %476, !dbg !1961

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1962
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1964
  %219 = load i8, i8* %218, align 1, !dbg !1964, !tbaa !841
  %220 = icmp eq i8 %219, 63, !dbg !1965
  br i1 %220, label %221, label %476, !dbg !1966

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1968
  %223 = load i8, i8* %222, align 1, !dbg !1968, !tbaa !841
  %224 = sext i8 %223 to i32, !dbg !1968
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
  ], !dbg !1969

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1970

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1707, metadata !664), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1696, metadata !664), !dbg !1834
  %227 = icmp ult i64 %125, %131, !dbg !1972
  br i1 %227, label %228, label %230, !dbg !1976

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1978
  store i8 63, i8* %229, align 1, !dbg !1978, !tbaa !841
  br label %230, !dbg !1978

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1697, metadata !664), !dbg !1759
  %232 = icmp ult i64 %231, %131, !dbg !1982
  br i1 %232, label %233, label %235, !dbg !1986

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1988
  store i8 34, i8* %234, align 1, !dbg !1988, !tbaa !841
  br label %235, !dbg !1988

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1697, metadata !664), !dbg !1759
  %237 = icmp ult i64 %236, %131, !dbg !1992
  br i1 %237, label %238, label %240, !dbg !1996

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1998
  store i8 34, i8* %239, align 1, !dbg !1998, !tbaa !841
  br label %240, !dbg !1998

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1697, metadata !664), !dbg !1759
  %242 = icmp ult i64 %241, %131, !dbg !2002
  br i1 %242, label %243, label %245, !dbg !2006

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2008
  store i8 63, i8* %244, align 1, !dbg !2008, !tbaa !841
  br label %245, !dbg !2008

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1697, metadata !664), !dbg !1759
  br label %476, !dbg !2012

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1711, metadata !664), !dbg !2013
  br label %257, !dbg !2014

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1711, metadata !664), !dbg !2013
  br label %257, !dbg !2015

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1711, metadata !664), !dbg !2013
  br label %255, !dbg !2016

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1711, metadata !664), !dbg !2013
  br label %255, !dbg !2017

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1711, metadata !664), !dbg !2013
  br label %257, !dbg !2018

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1711, metadata !664), !dbg !2013
  br i1 %114, label %253, label %254, !dbg !2019

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2020

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2023

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1711, metadata !664), !dbg !2013
  br i1 %118, label %257, label %644, !dbg !2025

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1711, metadata !664), !dbg !2013
  br i1 %105, label %503, label %476, !dbg !2027

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2028
  br i1 %260, label %261, label %266, !dbg !2030

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2031, !tbaa !841
  %263 = icmp ne i8 %262, 0, !dbg !2033
  %264 = icmp ne i64 %124, 0, !dbg !2034
  %265 = or i1 %264, %263, !dbg !2036
  br i1 %265, label %476, label %272, !dbg !2036

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2037
  %268 = icmp ne i64 %124, 0, !dbg !2034
  %269 = or i1 %268, %267, !dbg !2039
  br i1 %269, label %476, label %272, !dbg !2039

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2034
  br i1 %271, label %272, label %476, !dbg !2041

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1714, metadata !664), !dbg !1848
  br label %273, !dbg !2042

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1714, metadata !664), !dbg !1848
  br i1 %118, label %476, label %644, !dbg !2043

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1705, metadata !664), !dbg !1768
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1714, metadata !664), !dbg !1848
  br i1 %114, label %276, label %476, !dbg !2045

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2046

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2049
  %279 = icmp ne i64 %126, 0, !dbg !2051
  %280 = or i1 %279, %278, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1698, metadata !664), !dbg !1760
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1688, metadata !664), !dbg !1751
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2053
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1688, metadata !664), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1698, metadata !664), !dbg !1760
  %283 = icmp ult i64 %125, %282, !dbg !2054
  br i1 %283, label %284, label %286, !dbg !2058

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2060
  store i8 39, i8* %285, align 1, !dbg !2060, !tbaa !841
  br label %286, !dbg !2060

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1697, metadata !664), !dbg !1759
  %288 = icmp ult i64 %287, %282, !dbg !2064
  br i1 %288, label %289, label %291, !dbg !2068

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2070
  store i8 92, i8* %290, align 1, !dbg !2070, !tbaa !841
  br label %291, !dbg !2070

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1697, metadata !664), !dbg !1759
  %293 = icmp ult i64 %292, %282, !dbg !2074
  br i1 %293, label %294, label %296, !dbg !2078

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2080
  store i8 39, i8* %295, align 1, !dbg !2080, !tbaa !841
  br label %296, !dbg !2080

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1704, metadata !664), !dbg !1767
  br label %476, !dbg !2084

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2085

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1715, metadata !664), !dbg !2086
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2087
  %301 = load i16*, i16** %300, align 8, !dbg !2087, !tbaa !672
  %302 = zext i8 %159 to i64, !dbg !2087
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2087
  %304 = load i16, i16* %303, align 2, !dbg !2087, !tbaa !2089
  %305 = lshr i16 %304, 14, !dbg !2091
  %306 = trunc i16 %305 to i8, !dbg !2091
  %307 = and i8 %306, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1718, metadata !664), !dbg !2092
  br label %368, !dbg !2093

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !2094
  store i64 0, i64* %10, align 8, !dbg !2095
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1715, metadata !664), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1718, metadata !664), !dbg !2092
  %309 = icmp eq i64 %156, -1, !dbg !2096
  br i1 %309, label %310, label %312, !dbg !2098, !llvm.loop !2099

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1690, metadata !664), !dbg !1753
  br label %312, !dbg !2103, !llvm.loop !2099

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2092

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1718, metadata !664), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1715, metadata !664), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1690, metadata !664), !dbg !1753
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !2104
  %317 = add i64 %315, %124, !dbg !2105
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2106
  %319 = sub i64 %313, %317, !dbg !2107
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1719, metadata !897), !dbg !2108
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1736, metadata !897), !dbg !2109
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1739, metadata !664), !dbg !2111
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2112

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1715, metadata !664), !dbg !2086
  %322 = icmp ugt i64 %313, %317, !dbg !2113
  br i1 %322, label %323, label %351, !dbg !2116

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2117

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2117
  %328 = load i8, i8* %327, align 1, !dbg !2117, !tbaa !841
  %329 = icmp eq i8 %328, 0, !dbg !2119
  br i1 %329, label %348, label %330, !dbg !2120

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1715, metadata !664), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1715, metadata !664), !dbg !2086
  %332 = add i64 %331, %124, !dbg !2123
  %333 = icmp ult i64 %332, %313, !dbg !2113
  br i1 %333, label %324, label %348, !dbg !2116, !llvm.loop !2124

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2126
  %336 = and i1 %116, %335, !dbg !2130
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1740, metadata !664), !dbg !2131
  br i1 %336, label %337, label %355, !dbg !2130

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2132

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2132
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2133
  %342 = load i8, i8* %341, align 1, !dbg !2133, !tbaa !841
  %343 = sext i8 %342 to i32, !dbg !2133
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2134

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1740, metadata !664), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1740, metadata !664), !dbg !2131
  %346 = icmp ult i64 %345, %320, !dbg !2126
  br i1 %346, label %338, label %354, !dbg !2137, !llvm.loop !2139

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2092

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2092

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2092

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1718, metadata !664), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1715, metadata !664), !dbg !2086
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2142
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2143

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2143, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1736, metadata !664), !dbg !2109
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !2145
  %358 = icmp eq i32 %357, 0, !dbg !2145
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1718, metadata !664), !dbg !2092
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2146
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1718, metadata !664), !dbg !2092
  %360 = add i64 %320, %315, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1715, metadata !664), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1718, metadata !664), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1715, metadata !664), !dbg !2086
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2142
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1719, metadata !897), !dbg !2108
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2148
  %362 = icmp eq i32 %361, 0, !dbg !2149
  br i1 %362, label %314, label %363, !dbg !2150, !llvm.loop !2099

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2152

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2152
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1718, metadata !664), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1715, metadata !664), !dbg !2086
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2142
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2152
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1718, metadata !664), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1715, metadata !664), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1690, metadata !664), !dbg !1753
  %372 = and i8 %371, 1, !dbg !2153
  %373 = icmp ne i8 %372, 0, !dbg !2153
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1714, metadata !664), !dbg !1848
  %374 = icmp ult i64 %370, 2, !dbg !2154
  %375 = or i1 %373, %113, !dbg !2155
  %376 = and i1 %374, %375, !dbg !2157
  br i1 %376, label %476, label %377, !dbg !2157

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1747, metadata !664), !dbg !2159
  br label %379, !dbg !2160

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1713, metadata !664), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1712, metadata !664), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1707, metadata !664), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1696, metadata !664), !dbg !1834
  br i1 %375, label %432, label %386, !dbg !2161

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2166

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1713, metadata !664), !dbg !1847
  %388 = and i8 %382, 1, !dbg !2170
  %389 = icmp eq i8 %388, 0, !dbg !2170
  %390 = and i1 %114, %389, !dbg !2173
  br i1 %390, label %391, label %407, !dbg !2173

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2175
  br i1 %392, label %393, label %395, !dbg !2180

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2182
  store i8 39, i8* %394, align 1, !dbg !2182, !tbaa !841
  br label %395, !dbg !2182

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1697, metadata !664), !dbg !1759
  %397 = icmp ult i64 %396, %131, !dbg !2186
  br i1 %397, label %398, label %400, !dbg !2190

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2192
  store i8 36, i8* %399, align 1, !dbg !2192, !tbaa !841
  br label %400, !dbg !2192

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1697, metadata !664), !dbg !1759
  %402 = icmp ult i64 %401, %131, !dbg !2196
  br i1 %402, label %403, label %405, !dbg !2200

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2202
  store i8 39, i8* %404, align 1, !dbg !2202, !tbaa !841
  br label %405, !dbg !2202

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1704, metadata !664), !dbg !1767
  br label %407, !dbg !2206

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1697, metadata !664), !dbg !1759
  %410 = icmp ult i64 %408, %131, !dbg !2208
  br i1 %410, label %411, label %413, !dbg !2212

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2214
  store i8 92, i8* %412, align 1, !dbg !2214, !tbaa !841
  br label %413, !dbg !2214

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1697, metadata !664), !dbg !1759
  %415 = icmp ult i64 %414, %131, !dbg !2218
  br i1 %415, label %416, label %420, !dbg !2222

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2224
  %418 = or i8 %417, 48, !dbg !2224
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2224
  store i8 %418, i8* %419, align 1, !dbg !2224, !tbaa !841
  br label %420, !dbg !2224

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1697, metadata !664), !dbg !1759
  %422 = icmp ult i64 %421, %131, !dbg !2228
  br i1 %422, label %423, label %428, !dbg !2232

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2234
  %425 = and i8 %424, 7, !dbg !2234
  %426 = or i8 %425, 48, !dbg !2234
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2234
  store i8 %426, i8* %427, align 1, !dbg !2234, !tbaa !841
  br label %428, !dbg !2234

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1697, metadata !664), !dbg !1759
  %430 = and i8 %383, 7, !dbg !2238
  %431 = or i8 %430, 48, !dbg !2239
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1707, metadata !664), !dbg !1865
  br label %441, !dbg !2240

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2241
  %434 = icmp eq i8 %433, 0, !dbg !2241
  br i1 %434, label %441, label %435, !dbg !2243

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2244
  br i1 %436, label %437, label %439, !dbg !2249

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2251
  store i8 92, i8* %438, align 1, !dbg !2251, !tbaa !841
  br label %439, !dbg !2251

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1712, metadata !664), !dbg !1846
  br label %441, !dbg !2255

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1713, metadata !664), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1712, metadata !664), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1707, metadata !664), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1697, metadata !664), !dbg !1759
  %447 = add i64 %380, 1, !dbg !2256
  %448 = icmp ugt i64 %378, %447, !dbg !2258
  br i1 %448, label %449, label %541, !dbg !2259

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2260
  %451 = icmp ne i8 %450, 0, !dbg !2260
  %452 = and i8 %446, 1, !dbg !2264
  %453 = icmp eq i8 %452, 0, !dbg !2264
  %454 = and i1 %451, %453, !dbg !2260
  br i1 %454, label %455, label %466, !dbg !2260

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2266
  br i1 %456, label %457, label %459, !dbg !2271

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2273
  store i8 39, i8* %458, align 1, !dbg !2273, !tbaa !841
  br label %459, !dbg !2273

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1697, metadata !664), !dbg !1759
  %461 = icmp ult i64 %460, %131, !dbg !2277
  br i1 %461, label %462, label %464, !dbg !2281

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2283
  store i8 39, i8* %463, align 1, !dbg !2283, !tbaa !841
  br label %464, !dbg !2283

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1704, metadata !664), !dbg !1767
  br label %466, !dbg !2287

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1697, metadata !664), !dbg !1759
  %469 = icmp ult i64 %467, %131, !dbg !2289
  br i1 %469, label %470, label %472, !dbg !2293

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2295
  store i8 %444, i8* %471, align 1, !dbg !2295, !tbaa !841
  br label %472, !dbg !2295

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1696, metadata !664), !dbg !1834
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2299
  %475 = load i8, i8* %474, align 1, !dbg !2299, !tbaa !841
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1707, metadata !664), !dbg !1865
  br label %379, !dbg !2300, !llvm.loop !2302

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1688, metadata !664), !dbg !1751
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1714, metadata !664), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1713, metadata !664), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1712, metadata !664), !dbg !1846
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1707, metadata !664), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1705, metadata !664), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1690, metadata !664), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1698, metadata !664), !dbg !1760
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1696, metadata !664), !dbg !1834
  br i1 %107, label %488, label %487, !dbg !2305

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2307

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2308

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2309
  %491 = zext i8 %490 to i64, !dbg !2309
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2311
  %493 = load i32, i32* %492, align 4, !dbg !2311, !tbaa !814
  %494 = and i8 %483, 31, !dbg !2312
  %495 = zext i8 %494 to i32, !dbg !2313
  %496 = shl i32 1, %495, !dbg !2314
  %497 = and i32 %493, %496, !dbg !2314
  %498 = icmp eq i32 %497, 0, !dbg !2314
  %499 = icmp eq i8 %157, 0, !dbg !2315
  %500 = and i1 %499, %498, !dbg !2316
  br i1 %500, label %542, label %503, !dbg !2316

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2315
  br i1 %502, label %542, label %503, !dbg !2317

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1688, metadata !664), !dbg !1751
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1714, metadata !664), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1707, metadata !664), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1705, metadata !664), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1690, metadata !664), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1698, metadata !664), !dbg !1760
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1696, metadata !664), !dbg !1834
  br i1 %112, label %513, label %644, !dbg !2319

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1713, metadata !664), !dbg !1847
  %514 = and i8 %508, 1, !dbg !2322
  %515 = icmp eq i8 %514, 0, !dbg !2322
  %516 = and i1 %114, %515, !dbg !2325
  br i1 %516, label %517, label %533, !dbg !2325

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2327
  br i1 %518, label %519, label %521, !dbg !2332

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2334
  store i8 39, i8* %520, align 1, !dbg !2334, !tbaa !841
  br label %521, !dbg !2334

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1697, metadata !664), !dbg !1759
  %523 = icmp ult i64 %522, %512, !dbg !2338
  br i1 %523, label %524, label %526, !dbg !2342

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2344
  store i8 36, i8* %525, align 1, !dbg !2344, !tbaa !841
  br label %526, !dbg !2344

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1697, metadata !664), !dbg !1759
  %528 = icmp ult i64 %527, %512, !dbg !2348
  br i1 %528, label %529, label %531, !dbg !2352

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2354
  store i8 39, i8* %530, align 1, !dbg !2354, !tbaa !841
  br label %531, !dbg !2354

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1704, metadata !664), !dbg !1767
  br label %533, !dbg !2358

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1697, metadata !664), !dbg !1759
  %536 = icmp ult i64 %534, %512, !dbg !2360
  br i1 %536, label %537, label %539, !dbg !2364

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2366
  store i8 92, i8* %538, align 1, !dbg !2366, !tbaa !841
  br label %539, !dbg !2366

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1688, metadata !664), !dbg !1751
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1714, metadata !664), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1713, metadata !664), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1707, metadata !664), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1705, metadata !664), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1690, metadata !664), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1698, metadata !664), !dbg !1760
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1696, metadata !664), !dbg !1834
  br label %569, !dbg !2370

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1751

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1688, metadata !664), !dbg !1751
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1714, metadata !664), !dbg !1848
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1713, metadata !664), !dbg !1847
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1707, metadata !664), !dbg !1865
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1705, metadata !664), !dbg !1768
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1690, metadata !664), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1698, metadata !664), !dbg !1760
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1696, metadata !664), !dbg !1834
  %553 = and i8 %547, 1, !dbg !2370
  %554 = icmp ne i8 %553, 0, !dbg !2370
  %555 = and i8 %550, 1, !dbg !2374
  %556 = icmp eq i8 %555, 0, !dbg !2374
  %557 = and i1 %554, %556, !dbg !2370
  br i1 %557, label %558, label %569, !dbg !2370

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2376
  br i1 %559, label %560, label %562, !dbg !2381

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2383
  store i8 39, i8* %561, align 1, !dbg !2383, !tbaa !841
  br label %562, !dbg !2383

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1697, metadata !664), !dbg !1759
  %564 = icmp ult i64 %563, %552, !dbg !2387
  br i1 %564, label %565, label %567, !dbg !2391

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2393
  store i8 39, i8* %566, align 1, !dbg !2393, !tbaa !841
  br label %567, !dbg !2393

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1697, metadata !664), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1704, metadata !664), !dbg !1767
  br label %569, !dbg !2397

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1704, metadata !664), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1697, metadata !664), !dbg !1759
  %579 = icmp ult i64 %577, %570, !dbg !2399
  br i1 %579, label %580, label %582, !dbg !2403

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2405
  store i8 %572, i8* %581, align 1, !dbg !2405, !tbaa !841
  br label %582, !dbg !2405

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1697, metadata !664), !dbg !1759
  %584 = and i8 %571, 1, !dbg !2409
  %585 = icmp eq i8 %584, 0, !dbg !2409
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1706, metadata !664), !dbg !1769
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2411
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1706, metadata !664), !dbg !1769
  br label %587, !dbg !2412

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1696, metadata !664), !dbg !1834
  br label %123, !dbg !2415, !llvm.loop !2416

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2419
  %600 = and i1 %114, %599, !dbg !2421
  %601 = xor i1 %600, true, !dbg !2421
  %602 = or i1 %112, %601, !dbg !2421
  br i1 %602, label %603, label %648, !dbg !2421

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2422
  %605 = xor i1 %604, true, !dbg !2422
  %606 = and i8 %129, 1, !dbg !2424
  %607 = icmp eq i8 %606, 0, !dbg !2424
  %608 = or i1 %607, %605, !dbg !2422
  br i1 %608, label %618, label %609, !dbg !2422

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2426
  %611 = icmp eq i8 %610, 0, !dbg !2426
  br i1 %611, label %614, label %612, !dbg !2429

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2430
  br label %659, !dbg !2431

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2432
  %616 = icmp ne i64 %126, 0, !dbg !2434
  %617 = and i1 %616, %615, !dbg !2436
  br i1 %617, label %27, label %618, !dbg !2436

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2437
  %620 = and i1 %619, %112, !dbg !2439
  br i1 %620, label %621, label %638, !dbg !2439

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1699, metadata !664), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1697, metadata !664), !dbg !1759
  %622 = load i8, i8* %100, align 1, !dbg !2440, !tbaa !841
  %623 = icmp eq i8 %622, 0, !dbg !2444
  br i1 %623, label %638, label %624, !dbg !2444

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2446

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2446
  br i1 %629, label %630, label %632, !dbg !2450

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2452
  store i8 %626, i8* %631, align 1, !dbg !2452, !tbaa !841
  br label %632, !dbg !2452

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1697, metadata !664), !dbg !1759
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1699, metadata !664), !dbg !1761
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1699, metadata !664), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1697, metadata !664), !dbg !1759
  %635 = load i8, i8* %634, align 1, !dbg !2440, !tbaa !841
  %636 = icmp eq i8 %635, 0, !dbg !2444
  br i1 %636, label %637, label %625, !dbg !2444, !llvm.loop !2458

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1759

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1697, metadata !664), !dbg !1759
  %640 = icmp ult i64 %639, %131, !dbg !2461
  br i1 %640, label %641, label %659, !dbg !2463

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2464
  store i8 0, i8* %642, align 1, !dbg !2465, !tbaa !841
  br label %659, !dbg !2464

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1751

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1751

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1751

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1688, metadata !664), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1690, metadata !664), !dbg !1753
  %653 = icmp ne i32 %650, 2, !dbg !2466
  %654 = icmp eq i8 %104, 0, !dbg !2468
  %655 = or i1 %653, %654, !dbg !2470
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1691, metadata !664), !dbg !1754
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1691, metadata !664), !dbg !1754
  %657 = and i32 %5, -3, !dbg !2471
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2472
  br label %659, !dbg !2473

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2474
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2475 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2479, metadata !664), !dbg !2483
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2480, metadata !664), !dbg !2484
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2485
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2481, metadata !664), !dbg !2486
  %4 = icmp eq i8* %3, %0, !dbg !2487
  br i1 %4, label %5, label %75, !dbg !2489

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2490
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2482, metadata !664), !dbg !2491
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2492, metadata !664), !dbg !2508
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2506, metadata !664), !dbg !2511
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2507, metadata !664), !dbg !2512
  %7 = load i8, i8* %6, align 1, !tbaa !841
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2513
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2513

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2516, metadata !664), !dbg !2530
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2528, metadata !664), !dbg !2534
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2529, metadata !664), !dbg !2535
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !841
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2536
  %15 = icmp eq i32 %14, 84, !dbg !2536
  br i1 %15, label %16, label %72, !dbg !2536

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2539, metadata !664), !dbg !2552
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2550, metadata !664), !dbg !2556
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2551, metadata !664), !dbg !2557
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !841
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2558
  %21 = icmp eq i32 %20, 70, !dbg !2558
  br i1 %21, label %22, label %72, !dbg !2558

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2561, metadata !664), !dbg !2573
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2571, metadata !664), !dbg !2577
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2572, metadata !664), !dbg !2578
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !841
  %25 = icmp eq i8 %24, 45, !dbg !2579
  br i1 %25, label %26, label %72, !dbg !2582

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2584, metadata !664), !dbg !2595
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2593, metadata !664), !dbg !2599
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2594, metadata !664), !dbg !2600
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !841
  %29 = icmp eq i8 %28, 56, !dbg !2601
  br i1 %29, label %30, label %72, !dbg !2604

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2606, metadata !664), !dbg !2616
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2614, metadata !664), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2615, metadata !664), !dbg !2621
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !841
  %33 = icmp eq i8 %32, 0, !dbg !2622
  br i1 %33, label %34, label %72, !dbg !2625

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2627, !tbaa !841
  %36 = icmp eq i8 %35, 96, !dbg !2628
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.78, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.79, i64 0, i64 0), !dbg !2627
  br label %75, !dbg !2629

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2516, metadata !664), !dbg !2630
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2528, metadata !664), !dbg !2634
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2529, metadata !664), !dbg !2635
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !841
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2636
  %43 = icmp eq i32 %42, 66, !dbg !2636
  br i1 %43, label %44, label %72, !dbg !2636

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2539, metadata !664), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2550, metadata !664), !dbg !2639
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2551, metadata !664), !dbg !2640
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !841
  %47 = icmp eq i8 %46, 49, !dbg !2641
  br i1 %47, label %48, label %72, !dbg !2643

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2561, metadata !664), !dbg !2645
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2571, metadata !664), !dbg !2647
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2572, metadata !664), !dbg !2648
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !841
  %51 = icmp eq i8 %50, 56, !dbg !2649
  br i1 %51, label %52, label %72, !dbg !2650

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2584, metadata !664), !dbg !2651
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2593, metadata !664), !dbg !2653
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2594, metadata !664), !dbg !2654
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !841
  %55 = icmp eq i8 %54, 48, !dbg !2655
  br i1 %55, label %56, label %72, !dbg !2656

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2606, metadata !664), !dbg !2657
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2614, metadata !664), !dbg !2659
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2615, metadata !664), !dbg !2660
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !841
  %59 = icmp eq i8 %58, 51, !dbg !2661
  br i1 %59, label %60, label %72, !dbg !2662

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2663, metadata !664), !dbg !2672
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2670, metadata !664), !dbg !2676
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2671, metadata !664), !dbg !2677
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !841
  %63 = icmp eq i8 %62, 48, !dbg !2678
  br i1 %63, label %64, label %72, !dbg !2681

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2683, metadata !664), !dbg !2691
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2689, metadata !664), !dbg !2695
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2690, metadata !664), !dbg !2696
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !841
  %67 = icmp eq i8 %66, 0, !dbg !2697
  br i1 %67, label %68, label %72, !dbg !2700

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2701, !tbaa !841
  %70 = icmp eq i8 %69, 96, !dbg !2702
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.80, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.81, i64 0, i64 0), !dbg !2701
  br label %75, !dbg !2703

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2704
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.76, i64 0, i64 0), !dbg !2705
  br label %75, !dbg !2706

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2707
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2708 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2712, metadata !664), !dbg !2715
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2713, metadata !664), !dbg !2716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2714, metadata !664), !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2718, metadata !664) #11, !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2723, metadata !664) #11, !dbg !2733
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2724, metadata !664) #11, !dbg !2734
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2725, metadata !664) #11, !dbg !2735
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2736
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2726, metadata !664) #11, !dbg !2737
  %6 = tail call i32* @__errno_location() #1, !dbg !2738
  %7 = load i32, i32* %6, align 4, !dbg !2738, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2727, metadata !664) #11, !dbg !2739
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2740
  %9 = load i32, i32* %8, align 4, !dbg !2740, !tbaa !1619
  %10 = or i32 %9, 1, !dbg !2741
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2728, metadata !664) #11, !dbg !2742
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2743
  %12 = load i32, i32* %11, align 8, !dbg !2743, !tbaa !1557
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2744
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2745
  %15 = load i8*, i8** %14, align 8, !dbg !2745, !tbaa !1646
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2746
  %17 = load i8*, i8** %16, align 8, !dbg !2746, !tbaa !1649
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2747
  %19 = add i64 %18, 1, !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2729, metadata !664) #11, !dbg !2749
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2750, metadata !664) #11, !dbg !2755
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2757
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2730, metadata !664) #11, !dbg !2758
  %21 = load i32, i32* %11, align 8, !dbg !2759, !tbaa !1557
  %22 = load i8*, i8** %14, align 8, !dbg !2760, !tbaa !1646
  %23 = load i8*, i8** %16, align 8, !dbg !2761, !tbaa !1649
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2762
  store i32 %7, i32* %6, align 4, !dbg !2763, !tbaa !814
  ret i8* %20, !dbg !2764
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2719 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2718, metadata !664), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2723, metadata !664), !dbg !2766
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2724, metadata !664), !dbg !2767
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2725, metadata !664), !dbg !2768
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2769
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2769
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2726, metadata !664), !dbg !2770
  %7 = tail call i32* @__errno_location() #1, !dbg !2771
  %8 = load i32, i32* %7, align 4, !dbg !2771, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2727, metadata !664), !dbg !2772
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2773
  %10 = load i32, i32* %9, align 4, !dbg !2773, !tbaa !1619
  %11 = icmp ne i64* %2, null, !dbg !2774
  %12 = xor i1 %11, true, !dbg !2774
  %13 = zext i1 %12 to i32, !dbg !2774
  %14 = or i32 %10, %13, !dbg !2775
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2728, metadata !664), !dbg !2776
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2777
  %16 = load i32, i32* %15, align 8, !dbg !2777, !tbaa !1557
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2778
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2779
  %19 = load i8*, i8** %18, align 8, !dbg !2779, !tbaa !1646
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2780
  %21 = load i8*, i8** %20, align 8, !dbg !2780, !tbaa !1649
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2781
  %23 = add i64 %22, 1, !dbg !2782
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2729, metadata !664), !dbg !2783
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2750, metadata !664) #11, !dbg !2784
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2786
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2730, metadata !664), !dbg !2787
  %25 = load i32, i32* %15, align 8, !dbg !2788, !tbaa !1557
  %26 = load i8*, i8** %18, align 8, !dbg !2789, !tbaa !1646
  %27 = load i8*, i8** %20, align 8, !dbg !2790, !tbaa !1649
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2791
  store i32 %8, i32* %7, align 4, !dbg !2792, !tbaa !814
  br i1 %11, label %29, label %30, !dbg !2793

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2794, !tbaa !913
  br label %30, !dbg !2796

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2797
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2798 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2802, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2800, metadata !664), !dbg !2803
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2801, metadata !664), !dbg !2804
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2801, metadata !664), !dbg !2804
  %2 = load i32, i32* @nslots, align 4, !dbg !2805, !tbaa !814
  %3 = icmp sgt i32 %2, 1, !dbg !2809
  br i1 %3, label %4, label %14, !dbg !2810

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2812

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2812
  %8 = load i8*, i8** %7, align 8, !dbg !2812, !tbaa !2813
  tail call void @free(i8* %8) #11, !dbg !2815
  %9 = add nuw i64 %6, 1, !dbg !2816
  %10 = load i32, i32* @nslots, align 4, !dbg !2805, !tbaa !814
  %11 = sext i32 %10 to i64, !dbg !2809
  %12 = icmp slt i64 %9, %11, !dbg !2809
  br i1 %12, label %5, label %13, !dbg !2810, !llvm.loop !2818

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2821

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2821
  %16 = load i8*, i8** %15, align 8, !dbg !2821, !tbaa !2813
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2823
  br i1 %17, label %19, label %18, !dbg !2824

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !2825
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2827, !tbaa !2828
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2829, !tbaa !2813
  br label %19, !dbg !2830

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2831
  br i1 %20, label %23, label %21, !dbg !2833

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2834
  tail call void @free(i8* %22) #11, !dbg !2836
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2837, !tbaa !672
  br label %23, !dbg !2838

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2839, !tbaa !814
  ret void, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2841 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2845, metadata !664), !dbg !2847
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2846, metadata !664), !dbg !2848
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2849
  ret i8* %3, !dbg !2850
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2851 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2855, metadata !664), !dbg !2869
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2856, metadata !664), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2857, metadata !664), !dbg !2871
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2858, metadata !664), !dbg !2872
  %5 = tail call i32* @__errno_location() #1, !dbg !2873
  %6 = load i32, i32* %5, align 4, !dbg !2873, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2859, metadata !664), !dbg !2874
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2875, !tbaa !672
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2860, metadata !664), !dbg !2876
  %8 = icmp slt i32 %0, 0, !dbg !2877
  br i1 %8, label %9, label %10, !dbg !2879

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2880
  unreachable, !dbg !2880

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2881, !tbaa !814
  %12 = icmp sgt i32 %11, %0, !dbg !2882
  br i1 %12, label %34, label %13, !dbg !2883

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2884
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2885
  br i1 %15, label %16, label %17, !dbg !2887

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2888
  unreachable, !dbg !2888

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2889
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2889
  %20 = add nsw i32 %0, 1, !dbg !2891
  %21 = sext i32 %20 to i64, !dbg !2892
  %22 = shl nsw i64 %21, 4, !dbg !2893
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2894
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2894
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2860, metadata !664), !dbg !2876
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2895, !tbaa !672
  br i1 %14, label %25, label %26, !dbg !2896

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2897, !tbaa.struct !2899
  br label %26, !dbg !2900

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2901, !tbaa !814
  %28 = sext i32 %27 to i64, !dbg !2902
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2902
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2903
  %31 = sub nsw i32 %20, %27, !dbg !2904
  %32 = sext i32 %31 to i64, !dbg !2905
  %33 = shl nsw i64 %32, 4, !dbg !2906
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2903
  store i32 %20, i32* @nslots, align 4, !dbg !2907, !tbaa !814
  br label %34, !dbg !2908

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2860, metadata !664), !dbg !2876
  %36 = sext i32 %0 to i64, !dbg !2909
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2910
  %38 = load i64, i64* %37, align 8, !dbg !2910, !tbaa !2828
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2864, metadata !664), !dbg !2911
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2912
  %40 = load i8*, i8** %39, align 8, !dbg !2912, !tbaa !2813
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2866, metadata !664), !dbg !2913
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2914
  %42 = load i32, i32* %41, align 4, !dbg !2914, !tbaa !1619
  %43 = or i32 %42, 1, !dbg !2915
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2867, metadata !664), !dbg !2916
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2917
  %45 = load i32, i32* %44, align 8, !dbg !2917, !tbaa !1557
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2918
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2919
  %48 = load i8*, i8** %47, align 8, !dbg !2919, !tbaa !1646
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2920
  %50 = load i8*, i8** %49, align 8, !dbg !2920, !tbaa !1649
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2868, metadata !664), !dbg !2922
  %52 = icmp ugt i64 %38, %51, !dbg !2923
  br i1 %52, label %63, label %53, !dbg !2925

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2864, metadata !664), !dbg !2911
  store i64 %54, i64* %37, align 8, !dbg !2928, !tbaa !2828
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2929
  br i1 %55, label %57, label %56, !dbg !2931

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2932
  br label %57, !dbg !2932

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2750, metadata !664) #11, !dbg !2933
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2935
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2866, metadata !664), !dbg !2913
  store i8* %58, i8** %39, align 8, !dbg !2936, !tbaa !2813
  %59 = load i32, i32* %44, align 8, !dbg !2937, !tbaa !1557
  %60 = load i8*, i8** %47, align 8, !dbg !2938, !tbaa !1646
  %61 = load i8*, i8** %49, align 8, !dbg !2939, !tbaa !1649
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2940
  br label %63, !dbg !2941

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2866, metadata !664), !dbg !2913
  store i32 %6, i32* %5, align 4, !dbg !2942, !tbaa !814
  ret i8* %64, !dbg !2943
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2944 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2948, metadata !664), !dbg !2951
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2949, metadata !664), !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2950, metadata !664), !dbg !2953
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2954
  ret i8* %4, !dbg !2955
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2956 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2958, metadata !664), !dbg !2959
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2845, metadata !664) #11, !dbg !2960
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2846, metadata !664) #11, !dbg !2962
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2963
  ret i8* %2, !dbg !2964
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2965 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2969, metadata !664), !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2970, metadata !664), !dbg !2972
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2948, metadata !664) #11, !dbg !2973
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2949, metadata !664) #11, !dbg !2975
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2950, metadata !664) #11, !dbg !2976
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2977
  ret i8* %3, !dbg !2978
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2979 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2987, metadata !2993), !dbg !2994
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2983, metadata !664), !dbg !2996
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2984, metadata !664), !dbg !2997
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2985, metadata !664), !dbg !2998
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2999
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2999
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2986, metadata !897), !dbg !3000
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2992, metadata !664) #11, !dbg !3001
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3002
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3002
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2987, metadata !664) #11, !dbg !2994
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2987, metadata !3003) #11, !dbg !2994
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2994
  %8 = icmp eq i32 %1, 10, !dbg !3004
  br i1 %8, label %9, label %10, !dbg !3006

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3007, !noalias !3008
  unreachable, !dbg !3007

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2987, metadata !3003) #11, !dbg !2994
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3011
  store i32 %1, i32* %11, align 8, !dbg !3011, !alias.scope !3008
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3011
  %13 = bitcast i32* %12 to i8*, !dbg !3011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3011
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3012
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2986, metadata !897), !dbg !3000
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3013
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3014
  ret i8* %14, !dbg !3015
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3016 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2987, metadata !2993), !dbg !3025
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3020, metadata !664), !dbg !3027
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3021, metadata !664), !dbg !3028
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3022, metadata !664), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3023, metadata !664), !dbg !3030
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3031
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3031
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3024, metadata !897), !dbg !3032
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2992, metadata !664) #11, !dbg !3033
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3034
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3034
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2987, metadata !664) #11, !dbg !3025
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2987, metadata !3003) #11, !dbg !3025
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3025
  %9 = icmp eq i32 %1, 10, !dbg !3035
  br i1 %9, label %10, label %11, !dbg !3036

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3037, !noalias !3038
  unreachable, !dbg !3037

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2987, metadata !3003) #11, !dbg !3025
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3041
  store i32 %1, i32* %12, align 8, !dbg !3041, !alias.scope !3038
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3041
  %14 = bitcast i32* %13 to i8*, !dbg !3041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3041
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3042
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3024, metadata !897), !dbg !3032
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3043
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3044
  ret i8* %15, !dbg !3045
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3046 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2987, metadata !2993), !dbg !3052
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3050, metadata !664), !dbg !3055
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3051, metadata !664), !dbg !3056
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2983, metadata !664) #11, !dbg !3057
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2984, metadata !664) #11, !dbg !3058
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2985, metadata !664) #11, !dbg !3059
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3060
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3060
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2986, metadata !897) #11, !dbg !3061
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2992, metadata !664) #11, !dbg !3062
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3063
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3063
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2987, metadata !664) #11, !dbg !3052
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2987, metadata !3003) #11, !dbg !3052
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3052
  %7 = icmp eq i32 %0, 10, !dbg !3064
  br i1 %7, label %8, label %9, !dbg !3065

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3066, !noalias !3067
  unreachable, !dbg !3066

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2987, metadata !3003) #11, !dbg !3052
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3070
  store i32 %0, i32* %10, align 8, !dbg !3070, !alias.scope !3067
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3070
  %12 = bitcast i32* %11 to i8*, !dbg !3070
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3070
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3071
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2986, metadata !897) #11, !dbg !3061
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3072
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3073
  ret i8* %13, !dbg !3074
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3075 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2987, metadata !2993), !dbg !3082
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3079, metadata !664), !dbg !3085
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3080, metadata !664), !dbg !3086
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3081, metadata !664), !dbg !3087
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3020, metadata !664) #11, !dbg !3088
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3021, metadata !664) #11, !dbg !3089
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3022, metadata !664) #11, !dbg !3090
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3023, metadata !664) #11, !dbg !3091
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3092
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3092
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3024, metadata !897) #11, !dbg !3093
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2992, metadata !664) #11, !dbg !3094
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3095
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3095
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2987, metadata !664) #11, !dbg !3082
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2987, metadata !3003) #11, !dbg !3082
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3082
  %8 = icmp eq i32 %0, 10, !dbg !3096
  br i1 %8, label %9, label %10, !dbg !3097

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3098, !noalias !3099
  unreachable, !dbg !3098

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2987, metadata !3003) #11, !dbg !3082
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3102
  store i32 %0, i32* %11, align 8, !dbg !3102, !alias.scope !3099
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3102
  %13 = bitcast i32* %12 to i8*, !dbg !3102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3102
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3103
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3024, metadata !897) #11, !dbg !3093
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3104
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3105
  ret i8* %14, !dbg !3106
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3107 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3111, metadata !664), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3112, metadata !664), !dbg !3116
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3113, metadata !664), !dbg !3117
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3118
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3119, !tbaa.struct !3120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3114, metadata !897), !dbg !3121
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1577, metadata !664), !dbg !3122
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1578, metadata !664), !dbg !3124
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1579, metadata !664), !dbg !3125
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1580, metadata !664), !dbg !3126
  %6 = lshr i8 %2, 5, !dbg !3127
  %7 = zext i8 %6 to i64, !dbg !3127
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3128
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1581, metadata !664), !dbg !3129
  %9 = and i8 %2, 31, !dbg !3130
  %10 = zext i8 %9 to i32, !dbg !3131
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1583, metadata !664), !dbg !3132
  %11 = load i32, i32* %8, align 4, !dbg !3133, !tbaa !814
  %12 = lshr i32 %11, %10, !dbg !3134
  %13 = and i32 %12, 1, !dbg !3135
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1584, metadata !664), !dbg !3136
  %14 = xor i32 %13, 1, !dbg !3137
  %15 = shl i32 %14, %10, !dbg !3138
  %16 = xor i32 %15, %11, !dbg !3139
  store i32 %16, i32* %8, align 4, !dbg !3139, !tbaa !814
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3114, metadata !897), !dbg !3121
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3140
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3141
  ret i8* %17, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3143 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3147, metadata !664), !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3148, metadata !664), !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3111, metadata !664) #11, !dbg !3151
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3112, metadata !664) #11, !dbg !3153
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3113, metadata !664) #11, !dbg !3154
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3155
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3155
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3156, !tbaa.struct !3120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3114, metadata !897) #11, !dbg !3157
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1577, metadata !664) #11, !dbg !3158
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1578, metadata !664) #11, !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1579, metadata !664) #11, !dbg !3161
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1580, metadata !664) #11, !dbg !3162
  %5 = lshr i8 %1, 5, !dbg !3163
  %6 = zext i8 %5 to i64, !dbg !3163
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3164
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1581, metadata !664) #11, !dbg !3165
  %8 = and i8 %1, 31, !dbg !3166
  %9 = zext i8 %8 to i32, !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1583, metadata !664) #11, !dbg !3168
  %10 = load i32, i32* %7, align 4, !dbg !3169, !tbaa !814
  %11 = lshr i32 %10, %9, !dbg !3170
  %12 = and i32 %11, 1, !dbg !3171
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1584, metadata !664) #11, !dbg !3172
  %13 = xor i32 %12, 1, !dbg !3173
  %14 = shl i32 %13, %9, !dbg !3174
  %15 = xor i32 %14, %10, !dbg !3175
  store i32 %15, i32* %7, align 4, !dbg !3175, !tbaa !814
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3114, metadata !897) #11, !dbg !3157
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3176
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3177
  ret i8* %16, !dbg !3178
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3179 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3181, metadata !664), !dbg !3182
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3147, metadata !664) #11, !dbg !3183
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3148, metadata !664) #11, !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3111, metadata !664) #11, !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3112, metadata !664) #11, !dbg !3188
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3113, metadata !664) #11, !dbg !3189
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3190
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !3190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3191, !tbaa.struct !3120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3114, metadata !897) #11, !dbg !3192
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1577, metadata !664) #11, !dbg !3193
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1578, metadata !664) #11, !dbg !3195
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1579, metadata !664) #11, !dbg !3196
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1580, metadata !664) #11, !dbg !3197
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3198
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1581, metadata !664) #11, !dbg !3199
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1583, metadata !664) #11, !dbg !3200
  %5 = load i32, i32* %4, align 4, !dbg !3201, !tbaa !814
  %6 = or i32 %5, 67108864, !dbg !3202
  store i32 %6, i32* %4, align 4, !dbg !3202, !tbaa !814
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3114, metadata !897) #11, !dbg !3192
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3203
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !3204
  ret i8* %7, !dbg !3205
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3206 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3208, metadata !664), !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3209, metadata !664), !dbg !3211
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3111, metadata !664) #11, !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3112, metadata !664) #11, !dbg !3214
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3113, metadata !664) #11, !dbg !3215
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3216
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3217, !tbaa.struct !3120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3114, metadata !897) #11, !dbg !3218
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1577, metadata !664) #11, !dbg !3219
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1578, metadata !664) #11, !dbg !3221
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1579, metadata !664) #11, !dbg !3222
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1580, metadata !664) #11, !dbg !3223
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3224
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1581, metadata !664) #11, !dbg !3225
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1583, metadata !664) #11, !dbg !3226
  %6 = load i32, i32* %5, align 4, !dbg !3227, !tbaa !814
  %7 = or i32 %6, 67108864, !dbg !3228
  store i32 %7, i32* %5, align 4, !dbg !3228, !tbaa !814
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3114, metadata !897) #11, !dbg !3218
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3229
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3230
  ret i8* %8, !dbg !3231
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3232 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2987, metadata !2993), !dbg !3238
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3234, metadata !664), !dbg !3240
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3235, metadata !664), !dbg !3241
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3236, metadata !664), !dbg !3242
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3243
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3243
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2992, metadata !664) #11, !dbg !3244
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3245
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3245
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2987, metadata !664) #11, !dbg !3238
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2987, metadata !3003) #11, !dbg !3238
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3238
  %9 = icmp eq i32 %1, 10, !dbg !3246
  br i1 %9, label %10, label %11, !dbg !3247

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3248, !noalias !3249
  unreachable, !dbg !3248

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2987, metadata !3003) #11, !dbg !3238
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3252
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3253
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3254
  store i32 %1, i32* %13, align 8, !dbg !3254
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3254
  %15 = bitcast i32* %14 to i8*, !dbg !3254
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3254
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3237, metadata !897), !dbg !3255
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1577, metadata !664), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1578, metadata !664), !dbg !3258
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1579, metadata !664), !dbg !3259
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1580, metadata !664), !dbg !3260
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3261
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1581, metadata !664), !dbg !3262
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1583, metadata !664), !dbg !3263
  %17 = load i32, i32* %16, align 4, !dbg !3264, !tbaa !814
  %18 = or i32 %17, 67108864, !dbg !3265
  store i32 %18, i32* %16, align 4, !dbg !3265, !tbaa !814
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3237, metadata !897), !dbg !3255
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3266
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3267
  ret i8* %19, !dbg !3268
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3269 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3273, metadata !664), !dbg !3277
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3274, metadata !664), !dbg !3278
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3275, metadata !664), !dbg !3279
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3276, metadata !664), !dbg !3280
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3281, metadata !664) #11, !dbg !3291
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3286, metadata !664) #11, !dbg !3293
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3287, metadata !664) #11, !dbg !3294
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3288, metadata !664) #11, !dbg !3295
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3289, metadata !664) #11, !dbg !3296
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3297
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3298, !tbaa.struct !3120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3290, metadata !897) #11, !dbg !3299
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1627, metadata !664) #11, !dbg !3300
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1628, metadata !664) #11, !dbg !3302
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1629, metadata !664) #11, !dbg !3303
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1627, metadata !664) #11, !dbg !3300
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1627, metadata !664) #11, !dbg !3300
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3304
  store i32 10, i32* %7, align 8, !dbg !3305, !tbaa !1557
  %8 = icmp ne i8* %1, null, !dbg !3306
  %9 = icmp ne i8* %2, null, !dbg !3307
  %10 = and i1 %8, %9, !dbg !3308
  br i1 %10, label %12, label %11, !dbg !3308

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3309
  unreachable, !dbg !3309

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3310
  store i8* %1, i8** %13, align 8, !dbg !3311, !tbaa !1646
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3312
  store i8* %2, i8** %14, align 8, !dbg !3313, !tbaa !1649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3290, metadata !897) #11, !dbg !3299
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3314
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3315
  ret i8* %15, !dbg !3316
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3282 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3281, metadata !664), !dbg !3317
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3286, metadata !664), !dbg !3318
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3287, metadata !664), !dbg !3319
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3288, metadata !664), !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3289, metadata !664), !dbg !3321
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3322
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3323, !tbaa.struct !3120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3290, metadata !897), !dbg !3324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1627, metadata !664) #11, !dbg !3325
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1628, metadata !664) #11, !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1629, metadata !664) #11, !dbg !3328
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1627, metadata !664) #11, !dbg !3325
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1627, metadata !664) #11, !dbg !3325
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3329
  store i32 10, i32* %8, align 8, !dbg !3330, !tbaa !1557
  %9 = icmp ne i8* %1, null, !dbg !3331
  %10 = icmp ne i8* %2, null, !dbg !3332
  %11 = and i1 %9, %10, !dbg !3333
  br i1 %11, label %13, label %12, !dbg !3333

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3334
  unreachable, !dbg !3334

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3335
  store i8* %1, i8** %14, align 8, !dbg !3336, !tbaa !1646
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3337
  store i8* %2, i8** %15, align 8, !dbg !3338, !tbaa !1649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3290, metadata !897), !dbg !3324
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3339
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3340
  ret i8* %16, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3342 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3346, metadata !664), !dbg !3349
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3347, metadata !664), !dbg !3350
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3348, metadata !664), !dbg !3351
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3273, metadata !664) #11, !dbg !3352
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3274, metadata !664) #11, !dbg !3354
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3275, metadata !664) #11, !dbg !3355
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3276, metadata !664) #11, !dbg !3356
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3281, metadata !664) #11, !dbg !3357
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3286, metadata !664) #11, !dbg !3359
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3287, metadata !664) #11, !dbg !3360
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3288, metadata !664) #11, !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3289, metadata !664) #11, !dbg !3362
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3363
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3364, !tbaa.struct !3120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3290, metadata !897) #11, !dbg !3365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1627, metadata !664) #11, !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1628, metadata !664) #11, !dbg !3368
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1629, metadata !664) #11, !dbg !3369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1627, metadata !664) #11, !dbg !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1627, metadata !664) #11, !dbg !3366
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3370
  store i32 10, i32* %6, align 8, !dbg !3371, !tbaa !1557
  %7 = icmp ne i8* %0, null, !dbg !3372
  %8 = icmp ne i8* %1, null, !dbg !3373
  %9 = and i1 %7, %8, !dbg !3374
  br i1 %9, label %11, label %10, !dbg !3374

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3375
  unreachable, !dbg !3375

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3376
  store i8* %0, i8** %12, align 8, !dbg !3377, !tbaa !1646
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3378
  store i8* %1, i8** %13, align 8, !dbg !3379, !tbaa !1649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3290, metadata !897) #11, !dbg !3365
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3380
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3381
  ret i8* %14, !dbg !3382
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3383 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3387, metadata !664), !dbg !3391
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3388, metadata !664), !dbg !3392
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3389, metadata !664), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3390, metadata !664), !dbg !3394
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3281, metadata !664) #11, !dbg !3395
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3286, metadata !664) #11, !dbg !3397
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3287, metadata !664) #11, !dbg !3398
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3288, metadata !664) #11, !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3289, metadata !664) #11, !dbg !3400
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3401
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3402, !tbaa.struct !3120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3290, metadata !897) #11, !dbg !3403
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1627, metadata !664) #11, !dbg !3404
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1628, metadata !664) #11, !dbg !3406
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1629, metadata !664) #11, !dbg !3407
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1627, metadata !664) #11, !dbg !3404
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1627, metadata !664) #11, !dbg !3404
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3408
  store i32 10, i32* %7, align 8, !dbg !3409, !tbaa !1557
  %8 = icmp ne i8* %0, null, !dbg !3410
  %9 = icmp ne i8* %1, null, !dbg !3411
  %10 = and i1 %8, %9, !dbg !3412
  br i1 %10, label %12, label %11, !dbg !3412

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3413
  unreachable, !dbg !3413

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3414
  store i8* %0, i8** %13, align 8, !dbg !3415, !tbaa !1646
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3416
  store i8* %1, i8** %14, align 8, !dbg !3417, !tbaa !1649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3290, metadata !897) #11, !dbg !3403
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3418
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3419
  ret i8* %15, !dbg !3420
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3421 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3425, metadata !664), !dbg !3428
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3426, metadata !664), !dbg !3429
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3427, metadata !664), !dbg !3430
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3431
  ret i8* %4, !dbg !3432
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3433 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3437, metadata !664), !dbg !3439
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3438, metadata !664), !dbg !3440
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3425, metadata !664) #11, !dbg !3441
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3426, metadata !664) #11, !dbg !3443
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3427, metadata !664) #11, !dbg !3444
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3445
  ret i8* %3, !dbg !3446
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3447 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3451, metadata !664), !dbg !3453
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3452, metadata !664), !dbg !3454
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3425, metadata !664) #11, !dbg !3455
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3426, metadata !664) #11, !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3427, metadata !664) #11, !dbg !3458
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3459
  ret i8* %3, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3461 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3463, metadata !664), !dbg !3464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3451, metadata !664) #11, !dbg !3465
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3452, metadata !664) #11, !dbg !3467
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3425, metadata !664) #11, !dbg !3468
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3426, metadata !664) #11, !dbg !3470
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3427, metadata !664) #11, !dbg !3471
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3472
  ret i8* %2, !dbg !3473
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3474 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3530, metadata !664), !dbg !3536
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3531, metadata !664), !dbg !3537
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3532, metadata !664), !dbg !3538
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3533, metadata !664), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3534, metadata !664), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3535, metadata !664), !dbg !3541
  %7 = icmp eq i8* %1, null, !dbg !3542
  br i1 %7, label %10, label %8, !dbg !3544

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3545
  br label %12, !dbg !3545

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3546
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.88, i64 0, i64 0), i32 5) #11, !dbg !3547
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3548
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.89, i64 0, i64 0), i32 5) #11, !dbg !3550
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3551
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
  ], !dbg !3552

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3553
  unreachable, !dbg !3553

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.90, i64 0, i64 0), i32 5) #11, !dbg !3555
  %20 = load i8*, i8** %4, align 8, !dbg !3555, !tbaa !672
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3556
  br label %146, !dbg !3558

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.91, i64 0, i64 0), i32 5) #11, !dbg !3559
  %24 = load i8*, i8** %4, align 8, !dbg !3559, !tbaa !672
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3559
  %26 = load i8*, i8** %25, align 8, !dbg !3559, !tbaa !672
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3560
  br label %146, !dbg !3561

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.92, i64 0, i64 0), i32 5) #11, !dbg !3562
  %30 = load i8*, i8** %4, align 8, !dbg !3562, !tbaa !672
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3562
  %32 = load i8*, i8** %31, align 8, !dbg !3562, !tbaa !672
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3562
  %34 = load i8*, i8** %33, align 8, !dbg !3562, !tbaa !672
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3563
  br label %146, !dbg !3564

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.93, i64 0, i64 0), i32 5) #11, !dbg !3565
  %38 = load i8*, i8** %4, align 8, !dbg !3565, !tbaa !672
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3565
  %40 = load i8*, i8** %39, align 8, !dbg !3565, !tbaa !672
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3565
  %42 = load i8*, i8** %41, align 8, !dbg !3565, !tbaa !672
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3565
  %44 = load i8*, i8** %43, align 8, !dbg !3565, !tbaa !672
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3566
  br label %146, !dbg !3567

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.94, i64 0, i64 0), i32 5) #11, !dbg !3568
  %48 = load i8*, i8** %4, align 8, !dbg !3568, !tbaa !672
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3568
  %50 = load i8*, i8** %49, align 8, !dbg !3568, !tbaa !672
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3568
  %52 = load i8*, i8** %51, align 8, !dbg !3568, !tbaa !672
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3568
  %54 = load i8*, i8** %53, align 8, !dbg !3568, !tbaa !672
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3568
  %56 = load i8*, i8** %55, align 8, !dbg !3568, !tbaa !672
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3569
  br label %146, !dbg !3570

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.95, i64 0, i64 0), i32 5) #11, !dbg !3571
  %60 = load i8*, i8** %4, align 8, !dbg !3571, !tbaa !672
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3571
  %62 = load i8*, i8** %61, align 8, !dbg !3571, !tbaa !672
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3571
  %64 = load i8*, i8** %63, align 8, !dbg !3571, !tbaa !672
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3571
  %66 = load i8*, i8** %65, align 8, !dbg !3571, !tbaa !672
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3571
  %68 = load i8*, i8** %67, align 8, !dbg !3571, !tbaa !672
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3571
  %70 = load i8*, i8** %69, align 8, !dbg !3571, !tbaa !672
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3572
  br label %146, !dbg !3573

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.96, i64 0, i64 0), i32 5) #11, !dbg !3574
  %74 = load i8*, i8** %4, align 8, !dbg !3574, !tbaa !672
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3574
  %76 = load i8*, i8** %75, align 8, !dbg !3574, !tbaa !672
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3574
  %78 = load i8*, i8** %77, align 8, !dbg !3574, !tbaa !672
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3574
  %80 = load i8*, i8** %79, align 8, !dbg !3574, !tbaa !672
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3574
  %82 = load i8*, i8** %81, align 8, !dbg !3574, !tbaa !672
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3574
  %84 = load i8*, i8** %83, align 8, !dbg !3574, !tbaa !672
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3574
  %86 = load i8*, i8** %85, align 8, !dbg !3574, !tbaa !672
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3575
  br label %146, !dbg !3576

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.97, i64 0, i64 0), i32 5) #11, !dbg !3577
  %90 = load i8*, i8** %4, align 8, !dbg !3577, !tbaa !672
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3577
  %92 = load i8*, i8** %91, align 8, !dbg !3577, !tbaa !672
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3577
  %94 = load i8*, i8** %93, align 8, !dbg !3577, !tbaa !672
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3577
  %96 = load i8*, i8** %95, align 8, !dbg !3577, !tbaa !672
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3577
  %98 = load i8*, i8** %97, align 8, !dbg !3577, !tbaa !672
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3577
  %100 = load i8*, i8** %99, align 8, !dbg !3577, !tbaa !672
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3577
  %102 = load i8*, i8** %101, align 8, !dbg !3577, !tbaa !672
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3577
  %104 = load i8*, i8** %103, align 8, !dbg !3577, !tbaa !672
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3578
  br label %146, !dbg !3579

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.98, i64 0, i64 0), i32 5) #11, !dbg !3580
  %108 = load i8*, i8** %4, align 8, !dbg !3580, !tbaa !672
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3580
  %110 = load i8*, i8** %109, align 8, !dbg !3580, !tbaa !672
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3580
  %112 = load i8*, i8** %111, align 8, !dbg !3580, !tbaa !672
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3580
  %114 = load i8*, i8** %113, align 8, !dbg !3580, !tbaa !672
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3580
  %116 = load i8*, i8** %115, align 8, !dbg !3580, !tbaa !672
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3580
  %118 = load i8*, i8** %117, align 8, !dbg !3580, !tbaa !672
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3580
  %120 = load i8*, i8** %119, align 8, !dbg !3580, !tbaa !672
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3580
  %122 = load i8*, i8** %121, align 8, !dbg !3580, !tbaa !672
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3580
  %124 = load i8*, i8** %123, align 8, !dbg !3580, !tbaa !672
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3581
  br label %146, !dbg !3582

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.99, i64 0, i64 0), i32 5) #11, !dbg !3583
  %128 = load i8*, i8** %4, align 8, !dbg !3583, !tbaa !672
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3583
  %130 = load i8*, i8** %129, align 8, !dbg !3583, !tbaa !672
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3583
  %132 = load i8*, i8** %131, align 8, !dbg !3583, !tbaa !672
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3583
  %134 = load i8*, i8** %133, align 8, !dbg !3583, !tbaa !672
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3583
  %136 = load i8*, i8** %135, align 8, !dbg !3583, !tbaa !672
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3583
  %138 = load i8*, i8** %137, align 8, !dbg !3583, !tbaa !672
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3583
  %140 = load i8*, i8** %139, align 8, !dbg !3583, !tbaa !672
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3583
  %142 = load i8*, i8** %141, align 8, !dbg !3583, !tbaa !672
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3583
  %144 = load i8*, i8** %143, align 8, !dbg !3583, !tbaa !672
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3584
  br label %146, !dbg !3585

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3586
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3587 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3591, metadata !664), !dbg !3597
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3592, metadata !664), !dbg !3598
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3593, metadata !664), !dbg !3599
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3594, metadata !664), !dbg !3600
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3595, metadata !664), !dbg !3601
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3596, metadata !664), !dbg !3602
  br label %6, !dbg !3603

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3596, metadata !664), !dbg !3602
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3605
  %9 = load i8*, i8** %8, align 8, !dbg !3605, !tbaa !672
  %10 = icmp eq i8* %9, null, !dbg !3608
  %11 = add i64 %7, 1, !dbg !3610
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3596, metadata !664), !dbg !3602
  br i1 %10, label %12, label %6, !dbg !3608, !llvm.loop !3612

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3615
  ret void, !dbg !3616
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3617 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3628, metadata !664), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3629, metadata !664), !dbg !3637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3630, metadata !664), !dbg !3638
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3631, metadata !664), !dbg !3639
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3632, metadata !664), !dbg !3640
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3641
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !3641
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3634, metadata !664), !dbg !3642
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3633, metadata !664), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3633, metadata !664), !dbg !3643
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3644
  %12 = icmp ult i32 %11, 41, !dbg !3644
  br i1 %12, label %13, label %18, !dbg !3644

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3648
  %15 = sext i32 %11 to i64, !dbg !3648
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3648
  %17 = add i32 %11, 8, !dbg !3648
  store i32 %17, i32* %8, align 8, !dbg !3648
  br label %21, !dbg !3648

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3650
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3650
  store i8* %20, i8** %10, align 8, !dbg !3650
  br label %21, !dbg !3650

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3644
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3652
  %25 = load i8*, i8** %24, align 8, !dbg !3652
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3654
  store i8* %25, i8** %26, align 16, !dbg !3655, !tbaa !672
  %27 = icmp eq i8* %25, null, !dbg !3656
  br i1 %27, label %30, label %28, !dbg !3657

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  %29 = icmp ult i32 %22, 41, !dbg !3644
  br i1 %29, label %35, label %32, !dbg !3644

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3659
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !3660
  ret void, !dbg !3660

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3650
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3650
  store i8* %34, i8** %10, align 8, !dbg !3650
  br label %40, !dbg !3650

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3648
  %37 = sext i32 %22 to i64, !dbg !3648
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3648
  %39 = add i32 %22, 8, !dbg !3648
  store i32 %39, i32* %8, align 8, !dbg !3648
  br label %40, !dbg !3648

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3644
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3652
  %44 = load i8*, i8** %43, align 8, !dbg !3652
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3654
  store i8* %44, i8** %45, align 8, !dbg !3655, !tbaa !672
  %46 = icmp eq i8* %44, null, !dbg !3656
  br i1 %46, label %30, label %47, !dbg !3657

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  %48 = icmp ult i32 %41, 41, !dbg !3644
  br i1 %48, label %52, label %49, !dbg !3644

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3650
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3650
  store i8* %51, i8** %10, align 8, !dbg !3650
  br label %57, !dbg !3650

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3648
  %54 = sext i32 %41 to i64, !dbg !3648
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3648
  %56 = add i32 %41, 8, !dbg !3648
  store i32 %56, i32* %8, align 8, !dbg !3648
  br label %57, !dbg !3648

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3644
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3652
  %61 = load i8*, i8** %60, align 8, !dbg !3652
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3654
  store i8* %61, i8** %62, align 16, !dbg !3655, !tbaa !672
  %63 = icmp eq i8* %61, null, !dbg !3656
  br i1 %63, label %30, label %64, !dbg !3657

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  %65 = icmp ult i32 %58, 41, !dbg !3644
  br i1 %65, label %69, label %66, !dbg !3644

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3650
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3650
  store i8* %68, i8** %10, align 8, !dbg !3650
  br label %74, !dbg !3650

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3648
  %71 = sext i32 %58 to i64, !dbg !3648
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3648
  %73 = add i32 %58, 8, !dbg !3648
  store i32 %73, i32* %8, align 8, !dbg !3648
  br label %74, !dbg !3648

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3644
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3652
  %78 = load i8*, i8** %77, align 8, !dbg !3652
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3654
  store i8* %78, i8** %79, align 8, !dbg !3655, !tbaa !672
  %80 = icmp eq i8* %78, null, !dbg !3656
  br i1 %80, label %30, label %81, !dbg !3657

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  %82 = icmp ult i32 %75, 41, !dbg !3644
  br i1 %82, label %86, label %83, !dbg !3644

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3650
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3650
  store i8* %85, i8** %10, align 8, !dbg !3650
  br label %91, !dbg !3650

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3648
  %88 = sext i32 %75 to i64, !dbg !3648
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3648
  %90 = add i32 %75, 8, !dbg !3648
  store i32 %90, i32* %8, align 8, !dbg !3648
  br label %91, !dbg !3648

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3644
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3652
  %95 = load i8*, i8** %94, align 8, !dbg !3652
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3654
  store i8* %95, i8** %96, align 16, !dbg !3655, !tbaa !672
  %97 = icmp eq i8* %95, null, !dbg !3656
  br i1 %97, label %30, label %98, !dbg !3657

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  %99 = icmp ult i32 %92, 41, !dbg !3644
  br i1 %99, label %103, label %100, !dbg !3644

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3650
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3650
  store i8* %102, i8** %10, align 8, !dbg !3650
  br label %108, !dbg !3650

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3648
  %105 = sext i32 %92 to i64, !dbg !3648
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3648
  %107 = add i32 %92, 8, !dbg !3648
  store i32 %107, i32* %8, align 8, !dbg !3648
  br label %108, !dbg !3648

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3652
  %111 = load i8*, i8** %110, align 8, !dbg !3652
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3654
  store i8* %111, i8** %112, align 8, !dbg !3655, !tbaa !672
  %113 = icmp eq i8* %111, null, !dbg !3656
  br i1 %113, label %30, label %114, !dbg !3657

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  %115 = load i8*, i8** %10, align 8, !dbg !3650
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3650
  store i8* %116, i8** %10, align 8, !dbg !3650
  %117 = bitcast i8* %115 to i8**, !dbg !3652
  %118 = load i8*, i8** %117, align 8, !dbg !3652
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3654
  store i8* %118, i8** %119, align 16, !dbg !3655, !tbaa !672
  %120 = icmp eq i8* %118, null, !dbg !3656
  br i1 %120, label %30, label %121, !dbg !3657

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  %122 = load i8*, i8** %10, align 8, !dbg !3650
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3650
  store i8* %123, i8** %10, align 8, !dbg !3650
  %124 = bitcast i8* %122 to i8**, !dbg !3652
  %125 = load i8*, i8** %124, align 8, !dbg !3652
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3654
  store i8* %125, i8** %126, align 8, !dbg !3655, !tbaa !672
  %127 = icmp eq i8* %125, null, !dbg !3656
  br i1 %127, label %30, label %128, !dbg !3657

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  %129 = load i8*, i8** %10, align 8, !dbg !3650
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3650
  store i8* %130, i8** %10, align 8, !dbg !3650
  %131 = bitcast i8* %129 to i8**, !dbg !3652
  %132 = load i8*, i8** %131, align 8, !dbg !3652
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3654
  store i8* %132, i8** %133, align 16, !dbg !3655, !tbaa !672
  %134 = icmp eq i8* %132, null, !dbg !3656
  br i1 %134, label %30, label %135, !dbg !3657

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  %136 = load i8*, i8** %10, align 8, !dbg !3650
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3650
  store i8* %137, i8** %10, align 8, !dbg !3650
  %138 = bitcast i8* %136 to i8**, !dbg !3652
  %139 = load i8*, i8** %138, align 8, !dbg !3652
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3654
  store i8* %139, i8** %140, align 8, !dbg !3655, !tbaa !672
  %141 = icmp eq i8* %139, null, !dbg !3656
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3633, metadata !664), !dbg !3643
  %142 = select i1 %141, i64 9, i64 10, !dbg !3657
  br label %30, !dbg !3657
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3661 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3665, metadata !664), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3666, metadata !664), !dbg !3676
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3667, metadata !664), !dbg !3677
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3668, metadata !664), !dbg !3678
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3679
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !3679
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3669, metadata !664), !dbg !3680
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3681
  call void @llvm.va_start(i8* nonnull %6), !dbg !3681
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3682
  call void @llvm.va_end(i8* nonnull %6), !dbg !3683
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !3684
  ret void, !dbg !3684
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3685 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.102, i64 0, i64 0), i32 5) #11, !dbg !3686
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.103, i64 0, i64 0)) #11, !dbg !3687
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !3689
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.104, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.105, i64 0, i64 0)) #11, !dbg !3690
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.106, i64 0, i64 0), i32 5) #11, !dbg !3691
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3691, !tbaa !672
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3692
  ret void, !dbg !3693
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3694 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3698, metadata !664), !dbg !3700
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3699, metadata !664), !dbg !3701
  %3 = udiv i64 9223372036854775807, %1, !dbg !3702
  %4 = icmp ult i64 %3, %0, !dbg !3702
  br i1 %4, label %5, label %6, !dbg !3704

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3705
  unreachable, !dbg !3705

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3706
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3707, metadata !664) #11, !dbg !3712
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3714
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3711, metadata !664) #11, !dbg !3715
  %9 = icmp eq i8* %8, null, !dbg !3716
  %10 = icmp ne i64 %7, 0, !dbg !3718
  %11 = and i1 %10, %9, !dbg !3720
  br i1 %11, label %12, label %13, !dbg !3720

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3721
  unreachable, !dbg !3721

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3722
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3708 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3707, metadata !664), !dbg !3723
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3724
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3711, metadata !664), !dbg !3725
  %3 = icmp eq i8* %2, null, !dbg !3726
  %4 = icmp ne i64 %0, 0, !dbg !3727
  %5 = and i1 %4, %3, !dbg !3728
  br i1 %5, label %6, label %7, !dbg !3728

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3729
  unreachable, !dbg !3729

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3730
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3731 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3735, metadata !664), !dbg !3738
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3736, metadata !664), !dbg !3739
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3737, metadata !664), !dbg !3740
  %4 = udiv i64 9223372036854775807, %2, !dbg !3741
  %5 = icmp ult i64 %4, %1, !dbg !3741
  br i1 %5, label %6, label %7, !dbg !3743

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3744
  unreachable, !dbg !3744

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3745
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3746, metadata !664) #11, !dbg !3750
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3749, metadata !664) #11, !dbg !3752
  %9 = icmp eq i64 %8, 0, !dbg !3753
  %10 = icmp ne i8* %0, null, !dbg !3755
  %11 = and i1 %10, %9, !dbg !3757
  br i1 %11, label %12, label %13, !dbg !3757

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3758
  br label %19, !dbg !3760

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3761
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3746, metadata !664) #11, !dbg !3750
  %15 = icmp eq i8* %14, null, !dbg !3762
  %16 = icmp ne i64 %8, 0, !dbg !3764
  %17 = and i1 %16, %15, !dbg !3766
  br i1 %17, label %18, label %19, !dbg !3766

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3767
  unreachable, !dbg !3767

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3768
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3747 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3746, metadata !664), !dbg !3769
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3749, metadata !664), !dbg !3770
  %3 = icmp eq i64 %1, 0, !dbg !3771
  %4 = icmp ne i8* %0, null, !dbg !3772
  %5 = and i1 %4, %3, !dbg !3773
  br i1 %5, label %6, label %7, !dbg !3773

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3774
  br label %13, !dbg !3775

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3776
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3746, metadata !664), !dbg !3769
  %9 = icmp eq i8* %8, null, !dbg !3777
  %10 = icmp ne i64 %1, 0, !dbg !3778
  %11 = and i1 %10, %9, !dbg !3779
  br i1 %11, label %12, label %13, !dbg !3779

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3780
  unreachable, !dbg !3780

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3781
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !613 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !618, metadata !664), !dbg !3782
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !619, metadata !664), !dbg !3783
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !620, metadata !664), !dbg !3784
  %4 = load i64, i64* %1, align 8, !dbg !3785, !tbaa !913
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !621, metadata !664), !dbg !3786
  %5 = icmp eq i8* %0, null, !dbg !3787
  br i1 %5, label %6, label %13, !dbg !3789

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3790
  br i1 %7, label %8, label %17, !dbg !3793

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3794
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !621, metadata !664), !dbg !3786
  %10 = icmp ugt i64 %2, 128, !dbg !3796
  %11 = zext i1 %10 to i64, !dbg !3796
  %12 = add nuw nsw i64 %9, %11, !dbg !3797
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !621, metadata !664), !dbg !3786
  br label %17, !dbg !3798

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3799
  %15 = icmp ugt i64 %14, %4, !dbg !3802
  br i1 %15, label %20, label %16, !dbg !3803

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3804
  unreachable, !dbg !3804

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !621, metadata !664), !dbg !3786
  store i64 %18, i64* %1, align 8, !dbg !3805, !tbaa !913
  %19 = mul i64 %18, %2, !dbg !3806
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3746, metadata !664) #11, !dbg !3807
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3749, metadata !664) #11, !dbg !3809
  br label %27, !dbg !3810

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3811
  %22 = add i64 %4, 1, !dbg !3812
  %23 = add i64 %22, %21, !dbg !3813
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !621, metadata !664), !dbg !3786
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !621, metadata !664), !dbg !3786
  store i64 %23, i64* %1, align 8, !dbg !3805, !tbaa !913
  %24 = mul i64 %23, %2, !dbg !3806
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3746, metadata !664) #11, !dbg !3807
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3749, metadata !664) #11, !dbg !3809
  %25 = icmp eq i64 %24, 0, !dbg !3814
  br i1 %25, label %26, label %27, !dbg !3810

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3815
  br label %34, !dbg !3816

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3817
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3746, metadata !664) #11, !dbg !3807
  %30 = icmp eq i8* %29, null, !dbg !3818
  %31 = icmp ne i64 %28, 0, !dbg !3819
  %32 = and i1 %31, %30, !dbg !3820
  br i1 %32, label %33, label %34, !dbg !3820

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3821
  unreachable, !dbg !3821

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3822
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3823 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3825, metadata !664), !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3707, metadata !664) #11, !dbg !3827
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3829
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3711, metadata !664) #11, !dbg !3830
  %3 = icmp eq i8* %2, null, !dbg !3831
  %4 = icmp ne i64 %0, 0, !dbg !3832
  %5 = and i1 %4, %3, !dbg !3833
  br i1 %5, label %6, label %7, !dbg !3833

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3834
  unreachable, !dbg !3834

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3835
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3836 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3840, metadata !664), !dbg !3842
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3841, metadata !664), !dbg !3843
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !618, metadata !664) #11, !dbg !3844
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !619, metadata !664) #11, !dbg !3846
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !620, metadata !664) #11, !dbg !3847
  %3 = load i64, i64* %1, align 8, !dbg !3848, !tbaa !913
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !621, metadata !664) #11, !dbg !3849
  %4 = icmp eq i8* %0, null, !dbg !3850
  br i1 %4, label %5, label %8, !dbg !3851

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3852
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !621, metadata !664) #11, !dbg !3849
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !621, metadata !664) #11, !dbg !3849
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3853
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !621, metadata !664) #11, !dbg !3849
  store i64 %7, i64* %1, align 8, !dbg !3854, !tbaa !913
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3746, metadata !664) #11, !dbg !3855
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3749, metadata !664) #11, !dbg !3857
  br label %17, !dbg !3858

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3859
  br i1 %9, label %11, label %10, !dbg !3860

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3861
  unreachable, !dbg !3861

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3862
  %13 = add i64 %3, 1, !dbg !3863
  %14 = add i64 %13, %12, !dbg !3864
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !621, metadata !664) #11, !dbg !3849
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !621, metadata !664) #11, !dbg !3849
  store i64 %14, i64* %1, align 8, !dbg !3854, !tbaa !913
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3746, metadata !664) #11, !dbg !3855
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3749, metadata !664) #11, !dbg !3857
  %15 = icmp eq i64 %14, 0, !dbg !3865
  br i1 %15, label %16, label %17, !dbg !3858

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3866
  br label %24, !dbg !3867

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3868
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3746, metadata !664) #11, !dbg !3855
  %20 = icmp eq i8* %19, null, !dbg !3869
  %21 = icmp ne i64 %18, 0, !dbg !3870
  %22 = and i1 %21, %20, !dbg !3871
  br i1 %22, label %23, label %24, !dbg !3871

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3872
  unreachable, !dbg !3872

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3873
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3874 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3876, metadata !664), !dbg !3877
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3707, metadata !664) #11, !dbg !3878
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3880
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3711, metadata !664) #11, !dbg !3881
  %3 = icmp eq i8* %2, null, !dbg !3882
  %4 = icmp ne i64 %0, 0, !dbg !3883
  %5 = and i1 %4, %3, !dbg !3884
  br i1 %5, label %6, label %7, !dbg !3884

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3885
  unreachable, !dbg !3885

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3886
  ret i8* %2, !dbg !3887
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3888 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3890, metadata !664), !dbg !3893
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3891, metadata !664), !dbg !3894
  %3 = udiv i64 9223372036854775807, %1, !dbg !3895
  %4 = icmp ult i64 %3, %0, !dbg !3895
  br i1 %4, label %8, label %5, !dbg !3897

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3898
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3892, metadata !664), !dbg !3900
  %7 = icmp eq i8* %6, null, !dbg !3901
  br i1 %7, label %8, label %9, !dbg !3902

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3904
  unreachable, !dbg !3904

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3905
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3906 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3910, metadata !664), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3911, metadata !664), !dbg !3913
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3707, metadata !664) #11, !dbg !3914
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3916
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3711, metadata !664) #11, !dbg !3917
  %4 = icmp eq i8* %3, null, !dbg !3918
  %5 = icmp ne i64 %1, 0, !dbg !3919
  %6 = and i1 %5, %4, !dbg !3920
  br i1 %6, label %7, label %8, !dbg !3920

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3921
  unreachable, !dbg !3921

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3922
  ret i8* %3, !dbg !3923
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3924 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3926, metadata !664), !dbg !3927
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3928
  %3 = add i64 %2, 1, !dbg !3929
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3910, metadata !664) #11, !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3911, metadata !664) #11, !dbg !3933
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3707, metadata !664) #11, !dbg !3934
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3936
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3711, metadata !664) #11, !dbg !3937
  %5 = icmp eq i8* %4, null, !dbg !3938
  %6 = icmp ne i64 %3, 0, !dbg !3939
  %7 = and i1 %6, %5, !dbg !3940
  br i1 %7, label %8, label %9, !dbg !3940

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3941
  unreachable, !dbg !3941

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3942
  ret i8* %4, !dbg !3943
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3944 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3946, !tbaa !814
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.119, i64 0, i64 0), i32 5) #11, !dbg !3947
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* %2) #11, !dbg !3948
  tail call void @abort() #14, !dbg !3950
  unreachable, !dbg !3950
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xreadlink(i8*) local_unnamed_addr #6 !dbg !3951 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3954, metadata !664), !dbg !3956
  %2 = tail call i8* @areadlink(i8* %0) #11, !dbg !3957
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3955, metadata !664), !dbg !3958
  %3 = icmp eq i8* %2, null, !dbg !3959
  br i1 %3, label %4, label %9, !dbg !3961

; <label>:4:                                      ; preds = %1
  %5 = tail call i32* @__errno_location() #1, !dbg !3962
  %6 = load i32, i32* %5, align 4, !dbg !3962, !tbaa !814
  %7 = icmp eq i32 %6, 12, !dbg !3964
  br i1 %7, label %8, label %9, !dbg !3965

; <label>:8:                                      ; preds = %4
  tail call void @xalloc_die() #14, !dbg !3967
  unreachable, !dbg !3967

; <label>:9:                                      ; preds = %4, %1
  ret i8* %2, !dbg !3968
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3969 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3976, metadata !664), !dbg !3994
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3977, metadata !664), !dbg !3995
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3978, metadata !664), !dbg !3996
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3979, metadata !664), !dbg !3997
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3980, metadata !664), !dbg !3998
  %7 = bitcast i8** %6 to i8*, !dbg !3999
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11, !dbg !3999
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3984, metadata !664), !dbg !4000
  %8 = icmp ult i32 %2, 37, !dbg !4001
  br i1 %8, label %10, label %9, !dbg !4001

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.125, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.126, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14, !dbg !4004
  unreachable, !dbg !4004

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !4006
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3982, metadata !664), !dbg !4007
  %12 = tail call i32* @__errno_location() #1, !dbg !4008
  store i32 0, i32* %12, align 4, !dbg !4009, !tbaa !814
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3985, metadata !664), !dbg !4010
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !4011
  %14 = load i16*, i16** %13, align 8, !tbaa !672
  br label %15, !dbg !4013

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !841
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3988, metadata !664), !dbg !4014
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3985, metadata !664), !dbg !4010
  %18 = zext i8 %17 to i64, !dbg !4011
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4011
  %20 = load i16, i16* %19, align 2, !dbg !4011, !tbaa !2089
  %21 = and i16 %20, 8192, !dbg !4011
  %22 = icmp eq i16 %21, 0, !dbg !4015
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4016
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3985, metadata !664), !dbg !4010
  br i1 %22, label %24, label %15, !dbg !4015, !llvm.loop !4017

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !4006
  %26 = icmp eq i8 %17, 45, !dbg !4019
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4021, metadata !664) #11, !dbg !4031
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4029, metadata !664) #11, !dbg !4031
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4030, metadata !664) #11, !dbg !4031
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #11, !dbg !4033
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3983, metadata !664), !dbg !4034
  %29 = load i8*, i8** %25, align 8, !dbg !4035, !tbaa !672
  %30 = icmp eq i8* %29, %0, !dbg !4037
  br i1 %30, label %31, label %40, !dbg !4038

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4039
  br i1 %32, label %265, label %33, !dbg !4042

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4043, !tbaa !841
  %35 = icmp eq i8 %34, 0, !dbg !4043
  br i1 %35, label %265, label %36, !dbg !4045

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4043
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #11, !dbg !4046
  %39 = icmp eq i8* %38, null, !dbg !4046
  br i1 %39, label %265, label %47, !dbg !4048

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4050, !tbaa !814
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4052

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3984, metadata !664), !dbg !4000
  br label %43, !dbg !4053

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !3984, metadata !664), !dbg !4000
  %45 = icmp eq i8* %4, null, !dbg !4055
  br i1 %45, label %46, label %47, !dbg !4057

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3983, metadata !664), !dbg !4034
  store i64 %28, i64* %3, align 8, !dbg !4058, !tbaa !913
  br label %265, !dbg !4060

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4061, !tbaa !841
  %51 = icmp eq i8 %50, 0, !dbg !4062
  br i1 %51, label %262, label %52, !dbg !4063

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !4061
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3989, metadata !664), !dbg !4064
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3992, metadata !664), !dbg !4065
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #11, !dbg !4066
  %55 = icmp eq i8* %54, null, !dbg !4066
  br i1 %55, label %56, label %58, !dbg !4069

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3983, metadata !664), !dbg !4034
  store i64 %49, i64* %3, align 8, !dbg !4071, !tbaa !913
  %57 = or i32 %48, 2, !dbg !4073
  br label %265, !dbg !4074

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
  ], !dbg !4075

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #11, !dbg !4076
  %61 = icmp eq i8* %60, null, !dbg !4076
  br i1 %61, label %72, label %62, !dbg !4080

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4082
  %64 = load i8, i8* %63, align 1, !dbg !4082, !tbaa !841
  %65 = sext i8 %64 to i32, !dbg !4082
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4083

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4084
  %68 = load i8, i8* %67, align 1, !dbg !4084, !tbaa !841
  %69 = icmp eq i8 %68, 66, !dbg !4087
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3992, metadata !664), !dbg !4065
  %70 = select i1 %69, i64 3, i64 1, !dbg !4088
  br label %72, !dbg !4088

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3989, metadata !664), !dbg !4064
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3992, metadata !664), !dbg !4065
  br label %72, !dbg !4089

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
  ], !dbg !4090

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4091, metadata !664), !dbg !4097
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4100
  %77 = shl i64 %49, 9, !dbg !4102
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4103
  %79 = zext i1 %76 to i32, !dbg !4103
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !3993, metadata !664), !dbg !4104
  br label %253, !dbg !4105

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4091, metadata !664), !dbg !4106
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4108
  %82 = shl i64 %49, 10, !dbg !4109
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4110
  %84 = zext i1 %81 to i32, !dbg !4110
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !3993, metadata !664), !dbg !4104
  br label %253, !dbg !4111

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4120
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4122
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4122
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4120
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !4123
  %88 = mul i64 %49, %73, !dbg !4125
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4126
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  %90 = icmp ult i64 %86, %89, !dbg !4123
  %91 = mul i64 %89, %73, !dbg !4125
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4126
  %93 = or i1 %90, %87, !dbg !4127
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  %94 = icmp ult i64 %86, %92, !dbg !4123
  %95 = mul i64 %92, %73, !dbg !4125
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4126
  %97 = or i1 %94, %93, !dbg !4127
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  %98 = icmp ult i64 %86, %96, !dbg !4123
  %99 = mul i64 %96, %73, !dbg !4125
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4126
  %101 = or i1 %98, %97, !dbg !4127
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  %102 = icmp ult i64 %86, %100, !dbg !4123
  %103 = mul i64 %100, %73, !dbg !4125
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4126
  %105 = or i1 %102, %101, !dbg !4127
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  %106 = icmp ult i64 %86, %104, !dbg !4123
  %107 = mul i64 %104, %73, !dbg !4125
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4126
  %109 = or i1 %106, %105, !dbg !4127
  %110 = zext i1 %109 to i32, !dbg !4127
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4120
  br label %253, !dbg !4104

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4112, metadata !664), !dbg !4128
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4130
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4130
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4112, metadata !664), !dbg !4128
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !4131
  %114 = mul i64 %49, %73, !dbg !4133
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4134
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4112, metadata !664), !dbg !4128
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4112, metadata !664), !dbg !4128
  %116 = icmp ult i64 %112, %115, !dbg !4131
  %117 = mul i64 %115, %73, !dbg !4133
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4134
  %119 = or i1 %116, %113, !dbg !4135
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4112, metadata !664), !dbg !4128
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4112, metadata !664), !dbg !4128
  %120 = icmp ult i64 %112, %118, !dbg !4131
  %121 = mul i64 %118, %73, !dbg !4133
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4134
  %123 = or i1 %120, %119, !dbg !4135
  %124 = zext i1 %123 to i32, !dbg !4135
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4112, metadata !664), !dbg !4128
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4112, metadata !664), !dbg !4128
  br label %253, !dbg !4104

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4112, metadata !664), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4138
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4138
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4112, metadata !664), !dbg !4136
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !4139
  %128 = mul i64 %49, %73, !dbg !4141
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4142
  %130 = zext i1 %127 to i32, !dbg !4142
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4119, metadata !664), !dbg !4138
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4119, metadata !664), !dbg !4138
  br label %253, !dbg !4104

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4112, metadata !664), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4145
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4112, metadata !664), !dbg !4143
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !4146
  %134 = mul i64 %49, %73, !dbg !4148
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4149
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4112, metadata !664), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4112, metadata !664), !dbg !4143
  %136 = icmp ult i64 %132, %135, !dbg !4146
  %137 = mul i64 %135, %73, !dbg !4148
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4149
  %139 = or i1 %136, %133, !dbg !4150
  %140 = zext i1 %139 to i32, !dbg !4150
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4112, metadata !664), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4112, metadata !664), !dbg !4143
  br label %253, !dbg !4104

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4151
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4153
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4153
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4112, metadata !664), !dbg !4151
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !4154
  %144 = mul i64 %49, %73, !dbg !4156
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4157
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4151
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4151
  %146 = icmp ult i64 %142, %145, !dbg !4154
  %147 = mul i64 %145, %73, !dbg !4156
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4157
  %149 = or i1 %146, %143, !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4151
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4151
  %150 = icmp ult i64 %142, %148, !dbg !4154
  %151 = mul i64 %148, %73, !dbg !4156
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4157
  %153 = or i1 %150, %149, !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4151
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4151
  %154 = icmp ult i64 %142, %152, !dbg !4154
  %155 = mul i64 %152, %73, !dbg !4156
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4157
  %157 = or i1 %154, %153, !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4151
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4151
  %158 = icmp ult i64 %142, %156, !dbg !4154
  %159 = mul i64 %156, %73, !dbg !4156
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4157
  %161 = or i1 %158, %157, !dbg !4158
  %162 = zext i1 %161 to i32, !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4151
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4151
  br label %253, !dbg !4104

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4159
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4161
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4161
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4112, metadata !664), !dbg !4159
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !4162
  %166 = mul i64 %49, %73, !dbg !4164
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4165
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4112, metadata !664), !dbg !4159
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4112, metadata !664), !dbg !4159
  %168 = icmp ult i64 %164, %167, !dbg !4162
  %169 = mul i64 %167, %73, !dbg !4164
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4165
  %171 = or i1 %168, %165, !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4112, metadata !664), !dbg !4159
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4112, metadata !664), !dbg !4159
  %172 = icmp ult i64 %164, %170, !dbg !4162
  %173 = mul i64 %170, %73, !dbg !4164
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4165
  %175 = or i1 %172, %171, !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4112, metadata !664), !dbg !4159
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4112, metadata !664), !dbg !4159
  %176 = icmp ult i64 %164, %174, !dbg !4162
  %177 = mul i64 %174, %73, !dbg !4164
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4165
  %179 = or i1 %176, %175, !dbg !4166
  %180 = zext i1 %179 to i32, !dbg !4166
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4112, metadata !664), !dbg !4159
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4112, metadata !664), !dbg !4159
  br label %253, !dbg !4104

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4091, metadata !664), !dbg !4167
  %182 = icmp slt i64 %49, 0, !dbg !4169
  %183 = shl i64 %49, 1, !dbg !4170
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4171
  %185 = lshr i64 %49, 63, !dbg !4171
  %186 = trunc i64 %185 to i32, !dbg !4171
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3993, metadata !664), !dbg !4104
  br label %253, !dbg !4172

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4112, metadata !664), !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4175
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4112, metadata !664), !dbg !4173
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !4176
  %190 = mul i64 %49, %73, !dbg !4178
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4179
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  %192 = icmp ult i64 %188, %191, !dbg !4176
  %193 = mul i64 %191, %73, !dbg !4178
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4179
  %195 = or i1 %192, %189, !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  %196 = icmp ult i64 %188, %194, !dbg !4176
  %197 = mul i64 %194, %73, !dbg !4178
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4179
  %199 = or i1 %196, %195, !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  %200 = icmp ult i64 %188, %198, !dbg !4176
  %201 = mul i64 %198, %73, !dbg !4178
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4179
  %203 = or i1 %200, %199, !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  %204 = icmp ult i64 %188, %202, !dbg !4176
  %205 = mul i64 %202, %73, !dbg !4178
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4179
  %207 = or i1 %204, %203, !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  %208 = icmp ult i64 %188, %206, !dbg !4176
  %209 = mul i64 %206, %73, !dbg !4178
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4179
  %211 = or i1 %208, %207, !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  %212 = icmp ult i64 %188, %210, !dbg !4176
  %213 = mul i64 %210, %73, !dbg !4178
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4179
  %215 = or i1 %212, %211, !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  %216 = icmp ult i64 %188, %214, !dbg !4176
  %217 = mul i64 %214, %73, !dbg !4178
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4179
  %219 = or i1 %216, %215, !dbg !4180
  %220 = zext i1 %219 to i32, !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4173
  br label %253, !dbg !4104

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4183
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4119, metadata !664), !dbg !4183
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4112, metadata !664), !dbg !4181
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !4184
  %224 = mul i64 %49, %73, !dbg !4186
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4187
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  %226 = icmp ult i64 %222, %225, !dbg !4184
  %227 = mul i64 %225, %73, !dbg !4186
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4187
  %229 = or i1 %226, %223, !dbg !4188
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  %230 = icmp ult i64 %222, %228, !dbg !4184
  %231 = mul i64 %228, %73, !dbg !4186
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4187
  %233 = or i1 %230, %229, !dbg !4188
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  %234 = icmp ult i64 %222, %232, !dbg !4184
  %235 = mul i64 %232, %73, !dbg !4186
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4187
  %237 = or i1 %234, %233, !dbg !4188
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  %238 = icmp ult i64 %222, %236, !dbg !4184
  %239 = mul i64 %236, %73, !dbg !4186
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4187
  %241 = or i1 %238, %237, !dbg !4188
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  %242 = icmp ult i64 %222, %240, !dbg !4184
  %243 = mul i64 %240, %73, !dbg !4186
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4187
  %245 = or i1 %242, %241, !dbg !4188
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  %246 = icmp ult i64 %222, %244, !dbg !4184
  %247 = mul i64 %244, %73, !dbg !4186
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4187
  %249 = or i1 %246, %245, !dbg !4188
  %250 = zext i1 %249 to i32, !dbg !4188
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4112, metadata !664), !dbg !4181
  br label %253, !dbg !4104

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3983, metadata !664), !dbg !4034
  store i64 %49, i64* %3, align 8, !dbg !4189, !tbaa !913
  %252 = or i32 %48, 2, !dbg !4190
  br label %265, !dbg !4191

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !3993, metadata !664), !dbg !4104
  %256 = or i32 %255, %48, !dbg !4192
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !3984, metadata !664), !dbg !4000
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4193
  store i8* %257, i8** %25, align 8, !dbg !4193, !tbaa !672
  %258 = load i8, i8* %257, align 1, !dbg !4194, !tbaa !841
  %259 = icmp eq i8 %258, 0, !dbg !4194
  %260 = or i32 %256, 2, !dbg !4196
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !3984, metadata !664), !dbg !4000
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4197
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3984, metadata !664), !dbg !4000
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3984, metadata !664), !dbg !4000
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !3984, metadata !664), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !3983, metadata !664), !dbg !4034
  store i64 %263, i64* %3, align 8, !dbg !4198, !tbaa !913
  br label %265, !dbg !4199

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #11, !dbg !4200
  ret i32 %266, !dbg !4200
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4201 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4204, metadata !664), !dbg !4210
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4205, metadata !664), !dbg !4211
  %3 = icmp eq i64 %0, 0, !dbg !4212
  %4 = icmp eq i64 %1, 0, !dbg !4213
  %5 = or i1 %3, %4, !dbg !4215
  br i1 %5, label %12, label %6, !dbg !4215

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4216
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4207, metadata !664), !dbg !4217
  %8 = udiv i64 %7, %1, !dbg !4218
  %9 = icmp eq i64 %8, %0, !dbg !4220
  br i1 %9, label %12, label %10, !dbg !4221

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4222
  store i32 12, i32* %11, align 4, !dbg !4224, !tbaa !814
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4204, metadata !664), !dbg !4210
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4205, metadata !664), !dbg !4211
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4225
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4206, metadata !664), !dbg !4226
  br label %16, !dbg !4227

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4228
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4229 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4246, metadata !664), !dbg !4255
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4247, metadata !664), !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4248, metadata !664), !dbg !4257
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4249, metadata !664), !dbg !4258
  %6 = bitcast i32* %5 to i8*, !dbg !4259
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !4259
  %7 = icmp eq i32* %0, null, !dbg !4260
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4246, metadata !664), !dbg !4255
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4262
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4246, metadata !664), !dbg !4255
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4263
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4250, metadata !664), !dbg !4264
  %10 = icmp ugt i64 %9, -3, !dbg !4265
  %11 = icmp ne i64 %2, 0, !dbg !4266
  %12 = and i1 %11, %10, !dbg !4268
  br i1 %12, label %13, label %18, !dbg !4268

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4269
  br i1 %14, label %18, label %15, !dbg !4271

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4273, !tbaa !841
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4252, metadata !664), !dbg !4274
  %17 = zext i8 %16 to i32, !dbg !4275
  store i32 %17, i32* %8, align 4, !dbg !4276, !tbaa !814
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !4277
  ret i64 %19, !dbg !4277
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @areadlink(i8*) local_unnamed_addr #6 !dbg !4278 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4281, metadata !664), !dbg !4282
  %2 = tail call i8* @careadlinkat(i32 -100, i8* %0, i8* null, i64 0, %struct.allocator* null, i64 (i32, i8*, i8*, i64)* nonnull @careadlinkatcwd) #11, !dbg !4283
  ret i8* %2, !dbg !4284
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @careadlinkatcwd(i32, i8* nocapture readonly, i8* nocapture, i64) #6 !dbg !4285 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4292, metadata !664), !dbg !4296
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4293, metadata !664), !dbg !4297
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4294, metadata !664), !dbg !4298
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4295, metadata !664), !dbg !4299
  %5 = icmp eq i32 %0, -100, !dbg !4300
  br i1 %5, label %7, label %6, !dbg !4302

; <label>:6:                                      ; preds = %4
  tail call void @abort() #14, !dbg !4303
  unreachable, !dbg !4303

; <label>:7:                                      ; preds = %4
  %8 = tail call i64 @readlink(i8* %1, i8* %2, i64 %3) #11, !dbg !4304
  ret i64 %8, !dbg !4305
}

; Function Attrs: nounwind
declare i64 @readlink(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @careadlinkat(i32, i8*, i8*, i64, %struct.allocator* readonly, i64 (i32, i8*, i8*, i64)* nocapture) local_unnamed_addr #6 !dbg !4306 {
  %7 = alloca [1024 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4320, metadata !664), !dbg !4347
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4321, metadata !664), !dbg !4348
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4322, metadata !664), !dbg !4349
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4323, metadata !664), !dbg !4350
  tail call void @llvm.dbg.value(metadata %struct.allocator* %4, i64 0, metadata !4324, metadata !664), !dbg !4351
  tail call void @llvm.dbg.value(metadata i64 (i32, i8*, i8*, i64)* %5, i64 0, metadata !4325, metadata !664), !dbg !4352
  tail call void @llvm.dbg.value(metadata i64 -9223372036854775808, i64 0, metadata !4328, metadata !664), !dbg !4353
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0, !dbg !4354
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %8) #11, !dbg !4354
  tail call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !4329, metadata !664), !dbg !4355
  %9 = icmp eq %struct.allocator* %4, null, !dbg !4356
  tail call void @llvm.dbg.value(metadata %struct.allocator* @stdlib_allocator, i64 0, metadata !4324, metadata !664), !dbg !4351
  %10 = select i1 %9, %struct.allocator* @stdlib_allocator, %struct.allocator* %4, !dbg !4358
  tail call void @llvm.dbg.value(metadata %struct.allocator* %10, i64 0, metadata !4324, metadata !664), !dbg !4351
  %11 = icmp eq i64 %3, 0, !dbg !4359
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4322, metadata !664), !dbg !4349
  tail call void @llvm.dbg.value(metadata i64 1024, i64 0, metadata !4323, metadata !664), !dbg !4350
  %12 = select i1 %11, i64 1024, i64 %3, !dbg !4361
  %13 = select i1 %11, i8* %8, i8* %2, !dbg !4361
  %14 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 0
  %15 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 2
  br label %16, !dbg !4361, !llvm.loop !4362

; <label>:16:                                     ; preds = %6, %64
  %17 = phi i64 [ %65, %64 ], [ %12, %6 ]
  %18 = phi i8* [ %67, %64 ], [ %13, %6 ]
  call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !4326, metadata !664), !dbg !4365
  call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4327, metadata !664), !dbg !4366
  %19 = call i64 %5(i32 %0, i8* %1, i8* %18, i64 %17) #11, !dbg !4367
  call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4333, metadata !664), !dbg !4368
  %20 = icmp slt i64 %19, 0, !dbg !4369
  br i1 %20, label %21, label %29, !dbg !4370

; <label>:21:                                     ; preds = %16
  %22 = tail call i32* @__errno_location() #1, !dbg !4371
  %23 = load i32, i32* %22, align 4, !dbg !4371, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !4336, metadata !664), !dbg !4372
  %24 = icmp eq i32 %23, 34, !dbg !4373
  br i1 %24, label %29, label %25, !dbg !4375

; <label>:25:                                     ; preds = %21
  %26 = icmp eq i8* %18, %13, !dbg !4376
  br i1 %26, label %78, label %27, !dbg !4379

; <label>:27:                                     ; preds = %25
  %28 = load void (i8*)*, void (i8*)** %15, align 8, !dbg !4380, !tbaa !4382
  call void %28(i8* %18) #11, !dbg !4384
  store i32 %23, i32* %22, align 4, !dbg !4385, !tbaa !814
  br label %78, !dbg !4386

; <label>:29:                                     ; preds = %21, %16
  call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4335, metadata !664), !dbg !4387
  %30 = icmp ult i64 %19, %17, !dbg !4388
  br i1 %30, label %31, label %52, !dbg !4389

; <label>:31:                                     ; preds = %29
  %32 = add i64 %19, 1, !dbg !4390
  call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !4335, metadata !664), !dbg !4387
  %33 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !4391
  store i8 0, i8* %33, align 1, !dbg !4392, !tbaa !841
  %34 = icmp eq i8* %18, %8, !dbg !4393
  br i1 %34, label %35, label %40, !dbg !4394

; <label>:35:                                     ; preds = %31
  %36 = load i8* (i64)*, i8* (i64)** %14, align 8, !dbg !4395, !tbaa !4396
  %37 = call i8* %36(i64 %32) #11, !dbg !4397
  call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !4339, metadata !664), !dbg !4398
  call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !4327, metadata !664), !dbg !4366
  %38 = icmp eq i8* %37, null, !dbg !4399
  br i1 %38, label %70, label %39, !dbg !4401

; <label>:39:                                     ; preds = %35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %37, i8* nonnull %8, i64 %32, i32 1, i1 false), !dbg !4402
  call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !4326, metadata !664), !dbg !4365
  br label %78

; <label>:40:                                     ; preds = %31
  %41 = icmp uge i64 %32, %17, !dbg !4403
  %42 = icmp eq i8* %18, %13, !dbg !4404
  %43 = or i1 %42, %41, !dbg !4406
  br i1 %43, label %78, label %44, !dbg !4406

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 1, !dbg !4407
  %46 = load i8* (i8*, i64)*, i8* (i8*, i64)** %45, align 8, !dbg !4407, !tbaa !4409
  %47 = icmp eq i8* (i8*, i64)* %46, null, !dbg !4410
  br i1 %47, label %78, label %48, !dbg !4411

; <label>:48:                                     ; preds = %44
  %49 = call i8* %46(i8* nonnull %18, i64 %32) #11, !dbg !4413
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !4344, metadata !664), !dbg !4414
  %50 = icmp eq i8* %49, null, !dbg !4415
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !4326, metadata !664), !dbg !4365
  %51 = select i1 %50, i8* %18, i8* %49, !dbg !4417
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !4326, metadata !664), !dbg !4365
  br label %78, !dbg !4418

; <label>:52:                                     ; preds = %29
  %53 = icmp eq i8* %18, %13, !dbg !4419
  br i1 %53, label %56, label %54, !dbg !4421

; <label>:54:                                     ; preds = %52
  %55 = load void (i8*)*, void (i8*)** %15, align 8, !dbg !4422, !tbaa !4382
  call void %55(i8* %18) #11, !dbg !4423
  br label %56, !dbg !4423

; <label>:56:                                     ; preds = %52, %54
  %57 = icmp ult i64 %17, 4611686018427387905, !dbg !4424
  br i1 %57, label %58, label %60, !dbg !4426

; <label>:58:                                     ; preds = %56
  %59 = shl i64 %17, 1, !dbg !4427
  call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !4327, metadata !664), !dbg !4366
  br label %64, !dbg !4428

; <label>:60:                                     ; preds = %56
  %61 = icmp sgt i64 %17, -1, !dbg !4429
  br i1 %61, label %64, label %62, !dbg !4431

; <label>:62:                                     ; preds = %60
  %63 = tail call i32* @__errno_location() #1, !dbg !4432
  store i32 36, i32* %63, align 4, !dbg !4435, !tbaa !814
  br label %78, !dbg !4436

; <label>:64:                                     ; preds = %58, %60
  %65 = phi i64 [ %59, %58 ], [ -9223372036854775808, %60 ]
  call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !4327, metadata !664), !dbg !4366
  %66 = load i8* (i64)*, i8* (i64)** %14, align 8, !dbg !4437, !tbaa !4396
  %67 = call i8* %66(i64 %65) #11, !dbg !4438
  call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !4326, metadata !664), !dbg !4365
  %68 = icmp eq i8* %67, null, !dbg !4439
  br i1 %68, label %69, label %16, !dbg !4439, !llvm.loop !4362

; <label>:69:                                     ; preds = %64
  br label %70, !dbg !4441

; <label>:70:                                     ; preds = %69, %35
  %71 = phi i64 [ %32, %35 ], [ %65, %69 ]
  %72 = getelementptr inbounds %struct.allocator, %struct.allocator* %10, i64 0, i32 3, !dbg !4441
  %73 = load void (i64)*, void (i64)** %72, align 8, !dbg !4441, !tbaa !4443
  %74 = icmp eq void (i64)* %73, null, !dbg !4444
  br i1 %74, label %76, label %75, !dbg !4445

; <label>:75:                                     ; preds = %70
  call void %73(i64 %71) #11, !dbg !4446
  br label %76, !dbg !4446

; <label>:76:                                     ; preds = %70, %75
  %77 = tail call i32* @__errno_location() #1, !dbg !4447
  store i32 12, i32* %77, align 4, !dbg !4448, !tbaa !814
  br label %78, !dbg !4449

; <label>:78:                                     ; preds = %27, %25, %48, %44, %40, %39, %62, %76
  %79 = phi i8* [ null, %76 ], [ %37, %39 ], [ %18, %40 ], [ %18, %44 ], [ %51, %48 ], [ null, %62 ], [ null, %25 ], [ null, %27 ]
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %8) #11, !dbg !4450
  ret i8* %79, !dbg !4450
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4451 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4496, metadata !664), !dbg !4501
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4502
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4503, metadata !664), !dbg !4507
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4509
  %4 = load i32, i32* %3, align 8, !dbg !4509, !tbaa !4510
  %5 = and i32 %4, 32, !dbg !4509
  %6 = icmp eq i32 %5, 0, !dbg !4512
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4513
  %8 = icmp ne i32 %7, 0, !dbg !4514
  br i1 %6, label %9, label %19, !dbg !4515

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4517
  %11 = icmp ne i64 %2, 0, !dbg !4517
  %12 = or i1 %11, %10, !dbg !4517
  %13 = sext i1 %8 to i32, !dbg !4517
  br i1 %12, label %22, label %14, !dbg !4517

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4519
  %16 = load i32, i32* %15, align 4, !dbg !4519, !tbaa !814
  %17 = icmp ne i32 %16, 9, !dbg !4521
  %18 = sext i1 %17 to i32, !dbg !4521
  br label %22, !dbg !4521

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4523

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4525
  store i32 0, i32* %21, align 4, !dbg !4527, !tbaa !814
  br label %22, !dbg !4525

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4528
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4529 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4532, metadata !664), !dbg !4552
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4533, metadata !664), !dbg !4553
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4554
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4534, metadata !664), !dbg !4555
  %3 = icmp eq i8* %2, null, !dbg !4556
  br i1 %3, label %15, label %4, !dbg !4557

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4542, metadata !664), !dbg !4558
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4543, metadata !664), !dbg !4559
  %5 = load i8, i8* %2, align 1, !dbg !4560, !tbaa !841
  %6 = icmp eq i8 %5, 67, !dbg !4562
  br i1 %6, label %7, label %11, !dbg !4565

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4567
  %9 = load i8, i8* %8, align 1, !dbg !4567, !tbaa !841
  %10 = icmp eq i8 %9, 0, !dbg !4570
  br i1 %10, label %14, label %11, !dbg !4572

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4548, metadata !664), !dbg !4574
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i64 0, i64 0)) #11, !dbg !4575
  %13 = icmp eq i32 %12, 0, !dbg !4577
  br i1 %13, label %14, label %15, !dbg !4579

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4533, metadata !664), !dbg !4553
  br label %15, !dbg !4581

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4582
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4583 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4595, metadata !664), !dbg !4669
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4662, metadata !664), !dbg !4671
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4672
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4587, metadata !664), !dbg !4673
  %4 = icmp eq i8* %3, null, !dbg !4674
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), i8* %3, !dbg !4676
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4587, metadata !664), !dbg !4673
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4677, !tbaa !672
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4609, metadata !664) #11, !dbg !4678
  %7 = icmp eq i8* %6, null, !dbg !4679
  br i1 %7, label %8, label %127, !dbg !4680

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.143, i64 0, i64 0)) #11, !dbg !4681
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4610, metadata !664) #11, !dbg !4682
  %10 = icmp eq i8* %9, null, !dbg !4683
  br i1 %10, label %14, label %11, !dbg !4685

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4686, !tbaa !841
  %13 = icmp eq i8 %12, 0, !dbg !4688
  br i1 %13, label %14, label %15, !dbg !4689

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4691

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.144, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4610, metadata !664) #11, !dbg !4682
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4692
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4613, metadata !664) #11, !dbg !4693
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4615, metadata !664) #11, !dbg !4694
  %18 = icmp eq i64 %17, 0, !dbg !4695
  br i1 %18, label %24, label %19, !dbg !4696

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4697
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4697
  %22 = load i8, i8* %21, align 1, !dbg !4697, !tbaa !841
  %23 = icmp ne i8 %22, 47, !dbg !4699
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4700
  %27 = add i64 %17, 14, !dbg !4701
  %28 = add i64 %27, %26, !dbg !4702
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4703
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4612, metadata !664) #11, !dbg !4704
  %30 = icmp eq i8* %29, null, !dbg !4705
  br i1 %30, label %125, label %31, !dbg !4705

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4706
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4709

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4710, !tbaa !841
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4712
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.145, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4713
  br label %37, !dbg !4714

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4712
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.145, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4713
  br label %37, !dbg !4714

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4715
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4617, metadata !664) #11, !dbg !4716
  %39 = icmp slt i32 %38, 0, !dbg !4717
  br i1 %39, label %123, label %40, !dbg !4718

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.146, i64 0, i64 0)) #11, !dbg !4719
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4618, metadata !664) #11, !dbg !4720
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4721
  br i1 %42, label %48, label %43, !dbg !4722

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4723

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !4724
  br label %123, !dbg !4726

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4659, metadata !664) #11, !dbg !4723
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4660, metadata !664) #11, !dbg !4727
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !4728
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !4729
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4730, metadata !664) #11, !dbg !4735
  %53 = load i8*, i8** %46, align 8, !dbg !4737, !tbaa !4738
  %54 = load i8*, i8** %47, align 8, !dbg !4737, !tbaa !4739
  %55 = icmp ult i8* %53, %54, !dbg !4737
  br i1 %55, label %58, label %56, !dbg !4737, !prof !4740

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4741
  br label %62, !dbg !4741

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4743
  store i8* %59, i8** %46, align 8, !dbg !4743, !tbaa !4738
  %60 = load i8, i8* %53, align 1, !dbg !4743, !tbaa !841
  %61 = zext i8 %60 to i32, !dbg !4743
  br label %62, !dbg !4743

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4745
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4661, metadata !664) #11, !dbg !4747
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4748

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4749

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4730, metadata !664) #11, !dbg !4749
  %66 = load i8*, i8** %46, align 8, !dbg !4753, !tbaa !4738
  %67 = load i8*, i8** %47, align 8, !dbg !4753, !tbaa !4739
  %68 = icmp ult i8* %66, %67, !dbg !4753
  br i1 %68, label %71, label %69, !dbg !4753, !prof !4740

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4754
  br label %75, !dbg !4754

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4755
  store i8* %72, i8** %46, align 8, !dbg !4755, !tbaa !4738
  %73 = load i8, i8* %66, align 1, !dbg !4755, !tbaa !841
  %74 = zext i8 %73 to i32, !dbg !4755
  br label %75, !dbg !4755

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4756
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4661, metadata !664) #11, !dbg !4747
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4757, !llvm.loop !4759

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !4762
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.147, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !4763
  %80 = icmp slt i32 %79, 2, !dbg !4765
  br i1 %80, label %115, label %81, !dbg !4766

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4767
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4666, metadata !664) #11, !dbg !4768
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4769
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4667, metadata !664) #11, !dbg !4770
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4668, metadata !664) #11, !dbg !4771
  %84 = icmp eq i64 %51, 0, !dbg !4772
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4774

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4660, metadata !664) #11, !dbg !4727
  %89 = add i64 %86, 2, !dbg !4775
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !4777
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4659, metadata !664) #11, !dbg !4723
  br label %95, !dbg !4778

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4779
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4660, metadata !664) #11, !dbg !4727
  %93 = add i64 %92, 1, !dbg !4781
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !4782
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4659, metadata !664) #11, !dbg !4723
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4659, metadata !664) #11, !dbg !4723
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4660, metadata !664) #11, !dbg !4727
  %98 = icmp eq i8* %97, null, !dbg !4783
  br i1 %98, label %99, label %100, !dbg !4785

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4660, metadata !664) #11, !dbg !4727
  call void @free(i8* %52) #11, !dbg !4786
  br label %116, !dbg !4788

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4789
  %102 = xor i64 %83, -1, !dbg !4790
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4790
  %104 = xor i64 %82, -1, !dbg !4791
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4791
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4792, metadata !664) #11, !dbg !4799
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4798, metadata !664) #11, !dbg !4799
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !4801
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !4802
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4792, metadata !664) #11, !dbg !4803
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4798, metadata !664) #11, !dbg !4803
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !4805
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !4806
  br label %111, !dbg !4807

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4723

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4659, metadata !664) #11, !dbg !4723
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4660, metadata !664) #11, !dbg !4727
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4807
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4807
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4723

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4723

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4659, metadata !664) #11, !dbg !4723
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4660, metadata !664) #11, !dbg !4727
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4807
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4807
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4808
  %120 = icmp eq i64 %117, 0, !dbg !4809
  br i1 %120, label %123, label %121, !dbg !4811

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4812
  store i8 0, i8* %122, align 1, !dbg !4814, !tbaa !841
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4609, metadata !664) #11, !dbg !4678
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4609, metadata !664) #11, !dbg !4678
  call void @free(i8* %29) #11, !dbg !4815
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4609, metadata !664) #11, !dbg !4678
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4816, !tbaa !672
  br label %127, !dbg !4817

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4588, metadata !664), !dbg !4818
  %129 = load i8, i8* %128, align 1, !dbg !4819, !tbaa !841
  %130 = icmp eq i8 %129, 0, !dbg !4820
  br i1 %130, label %157, label %131, !dbg !4821

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4823

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !4823
  %136 = icmp eq i32 %135, 0, !dbg !4824
  br i1 %136, label %143, label %137, !dbg !4825

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4826
  br i1 %138, label %139, label %147, !dbg !4828

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4829
  %141 = load i8, i8* %140, align 1, !dbg !4829, !tbaa !841
  %142 = icmp eq i8 %141, 0, !dbg !4831
  br i1 %142, label %143, label %147, !dbg !4832

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4834
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4836
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4837
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4587, metadata !664), !dbg !4673
  br label %157, !dbg !4838

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4839
  %149 = add i64 %148, 1, !dbg !4840
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4841
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4588, metadata !664), !dbg !4818
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4842
  %152 = add i64 %151, 1, !dbg !4843
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4844
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4588, metadata !664), !dbg !4818
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4588, metadata !664), !dbg !4818
  %154 = load i8, i8* %153, align 1, !dbg !4819, !tbaa !841
  %155 = icmp eq i8 %154, 0, !dbg !4820
  br i1 %155, label %156, label %132, !dbg !4821, !llvm.loop !4845

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4673

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4587, metadata !664), !dbg !4673
  %159 = load i8, i8* %158, align 1, !dbg !4848, !tbaa !841
  %160 = icmp eq i8 %159, 0, !dbg !4850
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0), i8* %158, !dbg !4851
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4587, metadata !664), !dbg !4673
  ret i8* %161, !dbg !4852
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4853 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4898, metadata !664), !dbg !4902
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4899, metadata !664), !dbg !4903
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4901, metadata !664), !dbg !4904
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4905
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4900, metadata !664), !dbg !4906
  %3 = icmp slt i32 %2, 0, !dbg !4907
  br i1 %3, label %4, label %6, !dbg !4909

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4910
  br label %24, !dbg !4911

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4912
  %8 = icmp eq i32 %7, 0, !dbg !4912
  br i1 %8, label %13, label %9, !dbg !4914

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4915
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4917
  %12 = icmp eq i64 %11, -1, !dbg !4919
  br i1 %12, label %16, label %13, !dbg !4920

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4921
  %15 = icmp eq i32 %14, 0, !dbg !4921
  br i1 %15, label %16, label %18, !dbg !4922

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4899, metadata !664), !dbg !4903
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4924
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4901, metadata !664), !dbg !4904
  br label %24, !dbg !4925

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4926
  %20 = load i32, i32* %19, align 4, !dbg !4926, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4899, metadata !664), !dbg !4903
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4899, metadata !664), !dbg !4903
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4924
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4901, metadata !664), !dbg !4904
  %22 = icmp eq i32 %20, 0, !dbg !4927
  br i1 %22, label %24, label %23, !dbg !4925

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4929, !tbaa !814
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4901, metadata !664), !dbg !4904
  br label %24, !dbg !4931

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4932
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4933 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4978, metadata !664), !dbg !4979
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4980
  br i1 %2, label %6, label %3, !dbg !4982

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4983
  %5 = icmp eq i32 %4, 0, !dbg !4983
  br i1 %5, label %6, label %8, !dbg !4985

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4987
  br label %17, !dbg !4988

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4989, metadata !664) #11, !dbg !4994
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4996
  %10 = load i32, i32* %9, align 8, !dbg !4996, !tbaa !4510
  %11 = and i32 %10, 256, !dbg !4998
  %12 = icmp eq i32 %11, 0, !dbg !4998
  br i1 %12, label %15, label %13, !dbg !4999

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !5000
  br label %15, !dbg !5000

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5001
  br label %17, !dbg !5002

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5003
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5004 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5050, metadata !664), !dbg !5056
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5051, metadata !664), !dbg !5057
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5052, metadata !664), !dbg !5058
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5059
  %5 = load i8*, i8** %4, align 8, !dbg !5059, !tbaa !4739
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5060
  %7 = load i8*, i8** %6, align 8, !dbg !5060, !tbaa !4738
  %8 = icmp eq i8* %5, %7, !dbg !5061
  br i1 %8, label %9, label %28, !dbg !5062

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5063
  %11 = load i8*, i8** %10, align 8, !dbg !5063, !tbaa !5065
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5066
  %13 = load i8*, i8** %12, align 8, !dbg !5066, !tbaa !5067
  %14 = icmp eq i8* %11, %13, !dbg !5068
  br i1 %14, label %15, label %28, !dbg !5069

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5070
  %17 = load i8*, i8** %16, align 8, !dbg !5070, !tbaa !5071
  %18 = icmp eq i8* %17, null, !dbg !5072
  br i1 %18, label %19, label %28, !dbg !5073

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5075
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !5076
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5053, metadata !664), !dbg !5078
  %22 = icmp eq i64 %21, -1, !dbg !5079
  br i1 %22, label %30, label %23, !dbg !5081

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5082
  %25 = load i32, i32* %24, align 8, !dbg !5083, !tbaa !4510
  %26 = and i32 %25, -17, !dbg !5083
  store i32 %26, i32* %24, align 8, !dbg !5083, !tbaa !4510
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5084
  store i64 %21, i64* %27, align 8, !dbg !5085, !tbaa !5086
  br label %30, !dbg !5087

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5088
  br label %30, !dbg !5089

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5090
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
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !95, !101, !589, !591, !593, !110, !596, !599, !117, !124, !601, !208, !608, !625, !627, !629, !633, !635, !638, !640, !643, !645, !217, !648, !650, !652, !565}
!llvm.ident = !{!654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654, !654}
!llvm.module.flags = !{!655, !656, !657, !658}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !81, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !38)
!3 = !DIFile(filename: "src/stdbuf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, size: 32, elements: !7)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!9 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!10 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!11 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !13, line: 26, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!16 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!17 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!18 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!19 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!20 = !{!21, !24, !26, !29, !32, !33, !34}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 62, baseType: !23)
!22 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !35, line: 136, baseType: !36)
!35 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !37, line: 62, baseType: !23)
!37 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!38 = !{!39, !41, !52, !0}
!39 = !DIGlobalVariableExpression(var: !40)
!40 = distinct !DIGlobalVariable(name: "program_path", scope: !2, file: !3, line: 40, type: !32, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42)
!42 = distinct !DIGlobalVariable(name: "stdbuf", scope: !2, file: !3, line: 47, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 576, elements: !50)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 42, size: 192, elements: !45)
!45 = !{!46, !47, !49}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !44, file: !3, line: 44, baseType: !21, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "optc", scope: !44, file: !3, line: 45, baseType: !48, size: 32, offset: 64)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "optarg", scope: !44, file: !3, line: 46, baseType: !32, size: 64, offset: 128)
!50 = !{!51}
!51 = !DISubrange(count: 3)
!52 = !DIGlobalVariableExpression(var: !53)
!53 = distinct !DIGlobalVariable(name: "infomap", scope: !54, file: !6, line: 632, type: !78, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !55, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !29}
!57 = !{!58, !59, !60, !67, !69, !70, !71, !74, !75, !77}
!58 = !DILocalVariable(name: "program", arg: 1, scope: !54, file: !6, line: 630, type: !29)
!59 = !DILocalVariable(name: "node", scope: !54, file: !6, line: 642, type: !29)
!60 = !DILocalVariable(name: "map_prog", scope: !54, file: !6, line: 643, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !54, file: !6, line: 632, size: 128, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !63, file: !6, line: 632, baseType: !29, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !63, file: !6, line: 632, baseType: !29, size: 64, offset: 64)
!67 = !DILocalVariable(name: "__s1_len", scope: !68, file: !6, line: 645, type: !21)
!68 = distinct !DILexicalBlock(scope: !54, file: !6, line: 645, column: 33)
!69 = !DILocalVariable(name: "__s2_len", scope: !68, file: !6, line: 645, type: !21)
!70 = !DILocalVariable(name: "lc_messages", scope: !54, file: !6, line: 655, type: !29)
!71 = !DILocalVariable(name: "__s1_len", scope: !72, file: !6, line: 656, type: !21)
!72 = distinct !DILexicalBlock(scope: !73, file: !6, line: 656, column: 22)
!73 = distinct !DILexicalBlock(scope: !54, file: !6, line: 656, column: 7)
!74 = !DILocalVariable(name: "__s2_len", scope: !72, file: !6, line: 656, type: !21)
!75 = !DILocalVariable(name: "__s2", scope: !76, file: !6, line: 656, type: !26)
!76 = distinct !DILexicalBlock(scope: !72, file: !6, line: 656, column: 22)
!77 = !DILocalVariable(name: "__result", scope: !76, file: !6, line: 656, type: !48)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 896, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 7)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 1536, elements: !91)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !84, line: 104, size: 256, elements: !85)
!84 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!85 = !{!86, !87, !88, !90}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !83, file: !84, line: 106, baseType: !29, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !83, file: !84, line: 109, baseType: !48, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !83, file: !84, line: 110, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !84, line: 111, baseType: !48, size: 32, offset: 192)
!91 = !{!92}
!92 = !DISubrange(count: 6)
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "Version", scope: !95, file: !96, line: 2, type: !29, isLocal: false, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, globals: !98)
!96 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!97 = !{}
!98 = !{!93}
!99 = !DIGlobalVariableExpression(var: !100)
!100 = distinct !DIGlobalVariable(name: "file_name", scope: !101, file: !106, line: 36, type: !29, isLocal: true, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, globals: !103)
!102 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !{!99, !104}
!104 = !DIGlobalVariableExpression(var: !105)
!105 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !101, file: !106, line: 46, type: !107, isLocal: true, isDefinition: true)
!106 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!108 = !DIGlobalVariableExpression(var: !109)
!109 = distinct !DIGlobalVariable(name: "exit_failure", scope: !110, file: !113, line: 24, type: !114, isLocal: false, isDefinition: true)
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, globals: !112)
!111 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !{!108}
!113 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!115 = !DIGlobalVariableExpression(var: !116)
!116 = distinct !DIGlobalVariable(name: "program_name", scope: !117, file: !121, line: 33, type: !29, isLocal: false, isDefinition: true)
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !119, globals: !120)
!118 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!119 = !{!33, !32}
!120 = !{!115}
!121 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !124, file: !166, line: 77, type: !202, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !126, retainedTypes: !161, globals: !163)
!125 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!127, !141, !146}
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !128, line: 32, size: 32, elements: !129)
!128 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!130 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!131 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!132 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!133 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!134 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!135 = !DIEnumerator(name: "c_quoting_style", value: 5)
!136 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!137 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!138 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!139 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!140 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !128, line: 242, size: 32, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!144 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!145 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 46, size: 32, elements: !148)
!147 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!149 = !DIEnumerator(name: "_ISupper", value: 256)
!150 = !DIEnumerator(name: "_ISlower", value: 512)
!151 = !DIEnumerator(name: "_ISalpha", value: 1024)
!152 = !DIEnumerator(name: "_ISdigit", value: 2048)
!153 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!154 = !DIEnumerator(name: "_ISspace", value: 8192)
!155 = !DIEnumerator(name: "_ISprint", value: 16384)
!156 = !DIEnumerator(name: "_ISgraph", value: 32768)
!157 = !DIEnumerator(name: "_ISblank", value: 1)
!158 = !DIEnumerator(name: "_IScntrl", value: 2)
!159 = !DIEnumerator(name: "_ISpunct", value: 4)
!160 = !DIEnumerator(name: "_ISalnum", value: 8)
!161 = !{!48, !162, !21, !32}
!162 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!163 = !{!122, !164, !171, !184, !186, !191, !198, !200}
!164 = !DIGlobalVariableExpression(var: !165)
!165 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !124, file: !166, line: 93, type: !167, isLocal: false, isDefinition: true)
!166 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 320, elements: !169)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!169 = !{!170}
!170 = !DISubrange(count: 10)
!171 = !DIGlobalVariableExpression(var: !172)
!172 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !124, file: !166, line: 1043, type: !173, isLocal: false, isDefinition: true)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !166, line: 57, size: 448, elements: !174)
!174 = !{!175, !176, !177, !182, !183}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !173, file: !166, line: 60, baseType: !127, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !166, line: 63, baseType: !48, size: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !173, file: !166, line: 67, baseType: !178, size: 256, offset: 64)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !180)
!179 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!180 = !{!181}
!181 = !DISubrange(count: 8)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !173, file: !166, line: 70, baseType: !29, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !173, file: !166, line: 73, baseType: !29, size: 64, offset: 384)
!184 = !DIGlobalVariableExpression(var: !185)
!185 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !124, file: !166, line: 108, type: !173, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187)
!187 = distinct !DIGlobalVariable(name: "slot0", scope: !124, file: !166, line: 834, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 256)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "slotvec", scope: !124, file: !166, line: 837, type: !193, isLocal: true, isDefinition: true)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !166, line: 826, size: 128, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !194, file: !166, line: 828, baseType: !21, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !194, file: !166, line: 829, baseType: !32, size: 64, offset: 64)
!198 = !DIGlobalVariableExpression(var: !199)
!199 = distinct !DIGlobalVariable(name: "nslots", scope: !124, file: !166, line: 835, type: !48, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201)
!201 = distinct !DIGlobalVariable(name: "slotvec0", scope: !124, file: !166, line: 836, type: !194, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 704, elements: !204)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!204 = !{!205}
!205 = !DISubrange(count: 11)
!206 = !DIGlobalVariableExpression(var: !207)
!207 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !208, file: !211, line: 26, type: !212, isLocal: false, isDefinition: true)
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, globals: !210)
!209 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!210 = !{!206}
!211 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 376, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 47)
!215 = !DIGlobalVariableExpression(var: !216)
!216 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !217, file: !561, line: 120, type: !562, isLocal: true, isDefinition: true)
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !219, retainedTypes: !558, globals: !560)
!218 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!219 = !{!220}
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !221, line: 41, size: 32, elements: !222)
!221 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!223 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!224 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!225 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!226 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!227 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!228 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!229 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!230 = !DIEnumerator(name: "DAY_1", value: 131079)
!231 = !DIEnumerator(name: "DAY_2", value: 131080)
!232 = !DIEnumerator(name: "DAY_3", value: 131081)
!233 = !DIEnumerator(name: "DAY_4", value: 131082)
!234 = !DIEnumerator(name: "DAY_5", value: 131083)
!235 = !DIEnumerator(name: "DAY_6", value: 131084)
!236 = !DIEnumerator(name: "DAY_7", value: 131085)
!237 = !DIEnumerator(name: "ABMON_1", value: 131086)
!238 = !DIEnumerator(name: "ABMON_2", value: 131087)
!239 = !DIEnumerator(name: "ABMON_3", value: 131088)
!240 = !DIEnumerator(name: "ABMON_4", value: 131089)
!241 = !DIEnumerator(name: "ABMON_5", value: 131090)
!242 = !DIEnumerator(name: "ABMON_6", value: 131091)
!243 = !DIEnumerator(name: "ABMON_7", value: 131092)
!244 = !DIEnumerator(name: "ABMON_8", value: 131093)
!245 = !DIEnumerator(name: "ABMON_9", value: 131094)
!246 = !DIEnumerator(name: "ABMON_10", value: 131095)
!247 = !DIEnumerator(name: "ABMON_11", value: 131096)
!248 = !DIEnumerator(name: "ABMON_12", value: 131097)
!249 = !DIEnumerator(name: "MON_1", value: 131098)
!250 = !DIEnumerator(name: "MON_2", value: 131099)
!251 = !DIEnumerator(name: "MON_3", value: 131100)
!252 = !DIEnumerator(name: "MON_4", value: 131101)
!253 = !DIEnumerator(name: "MON_5", value: 131102)
!254 = !DIEnumerator(name: "MON_6", value: 131103)
!255 = !DIEnumerator(name: "MON_7", value: 131104)
!256 = !DIEnumerator(name: "MON_8", value: 131105)
!257 = !DIEnumerator(name: "MON_9", value: 131106)
!258 = !DIEnumerator(name: "MON_10", value: 131107)
!259 = !DIEnumerator(name: "MON_11", value: 131108)
!260 = !DIEnumerator(name: "MON_12", value: 131109)
!261 = !DIEnumerator(name: "AM_STR", value: 131110)
!262 = !DIEnumerator(name: "PM_STR", value: 131111)
!263 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!264 = !DIEnumerator(name: "D_FMT", value: 131113)
!265 = !DIEnumerator(name: "T_FMT", value: 131114)
!266 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!267 = !DIEnumerator(name: "ERA", value: 131116)
!268 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!269 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!270 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!271 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!272 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!273 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!274 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!275 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!276 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!277 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!278 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!279 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!280 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!281 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!282 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!283 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!284 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!285 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!286 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!287 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!288 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!289 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!290 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!291 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!292 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!293 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!294 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!295 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!296 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!297 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!298 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!299 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!300 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!301 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!302 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!303 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!304 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!305 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!306 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!307 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!308 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!309 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!310 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!311 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!312 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!313 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!314 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!315 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!316 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!317 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!318 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!319 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!320 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!321 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!322 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!323 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!324 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!325 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!326 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!327 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!328 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!329 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!330 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!331 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!332 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!333 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!334 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!335 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!336 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!337 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!338 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!339 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!340 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!341 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!342 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!343 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!344 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!345 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!346 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!347 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!348 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!349 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!350 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!351 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!352 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!353 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!354 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!355 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!356 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!357 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!358 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!359 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!360 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!361 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!362 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!363 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!364 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!365 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!366 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!367 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!368 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!369 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!370 = !DIEnumerator(name: "CODESET", value: 14)
!371 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!372 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!373 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!374 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!417 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!418 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!419 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!420 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!421 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!425 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!426 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!427 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!442 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!443 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!444 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!445 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!446 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!447 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!448 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!449 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!450 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!451 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!452 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!453 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!454 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!455 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!456 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!457 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!458 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!459 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!460 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!461 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!462 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!463 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!464 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!481 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!482 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!485 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!486 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!487 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!488 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!489 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!490 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!491 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!492 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!493 = !DIEnumerator(name: "THOUSEP", value: 65537)
!494 = !DIEnumerator(name: "__GROUPING", value: 65538)
!495 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!496 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!497 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!498 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!499 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!500 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!501 = !DIEnumerator(name: "__YESSTR", value: 327682)
!502 = !DIEnumerator(name: "__NOSTR", value: 327683)
!503 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!504 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!505 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!506 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!507 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!508 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!509 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!510 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!511 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!512 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!513 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!514 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!515 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!516 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!517 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!518 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!519 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!520 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!521 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!522 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!523 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!524 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!525 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!526 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!527 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!528 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!529 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!530 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!531 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!532 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!533 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!534 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!535 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!536 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!537 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!538 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!539 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!556 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!557 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!558 = !{!33, !32, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!560 = !{!215}
!561 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!562 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!563 = !DIGlobalVariableExpression(var: !564)
!564 = distinct !DIGlobalVariable(name: "stdlib_allocator", scope: !565, file: !568, line: 5, type: !569, isLocal: false, isDefinition: true)
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, globals: !567)
!566 = !DIFile(filename: "./lib/allocator.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = !{!563}
!568 = !DIFile(filename: "lib/allocator.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator", file: !571, line: 27, size: 256, elements: !572)
!571 = !DIFile(filename: "./lib/allocator.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = !{!573, !577, !581, !585}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !570, file: !571, line: 37, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!33, !21}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reallocate", scope: !570, file: !571, line: 43, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!33, !33, !21}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !570, file: !571, line: 46, baseType: !582, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !33}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !570, file: !571, line: 52, baseType: !586, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !21}
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97)
!590 = !DIFile(filename: "./lib/dirname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97)
!592 = !DIFile(filename: "./lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !595)
!594 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = !{!32}
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !598)
!597 = !DIFile(filename: "./lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = !{!33}
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !598)
!600 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !603, retainedTypes: !598)
!602 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = !{!604}
!604 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !605, line: 41, size: 32, elements: !606)
!605 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!606 = !{!607}
!607 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !610, retainedTypes: !624)
!609 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = !{!611}
!611 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !613, file: !612, line: 192, size: 32, elements: !622)
!612 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!613 = distinct !DISubprogram(name: "x2nrealloc", scope: !612, file: !612, line: 180, type: !614, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !617)
!614 = !DISubroutineType(types: !615)
!615 = !{!33, !33, !616, !21}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!617 = !{!618, !619, !620, !621}
!618 = !DILocalVariable(name: "p", arg: 1, scope: !613, file: !612, line: 180, type: !33)
!619 = !DILocalVariable(name: "pn", arg: 2, scope: !613, file: !612, line: 180, type: !616)
!620 = !DILocalVariable(name: "s", arg: 3, scope: !613, file: !612, line: 180, type: !21)
!621 = !DILocalVariable(name: "n", scope: !613, file: !612, line: 182, type: !21)
!622 = !{!623}
!623 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!624 = !{!21, !32, !33}
!625 = distinct !DICompileUnit(language: DW_LANG_C99, file: !626, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97)
!626 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !598)
!628 = !DIFile(filename: "./lib/xreadlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!629 = distinct !DICompileUnit(language: DW_LANG_C99, file: !630, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !631, retainedTypes: !632)
!630 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!631 = !{!12, !146}
!632 = !{!48, !162, !32}
!633 = distinct !DICompileUnit(language: DW_LANG_C99, file: !634, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !598)
!634 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!635 = distinct !DICompileUnit(language: DW_LANG_C99, file: !636, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !637)
!636 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!637 = !{!21}
!638 = distinct !DICompileUnit(language: DW_LANG_C99, file: !639, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97)
!639 = !DIFile(filename: "./lib/areadlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!640 = distinct !DICompileUnit(language: DW_LANG_C99, file: !641, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !642)
!641 = !DIFile(filename: "./lib/careadlinkat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!642 = !{!21, !32}
!643 = distinct !DICompileUnit(language: DW_LANG_C99, file: !644, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97)
!644 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!645 = distinct !DICompileUnit(language: DW_LANG_C99, file: !646, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !647)
!646 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!647 = !{!21, !24, !26, !29}
!648 = distinct !DICompileUnit(language: DW_LANG_C99, file: !649, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97)
!649 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!650 = distinct !DICompileUnit(language: DW_LANG_C99, file: !651, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !598)
!651 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !598)
!653 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!654 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!655 = !{i32 2, !"Dwarf Version", i32 4}
!656 = !{i32 2, !"Debug Info Version", i32 3}
!657 = !{i32 1, !"PIC Level", i32 2}
!658 = !{i32 1, !"PIE Level", i32 2}
!659 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 85, type: !660, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !48}
!662 = !{!663}
!663 = !DILocalVariable(name: "status", arg: 1, scope: !659, file: !3, line: 85, type: !48)
!664 = !DIExpression()
!665 = !DILocation(line: 85, column: 12, scope: !659)
!666 = !DILocation(line: 87, column: 14, scope: !667)
!667 = distinct !DILexicalBlock(scope: !659, file: !3, line: 87, column: 7)
!668 = !DILocation(line: 87, column: 7, scope: !659)
!669 = !DILocation(line: 88, column: 5, scope: !670)
!670 = !DILexicalBlockFile(scope: !671, file: !3, discriminator: 1)
!671 = distinct !DILexicalBlock(scope: !667, file: !3, line: 88, column: 5)
!672 = !{!673, !673, i64 0}
!673 = !{!"any pointer", !674, i64 0}
!674 = !{!"omnipotent char", !675, i64 0}
!675 = !{!"Simple C/C++ TBAA"}
!676 = !DILocation(line: 88, column: 5, scope: !677)
!677 = !DILexicalBlockFile(scope: !671, file: !3, discriminator: 3)
!678 = !DILocation(line: 88, column: 5, scope: !679)
!679 = !DILexicalBlockFile(scope: !671, file: !3, discriminator: 2)
!680 = !DILocation(line: 91, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !667, file: !3, line: 90, column: 5)
!682 = !DILocation(line: 91, column: 7, scope: !683)
!683 = !DILexicalBlockFile(scope: !681, file: !3, discriminator: 1)
!684 = !DILocation(line: 92, column: 7, scope: !681)
!685 = !DILocation(line: 92, column: 7, scope: !683)
!686 = !DILocation(line: 587, column: 3, scope: !687, inlinedAt: !690)
!687 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !688, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !97)
!688 = !DISubroutineType(types: !689)
!689 = !{null}
!690 = distinct !DILocation(line: 96, column: 7, scope: !681)
!691 = !DILocation(line: 587, column: 3, scope: !692, inlinedAt: !690)
!692 = !DILexicalBlockFile(scope: !687, file: !6, discriminator: 1)
!693 = !DILocation(line: 98, column: 7, scope: !681)
!694 = !DILocation(line: 98, column: 7, scope: !683)
!695 = !DILocation(line: 103, column: 7, scope: !681)
!696 = !DILocation(line: 103, column: 7, scope: !683)
!697 = !DILocation(line: 104, column: 7, scope: !681)
!698 = !DILocation(line: 104, column: 7, scope: !683)
!699 = !DILocation(line: 105, column: 7, scope: !681)
!700 = !DILocation(line: 105, column: 7, scope: !683)
!701 = !DILocation(line: 108, column: 7, scope: !681)
!702 = !DILocation(line: 108, column: 7, scope: !683)
!703 = !DILocation(line: 111, column: 7, scope: !681)
!704 = !DILocation(line: 111, column: 7, scope: !683)
!705 = !DILocation(line: 117, column: 7, scope: !681)
!706 = !DILocation(line: 117, column: 7, scope: !683)
!707 = !DILocation(line: 642, column: 15, scope: !54, inlinedAt: !708)
!708 = distinct !DILocation(line: 123, column: 7, scope: !681)
!709 = !DILocation(line: 651, column: 3, scope: !54, inlinedAt: !708)
!710 = !DILocation(line: 651, column: 3, scope: !711, inlinedAt: !708)
!711 = !DILexicalBlockFile(scope: !54, file: !6, discriminator: 1)
!712 = !DILocation(line: 655, column: 29, scope: !54, inlinedAt: !708)
!713 = !DILocation(line: 655, column: 15, scope: !54, inlinedAt: !708)
!714 = !DILocation(line: 656, column: 7, scope: !73, inlinedAt: !708)
!715 = !DILocation(line: 656, column: 19, scope: !73, inlinedAt: !708)
!716 = !DILocation(line: 656, column: 22, scope: !717, inlinedAt: !708)
!717 = !DILexicalBlockFile(scope: !73, file: !6, discriminator: 16)
!718 = !DILocation(line: 656, column: 7, scope: !719, inlinedAt: !708)
!719 = !DILexicalBlockFile(scope: !54, file: !6, discriminator: 16)
!720 = !DILocation(line: 662, column: 7, scope: !721, inlinedAt: !708)
!721 = distinct !DILexicalBlock(scope: !73, file: !6, line: 657, column: 5)
!722 = !DILocation(line: 662, column: 7, scope: !723, inlinedAt: !708)
!723 = !DILexicalBlockFile(scope: !721, file: !6, discriminator: 1)
!724 = !DILocation(line: 664, column: 5, scope: !721, inlinedAt: !708)
!725 = !DILocation(line: 665, column: 3, scope: !54, inlinedAt: !708)
!726 = !DILocation(line: 665, column: 3, scope: !711, inlinedAt: !708)
!727 = !DILocation(line: 667, column: 3, scope: !54, inlinedAt: !708)
!728 = !DILocation(line: 667, column: 3, scope: !711, inlinedAt: !708)
!729 = !DILocation(line: 125, column: 3, scope: !659)
!730 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 312, type: !731, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !734)
!731 = !DISubroutineType(types: !732)
!732 = !{!48, !48, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!734 = !{!735, !736, !737, !738, !740, !744, !745, !747, !748}
!735 = !DILocalVariable(name: "argc", arg: 1, scope: !730, file: !3, line: 312, type: !48)
!736 = !DILocalVariable(name: "argv", arg: 2, scope: !730, file: !3, line: 312, type: !733)
!737 = !DILocalVariable(name: "c", scope: !730, file: !3, line: 314, type: !48)
!738 = !DILocalVariable(name: "opt_fileno", scope: !739, file: !3, line: 327, type: !48)
!739 = distinct !DILexicalBlock(scope: !730, file: !3, line: 326, column: 5)
!740 = !DILocalVariable(name: "__s1_len", scope: !741, file: !3, line: 350, type: !21)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 350, column: 16)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 350, column: 15)
!743 = distinct !DILexicalBlock(scope: !739, file: !3, line: 330, column: 9)
!744 = !DILocalVariable(name: "__s2_len", scope: !741, file: !3, line: 350, type: !21)
!745 = !DILocalVariable(name: "__s2", scope: !746, file: !3, line: 350, type: !26)
!746 = distinct !DILexicalBlock(scope: !741, file: !3, line: 350, column: 16)
!747 = !DILocalVariable(name: "__result", scope: !746, file: !3, line: 350, type: !48)
!748 = !DILocalVariable(name: "exit_status", scope: !730, file: !3, line: 391, type: !48)
!749 = !DILocalVariable(name: "search_path", scope: !750, file: !3, line: 215, type: !797)
!750 = distinct !DISubprogram(name: "set_LD_PRELOAD", scope: !3, file: !3, line: 188, type: !688, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !751)
!751 = !{!752, !753, !754, !755, !749, !756, !758, !759}
!752 = !DILocalVariable(name: "ret", scope: !750, file: !3, line: 190, type: !48)
!753 = !DILocalVariable(name: "preload_env", scope: !750, file: !3, line: 194, type: !29)
!754 = !DILocalVariable(name: "old_libs", scope: !750, file: !3, line: 196, type: !32)
!755 = !DILocalVariable(name: "LD_PRELOAD", scope: !750, file: !3, line: 197, type: !32)
!756 = !DILocalVariable(name: "path", scope: !750, file: !3, line: 221, type: !757)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!758 = !DILocalVariable(name: "libstdbuf", scope: !750, file: !3, line: 222, type: !32)
!759 = !DILocalVariable(name: "sb", scope: !760, file: !3, line: 226, type: !761)
!760 = distinct !DILexicalBlock(scope: !750, file: !3, line: 225, column: 5)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !762, line: 46, size: 1152, elements: !763)
!762 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!763 = !{!764, !766, !768, !770, !772, !774, !776, !777, !778, !781, !783, !785, !793, !794, !795}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !761, file: !762, line: 48, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !37, line: 133, baseType: !23)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !761, file: !762, line: 53, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !37, line: 136, baseType: !23)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !761, file: !762, line: 61, baseType: !769, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !37, line: 139, baseType: !23)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !761, file: !762, line: 62, baseType: !771, size: 32, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !37, line: 138, baseType: !179)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !761, file: !762, line: 64, baseType: !773, size: 32, offset: 224)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !37, line: 134, baseType: !179)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !761, file: !762, line: 65, baseType: !775, size: 32, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !37, line: 135, baseType: !179)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !761, file: !762, line: 67, baseType: !48, size: 32, offset: 288)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !761, file: !762, line: 69, baseType: !765, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !761, file: !762, line: 74, baseType: !779, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 140, baseType: !780)
!780 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !761, file: !762, line: 78, baseType: !782, size: 64, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !37, line: 162, baseType: !780)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !761, file: !762, line: 80, baseType: !784, size: 64, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !37, line: 167, baseType: !780)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !761, file: !762, line: 91, baseType: !786, size: 128, offset: 576)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !787, line: 8, size: 128, elements: !788)
!787 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!788 = !{!789, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !786, file: !787, line: 10, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !37, line: 148, baseType: !780)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !786, file: !787, line: 11, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !37, line: 184, baseType: !780)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !761, file: !762, line: 92, baseType: !786, size: 128, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !761, file: !762, line: 93, baseType: !786, size: 128, offset: 832)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !761, file: !762, line: 106, baseType: !796, size: 192, offset: 960)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 192, elements: !50)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 192, elements: !50)
!798 = !DILocation(line: 215, column: 21, scope: !750, inlinedAt: !799)
!799 = distinct !DILocation(line: 386, column: 3, scope: !730)
!800 = !DILocation(line: 312, column: 11, scope: !730)
!801 = !DILocation(line: 312, column: 24, scope: !730)
!802 = !DILocation(line: 317, column: 21, scope: !730)
!803 = !DILocation(line: 317, column: 3, scope: !730)
!804 = !DILocation(line: 318, column: 3, scope: !730)
!805 = !DILocation(line: 319, column: 3, scope: !730)
!806 = !DILocation(line: 320, column: 3, scope: !730)
!807 = !DILocalVariable(name: "status", arg: 1, scope: !808, file: !6, line: 99, type: !48)
!808 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !660, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !809)
!809 = !{!807}
!810 = !DILocation(line: 99, column: 30, scope: !808, inlinedAt: !811)
!811 = distinct !DILocation(line: 322, column: 3, scope: !730)
!812 = !DILocation(line: 102, column: 18, scope: !813, inlinedAt: !811)
!813 = distinct !DILexicalBlock(scope: !808, file: !6, line: 101, column: 7)
!814 = !{!815, !815, i64 0}
!815 = !{!"int", !674, i64 0}
!816 = !DILocation(line: 323, column: 3, scope: !730)
!817 = !DILocation(line: 325, column: 3, scope: !730)
!818 = !DILocation(line: 325, column: 15, scope: !819)
!819 = !DILexicalBlockFile(scope: !730, file: !3, discriminator: 1)
!820 = !DILocation(line: 314, column: 7, scope: !730)
!821 = !DILocation(line: 325, column: 3, scope: !819)
!822 = !DILocalVariable(name: "ret", scope: !823, file: !3, line: 169, type: !48)
!823 = distinct !DISubprogram(name: "optc_to_fileno", scope: !3, file: !3, line: 167, type: !824, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!48, !48}
!826 = !{!827, !822}
!827 = !DILocalVariable(name: "c", arg: 1, scope: !823, file: !3, line: 167, type: !48)
!828 = !DILocation(line: 169, column: 7, scope: !823, inlinedAt: !829)
!829 = distinct !DILocation(line: 335, column: 24, scope: !743)
!830 = !DILocation(line: 178, column: 7, scope: !831, inlinedAt: !829)
!831 = distinct !DILexicalBlock(scope: !823, file: !3, line: 172, column: 5)
!832 = !DILocation(line: 181, column: 7, scope: !831, inlinedAt: !829)
!833 = !DILocation(line: 337, column: 30, scope: !743)
!834 = !DILocation(line: 337, column: 35, scope: !743)
!835 = !{!836, !815, i64 8}
!836 = !{!"", !837, i64 0, !815, i64 8, !673, i64 16}
!837 = !{!"long", !674, i64 0}
!838 = !DILocation(line: 338, column: 30, scope: !839)
!839 = !DILexicalBlockFile(scope: !743, file: !3, discriminator: 1)
!840 = !DILocation(line: 338, column: 29, scope: !839)
!841 = !{!674, !674, i64 0}
!842 = !DILocalVariable(name: "c", arg: 1, scope: !843, file: !844, line: 300, type: !48)
!843 = distinct !DISubprogram(name: "c_isspace", scope: !844, file: !844, line: 300, type: !845, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !847)
!844 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!845 = !DISubroutineType(types: !846)
!846 = !{!107, !48}
!847 = !{!842}
!848 = !DILocation(line: 300, column: 16, scope: !843, inlinedAt: !849)
!849 = distinct !DILocation(line: 338, column: 18, scope: !839)
!850 = !DILocation(line: 302, column: 3, scope: !843, inlinedAt: !849)
!851 = !DILocation(line: 338, column: 11, scope: !839)
!852 = !DILocation(line: 339, column: 19, scope: !743)
!853 = distinct !{!853, !854, !852}
!854 = !DILocation(line: 338, column: 11, scope: !743)
!855 = !DILocation(line: 340, column: 30, scope: !743)
!856 = !DILocation(line: 351, column: 30, scope: !857)
!857 = !DILexicalBlockFile(scope: !742, file: !3, discriminator: 1)
!858 = !DILocation(line: 340, column: 37, scope: !743)
!859 = !{!836, !673, i64 16}
!860 = !DILocation(line: 341, column: 17, scope: !861)
!861 = distinct !DILexicalBlock(scope: !743, file: !3, line: 341, column: 15)
!862 = !DILocation(line: 341, column: 35, scope: !863)
!863 = !DILexicalBlockFile(scope: !861, file: !3, discriminator: 1)
!864 = !DILocation(line: 341, column: 24, scope: !861)
!865 = !DILocation(line: 346, column: 28, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !3, line: 342, column: 13)
!867 = !DILocation(line: 346, column: 15, scope: !868)
!868 = !DILexicalBlockFile(scope: !866, file: !3, discriminator: 1)
!869 = !DILocation(line: 347, column: 15, scope: !866)
!870 = !DILocation(line: 350, column: 16, scope: !741)
!871 = !DILocation(line: 350, column: 16, scope: !746)
!872 = !DILocation(line: 350, column: 16, scope: !873)
!873 = !DILexicalBlockFile(scope: !874, file: !3, discriminator: 3)
!874 = distinct !DILexicalBlock(scope: !746, file: !3, line: 350, column: 16)
!875 = !DILocation(line: 350, column: 16, scope: !876)
!876 = !DILexicalBlockFile(scope: !874, file: !3, discriminator: 2)
!877 = !DILocation(line: 350, column: 16, scope: !878)
!878 = !DILexicalBlockFile(scope: !879, file: !3, discriminator: 4)
!879 = distinct !DILexicalBlock(scope: !874, file: !3, line: 350, column: 16)
!880 = !DILocation(line: 350, column: 16, scope: !881)
!881 = !DILexicalBlockFile(scope: !742, file: !3, discriminator: 13)
!882 = !DILocation(line: 351, column: 15, scope: !742)
!883 = distinct !{!883, !817, !884}
!884 = !DILocation(line: 363, column: 5, scope: !730)
!885 = !DILocalVariable(name: "str", arg: 1, scope: !886, file: !3, line: 66, type: !29)
!886 = distinct !DISubprogram(name: "parse_size", scope: !3, file: !3, line: 66, type: !887, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!48, !29, !616}
!889 = !{!885, !890, !891, !892}
!890 = !DILocalVariable(name: "size", arg: 2, scope: !886, file: !3, line: 66, type: !616)
!891 = !DILocalVariable(name: "tmp_size", scope: !886, file: !3, line: 68, type: !34)
!892 = !DILocalVariable(name: "e", scope: !886, file: !3, line: 69, type: !12)
!893 = !DILocation(line: 66, column: 25, scope: !886, inlinedAt: !894)
!894 = distinct !DILocation(line: 351, column: 18, scope: !857)
!895 = !DILocation(line: 66, column: 38, scope: !886, inlinedAt: !894)
!896 = !DILocation(line: 68, column: 3, scope: !886, inlinedAt: !894)
!897 = !DIExpression(DW_OP_deref)
!898 = !DILocation(line: 68, column: 13, scope: !886, inlinedAt: !894)
!899 = !DILocation(line: 69, column: 25, scope: !886, inlinedAt: !894)
!900 = !DILocation(line: 69, column: 21, scope: !886, inlinedAt: !894)
!901 = !DILocation(line: 73, column: 7, scope: !886, inlinedAt: !894)
!902 = !DILocation(line: 80, column: 3, scope: !903, inlinedAt: !894)
!903 = !DILexicalBlockFile(scope: !886, file: !3, discriminator: 3)
!904 = !DILocation(line: 80, column: 48, scope: !905, inlinedAt: !894)
!905 = !DILexicalBlockFile(scope: !886, file: !3, discriminator: 2)
!906 = !DILocation(line: 80, column: 12, scope: !905, inlinedAt: !894)
!907 = !DILocation(line: 351, column: 58, scope: !857)
!908 = !DILocation(line: 75, column: 7, scope: !909, inlinedAt: !894)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 74, column: 5)
!910 = distinct !DILexicalBlock(scope: !886, file: !3, line: 73, column: 7)
!911 = !DILocation(line: 75, column: 13, scope: !909, inlinedAt: !894)
!912 = !DILocation(line: 76, column: 15, scope: !909, inlinedAt: !894)
!913 = !{!837, !837, i64 0}
!914 = !DILocation(line: 76, column: 13, scope: !909, inlinedAt: !894)
!915 = !DILocation(line: 82, column: 1, scope: !886, inlinedAt: !894)
!916 = !DILocation(line: 350, column: 15, scope: !917)
!917 = !DILexicalBlockFile(scope: !743, file: !3, discriminator: 14)
!918 = !DILocation(line: 352, column: 13, scope: !742)
!919 = !DILocation(line: 80, column: 12, scope: !903, inlinedAt: !894)
!920 = !DILocation(line: 80, column: 9, scope: !903, inlinedAt: !894)
!921 = !DILocation(line: 352, column: 13, scope: !857)
!922 = !DILocation(line: 352, column: 13, scope: !923)
!923 = !DILexicalBlockFile(scope: !742, file: !3, discriminator: 2)
!924 = !DILocation(line: 352, column: 13, scope: !925)
!925 = !DILexicalBlockFile(scope: !742, file: !3, discriminator: 3)
!926 = !DILocation(line: 356, column: 9, scope: !743)
!927 = !DILocation(line: 358, column: 9, scope: !743)
!928 = !DILocation(line: 358, column: 9, scope: !839)
!929 = !DILocation(line: 361, column: 11, scope: !743)
!930 = !DILocation(line: 365, column: 11, scope: !730)
!931 = !DILocation(line: 365, column: 8, scope: !730)
!932 = !DILocation(line: 369, column: 12, scope: !933)
!933 = distinct !DILexicalBlock(scope: !730, file: !3, line: 369, column: 7)
!934 = !DILocation(line: 369, column: 7, scope: !730)
!935 = !DILocation(line: 371, column: 20, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !3, line: 370, column: 5)
!937 = !DILocation(line: 371, column: 7, scope: !938)
!938 = !DILexicalBlockFile(scope: !936, file: !3, discriminator: 1)
!939 = !DILocation(line: 372, column: 7, scope: !936)
!940 = !DILocalVariable(name: "env_set", scope: !941, file: !3, line: 277, type: !107)
!941 = distinct !DISubprogram(name: "set_libstdbuf_options", scope: !3, file: !3, line: 275, type: !942, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !944)
!942 = !DISubroutineType(types: !943)
!943 = !{!107}
!944 = !{!940, !945, !946, !952, !953, !956}
!945 = !DILocalVariable(name: "i", scope: !941, file: !3, line: 278, type: !21)
!946 = !DILocalVariable(name: "var", scope: !947, file: !3, line: 284, type: !32)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 283, column: 9)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 282, column: 11)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 281, column: 5)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 280, column: 3)
!951 = distinct !DILexicalBlock(scope: !941, file: !3, line: 280, column: 3)
!952 = !DILocalVariable(name: "ret", scope: !947, file: !3, line: 285, type: !48)
!953 = !DILocalVariable(name: "__res", scope: !954, file: !3, line: 288, type: !48)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 288, column: 19)
!955 = distinct !DILexicalBlock(scope: !947, file: !3, line: 287, column: 15)
!956 = !DILocalVariable(name: "__res", scope: !957, file: !3, line: 291, type: !48)
!957 = distinct !DILexicalBlock(scope: !955, file: !3, line: 291, column: 19)
!958 = !DILocation(line: 277, column: 8, scope: !941, inlinedAt: !959)
!959 = distinct !DILocation(line: 375, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !730, file: !3, line: 375, column: 7)
!961 = !DILocation(line: 278, column: 10, scope: !941, inlinedAt: !959)
!962 = !DILocation(line: 282, column: 21, scope: !948, inlinedAt: !959)
!963 = !DILocation(line: 282, column: 11, scope: !948, inlinedAt: !959)
!964 = !DILocation(line: 282, column: 11, scope: !949, inlinedAt: !959)
!965 = !DILocation(line: 284, column: 11, scope: !947, inlinedAt: !959)
!966 = !DILocation(line: 287, column: 15, scope: !955, inlinedAt: !959)
!967 = !DILocation(line: 287, column: 33, scope: !955, inlinedAt: !959)
!968 = !DILocalVariable(name: "__c", arg: 1, scope: !969, file: !147, line: 221, type: !48)
!969 = distinct !DISubprogram(name: "toupper", scope: !147, file: !147, line: 221, type: !824, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !970)
!970 = !{!968}
!971 = !DILocation(line: 221, column: 1, scope: !969, inlinedAt: !972)
!972 = distinct !DILocation(line: 288, column: 19, scope: !973, inlinedAt: !959)
!973 = distinct !DILexicalBlock(scope: !974, file: !3, line: 288, column: 19)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 288, column: 19)
!975 = distinct !DILexicalBlock(scope: !954, file: !3, line: 288, column: 19)
!976 = !DILocation(line: 223, column: 22, scope: !969, inlinedAt: !972)
!977 = !DILocation(line: 223, column: 39, scope: !978, inlinedAt: !972)
!978 = !DILexicalBlockFile(scope: !969, file: !147, discriminator: 2)
!979 = !DILocation(line: 223, column: 38, scope: !978, inlinedAt: !972)
!980 = !DILocation(line: 223, column: 37, scope: !978, inlinedAt: !972)
!981 = !DILocation(line: 223, column: 10, scope: !978, inlinedAt: !972)
!982 = !DILocation(line: 223, column: 10, scope: !983, inlinedAt: !972)
!983 = !DILexicalBlockFile(scope: !969, file: !147, discriminator: 4)
!984 = !DILocation(line: 287, column: 15, scope: !947, inlinedAt: !959)
!985 = !DILocation(line: 288, column: 19, scope: !954, inlinedAt: !959)
!986 = !DILocation(line: 284, column: 17, scope: !947, inlinedAt: !959)
!987 = !DILocation(line: 288, column: 19, scope: !988, inlinedAt: !959)
!988 = !DILexicalBlockFile(scope: !955, file: !3, discriminator: 1)
!989 = !DILocation(line: 285, column: 15, scope: !947, inlinedAt: !959)
!990 = !DILocation(line: 288, column: 13, scope: !955, inlinedAt: !959)
!991 = !DILocation(line: 291, column: 19, scope: !955, inlinedAt: !959)
!992 = !{!836, !837, i64 0}
!993 = !DILocation(line: 291, column: 19, scope: !988, inlinedAt: !959)
!994 = !DILocation(line: 294, column: 19, scope: !995, inlinedAt: !959)
!995 = distinct !DILexicalBlock(scope: !947, file: !3, line: 294, column: 15)
!996 = !DILocation(line: 294, column: 15, scope: !947, inlinedAt: !959)
!997 = !DILocation(line: 295, column: 13, scope: !995, inlinedAt: !959)
!998 = !DILocation(line: 297, column: 23, scope: !999, inlinedAt: !959)
!999 = distinct !DILexicalBlock(scope: !947, file: !3, line: 297, column: 15)
!1000 = !DILocation(line: 297, column: 15, scope: !999, inlinedAt: !959)
!1001 = !DILocation(line: 297, column: 28, scope: !999, inlinedAt: !959)
!1002 = !DILocation(line: 297, column: 15, scope: !947, inlinedAt: !959)
!1003 = !DILocation(line: 299, column: 15, scope: !1004, inlinedAt: !959)
!1004 = distinct !DILexicalBlock(scope: !999, file: !3, line: 298, column: 13)
!1005 = !DILocation(line: 299, column: 15, scope: !1006, inlinedAt: !959)
!1006 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 1)
!1007 = !DILocation(line: 299, column: 15, scope: !1008, inlinedAt: !959)
!1008 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 2)
!1009 = !DILocation(line: 299, column: 15, scope: !1010, inlinedAt: !959)
!1010 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 3)
!1011 = !DILocation(line: 305, column: 9, scope: !948, inlinedAt: !959)
!1012 = !DILocation(line: 305, column: 9, scope: !947, inlinedAt: !959)
!1013 = !DILocation(line: 375, column: 7, scope: !730)
!1014 = !DILocation(line: 308, column: 10, scope: !941, inlinedAt: !959)
!1015 = !DILocation(line: 377, column: 20, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !960, file: !3, line: 376, column: 5)
!1017 = !DILocation(line: 377, column: 7, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1016, file: !3, discriminator: 1)
!1019 = !DILocation(line: 378, column: 7, scope: !1016)
!1020 = !DILocation(line: 383, column: 21, scope: !730)
!1021 = !DILocalVariable(name: "arg", arg: 1, scope: !1022, file: !3, line: 135, type: !29)
!1022 = distinct !DISubprogram(name: "set_program_path", scope: !3, file: !3, line: 135, type: !55, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1023)
!1023 = !{!1021, !1024, !1027, !1031}
!1024 = !DILocalVariable(name: "path", scope: !1025, file: !3, line: 143, type: !32)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 142, column: 5)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 137, column: 7)
!1027 = !DILocalVariable(name: "dir", scope: !1028, file: !3, line: 148, type: !32)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 147, column: 9)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 146, column: 16)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 144, column: 11)
!1031 = !DILocalVariable(name: "candidate", scope: !1032, file: !3, line: 152, type: !32)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 151, column: 13)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 150, column: 11)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 150, column: 11)
!1035 = !DILocation(line: 135, column: 31, scope: !1022, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 383, column: 3, scope: !730)
!1037 = !DILocation(line: 137, column: 7, scope: !1038, inlinedAt: !1036)
!1038 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 2)
!1039 = !DILocation(line: 137, column: 7, scope: !1040, inlinedAt: !1036)
!1040 = !DILexicalBlockFile(scope: !1022, file: !3, discriminator: 2)
!1041 = !DILocation(line: 139, column: 22, scope: !1042, inlinedAt: !1036)
!1042 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 138, column: 5)
!1043 = !DILocation(line: 139, column: 20, scope: !1042, inlinedAt: !1036)
!1044 = !DILocation(line: 140, column: 5, scope: !1042, inlinedAt: !1036)
!1045 = !DILocation(line: 143, column: 20, scope: !1025, inlinedAt: !1036)
!1046 = !DILocation(line: 143, column: 13, scope: !1025, inlinedAt: !1036)
!1047 = !DILocation(line: 144, column: 11, scope: !1030, inlinedAt: !1036)
!1048 = !DILocation(line: 144, column: 11, scope: !1025, inlinedAt: !1036)
!1049 = !DILocation(line: 145, column: 24, scope: !1030, inlinedAt: !1036)
!1050 = !DILocation(line: 145, column: 22, scope: !1030, inlinedAt: !1036)
!1051 = !DILocation(line: 145, column: 9, scope: !1030, inlinedAt: !1036)
!1052 = !DILocation(line: 146, column: 24, scope: !1029, inlinedAt: !1036)
!1053 = !DILocation(line: 146, column: 22, scope: !1029, inlinedAt: !1036)
!1054 = !DILocation(line: 146, column: 16, scope: !1030, inlinedAt: !1036)
!1055 = !DILocation(line: 149, column: 18, scope: !1028, inlinedAt: !1036)
!1056 = !DILocation(line: 150, column: 61, scope: !1057, inlinedAt: !1036)
!1057 = !DILexicalBlockFile(scope: !1033, file: !3, discriminator: 2)
!1058 = !DILocation(line: 148, column: 17, scope: !1028, inlinedAt: !1036)
!1059 = !DILocation(line: 150, column: 46, scope: !1060, inlinedAt: !1036)
!1060 = !DILexicalBlockFile(scope: !1033, file: !3, discriminator: 1)
!1061 = !DILocation(line: 150, column: 11, scope: !1062, inlinedAt: !1036)
!1062 = !DILexicalBlockFile(scope: !1034, file: !3, discriminator: 1)
!1063 = !DILocation(line: 152, column: 33, scope: !1032, inlinedAt: !1036)
!1064 = !DILocation(line: 152, column: 21, scope: !1032, inlinedAt: !1036)
!1065 = !DILocation(line: 153, column: 19, scope: !1066, inlinedAt: !1036)
!1066 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 153, column: 19)
!1067 = !DILocation(line: 153, column: 44, scope: !1066, inlinedAt: !1036)
!1068 = !DILocation(line: 153, column: 19, scope: !1032, inlinedAt: !1036)
!1069 = !DILocation(line: 155, column: 34, scope: !1070, inlinedAt: !1036)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 154, column: 17)
!1071 = !DILocation(line: 155, column: 32, scope: !1070, inlinedAt: !1036)
!1072 = !DILocation(line: 156, column: 19, scope: !1070, inlinedAt: !1036)
!1073 = !DILocation(line: 159, column: 15, scope: !1032, inlinedAt: !1036)
!1074 = distinct !{!1074, !1075, !1076}
!1075 = !DILocation(line: 150, column: 11, scope: !1034)
!1076 = !DILocation(line: 160, column: 13, scope: !1034)
!1077 = !DILocation(line: 162, column: 7, scope: !1025, inlinedAt: !1036)
!1078 = !DILocation(line: 384, column: 8, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !730, file: !3, line: 384, column: 7)
!1080 = !DILocation(line: 384, column: 7, scope: !730)
!1081 = !DILocation(line: 385, column: 20, scope: !1079)
!1082 = !DILocation(line: 385, column: 18, scope: !1079)
!1083 = !DILocation(line: 385, column: 5, scope: !1079)
!1084 = !DILocation(line: 216, column: 5, scope: !750, inlinedAt: !799)
!1085 = !DILocation(line: 196, column: 20, scope: !750, inlinedAt: !799)
!1086 = !DILocation(line: 196, column: 9, scope: !750, inlinedAt: !799)
!1087 = !DILocation(line: 197, column: 3, scope: !750, inlinedAt: !799)
!1088 = !DILocation(line: 215, column: 3, scope: !750, inlinedAt: !799)
!1089 = !DILocation(line: 215, column: 37, scope: !750, inlinedAt: !799)
!1090 = !DILocation(line: 222, column: 3, scope: !750, inlinedAt: !799)
!1091 = !DILocation(line: 226, column: 7, scope: !760, inlinedAt: !799)
!1092 = !DILocation(line: 228, column: 12, scope: !1093, inlinedAt: !799)
!1093 = distinct !DILexicalBlock(scope: !760, file: !3, line: 228, column: 11)
!1094 = !DILocation(line: 228, column: 11, scope: !760, inlinedAt: !799)
!1095 = !DILocation(line: 221, column: 29, scope: !750, inlinedAt: !799)
!1096 = !DILocation(line: 222, column: 9, scope: !750, inlinedAt: !799)
!1097 = !DILocation(line: 230, column: 23, scope: !1098, inlinedAt: !799)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 229, column: 9)
!1099 = !DILocation(line: 230, column: 21, scope: !1098, inlinedAt: !799)
!1100 = !DILocation(line: 231, column: 11, scope: !1098, inlinedAt: !799)
!1101 = !DILocation(line: 233, column: 13, scope: !760, inlinedAt: !799)
!1102 = !DILocation(line: 190, column: 7, scope: !750, inlinedAt: !799)
!1103 = !DILocation(line: 234, column: 15, scope: !1104, inlinedAt: !799)
!1104 = distinct !DILexicalBlock(scope: !760, file: !3, line: 234, column: 11)
!1105 = !DILocation(line: 234, column: 11, scope: !760, inlinedAt: !799)
!1106 = !DILocation(line: 235, column: 9, scope: !1104, inlinedAt: !799)
!1107 = !DILocation(line: 236, column: 17, scope: !1108, inlinedAt: !799)
!1108 = distinct !DILexicalBlock(scope: !760, file: !3, line: 236, column: 11)
!1109 = !DILocation(line: 226, column: 19, scope: !760, inlinedAt: !799)
!1110 = !DILocalVariable(name: "__path", arg: 1, scope: !1111, file: !1112, line: 449, type: !29)
!1111 = distinct !DISubprogram(name: "stat", scope: !1112, file: !1112, line: 449, type: !1113, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1116)
!1112 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!48, !29, !1115}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!1116 = !{!1110, !1117}
!1117 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1111, file: !1112, line: 449, type: !1115)
!1118 = !DILocation(line: 449, column: 1, scope: !1111, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 236, column: 11, scope: !1108, inlinedAt: !799)
!1120 = !DILocation(line: 451, column: 10, scope: !1111, inlinedAt: !1119)
!1121 = !DILocation(line: 236, column: 33, scope: !1108, inlinedAt: !799)
!1122 = !DILocation(line: 236, column: 11, scope: !760, inlinedAt: !799)
!1123 = !DILocation(line: 238, column: 7, scope: !760, inlinedAt: !799)
!1124 = !DILocation(line: 240, column: 7, scope: !760, inlinedAt: !799)
!1125 = !DILocation(line: 221, column: 22, scope: !750, inlinedAt: !799)
!1126 = !DILocation(line: 241, column: 14, scope: !1127, inlinedAt: !799)
!1127 = distinct !DILexicalBlock(scope: !760, file: !3, line: 241, column: 12)
!1128 = !DILocation(line: 241, column: 12, scope: !760, inlinedAt: !799)
!1129 = !DILocation(line: 242, column: 9, scope: !1127, inlinedAt: !799)
!1130 = !DILocation(line: 242, column: 9, scope: !1131, inlinedAt: !799)
!1131 = !DILexicalBlockFile(scope: !1127, file: !3, discriminator: 1)
!1132 = !DILocation(line: 242, column: 9, scope: !1133, inlinedAt: !799)
!1133 = !DILexicalBlockFile(scope: !1127, file: !3, discriminator: 2)
!1134 = !DILocation(line: 243, column: 5, scope: !750, inlinedAt: !799)
!1135 = !DILocation(line: 228, column: 13, scope: !1093, inlinedAt: !799)
!1136 = !DILocation(line: 247, column: 7, scope: !1137, inlinedAt: !799)
!1137 = distinct !DILexicalBlock(scope: !750, file: !3, line: 247, column: 7)
!1138 = !DILocation(line: 197, column: 9, scope: !750, inlinedAt: !799)
!1139 = !DILocation(line: 247, column: 7, scope: !750, inlinedAt: !799)
!1140 = !DILocation(line: 248, column: 11, scope: !1137, inlinedAt: !799)
!1141 = !DILocation(line: 248, column: 5, scope: !1137, inlinedAt: !799)
!1142 = !DILocation(line: 250, column: 11, scope: !1137, inlinedAt: !799)
!1143 = !DILocation(line: 252, column: 11, scope: !1144, inlinedAt: !799)
!1144 = distinct !DILexicalBlock(scope: !750, file: !3, line: 252, column: 7)
!1145 = !DILocation(line: 252, column: 7, scope: !750, inlinedAt: !799)
!1146 = !DILocation(line: 253, column: 5, scope: !1144, inlinedAt: !799)
!1147 = !DILocation(line: 255, column: 9, scope: !750, inlinedAt: !799)
!1148 = !DILocation(line: 255, column: 3, scope: !750, inlinedAt: !799)
!1149 = !DILocation(line: 257, column: 17, scope: !750, inlinedAt: !799)
!1150 = !DILocation(line: 257, column: 9, scope: !750, inlinedAt: !799)
!1151 = !DILocation(line: 263, column: 11, scope: !1152, inlinedAt: !799)
!1152 = distinct !DILexicalBlock(scope: !750, file: !3, line: 263, column: 7)
!1153 = !DILocation(line: 263, column: 7, scope: !750, inlinedAt: !799)
!1154 = !DILocation(line: 265, column: 7, scope: !1155, inlinedAt: !799)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 264, column: 5)
!1156 = !DILocation(line: 265, column: 7, scope: !1157, inlinedAt: !799)
!1157 = !DILexicalBlockFile(scope: !1155, file: !3, discriminator: 1)
!1158 = !DILocation(line: 265, column: 7, scope: !1159, inlinedAt: !799)
!1159 = !DILexicalBlockFile(scope: !1155, file: !3, discriminator: 2)
!1160 = !DILocation(line: 265, column: 7, scope: !1161, inlinedAt: !799)
!1161 = !DILexicalBlockFile(scope: !1155, file: !3, discriminator: 3)
!1162 = !DILocation(line: 269, column: 1, scope: !750, inlinedAt: !799)
!1163 = !DILocation(line: 387, column: 9, scope: !730)
!1164 = !DILocation(line: 387, column: 3, scope: !730)
!1165 = !DILocation(line: 389, column: 11, scope: !730)
!1166 = !DILocation(line: 389, column: 3, scope: !730)
!1167 = !DILocation(line: 391, column: 21, scope: !730)
!1168 = !DILocation(line: 391, column: 27, scope: !730)
!1169 = !DILocation(line: 391, column: 7, scope: !730)
!1170 = !DILocation(line: 392, column: 20, scope: !819)
!1171 = !DILocation(line: 392, column: 58, scope: !730)
!1172 = !DILocation(line: 392, column: 51, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !730, file: !3, discriminator: 2)
!1174 = !DILocation(line: 392, column: 3, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !730, file: !3, discriminator: 3)
!1176 = !DILocation(line: 393, column: 3, scope: !730)
!1177 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !106, file: !106, line: 41, type: !55, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !101, variables: !1178)
!1178 = !{!1179}
!1179 = !DILocalVariable(name: "file", arg: 1, scope: !1177, file: !106, line: 41, type: !29)
!1180 = !DILocation(line: 41, column: 41, scope: !1177)
!1181 = !DILocation(line: 43, column: 13, scope: !1177)
!1182 = !DILocation(line: 44, column: 1, scope: !1177)
!1183 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !106, file: !106, line: 78, type: !1184, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !101, variables: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !107}
!1186 = !{!1187}
!1187 = !DILocalVariable(name: "ignore", arg: 1, scope: !1183, file: !106, line: 78, type: !107)
!1188 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1189 = !DILocation(line: 78, column: 37, scope: !1183)
!1190 = !DILocation(line: 80, column: 16, scope: !1183)
!1191 = !{!1192, !1192, i64 0}
!1192 = !{!"_Bool", !674, i64 0}
!1193 = !DILocation(line: 81, column: 1, scope: !1183)
!1194 = distinct !DISubprogram(name: "close_stdout", scope: !106, file: !106, line: 107, type: !688, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !101, variables: !1195)
!1195 = !{!1196}
!1196 = !DILocalVariable(name: "write_error", scope: !1197, file: !106, line: 112, type: !29)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !106, line: 111, column: 5)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !106, line: 109, column: 7)
!1199 = !DILocation(line: 109, column: 21, scope: !1198)
!1200 = !DILocation(line: 109, column: 7, scope: !1198)
!1201 = !DILocation(line: 109, column: 29, scope: !1198)
!1202 = !DILocation(line: 110, column: 7, scope: !1198)
!1203 = !DILocation(line: 110, column: 12, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1198, file: !106, discriminator: 1)
!1205 = !{i8 0, i8 2}
!1206 = !DILocation(line: 114, column: 19, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1197, file: !106, line: 113, column: 11)
!1208 = !DILocation(line: 110, column: 25, scope: !1204)
!1209 = !DILocation(line: 110, column: 28, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1198, file: !106, discriminator: 2)
!1211 = !DILocation(line: 110, column: 34, scope: !1210)
!1212 = !DILocation(line: 109, column: 7, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1194, file: !106, discriminator: 1)
!1214 = !DILocation(line: 112, column: 33, scope: !1197)
!1215 = !DILocation(line: 112, column: 19, scope: !1197)
!1216 = !DILocation(line: 113, column: 11, scope: !1207)
!1217 = !DILocation(line: 113, column: 11, scope: !1197)
!1218 = !DILocation(line: 114, column: 36, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1207, file: !106, discriminator: 1)
!1220 = !DILocation(line: 114, column: 9, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1207, file: !106, discriminator: 2)
!1222 = !DILocation(line: 114, column: 9, scope: !1207)
!1223 = !DILocation(line: 117, column: 9, scope: !1219)
!1224 = !DILocation(line: 119, column: 14, scope: !1197)
!1225 = !DILocation(line: 119, column: 7, scope: !1197)
!1226 = !DILocation(line: 122, column: 22, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1194, file: !106, line: 122, column: 8)
!1228 = !DILocation(line: 122, column: 8, scope: !1227)
!1229 = !DILocation(line: 122, column: 30, scope: !1227)
!1230 = !DILocation(line: 122, column: 8, scope: !1194)
!1231 = !DILocation(line: 123, column: 13, scope: !1227)
!1232 = !DILocation(line: 123, column: 6, scope: !1227)
!1233 = !DILocation(line: 124, column: 1, scope: !1194)
!1234 = distinct !DISubprogram(name: "dir_name", scope: !1235, file: !1235, line: 32, type: !1236, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !1238)
!1235 = !DIFile(filename: "lib/dirname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!32, !29}
!1238 = !{!1239, !1240}
!1239 = !DILocalVariable(name: "file", arg: 1, scope: !1234, file: !1235, line: 32, type: !29)
!1240 = !DILocalVariable(name: "result", scope: !1234, file: !1235, line: 34, type: !32)
!1241 = !DILocation(line: 32, column: 23, scope: !1234)
!1242 = !DILocation(line: 34, column: 18, scope: !1234)
!1243 = !DILocation(line: 34, column: 9, scope: !1234)
!1244 = !DILocation(line: 35, column: 8, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1234, file: !1235, line: 35, column: 7)
!1246 = !DILocation(line: 35, column: 7, scope: !1234)
!1247 = !DILocation(line: 36, column: 5, scope: !1245)
!1248 = !DILocation(line: 37, column: 3, scope: !1234)
!1249 = distinct !DISubprogram(name: "dir_len", scope: !1250, file: !1250, line: 32, type: !1251, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !1253)
!1250 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!21, !29}
!1253 = !{!1254, !1255, !1256}
!1254 = !DILocalVariable(name: "file", arg: 1, scope: !1249, file: !1250, line: 32, type: !29)
!1255 = !DILocalVariable(name: "prefix_length", scope: !1249, file: !1250, line: 34, type: !21)
!1256 = !DILocalVariable(name: "length", scope: !1249, file: !1250, line: 35, type: !21)
!1257 = !DILocation(line: 32, column: 22, scope: !1249)
!1258 = !DILocation(line: 34, column: 10, scope: !1249)
!1259 = !DILocation(line: 41, column: 24, scope: !1249)
!1260 = !DILocation(line: 38, column: 21, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1249, file: !1250, discriminator: 2)
!1262 = !DILocation(line: 48, column: 17, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1249, file: !1250, line: 48, column: 3)
!1264 = !DILocation(line: 48, column: 39, scope: !1263)
!1265 = !DILocation(line: 35, column: 10, scope: !1249)
!1266 = !DILocation(line: 48, column: 8, scope: !1263)
!1267 = !DILocation(line: 49, column: 22, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !1250, line: 48, column: 3)
!1269 = !DILocation(line: 48, column: 3, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1263, file: !1250, discriminator: 1)
!1271 = !DILocation(line: 50, column: 11, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !1250, line: 50, column: 9)
!1273 = !DILocation(line: 50, column: 9, scope: !1268)
!1274 = distinct !{!1274, !1275, !1276}
!1275 = !DILocation(line: 48, column: 3, scope: !1263)
!1276 = !DILocation(line: 51, column: 7, scope: !1263)
!1277 = !DILocation(line: 52, column: 3, scope: !1249)
!1278 = distinct !DISubprogram(name: "mdir_name", scope: !1250, file: !1250, line: 71, type: !1236, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !1279)
!1279 = !{!1280, !1281, !1282, !1283}
!1280 = !DILocalVariable(name: "file", arg: 1, scope: !1278, file: !1250, line: 71, type: !29)
!1281 = !DILocalVariable(name: "length", scope: !1278, file: !1250, line: 73, type: !21)
!1282 = !DILocalVariable(name: "append_dot", scope: !1278, file: !1250, line: 74, type: !107)
!1283 = !DILocalVariable(name: "dir", scope: !1278, file: !1250, line: 78, type: !32)
!1284 = !DILocation(line: 71, column: 24, scope: !1278)
!1285 = !DILocation(line: 32, column: 22, scope: !1249, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 73, column: 19, scope: !1278)
!1287 = !DILocation(line: 34, column: 10, scope: !1249, inlinedAt: !1286)
!1288 = !DILocation(line: 41, column: 24, scope: !1249, inlinedAt: !1286)
!1289 = !DILocation(line: 38, column: 21, scope: !1261, inlinedAt: !1286)
!1290 = !DILocation(line: 48, column: 17, scope: !1263, inlinedAt: !1286)
!1291 = !DILocation(line: 48, column: 39, scope: !1263, inlinedAt: !1286)
!1292 = !DILocation(line: 35, column: 10, scope: !1249, inlinedAt: !1286)
!1293 = !DILocation(line: 48, column: 8, scope: !1263, inlinedAt: !1286)
!1294 = !DILocation(line: 49, column: 22, scope: !1268, inlinedAt: !1286)
!1295 = !DILocation(line: 48, column: 3, scope: !1270, inlinedAt: !1286)
!1296 = !DILocation(line: 50, column: 11, scope: !1272, inlinedAt: !1286)
!1297 = !DILocation(line: 50, column: 9, scope: !1268, inlinedAt: !1286)
!1298 = !DILocation(line: 73, column: 10, scope: !1278)
!1299 = !DILocation(line: 74, column: 29, scope: !1278)
!1300 = !DILocation(line: 78, column: 32, scope: !1278)
!1301 = !DILocation(line: 78, column: 30, scope: !1278)
!1302 = !DILocation(line: 78, column: 43, scope: !1278)
!1303 = !DILocation(line: 78, column: 15, scope: !1278)
!1304 = !DILocation(line: 78, column: 9, scope: !1278)
!1305 = !DILocation(line: 79, column: 8, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1278, file: !1250, line: 79, column: 7)
!1307 = !DILocation(line: 79, column: 7, scope: !1278)
!1308 = !DILocation(line: 81, column: 3, scope: !1278)
!1309 = !DILocation(line: 82, column: 7, scope: !1278)
!1310 = !DILocation(line: 83, column: 19, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1278, file: !1250, line: 82, column: 7)
!1312 = !DILocation(line: 83, column: 5, scope: !1311)
!1313 = !DILocation(line: 84, column: 3, scope: !1278)
!1314 = !DILocation(line: 84, column: 15, scope: !1278)
!1315 = !DILocation(line: 85, column: 3, scope: !1278)
!1316 = !DILocation(line: 86, column: 1, scope: !1278)
!1317 = distinct !DISubprogram(name: "last_component", scope: !1318, file: !1318, line: 30, type: !1236, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !1319)
!1318 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1319 = !{!1320, !1321, !1322, !1323}
!1320 = !DILocalVariable(name: "name", arg: 1, scope: !1317, file: !1318, line: 30, type: !29)
!1321 = !DILocalVariable(name: "base", scope: !1317, file: !1318, line: 32, type: !29)
!1322 = !DILocalVariable(name: "p", scope: !1317, file: !1318, line: 33, type: !29)
!1323 = !DILocalVariable(name: "saw_slash", scope: !1317, file: !1318, line: 34, type: !107)
!1324 = !DILocation(line: 30, column: 29, scope: !1317)
!1325 = !DILocation(line: 32, column: 15, scope: !1317)
!1326 = !DILocation(line: 34, column: 8, scope: !1317)
!1327 = !DILocation(line: 36, column: 3, scope: !1317)
!1328 = !DILocation(line: 36, column: 10, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1317, file: !1318, discriminator: 1)
!1330 = !DILocation(line: 37, column: 9, scope: !1317)
!1331 = !DILocation(line: 36, column: 3, scope: !1329)
!1332 = distinct !{!1332, !1327, !1330}
!1333 = !DILocation(line: 39, column: 18, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1335, file: !1318, discriminator: 1)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !1318, line: 39, column: 3)
!1336 = distinct !DILexicalBlock(scope: !1317, file: !1318, line: 39, column: 3)
!1337 = !DILocation(line: 33, column: 15, scope: !1317)
!1338 = !DILocation(line: 39, column: 3, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1336, file: !1318, discriminator: 1)
!1340 = !DILocation(line: 43, column: 16, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !1318, line: 43, column: 16)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !1318, line: 41, column: 11)
!1343 = distinct !DILexicalBlock(scope: !1335, file: !1318, line: 40, column: 5)
!1344 = !DILocation(line: 43, column: 16, scope: !1342)
!1345 = !DILocation(line: 39, column: 23, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1335, file: !1318, discriminator: 2)
!1347 = !DILocation(line: 39, column: 3, scope: !1346)
!1348 = distinct !{!1348, !1349, !1350}
!1349 = !DILocation(line: 39, column: 3, scope: !1336)
!1350 = !DILocation(line: 48, column: 5, scope: !1336)
!1351 = !DILocation(line: 50, column: 3, scope: !1317)
!1352 = distinct !DISubprogram(name: "base_len", scope: !1318, file: !1318, line: 58, type: !1251, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !1353)
!1353 = !{!1354, !1355, !1356}
!1354 = !DILocalVariable(name: "name", arg: 1, scope: !1352, file: !1318, line: 58, type: !29)
!1355 = !DILocalVariable(name: "len", scope: !1352, file: !1318, line: 60, type: !21)
!1356 = !DILocalVariable(name: "prefix_len", scope: !1352, file: !1318, line: 61, type: !21)
!1357 = !DILocation(line: 58, column: 23, scope: !1352)
!1358 = !DILocation(line: 61, column: 10, scope: !1352)
!1359 = !DILocation(line: 63, column: 14, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1352, file: !1318, line: 63, column: 3)
!1361 = !DILocation(line: 60, column: 10, scope: !1352)
!1362 = !DILocation(line: 63, column: 8, scope: !1360)
!1363 = !DILocation(line: 63, column: 32, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !1318, discriminator: 1)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !1318, line: 63, column: 3)
!1366 = !DILocation(line: 63, column: 38, scope: !1364)
!1367 = !DILocation(line: 63, column: 41, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1365, file: !1318, discriminator: 2)
!1369 = !DILocation(line: 63, column: 3, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1360, file: !1318, discriminator: 3)
!1371 = distinct !{!1371, !1372, !1373}
!1372 = !DILocation(line: 63, column: 3, scope: !1360)
!1373 = !DILocation(line: 64, column: 5, scope: !1360)
!1374 = !DILocation(line: 74, column: 3, scope: !1352)
!1375 = distinct !DISubprogram(name: "file_name_concat", scope: !1376, file: !1376, line: 35, type: !1377, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !1379)
!1376 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!32, !29, !29, !733}
!1379 = !{!1380, !1381, !1382, !1383}
!1380 = !DILocalVariable(name: "dir", arg: 1, scope: !1375, file: !1376, line: 35, type: !29)
!1381 = !DILocalVariable(name: "abase", arg: 2, scope: !1375, file: !1376, line: 35, type: !29)
!1382 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1375, file: !1376, line: 35, type: !733)
!1383 = !DILocalVariable(name: "p", scope: !1375, file: !1376, line: 37, type: !32)
!1384 = !DILocation(line: 35, column: 31, scope: !1375)
!1385 = !DILocation(line: 35, column: 48, scope: !1375)
!1386 = !DILocation(line: 35, column: 62, scope: !1375)
!1387 = !DILocation(line: 37, column: 13, scope: !1375)
!1388 = !DILocation(line: 37, column: 9, scope: !1375)
!1389 = !DILocation(line: 38, column: 9, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1375, file: !1376, line: 38, column: 7)
!1391 = !DILocation(line: 38, column: 7, scope: !1375)
!1392 = !DILocation(line: 39, column: 5, scope: !1390)
!1393 = !DILocation(line: 40, column: 3, scope: !1375)
!1394 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1395, file: !1395, line: 61, type: !1377, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !1396)
!1395 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407}
!1397 = !DILocalVariable(name: "dir", arg: 1, scope: !1394, file: !1395, line: 61, type: !29)
!1398 = !DILocalVariable(name: "abase", arg: 2, scope: !1394, file: !1395, line: 61, type: !29)
!1399 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1394, file: !1395, line: 61, type: !733)
!1400 = !DILocalVariable(name: "dirbase", scope: !1394, file: !1395, line: 63, type: !29)
!1401 = !DILocalVariable(name: "dirbaselen", scope: !1394, file: !1395, line: 64, type: !21)
!1402 = !DILocalVariable(name: "dirlen", scope: !1394, file: !1395, line: 65, type: !21)
!1403 = !DILocalVariable(name: "needs_separator", scope: !1394, file: !1395, line: 66, type: !21)
!1404 = !DILocalVariable(name: "base", scope: !1394, file: !1395, line: 68, type: !29)
!1405 = !DILocalVariable(name: "baselen", scope: !1394, file: !1395, line: 69, type: !21)
!1406 = !DILocalVariable(name: "p_concat", scope: !1394, file: !1395, line: 71, type: !32)
!1407 = !DILocalVariable(name: "p", scope: !1394, file: !1395, line: 72, type: !32)
!1408 = !DILocation(line: 61, column: 32, scope: !1394)
!1409 = !DILocation(line: 61, column: 49, scope: !1394)
!1410 = !DILocation(line: 61, column: 63, scope: !1394)
!1411 = !DILocation(line: 63, column: 25, scope: !1394)
!1412 = !DILocation(line: 63, column: 15, scope: !1394)
!1413 = !DILocation(line: 64, column: 23, scope: !1394)
!1414 = !DILocation(line: 64, column: 10, scope: !1394)
!1415 = !DILocation(line: 65, column: 27, scope: !1394)
!1416 = !DILocation(line: 65, column: 33, scope: !1394)
!1417 = !DILocation(line: 65, column: 10, scope: !1394)
!1418 = !DILocation(line: 66, column: 29, scope: !1394)
!1419 = !DILocation(line: 66, column: 40, scope: !1394)
!1420 = !DILocation(line: 66, column: 45, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1394, file: !1395, discriminator: 1)
!1422 = !DILocation(line: 66, column: 43, scope: !1421)
!1423 = !DILocation(line: 66, column: 10, scope: !1394)
!1424 = !DILocalVariable(name: "f", arg: 1, scope: !1425, file: !1395, line: 38, type: !29)
!1425 = distinct !DISubprogram(name: "longest_relative_suffix", scope: !1395, file: !1395, line: 38, type: !1426, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!29, !29}
!1428 = !{!1424}
!1429 = !DILocation(line: 38, column: 38, scope: !1425, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 68, column: 22, scope: !1394)
!1431 = !DILocation(line: 40, column: 8, scope: !1432, inlinedAt: !1430)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !1395, line: 40, column: 3)
!1433 = !DILocation(line: 40, column: 41, scope: !1434, inlinedAt: !1430)
!1434 = !DILexicalBlockFile(scope: !1435, file: !1395, discriminator: 1)
!1435 = distinct !DILexicalBlock(scope: !1432, file: !1395, line: 40, column: 3)
!1436 = !DILocation(line: 40, column: 56, scope: !1437, inlinedAt: !1430)
!1437 = !DILexicalBlockFile(scope: !1435, file: !1395, discriminator: 2)
!1438 = !DILocation(line: 40, column: 3, scope: !1439, inlinedAt: !1430)
!1439 = !DILexicalBlockFile(scope: !1432, file: !1395, discriminator: 1)
!1440 = distinct !{!1440, !1441, !1442}
!1441 = !DILocation(line: 40, column: 3, scope: !1432)
!1442 = !DILocation(line: 41, column: 5, scope: !1432)
!1443 = !DILocation(line: 66, column: 28, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1394, file: !1395, discriminator: 2)
!1445 = !DILocation(line: 68, column: 15, scope: !1394)
!1446 = !DILocation(line: 69, column: 20, scope: !1394)
!1447 = !DILocation(line: 69, column: 10, scope: !1394)
!1448 = !DILocation(line: 71, column: 35, scope: !1394)
!1449 = !DILocation(line: 71, column: 53, scope: !1394)
!1450 = !DILocation(line: 71, column: 63, scope: !1394)
!1451 = !DILocation(line: 71, column: 20, scope: !1394)
!1452 = !DILocation(line: 71, column: 9, scope: !1394)
!1453 = !DILocation(line: 74, column: 16, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1394, file: !1395, line: 74, column: 7)
!1455 = !DILocation(line: 74, column: 7, scope: !1394)
!1456 = !DILocalVariable(name: "__dest", arg: 1, scope: !1457, file: !1458, line: 64, type: !1461)
!1457 = distinct !DISubprogram(name: "mempcpy", scope: !1458, file: !1458, line: 64, type: !1459, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !1463)
!1458 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!33, !1461, !1462, !21}
!1461 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!1462 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!1463 = !{!1456, !1464, !1465}
!1464 = !DILocalVariable(name: "__src", arg: 2, scope: !1457, file: !1458, line: 64, type: !1462)
!1465 = !DILocalVariable(name: "__len", arg: 3, scope: !1457, file: !1458, line: 64, type: !21)
!1466 = !DILocation(line: 64, column: 1, scope: !1457, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 77, column: 7, scope: !1394)
!1468 = !DILocation(line: 67, column: 57, scope: !1457, inlinedAt: !1467)
!1469 = !DILocation(line: 67, column: 10, scope: !1457, inlinedAt: !1467)
!1470 = !DILocation(line: 72, column: 9, scope: !1394)
!1471 = !DILocation(line: 78, column: 6, scope: !1394)
!1472 = !DILocation(line: 79, column: 5, scope: !1394)
!1473 = !DILocation(line: 81, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1394, file: !1395, line: 81, column: 7)
!1475 = !DILocation(line: 81, column: 7, scope: !1394)
!1476 = !DILocation(line: 82, column: 27, scope: !1474)
!1477 = !DILocation(line: 82, column: 25, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1474, file: !1395, discriminator: 2)
!1479 = !DILocation(line: 82, column: 21, scope: !1478)
!1480 = !DILocation(line: 82, column: 5, scope: !1478)
!1481 = !DILocation(line: 64, column: 1, scope: !1457, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 84, column: 7, scope: !1394)
!1483 = !DILocation(line: 67, column: 57, scope: !1457, inlinedAt: !1482)
!1484 = !DILocation(line: 67, column: 10, scope: !1457, inlinedAt: !1482)
!1485 = !DILocation(line: 85, column: 6, scope: !1394)
!1486 = !DILocation(line: 87, column: 3, scope: !1394)
!1487 = !DILocation(line: 88, column: 1, scope: !1394)
!1488 = distinct !DISubprogram(name: "set_program_name", scope: !121, file: !121, line: 39, type: !55, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !117, variables: !1489)
!1489 = !{!1490, !1491, !1492}
!1490 = !DILocalVariable(name: "argv0", arg: 1, scope: !1488, file: !121, line: 39, type: !29)
!1491 = !DILocalVariable(name: "slash", scope: !1488, file: !121, line: 46, type: !29)
!1492 = !DILocalVariable(name: "base", scope: !1488, file: !121, line: 47, type: !29)
!1493 = !DILocation(line: 39, column: 31, scope: !1488)
!1494 = !DILocation(line: 51, column: 13, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1488, file: !121, line: 51, column: 7)
!1496 = !DILocation(line: 51, column: 7, scope: !1488)
!1497 = !DILocation(line: 55, column: 14, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1495, file: !121, line: 52, column: 5)
!1499 = !DILocation(line: 54, column: 7, scope: !1498)
!1500 = !DILocation(line: 56, column: 7, scope: !1498)
!1501 = !DILocation(line: 59, column: 11, scope: !1488)
!1502 = !DILocation(line: 46, column: 15, scope: !1488)
!1503 = !DILocation(line: 60, column: 17, scope: !1488)
!1504 = !DILocation(line: 60, column: 33, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1488, file: !121, discriminator: 1)
!1506 = !DILocation(line: 60, column: 11, scope: !1488)
!1507 = !DILocation(line: 47, column: 15, scope: !1488)
!1508 = !DILocation(line: 61, column: 12, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1488, file: !121, line: 61, column: 7)
!1510 = !DILocation(line: 61, column: 20, scope: !1509)
!1511 = !DILocation(line: 61, column: 25, scope: !1509)
!1512 = !DILocation(line: 61, column: 28, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1509, file: !121, discriminator: 1)
!1514 = !DILocation(line: 61, column: 61, scope: !1513)
!1515 = !DILocation(line: 61, column: 7, scope: !1505)
!1516 = !DILocation(line: 64, column: 11, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !121, line: 64, column: 11)
!1518 = distinct !DILexicalBlock(scope: !1509, file: !121, line: 62, column: 5)
!1519 = !DILocation(line: 64, column: 36, scope: !1517)
!1520 = !DILocation(line: 64, column: 11, scope: !1518)
!1521 = !DILocation(line: 66, column: 24, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !121, line: 65, column: 9)
!1523 = !DILocation(line: 70, column: 41, scope: !1522)
!1524 = !DILocation(line: 72, column: 9, scope: !1522)
!1525 = !DILocation(line: 84, column: 16, scope: !1488)
!1526 = !DILocation(line: 90, column: 27, scope: !1488)
!1527 = !DILocation(line: 92, column: 1, scope: !1488)
!1528 = distinct !DISubprogram(name: "clone_quoting_options", scope: !166, file: !166, line: 114, type: !1529, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1532)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!1531, !1531}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!1532 = !{!1533, !1534, !1535}
!1533 = !DILocalVariable(name: "o", arg: 1, scope: !1528, file: !166, line: 114, type: !1531)
!1534 = !DILocalVariable(name: "e", scope: !1528, file: !166, line: 116, type: !48)
!1535 = !DILocalVariable(name: "p", scope: !1528, file: !166, line: 117, type: !1531)
!1536 = !DILocation(line: 114, column: 48, scope: !1528)
!1537 = !DILocation(line: 116, column: 11, scope: !1528)
!1538 = !DILocation(line: 116, column: 7, scope: !1528)
!1539 = !DILocation(line: 117, column: 40, scope: !1528)
!1540 = !DILocation(line: 117, column: 40, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1528, file: !166, discriminator: 3)
!1542 = !DILocation(line: 117, column: 31, scope: !1541)
!1543 = !DILocation(line: 117, column: 27, scope: !1528)
!1544 = !DILocation(line: 119, column: 9, scope: !1528)
!1545 = !DILocation(line: 120, column: 3, scope: !1528)
!1546 = distinct !DISubprogram(name: "get_quoting_style", scope: !166, file: !166, line: 125, type: !1547, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1551)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!127, !1549}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!1551 = !{!1552}
!1552 = !DILocalVariable(name: "o", arg: 1, scope: !1546, file: !166, line: 125, type: !1549)
!1553 = !DILocation(line: 125, column: 50, scope: !1546)
!1554 = !DILocation(line: 127, column: 11, scope: !1546)
!1555 = !DILocation(line: 127, column: 46, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1546, file: !166, discriminator: 3)
!1557 = !{!1558, !674, i64 0}
!1558 = !{!"quoting_options", !674, i64 0, !815, i64 4, !674, i64 8, !673, i64 40, !673, i64 48}
!1559 = !DILocation(line: 127, column: 3, scope: !1556)
!1560 = distinct !DISubprogram(name: "set_quoting_style", scope: !166, file: !166, line: 133, type: !1561, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1531, !127}
!1563 = !{!1564, !1565}
!1564 = !DILocalVariable(name: "o", arg: 1, scope: !1560, file: !166, line: 133, type: !1531)
!1565 = !DILocalVariable(name: "s", arg: 2, scope: !1560, file: !166, line: 133, type: !127)
!1566 = !DILocation(line: 133, column: 44, scope: !1560)
!1567 = !DILocation(line: 133, column: 66, scope: !1560)
!1568 = !DILocation(line: 135, column: 4, scope: !1560)
!1569 = !DILocation(line: 135, column: 39, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1560, file: !166, discriminator: 3)
!1571 = !DILocation(line: 135, column: 45, scope: !1570)
!1572 = !DILocation(line: 136, column: 1, scope: !1560)
!1573 = distinct !DISubprogram(name: "set_char_quoting", scope: !166, file: !166, line: 144, type: !1574, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1576)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!48, !1531, !31, !48}
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1583, !1584}
!1577 = !DILocalVariable(name: "o", arg: 1, scope: !1573, file: !166, line: 144, type: !1531)
!1578 = !DILocalVariable(name: "c", arg: 2, scope: !1573, file: !166, line: 144, type: !31)
!1579 = !DILocalVariable(name: "i", arg: 3, scope: !1573, file: !166, line: 144, type: !48)
!1580 = !DILocalVariable(name: "uc", scope: !1573, file: !166, line: 146, type: !28)
!1581 = !DILocalVariable(name: "p", scope: !1573, file: !166, line: 147, type: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1583 = !DILocalVariable(name: "shift", scope: !1573, file: !166, line: 149, type: !48)
!1584 = !DILocalVariable(name: "r", scope: !1573, file: !166, line: 150, type: !48)
!1585 = !DILocation(line: 144, column: 43, scope: !1573)
!1586 = !DILocation(line: 144, column: 51, scope: !1573)
!1587 = !DILocation(line: 144, column: 58, scope: !1573)
!1588 = !DILocation(line: 146, column: 17, scope: !1573)
!1589 = !DILocation(line: 148, column: 6, scope: !1573)
!1590 = !DILocation(line: 148, column: 62, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1573, file: !166, discriminator: 3)
!1592 = !DILocation(line: 148, column: 57, scope: !1591)
!1593 = !DILocation(line: 147, column: 17, scope: !1573)
!1594 = !DILocation(line: 149, column: 18, scope: !1573)
!1595 = !DILocation(line: 149, column: 15, scope: !1573)
!1596 = !DILocation(line: 149, column: 7, scope: !1573)
!1597 = !DILocation(line: 150, column: 12, scope: !1573)
!1598 = !DILocation(line: 150, column: 15, scope: !1573)
!1599 = !DILocation(line: 150, column: 25, scope: !1573)
!1600 = !DILocation(line: 150, column: 7, scope: !1573)
!1601 = !DILocation(line: 151, column: 13, scope: !1573)
!1602 = !DILocation(line: 151, column: 18, scope: !1573)
!1603 = !DILocation(line: 151, column: 23, scope: !1573)
!1604 = !DILocation(line: 151, column: 6, scope: !1573)
!1605 = !DILocation(line: 152, column: 3, scope: !1573)
!1606 = distinct !DISubprogram(name: "set_quoting_flags", scope: !166, file: !166, line: 160, type: !1607, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1609)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!48, !1531, !48}
!1609 = !{!1610, !1611, !1612}
!1610 = !DILocalVariable(name: "o", arg: 1, scope: !1606, file: !166, line: 160, type: !1531)
!1611 = !DILocalVariable(name: "i", arg: 2, scope: !1606, file: !166, line: 160, type: !48)
!1612 = !DILocalVariable(name: "r", scope: !1606, file: !166, line: 162, type: !48)
!1613 = !DILocation(line: 160, column: 44, scope: !1606)
!1614 = !DILocation(line: 160, column: 51, scope: !1606)
!1615 = !DILocation(line: 163, column: 8, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1606, file: !166, line: 163, column: 7)
!1617 = !DILocation(line: 163, column: 7, scope: !1606)
!1618 = !DILocation(line: 165, column: 10, scope: !1606)
!1619 = !{!1558, !815, i64 4}
!1620 = !DILocation(line: 162, column: 7, scope: !1606)
!1621 = !DILocation(line: 166, column: 12, scope: !1606)
!1622 = !DILocation(line: 167, column: 3, scope: !1606)
!1623 = distinct !DISubprogram(name: "set_custom_quoting", scope: !166, file: !166, line: 171, type: !1624, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1626)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1531, !29, !29}
!1626 = !{!1627, !1628, !1629}
!1627 = !DILocalVariable(name: "o", arg: 1, scope: !1623, file: !166, line: 171, type: !1531)
!1628 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1623, file: !166, line: 172, type: !29)
!1629 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1623, file: !166, line: 172, type: !29)
!1630 = !DILocation(line: 171, column: 45, scope: !1623)
!1631 = !DILocation(line: 172, column: 33, scope: !1623)
!1632 = !DILocation(line: 172, column: 57, scope: !1623)
!1633 = !DILocation(line: 174, column: 8, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1623, file: !166, line: 174, column: 7)
!1635 = !DILocation(line: 174, column: 7, scope: !1623)
!1636 = !DILocation(line: 176, column: 6, scope: !1623)
!1637 = !DILocation(line: 176, column: 12, scope: !1623)
!1638 = !DILocation(line: 177, column: 8, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1623, file: !166, line: 177, column: 7)
!1640 = !DILocation(line: 177, column: 23, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1639, file: !166, discriminator: 1)
!1642 = !DILocation(line: 177, column: 19, scope: !1639)
!1643 = !DILocation(line: 178, column: 5, scope: !1639)
!1644 = !DILocation(line: 179, column: 6, scope: !1623)
!1645 = !DILocation(line: 179, column: 17, scope: !1623)
!1646 = !{!1558, !673, i64 40}
!1647 = !DILocation(line: 180, column: 6, scope: !1623)
!1648 = !DILocation(line: 180, column: 18, scope: !1623)
!1649 = !{!1558, !673, i64 48}
!1650 = !DILocation(line: 181, column: 1, scope: !1623)
!1651 = distinct !DISubprogram(name: "quotearg_buffer", scope: !166, file: !166, line: 776, type: !1652, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1654)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!21, !32, !21, !29, !21, !1549}
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662}
!1655 = !DILocalVariable(name: "buffer", arg: 1, scope: !1651, file: !166, line: 776, type: !32)
!1656 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1651, file: !166, line: 776, type: !21)
!1657 = !DILocalVariable(name: "arg", arg: 3, scope: !1651, file: !166, line: 777, type: !29)
!1658 = !DILocalVariable(name: "argsize", arg: 4, scope: !1651, file: !166, line: 777, type: !21)
!1659 = !DILocalVariable(name: "o", arg: 5, scope: !1651, file: !166, line: 778, type: !1549)
!1660 = !DILocalVariable(name: "p", scope: !1651, file: !166, line: 780, type: !1549)
!1661 = !DILocalVariable(name: "e", scope: !1651, file: !166, line: 781, type: !48)
!1662 = !DILocalVariable(name: "r", scope: !1651, file: !166, line: 782, type: !21)
!1663 = !DILocation(line: 776, column: 24, scope: !1651)
!1664 = !DILocation(line: 776, column: 39, scope: !1651)
!1665 = !DILocation(line: 777, column: 30, scope: !1651)
!1666 = !DILocation(line: 777, column: 42, scope: !1651)
!1667 = !DILocation(line: 778, column: 48, scope: !1651)
!1668 = !DILocation(line: 780, column: 37, scope: !1651)
!1669 = !DILocation(line: 780, column: 33, scope: !1651)
!1670 = !DILocation(line: 781, column: 11, scope: !1651)
!1671 = !DILocation(line: 781, column: 7, scope: !1651)
!1672 = !DILocation(line: 783, column: 43, scope: !1651)
!1673 = !DILocation(line: 783, column: 53, scope: !1651)
!1674 = !DILocation(line: 783, column: 60, scope: !1651)
!1675 = !DILocation(line: 784, column: 43, scope: !1651)
!1676 = !DILocation(line: 784, column: 58, scope: !1651)
!1677 = !DILocation(line: 782, column: 14, scope: !1651)
!1678 = !DILocation(line: 782, column: 10, scope: !1651)
!1679 = !DILocation(line: 785, column: 9, scope: !1651)
!1680 = !DILocation(line: 786, column: 3, scope: !1651)
!1681 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !166, file: !166, line: 248, type: !1682, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1686)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!21, !32, !21, !29, !21, !127, !48, !1684, !29, !29}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1711, !1712, !1713, !1714, !1715, !1718, !1719, !1736, !1739, !1740, !1747}
!1687 = !DILocalVariable(name: "buffer", arg: 1, scope: !1681, file: !166, line: 248, type: !32)
!1688 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1681, file: !166, line: 248, type: !21)
!1689 = !DILocalVariable(name: "arg", arg: 3, scope: !1681, file: !166, line: 249, type: !29)
!1690 = !DILocalVariable(name: "argsize", arg: 4, scope: !1681, file: !166, line: 249, type: !21)
!1691 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1681, file: !166, line: 250, type: !127)
!1692 = !DILocalVariable(name: "flags", arg: 6, scope: !1681, file: !166, line: 250, type: !48)
!1693 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1681, file: !166, line: 251, type: !1684)
!1694 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1681, file: !166, line: 252, type: !29)
!1695 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1681, file: !166, line: 253, type: !29)
!1696 = !DILocalVariable(name: "i", scope: !1681, file: !166, line: 255, type: !21)
!1697 = !DILocalVariable(name: "len", scope: !1681, file: !166, line: 256, type: !21)
!1698 = !DILocalVariable(name: "orig_buffersize", scope: !1681, file: !166, line: 257, type: !21)
!1699 = !DILocalVariable(name: "quote_string", scope: !1681, file: !166, line: 258, type: !29)
!1700 = !DILocalVariable(name: "quote_string_len", scope: !1681, file: !166, line: 259, type: !21)
!1701 = !DILocalVariable(name: "backslash_escapes", scope: !1681, file: !166, line: 260, type: !107)
!1702 = !DILocalVariable(name: "unibyte_locale", scope: !1681, file: !166, line: 261, type: !107)
!1703 = !DILocalVariable(name: "elide_outer_quotes", scope: !1681, file: !166, line: 262, type: !107)
!1704 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1681, file: !166, line: 263, type: !107)
!1705 = !DILocalVariable(name: "encountered_single_quote", scope: !1681, file: !166, line: 264, type: !107)
!1706 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1681, file: !166, line: 265, type: !107)
!1707 = !DILocalVariable(name: "c", scope: !1708, file: !166, line: 394, type: !28)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !166, line: 393, column: 5)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !166, line: 392, column: 3)
!1710 = distinct !DILexicalBlock(scope: !1681, file: !166, line: 392, column: 3)
!1711 = !DILocalVariable(name: "esc", scope: !1708, file: !166, line: 395, type: !28)
!1712 = !DILocalVariable(name: "is_right_quote", scope: !1708, file: !166, line: 396, type: !107)
!1713 = !DILocalVariable(name: "escaping", scope: !1708, file: !166, line: 397, type: !107)
!1714 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1708, file: !166, line: 398, type: !107)
!1715 = !DILocalVariable(name: "m", scope: !1716, file: !166, line: 602, type: !21)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !166, line: 600, column: 11)
!1717 = distinct !DILexicalBlock(scope: !1708, file: !166, line: 418, column: 9)
!1718 = !DILocalVariable(name: "printable", scope: !1716, file: !166, line: 604, type: !107)
!1719 = !DILocalVariable(name: "mbstate", scope: !1720, file: !166, line: 613, type: !1722)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !166, line: 612, column: 15)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !166, line: 606, column: 17)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1723, line: 107, baseType: !1724)
!1723 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1723, line: 95, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1723, line: 83, size: 64, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1725, file: !1723, line: 85, baseType: !48, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1725, file: !1723, line: 94, baseType: !1729, size: 32, offset: 32)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !1723, line: 86, size: 32, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1729, file: !1723, line: 89, baseType: !179, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1729, file: !1723, line: 93, baseType: !1733, size: 32)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !1734)
!1734 = !{!1735}
!1735 = !DISubrange(count: 4)
!1736 = !DILocalVariable(name: "w", scope: !1737, file: !166, line: 623, type: !1738)
!1737 = distinct !DILexicalBlock(scope: !1720, file: !166, line: 622, column: 19)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !22, line: 90, baseType: !48)
!1739 = !DILocalVariable(name: "bytes", scope: !1737, file: !166, line: 624, type: !21)
!1740 = !DILocalVariable(name: "j", scope: !1741, file: !166, line: 649, type: !21)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !166, line: 648, column: 27)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !166, line: 646, column: 29)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !166, line: 641, column: 23)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !166, line: 633, column: 30)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !166, line: 628, column: 30)
!1746 = distinct !DILexicalBlock(scope: !1737, file: !166, line: 626, column: 25)
!1747 = !DILocalVariable(name: "ilim", scope: !1748, file: !166, line: 676, type: !21)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !166, line: 673, column: 15)
!1749 = distinct !DILexicalBlock(scope: !1716, file: !166, line: 672, column: 17)
!1750 = !DILocation(line: 248, column: 33, scope: !1681)
!1751 = !DILocation(line: 248, column: 48, scope: !1681)
!1752 = !DILocation(line: 249, column: 39, scope: !1681)
!1753 = !DILocation(line: 249, column: 51, scope: !1681)
!1754 = !DILocation(line: 250, column: 46, scope: !1681)
!1755 = !DILocation(line: 250, column: 65, scope: !1681)
!1756 = !DILocation(line: 251, column: 47, scope: !1681)
!1757 = !DILocation(line: 252, column: 39, scope: !1681)
!1758 = !DILocation(line: 253, column: 39, scope: !1681)
!1759 = !DILocation(line: 256, column: 10, scope: !1681)
!1760 = !DILocation(line: 257, column: 10, scope: !1681)
!1761 = !DILocation(line: 258, column: 15, scope: !1681)
!1762 = !DILocation(line: 259, column: 10, scope: !1681)
!1763 = !DILocation(line: 260, column: 8, scope: !1681)
!1764 = !DILocation(line: 261, column: 25, scope: !1681)
!1765 = !DILocation(line: 261, column: 36, scope: !1681)
!1766 = !DILocation(line: 262, column: 8, scope: !1681)
!1767 = !DILocation(line: 263, column: 8, scope: !1681)
!1768 = !DILocation(line: 264, column: 8, scope: !1681)
!1769 = !DILocation(line: 265, column: 8, scope: !1681)
!1770 = !DILocation(line: 265, column: 3, scope: !1681)
!1771 = !DILocation(line: 308, column: 3, scope: !1681)
!1772 = !DILocation(line: 315, column: 11, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1681, file: !166, line: 309, column: 5)
!1774 = !DILocation(line: 315, column: 12, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1773, file: !166, line: 315, column: 11)
!1776 = !DILocation(line: 316, column: 9, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1778, file: !166, discriminator: 1)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !166, line: 316, column: 9)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !166, line: 316, column: 9)
!1780 = !DILocation(line: 316, column: 9, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1779, file: !166, discriminator: 1)
!1782 = !DILocation(line: 316, column: 9, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1778, file: !166, discriminator: 2)
!1784 = !DILocation(line: 354, column: 26, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !166, line: 332, column: 11)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !166, line: 331, column: 13)
!1787 = distinct !DILexicalBlock(scope: !1773, file: !166, line: 330, column: 7)
!1788 = !DILocation(line: 355, column: 27, scope: !1785)
!1789 = !DILocation(line: 356, column: 11, scope: !1785)
!1790 = !DILocation(line: 357, column: 14, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !166, line: 357, column: 13)
!1792 = !DILocation(line: 357, column: 13, scope: !1787)
!1793 = !DILocation(line: 358, column: 43, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1795, file: !166, discriminator: 1)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !166, line: 358, column: 11)
!1796 = distinct !DILexicalBlock(scope: !1791, file: !166, line: 358, column: 11)
!1797 = !DILocation(line: 358, column: 11, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1796, file: !166, discriminator: 1)
!1799 = !DILocation(line: 359, column: 13, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1801, file: !166, discriminator: 1)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !166, line: 359, column: 13)
!1802 = distinct !DILexicalBlock(scope: !1795, file: !166, line: 359, column: 13)
!1803 = !DILocation(line: 359, column: 13, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1802, file: !166, discriminator: 1)
!1805 = !DILocation(line: 359, column: 13, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1801, file: !166, discriminator: 2)
!1807 = !DILocation(line: 359, column: 13, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1802, file: !166, discriminator: 3)
!1809 = !DILocation(line: 358, column: 70, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1795, file: !166, discriminator: 2)
!1811 = distinct !{!1811, !1812, !1813}
!1812 = !DILocation(line: 358, column: 11, scope: !1796)
!1813 = !DILocation(line: 359, column: 13, scope: !1796)
!1814 = !DILocation(line: 362, column: 28, scope: !1787)
!1815 = !DILocation(line: 364, column: 7, scope: !1773)
!1816 = !DILocation(line: 367, column: 7, scope: !1773)
!1817 = !DILocation(line: 370, column: 7, scope: !1773)
!1818 = !DILocation(line: 373, column: 12, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1773, file: !166, line: 373, column: 11)
!1820 = !DILocation(line: 373, column: 11, scope: !1773)
!1821 = !DILocation(line: 378, column: 12, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1773, file: !166, line: 378, column: 11)
!1823 = !DILocation(line: 378, column: 11, scope: !1773)
!1824 = !DILocation(line: 379, column: 9, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1826, file: !166, discriminator: 1)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !166, line: 379, column: 9)
!1827 = distinct !DILexicalBlock(scope: !1822, file: !166, line: 379, column: 9)
!1828 = !DILocation(line: 379, column: 9, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1827, file: !166, discriminator: 1)
!1830 = !DILocation(line: 379, column: 9, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1826, file: !166, discriminator: 2)
!1832 = !DILocation(line: 386, column: 7, scope: !1773)
!1833 = !DILocation(line: 389, column: 7, scope: !1773)
!1834 = !DILocation(line: 255, column: 10, scope: !1681)
!1835 = !DILocation(line: 392, column: 8, scope: !1710)
!1836 = !DILocation(line: 392, column: 27, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1709, file: !166, discriminator: 1)
!1838 = !DILocation(line: 392, column: 19, scope: !1837)
!1839 = !DILocation(line: 392, column: 60, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1709, file: !166, discriminator: 3)
!1841 = !DILocation(line: 392, column: 3, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1710, file: !166, discriminator: 4)
!1843 = !DILocation(line: 392, column: 41, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1709, file: !166, discriminator: 2)
!1845 = !DILocation(line: 392, column: 48, scope: !1844)
!1846 = !DILocation(line: 396, column: 12, scope: !1708)
!1847 = !DILocation(line: 397, column: 12, scope: !1708)
!1848 = !DILocation(line: 398, column: 12, scope: !1708)
!1849 = !DILocation(line: 401, column: 11, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1708, file: !166, line: 400, column: 11)
!1851 = !DILocation(line: 403, column: 17, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1850, file: !166, discriminator: 1)
!1853 = !DILocation(line: 404, column: 39, scope: !1850)
!1854 = !DILocation(line: 408, column: 32, scope: !1850)
!1855 = !DILocation(line: 404, column: 19, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1850, file: !166, discriminator: 2)
!1857 = !DILocation(line: 404, column: 15, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1850, file: !166, discriminator: 4)
!1859 = !DILocation(line: 409, column: 11, scope: !1850)
!1860 = !DILocation(line: 409, column: 26, scope: !1852)
!1861 = !DILocation(line: 409, column: 14, scope: !1852)
!1862 = !DILocation(line: 400, column: 11, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1708, file: !166, discriminator: 1)
!1864 = !DILocation(line: 416, column: 11, scope: !1708)
!1865 = !DILocation(line: 394, column: 21, scope: !1708)
!1866 = !DILocation(line: 417, column: 7, scope: !1708)
!1867 = !DILocation(line: 420, column: 15, scope: !1717)
!1868 = !DILocation(line: 422, column: 15, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1870, file: !166, discriminator: 1)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !166, line: 422, column: 15)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !166, line: 421, column: 13)
!1872 = distinct !DILexicalBlock(scope: !1717, file: !166, line: 420, column: 15)
!1873 = !DILocation(line: 422, column: 15, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1875, file: !166, discriminator: 4)
!1875 = distinct !DILexicalBlock(scope: !1870, file: !166, line: 422, column: 15)
!1876 = !DILocation(line: 422, column: 15, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1875, file: !166, discriminator: 3)
!1878 = !DILocation(line: 422, column: 15, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1880, file: !166, discriminator: 6)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !166, line: 422, column: 15)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !166, line: 422, column: 15)
!1882 = distinct !DILexicalBlock(scope: !1875, file: !166, line: 422, column: 15)
!1883 = !DILocation(line: 422, column: 15, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1881, file: !166, discriminator: 6)
!1885 = !DILocation(line: 422, column: 15, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1880, file: !166, discriminator: 7)
!1887 = !DILocation(line: 422, column: 15, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1881, file: !166, discriminator: 8)
!1889 = !DILocation(line: 422, column: 15, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1891, file: !166, discriminator: 11)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !166, line: 422, column: 15)
!1892 = distinct !DILexicalBlock(scope: !1882, file: !166, line: 422, column: 15)
!1893 = !DILocation(line: 422, column: 15, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1892, file: !166, discriminator: 11)
!1895 = !DILocation(line: 422, column: 15, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1891, file: !166, discriminator: 12)
!1897 = !DILocation(line: 422, column: 15, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1892, file: !166, discriminator: 13)
!1899 = !DILocation(line: 422, column: 15, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1901, file: !166, discriminator: 16)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !166, line: 422, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1882, file: !166, line: 422, column: 15)
!1903 = !DILocation(line: 422, column: 15, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1902, file: !166, discriminator: 16)
!1905 = !DILocation(line: 422, column: 15, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1901, file: !166, discriminator: 17)
!1907 = !DILocation(line: 422, column: 15, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1902, file: !166, discriminator: 18)
!1909 = !DILocation(line: 422, column: 15, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1882, file: !166, discriminator: 20)
!1911 = !DILocation(line: 422, column: 15, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !1913, file: !166, discriminator: 22)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !166, line: 422, column: 15)
!1914 = distinct !DILexicalBlock(scope: !1870, file: !166, line: 422, column: 15)
!1915 = !DILocation(line: 422, column: 15, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1914, file: !166, discriminator: 22)
!1917 = !DILocation(line: 422, column: 15, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1913, file: !166, discriminator: 23)
!1919 = !DILocation(line: 422, column: 15, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1914, file: !166, discriminator: 24)
!1921 = !DILocation(line: 430, column: 19, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1871, file: !166, line: 429, column: 19)
!1923 = !DILocation(line: 430, column: 24, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1922, file: !166, discriminator: 1)
!1925 = !DILocation(line: 430, column: 28, scope: !1924)
!1926 = !DILocation(line: 430, column: 38, scope: !1924)
!1927 = !DILocation(line: 430, column: 48, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1922, file: !166, discriminator: 2)
!1929 = !DILocation(line: 430, column: 59, scope: !1928)
!1930 = !DILocation(line: 432, column: 19, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1932, file: !166, discriminator: 1)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !166, line: 432, column: 19)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !166, line: 432, column: 19)
!1934 = distinct !DILexicalBlock(scope: !1922, file: !166, line: 431, column: 17)
!1935 = !DILocation(line: 432, column: 19, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1933, file: !166, discriminator: 1)
!1937 = !DILocation(line: 432, column: 19, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1932, file: !166, discriminator: 2)
!1939 = !DILocation(line: 432, column: 19, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1933, file: !166, discriminator: 3)
!1941 = !DILocation(line: 433, column: 19, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1943, file: !166, discriminator: 1)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !166, line: 433, column: 19)
!1944 = distinct !DILexicalBlock(scope: !1934, file: !166, line: 433, column: 19)
!1945 = !DILocation(line: 433, column: 19, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1944, file: !166, discriminator: 1)
!1947 = !DILocation(line: 433, column: 19, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1943, file: !166, discriminator: 2)
!1949 = !DILocation(line: 433, column: 19, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1944, file: !166, discriminator: 3)
!1951 = !DILocation(line: 434, column: 17, scope: !1934)
!1952 = !DILocation(line: 441, column: 20, scope: !1872)
!1953 = !DILocation(line: 446, column: 11, scope: !1717)
!1954 = !DILocation(line: 449, column: 19, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1717, file: !166, line: 447, column: 13)
!1956 = !DILocation(line: 455, column: 19, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1955, file: !166, line: 454, column: 19)
!1958 = !DILocation(line: 455, column: 24, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1957, file: !166, discriminator: 1)
!1960 = !DILocation(line: 455, column: 28, scope: !1959)
!1961 = !DILocation(line: 455, column: 38, scope: !1959)
!1962 = !DILocation(line: 455, column: 47, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1957, file: !166, discriminator: 2)
!1964 = !DILocation(line: 455, column: 41, scope: !1963)
!1965 = !DILocation(line: 455, column: 52, scope: !1963)
!1966 = !DILocation(line: 454, column: 19, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1955, file: !166, discriminator: 1)
!1968 = !DILocation(line: 456, column: 25, scope: !1957)
!1969 = !DILocation(line: 456, column: 17, scope: !1957)
!1970 = !DILocation(line: 463, column: 25, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1957, file: !166, line: 457, column: 19)
!1972 = !DILocation(line: 467, column: 21, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1974, file: !166, discriminator: 1)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !166, line: 467, column: 21)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !166, line: 467, column: 21)
!1976 = !DILocation(line: 467, column: 21, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1975, file: !166, discriminator: 1)
!1978 = !DILocation(line: 467, column: 21, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1974, file: !166, discriminator: 2)
!1980 = !DILocation(line: 467, column: 21, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1975, file: !166, discriminator: 3)
!1982 = !DILocation(line: 468, column: 21, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1984, file: !166, discriminator: 1)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !166, line: 468, column: 21)
!1985 = distinct !DILexicalBlock(scope: !1971, file: !166, line: 468, column: 21)
!1986 = !DILocation(line: 468, column: 21, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1985, file: !166, discriminator: 1)
!1988 = !DILocation(line: 468, column: 21, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1984, file: !166, discriminator: 2)
!1990 = !DILocation(line: 468, column: 21, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1985, file: !166, discriminator: 3)
!1992 = !DILocation(line: 469, column: 21, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1994, file: !166, discriminator: 1)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !166, line: 469, column: 21)
!1995 = distinct !DILexicalBlock(scope: !1971, file: !166, line: 469, column: 21)
!1996 = !DILocation(line: 469, column: 21, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1995, file: !166, discriminator: 1)
!1998 = !DILocation(line: 469, column: 21, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1994, file: !166, discriminator: 2)
!2000 = !DILocation(line: 469, column: 21, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1995, file: !166, discriminator: 3)
!2002 = !DILocation(line: 470, column: 21, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !2004, file: !166, discriminator: 1)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !166, line: 470, column: 21)
!2005 = distinct !DILexicalBlock(scope: !1971, file: !166, line: 470, column: 21)
!2006 = !DILocation(line: 470, column: 21, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2005, file: !166, discriminator: 1)
!2008 = !DILocation(line: 470, column: 21, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2004, file: !166, discriminator: 2)
!2010 = !DILocation(line: 470, column: 21, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2005, file: !166, discriminator: 3)
!2012 = !DILocation(line: 471, column: 21, scope: !1971)
!2013 = !DILocation(line: 395, column: 21, scope: !1708)
!2014 = !DILocation(line: 484, column: 31, scope: !1717)
!2015 = !DILocation(line: 485, column: 31, scope: !1717)
!2016 = !DILocation(line: 487, column: 31, scope: !1717)
!2017 = !DILocation(line: 488, column: 31, scope: !1717)
!2018 = !DILocation(line: 489, column: 31, scope: !1717)
!2019 = !DILocation(line: 492, column: 15, scope: !1717)
!2020 = !DILocation(line: 494, column: 19, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !166, line: 493, column: 13)
!2022 = distinct !DILexicalBlock(scope: !1717, file: !166, line: 492, column: 15)
!2023 = !DILocation(line: 501, column: 33, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1717, file: !166, line: 501, column: 15)
!2025 = !DILocation(line: 506, column: 15, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1717, file: !166, line: 505, column: 15)
!2027 = !DILocation(line: 510, column: 15, scope: !1717)
!2028 = !DILocation(line: 518, column: 26, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1717, file: !166, line: 518, column: 15)
!2030 = !DILocation(line: 518, column: 15, scope: !1717)
!2031 = !DILocation(line: 518, column: 40, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2029, file: !166, discriminator: 1)
!2033 = !DILocation(line: 518, column: 47, scope: !2032)
!2034 = !DILocation(line: 522, column: 17, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1717, file: !166, line: 522, column: 15)
!2036 = !DILocation(line: 518, column: 18, scope: !2032)
!2037 = !DILocation(line: 518, column: 65, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2029, file: !166, discriminator: 2)
!2039 = !DILocation(line: 518, column: 15, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !1717, file: !166, discriminator: 2)
!2041 = !DILocation(line: 522, column: 15, scope: !1717)
!2042 = !DILocation(line: 526, column: 11, scope: !1717)
!2043 = !DILocation(line: 541, column: 15, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1717, file: !166, line: 540, column: 15)
!2045 = !DILocation(line: 548, column: 15, scope: !1717)
!2046 = !DILocation(line: 550, column: 19, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !166, line: 549, column: 13)
!2048 = distinct !DILexicalBlock(scope: !1717, file: !166, line: 548, column: 15)
!2049 = !DILocation(line: 553, column: 19, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2047, file: !166, line: 553, column: 19)
!2051 = !DILocation(line: 553, column: 35, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2050, file: !166, discriminator: 1)
!2053 = !DILocation(line: 553, column: 30, scope: !2050)
!2054 = !DILocation(line: 562, column: 15, scope: !2055)
!2055 = !DILexicalBlockFile(scope: !2056, file: !166, discriminator: 1)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !166, line: 562, column: 15)
!2057 = distinct !DILexicalBlock(scope: !2047, file: !166, line: 562, column: 15)
!2058 = !DILocation(line: 562, column: 15, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2057, file: !166, discriminator: 1)
!2060 = !DILocation(line: 562, column: 15, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2056, file: !166, discriminator: 2)
!2062 = !DILocation(line: 562, column: 15, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2057, file: !166, discriminator: 3)
!2064 = !DILocation(line: 563, column: 15, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2066, file: !166, discriminator: 1)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !166, line: 563, column: 15)
!2067 = distinct !DILexicalBlock(scope: !2047, file: !166, line: 563, column: 15)
!2068 = !DILocation(line: 563, column: 15, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2067, file: !166, discriminator: 1)
!2070 = !DILocation(line: 563, column: 15, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2066, file: !166, discriminator: 2)
!2072 = !DILocation(line: 563, column: 15, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2067, file: !166, discriminator: 3)
!2074 = !DILocation(line: 564, column: 15, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2076, file: !166, discriminator: 1)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !166, line: 564, column: 15)
!2077 = distinct !DILexicalBlock(scope: !2047, file: !166, line: 564, column: 15)
!2078 = !DILocation(line: 564, column: 15, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2077, file: !166, discriminator: 1)
!2080 = !DILocation(line: 564, column: 15, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2076, file: !166, discriminator: 2)
!2082 = !DILocation(line: 564, column: 15, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2077, file: !166, discriminator: 3)
!2084 = !DILocation(line: 566, column: 13, scope: !2047)
!2085 = !DILocation(line: 606, column: 17, scope: !1716)
!2086 = !DILocation(line: 602, column: 20, scope: !1716)
!2087 = !DILocation(line: 609, column: 29, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1721, file: !166, line: 607, column: 15)
!2089 = !{!2090, !2090, i64 0}
!2090 = !{!"short", !674, i64 0}
!2091 = !DILocation(line: 609, column: 27, scope: !2088)
!2092 = !DILocation(line: 604, column: 18, scope: !1716)
!2093 = !DILocation(line: 610, column: 15, scope: !2088)
!2094 = !DILocation(line: 613, column: 17, scope: !1720)
!2095 = !DILocation(line: 614, column: 17, scope: !1720)
!2096 = !DILocation(line: 618, column: 29, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1720, file: !166, line: 618, column: 21)
!2098 = !DILocation(line: 618, column: 21, scope: !1720)
!2099 = distinct !{!2099, !2100, !2101}
!2100 = !DILocation(line: 621, column: 17, scope: !1720)
!2101 = !DILocation(line: 667, column: 44, scope: !1720)
!2102 = !DILocation(line: 619, column: 29, scope: !2097)
!2103 = !DILocation(line: 619, column: 19, scope: !2097)
!2104 = !DILocation(line: 623, column: 21, scope: !1737)
!2105 = !DILocation(line: 624, column: 56, scope: !1737)
!2106 = !DILocation(line: 624, column: 50, scope: !1737)
!2107 = !DILocation(line: 625, column: 53, scope: !1737)
!2108 = !DILocation(line: 613, column: 27, scope: !1720)
!2109 = !DILocation(line: 623, column: 29, scope: !1737)
!2110 = !DILocation(line: 624, column: 36, scope: !1737)
!2111 = !DILocation(line: 624, column: 28, scope: !1737)
!2112 = !DILocation(line: 626, column: 25, scope: !1737)
!2113 = !DILocation(line: 636, column: 38, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !2115, file: !166, discriminator: 1)
!2115 = distinct !DILexicalBlock(scope: !1744, file: !166, line: 634, column: 23)
!2116 = !DILocation(line: 636, column: 48, scope: !2114)
!2117 = !DILocation(line: 636, column: 51, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2115, file: !166, discriminator: 2)
!2119 = !DILocation(line: 636, column: 48, scope: !2118)
!2120 = !DILocation(line: 636, column: 25, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2115, file: !166, discriminator: 3)
!2122 = !DILocation(line: 637, column: 28, scope: !2115)
!2123 = !DILocation(line: 636, column: 34, scope: !2114)
!2124 = distinct !{!2124, !2125, !2122}
!2125 = !DILocation(line: 636, column: 25, scope: !2115)
!2126 = !DILocation(line: 650, column: 43, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2128, file: !166, discriminator: 1)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !166, line: 650, column: 29)
!2129 = distinct !DILexicalBlock(scope: !1741, file: !166, line: 650, column: 29)
!2130 = !DILocation(line: 647, column: 29, scope: !1742)
!2131 = !DILocation(line: 649, column: 36, scope: !1741)
!2132 = !DILocation(line: 651, column: 49, scope: !2128)
!2133 = !DILocation(line: 651, column: 39, scope: !2128)
!2134 = !DILocation(line: 651, column: 31, scope: !2128)
!2135 = !DILocation(line: 650, column: 53, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2128, file: !166, discriminator: 2)
!2137 = !DILocation(line: 650, column: 29, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2129, file: !166, discriminator: 1)
!2139 = distinct !{!2139, !2140, !2141}
!2140 = !DILocation(line: 650, column: 29, scope: !2129)
!2141 = !DILocation(line: 659, column: 33, scope: !2129)
!2142 = !DILocation(line: 666, column: 19, scope: !1720)
!2143 = !DILocation(line: 662, column: 41, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1743, file: !166, line: 662, column: 29)
!2145 = !DILocation(line: 662, column: 31, scope: !2144)
!2146 = !DILocation(line: 662, column: 29, scope: !1743)
!2147 = !DILocation(line: 664, column: 27, scope: !1743)
!2148 = !DILocation(line: 667, column: 26, scope: !1720)
!2149 = !DILocation(line: 667, column: 24, scope: !1720)
!2150 = !DILocation(line: 666, column: 19, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !1737, file: !166, discriminator: 3)
!2152 = !DILocation(line: 668, column: 15, scope: !1721)
!2153 = !DILocation(line: 670, column: 40, scope: !1716)
!2154 = !DILocation(line: 672, column: 19, scope: !1749)
!2155 = !DILocation(line: 672, column: 45, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !1749, file: !166, discriminator: 1)
!2157 = !DILocation(line: 672, column: 23, scope: !1749)
!2158 = !DILocation(line: 676, column: 33, scope: !1748)
!2159 = !DILocation(line: 676, column: 24, scope: !1748)
!2160 = !DILocation(line: 678, column: 17, scope: !1748)
!2161 = !DILocation(line: 680, column: 43, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !166, line: 680, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !166, line: 679, column: 19)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !166, line: 678, column: 17)
!2165 = distinct !DILexicalBlock(scope: !1748, file: !166, line: 678, column: 17)
!2166 = !DILocation(line: 682, column: 25, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2168, file: !166, discriminator: 1)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !166, line: 682, column: 25)
!2169 = distinct !DILexicalBlock(scope: !2162, file: !166, line: 681, column: 23)
!2170 = !DILocation(line: 682, column: 25, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2172, file: !166, discriminator: 4)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !166, line: 682, column: 25)
!2173 = !DILocation(line: 682, column: 25, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2172, file: !166, discriminator: 3)
!2175 = !DILocation(line: 682, column: 25, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2177, file: !166, discriminator: 6)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !166, line: 682, column: 25)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !166, line: 682, column: 25)
!2179 = distinct !DILexicalBlock(scope: !2172, file: !166, line: 682, column: 25)
!2180 = !DILocation(line: 682, column: 25, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2178, file: !166, discriminator: 6)
!2182 = !DILocation(line: 682, column: 25, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2177, file: !166, discriminator: 7)
!2184 = !DILocation(line: 682, column: 25, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2178, file: !166, discriminator: 8)
!2186 = !DILocation(line: 682, column: 25, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2188, file: !166, discriminator: 11)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !166, line: 682, column: 25)
!2189 = distinct !DILexicalBlock(scope: !2179, file: !166, line: 682, column: 25)
!2190 = !DILocation(line: 682, column: 25, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2189, file: !166, discriminator: 11)
!2192 = !DILocation(line: 682, column: 25, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2188, file: !166, discriminator: 12)
!2194 = !DILocation(line: 682, column: 25, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2189, file: !166, discriminator: 13)
!2196 = !DILocation(line: 682, column: 25, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2198, file: !166, discriminator: 16)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !166, line: 682, column: 25)
!2199 = distinct !DILexicalBlock(scope: !2179, file: !166, line: 682, column: 25)
!2200 = !DILocation(line: 682, column: 25, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2199, file: !166, discriminator: 16)
!2202 = !DILocation(line: 682, column: 25, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2198, file: !166, discriminator: 17)
!2204 = !DILocation(line: 682, column: 25, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2199, file: !166, discriminator: 18)
!2206 = !DILocation(line: 682, column: 25, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2179, file: !166, discriminator: 20)
!2208 = !DILocation(line: 682, column: 25, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2210, file: !166, discriminator: 22)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !166, line: 682, column: 25)
!2211 = distinct !DILexicalBlock(scope: !2168, file: !166, line: 682, column: 25)
!2212 = !DILocation(line: 682, column: 25, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2211, file: !166, discriminator: 22)
!2214 = !DILocation(line: 682, column: 25, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2210, file: !166, discriminator: 23)
!2216 = !DILocation(line: 682, column: 25, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2211, file: !166, discriminator: 24)
!2218 = !DILocation(line: 683, column: 25, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2220, file: !166, discriminator: 1)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !166, line: 683, column: 25)
!2221 = distinct !DILexicalBlock(scope: !2169, file: !166, line: 683, column: 25)
!2222 = !DILocation(line: 683, column: 25, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2221, file: !166, discriminator: 1)
!2224 = !DILocation(line: 683, column: 25, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2220, file: !166, discriminator: 2)
!2226 = !DILocation(line: 683, column: 25, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2221, file: !166, discriminator: 3)
!2228 = !DILocation(line: 684, column: 25, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2230, file: !166, discriminator: 1)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !166, line: 684, column: 25)
!2231 = distinct !DILexicalBlock(scope: !2169, file: !166, line: 684, column: 25)
!2232 = !DILocation(line: 684, column: 25, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2231, file: !166, discriminator: 1)
!2234 = !DILocation(line: 684, column: 25, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2230, file: !166, discriminator: 2)
!2236 = !DILocation(line: 684, column: 25, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2231, file: !166, discriminator: 3)
!2238 = !DILocation(line: 685, column: 38, scope: !2169)
!2239 = !DILocation(line: 685, column: 33, scope: !2169)
!2240 = !DILocation(line: 686, column: 23, scope: !2169)
!2241 = !DILocation(line: 687, column: 30, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2162, file: !166, line: 687, column: 30)
!2243 = !DILocation(line: 687, column: 30, scope: !2162)
!2244 = !DILocation(line: 689, column: 25, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2246, file: !166, discriminator: 1)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !166, line: 689, column: 25)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !166, line: 689, column: 25)
!2248 = distinct !DILexicalBlock(scope: !2242, file: !166, line: 688, column: 23)
!2249 = !DILocation(line: 689, column: 25, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2247, file: !166, discriminator: 1)
!2251 = !DILocation(line: 689, column: 25, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2246, file: !166, discriminator: 2)
!2253 = !DILocation(line: 689, column: 25, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2247, file: !166, discriminator: 3)
!2255 = !DILocation(line: 691, column: 23, scope: !2248)
!2256 = !DILocation(line: 692, column: 35, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2163, file: !166, line: 692, column: 25)
!2258 = !DILocation(line: 692, column: 30, scope: !2257)
!2259 = !DILocation(line: 692, column: 25, scope: !2163)
!2260 = !DILocation(line: 694, column: 21, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2262, file: !166, discriminator: 1)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !166, line: 694, column: 21)
!2263 = distinct !DILexicalBlock(scope: !2163, file: !166, line: 694, column: 21)
!2264 = !DILocation(line: 694, column: 21, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2262, file: !166, discriminator: 2)
!2266 = !DILocation(line: 694, column: 21, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2268, file: !166, discriminator: 4)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !166, line: 694, column: 21)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !166, line: 694, column: 21)
!2270 = distinct !DILexicalBlock(scope: !2262, file: !166, line: 694, column: 21)
!2271 = !DILocation(line: 694, column: 21, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2269, file: !166, discriminator: 4)
!2273 = !DILocation(line: 694, column: 21, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2268, file: !166, discriminator: 5)
!2275 = !DILocation(line: 694, column: 21, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2269, file: !166, discriminator: 6)
!2277 = !DILocation(line: 694, column: 21, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2279, file: !166, discriminator: 9)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !166, line: 694, column: 21)
!2280 = distinct !DILexicalBlock(scope: !2270, file: !166, line: 694, column: 21)
!2281 = !DILocation(line: 694, column: 21, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2280, file: !166, discriminator: 9)
!2283 = !DILocation(line: 694, column: 21, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2279, file: !166, discriminator: 10)
!2285 = !DILocation(line: 694, column: 21, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2280, file: !166, discriminator: 11)
!2287 = !DILocation(line: 694, column: 21, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2270, file: !166, discriminator: 13)
!2289 = !DILocation(line: 695, column: 21, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !2291, file: !166, discriminator: 1)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !166, line: 695, column: 21)
!2292 = distinct !DILexicalBlock(scope: !2163, file: !166, line: 695, column: 21)
!2293 = !DILocation(line: 695, column: 21, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2292, file: !166, discriminator: 1)
!2295 = !DILocation(line: 695, column: 21, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2291, file: !166, discriminator: 2)
!2297 = !DILocation(line: 695, column: 21, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2292, file: !166, discriminator: 3)
!2299 = !DILocation(line: 696, column: 25, scope: !2163)
!2300 = !DILocation(line: 678, column: 17, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2164, file: !166, discriminator: 1)
!2302 = distinct !{!2302, !2303, !2304}
!2303 = !DILocation(line: 678, column: 17, scope: !2165)
!2304 = !DILocation(line: 697, column: 19, scope: !2165)
!2305 = !DILocation(line: 704, column: 34, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !1708, file: !166, line: 704, column: 11)
!2307 = !DILocation(line: 706, column: 14, scope: !2306)
!2308 = !DILocation(line: 707, column: 14, scope: !2306)
!2309 = !DILocation(line: 707, column: 35, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2306, file: !166, discriminator: 1)
!2311 = !DILocation(line: 707, column: 17, scope: !2310)
!2312 = !DILocation(line: 707, column: 53, scope: !2310)
!2313 = !DILocation(line: 707, column: 47, scope: !2310)
!2314 = !DILocation(line: 707, column: 65, scope: !2310)
!2315 = !DILocation(line: 708, column: 15, scope: !2310)
!2316 = !DILocation(line: 708, column: 11, scope: !2306)
!2317 = !DILocation(line: 704, column: 11, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !1708, file: !166, discriminator: 2)
!2319 = !DILocation(line: 712, column: 7, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2321, file: !166, discriminator: 1)
!2321 = distinct !DILexicalBlock(scope: !1708, file: !166, line: 712, column: 7)
!2322 = !DILocation(line: 712, column: 7, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2324, file: !166, discriminator: 4)
!2324 = distinct !DILexicalBlock(scope: !2321, file: !166, line: 712, column: 7)
!2325 = !DILocation(line: 712, column: 7, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2324, file: !166, discriminator: 3)
!2327 = !DILocation(line: 712, column: 7, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2329, file: !166, discriminator: 6)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !166, line: 712, column: 7)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !166, line: 712, column: 7)
!2331 = distinct !DILexicalBlock(scope: !2324, file: !166, line: 712, column: 7)
!2332 = !DILocation(line: 712, column: 7, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2330, file: !166, discriminator: 6)
!2334 = !DILocation(line: 712, column: 7, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2329, file: !166, discriminator: 7)
!2336 = !DILocation(line: 712, column: 7, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2330, file: !166, discriminator: 8)
!2338 = !DILocation(line: 712, column: 7, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2340, file: !166, discriminator: 11)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !166, line: 712, column: 7)
!2341 = distinct !DILexicalBlock(scope: !2331, file: !166, line: 712, column: 7)
!2342 = !DILocation(line: 712, column: 7, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2341, file: !166, discriminator: 11)
!2344 = !DILocation(line: 712, column: 7, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2340, file: !166, discriminator: 12)
!2346 = !DILocation(line: 712, column: 7, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2341, file: !166, discriminator: 13)
!2348 = !DILocation(line: 712, column: 7, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !2350, file: !166, discriminator: 16)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !166, line: 712, column: 7)
!2351 = distinct !DILexicalBlock(scope: !2331, file: !166, line: 712, column: 7)
!2352 = !DILocation(line: 712, column: 7, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2351, file: !166, discriminator: 16)
!2354 = !DILocation(line: 712, column: 7, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !2350, file: !166, discriminator: 17)
!2356 = !DILocation(line: 712, column: 7, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2351, file: !166, discriminator: 18)
!2358 = !DILocation(line: 712, column: 7, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2331, file: !166, discriminator: 20)
!2360 = !DILocation(line: 712, column: 7, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2362, file: !166, discriminator: 22)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !166, line: 712, column: 7)
!2363 = distinct !DILexicalBlock(scope: !2321, file: !166, line: 712, column: 7)
!2364 = !DILocation(line: 712, column: 7, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2363, file: !166, discriminator: 22)
!2366 = !DILocation(line: 712, column: 7, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2362, file: !166, discriminator: 23)
!2368 = !DILocation(line: 712, column: 7, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2363, file: !166, discriminator: 24)
!2370 = !DILocation(line: 715, column: 7, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2372, file: !166, discriminator: 1)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !166, line: 715, column: 7)
!2373 = distinct !DILexicalBlock(scope: !1708, file: !166, line: 715, column: 7)
!2374 = !DILocation(line: 715, column: 7, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2372, file: !166, discriminator: 2)
!2376 = !DILocation(line: 715, column: 7, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2378, file: !166, discriminator: 4)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !166, line: 715, column: 7)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !166, line: 715, column: 7)
!2380 = distinct !DILexicalBlock(scope: !2372, file: !166, line: 715, column: 7)
!2381 = !DILocation(line: 715, column: 7, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2379, file: !166, discriminator: 4)
!2383 = !DILocation(line: 715, column: 7, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2378, file: !166, discriminator: 5)
!2385 = !DILocation(line: 715, column: 7, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2379, file: !166, discriminator: 6)
!2387 = !DILocation(line: 715, column: 7, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !2389, file: !166, discriminator: 9)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !166, line: 715, column: 7)
!2390 = distinct !DILexicalBlock(scope: !2380, file: !166, line: 715, column: 7)
!2391 = !DILocation(line: 715, column: 7, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2390, file: !166, discriminator: 9)
!2393 = !DILocation(line: 715, column: 7, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2389, file: !166, discriminator: 10)
!2395 = !DILocation(line: 715, column: 7, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2390, file: !166, discriminator: 11)
!2397 = !DILocation(line: 715, column: 7, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !2380, file: !166, discriminator: 13)
!2399 = !DILocation(line: 716, column: 7, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2401, file: !166, discriminator: 1)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !166, line: 716, column: 7)
!2402 = distinct !DILexicalBlock(scope: !1708, file: !166, line: 716, column: 7)
!2403 = !DILocation(line: 716, column: 7, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !2402, file: !166, discriminator: 1)
!2405 = !DILocation(line: 716, column: 7, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !2401, file: !166, discriminator: 2)
!2407 = !DILocation(line: 716, column: 7, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !2402, file: !166, discriminator: 3)
!2409 = !DILocation(line: 718, column: 13, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !1708, file: !166, line: 718, column: 11)
!2411 = !DILocation(line: 718, column: 11, scope: !1708)
!2412 = !DILocation(line: 720, column: 5, scope: !1709)
!2413 = !DILocation(line: 392, column: 75, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !1709, file: !166, discriminator: 5)
!2415 = !DILocation(line: 392, column: 3, scope: !2414)
!2416 = distinct !{!2416, !2417, !2418}
!2417 = !DILocation(line: 392, column: 3, scope: !1710)
!2418 = !DILocation(line: 720, column: 5, scope: !1710)
!2419 = !DILocation(line: 722, column: 11, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !1681, file: !166, line: 722, column: 7)
!2421 = !DILocation(line: 722, column: 16, scope: !2420)
!2422 = !DILocation(line: 730, column: 51, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !1681, file: !166, line: 730, column: 7)
!2424 = !DILocation(line: 731, column: 10, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !2423, file: !166, discriminator: 1)
!2426 = !DILocation(line: 733, column: 11, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !166, line: 733, column: 11)
!2428 = distinct !DILexicalBlock(scope: !2423, file: !166, line: 732, column: 5)
!2429 = !DILocation(line: 733, column: 11, scope: !2428)
!2430 = !DILocation(line: 734, column: 16, scope: !2427)
!2431 = !DILocation(line: 734, column: 9, scope: !2427)
!2432 = !DILocation(line: 738, column: 18, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2427, file: !166, line: 738, column: 16)
!2434 = !DILocation(line: 738, column: 32, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2433, file: !166, discriminator: 1)
!2436 = !DILocation(line: 738, column: 29, scope: !2433)
!2437 = !DILocation(line: 747, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !1681, file: !166, line: 747, column: 7)
!2439 = !DILocation(line: 747, column: 20, scope: !2438)
!2440 = !DILocation(line: 748, column: 12, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2442, file: !166, discriminator: 1)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !166, line: 748, column: 5)
!2443 = distinct !DILexicalBlock(scope: !2438, file: !166, line: 748, column: 5)
!2444 = !DILocation(line: 748, column: 5, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2443, file: !166, discriminator: 1)
!2446 = !DILocation(line: 749, column: 7, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2448, file: !166, discriminator: 1)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !166, line: 749, column: 7)
!2449 = distinct !DILexicalBlock(scope: !2442, file: !166, line: 749, column: 7)
!2450 = !DILocation(line: 749, column: 7, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2449, file: !166, discriminator: 1)
!2452 = !DILocation(line: 749, column: 7, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2448, file: !166, discriminator: 2)
!2454 = !DILocation(line: 749, column: 7, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2449, file: !166, discriminator: 3)
!2456 = !DILocation(line: 748, column: 39, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2442, file: !166, discriminator: 2)
!2458 = distinct !{!2458, !2459, !2460}
!2459 = !DILocation(line: 748, column: 5, scope: !2443)
!2460 = !DILocation(line: 749, column: 7, scope: !2443)
!2461 = !DILocation(line: 751, column: 11, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !1681, file: !166, line: 751, column: 7)
!2463 = !DILocation(line: 751, column: 7, scope: !1681)
!2464 = !DILocation(line: 752, column: 5, scope: !2462)
!2465 = !DILocation(line: 752, column: 17, scope: !2462)
!2466 = !DILocation(line: 758, column: 21, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !1681, file: !166, line: 758, column: 7)
!2468 = !DILocation(line: 758, column: 54, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2467, file: !166, discriminator: 1)
!2470 = !DILocation(line: 758, column: 51, scope: !2467)
!2471 = !DILocation(line: 762, column: 42, scope: !1681)
!2472 = !DILocation(line: 760, column: 10, scope: !1681)
!2473 = !DILocation(line: 760, column: 3, scope: !1681)
!2474 = !DILocation(line: 764, column: 1, scope: !1681)
!2475 = distinct !DISubprogram(name: "gettext_quote", scope: !166, file: !166, line: 199, type: !2476, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!29, !29, !127}
!2478 = !{!2479, !2480, !2481, !2482}
!2479 = !DILocalVariable(name: "msgid", arg: 1, scope: !2475, file: !166, line: 199, type: !29)
!2480 = !DILocalVariable(name: "s", arg: 2, scope: !2475, file: !166, line: 199, type: !127)
!2481 = !DILocalVariable(name: "translation", scope: !2475, file: !166, line: 201, type: !29)
!2482 = !DILocalVariable(name: "locale_code", scope: !2475, file: !166, line: 202, type: !29)
!2483 = !DILocation(line: 199, column: 28, scope: !2475)
!2484 = !DILocation(line: 199, column: 54, scope: !2475)
!2485 = !DILocation(line: 201, column: 29, scope: !2475)
!2486 = !DILocation(line: 201, column: 15, scope: !2475)
!2487 = !DILocation(line: 204, column: 19, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2475, file: !166, line: 204, column: 7)
!2489 = !DILocation(line: 204, column: 7, scope: !2475)
!2490 = !DILocation(line: 225, column: 17, scope: !2475)
!2491 = !DILocation(line: 202, column: 15, scope: !2475)
!2492 = !DILocalVariable(name: "s2", arg: 2, scope: !2493, file: !2494, line: 160, type: !29)
!2493 = distinct !DISubprogram(name: "strcaseeq0", scope: !2494, file: !2494, line: 160, type: !2495, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2497)
!2494 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!48, !29, !29, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!2497 = !{!2498, !2492, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507}
!2498 = !DILocalVariable(name: "s1", arg: 1, scope: !2493, file: !2494, line: 160, type: !29)
!2499 = !DILocalVariable(name: "s20", arg: 3, scope: !2493, file: !2494, line: 160, type: !31)
!2500 = !DILocalVariable(name: "s21", arg: 4, scope: !2493, file: !2494, line: 160, type: !31)
!2501 = !DILocalVariable(name: "s22", arg: 5, scope: !2493, file: !2494, line: 160, type: !31)
!2502 = !DILocalVariable(name: "s23", arg: 6, scope: !2493, file: !2494, line: 160, type: !31)
!2503 = !DILocalVariable(name: "s24", arg: 7, scope: !2493, file: !2494, line: 160, type: !31)
!2504 = !DILocalVariable(name: "s25", arg: 8, scope: !2493, file: !2494, line: 160, type: !31)
!2505 = !DILocalVariable(name: "s26", arg: 9, scope: !2493, file: !2494, line: 160, type: !31)
!2506 = !DILocalVariable(name: "s27", arg: 10, scope: !2493, file: !2494, line: 160, type: !31)
!2507 = !DILocalVariable(name: "s28", arg: 11, scope: !2493, file: !2494, line: 160, type: !31)
!2508 = !DILocation(line: 160, column: 41, scope: !2493, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 226, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2475, file: !166, line: 226, column: 7)
!2511 = !DILocation(line: 160, column: 120, scope: !2493, inlinedAt: !2509)
!2512 = !DILocation(line: 160, column: 130, scope: !2493, inlinedAt: !2509)
!2513 = !DILocation(line: 162, column: 7, scope: !2514, inlinedAt: !2509)
!2514 = !DILexicalBlockFile(scope: !2515, file: !2494, discriminator: 1)
!2515 = distinct !DILexicalBlock(scope: !2493, file: !2494, line: 162, column: 7)
!2516 = !DILocalVariable(name: "s2", arg: 2, scope: !2517, file: !2494, line: 146, type: !29)
!2517 = distinct !DISubprogram(name: "strcaseeq1", scope: !2494, file: !2494, line: 146, type: !2518, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!48, !29, !29, !31, !31, !31, !31, !31, !31, !31, !31}
!2520 = !{!2521, !2516, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529}
!2521 = !DILocalVariable(name: "s1", arg: 1, scope: !2517, file: !2494, line: 146, type: !29)
!2522 = !DILocalVariable(name: "s21", arg: 3, scope: !2517, file: !2494, line: 146, type: !31)
!2523 = !DILocalVariable(name: "s22", arg: 4, scope: !2517, file: !2494, line: 146, type: !31)
!2524 = !DILocalVariable(name: "s23", arg: 5, scope: !2517, file: !2494, line: 146, type: !31)
!2525 = !DILocalVariable(name: "s24", arg: 6, scope: !2517, file: !2494, line: 146, type: !31)
!2526 = !DILocalVariable(name: "s25", arg: 7, scope: !2517, file: !2494, line: 146, type: !31)
!2527 = !DILocalVariable(name: "s26", arg: 8, scope: !2517, file: !2494, line: 146, type: !31)
!2528 = !DILocalVariable(name: "s27", arg: 9, scope: !2517, file: !2494, line: 146, type: !31)
!2529 = !DILocalVariable(name: "s28", arg: 10, scope: !2517, file: !2494, line: 146, type: !31)
!2530 = !DILocation(line: 146, column: 41, scope: !2517, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 167, column: 16, scope: !2532, inlinedAt: !2509)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !2494, line: 164, column: 11)
!2533 = distinct !DILexicalBlock(scope: !2515, file: !2494, line: 163, column: 5)
!2534 = !DILocation(line: 146, column: 110, scope: !2517, inlinedAt: !2531)
!2535 = !DILocation(line: 146, column: 120, scope: !2517, inlinedAt: !2531)
!2536 = !DILocation(line: 148, column: 7, scope: !2537, inlinedAt: !2531)
!2537 = !DILexicalBlockFile(scope: !2538, file: !2494, discriminator: 1)
!2538 = distinct !DILexicalBlock(scope: !2517, file: !2494, line: 148, column: 7)
!2539 = !DILocalVariable(name: "s2", arg: 2, scope: !2540, file: !2494, line: 132, type: !29)
!2540 = distinct !DISubprogram(name: "strcaseeq2", scope: !2494, file: !2494, line: 132, type: !2541, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!48, !29, !29, !31, !31, !31, !31, !31, !31, !31}
!2543 = !{!2544, !2539, !2545, !2546, !2547, !2548, !2549, !2550, !2551}
!2544 = !DILocalVariable(name: "s1", arg: 1, scope: !2540, file: !2494, line: 132, type: !29)
!2545 = !DILocalVariable(name: "s22", arg: 3, scope: !2540, file: !2494, line: 132, type: !31)
!2546 = !DILocalVariable(name: "s23", arg: 4, scope: !2540, file: !2494, line: 132, type: !31)
!2547 = !DILocalVariable(name: "s24", arg: 5, scope: !2540, file: !2494, line: 132, type: !31)
!2548 = !DILocalVariable(name: "s25", arg: 6, scope: !2540, file: !2494, line: 132, type: !31)
!2549 = !DILocalVariable(name: "s26", arg: 7, scope: !2540, file: !2494, line: 132, type: !31)
!2550 = !DILocalVariable(name: "s27", arg: 8, scope: !2540, file: !2494, line: 132, type: !31)
!2551 = !DILocalVariable(name: "s28", arg: 9, scope: !2540, file: !2494, line: 132, type: !31)
!2552 = !DILocation(line: 132, column: 41, scope: !2540, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 153, column: 16, scope: !2554, inlinedAt: !2531)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !2494, line: 150, column: 11)
!2555 = distinct !DILexicalBlock(scope: !2538, file: !2494, line: 149, column: 5)
!2556 = !DILocation(line: 132, column: 100, scope: !2540, inlinedAt: !2553)
!2557 = !DILocation(line: 132, column: 110, scope: !2540, inlinedAt: !2553)
!2558 = !DILocation(line: 134, column: 7, scope: !2559, inlinedAt: !2553)
!2559 = !DILexicalBlockFile(scope: !2560, file: !2494, discriminator: 1)
!2560 = distinct !DILexicalBlock(scope: !2540, file: !2494, line: 134, column: 7)
!2561 = !DILocalVariable(name: "s2", arg: 2, scope: !2562, file: !2494, line: 118, type: !29)
!2562 = distinct !DISubprogram(name: "strcaseeq3", scope: !2494, file: !2494, line: 118, type: !2563, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!48, !29, !29, !31, !31, !31, !31, !31, !31}
!2565 = !{!2566, !2561, !2567, !2568, !2569, !2570, !2571, !2572}
!2566 = !DILocalVariable(name: "s1", arg: 1, scope: !2562, file: !2494, line: 118, type: !29)
!2567 = !DILocalVariable(name: "s23", arg: 3, scope: !2562, file: !2494, line: 118, type: !31)
!2568 = !DILocalVariable(name: "s24", arg: 4, scope: !2562, file: !2494, line: 118, type: !31)
!2569 = !DILocalVariable(name: "s25", arg: 5, scope: !2562, file: !2494, line: 118, type: !31)
!2570 = !DILocalVariable(name: "s26", arg: 6, scope: !2562, file: !2494, line: 118, type: !31)
!2571 = !DILocalVariable(name: "s27", arg: 7, scope: !2562, file: !2494, line: 118, type: !31)
!2572 = !DILocalVariable(name: "s28", arg: 8, scope: !2562, file: !2494, line: 118, type: !31)
!2573 = !DILocation(line: 118, column: 41, scope: !2562, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 139, column: 16, scope: !2575, inlinedAt: !2553)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !2494, line: 136, column: 11)
!2576 = distinct !DILexicalBlock(scope: !2560, file: !2494, line: 135, column: 5)
!2577 = !DILocation(line: 118, column: 90, scope: !2562, inlinedAt: !2574)
!2578 = !DILocation(line: 118, column: 100, scope: !2562, inlinedAt: !2574)
!2579 = !DILocation(line: 120, column: 7, scope: !2580, inlinedAt: !2574)
!2580 = !DILexicalBlockFile(scope: !2581, file: !2494, discriminator: 2)
!2581 = distinct !DILexicalBlock(scope: !2562, file: !2494, line: 120, column: 7)
!2582 = !DILocation(line: 120, column: 7, scope: !2583, inlinedAt: !2574)
!2583 = !DILexicalBlockFile(scope: !2562, file: !2494, discriminator: 2)
!2584 = !DILocalVariable(name: "s2", arg: 2, scope: !2585, file: !2494, line: 104, type: !29)
!2585 = distinct !DISubprogram(name: "strcaseeq4", scope: !2494, file: !2494, line: 104, type: !2586, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!48, !29, !29, !31, !31, !31, !31, !31}
!2588 = !{!2589, !2584, !2590, !2591, !2592, !2593, !2594}
!2589 = !DILocalVariable(name: "s1", arg: 1, scope: !2585, file: !2494, line: 104, type: !29)
!2590 = !DILocalVariable(name: "s24", arg: 3, scope: !2585, file: !2494, line: 104, type: !31)
!2591 = !DILocalVariable(name: "s25", arg: 4, scope: !2585, file: !2494, line: 104, type: !31)
!2592 = !DILocalVariable(name: "s26", arg: 5, scope: !2585, file: !2494, line: 104, type: !31)
!2593 = !DILocalVariable(name: "s27", arg: 6, scope: !2585, file: !2494, line: 104, type: !31)
!2594 = !DILocalVariable(name: "s28", arg: 7, scope: !2585, file: !2494, line: 104, type: !31)
!2595 = !DILocation(line: 104, column: 41, scope: !2585, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 125, column: 16, scope: !2597, inlinedAt: !2574)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !2494, line: 122, column: 11)
!2598 = distinct !DILexicalBlock(scope: !2581, file: !2494, line: 121, column: 5)
!2599 = !DILocation(line: 104, column: 80, scope: !2585, inlinedAt: !2596)
!2600 = !DILocation(line: 104, column: 90, scope: !2585, inlinedAt: !2596)
!2601 = !DILocation(line: 106, column: 7, scope: !2602, inlinedAt: !2596)
!2602 = !DILexicalBlockFile(scope: !2603, file: !2494, discriminator: 2)
!2603 = distinct !DILexicalBlock(scope: !2585, file: !2494, line: 106, column: 7)
!2604 = !DILocation(line: 106, column: 7, scope: !2605, inlinedAt: !2596)
!2605 = !DILexicalBlockFile(scope: !2585, file: !2494, discriminator: 2)
!2606 = !DILocalVariable(name: "s2", arg: 2, scope: !2607, file: !2494, line: 90, type: !29)
!2607 = distinct !DISubprogram(name: "strcaseeq5", scope: !2494, file: !2494, line: 90, type: !2608, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2610)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!48, !29, !29, !31, !31, !31, !31}
!2610 = !{!2611, !2606, !2612, !2613, !2614, !2615}
!2611 = !DILocalVariable(name: "s1", arg: 1, scope: !2607, file: !2494, line: 90, type: !29)
!2612 = !DILocalVariable(name: "s25", arg: 3, scope: !2607, file: !2494, line: 90, type: !31)
!2613 = !DILocalVariable(name: "s26", arg: 4, scope: !2607, file: !2494, line: 90, type: !31)
!2614 = !DILocalVariable(name: "s27", arg: 5, scope: !2607, file: !2494, line: 90, type: !31)
!2615 = !DILocalVariable(name: "s28", arg: 6, scope: !2607, file: !2494, line: 90, type: !31)
!2616 = !DILocation(line: 90, column: 41, scope: !2607, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 111, column: 16, scope: !2618, inlinedAt: !2596)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !2494, line: 108, column: 11)
!2619 = distinct !DILexicalBlock(scope: !2603, file: !2494, line: 107, column: 5)
!2620 = !DILocation(line: 90, column: 70, scope: !2607, inlinedAt: !2617)
!2621 = !DILocation(line: 90, column: 80, scope: !2607, inlinedAt: !2617)
!2622 = !DILocation(line: 92, column: 7, scope: !2623, inlinedAt: !2617)
!2623 = !DILexicalBlockFile(scope: !2624, file: !2494, discriminator: 2)
!2624 = distinct !DILexicalBlock(scope: !2607, file: !2494, line: 92, column: 7)
!2625 = !DILocation(line: 92, column: 7, scope: !2626, inlinedAt: !2617)
!2626 = !DILexicalBlockFile(scope: !2607, file: !2494, discriminator: 2)
!2627 = !DILocation(line: 227, column: 12, scope: !2510)
!2628 = !DILocation(line: 227, column: 21, scope: !2510)
!2629 = !DILocation(line: 227, column: 5, scope: !2510)
!2630 = !DILocation(line: 146, column: 41, scope: !2517, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 167, column: 16, scope: !2532, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 228, column: 7, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2475, file: !166, line: 228, column: 7)
!2634 = !DILocation(line: 146, column: 110, scope: !2517, inlinedAt: !2631)
!2635 = !DILocation(line: 146, column: 120, scope: !2517, inlinedAt: !2631)
!2636 = !DILocation(line: 148, column: 7, scope: !2537, inlinedAt: !2631)
!2637 = !DILocation(line: 132, column: 41, scope: !2540, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 153, column: 16, scope: !2554, inlinedAt: !2631)
!2639 = !DILocation(line: 132, column: 100, scope: !2540, inlinedAt: !2638)
!2640 = !DILocation(line: 132, column: 110, scope: !2540, inlinedAt: !2638)
!2641 = !DILocation(line: 134, column: 7, scope: !2642, inlinedAt: !2638)
!2642 = !DILexicalBlockFile(scope: !2560, file: !2494, discriminator: 2)
!2643 = !DILocation(line: 134, column: 7, scope: !2644, inlinedAt: !2638)
!2644 = !DILexicalBlockFile(scope: !2540, file: !2494, discriminator: 2)
!2645 = !DILocation(line: 118, column: 41, scope: !2562, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 139, column: 16, scope: !2575, inlinedAt: !2638)
!2647 = !DILocation(line: 118, column: 90, scope: !2562, inlinedAt: !2646)
!2648 = !DILocation(line: 118, column: 100, scope: !2562, inlinedAt: !2646)
!2649 = !DILocation(line: 120, column: 7, scope: !2580, inlinedAt: !2646)
!2650 = !DILocation(line: 120, column: 7, scope: !2583, inlinedAt: !2646)
!2651 = !DILocation(line: 104, column: 41, scope: !2585, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 125, column: 16, scope: !2597, inlinedAt: !2646)
!2653 = !DILocation(line: 104, column: 80, scope: !2585, inlinedAt: !2652)
!2654 = !DILocation(line: 104, column: 90, scope: !2585, inlinedAt: !2652)
!2655 = !DILocation(line: 106, column: 7, scope: !2602, inlinedAt: !2652)
!2656 = !DILocation(line: 106, column: 7, scope: !2605, inlinedAt: !2652)
!2657 = !DILocation(line: 90, column: 41, scope: !2607, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 111, column: 16, scope: !2618, inlinedAt: !2652)
!2659 = !DILocation(line: 90, column: 70, scope: !2607, inlinedAt: !2658)
!2660 = !DILocation(line: 90, column: 80, scope: !2607, inlinedAt: !2658)
!2661 = !DILocation(line: 92, column: 7, scope: !2623, inlinedAt: !2658)
!2662 = !DILocation(line: 92, column: 7, scope: !2626, inlinedAt: !2658)
!2663 = !DILocalVariable(name: "s2", arg: 2, scope: !2664, file: !2494, line: 76, type: !29)
!2664 = distinct !DISubprogram(name: "strcaseeq6", scope: !2494, file: !2494, line: 76, type: !2665, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!48, !29, !29, !31, !31, !31}
!2667 = !{!2668, !2663, !2669, !2670, !2671}
!2668 = !DILocalVariable(name: "s1", arg: 1, scope: !2664, file: !2494, line: 76, type: !29)
!2669 = !DILocalVariable(name: "s26", arg: 3, scope: !2664, file: !2494, line: 76, type: !31)
!2670 = !DILocalVariable(name: "s27", arg: 4, scope: !2664, file: !2494, line: 76, type: !31)
!2671 = !DILocalVariable(name: "s28", arg: 5, scope: !2664, file: !2494, line: 76, type: !31)
!2672 = !DILocation(line: 76, column: 41, scope: !2664, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 97, column: 16, scope: !2674, inlinedAt: !2658)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !2494, line: 94, column: 11)
!2675 = distinct !DILexicalBlock(scope: !2624, file: !2494, line: 93, column: 5)
!2676 = !DILocation(line: 76, column: 60, scope: !2664, inlinedAt: !2673)
!2677 = !DILocation(line: 76, column: 70, scope: !2664, inlinedAt: !2673)
!2678 = !DILocation(line: 78, column: 7, scope: !2679, inlinedAt: !2673)
!2679 = !DILexicalBlockFile(scope: !2680, file: !2494, discriminator: 2)
!2680 = distinct !DILexicalBlock(scope: !2664, file: !2494, line: 78, column: 7)
!2681 = !DILocation(line: 78, column: 7, scope: !2682, inlinedAt: !2673)
!2682 = !DILexicalBlockFile(scope: !2664, file: !2494, discriminator: 2)
!2683 = !DILocalVariable(name: "s2", arg: 2, scope: !2684, file: !2494, line: 62, type: !29)
!2684 = distinct !DISubprogram(name: "strcaseeq7", scope: !2494, file: !2494, line: 62, type: !2685, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!48, !29, !29, !31, !31}
!2687 = !{!2688, !2683, !2689, !2690}
!2688 = !DILocalVariable(name: "s1", arg: 1, scope: !2684, file: !2494, line: 62, type: !29)
!2689 = !DILocalVariable(name: "s27", arg: 3, scope: !2684, file: !2494, line: 62, type: !31)
!2690 = !DILocalVariable(name: "s28", arg: 4, scope: !2684, file: !2494, line: 62, type: !31)
!2691 = !DILocation(line: 62, column: 41, scope: !2684, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 83, column: 16, scope: !2693, inlinedAt: !2673)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !2494, line: 80, column: 11)
!2694 = distinct !DILexicalBlock(scope: !2680, file: !2494, line: 79, column: 5)
!2695 = !DILocation(line: 62, column: 50, scope: !2684, inlinedAt: !2692)
!2696 = !DILocation(line: 62, column: 60, scope: !2684, inlinedAt: !2692)
!2697 = !DILocation(line: 64, column: 7, scope: !2698, inlinedAt: !2692)
!2698 = !DILexicalBlockFile(scope: !2699, file: !2494, discriminator: 2)
!2699 = distinct !DILexicalBlock(scope: !2684, file: !2494, line: 64, column: 7)
!2700 = !DILocation(line: 228, column: 7, scope: !2475)
!2701 = !DILocation(line: 229, column: 12, scope: !2633)
!2702 = !DILocation(line: 229, column: 21, scope: !2633)
!2703 = !DILocation(line: 229, column: 5, scope: !2633)
!2704 = !DILocation(line: 231, column: 13, scope: !2475)
!2705 = !DILocation(line: 231, column: 11, scope: !2475)
!2706 = !DILocation(line: 231, column: 3, scope: !2475)
!2707 = !DILocation(line: 232, column: 1, scope: !2475)
!2708 = distinct !DISubprogram(name: "quotearg_alloc", scope: !166, file: !166, line: 791, type: !2709, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!32, !29, !21, !1549}
!2711 = !{!2712, !2713, !2714}
!2712 = !DILocalVariable(name: "arg", arg: 1, scope: !2708, file: !166, line: 791, type: !29)
!2713 = !DILocalVariable(name: "argsize", arg: 2, scope: !2708, file: !166, line: 791, type: !21)
!2714 = !DILocalVariable(name: "o", arg: 3, scope: !2708, file: !166, line: 792, type: !1549)
!2715 = !DILocation(line: 791, column: 29, scope: !2708)
!2716 = !DILocation(line: 791, column: 41, scope: !2708)
!2717 = !DILocation(line: 792, column: 47, scope: !2708)
!2718 = !DILocalVariable(name: "arg", arg: 1, scope: !2719, file: !166, line: 804, type: !29)
!2719 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !166, file: !166, line: 804, type: !2720, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!32, !29, !21, !616, !1549}
!2722 = !{!2718, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730}
!2723 = !DILocalVariable(name: "argsize", arg: 2, scope: !2719, file: !166, line: 804, type: !21)
!2724 = !DILocalVariable(name: "size", arg: 3, scope: !2719, file: !166, line: 804, type: !616)
!2725 = !DILocalVariable(name: "o", arg: 4, scope: !2719, file: !166, line: 805, type: !1549)
!2726 = !DILocalVariable(name: "p", scope: !2719, file: !166, line: 807, type: !1549)
!2727 = !DILocalVariable(name: "e", scope: !2719, file: !166, line: 808, type: !48)
!2728 = !DILocalVariable(name: "flags", scope: !2719, file: !166, line: 810, type: !48)
!2729 = !DILocalVariable(name: "bufsize", scope: !2719, file: !166, line: 811, type: !21)
!2730 = !DILocalVariable(name: "buf", scope: !2719, file: !166, line: 815, type: !32)
!2731 = !DILocation(line: 804, column: 33, scope: !2719, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 794, column: 10, scope: !2708)
!2733 = !DILocation(line: 804, column: 45, scope: !2719, inlinedAt: !2732)
!2734 = !DILocation(line: 804, column: 62, scope: !2719, inlinedAt: !2732)
!2735 = !DILocation(line: 805, column: 51, scope: !2719, inlinedAt: !2732)
!2736 = !DILocation(line: 807, column: 37, scope: !2719, inlinedAt: !2732)
!2737 = !DILocation(line: 807, column: 33, scope: !2719, inlinedAt: !2732)
!2738 = !DILocation(line: 808, column: 11, scope: !2719, inlinedAt: !2732)
!2739 = !DILocation(line: 808, column: 7, scope: !2719, inlinedAt: !2732)
!2740 = !DILocation(line: 810, column: 18, scope: !2719, inlinedAt: !2732)
!2741 = !DILocation(line: 810, column: 24, scope: !2719, inlinedAt: !2732)
!2742 = !DILocation(line: 810, column: 7, scope: !2719, inlinedAt: !2732)
!2743 = !DILocation(line: 811, column: 69, scope: !2719, inlinedAt: !2732)
!2744 = !DILocation(line: 812, column: 53, scope: !2719, inlinedAt: !2732)
!2745 = !DILocation(line: 813, column: 49, scope: !2719, inlinedAt: !2732)
!2746 = !DILocation(line: 814, column: 49, scope: !2719, inlinedAt: !2732)
!2747 = !DILocation(line: 811, column: 20, scope: !2719, inlinedAt: !2732)
!2748 = !DILocation(line: 814, column: 62, scope: !2719, inlinedAt: !2732)
!2749 = !DILocation(line: 811, column: 10, scope: !2719, inlinedAt: !2732)
!2750 = !DILocalVariable(name: "n", arg: 1, scope: !2751, file: !612, line: 220, type: !21)
!2751 = distinct !DISubprogram(name: "xcharalloc", scope: !612, file: !612, line: 220, type: !2752, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!32, !21}
!2754 = !{!2750}
!2755 = !DILocation(line: 220, column: 20, scope: !2751, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 815, column: 15, scope: !2719, inlinedAt: !2732)
!2757 = !DILocation(line: 222, column: 10, scope: !2751, inlinedAt: !2756)
!2758 = !DILocation(line: 815, column: 9, scope: !2719, inlinedAt: !2732)
!2759 = !DILocation(line: 816, column: 60, scope: !2719, inlinedAt: !2732)
!2760 = !DILocation(line: 818, column: 32, scope: !2719, inlinedAt: !2732)
!2761 = !DILocation(line: 818, column: 47, scope: !2719, inlinedAt: !2732)
!2762 = !DILocation(line: 816, column: 3, scope: !2719, inlinedAt: !2732)
!2763 = !DILocation(line: 819, column: 9, scope: !2719, inlinedAt: !2732)
!2764 = !DILocation(line: 794, column: 3, scope: !2708)
!2765 = !DILocation(line: 804, column: 33, scope: !2719)
!2766 = !DILocation(line: 804, column: 45, scope: !2719)
!2767 = !DILocation(line: 804, column: 62, scope: !2719)
!2768 = !DILocation(line: 805, column: 51, scope: !2719)
!2769 = !DILocation(line: 807, column: 37, scope: !2719)
!2770 = !DILocation(line: 807, column: 33, scope: !2719)
!2771 = !DILocation(line: 808, column: 11, scope: !2719)
!2772 = !DILocation(line: 808, column: 7, scope: !2719)
!2773 = !DILocation(line: 810, column: 18, scope: !2719)
!2774 = !DILocation(line: 810, column: 27, scope: !2719)
!2775 = !DILocation(line: 810, column: 24, scope: !2719)
!2776 = !DILocation(line: 810, column: 7, scope: !2719)
!2777 = !DILocation(line: 811, column: 69, scope: !2719)
!2778 = !DILocation(line: 812, column: 53, scope: !2719)
!2779 = !DILocation(line: 813, column: 49, scope: !2719)
!2780 = !DILocation(line: 814, column: 49, scope: !2719)
!2781 = !DILocation(line: 811, column: 20, scope: !2719)
!2782 = !DILocation(line: 814, column: 62, scope: !2719)
!2783 = !DILocation(line: 811, column: 10, scope: !2719)
!2784 = !DILocation(line: 220, column: 20, scope: !2751, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 815, column: 15, scope: !2719)
!2786 = !DILocation(line: 222, column: 10, scope: !2751, inlinedAt: !2785)
!2787 = !DILocation(line: 815, column: 9, scope: !2719)
!2788 = !DILocation(line: 816, column: 60, scope: !2719)
!2789 = !DILocation(line: 818, column: 32, scope: !2719)
!2790 = !DILocation(line: 818, column: 47, scope: !2719)
!2791 = !DILocation(line: 816, column: 3, scope: !2719)
!2792 = !DILocation(line: 819, column: 9, scope: !2719)
!2793 = !DILocation(line: 820, column: 7, scope: !2719)
!2794 = !DILocation(line: 821, column: 11, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2719, file: !166, line: 820, column: 7)
!2796 = !DILocation(line: 821, column: 5, scope: !2795)
!2797 = !DILocation(line: 822, column: 3, scope: !2719)
!2798 = distinct !DISubprogram(name: "quotearg_free", scope: !166, file: !166, line: 840, type: !688, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2799)
!2799 = !{!2800, !2801}
!2800 = !DILocalVariable(name: "sv", scope: !2798, file: !166, line: 842, type: !193)
!2801 = !DILocalVariable(name: "i", scope: !2798, file: !166, line: 843, type: !48)
!2802 = !DILocation(line: 842, column: 24, scope: !2798)
!2803 = !DILocation(line: 842, column: 19, scope: !2798)
!2804 = !DILocation(line: 843, column: 7, scope: !2798)
!2805 = !DILocation(line: 844, column: 19, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2807, file: !166, discriminator: 1)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !166, line: 844, column: 3)
!2808 = distinct !DILexicalBlock(scope: !2798, file: !166, line: 844, column: 3)
!2809 = !DILocation(line: 844, column: 17, scope: !2806)
!2810 = !DILocation(line: 844, column: 3, scope: !2811)
!2811 = !DILexicalBlockFile(scope: !2808, file: !166, discriminator: 1)
!2812 = !DILocation(line: 845, column: 17, scope: !2807)
!2813 = !{!2814, !673, i64 8}
!2814 = !{!"slotvec", !837, i64 0, !673, i64 8}
!2815 = !DILocation(line: 845, column: 5, scope: !2807)
!2816 = !DILocation(line: 844, column: 28, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !2807, file: !166, discriminator: 2)
!2818 = distinct !{!2818, !2819, !2820}
!2819 = !DILocation(line: 844, column: 3, scope: !2808)
!2820 = !DILocation(line: 845, column: 20, scope: !2808)
!2821 = !DILocation(line: 846, column: 13, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2798, file: !166, line: 846, column: 7)
!2823 = !DILocation(line: 846, column: 17, scope: !2822)
!2824 = !DILocation(line: 846, column: 7, scope: !2798)
!2825 = !DILocation(line: 848, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2822, file: !166, line: 847, column: 5)
!2827 = !DILocation(line: 849, column: 21, scope: !2826)
!2828 = !{!2814, !837, i64 0}
!2829 = !DILocation(line: 850, column: 20, scope: !2826)
!2830 = !DILocation(line: 851, column: 5, scope: !2826)
!2831 = !DILocation(line: 852, column: 10, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2798, file: !166, line: 852, column: 7)
!2833 = !DILocation(line: 852, column: 7, scope: !2798)
!2834 = !DILocation(line: 854, column: 13, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2832, file: !166, line: 853, column: 5)
!2836 = !DILocation(line: 854, column: 7, scope: !2835)
!2837 = !DILocation(line: 855, column: 15, scope: !2835)
!2838 = !DILocation(line: 856, column: 5, scope: !2835)
!2839 = !DILocation(line: 857, column: 10, scope: !2798)
!2840 = !DILocation(line: 858, column: 1, scope: !2798)
!2841 = distinct !DISubprogram(name: "quotearg_n", scope: !166, file: !166, line: 922, type: !2842, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!32, !48, !29}
!2844 = !{!2845, !2846}
!2845 = !DILocalVariable(name: "n", arg: 1, scope: !2841, file: !166, line: 922, type: !48)
!2846 = !DILocalVariable(name: "arg", arg: 2, scope: !2841, file: !166, line: 922, type: !29)
!2847 = !DILocation(line: 922, column: 17, scope: !2841)
!2848 = !DILocation(line: 922, column: 32, scope: !2841)
!2849 = !DILocation(line: 924, column: 10, scope: !2841)
!2850 = !DILocation(line: 924, column: 3, scope: !2841)
!2851 = distinct !DISubprogram(name: "quotearg_n_options", scope: !166, file: !166, line: 869, type: !2852, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!32, !48, !29, !21, !1549}
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2861, !2864, !2866, !2867, !2868}
!2855 = !DILocalVariable(name: "n", arg: 1, scope: !2851, file: !166, line: 869, type: !48)
!2856 = !DILocalVariable(name: "arg", arg: 2, scope: !2851, file: !166, line: 869, type: !29)
!2857 = !DILocalVariable(name: "argsize", arg: 3, scope: !2851, file: !166, line: 869, type: !21)
!2858 = !DILocalVariable(name: "options", arg: 4, scope: !2851, file: !166, line: 870, type: !1549)
!2859 = !DILocalVariable(name: "e", scope: !2851, file: !166, line: 872, type: !48)
!2860 = !DILocalVariable(name: "sv", scope: !2851, file: !166, line: 874, type: !193)
!2861 = !DILocalVariable(name: "preallocated", scope: !2862, file: !166, line: 881, type: !107)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !166, line: 880, column: 5)
!2863 = distinct !DILexicalBlock(scope: !2851, file: !166, line: 879, column: 7)
!2864 = !DILocalVariable(name: "size", scope: !2865, file: !166, line: 894, type: !21)
!2865 = distinct !DILexicalBlock(scope: !2851, file: !166, line: 893, column: 3)
!2866 = !DILocalVariable(name: "val", scope: !2865, file: !166, line: 895, type: !32)
!2867 = !DILocalVariable(name: "flags", scope: !2865, file: !166, line: 897, type: !48)
!2868 = !DILocalVariable(name: "qsize", scope: !2865, file: !166, line: 898, type: !21)
!2869 = !DILocation(line: 869, column: 25, scope: !2851)
!2870 = !DILocation(line: 869, column: 40, scope: !2851)
!2871 = !DILocation(line: 869, column: 52, scope: !2851)
!2872 = !DILocation(line: 870, column: 51, scope: !2851)
!2873 = !DILocation(line: 872, column: 11, scope: !2851)
!2874 = !DILocation(line: 872, column: 7, scope: !2851)
!2875 = !DILocation(line: 874, column: 24, scope: !2851)
!2876 = !DILocation(line: 874, column: 19, scope: !2851)
!2877 = !DILocation(line: 876, column: 9, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2851, file: !166, line: 876, column: 7)
!2879 = !DILocation(line: 876, column: 7, scope: !2851)
!2880 = !DILocation(line: 877, column: 5, scope: !2878)
!2881 = !DILocation(line: 879, column: 7, scope: !2863)
!2882 = !DILocation(line: 879, column: 14, scope: !2863)
!2883 = !DILocation(line: 879, column: 7, scope: !2851)
!2884 = !DILocation(line: 881, column: 31, scope: !2862)
!2885 = !DILocation(line: 883, column: 67, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2862, file: !166, line: 883, column: 11)
!2887 = !DILocation(line: 883, column: 11, scope: !2862)
!2888 = !DILocation(line: 884, column: 9, scope: !2886)
!2889 = !DILocation(line: 886, column: 32, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !2862, file: !166, discriminator: 3)
!2891 = !DILocation(line: 886, column: 61, scope: !2890)
!2892 = !DILocation(line: 886, column: 58, scope: !2890)
!2893 = !DILocation(line: 886, column: 66, scope: !2890)
!2894 = !DILocation(line: 886, column: 22, scope: !2890)
!2895 = !DILocation(line: 886, column: 15, scope: !2890)
!2896 = !DILocation(line: 887, column: 11, scope: !2862)
!2897 = !DILocation(line: 888, column: 15, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2862, file: !166, line: 887, column: 11)
!2899 = !{i64 0, i64 8, !913, i64 8, i64 8, !672}
!2900 = !DILocation(line: 888, column: 9, scope: !2898)
!2901 = !DILocation(line: 889, column: 20, scope: !2862)
!2902 = !DILocation(line: 889, column: 18, scope: !2862)
!2903 = !DILocation(line: 889, column: 7, scope: !2862)
!2904 = !DILocation(line: 889, column: 38, scope: !2862)
!2905 = !DILocation(line: 889, column: 31, scope: !2862)
!2906 = !DILocation(line: 889, column: 48, scope: !2862)
!2907 = !DILocation(line: 890, column: 14, scope: !2862)
!2908 = !DILocation(line: 891, column: 5, scope: !2862)
!2909 = !DILocation(line: 894, column: 19, scope: !2865)
!2910 = !DILocation(line: 894, column: 25, scope: !2865)
!2911 = !DILocation(line: 894, column: 12, scope: !2865)
!2912 = !DILocation(line: 895, column: 23, scope: !2865)
!2913 = !DILocation(line: 895, column: 11, scope: !2865)
!2914 = !DILocation(line: 897, column: 26, scope: !2865)
!2915 = !DILocation(line: 897, column: 32, scope: !2865)
!2916 = !DILocation(line: 897, column: 9, scope: !2865)
!2917 = !DILocation(line: 899, column: 55, scope: !2865)
!2918 = !DILocation(line: 900, column: 46, scope: !2865)
!2919 = !DILocation(line: 901, column: 55, scope: !2865)
!2920 = !DILocation(line: 902, column: 55, scope: !2865)
!2921 = !DILocation(line: 898, column: 20, scope: !2865)
!2922 = !DILocation(line: 898, column: 12, scope: !2865)
!2923 = !DILocation(line: 904, column: 14, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2865, file: !166, line: 904, column: 9)
!2925 = !DILocation(line: 904, column: 9, scope: !2865)
!2926 = !DILocation(line: 906, column: 35, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2924, file: !166, line: 905, column: 7)
!2928 = !DILocation(line: 906, column: 20, scope: !2927)
!2929 = !DILocation(line: 907, column: 17, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !166, line: 907, column: 13)
!2931 = !DILocation(line: 907, column: 13, scope: !2927)
!2932 = !DILocation(line: 908, column: 11, scope: !2930)
!2933 = !DILocation(line: 220, column: 20, scope: !2751, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 909, column: 27, scope: !2927)
!2935 = !DILocation(line: 222, column: 10, scope: !2751, inlinedAt: !2934)
!2936 = !DILocation(line: 909, column: 19, scope: !2927)
!2937 = !DILocation(line: 910, column: 69, scope: !2927)
!2938 = !DILocation(line: 912, column: 44, scope: !2927)
!2939 = !DILocation(line: 913, column: 44, scope: !2927)
!2940 = !DILocation(line: 910, column: 9, scope: !2927)
!2941 = !DILocation(line: 914, column: 7, scope: !2927)
!2942 = !DILocation(line: 916, column: 11, scope: !2865)
!2943 = !DILocation(line: 917, column: 5, scope: !2865)
!2944 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !166, file: !166, line: 928, type: !2945, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!32, !48, !29, !21}
!2947 = !{!2948, !2949, !2950}
!2948 = !DILocalVariable(name: "n", arg: 1, scope: !2944, file: !166, line: 928, type: !48)
!2949 = !DILocalVariable(name: "arg", arg: 2, scope: !2944, file: !166, line: 928, type: !29)
!2950 = !DILocalVariable(name: "argsize", arg: 3, scope: !2944, file: !166, line: 928, type: !21)
!2951 = !DILocation(line: 928, column: 21, scope: !2944)
!2952 = !DILocation(line: 928, column: 36, scope: !2944)
!2953 = !DILocation(line: 928, column: 48, scope: !2944)
!2954 = !DILocation(line: 930, column: 10, scope: !2944)
!2955 = !DILocation(line: 930, column: 3, scope: !2944)
!2956 = distinct !DISubprogram(name: "quotearg", scope: !166, file: !166, line: 934, type: !1236, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2957)
!2957 = !{!2958}
!2958 = !DILocalVariable(name: "arg", arg: 1, scope: !2956, file: !166, line: 934, type: !29)
!2959 = !DILocation(line: 934, column: 23, scope: !2956)
!2960 = !DILocation(line: 922, column: 17, scope: !2841, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 936, column: 10, scope: !2956)
!2962 = !DILocation(line: 922, column: 32, scope: !2841, inlinedAt: !2961)
!2963 = !DILocation(line: 924, column: 10, scope: !2841, inlinedAt: !2961)
!2964 = !DILocation(line: 936, column: 3, scope: !2956)
!2965 = distinct !DISubprogram(name: "quotearg_mem", scope: !166, file: !166, line: 940, type: !2966, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!32, !29, !21}
!2968 = !{!2969, !2970}
!2969 = !DILocalVariable(name: "arg", arg: 1, scope: !2965, file: !166, line: 940, type: !29)
!2970 = !DILocalVariable(name: "argsize", arg: 2, scope: !2965, file: !166, line: 940, type: !21)
!2971 = !DILocation(line: 940, column: 27, scope: !2965)
!2972 = !DILocation(line: 940, column: 39, scope: !2965)
!2973 = !DILocation(line: 928, column: 21, scope: !2944, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 942, column: 10, scope: !2965)
!2975 = !DILocation(line: 928, column: 36, scope: !2944, inlinedAt: !2974)
!2976 = !DILocation(line: 928, column: 48, scope: !2944, inlinedAt: !2974)
!2977 = !DILocation(line: 930, column: 10, scope: !2944, inlinedAt: !2974)
!2978 = !DILocation(line: 942, column: 3, scope: !2965)
!2979 = distinct !DISubprogram(name: "quotearg_n_style", scope: !166, file: !166, line: 946, type: !2980, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!32, !48, !127, !29}
!2982 = !{!2983, !2984, !2985, !2986}
!2983 = !DILocalVariable(name: "n", arg: 1, scope: !2979, file: !166, line: 946, type: !48)
!2984 = !DILocalVariable(name: "s", arg: 2, scope: !2979, file: !166, line: 946, type: !127)
!2985 = !DILocalVariable(name: "arg", arg: 3, scope: !2979, file: !166, line: 946, type: !29)
!2986 = !DILocalVariable(name: "o", scope: !2979, file: !166, line: 948, type: !1550)
!2987 = !DILocalVariable(name: "o", scope: !2988, file: !166, line: 187, type: !173)
!2988 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !166, file: !166, line: 185, type: !2989, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!173, !127}
!2991 = !{!2992, !2987}
!2992 = !DILocalVariable(name: "style", arg: 1, scope: !2988, file: !166, line: 185, type: !127)
!2993 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2994 = !DILocation(line: 187, column: 26, scope: !2988, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 948, column: 36, scope: !2979)
!2996 = !DILocation(line: 946, column: 23, scope: !2979)
!2997 = !DILocation(line: 946, column: 45, scope: !2979)
!2998 = !DILocation(line: 946, column: 60, scope: !2979)
!2999 = !DILocation(line: 948, column: 3, scope: !2979)
!3000 = !DILocation(line: 948, column: 32, scope: !2979)
!3001 = !DILocation(line: 185, column: 48, scope: !2988, inlinedAt: !2995)
!3002 = !DILocation(line: 187, column: 3, scope: !2988, inlinedAt: !2995)
!3003 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3004 = !DILocation(line: 188, column: 13, scope: !3005, inlinedAt: !2995)
!3005 = distinct !DILexicalBlock(scope: !2988, file: !166, line: 188, column: 7)
!3006 = !DILocation(line: 188, column: 7, scope: !2988, inlinedAt: !2995)
!3007 = !DILocation(line: 189, column: 5, scope: !3005, inlinedAt: !2995)
!3008 = !{!3009}
!3009 = distinct !{!3009, !3010, !"quoting_options_from_style: argument 0"}
!3010 = distinct !{!3010, !"quoting_options_from_style"}
!3011 = !DILocation(line: 191, column: 10, scope: !2988, inlinedAt: !2995)
!3012 = !DILocation(line: 192, column: 1, scope: !2988, inlinedAt: !2995)
!3013 = !DILocation(line: 949, column: 10, scope: !2979)
!3014 = !DILocation(line: 950, column: 1, scope: !2979)
!3015 = !DILocation(line: 949, column: 3, scope: !2979)
!3016 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !166, file: !166, line: 953, type: !3017, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!32, !48, !127, !29, !21}
!3019 = !{!3020, !3021, !3022, !3023, !3024}
!3020 = !DILocalVariable(name: "n", arg: 1, scope: !3016, file: !166, line: 953, type: !48)
!3021 = !DILocalVariable(name: "s", arg: 2, scope: !3016, file: !166, line: 953, type: !127)
!3022 = !DILocalVariable(name: "arg", arg: 3, scope: !3016, file: !166, line: 954, type: !29)
!3023 = !DILocalVariable(name: "argsize", arg: 4, scope: !3016, file: !166, line: 954, type: !21)
!3024 = !DILocalVariable(name: "o", scope: !3016, file: !166, line: 956, type: !1550)
!3025 = !DILocation(line: 187, column: 26, scope: !2988, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 956, column: 36, scope: !3016)
!3027 = !DILocation(line: 953, column: 27, scope: !3016)
!3028 = !DILocation(line: 953, column: 49, scope: !3016)
!3029 = !DILocation(line: 954, column: 35, scope: !3016)
!3030 = !DILocation(line: 954, column: 47, scope: !3016)
!3031 = !DILocation(line: 956, column: 3, scope: !3016)
!3032 = !DILocation(line: 956, column: 32, scope: !3016)
!3033 = !DILocation(line: 185, column: 48, scope: !2988, inlinedAt: !3026)
!3034 = !DILocation(line: 187, column: 3, scope: !2988, inlinedAt: !3026)
!3035 = !DILocation(line: 188, column: 13, scope: !3005, inlinedAt: !3026)
!3036 = !DILocation(line: 188, column: 7, scope: !2988, inlinedAt: !3026)
!3037 = !DILocation(line: 189, column: 5, scope: !3005, inlinedAt: !3026)
!3038 = !{!3039}
!3039 = distinct !{!3039, !3040, !"quoting_options_from_style: argument 0"}
!3040 = distinct !{!3040, !"quoting_options_from_style"}
!3041 = !DILocation(line: 191, column: 10, scope: !2988, inlinedAt: !3026)
!3042 = !DILocation(line: 192, column: 1, scope: !2988, inlinedAt: !3026)
!3043 = !DILocation(line: 957, column: 10, scope: !3016)
!3044 = !DILocation(line: 958, column: 1, scope: !3016)
!3045 = !DILocation(line: 957, column: 3, scope: !3016)
!3046 = distinct !DISubprogram(name: "quotearg_style", scope: !166, file: !166, line: 961, type: !3047, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!32, !127, !29}
!3049 = !{!3050, !3051}
!3050 = !DILocalVariable(name: "s", arg: 1, scope: !3046, file: !166, line: 961, type: !127)
!3051 = !DILocalVariable(name: "arg", arg: 2, scope: !3046, file: !166, line: 961, type: !29)
!3052 = !DILocation(line: 187, column: 26, scope: !2988, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 948, column: 36, scope: !2979, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 963, column: 10, scope: !3046)
!3055 = !DILocation(line: 961, column: 36, scope: !3046)
!3056 = !DILocation(line: 961, column: 51, scope: !3046)
!3057 = !DILocation(line: 946, column: 23, scope: !2979, inlinedAt: !3054)
!3058 = !DILocation(line: 946, column: 45, scope: !2979, inlinedAt: !3054)
!3059 = !DILocation(line: 946, column: 60, scope: !2979, inlinedAt: !3054)
!3060 = !DILocation(line: 948, column: 3, scope: !2979, inlinedAt: !3054)
!3061 = !DILocation(line: 948, column: 32, scope: !2979, inlinedAt: !3054)
!3062 = !DILocation(line: 185, column: 48, scope: !2988, inlinedAt: !3053)
!3063 = !DILocation(line: 187, column: 3, scope: !2988, inlinedAt: !3053)
!3064 = !DILocation(line: 188, column: 13, scope: !3005, inlinedAt: !3053)
!3065 = !DILocation(line: 188, column: 7, scope: !2988, inlinedAt: !3053)
!3066 = !DILocation(line: 189, column: 5, scope: !3005, inlinedAt: !3053)
!3067 = !{!3068}
!3068 = distinct !{!3068, !3069, !"quoting_options_from_style: argument 0"}
!3069 = distinct !{!3069, !"quoting_options_from_style"}
!3070 = !DILocation(line: 191, column: 10, scope: !2988, inlinedAt: !3053)
!3071 = !DILocation(line: 192, column: 1, scope: !2988, inlinedAt: !3053)
!3072 = !DILocation(line: 949, column: 10, scope: !2979, inlinedAt: !3054)
!3073 = !DILocation(line: 950, column: 1, scope: !2979, inlinedAt: !3054)
!3074 = !DILocation(line: 963, column: 3, scope: !3046)
!3075 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !166, file: !166, line: 967, type: !3076, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!32, !127, !29, !21}
!3078 = !{!3079, !3080, !3081}
!3079 = !DILocalVariable(name: "s", arg: 1, scope: !3075, file: !166, line: 967, type: !127)
!3080 = !DILocalVariable(name: "arg", arg: 2, scope: !3075, file: !166, line: 967, type: !29)
!3081 = !DILocalVariable(name: "argsize", arg: 3, scope: !3075, file: !166, line: 967, type: !21)
!3082 = !DILocation(line: 187, column: 26, scope: !2988, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 956, column: 36, scope: !3016, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 969, column: 10, scope: !3075)
!3085 = !DILocation(line: 967, column: 40, scope: !3075)
!3086 = !DILocation(line: 967, column: 55, scope: !3075)
!3087 = !DILocation(line: 967, column: 67, scope: !3075)
!3088 = !DILocation(line: 953, column: 27, scope: !3016, inlinedAt: !3084)
!3089 = !DILocation(line: 953, column: 49, scope: !3016, inlinedAt: !3084)
!3090 = !DILocation(line: 954, column: 35, scope: !3016, inlinedAt: !3084)
!3091 = !DILocation(line: 954, column: 47, scope: !3016, inlinedAt: !3084)
!3092 = !DILocation(line: 956, column: 3, scope: !3016, inlinedAt: !3084)
!3093 = !DILocation(line: 956, column: 32, scope: !3016, inlinedAt: !3084)
!3094 = !DILocation(line: 185, column: 48, scope: !2988, inlinedAt: !3083)
!3095 = !DILocation(line: 187, column: 3, scope: !2988, inlinedAt: !3083)
!3096 = !DILocation(line: 188, column: 13, scope: !3005, inlinedAt: !3083)
!3097 = !DILocation(line: 188, column: 7, scope: !2988, inlinedAt: !3083)
!3098 = !DILocation(line: 189, column: 5, scope: !3005, inlinedAt: !3083)
!3099 = !{!3100}
!3100 = distinct !{!3100, !3101, !"quoting_options_from_style: argument 0"}
!3101 = distinct !{!3101, !"quoting_options_from_style"}
!3102 = !DILocation(line: 191, column: 10, scope: !2988, inlinedAt: !3083)
!3103 = !DILocation(line: 192, column: 1, scope: !2988, inlinedAt: !3083)
!3104 = !DILocation(line: 957, column: 10, scope: !3016, inlinedAt: !3084)
!3105 = !DILocation(line: 958, column: 1, scope: !3016, inlinedAt: !3084)
!3106 = !DILocation(line: 969, column: 3, scope: !3075)
!3107 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !166, file: !166, line: 973, type: !3108, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!32, !29, !21, !31}
!3110 = !{!3111, !3112, !3113, !3114}
!3111 = !DILocalVariable(name: "arg", arg: 1, scope: !3107, file: !166, line: 973, type: !29)
!3112 = !DILocalVariable(name: "argsize", arg: 2, scope: !3107, file: !166, line: 973, type: !21)
!3113 = !DILocalVariable(name: "ch", arg: 3, scope: !3107, file: !166, line: 973, type: !31)
!3114 = !DILocalVariable(name: "options", scope: !3107, file: !166, line: 975, type: !173)
!3115 = !DILocation(line: 973, column: 32, scope: !3107)
!3116 = !DILocation(line: 973, column: 44, scope: !3107)
!3117 = !DILocation(line: 973, column: 58, scope: !3107)
!3118 = !DILocation(line: 975, column: 3, scope: !3107)
!3119 = !DILocation(line: 976, column: 13, scope: !3107)
!3120 = !{i64 0, i64 4, !841, i64 4, i64 4, !814, i64 8, i64 32, !841, i64 40, i64 8, !672, i64 48, i64 8, !672}
!3121 = !DILocation(line: 975, column: 26, scope: !3107)
!3122 = !DILocation(line: 144, column: 43, scope: !1573, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 977, column: 3, scope: !3107)
!3124 = !DILocation(line: 144, column: 51, scope: !1573, inlinedAt: !3123)
!3125 = !DILocation(line: 144, column: 58, scope: !1573, inlinedAt: !3123)
!3126 = !DILocation(line: 146, column: 17, scope: !1573, inlinedAt: !3123)
!3127 = !DILocation(line: 148, column: 62, scope: !1591, inlinedAt: !3123)
!3128 = !DILocation(line: 148, column: 57, scope: !1591, inlinedAt: !3123)
!3129 = !DILocation(line: 147, column: 17, scope: !1573, inlinedAt: !3123)
!3130 = !DILocation(line: 149, column: 18, scope: !1573, inlinedAt: !3123)
!3131 = !DILocation(line: 149, column: 15, scope: !1573, inlinedAt: !3123)
!3132 = !DILocation(line: 149, column: 7, scope: !1573, inlinedAt: !3123)
!3133 = !DILocation(line: 150, column: 12, scope: !1573, inlinedAt: !3123)
!3134 = !DILocation(line: 150, column: 15, scope: !1573, inlinedAt: !3123)
!3135 = !DILocation(line: 150, column: 25, scope: !1573, inlinedAt: !3123)
!3136 = !DILocation(line: 150, column: 7, scope: !1573, inlinedAt: !3123)
!3137 = !DILocation(line: 151, column: 18, scope: !1573, inlinedAt: !3123)
!3138 = !DILocation(line: 151, column: 23, scope: !1573, inlinedAt: !3123)
!3139 = !DILocation(line: 151, column: 6, scope: !1573, inlinedAt: !3123)
!3140 = !DILocation(line: 978, column: 10, scope: !3107)
!3141 = !DILocation(line: 979, column: 1, scope: !3107)
!3142 = !DILocation(line: 978, column: 3, scope: !3107)
!3143 = distinct !DISubprogram(name: "quotearg_char", scope: !166, file: !166, line: 982, type: !3144, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!32, !29, !31}
!3146 = !{!3147, !3148}
!3147 = !DILocalVariable(name: "arg", arg: 1, scope: !3143, file: !166, line: 982, type: !29)
!3148 = !DILocalVariable(name: "ch", arg: 2, scope: !3143, file: !166, line: 982, type: !31)
!3149 = !DILocation(line: 982, column: 28, scope: !3143)
!3150 = !DILocation(line: 982, column: 38, scope: !3143)
!3151 = !DILocation(line: 973, column: 32, scope: !3107, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 984, column: 10, scope: !3143)
!3153 = !DILocation(line: 973, column: 44, scope: !3107, inlinedAt: !3152)
!3154 = !DILocation(line: 973, column: 58, scope: !3107, inlinedAt: !3152)
!3155 = !DILocation(line: 975, column: 3, scope: !3107, inlinedAt: !3152)
!3156 = !DILocation(line: 976, column: 13, scope: !3107, inlinedAt: !3152)
!3157 = !DILocation(line: 975, column: 26, scope: !3107, inlinedAt: !3152)
!3158 = !DILocation(line: 144, column: 43, scope: !1573, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 977, column: 3, scope: !3107, inlinedAt: !3152)
!3160 = !DILocation(line: 144, column: 51, scope: !1573, inlinedAt: !3159)
!3161 = !DILocation(line: 144, column: 58, scope: !1573, inlinedAt: !3159)
!3162 = !DILocation(line: 146, column: 17, scope: !1573, inlinedAt: !3159)
!3163 = !DILocation(line: 148, column: 62, scope: !1591, inlinedAt: !3159)
!3164 = !DILocation(line: 148, column: 57, scope: !1591, inlinedAt: !3159)
!3165 = !DILocation(line: 147, column: 17, scope: !1573, inlinedAt: !3159)
!3166 = !DILocation(line: 149, column: 18, scope: !1573, inlinedAt: !3159)
!3167 = !DILocation(line: 149, column: 15, scope: !1573, inlinedAt: !3159)
!3168 = !DILocation(line: 149, column: 7, scope: !1573, inlinedAt: !3159)
!3169 = !DILocation(line: 150, column: 12, scope: !1573, inlinedAt: !3159)
!3170 = !DILocation(line: 150, column: 15, scope: !1573, inlinedAt: !3159)
!3171 = !DILocation(line: 150, column: 25, scope: !1573, inlinedAt: !3159)
!3172 = !DILocation(line: 150, column: 7, scope: !1573, inlinedAt: !3159)
!3173 = !DILocation(line: 151, column: 18, scope: !1573, inlinedAt: !3159)
!3174 = !DILocation(line: 151, column: 23, scope: !1573, inlinedAt: !3159)
!3175 = !DILocation(line: 151, column: 6, scope: !1573, inlinedAt: !3159)
!3176 = !DILocation(line: 978, column: 10, scope: !3107, inlinedAt: !3152)
!3177 = !DILocation(line: 979, column: 1, scope: !3107, inlinedAt: !3152)
!3178 = !DILocation(line: 984, column: 3, scope: !3143)
!3179 = distinct !DISubprogram(name: "quotearg_colon", scope: !166, file: !166, line: 988, type: !1236, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3180)
!3180 = !{!3181}
!3181 = !DILocalVariable(name: "arg", arg: 1, scope: !3179, file: !166, line: 988, type: !29)
!3182 = !DILocation(line: 988, column: 29, scope: !3179)
!3183 = !DILocation(line: 982, column: 28, scope: !3143, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 990, column: 10, scope: !3179)
!3185 = !DILocation(line: 982, column: 38, scope: !3143, inlinedAt: !3184)
!3186 = !DILocation(line: 973, column: 32, scope: !3107, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 984, column: 10, scope: !3143, inlinedAt: !3184)
!3188 = !DILocation(line: 973, column: 44, scope: !3107, inlinedAt: !3187)
!3189 = !DILocation(line: 973, column: 58, scope: !3107, inlinedAt: !3187)
!3190 = !DILocation(line: 975, column: 3, scope: !3107, inlinedAt: !3187)
!3191 = !DILocation(line: 976, column: 13, scope: !3107, inlinedAt: !3187)
!3192 = !DILocation(line: 975, column: 26, scope: !3107, inlinedAt: !3187)
!3193 = !DILocation(line: 144, column: 43, scope: !1573, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 977, column: 3, scope: !3107, inlinedAt: !3187)
!3195 = !DILocation(line: 144, column: 51, scope: !1573, inlinedAt: !3194)
!3196 = !DILocation(line: 144, column: 58, scope: !1573, inlinedAt: !3194)
!3197 = !DILocation(line: 146, column: 17, scope: !1573, inlinedAt: !3194)
!3198 = !DILocation(line: 148, column: 57, scope: !1591, inlinedAt: !3194)
!3199 = !DILocation(line: 147, column: 17, scope: !1573, inlinedAt: !3194)
!3200 = !DILocation(line: 149, column: 7, scope: !1573, inlinedAt: !3194)
!3201 = !DILocation(line: 150, column: 12, scope: !1573, inlinedAt: !3194)
!3202 = !DILocation(line: 151, column: 6, scope: !1573, inlinedAt: !3194)
!3203 = !DILocation(line: 978, column: 10, scope: !3107, inlinedAt: !3187)
!3204 = !DILocation(line: 979, column: 1, scope: !3107, inlinedAt: !3187)
!3205 = !DILocation(line: 990, column: 3, scope: !3179)
!3206 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !166, file: !166, line: 994, type: !2966, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3207)
!3207 = !{!3208, !3209}
!3208 = !DILocalVariable(name: "arg", arg: 1, scope: !3206, file: !166, line: 994, type: !29)
!3209 = !DILocalVariable(name: "argsize", arg: 2, scope: !3206, file: !166, line: 994, type: !21)
!3210 = !DILocation(line: 994, column: 33, scope: !3206)
!3211 = !DILocation(line: 994, column: 45, scope: !3206)
!3212 = !DILocation(line: 973, column: 32, scope: !3107, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 996, column: 10, scope: !3206)
!3214 = !DILocation(line: 973, column: 44, scope: !3107, inlinedAt: !3213)
!3215 = !DILocation(line: 973, column: 58, scope: !3107, inlinedAt: !3213)
!3216 = !DILocation(line: 975, column: 3, scope: !3107, inlinedAt: !3213)
!3217 = !DILocation(line: 976, column: 13, scope: !3107, inlinedAt: !3213)
!3218 = !DILocation(line: 975, column: 26, scope: !3107, inlinedAt: !3213)
!3219 = !DILocation(line: 144, column: 43, scope: !1573, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 977, column: 3, scope: !3107, inlinedAt: !3213)
!3221 = !DILocation(line: 144, column: 51, scope: !1573, inlinedAt: !3220)
!3222 = !DILocation(line: 144, column: 58, scope: !1573, inlinedAt: !3220)
!3223 = !DILocation(line: 146, column: 17, scope: !1573, inlinedAt: !3220)
!3224 = !DILocation(line: 148, column: 57, scope: !1591, inlinedAt: !3220)
!3225 = !DILocation(line: 147, column: 17, scope: !1573, inlinedAt: !3220)
!3226 = !DILocation(line: 149, column: 7, scope: !1573, inlinedAt: !3220)
!3227 = !DILocation(line: 150, column: 12, scope: !1573, inlinedAt: !3220)
!3228 = !DILocation(line: 151, column: 6, scope: !1573, inlinedAt: !3220)
!3229 = !DILocation(line: 978, column: 10, scope: !3107, inlinedAt: !3213)
!3230 = !DILocation(line: 979, column: 1, scope: !3107, inlinedAt: !3213)
!3231 = !DILocation(line: 996, column: 3, scope: !3206)
!3232 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !166, file: !166, line: 1000, type: !2980, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3233)
!3233 = !{!3234, !3235, !3236, !3237}
!3234 = !DILocalVariable(name: "n", arg: 1, scope: !3232, file: !166, line: 1000, type: !48)
!3235 = !DILocalVariable(name: "s", arg: 2, scope: !3232, file: !166, line: 1000, type: !127)
!3236 = !DILocalVariable(name: "arg", arg: 3, scope: !3232, file: !166, line: 1000, type: !29)
!3237 = !DILocalVariable(name: "options", scope: !3232, file: !166, line: 1002, type: !173)
!3238 = !DILocation(line: 187, column: 26, scope: !2988, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 1003, column: 13, scope: !3232)
!3240 = !DILocation(line: 1000, column: 29, scope: !3232)
!3241 = !DILocation(line: 1000, column: 51, scope: !3232)
!3242 = !DILocation(line: 1000, column: 66, scope: !3232)
!3243 = !DILocation(line: 1002, column: 3, scope: !3232)
!3244 = !DILocation(line: 185, column: 48, scope: !2988, inlinedAt: !3239)
!3245 = !DILocation(line: 187, column: 3, scope: !2988, inlinedAt: !3239)
!3246 = !DILocation(line: 188, column: 13, scope: !3005, inlinedAt: !3239)
!3247 = !DILocation(line: 188, column: 7, scope: !2988, inlinedAt: !3239)
!3248 = !DILocation(line: 189, column: 5, scope: !3005, inlinedAt: !3239)
!3249 = !{!3250}
!3250 = distinct !{!3250, !3251, !"quoting_options_from_style: argument 0"}
!3251 = distinct !{!3251, !"quoting_options_from_style"}
!3252 = !DILocation(line: 191, column: 10, scope: !2988, inlinedAt: !3239)
!3253 = !DILocation(line: 192, column: 1, scope: !2988, inlinedAt: !3239)
!3254 = !DILocation(line: 1003, column: 13, scope: !3232)
!3255 = !DILocation(line: 1002, column: 26, scope: !3232)
!3256 = !DILocation(line: 144, column: 43, scope: !1573, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 1004, column: 3, scope: !3232)
!3258 = !DILocation(line: 144, column: 51, scope: !1573, inlinedAt: !3257)
!3259 = !DILocation(line: 144, column: 58, scope: !1573, inlinedAt: !3257)
!3260 = !DILocation(line: 146, column: 17, scope: !1573, inlinedAt: !3257)
!3261 = !DILocation(line: 148, column: 57, scope: !1591, inlinedAt: !3257)
!3262 = !DILocation(line: 147, column: 17, scope: !1573, inlinedAt: !3257)
!3263 = !DILocation(line: 149, column: 7, scope: !1573, inlinedAt: !3257)
!3264 = !DILocation(line: 150, column: 12, scope: !1573, inlinedAt: !3257)
!3265 = !DILocation(line: 151, column: 6, scope: !1573, inlinedAt: !3257)
!3266 = !DILocation(line: 1005, column: 10, scope: !3232)
!3267 = !DILocation(line: 1006, column: 1, scope: !3232)
!3268 = !DILocation(line: 1005, column: 3, scope: !3232)
!3269 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !166, file: !166, line: 1009, type: !3270, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!32, !48, !29, !29, !29}
!3272 = !{!3273, !3274, !3275, !3276}
!3273 = !DILocalVariable(name: "n", arg: 1, scope: !3269, file: !166, line: 1009, type: !48)
!3274 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3269, file: !166, line: 1009, type: !29)
!3275 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3269, file: !166, line: 1010, type: !29)
!3276 = !DILocalVariable(name: "arg", arg: 4, scope: !3269, file: !166, line: 1010, type: !29)
!3277 = !DILocation(line: 1009, column: 24, scope: !3269)
!3278 = !DILocation(line: 1009, column: 39, scope: !3269)
!3279 = !DILocation(line: 1010, column: 32, scope: !3269)
!3280 = !DILocation(line: 1010, column: 57, scope: !3269)
!3281 = !DILocalVariable(name: "n", arg: 1, scope: !3282, file: !166, line: 1017, type: !48)
!3282 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !166, file: !166, line: 1017, type: !3283, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3285)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!32, !48, !29, !29, !29, !21}
!3285 = !{!3281, !3286, !3287, !3288, !3289, !3290}
!3286 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3282, file: !166, line: 1017, type: !29)
!3287 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3282, file: !166, line: 1018, type: !29)
!3288 = !DILocalVariable(name: "arg", arg: 4, scope: !3282, file: !166, line: 1019, type: !29)
!3289 = !DILocalVariable(name: "argsize", arg: 5, scope: !3282, file: !166, line: 1019, type: !21)
!3290 = !DILocalVariable(name: "o", scope: !3282, file: !166, line: 1021, type: !173)
!3291 = !DILocation(line: 1017, column: 28, scope: !3282, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1012, column: 10, scope: !3269)
!3293 = !DILocation(line: 1017, column: 43, scope: !3282, inlinedAt: !3292)
!3294 = !DILocation(line: 1018, column: 36, scope: !3282, inlinedAt: !3292)
!3295 = !DILocation(line: 1019, column: 36, scope: !3282, inlinedAt: !3292)
!3296 = !DILocation(line: 1019, column: 48, scope: !3282, inlinedAt: !3292)
!3297 = !DILocation(line: 1021, column: 3, scope: !3282, inlinedAt: !3292)
!3298 = !DILocation(line: 1021, column: 30, scope: !3282, inlinedAt: !3292)
!3299 = !DILocation(line: 1021, column: 26, scope: !3282, inlinedAt: !3292)
!3300 = !DILocation(line: 171, column: 45, scope: !1623, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 1022, column: 3, scope: !3282, inlinedAt: !3292)
!3302 = !DILocation(line: 172, column: 33, scope: !1623, inlinedAt: !3301)
!3303 = !DILocation(line: 172, column: 57, scope: !1623, inlinedAt: !3301)
!3304 = !DILocation(line: 176, column: 6, scope: !1623, inlinedAt: !3301)
!3305 = !DILocation(line: 176, column: 12, scope: !1623, inlinedAt: !3301)
!3306 = !DILocation(line: 177, column: 8, scope: !1639, inlinedAt: !3301)
!3307 = !DILocation(line: 177, column: 23, scope: !1641, inlinedAt: !3301)
!3308 = !DILocation(line: 177, column: 19, scope: !1639, inlinedAt: !3301)
!3309 = !DILocation(line: 178, column: 5, scope: !1639, inlinedAt: !3301)
!3310 = !DILocation(line: 179, column: 6, scope: !1623, inlinedAt: !3301)
!3311 = !DILocation(line: 179, column: 17, scope: !1623, inlinedAt: !3301)
!3312 = !DILocation(line: 180, column: 6, scope: !1623, inlinedAt: !3301)
!3313 = !DILocation(line: 180, column: 18, scope: !1623, inlinedAt: !3301)
!3314 = !DILocation(line: 1023, column: 10, scope: !3282, inlinedAt: !3292)
!3315 = !DILocation(line: 1024, column: 1, scope: !3282, inlinedAt: !3292)
!3316 = !DILocation(line: 1012, column: 3, scope: !3269)
!3317 = !DILocation(line: 1017, column: 28, scope: !3282)
!3318 = !DILocation(line: 1017, column: 43, scope: !3282)
!3319 = !DILocation(line: 1018, column: 36, scope: !3282)
!3320 = !DILocation(line: 1019, column: 36, scope: !3282)
!3321 = !DILocation(line: 1019, column: 48, scope: !3282)
!3322 = !DILocation(line: 1021, column: 3, scope: !3282)
!3323 = !DILocation(line: 1021, column: 30, scope: !3282)
!3324 = !DILocation(line: 1021, column: 26, scope: !3282)
!3325 = !DILocation(line: 171, column: 45, scope: !1623, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 1022, column: 3, scope: !3282)
!3327 = !DILocation(line: 172, column: 33, scope: !1623, inlinedAt: !3326)
!3328 = !DILocation(line: 172, column: 57, scope: !1623, inlinedAt: !3326)
!3329 = !DILocation(line: 176, column: 6, scope: !1623, inlinedAt: !3326)
!3330 = !DILocation(line: 176, column: 12, scope: !1623, inlinedAt: !3326)
!3331 = !DILocation(line: 177, column: 8, scope: !1639, inlinedAt: !3326)
!3332 = !DILocation(line: 177, column: 23, scope: !1641, inlinedAt: !3326)
!3333 = !DILocation(line: 177, column: 19, scope: !1639, inlinedAt: !3326)
!3334 = !DILocation(line: 178, column: 5, scope: !1639, inlinedAt: !3326)
!3335 = !DILocation(line: 179, column: 6, scope: !1623, inlinedAt: !3326)
!3336 = !DILocation(line: 179, column: 17, scope: !1623, inlinedAt: !3326)
!3337 = !DILocation(line: 180, column: 6, scope: !1623, inlinedAt: !3326)
!3338 = !DILocation(line: 180, column: 18, scope: !1623, inlinedAt: !3326)
!3339 = !DILocation(line: 1023, column: 10, scope: !3282)
!3340 = !DILocation(line: 1024, column: 1, scope: !3282)
!3341 = !DILocation(line: 1023, column: 3, scope: !3282)
!3342 = distinct !DISubprogram(name: "quotearg_custom", scope: !166, file: !166, line: 1027, type: !3343, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!32, !29, !29, !29}
!3345 = !{!3346, !3347, !3348}
!3346 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3342, file: !166, line: 1027, type: !29)
!3347 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3342, file: !166, line: 1027, type: !29)
!3348 = !DILocalVariable(name: "arg", arg: 3, scope: !3342, file: !166, line: 1028, type: !29)
!3349 = !DILocation(line: 1027, column: 30, scope: !3342)
!3350 = !DILocation(line: 1027, column: 54, scope: !3342)
!3351 = !DILocation(line: 1028, column: 30, scope: !3342)
!3352 = !DILocation(line: 1009, column: 24, scope: !3269, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 1030, column: 10, scope: !3342)
!3354 = !DILocation(line: 1009, column: 39, scope: !3269, inlinedAt: !3353)
!3355 = !DILocation(line: 1010, column: 32, scope: !3269, inlinedAt: !3353)
!3356 = !DILocation(line: 1010, column: 57, scope: !3269, inlinedAt: !3353)
!3357 = !DILocation(line: 1017, column: 28, scope: !3282, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 1012, column: 10, scope: !3269, inlinedAt: !3353)
!3359 = !DILocation(line: 1017, column: 43, scope: !3282, inlinedAt: !3358)
!3360 = !DILocation(line: 1018, column: 36, scope: !3282, inlinedAt: !3358)
!3361 = !DILocation(line: 1019, column: 36, scope: !3282, inlinedAt: !3358)
!3362 = !DILocation(line: 1019, column: 48, scope: !3282, inlinedAt: !3358)
!3363 = !DILocation(line: 1021, column: 3, scope: !3282, inlinedAt: !3358)
!3364 = !DILocation(line: 1021, column: 30, scope: !3282, inlinedAt: !3358)
!3365 = !DILocation(line: 1021, column: 26, scope: !3282, inlinedAt: !3358)
!3366 = !DILocation(line: 171, column: 45, scope: !1623, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 1022, column: 3, scope: !3282, inlinedAt: !3358)
!3368 = !DILocation(line: 172, column: 33, scope: !1623, inlinedAt: !3367)
!3369 = !DILocation(line: 172, column: 57, scope: !1623, inlinedAt: !3367)
!3370 = !DILocation(line: 176, column: 6, scope: !1623, inlinedAt: !3367)
!3371 = !DILocation(line: 176, column: 12, scope: !1623, inlinedAt: !3367)
!3372 = !DILocation(line: 177, column: 8, scope: !1639, inlinedAt: !3367)
!3373 = !DILocation(line: 177, column: 23, scope: !1641, inlinedAt: !3367)
!3374 = !DILocation(line: 177, column: 19, scope: !1639, inlinedAt: !3367)
!3375 = !DILocation(line: 178, column: 5, scope: !1639, inlinedAt: !3367)
!3376 = !DILocation(line: 179, column: 6, scope: !1623, inlinedAt: !3367)
!3377 = !DILocation(line: 179, column: 17, scope: !1623, inlinedAt: !3367)
!3378 = !DILocation(line: 180, column: 6, scope: !1623, inlinedAt: !3367)
!3379 = !DILocation(line: 180, column: 18, scope: !1623, inlinedAt: !3367)
!3380 = !DILocation(line: 1023, column: 10, scope: !3282, inlinedAt: !3358)
!3381 = !DILocation(line: 1024, column: 1, scope: !3282, inlinedAt: !3358)
!3382 = !DILocation(line: 1030, column: 3, scope: !3342)
!3383 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !166, file: !166, line: 1034, type: !3384, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!32, !29, !29, !29, !21}
!3386 = !{!3387, !3388, !3389, !3390}
!3387 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3383, file: !166, line: 1034, type: !29)
!3388 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3383, file: !166, line: 1034, type: !29)
!3389 = !DILocalVariable(name: "arg", arg: 3, scope: !3383, file: !166, line: 1035, type: !29)
!3390 = !DILocalVariable(name: "argsize", arg: 4, scope: !3383, file: !166, line: 1035, type: !21)
!3391 = !DILocation(line: 1034, column: 34, scope: !3383)
!3392 = !DILocation(line: 1034, column: 58, scope: !3383)
!3393 = !DILocation(line: 1035, column: 34, scope: !3383)
!3394 = !DILocation(line: 1035, column: 46, scope: !3383)
!3395 = !DILocation(line: 1017, column: 28, scope: !3282, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 1037, column: 10, scope: !3383)
!3397 = !DILocation(line: 1017, column: 43, scope: !3282, inlinedAt: !3396)
!3398 = !DILocation(line: 1018, column: 36, scope: !3282, inlinedAt: !3396)
!3399 = !DILocation(line: 1019, column: 36, scope: !3282, inlinedAt: !3396)
!3400 = !DILocation(line: 1019, column: 48, scope: !3282, inlinedAt: !3396)
!3401 = !DILocation(line: 1021, column: 3, scope: !3282, inlinedAt: !3396)
!3402 = !DILocation(line: 1021, column: 30, scope: !3282, inlinedAt: !3396)
!3403 = !DILocation(line: 1021, column: 26, scope: !3282, inlinedAt: !3396)
!3404 = !DILocation(line: 171, column: 45, scope: !1623, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 1022, column: 3, scope: !3282, inlinedAt: !3396)
!3406 = !DILocation(line: 172, column: 33, scope: !1623, inlinedAt: !3405)
!3407 = !DILocation(line: 172, column: 57, scope: !1623, inlinedAt: !3405)
!3408 = !DILocation(line: 176, column: 6, scope: !1623, inlinedAt: !3405)
!3409 = !DILocation(line: 176, column: 12, scope: !1623, inlinedAt: !3405)
!3410 = !DILocation(line: 177, column: 8, scope: !1639, inlinedAt: !3405)
!3411 = !DILocation(line: 177, column: 23, scope: !1641, inlinedAt: !3405)
!3412 = !DILocation(line: 177, column: 19, scope: !1639, inlinedAt: !3405)
!3413 = !DILocation(line: 178, column: 5, scope: !1639, inlinedAt: !3405)
!3414 = !DILocation(line: 179, column: 6, scope: !1623, inlinedAt: !3405)
!3415 = !DILocation(line: 179, column: 17, scope: !1623, inlinedAt: !3405)
!3416 = !DILocation(line: 180, column: 6, scope: !1623, inlinedAt: !3405)
!3417 = !DILocation(line: 180, column: 18, scope: !1623, inlinedAt: !3405)
!3418 = !DILocation(line: 1023, column: 10, scope: !3282, inlinedAt: !3396)
!3419 = !DILocation(line: 1024, column: 1, scope: !3282, inlinedAt: !3396)
!3420 = !DILocation(line: 1037, column: 3, scope: !3383)
!3421 = distinct !DISubprogram(name: "quote_n_mem", scope: !166, file: !166, line: 1052, type: !3422, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3424)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!29, !48, !29, !21}
!3424 = !{!3425, !3426, !3427}
!3425 = !DILocalVariable(name: "n", arg: 1, scope: !3421, file: !166, line: 1052, type: !48)
!3426 = !DILocalVariable(name: "arg", arg: 2, scope: !3421, file: !166, line: 1052, type: !29)
!3427 = !DILocalVariable(name: "argsize", arg: 3, scope: !3421, file: !166, line: 1052, type: !21)
!3428 = !DILocation(line: 1052, column: 18, scope: !3421)
!3429 = !DILocation(line: 1052, column: 33, scope: !3421)
!3430 = !DILocation(line: 1052, column: 45, scope: !3421)
!3431 = !DILocation(line: 1054, column: 10, scope: !3421)
!3432 = !DILocation(line: 1054, column: 3, scope: !3421)
!3433 = distinct !DISubprogram(name: "quote_mem", scope: !166, file: !166, line: 1058, type: !3434, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3436)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!29, !29, !21}
!3436 = !{!3437, !3438}
!3437 = !DILocalVariable(name: "arg", arg: 1, scope: !3433, file: !166, line: 1058, type: !29)
!3438 = !DILocalVariable(name: "argsize", arg: 2, scope: !3433, file: !166, line: 1058, type: !21)
!3439 = !DILocation(line: 1058, column: 24, scope: !3433)
!3440 = !DILocation(line: 1058, column: 36, scope: !3433)
!3441 = !DILocation(line: 1052, column: 18, scope: !3421, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 1060, column: 10, scope: !3433)
!3443 = !DILocation(line: 1052, column: 33, scope: !3421, inlinedAt: !3442)
!3444 = !DILocation(line: 1052, column: 45, scope: !3421, inlinedAt: !3442)
!3445 = !DILocation(line: 1054, column: 10, scope: !3421, inlinedAt: !3442)
!3446 = !DILocation(line: 1060, column: 3, scope: !3433)
!3447 = distinct !DISubprogram(name: "quote_n", scope: !166, file: !166, line: 1064, type: !3448, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!29, !48, !29}
!3450 = !{!3451, !3452}
!3451 = !DILocalVariable(name: "n", arg: 1, scope: !3447, file: !166, line: 1064, type: !48)
!3452 = !DILocalVariable(name: "arg", arg: 2, scope: !3447, file: !166, line: 1064, type: !29)
!3453 = !DILocation(line: 1064, column: 14, scope: !3447)
!3454 = !DILocation(line: 1064, column: 29, scope: !3447)
!3455 = !DILocation(line: 1052, column: 18, scope: !3421, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 1066, column: 10, scope: !3447)
!3457 = !DILocation(line: 1052, column: 33, scope: !3421, inlinedAt: !3456)
!3458 = !DILocation(line: 1052, column: 45, scope: !3421, inlinedAt: !3456)
!3459 = !DILocation(line: 1054, column: 10, scope: !3421, inlinedAt: !3456)
!3460 = !DILocation(line: 1066, column: 3, scope: !3447)
!3461 = distinct !DISubprogram(name: "quote", scope: !166, file: !166, line: 1070, type: !1426, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !3462)
!3462 = !{!3463}
!3463 = !DILocalVariable(name: "arg", arg: 1, scope: !3461, file: !166, line: 1070, type: !29)
!3464 = !DILocation(line: 1070, column: 20, scope: !3461)
!3465 = !DILocation(line: 1064, column: 14, scope: !3447, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 1072, column: 10, scope: !3461)
!3467 = !DILocation(line: 1064, column: 29, scope: !3447, inlinedAt: !3466)
!3468 = !DILocation(line: 1052, column: 18, scope: !3421, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 1066, column: 10, scope: !3447, inlinedAt: !3466)
!3470 = !DILocation(line: 1052, column: 33, scope: !3421, inlinedAt: !3469)
!3471 = !DILocation(line: 1052, column: 45, scope: !3421, inlinedAt: !3469)
!3472 = !DILocation(line: 1054, column: 10, scope: !3421, inlinedAt: !3469)
!3473 = !DILocation(line: 1072, column: 3, scope: !3461)
!3474 = distinct !DISubprogram(name: "version_etc_arn", scope: !605, file: !605, line: 62, type: !3475, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !3529)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !3477, !29, !29, !29, !757, !21}
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3479, line: 49, baseType: !3480)
!3479 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3481, line: 241, size: 1728, elements: !3482)
!3481 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3482 = !{!3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3503, !3504, !3505, !3506, !3507, !3508, !3510, !3514, !3517, !3519, !3520, !3521, !3522, !3523, !3524, !3525}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3480, file: !3481, line: 242, baseType: !48, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3480, file: !3481, line: 247, baseType: !32, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3480, file: !3481, line: 248, baseType: !32, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3480, file: !3481, line: 249, baseType: !32, size: 64, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3480, file: !3481, line: 250, baseType: !32, size: 64, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3480, file: !3481, line: 251, baseType: !32, size: 64, offset: 320)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3480, file: !3481, line: 252, baseType: !32, size: 64, offset: 384)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3480, file: !3481, line: 253, baseType: !32, size: 64, offset: 448)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3480, file: !3481, line: 254, baseType: !32, size: 64, offset: 512)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3480, file: !3481, line: 256, baseType: !32, size: 64, offset: 576)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3480, file: !3481, line: 257, baseType: !32, size: 64, offset: 640)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3480, file: !3481, line: 258, baseType: !32, size: 64, offset: 704)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3480, file: !3481, line: 260, baseType: !3496, size: 64, offset: 768)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3481, line: 156, size: 192, elements: !3498)
!3498 = !{!3499, !3500, !3502}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3497, file: !3481, line: 157, baseType: !3496, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3497, file: !3481, line: 158, baseType: !3501, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3497, file: !3481, line: 162, baseType: !48, size: 32, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3480, file: !3481, line: 262, baseType: !3501, size: 64, offset: 832)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3480, file: !3481, line: 264, baseType: !48, size: 32, offset: 896)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3480, file: !3481, line: 268, baseType: !48, size: 32, offset: 928)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3480, file: !3481, line: 270, baseType: !779, size: 64, offset: 960)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3480, file: !3481, line: 274, baseType: !162, size: 16, offset: 1024)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3480, file: !3481, line: 275, baseType: !3509, size: 8, offset: 1040)
!3509 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3480, file: !3481, line: 276, baseType: !3511, size: 8, offset: 1048)
!3511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !3512)
!3512 = !{!3513}
!3513 = !DISubrange(count: 1)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3480, file: !3481, line: 280, baseType: !3515, size: 64, offset: 1088)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3481, line: 150, baseType: null)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3480, file: !3481, line: 289, baseType: !3518, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 141, baseType: !780)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3480, file: !3481, line: 297, baseType: !33, size: 64, offset: 1216)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3480, file: !3481, line: 298, baseType: !33, size: 64, offset: 1280)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3480, file: !3481, line: 299, baseType: !33, size: 64, offset: 1344)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3480, file: !3481, line: 300, baseType: !33, size: 64, offset: 1408)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3480, file: !3481, line: 302, baseType: !21, size: 64, offset: 1472)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3480, file: !3481, line: 303, baseType: !48, size: 32, offset: 1536)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3480, file: !3481, line: 305, baseType: !3526, size: 160, offset: 1568)
!3526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !3527)
!3527 = !{!3528}
!3528 = !DISubrange(count: 20)
!3529 = !{!3530, !3531, !3532, !3533, !3534, !3535}
!3530 = !DILocalVariable(name: "stream", arg: 1, scope: !3474, file: !605, line: 62, type: !3477)
!3531 = !DILocalVariable(name: "command_name", arg: 2, scope: !3474, file: !605, line: 63, type: !29)
!3532 = !DILocalVariable(name: "package", arg: 3, scope: !3474, file: !605, line: 63, type: !29)
!3533 = !DILocalVariable(name: "version", arg: 4, scope: !3474, file: !605, line: 64, type: !29)
!3534 = !DILocalVariable(name: "authors", arg: 5, scope: !3474, file: !605, line: 65, type: !757)
!3535 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3474, file: !605, line: 65, type: !21)
!3536 = !DILocation(line: 62, column: 24, scope: !3474)
!3537 = !DILocation(line: 63, column: 30, scope: !3474)
!3538 = !DILocation(line: 63, column: 56, scope: !3474)
!3539 = !DILocation(line: 64, column: 30, scope: !3474)
!3540 = !DILocation(line: 65, column: 39, scope: !3474)
!3541 = !DILocation(line: 65, column: 55, scope: !3474)
!3542 = !DILocation(line: 67, column: 7, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3474, file: !605, line: 67, column: 7)
!3544 = !DILocation(line: 67, column: 7, scope: !3474)
!3545 = !DILocation(line: 68, column: 5, scope: !3543)
!3546 = !DILocation(line: 70, column: 5, scope: !3543)
!3547 = !DILocation(line: 84, column: 3, scope: !3474)
!3548 = !DILocation(line: 84, column: 3, scope: !3549)
!3549 = !DILexicalBlockFile(scope: !3474, file: !605, discriminator: 1)
!3550 = !DILocation(line: 86, column: 3, scope: !3474)
!3551 = !DILocation(line: 86, column: 3, scope: !3549)
!3552 = !DILocation(line: 95, column: 3, scope: !3474)
!3553 = !DILocation(line: 99, column: 7, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3474, file: !605, line: 96, column: 5)
!3555 = !DILocation(line: 102, column: 7, scope: !3554)
!3556 = !DILocation(line: 102, column: 7, scope: !3557)
!3557 = !DILexicalBlockFile(scope: !3554, file: !605, discriminator: 1)
!3558 = !DILocation(line: 103, column: 7, scope: !3554)
!3559 = !DILocation(line: 106, column: 7, scope: !3554)
!3560 = !DILocation(line: 106, column: 7, scope: !3557)
!3561 = !DILocation(line: 107, column: 7, scope: !3554)
!3562 = !DILocation(line: 110, column: 7, scope: !3554)
!3563 = !DILocation(line: 110, column: 7, scope: !3557)
!3564 = !DILocation(line: 112, column: 7, scope: !3554)
!3565 = !DILocation(line: 117, column: 7, scope: !3554)
!3566 = !DILocation(line: 117, column: 7, scope: !3557)
!3567 = !DILocation(line: 119, column: 7, scope: !3554)
!3568 = !DILocation(line: 124, column: 7, scope: !3554)
!3569 = !DILocation(line: 124, column: 7, scope: !3557)
!3570 = !DILocation(line: 126, column: 7, scope: !3554)
!3571 = !DILocation(line: 131, column: 7, scope: !3554)
!3572 = !DILocation(line: 131, column: 7, scope: !3557)
!3573 = !DILocation(line: 134, column: 7, scope: !3554)
!3574 = !DILocation(line: 139, column: 7, scope: !3554)
!3575 = !DILocation(line: 139, column: 7, scope: !3557)
!3576 = !DILocation(line: 142, column: 7, scope: !3554)
!3577 = !DILocation(line: 147, column: 7, scope: !3554)
!3578 = !DILocation(line: 147, column: 7, scope: !3557)
!3579 = !DILocation(line: 151, column: 7, scope: !3554)
!3580 = !DILocation(line: 156, column: 7, scope: !3554)
!3581 = !DILocation(line: 156, column: 7, scope: !3557)
!3582 = !DILocation(line: 160, column: 7, scope: !3554)
!3583 = !DILocation(line: 167, column: 7, scope: !3554)
!3584 = !DILocation(line: 167, column: 7, scope: !3557)
!3585 = !DILocation(line: 171, column: 7, scope: !3554)
!3586 = !DILocation(line: 173, column: 1, scope: !3474)
!3587 = distinct !DISubprogram(name: "version_etc_ar", scope: !605, file: !605, line: 180, type: !3588, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !3590)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{null, !3477, !29, !29, !29, !757}
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596}
!3591 = !DILocalVariable(name: "stream", arg: 1, scope: !3587, file: !605, line: 180, type: !3477)
!3592 = !DILocalVariable(name: "command_name", arg: 2, scope: !3587, file: !605, line: 181, type: !29)
!3593 = !DILocalVariable(name: "package", arg: 3, scope: !3587, file: !605, line: 181, type: !29)
!3594 = !DILocalVariable(name: "version", arg: 4, scope: !3587, file: !605, line: 182, type: !29)
!3595 = !DILocalVariable(name: "authors", arg: 5, scope: !3587, file: !605, line: 182, type: !757)
!3596 = !DILocalVariable(name: "n_authors", scope: !3587, file: !605, line: 184, type: !21)
!3597 = !DILocation(line: 180, column: 23, scope: !3587)
!3598 = !DILocation(line: 181, column: 29, scope: !3587)
!3599 = !DILocation(line: 181, column: 55, scope: !3587)
!3600 = !DILocation(line: 182, column: 29, scope: !3587)
!3601 = !DILocation(line: 182, column: 59, scope: !3587)
!3602 = !DILocation(line: 184, column: 10, scope: !3587)
!3603 = !DILocation(line: 186, column: 8, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3587, file: !605, line: 186, column: 3)
!3605 = !DILocation(line: 186, column: 23, scope: !3606)
!3606 = !DILexicalBlockFile(scope: !3607, file: !605, discriminator: 1)
!3607 = distinct !DILexicalBlock(scope: !3604, file: !605, line: 186, column: 3)
!3608 = !DILocation(line: 186, column: 3, scope: !3609)
!3609 = !DILexicalBlockFile(scope: !3604, file: !605, discriminator: 1)
!3610 = !DILocation(line: 186, column: 52, scope: !3611)
!3611 = !DILexicalBlockFile(scope: !3607, file: !605, discriminator: 3)
!3612 = distinct !{!3612, !3613, !3614}
!3613 = !DILocation(line: 186, column: 3, scope: !3604)
!3614 = !DILocation(line: 187, column: 5, scope: !3604)
!3615 = !DILocation(line: 188, column: 3, scope: !3587)
!3616 = !DILocation(line: 189, column: 1, scope: !3587)
!3617 = distinct !DISubprogram(name: "version_etc_va", scope: !605, file: !605, line: 196, type: !3618, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !3627)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{null, !3477, !29, !29, !29, !3620}
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !602, line: 189, size: 192, elements: !3622)
!3622 = !{!3623, !3624, !3625, !3626}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3621, file: !602, line: 189, baseType: !179, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3621, file: !602, line: 189, baseType: !179, size: 32, offset: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3621, file: !602, line: 189, baseType: !33, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3621, file: !602, line: 189, baseType: !33, size: 64, offset: 128)
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3633, !3634}
!3628 = !DILocalVariable(name: "stream", arg: 1, scope: !3617, file: !605, line: 196, type: !3477)
!3629 = !DILocalVariable(name: "command_name", arg: 2, scope: !3617, file: !605, line: 197, type: !29)
!3630 = !DILocalVariable(name: "package", arg: 3, scope: !3617, file: !605, line: 197, type: !29)
!3631 = !DILocalVariable(name: "version", arg: 4, scope: !3617, file: !605, line: 198, type: !29)
!3632 = !DILocalVariable(name: "authors", arg: 5, scope: !3617, file: !605, line: 198, type: !3620)
!3633 = !DILocalVariable(name: "n_authors", scope: !3617, file: !605, line: 200, type: !21)
!3634 = !DILocalVariable(name: "authtab", scope: !3617, file: !605, line: 201, type: !3635)
!3635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 640, elements: !169)
!3636 = !DILocation(line: 196, column: 23, scope: !3617)
!3637 = !DILocation(line: 197, column: 29, scope: !3617)
!3638 = !DILocation(line: 197, column: 55, scope: !3617)
!3639 = !DILocation(line: 198, column: 29, scope: !3617)
!3640 = !DILocation(line: 198, column: 46, scope: !3617)
!3641 = !DILocation(line: 201, column: 3, scope: !3617)
!3642 = !DILocation(line: 201, column: 15, scope: !3617)
!3643 = !DILocation(line: 200, column: 10, scope: !3617)
!3644 = !DILocation(line: 205, column: 35, scope: !3645)
!3645 = !DILexicalBlockFile(scope: !3646, file: !605, discriminator: 1)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !605, line: 203, column: 3)
!3647 = distinct !DILexicalBlock(scope: !3617, file: !605, line: 203, column: 3)
!3648 = !DILocation(line: 205, column: 35, scope: !3649)
!3649 = !DILexicalBlockFile(scope: !3646, file: !605, discriminator: 2)
!3650 = !DILocation(line: 205, column: 35, scope: !3651)
!3651 = !DILexicalBlockFile(scope: !3646, file: !605, discriminator: 3)
!3652 = !DILocation(line: 205, column: 35, scope: !3653)
!3653 = !DILexicalBlockFile(scope: !3646, file: !605, discriminator: 4)
!3654 = !DILocation(line: 205, column: 14, scope: !3653)
!3655 = !DILocation(line: 205, column: 33, scope: !3653)
!3656 = !DILocation(line: 205, column: 67, scope: !3653)
!3657 = !DILocation(line: 203, column: 3, scope: !3658)
!3658 = !DILexicalBlockFile(scope: !3647, file: !605, discriminator: 1)
!3659 = !DILocation(line: 208, column: 3, scope: !3617)
!3660 = !DILocation(line: 210, column: 1, scope: !3617)
!3661 = distinct !DISubprogram(name: "version_etc", scope: !605, file: !605, line: 227, type: !3662, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !3664)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{null, !3477, !29, !29, !29, null}
!3664 = !{!3665, !3666, !3667, !3668, !3669}
!3665 = !DILocalVariable(name: "stream", arg: 1, scope: !3661, file: !605, line: 227, type: !3477)
!3666 = !DILocalVariable(name: "command_name", arg: 2, scope: !3661, file: !605, line: 228, type: !29)
!3667 = !DILocalVariable(name: "package", arg: 3, scope: !3661, file: !605, line: 228, type: !29)
!3668 = !DILocalVariable(name: "version", arg: 4, scope: !3661, file: !605, line: 229, type: !29)
!3669 = !DILocalVariable(name: "authors", scope: !3661, file: !605, line: 231, type: !3670)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3479, line: 80, baseType: !3671)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3672, line: 50, baseType: !3673)
!3672 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !602, line: 231, baseType: !3674)
!3674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3621, size: 192, elements: !3512)
!3675 = !DILocation(line: 227, column: 20, scope: !3661)
!3676 = !DILocation(line: 228, column: 26, scope: !3661)
!3677 = !DILocation(line: 228, column: 52, scope: !3661)
!3678 = !DILocation(line: 229, column: 26, scope: !3661)
!3679 = !DILocation(line: 231, column: 3, scope: !3661)
!3680 = !DILocation(line: 231, column: 11, scope: !3661)
!3681 = !DILocation(line: 233, column: 3, scope: !3661)
!3682 = !DILocation(line: 234, column: 3, scope: !3661)
!3683 = !DILocation(line: 235, column: 3, scope: !3661)
!3684 = !DILocation(line: 236, column: 1, scope: !3661)
!3685 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !605, file: !605, line: 239, type: !688, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !97)
!3686 = !DILocation(line: 245, column: 3, scope: !3685)
!3687 = !DILocation(line: 245, column: 3, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3685, file: !605, discriminator: 1)
!3689 = !DILocation(line: 251, column: 3, scope: !3685)
!3690 = !DILocation(line: 251, column: 3, scope: !3688)
!3691 = !DILocation(line: 256, column: 3, scope: !3685)
!3692 = !DILocation(line: 256, column: 3, scope: !3688)
!3693 = !DILocation(line: 258, column: 1, scope: !3685)
!3694 = distinct !DISubprogram(name: "xnmalloc", scope: !612, file: !612, line: 105, type: !3695, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!33, !21, !21}
!3697 = !{!3698, !3699}
!3698 = !DILocalVariable(name: "n", arg: 1, scope: !3694, file: !612, line: 105, type: !21)
!3699 = !DILocalVariable(name: "s", arg: 2, scope: !3694, file: !612, line: 105, type: !21)
!3700 = !DILocation(line: 105, column: 18, scope: !3694)
!3701 = !DILocation(line: 105, column: 28, scope: !3694)
!3702 = !DILocation(line: 107, column: 7, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3694, file: !612, line: 107, column: 7)
!3704 = !DILocation(line: 107, column: 7, scope: !3694)
!3705 = !DILocation(line: 108, column: 5, scope: !3703)
!3706 = !DILocation(line: 109, column: 21, scope: !3694)
!3707 = !DILocalVariable(name: "n", arg: 1, scope: !3708, file: !3709, line: 39, type: !21)
!3708 = distinct !DISubprogram(name: "xmalloc", scope: !3709, file: !3709, line: 39, type: !575, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3710)
!3709 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3710 = !{!3707, !3711}
!3711 = !DILocalVariable(name: "p", scope: !3708, file: !3709, line: 41, type: !33)
!3712 = !DILocation(line: 39, column: 17, scope: !3708, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 109, column: 10, scope: !3694)
!3714 = !DILocation(line: 41, column: 13, scope: !3708, inlinedAt: !3713)
!3715 = !DILocation(line: 41, column: 9, scope: !3708, inlinedAt: !3713)
!3716 = !DILocation(line: 42, column: 8, scope: !3717, inlinedAt: !3713)
!3717 = distinct !DILexicalBlock(scope: !3708, file: !3709, line: 42, column: 7)
!3718 = !DILocation(line: 42, column: 15, scope: !3719, inlinedAt: !3713)
!3719 = !DILexicalBlockFile(scope: !3717, file: !3709, discriminator: 1)
!3720 = !DILocation(line: 42, column: 10, scope: !3717, inlinedAt: !3713)
!3721 = !DILocation(line: 43, column: 5, scope: !3717, inlinedAt: !3713)
!3722 = !DILocation(line: 109, column: 3, scope: !3694)
!3723 = !DILocation(line: 39, column: 17, scope: !3708)
!3724 = !DILocation(line: 41, column: 13, scope: !3708)
!3725 = !DILocation(line: 41, column: 9, scope: !3708)
!3726 = !DILocation(line: 42, column: 8, scope: !3717)
!3727 = !DILocation(line: 42, column: 15, scope: !3719)
!3728 = !DILocation(line: 42, column: 10, scope: !3717)
!3729 = !DILocation(line: 43, column: 5, scope: !3717)
!3730 = !DILocation(line: 44, column: 3, scope: !3708)
!3731 = distinct !DISubprogram(name: "xnrealloc", scope: !612, file: !612, line: 118, type: !3732, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!33, !33, !21, !21}
!3734 = !{!3735, !3736, !3737}
!3735 = !DILocalVariable(name: "p", arg: 1, scope: !3731, file: !612, line: 118, type: !33)
!3736 = !DILocalVariable(name: "n", arg: 2, scope: !3731, file: !612, line: 118, type: !21)
!3737 = !DILocalVariable(name: "s", arg: 3, scope: !3731, file: !612, line: 118, type: !21)
!3738 = !DILocation(line: 118, column: 18, scope: !3731)
!3739 = !DILocation(line: 118, column: 28, scope: !3731)
!3740 = !DILocation(line: 118, column: 38, scope: !3731)
!3741 = !DILocation(line: 120, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3731, file: !612, line: 120, column: 7)
!3743 = !DILocation(line: 120, column: 7, scope: !3731)
!3744 = !DILocation(line: 121, column: 5, scope: !3742)
!3745 = !DILocation(line: 122, column: 25, scope: !3731)
!3746 = !DILocalVariable(name: "p", arg: 1, scope: !3747, file: !3709, line: 51, type: !33)
!3747 = distinct !DISubprogram(name: "xrealloc", scope: !3709, file: !3709, line: 51, type: !579, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3748)
!3748 = !{!3746, !3749}
!3749 = !DILocalVariable(name: "n", arg: 2, scope: !3747, file: !3709, line: 51, type: !21)
!3750 = !DILocation(line: 51, column: 17, scope: !3747, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 122, column: 10, scope: !3731)
!3752 = !DILocation(line: 51, column: 27, scope: !3747, inlinedAt: !3751)
!3753 = !DILocation(line: 53, column: 8, scope: !3754, inlinedAt: !3751)
!3754 = distinct !DILexicalBlock(scope: !3747, file: !3709, line: 53, column: 7)
!3755 = !DILocation(line: 53, column: 13, scope: !3756, inlinedAt: !3751)
!3756 = !DILexicalBlockFile(scope: !3754, file: !3709, discriminator: 1)
!3757 = !DILocation(line: 53, column: 10, scope: !3754, inlinedAt: !3751)
!3758 = !DILocation(line: 57, column: 7, scope: !3759, inlinedAt: !3751)
!3759 = distinct !DILexicalBlock(scope: !3754, file: !3709, line: 54, column: 5)
!3760 = !DILocation(line: 58, column: 7, scope: !3759, inlinedAt: !3751)
!3761 = !DILocation(line: 61, column: 7, scope: !3747, inlinedAt: !3751)
!3762 = !DILocation(line: 62, column: 8, scope: !3763, inlinedAt: !3751)
!3763 = distinct !DILexicalBlock(scope: !3747, file: !3709, line: 62, column: 7)
!3764 = !DILocation(line: 62, column: 13, scope: !3765, inlinedAt: !3751)
!3765 = !DILexicalBlockFile(scope: !3763, file: !3709, discriminator: 1)
!3766 = !DILocation(line: 62, column: 10, scope: !3763, inlinedAt: !3751)
!3767 = !DILocation(line: 63, column: 5, scope: !3763, inlinedAt: !3751)
!3768 = !DILocation(line: 122, column: 3, scope: !3731)
!3769 = !DILocation(line: 51, column: 17, scope: !3747)
!3770 = !DILocation(line: 51, column: 27, scope: !3747)
!3771 = !DILocation(line: 53, column: 8, scope: !3754)
!3772 = !DILocation(line: 53, column: 13, scope: !3756)
!3773 = !DILocation(line: 53, column: 10, scope: !3754)
!3774 = !DILocation(line: 57, column: 7, scope: !3759)
!3775 = !DILocation(line: 58, column: 7, scope: !3759)
!3776 = !DILocation(line: 61, column: 7, scope: !3747)
!3777 = !DILocation(line: 62, column: 8, scope: !3763)
!3778 = !DILocation(line: 62, column: 13, scope: !3765)
!3779 = !DILocation(line: 62, column: 10, scope: !3763)
!3780 = !DILocation(line: 63, column: 5, scope: !3763)
!3781 = !DILocation(line: 65, column: 1, scope: !3747)
!3782 = !DILocation(line: 180, column: 19, scope: !613)
!3783 = !DILocation(line: 180, column: 30, scope: !613)
!3784 = !DILocation(line: 180, column: 41, scope: !613)
!3785 = !DILocation(line: 182, column: 14, scope: !613)
!3786 = !DILocation(line: 182, column: 10, scope: !613)
!3787 = !DILocation(line: 184, column: 9, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !613, file: !612, line: 184, column: 7)
!3789 = !DILocation(line: 184, column: 7, scope: !613)
!3790 = !DILocation(line: 186, column: 13, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !612, line: 186, column: 11)
!3792 = distinct !DILexicalBlock(scope: !3788, file: !612, line: 185, column: 5)
!3793 = !DILocation(line: 186, column: 11, scope: !3792)
!3794 = !DILocation(line: 194, column: 30, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3791, file: !612, line: 187, column: 9)
!3796 = !DILocation(line: 195, column: 16, scope: !3795)
!3797 = !DILocation(line: 195, column: 13, scope: !3795)
!3798 = !DILocation(line: 196, column: 9, scope: !3795)
!3799 = !DILocation(line: 204, column: 69, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !612, line: 204, column: 11)
!3801 = distinct !DILexicalBlock(scope: !3788, file: !612, line: 199, column: 5)
!3802 = !DILocation(line: 205, column: 11, scope: !3800)
!3803 = !DILocation(line: 204, column: 11, scope: !3801)
!3804 = !DILocation(line: 206, column: 9, scope: !3800)
!3805 = !DILocation(line: 210, column: 7, scope: !613)
!3806 = !DILocation(line: 211, column: 25, scope: !613)
!3807 = !DILocation(line: 51, column: 17, scope: !3747, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 211, column: 10, scope: !613)
!3809 = !DILocation(line: 51, column: 27, scope: !3747, inlinedAt: !3808)
!3810 = !DILocation(line: 53, column: 10, scope: !3754, inlinedAt: !3808)
!3811 = !DILocation(line: 207, column: 14, scope: !3801)
!3812 = !DILocation(line: 207, column: 18, scope: !3801)
!3813 = !DILocation(line: 207, column: 9, scope: !3801)
!3814 = !DILocation(line: 53, column: 8, scope: !3754, inlinedAt: !3808)
!3815 = !DILocation(line: 57, column: 7, scope: !3759, inlinedAt: !3808)
!3816 = !DILocation(line: 58, column: 7, scope: !3759, inlinedAt: !3808)
!3817 = !DILocation(line: 61, column: 7, scope: !3747, inlinedAt: !3808)
!3818 = !DILocation(line: 62, column: 8, scope: !3763, inlinedAt: !3808)
!3819 = !DILocation(line: 62, column: 13, scope: !3765, inlinedAt: !3808)
!3820 = !DILocation(line: 62, column: 10, scope: !3763, inlinedAt: !3808)
!3821 = !DILocation(line: 63, column: 5, scope: !3763, inlinedAt: !3808)
!3822 = !DILocation(line: 211, column: 3, scope: !613)
!3823 = distinct !DISubprogram(name: "xcharalloc", scope: !612, file: !612, line: 220, type: !2752, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3824)
!3824 = !{!3825}
!3825 = !DILocalVariable(name: "n", arg: 1, scope: !3823, file: !612, line: 220, type: !21)
!3826 = !DILocation(line: 220, column: 20, scope: !3823)
!3827 = !DILocation(line: 39, column: 17, scope: !3708, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 222, column: 10, scope: !3823)
!3829 = !DILocation(line: 41, column: 13, scope: !3708, inlinedAt: !3828)
!3830 = !DILocation(line: 41, column: 9, scope: !3708, inlinedAt: !3828)
!3831 = !DILocation(line: 42, column: 8, scope: !3717, inlinedAt: !3828)
!3832 = !DILocation(line: 42, column: 15, scope: !3719, inlinedAt: !3828)
!3833 = !DILocation(line: 42, column: 10, scope: !3717, inlinedAt: !3828)
!3834 = !DILocation(line: 43, column: 5, scope: !3717, inlinedAt: !3828)
!3835 = !DILocation(line: 222, column: 3, scope: !3823)
!3836 = distinct !DISubprogram(name: "x2realloc", scope: !3709, file: !3709, line: 74, type: !3837, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3839)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!33, !33, !616}
!3839 = !{!3840, !3841}
!3840 = !DILocalVariable(name: "p", arg: 1, scope: !3836, file: !3709, line: 74, type: !33)
!3841 = !DILocalVariable(name: "pn", arg: 2, scope: !3836, file: !3709, line: 74, type: !616)
!3842 = !DILocation(line: 74, column: 18, scope: !3836)
!3843 = !DILocation(line: 74, column: 29, scope: !3836)
!3844 = !DILocation(line: 180, column: 19, scope: !613, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 76, column: 10, scope: !3836)
!3846 = !DILocation(line: 180, column: 30, scope: !613, inlinedAt: !3845)
!3847 = !DILocation(line: 180, column: 41, scope: !613, inlinedAt: !3845)
!3848 = !DILocation(line: 182, column: 14, scope: !613, inlinedAt: !3845)
!3849 = !DILocation(line: 182, column: 10, scope: !613, inlinedAt: !3845)
!3850 = !DILocation(line: 184, column: 9, scope: !3788, inlinedAt: !3845)
!3851 = !DILocation(line: 184, column: 7, scope: !613, inlinedAt: !3845)
!3852 = !DILocation(line: 186, column: 13, scope: !3791, inlinedAt: !3845)
!3853 = !DILocation(line: 186, column: 11, scope: !3792, inlinedAt: !3845)
!3854 = !DILocation(line: 210, column: 7, scope: !613, inlinedAt: !3845)
!3855 = !DILocation(line: 51, column: 17, scope: !3747, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 211, column: 10, scope: !613, inlinedAt: !3845)
!3857 = !DILocation(line: 51, column: 27, scope: !3747, inlinedAt: !3856)
!3858 = !DILocation(line: 53, column: 10, scope: !3754, inlinedAt: !3856)
!3859 = !DILocation(line: 205, column: 11, scope: !3800, inlinedAt: !3845)
!3860 = !DILocation(line: 204, column: 11, scope: !3801, inlinedAt: !3845)
!3861 = !DILocation(line: 206, column: 9, scope: !3800, inlinedAt: !3845)
!3862 = !DILocation(line: 207, column: 14, scope: !3801, inlinedAt: !3845)
!3863 = !DILocation(line: 207, column: 18, scope: !3801, inlinedAt: !3845)
!3864 = !DILocation(line: 207, column: 9, scope: !3801, inlinedAt: !3845)
!3865 = !DILocation(line: 53, column: 8, scope: !3754, inlinedAt: !3856)
!3866 = !DILocation(line: 57, column: 7, scope: !3759, inlinedAt: !3856)
!3867 = !DILocation(line: 58, column: 7, scope: !3759, inlinedAt: !3856)
!3868 = !DILocation(line: 61, column: 7, scope: !3747, inlinedAt: !3856)
!3869 = !DILocation(line: 62, column: 8, scope: !3763, inlinedAt: !3856)
!3870 = !DILocation(line: 62, column: 13, scope: !3765, inlinedAt: !3856)
!3871 = !DILocation(line: 62, column: 10, scope: !3763, inlinedAt: !3856)
!3872 = !DILocation(line: 63, column: 5, scope: !3763, inlinedAt: !3856)
!3873 = !DILocation(line: 76, column: 3, scope: !3836)
!3874 = distinct !DISubprogram(name: "xzalloc", scope: !3709, file: !3709, line: 84, type: !575, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3875)
!3875 = !{!3876}
!3876 = !DILocalVariable(name: "s", arg: 1, scope: !3874, file: !3709, line: 84, type: !21)
!3877 = !DILocation(line: 84, column: 17, scope: !3874)
!3878 = !DILocation(line: 39, column: 17, scope: !3708, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 86, column: 18, scope: !3874)
!3880 = !DILocation(line: 41, column: 13, scope: !3708, inlinedAt: !3879)
!3881 = !DILocation(line: 41, column: 9, scope: !3708, inlinedAt: !3879)
!3882 = !DILocation(line: 42, column: 8, scope: !3717, inlinedAt: !3879)
!3883 = !DILocation(line: 42, column: 15, scope: !3719, inlinedAt: !3879)
!3884 = !DILocation(line: 42, column: 10, scope: !3717, inlinedAt: !3879)
!3885 = !DILocation(line: 43, column: 5, scope: !3717, inlinedAt: !3879)
!3886 = !DILocation(line: 86, column: 10, scope: !3874)
!3887 = !DILocation(line: 86, column: 3, scope: !3874)
!3888 = distinct !DISubprogram(name: "xcalloc", scope: !3709, file: !3709, line: 93, type: !3695, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3889)
!3889 = !{!3890, !3891, !3892}
!3890 = !DILocalVariable(name: "n", arg: 1, scope: !3888, file: !3709, line: 93, type: !21)
!3891 = !DILocalVariable(name: "s", arg: 2, scope: !3888, file: !3709, line: 93, type: !21)
!3892 = !DILocalVariable(name: "p", scope: !3888, file: !3709, line: 95, type: !33)
!3893 = !DILocation(line: 93, column: 17, scope: !3888)
!3894 = !DILocation(line: 93, column: 27, scope: !3888)
!3895 = !DILocation(line: 100, column: 7, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3888, file: !3709, line: 100, column: 7)
!3897 = !DILocation(line: 101, column: 7, scope: !3896)
!3898 = !DILocation(line: 101, column: 18, scope: !3899)
!3899 = !DILexicalBlockFile(scope: !3896, file: !3709, discriminator: 1)
!3900 = !DILocation(line: 95, column: 9, scope: !3888)
!3901 = !DILocation(line: 101, column: 16, scope: !3899)
!3902 = !DILocation(line: 100, column: 7, scope: !3903)
!3903 = !DILexicalBlockFile(scope: !3888, file: !3709, discriminator: 1)
!3904 = !DILocation(line: 102, column: 5, scope: !3896)
!3905 = !DILocation(line: 103, column: 3, scope: !3888)
!3906 = distinct !DISubprogram(name: "xmemdup", scope: !3709, file: !3709, line: 111, type: !3907, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!33, !24, !21}
!3909 = !{!3910, !3911}
!3910 = !DILocalVariable(name: "p", arg: 1, scope: !3906, file: !3709, line: 111, type: !24)
!3911 = !DILocalVariable(name: "s", arg: 2, scope: !3906, file: !3709, line: 111, type: !21)
!3912 = !DILocation(line: 111, column: 22, scope: !3906)
!3913 = !DILocation(line: 111, column: 32, scope: !3906)
!3914 = !DILocation(line: 39, column: 17, scope: !3708, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 113, column: 18, scope: !3906)
!3916 = !DILocation(line: 41, column: 13, scope: !3708, inlinedAt: !3915)
!3917 = !DILocation(line: 41, column: 9, scope: !3708, inlinedAt: !3915)
!3918 = !DILocation(line: 42, column: 8, scope: !3717, inlinedAt: !3915)
!3919 = !DILocation(line: 42, column: 15, scope: !3719, inlinedAt: !3915)
!3920 = !DILocation(line: 42, column: 10, scope: !3717, inlinedAt: !3915)
!3921 = !DILocation(line: 43, column: 5, scope: !3717, inlinedAt: !3915)
!3922 = !DILocation(line: 113, column: 10, scope: !3906)
!3923 = !DILocation(line: 113, column: 3, scope: !3906)
!3924 = distinct !DISubprogram(name: "xstrdup", scope: !3709, file: !3709, line: 119, type: !1236, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !3925)
!3925 = !{!3926}
!3926 = !DILocalVariable(name: "string", arg: 1, scope: !3924, file: !3709, line: 119, type: !29)
!3927 = !DILocation(line: 119, column: 22, scope: !3924)
!3928 = !DILocation(line: 121, column: 27, scope: !3924)
!3929 = !DILocation(line: 121, column: 43, scope: !3924)
!3930 = !DILocation(line: 111, column: 22, scope: !3906, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 121, column: 10, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !3924, file: !3709, discriminator: 1)
!3933 = !DILocation(line: 111, column: 32, scope: !3906, inlinedAt: !3931)
!3934 = !DILocation(line: 39, column: 17, scope: !3708, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 113, column: 18, scope: !3906, inlinedAt: !3931)
!3936 = !DILocation(line: 41, column: 13, scope: !3708, inlinedAt: !3935)
!3937 = !DILocation(line: 41, column: 9, scope: !3708, inlinedAt: !3935)
!3938 = !DILocation(line: 42, column: 8, scope: !3717, inlinedAt: !3935)
!3939 = !DILocation(line: 42, column: 15, scope: !3719, inlinedAt: !3935)
!3940 = !DILocation(line: 42, column: 10, scope: !3717, inlinedAt: !3935)
!3941 = !DILocation(line: 43, column: 5, scope: !3717, inlinedAt: !3935)
!3942 = !DILocation(line: 113, column: 10, scope: !3906, inlinedAt: !3931)
!3943 = !DILocation(line: 121, column: 3, scope: !3924)
!3944 = distinct !DISubprogram(name: "xalloc_die", scope: !3945, file: !3945, line: 32, type: !688, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !625, variables: !97)
!3945 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3946 = !DILocation(line: 34, column: 10, scope: !3944)
!3947 = !DILocation(line: 34, column: 33, scope: !3944)
!3948 = !DILocation(line: 34, column: 3, scope: !3949)
!3949 = !DILexicalBlockFile(scope: !3944, file: !3945, discriminator: 1)
!3950 = !DILocation(line: 40, column: 3, scope: !3944)
!3951 = distinct !DISubprogram(name: "xreadlink", scope: !3952, file: !3952, line: 38, type: !1236, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3953)
!3952 = !DIFile(filename: "lib/xreadlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3953 = !{!3954, !3955}
!3954 = !DILocalVariable(name: "filename", arg: 1, scope: !3951, file: !3952, line: 38, type: !29)
!3955 = !DILocalVariable(name: "result", scope: !3951, file: !3952, line: 40, type: !32)
!3956 = !DILocation(line: 38, column: 24, scope: !3951)
!3957 = !DILocation(line: 40, column: 18, scope: !3951)
!3958 = !DILocation(line: 40, column: 9, scope: !3951)
!3959 = !DILocation(line: 41, column: 14, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3951, file: !3952, line: 41, column: 7)
!3961 = !DILocation(line: 41, column: 22, scope: !3960)
!3962 = !DILocation(line: 41, column: 25, scope: !3963)
!3963 = !DILexicalBlockFile(scope: !3960, file: !3952, discriminator: 1)
!3964 = !DILocation(line: 41, column: 31, scope: !3963)
!3965 = !DILocation(line: 41, column: 7, scope: !3966)
!3966 = !DILexicalBlockFile(scope: !3951, file: !3952, discriminator: 1)
!3967 = !DILocation(line: 42, column: 5, scope: !3960)
!3968 = !DILocation(line: 43, column: 3, scope: !3951)
!3969 = distinct !DISubprogram(name: "xstrtoumax", scope: !3970, file: !3970, line: 88, type: !3971, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !3975)
!3970 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!3973, !29, !733, !48, !3974, !29}
!3973 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !13, line: 39, baseType: !12)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3988, !3989, !3992, !3993}
!3976 = !DILocalVariable(name: "s", arg: 1, scope: !3969, file: !3970, line: 88, type: !29)
!3977 = !DILocalVariable(name: "ptr", arg: 2, scope: !3969, file: !3970, line: 88, type: !733)
!3978 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3969, file: !3970, line: 88, type: !48)
!3979 = !DILocalVariable(name: "val", arg: 4, scope: !3969, file: !3970, line: 89, type: !3974)
!3980 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3969, file: !3970, line: 89, type: !29)
!3981 = !DILocalVariable(name: "t_ptr", scope: !3969, file: !3970, line: 91, type: !32)
!3982 = !DILocalVariable(name: "p", scope: !3969, file: !3970, line: 92, type: !733)
!3983 = !DILocalVariable(name: "tmp", scope: !3969, file: !3970, line: 93, type: !34)
!3984 = !DILocalVariable(name: "err", scope: !3969, file: !3970, line: 94, type: !3973)
!3985 = !DILocalVariable(name: "q", scope: !3986, file: !3970, line: 104, type: !29)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !3970, line: 103, column: 5)
!3987 = distinct !DILexicalBlock(scope: !3969, file: !3970, line: 102, column: 7)
!3988 = !DILocalVariable(name: "ch", scope: !3986, file: !3970, line: 105, type: !28)
!3989 = !DILocalVariable(name: "base", scope: !3990, file: !3970, line: 141, type: !48)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !3970, line: 140, column: 5)
!3991 = distinct !DILexicalBlock(scope: !3969, file: !3970, line: 139, column: 7)
!3992 = !DILocalVariable(name: "suffixes", scope: !3990, file: !3970, line: 142, type: !48)
!3993 = !DILocalVariable(name: "overflow", scope: !3990, file: !3970, line: 143, type: !3973)
!3994 = !DILocation(line: 88, column: 24, scope: !3969)
!3995 = !DILocation(line: 88, column: 34, scope: !3969)
!3996 = !DILocation(line: 88, column: 43, scope: !3969)
!3997 = !DILocation(line: 89, column: 24, scope: !3969)
!3998 = !DILocation(line: 89, column: 41, scope: !3969)
!3999 = !DILocation(line: 91, column: 3, scope: !3969)
!4000 = !DILocation(line: 94, column: 16, scope: !3969)
!4001 = !DILocation(line: 96, column: 3, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !3970, line: 96, column: 3)
!4003 = distinct !DILexicalBlock(scope: !3969, file: !3970, line: 96, column: 3)
!4004 = !DILocation(line: 96, column: 3, scope: !4005)
!4005 = !DILexicalBlockFile(scope: !4002, file: !3970, discriminator: 3)
!4006 = !DILocation(line: 98, column: 8, scope: !3969)
!4007 = !DILocation(line: 92, column: 10, scope: !3969)
!4008 = !DILocation(line: 100, column: 3, scope: !3969)
!4009 = !DILocation(line: 100, column: 9, scope: !3969)
!4010 = !DILocation(line: 104, column: 19, scope: !3986)
!4011 = !DILocation(line: 106, column: 14, scope: !4012)
!4012 = !DILexicalBlockFile(scope: !3986, file: !3970, discriminator: 1)
!4013 = !DILocation(line: 106, column: 7, scope: !3986)
!4014 = !DILocation(line: 105, column: 21, scope: !3986)
!4015 = !DILocation(line: 106, column: 7, scope: !4012)
!4016 = !DILocation(line: 107, column: 15, scope: !3986)
!4017 = distinct !{!4017, !4013, !4018}
!4018 = !DILocation(line: 107, column: 17, scope: !3986)
!4019 = !DILocation(line: 109, column: 9, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3986, file: !3970, line: 108, column: 11)
!4021 = !DILocalVariable(name: "nptr", arg: 1, scope: !4022, file: !4023, line: 336, type: !4026)
!4022 = distinct !DISubprogram(name: "strtoumax", scope: !4023, file: !4023, line: 336, type: !4024, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !4028)
!4023 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!34, !4026, !4027, !48}
!4026 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!4027 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !733)
!4028 = !{!4021, !4029, !4030}
!4029 = !DILocalVariable(name: "endptr", arg: 2, scope: !4022, file: !4023, line: 336, type: !4027)
!4030 = !DILocalVariable(name: "base", arg: 3, scope: !4022, file: !4023, line: 336, type: !48)
!4031 = !DILocation(line: 336, column: 1, scope: !4022, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 112, column: 9, scope: !3969)
!4033 = !DILocation(line: 339, column: 10, scope: !4022, inlinedAt: !4032)
!4034 = !DILocation(line: 93, column: 14, scope: !3969)
!4035 = !DILocation(line: 114, column: 7, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !3969, file: !3970, line: 114, column: 7)
!4037 = !DILocation(line: 114, column: 10, scope: !4036)
!4038 = !DILocation(line: 114, column: 7, scope: !3969)
!4039 = !DILocation(line: 118, column: 11, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !3970, line: 118, column: 11)
!4041 = distinct !DILexicalBlock(scope: !4036, file: !3970, line: 115, column: 5)
!4042 = !DILocation(line: 118, column: 26, scope: !4040)
!4043 = !DILocation(line: 118, column: 29, scope: !4044)
!4044 = !DILexicalBlockFile(scope: !4040, file: !3970, discriminator: 1)
!4045 = !DILocation(line: 118, column: 33, scope: !4044)
!4046 = !DILocation(line: 118, column: 36, scope: !4047)
!4047 = !DILexicalBlockFile(scope: !4040, file: !3970, discriminator: 5)
!4048 = !DILocation(line: 118, column: 11, scope: !4049)
!4049 = !DILexicalBlockFile(scope: !4041, file: !3970, discriminator: 5)
!4050 = !DILocation(line: 123, column: 12, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4036, file: !3970, line: 123, column: 12)
!4052 = !DILocation(line: 123, column: 12, scope: !4036)
!4053 = !DILocation(line: 128, column: 5, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4051, file: !3970, line: 124, column: 5)
!4055 = !DILocation(line: 133, column: 8, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !3969, file: !3970, line: 133, column: 7)
!4057 = !DILocation(line: 133, column: 7, scope: !3969)
!4058 = !DILocation(line: 135, column: 12, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4056, file: !3970, line: 134, column: 5)
!4060 = !DILocation(line: 136, column: 7, scope: !4059)
!4061 = !DILocation(line: 139, column: 7, scope: !3991)
!4062 = !DILocation(line: 139, column: 11, scope: !3991)
!4063 = !DILocation(line: 139, column: 7, scope: !3969)
!4064 = !DILocation(line: 141, column: 11, scope: !3990)
!4065 = !DILocation(line: 142, column: 11, scope: !3990)
!4066 = !DILocation(line: 145, column: 12, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4068, file: !3970, discriminator: 3)
!4068 = distinct !DILexicalBlock(scope: !3990, file: !3970, line: 145, column: 11)
!4069 = !DILocation(line: 145, column: 11, scope: !4070)
!4070 = !DILexicalBlockFile(scope: !3990, file: !3970, discriminator: 3)
!4071 = !DILocation(line: 147, column: 16, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4068, file: !3970, line: 146, column: 9)
!4073 = !DILocation(line: 148, column: 22, scope: !4072)
!4074 = !DILocation(line: 148, column: 11, scope: !4072)
!4075 = !DILocation(line: 151, column: 7, scope: !3990)
!4076 = !DILocation(line: 163, column: 15, scope: !4077)
!4077 = !DILexicalBlockFile(scope: !4078, file: !3970, discriminator: 2)
!4078 = distinct !DILexicalBlock(scope: !4079, file: !3970, line: 163, column: 15)
!4079 = distinct !DILexicalBlock(scope: !3990, file: !3970, line: 152, column: 9)
!4080 = !DILocation(line: 163, column: 15, scope: !4081)
!4081 = !DILexicalBlockFile(scope: !4079, file: !3970, discriminator: 2)
!4082 = !DILocation(line: 164, column: 21, scope: !4078)
!4083 = !DILocation(line: 164, column: 13, scope: !4078)
!4084 = !DILocation(line: 167, column: 21, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !3970, line: 167, column: 21)
!4086 = distinct !DILexicalBlock(scope: !4078, file: !3970, line: 165, column: 15)
!4087 = !DILocation(line: 167, column: 29, scope: !4085)
!4088 = !DILocation(line: 167, column: 21, scope: !4086)
!4089 = !DILocation(line: 175, column: 17, scope: !4086)
!4090 = !DILocation(line: 179, column: 7, scope: !3990)
!4091 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4092, file: !3970, line: 60, type: !48)
!4092 = distinct !DISubprogram(name: "bkm_scale", scope: !3970, file: !3970, line: 60, type: !4093, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!3973, !3974, !48}
!4095 = !{!4096, !4091}
!4096 = !DILocalVariable(name: "x", arg: 1, scope: !4092, file: !3970, line: 60, type: !3974)
!4097 = !DILocation(line: 60, column: 31, scope: !4092, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 182, column: 22, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !3990, file: !3970, line: 180, column: 9)
!4100 = !DILocation(line: 67, column: 39, scope: !4101, inlinedAt: !4098)
!4101 = distinct !DILexicalBlock(scope: !4092, file: !3970, line: 67, column: 7)
!4102 = !DILocation(line: 72, column: 6, scope: !4092, inlinedAt: !4098)
!4103 = !DILocation(line: 67, column: 7, scope: !4092, inlinedAt: !4098)
!4104 = !DILocation(line: 143, column: 20, scope: !3990)
!4105 = !DILocation(line: 183, column: 11, scope: !4099)
!4106 = !DILocation(line: 60, column: 31, scope: !4092, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 189, column: 22, scope: !4099)
!4108 = !DILocation(line: 67, column: 39, scope: !4101, inlinedAt: !4107)
!4109 = !DILocation(line: 72, column: 6, scope: !4092, inlinedAt: !4107)
!4110 = !DILocation(line: 67, column: 7, scope: !4092, inlinedAt: !4107)
!4111 = !DILocation(line: 190, column: 11, scope: !4099)
!4112 = !DILocalVariable(name: "power", arg: 3, scope: !4113, file: !3970, line: 77, type: !48)
!4113 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3970, file: !3970, line: 77, type: !4114, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !629, variables: !4116)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!3973, !3974, !48, !48}
!4116 = !{!4117, !4118, !4112, !4119}
!4117 = !DILocalVariable(name: "x", arg: 1, scope: !4113, file: !3970, line: 77, type: !3974)
!4118 = !DILocalVariable(name: "base", arg: 2, scope: !4113, file: !3970, line: 77, type: !48)
!4119 = !DILocalVariable(name: "err", scope: !4113, file: !3970, line: 79, type: !3973)
!4120 = !DILocation(line: 77, column: 50, scope: !4113, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 197, column: 22, scope: !4099)
!4122 = !DILocation(line: 79, column: 16, scope: !4113, inlinedAt: !4121)
!4123 = !DILocation(line: 67, column: 39, scope: !4101, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 81, column: 12, scope: !4113, inlinedAt: !4121)
!4125 = !DILocation(line: 72, column: 6, scope: !4092, inlinedAt: !4124)
!4126 = !DILocation(line: 67, column: 7, scope: !4092, inlinedAt: !4124)
!4127 = !DILocation(line: 81, column: 9, scope: !4113, inlinedAt: !4121)
!4128 = !DILocation(line: 77, column: 50, scope: !4113, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 202, column: 22, scope: !4099)
!4130 = !DILocation(line: 79, column: 16, scope: !4113, inlinedAt: !4129)
!4131 = !DILocation(line: 67, column: 39, scope: !4101, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 81, column: 12, scope: !4113, inlinedAt: !4129)
!4133 = !DILocation(line: 72, column: 6, scope: !4092, inlinedAt: !4132)
!4134 = !DILocation(line: 67, column: 7, scope: !4092, inlinedAt: !4132)
!4135 = !DILocation(line: 81, column: 9, scope: !4113, inlinedAt: !4129)
!4136 = !DILocation(line: 77, column: 50, scope: !4113, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 207, column: 22, scope: !4099)
!4138 = !DILocation(line: 79, column: 16, scope: !4113, inlinedAt: !4137)
!4139 = !DILocation(line: 67, column: 39, scope: !4101, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 81, column: 12, scope: !4113, inlinedAt: !4137)
!4141 = !DILocation(line: 72, column: 6, scope: !4092, inlinedAt: !4140)
!4142 = !DILocation(line: 67, column: 7, scope: !4092, inlinedAt: !4140)
!4143 = !DILocation(line: 77, column: 50, scope: !4113, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 212, column: 22, scope: !4099)
!4145 = !DILocation(line: 79, column: 16, scope: !4113, inlinedAt: !4144)
!4146 = !DILocation(line: 67, column: 39, scope: !4101, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 81, column: 12, scope: !4113, inlinedAt: !4144)
!4148 = !DILocation(line: 72, column: 6, scope: !4092, inlinedAt: !4147)
!4149 = !DILocation(line: 67, column: 7, scope: !4092, inlinedAt: !4147)
!4150 = !DILocation(line: 81, column: 9, scope: !4113, inlinedAt: !4144)
!4151 = !DILocation(line: 77, column: 50, scope: !4113, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 216, column: 22, scope: !4099)
!4153 = !DILocation(line: 79, column: 16, scope: !4113, inlinedAt: !4152)
!4154 = !DILocation(line: 67, column: 39, scope: !4101, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 81, column: 12, scope: !4113, inlinedAt: !4152)
!4156 = !DILocation(line: 72, column: 6, scope: !4092, inlinedAt: !4155)
!4157 = !DILocation(line: 67, column: 7, scope: !4092, inlinedAt: !4155)
!4158 = !DILocation(line: 81, column: 9, scope: !4113, inlinedAt: !4152)
!4159 = !DILocation(line: 77, column: 50, scope: !4113, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 221, column: 22, scope: !4099)
!4161 = !DILocation(line: 79, column: 16, scope: !4113, inlinedAt: !4160)
!4162 = !DILocation(line: 67, column: 39, scope: !4101, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 81, column: 12, scope: !4113, inlinedAt: !4160)
!4164 = !DILocation(line: 72, column: 6, scope: !4092, inlinedAt: !4163)
!4165 = !DILocation(line: 67, column: 7, scope: !4092, inlinedAt: !4163)
!4166 = !DILocation(line: 81, column: 9, scope: !4113, inlinedAt: !4160)
!4167 = !DILocation(line: 60, column: 31, scope: !4092, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 225, column: 22, scope: !4099)
!4169 = !DILocation(line: 67, column: 39, scope: !4101, inlinedAt: !4168)
!4170 = !DILocation(line: 72, column: 6, scope: !4092, inlinedAt: !4168)
!4171 = !DILocation(line: 67, column: 7, scope: !4092, inlinedAt: !4168)
!4172 = !DILocation(line: 226, column: 11, scope: !4099)
!4173 = !DILocation(line: 77, column: 50, scope: !4113, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 229, column: 22, scope: !4099)
!4175 = !DILocation(line: 79, column: 16, scope: !4113, inlinedAt: !4174)
!4176 = !DILocation(line: 67, column: 39, scope: !4101, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 81, column: 12, scope: !4113, inlinedAt: !4174)
!4178 = !DILocation(line: 72, column: 6, scope: !4092, inlinedAt: !4177)
!4179 = !DILocation(line: 67, column: 7, scope: !4092, inlinedAt: !4177)
!4180 = !DILocation(line: 81, column: 9, scope: !4113, inlinedAt: !4174)
!4181 = !DILocation(line: 77, column: 50, scope: !4113, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 233, column: 22, scope: !4099)
!4183 = !DILocation(line: 79, column: 16, scope: !4113, inlinedAt: !4182)
!4184 = !DILocation(line: 67, column: 39, scope: !4101, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 81, column: 12, scope: !4113, inlinedAt: !4182)
!4186 = !DILocation(line: 72, column: 6, scope: !4092, inlinedAt: !4185)
!4187 = !DILocation(line: 67, column: 7, scope: !4092, inlinedAt: !4185)
!4188 = !DILocation(line: 81, column: 9, scope: !4113, inlinedAt: !4182)
!4189 = !DILocation(line: 237, column: 16, scope: !4099)
!4190 = !DILocation(line: 238, column: 22, scope: !4099)
!4191 = !DILocation(line: 238, column: 11, scope: !4099)
!4192 = !DILocation(line: 241, column: 11, scope: !3990)
!4193 = !DILocation(line: 242, column: 10, scope: !3990)
!4194 = !DILocation(line: 243, column: 11, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !3990, file: !3970, line: 243, column: 11)
!4196 = !DILocation(line: 244, column: 13, scope: !4195)
!4197 = !DILocation(line: 243, column: 11, scope: !3990)
!4198 = !DILocation(line: 247, column: 8, scope: !3969)
!4199 = !DILocation(line: 248, column: 3, scope: !3969)
!4200 = !DILocation(line: 249, column: 1, scope: !3969)
!4201 = distinct !DISubprogram(name: "rpl_calloc", scope: !4202, file: !4202, line: 42, type: !3695, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !633, variables: !4203)
!4202 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4203 = !{!4204, !4205, !4206, !4207}
!4204 = !DILocalVariable(name: "n", arg: 1, scope: !4201, file: !4202, line: 42, type: !21)
!4205 = !DILocalVariable(name: "s", arg: 2, scope: !4201, file: !4202, line: 42, type: !21)
!4206 = !DILocalVariable(name: "result", scope: !4201, file: !4202, line: 44, type: !33)
!4207 = !DILocalVariable(name: "bytes", scope: !4208, file: !4202, line: 56, type: !21)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !4202, line: 53, column: 5)
!4209 = distinct !DILexicalBlock(scope: !4201, file: !4202, line: 47, column: 7)
!4210 = !DILocation(line: 42, column: 20, scope: !4201)
!4211 = !DILocation(line: 42, column: 30, scope: !4201)
!4212 = !DILocation(line: 47, column: 9, scope: !4209)
!4213 = !DILocation(line: 47, column: 19, scope: !4214)
!4214 = !DILexicalBlockFile(scope: !4209, file: !4202, discriminator: 1)
!4215 = !DILocation(line: 47, column: 14, scope: !4209)
!4216 = !DILocation(line: 56, column: 24, scope: !4208)
!4217 = !DILocation(line: 56, column: 14, scope: !4208)
!4218 = !DILocation(line: 57, column: 17, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4208, file: !4202, line: 57, column: 11)
!4220 = !DILocation(line: 57, column: 21, scope: !4219)
!4221 = !DILocation(line: 57, column: 11, scope: !4208)
!4222 = !DILocation(line: 59, column: 11, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4219, file: !4202, line: 58, column: 9)
!4224 = !DILocation(line: 59, column: 17, scope: !4223)
!4225 = !DILocation(line: 65, column: 12, scope: !4201)
!4226 = !DILocation(line: 44, column: 9, scope: !4201)
!4227 = !DILocation(line: 72, column: 3, scope: !4201)
!4228 = !DILocation(line: 73, column: 1, scope: !4201)
!4229 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4230, file: !4230, line: 334, type: !4231, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4245)
!4230 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!21, !4233, !29, !21, !4234}
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1723, line: 107, baseType: !4236)
!4236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1723, line: 95, baseType: !4237)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1723, line: 83, size: 64, elements: !4238)
!4238 = !{!4239, !4240}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4237, file: !1723, line: 85, baseType: !48, size: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4237, file: !1723, line: 94, baseType: !4241, size: 32, offset: 32)
!4241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4237, file: !1723, line: 86, size: 32, elements: !4242)
!4242 = !{!4243, !4244}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4241, file: !1723, line: 89, baseType: !179, size: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4241, file: !1723, line: 93, baseType: !1733, size: 32)
!4245 = !{!4246, !4247, !4248, !4249, !4250, !4251, !4252}
!4246 = !DILocalVariable(name: "pwc", arg: 1, scope: !4229, file: !4230, line: 334, type: !4233)
!4247 = !DILocalVariable(name: "s", arg: 2, scope: !4229, file: !4230, line: 334, type: !29)
!4248 = !DILocalVariable(name: "n", arg: 3, scope: !4229, file: !4230, line: 334, type: !21)
!4249 = !DILocalVariable(name: "ps", arg: 4, scope: !4229, file: !4230, line: 334, type: !4234)
!4250 = !DILocalVariable(name: "ret", scope: !4229, file: !4230, line: 336, type: !21)
!4251 = !DILocalVariable(name: "wc", scope: !4229, file: !4230, line: 337, type: !1738)
!4252 = !DILocalVariable(name: "uc", scope: !4253, file: !4230, line: 398, type: !28)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !4230, line: 397, column: 5)
!4254 = distinct !DILexicalBlock(scope: !4229, file: !4230, line: 396, column: 7)
!4255 = !DILocation(line: 334, column: 23, scope: !4229)
!4256 = !DILocation(line: 334, column: 40, scope: !4229)
!4257 = !DILocation(line: 334, column: 50, scope: !4229)
!4258 = !DILocation(line: 334, column: 64, scope: !4229)
!4259 = !DILocation(line: 337, column: 3, scope: !4229)
!4260 = !DILocation(line: 353, column: 9, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4229, file: !4230, line: 353, column: 7)
!4262 = !DILocation(line: 353, column: 7, scope: !4229)
!4263 = !DILocation(line: 388, column: 9, scope: !4229)
!4264 = !DILocation(line: 336, column: 10, scope: !4229)
!4265 = !DILocation(line: 396, column: 19, scope: !4254)
!4266 = !DILocation(line: 396, column: 31, scope: !4267)
!4267 = !DILexicalBlockFile(scope: !4254, file: !4230, discriminator: 1)
!4268 = !DILocation(line: 396, column: 26, scope: !4254)
!4269 = !DILocation(line: 396, column: 41, scope: !4270)
!4270 = !DILexicalBlockFile(scope: !4254, file: !4230, discriminator: 2)
!4271 = !DILocation(line: 396, column: 7, scope: !4272)
!4272 = !DILexicalBlockFile(scope: !4229, file: !4230, discriminator: 2)
!4273 = !DILocation(line: 398, column: 26, scope: !4253)
!4274 = !DILocation(line: 398, column: 21, scope: !4253)
!4275 = !DILocation(line: 399, column: 14, scope: !4253)
!4276 = !DILocation(line: 399, column: 12, scope: !4253)
!4277 = !DILocation(line: 405, column: 1, scope: !4229)
!4278 = distinct !DISubprogram(name: "areadlink", scope: !4279, file: !4279, line: 53, type: !1236, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !4280)
!4279 = !DIFile(filename: "lib/areadlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4280 = !{!4281}
!4281 = !DILocalVariable(name: "filename", arg: 1, scope: !4278, file: !4279, line: 53, type: !29)
!4282 = !DILocation(line: 53, column: 24, scope: !4278)
!4283 = !DILocation(line: 55, column: 10, scope: !4278)
!4284 = !DILocation(line: 55, column: 3, scope: !4278)
!4285 = distinct !DISubprogram(name: "careadlinkatcwd", scope: !4279, file: !4279, line: 36, type: !4286, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !4291)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!4288, !48, !29, !32, !21}
!4288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !4289, line: 109, baseType: !4290)
!4289 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !37, line: 181, baseType: !780)
!4291 = !{!4292, !4293, !4294, !4295}
!4292 = !DILocalVariable(name: "fd", arg: 1, scope: !4285, file: !4279, line: 36, type: !48)
!4293 = !DILocalVariable(name: "filename", arg: 2, scope: !4285, file: !4279, line: 36, type: !29)
!4294 = !DILocalVariable(name: "buffer", arg: 3, scope: !4285, file: !4279, line: 36, type: !32)
!4295 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !4285, file: !4279, line: 37, type: !21)
!4296 = !DILocation(line: 36, column: 22, scope: !4285)
!4297 = !DILocation(line: 36, column: 38, scope: !4285)
!4298 = !DILocation(line: 36, column: 54, scope: !4285)
!4299 = !DILocation(line: 37, column: 25, scope: !4285)
!4300 = !DILocation(line: 41, column: 10, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4285, file: !4279, line: 41, column: 7)
!4302 = !DILocation(line: 41, column: 7, scope: !4285)
!4303 = !DILocation(line: 42, column: 5, scope: !4301)
!4304 = !DILocation(line: 43, column: 10, scope: !4285)
!4305 = !DILocation(line: 43, column: 3, scope: !4285)
!4306 = distinct !DISubprogram(name: "careadlinkat", scope: !4307, file: !4307, line: 64, type: !4308, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !640, variables: !4319)
!4307 = !DIFile(filename: "lib/careadlinkat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!32, !48, !29, !32, !21, !4310, !4318}
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4312)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator", file: !571, line: 27, size: 256, elements: !4313)
!4313 = !{!4314, !4315, !4316, !4317}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !4312, file: !571, line: 37, baseType: !574, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "reallocate", scope: !4312, file: !571, line: 43, baseType: !578, size: 64, offset: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4312, file: !571, line: 46, baseType: !582, size: 64, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !4312, file: !571, line: 52, baseType: !586, size: 64, offset: 192)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4319 = !{!4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4333, !4335, !4336, !4339, !4344}
!4320 = !DILocalVariable(name: "fd", arg: 1, scope: !4306, file: !4307, line: 64, type: !48)
!4321 = !DILocalVariable(name: "filename", arg: 2, scope: !4306, file: !4307, line: 64, type: !29)
!4322 = !DILocalVariable(name: "buffer", arg: 3, scope: !4306, file: !4307, line: 65, type: !32)
!4323 = !DILocalVariable(name: "buffer_size", arg: 4, scope: !4306, file: !4307, line: 65, type: !21)
!4324 = !DILocalVariable(name: "alloc", arg: 5, scope: !4306, file: !4307, line: 66, type: !4310)
!4325 = !DILocalVariable(name: "preadlinkat", arg: 6, scope: !4306, file: !4307, line: 67, type: !4318)
!4326 = !DILocalVariable(name: "buf", scope: !4306, file: !4307, line: 69, type: !32)
!4327 = !DILocalVariable(name: "buf_size", scope: !4306, file: !4307, line: 70, type: !21)
!4328 = !DILocalVariable(name: "buf_size_max", scope: !4306, file: !4307, line: 71, type: !21)
!4329 = !DILocalVariable(name: "stack_buf", scope: !4306, file: !4307, line: 73, type: !4330)
!4330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8192, elements: !4331)
!4331 = !{!4332}
!4332 = !DISubrange(count: 1024)
!4333 = !DILocalVariable(name: "link_length", scope: !4334, file: !4307, line: 94, type: !4288)
!4334 = distinct !DILexicalBlock(scope: !4306, file: !4307, line: 92, column: 5)
!4335 = !DILocalVariable(name: "link_size", scope: !4334, file: !4307, line: 95, type: !21)
!4336 = !DILocalVariable(name: "readlinkat_errno", scope: !4337, file: !4307, line: 100, type: !48)
!4337 = distinct !DILexicalBlock(scope: !4338, file: !4307, line: 97, column: 9)
!4338 = distinct !DILexicalBlock(scope: !4334, file: !4307, line: 96, column: 11)
!4339 = !DILocalVariable(name: "b", scope: !4340, file: !4307, line: 120, type: !32)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !4307, line: 119, column: 13)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !4307, line: 118, column: 15)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !4307, line: 115, column: 9)
!4343 = distinct !DILexicalBlock(scope: !4334, file: !4307, line: 114, column: 11)
!4344 = !DILocalVariable(name: "b", scope: !4345, file: !4307, line: 130, type: !32)
!4345 = distinct !DILexicalBlock(scope: !4346, file: !4307, line: 128, column: 13)
!4346 = distinct !DILexicalBlock(scope: !4341, file: !4307, line: 127, column: 20)
!4347 = !DILocation(line: 64, column: 19, scope: !4306)
!4348 = !DILocation(line: 64, column: 35, scope: !4306)
!4349 = !DILocation(line: 65, column: 21, scope: !4306)
!4350 = !DILocation(line: 65, column: 36, scope: !4306)
!4351 = !DILocation(line: 66, column: 39, scope: !4306)
!4352 = !DILocation(line: 67, column: 25, scope: !4306)
!4353 = !DILocation(line: 71, column: 10, scope: !4306)
!4354 = !DILocation(line: 73, column: 3, scope: !4306)
!4355 = !DILocation(line: 73, column: 8, scope: !4306)
!4356 = !DILocation(line: 75, column: 9, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4306, file: !4307, line: 75, column: 7)
!4358 = !DILocation(line: 75, column: 7, scope: !4306)
!4359 = !DILocation(line: 78, column: 9, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4306, file: !4307, line: 78, column: 7)
!4361 = !DILocation(line: 78, column: 7, scope: !4306)
!4362 = distinct !{!4362, !4363, !4364}
!4363 = !DILocation(line: 91, column: 3, scope: !4306)
!4364 = !DILocation(line: 154, column: 13, scope: !4306)
!4365 = !DILocation(line: 69, column: 9, scope: !4306)
!4366 = !DILocation(line: 70, column: 10, scope: !4306)
!4367 = !DILocation(line: 94, column: 29, scope: !4334)
!4368 = !DILocation(line: 94, column: 15, scope: !4334)
!4369 = !DILocation(line: 96, column: 23, scope: !4338)
!4370 = !DILocation(line: 96, column: 11, scope: !4334)
!4371 = !DILocation(line: 100, column: 34, scope: !4337)
!4372 = !DILocation(line: 100, column: 15, scope: !4337)
!4373 = !DILocation(line: 101, column: 32, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4337, file: !4307, line: 101, column: 15)
!4375 = !DILocation(line: 101, column: 15, scope: !4337)
!4376 = !DILocation(line: 103, column: 23, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !4307, line: 103, column: 19)
!4378 = distinct !DILexicalBlock(scope: !4374, file: !4307, line: 102, column: 13)
!4379 = !DILocation(line: 103, column: 19, scope: !4378)
!4380 = !DILocation(line: 105, column: 26, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4377, file: !4307, line: 104, column: 17)
!4382 = !{!4383, !673, i64 16}
!4383 = !{!"allocator", !673, i64 0, !673, i64 8, !673, i64 16, !673, i64 24}
!4384 = !DILocation(line: 105, column: 19, scope: !4381)
!4385 = !DILocation(line: 106, column: 25, scope: !4381)
!4386 = !DILocation(line: 107, column: 17, scope: !4381)
!4387 = !DILocation(line: 95, column: 14, scope: !4334)
!4388 = !DILocation(line: 114, column: 21, scope: !4343)
!4389 = !DILocation(line: 114, column: 11, scope: !4334)
!4390 = !DILocation(line: 116, column: 24, scope: !4342)
!4391 = !DILocation(line: 116, column: 11, scope: !4342)
!4392 = !DILocation(line: 116, column: 28, scope: !4342)
!4393 = !DILocation(line: 118, column: 19, scope: !4341)
!4394 = !DILocation(line: 118, column: 15, scope: !4342)
!4395 = !DILocation(line: 120, column: 41, scope: !4340)
!4396 = !{!4383, !673, i64 0}
!4397 = !DILocation(line: 120, column: 34, scope: !4340)
!4398 = !DILocation(line: 120, column: 21, scope: !4340)
!4399 = !DILocation(line: 122, column: 21, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4340, file: !4307, line: 122, column: 19)
!4401 = !DILocation(line: 122, column: 19, scope: !4340)
!4402 = !DILocation(line: 124, column: 15, scope: !4340)
!4403 = !DILocation(line: 127, column: 30, scope: !4346)
!4404 = !DILocation(line: 127, column: 48, scope: !4405)
!4405 = !DILexicalBlockFile(scope: !4346, file: !4307, discriminator: 1)
!4406 = !DILocation(line: 127, column: 41, scope: !4346)
!4407 = !DILocation(line: 127, column: 68, scope: !4408)
!4408 = !DILexicalBlockFile(scope: !4346, file: !4307, discriminator: 2)
!4409 = !{!4383, !673, i64 8}
!4410 = !DILocation(line: 127, column: 61, scope: !4408)
!4411 = !DILocation(line: 127, column: 20, scope: !4412)
!4412 = !DILexicalBlockFile(scope: !4341, file: !4307, discriminator: 2)
!4413 = !DILocation(line: 130, column: 34, scope: !4345)
!4414 = !DILocation(line: 130, column: 21, scope: !4345)
!4415 = !DILocation(line: 131, column: 19, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4345, file: !4307, line: 131, column: 19)
!4417 = !DILocation(line: 131, column: 19, scope: !4345)
!4418 = !DILocation(line: 133, column: 13, scope: !4345)
!4419 = !DILocation(line: 138, column: 15, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4334, file: !4307, line: 138, column: 11)
!4421 = !DILocation(line: 138, column: 11, scope: !4334)
!4422 = !DILocation(line: 139, column: 16, scope: !4420)
!4423 = !DILocation(line: 139, column: 9, scope: !4420)
!4424 = !DILocation(line: 141, column: 20, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4334, file: !4307, line: 141, column: 11)
!4426 = !DILocation(line: 141, column: 11, scope: !4334)
!4427 = !DILocation(line: 142, column: 18, scope: !4425)
!4428 = !DILocation(line: 142, column: 9, scope: !4425)
!4429 = !DILocation(line: 143, column: 25, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4425, file: !4307, line: 143, column: 16)
!4431 = !DILocation(line: 143, column: 16, scope: !4425)
!4432 = !DILocation(line: 147, column: 11, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4434, file: !4307, line: 146, column: 9)
!4434 = distinct !DILexicalBlock(scope: !4430, file: !4307, line: 145, column: 16)
!4435 = !DILocation(line: 147, column: 17, scope: !4433)
!4436 = !DILocation(line: 148, column: 11, scope: !4433)
!4437 = !DILocation(line: 152, column: 29, scope: !4334)
!4438 = !DILocation(line: 152, column: 22, scope: !4334)
!4439 = !DILocation(line: 153, column: 5, scope: !4440)
!4440 = !DILexicalBlockFile(scope: !4334, file: !4307, discriminator: 3)
!4441 = !DILocation(line: 156, column: 14, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4306, file: !4307, line: 156, column: 7)
!4443 = !{!4383, !673, i64 24}
!4444 = !DILocation(line: 156, column: 7, scope: !4442)
!4445 = !DILocation(line: 156, column: 7, scope: !4306)
!4446 = !DILocation(line: 157, column: 5, scope: !4442)
!4447 = !DILocation(line: 158, column: 3, scope: !4306)
!4448 = !DILocation(line: 158, column: 9, scope: !4306)
!4449 = !DILocation(line: 159, column: 3, scope: !4306)
!4450 = !DILocation(line: 160, column: 1, scope: !4306)
!4451 = distinct !DISubprogram(name: "close_stream", scope: !4452, file: !4452, line: 56, type: !4453, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !4495)
!4452 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!48, !4455}
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3479, line: 49, baseType: !4457)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3481, line: 241, size: 1728, elements: !4458)
!4458 = !{!4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4457, file: !3481, line: 242, baseType: !48, size: 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4457, file: !3481, line: 247, baseType: !32, size: 64, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4457, file: !3481, line: 248, baseType: !32, size: 64, offset: 128)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4457, file: !3481, line: 249, baseType: !32, size: 64, offset: 192)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4457, file: !3481, line: 250, baseType: !32, size: 64, offset: 256)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4457, file: !3481, line: 251, baseType: !32, size: 64, offset: 320)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4457, file: !3481, line: 252, baseType: !32, size: 64, offset: 384)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4457, file: !3481, line: 253, baseType: !32, size: 64, offset: 448)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4457, file: !3481, line: 254, baseType: !32, size: 64, offset: 512)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4457, file: !3481, line: 256, baseType: !32, size: 64, offset: 576)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4457, file: !3481, line: 257, baseType: !32, size: 64, offset: 640)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4457, file: !3481, line: 258, baseType: !32, size: 64, offset: 704)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4457, file: !3481, line: 260, baseType: !4472, size: 64, offset: 768)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3481, line: 156, size: 192, elements: !4474)
!4474 = !{!4475, !4476, !4478}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4473, file: !3481, line: 157, baseType: !4472, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4473, file: !3481, line: 158, baseType: !4477, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4473, file: !3481, line: 162, baseType: !48, size: 32, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4457, file: !3481, line: 262, baseType: !4477, size: 64, offset: 832)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4457, file: !3481, line: 264, baseType: !48, size: 32, offset: 896)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4457, file: !3481, line: 268, baseType: !48, size: 32, offset: 928)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4457, file: !3481, line: 270, baseType: !779, size: 64, offset: 960)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4457, file: !3481, line: 274, baseType: !162, size: 16, offset: 1024)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4457, file: !3481, line: 275, baseType: !3509, size: 8, offset: 1040)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4457, file: !3481, line: 276, baseType: !3511, size: 8, offset: 1048)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4457, file: !3481, line: 280, baseType: !3515, size: 64, offset: 1088)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4457, file: !3481, line: 289, baseType: !3518, size: 64, offset: 1152)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4457, file: !3481, line: 297, baseType: !33, size: 64, offset: 1216)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4457, file: !3481, line: 298, baseType: !33, size: 64, offset: 1280)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4457, file: !3481, line: 299, baseType: !33, size: 64, offset: 1344)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4457, file: !3481, line: 300, baseType: !33, size: 64, offset: 1408)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4457, file: !3481, line: 302, baseType: !21, size: 64, offset: 1472)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4457, file: !3481, line: 303, baseType: !48, size: 32, offset: 1536)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4457, file: !3481, line: 305, baseType: !3526, size: 160, offset: 1568)
!4495 = !{!4496, !4497, !4499, !4500}
!4496 = !DILocalVariable(name: "stream", arg: 1, scope: !4451, file: !4452, line: 56, type: !4455)
!4497 = !DILocalVariable(name: "some_pending", scope: !4451, file: !4452, line: 58, type: !4498)
!4498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!4499 = !DILocalVariable(name: "prev_fail", scope: !4451, file: !4452, line: 59, type: !4498)
!4500 = !DILocalVariable(name: "fclose_fail", scope: !4451, file: !4452, line: 60, type: !4498)
!4501 = !DILocation(line: 56, column: 21, scope: !4451)
!4502 = !DILocation(line: 58, column: 30, scope: !4451)
!4503 = !DILocalVariable(name: "__stream", arg: 1, scope: !4504, file: !4505, line: 132, type: !4455)
!4504 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4505, file: !4505, line: 132, type: !4453, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !4506)
!4505 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4506 = !{!4503}
!4507 = !DILocation(line: 132, column: 1, scope: !4504, inlinedAt: !4508)
!4508 = distinct !DILocation(line: 59, column: 27, scope: !4451)
!4509 = !DILocation(line: 134, column: 10, scope: !4504, inlinedAt: !4508)
!4510 = !{!4511, !815, i64 0}
!4511 = !{!"_IO_FILE", !815, i64 0, !673, i64 8, !673, i64 16, !673, i64 24, !673, i64 32, !673, i64 40, !673, i64 48, !673, i64 56, !673, i64 64, !673, i64 72, !673, i64 80, !673, i64 88, !673, i64 96, !673, i64 104, !815, i64 112, !815, i64 116, !837, i64 120, !2090, i64 128, !674, i64 130, !674, i64 131, !673, i64 136, !837, i64 144, !673, i64 152, !673, i64 160, !673, i64 168, !673, i64 176, !837, i64 184, !815, i64 192, !674, i64 196}
!4512 = !DILocation(line: 59, column: 43, scope: !4451)
!4513 = !DILocation(line: 60, column: 29, scope: !4451)
!4514 = !DILocation(line: 60, column: 45, scope: !4451)
!4515 = !DILocation(line: 70, column: 17, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4451, file: !4452, line: 70, column: 7)
!4517 = !DILocation(line: 70, column: 33, scope: !4518)
!4518 = !DILexicalBlockFile(scope: !4516, file: !4452, discriminator: 1)
!4519 = !DILocation(line: 70, column: 53, scope: !4520)
!4520 = !DILexicalBlockFile(scope: !4516, file: !4452, discriminator: 3)
!4521 = !DILocation(line: 70, column: 7, scope: !4522)
!4522 = !DILexicalBlockFile(scope: !4451, file: !4452, discriminator: 3)
!4523 = !DILocation(line: 72, column: 11, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4516, file: !4452, line: 71, column: 5)
!4525 = !DILocation(line: 73, column: 9, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4524, file: !4452, line: 72, column: 11)
!4527 = !DILocation(line: 73, column: 15, scope: !4526)
!4528 = !DILocation(line: 78, column: 1, scope: !4451)
!4529 = distinct !DISubprogram(name: "hard_locale", scope: !4530, file: !4530, line: 38, type: !845, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !4531)
!4530 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4531 = !{!4532, !4533, !4534, !4535, !4542, !4543, !4545, !4546, !4548, !4549, !4551}
!4532 = !DILocalVariable(name: "category", arg: 1, scope: !4529, file: !4530, line: 38, type: !48)
!4533 = !DILocalVariable(name: "hard", scope: !4529, file: !4530, line: 40, type: !107)
!4534 = !DILocalVariable(name: "p", scope: !4529, file: !4530, line: 41, type: !29)
!4535 = !DILocalVariable(name: "__s1_len", scope: !4536, file: !4530, line: 47, type: !21)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !4530, line: 47, column: 15)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !4530, line: 47, column: 15)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !4530, line: 46, column: 9)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !4530, line: 45, column: 11)
!4540 = distinct !DILexicalBlock(scope: !4541, file: !4530, line: 44, column: 5)
!4541 = distinct !DILexicalBlock(scope: !4529, file: !4530, line: 43, column: 7)
!4542 = !DILocalVariable(name: "__s2_len", scope: !4536, file: !4530, line: 47, type: !21)
!4543 = !DILocalVariable(name: "__s2", scope: !4544, file: !4530, line: 47, type: !26)
!4544 = distinct !DILexicalBlock(scope: !4536, file: !4530, line: 47, column: 15)
!4545 = !DILocalVariable(name: "__result", scope: !4544, file: !4530, line: 47, type: !48)
!4546 = !DILocalVariable(name: "__s1_len", scope: !4547, file: !4530, line: 47, type: !21)
!4547 = distinct !DILexicalBlock(scope: !4537, file: !4530, line: 47, column: 39)
!4548 = !DILocalVariable(name: "__s2_len", scope: !4547, file: !4530, line: 47, type: !21)
!4549 = !DILocalVariable(name: "__s2", scope: !4550, file: !4530, line: 47, type: !26)
!4550 = distinct !DILexicalBlock(scope: !4547, file: !4530, line: 47, column: 39)
!4551 = !DILocalVariable(name: "__result", scope: !4550, file: !4530, line: 47, type: !48)
!4552 = !DILocation(line: 38, column: 18, scope: !4529)
!4553 = !DILocation(line: 40, column: 8, scope: !4529)
!4554 = !DILocation(line: 41, column: 19, scope: !4529)
!4555 = !DILocation(line: 41, column: 15, scope: !4529)
!4556 = !DILocation(line: 43, column: 7, scope: !4541)
!4557 = !DILocation(line: 43, column: 7, scope: !4529)
!4558 = !DILocation(line: 47, column: 15, scope: !4536)
!4559 = !DILocation(line: 47, column: 15, scope: !4544)
!4560 = !DILocation(line: 47, column: 15, scope: !4561)
!4561 = !DILexicalBlockFile(scope: !4544, file: !4530, discriminator: 2)
!4562 = !DILocation(line: 47, column: 15, scope: !4563)
!4563 = !DILexicalBlockFile(scope: !4564, file: !4530, discriminator: 3)
!4564 = distinct !DILexicalBlock(scope: !4544, file: !4530, line: 47, column: 15)
!4565 = !DILocation(line: 47, column: 15, scope: !4566)
!4566 = !DILexicalBlockFile(scope: !4564, file: !4530, discriminator: 2)
!4567 = !DILocation(line: 47, column: 15, scope: !4568)
!4568 = !DILexicalBlockFile(scope: !4569, file: !4530, discriminator: 4)
!4569 = distinct !DILexicalBlock(scope: !4564, file: !4530, line: 47, column: 15)
!4570 = !DILocation(line: 47, column: 15, scope: !4571)
!4571 = !DILexicalBlockFile(scope: !4536, file: !4530, discriminator: 11)
!4572 = !DILocation(line: 47, column: 36, scope: !4573)
!4573 = !DILexicalBlockFile(scope: !4537, file: !4530, discriminator: 13)
!4574 = !DILocation(line: 47, column: 39, scope: !4547)
!4575 = !DILocation(line: 47, column: 39, scope: !4576)
!4576 = !DILexicalBlockFile(scope: !4547, file: !4530, discriminator: 26)
!4577 = !DILocation(line: 47, column: 59, scope: !4578)
!4578 = !DILexicalBlockFile(scope: !4537, file: !4530, discriminator: 27)
!4579 = !DILocation(line: 47, column: 15, scope: !4580)
!4580 = !DILexicalBlockFile(scope: !4538, file: !4530, discriminator: 27)
!4581 = !DILocation(line: 48, column: 13, scope: !4537)
!4582 = !DILocation(line: 71, column: 3, scope: !4529)
!4583 = distinct !DISubprogram(name: "locale_charset", scope: !561, file: !561, line: 393, type: !4584, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !217, variables: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!29}
!4586 = !{!4587, !4588, !4589, !4594}
!4587 = !DILocalVariable(name: "codeset", scope: !4583, file: !561, line: 395, type: !29)
!4588 = !DILocalVariable(name: "aliases", scope: !4583, file: !561, line: 396, type: !29)
!4589 = !DILocalVariable(name: "__s1_len", scope: !4590, file: !561, line: 592, type: !21)
!4590 = distinct !DILexicalBlock(scope: !4591, file: !561, line: 592, column: 9)
!4591 = distinct !DILexicalBlock(scope: !4592, file: !561, line: 592, column: 9)
!4592 = distinct !DILexicalBlock(scope: !4593, file: !561, line: 589, column: 3)
!4593 = distinct !DILexicalBlock(scope: !4583, file: !561, line: 589, column: 3)
!4594 = !DILocalVariable(name: "__s2_len", scope: !4590, file: !561, line: 592, type: !21)
!4595 = !DILocalVariable(name: "buf1", scope: !4596, file: !561, line: 196, type: !4663)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !561, line: 194, column: 21)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !561, line: 193, column: 19)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !561, line: 193, column: 19)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !561, line: 188, column: 17)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !561, line: 181, column: 19)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !561, line: 177, column: 13)
!4602 = distinct !DILexicalBlock(scope: !4603, file: !561, line: 173, column: 15)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !561, line: 161, column: 9)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !561, line: 157, column: 11)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !561, line: 130, column: 5)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !561, line: 129, column: 7)
!4607 = distinct !DISubprogram(name: "get_charset_aliases", scope: !561, file: !561, line: 124, type: !4584, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !217, variables: !4608)
!4608 = !{!4609, !4610, !4611, !4612, !4613, !4615, !4616, !4617, !4618, !4659, !4660, !4661, !4595, !4662, !4666, !4667, !4668}
!4609 = !DILocalVariable(name: "cp", scope: !4607, file: !561, line: 126, type: !29)
!4610 = !DILocalVariable(name: "dir", scope: !4605, file: !561, line: 132, type: !29)
!4611 = !DILocalVariable(name: "base", scope: !4605, file: !561, line: 133, type: !29)
!4612 = !DILocalVariable(name: "file_name", scope: !4605, file: !561, line: 134, type: !32)
!4613 = !DILocalVariable(name: "dir_len", scope: !4614, file: !561, line: 144, type: !21)
!4614 = distinct !DILexicalBlock(scope: !4605, file: !561, line: 143, column: 7)
!4615 = !DILocalVariable(name: "base_len", scope: !4614, file: !561, line: 145, type: !21)
!4616 = !DILocalVariable(name: "add_slash", scope: !4614, file: !561, line: 146, type: !48)
!4617 = !DILocalVariable(name: "fd", scope: !4603, file: !561, line: 162, type: !48)
!4618 = !DILocalVariable(name: "fp", scope: !4601, file: !561, line: 178, type: !4619)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3479, line: 49, baseType: !4621)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3481, line: 241, size: 1728, elements: !4622)
!4622 = !{!4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4621, file: !3481, line: 242, baseType: !48, size: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4621, file: !3481, line: 247, baseType: !32, size: 64, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4621, file: !3481, line: 248, baseType: !32, size: 64, offset: 128)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4621, file: !3481, line: 249, baseType: !32, size: 64, offset: 192)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4621, file: !3481, line: 250, baseType: !32, size: 64, offset: 256)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4621, file: !3481, line: 251, baseType: !32, size: 64, offset: 320)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4621, file: !3481, line: 252, baseType: !32, size: 64, offset: 384)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4621, file: !3481, line: 253, baseType: !32, size: 64, offset: 448)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4621, file: !3481, line: 254, baseType: !32, size: 64, offset: 512)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4621, file: !3481, line: 256, baseType: !32, size: 64, offset: 576)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4621, file: !3481, line: 257, baseType: !32, size: 64, offset: 640)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4621, file: !3481, line: 258, baseType: !32, size: 64, offset: 704)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4621, file: !3481, line: 260, baseType: !4636, size: 64, offset: 768)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3481, line: 156, size: 192, elements: !4638)
!4638 = !{!4639, !4640, !4642}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4637, file: !3481, line: 157, baseType: !4636, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4637, file: !3481, line: 158, baseType: !4641, size: 64, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4637, file: !3481, line: 162, baseType: !48, size: 32, offset: 128)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4621, file: !3481, line: 262, baseType: !4641, size: 64, offset: 832)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4621, file: !3481, line: 264, baseType: !48, size: 32, offset: 896)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4621, file: !3481, line: 268, baseType: !48, size: 32, offset: 928)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4621, file: !3481, line: 270, baseType: !779, size: 64, offset: 960)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4621, file: !3481, line: 274, baseType: !162, size: 16, offset: 1024)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4621, file: !3481, line: 275, baseType: !3509, size: 8, offset: 1040)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4621, file: !3481, line: 276, baseType: !3511, size: 8, offset: 1048)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4621, file: !3481, line: 280, baseType: !3515, size: 64, offset: 1088)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4621, file: !3481, line: 289, baseType: !3518, size: 64, offset: 1152)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4621, file: !3481, line: 297, baseType: !33, size: 64, offset: 1216)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4621, file: !3481, line: 298, baseType: !33, size: 64, offset: 1280)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4621, file: !3481, line: 299, baseType: !33, size: 64, offset: 1344)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4621, file: !3481, line: 300, baseType: !33, size: 64, offset: 1408)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4621, file: !3481, line: 302, baseType: !21, size: 64, offset: 1472)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4621, file: !3481, line: 303, baseType: !48, size: 32, offset: 1536)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4621, file: !3481, line: 305, baseType: !3526, size: 160, offset: 1568)
!4659 = !DILocalVariable(name: "res_ptr", scope: !4599, file: !561, line: 190, type: !32)
!4660 = !DILocalVariable(name: "res_size", scope: !4599, file: !561, line: 191, type: !21)
!4661 = !DILocalVariable(name: "c", scope: !4596, file: !561, line: 195, type: !48)
!4662 = !DILocalVariable(name: "buf2", scope: !4596, file: !561, line: 197, type: !4663)
!4663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 408, elements: !4664)
!4664 = !{!4665}
!4665 = !DISubrange(count: 51)
!4666 = !DILocalVariable(name: "l1", scope: !4596, file: !561, line: 198, type: !21)
!4667 = !DILocalVariable(name: "l2", scope: !4596, file: !561, line: 198, type: !21)
!4668 = !DILocalVariable(name: "old_res_ptr", scope: !4596, file: !561, line: 199, type: !32)
!4669 = !DILocation(line: 196, column: 28, scope: !4596, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 589, column: 18, scope: !4593)
!4671 = !DILocation(line: 197, column: 28, scope: !4596, inlinedAt: !4670)
!4672 = !DILocation(line: 403, column: 13, scope: !4583)
!4673 = !DILocation(line: 395, column: 15, scope: !4583)
!4674 = !DILocation(line: 584, column: 15, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4583, file: !561, line: 584, column: 7)
!4676 = !DILocation(line: 584, column: 7, scope: !4583)
!4677 = !DILocation(line: 128, column: 8, scope: !4607, inlinedAt: !4670)
!4678 = !DILocation(line: 126, column: 15, scope: !4607, inlinedAt: !4670)
!4679 = !DILocation(line: 129, column: 10, scope: !4606, inlinedAt: !4670)
!4680 = !DILocation(line: 129, column: 7, scope: !4607, inlinedAt: !4670)
!4681 = !DILocation(line: 138, column: 13, scope: !4605, inlinedAt: !4670)
!4682 = !DILocation(line: 132, column: 19, scope: !4605, inlinedAt: !4670)
!4683 = !DILocation(line: 139, column: 15, scope: !4684, inlinedAt: !4670)
!4684 = distinct !DILexicalBlock(scope: !4605, file: !561, line: 139, column: 11)
!4685 = !DILocation(line: 139, column: 23, scope: !4684, inlinedAt: !4670)
!4686 = !DILocation(line: 139, column: 26, scope: !4687, inlinedAt: !4670)
!4687 = !DILexicalBlockFile(scope: !4684, file: !561, discriminator: 1)
!4688 = !DILocation(line: 139, column: 33, scope: !4687, inlinedAt: !4670)
!4689 = !DILocation(line: 139, column: 11, scope: !4690, inlinedAt: !4670)
!4690 = !DILexicalBlockFile(scope: !4605, file: !561, discriminator: 1)
!4691 = !DILocation(line: 140, column: 9, scope: !4684, inlinedAt: !4670)
!4692 = !DILocation(line: 144, column: 26, scope: !4614, inlinedAt: !4670)
!4693 = !DILocation(line: 144, column: 16, scope: !4614, inlinedAt: !4670)
!4694 = !DILocation(line: 145, column: 16, scope: !4614, inlinedAt: !4670)
!4695 = !DILocation(line: 146, column: 34, scope: !4614, inlinedAt: !4670)
!4696 = !DILocation(line: 146, column: 38, scope: !4614, inlinedAt: !4670)
!4697 = !DILocation(line: 146, column: 42, scope: !4698, inlinedAt: !4670)
!4698 = !DILexicalBlockFile(scope: !4614, file: !561, discriminator: 1)
!4699 = !DILocation(line: 146, column: 41, scope: !4698, inlinedAt: !4670)
!4700 = !DILocation(line: 147, column: 48, scope: !4614, inlinedAt: !4670)
!4701 = !DILocation(line: 147, column: 46, scope: !4614, inlinedAt: !4670)
!4702 = !DILocation(line: 147, column: 69, scope: !4614, inlinedAt: !4670)
!4703 = !DILocation(line: 147, column: 30, scope: !4614, inlinedAt: !4670)
!4704 = !DILocation(line: 134, column: 13, scope: !4605, inlinedAt: !4670)
!4705 = !DILocation(line: 148, column: 13, scope: !4614, inlinedAt: !4670)
!4706 = !DILocation(line: 150, column: 13, scope: !4707, inlinedAt: !4670)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !561, line: 149, column: 11)
!4708 = distinct !DILexicalBlock(scope: !4614, file: !561, line: 148, column: 13)
!4709 = !DILocation(line: 151, column: 17, scope: !4707, inlinedAt: !4670)
!4710 = !DILocation(line: 152, column: 34, scope: !4711, inlinedAt: !4670)
!4711 = distinct !DILexicalBlock(scope: !4707, file: !561, line: 151, column: 17)
!4712 = !DILocation(line: 153, column: 41, scope: !4707, inlinedAt: !4670)
!4713 = !DILocation(line: 153, column: 13, scope: !4707, inlinedAt: !4670)
!4714 = !DILocation(line: 157, column: 11, scope: !4605, inlinedAt: !4670)
!4715 = !DILocation(line: 171, column: 16, scope: !4603, inlinedAt: !4670)
!4716 = !DILocation(line: 162, column: 15, scope: !4603, inlinedAt: !4670)
!4717 = !DILocation(line: 173, column: 18, scope: !4602, inlinedAt: !4670)
!4718 = !DILocation(line: 173, column: 15, scope: !4603, inlinedAt: !4670)
!4719 = !DILocation(line: 180, column: 20, scope: !4601, inlinedAt: !4670)
!4720 = !DILocation(line: 178, column: 21, scope: !4601, inlinedAt: !4670)
!4721 = !DILocation(line: 181, column: 22, scope: !4600, inlinedAt: !4670)
!4722 = !DILocation(line: 181, column: 19, scope: !4601, inlinedAt: !4670)
!4723 = !DILocation(line: 190, column: 25, scope: !4599, inlinedAt: !4670)
!4724 = !DILocation(line: 184, column: 19, scope: !4725, inlinedAt: !4670)
!4725 = distinct !DILexicalBlock(scope: !4600, file: !561, line: 182, column: 17)
!4726 = !DILocation(line: 186, column: 17, scope: !4725, inlinedAt: !4670)
!4727 = !DILocation(line: 191, column: 26, scope: !4599, inlinedAt: !4670)
!4728 = !DILocation(line: 196, column: 23, scope: !4596, inlinedAt: !4670)
!4729 = !DILocation(line: 197, column: 23, scope: !4596, inlinedAt: !4670)
!4730 = !DILocalVariable(name: "__fp", arg: 1, scope: !4731, file: !4505, line: 63, type: !4619)
!4731 = distinct !DISubprogram(name: "getc_unlocked", scope: !4505, file: !4505, line: 63, type: !4732, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !217, variables: !4734)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!48, !4619}
!4734 = !{!4730}
!4735 = !DILocation(line: 63, column: 22, scope: !4731, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 201, column: 27, scope: !4596, inlinedAt: !4670)
!4737 = !DILocation(line: 65, column: 10, scope: !4731, inlinedAt: !4736)
!4738 = !{!4511, !673, i64 8}
!4739 = !{!4511, !673, i64 16}
!4740 = !{!"branch_weights", i32 2000, i32 1}
!4741 = !DILocation(line: 65, column: 10, scope: !4742, inlinedAt: !4736)
!4742 = !DILexicalBlockFile(scope: !4731, file: !4505, discriminator: 1)
!4743 = !DILocation(line: 65, column: 10, scope: !4744, inlinedAt: !4736)
!4744 = !DILexicalBlockFile(scope: !4731, file: !4505, discriminator: 2)
!4745 = !DILocation(line: 65, column: 10, scope: !4746, inlinedAt: !4736)
!4746 = !DILexicalBlockFile(scope: !4731, file: !4505, discriminator: 3)
!4747 = !DILocation(line: 195, column: 27, scope: !4596, inlinedAt: !4670)
!4748 = !DILocation(line: 202, column: 27, scope: !4596, inlinedAt: !4670)
!4749 = !DILocation(line: 63, column: 22, scope: !4731, inlinedAt: !4750)
!4750 = distinct !DILocation(line: 210, column: 33, scope: !4751, inlinedAt: !4670)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !561, line: 207, column: 25)
!4752 = distinct !DILexicalBlock(scope: !4596, file: !561, line: 206, column: 27)
!4753 = !DILocation(line: 65, column: 10, scope: !4731, inlinedAt: !4750)
!4754 = !DILocation(line: 65, column: 10, scope: !4742, inlinedAt: !4750)
!4755 = !DILocation(line: 65, column: 10, scope: !4744, inlinedAt: !4750)
!4756 = !DILocation(line: 65, column: 10, scope: !4746, inlinedAt: !4750)
!4757 = !DILocation(line: 210, column: 29, scope: !4758, inlinedAt: !4670)
!4758 = !DILexicalBlockFile(scope: !4751, file: !561, discriminator: 1)
!4759 = distinct !{!4759, !4760, !4761}
!4760 = !DILocation(line: 193, column: 19, scope: !4598)
!4761 = !DILocation(line: 241, column: 21, scope: !4598)
!4762 = !DILocation(line: 216, column: 23, scope: !4596, inlinedAt: !4670)
!4763 = !DILocation(line: 217, column: 27, scope: !4764, inlinedAt: !4670)
!4764 = distinct !DILexicalBlock(scope: !4596, file: !561, line: 217, column: 27)
!4765 = !DILocation(line: 217, column: 64, scope: !4764, inlinedAt: !4670)
!4766 = !DILocation(line: 217, column: 27, scope: !4596, inlinedAt: !4670)
!4767 = !DILocation(line: 219, column: 28, scope: !4596, inlinedAt: !4670)
!4768 = !DILocation(line: 198, column: 30, scope: !4596, inlinedAt: !4670)
!4769 = !DILocation(line: 220, column: 28, scope: !4596, inlinedAt: !4670)
!4770 = !DILocation(line: 198, column: 34, scope: !4596, inlinedAt: !4670)
!4771 = !DILocation(line: 199, column: 29, scope: !4596, inlinedAt: !4670)
!4772 = !DILocation(line: 222, column: 36, scope: !4773, inlinedAt: !4670)
!4773 = distinct !DILexicalBlock(scope: !4596, file: !561, line: 222, column: 27)
!4774 = !DILocation(line: 222, column: 27, scope: !4596, inlinedAt: !4670)
!4775 = !DILocation(line: 225, column: 63, scope: !4776, inlinedAt: !4670)
!4776 = distinct !DILexicalBlock(scope: !4773, file: !561, line: 223, column: 25)
!4777 = !DILocation(line: 225, column: 46, scope: !4776, inlinedAt: !4670)
!4778 = !DILocation(line: 226, column: 25, scope: !4776, inlinedAt: !4670)
!4779 = !DILocation(line: 229, column: 36, scope: !4780, inlinedAt: !4670)
!4780 = distinct !DILexicalBlock(scope: !4773, file: !561, line: 228, column: 25)
!4781 = !DILocation(line: 230, column: 73, scope: !4780, inlinedAt: !4670)
!4782 = !DILocation(line: 230, column: 46, scope: !4780, inlinedAt: !4670)
!4783 = !DILocation(line: 232, column: 35, scope: !4784, inlinedAt: !4670)
!4784 = distinct !DILexicalBlock(scope: !4596, file: !561, line: 232, column: 27)
!4785 = !DILocation(line: 232, column: 27, scope: !4596, inlinedAt: !4670)
!4786 = !DILocation(line: 236, column: 27, scope: !4787, inlinedAt: !4670)
!4787 = distinct !DILexicalBlock(scope: !4784, file: !561, line: 233, column: 25)
!4788 = !DILocation(line: 237, column: 27, scope: !4787, inlinedAt: !4670)
!4789 = !DILocation(line: 239, column: 39, scope: !4596, inlinedAt: !4670)
!4790 = !DILocation(line: 239, column: 50, scope: !4596, inlinedAt: !4670)
!4791 = !DILocation(line: 239, column: 61, scope: !4596, inlinedAt: !4670)
!4792 = !DILocalVariable(name: "__dest", arg: 1, scope: !4793, file: !1458, line: 107, type: !4796)
!4793 = distinct !DISubprogram(name: "strcpy", scope: !1458, file: !1458, line: 107, type: !4794, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !217, variables: !4797)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!32, !4796, !4026}
!4796 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!4797 = !{!4792, !4798}
!4798 = !DILocalVariable(name: "__src", arg: 2, scope: !4793, file: !1458, line: 107, type: !4026)
!4799 = !DILocation(line: 107, column: 1, scope: !4793, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 239, column: 23, scope: !4596, inlinedAt: !4670)
!4801 = !DILocation(line: 109, column: 49, scope: !4793, inlinedAt: !4800)
!4802 = !DILocation(line: 109, column: 10, scope: !4793, inlinedAt: !4800)
!4803 = !DILocation(line: 107, column: 1, scope: !4793, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 240, column: 23, scope: !4596, inlinedAt: !4670)
!4805 = !DILocation(line: 109, column: 49, scope: !4793, inlinedAt: !4804)
!4806 = !DILocation(line: 109, column: 10, scope: !4793, inlinedAt: !4804)
!4807 = !DILocation(line: 241, column: 21, scope: !4597, inlinedAt: !4670)
!4808 = !DILocation(line: 242, column: 19, scope: !4599, inlinedAt: !4670)
!4809 = !DILocation(line: 243, column: 32, scope: !4810, inlinedAt: !4670)
!4810 = distinct !DILexicalBlock(scope: !4599, file: !561, line: 243, column: 23)
!4811 = !DILocation(line: 243, column: 23, scope: !4599, inlinedAt: !4670)
!4812 = !DILocation(line: 247, column: 33, scope: !4813, inlinedAt: !4670)
!4813 = distinct !DILexicalBlock(scope: !4810, file: !561, line: 246, column: 21)
!4814 = !DILocation(line: 247, column: 45, scope: !4813, inlinedAt: !4670)
!4815 = !DILocation(line: 253, column: 11, scope: !4603, inlinedAt: !4670)
!4816 = !DILocation(line: 377, column: 23, scope: !4605, inlinedAt: !4670)
!4817 = !DILocation(line: 378, column: 5, scope: !4605, inlinedAt: !4670)
!4818 = !DILocation(line: 396, column: 15, scope: !4583)
!4819 = !DILocation(line: 590, column: 8, scope: !4592)
!4820 = !DILocation(line: 590, column: 17, scope: !4592)
!4821 = !DILocation(line: 589, column: 3, scope: !4822)
!4822 = !DILexicalBlockFile(scope: !4593, file: !561, discriminator: 1)
!4823 = !DILocation(line: 592, column: 9, scope: !4590)
!4824 = !DILocation(line: 592, column: 35, scope: !4591)
!4825 = !DILocation(line: 593, column: 9, scope: !4591)
!4826 = !DILocation(line: 593, column: 24, scope: !4827)
!4827 = !DILexicalBlockFile(scope: !4591, file: !561, discriminator: 1)
!4828 = !DILocation(line: 593, column: 31, scope: !4827)
!4829 = !DILocation(line: 593, column: 34, scope: !4830)
!4830 = !DILexicalBlockFile(scope: !4591, file: !561, discriminator: 2)
!4831 = !DILocation(line: 593, column: 45, scope: !4830)
!4832 = !DILocation(line: 592, column: 9, scope: !4833)
!4833 = !DILexicalBlockFile(scope: !4592, file: !561, discriminator: 1)
!4834 = !DILocation(line: 595, column: 29, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4591, file: !561, line: 594, column: 7)
!4836 = !DILocation(line: 595, column: 27, scope: !4835)
!4837 = !DILocation(line: 595, column: 46, scope: !4835)
!4838 = !DILocation(line: 596, column: 9, scope: !4835)
!4839 = !DILocation(line: 591, column: 19, scope: !4592)
!4840 = !DILocation(line: 591, column: 36, scope: !4592)
!4841 = !DILocation(line: 591, column: 16, scope: !4592)
!4842 = !DILocation(line: 591, column: 52, scope: !4833)
!4843 = !DILocation(line: 591, column: 69, scope: !4592)
!4844 = !DILocation(line: 591, column: 49, scope: !4592)
!4845 = distinct !{!4845, !4846, !4847}
!4846 = !DILocation(line: 589, column: 3, scope: !4593)
!4847 = !DILocation(line: 597, column: 7, scope: !4593)
!4848 = !DILocation(line: 602, column: 7, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4583, file: !561, line: 602, column: 7)
!4850 = !DILocation(line: 602, column: 18, scope: !4849)
!4851 = !DILocation(line: 602, column: 7, scope: !4583)
!4852 = !DILocation(line: 612, column: 3, scope: !4583)
!4853 = distinct !DISubprogram(name: "rpl_fclose", scope: !4854, file: !4854, line: 56, type: !4855, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !648, variables: !4897)
!4854 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!48, !4857}
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3479, line: 49, baseType: !4859)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3481, line: 241, size: 1728, elements: !4860)
!4860 = !{!4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4859, file: !3481, line: 242, baseType: !48, size: 32)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4859, file: !3481, line: 247, baseType: !32, size: 64, offset: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4859, file: !3481, line: 248, baseType: !32, size: 64, offset: 128)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4859, file: !3481, line: 249, baseType: !32, size: 64, offset: 192)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4859, file: !3481, line: 250, baseType: !32, size: 64, offset: 256)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4859, file: !3481, line: 251, baseType: !32, size: 64, offset: 320)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4859, file: !3481, line: 252, baseType: !32, size: 64, offset: 384)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4859, file: !3481, line: 253, baseType: !32, size: 64, offset: 448)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4859, file: !3481, line: 254, baseType: !32, size: 64, offset: 512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4859, file: !3481, line: 256, baseType: !32, size: 64, offset: 576)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4859, file: !3481, line: 257, baseType: !32, size: 64, offset: 640)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4859, file: !3481, line: 258, baseType: !32, size: 64, offset: 704)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4859, file: !3481, line: 260, baseType: !4874, size: 64, offset: 768)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3481, line: 156, size: 192, elements: !4876)
!4876 = !{!4877, !4878, !4880}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4875, file: !3481, line: 157, baseType: !4874, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4875, file: !3481, line: 158, baseType: !4879, size: 64, offset: 64)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4875, file: !3481, line: 162, baseType: !48, size: 32, offset: 128)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4859, file: !3481, line: 262, baseType: !4879, size: 64, offset: 832)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4859, file: !3481, line: 264, baseType: !48, size: 32, offset: 896)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4859, file: !3481, line: 268, baseType: !48, size: 32, offset: 928)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4859, file: !3481, line: 270, baseType: !779, size: 64, offset: 960)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4859, file: !3481, line: 274, baseType: !162, size: 16, offset: 1024)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4859, file: !3481, line: 275, baseType: !3509, size: 8, offset: 1040)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4859, file: !3481, line: 276, baseType: !3511, size: 8, offset: 1048)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4859, file: !3481, line: 280, baseType: !3515, size: 64, offset: 1088)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4859, file: !3481, line: 289, baseType: !3518, size: 64, offset: 1152)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4859, file: !3481, line: 297, baseType: !33, size: 64, offset: 1216)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4859, file: !3481, line: 298, baseType: !33, size: 64, offset: 1280)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4859, file: !3481, line: 299, baseType: !33, size: 64, offset: 1344)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4859, file: !3481, line: 300, baseType: !33, size: 64, offset: 1408)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4859, file: !3481, line: 302, baseType: !21, size: 64, offset: 1472)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4859, file: !3481, line: 303, baseType: !48, size: 32, offset: 1536)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4859, file: !3481, line: 305, baseType: !3526, size: 160, offset: 1568)
!4897 = !{!4898, !4899, !4900, !4901}
!4898 = !DILocalVariable(name: "fp", arg: 1, scope: !4853, file: !4854, line: 56, type: !4857)
!4899 = !DILocalVariable(name: "saved_errno", scope: !4853, file: !4854, line: 58, type: !48)
!4900 = !DILocalVariable(name: "fd", scope: !4853, file: !4854, line: 59, type: !48)
!4901 = !DILocalVariable(name: "result", scope: !4853, file: !4854, line: 60, type: !48)
!4902 = !DILocation(line: 56, column: 19, scope: !4853)
!4903 = !DILocation(line: 58, column: 7, scope: !4853)
!4904 = !DILocation(line: 60, column: 7, scope: !4853)
!4905 = !DILocation(line: 63, column: 8, scope: !4853)
!4906 = !DILocation(line: 59, column: 7, scope: !4853)
!4907 = !DILocation(line: 64, column: 10, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4853, file: !4854, line: 64, column: 7)
!4909 = !DILocation(line: 64, column: 7, scope: !4853)
!4910 = !DILocation(line: 65, column: 12, scope: !4908)
!4911 = !DILocation(line: 65, column: 5, scope: !4908)
!4912 = !DILocation(line: 70, column: 9, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4853, file: !4854, line: 70, column: 7)
!4914 = !DILocation(line: 70, column: 23, scope: !4913)
!4915 = !DILocation(line: 70, column: 33, scope: !4916)
!4916 = !DILexicalBlockFile(scope: !4913, file: !4854, discriminator: 1)
!4917 = !DILocation(line: 70, column: 26, scope: !4918)
!4918 = !DILexicalBlockFile(scope: !4913, file: !4854, discriminator: 3)
!4919 = !DILocation(line: 70, column: 59, scope: !4916)
!4920 = !DILocation(line: 71, column: 7, scope: !4913)
!4921 = !DILocation(line: 71, column: 10, scope: !4916)
!4922 = !DILocation(line: 70, column: 7, scope: !4923)
!4923 = !DILexicalBlockFile(scope: !4853, file: !4854, discriminator: 2)
!4924 = !DILocation(line: 98, column: 12, scope: !4853)
!4925 = !DILocation(line: 103, column: 7, scope: !4853)
!4926 = !DILocation(line: 72, column: 19, scope: !4913)
!4927 = !DILocation(line: 103, column: 19, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4853, file: !4854, line: 103, column: 7)
!4929 = !DILocation(line: 105, column: 13, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4928, file: !4854, line: 104, column: 5)
!4931 = !DILocation(line: 107, column: 5, scope: !4930)
!4932 = !DILocation(line: 110, column: 1, scope: !4853)
!4933 = distinct !DISubprogram(name: "rpl_fflush", scope: !4934, file: !4934, line: 127, type: !4935, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !4977)
!4934 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!48, !4937}
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3479, line: 49, baseType: !4939)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3481, line: 241, size: 1728, elements: !4940)
!4940 = !{!4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4939, file: !3481, line: 242, baseType: !48, size: 32)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4939, file: !3481, line: 247, baseType: !32, size: 64, offset: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4939, file: !3481, line: 248, baseType: !32, size: 64, offset: 128)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4939, file: !3481, line: 249, baseType: !32, size: 64, offset: 192)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4939, file: !3481, line: 250, baseType: !32, size: 64, offset: 256)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4939, file: !3481, line: 251, baseType: !32, size: 64, offset: 320)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4939, file: !3481, line: 252, baseType: !32, size: 64, offset: 384)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4939, file: !3481, line: 253, baseType: !32, size: 64, offset: 448)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4939, file: !3481, line: 254, baseType: !32, size: 64, offset: 512)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4939, file: !3481, line: 256, baseType: !32, size: 64, offset: 576)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4939, file: !3481, line: 257, baseType: !32, size: 64, offset: 640)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4939, file: !3481, line: 258, baseType: !32, size: 64, offset: 704)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4939, file: !3481, line: 260, baseType: !4954, size: 64, offset: 768)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3481, line: 156, size: 192, elements: !4956)
!4956 = !{!4957, !4958, !4960}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4955, file: !3481, line: 157, baseType: !4954, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4955, file: !3481, line: 158, baseType: !4959, size: 64, offset: 64)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4955, file: !3481, line: 162, baseType: !48, size: 32, offset: 128)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4939, file: !3481, line: 262, baseType: !4959, size: 64, offset: 832)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4939, file: !3481, line: 264, baseType: !48, size: 32, offset: 896)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4939, file: !3481, line: 268, baseType: !48, size: 32, offset: 928)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4939, file: !3481, line: 270, baseType: !779, size: 64, offset: 960)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4939, file: !3481, line: 274, baseType: !162, size: 16, offset: 1024)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4939, file: !3481, line: 275, baseType: !3509, size: 8, offset: 1040)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4939, file: !3481, line: 276, baseType: !3511, size: 8, offset: 1048)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4939, file: !3481, line: 280, baseType: !3515, size: 64, offset: 1088)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4939, file: !3481, line: 289, baseType: !3518, size: 64, offset: 1152)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4939, file: !3481, line: 297, baseType: !33, size: 64, offset: 1216)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4939, file: !3481, line: 298, baseType: !33, size: 64, offset: 1280)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4939, file: !3481, line: 299, baseType: !33, size: 64, offset: 1344)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4939, file: !3481, line: 300, baseType: !33, size: 64, offset: 1408)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4939, file: !3481, line: 302, baseType: !21, size: 64, offset: 1472)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4939, file: !3481, line: 303, baseType: !48, size: 32, offset: 1536)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4939, file: !3481, line: 305, baseType: !3526, size: 160, offset: 1568)
!4977 = !{!4978}
!4978 = !DILocalVariable(name: "stream", arg: 1, scope: !4933, file: !4934, line: 127, type: !4937)
!4979 = !DILocation(line: 127, column: 19, scope: !4933)
!4980 = !DILocation(line: 148, column: 14, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4933, file: !4934, line: 148, column: 7)
!4982 = !DILocation(line: 148, column: 22, scope: !4981)
!4983 = !DILocation(line: 148, column: 27, scope: !4984)
!4984 = !DILexicalBlockFile(scope: !4981, file: !4934, discriminator: 1)
!4985 = !DILocation(line: 148, column: 7, scope: !4986)
!4986 = !DILexicalBlockFile(scope: !4933, file: !4934, discriminator: 1)
!4987 = !DILocation(line: 149, column: 12, scope: !4981)
!4988 = !DILocation(line: 149, column: 5, scope: !4981)
!4989 = !DILocalVariable(name: "fp", arg: 1, scope: !4990, file: !4934, line: 40, type: !4937)
!4990 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4934, file: !4934, line: 40, type: !4991, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !650, variables: !4993)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{null, !4937}
!4993 = !{!4989}
!4994 = !DILocation(line: 40, column: 48, scope: !4990, inlinedAt: !4995)
!4995 = distinct !DILocation(line: 153, column: 3, scope: !4933)
!4996 = !DILocation(line: 42, column: 11, scope: !4997, inlinedAt: !4995)
!4997 = distinct !DILexicalBlock(scope: !4990, file: !4934, line: 42, column: 7)
!4998 = !DILocation(line: 42, column: 18, scope: !4997, inlinedAt: !4995)
!4999 = !DILocation(line: 42, column: 7, scope: !4990, inlinedAt: !4995)
!5000 = !DILocation(line: 44, column: 5, scope: !4997, inlinedAt: !4995)
!5001 = !DILocation(line: 155, column: 10, scope: !4933)
!5002 = !DILocation(line: 155, column: 3, scope: !4933)
!5003 = !DILocation(line: 229, column: 1, scope: !4933)
!5004 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5005, file: !5005, line: 28, type: !5006, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !652, variables: !5049)
!5005 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!48, !5008, !5048, !48}
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3479, line: 49, baseType: !5010)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3481, line: 241, size: 1728, elements: !5011)
!5011 = !{!5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5010, file: !3481, line: 242, baseType: !48, size: 32)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5010, file: !3481, line: 247, baseType: !32, size: 64, offset: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5010, file: !3481, line: 248, baseType: !32, size: 64, offset: 128)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5010, file: !3481, line: 249, baseType: !32, size: 64, offset: 192)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5010, file: !3481, line: 250, baseType: !32, size: 64, offset: 256)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5010, file: !3481, line: 251, baseType: !32, size: 64, offset: 320)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5010, file: !3481, line: 252, baseType: !32, size: 64, offset: 384)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5010, file: !3481, line: 253, baseType: !32, size: 64, offset: 448)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5010, file: !3481, line: 254, baseType: !32, size: 64, offset: 512)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5010, file: !3481, line: 256, baseType: !32, size: 64, offset: 576)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5010, file: !3481, line: 257, baseType: !32, size: 64, offset: 640)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5010, file: !3481, line: 258, baseType: !32, size: 64, offset: 704)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5010, file: !3481, line: 260, baseType: !5025, size: 64, offset: 768)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3481, line: 156, size: 192, elements: !5027)
!5027 = !{!5028, !5029, !5031}
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5026, file: !3481, line: 157, baseType: !5025, size: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5026, file: !3481, line: 158, baseType: !5030, size: 64, offset: 64)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5026, file: !3481, line: 162, baseType: !48, size: 32, offset: 128)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5010, file: !3481, line: 262, baseType: !5030, size: 64, offset: 832)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5010, file: !3481, line: 264, baseType: !48, size: 32, offset: 896)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5010, file: !3481, line: 268, baseType: !48, size: 32, offset: 928)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5010, file: !3481, line: 270, baseType: !779, size: 64, offset: 960)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5010, file: !3481, line: 274, baseType: !162, size: 16, offset: 1024)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5010, file: !3481, line: 275, baseType: !3509, size: 8, offset: 1040)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5010, file: !3481, line: 276, baseType: !3511, size: 8, offset: 1048)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5010, file: !3481, line: 280, baseType: !3515, size: 64, offset: 1088)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5010, file: !3481, line: 289, baseType: !3518, size: 64, offset: 1152)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5010, file: !3481, line: 297, baseType: !33, size: 64, offset: 1216)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5010, file: !3481, line: 298, baseType: !33, size: 64, offset: 1280)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5010, file: !3481, line: 299, baseType: !33, size: 64, offset: 1344)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5010, file: !3481, line: 300, baseType: !33, size: 64, offset: 1408)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5010, file: !3481, line: 302, baseType: !21, size: 64, offset: 1472)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5010, file: !3481, line: 303, baseType: !48, size: 32, offset: 1536)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5010, file: !3481, line: 305, baseType: !3526, size: 160, offset: 1568)
!5048 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3479, line: 91, baseType: !779)
!5049 = !{!5050, !5051, !5052, !5053}
!5050 = !DILocalVariable(name: "fp", arg: 1, scope: !5004, file: !5005, line: 28, type: !5008)
!5051 = !DILocalVariable(name: "offset", arg: 2, scope: !5004, file: !5005, line: 28, type: !5048)
!5052 = !DILocalVariable(name: "whence", arg: 3, scope: !5004, file: !5005, line: 28, type: !48)
!5053 = !DILocalVariable(name: "pos", scope: !5054, file: !5005, line: 116, type: !5048)
!5054 = distinct !DILexicalBlock(scope: !5055, file: !5005, line: 112, column: 5)
!5055 = distinct !DILexicalBlock(scope: !5004, file: !5005, line: 51, column: 7)
!5056 = !DILocation(line: 28, column: 15, scope: !5004)
!5057 = !DILocation(line: 28, column: 25, scope: !5004)
!5058 = !DILocation(line: 28, column: 37, scope: !5004)
!5059 = !DILocation(line: 51, column: 11, scope: !5055)
!5060 = !DILocation(line: 51, column: 31, scope: !5055)
!5061 = !DILocation(line: 51, column: 24, scope: !5055)
!5062 = !DILocation(line: 52, column: 7, scope: !5055)
!5063 = !DILocation(line: 52, column: 14, scope: !5064)
!5064 = !DILexicalBlockFile(scope: !5055, file: !5005, discriminator: 1)
!5065 = !{!4511, !673, i64 40}
!5066 = !DILocation(line: 52, column: 35, scope: !5064)
!5067 = !{!4511, !673, i64 32}
!5068 = !DILocation(line: 52, column: 28, scope: !5064)
!5069 = !DILocation(line: 53, column: 7, scope: !5055)
!5070 = !DILocation(line: 53, column: 14, scope: !5064)
!5071 = !{!4511, !673, i64 72}
!5072 = !DILocation(line: 53, column: 28, scope: !5064)
!5073 = !DILocation(line: 51, column: 7, scope: !5074)
!5074 = !DILexicalBlockFile(scope: !5004, file: !5005, discriminator: 1)
!5075 = !DILocation(line: 116, column: 26, scope: !5054)
!5076 = !DILocation(line: 116, column: 19, scope: !5077)
!5077 = !DILexicalBlockFile(scope: !5054, file: !5005, discriminator: 1)
!5078 = !DILocation(line: 116, column: 13, scope: !5054)
!5079 = !DILocation(line: 117, column: 15, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5054, file: !5005, line: 117, column: 11)
!5081 = !DILocation(line: 117, column: 11, scope: !5054)
!5082 = !DILocation(line: 127, column: 11, scope: !5054)
!5083 = !DILocation(line: 127, column: 18, scope: !5054)
!5084 = !DILocation(line: 128, column: 11, scope: !5054)
!5085 = !DILocation(line: 128, column: 19, scope: !5054)
!5086 = !{!4511, !837, i64 144}
!5087 = !DILocation(line: 159, column: 7, scope: !5054)
!5088 = !DILocation(line: 161, column: 10, scope: !5004)
!5089 = !DILocation(line: 161, column: 3, scope: !5004)
!5090 = !DILocation(line: 162, column: 1, scope: !5004)
