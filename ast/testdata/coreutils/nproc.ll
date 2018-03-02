; ModuleID = 'coreutils-8.27/src/nproc.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.cpu_set_t = type { [16 x i64] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [128 x i8] c"Print the number of processing units available to the current process,\0Awhich may be less than the number of online processors\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [116 x i8] c"     --all       print the number of installed processors\0A     --ignore=N  if possible, exclude N processing units\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"nproc\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !69
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !75
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !80
@.str.18 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !84
@.str.34 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@.str.1.35 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !91
@.str.40 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.41 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.42 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.45, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.46, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.47, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.52, i32 0, i32 0), i8* null], align 16, !dbg !98
@.str.43 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.44 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.45 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.46 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.47 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.48 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.49 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.50 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.51 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.52 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !140
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !147
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !160
@.str.11.53 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.54 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.55 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.56 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.57 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.58 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !167
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !174
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !162
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !176
@.str.63 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.66 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.67 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.68 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.69 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.70 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.71 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.72 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.73 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.74 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.75 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.76 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.79 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.80 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.81 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.82 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !182
@.str.1.93 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.100 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.101 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.110 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.113 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !191
@.str.3.114 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.115 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.116 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.117 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.118 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.119 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !823 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !827, metadata !828), !dbg !829
  %2 = icmp eq i32 %0, 0, !dbg !830
  br i1 %2, label %8, label %3, !dbg !832

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !833, !tbaa !836
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !833
  %6 = load i8*, i8** @program_name, align 8, !dbg !833, !tbaa !836
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !840
  br label %39, !dbg !842

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !844
  %10 = load i8*, i8** @program_name, align 8, !dbg !844, !tbaa !836
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !846
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !848
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !848, !tbaa !836
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !849
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !850
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !850, !tbaa !836
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !851
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !852
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !852, !tbaa !836
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !853
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !854
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !854, !tbaa !836
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !855
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !34, metadata !828) #10, !dbg !856
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !34, metadata !828) #10, !dbg !856
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !858
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !859
  %26 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !861
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !45, metadata !828) #10, !dbg !862
  %27 = icmp eq i8* %26, null, !dbg !863
  br i1 %27, label %34, label %28, !dbg !864

; <label>:28:                                     ; preds = %8
  %29 = tail call i32 @strncmp(i8* nonnull %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #13, !dbg !865
  %30 = icmp eq i32 %29, 0, !dbg !865
  br i1 %30, label %34, label %31, !dbg !867

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !869
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !871
  br label %34, !dbg !873

; <label>:34:                                     ; preds = %8, %28, %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !874
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !875
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !876
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !877
  br label %39

; <label>:39:                                     ; preds = %34, %3
  tail call void @exit(i32 %0) #14, !dbg !878
  unreachable, !dbg !878
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !879 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !884, metadata !828), !dbg !891
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !885, metadata !828), !dbg !892
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !887, metadata !828), !dbg !893
  %3 = load i8*, i8** %1, align 8, !dbg !894, !tbaa !836
  tail call void @set_program_name(i8* %3) #10, !dbg !895
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !896
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !897
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !898
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !899
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !888, metadata !828), !dbg !900
  br label %8, !dbg !901

; <label>:8:                                      ; preds = %18, %2
  %9 = phi i64 [ %21, %18 ], [ 0, %2 ]
  %10 = phi i32 [ %12, %18 ], [ 2, %2 ]
  br label %11, !dbg !900

; <label>:11:                                     ; preds = %8, %11
  %12 = phi i32 [ 0, %11 ], [ %10, %8 ]
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !888, metadata !828), !dbg !900
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !887, metadata !828), !dbg !893
  %13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !902
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !889, metadata !828), !dbg !903
  switch i32 %13, label %22 [
    i32 -1, label %23
    i32 -130, label %14
    i32 -131, label %15
    i32 128, label %11
    i32 129, label %18
  ], !dbg !904

; <label>:14:                                     ; preds = %11
  tail call void @usage(i32 0) #15, !dbg !905
  unreachable, !dbg !905

; <label>:15:                                     ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !907, !tbaa !836
  %17 = load i8*, i8** @Version, align 8, !dbg !907, !tbaa !836
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* null) #10, !dbg !907
  tail call void @exit(i32 0) #14, !dbg !908
  unreachable, !dbg !907

; <label>:18:                                     ; preds = %11
  %19 = load i8*, i8** @optarg, align 8, !dbg !910, !tbaa !836
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !911
  %21 = tail call i64 @xdectoumax(i8* %19, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %20, i32 0) #10, !dbg !912
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !887, metadata !828), !dbg !893
  br label %8, !dbg !913

; <label>:22:                                     ; preds = %11
  tail call void @usage(i32 1) #15, !dbg !914
  unreachable, !dbg !914

; <label>:23:                                     ; preds = %11
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !888, metadata !828), !dbg !900
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !887, metadata !828), !dbg !893
  %24 = load i32, i32* @optind, align 4, !dbg !915, !tbaa !917
  %25 = icmp eq i32 %24, %0, !dbg !919
  br i1 %25, label %33, label %26, !dbg !920

; <label>:26:                                     ; preds = %23
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !921
  %28 = load i32, i32* @optind, align 4, !dbg !923, !tbaa !917
  %29 = sext i32 %28 to i64, !dbg !924
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !924
  %31 = load i8*, i8** %30, align 8, !dbg !924, !tbaa !836
  %32 = tail call i8* @quote(i8* %31) #10, !dbg !925
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %27, i8* %32) #10, !dbg !927
  tail call void @usage(i32 1) #15, !dbg !929
  unreachable, !dbg !929

; <label>:33:                                     ; preds = %23
  %34 = tail call i64 @num_processors(i32 %12) #10, !dbg !930
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !886, metadata !828), !dbg !931
  %35 = icmp ugt i64 %34, %9, !dbg !932
  %36 = sub i64 %34, %9, !dbg !934
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !886, metadata !828), !dbg !931
  %37 = select i1 %35, i64 %36, i64 1, !dbg !935
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !886, metadata !828), !dbg !931
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 %37) #10, !dbg !936
  ret i32 0, !dbg !937
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

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !938 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !940, metadata !828), !dbg !941
  store i8* %0, i8** @file_name, align 8, !dbg !942, !tbaa !836
  ret void, !dbg !943
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !944 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !948, metadata !949), !dbg !950
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !951, !tbaa !952
  ret void, !dbg !954
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !955 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !962, !tbaa !836
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !963
  %3 = icmp eq i32 %2, 0, !dbg !964
  br i1 %3, label %21, label %4, !dbg !965

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !966, !tbaa !952, !range !968
  %6 = icmp eq i8 %5, 0, !dbg !966
  %7 = tail call i32* @__errno_location() #1, !dbg !969
  br i1 %6, label %11, label %8, !dbg !971

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !972, !tbaa !917
  %10 = icmp eq i32 %9, 32, !dbg !974
  br i1 %10, label %21, label %11, !dbg !975

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !977
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !959, metadata !828), !dbg !978
  %13 = load i8*, i8** @file_name, align 8, !dbg !979, !tbaa !836
  %14 = icmp eq i8* %13, null, !dbg !979
  %15 = load i32, i32* %7, align 4, !tbaa !917
  br i1 %14, label %18, label %16, !dbg !980

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !981
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.19, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !983
  br label %19, !dbg !985

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i8* %12) #10, !dbg !986
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !987, !tbaa !917
  tail call void @_exit(i32 %20) #14, !dbg !988
  unreachable, !dbg !988

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !989, !tbaa !836
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !991
  %24 = icmp eq i32 %23, 0, !dbg !992
  br i1 %24, label %27, label %25, !dbg !993

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !994, !tbaa !917
  tail call void @_exit(i32 %26) #14, !dbg !995
  unreachable, !dbg !995

; <label>:27:                                     ; preds = %21
  ret void, !dbg !996
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i64 @num_processors(i32) local_unnamed_addr #6 !dbg !997 {
  %2 = alloca %struct.cpu_set_t, align 8
  %3 = alloca %struct.cpu_set_t, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1002, metadata !828), !dbg !1009
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1003, metadata !828), !dbg !1010
  %4 = icmp eq i32 %0, 2, !dbg !1011
  br i1 %4, label %5, label %15, !dbg !1012

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !1013
  %7 = tail call fastcc i64 @parse_omp_threads(i8* %6), !dbg !1014
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1004, metadata !828), !dbg !1016
  %8 = tail call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.35, i64 0, i64 0)) #10, !dbg !1017
  %9 = tail call fastcc i64 @parse_omp_threads(i8* %8), !dbg !1018
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1003, metadata !828), !dbg !1010
  %10 = icmp ne i64 %9, 0, !dbg !1019
  %11 = select i1 %10, i64 %9, i64 -1, !dbg !1021
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1003, metadata !828), !dbg !1010
  %12 = icmp eq i64 %7, 0, !dbg !1022
  %13 = icmp ult i64 %7, %11, !dbg !1024
  %14 = select i1 %13, i64 %7, i64 %11, !dbg !1024
  br i1 %12, label %15, label %52

; <label>:15:                                     ; preds = %5, %1
  %16 = phi i64 [ %11, %5 ], [ -1, %1 ]
  %17 = phi i32 [ 1, %5 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !1002, metadata !828), !dbg !1009
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1003, metadata !828), !dbg !1010
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !1025, metadata !828) #10, !dbg !1041
  %18 = icmp eq i32 %17, 1, !dbg !1043
  br i1 %18, label %19, label %31, !dbg !1044

; <label>:19:                                     ; preds = %15
  %20 = bitcast %struct.cpu_set_t* %3 to i8*, !dbg !1045
  call void @llvm.lifetime.start(i64 128, i8* nonnull %20) #10, !dbg !1045
  tail call void @llvm.dbg.value(metadata %struct.cpu_set_t* %3, i64 0, metadata !1051, metadata !1065) #10, !dbg !1066
  %21 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.cpu_set_t* nonnull %3) #10, !dbg !1067
  %22 = icmp eq i32 %21, 0, !dbg !1068
  br i1 %22, label %23, label %26, !dbg !1069

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata %struct.cpu_set_t* %3, i64 0, metadata !1051, metadata !1065) #10, !dbg !1066
  %24 = call i32 @__sched_cpucount(i64 128, %struct.cpu_set_t* nonnull %3) #10, !dbg !1070
  %25 = icmp eq i32 %24, 0, !dbg !1071
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %23, %19
  call void @llvm.lifetime.end(i64 128, i8* nonnull %20) #10, !dbg !1073
  %27 = call i64 @sysconf(i32 84) #10, !dbg !1074
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1032, metadata !828) #10, !dbg !1075
  %28 = icmp sgt i64 %27, 0, !dbg !1076
  br i1 %28, label %48, label %47

; <label>:29:                                     ; preds = %23
  %30 = sext i32 %24 to i64, !dbg !1070
  call void @llvm.lifetime.end(i64 128, i8* nonnull %20) #10, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1028, metadata !828) #10, !dbg !1078
  br label %48

; <label>:31:                                     ; preds = %15
  %32 = tail call i64 @sysconf(i32 83) #10, !dbg !1079
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1035, metadata !828) #10, !dbg !1080
  %33 = icmp eq i64 %32, 1, !dbg !1081
  br i1 %33, label %34, label %44, !dbg !1082

; <label>:34:                                     ; preds = %31
  %35 = bitcast %struct.cpu_set_t* %2 to i8*, !dbg !1083
  call void @llvm.lifetime.start(i64 128, i8* nonnull %35) #10, !dbg !1083
  tail call void @llvm.dbg.value(metadata %struct.cpu_set_t* %2, i64 0, metadata !1051, metadata !1065) #10, !dbg !1085
  %36 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.cpu_set_t* nonnull %2) #10, !dbg !1086
  %37 = icmp eq i32 %36, 0, !dbg !1087
  br i1 %37, label %38, label %41, !dbg !1088

; <label>:38:                                     ; preds = %34
  call void @llvm.dbg.value(metadata %struct.cpu_set_t* %2, i64 0, metadata !1051, metadata !1065) #10, !dbg !1085
  %39 = call i32 @__sched_cpucount(i64 128, %struct.cpu_set_t* nonnull %2) #10, !dbg !1089
  %40 = icmp eq i32 %39, 0, !dbg !1090
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38, %34
  call void @llvm.lifetime.end(i64 128, i8* nonnull %35) #10, !dbg !1091
  br label %48

; <label>:42:                                     ; preds = %38
  %43 = sext i32 %39 to i64, !dbg !1089
  call void @llvm.lifetime.end(i64 128, i8* nonnull %35) #10, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1038, metadata !828) #10, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1035, metadata !828) #10, !dbg !1080
  br label %44

; <label>:44:                                     ; preds = %42, %31
  %45 = phi i64 [ %43, %42 ], [ %32, %31 ]
  call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1035, metadata !828) #10, !dbg !1080
  %46 = icmp slt i64 %45, 1, !dbg !1093
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %44, %26
  br label %48, !dbg !1095

; <label>:48:                                     ; preds = %26, %29, %41, %44, %47
  %49 = phi i64 [ 1, %47 ], [ %27, %26 ], [ %30, %29 ], [ %45, %44 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !1007, metadata !828), !dbg !1096
  %50 = icmp ult i64 %49, %16, !dbg !1097
  %51 = select i1 %50, i64 %49, i64 %16, !dbg !1097
  br label %52

; <label>:52:                                     ; preds = %5, %48
  %53 = phi i64 [ %51, %48 ], [ %14, %5 ]
  ret i64 %53, !dbg !1098
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @parse_omp_threads(i8* readonly) unnamed_addr #6 !dbg !1099 {
  %2 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1103, metadata !828), !dbg !1109
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1104, metadata !828), !dbg !1110
  %3 = icmp eq i8* %0, null, !dbg !1111
  br i1 %3, label %64, label %4, !dbg !1113

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1103, metadata !828), !dbg !1109
  %5 = load i8, i8* %0, align 1, !dbg !1114, !tbaa !1116
  %6 = icmp eq i8 %5, 0, !dbg !1117
  br i1 %6, label %26, label %7, !dbg !1118

; <label>:7:                                      ; preds = %4
  br label %8, !dbg !1114

; <label>:8:                                      ; preds = %7, %19
  %9 = phi i8 [ %21, %19 ], [ %5, %7 ]
  %10 = phi i8* [ %20, %19 ], [ %0, %7 ]
  %11 = sext i8 %9 to i32, !dbg !1114
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1119, metadata !828), !dbg !1125
  %12 = add nsw i32 %11, -9, !dbg !1128
  %13 = icmp ult i32 %12, 24, !dbg !1128
  br i1 %13, label %14, label %23, !dbg !1128

; <label>:14:                                     ; preds = %8
  %15 = trunc i32 %12 to i24, !dbg !1128
  %16 = lshr i24 -8388577, %15, !dbg !1128
  %17 = and i24 %16, 1, !dbg !1128
  %18 = icmp eq i24 %17, 0, !dbg !1128
  br i1 %18, label %23, label %19, !dbg !1129

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1131
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1103, metadata !828), !dbg !1109
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1103, metadata !828), !dbg !1109
  %21 = load i8, i8* %20, align 1, !dbg !1114, !tbaa !1116
  %22 = icmp eq i8 %21, 0, !dbg !1117
  br i1 %22, label %23, label %8, !dbg !1118, !llvm.loop !1132

; <label>:23:                                     ; preds = %14, %8, %19
  %24 = phi i8 [ %9, %14 ], [ %9, %8 ], [ 0, %19 ]
  %25 = phi i8* [ %10, %14 ], [ %10, %8 ], [ %20, %19 ]
  br label %26, !dbg !1134

; <label>:26:                                     ; preds = %23, %4
  %27 = phi i8 [ 0, %4 ], [ %24, %23 ], !dbg !1134
  %28 = phi i8* [ %0, %4 ], [ %25, %23 ]
  %29 = sext i8 %27 to i32, !dbg !1134
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1135, metadata !828), !dbg !1138
  %30 = add nsw i32 %29, -48, !dbg !1140
  %31 = icmp ult i32 %30, 10, !dbg !1140
  br i1 %31, label %32, label %64, !dbg !1141

; <label>:32:                                     ; preds = %26
  %33 = bitcast i8** %2 to i8*, !dbg !1142
  call void @llvm.lifetime.start(i64 8, i8* nonnull %33) #10, !dbg !1142
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1105, metadata !828), !dbg !1143
  store i8* null, i8** %2, align 8, !dbg !1143, !tbaa !836
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1105, metadata !1065), !dbg !1143
  %34 = call i64 @strtoul(i8* nonnull %28, i8** nonnull %2, i32 10) #10, !dbg !1144
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1108, metadata !828), !dbg !1145
  %35 = load i8*, i8** %2, align 8, !dbg !1146, !tbaa !836
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1105, metadata !828), !dbg !1143
  %36 = icmp eq i8* %35, null, !dbg !1148
  br i1 %36, label %63, label %37, !dbg !1149

; <label>:37:                                     ; preds = %32
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1105, metadata !828), !dbg !1143
  %38 = load i8, i8* %35, align 1, !dbg !1150, !tbaa !1116
  %39 = icmp eq i8 %38, 0, !dbg !1153
  br i1 %39, label %59, label %40, !dbg !1154

; <label>:40:                                     ; preds = %37
  br label %41, !dbg !1150

; <label>:41:                                     ; preds = %40, %54
  %42 = phi i8* [ %55, %54 ], [ %35, %40 ]
  %43 = phi i8 [ %56, %54 ], [ %38, %40 ]
  %44 = sext i8 %43 to i32, !dbg !1150
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !1119, metadata !828), !dbg !1155
  %45 = add nsw i32 %44, -9, !dbg !1158
  %46 = icmp ult i32 %45, 24, !dbg !1158
  br i1 %46, label %49, label %48, !dbg !1158

; <label>:47:                                     ; preds = %54
  store i8* %55, i8** %2, align 8, !dbg !1159, !tbaa !836
  br label %59, !dbg !1154

; <label>:48:                                     ; preds = %41
  store i8* %42, i8** %2, align 8, !dbg !1159, !tbaa !836
  br label %59, !dbg !1158

; <label>:49:                                     ; preds = %41
  %50 = trunc i32 %45 to i24, !dbg !1158
  %51 = lshr i24 -8388577, %50, !dbg !1158
  %52 = and i24 %51, 1, !dbg !1158
  %53 = icmp eq i24 %52, 0, !dbg !1158
  tail call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !1105, metadata !828), !dbg !1143
  br i1 %53, label %58, label %54, !dbg !1160

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1159
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !1105, metadata !828), !dbg !1143
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !1105, metadata !828), !dbg !1143
  %56 = load i8, i8* %55, align 1, !dbg !1150, !tbaa !1116
  %57 = icmp eq i8 %56, 0, !dbg !1153
  br i1 %57, label %47, label %41, !dbg !1154, !llvm.loop !1162

; <label>:58:                                     ; preds = %49
  store i8* %42, i8** %2, align 8, !dbg !1159, !tbaa !836
  br label %59, !dbg !1164

; <label>:59:                                     ; preds = %37, %47, %48, %58
  %60 = phi i8* [ %42, %58 ], [ %42, %48 ], [ %55, %47 ], [ %35, %37 ]
  %61 = load i8, i8* %60, align 1, !dbg !1164, !tbaa !1116
  switch i8 %61, label %63 [
    i8 0, label %62
    i8 44, label %62
  ], !dbg !1166

; <label>:62:                                     ; preds = %59, %59
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #10, !dbg !1167
  br label %64

; <label>:63:                                     ; preds = %32, %59
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #10, !dbg !1167
  br label %64

; <label>:64:                                     ; preds = %26, %63, %62, %1
  %65 = phi i64 [ %34, %62 ], [ 0, %1 ], [ 0, %63 ], [ 0, %26 ]
  ret i64 %65, !dbg !1168
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32, i64, %struct.cpu_set_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64, %struct.cpu_set_t*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare i64 @sysconf(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1169 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1171, metadata !828), !dbg !1174
  %2 = icmp eq i8* %0, null, !dbg !1175
  br i1 %2, label %3, label %6, !dbg !1177

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1178, !tbaa !836
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.40, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1180
  tail call void @abort() #14, !dbg !1181
  unreachable, !dbg !1181

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1182
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1172, metadata !828), !dbg !1183
  %8 = icmp ne i8* %7, null, !dbg !1184
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1185
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1187
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1173, metadata !828), !dbg !1188
  %11 = ptrtoint i8* %10 to i64, !dbg !1189
  %12 = ptrtoint i8* %0 to i64, !dbg !1189
  %13 = sub i64 %11, %12, !dbg !1189
  %14 = icmp sgt i64 %13, 6, !dbg !1191
  br i1 %14, label %15, label %24, !dbg !1192

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1193
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.41, i64 0, i64 0), i64 7) #13, !dbg !1193
  %18 = icmp eq i32 %17, 0, !dbg !1195
  br i1 %18, label %19, label %24, !dbg !1196

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1171, metadata !828), !dbg !1174
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.42, i64 0, i64 0), i64 3) #13, !dbg !1197
  %21 = icmp eq i32 %20, 0, !dbg !1200
  br i1 %21, label %22, label %24, !dbg !1201

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1202
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1171, metadata !828), !dbg !1174
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1204, !tbaa !836
  br label %24, !dbg !1205

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1171, metadata !828), !dbg !1174
  store i8* %25, i8** @program_name, align 8, !dbg !1206, !tbaa !836
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1207, !tbaa !836
  ret void, !dbg !1208
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1209 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1214, metadata !828), !dbg !1217
  %2 = tail call i32* @__errno_location() #1, !dbg !1218
  %3 = load i32, i32* %2, align 4, !dbg !1218, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1215, metadata !828), !dbg !1219
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1220
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1221
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1221
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1223
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1223
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1216, metadata !828), !dbg !1224
  store i32 %3, i32* %2, align 4, !dbg !1225, !tbaa !917
  ret %struct.quoting_options* %8, !dbg !1226
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1227 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1233, metadata !828), !dbg !1234
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1235
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1235
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1236
  %5 = load i32, i32* %4, align 8, !dbg !1236, !tbaa !1238
  ret i32 %5, !dbg !1240
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1241 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1245, metadata !828), !dbg !1247
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1246, metadata !828), !dbg !1248
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1249
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1249
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1250
  store i32 %1, i32* %5, align 8, !dbg !1252, !tbaa !1238
  ret void, !dbg !1253
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1254 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1258, metadata !828), !dbg !1266
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1259, metadata !828), !dbg !1267
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1260, metadata !828), !dbg !1268
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1261, metadata !828), !dbg !1269
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1270
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1270
  %6 = lshr i8 %1, 5, !dbg !1271
  %7 = zext i8 %6 to i64, !dbg !1271
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1273
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1262, metadata !828), !dbg !1274
  %9 = and i8 %1, 31, !dbg !1275
  %10 = zext i8 %9 to i32, !dbg !1276
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1264, metadata !828), !dbg !1277
  %11 = load i32, i32* %8, align 4, !dbg !1278, !tbaa !917
  %12 = lshr i32 %11, %10, !dbg !1279
  %13 = and i32 %12, 1, !dbg !1280
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1265, metadata !828), !dbg !1281
  %14 = and i32 %2, 1, !dbg !1282
  %15 = xor i32 %13, %14, !dbg !1283
  %16 = shl i32 %15, %10, !dbg !1284
  %17 = xor i32 %16, %11, !dbg !1285
  store i32 %17, i32* %8, align 4, !dbg !1285, !tbaa !917
  ret i32 %13, !dbg !1286
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1287 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1291, metadata !828), !dbg !1294
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1292, metadata !828), !dbg !1295
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1296
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1291, metadata !828), !dbg !1294
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1298
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1291, metadata !828), !dbg !1294
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1299
  %6 = load i32, i32* %5, align 4, !dbg !1299, !tbaa !1300
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1293, metadata !828), !dbg !1301
  store i32 %1, i32* %5, align 4, !dbg !1302, !tbaa !1300
  ret i32 %6, !dbg !1303
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1304 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1308, metadata !828), !dbg !1311
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1309, metadata !828), !dbg !1312
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1310, metadata !828), !dbg !1313
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1314
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1308, metadata !828), !dbg !1311
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1308, metadata !828), !dbg !1311
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1317
  store i32 10, i32* %6, align 8, !dbg !1318, !tbaa !1238
  %7 = icmp ne i8* %1, null, !dbg !1319
  %8 = icmp ne i8* %2, null, !dbg !1321
  %9 = and i1 %7, %8, !dbg !1323
  br i1 %9, label %11, label %10, !dbg !1323

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1324
  unreachable, !dbg !1324

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1325
  store i8* %1, i8** %12, align 8, !dbg !1326, !tbaa !1327
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1328
  store i8* %2, i8** %13, align 8, !dbg !1329, !tbaa !1330
  ret void, !dbg !1331
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1332 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1336, metadata !828), !dbg !1344
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1337, metadata !828), !dbg !1345
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1338, metadata !828), !dbg !1346
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1339, metadata !828), !dbg !1347
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1340, metadata !828), !dbg !1348
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1349
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1349
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1341, metadata !828), !dbg !1350
  %8 = tail call i32* @__errno_location() #1, !dbg !1351
  %9 = load i32, i32* %8, align 4, !dbg !1351, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1342, metadata !828), !dbg !1352
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1353
  %11 = load i32, i32* %10, align 8, !dbg !1353, !tbaa !1238
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1354
  %13 = load i32, i32* %12, align 4, !dbg !1354, !tbaa !1300
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1355
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1356
  %16 = load i8*, i8** %15, align 8, !dbg !1356, !tbaa !1327
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1357
  %18 = load i8*, i8** %17, align 8, !dbg !1357, !tbaa !1330
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1358
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1343, metadata !828), !dbg !1359
  store i32 %9, i32* %8, align 4, !dbg !1360, !tbaa !917
  ret i64 %19, !dbg !1361
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1362 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1368, metadata !828), !dbg !1431
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1369, metadata !828), !dbg !1432
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1370, metadata !828), !dbg !1433
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1371, metadata !828), !dbg !1434
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1372, metadata !828), !dbg !1435
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1373, metadata !828), !dbg !1436
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1374, metadata !828), !dbg !1437
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1375, metadata !828), !dbg !1438
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1376, metadata !828), !dbg !1439
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1378, metadata !828), !dbg !1440
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1379, metadata !828), !dbg !1441
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1380, metadata !828), !dbg !1442
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1381, metadata !828), !dbg !1443
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1382, metadata !828), !dbg !1444
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1445
  %14 = icmp eq i64 %13, 1, !dbg !1446
  %15 = lshr i32 %5, 1, !dbg !1447
  %16 = trunc i32 %15 to i8, !dbg !1447
  %17 = and i8 %16, 1, !dbg !1447
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1384, metadata !828), !dbg !1447
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1385, metadata !828), !dbg !1448
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1386, metadata !828), !dbg !1449
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1387, metadata !828), !dbg !1450
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1451

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1369, metadata !828), !dbg !1432
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1387, metadata !828), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1386, metadata !828), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1384, metadata !828), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1371, metadata !828), !dbg !1434
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1382, metadata !828), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1381, metadata !828), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1380, metadata !828), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1379, metadata !828), !dbg !1441
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1376, metadata !828), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1375, metadata !828), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1372, metadata !828), !dbg !1435
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
  ], !dbg !1452

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1372, metadata !828), !dbg !1435
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1384, metadata !828), !dbg !1447
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1384, metadata !828), !dbg !1447
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1372, metadata !828), !dbg !1435
  br label %95, !dbg !1453

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1384, metadata !828), !dbg !1447
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1372, metadata !828), !dbg !1435
  %43 = and i8 %36, 1, !dbg !1455
  %44 = icmp eq i8 %43, 0, !dbg !1455
  br i1 %44, label %45, label %95, !dbg !1453

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1457
  br i1 %46, label %95, label %47, !dbg !1461

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1463, !tbaa !1116
  br label %95, !dbg !1463

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.53, i64 0, i64 0), i32 %28), !dbg !1465
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1375, metadata !828), !dbg !1438
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), i32 %28), !dbg !1469
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1376, metadata !828), !dbg !1439
  br label %51, !dbg !1470

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1376, metadata !828), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1375, metadata !828), !dbg !1438
  %54 = and i8 %36, 1, !dbg !1471
  %55 = icmp eq i8 %54, 0, !dbg !1471
  br i1 %55, label %56, label %73, !dbg !1473

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1380, metadata !828), !dbg !1442
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1378, metadata !828), !dbg !1440
  %57 = load i8, i8* %52, align 1, !dbg !1474, !tbaa !1116
  %58 = icmp eq i8 %57, 0, !dbg !1478
  br i1 %58, label %73, label %59, !dbg !1478

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1480

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1480
  br i1 %64, label %65, label %67, !dbg !1484

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1486
  store i8 %61, i8* %66, align 1, !dbg !1486, !tbaa !1116
  br label %67, !dbg !1486

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1378, metadata !828), !dbg !1440
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1490
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1380, metadata !828), !dbg !1442
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1380, metadata !828), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1378, metadata !828), !dbg !1440
  %70 = load i8, i8* %69, align 1, !dbg !1474, !tbaa !1116
  %71 = icmp eq i8 %70, 0, !dbg !1478
  br i1 %71, label %72, label %60, !dbg !1478, !llvm.loop !1492

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1440

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1382, metadata !828), !dbg !1444
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1380, metadata !828), !dbg !1442
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1381, metadata !828), !dbg !1443
  br label %95, !dbg !1496

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1382, metadata !828), !dbg !1444
  br label %77, !dbg !1497

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1382, metadata !828), !dbg !1444
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1384, metadata !828), !dbg !1447
  br label %79, !dbg !1498

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1384, metadata !828), !dbg !1447
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1382, metadata !828), !dbg !1444
  %82 = and i8 %81, 1, !dbg !1499
  %83 = icmp eq i8 %82, 0, !dbg !1499
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1382, metadata !828), !dbg !1444
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1501
  br label %85, !dbg !1501

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1384, metadata !828), !dbg !1447
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1382, metadata !828), !dbg !1444
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1372, metadata !828), !dbg !1435
  %88 = and i8 %87, 1, !dbg !1502
  %89 = icmp eq i8 %88, 0, !dbg !1502
  br i1 %89, label %90, label %95, !dbg !1504

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1505
  br i1 %91, label %95, label %92, !dbg !1509

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1511, !tbaa !1116
  br label %95, !dbg !1511

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1384, metadata !828), !dbg !1447
  br label %95, !dbg !1513

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1514
  unreachable, !dbg !1514

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1384, metadata !828), !dbg !1447
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1382, metadata !828), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1381, metadata !828), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1380, metadata !828), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1376, metadata !828), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1375, metadata !828), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1372, metadata !828), !dbg !1435
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1377, metadata !828), !dbg !1515
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
  br label %123, !dbg !1516

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1369, metadata !828), !dbg !1432
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1387, metadata !828), !dbg !1450
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1386, metadata !828), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1371, metadata !828), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1379, metadata !828), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1377, metadata !828), !dbg !1515
  %132 = icmp eq i64 %127, -1, !dbg !1517
  br i1 %132, label %135, label %133, !dbg !1519

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1520
  br i1 %134, label %597, label %139, !dbg !1522

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1524
  %137 = load i8, i8* %136, align 1, !dbg !1524, !tbaa !1116
  %138 = icmp eq i8 %137, 0, !dbg !1526
  br i1 %138, label %597, label %139, !dbg !1522

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1393, metadata !828), !dbg !1527
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1394, metadata !828), !dbg !1528
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1395, metadata !828), !dbg !1529
  br i1 %109, label %140, label %155, !dbg !1530

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1532
  %142 = and i1 %110, %132, !dbg !1534
  br i1 %142, label %143, label %145, !dbg !1534

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1371, metadata !828), !dbg !1434
  br label %145, !dbg !1536

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1371, metadata !828), !dbg !1434
  %147 = icmp ugt i64 %141, %146, !dbg !1538
  br i1 %147, label %155, label %148, !dbg !1540

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1541
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1542
  %151 = icmp ne i32 %150, 0, !dbg !1543
  %152 = or i1 %151, %112, !dbg !1543
  %153 = xor i1 %151, true, !dbg !1543
  %154 = zext i1 %153 to i8, !dbg !1543
  br i1 %152, label %155, label %644, !dbg !1543

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1393, metadata !828), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1371, metadata !828), !dbg !1434
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1545
  %159 = load i8, i8* %158, align 1, !dbg !1545, !tbaa !1116
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1388, metadata !828), !dbg !1546
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
  ], !dbg !1547

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1548

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1549

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1394, metadata !828), !dbg !1528
  %163 = and i8 %128, 1, !dbg !1554
  %164 = icmp eq i8 %163, 0, !dbg !1554
  %165 = and i1 %114, %164, !dbg !1557
  br i1 %165, label %166, label %182, !dbg !1557

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1559
  br i1 %167, label %168, label %170, !dbg !1564

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1566
  store i8 39, i8* %169, align 1, !dbg !1566, !tbaa !1116
  br label %170, !dbg !1566

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1378, metadata !828), !dbg !1440
  %172 = icmp ult i64 %171, %131, !dbg !1570
  br i1 %172, label %173, label %175, !dbg !1574

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1576
  store i8 36, i8* %174, align 1, !dbg !1576, !tbaa !1116
  br label %175, !dbg !1576

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1378, metadata !828), !dbg !1440
  %177 = icmp ult i64 %176, %131, !dbg !1580
  br i1 %177, label %178, label %180, !dbg !1584

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1586
  store i8 39, i8* %179, align 1, !dbg !1586, !tbaa !1116
  br label %180, !dbg !1586

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1385, metadata !828), !dbg !1448
  br label %182, !dbg !1590

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1378, metadata !828), !dbg !1440
  %185 = icmp ult i64 %183, %131, !dbg !1592
  br i1 %185, label %186, label %188, !dbg !1596

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1598
  store i8 92, i8* %187, align 1, !dbg !1598, !tbaa !1116
  br label %188, !dbg !1598

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1378, metadata !828), !dbg !1440
  br i1 %106, label %190, label %476, !dbg !1602

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1604
  %192 = icmp ult i64 %191, %156, !dbg !1606
  br i1 %192, label %193, label %476, !dbg !1607

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1608
  %195 = load i8, i8* %194, align 1, !dbg !1608, !tbaa !1116
  %196 = add i8 %195, -48, !dbg !1610
  %197 = icmp ult i8 %196, 10, !dbg !1610
  br i1 %197, label %198, label %476, !dbg !1610

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1611
  br i1 %199, label %200, label %202, !dbg !1616

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1618
  store i8 48, i8* %201, align 1, !dbg !1618, !tbaa !1116
  br label %202, !dbg !1618

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1378, metadata !828), !dbg !1440
  %204 = icmp ult i64 %203, %131, !dbg !1622
  br i1 %204, label %205, label %207, !dbg !1626

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1628
  store i8 48, i8* %206, align 1, !dbg !1628, !tbaa !1116
  br label %207, !dbg !1628

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1378, metadata !828), !dbg !1440
  br label %476, !dbg !1632

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1633

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1634

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1635

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1637

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1639
  %215 = icmp ult i64 %214, %156, !dbg !1641
  br i1 %215, label %216, label %476, !dbg !1642

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1643
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1645
  %219 = load i8, i8* %218, align 1, !dbg !1645, !tbaa !1116
  %220 = icmp eq i8 %219, 63, !dbg !1646
  br i1 %220, label %221, label %476, !dbg !1647

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1649
  %223 = load i8, i8* %222, align 1, !dbg !1649, !tbaa !1116
  %224 = sext i8 %223 to i32, !dbg !1649
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
  ], !dbg !1650

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1651

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1388, metadata !828), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1377, metadata !828), !dbg !1515
  %227 = icmp ult i64 %125, %131, !dbg !1653
  br i1 %227, label %228, label %230, !dbg !1657

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1659
  store i8 63, i8* %229, align 1, !dbg !1659, !tbaa !1116
  br label %230, !dbg !1659

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1378, metadata !828), !dbg !1440
  %232 = icmp ult i64 %231, %131, !dbg !1663
  br i1 %232, label %233, label %235, !dbg !1667

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1669
  store i8 34, i8* %234, align 1, !dbg !1669, !tbaa !1116
  br label %235, !dbg !1669

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1378, metadata !828), !dbg !1440
  %237 = icmp ult i64 %236, %131, !dbg !1673
  br i1 %237, label %238, label %240, !dbg !1677

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1679
  store i8 34, i8* %239, align 1, !dbg !1679, !tbaa !1116
  br label %240, !dbg !1679

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1378, metadata !828), !dbg !1440
  %242 = icmp ult i64 %241, %131, !dbg !1683
  br i1 %242, label %243, label %245, !dbg !1687

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1689
  store i8 63, i8* %244, align 1, !dbg !1689, !tbaa !1116
  br label %245, !dbg !1689

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1378, metadata !828), !dbg !1440
  br label %476, !dbg !1693

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1392, metadata !828), !dbg !1694
  br label %257, !dbg !1695

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1392, metadata !828), !dbg !1694
  br label %257, !dbg !1696

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1392, metadata !828), !dbg !1694
  br label %255, !dbg !1697

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1392, metadata !828), !dbg !1694
  br label %255, !dbg !1698

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1392, metadata !828), !dbg !1694
  br label %257, !dbg !1699

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1392, metadata !828), !dbg !1694
  br i1 %114, label %253, label %254, !dbg !1700

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1701

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1704

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1392, metadata !828), !dbg !1694
  br i1 %118, label %257, label %644, !dbg !1706

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1392, metadata !828), !dbg !1694
  br i1 %105, label %503, label %476, !dbg !1708

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1709
  br i1 %260, label %261, label %266, !dbg !1711

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1712, !tbaa !1116
  %263 = icmp ne i8 %262, 0, !dbg !1714
  %264 = icmp ne i64 %124, 0, !dbg !1715
  %265 = or i1 %264, %263, !dbg !1717
  br i1 %265, label %476, label %272, !dbg !1717

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1718
  %268 = icmp ne i64 %124, 0, !dbg !1715
  %269 = or i1 %268, %267, !dbg !1720
  br i1 %269, label %476, label %272, !dbg !1720

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1715
  br i1 %271, label %272, label %476, !dbg !1722

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1395, metadata !828), !dbg !1529
  br label %273, !dbg !1723

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1395, metadata !828), !dbg !1529
  br i1 %118, label %476, label %644, !dbg !1724

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1386, metadata !828), !dbg !1449
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1395, metadata !828), !dbg !1529
  br i1 %114, label %276, label %476, !dbg !1726

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1727

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1730
  %279 = icmp ne i64 %126, 0, !dbg !1732
  %280 = or i1 %279, %278, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1379, metadata !828), !dbg !1441
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1369, metadata !828), !dbg !1432
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1734
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1369, metadata !828), !dbg !1432
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1379, metadata !828), !dbg !1441
  %283 = icmp ult i64 %125, %282, !dbg !1735
  br i1 %283, label %284, label %286, !dbg !1739

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1741
  store i8 39, i8* %285, align 1, !dbg !1741, !tbaa !1116
  br label %286, !dbg !1741

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1378, metadata !828), !dbg !1440
  %288 = icmp ult i64 %287, %282, !dbg !1745
  br i1 %288, label %289, label %291, !dbg !1749

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1751
  store i8 92, i8* %290, align 1, !dbg !1751, !tbaa !1116
  br label %291, !dbg !1751

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1378, metadata !828), !dbg !1440
  %293 = icmp ult i64 %292, %282, !dbg !1755
  br i1 %293, label %294, label %296, !dbg !1759

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1761
  store i8 39, i8* %295, align 1, !dbg !1761, !tbaa !1116
  br label %296, !dbg !1761

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1385, metadata !828), !dbg !1448
  br label %476, !dbg !1765

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1766

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1396, metadata !828), !dbg !1767
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1768
  %301 = load i16*, i16** %300, align 8, !dbg !1768, !tbaa !836
  %302 = zext i8 %159 to i64, !dbg !1768
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1768
  %304 = load i16, i16* %303, align 2, !dbg !1768, !tbaa !1770
  %305 = lshr i16 %304, 14, !dbg !1772
  %306 = trunc i16 %305 to i8, !dbg !1772
  %307 = and i8 %306, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1399, metadata !828), !dbg !1773
  br label %368, !dbg !1774

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1775
  store i64 0, i64* %10, align 8, !dbg !1776
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1396, metadata !828), !dbg !1767
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1399, metadata !828), !dbg !1773
  %309 = icmp eq i64 %156, -1, !dbg !1777
  br i1 %309, label %310, label %312, !dbg !1779, !llvm.loop !1780

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1371, metadata !828), !dbg !1434
  br label %312, !dbg !1784, !llvm.loop !1780

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1773

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1399, metadata !828), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1396, metadata !828), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1371, metadata !828), !dbg !1434
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1785
  %317 = add i64 %315, %124, !dbg !1786
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1787
  %319 = sub i64 %313, %317, !dbg !1788
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1400, metadata !1065), !dbg !1789
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1417, metadata !1065), !dbg !1790
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1420, metadata !828), !dbg !1792
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1793

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1396, metadata !828), !dbg !1767
  %322 = icmp ugt i64 %313, %317, !dbg !1794
  br i1 %322, label %323, label %351, !dbg !1797

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1798

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1798
  %328 = load i8, i8* %327, align 1, !dbg !1798, !tbaa !1116
  %329 = icmp eq i8 %328, 0, !dbg !1800
  br i1 %329, label %348, label %330, !dbg !1801

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1396, metadata !828), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1396, metadata !828), !dbg !1767
  %332 = add i64 %331, %124, !dbg !1804
  %333 = icmp ult i64 %332, %313, !dbg !1794
  br i1 %333, label %324, label %348, !dbg !1797, !llvm.loop !1805

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1807
  %336 = and i1 %116, %335, !dbg !1811
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1421, metadata !828), !dbg !1812
  br i1 %336, label %337, label %355, !dbg !1811

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1813

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1813
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1814
  %342 = load i8, i8* %341, align 1, !dbg !1814, !tbaa !1116
  %343 = sext i8 %342 to i32, !dbg !1814
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1815

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1421, metadata !828), !dbg !1812
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1421, metadata !828), !dbg !1812
  %346 = icmp ult i64 %345, %320, !dbg !1807
  br i1 %346, label %338, label %354, !dbg !1818, !llvm.loop !1820

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1773

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1773

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1773

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1399, metadata !828), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1396, metadata !828), !dbg !1767
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1823
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1824

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1824, !tbaa !917
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1417, metadata !828), !dbg !1790
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1826
  %358 = icmp eq i32 %357, 0, !dbg !1826
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1399, metadata !828), !dbg !1773
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1827
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1399, metadata !828), !dbg !1773
  %360 = add i64 %320, %315, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1396, metadata !828), !dbg !1767
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1399, metadata !828), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1396, metadata !828), !dbg !1767
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1823
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1400, metadata !1065), !dbg !1789
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1829
  %362 = icmp eq i32 %361, 0, !dbg !1830
  br i1 %362, label %314, label %363, !dbg !1831, !llvm.loop !1780

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1833

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1833
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1399, metadata !828), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1396, metadata !828), !dbg !1767
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1823
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1833
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1399, metadata !828), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1396, metadata !828), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1371, metadata !828), !dbg !1434
  %372 = and i8 %371, 1, !dbg !1834
  %373 = icmp ne i8 %372, 0, !dbg !1834
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1395, metadata !828), !dbg !1529
  %374 = icmp ult i64 %370, 2, !dbg !1835
  %375 = or i1 %373, %113, !dbg !1836
  %376 = and i1 %374, %375, !dbg !1838
  br i1 %376, label %476, label %377, !dbg !1838

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1428, metadata !828), !dbg !1840
  br label %379, !dbg !1841

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1394, metadata !828), !dbg !1528
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1393, metadata !828), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1388, metadata !828), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1377, metadata !828), !dbg !1515
  br i1 %375, label %432, label %386, !dbg !1842

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1847

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1394, metadata !828), !dbg !1528
  %388 = and i8 %382, 1, !dbg !1851
  %389 = icmp eq i8 %388, 0, !dbg !1851
  %390 = and i1 %114, %389, !dbg !1854
  br i1 %390, label %391, label %407, !dbg !1854

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1856
  br i1 %392, label %393, label %395, !dbg !1861

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1863
  store i8 39, i8* %394, align 1, !dbg !1863, !tbaa !1116
  br label %395, !dbg !1863

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1378, metadata !828), !dbg !1440
  %397 = icmp ult i64 %396, %131, !dbg !1867
  br i1 %397, label %398, label %400, !dbg !1871

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1873
  store i8 36, i8* %399, align 1, !dbg !1873, !tbaa !1116
  br label %400, !dbg !1873

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1378, metadata !828), !dbg !1440
  %402 = icmp ult i64 %401, %131, !dbg !1877
  br i1 %402, label %403, label %405, !dbg !1881

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1883
  store i8 39, i8* %404, align 1, !dbg !1883, !tbaa !1116
  br label %405, !dbg !1883

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1385, metadata !828), !dbg !1448
  br label %407, !dbg !1887

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1378, metadata !828), !dbg !1440
  %410 = icmp ult i64 %408, %131, !dbg !1889
  br i1 %410, label %411, label %413, !dbg !1893

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1895
  store i8 92, i8* %412, align 1, !dbg !1895, !tbaa !1116
  br label %413, !dbg !1895

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1378, metadata !828), !dbg !1440
  %415 = icmp ult i64 %414, %131, !dbg !1899
  br i1 %415, label %416, label %420, !dbg !1903

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1905
  %418 = or i8 %417, 48, !dbg !1905
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1905
  store i8 %418, i8* %419, align 1, !dbg !1905, !tbaa !1116
  br label %420, !dbg !1905

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1378, metadata !828), !dbg !1440
  %422 = icmp ult i64 %421, %131, !dbg !1909
  br i1 %422, label %423, label %428, !dbg !1913

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1915
  %425 = and i8 %424, 7, !dbg !1915
  %426 = or i8 %425, 48, !dbg !1915
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1915
  store i8 %426, i8* %427, align 1, !dbg !1915, !tbaa !1116
  br label %428, !dbg !1915

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1378, metadata !828), !dbg !1440
  %430 = and i8 %383, 7, !dbg !1919
  %431 = or i8 %430, 48, !dbg !1920
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1388, metadata !828), !dbg !1546
  br label %441, !dbg !1921

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1922
  %434 = icmp eq i8 %433, 0, !dbg !1922
  br i1 %434, label %441, label %435, !dbg !1924

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1925
  br i1 %436, label %437, label %439, !dbg !1930

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1932
  store i8 92, i8* %438, align 1, !dbg !1932, !tbaa !1116
  br label %439, !dbg !1932

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1393, metadata !828), !dbg !1527
  br label %441, !dbg !1936

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1394, metadata !828), !dbg !1528
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1393, metadata !828), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1388, metadata !828), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1378, metadata !828), !dbg !1440
  %447 = add i64 %380, 1, !dbg !1937
  %448 = icmp ugt i64 %378, %447, !dbg !1939
  br i1 %448, label %449, label %541, !dbg !1940

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1941
  %451 = icmp ne i8 %450, 0, !dbg !1941
  %452 = and i8 %446, 1, !dbg !1945
  %453 = icmp eq i8 %452, 0, !dbg !1945
  %454 = and i1 %451, %453, !dbg !1941
  br i1 %454, label %455, label %466, !dbg !1941

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1947
  br i1 %456, label %457, label %459, !dbg !1952

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1954
  store i8 39, i8* %458, align 1, !dbg !1954, !tbaa !1116
  br label %459, !dbg !1954

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1956
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1378, metadata !828), !dbg !1440
  %461 = icmp ult i64 %460, %131, !dbg !1958
  br i1 %461, label %462, label %464, !dbg !1962

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1964
  store i8 39, i8* %463, align 1, !dbg !1964, !tbaa !1116
  br label %464, !dbg !1964

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1385, metadata !828), !dbg !1448
  br label %466, !dbg !1968

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1378, metadata !828), !dbg !1440
  %469 = icmp ult i64 %467, %131, !dbg !1970
  br i1 %469, label %470, label %472, !dbg !1974

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1976
  store i8 %444, i8* %471, align 1, !dbg !1976, !tbaa !1116
  br label %472, !dbg !1976

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1377, metadata !828), !dbg !1515
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1980
  %475 = load i8, i8* %474, align 1, !dbg !1980, !tbaa !1116
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1388, metadata !828), !dbg !1546
  br label %379, !dbg !1981, !llvm.loop !1983

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1369, metadata !828), !dbg !1432
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1395, metadata !828), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1394, metadata !828), !dbg !1528
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1393, metadata !828), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1388, metadata !828), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1386, metadata !828), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1371, metadata !828), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1379, metadata !828), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1377, metadata !828), !dbg !1515
  br i1 %107, label %488, label %487, !dbg !1986

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1988

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1989

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1990
  %491 = zext i8 %490 to i64, !dbg !1990
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1992
  %493 = load i32, i32* %492, align 4, !dbg !1992, !tbaa !917
  %494 = and i8 %483, 31, !dbg !1993
  %495 = zext i8 %494 to i32, !dbg !1994
  %496 = shl i32 1, %495, !dbg !1995
  %497 = and i32 %493, %496, !dbg !1995
  %498 = icmp eq i32 %497, 0, !dbg !1995
  %499 = icmp eq i8 %157, 0, !dbg !1996
  %500 = and i1 %499, %498, !dbg !1997
  br i1 %500, label %542, label %503, !dbg !1997

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1996
  br i1 %502, label %542, label %503, !dbg !1998

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1369, metadata !828), !dbg !1432
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1395, metadata !828), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1388, metadata !828), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1386, metadata !828), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1371, metadata !828), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1379, metadata !828), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1377, metadata !828), !dbg !1515
  br i1 %112, label %513, label %644, !dbg !2000

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1394, metadata !828), !dbg !1528
  %514 = and i8 %508, 1, !dbg !2003
  %515 = icmp eq i8 %514, 0, !dbg !2003
  %516 = and i1 %114, %515, !dbg !2006
  br i1 %516, label %517, label %533, !dbg !2006

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2008
  br i1 %518, label %519, label %521, !dbg !2013

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2015
  store i8 39, i8* %520, align 1, !dbg !2015, !tbaa !1116
  br label %521, !dbg !2015

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1378, metadata !828), !dbg !1440
  %523 = icmp ult i64 %522, %512, !dbg !2019
  br i1 %523, label %524, label %526, !dbg !2023

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2025
  store i8 36, i8* %525, align 1, !dbg !2025, !tbaa !1116
  br label %526, !dbg !2025

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1378, metadata !828), !dbg !1440
  %528 = icmp ult i64 %527, %512, !dbg !2029
  br i1 %528, label %529, label %531, !dbg !2033

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2035
  store i8 39, i8* %530, align 1, !dbg !2035, !tbaa !1116
  br label %531, !dbg !2035

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2037
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1385, metadata !828), !dbg !1448
  br label %533, !dbg !2039

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1378, metadata !828), !dbg !1440
  %536 = icmp ult i64 %534, %512, !dbg !2041
  br i1 %536, label %537, label %539, !dbg !2045

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2047
  store i8 92, i8* %538, align 1, !dbg !2047, !tbaa !1116
  br label %539, !dbg !2047

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1369, metadata !828), !dbg !1432
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1395, metadata !828), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1394, metadata !828), !dbg !1528
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1388, metadata !828), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1386, metadata !828), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1371, metadata !828), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1379, metadata !828), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1377, metadata !828), !dbg !1515
  br label %569, !dbg !2051

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1432

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1369, metadata !828), !dbg !1432
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1395, metadata !828), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1394, metadata !828), !dbg !1528
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1388, metadata !828), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1386, metadata !828), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1371, metadata !828), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1379, metadata !828), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1377, metadata !828), !dbg !1515
  %553 = and i8 %547, 1, !dbg !2051
  %554 = icmp ne i8 %553, 0, !dbg !2051
  %555 = and i8 %550, 1, !dbg !2055
  %556 = icmp eq i8 %555, 0, !dbg !2055
  %557 = and i1 %554, %556, !dbg !2051
  br i1 %557, label %558, label %569, !dbg !2051

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2057
  br i1 %559, label %560, label %562, !dbg !2062

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2064
  store i8 39, i8* %561, align 1, !dbg !2064, !tbaa !1116
  br label %562, !dbg !2064

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1378, metadata !828), !dbg !1440
  %564 = icmp ult i64 %563, %552, !dbg !2068
  br i1 %564, label %565, label %567, !dbg !2072

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2074
  store i8 39, i8* %566, align 1, !dbg !2074, !tbaa !1116
  br label %567, !dbg !2074

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1378, metadata !828), !dbg !1440
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1385, metadata !828), !dbg !1448
  br label %569, !dbg !2078

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1385, metadata !828), !dbg !1448
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1378, metadata !828), !dbg !1440
  %579 = icmp ult i64 %577, %570, !dbg !2080
  br i1 %579, label %580, label %582, !dbg !2084

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2086
  store i8 %572, i8* %581, align 1, !dbg !2086, !tbaa !1116
  br label %582, !dbg !2086

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1378, metadata !828), !dbg !1440
  %584 = and i8 %571, 1, !dbg !2090
  %585 = icmp eq i8 %584, 0, !dbg !2090
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1387, metadata !828), !dbg !1450
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2092
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1387, metadata !828), !dbg !1450
  br label %587, !dbg !2093

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1377, metadata !828), !dbg !1515
  br label %123, !dbg !2096, !llvm.loop !2097

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2100
  %600 = and i1 %114, %599, !dbg !2102
  %601 = xor i1 %600, true, !dbg !2102
  %602 = or i1 %112, %601, !dbg !2102
  br i1 %602, label %603, label %648, !dbg !2102

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2103
  %605 = xor i1 %604, true, !dbg !2103
  %606 = and i8 %129, 1, !dbg !2105
  %607 = icmp eq i8 %606, 0, !dbg !2105
  %608 = or i1 %607, %605, !dbg !2103
  br i1 %608, label %618, label %609, !dbg !2103

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2107
  %611 = icmp eq i8 %610, 0, !dbg !2107
  br i1 %611, label %614, label %612, !dbg !2110

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2111
  br label %659, !dbg !2112

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2113
  %616 = icmp ne i64 %126, 0, !dbg !2115
  %617 = and i1 %616, %615, !dbg !2117
  br i1 %617, label %27, label %618, !dbg !2117

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2118
  %620 = and i1 %619, %112, !dbg !2120
  br i1 %620, label %621, label %638, !dbg !2120

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1380, metadata !828), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1378, metadata !828), !dbg !1440
  %622 = load i8, i8* %100, align 1, !dbg !2121, !tbaa !1116
  %623 = icmp eq i8 %622, 0, !dbg !2125
  br i1 %623, label %638, label %624, !dbg !2125

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2127

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2127
  br i1 %629, label %630, label %632, !dbg !2131

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2133
  store i8 %626, i8* %631, align 1, !dbg !2133, !tbaa !1116
  br label %632, !dbg !2133

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1378, metadata !828), !dbg !1440
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2137
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1380, metadata !828), !dbg !1442
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1380, metadata !828), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1378, metadata !828), !dbg !1440
  %635 = load i8, i8* %634, align 1, !dbg !2121, !tbaa !1116
  %636 = icmp eq i8 %635, 0, !dbg !2125
  br i1 %636, label %637, label %625, !dbg !2125, !llvm.loop !2139

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1440

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1378, metadata !828), !dbg !1440
  %640 = icmp ult i64 %639, %131, !dbg !2142
  br i1 %640, label %641, label %659, !dbg !2144

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2145
  store i8 0, i8* %642, align 1, !dbg !2146, !tbaa !1116
  br label %659, !dbg !2145

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1432

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1432

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1432

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1369, metadata !828), !dbg !1432
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1371, metadata !828), !dbg !1434
  %653 = icmp ne i32 %650, 2, !dbg !2147
  %654 = icmp eq i8 %104, 0, !dbg !2149
  %655 = or i1 %653, %654, !dbg !2151
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1372, metadata !828), !dbg !1435
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1372, metadata !828), !dbg !1435
  %657 = and i32 %5, -3, !dbg !2152
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2153
  br label %659, !dbg !2154

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2155
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2156 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2160, metadata !828), !dbg !2164
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2161, metadata !828), !dbg !2165
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2166
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2162, metadata !828), !dbg !2167
  %4 = icmp eq i8* %3, %0, !dbg !2168
  br i1 %4, label %5, label %75, !dbg !2170

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2171
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2163, metadata !828), !dbg !2172
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2173, metadata !828), !dbg !2189
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2187, metadata !828), !dbg !2192
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2188, metadata !828), !dbg !2193
  %7 = load i8, i8* %6, align 1, !tbaa !1116
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2194
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2194

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2197, metadata !828), !dbg !2211
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2209, metadata !828), !dbg !2215
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2210, metadata !828), !dbg !2216
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1116
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2217
  %15 = icmp eq i32 %14, 84, !dbg !2217
  br i1 %15, label %16, label %72, !dbg !2217

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2220, metadata !828), !dbg !2233
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2231, metadata !828), !dbg !2237
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2232, metadata !828), !dbg !2238
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1116
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2239
  %21 = icmp eq i32 %20, 70, !dbg !2239
  br i1 %21, label %22, label %72, !dbg !2239

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2242, metadata !828), !dbg !2254
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2252, metadata !828), !dbg !2258
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2253, metadata !828), !dbg !2259
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1116
  %25 = icmp eq i8 %24, 45, !dbg !2260
  br i1 %25, label %26, label %72, !dbg !2263

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2265, metadata !828), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2274, metadata !828), !dbg !2280
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2275, metadata !828), !dbg !2281
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1116
  %29 = icmp eq i8 %28, 56, !dbg !2282
  br i1 %29, label %30, label %72, !dbg !2285

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2287, metadata !828), !dbg !2297
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2295, metadata !828), !dbg !2301
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2296, metadata !828), !dbg !2302
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1116
  %33 = icmp eq i8 %32, 0, !dbg !2303
  br i1 %33, label %34, label %72, !dbg !2306

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2308, !tbaa !1116
  %36 = icmp eq i8 %35, 96, !dbg !2309
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.56, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.57, i64 0, i64 0), !dbg !2308
  br label %75, !dbg !2310

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2197, metadata !828), !dbg !2311
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2209, metadata !828), !dbg !2315
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2210, metadata !828), !dbg !2316
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1116
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2317
  %43 = icmp eq i32 %42, 66, !dbg !2317
  br i1 %43, label %44, label %72, !dbg !2317

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2220, metadata !828), !dbg !2318
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2231, metadata !828), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2232, metadata !828), !dbg !2321
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1116
  %47 = icmp eq i8 %46, 49, !dbg !2322
  br i1 %47, label %48, label %72, !dbg !2324

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2242, metadata !828), !dbg !2326
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2252, metadata !828), !dbg !2328
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2253, metadata !828), !dbg !2329
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1116
  %51 = icmp eq i8 %50, 56, !dbg !2330
  br i1 %51, label %52, label %72, !dbg !2331

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2265, metadata !828), !dbg !2332
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2274, metadata !828), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2275, metadata !828), !dbg !2335
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1116
  %55 = icmp eq i8 %54, 48, !dbg !2336
  br i1 %55, label %56, label %72, !dbg !2337

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2287, metadata !828), !dbg !2338
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2295, metadata !828), !dbg !2340
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2296, metadata !828), !dbg !2341
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1116
  %59 = icmp eq i8 %58, 51, !dbg !2342
  br i1 %59, label %60, label %72, !dbg !2343

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2344, metadata !828), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2351, metadata !828), !dbg !2357
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2352, metadata !828), !dbg !2358
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1116
  %63 = icmp eq i8 %62, 48, !dbg !2359
  br i1 %63, label %64, label %72, !dbg !2362

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2364, metadata !828), !dbg !2372
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2370, metadata !828), !dbg !2376
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2371, metadata !828), !dbg !2377
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1116
  %67 = icmp eq i8 %66, 0, !dbg !2378
  br i1 %67, label %68, label %72, !dbg !2381

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2382, !tbaa !1116
  %70 = icmp eq i8 %69, 96, !dbg !2383
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.58, i64 0, i64 0), !dbg !2382
  br label %75, !dbg !2384

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2385
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.55, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.54, i64 0, i64 0), !dbg !2386
  br label %75, !dbg !2387

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2388
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2389 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2393, metadata !828), !dbg !2396
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2394, metadata !828), !dbg !2397
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2395, metadata !828), !dbg !2398
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2399, metadata !828) #10, !dbg !2412
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2404, metadata !828) #10, !dbg !2414
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2405, metadata !828) #10, !dbg !2415
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2406, metadata !828) #10, !dbg !2416
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2417
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2417
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2407, metadata !828) #10, !dbg !2418
  %6 = tail call i32* @__errno_location() #1, !dbg !2419
  %7 = load i32, i32* %6, align 4, !dbg !2419, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2408, metadata !828) #10, !dbg !2420
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2421
  %9 = load i32, i32* %8, align 4, !dbg !2421, !tbaa !1300
  %10 = or i32 %9, 1, !dbg !2422
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2409, metadata !828) #10, !dbg !2423
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2424
  %12 = load i32, i32* %11, align 8, !dbg !2424, !tbaa !1238
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2425
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2426
  %15 = load i8*, i8** %14, align 8, !dbg !2426, !tbaa !1327
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2427
  %17 = load i8*, i8** %16, align 8, !dbg !2427, !tbaa !1330
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2428
  %19 = add i64 %18, 1, !dbg !2429
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2410, metadata !828) #10, !dbg !2430
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2431, metadata !828) #10, !dbg !2436
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2438
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2411, metadata !828) #10, !dbg !2439
  %21 = load i32, i32* %11, align 8, !dbg !2440, !tbaa !1238
  %22 = load i8*, i8** %14, align 8, !dbg !2441, !tbaa !1327
  %23 = load i8*, i8** %16, align 8, !dbg !2442, !tbaa !1330
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2443
  store i32 %7, i32* %6, align 4, !dbg !2444, !tbaa !917
  ret i8* %20, !dbg !2445
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2400 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2399, metadata !828), !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2404, metadata !828), !dbg !2447
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2405, metadata !828), !dbg !2448
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2406, metadata !828), !dbg !2449
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2450
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2450
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2407, metadata !828), !dbg !2451
  %7 = tail call i32* @__errno_location() #1, !dbg !2452
  %8 = load i32, i32* %7, align 4, !dbg !2452, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2408, metadata !828), !dbg !2453
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2454
  %10 = load i32, i32* %9, align 4, !dbg !2454, !tbaa !1300
  %11 = icmp ne i64* %2, null, !dbg !2455
  %12 = xor i1 %11, true, !dbg !2455
  %13 = zext i1 %12 to i32, !dbg !2455
  %14 = or i32 %10, %13, !dbg !2456
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2409, metadata !828), !dbg !2457
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2458
  %16 = load i32, i32* %15, align 8, !dbg !2458, !tbaa !1238
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2459
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2460
  %19 = load i8*, i8** %18, align 8, !dbg !2460, !tbaa !1327
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2461
  %21 = load i8*, i8** %20, align 8, !dbg !2461, !tbaa !1330
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2462
  %23 = add i64 %22, 1, !dbg !2463
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2410, metadata !828), !dbg !2464
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2431, metadata !828) #10, !dbg !2465
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2467
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2411, metadata !828), !dbg !2468
  %25 = load i32, i32* %15, align 8, !dbg !2469, !tbaa !1238
  %26 = load i8*, i8** %18, align 8, !dbg !2470, !tbaa !1327
  %27 = load i8*, i8** %20, align 8, !dbg !2471, !tbaa !1330
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2472
  store i32 %8, i32* %7, align 4, !dbg !2473, !tbaa !917
  br i1 %11, label %29, label %30, !dbg !2474

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2475, !tbaa !2477
  br label %30, !dbg !2479

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2480
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2481 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2485, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2483, metadata !828), !dbg !2486
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2484, metadata !828), !dbg !2487
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2484, metadata !828), !dbg !2487
  %2 = load i32, i32* @nslots, align 4, !dbg !2488, !tbaa !917
  %3 = icmp sgt i32 %2, 1, !dbg !2492
  br i1 %3, label %4, label %14, !dbg !2493

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2495

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2495
  %8 = load i8*, i8** %7, align 8, !dbg !2495, !tbaa !2496
  tail call void @free(i8* %8) #10, !dbg !2498
  %9 = add nuw i64 %6, 1, !dbg !2499
  %10 = load i32, i32* @nslots, align 4, !dbg !2488, !tbaa !917
  %11 = sext i32 %10 to i64, !dbg !2492
  %12 = icmp slt i64 %9, %11, !dbg !2492
  br i1 %12, label %5, label %13, !dbg !2493, !llvm.loop !2501

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2504

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2504
  %16 = load i8*, i8** %15, align 8, !dbg !2504, !tbaa !2496
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2506
  br i1 %17, label %19, label %18, !dbg !2507

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2508
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2510, !tbaa !2511
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2512, !tbaa !2496
  br label %19, !dbg !2513

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2514
  br i1 %20, label %23, label %21, !dbg !2516

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2517
  tail call void @free(i8* %22) #10, !dbg !2519
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2520, !tbaa !836
  br label %23, !dbg !2521

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2522, !tbaa !917
  ret void, !dbg !2523
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2524 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2528, metadata !828), !dbg !2530
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2529, metadata !828), !dbg !2531
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2532
  ret i8* %3, !dbg !2533
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2534 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2538, metadata !828), !dbg !2552
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2539, metadata !828), !dbg !2553
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2540, metadata !828), !dbg !2554
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2541, metadata !828), !dbg !2555
  %5 = tail call i32* @__errno_location() #1, !dbg !2556
  %6 = load i32, i32* %5, align 4, !dbg !2556, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2542, metadata !828), !dbg !2557
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2558, !tbaa !836
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2543, metadata !828), !dbg !2559
  %8 = icmp slt i32 %0, 0, !dbg !2560
  br i1 %8, label %9, label %10, !dbg !2562

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2563
  unreachable, !dbg !2563

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2564, !tbaa !917
  %12 = icmp sgt i32 %11, %0, !dbg !2565
  br i1 %12, label %34, label %13, !dbg !2566

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2567
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2568
  br i1 %15, label %16, label %17, !dbg !2570

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2571
  unreachable, !dbg !2571

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2572
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2572
  %20 = add nsw i32 %0, 1, !dbg !2574
  %21 = sext i32 %20 to i64, !dbg !2575
  %22 = shl nsw i64 %21, 4, !dbg !2576
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2577
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2577
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2543, metadata !828), !dbg !2559
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2578, !tbaa !836
  br i1 %14, label %25, label %26, !dbg !2579

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2580, !tbaa.struct !2582
  br label %26, !dbg !2583

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2584, !tbaa !917
  %28 = sext i32 %27 to i64, !dbg !2585
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2585
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2586
  %31 = sub nsw i32 %20, %27, !dbg !2587
  %32 = sext i32 %31 to i64, !dbg !2588
  %33 = shl nsw i64 %32, 4, !dbg !2589
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2586
  store i32 %20, i32* @nslots, align 4, !dbg !2590, !tbaa !917
  br label %34, !dbg !2591

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2543, metadata !828), !dbg !2559
  %36 = sext i32 %0 to i64, !dbg !2592
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2593
  %38 = load i64, i64* %37, align 8, !dbg !2593, !tbaa !2511
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2547, metadata !828), !dbg !2594
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2595
  %40 = load i8*, i8** %39, align 8, !dbg !2595, !tbaa !2496
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2549, metadata !828), !dbg !2596
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2597
  %42 = load i32, i32* %41, align 4, !dbg !2597, !tbaa !1300
  %43 = or i32 %42, 1, !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2550, metadata !828), !dbg !2599
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2600
  %45 = load i32, i32* %44, align 8, !dbg !2600, !tbaa !1238
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2601
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2602
  %48 = load i8*, i8** %47, align 8, !dbg !2602, !tbaa !1327
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2603
  %50 = load i8*, i8** %49, align 8, !dbg !2603, !tbaa !1330
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2604
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2551, metadata !828), !dbg !2605
  %52 = icmp ugt i64 %38, %51, !dbg !2606
  br i1 %52, label %63, label %53, !dbg !2608

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2547, metadata !828), !dbg !2594
  store i64 %54, i64* %37, align 8, !dbg !2611, !tbaa !2511
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2612
  br i1 %55, label %57, label %56, !dbg !2614

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2615
  br label %57, !dbg !2615

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2431, metadata !828) #10, !dbg !2616
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2618
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2549, metadata !828), !dbg !2596
  store i8* %58, i8** %39, align 8, !dbg !2619, !tbaa !2496
  %59 = load i32, i32* %44, align 8, !dbg !2620, !tbaa !1238
  %60 = load i8*, i8** %47, align 8, !dbg !2621, !tbaa !1327
  %61 = load i8*, i8** %49, align 8, !dbg !2622, !tbaa !1330
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2623
  br label %63, !dbg !2624

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2549, metadata !828), !dbg !2596
  store i32 %6, i32* %5, align 4, !dbg !2625, !tbaa !917
  ret i8* %64, !dbg !2626
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2627 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2631, metadata !828), !dbg !2634
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2632, metadata !828), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2633, metadata !828), !dbg !2636
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2637
  ret i8* %4, !dbg !2638
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2639 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2643, metadata !828), !dbg !2644
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2528, metadata !828) #10, !dbg !2645
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2529, metadata !828) #10, !dbg !2647
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2648
  ret i8* %2, !dbg !2649
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2650 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2654, metadata !828), !dbg !2656
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2655, metadata !828), !dbg !2657
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2631, metadata !828) #10, !dbg !2658
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2632, metadata !828) #10, !dbg !2660
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2633, metadata !828) #10, !dbg !2661
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2662
  ret i8* %3, !dbg !2663
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2664 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2672, metadata !2678), !dbg !2679
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2668, metadata !828), !dbg !2681
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2669, metadata !828), !dbg !2682
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2670, metadata !828), !dbg !2683
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2684
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2671, metadata !1065), !dbg !2685
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2677, metadata !828) #10, !dbg !2686
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2687
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2687
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2672, metadata !828) #10, !dbg !2679
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2672, metadata !2688) #10, !dbg !2679
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2679
  %8 = icmp eq i32 %1, 10, !dbg !2689
  br i1 %8, label %9, label %10, !dbg !2691

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2692, !noalias !2693
  unreachable, !dbg !2692

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2672, metadata !2688) #10, !dbg !2679
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2696
  store i32 %1, i32* %11, align 8, !dbg !2696, !alias.scope !2693
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2696
  %13 = bitcast i32* %12 to i8*, !dbg !2696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2696
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2671, metadata !1065), !dbg !2685
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2698
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2699
  ret i8* %14, !dbg !2700
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2701 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2672, metadata !2678), !dbg !2710
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2705, metadata !828), !dbg !2712
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2706, metadata !828), !dbg !2713
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2707, metadata !828), !dbg !2714
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2708, metadata !828), !dbg !2715
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2716
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2709, metadata !1065), !dbg !2717
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2677, metadata !828) #10, !dbg !2718
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2719
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2719
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2672, metadata !828) #10, !dbg !2710
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2672, metadata !2688) #10, !dbg !2710
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2710
  %9 = icmp eq i32 %1, 10, !dbg !2720
  br i1 %9, label %10, label %11, !dbg !2721

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2722, !noalias !2723
  unreachable, !dbg !2722

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2672, metadata !2688) #10, !dbg !2710
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2726
  store i32 %1, i32* %12, align 8, !dbg !2726, !alias.scope !2723
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2726
  %14 = bitcast i32* %13 to i8*, !dbg !2726
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2726
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2727
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2709, metadata !1065), !dbg !2717
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2728
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2729
  ret i8* %15, !dbg !2730
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2731 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2672, metadata !2678), !dbg !2737
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2735, metadata !828), !dbg !2740
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2736, metadata !828), !dbg !2741
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2668, metadata !828) #10, !dbg !2742
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2669, metadata !828) #10, !dbg !2743
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2670, metadata !828) #10, !dbg !2744
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2745
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2745
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2671, metadata !1065) #10, !dbg !2746
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2677, metadata !828) #10, !dbg !2747
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2748
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2748
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2672, metadata !828) #10, !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2672, metadata !2688) #10, !dbg !2737
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2737
  %7 = icmp eq i32 %0, 10, !dbg !2749
  br i1 %7, label %8, label %9, !dbg !2750

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2751, !noalias !2752
  unreachable, !dbg !2751

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2672, metadata !2688) #10, !dbg !2737
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2755
  store i32 %0, i32* %10, align 8, !dbg !2755, !alias.scope !2752
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2755
  %12 = bitcast i32* %11 to i8*, !dbg !2755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2755
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2756
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2671, metadata !1065) #10, !dbg !2746
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2757
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2758
  ret i8* %13, !dbg !2759
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2760 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2672, metadata !2678), !dbg !2767
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2764, metadata !828), !dbg !2770
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2765, metadata !828), !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2766, metadata !828), !dbg !2772
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2705, metadata !828) #10, !dbg !2773
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2706, metadata !828) #10, !dbg !2774
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2707, metadata !828) #10, !dbg !2775
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2708, metadata !828) #10, !dbg !2776
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2777
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2777
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2709, metadata !1065) #10, !dbg !2778
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2677, metadata !828) #10, !dbg !2779
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2780
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2780
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2672, metadata !828) #10, !dbg !2767
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2672, metadata !2688) #10, !dbg !2767
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2767
  %8 = icmp eq i32 %0, 10, !dbg !2781
  br i1 %8, label %9, label %10, !dbg !2782

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2783, !noalias !2784
  unreachable, !dbg !2783

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2672, metadata !2688) #10, !dbg !2767
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2787
  store i32 %0, i32* %11, align 8, !dbg !2787, !alias.scope !2784
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2787
  %13 = bitcast i32* %12 to i8*, !dbg !2787
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2787
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2788
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2709, metadata !1065) #10, !dbg !2778
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2789
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2790
  ret i8* %14, !dbg !2791
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2792 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2796, metadata !828), !dbg !2800
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2797, metadata !828), !dbg !2801
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2798, metadata !828), !dbg !2802
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2803
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2803
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2804, !tbaa.struct !2805
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2799, metadata !1065), !dbg !2806
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1258, metadata !828), !dbg !2807
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1259, metadata !828), !dbg !2809
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1260, metadata !828), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1261, metadata !828), !dbg !2811
  %6 = lshr i8 %2, 5, !dbg !2812
  %7 = zext i8 %6 to i64, !dbg !2812
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2813
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1262, metadata !828), !dbg !2814
  %9 = and i8 %2, 31, !dbg !2815
  %10 = zext i8 %9 to i32, !dbg !2816
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1264, metadata !828), !dbg !2817
  %11 = load i32, i32* %8, align 4, !dbg !2818, !tbaa !917
  %12 = lshr i32 %11, %10, !dbg !2819
  %13 = and i32 %12, 1, !dbg !2820
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1265, metadata !828), !dbg !2821
  %14 = xor i32 %13, 1, !dbg !2822
  %15 = shl i32 %14, %10, !dbg !2823
  %16 = xor i32 %15, %11, !dbg !2824
  store i32 %16, i32* %8, align 4, !dbg !2824, !tbaa !917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2799, metadata !1065), !dbg !2806
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2825
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2826
  ret i8* %17, !dbg !2827
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2828 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2832, metadata !828), !dbg !2834
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2833, metadata !828), !dbg !2835
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2796, metadata !828) #10, !dbg !2836
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2797, metadata !828) #10, !dbg !2838
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2798, metadata !828) #10, !dbg !2839
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2840
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2841, !tbaa.struct !2805
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2799, metadata !1065) #10, !dbg !2842
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1258, metadata !828) #10, !dbg !2843
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1259, metadata !828) #10, !dbg !2845
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1260, metadata !828) #10, !dbg !2846
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1261, metadata !828) #10, !dbg !2847
  %5 = lshr i8 %1, 5, !dbg !2848
  %6 = zext i8 %5 to i64, !dbg !2848
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2849
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1262, metadata !828) #10, !dbg !2850
  %8 = and i8 %1, 31, !dbg !2851
  %9 = zext i8 %8 to i32, !dbg !2852
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1264, metadata !828) #10, !dbg !2853
  %10 = load i32, i32* %7, align 4, !dbg !2854, !tbaa !917
  %11 = lshr i32 %10, %9, !dbg !2855
  %12 = and i32 %11, 1, !dbg !2856
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1265, metadata !828) #10, !dbg !2857
  %13 = xor i32 %12, 1, !dbg !2858
  %14 = shl i32 %13, %9, !dbg !2859
  %15 = xor i32 %14, %10, !dbg !2860
  store i32 %15, i32* %7, align 4, !dbg !2860, !tbaa !917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2799, metadata !1065) #10, !dbg !2842
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2861
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2862
  ret i8* %16, !dbg !2863
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2864 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2866, metadata !828), !dbg !2867
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2832, metadata !828) #10, !dbg !2868
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2833, metadata !828) #10, !dbg !2870
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2796, metadata !828) #10, !dbg !2871
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2797, metadata !828) #10, !dbg !2873
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2798, metadata !828) #10, !dbg !2874
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2875
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2875
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2876, !tbaa.struct !2805
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2799, metadata !1065) #10, !dbg !2877
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1258, metadata !828) #10, !dbg !2878
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1259, metadata !828) #10, !dbg !2880
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1260, metadata !828) #10, !dbg !2881
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1261, metadata !828) #10, !dbg !2882
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2883
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1262, metadata !828) #10, !dbg !2884
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1264, metadata !828) #10, !dbg !2885
  %5 = load i32, i32* %4, align 4, !dbg !2886, !tbaa !917
  %6 = or i32 %5, 67108864, !dbg !2887
  store i32 %6, i32* %4, align 4, !dbg !2887, !tbaa !917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2799, metadata !1065) #10, !dbg !2877
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2888
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2889
  ret i8* %7, !dbg !2890
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2891 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2893, metadata !828), !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2894, metadata !828), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2796, metadata !828) #10, !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2797, metadata !828) #10, !dbg !2899
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2798, metadata !828) #10, !dbg !2900
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2901
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2901
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2902, !tbaa.struct !2805
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2799, metadata !1065) #10, !dbg !2903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1258, metadata !828) #10, !dbg !2904
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1259, metadata !828) #10, !dbg !2906
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1260, metadata !828) #10, !dbg !2907
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1261, metadata !828) #10, !dbg !2908
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2909
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1262, metadata !828) #10, !dbg !2910
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1264, metadata !828) #10, !dbg !2911
  %6 = load i32, i32* %5, align 4, !dbg !2912, !tbaa !917
  %7 = or i32 %6, 67108864, !dbg !2913
  store i32 %7, i32* %5, align 4, !dbg !2913, !tbaa !917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2799, metadata !1065) #10, !dbg !2903
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2914
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2915
  ret i8* %8, !dbg !2916
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2917 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2672, metadata !2678), !dbg !2923
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2919, metadata !828), !dbg !2925
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2920, metadata !828), !dbg !2926
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2921, metadata !828), !dbg !2927
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2928
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2928
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2677, metadata !828) #10, !dbg !2929
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2930
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2930
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2672, metadata !828) #10, !dbg !2923
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2672, metadata !2688) #10, !dbg !2923
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2923
  %9 = icmp eq i32 %1, 10, !dbg !2931
  br i1 %9, label %10, label %11, !dbg !2932

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2933, !noalias !2934
  unreachable, !dbg !2933

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2672, metadata !2688) #10, !dbg !2923
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2937
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2937
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2938
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2939
  store i32 %1, i32* %13, align 8, !dbg !2939
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2939
  %15 = bitcast i32* %14 to i8*, !dbg !2939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2939
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2922, metadata !1065), !dbg !2940
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1258, metadata !828), !dbg !2941
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1259, metadata !828), !dbg !2943
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1260, metadata !828), !dbg !2944
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1261, metadata !828), !dbg !2945
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2946
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1262, metadata !828), !dbg !2947
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1264, metadata !828), !dbg !2948
  %17 = load i32, i32* %16, align 4, !dbg !2949, !tbaa !917
  %18 = or i32 %17, 67108864, !dbg !2950
  store i32 %18, i32* %16, align 4, !dbg !2950, !tbaa !917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2922, metadata !1065), !dbg !2940
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2951
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2952
  ret i8* %19, !dbg !2953
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2954 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2958, metadata !828), !dbg !2962
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2959, metadata !828), !dbg !2963
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2960, metadata !828), !dbg !2964
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2961, metadata !828), !dbg !2965
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2966, metadata !828) #10, !dbg !2976
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2971, metadata !828) #10, !dbg !2978
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2972, metadata !828) #10, !dbg !2979
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2973, metadata !828) #10, !dbg !2980
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2974, metadata !828) #10, !dbg !2981
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2982
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2982
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2983, !tbaa.struct !2805
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2975, metadata !1065) #10, !dbg !2984
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1308, metadata !828) #10, !dbg !2985
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1309, metadata !828) #10, !dbg !2987
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1310, metadata !828) #10, !dbg !2988
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1308, metadata !828) #10, !dbg !2985
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1308, metadata !828) #10, !dbg !2985
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2989
  store i32 10, i32* %7, align 8, !dbg !2990, !tbaa !1238
  %8 = icmp ne i8* %1, null, !dbg !2991
  %9 = icmp ne i8* %2, null, !dbg !2992
  %10 = and i1 %8, %9, !dbg !2993
  br i1 %10, label %12, label %11, !dbg !2993

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2994
  unreachable, !dbg !2994

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2995
  store i8* %1, i8** %13, align 8, !dbg !2996, !tbaa !1327
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2997
  store i8* %2, i8** %14, align 8, !dbg !2998, !tbaa !1330
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2975, metadata !1065) #10, !dbg !2984
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2999
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3000
  ret i8* %15, !dbg !3001
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2967 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2966, metadata !828), !dbg !3002
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2971, metadata !828), !dbg !3003
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2972, metadata !828), !dbg !3004
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2973, metadata !828), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2974, metadata !828), !dbg !3006
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3007
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3007
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3008, !tbaa.struct !2805
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2975, metadata !1065), !dbg !3009
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1308, metadata !828) #10, !dbg !3010
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1309, metadata !828) #10, !dbg !3012
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1310, metadata !828) #10, !dbg !3013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1308, metadata !828) #10, !dbg !3010
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1308, metadata !828) #10, !dbg !3010
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3014
  store i32 10, i32* %8, align 8, !dbg !3015, !tbaa !1238
  %9 = icmp ne i8* %1, null, !dbg !3016
  %10 = icmp ne i8* %2, null, !dbg !3017
  %11 = and i1 %9, %10, !dbg !3018
  br i1 %11, label %13, label %12, !dbg !3018

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3019
  unreachable, !dbg !3019

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3020
  store i8* %1, i8** %14, align 8, !dbg !3021, !tbaa !1327
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3022
  store i8* %2, i8** %15, align 8, !dbg !3023, !tbaa !1330
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2975, metadata !1065), !dbg !3009
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3024
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3025
  ret i8* %16, !dbg !3026
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3027 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3031, metadata !828), !dbg !3034
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3032, metadata !828), !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3033, metadata !828), !dbg !3036
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2958, metadata !828) #10, !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2959, metadata !828) #10, !dbg !3039
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2960, metadata !828) #10, !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2961, metadata !828) #10, !dbg !3041
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2966, metadata !828) #10, !dbg !3042
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2971, metadata !828) #10, !dbg !3044
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2972, metadata !828) #10, !dbg !3045
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2973, metadata !828) #10, !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2974, metadata !828) #10, !dbg !3047
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3048
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3049, !tbaa.struct !2805
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2975, metadata !1065) #10, !dbg !3050
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1308, metadata !828) #10, !dbg !3051
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1309, metadata !828) #10, !dbg !3053
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1310, metadata !828) #10, !dbg !3054
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1308, metadata !828) #10, !dbg !3051
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1308, metadata !828) #10, !dbg !3051
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3055
  store i32 10, i32* %6, align 8, !dbg !3056, !tbaa !1238
  %7 = icmp ne i8* %0, null, !dbg !3057
  %8 = icmp ne i8* %1, null, !dbg !3058
  %9 = and i1 %7, %8, !dbg !3059
  br i1 %9, label %11, label %10, !dbg !3059

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3060
  unreachable, !dbg !3060

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3061
  store i8* %0, i8** %12, align 8, !dbg !3062, !tbaa !1327
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3063
  store i8* %1, i8** %13, align 8, !dbg !3064, !tbaa !1330
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2975, metadata !1065) #10, !dbg !3050
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3065
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3066
  ret i8* %14, !dbg !3067
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3068 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !828), !dbg !3076
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3073, metadata !828), !dbg !3077
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3074, metadata !828), !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3075, metadata !828), !dbg !3079
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2966, metadata !828) #10, !dbg !3080
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2971, metadata !828) #10, !dbg !3082
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2972, metadata !828) #10, !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2973, metadata !828) #10, !dbg !3084
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2974, metadata !828) #10, !dbg !3085
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3086
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3086
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3087, !tbaa.struct !2805
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2975, metadata !1065) #10, !dbg !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1308, metadata !828) #10, !dbg !3089
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1309, metadata !828) #10, !dbg !3091
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1310, metadata !828) #10, !dbg !3092
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1308, metadata !828) #10, !dbg !3089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1308, metadata !828) #10, !dbg !3089
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3093
  store i32 10, i32* %7, align 8, !dbg !3094, !tbaa !1238
  %8 = icmp ne i8* %0, null, !dbg !3095
  %9 = icmp ne i8* %1, null, !dbg !3096
  %10 = and i1 %8, %9, !dbg !3097
  br i1 %10, label %12, label %11, !dbg !3097

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3098
  unreachable, !dbg !3098

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3099
  store i8* %0, i8** %13, align 8, !dbg !3100, !tbaa !1327
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3101
  store i8* %1, i8** %14, align 8, !dbg !3102, !tbaa !1330
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2975, metadata !1065) #10, !dbg !3088
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3103
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3104
  ret i8* %15, !dbg !3105
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3106 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3110, metadata !828), !dbg !3113
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3111, metadata !828), !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3112, metadata !828), !dbg !3115
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3116
  ret i8* %4, !dbg !3117
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3118 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3122, metadata !828), !dbg !3124
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3123, metadata !828), !dbg !3125
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3110, metadata !828) #10, !dbg !3126
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3111, metadata !828) #10, !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3112, metadata !828) #10, !dbg !3129
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3130
  ret i8* %3, !dbg !3131
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3132 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3136, metadata !828), !dbg !3138
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3137, metadata !828), !dbg !3139
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3110, metadata !828) #10, !dbg !3140
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3111, metadata !828) #10, !dbg !3142
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3112, metadata !828) #10, !dbg !3143
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3144
  ret i8* %3, !dbg !3145
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3146 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3150, metadata !828), !dbg !3151
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3136, metadata !828) #10, !dbg !3152
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3137, metadata !828) #10, !dbg !3154
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3110, metadata !828) #10, !dbg !3155
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3111, metadata !828) #10, !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3112, metadata !828) #10, !dbg !3158
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3159
  ret i8* %2, !dbg !3160
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3161 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3220, metadata !828), !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3221, metadata !828), !dbg !3227
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3222, metadata !828), !dbg !3228
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3223, metadata !828), !dbg !3229
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3224, metadata !828), !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3225, metadata !828), !dbg !3231
  %7 = icmp eq i8* %1, null, !dbg !3232
  br i1 %7, label %10, label %8, !dbg !3234

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3235
  br label %12, !dbg !3235

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.64, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3236
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i32 5) #10, !dbg !3237
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3238
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.66, i64 0, i64 0), i32 5) #10, !dbg !3240
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3241
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
  ], !dbg !3242

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3243
  unreachable, !dbg !3243

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.67, i64 0, i64 0), i32 5) #10, !dbg !3245
  %20 = load i8*, i8** %4, align 8, !dbg !3245, !tbaa !836
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3246
  br label %146, !dbg !3248

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.68, i64 0, i64 0), i32 5) #10, !dbg !3249
  %24 = load i8*, i8** %4, align 8, !dbg !3249, !tbaa !836
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3249
  %26 = load i8*, i8** %25, align 8, !dbg !3249, !tbaa !836
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3250
  br label %146, !dbg !3251

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.69, i64 0, i64 0), i32 5) #10, !dbg !3252
  %30 = load i8*, i8** %4, align 8, !dbg !3252, !tbaa !836
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3252
  %32 = load i8*, i8** %31, align 8, !dbg !3252, !tbaa !836
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3252
  %34 = load i8*, i8** %33, align 8, !dbg !3252, !tbaa !836
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3253
  br label %146, !dbg !3254

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.70, i64 0, i64 0), i32 5) #10, !dbg !3255
  %38 = load i8*, i8** %4, align 8, !dbg !3255, !tbaa !836
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3255
  %40 = load i8*, i8** %39, align 8, !dbg !3255, !tbaa !836
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3255
  %42 = load i8*, i8** %41, align 8, !dbg !3255, !tbaa !836
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3255
  %44 = load i8*, i8** %43, align 8, !dbg !3255, !tbaa !836
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3256
  br label %146, !dbg !3257

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.71, i64 0, i64 0), i32 5) #10, !dbg !3258
  %48 = load i8*, i8** %4, align 8, !dbg !3258, !tbaa !836
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3258
  %50 = load i8*, i8** %49, align 8, !dbg !3258, !tbaa !836
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3258
  %52 = load i8*, i8** %51, align 8, !dbg !3258, !tbaa !836
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3258
  %54 = load i8*, i8** %53, align 8, !dbg !3258, !tbaa !836
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3258
  %56 = load i8*, i8** %55, align 8, !dbg !3258, !tbaa !836
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3259
  br label %146, !dbg !3260

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.72, i64 0, i64 0), i32 5) #10, !dbg !3261
  %60 = load i8*, i8** %4, align 8, !dbg !3261, !tbaa !836
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3261
  %62 = load i8*, i8** %61, align 8, !dbg !3261, !tbaa !836
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3261
  %64 = load i8*, i8** %63, align 8, !dbg !3261, !tbaa !836
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3261
  %66 = load i8*, i8** %65, align 8, !dbg !3261, !tbaa !836
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3261
  %68 = load i8*, i8** %67, align 8, !dbg !3261, !tbaa !836
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3261
  %70 = load i8*, i8** %69, align 8, !dbg !3261, !tbaa !836
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3262
  br label %146, !dbg !3263

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.73, i64 0, i64 0), i32 5) #10, !dbg !3264
  %74 = load i8*, i8** %4, align 8, !dbg !3264, !tbaa !836
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3264
  %76 = load i8*, i8** %75, align 8, !dbg !3264, !tbaa !836
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3264
  %78 = load i8*, i8** %77, align 8, !dbg !3264, !tbaa !836
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3264
  %80 = load i8*, i8** %79, align 8, !dbg !3264, !tbaa !836
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3264
  %82 = load i8*, i8** %81, align 8, !dbg !3264, !tbaa !836
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3264
  %84 = load i8*, i8** %83, align 8, !dbg !3264, !tbaa !836
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3264
  %86 = load i8*, i8** %85, align 8, !dbg !3264, !tbaa !836
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3265
  br label %146, !dbg !3266

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.74, i64 0, i64 0), i32 5) #10, !dbg !3267
  %90 = load i8*, i8** %4, align 8, !dbg !3267, !tbaa !836
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3267
  %92 = load i8*, i8** %91, align 8, !dbg !3267, !tbaa !836
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3267
  %94 = load i8*, i8** %93, align 8, !dbg !3267, !tbaa !836
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3267
  %96 = load i8*, i8** %95, align 8, !dbg !3267, !tbaa !836
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3267
  %98 = load i8*, i8** %97, align 8, !dbg !3267, !tbaa !836
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3267
  %100 = load i8*, i8** %99, align 8, !dbg !3267, !tbaa !836
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3267
  %102 = load i8*, i8** %101, align 8, !dbg !3267, !tbaa !836
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3267
  %104 = load i8*, i8** %103, align 8, !dbg !3267, !tbaa !836
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3268
  br label %146, !dbg !3269

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.75, i64 0, i64 0), i32 5) #10, !dbg !3270
  %108 = load i8*, i8** %4, align 8, !dbg !3270, !tbaa !836
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3270
  %110 = load i8*, i8** %109, align 8, !dbg !3270, !tbaa !836
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3270
  %112 = load i8*, i8** %111, align 8, !dbg !3270, !tbaa !836
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3270
  %114 = load i8*, i8** %113, align 8, !dbg !3270, !tbaa !836
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3270
  %116 = load i8*, i8** %115, align 8, !dbg !3270, !tbaa !836
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3270
  %118 = load i8*, i8** %117, align 8, !dbg !3270, !tbaa !836
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3270
  %120 = load i8*, i8** %119, align 8, !dbg !3270, !tbaa !836
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3270
  %122 = load i8*, i8** %121, align 8, !dbg !3270, !tbaa !836
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3270
  %124 = load i8*, i8** %123, align 8, !dbg !3270, !tbaa !836
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3271
  br label %146, !dbg !3272

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.76, i64 0, i64 0), i32 5) #10, !dbg !3273
  %128 = load i8*, i8** %4, align 8, !dbg !3273, !tbaa !836
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3273
  %130 = load i8*, i8** %129, align 8, !dbg !3273, !tbaa !836
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3273
  %132 = load i8*, i8** %131, align 8, !dbg !3273, !tbaa !836
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3273
  %134 = load i8*, i8** %133, align 8, !dbg !3273, !tbaa !836
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3273
  %136 = load i8*, i8** %135, align 8, !dbg !3273, !tbaa !836
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3273
  %138 = load i8*, i8** %137, align 8, !dbg !3273, !tbaa !836
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3273
  %140 = load i8*, i8** %139, align 8, !dbg !3273, !tbaa !836
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3273
  %142 = load i8*, i8** %141, align 8, !dbg !3273, !tbaa !836
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3273
  %144 = load i8*, i8** %143, align 8, !dbg !3273, !tbaa !836
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3274
  br label %146, !dbg !3275

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3276
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3277 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3281, metadata !828), !dbg !3287
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3282, metadata !828), !dbg !3288
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3283, metadata !828), !dbg !3289
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3284, metadata !828), !dbg !3290
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3285, metadata !828), !dbg !3291
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3286, metadata !828), !dbg !3292
  br label %6, !dbg !3293

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3286, metadata !828), !dbg !3292
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3295
  %9 = load i8*, i8** %8, align 8, !dbg !3295, !tbaa !836
  %10 = icmp eq i8* %9, null, !dbg !3298
  %11 = add i64 %7, 1, !dbg !3300
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3286, metadata !828), !dbg !3292
  br i1 %10, label %12, label %6, !dbg !3298, !llvm.loop !3302

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3305
  ret void, !dbg !3306
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3307 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3318, metadata !828), !dbg !3326
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3319, metadata !828), !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3320, metadata !828), !dbg !3328
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3321, metadata !828), !dbg !3329
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3322, metadata !828), !dbg !3330
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3331
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3331
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3324, metadata !828), !dbg !3332
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3323, metadata !828), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3323, metadata !828), !dbg !3333
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3334
  %12 = icmp ult i32 %11, 41, !dbg !3334
  br i1 %12, label %13, label %18, !dbg !3334

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3338
  %15 = sext i32 %11 to i64, !dbg !3338
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3338
  %17 = add i32 %11, 8, !dbg !3338
  store i32 %17, i32* %8, align 8, !dbg !3338
  br label %21, !dbg !3338

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3340
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3340
  store i8* %20, i8** %10, align 8, !dbg !3340
  br label %21, !dbg !3340

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3334
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3342
  %25 = load i8*, i8** %24, align 8, !dbg !3342
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3344
  store i8* %25, i8** %26, align 16, !dbg !3345, !tbaa !836
  %27 = icmp eq i8* %25, null, !dbg !3346
  br i1 %27, label %30, label %28, !dbg !3347

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  %29 = icmp ult i32 %22, 41, !dbg !3334
  br i1 %29, label %35, label %32, !dbg !3334

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3349
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3350
  ret void, !dbg !3350

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3340
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3340
  store i8* %34, i8** %10, align 8, !dbg !3340
  br label %40, !dbg !3340

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3338
  %37 = sext i32 %22 to i64, !dbg !3338
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3338
  %39 = add i32 %22, 8, !dbg !3338
  store i32 %39, i32* %8, align 8, !dbg !3338
  br label %40, !dbg !3338

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3334
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3342
  %44 = load i8*, i8** %43, align 8, !dbg !3342
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3344
  store i8* %44, i8** %45, align 8, !dbg !3345, !tbaa !836
  %46 = icmp eq i8* %44, null, !dbg !3346
  br i1 %46, label %30, label %47, !dbg !3347

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  %48 = icmp ult i32 %41, 41, !dbg !3334
  br i1 %48, label %52, label %49, !dbg !3334

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3340
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3340
  store i8* %51, i8** %10, align 8, !dbg !3340
  br label %57, !dbg !3340

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3338
  %54 = sext i32 %41 to i64, !dbg !3338
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3338
  %56 = add i32 %41, 8, !dbg !3338
  store i32 %56, i32* %8, align 8, !dbg !3338
  br label %57, !dbg !3338

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3334
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3342
  %61 = load i8*, i8** %60, align 8, !dbg !3342
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3344
  store i8* %61, i8** %62, align 16, !dbg !3345, !tbaa !836
  %63 = icmp eq i8* %61, null, !dbg !3346
  br i1 %63, label %30, label %64, !dbg !3347

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  %65 = icmp ult i32 %58, 41, !dbg !3334
  br i1 %65, label %69, label %66, !dbg !3334

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3340
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3340
  store i8* %68, i8** %10, align 8, !dbg !3340
  br label %74, !dbg !3340

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3338
  %71 = sext i32 %58 to i64, !dbg !3338
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3338
  %73 = add i32 %58, 8, !dbg !3338
  store i32 %73, i32* %8, align 8, !dbg !3338
  br label %74, !dbg !3338

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3334
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3342
  %78 = load i8*, i8** %77, align 8, !dbg !3342
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3344
  store i8* %78, i8** %79, align 8, !dbg !3345, !tbaa !836
  %80 = icmp eq i8* %78, null, !dbg !3346
  br i1 %80, label %30, label %81, !dbg !3347

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  %82 = icmp ult i32 %75, 41, !dbg !3334
  br i1 %82, label %86, label %83, !dbg !3334

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3340
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3340
  store i8* %85, i8** %10, align 8, !dbg !3340
  br label %91, !dbg !3340

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3338
  %88 = sext i32 %75 to i64, !dbg !3338
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3338
  %90 = add i32 %75, 8, !dbg !3338
  store i32 %90, i32* %8, align 8, !dbg !3338
  br label %91, !dbg !3338

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3334
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3342
  %95 = load i8*, i8** %94, align 8, !dbg !3342
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3344
  store i8* %95, i8** %96, align 16, !dbg !3345, !tbaa !836
  %97 = icmp eq i8* %95, null, !dbg !3346
  br i1 %97, label %30, label %98, !dbg !3347

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  %99 = icmp ult i32 %92, 41, !dbg !3334
  br i1 %99, label %103, label %100, !dbg !3334

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3340
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3340
  store i8* %102, i8** %10, align 8, !dbg !3340
  br label %108, !dbg !3340

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3338
  %105 = sext i32 %92 to i64, !dbg !3338
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3338
  %107 = add i32 %92, 8, !dbg !3338
  store i32 %107, i32* %8, align 8, !dbg !3338
  br label %108, !dbg !3338

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3342
  %111 = load i8*, i8** %110, align 8, !dbg !3342
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3344
  store i8* %111, i8** %112, align 8, !dbg !3345, !tbaa !836
  %113 = icmp eq i8* %111, null, !dbg !3346
  br i1 %113, label %30, label %114, !dbg !3347

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  %115 = load i8*, i8** %10, align 8, !dbg !3340
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3340
  store i8* %116, i8** %10, align 8, !dbg !3340
  %117 = bitcast i8* %115 to i8**, !dbg !3342
  %118 = load i8*, i8** %117, align 8, !dbg !3342
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3344
  store i8* %118, i8** %119, align 16, !dbg !3345, !tbaa !836
  %120 = icmp eq i8* %118, null, !dbg !3346
  br i1 %120, label %30, label %121, !dbg !3347

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  %122 = load i8*, i8** %10, align 8, !dbg !3340
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3340
  store i8* %123, i8** %10, align 8, !dbg !3340
  %124 = bitcast i8* %122 to i8**, !dbg !3342
  %125 = load i8*, i8** %124, align 8, !dbg !3342
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3344
  store i8* %125, i8** %126, align 8, !dbg !3345, !tbaa !836
  %127 = icmp eq i8* %125, null, !dbg !3346
  br i1 %127, label %30, label %128, !dbg !3347

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  %129 = load i8*, i8** %10, align 8, !dbg !3340
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3340
  store i8* %130, i8** %10, align 8, !dbg !3340
  %131 = bitcast i8* %129 to i8**, !dbg !3342
  %132 = load i8*, i8** %131, align 8, !dbg !3342
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3344
  store i8* %132, i8** %133, align 16, !dbg !3345, !tbaa !836
  %134 = icmp eq i8* %132, null, !dbg !3346
  br i1 %134, label %30, label %135, !dbg !3347

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  %136 = load i8*, i8** %10, align 8, !dbg !3340
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3340
  store i8* %137, i8** %10, align 8, !dbg !3340
  %138 = bitcast i8* %136 to i8**, !dbg !3342
  %139 = load i8*, i8** %138, align 8, !dbg !3342
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3344
  store i8* %139, i8** %140, align 8, !dbg !3345, !tbaa !836
  %141 = icmp eq i8* %139, null, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3323, metadata !828), !dbg !3333
  %142 = select i1 %141, i64 9, i64 10, !dbg !3347
  br label %30, !dbg !3347
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3351 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3355, metadata !828), !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3356, metadata !828), !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3357, metadata !828), !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3358, metadata !828), !dbg !3368
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3369
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3369
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3359, metadata !828), !dbg !3370
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3371
  call void @llvm.va_start(i8* nonnull %6), !dbg !3371
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3372
  call void @llvm.va_end(i8* nonnull %6), !dbg !3373
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3374
  ret void, !dbg !3374
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3375 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.79, i64 0, i64 0), i32 5) #10, !dbg !3376
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.80, i64 0, i64 0)) #10, !dbg !3377
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3379
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.81, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.82, i64 0, i64 0)) #10, !dbg !3380
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3381
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3381, !tbaa !836
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3382
  ret void, !dbg !3383
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3384 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3388, metadata !828), !dbg !3390
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3389, metadata !828), !dbg !3391
  %3 = udiv i64 9223372036854775807, %1, !dbg !3392
  %4 = icmp ult i64 %3, %0, !dbg !3392
  br i1 %4, label %5, label %6, !dbg !3394

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3395
  unreachable, !dbg !3395

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3396
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3397, metadata !828) #10, !dbg !3404
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3406
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3403, metadata !828) #10, !dbg !3407
  %9 = icmp eq i8* %8, null, !dbg !3408
  %10 = icmp ne i64 %7, 0, !dbg !3410
  %11 = and i1 %10, %9, !dbg !3412
  br i1 %11, label %12, label %13, !dbg !3412

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3413
  unreachable, !dbg !3413

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3414
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3398 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3397, metadata !828), !dbg !3415
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3416
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3403, metadata !828), !dbg !3417
  %3 = icmp eq i8* %2, null, !dbg !3418
  %4 = icmp ne i64 %0, 0, !dbg !3419
  %5 = and i1 %4, %3, !dbg !3420
  br i1 %5, label %6, label %7, !dbg !3420

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3421
  unreachable, !dbg !3421

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3422
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3423 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3427, metadata !828), !dbg !3430
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3428, metadata !828), !dbg !3431
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3429, metadata !828), !dbg !3432
  %4 = udiv i64 9223372036854775807, %2, !dbg !3433
  %5 = icmp ult i64 %4, %1, !dbg !3433
  br i1 %5, label %6, label %7, !dbg !3435

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3436
  unreachable, !dbg !3436

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3437
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3438, metadata !828) #10, !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3443, metadata !828) #10, !dbg !3446
  %9 = icmp eq i64 %8, 0, !dbg !3447
  %10 = icmp ne i8* %0, null, !dbg !3449
  %11 = and i1 %10, %9, !dbg !3451
  br i1 %11, label %12, label %13, !dbg !3451

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3452
  br label %19, !dbg !3454

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3455
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3438, metadata !828) #10, !dbg !3444
  %15 = icmp eq i8* %14, null, !dbg !3456
  %16 = icmp ne i64 %8, 0, !dbg !3458
  %17 = and i1 %16, %15, !dbg !3460
  br i1 %17, label %18, label %19, !dbg !3460

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3461
  unreachable, !dbg !3461

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3462
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3439 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3438, metadata !828), !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3443, metadata !828), !dbg !3464
  %3 = icmp eq i64 %1, 0, !dbg !3465
  %4 = icmp ne i8* %0, null, !dbg !3466
  %5 = and i1 %4, %3, !dbg !3467
  br i1 %5, label %6, label %7, !dbg !3467

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3468
  br label %13, !dbg !3469

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3470
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3438, metadata !828), !dbg !3463
  %9 = icmp eq i8* %8, null, !dbg !3471
  %10 = icmp ne i64 %1, 0, !dbg !3472
  %11 = and i1 %10, %9, !dbg !3473
  br i1 %11, label %12, label %13, !dbg !3473

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3474
  unreachable, !dbg !3474

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3475
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !773 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !778, metadata !828), !dbg !3476
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !779, metadata !828), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !780, metadata !828), !dbg !3478
  %4 = load i64, i64* %1, align 8, !dbg !3479, !tbaa !2477
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !781, metadata !828), !dbg !3480
  %5 = icmp eq i8* %0, null, !dbg !3481
  br i1 %5, label %6, label %13, !dbg !3483

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3484
  br i1 %7, label %8, label %17, !dbg !3487

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !781, metadata !828), !dbg !3480
  %10 = icmp ugt i64 %2, 128, !dbg !3490
  %11 = zext i1 %10 to i64, !dbg !3490
  %12 = add nuw nsw i64 %9, %11, !dbg !3491
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !781, metadata !828), !dbg !3480
  br label %17, !dbg !3492

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3493
  %15 = icmp ugt i64 %14, %4, !dbg !3496
  br i1 %15, label %20, label %16, !dbg !3497

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3498
  unreachable, !dbg !3498

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !781, metadata !828), !dbg !3480
  store i64 %18, i64* %1, align 8, !dbg !3499, !tbaa !2477
  %19 = mul i64 %18, %2, !dbg !3500
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3438, metadata !828) #10, !dbg !3501
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3443, metadata !828) #10, !dbg !3503
  br label %27, !dbg !3504

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3505
  %22 = add i64 %4, 1, !dbg !3506
  %23 = add i64 %22, %21, !dbg !3507
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !781, metadata !828), !dbg !3480
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !781, metadata !828), !dbg !3480
  store i64 %23, i64* %1, align 8, !dbg !3499, !tbaa !2477
  %24 = mul i64 %23, %2, !dbg !3500
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3438, metadata !828) #10, !dbg !3501
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3443, metadata !828) #10, !dbg !3503
  %25 = icmp eq i64 %24, 0, !dbg !3508
  br i1 %25, label %26, label %27, !dbg !3504

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3509
  br label %34, !dbg !3510

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3511
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3438, metadata !828) #10, !dbg !3501
  %30 = icmp eq i8* %29, null, !dbg !3512
  %31 = icmp ne i64 %28, 0, !dbg !3513
  %32 = and i1 %31, %30, !dbg !3514
  br i1 %32, label %33, label %34, !dbg !3514

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3515
  unreachable, !dbg !3515

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3516
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3517 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3519, metadata !828), !dbg !3520
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3397, metadata !828) #10, !dbg !3521
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3523
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3403, metadata !828) #10, !dbg !3524
  %3 = icmp eq i8* %2, null, !dbg !3525
  %4 = icmp ne i64 %0, 0, !dbg !3526
  %5 = and i1 %4, %3, !dbg !3527
  br i1 %5, label %6, label %7, !dbg !3527

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3528
  unreachable, !dbg !3528

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3529
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3530 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3534, metadata !828), !dbg !3536
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3535, metadata !828), !dbg !3537
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !778, metadata !828) #10, !dbg !3538
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !779, metadata !828) #10, !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !780, metadata !828) #10, !dbg !3541
  %3 = load i64, i64* %1, align 8, !dbg !3542, !tbaa !2477
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !781, metadata !828) #10, !dbg !3543
  %4 = icmp eq i8* %0, null, !dbg !3544
  br i1 %4, label %5, label %8, !dbg !3545

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3546
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !781, metadata !828) #10, !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !781, metadata !828) #10, !dbg !3543
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3547
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !781, metadata !828) #10, !dbg !3543
  store i64 %7, i64* %1, align 8, !dbg !3548, !tbaa !2477
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3438, metadata !828) #10, !dbg !3549
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3443, metadata !828) #10, !dbg !3551
  br label %17, !dbg !3552

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3553
  br i1 %9, label %11, label %10, !dbg !3554

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3555
  unreachable, !dbg !3555

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3556
  %13 = add i64 %3, 1, !dbg !3557
  %14 = add i64 %13, %12, !dbg !3558
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !781, metadata !828) #10, !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !781, metadata !828) #10, !dbg !3543
  store i64 %14, i64* %1, align 8, !dbg !3548, !tbaa !2477
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3438, metadata !828) #10, !dbg !3549
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3443, metadata !828) #10, !dbg !3551
  %15 = icmp eq i64 %14, 0, !dbg !3559
  br i1 %15, label %16, label %17, !dbg !3552

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3560
  br label %24, !dbg !3561

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3562
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3438, metadata !828) #10, !dbg !3549
  %20 = icmp eq i8* %19, null, !dbg !3563
  %21 = icmp ne i64 %18, 0, !dbg !3564
  %22 = and i1 %21, %20, !dbg !3565
  br i1 %22, label %23, label %24, !dbg !3565

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3566
  unreachable, !dbg !3566

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3567
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3568 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3570, metadata !828), !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3397, metadata !828) #10, !dbg !3572
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3574
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3403, metadata !828) #10, !dbg !3575
  %3 = icmp eq i8* %2, null, !dbg !3576
  %4 = icmp ne i64 %0, 0, !dbg !3577
  %5 = and i1 %4, %3, !dbg !3578
  br i1 %5, label %6, label %7, !dbg !3578

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3579
  unreachable, !dbg !3579

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3580
  ret i8* %2, !dbg !3581
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3582 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3584, metadata !828), !dbg !3587
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3585, metadata !828), !dbg !3588
  %3 = udiv i64 9223372036854775807, %1, !dbg !3589
  %4 = icmp ult i64 %3, %0, !dbg !3589
  br i1 %4, label %8, label %5, !dbg !3591

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3592
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3586, metadata !828), !dbg !3594
  %7 = icmp eq i8* %6, null, !dbg !3595
  br i1 %7, label %8, label %9, !dbg !3596

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3598
  unreachable, !dbg !3598

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3599
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3600 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3604, metadata !828), !dbg !3606
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3605, metadata !828), !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3397, metadata !828) #10, !dbg !3608
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3610
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3403, metadata !828) #10, !dbg !3611
  %4 = icmp eq i8* %3, null, !dbg !3612
  %5 = icmp ne i64 %1, 0, !dbg !3613
  %6 = and i1 %5, %4, !dbg !3614
  br i1 %6, label %7, label %8, !dbg !3614

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3615
  unreachable, !dbg !3615

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3616
  ret i8* %3, !dbg !3617
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3618 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3620, metadata !828), !dbg !3621
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3622
  %3 = add i64 %2, 1, !dbg !3623
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3604, metadata !828) #10, !dbg !3624
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3605, metadata !828) #10, !dbg !3627
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3397, metadata !828) #10, !dbg !3628
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3630
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3403, metadata !828) #10, !dbg !3631
  %5 = icmp eq i8* %4, null, !dbg !3632
  %6 = icmp ne i64 %3, 0, !dbg !3633
  %7 = and i1 %6, %5, !dbg !3634
  br i1 %7, label %8, label %9, !dbg !3634

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3635
  unreachable, !dbg !3635

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3636
  ret i8* %4, !dbg !3637
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3638 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3640, !tbaa !917
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.93, i64 0, i64 0), i32 5) #10, !dbg !3641
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0), i8* %2) #10, !dbg !3642
  tail call void @abort() #14, !dbg !3644
  unreachable, !dbg !3644
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3645 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3653, metadata !828), !dbg !3663
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3654, metadata !828), !dbg !3664
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3655, metadata !828), !dbg !3665
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3656, metadata !828), !dbg !3666
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3657, metadata !828), !dbg !3667
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3658, metadata !828), !dbg !3668
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3659, metadata !828), !dbg !3669
  %9 = bitcast i64* %8 to i8*, !dbg !3670
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #10, !dbg !3670
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !3662, metadata !1065), !dbg !3671
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !3672
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3660, metadata !828), !dbg !3673
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !3674

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #1, !dbg !3675
  br label %26, !dbg !3674

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3679, !tbaa !2477
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3662, metadata !828), !dbg !3671
  %15 = icmp ult i64 %14, %2, !dbg !3683
  %16 = icmp ugt i64 %14, %3, !dbg !3684
  %17 = or i1 %15, %16, !dbg !3686
  br i1 %17, label %18, label %35, !dbg !3686

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3660, metadata !828), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3662, metadata !828), !dbg !3671
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3687
  %20 = tail call i32* @__errno_location() #1, !dbg !3690
  %21 = select i1 %19, i32 75, i32 34, !dbg !3691
  store i32 %21, i32* %20, align 4, !tbaa !917
  br label %26, !dbg !3692

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #1, !dbg !3693
  store i32 75, i32* %23, align 4, !dbg !3695, !tbaa !917
  br label %26, !dbg !3693

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #1, !dbg !3696
  store i32 0, i32* %25, align 4, !dbg !3698, !tbaa !917
  br label %26, !dbg !3696

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !3675
  %28 = icmp ne i32 %6, 0, !dbg !3699
  %29 = select i1 %28, i32 %6, i32 1, !dbg !3699
  %30 = load i32, i32* %27, align 4, !dbg !3675, !tbaa !917
  %31 = icmp eq i32 %30, 22, !dbg !3700
  %32 = select i1 %31, i32 0, i32 %30, !dbg !3675
  %33 = call i8* @quote(i8* %0) #10, !dbg !3701
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i64 0, i64 0), i8* %5, i8* %33) #10, !dbg !3702
  %34 = load i64, i64* %8, align 8, !tbaa !2477
  br label %35, !dbg !3704

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !3705
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !3662, metadata !828), !dbg !3671
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #10, !dbg !3706
  ret i64 %36, !dbg !3707
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3708 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3712, metadata !828), !dbg !3718
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3713, metadata !828), !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3714, metadata !828), !dbg !3720
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3715, metadata !828), !dbg !3721
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3716, metadata !828), !dbg !3722
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3717, metadata !828), !dbg !3723
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3724
  ret i64 %7, !dbg !3725
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3726 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3732, metadata !828), !dbg !3750
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3733, metadata !828), !dbg !3751
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3734, metadata !828), !dbg !3752
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3735, metadata !828), !dbg !3753
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3736, metadata !828), !dbg !3754
  %7 = bitcast i8** %6 to i8*, !dbg !3755
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !3755
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3740, metadata !828), !dbg !3756
  %8 = icmp ult i32 %2, 37, !dbg !3757
  br i1 %8, label %10, label %9, !dbg !3757

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.101, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14, !dbg !3760
  unreachable, !dbg !3760

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !3762
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3738, metadata !828), !dbg !3763
  %12 = tail call i32* @__errno_location() #1, !dbg !3764
  store i32 0, i32* %12, align 4, !dbg !3765, !tbaa !917
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3741, metadata !828), !dbg !3766
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !3767
  %14 = load i16*, i16** %13, align 8, !tbaa !836
  br label %15, !dbg !3769

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !1116
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3744, metadata !828), !dbg !3770
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3741, metadata !828), !dbg !3766
  %18 = zext i8 %17 to i64, !dbg !3767
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3767
  %20 = load i16, i16* %19, align 2, !dbg !3767, !tbaa !1770
  %21 = and i16 %20, 8192, !dbg !3767
  %22 = icmp eq i16 %21, 0, !dbg !3771
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3772
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3741, metadata !828), !dbg !3766
  br i1 %22, label %24, label %15, !dbg !3771, !llvm.loop !3773

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !3762
  %26 = icmp eq i8 %17, 45, !dbg !3775
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3777, metadata !828) #10, !dbg !3787
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !3785, metadata !828) #10, !dbg !3787
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3786, metadata !828) #10, !dbg !3787
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !3789
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3739, metadata !828), !dbg !3790
  %29 = load i8*, i8** %25, align 8, !dbg !3791, !tbaa !836
  %30 = icmp eq i8* %29, %0, !dbg !3793
  br i1 %30, label %31, label %40, !dbg !3794

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3795
  br i1 %32, label %265, label %33, !dbg !3798

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3799, !tbaa !1116
  %35 = icmp eq i8 %34, 0, !dbg !3799
  br i1 %35, label %265, label %36, !dbg !3801

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3799
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #10, !dbg !3802
  %39 = icmp eq i8* %38, null, !dbg !3802
  br i1 %39, label %265, label %47, !dbg !3804

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3806, !tbaa !917
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3808

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3740, metadata !828), !dbg !3756
  br label %43, !dbg !3809

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !3740, metadata !828), !dbg !3756
  %45 = icmp eq i8* %4, null, !dbg !3811
  br i1 %45, label %46, label %47, !dbg !3813

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3739, metadata !828), !dbg !3790
  store i64 %28, i64* %3, align 8, !dbg !3814, !tbaa !2477
  br label %265, !dbg !3816

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3817, !tbaa !1116
  %51 = icmp eq i8 %50, 0, !dbg !3818
  br i1 %51, label %262, label %52, !dbg !3819

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !3817
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3745, metadata !828), !dbg !3820
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3748, metadata !828), !dbg !3821
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #10, !dbg !3822
  %55 = icmp eq i8* %54, null, !dbg !3822
  br i1 %55, label %56, label %58, !dbg !3825

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3739, metadata !828), !dbg !3790
  store i64 %49, i64* %3, align 8, !dbg !3827, !tbaa !2477
  %57 = or i32 %48, 2, !dbg !3829
  br label %265, !dbg !3830

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
  ], !dbg !3831

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !3832
  %61 = icmp eq i8* %60, null, !dbg !3832
  br i1 %61, label %72, label %62, !dbg !3836

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3838
  %64 = load i8, i8* %63, align 1, !dbg !3838, !tbaa !1116
  %65 = sext i8 %64 to i32, !dbg !3838
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3839

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3840
  %68 = load i8, i8* %67, align 1, !dbg !3840, !tbaa !1116
  %69 = icmp eq i8 %68, 66, !dbg !3843
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3748, metadata !828), !dbg !3821
  %70 = select i1 %69, i64 3, i64 1, !dbg !3844
  br label %72, !dbg !3844

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3745, metadata !828), !dbg !3820
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3748, metadata !828), !dbg !3821
  br label %72, !dbg !3845

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
  ], !dbg !3846

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3847, metadata !828), !dbg !3853
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !3856
  %77 = shl i64 %49, 9, !dbg !3858
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !3859
  %79 = zext i1 %76 to i32, !dbg !3859
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !3749, metadata !828), !dbg !3860
  br label %253, !dbg !3861

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3847, metadata !828), !dbg !3862
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !3864
  %82 = shl i64 %49, 10, !dbg !3865
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3866
  %84 = zext i1 %81 to i32, !dbg !3866
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !3749, metadata !828), !dbg !3860
  br label %253, !dbg !3867

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3876
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3878
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3878
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3876
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !3879
  %88 = mul i64 %49, %73, !dbg !3881
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !3882
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  %90 = icmp ult i64 %86, %89, !dbg !3879
  %91 = mul i64 %89, %73, !dbg !3881
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !3882
  %93 = or i1 %90, %87, !dbg !3883
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  %94 = icmp ult i64 %86, %92, !dbg !3879
  %95 = mul i64 %92, %73, !dbg !3881
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !3882
  %97 = or i1 %94, %93, !dbg !3883
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  %98 = icmp ult i64 %86, %96, !dbg !3879
  %99 = mul i64 %96, %73, !dbg !3881
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3882
  %101 = or i1 %98, %97, !dbg !3883
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  %102 = icmp ult i64 %86, %100, !dbg !3879
  %103 = mul i64 %100, %73, !dbg !3881
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !3882
  %105 = or i1 %102, %101, !dbg !3883
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  %106 = icmp ult i64 %86, %104, !dbg !3879
  %107 = mul i64 %104, %73, !dbg !3881
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3882
  %109 = or i1 %106, %105, !dbg !3883
  %110 = zext i1 %109 to i32, !dbg !3883
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3876
  br label %253, !dbg !3860

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3868, metadata !828), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3886
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3886
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3868, metadata !828), !dbg !3884
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !3887
  %114 = mul i64 %49, %73, !dbg !3889
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !3890
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3868, metadata !828), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3868, metadata !828), !dbg !3884
  %116 = icmp ult i64 %112, %115, !dbg !3887
  %117 = mul i64 %115, %73, !dbg !3889
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3890
  %119 = or i1 %116, %113, !dbg !3891
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3868, metadata !828), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3868, metadata !828), !dbg !3884
  %120 = icmp ult i64 %112, %118, !dbg !3887
  %121 = mul i64 %118, %73, !dbg !3889
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !3890
  %123 = or i1 %120, %119, !dbg !3891
  %124 = zext i1 %123 to i32, !dbg !3891
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3868, metadata !828), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3868, metadata !828), !dbg !3884
  br label %253, !dbg !3860

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3868, metadata !828), !dbg !3892
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3894
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3894
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3868, metadata !828), !dbg !3892
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !3895
  %128 = mul i64 %49, %73, !dbg !3897
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !3898
  %130 = zext i1 %127 to i32, !dbg !3898
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3875, metadata !828), !dbg !3894
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !3875, metadata !828), !dbg !3894
  br label %253, !dbg !3860

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3868, metadata !828), !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3901
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3901
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3868, metadata !828), !dbg !3899
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !3902
  %134 = mul i64 %49, %73, !dbg !3904
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !3905
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3868, metadata !828), !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3868, metadata !828), !dbg !3899
  %136 = icmp ult i64 %132, %135, !dbg !3902
  %137 = mul i64 %135, %73, !dbg !3904
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3905
  %139 = or i1 %136, %133, !dbg !3906
  %140 = zext i1 %139 to i32, !dbg !3906
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3868, metadata !828), !dbg !3899
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3868, metadata !828), !dbg !3899
  br label %253, !dbg !3860

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3907
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3909
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3909
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3868, metadata !828), !dbg !3907
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !3910
  %144 = mul i64 %49, %73, !dbg !3912
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !3913
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3907
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3907
  %146 = icmp ult i64 %142, %145, !dbg !3910
  %147 = mul i64 %145, %73, !dbg !3912
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3913
  %149 = or i1 %146, %143, !dbg !3914
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3907
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3907
  %150 = icmp ult i64 %142, %148, !dbg !3910
  %151 = mul i64 %148, %73, !dbg !3912
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !3913
  %153 = or i1 %150, %149, !dbg !3914
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3907
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3907
  %154 = icmp ult i64 %142, %152, !dbg !3910
  %155 = mul i64 %152, %73, !dbg !3912
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !3913
  %157 = or i1 %154, %153, !dbg !3914
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3907
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3907
  %158 = icmp ult i64 %142, %156, !dbg !3910
  %159 = mul i64 %156, %73, !dbg !3912
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !3913
  %161 = or i1 %158, %157, !dbg !3914
  %162 = zext i1 %161 to i32, !dbg !3914
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3907
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3907
  br label %253, !dbg !3860

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3915
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3917
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3917
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3868, metadata !828), !dbg !3915
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !3918
  %166 = mul i64 %49, %73, !dbg !3920
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3921
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3868, metadata !828), !dbg !3915
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3868, metadata !828), !dbg !3915
  %168 = icmp ult i64 %164, %167, !dbg !3918
  %169 = mul i64 %167, %73, !dbg !3920
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !3921
  %171 = or i1 %168, %165, !dbg !3922
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3868, metadata !828), !dbg !3915
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3868, metadata !828), !dbg !3915
  %172 = icmp ult i64 %164, %170, !dbg !3918
  %173 = mul i64 %170, %73, !dbg !3920
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !3921
  %175 = or i1 %172, %171, !dbg !3922
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3868, metadata !828), !dbg !3915
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3868, metadata !828), !dbg !3915
  %176 = icmp ult i64 %164, %174, !dbg !3918
  %177 = mul i64 %174, %73, !dbg !3920
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !3921
  %179 = or i1 %176, %175, !dbg !3922
  %180 = zext i1 %179 to i32, !dbg !3922
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3868, metadata !828), !dbg !3915
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3868, metadata !828), !dbg !3915
  br label %253, !dbg !3860

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3847, metadata !828), !dbg !3923
  %182 = icmp slt i64 %49, 0, !dbg !3925
  %183 = shl i64 %49, 1, !dbg !3926
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !3927
  %185 = lshr i64 %49, 63, !dbg !3927
  %186 = trunc i64 %185 to i32, !dbg !3927
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3749, metadata !828), !dbg !3860
  br label %253, !dbg !3928

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3868, metadata !828), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3931
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3931
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3868, metadata !828), !dbg !3929
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !3932
  %190 = mul i64 %49, %73, !dbg !3934
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !3935
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  %192 = icmp ult i64 %188, %191, !dbg !3932
  %193 = mul i64 %191, %73, !dbg !3934
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !3935
  %195 = or i1 %192, %189, !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  %196 = icmp ult i64 %188, %194, !dbg !3932
  %197 = mul i64 %194, %73, !dbg !3934
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3935
  %199 = or i1 %196, %195, !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  %200 = icmp ult i64 %188, %198, !dbg !3932
  %201 = mul i64 %198, %73, !dbg !3934
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !3935
  %203 = or i1 %200, %199, !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  %204 = icmp ult i64 %188, %202, !dbg !3932
  %205 = mul i64 %202, %73, !dbg !3934
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !3935
  %207 = or i1 %204, %203, !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  %208 = icmp ult i64 %188, %206, !dbg !3932
  %209 = mul i64 %206, %73, !dbg !3934
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !3935
  %211 = or i1 %208, %207, !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  %212 = icmp ult i64 %188, %210, !dbg !3932
  %213 = mul i64 %210, %73, !dbg !3934
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3935
  %215 = or i1 %212, %211, !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  %216 = icmp ult i64 %188, %214, !dbg !3932
  %217 = mul i64 %214, %73, !dbg !3934
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3935
  %219 = or i1 %216, %215, !dbg !3936
  %220 = zext i1 %219 to i32, !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3929
  br label %253, !dbg !3860

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3937
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3939
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3875, metadata !828), !dbg !3939
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3868, metadata !828), !dbg !3937
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !3940
  %224 = mul i64 %49, %73, !dbg !3942
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !3943
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  %226 = icmp ult i64 %222, %225, !dbg !3940
  %227 = mul i64 %225, %73, !dbg !3942
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3943
  %229 = or i1 %226, %223, !dbg !3944
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  %230 = icmp ult i64 %222, %228, !dbg !3940
  %231 = mul i64 %228, %73, !dbg !3942
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !3943
  %233 = or i1 %230, %229, !dbg !3944
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  %234 = icmp ult i64 %222, %232, !dbg !3940
  %235 = mul i64 %232, %73, !dbg !3942
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !3943
  %237 = or i1 %234, %233, !dbg !3944
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  %238 = icmp ult i64 %222, %236, !dbg !3940
  %239 = mul i64 %236, %73, !dbg !3942
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !3943
  %241 = or i1 %238, %237, !dbg !3944
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  %242 = icmp ult i64 %222, %240, !dbg !3940
  %243 = mul i64 %240, %73, !dbg !3942
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3943
  %245 = or i1 %242, %241, !dbg !3944
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  %246 = icmp ult i64 %222, %244, !dbg !3940
  %247 = mul i64 %244, %73, !dbg !3942
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3943
  %249 = or i1 %246, %245, !dbg !3944
  %250 = zext i1 %249 to i32, !dbg !3944
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3868, metadata !828), !dbg !3937
  br label %253, !dbg !3860

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3739, metadata !828), !dbg !3790
  store i64 %49, i64* %3, align 8, !dbg !3945, !tbaa !2477
  %252 = or i32 %48, 2, !dbg !3946
  br label %265, !dbg !3947

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !3749, metadata !828), !dbg !3860
  %256 = or i32 %255, %48, !dbg !3948
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !3740, metadata !828), !dbg !3756
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3949
  store i8* %257, i8** %25, align 8, !dbg !3949, !tbaa !836
  %258 = load i8, i8* %257, align 1, !dbg !3950, !tbaa !1116
  %259 = icmp eq i8 %258, 0, !dbg !3950
  %260 = or i32 %256, 2, !dbg !3952
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !3740, metadata !828), !dbg !3756
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !3953
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3740, metadata !828), !dbg !3756
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !3740, metadata !828), !dbg !3756
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !3740, metadata !828), !dbg !3756
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !3739, metadata !828), !dbg !3790
  store i64 %263, i64* %3, align 8, !dbg !3954, !tbaa !2477
  br label %265, !dbg !3955

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !3956
  ret i32 %266, !dbg !3956
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3957 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3960, metadata !828), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3961, metadata !828), !dbg !3967
  %3 = icmp eq i64 %0, 0, !dbg !3968
  %4 = icmp eq i64 %1, 0, !dbg !3969
  %5 = or i1 %3, %4, !dbg !3971
  br i1 %5, label %12, label %6, !dbg !3971

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3972
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3963, metadata !828), !dbg !3973
  %8 = udiv i64 %7, %1, !dbg !3974
  %9 = icmp eq i64 %8, %0, !dbg !3976
  br i1 %9, label %12, label %10, !dbg !3977

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3978
  store i32 12, i32* %11, align 4, !dbg !3980, !tbaa !917
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3960, metadata !828), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3961, metadata !828), !dbg !3967
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3981
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3962, metadata !828), !dbg !3982
  br label %16, !dbg !3983

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3984
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3985 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4002, metadata !828), !dbg !4011
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4003, metadata !828), !dbg !4012
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4004, metadata !828), !dbg !4013
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4005, metadata !828), !dbg !4014
  %6 = bitcast i32* %5 to i8*, !dbg !4015
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4015
  %7 = icmp eq i32* %0, null, !dbg !4016
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4002, metadata !828), !dbg !4011
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4018
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4002, metadata !828), !dbg !4011
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4019
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4006, metadata !828), !dbg !4020
  %10 = icmp ugt i64 %9, -3, !dbg !4021
  %11 = icmp ne i64 %2, 0, !dbg !4022
  %12 = and i1 %11, %10, !dbg !4024
  br i1 %12, label %13, label %18, !dbg !4024

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4025
  br i1 %14, label %18, label %15, !dbg !4027

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4029, !tbaa !1116
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4008, metadata !828), !dbg !4030
  %17 = zext i8 %16 to i32, !dbg !4031
  store i32 %17, i32* %8, align 4, !dbg !4032, !tbaa !917
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4033
  ret i64 %19, !dbg !4033
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4034 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4079, metadata !828), !dbg !4084
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4085
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4086, metadata !828), !dbg !4090
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4092
  %4 = load i32, i32* %3, align 8, !dbg !4092, !tbaa !4093
  %5 = and i32 %4, 32, !dbg !4092
  %6 = icmp eq i32 %5, 0, !dbg !4095
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4096
  %8 = icmp ne i32 %7, 0, !dbg !4097
  br i1 %6, label %9, label %19, !dbg !4098

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4100
  %11 = icmp ne i64 %2, 0, !dbg !4100
  %12 = or i1 %11, %10, !dbg !4100
  %13 = sext i1 %8 to i32, !dbg !4100
  br i1 %12, label %22, label %14, !dbg !4100

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4102
  %16 = load i32, i32* %15, align 4, !dbg !4102, !tbaa !917
  %17 = icmp ne i32 %16, 9, !dbg !4104
  %18 = sext i1 %17 to i32, !dbg !4104
  br label %22, !dbg !4104

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4106

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4108
  store i32 0, i32* %21, align 4, !dbg !4110, !tbaa !917
  br label %22, !dbg !4108

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4111
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4112 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4115, metadata !828), !dbg !4135
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4116, metadata !828), !dbg !4136
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4137
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4117, metadata !828), !dbg !4138
  %3 = icmp eq i8* %2, null, !dbg !4139
  br i1 %3, label %15, label %4, !dbg !4140

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4125, metadata !828), !dbg !4141
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4126, metadata !828), !dbg !4142
  %5 = load i8, i8* %2, align 1, !dbg !4143, !tbaa !1116
  %6 = icmp eq i8 %5, 67, !dbg !4145
  br i1 %6, label %7, label %11, !dbg !4148

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4150
  %9 = load i8, i8* %8, align 1, !dbg !4150, !tbaa !1116
  %10 = icmp eq i8 %9, 0, !dbg !4153
  br i1 %10, label %14, label %11, !dbg !4155

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4131, metadata !828), !dbg !4157
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.110, i64 0, i64 0)) #10, !dbg !4158
  %13 = icmp eq i32 %12, 0, !dbg !4160
  br i1 %13, label %14, label %15, !dbg !4162

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4116, metadata !828), !dbg !4136
  br label %15, !dbg !4164

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4165
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4166 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4178, metadata !828), !dbg !4252
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4245, metadata !828), !dbg !4254
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4255
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4170, metadata !828), !dbg !4256
  %4 = icmp eq i8* %3, null, !dbg !4257
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i64 0, i64 0), i8* %3, !dbg !4259
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4170, metadata !828), !dbg !4256
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4260, !tbaa !836
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4192, metadata !828) #10, !dbg !4261
  %7 = icmp eq i8* %6, null, !dbg !4262
  br i1 %7, label %8, label %127, !dbg !4263

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.114, i64 0, i64 0)) #10, !dbg !4264
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4193, metadata !828) #10, !dbg !4265
  %10 = icmp eq i8* %9, null, !dbg !4266
  br i1 %10, label %14, label %11, !dbg !4268

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4269, !tbaa !1116
  %13 = icmp eq i8 %12, 0, !dbg !4271
  br i1 %13, label %14, label %15, !dbg !4272

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4274

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.115, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4193, metadata !828) #10, !dbg !4265
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4275
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4196, metadata !828) #10, !dbg !4276
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4198, metadata !828) #10, !dbg !4277
  %18 = icmp eq i64 %17, 0, !dbg !4278
  br i1 %18, label %24, label %19, !dbg !4279

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4280
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4280
  %22 = load i8, i8* %21, align 1, !dbg !4280, !tbaa !1116
  %23 = icmp ne i8 %22, 47, !dbg !4282
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4283
  %27 = add i64 %17, 14, !dbg !4284
  %28 = add i64 %27, %26, !dbg !4285
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4286
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4195, metadata !828) #10, !dbg !4287
  %30 = icmp eq i8* %29, null, !dbg !4288
  br i1 %30, label %125, label %31, !dbg !4288

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4289
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4292

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4293, !tbaa !1116
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4295
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.116, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4296
  br label %37, !dbg !4297

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4295
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.116, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4296
  br label %37, !dbg !4297

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4298
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4200, metadata !828) #10, !dbg !4299
  %39 = icmp slt i32 %38, 0, !dbg !4300
  br i1 %39, label %123, label %40, !dbg !4301

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.117, i64 0, i64 0)) #10, !dbg !4302
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4201, metadata !828) #10, !dbg !4303
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4304
  br i1 %42, label %48, label %43, !dbg !4305

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4306

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4307
  br label %123, !dbg !4309

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4242, metadata !828) #10, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4243, metadata !828) #10, !dbg !4310
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4311
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4312
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4313, metadata !828) #10, !dbg !4318
  %53 = load i8*, i8** %46, align 8, !dbg !4320, !tbaa !4321
  %54 = load i8*, i8** %47, align 8, !dbg !4320, !tbaa !4322
  %55 = icmp ult i8* %53, %54, !dbg !4320
  br i1 %55, label %58, label %56, !dbg !4320, !prof !4323

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4324
  br label %62, !dbg !4324

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4326
  store i8* %59, i8** %46, align 8, !dbg !4326, !tbaa !4321
  %60 = load i8, i8* %53, align 1, !dbg !4326, !tbaa !1116
  %61 = zext i8 %60 to i32, !dbg !4326
  br label %62, !dbg !4326

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4328
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4244, metadata !828) #10, !dbg !4330
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4331

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4332

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4313, metadata !828) #10, !dbg !4332
  %66 = load i8*, i8** %46, align 8, !dbg !4336, !tbaa !4321
  %67 = load i8*, i8** %47, align 8, !dbg !4336, !tbaa !4322
  %68 = icmp ult i8* %66, %67, !dbg !4336
  br i1 %68, label %71, label %69, !dbg !4336, !prof !4323

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4337
  br label %75, !dbg !4337

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4338
  store i8* %72, i8** %46, align 8, !dbg !4338, !tbaa !4321
  %73 = load i8, i8* %66, align 1, !dbg !4338, !tbaa !1116
  %74 = zext i8 %73 to i32, !dbg !4338
  br label %75, !dbg !4338

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4339
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4244, metadata !828) #10, !dbg !4330
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4340, !llvm.loop !4342

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4345
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.118, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4346
  %80 = icmp slt i32 %79, 2, !dbg !4348
  br i1 %80, label %115, label %81, !dbg !4349

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4249, metadata !828) #10, !dbg !4351
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4352
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4250, metadata !828) #10, !dbg !4353
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4251, metadata !828) #10, !dbg !4354
  %84 = icmp eq i64 %51, 0, !dbg !4355
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4357

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4243, metadata !828) #10, !dbg !4310
  %89 = add i64 %86, 2, !dbg !4358
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4360
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4242, metadata !828) #10, !dbg !4306
  br label %95, !dbg !4361

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4362
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4243, metadata !828) #10, !dbg !4310
  %93 = add i64 %92, 1, !dbg !4364
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4365
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4242, metadata !828) #10, !dbg !4306
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4242, metadata !828) #10, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4243, metadata !828) #10, !dbg !4310
  %98 = icmp eq i8* %97, null, !dbg !4366
  br i1 %98, label %99, label %100, !dbg !4368

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4243, metadata !828) #10, !dbg !4310
  call void @free(i8* %52) #10, !dbg !4369
  br label %116, !dbg !4371

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4372
  %102 = xor i64 %83, -1, !dbg !4373
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4373
  %104 = xor i64 %82, -1, !dbg !4374
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4374
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4375, metadata !828) #10, !dbg !4383
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4382, metadata !828) #10, !dbg !4383
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4385
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4386
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4375, metadata !828) #10, !dbg !4387
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4382, metadata !828) #10, !dbg !4387
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4389
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4390
  br label %111, !dbg !4391

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4306

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4242, metadata !828) #10, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4243, metadata !828) #10, !dbg !4310
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4391
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4391
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4306

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4306

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4242, metadata !828) #10, !dbg !4306
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4243, metadata !828) #10, !dbg !4310
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4391
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4391
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4392
  %120 = icmp eq i64 %117, 0, !dbg !4393
  br i1 %120, label %123, label %121, !dbg !4395

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4396
  store i8 0, i8* %122, align 1, !dbg !4398, !tbaa !1116
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4192, metadata !828) #10, !dbg !4261
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4192, metadata !828) #10, !dbg !4261
  call void @free(i8* %29) #10, !dbg !4399
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4192, metadata !828) #10, !dbg !4261
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4400, !tbaa !836
  br label %127, !dbg !4401

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4171, metadata !828), !dbg !4402
  %129 = load i8, i8* %128, align 1, !dbg !4403, !tbaa !1116
  %130 = icmp eq i8 %129, 0, !dbg !4404
  br i1 %130, label %157, label %131, !dbg !4405

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4407

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4407
  %136 = icmp eq i32 %135, 0, !dbg !4408
  br i1 %136, label %143, label %137, !dbg !4409

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4410
  br i1 %138, label %139, label %147, !dbg !4412

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4413
  %141 = load i8, i8* %140, align 1, !dbg !4413, !tbaa !1116
  %142 = icmp eq i8 %141, 0, !dbg !4415
  br i1 %142, label %143, label %147, !dbg !4416

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4418
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4420
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4421
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4170, metadata !828), !dbg !4256
  br label %157, !dbg !4422

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4423
  %149 = add i64 %148, 1, !dbg !4424
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4425
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4171, metadata !828), !dbg !4402
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4426
  %152 = add i64 %151, 1, !dbg !4427
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4428
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4171, metadata !828), !dbg !4402
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4171, metadata !828), !dbg !4402
  %154 = load i8, i8* %153, align 1, !dbg !4403, !tbaa !1116
  %155 = icmp eq i8 %154, 0, !dbg !4404
  br i1 %155, label %156, label %132, !dbg !4405, !llvm.loop !4429

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4256

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4170, metadata !828), !dbg !4256
  %159 = load i8, i8* %158, align 1, !dbg !4432, !tbaa !1116
  %160 = icmp eq i8 %159, 0, !dbg !4434
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i64 0, i64 0), i8* %158, !dbg !4435
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4170, metadata !828), !dbg !4256
  ret i8* %161, !dbg !4436
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

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4437 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4482, metadata !828), !dbg !4486
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4483, metadata !828), !dbg !4487
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4485, metadata !828), !dbg !4488
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4489
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4484, metadata !828), !dbg !4490
  %3 = icmp slt i32 %2, 0, !dbg !4491
  br i1 %3, label %4, label %6, !dbg !4493

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4494
  br label %24, !dbg !4495

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4496
  %8 = icmp eq i32 %7, 0, !dbg !4496
  br i1 %8, label %13, label %9, !dbg !4498

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4499
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4501
  %12 = icmp eq i64 %11, -1, !dbg !4503
  br i1 %12, label %16, label %13, !dbg !4504

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4505
  %15 = icmp eq i32 %14, 0, !dbg !4505
  br i1 %15, label %16, label %18, !dbg !4506

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4483, metadata !828), !dbg !4487
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4508
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4485, metadata !828), !dbg !4488
  br label %24, !dbg !4509

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4510
  %20 = load i32, i32* %19, align 4, !dbg !4510, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4483, metadata !828), !dbg !4487
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4483, metadata !828), !dbg !4487
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4508
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4485, metadata !828), !dbg !4488
  %22 = icmp eq i32 %20, 0, !dbg !4511
  br i1 %22, label %24, label %23, !dbg !4509

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4513, !tbaa !917
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4485, metadata !828), !dbg !4488
  br label %24, !dbg !4515

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4516
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4517 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4562, metadata !828), !dbg !4563
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4564
  br i1 %2, label %6, label %3, !dbg !4566

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4567
  %5 = icmp eq i32 %4, 0, !dbg !4567
  br i1 %5, label %6, label %8, !dbg !4569

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4571
  br label %17, !dbg !4572

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4573, metadata !828) #10, !dbg !4578
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4580
  %10 = load i32, i32* %9, align 8, !dbg !4580, !tbaa !4093
  %11 = and i32 %10, 256, !dbg !4582
  %12 = icmp eq i32 %11, 0, !dbg !4582
  br i1 %12, label %15, label %13, !dbg !4583

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4584
  br label %15, !dbg !4584

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4585
  br label %17, !dbg !4586

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4587
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4588 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4634, metadata !828), !dbg !4640
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4635, metadata !828), !dbg !4641
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4636, metadata !828), !dbg !4642
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4643
  %5 = load i8*, i8** %4, align 8, !dbg !4643, !tbaa !4322
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4644
  %7 = load i8*, i8** %6, align 8, !dbg !4644, !tbaa !4321
  %8 = icmp eq i8* %5, %7, !dbg !4645
  br i1 %8, label %9, label %28, !dbg !4646

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4647
  %11 = load i8*, i8** %10, align 8, !dbg !4647, !tbaa !4649
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4650
  %13 = load i8*, i8** %12, align 8, !dbg !4650, !tbaa !4651
  %14 = icmp eq i8* %11, %13, !dbg !4652
  br i1 %14, label %15, label %28, !dbg !4653

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4654
  %17 = load i8*, i8** %16, align 8, !dbg !4654, !tbaa !4655
  %18 = icmp eq i8* %17, null, !dbg !4656
  br i1 %18, label %19, label %28, !dbg !4657

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4659
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4660
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4637, metadata !828), !dbg !4662
  %22 = icmp eq i64 %21, -1, !dbg !4663
  br i1 %22, label %30, label %23, !dbg !4665

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4666
  %25 = load i32, i32* %24, align 8, !dbg !4667, !tbaa !4093
  %26 = and i32 %25, -17, !dbg !4667
  store i32 %26, i32* %24, align 8, !dbg !4667, !tbaa !4093
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4668
  store i64 %21, i64* %27, align 8, !dbg !4669, !tbaa !4670
  br label %30, !dbg !4671

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4672
  br label %30, !dbg !4673

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4674
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
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !71, !77, !86, !539, !93, !100, !761, !184, !768, !785, !787, !798, !802, !804, !807, !809, !193, !812, !814, !816}
!llvm.ident = !{!818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818, !818}
!llvm.module.flags = !{!819, !820, !821, !822}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !57, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !25)
!3 = !DIFile(filename: "src/nproc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nproc_query", file: !6, line: 32, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/nproc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "NPROC_ALL", value: 0)
!9 = !DIEnumerator(name: "NPROC_CURRENT", value: 1)
!10 = !DIEnumerator(name: "NPROC_CURRENT_OVERRIDABLE", value: 2)
!11 = !{!12, !14, !15, !18, !20, !23}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 62, baseType: !17)
!16 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!25 = !{!26, !0}
!26 = !DIGlobalVariableExpression(var: !27)
!27 = distinct !DIGlobalVariable(name: "infomap", scope: !28, file: !29, line: 632, type: !54, isLocal: true, isDefinition: true)
!28 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !29, file: !29, line: 630, type: !30, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !32)
!29 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !DISubroutineType(types: !31)
!31 = !{null, !23}
!32 = !{!33, !34, !35, !42, !44, !45, !46, !49, !50, !52}
!33 = !DILocalVariable(name: "program", arg: 1, scope: !28, file: !29, line: 630, type: !23)
!34 = !DILocalVariable(name: "node", scope: !28, file: !29, line: 642, type: !23)
!35 = !DILocalVariable(name: "map_prog", scope: !28, file: !29, line: 643, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !28, file: !29, line: 632, size: 128, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !38, file: !29, line: 632, baseType: !23, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !38, file: !29, line: 632, baseType: !23, size: 64, offset: 64)
!42 = !DILocalVariable(name: "__s1_len", scope: !43, file: !29, line: 645, type: !15)
!43 = distinct !DILexicalBlock(scope: !28, file: !29, line: 645, column: 33)
!44 = !DILocalVariable(name: "__s2_len", scope: !43, file: !29, line: 645, type: !15)
!45 = !DILocalVariable(name: "lc_messages", scope: !28, file: !29, line: 655, type: !23)
!46 = !DILocalVariable(name: "__s1_len", scope: !47, file: !29, line: 656, type: !15)
!47 = distinct !DILexicalBlock(scope: !48, file: !29, line: 656, column: 22)
!48 = distinct !DILexicalBlock(scope: !28, file: !29, line: 656, column: 7)
!49 = !DILocalVariable(name: "__s2_len", scope: !47, file: !29, line: 656, type: !15)
!50 = !DILocalVariable(name: "__s2", scope: !51, file: !29, line: 656, type: !20)
!51 = distinct !DILexicalBlock(scope: !47, file: !29, line: 656, column: 22)
!52 = !DILocalVariable(name: "__result", scope: !51, file: !29, line: 656, type: !53)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 896, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 7)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1280, elements: !67)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !60, line: 104, size: 256, elements: !61)
!60 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!61 = !{!62, !63, !64, !66}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !60, line: 106, baseType: !23, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !59, file: !60, line: 109, baseType: !53, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !59, file: !60, line: 110, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !59, file: !60, line: 111, baseType: !53, size: 32, offset: 192)
!67 = !{!68}
!68 = !DISubrange(count: 5)
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "Version", scope: !71, file: !72, line: 2, type: !23, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, globals: !74)
!72 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!73 = !{}
!74 = !{!69}
!75 = !DIGlobalVariableExpression(var: !76)
!76 = distinct !DIGlobalVariable(name: "file_name", scope: !77, file: !82, line: 36, type: !23, isLocal: true, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, globals: !79)
!78 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !{!75, !80}
!80 = !DIGlobalVariableExpression(var: !81)
!81 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !77, file: !82, line: 46, type: !83, isLocal: true, isDefinition: true)
!82 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "exit_failure", scope: !86, file: !89, line: 24, type: !90, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, globals: !88)
!87 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{!84}
!89 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!90 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "program_name", scope: !93, file: !97, line: 33, type: !23, isLocal: false, isDefinition: true)
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !95, globals: !96)
!94 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !{!14, !12}
!96 = !{!91}
!97 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !100, file: !142, line: 77, type: !178, isLocal: false, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !102, retainedTypes: !137, globals: !139)
!101 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !{!103, !117, !122}
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !104, line: 32, size: 32, elements: !105)
!104 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!106 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!107 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!108 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!109 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!110 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!111 = !DIEnumerator(name: "c_quoting_style", value: 5)
!112 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!113 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!114 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!115 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!116 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !104, line: 242, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!120 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!121 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 46, size: 32, elements: !124)
!123 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!125 = !DIEnumerator(name: "_ISupper", value: 256)
!126 = !DIEnumerator(name: "_ISlower", value: 512)
!127 = !DIEnumerator(name: "_ISalpha", value: 1024)
!128 = !DIEnumerator(name: "_ISdigit", value: 2048)
!129 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!130 = !DIEnumerator(name: "_ISspace", value: 8192)
!131 = !DIEnumerator(name: "_ISprint", value: 16384)
!132 = !DIEnumerator(name: "_ISgraph", value: 32768)
!133 = !DIEnumerator(name: "_ISblank", value: 1)
!134 = !DIEnumerator(name: "_IScntrl", value: 2)
!135 = !DIEnumerator(name: "_ISpunct", value: 4)
!136 = !DIEnumerator(name: "_ISalnum", value: 8)
!137 = !{!53, !138, !15, !12}
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !{!98, !140, !147, !160, !162, !167, !174, !176}
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !100, file: !142, line: 93, type: !143, isLocal: false, isDefinition: true)
!142 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 320, elements: !145)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!145 = !{!146}
!146 = !DISubrange(count: 10)
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !100, file: !142, line: 1043, type: !149, isLocal: false, isDefinition: true)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !142, line: 57, size: 448, elements: !150)
!150 = !{!151, !152, !153, !158, !159}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !149, file: !142, line: 60, baseType: !103, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !142, line: 63, baseType: !53, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !149, file: !142, line: 67, baseType: !154, size: 256, offset: 64)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !156)
!155 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!156 = !{!157}
!157 = !DISubrange(count: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !149, file: !142, line: 70, baseType: !23, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !149, file: !142, line: 73, baseType: !23, size: 64, offset: 384)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !100, file: !142, line: 108, type: !149, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "slot0", scope: !100, file: !142, line: 834, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 256)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "slotvec", scope: !100, file: !142, line: 837, type: !169, isLocal: true, isDefinition: true)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !142, line: 826, size: 128, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !170, file: !142, line: 828, baseType: !15, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !170, file: !142, line: 829, baseType: !12, size: 64, offset: 64)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "nslots", scope: !100, file: !142, line: 835, type: !53, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "slotvec0", scope: !100, file: !142, line: 836, type: !170, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 704, elements: !180)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!180 = !{!181}
!181 = !DISubrange(count: 11)
!182 = !DIGlobalVariableExpression(var: !183)
!183 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !184, file: !187, line: 26, type: !188, isLocal: false, isDefinition: true)
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, globals: !186)
!185 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !{!182}
!187 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 376, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 47)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !193, file: !537, line: 120, type: !538, isLocal: true, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !195, retainedTypes: !534, globals: !536)
!194 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !{!196}
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 41, size: 32, elements: !198)
!197 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533}
!199 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!200 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!201 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!202 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!203 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!204 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!205 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!206 = !DIEnumerator(name: "DAY_1", value: 131079)
!207 = !DIEnumerator(name: "DAY_2", value: 131080)
!208 = !DIEnumerator(name: "DAY_3", value: 131081)
!209 = !DIEnumerator(name: "DAY_4", value: 131082)
!210 = !DIEnumerator(name: "DAY_5", value: 131083)
!211 = !DIEnumerator(name: "DAY_6", value: 131084)
!212 = !DIEnumerator(name: "DAY_7", value: 131085)
!213 = !DIEnumerator(name: "ABMON_1", value: 131086)
!214 = !DIEnumerator(name: "ABMON_2", value: 131087)
!215 = !DIEnumerator(name: "ABMON_3", value: 131088)
!216 = !DIEnumerator(name: "ABMON_4", value: 131089)
!217 = !DIEnumerator(name: "ABMON_5", value: 131090)
!218 = !DIEnumerator(name: "ABMON_6", value: 131091)
!219 = !DIEnumerator(name: "ABMON_7", value: 131092)
!220 = !DIEnumerator(name: "ABMON_8", value: 131093)
!221 = !DIEnumerator(name: "ABMON_9", value: 131094)
!222 = !DIEnumerator(name: "ABMON_10", value: 131095)
!223 = !DIEnumerator(name: "ABMON_11", value: 131096)
!224 = !DIEnumerator(name: "ABMON_12", value: 131097)
!225 = !DIEnumerator(name: "MON_1", value: 131098)
!226 = !DIEnumerator(name: "MON_2", value: 131099)
!227 = !DIEnumerator(name: "MON_3", value: 131100)
!228 = !DIEnumerator(name: "MON_4", value: 131101)
!229 = !DIEnumerator(name: "MON_5", value: 131102)
!230 = !DIEnumerator(name: "MON_6", value: 131103)
!231 = !DIEnumerator(name: "MON_7", value: 131104)
!232 = !DIEnumerator(name: "MON_8", value: 131105)
!233 = !DIEnumerator(name: "MON_9", value: 131106)
!234 = !DIEnumerator(name: "MON_10", value: 131107)
!235 = !DIEnumerator(name: "MON_11", value: 131108)
!236 = !DIEnumerator(name: "MON_12", value: 131109)
!237 = !DIEnumerator(name: "AM_STR", value: 131110)
!238 = !DIEnumerator(name: "PM_STR", value: 131111)
!239 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!240 = !DIEnumerator(name: "D_FMT", value: 131113)
!241 = !DIEnumerator(name: "T_FMT", value: 131114)
!242 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!243 = !DIEnumerator(name: "ERA", value: 131116)
!244 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!245 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!246 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!247 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!248 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!249 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!250 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!251 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!252 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!253 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!254 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!255 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!256 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!257 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!258 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!259 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!260 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!261 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!262 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!263 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!264 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!265 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!266 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!267 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!268 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!269 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!270 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!271 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!272 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!273 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!274 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!275 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!276 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!277 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!278 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!279 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!280 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!281 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!282 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!283 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!284 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!285 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!286 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!287 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!288 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!289 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!290 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!291 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!292 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!293 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!294 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!295 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!296 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!297 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!298 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!299 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!300 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!301 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!302 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!303 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!304 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!305 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!306 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!307 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!308 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!309 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!310 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!311 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!312 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!313 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!314 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!315 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!316 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!317 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!318 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!319 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!320 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!321 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!322 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!323 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!324 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!325 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!326 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!327 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!328 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!329 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!330 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!331 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!332 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!333 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!334 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!335 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!336 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!337 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!338 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!339 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!340 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!341 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!342 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!343 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!344 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!345 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!346 = !DIEnumerator(name: "CODESET", value: 14)
!347 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!348 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!349 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!350 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!399 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!401 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!402 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!403 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!418 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!419 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!420 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!421 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!422 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!423 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!424 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!425 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!426 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!427 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!428 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!429 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!430 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!431 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!432 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!433 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!434 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!435 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!436 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!437 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!438 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!439 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!440 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!457 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!458 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!461 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!462 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!463 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!464 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!465 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!466 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!467 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!468 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!469 = !DIEnumerator(name: "THOUSEP", value: 65537)
!470 = !DIEnumerator(name: "__GROUPING", value: 65538)
!471 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!472 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!473 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!474 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!475 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!476 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!477 = !DIEnumerator(name: "__YESSTR", value: 327682)
!478 = !DIEnumerator(name: "__NOSTR", value: 327683)
!479 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!480 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!481 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!482 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!483 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!484 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!485 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!486 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!487 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!488 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!489 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!490 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!491 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!492 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!493 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!494 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!495 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!496 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!497 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!498 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!499 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!500 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!501 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!502 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!503 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!504 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!505 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!506 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!507 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!508 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!509 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!510 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!511 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!512 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!513 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!514 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!515 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!532 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!533 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!534 = !{!14, !12, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!536 = !{!191}
!537 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!538 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!539 = distinct !DICompileUnit(language: DW_LANG_C99, file: !540, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !541, retainedTypes: !760)
!540 = !DIFile(filename: "./lib/nproc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!541 = !{!5, !542}
!542 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !543, line: 71, size: 32, elements: !544)
!543 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!545 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!546 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!547 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!548 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!549 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!550 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!551 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!552 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!553 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!554 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!555 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!556 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!557 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!558 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!559 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!560 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!561 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!562 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!563 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!564 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!565 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!566 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!567 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!568 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!569 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!570 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!571 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!572 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!573 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!574 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!575 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!576 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!577 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!578 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!579 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!580 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!581 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!582 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!583 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!584 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!585 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!586 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!587 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!588 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!589 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!590 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!591 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!592 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!593 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!594 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!595 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!596 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!597 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!598 = !DIEnumerator(name: "_SC_PII", value: 53)
!599 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!600 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!601 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!602 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!603 = !DIEnumerator(name: "_SC_POLL", value: 58)
!604 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!605 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!606 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!607 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!608 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!609 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!610 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!611 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!612 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!613 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!614 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!615 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!616 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!617 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!618 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!619 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!620 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!621 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!622 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!623 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!624 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!625 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!626 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!627 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!628 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!629 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!630 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!631 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!632 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!633 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!634 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!635 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!636 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!637 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!638 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!639 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!640 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!641 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!642 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!643 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!644 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!645 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!646 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!647 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!648 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!649 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!650 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!651 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!652 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!653 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!654 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!655 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!656 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!657 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!658 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!659 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!660 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!661 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!662 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!663 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!664 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!665 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!666 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!667 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!668 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!669 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!670 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!671 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!672 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!673 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!674 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!675 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!676 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!677 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!678 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!679 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!680 = !DIEnumerator(name: "_SC_BASE", value: 134)
!681 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!682 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!683 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!684 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!685 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!686 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!687 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!688 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!689 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!690 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!691 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!692 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!693 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!694 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!695 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!696 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!697 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!698 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!699 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!700 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!701 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!702 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!703 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!704 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!705 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!706 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!707 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!708 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!709 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!710 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!711 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!712 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!713 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!714 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!715 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!716 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!717 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!718 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!719 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!720 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!721 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!722 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!723 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!724 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!725 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!726 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!727 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!728 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!729 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!730 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!731 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!732 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!733 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!734 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!735 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!736 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!737 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!738 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!739 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!740 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!741 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!742 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!743 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!744 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!745 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!746 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!747 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!748 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!749 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!750 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!751 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!752 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!753 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!754 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!755 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!756 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!757 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!758 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!759 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!760 = !{!14}
!761 = distinct !DICompileUnit(language: DW_LANG_C99, file: !762, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !763, retainedTypes: !760)
!762 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!763 = !{!764}
!764 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !765, line: 41, size: 32, elements: !766)
!765 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!766 = !{!767}
!767 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!768 = distinct !DICompileUnit(language: DW_LANG_C99, file: !769, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !770, retainedTypes: !784)
!769 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!770 = !{!771}
!771 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !773, file: !772, line: 192, size: 32, elements: !782)
!772 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!773 = distinct !DISubprogram(name: "x2nrealloc", scope: !772, file: !772, line: 180, type: !774, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !768, variables: !777)
!774 = !DISubroutineType(types: !775)
!775 = !{!14, !14, !776, !15}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!777 = !{!778, !779, !780, !781}
!778 = !DILocalVariable(name: "p", arg: 1, scope: !773, file: !772, line: 180, type: !14)
!779 = !DILocalVariable(name: "pn", arg: 2, scope: !773, file: !772, line: 180, type: !776)
!780 = !DILocalVariable(name: "s", arg: 3, scope: !773, file: !772, line: 180, type: !15)
!781 = !DILocalVariable(name: "n", scope: !773, file: !772, line: 182, type: !15)
!782 = !{!783}
!783 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!784 = !{!15, !12, !14}
!785 = distinct !DICompileUnit(language: DW_LANG_C99, file: !786, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73)
!786 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!787 = distinct !DICompileUnit(language: DW_LANG_C99, file: !788, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !789)
!788 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!789 = !{!790}
!790 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !791, line: 26, size: 32, elements: !792)
!791 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!792 = !{!793, !794, !795, !796, !797}
!793 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!794 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!795 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!796 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!797 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!798 = distinct !DICompileUnit(language: DW_LANG_C99, file: !799, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !800, retainedTypes: !801)
!799 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!800 = !{!790, !122}
!801 = !{!53, !138, !12}
!802 = distinct !DICompileUnit(language: DW_LANG_C99, file: !803, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !760)
!803 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!804 = distinct !DICompileUnit(language: DW_LANG_C99, file: !805, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !806)
!805 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!806 = !{!15}
!807 = distinct !DICompileUnit(language: DW_LANG_C99, file: !808, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73)
!808 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!809 = distinct !DICompileUnit(language: DW_LANG_C99, file: !810, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !811)
!810 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!811 = !{!15, !18, !20, !23}
!812 = distinct !DICompileUnit(language: DW_LANG_C99, file: !813, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73)
!813 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!814 = distinct !DICompileUnit(language: DW_LANG_C99, file: !815, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !760)
!815 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!816 = distinct !DICompileUnit(language: DW_LANG_C99, file: !817, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !760)
!817 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!818 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!819 = !{i32 2, !"Dwarf Version", i32 4}
!820 = !{i32 2, !"Debug Info Version", i32 3}
!821 = !{i32 1, !"PIC Level", i32 2}
!822 = !{i32 1, !"PIE Level", i32 2}
!823 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 51, type: !824, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !53}
!826 = !{!827}
!827 = !DILocalVariable(name: "status", arg: 1, scope: !823, file: !3, line: 51, type: !53)
!828 = !DIExpression()
!829 = !DILocation(line: 51, column: 12, scope: !823)
!830 = !DILocation(line: 53, column: 14, scope: !831)
!831 = distinct !DILexicalBlock(scope: !823, file: !3, line: 53, column: 7)
!832 = !DILocation(line: 53, column: 7, scope: !823)
!833 = !DILocation(line: 54, column: 5, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !3, discriminator: 1)
!835 = distinct !DILexicalBlock(scope: !831, file: !3, line: 54, column: 5)
!836 = !{!837, !837, i64 0}
!837 = !{!"any pointer", !838, i64 0}
!838 = !{!"omnipotent char", !839, i64 0}
!839 = !{!"Simple C/C++ TBAA"}
!840 = !DILocation(line: 54, column: 5, scope: !841)
!841 = !DILexicalBlockFile(scope: !835, file: !3, discriminator: 3)
!842 = !DILocation(line: 54, column: 5, scope: !843)
!843 = !DILexicalBlockFile(scope: !835, file: !3, discriminator: 2)
!844 = !DILocation(line: 57, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !831, file: !3, line: 56, column: 5)
!846 = !DILocation(line: 57, column: 7, scope: !847)
!847 = !DILexicalBlockFile(scope: !845, file: !3, discriminator: 1)
!848 = !DILocation(line: 58, column: 7, scope: !845)
!849 = !DILocation(line: 58, column: 7, scope: !847)
!850 = !DILocation(line: 63, column: 7, scope: !845)
!851 = !DILocation(line: 63, column: 7, scope: !847)
!852 = !DILocation(line: 68, column: 7, scope: !845)
!853 = !DILocation(line: 68, column: 7, scope: !847)
!854 = !DILocation(line: 69, column: 7, scope: !845)
!855 = !DILocation(line: 69, column: 7, scope: !847)
!856 = !DILocation(line: 642, column: 15, scope: !28, inlinedAt: !857)
!857 = distinct !DILocation(line: 70, column: 7, scope: !845)
!858 = !DILocation(line: 651, column: 3, scope: !28, inlinedAt: !857)
!859 = !DILocation(line: 651, column: 3, scope: !860, inlinedAt: !857)
!860 = !DILexicalBlockFile(scope: !28, file: !29, discriminator: 1)
!861 = !DILocation(line: 655, column: 29, scope: !28, inlinedAt: !857)
!862 = !DILocation(line: 655, column: 15, scope: !28, inlinedAt: !857)
!863 = !DILocation(line: 656, column: 7, scope: !48, inlinedAt: !857)
!864 = !DILocation(line: 656, column: 19, scope: !48, inlinedAt: !857)
!865 = !DILocation(line: 656, column: 22, scope: !866, inlinedAt: !857)
!866 = !DILexicalBlockFile(scope: !48, file: !29, discriminator: 16)
!867 = !DILocation(line: 656, column: 7, scope: !868, inlinedAt: !857)
!868 = !DILexicalBlockFile(scope: !28, file: !29, discriminator: 16)
!869 = !DILocation(line: 662, column: 7, scope: !870, inlinedAt: !857)
!870 = distinct !DILexicalBlock(scope: !48, file: !29, line: 657, column: 5)
!871 = !DILocation(line: 662, column: 7, scope: !872, inlinedAt: !857)
!872 = !DILexicalBlockFile(scope: !870, file: !29, discriminator: 1)
!873 = !DILocation(line: 664, column: 5, scope: !870, inlinedAt: !857)
!874 = !DILocation(line: 665, column: 3, scope: !28, inlinedAt: !857)
!875 = !DILocation(line: 665, column: 3, scope: !860, inlinedAt: !857)
!876 = !DILocation(line: 667, column: 3, scope: !28, inlinedAt: !857)
!877 = !DILocation(line: 667, column: 3, scope: !860, inlinedAt: !857)
!878 = !DILocation(line: 72, column: 3, scope: !823)
!879 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !880, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !883)
!880 = !DISubroutineType(types: !881)
!881 = !{!53, !53, !882}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!883 = !{!884, !885, !886, !887, !888, !889}
!884 = !DILocalVariable(name: "argc", arg: 1, scope: !879, file: !3, line: 76, type: !53)
!885 = !DILocalVariable(name: "argv", arg: 2, scope: !879, file: !3, line: 76, type: !882)
!886 = !DILocalVariable(name: "nproc", scope: !879, file: !3, line: 78, type: !17)
!887 = !DILocalVariable(name: "ignore", scope: !879, file: !3, line: 78, type: !17)
!888 = !DILocalVariable(name: "mode", scope: !879, file: !3, line: 87, type: !5)
!889 = !DILocalVariable(name: "c", scope: !890, file: !3, line: 91, type: !53)
!890 = distinct !DILexicalBlock(scope: !879, file: !3, line: 90, column: 5)
!891 = !DILocation(line: 76, column: 11, scope: !879)
!892 = !DILocation(line: 76, column: 24, scope: !879)
!893 = !DILocation(line: 78, column: 24, scope: !879)
!894 = !DILocation(line: 80, column: 21, scope: !879)
!895 = !DILocation(line: 80, column: 3, scope: !879)
!896 = !DILocation(line: 81, column: 3, scope: !879)
!897 = !DILocation(line: 82, column: 3, scope: !879)
!898 = !DILocation(line: 83, column: 3, scope: !879)
!899 = !DILocation(line: 85, column: 3, scope: !879)
!900 = !DILocation(line: 87, column: 20, scope: !879)
!901 = !DILocation(line: 89, column: 3, scope: !879)
!902 = !DILocation(line: 91, column: 15, scope: !890)
!903 = !DILocation(line: 91, column: 11, scope: !890)
!904 = !DILocation(line: 92, column: 11, scope: !890)
!905 = !DILocation(line: 96, column: 9, scope: !906)
!906 = distinct !DILexicalBlock(scope: !890, file: !3, line: 95, column: 9)
!907 = !DILocation(line: 98, column: 9, scope: !906)
!908 = !DILocation(line: 98, column: 9, scope: !909)
!909 = !DILexicalBlockFile(scope: !906, file: !3, discriminator: 1)
!910 = !DILocation(line: 105, column: 32, scope: !906)
!911 = !DILocation(line: 105, column: 58, scope: !906)
!912 = !DILocation(line: 105, column: 20, scope: !909)
!913 = !DILocation(line: 106, column: 11, scope: !906)
!914 = !DILocation(line: 109, column: 11, scope: !906)
!915 = !DILocation(line: 113, column: 15, scope: !916)
!916 = distinct !DILexicalBlock(scope: !879, file: !3, line: 113, column: 7)
!917 = !{!918, !918, i64 0}
!918 = !{!"int", !838, i64 0}
!919 = !DILocation(line: 113, column: 12, scope: !916)
!920 = !DILocation(line: 113, column: 7, scope: !879)
!921 = !DILocation(line: 115, column: 20, scope: !922)
!922 = distinct !DILexicalBlock(scope: !916, file: !3, line: 114, column: 5)
!923 = !DILocation(line: 115, column: 55, scope: !922)
!924 = !DILocation(line: 115, column: 50, scope: !922)
!925 = !DILocation(line: 115, column: 43, scope: !926)
!926 = !DILexicalBlockFile(scope: !922, file: !3, discriminator: 1)
!927 = !DILocation(line: 115, column: 7, scope: !928)
!928 = !DILexicalBlockFile(scope: !922, file: !3, discriminator: 2)
!929 = !DILocation(line: 116, column: 7, scope: !922)
!930 = !DILocation(line: 119, column: 11, scope: !879)
!931 = !DILocation(line: 78, column: 17, scope: !879)
!932 = !DILocation(line: 121, column: 14, scope: !933)
!933 = distinct !DILexicalBlock(scope: !879, file: !3, line: 121, column: 7)
!934 = !DILocation(line: 122, column: 11, scope: !933)
!935 = !DILocation(line: 121, column: 7, scope: !879)
!936 = !DILocation(line: 126, column: 3, scope: !879)
!937 = !DILocation(line: 129, column: 1, scope: !879)
!938 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !82, file: !82, line: 41, type: !30, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !939)
!939 = !{!940}
!940 = !DILocalVariable(name: "file", arg: 1, scope: !938, file: !82, line: 41, type: !23)
!941 = !DILocation(line: 41, column: 41, scope: !938)
!942 = !DILocation(line: 43, column: 13, scope: !938)
!943 = !DILocation(line: 44, column: 1, scope: !938)
!944 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !82, file: !82, line: 78, type: !945, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !83}
!947 = !{!948}
!948 = !DILocalVariable(name: "ignore", arg: 1, scope: !944, file: !82, line: 78, type: !83)
!949 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!950 = !DILocation(line: 78, column: 37, scope: !944)
!951 = !DILocation(line: 80, column: 16, scope: !944)
!952 = !{!953, !953, i64 0}
!953 = !{!"_Bool", !838, i64 0}
!954 = !DILocation(line: 81, column: 1, scope: !944)
!955 = distinct !DISubprogram(name: "close_stdout", scope: !82, file: !82, line: 107, type: !956, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !77, variables: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{null}
!958 = !{!959}
!959 = !DILocalVariable(name: "write_error", scope: !960, file: !82, line: 112, type: !23)
!960 = distinct !DILexicalBlock(scope: !961, file: !82, line: 111, column: 5)
!961 = distinct !DILexicalBlock(scope: !955, file: !82, line: 109, column: 7)
!962 = !DILocation(line: 109, column: 21, scope: !961)
!963 = !DILocation(line: 109, column: 7, scope: !961)
!964 = !DILocation(line: 109, column: 29, scope: !961)
!965 = !DILocation(line: 110, column: 7, scope: !961)
!966 = !DILocation(line: 110, column: 12, scope: !967)
!967 = !DILexicalBlockFile(scope: !961, file: !82, discriminator: 1)
!968 = !{i8 0, i8 2}
!969 = !DILocation(line: 114, column: 19, scope: !970)
!970 = distinct !DILexicalBlock(scope: !960, file: !82, line: 113, column: 11)
!971 = !DILocation(line: 110, column: 25, scope: !967)
!972 = !DILocation(line: 110, column: 28, scope: !973)
!973 = !DILexicalBlockFile(scope: !961, file: !82, discriminator: 2)
!974 = !DILocation(line: 110, column: 34, scope: !973)
!975 = !DILocation(line: 109, column: 7, scope: !976)
!976 = !DILexicalBlockFile(scope: !955, file: !82, discriminator: 1)
!977 = !DILocation(line: 112, column: 33, scope: !960)
!978 = !DILocation(line: 112, column: 19, scope: !960)
!979 = !DILocation(line: 113, column: 11, scope: !970)
!980 = !DILocation(line: 113, column: 11, scope: !960)
!981 = !DILocation(line: 114, column: 36, scope: !982)
!982 = !DILexicalBlockFile(scope: !970, file: !82, discriminator: 1)
!983 = !DILocation(line: 114, column: 9, scope: !984)
!984 = !DILexicalBlockFile(scope: !970, file: !82, discriminator: 2)
!985 = !DILocation(line: 114, column: 9, scope: !970)
!986 = !DILocation(line: 117, column: 9, scope: !982)
!987 = !DILocation(line: 119, column: 14, scope: !960)
!988 = !DILocation(line: 119, column: 7, scope: !960)
!989 = !DILocation(line: 122, column: 22, scope: !990)
!990 = distinct !DILexicalBlock(scope: !955, file: !82, line: 122, column: 8)
!991 = !DILocation(line: 122, column: 8, scope: !990)
!992 = !DILocation(line: 122, column: 30, scope: !990)
!993 = !DILocation(line: 122, column: 8, scope: !955)
!994 = !DILocation(line: 123, column: 13, scope: !990)
!995 = !DILocation(line: 123, column: 6, scope: !990)
!996 = !DILocation(line: 124, column: 1, scope: !955)
!997 = distinct !DISubprogram(name: "num_processors", scope: !998, file: !998, line: 371, type: !999, isLocal: false, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !1001)
!998 = !DIFile(filename: "lib/nproc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!999 = !DISubroutineType(types: !1000)
!1000 = !{!17, !5}
!1001 = !{!1002, !1003, !1004, !1007}
!1002 = !DILocalVariable(name: "query", arg: 1, scope: !997, file: !998, line: 371, type: !5)
!1003 = !DILocalVariable(name: "omp_env_limit", scope: !997, file: !998, line: 373, type: !17)
!1004 = !DILocalVariable(name: "omp_env_threads", scope: !1005, file: !998, line: 377, type: !17)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !998, line: 376, column: 5)
!1006 = distinct !DILexicalBlock(scope: !997, file: !998, line: 375, column: 7)
!1007 = !DILocalVariable(name: "nprocs", scope: !1008, file: !998, line: 392, type: !17)
!1008 = distinct !DILexicalBlock(scope: !997, file: !998, line: 391, column: 3)
!1009 = !DILocation(line: 371, column: 34, scope: !997)
!1010 = !DILocation(line: 373, column: 21, scope: !997)
!1011 = !DILocation(line: 375, column: 13, scope: !1006)
!1012 = !DILocation(line: 375, column: 7, scope: !997)
!1013 = !DILocation(line: 380, column: 44, scope: !1005)
!1014 = !DILocation(line: 380, column: 25, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !1005, file: !998, discriminator: 1)
!1016 = !DILocation(line: 377, column: 25, scope: !1005)
!1017 = !DILocation(line: 381, column: 42, scope: !1005)
!1018 = !DILocation(line: 381, column: 23, scope: !1015)
!1019 = !DILocation(line: 382, column: 13, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1005, file: !998, line: 382, column: 11)
!1021 = !DILocation(line: 382, column: 11, scope: !1005)
!1022 = !DILocation(line: 385, column: 11, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1005, file: !998, line: 385, column: 11)
!1024 = !DILocation(line: 386, column: 16, scope: !1023)
!1025 = !DILocalVariable(name: "query", arg: 1, scope: !1026, file: !998, line: 206, type: !5)
!1026 = distinct !DISubprogram(name: "num_processors_ignoring_omp", scope: !998, file: !998, line: 206, type: !999, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !1027)
!1027 = !{!1025, !1028, !1032, !1035, !1038}
!1028 = !DILocalVariable(name: "nprocs", scope: !1029, file: !998, line: 226, type: !17)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !998, line: 225, column: 7)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !998, line: 223, column: 5)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !998, line: 222, column: 7)
!1032 = !DILocalVariable(name: "nprocs", scope: !1033, file: !998, line: 235, type: !1034)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !998, line: 233, column: 7)
!1034 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1035 = !DILocalVariable(name: "nprocs", scope: !1036, file: !998, line: 246, type: !1034)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !998, line: 244, column: 7)
!1037 = distinct !DILexicalBlock(scope: !1031, file: !998, line: 242, column: 5)
!1038 = !DILocalVariable(name: "nprocs_current", scope: !1039, file: !998, line: 256, type: !17)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !998, line: 255, column: 11)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !998, line: 254, column: 13)
!1041 = !DILocation(line: 206, column: 47, scope: !1026, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 392, column: 28, scope: !1008)
!1043 = !DILocation(line: 222, column: 13, scope: !1031, inlinedAt: !1042)
!1044 = !DILocation(line: 222, column: 7, scope: !1026, inlinedAt: !1042)
!1045 = !DILocation(line: 129, column: 5, scope: !1046, inlinedAt: !1064)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !998, line: 128, column: 3)
!1047 = distinct !DISubprogram(name: "num_processors_via_affinity_mask", scope: !998, file: !998, line: 69, type: !1048, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!17}
!1050 = !{!1051, !1061}
!1051 = !DILocalVariable(name: "set", scope: !1046, file: !998, line: 129, type: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !1053, line: 129, baseType: !1054)
!1053 = !DIFile(filename: "/usr/include/bits/sched.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1053, line: 126, size: 1024, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !1054, file: !1053, line: 128, baseType: !1057, size: 1024)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1058, size: 1024, elements: !1059)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !1053, line: 119, baseType: !17)
!1059 = !{!1060}
!1060 = !DISubrange(count: 16)
!1061 = !DILocalVariable(name: "count", scope: !1062, file: !998, line: 133, type: !17)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !998, line: 132, column: 7)
!1063 = distinct !DILexicalBlock(scope: !1046, file: !998, line: 131, column: 9)
!1064 = distinct !DILocation(line: 226, column: 32, scope: !1029, inlinedAt: !1042)
!1065 = !DIExpression(DW_OP_deref)
!1066 = !DILocation(line: 129, column: 15, scope: !1046, inlinedAt: !1064)
!1067 = !DILocation(line: 131, column: 9, scope: !1063, inlinedAt: !1064)
!1068 = !DILocation(line: 131, column: 51, scope: !1063, inlinedAt: !1064)
!1069 = !DILocation(line: 131, column: 9, scope: !1046, inlinedAt: !1064)
!1070 = !DILocation(line: 137, column: 17, scope: !1062, inlinedAt: !1064)
!1071 = !DILocation(line: 146, column: 19, scope: !1072, inlinedAt: !1064)
!1072 = distinct !DILexicalBlock(scope: !1062, file: !998, line: 146, column: 13)
!1073 = !DILocation(line: 149, column: 3, scope: !1047, inlinedAt: !1064)
!1074 = !DILocation(line: 235, column: 27, scope: !1033, inlinedAt: !1042)
!1075 = !DILocation(line: 235, column: 18, scope: !1033, inlinedAt: !1042)
!1076 = !DILocation(line: 236, column: 20, scope: !1077, inlinedAt: !1042)
!1077 = distinct !DILexicalBlock(scope: !1033, file: !998, line: 236, column: 13)
!1078 = !DILocation(line: 226, column: 23, scope: !1029, inlinedAt: !1042)
!1079 = !DILocation(line: 246, column: 27, scope: !1036, inlinedAt: !1042)
!1080 = !DILocation(line: 246, column: 18, scope: !1036, inlinedAt: !1042)
!1081 = !DILocation(line: 254, column: 20, scope: !1040, inlinedAt: !1042)
!1082 = !DILocation(line: 254, column: 13, scope: !1036, inlinedAt: !1042)
!1083 = !DILocation(line: 129, column: 5, scope: !1046, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 256, column: 44, scope: !1039, inlinedAt: !1042)
!1085 = !DILocation(line: 129, column: 15, scope: !1046, inlinedAt: !1084)
!1086 = !DILocation(line: 131, column: 9, scope: !1063, inlinedAt: !1084)
!1087 = !DILocation(line: 131, column: 51, scope: !1063, inlinedAt: !1084)
!1088 = !DILocation(line: 131, column: 9, scope: !1046, inlinedAt: !1084)
!1089 = !DILocation(line: 137, column: 17, scope: !1062, inlinedAt: !1084)
!1090 = !DILocation(line: 146, column: 19, scope: !1072, inlinedAt: !1084)
!1091 = !DILocation(line: 149, column: 3, scope: !1047, inlinedAt: !1084)
!1092 = !DILocation(line: 256, column: 27, scope: !1039, inlinedAt: !1042)
!1093 = !DILocation(line: 264, column: 11, scope: !1094, inlinedAt: !1042)
!1094 = distinct !DILexicalBlock(scope: !1036, file: !998, line: 263, column: 13)
!1095 = !DILocation(line: 330, column: 3, scope: !1026, inlinedAt: !1042)
!1096 = !DILocation(line: 392, column: 19, scope: !1008)
!1097 = !DILocation(line: 393, column: 12, scope: !1008)
!1098 = !DILocation(line: 395, column: 1, scope: !997)
!1099 = distinct !DISubprogram(name: "parse_omp_threads", scope: !998, file: !998, line: 336, type: !1100, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!17, !23}
!1102 = !{!1103, !1104, !1105, !1108}
!1103 = !DILocalVariable(name: "threads", arg: 1, scope: !1099, file: !998, line: 336, type: !23)
!1104 = !DILocalVariable(name: "ret", scope: !1099, file: !998, line: 338, type: !17)
!1105 = !DILocalVariable(name: "endptr", scope: !1106, file: !998, line: 351, type: !12)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !998, line: 350, column: 5)
!1107 = distinct !DILexicalBlock(scope: !1099, file: !998, line: 349, column: 7)
!1108 = !DILocalVariable(name: "value", scope: !1106, file: !998, line: 352, type: !17)
!1109 = !DILocation(line: 336, column: 32, scope: !1099)
!1110 = !DILocation(line: 338, column: 21, scope: !1099)
!1111 = !DILocation(line: 340, column: 15, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1099, file: !998, line: 340, column: 7)
!1113 = !DILocation(line: 340, column: 7, scope: !1099)
!1114 = !DILocation(line: 345, column: 10, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1099, file: !998, discriminator: 1)
!1116 = !{!838, !838, i64 0}
!1117 = !DILocation(line: 345, column: 19, scope: !1115)
!1118 = !DILocation(line: 345, column: 27, scope: !1115)
!1119 = !DILocalVariable(name: "c", arg: 1, scope: !1120, file: !1121, line: 300, type: !53)
!1120 = distinct !DISubprogram(name: "c_isspace", scope: !1121, file: !1121, line: 300, type: !1122, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !1124)
!1121 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!83, !53}
!1124 = !{!1119}
!1125 = !DILocation(line: 300, column: 16, scope: !1120, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 345, column: 30, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1099, file: !998, discriminator: 2)
!1128 = !DILocation(line: 302, column: 3, scope: !1120, inlinedAt: !1126)
!1129 = !DILocation(line: 345, column: 3, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1099, file: !998, discriminator: 3)
!1131 = !DILocation(line: 346, column: 12, scope: !1099)
!1132 = distinct !{!1132, !1133, !1131}
!1133 = !DILocation(line: 345, column: 3, scope: !1099)
!1134 = !DILocation(line: 349, column: 18, scope: !1107)
!1135 = !DILocalVariable(name: "c", arg: 1, scope: !1136, file: !1121, line: 233, type: !53)
!1136 = distinct !DISubprogram(name: "c_isdigit", scope: !1121, file: !1121, line: 233, type: !1122, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !1137)
!1137 = !{!1135}
!1138 = !DILocation(line: 233, column: 16, scope: !1136, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 349, column: 7, scope: !1107)
!1140 = !DILocation(line: 235, column: 3, scope: !1136, inlinedAt: !1139)
!1141 = !DILocation(line: 349, column: 7, scope: !1099)
!1142 = !DILocation(line: 351, column: 7, scope: !1106)
!1143 = !DILocation(line: 351, column: 13, scope: !1106)
!1144 = !DILocation(line: 352, column: 33, scope: !1106)
!1145 = !DILocation(line: 352, column: 25, scope: !1106)
!1146 = !DILocation(line: 354, column: 11, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1106, file: !998, line: 354, column: 11)
!1148 = !DILocation(line: 354, column: 18, scope: !1147)
!1149 = !DILocation(line: 354, column: 11, scope: !1106)
!1150 = !DILocation(line: 356, column: 18, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1152, file: !998, discriminator: 1)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !998, line: 355, column: 9)
!1153 = !DILocation(line: 356, column: 26, scope: !1151)
!1154 = !DILocation(line: 356, column: 34, scope: !1151)
!1155 = !DILocation(line: 300, column: 16, scope: !1120, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 356, column: 37, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1152, file: !998, discriminator: 2)
!1158 = !DILocation(line: 302, column: 3, scope: !1120, inlinedAt: !1156)
!1159 = !DILocation(line: 357, column: 19, scope: !1152)
!1160 = !DILocation(line: 356, column: 11, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1152, file: !998, discriminator: 3)
!1162 = distinct !{!1162, !1163, !1159}
!1163 = !DILocation(line: 356, column: 11, scope: !1152)
!1164 = !DILocation(line: 358, column: 15, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1152, file: !998, line: 358, column: 15)
!1166 = !DILocation(line: 358, column: 15, scope: !1152)
!1167 = !DILocation(line: 365, column: 5, scope: !1107)
!1168 = !DILocation(line: 368, column: 1, scope: !1099)
!1169 = distinct !DISubprogram(name: "set_program_name", scope: !97, file: !97, line: 39, type: !30, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DILocalVariable(name: "argv0", arg: 1, scope: !1169, file: !97, line: 39, type: !23)
!1172 = !DILocalVariable(name: "slash", scope: !1169, file: !97, line: 46, type: !23)
!1173 = !DILocalVariable(name: "base", scope: !1169, file: !97, line: 47, type: !23)
!1174 = !DILocation(line: 39, column: 31, scope: !1169)
!1175 = !DILocation(line: 51, column: 13, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1169, file: !97, line: 51, column: 7)
!1177 = !DILocation(line: 51, column: 7, scope: !1169)
!1178 = !DILocation(line: 55, column: 14, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !97, line: 52, column: 5)
!1180 = !DILocation(line: 54, column: 7, scope: !1179)
!1181 = !DILocation(line: 56, column: 7, scope: !1179)
!1182 = !DILocation(line: 59, column: 11, scope: !1169)
!1183 = !DILocation(line: 46, column: 15, scope: !1169)
!1184 = !DILocation(line: 60, column: 17, scope: !1169)
!1185 = !DILocation(line: 60, column: 33, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1169, file: !97, discriminator: 1)
!1187 = !DILocation(line: 60, column: 11, scope: !1169)
!1188 = !DILocation(line: 47, column: 15, scope: !1169)
!1189 = !DILocation(line: 61, column: 12, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1169, file: !97, line: 61, column: 7)
!1191 = !DILocation(line: 61, column: 20, scope: !1190)
!1192 = !DILocation(line: 61, column: 25, scope: !1190)
!1193 = !DILocation(line: 61, column: 28, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1190, file: !97, discriminator: 1)
!1195 = !DILocation(line: 61, column: 61, scope: !1194)
!1196 = !DILocation(line: 61, column: 7, scope: !1186)
!1197 = !DILocation(line: 64, column: 11, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !97, line: 64, column: 11)
!1199 = distinct !DILexicalBlock(scope: !1190, file: !97, line: 62, column: 5)
!1200 = !DILocation(line: 64, column: 36, scope: !1198)
!1201 = !DILocation(line: 64, column: 11, scope: !1199)
!1202 = !DILocation(line: 66, column: 24, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !97, line: 65, column: 9)
!1204 = !DILocation(line: 70, column: 41, scope: !1203)
!1205 = !DILocation(line: 72, column: 9, scope: !1203)
!1206 = !DILocation(line: 84, column: 16, scope: !1169)
!1207 = !DILocation(line: 90, column: 27, scope: !1169)
!1208 = !DILocation(line: 92, column: 1, scope: !1169)
!1209 = distinct !DISubprogram(name: "clone_quoting_options", scope: !142, file: !142, line: 114, type: !1210, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1213)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1212, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!1213 = !{!1214, !1215, !1216}
!1214 = !DILocalVariable(name: "o", arg: 1, scope: !1209, file: !142, line: 114, type: !1212)
!1215 = !DILocalVariable(name: "e", scope: !1209, file: !142, line: 116, type: !53)
!1216 = !DILocalVariable(name: "p", scope: !1209, file: !142, line: 117, type: !1212)
!1217 = !DILocation(line: 114, column: 48, scope: !1209)
!1218 = !DILocation(line: 116, column: 11, scope: !1209)
!1219 = !DILocation(line: 116, column: 7, scope: !1209)
!1220 = !DILocation(line: 117, column: 40, scope: !1209)
!1221 = !DILocation(line: 117, column: 40, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1209, file: !142, discriminator: 3)
!1223 = !DILocation(line: 117, column: 31, scope: !1222)
!1224 = !DILocation(line: 117, column: 27, scope: !1209)
!1225 = !DILocation(line: 119, column: 9, scope: !1209)
!1226 = !DILocation(line: 120, column: 3, scope: !1209)
!1227 = distinct !DISubprogram(name: "get_quoting_style", scope: !142, file: !142, line: 125, type: !1228, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1232)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!103, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!1232 = !{!1233}
!1233 = !DILocalVariable(name: "o", arg: 1, scope: !1227, file: !142, line: 125, type: !1230)
!1234 = !DILocation(line: 125, column: 50, scope: !1227)
!1235 = !DILocation(line: 127, column: 11, scope: !1227)
!1236 = !DILocation(line: 127, column: 46, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1227, file: !142, discriminator: 3)
!1238 = !{!1239, !838, i64 0}
!1239 = !{!"quoting_options", !838, i64 0, !918, i64 4, !838, i64 8, !837, i64 40, !837, i64 48}
!1240 = !DILocation(line: 127, column: 3, scope: !1237)
!1241 = distinct !DISubprogram(name: "set_quoting_style", scope: !142, file: !142, line: 133, type: !1242, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1244)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !1212, !103}
!1244 = !{!1245, !1246}
!1245 = !DILocalVariable(name: "o", arg: 1, scope: !1241, file: !142, line: 133, type: !1212)
!1246 = !DILocalVariable(name: "s", arg: 2, scope: !1241, file: !142, line: 133, type: !103)
!1247 = !DILocation(line: 133, column: 44, scope: !1241)
!1248 = !DILocation(line: 133, column: 66, scope: !1241)
!1249 = !DILocation(line: 135, column: 4, scope: !1241)
!1250 = !DILocation(line: 135, column: 39, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1241, file: !142, discriminator: 3)
!1252 = !DILocation(line: 135, column: 45, scope: !1251)
!1253 = !DILocation(line: 136, column: 1, scope: !1241)
!1254 = distinct !DISubprogram(name: "set_char_quoting", scope: !142, file: !142, line: 144, type: !1255, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!53, !1212, !13, !53}
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1264, !1265}
!1258 = !DILocalVariable(name: "o", arg: 1, scope: !1254, file: !142, line: 144, type: !1212)
!1259 = !DILocalVariable(name: "c", arg: 2, scope: !1254, file: !142, line: 144, type: !13)
!1260 = !DILocalVariable(name: "i", arg: 3, scope: !1254, file: !142, line: 144, type: !53)
!1261 = !DILocalVariable(name: "uc", scope: !1254, file: !142, line: 146, type: !22)
!1262 = !DILocalVariable(name: "p", scope: !1254, file: !142, line: 147, type: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1264 = !DILocalVariable(name: "shift", scope: !1254, file: !142, line: 149, type: !53)
!1265 = !DILocalVariable(name: "r", scope: !1254, file: !142, line: 150, type: !53)
!1266 = !DILocation(line: 144, column: 43, scope: !1254)
!1267 = !DILocation(line: 144, column: 51, scope: !1254)
!1268 = !DILocation(line: 144, column: 58, scope: !1254)
!1269 = !DILocation(line: 146, column: 17, scope: !1254)
!1270 = !DILocation(line: 148, column: 6, scope: !1254)
!1271 = !DILocation(line: 148, column: 62, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1254, file: !142, discriminator: 3)
!1273 = !DILocation(line: 148, column: 57, scope: !1272)
!1274 = !DILocation(line: 147, column: 17, scope: !1254)
!1275 = !DILocation(line: 149, column: 18, scope: !1254)
!1276 = !DILocation(line: 149, column: 15, scope: !1254)
!1277 = !DILocation(line: 149, column: 7, scope: !1254)
!1278 = !DILocation(line: 150, column: 12, scope: !1254)
!1279 = !DILocation(line: 150, column: 15, scope: !1254)
!1280 = !DILocation(line: 150, column: 25, scope: !1254)
!1281 = !DILocation(line: 150, column: 7, scope: !1254)
!1282 = !DILocation(line: 151, column: 13, scope: !1254)
!1283 = !DILocation(line: 151, column: 18, scope: !1254)
!1284 = !DILocation(line: 151, column: 23, scope: !1254)
!1285 = !DILocation(line: 151, column: 6, scope: !1254)
!1286 = !DILocation(line: 152, column: 3, scope: !1254)
!1287 = distinct !DISubprogram(name: "set_quoting_flags", scope: !142, file: !142, line: 160, type: !1288, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1290)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!53, !1212, !53}
!1290 = !{!1291, !1292, !1293}
!1291 = !DILocalVariable(name: "o", arg: 1, scope: !1287, file: !142, line: 160, type: !1212)
!1292 = !DILocalVariable(name: "i", arg: 2, scope: !1287, file: !142, line: 160, type: !53)
!1293 = !DILocalVariable(name: "r", scope: !1287, file: !142, line: 162, type: !53)
!1294 = !DILocation(line: 160, column: 44, scope: !1287)
!1295 = !DILocation(line: 160, column: 51, scope: !1287)
!1296 = !DILocation(line: 163, column: 8, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1287, file: !142, line: 163, column: 7)
!1298 = !DILocation(line: 163, column: 7, scope: !1287)
!1299 = !DILocation(line: 165, column: 10, scope: !1287)
!1300 = !{!1239, !918, i64 4}
!1301 = !DILocation(line: 162, column: 7, scope: !1287)
!1302 = !DILocation(line: 166, column: 12, scope: !1287)
!1303 = !DILocation(line: 167, column: 3, scope: !1287)
!1304 = distinct !DISubprogram(name: "set_custom_quoting", scope: !142, file: !142, line: 171, type: !1305, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !1212, !23, !23}
!1307 = !{!1308, !1309, !1310}
!1308 = !DILocalVariable(name: "o", arg: 1, scope: !1304, file: !142, line: 171, type: !1212)
!1309 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1304, file: !142, line: 172, type: !23)
!1310 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1304, file: !142, line: 172, type: !23)
!1311 = !DILocation(line: 171, column: 45, scope: !1304)
!1312 = !DILocation(line: 172, column: 33, scope: !1304)
!1313 = !DILocation(line: 172, column: 57, scope: !1304)
!1314 = !DILocation(line: 174, column: 8, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1304, file: !142, line: 174, column: 7)
!1316 = !DILocation(line: 174, column: 7, scope: !1304)
!1317 = !DILocation(line: 176, column: 6, scope: !1304)
!1318 = !DILocation(line: 176, column: 12, scope: !1304)
!1319 = !DILocation(line: 177, column: 8, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1304, file: !142, line: 177, column: 7)
!1321 = !DILocation(line: 177, column: 23, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1320, file: !142, discriminator: 1)
!1323 = !DILocation(line: 177, column: 19, scope: !1320)
!1324 = !DILocation(line: 178, column: 5, scope: !1320)
!1325 = !DILocation(line: 179, column: 6, scope: !1304)
!1326 = !DILocation(line: 179, column: 17, scope: !1304)
!1327 = !{!1239, !837, i64 40}
!1328 = !DILocation(line: 180, column: 6, scope: !1304)
!1329 = !DILocation(line: 180, column: 18, scope: !1304)
!1330 = !{!1239, !837, i64 48}
!1331 = !DILocation(line: 181, column: 1, scope: !1304)
!1332 = distinct !DISubprogram(name: "quotearg_buffer", scope: !142, file: !142, line: 776, type: !1333, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!15, !12, !15, !23, !15, !1230}
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1336 = !DILocalVariable(name: "buffer", arg: 1, scope: !1332, file: !142, line: 776, type: !12)
!1337 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1332, file: !142, line: 776, type: !15)
!1338 = !DILocalVariable(name: "arg", arg: 3, scope: !1332, file: !142, line: 777, type: !23)
!1339 = !DILocalVariable(name: "argsize", arg: 4, scope: !1332, file: !142, line: 777, type: !15)
!1340 = !DILocalVariable(name: "o", arg: 5, scope: !1332, file: !142, line: 778, type: !1230)
!1341 = !DILocalVariable(name: "p", scope: !1332, file: !142, line: 780, type: !1230)
!1342 = !DILocalVariable(name: "e", scope: !1332, file: !142, line: 781, type: !53)
!1343 = !DILocalVariable(name: "r", scope: !1332, file: !142, line: 782, type: !15)
!1344 = !DILocation(line: 776, column: 24, scope: !1332)
!1345 = !DILocation(line: 776, column: 39, scope: !1332)
!1346 = !DILocation(line: 777, column: 30, scope: !1332)
!1347 = !DILocation(line: 777, column: 42, scope: !1332)
!1348 = !DILocation(line: 778, column: 48, scope: !1332)
!1349 = !DILocation(line: 780, column: 37, scope: !1332)
!1350 = !DILocation(line: 780, column: 33, scope: !1332)
!1351 = !DILocation(line: 781, column: 11, scope: !1332)
!1352 = !DILocation(line: 781, column: 7, scope: !1332)
!1353 = !DILocation(line: 783, column: 43, scope: !1332)
!1354 = !DILocation(line: 783, column: 53, scope: !1332)
!1355 = !DILocation(line: 783, column: 60, scope: !1332)
!1356 = !DILocation(line: 784, column: 43, scope: !1332)
!1357 = !DILocation(line: 784, column: 58, scope: !1332)
!1358 = !DILocation(line: 782, column: 14, scope: !1332)
!1359 = !DILocation(line: 782, column: 10, scope: !1332)
!1360 = !DILocation(line: 785, column: 9, scope: !1332)
!1361 = !DILocation(line: 786, column: 3, scope: !1332)
!1362 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !142, file: !142, line: 248, type: !1363, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1367)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!15, !12, !15, !23, !15, !103, !53, !1365, !23, !23}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1392, !1393, !1394, !1395, !1396, !1399, !1400, !1417, !1420, !1421, !1428}
!1368 = !DILocalVariable(name: "buffer", arg: 1, scope: !1362, file: !142, line: 248, type: !12)
!1369 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1362, file: !142, line: 248, type: !15)
!1370 = !DILocalVariable(name: "arg", arg: 3, scope: !1362, file: !142, line: 249, type: !23)
!1371 = !DILocalVariable(name: "argsize", arg: 4, scope: !1362, file: !142, line: 249, type: !15)
!1372 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1362, file: !142, line: 250, type: !103)
!1373 = !DILocalVariable(name: "flags", arg: 6, scope: !1362, file: !142, line: 250, type: !53)
!1374 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1362, file: !142, line: 251, type: !1365)
!1375 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1362, file: !142, line: 252, type: !23)
!1376 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1362, file: !142, line: 253, type: !23)
!1377 = !DILocalVariable(name: "i", scope: !1362, file: !142, line: 255, type: !15)
!1378 = !DILocalVariable(name: "len", scope: !1362, file: !142, line: 256, type: !15)
!1379 = !DILocalVariable(name: "orig_buffersize", scope: !1362, file: !142, line: 257, type: !15)
!1380 = !DILocalVariable(name: "quote_string", scope: !1362, file: !142, line: 258, type: !23)
!1381 = !DILocalVariable(name: "quote_string_len", scope: !1362, file: !142, line: 259, type: !15)
!1382 = !DILocalVariable(name: "backslash_escapes", scope: !1362, file: !142, line: 260, type: !83)
!1383 = !DILocalVariable(name: "unibyte_locale", scope: !1362, file: !142, line: 261, type: !83)
!1384 = !DILocalVariable(name: "elide_outer_quotes", scope: !1362, file: !142, line: 262, type: !83)
!1385 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1362, file: !142, line: 263, type: !83)
!1386 = !DILocalVariable(name: "encountered_single_quote", scope: !1362, file: !142, line: 264, type: !83)
!1387 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1362, file: !142, line: 265, type: !83)
!1388 = !DILocalVariable(name: "c", scope: !1389, file: !142, line: 394, type: !22)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !142, line: 393, column: 5)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !142, line: 392, column: 3)
!1391 = distinct !DILexicalBlock(scope: !1362, file: !142, line: 392, column: 3)
!1392 = !DILocalVariable(name: "esc", scope: !1389, file: !142, line: 395, type: !22)
!1393 = !DILocalVariable(name: "is_right_quote", scope: !1389, file: !142, line: 396, type: !83)
!1394 = !DILocalVariable(name: "escaping", scope: !1389, file: !142, line: 397, type: !83)
!1395 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1389, file: !142, line: 398, type: !83)
!1396 = !DILocalVariable(name: "m", scope: !1397, file: !142, line: 602, type: !15)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !142, line: 600, column: 11)
!1398 = distinct !DILexicalBlock(scope: !1389, file: !142, line: 418, column: 9)
!1399 = !DILocalVariable(name: "printable", scope: !1397, file: !142, line: 604, type: !83)
!1400 = !DILocalVariable(name: "mbstate", scope: !1401, file: !142, line: 613, type: !1403)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !142, line: 612, column: 15)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !142, line: 606, column: 17)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1404, line: 107, baseType: !1405)
!1404 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1404, line: 95, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1404, line: 83, size: 64, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1406, file: !1404, line: 85, baseType: !53, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1406, file: !1404, line: 94, baseType: !1410, size: 32, offset: 32)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1404, line: 86, size: 32, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1410, file: !1404, line: 89, baseType: !155, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1410, file: !1404, line: 93, baseType: !1414, size: 32)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !1415)
!1415 = !{!1416}
!1416 = !DISubrange(count: 4)
!1417 = !DILocalVariable(name: "w", scope: !1418, file: !142, line: 623, type: !1419)
!1418 = distinct !DILexicalBlock(scope: !1401, file: !142, line: 622, column: 19)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !16, line: 90, baseType: !53)
!1420 = !DILocalVariable(name: "bytes", scope: !1418, file: !142, line: 624, type: !15)
!1421 = !DILocalVariable(name: "j", scope: !1422, file: !142, line: 649, type: !15)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !142, line: 648, column: 27)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !142, line: 646, column: 29)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !142, line: 641, column: 23)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !142, line: 633, column: 30)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !142, line: 628, column: 30)
!1427 = distinct !DILexicalBlock(scope: !1418, file: !142, line: 626, column: 25)
!1428 = !DILocalVariable(name: "ilim", scope: !1429, file: !142, line: 676, type: !15)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !142, line: 673, column: 15)
!1430 = distinct !DILexicalBlock(scope: !1397, file: !142, line: 672, column: 17)
!1431 = !DILocation(line: 248, column: 33, scope: !1362)
!1432 = !DILocation(line: 248, column: 48, scope: !1362)
!1433 = !DILocation(line: 249, column: 39, scope: !1362)
!1434 = !DILocation(line: 249, column: 51, scope: !1362)
!1435 = !DILocation(line: 250, column: 46, scope: !1362)
!1436 = !DILocation(line: 250, column: 65, scope: !1362)
!1437 = !DILocation(line: 251, column: 47, scope: !1362)
!1438 = !DILocation(line: 252, column: 39, scope: !1362)
!1439 = !DILocation(line: 253, column: 39, scope: !1362)
!1440 = !DILocation(line: 256, column: 10, scope: !1362)
!1441 = !DILocation(line: 257, column: 10, scope: !1362)
!1442 = !DILocation(line: 258, column: 15, scope: !1362)
!1443 = !DILocation(line: 259, column: 10, scope: !1362)
!1444 = !DILocation(line: 260, column: 8, scope: !1362)
!1445 = !DILocation(line: 261, column: 25, scope: !1362)
!1446 = !DILocation(line: 261, column: 36, scope: !1362)
!1447 = !DILocation(line: 262, column: 8, scope: !1362)
!1448 = !DILocation(line: 263, column: 8, scope: !1362)
!1449 = !DILocation(line: 264, column: 8, scope: !1362)
!1450 = !DILocation(line: 265, column: 8, scope: !1362)
!1451 = !DILocation(line: 265, column: 3, scope: !1362)
!1452 = !DILocation(line: 308, column: 3, scope: !1362)
!1453 = !DILocation(line: 315, column: 11, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1362, file: !142, line: 309, column: 5)
!1455 = !DILocation(line: 315, column: 12, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1454, file: !142, line: 315, column: 11)
!1457 = !DILocation(line: 316, column: 9, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !142, discriminator: 1)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !142, line: 316, column: 9)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !142, line: 316, column: 9)
!1461 = !DILocation(line: 316, column: 9, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1460, file: !142, discriminator: 1)
!1463 = !DILocation(line: 316, column: 9, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1459, file: !142, discriminator: 2)
!1465 = !DILocation(line: 354, column: 26, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !142, line: 332, column: 11)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !142, line: 331, column: 13)
!1468 = distinct !DILexicalBlock(scope: !1454, file: !142, line: 330, column: 7)
!1469 = !DILocation(line: 355, column: 27, scope: !1466)
!1470 = !DILocation(line: 356, column: 11, scope: !1466)
!1471 = !DILocation(line: 357, column: 14, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !142, line: 357, column: 13)
!1473 = !DILocation(line: 357, column: 13, scope: !1468)
!1474 = !DILocation(line: 358, column: 43, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1476, file: !142, discriminator: 1)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !142, line: 358, column: 11)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !142, line: 358, column: 11)
!1478 = !DILocation(line: 358, column: 11, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1477, file: !142, discriminator: 1)
!1480 = !DILocation(line: 359, column: 13, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1482, file: !142, discriminator: 1)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !142, line: 359, column: 13)
!1483 = distinct !DILexicalBlock(scope: !1476, file: !142, line: 359, column: 13)
!1484 = !DILocation(line: 359, column: 13, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1483, file: !142, discriminator: 1)
!1486 = !DILocation(line: 359, column: 13, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1482, file: !142, discriminator: 2)
!1488 = !DILocation(line: 359, column: 13, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1483, file: !142, discriminator: 3)
!1490 = !DILocation(line: 358, column: 70, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1476, file: !142, discriminator: 2)
!1492 = distinct !{!1492, !1493, !1494}
!1493 = !DILocation(line: 358, column: 11, scope: !1477)
!1494 = !DILocation(line: 359, column: 13, scope: !1477)
!1495 = !DILocation(line: 362, column: 28, scope: !1468)
!1496 = !DILocation(line: 364, column: 7, scope: !1454)
!1497 = !DILocation(line: 367, column: 7, scope: !1454)
!1498 = !DILocation(line: 370, column: 7, scope: !1454)
!1499 = !DILocation(line: 373, column: 12, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1454, file: !142, line: 373, column: 11)
!1501 = !DILocation(line: 373, column: 11, scope: !1454)
!1502 = !DILocation(line: 378, column: 12, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1454, file: !142, line: 378, column: 11)
!1504 = !DILocation(line: 378, column: 11, scope: !1454)
!1505 = !DILocation(line: 379, column: 9, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1507, file: !142, discriminator: 1)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !142, line: 379, column: 9)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !142, line: 379, column: 9)
!1509 = !DILocation(line: 379, column: 9, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1508, file: !142, discriminator: 1)
!1511 = !DILocation(line: 379, column: 9, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1507, file: !142, discriminator: 2)
!1513 = !DILocation(line: 386, column: 7, scope: !1454)
!1514 = !DILocation(line: 389, column: 7, scope: !1454)
!1515 = !DILocation(line: 255, column: 10, scope: !1362)
!1516 = !DILocation(line: 392, column: 8, scope: !1391)
!1517 = !DILocation(line: 392, column: 27, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1390, file: !142, discriminator: 1)
!1519 = !DILocation(line: 392, column: 19, scope: !1518)
!1520 = !DILocation(line: 392, column: 60, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1390, file: !142, discriminator: 3)
!1522 = !DILocation(line: 392, column: 3, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1391, file: !142, discriminator: 4)
!1524 = !DILocation(line: 392, column: 41, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1390, file: !142, discriminator: 2)
!1526 = !DILocation(line: 392, column: 48, scope: !1525)
!1527 = !DILocation(line: 396, column: 12, scope: !1389)
!1528 = !DILocation(line: 397, column: 12, scope: !1389)
!1529 = !DILocation(line: 398, column: 12, scope: !1389)
!1530 = !DILocation(line: 401, column: 11, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1389, file: !142, line: 400, column: 11)
!1532 = !DILocation(line: 403, column: 17, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1531, file: !142, discriminator: 1)
!1534 = !DILocation(line: 404, column: 39, scope: !1531)
!1535 = !DILocation(line: 408, column: 32, scope: !1531)
!1536 = !DILocation(line: 404, column: 19, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1531, file: !142, discriminator: 2)
!1538 = !DILocation(line: 404, column: 15, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1531, file: !142, discriminator: 4)
!1540 = !DILocation(line: 409, column: 11, scope: !1531)
!1541 = !DILocation(line: 409, column: 26, scope: !1533)
!1542 = !DILocation(line: 409, column: 14, scope: !1533)
!1543 = !DILocation(line: 400, column: 11, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1389, file: !142, discriminator: 1)
!1545 = !DILocation(line: 416, column: 11, scope: !1389)
!1546 = !DILocation(line: 394, column: 21, scope: !1389)
!1547 = !DILocation(line: 417, column: 7, scope: !1389)
!1548 = !DILocation(line: 420, column: 15, scope: !1398)
!1549 = !DILocation(line: 422, column: 15, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1551, file: !142, discriminator: 1)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !142, line: 422, column: 15)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !142, line: 421, column: 13)
!1553 = distinct !DILexicalBlock(scope: !1398, file: !142, line: 420, column: 15)
!1554 = !DILocation(line: 422, column: 15, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1556, file: !142, discriminator: 4)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !142, line: 422, column: 15)
!1557 = !DILocation(line: 422, column: 15, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1556, file: !142, discriminator: 3)
!1559 = !DILocation(line: 422, column: 15, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1561, file: !142, discriminator: 6)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !142, line: 422, column: 15)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !142, line: 422, column: 15)
!1563 = distinct !DILexicalBlock(scope: !1556, file: !142, line: 422, column: 15)
!1564 = !DILocation(line: 422, column: 15, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1562, file: !142, discriminator: 6)
!1566 = !DILocation(line: 422, column: 15, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1561, file: !142, discriminator: 7)
!1568 = !DILocation(line: 422, column: 15, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1562, file: !142, discriminator: 8)
!1570 = !DILocation(line: 422, column: 15, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !142, discriminator: 11)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !142, line: 422, column: 15)
!1573 = distinct !DILexicalBlock(scope: !1563, file: !142, line: 422, column: 15)
!1574 = !DILocation(line: 422, column: 15, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1573, file: !142, discriminator: 11)
!1576 = !DILocation(line: 422, column: 15, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1572, file: !142, discriminator: 12)
!1578 = !DILocation(line: 422, column: 15, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1573, file: !142, discriminator: 13)
!1580 = !DILocation(line: 422, column: 15, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1582, file: !142, discriminator: 16)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !142, line: 422, column: 15)
!1583 = distinct !DILexicalBlock(scope: !1563, file: !142, line: 422, column: 15)
!1584 = !DILocation(line: 422, column: 15, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1583, file: !142, discriminator: 16)
!1586 = !DILocation(line: 422, column: 15, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1582, file: !142, discriminator: 17)
!1588 = !DILocation(line: 422, column: 15, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1583, file: !142, discriminator: 18)
!1590 = !DILocation(line: 422, column: 15, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1563, file: !142, discriminator: 20)
!1592 = !DILocation(line: 422, column: 15, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1594, file: !142, discriminator: 22)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !142, line: 422, column: 15)
!1595 = distinct !DILexicalBlock(scope: !1551, file: !142, line: 422, column: 15)
!1596 = !DILocation(line: 422, column: 15, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1595, file: !142, discriminator: 22)
!1598 = !DILocation(line: 422, column: 15, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1594, file: !142, discriminator: 23)
!1600 = !DILocation(line: 422, column: 15, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1595, file: !142, discriminator: 24)
!1602 = !DILocation(line: 430, column: 19, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1552, file: !142, line: 429, column: 19)
!1604 = !DILocation(line: 430, column: 24, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1603, file: !142, discriminator: 1)
!1606 = !DILocation(line: 430, column: 28, scope: !1605)
!1607 = !DILocation(line: 430, column: 38, scope: !1605)
!1608 = !DILocation(line: 430, column: 48, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1603, file: !142, discriminator: 2)
!1610 = !DILocation(line: 430, column: 59, scope: !1609)
!1611 = !DILocation(line: 432, column: 19, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1613, file: !142, discriminator: 1)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !142, line: 432, column: 19)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !142, line: 432, column: 19)
!1615 = distinct !DILexicalBlock(scope: !1603, file: !142, line: 431, column: 17)
!1616 = !DILocation(line: 432, column: 19, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1614, file: !142, discriminator: 1)
!1618 = !DILocation(line: 432, column: 19, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1613, file: !142, discriminator: 2)
!1620 = !DILocation(line: 432, column: 19, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1614, file: !142, discriminator: 3)
!1622 = !DILocation(line: 433, column: 19, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1624, file: !142, discriminator: 1)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !142, line: 433, column: 19)
!1625 = distinct !DILexicalBlock(scope: !1615, file: !142, line: 433, column: 19)
!1626 = !DILocation(line: 433, column: 19, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1625, file: !142, discriminator: 1)
!1628 = !DILocation(line: 433, column: 19, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1624, file: !142, discriminator: 2)
!1630 = !DILocation(line: 433, column: 19, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1625, file: !142, discriminator: 3)
!1632 = !DILocation(line: 434, column: 17, scope: !1615)
!1633 = !DILocation(line: 441, column: 20, scope: !1553)
!1634 = !DILocation(line: 446, column: 11, scope: !1398)
!1635 = !DILocation(line: 449, column: 19, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1398, file: !142, line: 447, column: 13)
!1637 = !DILocation(line: 455, column: 19, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1636, file: !142, line: 454, column: 19)
!1639 = !DILocation(line: 455, column: 24, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1638, file: !142, discriminator: 1)
!1641 = !DILocation(line: 455, column: 28, scope: !1640)
!1642 = !DILocation(line: 455, column: 38, scope: !1640)
!1643 = !DILocation(line: 455, column: 47, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1638, file: !142, discriminator: 2)
!1645 = !DILocation(line: 455, column: 41, scope: !1644)
!1646 = !DILocation(line: 455, column: 52, scope: !1644)
!1647 = !DILocation(line: 454, column: 19, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1636, file: !142, discriminator: 1)
!1649 = !DILocation(line: 456, column: 25, scope: !1638)
!1650 = !DILocation(line: 456, column: 17, scope: !1638)
!1651 = !DILocation(line: 463, column: 25, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1638, file: !142, line: 457, column: 19)
!1653 = !DILocation(line: 467, column: 21, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1655, file: !142, discriminator: 1)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !142, line: 467, column: 21)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !142, line: 467, column: 21)
!1657 = !DILocation(line: 467, column: 21, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1656, file: !142, discriminator: 1)
!1659 = !DILocation(line: 467, column: 21, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1655, file: !142, discriminator: 2)
!1661 = !DILocation(line: 467, column: 21, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1656, file: !142, discriminator: 3)
!1663 = !DILocation(line: 468, column: 21, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1665, file: !142, discriminator: 1)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !142, line: 468, column: 21)
!1666 = distinct !DILexicalBlock(scope: !1652, file: !142, line: 468, column: 21)
!1667 = !DILocation(line: 468, column: 21, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1666, file: !142, discriminator: 1)
!1669 = !DILocation(line: 468, column: 21, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1665, file: !142, discriminator: 2)
!1671 = !DILocation(line: 468, column: 21, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1666, file: !142, discriminator: 3)
!1673 = !DILocation(line: 469, column: 21, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !142, discriminator: 1)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !142, line: 469, column: 21)
!1676 = distinct !DILexicalBlock(scope: !1652, file: !142, line: 469, column: 21)
!1677 = !DILocation(line: 469, column: 21, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1676, file: !142, discriminator: 1)
!1679 = !DILocation(line: 469, column: 21, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1675, file: !142, discriminator: 2)
!1681 = !DILocation(line: 469, column: 21, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1676, file: !142, discriminator: 3)
!1683 = !DILocation(line: 470, column: 21, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1685, file: !142, discriminator: 1)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !142, line: 470, column: 21)
!1686 = distinct !DILexicalBlock(scope: !1652, file: !142, line: 470, column: 21)
!1687 = !DILocation(line: 470, column: 21, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1686, file: !142, discriminator: 1)
!1689 = !DILocation(line: 470, column: 21, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1685, file: !142, discriminator: 2)
!1691 = !DILocation(line: 470, column: 21, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1686, file: !142, discriminator: 3)
!1693 = !DILocation(line: 471, column: 21, scope: !1652)
!1694 = !DILocation(line: 395, column: 21, scope: !1389)
!1695 = !DILocation(line: 484, column: 31, scope: !1398)
!1696 = !DILocation(line: 485, column: 31, scope: !1398)
!1697 = !DILocation(line: 487, column: 31, scope: !1398)
!1698 = !DILocation(line: 488, column: 31, scope: !1398)
!1699 = !DILocation(line: 489, column: 31, scope: !1398)
!1700 = !DILocation(line: 492, column: 15, scope: !1398)
!1701 = !DILocation(line: 494, column: 19, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !142, line: 493, column: 13)
!1703 = distinct !DILexicalBlock(scope: !1398, file: !142, line: 492, column: 15)
!1704 = !DILocation(line: 501, column: 33, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1398, file: !142, line: 501, column: 15)
!1706 = !DILocation(line: 506, column: 15, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1398, file: !142, line: 505, column: 15)
!1708 = !DILocation(line: 510, column: 15, scope: !1398)
!1709 = !DILocation(line: 518, column: 26, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1398, file: !142, line: 518, column: 15)
!1711 = !DILocation(line: 518, column: 15, scope: !1398)
!1712 = !DILocation(line: 518, column: 40, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1710, file: !142, discriminator: 1)
!1714 = !DILocation(line: 518, column: 47, scope: !1713)
!1715 = !DILocation(line: 522, column: 17, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1398, file: !142, line: 522, column: 15)
!1717 = !DILocation(line: 518, column: 18, scope: !1713)
!1718 = !DILocation(line: 518, column: 65, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1710, file: !142, discriminator: 2)
!1720 = !DILocation(line: 518, column: 15, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1398, file: !142, discriminator: 2)
!1722 = !DILocation(line: 522, column: 15, scope: !1398)
!1723 = !DILocation(line: 526, column: 11, scope: !1398)
!1724 = !DILocation(line: 541, column: 15, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1398, file: !142, line: 540, column: 15)
!1726 = !DILocation(line: 548, column: 15, scope: !1398)
!1727 = !DILocation(line: 550, column: 19, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !142, line: 549, column: 13)
!1729 = distinct !DILexicalBlock(scope: !1398, file: !142, line: 548, column: 15)
!1730 = !DILocation(line: 553, column: 19, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !142, line: 553, column: 19)
!1732 = !DILocation(line: 553, column: 35, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1731, file: !142, discriminator: 1)
!1734 = !DILocation(line: 553, column: 30, scope: !1731)
!1735 = !DILocation(line: 562, column: 15, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1737, file: !142, discriminator: 1)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !142, line: 562, column: 15)
!1738 = distinct !DILexicalBlock(scope: !1728, file: !142, line: 562, column: 15)
!1739 = !DILocation(line: 562, column: 15, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1738, file: !142, discriminator: 1)
!1741 = !DILocation(line: 562, column: 15, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1737, file: !142, discriminator: 2)
!1743 = !DILocation(line: 562, column: 15, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1738, file: !142, discriminator: 3)
!1745 = !DILocation(line: 563, column: 15, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1747, file: !142, discriminator: 1)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !142, line: 563, column: 15)
!1748 = distinct !DILexicalBlock(scope: !1728, file: !142, line: 563, column: 15)
!1749 = !DILocation(line: 563, column: 15, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1748, file: !142, discriminator: 1)
!1751 = !DILocation(line: 563, column: 15, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1747, file: !142, discriminator: 2)
!1753 = !DILocation(line: 563, column: 15, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1748, file: !142, discriminator: 3)
!1755 = !DILocation(line: 564, column: 15, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1757, file: !142, discriminator: 1)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !142, line: 564, column: 15)
!1758 = distinct !DILexicalBlock(scope: !1728, file: !142, line: 564, column: 15)
!1759 = !DILocation(line: 564, column: 15, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1758, file: !142, discriminator: 1)
!1761 = !DILocation(line: 564, column: 15, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1757, file: !142, discriminator: 2)
!1763 = !DILocation(line: 564, column: 15, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1758, file: !142, discriminator: 3)
!1765 = !DILocation(line: 566, column: 13, scope: !1728)
!1766 = !DILocation(line: 606, column: 17, scope: !1397)
!1767 = !DILocation(line: 602, column: 20, scope: !1397)
!1768 = !DILocation(line: 609, column: 29, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1402, file: !142, line: 607, column: 15)
!1770 = !{!1771, !1771, i64 0}
!1771 = !{!"short", !838, i64 0}
!1772 = !DILocation(line: 609, column: 27, scope: !1769)
!1773 = !DILocation(line: 604, column: 18, scope: !1397)
!1774 = !DILocation(line: 610, column: 15, scope: !1769)
!1775 = !DILocation(line: 613, column: 17, scope: !1401)
!1776 = !DILocation(line: 614, column: 17, scope: !1401)
!1777 = !DILocation(line: 618, column: 29, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1401, file: !142, line: 618, column: 21)
!1779 = !DILocation(line: 618, column: 21, scope: !1401)
!1780 = distinct !{!1780, !1781, !1782}
!1781 = !DILocation(line: 621, column: 17, scope: !1401)
!1782 = !DILocation(line: 667, column: 44, scope: !1401)
!1783 = !DILocation(line: 619, column: 29, scope: !1778)
!1784 = !DILocation(line: 619, column: 19, scope: !1778)
!1785 = !DILocation(line: 623, column: 21, scope: !1418)
!1786 = !DILocation(line: 624, column: 56, scope: !1418)
!1787 = !DILocation(line: 624, column: 50, scope: !1418)
!1788 = !DILocation(line: 625, column: 53, scope: !1418)
!1789 = !DILocation(line: 613, column: 27, scope: !1401)
!1790 = !DILocation(line: 623, column: 29, scope: !1418)
!1791 = !DILocation(line: 624, column: 36, scope: !1418)
!1792 = !DILocation(line: 624, column: 28, scope: !1418)
!1793 = !DILocation(line: 626, column: 25, scope: !1418)
!1794 = !DILocation(line: 636, column: 38, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1796, file: !142, discriminator: 1)
!1796 = distinct !DILexicalBlock(scope: !1425, file: !142, line: 634, column: 23)
!1797 = !DILocation(line: 636, column: 48, scope: !1795)
!1798 = !DILocation(line: 636, column: 51, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1796, file: !142, discriminator: 2)
!1800 = !DILocation(line: 636, column: 48, scope: !1799)
!1801 = !DILocation(line: 636, column: 25, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1796, file: !142, discriminator: 3)
!1803 = !DILocation(line: 637, column: 28, scope: !1796)
!1804 = !DILocation(line: 636, column: 34, scope: !1795)
!1805 = distinct !{!1805, !1806, !1803}
!1806 = !DILocation(line: 636, column: 25, scope: !1796)
!1807 = !DILocation(line: 650, column: 43, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1809, file: !142, discriminator: 1)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !142, line: 650, column: 29)
!1810 = distinct !DILexicalBlock(scope: !1422, file: !142, line: 650, column: 29)
!1811 = !DILocation(line: 647, column: 29, scope: !1423)
!1812 = !DILocation(line: 649, column: 36, scope: !1422)
!1813 = !DILocation(line: 651, column: 49, scope: !1809)
!1814 = !DILocation(line: 651, column: 39, scope: !1809)
!1815 = !DILocation(line: 651, column: 31, scope: !1809)
!1816 = !DILocation(line: 650, column: 53, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1809, file: !142, discriminator: 2)
!1818 = !DILocation(line: 650, column: 29, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1810, file: !142, discriminator: 1)
!1820 = distinct !{!1820, !1821, !1822}
!1821 = !DILocation(line: 650, column: 29, scope: !1810)
!1822 = !DILocation(line: 659, column: 33, scope: !1810)
!1823 = !DILocation(line: 666, column: 19, scope: !1401)
!1824 = !DILocation(line: 662, column: 41, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1424, file: !142, line: 662, column: 29)
!1826 = !DILocation(line: 662, column: 31, scope: !1825)
!1827 = !DILocation(line: 662, column: 29, scope: !1424)
!1828 = !DILocation(line: 664, column: 27, scope: !1424)
!1829 = !DILocation(line: 667, column: 26, scope: !1401)
!1830 = !DILocation(line: 667, column: 24, scope: !1401)
!1831 = !DILocation(line: 666, column: 19, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1418, file: !142, discriminator: 3)
!1833 = !DILocation(line: 668, column: 15, scope: !1402)
!1834 = !DILocation(line: 670, column: 40, scope: !1397)
!1835 = !DILocation(line: 672, column: 19, scope: !1430)
!1836 = !DILocation(line: 672, column: 45, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1430, file: !142, discriminator: 1)
!1838 = !DILocation(line: 672, column: 23, scope: !1430)
!1839 = !DILocation(line: 676, column: 33, scope: !1429)
!1840 = !DILocation(line: 676, column: 24, scope: !1429)
!1841 = !DILocation(line: 678, column: 17, scope: !1429)
!1842 = !DILocation(line: 680, column: 43, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !142, line: 680, column: 25)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !142, line: 679, column: 19)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !142, line: 678, column: 17)
!1846 = distinct !DILexicalBlock(scope: !1429, file: !142, line: 678, column: 17)
!1847 = !DILocation(line: 682, column: 25, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1849, file: !142, discriminator: 1)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !142, line: 682, column: 25)
!1850 = distinct !DILexicalBlock(scope: !1843, file: !142, line: 681, column: 23)
!1851 = !DILocation(line: 682, column: 25, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1853, file: !142, discriminator: 4)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !142, line: 682, column: 25)
!1854 = !DILocation(line: 682, column: 25, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1853, file: !142, discriminator: 3)
!1856 = !DILocation(line: 682, column: 25, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1858, file: !142, discriminator: 6)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !142, line: 682, column: 25)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !142, line: 682, column: 25)
!1860 = distinct !DILexicalBlock(scope: !1853, file: !142, line: 682, column: 25)
!1861 = !DILocation(line: 682, column: 25, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1859, file: !142, discriminator: 6)
!1863 = !DILocation(line: 682, column: 25, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1858, file: !142, discriminator: 7)
!1865 = !DILocation(line: 682, column: 25, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1859, file: !142, discriminator: 8)
!1867 = !DILocation(line: 682, column: 25, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1869, file: !142, discriminator: 11)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !142, line: 682, column: 25)
!1870 = distinct !DILexicalBlock(scope: !1860, file: !142, line: 682, column: 25)
!1871 = !DILocation(line: 682, column: 25, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1870, file: !142, discriminator: 11)
!1873 = !DILocation(line: 682, column: 25, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1869, file: !142, discriminator: 12)
!1875 = !DILocation(line: 682, column: 25, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1870, file: !142, discriminator: 13)
!1877 = !DILocation(line: 682, column: 25, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1879, file: !142, discriminator: 16)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !142, line: 682, column: 25)
!1880 = distinct !DILexicalBlock(scope: !1860, file: !142, line: 682, column: 25)
!1881 = !DILocation(line: 682, column: 25, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1880, file: !142, discriminator: 16)
!1883 = !DILocation(line: 682, column: 25, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1879, file: !142, discriminator: 17)
!1885 = !DILocation(line: 682, column: 25, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1880, file: !142, discriminator: 18)
!1887 = !DILocation(line: 682, column: 25, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1860, file: !142, discriminator: 20)
!1889 = !DILocation(line: 682, column: 25, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1891, file: !142, discriminator: 22)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !142, line: 682, column: 25)
!1892 = distinct !DILexicalBlock(scope: !1849, file: !142, line: 682, column: 25)
!1893 = !DILocation(line: 682, column: 25, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1892, file: !142, discriminator: 22)
!1895 = !DILocation(line: 682, column: 25, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1891, file: !142, discriminator: 23)
!1897 = !DILocation(line: 682, column: 25, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1892, file: !142, discriminator: 24)
!1899 = !DILocation(line: 683, column: 25, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1901, file: !142, discriminator: 1)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !142, line: 683, column: 25)
!1902 = distinct !DILexicalBlock(scope: !1850, file: !142, line: 683, column: 25)
!1903 = !DILocation(line: 683, column: 25, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1902, file: !142, discriminator: 1)
!1905 = !DILocation(line: 683, column: 25, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1901, file: !142, discriminator: 2)
!1907 = !DILocation(line: 683, column: 25, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1902, file: !142, discriminator: 3)
!1909 = !DILocation(line: 684, column: 25, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1911, file: !142, discriminator: 1)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !142, line: 684, column: 25)
!1912 = distinct !DILexicalBlock(scope: !1850, file: !142, line: 684, column: 25)
!1913 = !DILocation(line: 684, column: 25, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1912, file: !142, discriminator: 1)
!1915 = !DILocation(line: 684, column: 25, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1911, file: !142, discriminator: 2)
!1917 = !DILocation(line: 684, column: 25, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1912, file: !142, discriminator: 3)
!1919 = !DILocation(line: 685, column: 38, scope: !1850)
!1920 = !DILocation(line: 685, column: 33, scope: !1850)
!1921 = !DILocation(line: 686, column: 23, scope: !1850)
!1922 = !DILocation(line: 687, column: 30, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1843, file: !142, line: 687, column: 30)
!1924 = !DILocation(line: 687, column: 30, scope: !1843)
!1925 = !DILocation(line: 689, column: 25, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1927, file: !142, discriminator: 1)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !142, line: 689, column: 25)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !142, line: 689, column: 25)
!1929 = distinct !DILexicalBlock(scope: !1923, file: !142, line: 688, column: 23)
!1930 = !DILocation(line: 689, column: 25, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1928, file: !142, discriminator: 1)
!1932 = !DILocation(line: 689, column: 25, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1927, file: !142, discriminator: 2)
!1934 = !DILocation(line: 689, column: 25, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1928, file: !142, discriminator: 3)
!1936 = !DILocation(line: 691, column: 23, scope: !1929)
!1937 = !DILocation(line: 692, column: 35, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1844, file: !142, line: 692, column: 25)
!1939 = !DILocation(line: 692, column: 30, scope: !1938)
!1940 = !DILocation(line: 692, column: 25, scope: !1844)
!1941 = !DILocation(line: 694, column: 21, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1943, file: !142, discriminator: 1)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !142, line: 694, column: 21)
!1944 = distinct !DILexicalBlock(scope: !1844, file: !142, line: 694, column: 21)
!1945 = !DILocation(line: 694, column: 21, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1943, file: !142, discriminator: 2)
!1947 = !DILocation(line: 694, column: 21, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1949, file: !142, discriminator: 4)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !142, line: 694, column: 21)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !142, line: 694, column: 21)
!1951 = distinct !DILexicalBlock(scope: !1943, file: !142, line: 694, column: 21)
!1952 = !DILocation(line: 694, column: 21, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1950, file: !142, discriminator: 4)
!1954 = !DILocation(line: 694, column: 21, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1949, file: !142, discriminator: 5)
!1956 = !DILocation(line: 694, column: 21, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1950, file: !142, discriminator: 6)
!1958 = !DILocation(line: 694, column: 21, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1960, file: !142, discriminator: 9)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !142, line: 694, column: 21)
!1961 = distinct !DILexicalBlock(scope: !1951, file: !142, line: 694, column: 21)
!1962 = !DILocation(line: 694, column: 21, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1961, file: !142, discriminator: 9)
!1964 = !DILocation(line: 694, column: 21, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1960, file: !142, discriminator: 10)
!1966 = !DILocation(line: 694, column: 21, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1961, file: !142, discriminator: 11)
!1968 = !DILocation(line: 694, column: 21, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !1951, file: !142, discriminator: 13)
!1970 = !DILocation(line: 695, column: 21, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1972, file: !142, discriminator: 1)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !142, line: 695, column: 21)
!1973 = distinct !DILexicalBlock(scope: !1844, file: !142, line: 695, column: 21)
!1974 = !DILocation(line: 695, column: 21, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1973, file: !142, discriminator: 1)
!1976 = !DILocation(line: 695, column: 21, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1972, file: !142, discriminator: 2)
!1978 = !DILocation(line: 695, column: 21, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1973, file: !142, discriminator: 3)
!1980 = !DILocation(line: 696, column: 25, scope: !1844)
!1981 = !DILocation(line: 678, column: 17, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1845, file: !142, discriminator: 1)
!1983 = distinct !{!1983, !1984, !1985}
!1984 = !DILocation(line: 678, column: 17, scope: !1846)
!1985 = !DILocation(line: 697, column: 19, scope: !1846)
!1986 = !DILocation(line: 704, column: 34, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1389, file: !142, line: 704, column: 11)
!1988 = !DILocation(line: 706, column: 14, scope: !1987)
!1989 = !DILocation(line: 707, column: 14, scope: !1987)
!1990 = !DILocation(line: 707, column: 35, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1987, file: !142, discriminator: 1)
!1992 = !DILocation(line: 707, column: 17, scope: !1991)
!1993 = !DILocation(line: 707, column: 53, scope: !1991)
!1994 = !DILocation(line: 707, column: 47, scope: !1991)
!1995 = !DILocation(line: 707, column: 65, scope: !1991)
!1996 = !DILocation(line: 708, column: 15, scope: !1991)
!1997 = !DILocation(line: 708, column: 11, scope: !1987)
!1998 = !DILocation(line: 704, column: 11, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1389, file: !142, discriminator: 2)
!2000 = !DILocation(line: 712, column: 7, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !2002, file: !142, discriminator: 1)
!2002 = distinct !DILexicalBlock(scope: !1389, file: !142, line: 712, column: 7)
!2003 = !DILocation(line: 712, column: 7, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2005, file: !142, discriminator: 4)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !142, line: 712, column: 7)
!2006 = !DILocation(line: 712, column: 7, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2005, file: !142, discriminator: 3)
!2008 = !DILocation(line: 712, column: 7, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2010, file: !142, discriminator: 6)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !142, line: 712, column: 7)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !142, line: 712, column: 7)
!2012 = distinct !DILexicalBlock(scope: !2005, file: !142, line: 712, column: 7)
!2013 = !DILocation(line: 712, column: 7, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2011, file: !142, discriminator: 6)
!2015 = !DILocation(line: 712, column: 7, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2010, file: !142, discriminator: 7)
!2017 = !DILocation(line: 712, column: 7, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !2011, file: !142, discriminator: 8)
!2019 = !DILocation(line: 712, column: 7, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2021, file: !142, discriminator: 11)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !142, line: 712, column: 7)
!2022 = distinct !DILexicalBlock(scope: !2012, file: !142, line: 712, column: 7)
!2023 = !DILocation(line: 712, column: 7, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2022, file: !142, discriminator: 11)
!2025 = !DILocation(line: 712, column: 7, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !2021, file: !142, discriminator: 12)
!2027 = !DILocation(line: 712, column: 7, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !2022, file: !142, discriminator: 13)
!2029 = !DILocation(line: 712, column: 7, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2031, file: !142, discriminator: 16)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !142, line: 712, column: 7)
!2032 = distinct !DILexicalBlock(scope: !2012, file: !142, line: 712, column: 7)
!2033 = !DILocation(line: 712, column: 7, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2032, file: !142, discriminator: 16)
!2035 = !DILocation(line: 712, column: 7, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2031, file: !142, discriminator: 17)
!2037 = !DILocation(line: 712, column: 7, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2032, file: !142, discriminator: 18)
!2039 = !DILocation(line: 712, column: 7, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2012, file: !142, discriminator: 20)
!2041 = !DILocation(line: 712, column: 7, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2043, file: !142, discriminator: 22)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !142, line: 712, column: 7)
!2044 = distinct !DILexicalBlock(scope: !2002, file: !142, line: 712, column: 7)
!2045 = !DILocation(line: 712, column: 7, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2044, file: !142, discriminator: 22)
!2047 = !DILocation(line: 712, column: 7, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !2043, file: !142, discriminator: 23)
!2049 = !DILocation(line: 712, column: 7, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2044, file: !142, discriminator: 24)
!2051 = !DILocation(line: 715, column: 7, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2053, file: !142, discriminator: 1)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !142, line: 715, column: 7)
!2054 = distinct !DILexicalBlock(scope: !1389, file: !142, line: 715, column: 7)
!2055 = !DILocation(line: 715, column: 7, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2053, file: !142, discriminator: 2)
!2057 = !DILocation(line: 715, column: 7, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2059, file: !142, discriminator: 4)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !142, line: 715, column: 7)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !142, line: 715, column: 7)
!2061 = distinct !DILexicalBlock(scope: !2053, file: !142, line: 715, column: 7)
!2062 = !DILocation(line: 715, column: 7, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2060, file: !142, discriminator: 4)
!2064 = !DILocation(line: 715, column: 7, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2059, file: !142, discriminator: 5)
!2066 = !DILocation(line: 715, column: 7, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2060, file: !142, discriminator: 6)
!2068 = !DILocation(line: 715, column: 7, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2070, file: !142, discriminator: 9)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !142, line: 715, column: 7)
!2071 = distinct !DILexicalBlock(scope: !2061, file: !142, line: 715, column: 7)
!2072 = !DILocation(line: 715, column: 7, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2071, file: !142, discriminator: 9)
!2074 = !DILocation(line: 715, column: 7, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2070, file: !142, discriminator: 10)
!2076 = !DILocation(line: 715, column: 7, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2071, file: !142, discriminator: 11)
!2078 = !DILocation(line: 715, column: 7, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2061, file: !142, discriminator: 13)
!2080 = !DILocation(line: 716, column: 7, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2082, file: !142, discriminator: 1)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !142, line: 716, column: 7)
!2083 = distinct !DILexicalBlock(scope: !1389, file: !142, line: 716, column: 7)
!2084 = !DILocation(line: 716, column: 7, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2083, file: !142, discriminator: 1)
!2086 = !DILocation(line: 716, column: 7, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2082, file: !142, discriminator: 2)
!2088 = !DILocation(line: 716, column: 7, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2083, file: !142, discriminator: 3)
!2090 = !DILocation(line: 718, column: 13, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1389, file: !142, line: 718, column: 11)
!2092 = !DILocation(line: 718, column: 11, scope: !1389)
!2093 = !DILocation(line: 720, column: 5, scope: !1390)
!2094 = !DILocation(line: 392, column: 75, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !1390, file: !142, discriminator: 5)
!2096 = !DILocation(line: 392, column: 3, scope: !2095)
!2097 = distinct !{!2097, !2098, !2099}
!2098 = !DILocation(line: 392, column: 3, scope: !1391)
!2099 = !DILocation(line: 720, column: 5, scope: !1391)
!2100 = !DILocation(line: 722, column: 11, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1362, file: !142, line: 722, column: 7)
!2102 = !DILocation(line: 722, column: 16, scope: !2101)
!2103 = !DILocation(line: 730, column: 51, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1362, file: !142, line: 730, column: 7)
!2105 = !DILocation(line: 731, column: 10, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2104, file: !142, discriminator: 1)
!2107 = !DILocation(line: 733, column: 11, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !142, line: 733, column: 11)
!2109 = distinct !DILexicalBlock(scope: !2104, file: !142, line: 732, column: 5)
!2110 = !DILocation(line: 733, column: 11, scope: !2109)
!2111 = !DILocation(line: 734, column: 16, scope: !2108)
!2112 = !DILocation(line: 734, column: 9, scope: !2108)
!2113 = !DILocation(line: 738, column: 18, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2108, file: !142, line: 738, column: 16)
!2115 = !DILocation(line: 738, column: 32, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2114, file: !142, discriminator: 1)
!2117 = !DILocation(line: 738, column: 29, scope: !2114)
!2118 = !DILocation(line: 747, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1362, file: !142, line: 747, column: 7)
!2120 = !DILocation(line: 747, column: 20, scope: !2119)
!2121 = !DILocation(line: 748, column: 12, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2123, file: !142, discriminator: 1)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !142, line: 748, column: 5)
!2124 = distinct !DILexicalBlock(scope: !2119, file: !142, line: 748, column: 5)
!2125 = !DILocation(line: 748, column: 5, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2124, file: !142, discriminator: 1)
!2127 = !DILocation(line: 749, column: 7, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2129, file: !142, discriminator: 1)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !142, line: 749, column: 7)
!2130 = distinct !DILexicalBlock(scope: !2123, file: !142, line: 749, column: 7)
!2131 = !DILocation(line: 749, column: 7, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !2130, file: !142, discriminator: 1)
!2133 = !DILocation(line: 749, column: 7, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2129, file: !142, discriminator: 2)
!2135 = !DILocation(line: 749, column: 7, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2130, file: !142, discriminator: 3)
!2137 = !DILocation(line: 748, column: 39, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2123, file: !142, discriminator: 2)
!2139 = distinct !{!2139, !2140, !2141}
!2140 = !DILocation(line: 748, column: 5, scope: !2124)
!2141 = !DILocation(line: 749, column: 7, scope: !2124)
!2142 = !DILocation(line: 751, column: 11, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1362, file: !142, line: 751, column: 7)
!2144 = !DILocation(line: 751, column: 7, scope: !1362)
!2145 = !DILocation(line: 752, column: 5, scope: !2143)
!2146 = !DILocation(line: 752, column: 17, scope: !2143)
!2147 = !DILocation(line: 758, column: 21, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1362, file: !142, line: 758, column: 7)
!2149 = !DILocation(line: 758, column: 54, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2148, file: !142, discriminator: 1)
!2151 = !DILocation(line: 758, column: 51, scope: !2148)
!2152 = !DILocation(line: 762, column: 42, scope: !1362)
!2153 = !DILocation(line: 760, column: 10, scope: !1362)
!2154 = !DILocation(line: 760, column: 3, scope: !1362)
!2155 = !DILocation(line: 764, column: 1, scope: !1362)
!2156 = distinct !DISubprogram(name: "gettext_quote", scope: !142, file: !142, line: 199, type: !2157, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!23, !23, !103}
!2159 = !{!2160, !2161, !2162, !2163}
!2160 = !DILocalVariable(name: "msgid", arg: 1, scope: !2156, file: !142, line: 199, type: !23)
!2161 = !DILocalVariable(name: "s", arg: 2, scope: !2156, file: !142, line: 199, type: !103)
!2162 = !DILocalVariable(name: "translation", scope: !2156, file: !142, line: 201, type: !23)
!2163 = !DILocalVariable(name: "locale_code", scope: !2156, file: !142, line: 202, type: !23)
!2164 = !DILocation(line: 199, column: 28, scope: !2156)
!2165 = !DILocation(line: 199, column: 54, scope: !2156)
!2166 = !DILocation(line: 201, column: 29, scope: !2156)
!2167 = !DILocation(line: 201, column: 15, scope: !2156)
!2168 = !DILocation(line: 204, column: 19, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2156, file: !142, line: 204, column: 7)
!2170 = !DILocation(line: 204, column: 7, scope: !2156)
!2171 = !DILocation(line: 225, column: 17, scope: !2156)
!2172 = !DILocation(line: 202, column: 15, scope: !2156)
!2173 = !DILocalVariable(name: "s2", arg: 2, scope: !2174, file: !2175, line: 160, type: !23)
!2174 = distinct !DISubprogram(name: "strcaseeq0", scope: !2175, file: !2175, line: 160, type: !2176, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2178)
!2175 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!53, !23, !23, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!2178 = !{!2179, !2173, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188}
!2179 = !DILocalVariable(name: "s1", arg: 1, scope: !2174, file: !2175, line: 160, type: !23)
!2180 = !DILocalVariable(name: "s20", arg: 3, scope: !2174, file: !2175, line: 160, type: !13)
!2181 = !DILocalVariable(name: "s21", arg: 4, scope: !2174, file: !2175, line: 160, type: !13)
!2182 = !DILocalVariable(name: "s22", arg: 5, scope: !2174, file: !2175, line: 160, type: !13)
!2183 = !DILocalVariable(name: "s23", arg: 6, scope: !2174, file: !2175, line: 160, type: !13)
!2184 = !DILocalVariable(name: "s24", arg: 7, scope: !2174, file: !2175, line: 160, type: !13)
!2185 = !DILocalVariable(name: "s25", arg: 8, scope: !2174, file: !2175, line: 160, type: !13)
!2186 = !DILocalVariable(name: "s26", arg: 9, scope: !2174, file: !2175, line: 160, type: !13)
!2187 = !DILocalVariable(name: "s27", arg: 10, scope: !2174, file: !2175, line: 160, type: !13)
!2188 = !DILocalVariable(name: "s28", arg: 11, scope: !2174, file: !2175, line: 160, type: !13)
!2189 = !DILocation(line: 160, column: 41, scope: !2174, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 226, column: 7, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2156, file: !142, line: 226, column: 7)
!2192 = !DILocation(line: 160, column: 120, scope: !2174, inlinedAt: !2190)
!2193 = !DILocation(line: 160, column: 130, scope: !2174, inlinedAt: !2190)
!2194 = !DILocation(line: 162, column: 7, scope: !2195, inlinedAt: !2190)
!2195 = !DILexicalBlockFile(scope: !2196, file: !2175, discriminator: 1)
!2196 = distinct !DILexicalBlock(scope: !2174, file: !2175, line: 162, column: 7)
!2197 = !DILocalVariable(name: "s2", arg: 2, scope: !2198, file: !2175, line: 146, type: !23)
!2198 = distinct !DISubprogram(name: "strcaseeq1", scope: !2175, file: !2175, line: 146, type: !2199, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!53, !23, !23, !13, !13, !13, !13, !13, !13, !13, !13}
!2201 = !{!2202, !2197, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210}
!2202 = !DILocalVariable(name: "s1", arg: 1, scope: !2198, file: !2175, line: 146, type: !23)
!2203 = !DILocalVariable(name: "s21", arg: 3, scope: !2198, file: !2175, line: 146, type: !13)
!2204 = !DILocalVariable(name: "s22", arg: 4, scope: !2198, file: !2175, line: 146, type: !13)
!2205 = !DILocalVariable(name: "s23", arg: 5, scope: !2198, file: !2175, line: 146, type: !13)
!2206 = !DILocalVariable(name: "s24", arg: 6, scope: !2198, file: !2175, line: 146, type: !13)
!2207 = !DILocalVariable(name: "s25", arg: 7, scope: !2198, file: !2175, line: 146, type: !13)
!2208 = !DILocalVariable(name: "s26", arg: 8, scope: !2198, file: !2175, line: 146, type: !13)
!2209 = !DILocalVariable(name: "s27", arg: 9, scope: !2198, file: !2175, line: 146, type: !13)
!2210 = !DILocalVariable(name: "s28", arg: 10, scope: !2198, file: !2175, line: 146, type: !13)
!2211 = !DILocation(line: 146, column: 41, scope: !2198, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 167, column: 16, scope: !2213, inlinedAt: !2190)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !2175, line: 164, column: 11)
!2214 = distinct !DILexicalBlock(scope: !2196, file: !2175, line: 163, column: 5)
!2215 = !DILocation(line: 146, column: 110, scope: !2198, inlinedAt: !2212)
!2216 = !DILocation(line: 146, column: 120, scope: !2198, inlinedAt: !2212)
!2217 = !DILocation(line: 148, column: 7, scope: !2218, inlinedAt: !2212)
!2218 = !DILexicalBlockFile(scope: !2219, file: !2175, discriminator: 1)
!2219 = distinct !DILexicalBlock(scope: !2198, file: !2175, line: 148, column: 7)
!2220 = !DILocalVariable(name: "s2", arg: 2, scope: !2221, file: !2175, line: 132, type: !23)
!2221 = distinct !DISubprogram(name: "strcaseeq2", scope: !2175, file: !2175, line: 132, type: !2222, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2224)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!53, !23, !23, !13, !13, !13, !13, !13, !13, !13}
!2224 = !{!2225, !2220, !2226, !2227, !2228, !2229, !2230, !2231, !2232}
!2225 = !DILocalVariable(name: "s1", arg: 1, scope: !2221, file: !2175, line: 132, type: !23)
!2226 = !DILocalVariable(name: "s22", arg: 3, scope: !2221, file: !2175, line: 132, type: !13)
!2227 = !DILocalVariable(name: "s23", arg: 4, scope: !2221, file: !2175, line: 132, type: !13)
!2228 = !DILocalVariable(name: "s24", arg: 5, scope: !2221, file: !2175, line: 132, type: !13)
!2229 = !DILocalVariable(name: "s25", arg: 6, scope: !2221, file: !2175, line: 132, type: !13)
!2230 = !DILocalVariable(name: "s26", arg: 7, scope: !2221, file: !2175, line: 132, type: !13)
!2231 = !DILocalVariable(name: "s27", arg: 8, scope: !2221, file: !2175, line: 132, type: !13)
!2232 = !DILocalVariable(name: "s28", arg: 9, scope: !2221, file: !2175, line: 132, type: !13)
!2233 = !DILocation(line: 132, column: 41, scope: !2221, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 153, column: 16, scope: !2235, inlinedAt: !2212)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !2175, line: 150, column: 11)
!2236 = distinct !DILexicalBlock(scope: !2219, file: !2175, line: 149, column: 5)
!2237 = !DILocation(line: 132, column: 100, scope: !2221, inlinedAt: !2234)
!2238 = !DILocation(line: 132, column: 110, scope: !2221, inlinedAt: !2234)
!2239 = !DILocation(line: 134, column: 7, scope: !2240, inlinedAt: !2234)
!2240 = !DILexicalBlockFile(scope: !2241, file: !2175, discriminator: 1)
!2241 = distinct !DILexicalBlock(scope: !2221, file: !2175, line: 134, column: 7)
!2242 = !DILocalVariable(name: "s2", arg: 2, scope: !2243, file: !2175, line: 118, type: !23)
!2243 = distinct !DISubprogram(name: "strcaseeq3", scope: !2175, file: !2175, line: 118, type: !2244, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!53, !23, !23, !13, !13, !13, !13, !13, !13}
!2246 = !{!2247, !2242, !2248, !2249, !2250, !2251, !2252, !2253}
!2247 = !DILocalVariable(name: "s1", arg: 1, scope: !2243, file: !2175, line: 118, type: !23)
!2248 = !DILocalVariable(name: "s23", arg: 3, scope: !2243, file: !2175, line: 118, type: !13)
!2249 = !DILocalVariable(name: "s24", arg: 4, scope: !2243, file: !2175, line: 118, type: !13)
!2250 = !DILocalVariable(name: "s25", arg: 5, scope: !2243, file: !2175, line: 118, type: !13)
!2251 = !DILocalVariable(name: "s26", arg: 6, scope: !2243, file: !2175, line: 118, type: !13)
!2252 = !DILocalVariable(name: "s27", arg: 7, scope: !2243, file: !2175, line: 118, type: !13)
!2253 = !DILocalVariable(name: "s28", arg: 8, scope: !2243, file: !2175, line: 118, type: !13)
!2254 = !DILocation(line: 118, column: 41, scope: !2243, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 139, column: 16, scope: !2256, inlinedAt: !2234)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !2175, line: 136, column: 11)
!2257 = distinct !DILexicalBlock(scope: !2241, file: !2175, line: 135, column: 5)
!2258 = !DILocation(line: 118, column: 90, scope: !2243, inlinedAt: !2255)
!2259 = !DILocation(line: 118, column: 100, scope: !2243, inlinedAt: !2255)
!2260 = !DILocation(line: 120, column: 7, scope: !2261, inlinedAt: !2255)
!2261 = !DILexicalBlockFile(scope: !2262, file: !2175, discriminator: 2)
!2262 = distinct !DILexicalBlock(scope: !2243, file: !2175, line: 120, column: 7)
!2263 = !DILocation(line: 120, column: 7, scope: !2264, inlinedAt: !2255)
!2264 = !DILexicalBlockFile(scope: !2243, file: !2175, discriminator: 2)
!2265 = !DILocalVariable(name: "s2", arg: 2, scope: !2266, file: !2175, line: 104, type: !23)
!2266 = distinct !DISubprogram(name: "strcaseeq4", scope: !2175, file: !2175, line: 104, type: !2267, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!53, !23, !23, !13, !13, !13, !13, !13}
!2269 = !{!2270, !2265, !2271, !2272, !2273, !2274, !2275}
!2270 = !DILocalVariable(name: "s1", arg: 1, scope: !2266, file: !2175, line: 104, type: !23)
!2271 = !DILocalVariable(name: "s24", arg: 3, scope: !2266, file: !2175, line: 104, type: !13)
!2272 = !DILocalVariable(name: "s25", arg: 4, scope: !2266, file: !2175, line: 104, type: !13)
!2273 = !DILocalVariable(name: "s26", arg: 5, scope: !2266, file: !2175, line: 104, type: !13)
!2274 = !DILocalVariable(name: "s27", arg: 6, scope: !2266, file: !2175, line: 104, type: !13)
!2275 = !DILocalVariable(name: "s28", arg: 7, scope: !2266, file: !2175, line: 104, type: !13)
!2276 = !DILocation(line: 104, column: 41, scope: !2266, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 125, column: 16, scope: !2278, inlinedAt: !2255)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !2175, line: 122, column: 11)
!2279 = distinct !DILexicalBlock(scope: !2262, file: !2175, line: 121, column: 5)
!2280 = !DILocation(line: 104, column: 80, scope: !2266, inlinedAt: !2277)
!2281 = !DILocation(line: 104, column: 90, scope: !2266, inlinedAt: !2277)
!2282 = !DILocation(line: 106, column: 7, scope: !2283, inlinedAt: !2277)
!2283 = !DILexicalBlockFile(scope: !2284, file: !2175, discriminator: 2)
!2284 = distinct !DILexicalBlock(scope: !2266, file: !2175, line: 106, column: 7)
!2285 = !DILocation(line: 106, column: 7, scope: !2286, inlinedAt: !2277)
!2286 = !DILexicalBlockFile(scope: !2266, file: !2175, discriminator: 2)
!2287 = !DILocalVariable(name: "s2", arg: 2, scope: !2288, file: !2175, line: 90, type: !23)
!2288 = distinct !DISubprogram(name: "strcaseeq5", scope: !2175, file: !2175, line: 90, type: !2289, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2291)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!53, !23, !23, !13, !13, !13, !13}
!2291 = !{!2292, !2287, !2293, !2294, !2295, !2296}
!2292 = !DILocalVariable(name: "s1", arg: 1, scope: !2288, file: !2175, line: 90, type: !23)
!2293 = !DILocalVariable(name: "s25", arg: 3, scope: !2288, file: !2175, line: 90, type: !13)
!2294 = !DILocalVariable(name: "s26", arg: 4, scope: !2288, file: !2175, line: 90, type: !13)
!2295 = !DILocalVariable(name: "s27", arg: 5, scope: !2288, file: !2175, line: 90, type: !13)
!2296 = !DILocalVariable(name: "s28", arg: 6, scope: !2288, file: !2175, line: 90, type: !13)
!2297 = !DILocation(line: 90, column: 41, scope: !2288, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 111, column: 16, scope: !2299, inlinedAt: !2277)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !2175, line: 108, column: 11)
!2300 = distinct !DILexicalBlock(scope: !2284, file: !2175, line: 107, column: 5)
!2301 = !DILocation(line: 90, column: 70, scope: !2288, inlinedAt: !2298)
!2302 = !DILocation(line: 90, column: 80, scope: !2288, inlinedAt: !2298)
!2303 = !DILocation(line: 92, column: 7, scope: !2304, inlinedAt: !2298)
!2304 = !DILexicalBlockFile(scope: !2305, file: !2175, discriminator: 2)
!2305 = distinct !DILexicalBlock(scope: !2288, file: !2175, line: 92, column: 7)
!2306 = !DILocation(line: 92, column: 7, scope: !2307, inlinedAt: !2298)
!2307 = !DILexicalBlockFile(scope: !2288, file: !2175, discriminator: 2)
!2308 = !DILocation(line: 227, column: 12, scope: !2191)
!2309 = !DILocation(line: 227, column: 21, scope: !2191)
!2310 = !DILocation(line: 227, column: 5, scope: !2191)
!2311 = !DILocation(line: 146, column: 41, scope: !2198, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 167, column: 16, scope: !2213, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 228, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2156, file: !142, line: 228, column: 7)
!2315 = !DILocation(line: 146, column: 110, scope: !2198, inlinedAt: !2312)
!2316 = !DILocation(line: 146, column: 120, scope: !2198, inlinedAt: !2312)
!2317 = !DILocation(line: 148, column: 7, scope: !2218, inlinedAt: !2312)
!2318 = !DILocation(line: 132, column: 41, scope: !2221, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 153, column: 16, scope: !2235, inlinedAt: !2312)
!2320 = !DILocation(line: 132, column: 100, scope: !2221, inlinedAt: !2319)
!2321 = !DILocation(line: 132, column: 110, scope: !2221, inlinedAt: !2319)
!2322 = !DILocation(line: 134, column: 7, scope: !2323, inlinedAt: !2319)
!2323 = !DILexicalBlockFile(scope: !2241, file: !2175, discriminator: 2)
!2324 = !DILocation(line: 134, column: 7, scope: !2325, inlinedAt: !2319)
!2325 = !DILexicalBlockFile(scope: !2221, file: !2175, discriminator: 2)
!2326 = !DILocation(line: 118, column: 41, scope: !2243, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 139, column: 16, scope: !2256, inlinedAt: !2319)
!2328 = !DILocation(line: 118, column: 90, scope: !2243, inlinedAt: !2327)
!2329 = !DILocation(line: 118, column: 100, scope: !2243, inlinedAt: !2327)
!2330 = !DILocation(line: 120, column: 7, scope: !2261, inlinedAt: !2327)
!2331 = !DILocation(line: 120, column: 7, scope: !2264, inlinedAt: !2327)
!2332 = !DILocation(line: 104, column: 41, scope: !2266, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 125, column: 16, scope: !2278, inlinedAt: !2327)
!2334 = !DILocation(line: 104, column: 80, scope: !2266, inlinedAt: !2333)
!2335 = !DILocation(line: 104, column: 90, scope: !2266, inlinedAt: !2333)
!2336 = !DILocation(line: 106, column: 7, scope: !2283, inlinedAt: !2333)
!2337 = !DILocation(line: 106, column: 7, scope: !2286, inlinedAt: !2333)
!2338 = !DILocation(line: 90, column: 41, scope: !2288, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 111, column: 16, scope: !2299, inlinedAt: !2333)
!2340 = !DILocation(line: 90, column: 70, scope: !2288, inlinedAt: !2339)
!2341 = !DILocation(line: 90, column: 80, scope: !2288, inlinedAt: !2339)
!2342 = !DILocation(line: 92, column: 7, scope: !2304, inlinedAt: !2339)
!2343 = !DILocation(line: 92, column: 7, scope: !2307, inlinedAt: !2339)
!2344 = !DILocalVariable(name: "s2", arg: 2, scope: !2345, file: !2175, line: 76, type: !23)
!2345 = distinct !DISubprogram(name: "strcaseeq6", scope: !2175, file: !2175, line: 76, type: !2346, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2348)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!53, !23, !23, !13, !13, !13}
!2348 = !{!2349, !2344, !2350, !2351, !2352}
!2349 = !DILocalVariable(name: "s1", arg: 1, scope: !2345, file: !2175, line: 76, type: !23)
!2350 = !DILocalVariable(name: "s26", arg: 3, scope: !2345, file: !2175, line: 76, type: !13)
!2351 = !DILocalVariable(name: "s27", arg: 4, scope: !2345, file: !2175, line: 76, type: !13)
!2352 = !DILocalVariable(name: "s28", arg: 5, scope: !2345, file: !2175, line: 76, type: !13)
!2353 = !DILocation(line: 76, column: 41, scope: !2345, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 97, column: 16, scope: !2355, inlinedAt: !2339)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !2175, line: 94, column: 11)
!2356 = distinct !DILexicalBlock(scope: !2305, file: !2175, line: 93, column: 5)
!2357 = !DILocation(line: 76, column: 60, scope: !2345, inlinedAt: !2354)
!2358 = !DILocation(line: 76, column: 70, scope: !2345, inlinedAt: !2354)
!2359 = !DILocation(line: 78, column: 7, scope: !2360, inlinedAt: !2354)
!2360 = !DILexicalBlockFile(scope: !2361, file: !2175, discriminator: 2)
!2361 = distinct !DILexicalBlock(scope: !2345, file: !2175, line: 78, column: 7)
!2362 = !DILocation(line: 78, column: 7, scope: !2363, inlinedAt: !2354)
!2363 = !DILexicalBlockFile(scope: !2345, file: !2175, discriminator: 2)
!2364 = !DILocalVariable(name: "s2", arg: 2, scope: !2365, file: !2175, line: 62, type: !23)
!2365 = distinct !DISubprogram(name: "strcaseeq7", scope: !2175, file: !2175, line: 62, type: !2366, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!53, !23, !23, !13, !13}
!2368 = !{!2369, !2364, !2370, !2371}
!2369 = !DILocalVariable(name: "s1", arg: 1, scope: !2365, file: !2175, line: 62, type: !23)
!2370 = !DILocalVariable(name: "s27", arg: 3, scope: !2365, file: !2175, line: 62, type: !13)
!2371 = !DILocalVariable(name: "s28", arg: 4, scope: !2365, file: !2175, line: 62, type: !13)
!2372 = !DILocation(line: 62, column: 41, scope: !2365, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 83, column: 16, scope: !2374, inlinedAt: !2354)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !2175, line: 80, column: 11)
!2375 = distinct !DILexicalBlock(scope: !2361, file: !2175, line: 79, column: 5)
!2376 = !DILocation(line: 62, column: 50, scope: !2365, inlinedAt: !2373)
!2377 = !DILocation(line: 62, column: 60, scope: !2365, inlinedAt: !2373)
!2378 = !DILocation(line: 64, column: 7, scope: !2379, inlinedAt: !2373)
!2379 = !DILexicalBlockFile(scope: !2380, file: !2175, discriminator: 2)
!2380 = distinct !DILexicalBlock(scope: !2365, file: !2175, line: 64, column: 7)
!2381 = !DILocation(line: 228, column: 7, scope: !2156)
!2382 = !DILocation(line: 229, column: 12, scope: !2314)
!2383 = !DILocation(line: 229, column: 21, scope: !2314)
!2384 = !DILocation(line: 229, column: 5, scope: !2314)
!2385 = !DILocation(line: 231, column: 13, scope: !2156)
!2386 = !DILocation(line: 231, column: 11, scope: !2156)
!2387 = !DILocation(line: 231, column: 3, scope: !2156)
!2388 = !DILocation(line: 232, column: 1, scope: !2156)
!2389 = distinct !DISubprogram(name: "quotearg_alloc", scope: !142, file: !142, line: 791, type: !2390, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!12, !23, !15, !1230}
!2392 = !{!2393, !2394, !2395}
!2393 = !DILocalVariable(name: "arg", arg: 1, scope: !2389, file: !142, line: 791, type: !23)
!2394 = !DILocalVariable(name: "argsize", arg: 2, scope: !2389, file: !142, line: 791, type: !15)
!2395 = !DILocalVariable(name: "o", arg: 3, scope: !2389, file: !142, line: 792, type: !1230)
!2396 = !DILocation(line: 791, column: 29, scope: !2389)
!2397 = !DILocation(line: 791, column: 41, scope: !2389)
!2398 = !DILocation(line: 792, column: 47, scope: !2389)
!2399 = !DILocalVariable(name: "arg", arg: 1, scope: !2400, file: !142, line: 804, type: !23)
!2400 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !142, file: !142, line: 804, type: !2401, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!12, !23, !15, !776, !1230}
!2403 = !{!2399, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411}
!2404 = !DILocalVariable(name: "argsize", arg: 2, scope: !2400, file: !142, line: 804, type: !15)
!2405 = !DILocalVariable(name: "size", arg: 3, scope: !2400, file: !142, line: 804, type: !776)
!2406 = !DILocalVariable(name: "o", arg: 4, scope: !2400, file: !142, line: 805, type: !1230)
!2407 = !DILocalVariable(name: "p", scope: !2400, file: !142, line: 807, type: !1230)
!2408 = !DILocalVariable(name: "e", scope: !2400, file: !142, line: 808, type: !53)
!2409 = !DILocalVariable(name: "flags", scope: !2400, file: !142, line: 810, type: !53)
!2410 = !DILocalVariable(name: "bufsize", scope: !2400, file: !142, line: 811, type: !15)
!2411 = !DILocalVariable(name: "buf", scope: !2400, file: !142, line: 815, type: !12)
!2412 = !DILocation(line: 804, column: 33, scope: !2400, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 794, column: 10, scope: !2389)
!2414 = !DILocation(line: 804, column: 45, scope: !2400, inlinedAt: !2413)
!2415 = !DILocation(line: 804, column: 62, scope: !2400, inlinedAt: !2413)
!2416 = !DILocation(line: 805, column: 51, scope: !2400, inlinedAt: !2413)
!2417 = !DILocation(line: 807, column: 37, scope: !2400, inlinedAt: !2413)
!2418 = !DILocation(line: 807, column: 33, scope: !2400, inlinedAt: !2413)
!2419 = !DILocation(line: 808, column: 11, scope: !2400, inlinedAt: !2413)
!2420 = !DILocation(line: 808, column: 7, scope: !2400, inlinedAt: !2413)
!2421 = !DILocation(line: 810, column: 18, scope: !2400, inlinedAt: !2413)
!2422 = !DILocation(line: 810, column: 24, scope: !2400, inlinedAt: !2413)
!2423 = !DILocation(line: 810, column: 7, scope: !2400, inlinedAt: !2413)
!2424 = !DILocation(line: 811, column: 69, scope: !2400, inlinedAt: !2413)
!2425 = !DILocation(line: 812, column: 53, scope: !2400, inlinedAt: !2413)
!2426 = !DILocation(line: 813, column: 49, scope: !2400, inlinedAt: !2413)
!2427 = !DILocation(line: 814, column: 49, scope: !2400, inlinedAt: !2413)
!2428 = !DILocation(line: 811, column: 20, scope: !2400, inlinedAt: !2413)
!2429 = !DILocation(line: 814, column: 62, scope: !2400, inlinedAt: !2413)
!2430 = !DILocation(line: 811, column: 10, scope: !2400, inlinedAt: !2413)
!2431 = !DILocalVariable(name: "n", arg: 1, scope: !2432, file: !772, line: 220, type: !15)
!2432 = distinct !DISubprogram(name: "xcharalloc", scope: !772, file: !772, line: 220, type: !2433, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!12, !15}
!2435 = !{!2431}
!2436 = !DILocation(line: 220, column: 20, scope: !2432, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 815, column: 15, scope: !2400, inlinedAt: !2413)
!2438 = !DILocation(line: 222, column: 10, scope: !2432, inlinedAt: !2437)
!2439 = !DILocation(line: 815, column: 9, scope: !2400, inlinedAt: !2413)
!2440 = !DILocation(line: 816, column: 60, scope: !2400, inlinedAt: !2413)
!2441 = !DILocation(line: 818, column: 32, scope: !2400, inlinedAt: !2413)
!2442 = !DILocation(line: 818, column: 47, scope: !2400, inlinedAt: !2413)
!2443 = !DILocation(line: 816, column: 3, scope: !2400, inlinedAt: !2413)
!2444 = !DILocation(line: 819, column: 9, scope: !2400, inlinedAt: !2413)
!2445 = !DILocation(line: 794, column: 3, scope: !2389)
!2446 = !DILocation(line: 804, column: 33, scope: !2400)
!2447 = !DILocation(line: 804, column: 45, scope: !2400)
!2448 = !DILocation(line: 804, column: 62, scope: !2400)
!2449 = !DILocation(line: 805, column: 51, scope: !2400)
!2450 = !DILocation(line: 807, column: 37, scope: !2400)
!2451 = !DILocation(line: 807, column: 33, scope: !2400)
!2452 = !DILocation(line: 808, column: 11, scope: !2400)
!2453 = !DILocation(line: 808, column: 7, scope: !2400)
!2454 = !DILocation(line: 810, column: 18, scope: !2400)
!2455 = !DILocation(line: 810, column: 27, scope: !2400)
!2456 = !DILocation(line: 810, column: 24, scope: !2400)
!2457 = !DILocation(line: 810, column: 7, scope: !2400)
!2458 = !DILocation(line: 811, column: 69, scope: !2400)
!2459 = !DILocation(line: 812, column: 53, scope: !2400)
!2460 = !DILocation(line: 813, column: 49, scope: !2400)
!2461 = !DILocation(line: 814, column: 49, scope: !2400)
!2462 = !DILocation(line: 811, column: 20, scope: !2400)
!2463 = !DILocation(line: 814, column: 62, scope: !2400)
!2464 = !DILocation(line: 811, column: 10, scope: !2400)
!2465 = !DILocation(line: 220, column: 20, scope: !2432, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 815, column: 15, scope: !2400)
!2467 = !DILocation(line: 222, column: 10, scope: !2432, inlinedAt: !2466)
!2468 = !DILocation(line: 815, column: 9, scope: !2400)
!2469 = !DILocation(line: 816, column: 60, scope: !2400)
!2470 = !DILocation(line: 818, column: 32, scope: !2400)
!2471 = !DILocation(line: 818, column: 47, scope: !2400)
!2472 = !DILocation(line: 816, column: 3, scope: !2400)
!2473 = !DILocation(line: 819, column: 9, scope: !2400)
!2474 = !DILocation(line: 820, column: 7, scope: !2400)
!2475 = !DILocation(line: 821, column: 11, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2400, file: !142, line: 820, column: 7)
!2477 = !{!2478, !2478, i64 0}
!2478 = !{!"long", !838, i64 0}
!2479 = !DILocation(line: 821, column: 5, scope: !2476)
!2480 = !DILocation(line: 822, column: 3, scope: !2400)
!2481 = distinct !DISubprogram(name: "quotearg_free", scope: !142, file: !142, line: 840, type: !956, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2482)
!2482 = !{!2483, !2484}
!2483 = !DILocalVariable(name: "sv", scope: !2481, file: !142, line: 842, type: !169)
!2484 = !DILocalVariable(name: "i", scope: !2481, file: !142, line: 843, type: !53)
!2485 = !DILocation(line: 842, column: 24, scope: !2481)
!2486 = !DILocation(line: 842, column: 19, scope: !2481)
!2487 = !DILocation(line: 843, column: 7, scope: !2481)
!2488 = !DILocation(line: 844, column: 19, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2490, file: !142, discriminator: 1)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !142, line: 844, column: 3)
!2491 = distinct !DILexicalBlock(scope: !2481, file: !142, line: 844, column: 3)
!2492 = !DILocation(line: 844, column: 17, scope: !2489)
!2493 = !DILocation(line: 844, column: 3, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2491, file: !142, discriminator: 1)
!2495 = !DILocation(line: 845, column: 17, scope: !2490)
!2496 = !{!2497, !837, i64 8}
!2497 = !{!"slotvec", !2478, i64 0, !837, i64 8}
!2498 = !DILocation(line: 845, column: 5, scope: !2490)
!2499 = !DILocation(line: 844, column: 28, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2490, file: !142, discriminator: 2)
!2501 = distinct !{!2501, !2502, !2503}
!2502 = !DILocation(line: 844, column: 3, scope: !2491)
!2503 = !DILocation(line: 845, column: 20, scope: !2491)
!2504 = !DILocation(line: 846, column: 13, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2481, file: !142, line: 846, column: 7)
!2506 = !DILocation(line: 846, column: 17, scope: !2505)
!2507 = !DILocation(line: 846, column: 7, scope: !2481)
!2508 = !DILocation(line: 848, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2505, file: !142, line: 847, column: 5)
!2510 = !DILocation(line: 849, column: 21, scope: !2509)
!2511 = !{!2497, !2478, i64 0}
!2512 = !DILocation(line: 850, column: 20, scope: !2509)
!2513 = !DILocation(line: 851, column: 5, scope: !2509)
!2514 = !DILocation(line: 852, column: 10, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2481, file: !142, line: 852, column: 7)
!2516 = !DILocation(line: 852, column: 7, scope: !2481)
!2517 = !DILocation(line: 854, column: 13, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2515, file: !142, line: 853, column: 5)
!2519 = !DILocation(line: 854, column: 7, scope: !2518)
!2520 = !DILocation(line: 855, column: 15, scope: !2518)
!2521 = !DILocation(line: 856, column: 5, scope: !2518)
!2522 = !DILocation(line: 857, column: 10, scope: !2481)
!2523 = !DILocation(line: 858, column: 1, scope: !2481)
!2524 = distinct !DISubprogram(name: "quotearg_n", scope: !142, file: !142, line: 922, type: !2525, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!12, !53, !23}
!2527 = !{!2528, !2529}
!2528 = !DILocalVariable(name: "n", arg: 1, scope: !2524, file: !142, line: 922, type: !53)
!2529 = !DILocalVariable(name: "arg", arg: 2, scope: !2524, file: !142, line: 922, type: !23)
!2530 = !DILocation(line: 922, column: 17, scope: !2524)
!2531 = !DILocation(line: 922, column: 32, scope: !2524)
!2532 = !DILocation(line: 924, column: 10, scope: !2524)
!2533 = !DILocation(line: 924, column: 3, scope: !2524)
!2534 = distinct !DISubprogram(name: "quotearg_n_options", scope: !142, file: !142, line: 869, type: !2535, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!12, !53, !23, !15, !1230}
!2537 = !{!2538, !2539, !2540, !2541, !2542, !2543, !2544, !2547, !2549, !2550, !2551}
!2538 = !DILocalVariable(name: "n", arg: 1, scope: !2534, file: !142, line: 869, type: !53)
!2539 = !DILocalVariable(name: "arg", arg: 2, scope: !2534, file: !142, line: 869, type: !23)
!2540 = !DILocalVariable(name: "argsize", arg: 3, scope: !2534, file: !142, line: 869, type: !15)
!2541 = !DILocalVariable(name: "options", arg: 4, scope: !2534, file: !142, line: 870, type: !1230)
!2542 = !DILocalVariable(name: "e", scope: !2534, file: !142, line: 872, type: !53)
!2543 = !DILocalVariable(name: "sv", scope: !2534, file: !142, line: 874, type: !169)
!2544 = !DILocalVariable(name: "preallocated", scope: !2545, file: !142, line: 881, type: !83)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !142, line: 880, column: 5)
!2546 = distinct !DILexicalBlock(scope: !2534, file: !142, line: 879, column: 7)
!2547 = !DILocalVariable(name: "size", scope: !2548, file: !142, line: 894, type: !15)
!2548 = distinct !DILexicalBlock(scope: !2534, file: !142, line: 893, column: 3)
!2549 = !DILocalVariable(name: "val", scope: !2548, file: !142, line: 895, type: !12)
!2550 = !DILocalVariable(name: "flags", scope: !2548, file: !142, line: 897, type: !53)
!2551 = !DILocalVariable(name: "qsize", scope: !2548, file: !142, line: 898, type: !15)
!2552 = !DILocation(line: 869, column: 25, scope: !2534)
!2553 = !DILocation(line: 869, column: 40, scope: !2534)
!2554 = !DILocation(line: 869, column: 52, scope: !2534)
!2555 = !DILocation(line: 870, column: 51, scope: !2534)
!2556 = !DILocation(line: 872, column: 11, scope: !2534)
!2557 = !DILocation(line: 872, column: 7, scope: !2534)
!2558 = !DILocation(line: 874, column: 24, scope: !2534)
!2559 = !DILocation(line: 874, column: 19, scope: !2534)
!2560 = !DILocation(line: 876, column: 9, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2534, file: !142, line: 876, column: 7)
!2562 = !DILocation(line: 876, column: 7, scope: !2534)
!2563 = !DILocation(line: 877, column: 5, scope: !2561)
!2564 = !DILocation(line: 879, column: 7, scope: !2546)
!2565 = !DILocation(line: 879, column: 14, scope: !2546)
!2566 = !DILocation(line: 879, column: 7, scope: !2534)
!2567 = !DILocation(line: 881, column: 31, scope: !2545)
!2568 = !DILocation(line: 883, column: 67, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2545, file: !142, line: 883, column: 11)
!2570 = !DILocation(line: 883, column: 11, scope: !2545)
!2571 = !DILocation(line: 884, column: 9, scope: !2569)
!2572 = !DILocation(line: 886, column: 32, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2545, file: !142, discriminator: 3)
!2574 = !DILocation(line: 886, column: 61, scope: !2573)
!2575 = !DILocation(line: 886, column: 58, scope: !2573)
!2576 = !DILocation(line: 886, column: 66, scope: !2573)
!2577 = !DILocation(line: 886, column: 22, scope: !2573)
!2578 = !DILocation(line: 886, column: 15, scope: !2573)
!2579 = !DILocation(line: 887, column: 11, scope: !2545)
!2580 = !DILocation(line: 888, column: 15, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2545, file: !142, line: 887, column: 11)
!2582 = !{i64 0, i64 8, !2477, i64 8, i64 8, !836}
!2583 = !DILocation(line: 888, column: 9, scope: !2581)
!2584 = !DILocation(line: 889, column: 20, scope: !2545)
!2585 = !DILocation(line: 889, column: 18, scope: !2545)
!2586 = !DILocation(line: 889, column: 7, scope: !2545)
!2587 = !DILocation(line: 889, column: 38, scope: !2545)
!2588 = !DILocation(line: 889, column: 31, scope: !2545)
!2589 = !DILocation(line: 889, column: 48, scope: !2545)
!2590 = !DILocation(line: 890, column: 14, scope: !2545)
!2591 = !DILocation(line: 891, column: 5, scope: !2545)
!2592 = !DILocation(line: 894, column: 19, scope: !2548)
!2593 = !DILocation(line: 894, column: 25, scope: !2548)
!2594 = !DILocation(line: 894, column: 12, scope: !2548)
!2595 = !DILocation(line: 895, column: 23, scope: !2548)
!2596 = !DILocation(line: 895, column: 11, scope: !2548)
!2597 = !DILocation(line: 897, column: 26, scope: !2548)
!2598 = !DILocation(line: 897, column: 32, scope: !2548)
!2599 = !DILocation(line: 897, column: 9, scope: !2548)
!2600 = !DILocation(line: 899, column: 55, scope: !2548)
!2601 = !DILocation(line: 900, column: 46, scope: !2548)
!2602 = !DILocation(line: 901, column: 55, scope: !2548)
!2603 = !DILocation(line: 902, column: 55, scope: !2548)
!2604 = !DILocation(line: 898, column: 20, scope: !2548)
!2605 = !DILocation(line: 898, column: 12, scope: !2548)
!2606 = !DILocation(line: 904, column: 14, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2548, file: !142, line: 904, column: 9)
!2608 = !DILocation(line: 904, column: 9, scope: !2548)
!2609 = !DILocation(line: 906, column: 35, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2607, file: !142, line: 905, column: 7)
!2611 = !DILocation(line: 906, column: 20, scope: !2610)
!2612 = !DILocation(line: 907, column: 17, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2610, file: !142, line: 907, column: 13)
!2614 = !DILocation(line: 907, column: 13, scope: !2610)
!2615 = !DILocation(line: 908, column: 11, scope: !2613)
!2616 = !DILocation(line: 220, column: 20, scope: !2432, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 909, column: 27, scope: !2610)
!2618 = !DILocation(line: 222, column: 10, scope: !2432, inlinedAt: !2617)
!2619 = !DILocation(line: 909, column: 19, scope: !2610)
!2620 = !DILocation(line: 910, column: 69, scope: !2610)
!2621 = !DILocation(line: 912, column: 44, scope: !2610)
!2622 = !DILocation(line: 913, column: 44, scope: !2610)
!2623 = !DILocation(line: 910, column: 9, scope: !2610)
!2624 = !DILocation(line: 914, column: 7, scope: !2610)
!2625 = !DILocation(line: 916, column: 11, scope: !2548)
!2626 = !DILocation(line: 917, column: 5, scope: !2548)
!2627 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !142, file: !142, line: 928, type: !2628, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!12, !53, !23, !15}
!2630 = !{!2631, !2632, !2633}
!2631 = !DILocalVariable(name: "n", arg: 1, scope: !2627, file: !142, line: 928, type: !53)
!2632 = !DILocalVariable(name: "arg", arg: 2, scope: !2627, file: !142, line: 928, type: !23)
!2633 = !DILocalVariable(name: "argsize", arg: 3, scope: !2627, file: !142, line: 928, type: !15)
!2634 = !DILocation(line: 928, column: 21, scope: !2627)
!2635 = !DILocation(line: 928, column: 36, scope: !2627)
!2636 = !DILocation(line: 928, column: 48, scope: !2627)
!2637 = !DILocation(line: 930, column: 10, scope: !2627)
!2638 = !DILocation(line: 930, column: 3, scope: !2627)
!2639 = distinct !DISubprogram(name: "quotearg", scope: !142, file: !142, line: 934, type: !2640, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!12, !23}
!2642 = !{!2643}
!2643 = !DILocalVariable(name: "arg", arg: 1, scope: !2639, file: !142, line: 934, type: !23)
!2644 = !DILocation(line: 934, column: 23, scope: !2639)
!2645 = !DILocation(line: 922, column: 17, scope: !2524, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 936, column: 10, scope: !2639)
!2647 = !DILocation(line: 922, column: 32, scope: !2524, inlinedAt: !2646)
!2648 = !DILocation(line: 924, column: 10, scope: !2524, inlinedAt: !2646)
!2649 = !DILocation(line: 936, column: 3, scope: !2639)
!2650 = distinct !DISubprogram(name: "quotearg_mem", scope: !142, file: !142, line: 940, type: !2651, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!12, !23, !15}
!2653 = !{!2654, !2655}
!2654 = !DILocalVariable(name: "arg", arg: 1, scope: !2650, file: !142, line: 940, type: !23)
!2655 = !DILocalVariable(name: "argsize", arg: 2, scope: !2650, file: !142, line: 940, type: !15)
!2656 = !DILocation(line: 940, column: 27, scope: !2650)
!2657 = !DILocation(line: 940, column: 39, scope: !2650)
!2658 = !DILocation(line: 928, column: 21, scope: !2627, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 942, column: 10, scope: !2650)
!2660 = !DILocation(line: 928, column: 36, scope: !2627, inlinedAt: !2659)
!2661 = !DILocation(line: 928, column: 48, scope: !2627, inlinedAt: !2659)
!2662 = !DILocation(line: 930, column: 10, scope: !2627, inlinedAt: !2659)
!2663 = !DILocation(line: 942, column: 3, scope: !2650)
!2664 = distinct !DISubprogram(name: "quotearg_n_style", scope: !142, file: !142, line: 946, type: !2665, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!12, !53, !103, !23}
!2667 = !{!2668, !2669, !2670, !2671}
!2668 = !DILocalVariable(name: "n", arg: 1, scope: !2664, file: !142, line: 946, type: !53)
!2669 = !DILocalVariable(name: "s", arg: 2, scope: !2664, file: !142, line: 946, type: !103)
!2670 = !DILocalVariable(name: "arg", arg: 3, scope: !2664, file: !142, line: 946, type: !23)
!2671 = !DILocalVariable(name: "o", scope: !2664, file: !142, line: 948, type: !1231)
!2672 = !DILocalVariable(name: "o", scope: !2673, file: !142, line: 187, type: !149)
!2673 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !142, file: !142, line: 185, type: !2674, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!149, !103}
!2676 = !{!2677, !2672}
!2677 = !DILocalVariable(name: "style", arg: 1, scope: !2673, file: !142, line: 185, type: !103)
!2678 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2679 = !DILocation(line: 187, column: 26, scope: !2673, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 948, column: 36, scope: !2664)
!2681 = !DILocation(line: 946, column: 23, scope: !2664)
!2682 = !DILocation(line: 946, column: 45, scope: !2664)
!2683 = !DILocation(line: 946, column: 60, scope: !2664)
!2684 = !DILocation(line: 948, column: 3, scope: !2664)
!2685 = !DILocation(line: 948, column: 32, scope: !2664)
!2686 = !DILocation(line: 185, column: 48, scope: !2673, inlinedAt: !2680)
!2687 = !DILocation(line: 187, column: 3, scope: !2673, inlinedAt: !2680)
!2688 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2689 = !DILocation(line: 188, column: 13, scope: !2690, inlinedAt: !2680)
!2690 = distinct !DILexicalBlock(scope: !2673, file: !142, line: 188, column: 7)
!2691 = !DILocation(line: 188, column: 7, scope: !2673, inlinedAt: !2680)
!2692 = !DILocation(line: 189, column: 5, scope: !2690, inlinedAt: !2680)
!2693 = !{!2694}
!2694 = distinct !{!2694, !2695, !"quoting_options_from_style: argument 0"}
!2695 = distinct !{!2695, !"quoting_options_from_style"}
!2696 = !DILocation(line: 191, column: 10, scope: !2673, inlinedAt: !2680)
!2697 = !DILocation(line: 192, column: 1, scope: !2673, inlinedAt: !2680)
!2698 = !DILocation(line: 949, column: 10, scope: !2664)
!2699 = !DILocation(line: 950, column: 1, scope: !2664)
!2700 = !DILocation(line: 949, column: 3, scope: !2664)
!2701 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !142, file: !142, line: 953, type: !2702, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2704)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!12, !53, !103, !23, !15}
!2704 = !{!2705, !2706, !2707, !2708, !2709}
!2705 = !DILocalVariable(name: "n", arg: 1, scope: !2701, file: !142, line: 953, type: !53)
!2706 = !DILocalVariable(name: "s", arg: 2, scope: !2701, file: !142, line: 953, type: !103)
!2707 = !DILocalVariable(name: "arg", arg: 3, scope: !2701, file: !142, line: 954, type: !23)
!2708 = !DILocalVariable(name: "argsize", arg: 4, scope: !2701, file: !142, line: 954, type: !15)
!2709 = !DILocalVariable(name: "o", scope: !2701, file: !142, line: 956, type: !1231)
!2710 = !DILocation(line: 187, column: 26, scope: !2673, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 956, column: 36, scope: !2701)
!2712 = !DILocation(line: 953, column: 27, scope: !2701)
!2713 = !DILocation(line: 953, column: 49, scope: !2701)
!2714 = !DILocation(line: 954, column: 35, scope: !2701)
!2715 = !DILocation(line: 954, column: 47, scope: !2701)
!2716 = !DILocation(line: 956, column: 3, scope: !2701)
!2717 = !DILocation(line: 956, column: 32, scope: !2701)
!2718 = !DILocation(line: 185, column: 48, scope: !2673, inlinedAt: !2711)
!2719 = !DILocation(line: 187, column: 3, scope: !2673, inlinedAt: !2711)
!2720 = !DILocation(line: 188, column: 13, scope: !2690, inlinedAt: !2711)
!2721 = !DILocation(line: 188, column: 7, scope: !2673, inlinedAt: !2711)
!2722 = !DILocation(line: 189, column: 5, scope: !2690, inlinedAt: !2711)
!2723 = !{!2724}
!2724 = distinct !{!2724, !2725, !"quoting_options_from_style: argument 0"}
!2725 = distinct !{!2725, !"quoting_options_from_style"}
!2726 = !DILocation(line: 191, column: 10, scope: !2673, inlinedAt: !2711)
!2727 = !DILocation(line: 192, column: 1, scope: !2673, inlinedAt: !2711)
!2728 = !DILocation(line: 957, column: 10, scope: !2701)
!2729 = !DILocation(line: 958, column: 1, scope: !2701)
!2730 = !DILocation(line: 957, column: 3, scope: !2701)
!2731 = distinct !DISubprogram(name: "quotearg_style", scope: !142, file: !142, line: 961, type: !2732, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!12, !103, !23}
!2734 = !{!2735, !2736}
!2735 = !DILocalVariable(name: "s", arg: 1, scope: !2731, file: !142, line: 961, type: !103)
!2736 = !DILocalVariable(name: "arg", arg: 2, scope: !2731, file: !142, line: 961, type: !23)
!2737 = !DILocation(line: 187, column: 26, scope: !2673, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 948, column: 36, scope: !2664, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 963, column: 10, scope: !2731)
!2740 = !DILocation(line: 961, column: 36, scope: !2731)
!2741 = !DILocation(line: 961, column: 51, scope: !2731)
!2742 = !DILocation(line: 946, column: 23, scope: !2664, inlinedAt: !2739)
!2743 = !DILocation(line: 946, column: 45, scope: !2664, inlinedAt: !2739)
!2744 = !DILocation(line: 946, column: 60, scope: !2664, inlinedAt: !2739)
!2745 = !DILocation(line: 948, column: 3, scope: !2664, inlinedAt: !2739)
!2746 = !DILocation(line: 948, column: 32, scope: !2664, inlinedAt: !2739)
!2747 = !DILocation(line: 185, column: 48, scope: !2673, inlinedAt: !2738)
!2748 = !DILocation(line: 187, column: 3, scope: !2673, inlinedAt: !2738)
!2749 = !DILocation(line: 188, column: 13, scope: !2690, inlinedAt: !2738)
!2750 = !DILocation(line: 188, column: 7, scope: !2673, inlinedAt: !2738)
!2751 = !DILocation(line: 189, column: 5, scope: !2690, inlinedAt: !2738)
!2752 = !{!2753}
!2753 = distinct !{!2753, !2754, !"quoting_options_from_style: argument 0"}
!2754 = distinct !{!2754, !"quoting_options_from_style"}
!2755 = !DILocation(line: 191, column: 10, scope: !2673, inlinedAt: !2738)
!2756 = !DILocation(line: 192, column: 1, scope: !2673, inlinedAt: !2738)
!2757 = !DILocation(line: 949, column: 10, scope: !2664, inlinedAt: !2739)
!2758 = !DILocation(line: 950, column: 1, scope: !2664, inlinedAt: !2739)
!2759 = !DILocation(line: 963, column: 3, scope: !2731)
!2760 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !142, file: !142, line: 967, type: !2761, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!12, !103, !23, !15}
!2763 = !{!2764, !2765, !2766}
!2764 = !DILocalVariable(name: "s", arg: 1, scope: !2760, file: !142, line: 967, type: !103)
!2765 = !DILocalVariable(name: "arg", arg: 2, scope: !2760, file: !142, line: 967, type: !23)
!2766 = !DILocalVariable(name: "argsize", arg: 3, scope: !2760, file: !142, line: 967, type: !15)
!2767 = !DILocation(line: 187, column: 26, scope: !2673, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 956, column: 36, scope: !2701, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 969, column: 10, scope: !2760)
!2770 = !DILocation(line: 967, column: 40, scope: !2760)
!2771 = !DILocation(line: 967, column: 55, scope: !2760)
!2772 = !DILocation(line: 967, column: 67, scope: !2760)
!2773 = !DILocation(line: 953, column: 27, scope: !2701, inlinedAt: !2769)
!2774 = !DILocation(line: 953, column: 49, scope: !2701, inlinedAt: !2769)
!2775 = !DILocation(line: 954, column: 35, scope: !2701, inlinedAt: !2769)
!2776 = !DILocation(line: 954, column: 47, scope: !2701, inlinedAt: !2769)
!2777 = !DILocation(line: 956, column: 3, scope: !2701, inlinedAt: !2769)
!2778 = !DILocation(line: 956, column: 32, scope: !2701, inlinedAt: !2769)
!2779 = !DILocation(line: 185, column: 48, scope: !2673, inlinedAt: !2768)
!2780 = !DILocation(line: 187, column: 3, scope: !2673, inlinedAt: !2768)
!2781 = !DILocation(line: 188, column: 13, scope: !2690, inlinedAt: !2768)
!2782 = !DILocation(line: 188, column: 7, scope: !2673, inlinedAt: !2768)
!2783 = !DILocation(line: 189, column: 5, scope: !2690, inlinedAt: !2768)
!2784 = !{!2785}
!2785 = distinct !{!2785, !2786, !"quoting_options_from_style: argument 0"}
!2786 = distinct !{!2786, !"quoting_options_from_style"}
!2787 = !DILocation(line: 191, column: 10, scope: !2673, inlinedAt: !2768)
!2788 = !DILocation(line: 192, column: 1, scope: !2673, inlinedAt: !2768)
!2789 = !DILocation(line: 957, column: 10, scope: !2701, inlinedAt: !2769)
!2790 = !DILocation(line: 958, column: 1, scope: !2701, inlinedAt: !2769)
!2791 = !DILocation(line: 969, column: 3, scope: !2760)
!2792 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !142, file: !142, line: 973, type: !2793, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!12, !23, !15, !13}
!2795 = !{!2796, !2797, !2798, !2799}
!2796 = !DILocalVariable(name: "arg", arg: 1, scope: !2792, file: !142, line: 973, type: !23)
!2797 = !DILocalVariable(name: "argsize", arg: 2, scope: !2792, file: !142, line: 973, type: !15)
!2798 = !DILocalVariable(name: "ch", arg: 3, scope: !2792, file: !142, line: 973, type: !13)
!2799 = !DILocalVariable(name: "options", scope: !2792, file: !142, line: 975, type: !149)
!2800 = !DILocation(line: 973, column: 32, scope: !2792)
!2801 = !DILocation(line: 973, column: 44, scope: !2792)
!2802 = !DILocation(line: 973, column: 58, scope: !2792)
!2803 = !DILocation(line: 975, column: 3, scope: !2792)
!2804 = !DILocation(line: 976, column: 13, scope: !2792)
!2805 = !{i64 0, i64 4, !1116, i64 4, i64 4, !917, i64 8, i64 32, !1116, i64 40, i64 8, !836, i64 48, i64 8, !836}
!2806 = !DILocation(line: 975, column: 26, scope: !2792)
!2807 = !DILocation(line: 144, column: 43, scope: !1254, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 977, column: 3, scope: !2792)
!2809 = !DILocation(line: 144, column: 51, scope: !1254, inlinedAt: !2808)
!2810 = !DILocation(line: 144, column: 58, scope: !1254, inlinedAt: !2808)
!2811 = !DILocation(line: 146, column: 17, scope: !1254, inlinedAt: !2808)
!2812 = !DILocation(line: 148, column: 62, scope: !1272, inlinedAt: !2808)
!2813 = !DILocation(line: 148, column: 57, scope: !1272, inlinedAt: !2808)
!2814 = !DILocation(line: 147, column: 17, scope: !1254, inlinedAt: !2808)
!2815 = !DILocation(line: 149, column: 18, scope: !1254, inlinedAt: !2808)
!2816 = !DILocation(line: 149, column: 15, scope: !1254, inlinedAt: !2808)
!2817 = !DILocation(line: 149, column: 7, scope: !1254, inlinedAt: !2808)
!2818 = !DILocation(line: 150, column: 12, scope: !1254, inlinedAt: !2808)
!2819 = !DILocation(line: 150, column: 15, scope: !1254, inlinedAt: !2808)
!2820 = !DILocation(line: 150, column: 25, scope: !1254, inlinedAt: !2808)
!2821 = !DILocation(line: 150, column: 7, scope: !1254, inlinedAt: !2808)
!2822 = !DILocation(line: 151, column: 18, scope: !1254, inlinedAt: !2808)
!2823 = !DILocation(line: 151, column: 23, scope: !1254, inlinedAt: !2808)
!2824 = !DILocation(line: 151, column: 6, scope: !1254, inlinedAt: !2808)
!2825 = !DILocation(line: 978, column: 10, scope: !2792)
!2826 = !DILocation(line: 979, column: 1, scope: !2792)
!2827 = !DILocation(line: 978, column: 3, scope: !2792)
!2828 = distinct !DISubprogram(name: "quotearg_char", scope: !142, file: !142, line: 982, type: !2829, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!12, !23, !13}
!2831 = !{!2832, !2833}
!2832 = !DILocalVariable(name: "arg", arg: 1, scope: !2828, file: !142, line: 982, type: !23)
!2833 = !DILocalVariable(name: "ch", arg: 2, scope: !2828, file: !142, line: 982, type: !13)
!2834 = !DILocation(line: 982, column: 28, scope: !2828)
!2835 = !DILocation(line: 982, column: 38, scope: !2828)
!2836 = !DILocation(line: 973, column: 32, scope: !2792, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 984, column: 10, scope: !2828)
!2838 = !DILocation(line: 973, column: 44, scope: !2792, inlinedAt: !2837)
!2839 = !DILocation(line: 973, column: 58, scope: !2792, inlinedAt: !2837)
!2840 = !DILocation(line: 975, column: 3, scope: !2792, inlinedAt: !2837)
!2841 = !DILocation(line: 976, column: 13, scope: !2792, inlinedAt: !2837)
!2842 = !DILocation(line: 975, column: 26, scope: !2792, inlinedAt: !2837)
!2843 = !DILocation(line: 144, column: 43, scope: !1254, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 977, column: 3, scope: !2792, inlinedAt: !2837)
!2845 = !DILocation(line: 144, column: 51, scope: !1254, inlinedAt: !2844)
!2846 = !DILocation(line: 144, column: 58, scope: !1254, inlinedAt: !2844)
!2847 = !DILocation(line: 146, column: 17, scope: !1254, inlinedAt: !2844)
!2848 = !DILocation(line: 148, column: 62, scope: !1272, inlinedAt: !2844)
!2849 = !DILocation(line: 148, column: 57, scope: !1272, inlinedAt: !2844)
!2850 = !DILocation(line: 147, column: 17, scope: !1254, inlinedAt: !2844)
!2851 = !DILocation(line: 149, column: 18, scope: !1254, inlinedAt: !2844)
!2852 = !DILocation(line: 149, column: 15, scope: !1254, inlinedAt: !2844)
!2853 = !DILocation(line: 149, column: 7, scope: !1254, inlinedAt: !2844)
!2854 = !DILocation(line: 150, column: 12, scope: !1254, inlinedAt: !2844)
!2855 = !DILocation(line: 150, column: 15, scope: !1254, inlinedAt: !2844)
!2856 = !DILocation(line: 150, column: 25, scope: !1254, inlinedAt: !2844)
!2857 = !DILocation(line: 150, column: 7, scope: !1254, inlinedAt: !2844)
!2858 = !DILocation(line: 151, column: 18, scope: !1254, inlinedAt: !2844)
!2859 = !DILocation(line: 151, column: 23, scope: !1254, inlinedAt: !2844)
!2860 = !DILocation(line: 151, column: 6, scope: !1254, inlinedAt: !2844)
!2861 = !DILocation(line: 978, column: 10, scope: !2792, inlinedAt: !2837)
!2862 = !DILocation(line: 979, column: 1, scope: !2792, inlinedAt: !2837)
!2863 = !DILocation(line: 984, column: 3, scope: !2828)
!2864 = distinct !DISubprogram(name: "quotearg_colon", scope: !142, file: !142, line: 988, type: !2640, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2865)
!2865 = !{!2866}
!2866 = !DILocalVariable(name: "arg", arg: 1, scope: !2864, file: !142, line: 988, type: !23)
!2867 = !DILocation(line: 988, column: 29, scope: !2864)
!2868 = !DILocation(line: 982, column: 28, scope: !2828, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 990, column: 10, scope: !2864)
!2870 = !DILocation(line: 982, column: 38, scope: !2828, inlinedAt: !2869)
!2871 = !DILocation(line: 973, column: 32, scope: !2792, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 984, column: 10, scope: !2828, inlinedAt: !2869)
!2873 = !DILocation(line: 973, column: 44, scope: !2792, inlinedAt: !2872)
!2874 = !DILocation(line: 973, column: 58, scope: !2792, inlinedAt: !2872)
!2875 = !DILocation(line: 975, column: 3, scope: !2792, inlinedAt: !2872)
!2876 = !DILocation(line: 976, column: 13, scope: !2792, inlinedAt: !2872)
!2877 = !DILocation(line: 975, column: 26, scope: !2792, inlinedAt: !2872)
!2878 = !DILocation(line: 144, column: 43, scope: !1254, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 977, column: 3, scope: !2792, inlinedAt: !2872)
!2880 = !DILocation(line: 144, column: 51, scope: !1254, inlinedAt: !2879)
!2881 = !DILocation(line: 144, column: 58, scope: !1254, inlinedAt: !2879)
!2882 = !DILocation(line: 146, column: 17, scope: !1254, inlinedAt: !2879)
!2883 = !DILocation(line: 148, column: 57, scope: !1272, inlinedAt: !2879)
!2884 = !DILocation(line: 147, column: 17, scope: !1254, inlinedAt: !2879)
!2885 = !DILocation(line: 149, column: 7, scope: !1254, inlinedAt: !2879)
!2886 = !DILocation(line: 150, column: 12, scope: !1254, inlinedAt: !2879)
!2887 = !DILocation(line: 151, column: 6, scope: !1254, inlinedAt: !2879)
!2888 = !DILocation(line: 978, column: 10, scope: !2792, inlinedAt: !2872)
!2889 = !DILocation(line: 979, column: 1, scope: !2792, inlinedAt: !2872)
!2890 = !DILocation(line: 990, column: 3, scope: !2864)
!2891 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !142, file: !142, line: 994, type: !2651, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2892)
!2892 = !{!2893, !2894}
!2893 = !DILocalVariable(name: "arg", arg: 1, scope: !2891, file: !142, line: 994, type: !23)
!2894 = !DILocalVariable(name: "argsize", arg: 2, scope: !2891, file: !142, line: 994, type: !15)
!2895 = !DILocation(line: 994, column: 33, scope: !2891)
!2896 = !DILocation(line: 994, column: 45, scope: !2891)
!2897 = !DILocation(line: 973, column: 32, scope: !2792, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 996, column: 10, scope: !2891)
!2899 = !DILocation(line: 973, column: 44, scope: !2792, inlinedAt: !2898)
!2900 = !DILocation(line: 973, column: 58, scope: !2792, inlinedAt: !2898)
!2901 = !DILocation(line: 975, column: 3, scope: !2792, inlinedAt: !2898)
!2902 = !DILocation(line: 976, column: 13, scope: !2792, inlinedAt: !2898)
!2903 = !DILocation(line: 975, column: 26, scope: !2792, inlinedAt: !2898)
!2904 = !DILocation(line: 144, column: 43, scope: !1254, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 977, column: 3, scope: !2792, inlinedAt: !2898)
!2906 = !DILocation(line: 144, column: 51, scope: !1254, inlinedAt: !2905)
!2907 = !DILocation(line: 144, column: 58, scope: !1254, inlinedAt: !2905)
!2908 = !DILocation(line: 146, column: 17, scope: !1254, inlinedAt: !2905)
!2909 = !DILocation(line: 148, column: 57, scope: !1272, inlinedAt: !2905)
!2910 = !DILocation(line: 147, column: 17, scope: !1254, inlinedAt: !2905)
!2911 = !DILocation(line: 149, column: 7, scope: !1254, inlinedAt: !2905)
!2912 = !DILocation(line: 150, column: 12, scope: !1254, inlinedAt: !2905)
!2913 = !DILocation(line: 151, column: 6, scope: !1254, inlinedAt: !2905)
!2914 = !DILocation(line: 978, column: 10, scope: !2792, inlinedAt: !2898)
!2915 = !DILocation(line: 979, column: 1, scope: !2792, inlinedAt: !2898)
!2916 = !DILocation(line: 996, column: 3, scope: !2891)
!2917 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !142, file: !142, line: 1000, type: !2665, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2918)
!2918 = !{!2919, !2920, !2921, !2922}
!2919 = !DILocalVariable(name: "n", arg: 1, scope: !2917, file: !142, line: 1000, type: !53)
!2920 = !DILocalVariable(name: "s", arg: 2, scope: !2917, file: !142, line: 1000, type: !103)
!2921 = !DILocalVariable(name: "arg", arg: 3, scope: !2917, file: !142, line: 1000, type: !23)
!2922 = !DILocalVariable(name: "options", scope: !2917, file: !142, line: 1002, type: !149)
!2923 = !DILocation(line: 187, column: 26, scope: !2673, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 1003, column: 13, scope: !2917)
!2925 = !DILocation(line: 1000, column: 29, scope: !2917)
!2926 = !DILocation(line: 1000, column: 51, scope: !2917)
!2927 = !DILocation(line: 1000, column: 66, scope: !2917)
!2928 = !DILocation(line: 1002, column: 3, scope: !2917)
!2929 = !DILocation(line: 185, column: 48, scope: !2673, inlinedAt: !2924)
!2930 = !DILocation(line: 187, column: 3, scope: !2673, inlinedAt: !2924)
!2931 = !DILocation(line: 188, column: 13, scope: !2690, inlinedAt: !2924)
!2932 = !DILocation(line: 188, column: 7, scope: !2673, inlinedAt: !2924)
!2933 = !DILocation(line: 189, column: 5, scope: !2690, inlinedAt: !2924)
!2934 = !{!2935}
!2935 = distinct !{!2935, !2936, !"quoting_options_from_style: argument 0"}
!2936 = distinct !{!2936, !"quoting_options_from_style"}
!2937 = !DILocation(line: 191, column: 10, scope: !2673, inlinedAt: !2924)
!2938 = !DILocation(line: 192, column: 1, scope: !2673, inlinedAt: !2924)
!2939 = !DILocation(line: 1003, column: 13, scope: !2917)
!2940 = !DILocation(line: 1002, column: 26, scope: !2917)
!2941 = !DILocation(line: 144, column: 43, scope: !1254, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 1004, column: 3, scope: !2917)
!2943 = !DILocation(line: 144, column: 51, scope: !1254, inlinedAt: !2942)
!2944 = !DILocation(line: 144, column: 58, scope: !1254, inlinedAt: !2942)
!2945 = !DILocation(line: 146, column: 17, scope: !1254, inlinedAt: !2942)
!2946 = !DILocation(line: 148, column: 57, scope: !1272, inlinedAt: !2942)
!2947 = !DILocation(line: 147, column: 17, scope: !1254, inlinedAt: !2942)
!2948 = !DILocation(line: 149, column: 7, scope: !1254, inlinedAt: !2942)
!2949 = !DILocation(line: 150, column: 12, scope: !1254, inlinedAt: !2942)
!2950 = !DILocation(line: 151, column: 6, scope: !1254, inlinedAt: !2942)
!2951 = !DILocation(line: 1005, column: 10, scope: !2917)
!2952 = !DILocation(line: 1006, column: 1, scope: !2917)
!2953 = !DILocation(line: 1005, column: 3, scope: !2917)
!2954 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !142, file: !142, line: 1009, type: !2955, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!12, !53, !23, !23, !23}
!2957 = !{!2958, !2959, !2960, !2961}
!2958 = !DILocalVariable(name: "n", arg: 1, scope: !2954, file: !142, line: 1009, type: !53)
!2959 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2954, file: !142, line: 1009, type: !23)
!2960 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2954, file: !142, line: 1010, type: !23)
!2961 = !DILocalVariable(name: "arg", arg: 4, scope: !2954, file: !142, line: 1010, type: !23)
!2962 = !DILocation(line: 1009, column: 24, scope: !2954)
!2963 = !DILocation(line: 1009, column: 39, scope: !2954)
!2964 = !DILocation(line: 1010, column: 32, scope: !2954)
!2965 = !DILocation(line: 1010, column: 57, scope: !2954)
!2966 = !DILocalVariable(name: "n", arg: 1, scope: !2967, file: !142, line: 1017, type: !53)
!2967 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !142, file: !142, line: 1017, type: !2968, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!12, !53, !23, !23, !23, !15}
!2970 = !{!2966, !2971, !2972, !2973, !2974, !2975}
!2971 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2967, file: !142, line: 1017, type: !23)
!2972 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2967, file: !142, line: 1018, type: !23)
!2973 = !DILocalVariable(name: "arg", arg: 4, scope: !2967, file: !142, line: 1019, type: !23)
!2974 = !DILocalVariable(name: "argsize", arg: 5, scope: !2967, file: !142, line: 1019, type: !15)
!2975 = !DILocalVariable(name: "o", scope: !2967, file: !142, line: 1021, type: !149)
!2976 = !DILocation(line: 1017, column: 28, scope: !2967, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 1012, column: 10, scope: !2954)
!2978 = !DILocation(line: 1017, column: 43, scope: !2967, inlinedAt: !2977)
!2979 = !DILocation(line: 1018, column: 36, scope: !2967, inlinedAt: !2977)
!2980 = !DILocation(line: 1019, column: 36, scope: !2967, inlinedAt: !2977)
!2981 = !DILocation(line: 1019, column: 48, scope: !2967, inlinedAt: !2977)
!2982 = !DILocation(line: 1021, column: 3, scope: !2967, inlinedAt: !2977)
!2983 = !DILocation(line: 1021, column: 30, scope: !2967, inlinedAt: !2977)
!2984 = !DILocation(line: 1021, column: 26, scope: !2967, inlinedAt: !2977)
!2985 = !DILocation(line: 171, column: 45, scope: !1304, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 1022, column: 3, scope: !2967, inlinedAt: !2977)
!2987 = !DILocation(line: 172, column: 33, scope: !1304, inlinedAt: !2986)
!2988 = !DILocation(line: 172, column: 57, scope: !1304, inlinedAt: !2986)
!2989 = !DILocation(line: 176, column: 6, scope: !1304, inlinedAt: !2986)
!2990 = !DILocation(line: 176, column: 12, scope: !1304, inlinedAt: !2986)
!2991 = !DILocation(line: 177, column: 8, scope: !1320, inlinedAt: !2986)
!2992 = !DILocation(line: 177, column: 23, scope: !1322, inlinedAt: !2986)
!2993 = !DILocation(line: 177, column: 19, scope: !1320, inlinedAt: !2986)
!2994 = !DILocation(line: 178, column: 5, scope: !1320, inlinedAt: !2986)
!2995 = !DILocation(line: 179, column: 6, scope: !1304, inlinedAt: !2986)
!2996 = !DILocation(line: 179, column: 17, scope: !1304, inlinedAt: !2986)
!2997 = !DILocation(line: 180, column: 6, scope: !1304, inlinedAt: !2986)
!2998 = !DILocation(line: 180, column: 18, scope: !1304, inlinedAt: !2986)
!2999 = !DILocation(line: 1023, column: 10, scope: !2967, inlinedAt: !2977)
!3000 = !DILocation(line: 1024, column: 1, scope: !2967, inlinedAt: !2977)
!3001 = !DILocation(line: 1012, column: 3, scope: !2954)
!3002 = !DILocation(line: 1017, column: 28, scope: !2967)
!3003 = !DILocation(line: 1017, column: 43, scope: !2967)
!3004 = !DILocation(line: 1018, column: 36, scope: !2967)
!3005 = !DILocation(line: 1019, column: 36, scope: !2967)
!3006 = !DILocation(line: 1019, column: 48, scope: !2967)
!3007 = !DILocation(line: 1021, column: 3, scope: !2967)
!3008 = !DILocation(line: 1021, column: 30, scope: !2967)
!3009 = !DILocation(line: 1021, column: 26, scope: !2967)
!3010 = !DILocation(line: 171, column: 45, scope: !1304, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 1022, column: 3, scope: !2967)
!3012 = !DILocation(line: 172, column: 33, scope: !1304, inlinedAt: !3011)
!3013 = !DILocation(line: 172, column: 57, scope: !1304, inlinedAt: !3011)
!3014 = !DILocation(line: 176, column: 6, scope: !1304, inlinedAt: !3011)
!3015 = !DILocation(line: 176, column: 12, scope: !1304, inlinedAt: !3011)
!3016 = !DILocation(line: 177, column: 8, scope: !1320, inlinedAt: !3011)
!3017 = !DILocation(line: 177, column: 23, scope: !1322, inlinedAt: !3011)
!3018 = !DILocation(line: 177, column: 19, scope: !1320, inlinedAt: !3011)
!3019 = !DILocation(line: 178, column: 5, scope: !1320, inlinedAt: !3011)
!3020 = !DILocation(line: 179, column: 6, scope: !1304, inlinedAt: !3011)
!3021 = !DILocation(line: 179, column: 17, scope: !1304, inlinedAt: !3011)
!3022 = !DILocation(line: 180, column: 6, scope: !1304, inlinedAt: !3011)
!3023 = !DILocation(line: 180, column: 18, scope: !1304, inlinedAt: !3011)
!3024 = !DILocation(line: 1023, column: 10, scope: !2967)
!3025 = !DILocation(line: 1024, column: 1, scope: !2967)
!3026 = !DILocation(line: 1023, column: 3, scope: !2967)
!3027 = distinct !DISubprogram(name: "quotearg_custom", scope: !142, file: !142, line: 1027, type: !3028, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!12, !23, !23, !23}
!3030 = !{!3031, !3032, !3033}
!3031 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3027, file: !142, line: 1027, type: !23)
!3032 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3027, file: !142, line: 1027, type: !23)
!3033 = !DILocalVariable(name: "arg", arg: 3, scope: !3027, file: !142, line: 1028, type: !23)
!3034 = !DILocation(line: 1027, column: 30, scope: !3027)
!3035 = !DILocation(line: 1027, column: 54, scope: !3027)
!3036 = !DILocation(line: 1028, column: 30, scope: !3027)
!3037 = !DILocation(line: 1009, column: 24, scope: !2954, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 1030, column: 10, scope: !3027)
!3039 = !DILocation(line: 1009, column: 39, scope: !2954, inlinedAt: !3038)
!3040 = !DILocation(line: 1010, column: 32, scope: !2954, inlinedAt: !3038)
!3041 = !DILocation(line: 1010, column: 57, scope: !2954, inlinedAt: !3038)
!3042 = !DILocation(line: 1017, column: 28, scope: !2967, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 1012, column: 10, scope: !2954, inlinedAt: !3038)
!3044 = !DILocation(line: 1017, column: 43, scope: !2967, inlinedAt: !3043)
!3045 = !DILocation(line: 1018, column: 36, scope: !2967, inlinedAt: !3043)
!3046 = !DILocation(line: 1019, column: 36, scope: !2967, inlinedAt: !3043)
!3047 = !DILocation(line: 1019, column: 48, scope: !2967, inlinedAt: !3043)
!3048 = !DILocation(line: 1021, column: 3, scope: !2967, inlinedAt: !3043)
!3049 = !DILocation(line: 1021, column: 30, scope: !2967, inlinedAt: !3043)
!3050 = !DILocation(line: 1021, column: 26, scope: !2967, inlinedAt: !3043)
!3051 = !DILocation(line: 171, column: 45, scope: !1304, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 1022, column: 3, scope: !2967, inlinedAt: !3043)
!3053 = !DILocation(line: 172, column: 33, scope: !1304, inlinedAt: !3052)
!3054 = !DILocation(line: 172, column: 57, scope: !1304, inlinedAt: !3052)
!3055 = !DILocation(line: 176, column: 6, scope: !1304, inlinedAt: !3052)
!3056 = !DILocation(line: 176, column: 12, scope: !1304, inlinedAt: !3052)
!3057 = !DILocation(line: 177, column: 8, scope: !1320, inlinedAt: !3052)
!3058 = !DILocation(line: 177, column: 23, scope: !1322, inlinedAt: !3052)
!3059 = !DILocation(line: 177, column: 19, scope: !1320, inlinedAt: !3052)
!3060 = !DILocation(line: 178, column: 5, scope: !1320, inlinedAt: !3052)
!3061 = !DILocation(line: 179, column: 6, scope: !1304, inlinedAt: !3052)
!3062 = !DILocation(line: 179, column: 17, scope: !1304, inlinedAt: !3052)
!3063 = !DILocation(line: 180, column: 6, scope: !1304, inlinedAt: !3052)
!3064 = !DILocation(line: 180, column: 18, scope: !1304, inlinedAt: !3052)
!3065 = !DILocation(line: 1023, column: 10, scope: !2967, inlinedAt: !3043)
!3066 = !DILocation(line: 1024, column: 1, scope: !2967, inlinedAt: !3043)
!3067 = !DILocation(line: 1030, column: 3, scope: !3027)
!3068 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !142, file: !142, line: 1034, type: !3069, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!12, !23, !23, !23, !15}
!3071 = !{!3072, !3073, !3074, !3075}
!3072 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3068, file: !142, line: 1034, type: !23)
!3073 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3068, file: !142, line: 1034, type: !23)
!3074 = !DILocalVariable(name: "arg", arg: 3, scope: !3068, file: !142, line: 1035, type: !23)
!3075 = !DILocalVariable(name: "argsize", arg: 4, scope: !3068, file: !142, line: 1035, type: !15)
!3076 = !DILocation(line: 1034, column: 34, scope: !3068)
!3077 = !DILocation(line: 1034, column: 58, scope: !3068)
!3078 = !DILocation(line: 1035, column: 34, scope: !3068)
!3079 = !DILocation(line: 1035, column: 46, scope: !3068)
!3080 = !DILocation(line: 1017, column: 28, scope: !2967, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 1037, column: 10, scope: !3068)
!3082 = !DILocation(line: 1017, column: 43, scope: !2967, inlinedAt: !3081)
!3083 = !DILocation(line: 1018, column: 36, scope: !2967, inlinedAt: !3081)
!3084 = !DILocation(line: 1019, column: 36, scope: !2967, inlinedAt: !3081)
!3085 = !DILocation(line: 1019, column: 48, scope: !2967, inlinedAt: !3081)
!3086 = !DILocation(line: 1021, column: 3, scope: !2967, inlinedAt: !3081)
!3087 = !DILocation(line: 1021, column: 30, scope: !2967, inlinedAt: !3081)
!3088 = !DILocation(line: 1021, column: 26, scope: !2967, inlinedAt: !3081)
!3089 = !DILocation(line: 171, column: 45, scope: !1304, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 1022, column: 3, scope: !2967, inlinedAt: !3081)
!3091 = !DILocation(line: 172, column: 33, scope: !1304, inlinedAt: !3090)
!3092 = !DILocation(line: 172, column: 57, scope: !1304, inlinedAt: !3090)
!3093 = !DILocation(line: 176, column: 6, scope: !1304, inlinedAt: !3090)
!3094 = !DILocation(line: 176, column: 12, scope: !1304, inlinedAt: !3090)
!3095 = !DILocation(line: 177, column: 8, scope: !1320, inlinedAt: !3090)
!3096 = !DILocation(line: 177, column: 23, scope: !1322, inlinedAt: !3090)
!3097 = !DILocation(line: 177, column: 19, scope: !1320, inlinedAt: !3090)
!3098 = !DILocation(line: 178, column: 5, scope: !1320, inlinedAt: !3090)
!3099 = !DILocation(line: 179, column: 6, scope: !1304, inlinedAt: !3090)
!3100 = !DILocation(line: 179, column: 17, scope: !1304, inlinedAt: !3090)
!3101 = !DILocation(line: 180, column: 6, scope: !1304, inlinedAt: !3090)
!3102 = !DILocation(line: 180, column: 18, scope: !1304, inlinedAt: !3090)
!3103 = !DILocation(line: 1023, column: 10, scope: !2967, inlinedAt: !3081)
!3104 = !DILocation(line: 1024, column: 1, scope: !2967, inlinedAt: !3081)
!3105 = !DILocation(line: 1037, column: 3, scope: !3068)
!3106 = distinct !DISubprogram(name: "quote_n_mem", scope: !142, file: !142, line: 1052, type: !3107, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!23, !53, !23, !15}
!3109 = !{!3110, !3111, !3112}
!3110 = !DILocalVariable(name: "n", arg: 1, scope: !3106, file: !142, line: 1052, type: !53)
!3111 = !DILocalVariable(name: "arg", arg: 2, scope: !3106, file: !142, line: 1052, type: !23)
!3112 = !DILocalVariable(name: "argsize", arg: 3, scope: !3106, file: !142, line: 1052, type: !15)
!3113 = !DILocation(line: 1052, column: 18, scope: !3106)
!3114 = !DILocation(line: 1052, column: 33, scope: !3106)
!3115 = !DILocation(line: 1052, column: 45, scope: !3106)
!3116 = !DILocation(line: 1054, column: 10, scope: !3106)
!3117 = !DILocation(line: 1054, column: 3, scope: !3106)
!3118 = distinct !DISubprogram(name: "quote_mem", scope: !142, file: !142, line: 1058, type: !3119, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!23, !23, !15}
!3121 = !{!3122, !3123}
!3122 = !DILocalVariable(name: "arg", arg: 1, scope: !3118, file: !142, line: 1058, type: !23)
!3123 = !DILocalVariable(name: "argsize", arg: 2, scope: !3118, file: !142, line: 1058, type: !15)
!3124 = !DILocation(line: 1058, column: 24, scope: !3118)
!3125 = !DILocation(line: 1058, column: 36, scope: !3118)
!3126 = !DILocation(line: 1052, column: 18, scope: !3106, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 1060, column: 10, scope: !3118)
!3128 = !DILocation(line: 1052, column: 33, scope: !3106, inlinedAt: !3127)
!3129 = !DILocation(line: 1052, column: 45, scope: !3106, inlinedAt: !3127)
!3130 = !DILocation(line: 1054, column: 10, scope: !3106, inlinedAt: !3127)
!3131 = !DILocation(line: 1060, column: 3, scope: !3118)
!3132 = distinct !DISubprogram(name: "quote_n", scope: !142, file: !142, line: 1064, type: !3133, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!23, !53, !23}
!3135 = !{!3136, !3137}
!3136 = !DILocalVariable(name: "n", arg: 1, scope: !3132, file: !142, line: 1064, type: !53)
!3137 = !DILocalVariable(name: "arg", arg: 2, scope: !3132, file: !142, line: 1064, type: !23)
!3138 = !DILocation(line: 1064, column: 14, scope: !3132)
!3139 = !DILocation(line: 1064, column: 29, scope: !3132)
!3140 = !DILocation(line: 1052, column: 18, scope: !3106, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 1066, column: 10, scope: !3132)
!3142 = !DILocation(line: 1052, column: 33, scope: !3106, inlinedAt: !3141)
!3143 = !DILocation(line: 1052, column: 45, scope: !3106, inlinedAt: !3141)
!3144 = !DILocation(line: 1054, column: 10, scope: !3106, inlinedAt: !3141)
!3145 = !DILocation(line: 1066, column: 3, scope: !3132)
!3146 = distinct !DISubprogram(name: "quote", scope: !142, file: !142, line: 1070, type: !3147, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!23, !23}
!3149 = !{!3150}
!3150 = !DILocalVariable(name: "arg", arg: 1, scope: !3146, file: !142, line: 1070, type: !23)
!3151 = !DILocation(line: 1070, column: 20, scope: !3146)
!3152 = !DILocation(line: 1064, column: 14, scope: !3132, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 1072, column: 10, scope: !3146)
!3154 = !DILocation(line: 1064, column: 29, scope: !3132, inlinedAt: !3153)
!3155 = !DILocation(line: 1052, column: 18, scope: !3106, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 1066, column: 10, scope: !3132, inlinedAt: !3153)
!3157 = !DILocation(line: 1052, column: 33, scope: !3106, inlinedAt: !3156)
!3158 = !DILocation(line: 1052, column: 45, scope: !3106, inlinedAt: !3156)
!3159 = !DILocation(line: 1054, column: 10, scope: !3106, inlinedAt: !3156)
!3160 = !DILocation(line: 1072, column: 3, scope: !3146)
!3161 = distinct !DISubprogram(name: "version_etc_arn", scope: !765, file: !765, line: 62, type: !3162, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !761, variables: !3219)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !3164, !23, !23, !23, !3218, !15}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3166, line: 49, baseType: !3167)
!3166 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3168, line: 241, size: 1728, elements: !3169)
!3168 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3190, !3191, !3192, !3193, !3196, !3197, !3199, !3203, !3206, !3208, !3209, !3210, !3211, !3212, !3213, !3214}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3167, file: !3168, line: 242, baseType: !53, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3167, file: !3168, line: 247, baseType: !12, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3167, file: !3168, line: 248, baseType: !12, size: 64, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3167, file: !3168, line: 249, baseType: !12, size: 64, offset: 192)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3167, file: !3168, line: 250, baseType: !12, size: 64, offset: 256)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3167, file: !3168, line: 251, baseType: !12, size: 64, offset: 320)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3167, file: !3168, line: 252, baseType: !12, size: 64, offset: 384)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3167, file: !3168, line: 253, baseType: !12, size: 64, offset: 448)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3167, file: !3168, line: 254, baseType: !12, size: 64, offset: 512)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3167, file: !3168, line: 256, baseType: !12, size: 64, offset: 576)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3167, file: !3168, line: 257, baseType: !12, size: 64, offset: 640)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3167, file: !3168, line: 258, baseType: !12, size: 64, offset: 704)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3167, file: !3168, line: 260, baseType: !3183, size: 64, offset: 768)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3168, line: 156, size: 192, elements: !3185)
!3185 = !{!3186, !3187, !3189}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3184, file: !3168, line: 157, baseType: !3183, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3184, file: !3168, line: 158, baseType: !3188, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3184, file: !3168, line: 162, baseType: !53, size: 32, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3167, file: !3168, line: 262, baseType: !3188, size: 64, offset: 832)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3167, file: !3168, line: 264, baseType: !53, size: 32, offset: 896)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3167, file: !3168, line: 268, baseType: !53, size: 32, offset: 928)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3167, file: !3168, line: 270, baseType: !3194, size: 64, offset: 960)
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !3195, line: 140, baseType: !1034)
!3195 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3167, file: !3168, line: 274, baseType: !138, size: 16, offset: 1024)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3167, file: !3168, line: 275, baseType: !3198, size: 8, offset: 1040)
!3198 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3167, file: !3168, line: 276, baseType: !3200, size: 8, offset: 1048)
!3200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !3201)
!3201 = !{!3202}
!3202 = !DISubrange(count: 1)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3167, file: !3168, line: 280, baseType: !3204, size: 64, offset: 1088)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3168, line: 150, baseType: null)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3167, file: !3168, line: 289, baseType: !3207, size: 64, offset: 1152)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !3195, line: 141, baseType: !1034)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3167, file: !3168, line: 297, baseType: !14, size: 64, offset: 1216)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3167, file: !3168, line: 298, baseType: !14, size: 64, offset: 1280)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3167, file: !3168, line: 299, baseType: !14, size: 64, offset: 1344)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3167, file: !3168, line: 300, baseType: !14, size: 64, offset: 1408)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3167, file: !3168, line: 302, baseType: !15, size: 64, offset: 1472)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3167, file: !3168, line: 303, baseType: !53, size: 32, offset: 1536)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3167, file: !3168, line: 305, baseType: !3215, size: 160, offset: 1568)
!3215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !3216)
!3216 = !{!3217}
!3217 = !DISubrange(count: 20)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3225}
!3220 = !DILocalVariable(name: "stream", arg: 1, scope: !3161, file: !765, line: 62, type: !3164)
!3221 = !DILocalVariable(name: "command_name", arg: 2, scope: !3161, file: !765, line: 63, type: !23)
!3222 = !DILocalVariable(name: "package", arg: 3, scope: !3161, file: !765, line: 63, type: !23)
!3223 = !DILocalVariable(name: "version", arg: 4, scope: !3161, file: !765, line: 64, type: !23)
!3224 = !DILocalVariable(name: "authors", arg: 5, scope: !3161, file: !765, line: 65, type: !3218)
!3225 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3161, file: !765, line: 65, type: !15)
!3226 = !DILocation(line: 62, column: 24, scope: !3161)
!3227 = !DILocation(line: 63, column: 30, scope: !3161)
!3228 = !DILocation(line: 63, column: 56, scope: !3161)
!3229 = !DILocation(line: 64, column: 30, scope: !3161)
!3230 = !DILocation(line: 65, column: 39, scope: !3161)
!3231 = !DILocation(line: 65, column: 55, scope: !3161)
!3232 = !DILocation(line: 67, column: 7, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3161, file: !765, line: 67, column: 7)
!3234 = !DILocation(line: 67, column: 7, scope: !3161)
!3235 = !DILocation(line: 68, column: 5, scope: !3233)
!3236 = !DILocation(line: 70, column: 5, scope: !3233)
!3237 = !DILocation(line: 84, column: 3, scope: !3161)
!3238 = !DILocation(line: 84, column: 3, scope: !3239)
!3239 = !DILexicalBlockFile(scope: !3161, file: !765, discriminator: 1)
!3240 = !DILocation(line: 86, column: 3, scope: !3161)
!3241 = !DILocation(line: 86, column: 3, scope: !3239)
!3242 = !DILocation(line: 95, column: 3, scope: !3161)
!3243 = !DILocation(line: 99, column: 7, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3161, file: !765, line: 96, column: 5)
!3245 = !DILocation(line: 102, column: 7, scope: !3244)
!3246 = !DILocation(line: 102, column: 7, scope: !3247)
!3247 = !DILexicalBlockFile(scope: !3244, file: !765, discriminator: 1)
!3248 = !DILocation(line: 103, column: 7, scope: !3244)
!3249 = !DILocation(line: 106, column: 7, scope: !3244)
!3250 = !DILocation(line: 106, column: 7, scope: !3247)
!3251 = !DILocation(line: 107, column: 7, scope: !3244)
!3252 = !DILocation(line: 110, column: 7, scope: !3244)
!3253 = !DILocation(line: 110, column: 7, scope: !3247)
!3254 = !DILocation(line: 112, column: 7, scope: !3244)
!3255 = !DILocation(line: 117, column: 7, scope: !3244)
!3256 = !DILocation(line: 117, column: 7, scope: !3247)
!3257 = !DILocation(line: 119, column: 7, scope: !3244)
!3258 = !DILocation(line: 124, column: 7, scope: !3244)
!3259 = !DILocation(line: 124, column: 7, scope: !3247)
!3260 = !DILocation(line: 126, column: 7, scope: !3244)
!3261 = !DILocation(line: 131, column: 7, scope: !3244)
!3262 = !DILocation(line: 131, column: 7, scope: !3247)
!3263 = !DILocation(line: 134, column: 7, scope: !3244)
!3264 = !DILocation(line: 139, column: 7, scope: !3244)
!3265 = !DILocation(line: 139, column: 7, scope: !3247)
!3266 = !DILocation(line: 142, column: 7, scope: !3244)
!3267 = !DILocation(line: 147, column: 7, scope: !3244)
!3268 = !DILocation(line: 147, column: 7, scope: !3247)
!3269 = !DILocation(line: 151, column: 7, scope: !3244)
!3270 = !DILocation(line: 156, column: 7, scope: !3244)
!3271 = !DILocation(line: 156, column: 7, scope: !3247)
!3272 = !DILocation(line: 160, column: 7, scope: !3244)
!3273 = !DILocation(line: 167, column: 7, scope: !3244)
!3274 = !DILocation(line: 167, column: 7, scope: !3247)
!3275 = !DILocation(line: 171, column: 7, scope: !3244)
!3276 = !DILocation(line: 173, column: 1, scope: !3161)
!3277 = distinct !DISubprogram(name: "version_etc_ar", scope: !765, file: !765, line: 180, type: !3278, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !761, variables: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3164, !23, !23, !23, !3218}
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3286}
!3281 = !DILocalVariable(name: "stream", arg: 1, scope: !3277, file: !765, line: 180, type: !3164)
!3282 = !DILocalVariable(name: "command_name", arg: 2, scope: !3277, file: !765, line: 181, type: !23)
!3283 = !DILocalVariable(name: "package", arg: 3, scope: !3277, file: !765, line: 181, type: !23)
!3284 = !DILocalVariable(name: "version", arg: 4, scope: !3277, file: !765, line: 182, type: !23)
!3285 = !DILocalVariable(name: "authors", arg: 5, scope: !3277, file: !765, line: 182, type: !3218)
!3286 = !DILocalVariable(name: "n_authors", scope: !3277, file: !765, line: 184, type: !15)
!3287 = !DILocation(line: 180, column: 23, scope: !3277)
!3288 = !DILocation(line: 181, column: 29, scope: !3277)
!3289 = !DILocation(line: 181, column: 55, scope: !3277)
!3290 = !DILocation(line: 182, column: 29, scope: !3277)
!3291 = !DILocation(line: 182, column: 59, scope: !3277)
!3292 = !DILocation(line: 184, column: 10, scope: !3277)
!3293 = !DILocation(line: 186, column: 8, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3277, file: !765, line: 186, column: 3)
!3295 = !DILocation(line: 186, column: 23, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !3297, file: !765, discriminator: 1)
!3297 = distinct !DILexicalBlock(scope: !3294, file: !765, line: 186, column: 3)
!3298 = !DILocation(line: 186, column: 3, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !3294, file: !765, discriminator: 1)
!3300 = !DILocation(line: 186, column: 52, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3297, file: !765, discriminator: 3)
!3302 = distinct !{!3302, !3303, !3304}
!3303 = !DILocation(line: 186, column: 3, scope: !3294)
!3304 = !DILocation(line: 187, column: 5, scope: !3294)
!3305 = !DILocation(line: 188, column: 3, scope: !3277)
!3306 = !DILocation(line: 189, column: 1, scope: !3277)
!3307 = distinct !DISubprogram(name: "version_etc_va", scope: !765, file: !765, line: 196, type: !3308, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !761, variables: !3317)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !3164, !23, !23, !23, !3310}
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !762, line: 189, size: 192, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3316}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3311, file: !762, line: 189, baseType: !155, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3311, file: !762, line: 189, baseType: !155, size: 32, offset: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3311, file: !762, line: 189, baseType: !14, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3311, file: !762, line: 189, baseType: !14, size: 64, offset: 128)
!3317 = !{!3318, !3319, !3320, !3321, !3322, !3323, !3324}
!3318 = !DILocalVariable(name: "stream", arg: 1, scope: !3307, file: !765, line: 196, type: !3164)
!3319 = !DILocalVariable(name: "command_name", arg: 2, scope: !3307, file: !765, line: 197, type: !23)
!3320 = !DILocalVariable(name: "package", arg: 3, scope: !3307, file: !765, line: 197, type: !23)
!3321 = !DILocalVariable(name: "version", arg: 4, scope: !3307, file: !765, line: 198, type: !23)
!3322 = !DILocalVariable(name: "authors", arg: 5, scope: !3307, file: !765, line: 198, type: !3310)
!3323 = !DILocalVariable(name: "n_authors", scope: !3307, file: !765, line: 200, type: !15)
!3324 = !DILocalVariable(name: "authtab", scope: !3307, file: !765, line: 201, type: !3325)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 640, elements: !145)
!3326 = !DILocation(line: 196, column: 23, scope: !3307)
!3327 = !DILocation(line: 197, column: 29, scope: !3307)
!3328 = !DILocation(line: 197, column: 55, scope: !3307)
!3329 = !DILocation(line: 198, column: 29, scope: !3307)
!3330 = !DILocation(line: 198, column: 46, scope: !3307)
!3331 = !DILocation(line: 201, column: 3, scope: !3307)
!3332 = !DILocation(line: 201, column: 15, scope: !3307)
!3333 = !DILocation(line: 200, column: 10, scope: !3307)
!3334 = !DILocation(line: 205, column: 35, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3336, file: !765, discriminator: 1)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !765, line: 203, column: 3)
!3337 = distinct !DILexicalBlock(scope: !3307, file: !765, line: 203, column: 3)
!3338 = !DILocation(line: 205, column: 35, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3336, file: !765, discriminator: 2)
!3340 = !DILocation(line: 205, column: 35, scope: !3341)
!3341 = !DILexicalBlockFile(scope: !3336, file: !765, discriminator: 3)
!3342 = !DILocation(line: 205, column: 35, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !3336, file: !765, discriminator: 4)
!3344 = !DILocation(line: 205, column: 14, scope: !3343)
!3345 = !DILocation(line: 205, column: 33, scope: !3343)
!3346 = !DILocation(line: 205, column: 67, scope: !3343)
!3347 = !DILocation(line: 203, column: 3, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !3337, file: !765, discriminator: 1)
!3349 = !DILocation(line: 208, column: 3, scope: !3307)
!3350 = !DILocation(line: 210, column: 1, scope: !3307)
!3351 = distinct !DISubprogram(name: "version_etc", scope: !765, file: !765, line: 227, type: !3352, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !761, variables: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{null, !3164, !23, !23, !23, null}
!3354 = !{!3355, !3356, !3357, !3358, !3359}
!3355 = !DILocalVariable(name: "stream", arg: 1, scope: !3351, file: !765, line: 227, type: !3164)
!3356 = !DILocalVariable(name: "command_name", arg: 2, scope: !3351, file: !765, line: 228, type: !23)
!3357 = !DILocalVariable(name: "package", arg: 3, scope: !3351, file: !765, line: 228, type: !23)
!3358 = !DILocalVariable(name: "version", arg: 4, scope: !3351, file: !765, line: 229, type: !23)
!3359 = !DILocalVariable(name: "authors", scope: !3351, file: !765, line: 231, type: !3360)
!3360 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3166, line: 80, baseType: !3361)
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3362, line: 50, baseType: !3363)
!3362 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !762, line: 231, baseType: !3364)
!3364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3311, size: 192, elements: !3201)
!3365 = !DILocation(line: 227, column: 20, scope: !3351)
!3366 = !DILocation(line: 228, column: 26, scope: !3351)
!3367 = !DILocation(line: 228, column: 52, scope: !3351)
!3368 = !DILocation(line: 229, column: 26, scope: !3351)
!3369 = !DILocation(line: 231, column: 3, scope: !3351)
!3370 = !DILocation(line: 231, column: 11, scope: !3351)
!3371 = !DILocation(line: 233, column: 3, scope: !3351)
!3372 = !DILocation(line: 234, column: 3, scope: !3351)
!3373 = !DILocation(line: 235, column: 3, scope: !3351)
!3374 = !DILocation(line: 236, column: 1, scope: !3351)
!3375 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !765, file: !765, line: 239, type: !956, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !761, variables: !73)
!3376 = !DILocation(line: 245, column: 3, scope: !3375)
!3377 = !DILocation(line: 245, column: 3, scope: !3378)
!3378 = !DILexicalBlockFile(scope: !3375, file: !765, discriminator: 1)
!3379 = !DILocation(line: 251, column: 3, scope: !3375)
!3380 = !DILocation(line: 251, column: 3, scope: !3378)
!3381 = !DILocation(line: 256, column: 3, scope: !3375)
!3382 = !DILocation(line: 256, column: 3, scope: !3378)
!3383 = !DILocation(line: 258, column: 1, scope: !3375)
!3384 = distinct !DISubprogram(name: "xnmalloc", scope: !772, file: !772, line: 105, type: !3385, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !768, variables: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!14, !15, !15}
!3387 = !{!3388, !3389}
!3388 = !DILocalVariable(name: "n", arg: 1, scope: !3384, file: !772, line: 105, type: !15)
!3389 = !DILocalVariable(name: "s", arg: 2, scope: !3384, file: !772, line: 105, type: !15)
!3390 = !DILocation(line: 105, column: 18, scope: !3384)
!3391 = !DILocation(line: 105, column: 28, scope: !3384)
!3392 = !DILocation(line: 107, column: 7, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3384, file: !772, line: 107, column: 7)
!3394 = !DILocation(line: 107, column: 7, scope: !3384)
!3395 = !DILocation(line: 108, column: 5, scope: !3393)
!3396 = !DILocation(line: 109, column: 21, scope: !3384)
!3397 = !DILocalVariable(name: "n", arg: 1, scope: !3398, file: !3399, line: 39, type: !15)
!3398 = distinct !DISubprogram(name: "xmalloc", scope: !3399, file: !3399, line: 39, type: !3400, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !768, variables: !3402)
!3399 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!14, !15}
!3402 = !{!3397, !3403}
!3403 = !DILocalVariable(name: "p", scope: !3398, file: !3399, line: 41, type: !14)
!3404 = !DILocation(line: 39, column: 17, scope: !3398, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 109, column: 10, scope: !3384)
!3406 = !DILocation(line: 41, column: 13, scope: !3398, inlinedAt: !3405)
!3407 = !DILocation(line: 41, column: 9, scope: !3398, inlinedAt: !3405)
!3408 = !DILocation(line: 42, column: 8, scope: !3409, inlinedAt: !3405)
!3409 = distinct !DILexicalBlock(scope: !3398, file: !3399, line: 42, column: 7)
!3410 = !DILocation(line: 42, column: 15, scope: !3411, inlinedAt: !3405)
!3411 = !DILexicalBlockFile(scope: !3409, file: !3399, discriminator: 1)
!3412 = !DILocation(line: 42, column: 10, scope: !3409, inlinedAt: !3405)
!3413 = !DILocation(line: 43, column: 5, scope: !3409, inlinedAt: !3405)
!3414 = !DILocation(line: 109, column: 3, scope: !3384)
!3415 = !DILocation(line: 39, column: 17, scope: !3398)
!3416 = !DILocation(line: 41, column: 13, scope: !3398)
!3417 = !DILocation(line: 41, column: 9, scope: !3398)
!3418 = !DILocation(line: 42, column: 8, scope: !3409)
!3419 = !DILocation(line: 42, column: 15, scope: !3411)
!3420 = !DILocation(line: 42, column: 10, scope: !3409)
!3421 = !DILocation(line: 43, column: 5, scope: !3409)
!3422 = !DILocation(line: 44, column: 3, scope: !3398)
!3423 = distinct !DISubprogram(name: "xnrealloc", scope: !772, file: !772, line: 118, type: !3424, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !768, variables: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!14, !14, !15, !15}
!3426 = !{!3427, !3428, !3429}
!3427 = !DILocalVariable(name: "p", arg: 1, scope: !3423, file: !772, line: 118, type: !14)
!3428 = !DILocalVariable(name: "n", arg: 2, scope: !3423, file: !772, line: 118, type: !15)
!3429 = !DILocalVariable(name: "s", arg: 3, scope: !3423, file: !772, line: 118, type: !15)
!3430 = !DILocation(line: 118, column: 18, scope: !3423)
!3431 = !DILocation(line: 118, column: 28, scope: !3423)
!3432 = !DILocation(line: 118, column: 38, scope: !3423)
!3433 = !DILocation(line: 120, column: 7, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3423, file: !772, line: 120, column: 7)
!3435 = !DILocation(line: 120, column: 7, scope: !3423)
!3436 = !DILocation(line: 121, column: 5, scope: !3434)
!3437 = !DILocation(line: 122, column: 25, scope: !3423)
!3438 = !DILocalVariable(name: "p", arg: 1, scope: !3439, file: !3399, line: 51, type: !14)
!3439 = distinct !DISubprogram(name: "xrealloc", scope: !3399, file: !3399, line: 51, type: !3440, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !768, variables: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!14, !14, !15}
!3442 = !{!3438, !3443}
!3443 = !DILocalVariable(name: "n", arg: 2, scope: !3439, file: !3399, line: 51, type: !15)
!3444 = !DILocation(line: 51, column: 17, scope: !3439, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 122, column: 10, scope: !3423)
!3446 = !DILocation(line: 51, column: 27, scope: !3439, inlinedAt: !3445)
!3447 = !DILocation(line: 53, column: 8, scope: !3448, inlinedAt: !3445)
!3448 = distinct !DILexicalBlock(scope: !3439, file: !3399, line: 53, column: 7)
!3449 = !DILocation(line: 53, column: 13, scope: !3450, inlinedAt: !3445)
!3450 = !DILexicalBlockFile(scope: !3448, file: !3399, discriminator: 1)
!3451 = !DILocation(line: 53, column: 10, scope: !3448, inlinedAt: !3445)
!3452 = !DILocation(line: 57, column: 7, scope: !3453, inlinedAt: !3445)
!3453 = distinct !DILexicalBlock(scope: !3448, file: !3399, line: 54, column: 5)
!3454 = !DILocation(line: 58, column: 7, scope: !3453, inlinedAt: !3445)
!3455 = !DILocation(line: 61, column: 7, scope: !3439, inlinedAt: !3445)
!3456 = !DILocation(line: 62, column: 8, scope: !3457, inlinedAt: !3445)
!3457 = distinct !DILexicalBlock(scope: !3439, file: !3399, line: 62, column: 7)
!3458 = !DILocation(line: 62, column: 13, scope: !3459, inlinedAt: !3445)
!3459 = !DILexicalBlockFile(scope: !3457, file: !3399, discriminator: 1)
!3460 = !DILocation(line: 62, column: 10, scope: !3457, inlinedAt: !3445)
!3461 = !DILocation(line: 63, column: 5, scope: !3457, inlinedAt: !3445)
!3462 = !DILocation(line: 122, column: 3, scope: !3423)
!3463 = !DILocation(line: 51, column: 17, scope: !3439)
!3464 = !DILocation(line: 51, column: 27, scope: !3439)
!3465 = !DILocation(line: 53, column: 8, scope: !3448)
!3466 = !DILocation(line: 53, column: 13, scope: !3450)
!3467 = !DILocation(line: 53, column: 10, scope: !3448)
!3468 = !DILocation(line: 57, column: 7, scope: !3453)
!3469 = !DILocation(line: 58, column: 7, scope: !3453)
!3470 = !DILocation(line: 61, column: 7, scope: !3439)
!3471 = !DILocation(line: 62, column: 8, scope: !3457)
!3472 = !DILocation(line: 62, column: 13, scope: !3459)
!3473 = !DILocation(line: 62, column: 10, scope: !3457)
!3474 = !DILocation(line: 63, column: 5, scope: !3457)
!3475 = !DILocation(line: 65, column: 1, scope: !3439)
!3476 = !DILocation(line: 180, column: 19, scope: !773)
!3477 = !DILocation(line: 180, column: 30, scope: !773)
!3478 = !DILocation(line: 180, column: 41, scope: !773)
!3479 = !DILocation(line: 182, column: 14, scope: !773)
!3480 = !DILocation(line: 182, column: 10, scope: !773)
!3481 = !DILocation(line: 184, column: 9, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !773, file: !772, line: 184, column: 7)
!3483 = !DILocation(line: 184, column: 7, scope: !773)
!3484 = !DILocation(line: 186, column: 13, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !772, line: 186, column: 11)
!3486 = distinct !DILexicalBlock(scope: !3482, file: !772, line: 185, column: 5)
!3487 = !DILocation(line: 186, column: 11, scope: !3486)
!3488 = !DILocation(line: 194, column: 30, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3485, file: !772, line: 187, column: 9)
!3490 = !DILocation(line: 195, column: 16, scope: !3489)
!3491 = !DILocation(line: 195, column: 13, scope: !3489)
!3492 = !DILocation(line: 196, column: 9, scope: !3489)
!3493 = !DILocation(line: 204, column: 69, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !772, line: 204, column: 11)
!3495 = distinct !DILexicalBlock(scope: !3482, file: !772, line: 199, column: 5)
!3496 = !DILocation(line: 205, column: 11, scope: !3494)
!3497 = !DILocation(line: 204, column: 11, scope: !3495)
!3498 = !DILocation(line: 206, column: 9, scope: !3494)
!3499 = !DILocation(line: 210, column: 7, scope: !773)
!3500 = !DILocation(line: 211, column: 25, scope: !773)
!3501 = !DILocation(line: 51, column: 17, scope: !3439, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 211, column: 10, scope: !773)
!3503 = !DILocation(line: 51, column: 27, scope: !3439, inlinedAt: !3502)
!3504 = !DILocation(line: 53, column: 10, scope: !3448, inlinedAt: !3502)
!3505 = !DILocation(line: 207, column: 14, scope: !3495)
!3506 = !DILocation(line: 207, column: 18, scope: !3495)
!3507 = !DILocation(line: 207, column: 9, scope: !3495)
!3508 = !DILocation(line: 53, column: 8, scope: !3448, inlinedAt: !3502)
!3509 = !DILocation(line: 57, column: 7, scope: !3453, inlinedAt: !3502)
!3510 = !DILocation(line: 58, column: 7, scope: !3453, inlinedAt: !3502)
!3511 = !DILocation(line: 61, column: 7, scope: !3439, inlinedAt: !3502)
!3512 = !DILocation(line: 62, column: 8, scope: !3457, inlinedAt: !3502)
!3513 = !DILocation(line: 62, column: 13, scope: !3459, inlinedAt: !3502)
!3514 = !DILocation(line: 62, column: 10, scope: !3457, inlinedAt: !3502)
!3515 = !DILocation(line: 63, column: 5, scope: !3457, inlinedAt: !3502)
!3516 = !DILocation(line: 211, column: 3, scope: !773)
!3517 = distinct !DISubprogram(name: "xcharalloc", scope: !772, file: !772, line: 220, type: !2433, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !768, variables: !3518)
!3518 = !{!3519}
!3519 = !DILocalVariable(name: "n", arg: 1, scope: !3517, file: !772, line: 220, type: !15)
!3520 = !DILocation(line: 220, column: 20, scope: !3517)
!3521 = !DILocation(line: 39, column: 17, scope: !3398, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 222, column: 10, scope: !3517)
!3523 = !DILocation(line: 41, column: 13, scope: !3398, inlinedAt: !3522)
!3524 = !DILocation(line: 41, column: 9, scope: !3398, inlinedAt: !3522)
!3525 = !DILocation(line: 42, column: 8, scope: !3409, inlinedAt: !3522)
!3526 = !DILocation(line: 42, column: 15, scope: !3411, inlinedAt: !3522)
!3527 = !DILocation(line: 42, column: 10, scope: !3409, inlinedAt: !3522)
!3528 = !DILocation(line: 43, column: 5, scope: !3409, inlinedAt: !3522)
!3529 = !DILocation(line: 222, column: 3, scope: !3517)
!3530 = distinct !DISubprogram(name: "x2realloc", scope: !3399, file: !3399, line: 74, type: !3531, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !768, variables: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!14, !14, !776}
!3533 = !{!3534, !3535}
!3534 = !DILocalVariable(name: "p", arg: 1, scope: !3530, file: !3399, line: 74, type: !14)
!3535 = !DILocalVariable(name: "pn", arg: 2, scope: !3530, file: !3399, line: 74, type: !776)
!3536 = !DILocation(line: 74, column: 18, scope: !3530)
!3537 = !DILocation(line: 74, column: 29, scope: !3530)
!3538 = !DILocation(line: 180, column: 19, scope: !773, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 76, column: 10, scope: !3530)
!3540 = !DILocation(line: 180, column: 30, scope: !773, inlinedAt: !3539)
!3541 = !DILocation(line: 180, column: 41, scope: !773, inlinedAt: !3539)
!3542 = !DILocation(line: 182, column: 14, scope: !773, inlinedAt: !3539)
!3543 = !DILocation(line: 182, column: 10, scope: !773, inlinedAt: !3539)
!3544 = !DILocation(line: 184, column: 9, scope: !3482, inlinedAt: !3539)
!3545 = !DILocation(line: 184, column: 7, scope: !773, inlinedAt: !3539)
!3546 = !DILocation(line: 186, column: 13, scope: !3485, inlinedAt: !3539)
!3547 = !DILocation(line: 186, column: 11, scope: !3486, inlinedAt: !3539)
!3548 = !DILocation(line: 210, column: 7, scope: !773, inlinedAt: !3539)
!3549 = !DILocation(line: 51, column: 17, scope: !3439, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 211, column: 10, scope: !773, inlinedAt: !3539)
!3551 = !DILocation(line: 51, column: 27, scope: !3439, inlinedAt: !3550)
!3552 = !DILocation(line: 53, column: 10, scope: !3448, inlinedAt: !3550)
!3553 = !DILocation(line: 205, column: 11, scope: !3494, inlinedAt: !3539)
!3554 = !DILocation(line: 204, column: 11, scope: !3495, inlinedAt: !3539)
!3555 = !DILocation(line: 206, column: 9, scope: !3494, inlinedAt: !3539)
!3556 = !DILocation(line: 207, column: 14, scope: !3495, inlinedAt: !3539)
!3557 = !DILocation(line: 207, column: 18, scope: !3495, inlinedAt: !3539)
!3558 = !DILocation(line: 207, column: 9, scope: !3495, inlinedAt: !3539)
!3559 = !DILocation(line: 53, column: 8, scope: !3448, inlinedAt: !3550)
!3560 = !DILocation(line: 57, column: 7, scope: !3453, inlinedAt: !3550)
!3561 = !DILocation(line: 58, column: 7, scope: !3453, inlinedAt: !3550)
!3562 = !DILocation(line: 61, column: 7, scope: !3439, inlinedAt: !3550)
!3563 = !DILocation(line: 62, column: 8, scope: !3457, inlinedAt: !3550)
!3564 = !DILocation(line: 62, column: 13, scope: !3459, inlinedAt: !3550)
!3565 = !DILocation(line: 62, column: 10, scope: !3457, inlinedAt: !3550)
!3566 = !DILocation(line: 63, column: 5, scope: !3457, inlinedAt: !3550)
!3567 = !DILocation(line: 76, column: 3, scope: !3530)
!3568 = distinct !DISubprogram(name: "xzalloc", scope: !3399, file: !3399, line: 84, type: !3400, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !768, variables: !3569)
!3569 = !{!3570}
!3570 = !DILocalVariable(name: "s", arg: 1, scope: !3568, file: !3399, line: 84, type: !15)
!3571 = !DILocation(line: 84, column: 17, scope: !3568)
!3572 = !DILocation(line: 39, column: 17, scope: !3398, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 86, column: 18, scope: !3568)
!3574 = !DILocation(line: 41, column: 13, scope: !3398, inlinedAt: !3573)
!3575 = !DILocation(line: 41, column: 9, scope: !3398, inlinedAt: !3573)
!3576 = !DILocation(line: 42, column: 8, scope: !3409, inlinedAt: !3573)
!3577 = !DILocation(line: 42, column: 15, scope: !3411, inlinedAt: !3573)
!3578 = !DILocation(line: 42, column: 10, scope: !3409, inlinedAt: !3573)
!3579 = !DILocation(line: 43, column: 5, scope: !3409, inlinedAt: !3573)
!3580 = !DILocation(line: 86, column: 10, scope: !3568)
!3581 = !DILocation(line: 86, column: 3, scope: !3568)
!3582 = distinct !DISubprogram(name: "xcalloc", scope: !3399, file: !3399, line: 93, type: !3385, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !768, variables: !3583)
!3583 = !{!3584, !3585, !3586}
!3584 = !DILocalVariable(name: "n", arg: 1, scope: !3582, file: !3399, line: 93, type: !15)
!3585 = !DILocalVariable(name: "s", arg: 2, scope: !3582, file: !3399, line: 93, type: !15)
!3586 = !DILocalVariable(name: "p", scope: !3582, file: !3399, line: 95, type: !14)
!3587 = !DILocation(line: 93, column: 17, scope: !3582)
!3588 = !DILocation(line: 93, column: 27, scope: !3582)
!3589 = !DILocation(line: 100, column: 7, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3582, file: !3399, line: 100, column: 7)
!3591 = !DILocation(line: 101, column: 7, scope: !3590)
!3592 = !DILocation(line: 101, column: 18, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !3590, file: !3399, discriminator: 1)
!3594 = !DILocation(line: 95, column: 9, scope: !3582)
!3595 = !DILocation(line: 101, column: 16, scope: !3593)
!3596 = !DILocation(line: 100, column: 7, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3582, file: !3399, discriminator: 1)
!3598 = !DILocation(line: 102, column: 5, scope: !3590)
!3599 = !DILocation(line: 103, column: 3, scope: !3582)
!3600 = distinct !DISubprogram(name: "xmemdup", scope: !3399, file: !3399, line: 111, type: !3601, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !768, variables: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!14, !18, !15}
!3603 = !{!3604, !3605}
!3604 = !DILocalVariable(name: "p", arg: 1, scope: !3600, file: !3399, line: 111, type: !18)
!3605 = !DILocalVariable(name: "s", arg: 2, scope: !3600, file: !3399, line: 111, type: !15)
!3606 = !DILocation(line: 111, column: 22, scope: !3600)
!3607 = !DILocation(line: 111, column: 32, scope: !3600)
!3608 = !DILocation(line: 39, column: 17, scope: !3398, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 113, column: 18, scope: !3600)
!3610 = !DILocation(line: 41, column: 13, scope: !3398, inlinedAt: !3609)
!3611 = !DILocation(line: 41, column: 9, scope: !3398, inlinedAt: !3609)
!3612 = !DILocation(line: 42, column: 8, scope: !3409, inlinedAt: !3609)
!3613 = !DILocation(line: 42, column: 15, scope: !3411, inlinedAt: !3609)
!3614 = !DILocation(line: 42, column: 10, scope: !3409, inlinedAt: !3609)
!3615 = !DILocation(line: 43, column: 5, scope: !3409, inlinedAt: !3609)
!3616 = !DILocation(line: 113, column: 10, scope: !3600)
!3617 = !DILocation(line: 113, column: 3, scope: !3600)
!3618 = distinct !DISubprogram(name: "xstrdup", scope: !3399, file: !3399, line: 119, type: !2640, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !768, variables: !3619)
!3619 = !{!3620}
!3620 = !DILocalVariable(name: "string", arg: 1, scope: !3618, file: !3399, line: 119, type: !23)
!3621 = !DILocation(line: 119, column: 22, scope: !3618)
!3622 = !DILocation(line: 121, column: 27, scope: !3618)
!3623 = !DILocation(line: 121, column: 43, scope: !3618)
!3624 = !DILocation(line: 111, column: 22, scope: !3600, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 121, column: 10, scope: !3626)
!3626 = !DILexicalBlockFile(scope: !3618, file: !3399, discriminator: 1)
!3627 = !DILocation(line: 111, column: 32, scope: !3600, inlinedAt: !3625)
!3628 = !DILocation(line: 39, column: 17, scope: !3398, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 113, column: 18, scope: !3600, inlinedAt: !3625)
!3630 = !DILocation(line: 41, column: 13, scope: !3398, inlinedAt: !3629)
!3631 = !DILocation(line: 41, column: 9, scope: !3398, inlinedAt: !3629)
!3632 = !DILocation(line: 42, column: 8, scope: !3409, inlinedAt: !3629)
!3633 = !DILocation(line: 42, column: 15, scope: !3411, inlinedAt: !3629)
!3634 = !DILocation(line: 42, column: 10, scope: !3409, inlinedAt: !3629)
!3635 = !DILocation(line: 43, column: 5, scope: !3409, inlinedAt: !3629)
!3636 = !DILocation(line: 113, column: 10, scope: !3600, inlinedAt: !3625)
!3637 = !DILocation(line: 121, column: 3, scope: !3618)
!3638 = distinct !DISubprogram(name: "xalloc_die", scope: !3639, file: !3639, line: 32, type: !956, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !785, variables: !73)
!3639 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3640 = !DILocation(line: 34, column: 10, scope: !3638)
!3641 = !DILocation(line: 34, column: 33, scope: !3638)
!3642 = !DILocation(line: 34, column: 3, scope: !3643)
!3643 = !DILexicalBlockFile(scope: !3638, file: !3639, discriminator: 1)
!3644 = !DILocation(line: 40, column: 3, scope: !3638)
!3645 = distinct !DISubprogram(name: "xnumtoumax", scope: !3646, file: !3646, line: 36, type: !3647, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !787, variables: !3652)
!3646 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!3649, !23, !53, !3649, !3649, !23, !23, !53}
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3650, line: 136, baseType: !3651)
!3650 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !3195, line: 62, baseType: !17)
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3662}
!3653 = !DILocalVariable(name: "n_str", arg: 1, scope: !3645, file: !3646, line: 36, type: !23)
!3654 = !DILocalVariable(name: "base", arg: 2, scope: !3645, file: !3646, line: 36, type: !53)
!3655 = !DILocalVariable(name: "min", arg: 3, scope: !3645, file: !3646, line: 36, type: !3649)
!3656 = !DILocalVariable(name: "max", arg: 4, scope: !3645, file: !3646, line: 36, type: !3649)
!3657 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3645, file: !3646, line: 37, type: !23)
!3658 = !DILocalVariable(name: "err", arg: 6, scope: !3645, file: !3646, line: 37, type: !23)
!3659 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3645, file: !3646, line: 37, type: !53)
!3660 = !DILocalVariable(name: "s_err", scope: !3645, file: !3646, line: 39, type: !3661)
!3661 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !791, line: 39, baseType: !790)
!3662 = !DILocalVariable(name: "tnum", scope: !3645, file: !3646, line: 41, type: !3649)
!3663 = !DILocation(line: 36, column: 26, scope: !3645)
!3664 = !DILocation(line: 36, column: 37, scope: !3645)
!3665 = !DILocation(line: 36, column: 57, scope: !3645)
!3666 = !DILocation(line: 36, column: 76, scope: !3645)
!3667 = !DILocation(line: 37, column: 26, scope: !3645)
!3668 = !DILocation(line: 37, column: 48, scope: !3645)
!3669 = !DILocation(line: 37, column: 57, scope: !3645)
!3670 = !DILocation(line: 41, column: 3, scope: !3645)
!3671 = !DILocation(line: 41, column: 17, scope: !3645)
!3672 = !DILocation(line: 42, column: 11, scope: !3645)
!3673 = !DILocation(line: 39, column: 16, scope: !3645)
!3674 = !DILocation(line: 44, column: 7, scope: !3645)
!3675 = !DILocation(line: 69, column: 50, scope: !3676)
!3676 = !DILexicalBlockFile(scope: !3677, file: !3646, discriminator: 3)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !3646, line: 67, column: 5)
!3678 = distinct !DILexicalBlock(scope: !3645, file: !3646, line: 66, column: 7)
!3679 = !DILocation(line: 46, column: 11, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !3646, line: 46, column: 11)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !3646, line: 45, column: 5)
!3682 = distinct !DILexicalBlock(scope: !3645, file: !3646, line: 44, column: 7)
!3683 = !DILocation(line: 46, column: 16, scope: !3680)
!3684 = !DILocation(line: 46, column: 29, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !3680, file: !3646, discriminator: 1)
!3686 = !DILocation(line: 46, column: 22, scope: !3680)
!3687 = !DILocation(line: 51, column: 20, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !3646, line: 51, column: 15)
!3689 = distinct !DILexicalBlock(scope: !3680, file: !3646, line: 47, column: 9)
!3690 = !DILocation(line: 52, column: 13, scope: !3688)
!3691 = !DILocation(line: 51, column: 15, scope: !3689)
!3692 = !DILocation(line: 59, column: 9, scope: !3689)
!3693 = !DILocation(line: 62, column: 5, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3682, file: !3646, line: 61, column: 12)
!3695 = !DILocation(line: 62, column: 11, scope: !3694)
!3696 = !DILocation(line: 64, column: 5, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3694, file: !3646, line: 63, column: 12)
!3698 = !DILocation(line: 64, column: 11, scope: !3697)
!3699 = !DILocation(line: 69, column: 14, scope: !3677)
!3700 = !DILocation(line: 69, column: 56, scope: !3676)
!3701 = !DILocation(line: 70, column: 29, scope: !3677)
!3702 = !DILocation(line: 69, column: 7, scope: !3703)
!3703 = !DILexicalBlockFile(scope: !3677, file: !3646, discriminator: 6)
!3704 = !DILocation(line: 71, column: 5, scope: !3677)
!3705 = !DILocation(line: 73, column: 10, scope: !3645)
!3706 = !DILocation(line: 74, column: 1, scope: !3645)
!3707 = !DILocation(line: 73, column: 3, scope: !3645)
!3708 = distinct !DISubprogram(name: "xdectoumax", scope: !3646, file: !3646, line: 82, type: !3709, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !787, variables: !3711)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!3649, !23, !3649, !3649, !23, !23, !53}
!3711 = !{!3712, !3713, !3714, !3715, !3716, !3717}
!3712 = !DILocalVariable(name: "n_str", arg: 1, scope: !3708, file: !3646, line: 82, type: !23)
!3713 = !DILocalVariable(name: "min", arg: 2, scope: !3708, file: !3646, line: 82, type: !3649)
!3714 = !DILocalVariable(name: "max", arg: 3, scope: !3708, file: !3646, line: 82, type: !3649)
!3715 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3708, file: !3646, line: 83, type: !23)
!3716 = !DILocalVariable(name: "err", arg: 5, scope: !3708, file: !3646, line: 83, type: !23)
!3717 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3708, file: !3646, line: 83, type: !53)
!3718 = !DILocation(line: 82, column: 26, scope: !3708)
!3719 = !DILocation(line: 82, column: 47, scope: !3708)
!3720 = !DILocation(line: 82, column: 66, scope: !3708)
!3721 = !DILocation(line: 83, column: 26, scope: !3708)
!3722 = !DILocation(line: 83, column: 48, scope: !3708)
!3723 = !DILocation(line: 83, column: 57, scope: !3708)
!3724 = !DILocation(line: 85, column: 10, scope: !3708)
!3725 = !DILocation(line: 85, column: 3, scope: !3708)
!3726 = distinct !DISubprogram(name: "xstrtoumax", scope: !3727, file: !3727, line: 88, type: !3728, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !798, variables: !3731)
!3727 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!3661, !23, !882, !53, !3730, !23}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3744, !3745, !3748, !3749}
!3732 = !DILocalVariable(name: "s", arg: 1, scope: !3726, file: !3727, line: 88, type: !23)
!3733 = !DILocalVariable(name: "ptr", arg: 2, scope: !3726, file: !3727, line: 88, type: !882)
!3734 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3726, file: !3727, line: 88, type: !53)
!3735 = !DILocalVariable(name: "val", arg: 4, scope: !3726, file: !3727, line: 89, type: !3730)
!3736 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3726, file: !3727, line: 89, type: !23)
!3737 = !DILocalVariable(name: "t_ptr", scope: !3726, file: !3727, line: 91, type: !12)
!3738 = !DILocalVariable(name: "p", scope: !3726, file: !3727, line: 92, type: !882)
!3739 = !DILocalVariable(name: "tmp", scope: !3726, file: !3727, line: 93, type: !3649)
!3740 = !DILocalVariable(name: "err", scope: !3726, file: !3727, line: 94, type: !3661)
!3741 = !DILocalVariable(name: "q", scope: !3742, file: !3727, line: 104, type: !23)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !3727, line: 103, column: 5)
!3743 = distinct !DILexicalBlock(scope: !3726, file: !3727, line: 102, column: 7)
!3744 = !DILocalVariable(name: "ch", scope: !3742, file: !3727, line: 105, type: !22)
!3745 = !DILocalVariable(name: "base", scope: !3746, file: !3727, line: 141, type: !53)
!3746 = distinct !DILexicalBlock(scope: !3747, file: !3727, line: 140, column: 5)
!3747 = distinct !DILexicalBlock(scope: !3726, file: !3727, line: 139, column: 7)
!3748 = !DILocalVariable(name: "suffixes", scope: !3746, file: !3727, line: 142, type: !53)
!3749 = !DILocalVariable(name: "overflow", scope: !3746, file: !3727, line: 143, type: !3661)
!3750 = !DILocation(line: 88, column: 24, scope: !3726)
!3751 = !DILocation(line: 88, column: 34, scope: !3726)
!3752 = !DILocation(line: 88, column: 43, scope: !3726)
!3753 = !DILocation(line: 89, column: 24, scope: !3726)
!3754 = !DILocation(line: 89, column: 41, scope: !3726)
!3755 = !DILocation(line: 91, column: 3, scope: !3726)
!3756 = !DILocation(line: 94, column: 16, scope: !3726)
!3757 = !DILocation(line: 96, column: 3, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !3727, line: 96, column: 3)
!3759 = distinct !DILexicalBlock(scope: !3726, file: !3727, line: 96, column: 3)
!3760 = !DILocation(line: 96, column: 3, scope: !3761)
!3761 = !DILexicalBlockFile(scope: !3758, file: !3727, discriminator: 3)
!3762 = !DILocation(line: 98, column: 8, scope: !3726)
!3763 = !DILocation(line: 92, column: 10, scope: !3726)
!3764 = !DILocation(line: 100, column: 3, scope: !3726)
!3765 = !DILocation(line: 100, column: 9, scope: !3726)
!3766 = !DILocation(line: 104, column: 19, scope: !3742)
!3767 = !DILocation(line: 106, column: 14, scope: !3768)
!3768 = !DILexicalBlockFile(scope: !3742, file: !3727, discriminator: 1)
!3769 = !DILocation(line: 106, column: 7, scope: !3742)
!3770 = !DILocation(line: 105, column: 21, scope: !3742)
!3771 = !DILocation(line: 106, column: 7, scope: !3768)
!3772 = !DILocation(line: 107, column: 15, scope: !3742)
!3773 = distinct !{!3773, !3769, !3774}
!3774 = !DILocation(line: 107, column: 17, scope: !3742)
!3775 = !DILocation(line: 109, column: 9, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3742, file: !3727, line: 108, column: 11)
!3777 = !DILocalVariable(name: "nptr", arg: 1, scope: !3778, file: !3779, line: 336, type: !3782)
!3778 = distinct !DISubprogram(name: "strtoumax", scope: !3779, file: !3779, line: 336, type: !3780, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !798, variables: !3784)
!3779 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!3649, !3782, !3783, !53}
!3782 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !23)
!3783 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !882)
!3784 = !{!3777, !3785, !3786}
!3785 = !DILocalVariable(name: "endptr", arg: 2, scope: !3778, file: !3779, line: 336, type: !3783)
!3786 = !DILocalVariable(name: "base", arg: 3, scope: !3778, file: !3779, line: 336, type: !53)
!3787 = !DILocation(line: 336, column: 1, scope: !3778, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 112, column: 9, scope: !3726)
!3789 = !DILocation(line: 339, column: 10, scope: !3778, inlinedAt: !3788)
!3790 = !DILocation(line: 93, column: 14, scope: !3726)
!3791 = !DILocation(line: 114, column: 7, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3726, file: !3727, line: 114, column: 7)
!3793 = !DILocation(line: 114, column: 10, scope: !3792)
!3794 = !DILocation(line: 114, column: 7, scope: !3726)
!3795 = !DILocation(line: 118, column: 11, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !3727, line: 118, column: 11)
!3797 = distinct !DILexicalBlock(scope: !3792, file: !3727, line: 115, column: 5)
!3798 = !DILocation(line: 118, column: 26, scope: !3796)
!3799 = !DILocation(line: 118, column: 29, scope: !3800)
!3800 = !DILexicalBlockFile(scope: !3796, file: !3727, discriminator: 1)
!3801 = !DILocation(line: 118, column: 33, scope: !3800)
!3802 = !DILocation(line: 118, column: 36, scope: !3803)
!3803 = !DILexicalBlockFile(scope: !3796, file: !3727, discriminator: 5)
!3804 = !DILocation(line: 118, column: 11, scope: !3805)
!3805 = !DILexicalBlockFile(scope: !3797, file: !3727, discriminator: 5)
!3806 = !DILocation(line: 123, column: 12, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3792, file: !3727, line: 123, column: 12)
!3808 = !DILocation(line: 123, column: 12, scope: !3792)
!3809 = !DILocation(line: 128, column: 5, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3807, file: !3727, line: 124, column: 5)
!3811 = !DILocation(line: 133, column: 8, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3726, file: !3727, line: 133, column: 7)
!3813 = !DILocation(line: 133, column: 7, scope: !3726)
!3814 = !DILocation(line: 135, column: 12, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !3727, line: 134, column: 5)
!3816 = !DILocation(line: 136, column: 7, scope: !3815)
!3817 = !DILocation(line: 139, column: 7, scope: !3747)
!3818 = !DILocation(line: 139, column: 11, scope: !3747)
!3819 = !DILocation(line: 139, column: 7, scope: !3726)
!3820 = !DILocation(line: 141, column: 11, scope: !3746)
!3821 = !DILocation(line: 142, column: 11, scope: !3746)
!3822 = !DILocation(line: 145, column: 12, scope: !3823)
!3823 = !DILexicalBlockFile(scope: !3824, file: !3727, discriminator: 3)
!3824 = distinct !DILexicalBlock(scope: !3746, file: !3727, line: 145, column: 11)
!3825 = !DILocation(line: 145, column: 11, scope: !3826)
!3826 = !DILexicalBlockFile(scope: !3746, file: !3727, discriminator: 3)
!3827 = !DILocation(line: 147, column: 16, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3824, file: !3727, line: 146, column: 9)
!3829 = !DILocation(line: 148, column: 22, scope: !3828)
!3830 = !DILocation(line: 148, column: 11, scope: !3828)
!3831 = !DILocation(line: 151, column: 7, scope: !3746)
!3832 = !DILocation(line: 163, column: 15, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !3834, file: !3727, discriminator: 2)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !3727, line: 163, column: 15)
!3835 = distinct !DILexicalBlock(scope: !3746, file: !3727, line: 152, column: 9)
!3836 = !DILocation(line: 163, column: 15, scope: !3837)
!3837 = !DILexicalBlockFile(scope: !3835, file: !3727, discriminator: 2)
!3838 = !DILocation(line: 164, column: 21, scope: !3834)
!3839 = !DILocation(line: 164, column: 13, scope: !3834)
!3840 = !DILocation(line: 167, column: 21, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !3727, line: 167, column: 21)
!3842 = distinct !DILexicalBlock(scope: !3834, file: !3727, line: 165, column: 15)
!3843 = !DILocation(line: 167, column: 29, scope: !3841)
!3844 = !DILocation(line: 167, column: 21, scope: !3842)
!3845 = !DILocation(line: 175, column: 17, scope: !3842)
!3846 = !DILocation(line: 179, column: 7, scope: !3746)
!3847 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3848, file: !3727, line: 60, type: !53)
!3848 = distinct !DISubprogram(name: "bkm_scale", scope: !3727, file: !3727, line: 60, type: !3849, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !798, variables: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!3661, !3730, !53}
!3851 = !{!3852, !3847}
!3852 = !DILocalVariable(name: "x", arg: 1, scope: !3848, file: !3727, line: 60, type: !3730)
!3853 = !DILocation(line: 60, column: 31, scope: !3848, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 182, column: 22, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3746, file: !3727, line: 180, column: 9)
!3856 = !DILocation(line: 67, column: 39, scope: !3857, inlinedAt: !3854)
!3857 = distinct !DILexicalBlock(scope: !3848, file: !3727, line: 67, column: 7)
!3858 = !DILocation(line: 72, column: 6, scope: !3848, inlinedAt: !3854)
!3859 = !DILocation(line: 67, column: 7, scope: !3848, inlinedAt: !3854)
!3860 = !DILocation(line: 143, column: 20, scope: !3746)
!3861 = !DILocation(line: 183, column: 11, scope: !3855)
!3862 = !DILocation(line: 60, column: 31, scope: !3848, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 189, column: 22, scope: !3855)
!3864 = !DILocation(line: 67, column: 39, scope: !3857, inlinedAt: !3863)
!3865 = !DILocation(line: 72, column: 6, scope: !3848, inlinedAt: !3863)
!3866 = !DILocation(line: 67, column: 7, scope: !3848, inlinedAt: !3863)
!3867 = !DILocation(line: 190, column: 11, scope: !3855)
!3868 = !DILocalVariable(name: "power", arg: 3, scope: !3869, file: !3727, line: 77, type: !53)
!3869 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3727, file: !3727, line: 77, type: !3870, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !798, variables: !3872)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!3661, !3730, !53, !53}
!3872 = !{!3873, !3874, !3868, !3875}
!3873 = !DILocalVariable(name: "x", arg: 1, scope: !3869, file: !3727, line: 77, type: !3730)
!3874 = !DILocalVariable(name: "base", arg: 2, scope: !3869, file: !3727, line: 77, type: !53)
!3875 = !DILocalVariable(name: "err", scope: !3869, file: !3727, line: 79, type: !3661)
!3876 = !DILocation(line: 77, column: 50, scope: !3869, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 197, column: 22, scope: !3855)
!3878 = !DILocation(line: 79, column: 16, scope: !3869, inlinedAt: !3877)
!3879 = !DILocation(line: 67, column: 39, scope: !3857, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 81, column: 12, scope: !3869, inlinedAt: !3877)
!3881 = !DILocation(line: 72, column: 6, scope: !3848, inlinedAt: !3880)
!3882 = !DILocation(line: 67, column: 7, scope: !3848, inlinedAt: !3880)
!3883 = !DILocation(line: 81, column: 9, scope: !3869, inlinedAt: !3877)
!3884 = !DILocation(line: 77, column: 50, scope: !3869, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 202, column: 22, scope: !3855)
!3886 = !DILocation(line: 79, column: 16, scope: !3869, inlinedAt: !3885)
!3887 = !DILocation(line: 67, column: 39, scope: !3857, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 81, column: 12, scope: !3869, inlinedAt: !3885)
!3889 = !DILocation(line: 72, column: 6, scope: !3848, inlinedAt: !3888)
!3890 = !DILocation(line: 67, column: 7, scope: !3848, inlinedAt: !3888)
!3891 = !DILocation(line: 81, column: 9, scope: !3869, inlinedAt: !3885)
!3892 = !DILocation(line: 77, column: 50, scope: !3869, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 207, column: 22, scope: !3855)
!3894 = !DILocation(line: 79, column: 16, scope: !3869, inlinedAt: !3893)
!3895 = !DILocation(line: 67, column: 39, scope: !3857, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 81, column: 12, scope: !3869, inlinedAt: !3893)
!3897 = !DILocation(line: 72, column: 6, scope: !3848, inlinedAt: !3896)
!3898 = !DILocation(line: 67, column: 7, scope: !3848, inlinedAt: !3896)
!3899 = !DILocation(line: 77, column: 50, scope: !3869, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 212, column: 22, scope: !3855)
!3901 = !DILocation(line: 79, column: 16, scope: !3869, inlinedAt: !3900)
!3902 = !DILocation(line: 67, column: 39, scope: !3857, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 81, column: 12, scope: !3869, inlinedAt: !3900)
!3904 = !DILocation(line: 72, column: 6, scope: !3848, inlinedAt: !3903)
!3905 = !DILocation(line: 67, column: 7, scope: !3848, inlinedAt: !3903)
!3906 = !DILocation(line: 81, column: 9, scope: !3869, inlinedAt: !3900)
!3907 = !DILocation(line: 77, column: 50, scope: !3869, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 216, column: 22, scope: !3855)
!3909 = !DILocation(line: 79, column: 16, scope: !3869, inlinedAt: !3908)
!3910 = !DILocation(line: 67, column: 39, scope: !3857, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 81, column: 12, scope: !3869, inlinedAt: !3908)
!3912 = !DILocation(line: 72, column: 6, scope: !3848, inlinedAt: !3911)
!3913 = !DILocation(line: 67, column: 7, scope: !3848, inlinedAt: !3911)
!3914 = !DILocation(line: 81, column: 9, scope: !3869, inlinedAt: !3908)
!3915 = !DILocation(line: 77, column: 50, scope: !3869, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 221, column: 22, scope: !3855)
!3917 = !DILocation(line: 79, column: 16, scope: !3869, inlinedAt: !3916)
!3918 = !DILocation(line: 67, column: 39, scope: !3857, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 81, column: 12, scope: !3869, inlinedAt: !3916)
!3920 = !DILocation(line: 72, column: 6, scope: !3848, inlinedAt: !3919)
!3921 = !DILocation(line: 67, column: 7, scope: !3848, inlinedAt: !3919)
!3922 = !DILocation(line: 81, column: 9, scope: !3869, inlinedAt: !3916)
!3923 = !DILocation(line: 60, column: 31, scope: !3848, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 225, column: 22, scope: !3855)
!3925 = !DILocation(line: 67, column: 39, scope: !3857, inlinedAt: !3924)
!3926 = !DILocation(line: 72, column: 6, scope: !3848, inlinedAt: !3924)
!3927 = !DILocation(line: 67, column: 7, scope: !3848, inlinedAt: !3924)
!3928 = !DILocation(line: 226, column: 11, scope: !3855)
!3929 = !DILocation(line: 77, column: 50, scope: !3869, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 229, column: 22, scope: !3855)
!3931 = !DILocation(line: 79, column: 16, scope: !3869, inlinedAt: !3930)
!3932 = !DILocation(line: 67, column: 39, scope: !3857, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 81, column: 12, scope: !3869, inlinedAt: !3930)
!3934 = !DILocation(line: 72, column: 6, scope: !3848, inlinedAt: !3933)
!3935 = !DILocation(line: 67, column: 7, scope: !3848, inlinedAt: !3933)
!3936 = !DILocation(line: 81, column: 9, scope: !3869, inlinedAt: !3930)
!3937 = !DILocation(line: 77, column: 50, scope: !3869, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 233, column: 22, scope: !3855)
!3939 = !DILocation(line: 79, column: 16, scope: !3869, inlinedAt: !3938)
!3940 = !DILocation(line: 67, column: 39, scope: !3857, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 81, column: 12, scope: !3869, inlinedAt: !3938)
!3942 = !DILocation(line: 72, column: 6, scope: !3848, inlinedAt: !3941)
!3943 = !DILocation(line: 67, column: 7, scope: !3848, inlinedAt: !3941)
!3944 = !DILocation(line: 81, column: 9, scope: !3869, inlinedAt: !3938)
!3945 = !DILocation(line: 237, column: 16, scope: !3855)
!3946 = !DILocation(line: 238, column: 22, scope: !3855)
!3947 = !DILocation(line: 238, column: 11, scope: !3855)
!3948 = !DILocation(line: 241, column: 11, scope: !3746)
!3949 = !DILocation(line: 242, column: 10, scope: !3746)
!3950 = !DILocation(line: 243, column: 11, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3746, file: !3727, line: 243, column: 11)
!3952 = !DILocation(line: 244, column: 13, scope: !3951)
!3953 = !DILocation(line: 243, column: 11, scope: !3746)
!3954 = !DILocation(line: 247, column: 8, scope: !3726)
!3955 = !DILocation(line: 248, column: 3, scope: !3726)
!3956 = !DILocation(line: 249, column: 1, scope: !3726)
!3957 = distinct !DISubprogram(name: "rpl_calloc", scope: !3958, file: !3958, line: 42, type: !3385, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !802, variables: !3959)
!3958 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3959 = !{!3960, !3961, !3962, !3963}
!3960 = !DILocalVariable(name: "n", arg: 1, scope: !3957, file: !3958, line: 42, type: !15)
!3961 = !DILocalVariable(name: "s", arg: 2, scope: !3957, file: !3958, line: 42, type: !15)
!3962 = !DILocalVariable(name: "result", scope: !3957, file: !3958, line: 44, type: !14)
!3963 = !DILocalVariable(name: "bytes", scope: !3964, file: !3958, line: 56, type: !15)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !3958, line: 53, column: 5)
!3965 = distinct !DILexicalBlock(scope: !3957, file: !3958, line: 47, column: 7)
!3966 = !DILocation(line: 42, column: 20, scope: !3957)
!3967 = !DILocation(line: 42, column: 30, scope: !3957)
!3968 = !DILocation(line: 47, column: 9, scope: !3965)
!3969 = !DILocation(line: 47, column: 19, scope: !3970)
!3970 = !DILexicalBlockFile(scope: !3965, file: !3958, discriminator: 1)
!3971 = !DILocation(line: 47, column: 14, scope: !3965)
!3972 = !DILocation(line: 56, column: 24, scope: !3964)
!3973 = !DILocation(line: 56, column: 14, scope: !3964)
!3974 = !DILocation(line: 57, column: 17, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3964, file: !3958, line: 57, column: 11)
!3976 = !DILocation(line: 57, column: 21, scope: !3975)
!3977 = !DILocation(line: 57, column: 11, scope: !3964)
!3978 = !DILocation(line: 59, column: 11, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3975, file: !3958, line: 58, column: 9)
!3980 = !DILocation(line: 59, column: 17, scope: !3979)
!3981 = !DILocation(line: 65, column: 12, scope: !3957)
!3982 = !DILocation(line: 44, column: 9, scope: !3957)
!3983 = !DILocation(line: 72, column: 3, scope: !3957)
!3984 = !DILocation(line: 73, column: 1, scope: !3957)
!3985 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3986, file: !3986, line: 334, type: !3987, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !804, variables: !4001)
!3986 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!15, !3989, !23, !15, !3990}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1404, line: 107, baseType: !3992)
!3992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1404, line: 95, baseType: !3993)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1404, line: 83, size: 64, elements: !3994)
!3994 = !{!3995, !3996}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3993, file: !1404, line: 85, baseType: !53, size: 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3993, file: !1404, line: 94, baseType: !3997, size: 32, offset: 32)
!3997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3993, file: !1404, line: 86, size: 32, elements: !3998)
!3998 = !{!3999, !4000}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3997, file: !1404, line: 89, baseType: !155, size: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3997, file: !1404, line: 93, baseType: !1414, size: 32)
!4001 = !{!4002, !4003, !4004, !4005, !4006, !4007, !4008}
!4002 = !DILocalVariable(name: "pwc", arg: 1, scope: !3985, file: !3986, line: 334, type: !3989)
!4003 = !DILocalVariable(name: "s", arg: 2, scope: !3985, file: !3986, line: 334, type: !23)
!4004 = !DILocalVariable(name: "n", arg: 3, scope: !3985, file: !3986, line: 334, type: !15)
!4005 = !DILocalVariable(name: "ps", arg: 4, scope: !3985, file: !3986, line: 334, type: !3990)
!4006 = !DILocalVariable(name: "ret", scope: !3985, file: !3986, line: 336, type: !15)
!4007 = !DILocalVariable(name: "wc", scope: !3985, file: !3986, line: 337, type: !1419)
!4008 = !DILocalVariable(name: "uc", scope: !4009, file: !3986, line: 398, type: !22)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !3986, line: 397, column: 5)
!4010 = distinct !DILexicalBlock(scope: !3985, file: !3986, line: 396, column: 7)
!4011 = !DILocation(line: 334, column: 23, scope: !3985)
!4012 = !DILocation(line: 334, column: 40, scope: !3985)
!4013 = !DILocation(line: 334, column: 50, scope: !3985)
!4014 = !DILocation(line: 334, column: 64, scope: !3985)
!4015 = !DILocation(line: 337, column: 3, scope: !3985)
!4016 = !DILocation(line: 353, column: 9, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3985, file: !3986, line: 353, column: 7)
!4018 = !DILocation(line: 353, column: 7, scope: !3985)
!4019 = !DILocation(line: 388, column: 9, scope: !3985)
!4020 = !DILocation(line: 336, column: 10, scope: !3985)
!4021 = !DILocation(line: 396, column: 19, scope: !4010)
!4022 = !DILocation(line: 396, column: 31, scope: !4023)
!4023 = !DILexicalBlockFile(scope: !4010, file: !3986, discriminator: 1)
!4024 = !DILocation(line: 396, column: 26, scope: !4010)
!4025 = !DILocation(line: 396, column: 41, scope: !4026)
!4026 = !DILexicalBlockFile(scope: !4010, file: !3986, discriminator: 2)
!4027 = !DILocation(line: 396, column: 7, scope: !4028)
!4028 = !DILexicalBlockFile(scope: !3985, file: !3986, discriminator: 2)
!4029 = !DILocation(line: 398, column: 26, scope: !4009)
!4030 = !DILocation(line: 398, column: 21, scope: !4009)
!4031 = !DILocation(line: 399, column: 14, scope: !4009)
!4032 = !DILocation(line: 399, column: 12, scope: !4009)
!4033 = !DILocation(line: 405, column: 1, scope: !3985)
!4034 = distinct !DISubprogram(name: "close_stream", scope: !4035, file: !4035, line: 56, type: !4036, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !807, variables: !4078)
!4035 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!53, !4038}
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3166, line: 49, baseType: !4040)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3168, line: 241, size: 1728, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4040, file: !3168, line: 242, baseType: !53, size: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4040, file: !3168, line: 247, baseType: !12, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4040, file: !3168, line: 248, baseType: !12, size: 64, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4040, file: !3168, line: 249, baseType: !12, size: 64, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4040, file: !3168, line: 250, baseType: !12, size: 64, offset: 256)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4040, file: !3168, line: 251, baseType: !12, size: 64, offset: 320)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4040, file: !3168, line: 252, baseType: !12, size: 64, offset: 384)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4040, file: !3168, line: 253, baseType: !12, size: 64, offset: 448)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4040, file: !3168, line: 254, baseType: !12, size: 64, offset: 512)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4040, file: !3168, line: 256, baseType: !12, size: 64, offset: 576)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4040, file: !3168, line: 257, baseType: !12, size: 64, offset: 640)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4040, file: !3168, line: 258, baseType: !12, size: 64, offset: 704)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4040, file: !3168, line: 260, baseType: !4055, size: 64, offset: 768)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3168, line: 156, size: 192, elements: !4057)
!4057 = !{!4058, !4059, !4061}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4056, file: !3168, line: 157, baseType: !4055, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4056, file: !3168, line: 158, baseType: !4060, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4056, file: !3168, line: 162, baseType: !53, size: 32, offset: 128)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4040, file: !3168, line: 262, baseType: !4060, size: 64, offset: 832)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4040, file: !3168, line: 264, baseType: !53, size: 32, offset: 896)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4040, file: !3168, line: 268, baseType: !53, size: 32, offset: 928)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4040, file: !3168, line: 270, baseType: !3194, size: 64, offset: 960)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4040, file: !3168, line: 274, baseType: !138, size: 16, offset: 1024)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4040, file: !3168, line: 275, baseType: !3198, size: 8, offset: 1040)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4040, file: !3168, line: 276, baseType: !3200, size: 8, offset: 1048)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4040, file: !3168, line: 280, baseType: !3204, size: 64, offset: 1088)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4040, file: !3168, line: 289, baseType: !3207, size: 64, offset: 1152)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4040, file: !3168, line: 297, baseType: !14, size: 64, offset: 1216)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4040, file: !3168, line: 298, baseType: !14, size: 64, offset: 1280)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4040, file: !3168, line: 299, baseType: !14, size: 64, offset: 1344)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4040, file: !3168, line: 300, baseType: !14, size: 64, offset: 1408)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4040, file: !3168, line: 302, baseType: !15, size: 64, offset: 1472)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4040, file: !3168, line: 303, baseType: !53, size: 32, offset: 1536)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4040, file: !3168, line: 305, baseType: !3215, size: 160, offset: 1568)
!4078 = !{!4079, !4080, !4082, !4083}
!4079 = !DILocalVariable(name: "stream", arg: 1, scope: !4034, file: !4035, line: 56, type: !4038)
!4080 = !DILocalVariable(name: "some_pending", scope: !4034, file: !4035, line: 58, type: !4081)
!4081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!4082 = !DILocalVariable(name: "prev_fail", scope: !4034, file: !4035, line: 59, type: !4081)
!4083 = !DILocalVariable(name: "fclose_fail", scope: !4034, file: !4035, line: 60, type: !4081)
!4084 = !DILocation(line: 56, column: 21, scope: !4034)
!4085 = !DILocation(line: 58, column: 30, scope: !4034)
!4086 = !DILocalVariable(name: "__stream", arg: 1, scope: !4087, file: !4088, line: 132, type: !4038)
!4087 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4088, file: !4088, line: 132, type: !4036, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !807, variables: !4089)
!4088 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4089 = !{!4086}
!4090 = !DILocation(line: 132, column: 1, scope: !4087, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 59, column: 27, scope: !4034)
!4092 = !DILocation(line: 134, column: 10, scope: !4087, inlinedAt: !4091)
!4093 = !{!4094, !918, i64 0}
!4094 = !{!"_IO_FILE", !918, i64 0, !837, i64 8, !837, i64 16, !837, i64 24, !837, i64 32, !837, i64 40, !837, i64 48, !837, i64 56, !837, i64 64, !837, i64 72, !837, i64 80, !837, i64 88, !837, i64 96, !837, i64 104, !918, i64 112, !918, i64 116, !2478, i64 120, !1771, i64 128, !838, i64 130, !838, i64 131, !837, i64 136, !2478, i64 144, !837, i64 152, !837, i64 160, !837, i64 168, !837, i64 176, !2478, i64 184, !918, i64 192, !838, i64 196}
!4095 = !DILocation(line: 59, column: 43, scope: !4034)
!4096 = !DILocation(line: 60, column: 29, scope: !4034)
!4097 = !DILocation(line: 60, column: 45, scope: !4034)
!4098 = !DILocation(line: 70, column: 17, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4034, file: !4035, line: 70, column: 7)
!4100 = !DILocation(line: 70, column: 33, scope: !4101)
!4101 = !DILexicalBlockFile(scope: !4099, file: !4035, discriminator: 1)
!4102 = !DILocation(line: 70, column: 53, scope: !4103)
!4103 = !DILexicalBlockFile(scope: !4099, file: !4035, discriminator: 3)
!4104 = !DILocation(line: 70, column: 7, scope: !4105)
!4105 = !DILexicalBlockFile(scope: !4034, file: !4035, discriminator: 3)
!4106 = !DILocation(line: 72, column: 11, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4099, file: !4035, line: 71, column: 5)
!4108 = !DILocation(line: 73, column: 9, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4107, file: !4035, line: 72, column: 11)
!4110 = !DILocation(line: 73, column: 15, scope: !4109)
!4111 = !DILocation(line: 78, column: 1, scope: !4034)
!4112 = distinct !DISubprogram(name: "hard_locale", scope: !4113, file: !4113, line: 38, type: !1122, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !809, variables: !4114)
!4113 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4114 = !{!4115, !4116, !4117, !4118, !4125, !4126, !4128, !4129, !4131, !4132, !4134}
!4115 = !DILocalVariable(name: "category", arg: 1, scope: !4112, file: !4113, line: 38, type: !53)
!4116 = !DILocalVariable(name: "hard", scope: !4112, file: !4113, line: 40, type: !83)
!4117 = !DILocalVariable(name: "p", scope: !4112, file: !4113, line: 41, type: !23)
!4118 = !DILocalVariable(name: "__s1_len", scope: !4119, file: !4113, line: 47, type: !15)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !4113, line: 47, column: 15)
!4120 = distinct !DILexicalBlock(scope: !4121, file: !4113, line: 47, column: 15)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !4113, line: 46, column: 9)
!4122 = distinct !DILexicalBlock(scope: !4123, file: !4113, line: 45, column: 11)
!4123 = distinct !DILexicalBlock(scope: !4124, file: !4113, line: 44, column: 5)
!4124 = distinct !DILexicalBlock(scope: !4112, file: !4113, line: 43, column: 7)
!4125 = !DILocalVariable(name: "__s2_len", scope: !4119, file: !4113, line: 47, type: !15)
!4126 = !DILocalVariable(name: "__s2", scope: !4127, file: !4113, line: 47, type: !20)
!4127 = distinct !DILexicalBlock(scope: !4119, file: !4113, line: 47, column: 15)
!4128 = !DILocalVariable(name: "__result", scope: !4127, file: !4113, line: 47, type: !53)
!4129 = !DILocalVariable(name: "__s1_len", scope: !4130, file: !4113, line: 47, type: !15)
!4130 = distinct !DILexicalBlock(scope: !4120, file: !4113, line: 47, column: 39)
!4131 = !DILocalVariable(name: "__s2_len", scope: !4130, file: !4113, line: 47, type: !15)
!4132 = !DILocalVariable(name: "__s2", scope: !4133, file: !4113, line: 47, type: !20)
!4133 = distinct !DILexicalBlock(scope: !4130, file: !4113, line: 47, column: 39)
!4134 = !DILocalVariable(name: "__result", scope: !4133, file: !4113, line: 47, type: !53)
!4135 = !DILocation(line: 38, column: 18, scope: !4112)
!4136 = !DILocation(line: 40, column: 8, scope: !4112)
!4137 = !DILocation(line: 41, column: 19, scope: !4112)
!4138 = !DILocation(line: 41, column: 15, scope: !4112)
!4139 = !DILocation(line: 43, column: 7, scope: !4124)
!4140 = !DILocation(line: 43, column: 7, scope: !4112)
!4141 = !DILocation(line: 47, column: 15, scope: !4119)
!4142 = !DILocation(line: 47, column: 15, scope: !4127)
!4143 = !DILocation(line: 47, column: 15, scope: !4144)
!4144 = !DILexicalBlockFile(scope: !4127, file: !4113, discriminator: 2)
!4145 = !DILocation(line: 47, column: 15, scope: !4146)
!4146 = !DILexicalBlockFile(scope: !4147, file: !4113, discriminator: 3)
!4147 = distinct !DILexicalBlock(scope: !4127, file: !4113, line: 47, column: 15)
!4148 = !DILocation(line: 47, column: 15, scope: !4149)
!4149 = !DILexicalBlockFile(scope: !4147, file: !4113, discriminator: 2)
!4150 = !DILocation(line: 47, column: 15, scope: !4151)
!4151 = !DILexicalBlockFile(scope: !4152, file: !4113, discriminator: 4)
!4152 = distinct !DILexicalBlock(scope: !4147, file: !4113, line: 47, column: 15)
!4153 = !DILocation(line: 47, column: 15, scope: !4154)
!4154 = !DILexicalBlockFile(scope: !4119, file: !4113, discriminator: 11)
!4155 = !DILocation(line: 47, column: 36, scope: !4156)
!4156 = !DILexicalBlockFile(scope: !4120, file: !4113, discriminator: 13)
!4157 = !DILocation(line: 47, column: 39, scope: !4130)
!4158 = !DILocation(line: 47, column: 39, scope: !4159)
!4159 = !DILexicalBlockFile(scope: !4130, file: !4113, discriminator: 26)
!4160 = !DILocation(line: 47, column: 59, scope: !4161)
!4161 = !DILexicalBlockFile(scope: !4120, file: !4113, discriminator: 27)
!4162 = !DILocation(line: 47, column: 15, scope: !4163)
!4163 = !DILexicalBlockFile(scope: !4121, file: !4113, discriminator: 27)
!4164 = !DILocation(line: 48, column: 13, scope: !4120)
!4165 = !DILocation(line: 71, column: 3, scope: !4112)
!4166 = distinct !DISubprogram(name: "locale_charset", scope: !537, file: !537, line: 393, type: !4167, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!23}
!4169 = !{!4170, !4171, !4172, !4177}
!4170 = !DILocalVariable(name: "codeset", scope: !4166, file: !537, line: 395, type: !23)
!4171 = !DILocalVariable(name: "aliases", scope: !4166, file: !537, line: 396, type: !23)
!4172 = !DILocalVariable(name: "__s1_len", scope: !4173, file: !537, line: 592, type: !15)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !537, line: 592, column: 9)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !537, line: 592, column: 9)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !537, line: 589, column: 3)
!4176 = distinct !DILexicalBlock(scope: !4166, file: !537, line: 589, column: 3)
!4177 = !DILocalVariable(name: "__s2_len", scope: !4173, file: !537, line: 592, type: !15)
!4178 = !DILocalVariable(name: "buf1", scope: !4179, file: !537, line: 196, type: !4246)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !537, line: 194, column: 21)
!4180 = distinct !DILexicalBlock(scope: !4181, file: !537, line: 193, column: 19)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !537, line: 193, column: 19)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !537, line: 188, column: 17)
!4183 = distinct !DILexicalBlock(scope: !4184, file: !537, line: 181, column: 19)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !537, line: 177, column: 13)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !537, line: 173, column: 15)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !537, line: 161, column: 9)
!4187 = distinct !DILexicalBlock(scope: !4188, file: !537, line: 157, column: 11)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !537, line: 130, column: 5)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !537, line: 129, column: 7)
!4190 = distinct !DISubprogram(name: "get_charset_aliases", scope: !537, file: !537, line: 124, type: !4167, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !4191)
!4191 = !{!4192, !4193, !4194, !4195, !4196, !4198, !4199, !4200, !4201, !4242, !4243, !4244, !4178, !4245, !4249, !4250, !4251}
!4192 = !DILocalVariable(name: "cp", scope: !4190, file: !537, line: 126, type: !23)
!4193 = !DILocalVariable(name: "dir", scope: !4188, file: !537, line: 132, type: !23)
!4194 = !DILocalVariable(name: "base", scope: !4188, file: !537, line: 133, type: !23)
!4195 = !DILocalVariable(name: "file_name", scope: !4188, file: !537, line: 134, type: !12)
!4196 = !DILocalVariable(name: "dir_len", scope: !4197, file: !537, line: 144, type: !15)
!4197 = distinct !DILexicalBlock(scope: !4188, file: !537, line: 143, column: 7)
!4198 = !DILocalVariable(name: "base_len", scope: !4197, file: !537, line: 145, type: !15)
!4199 = !DILocalVariable(name: "add_slash", scope: !4197, file: !537, line: 146, type: !53)
!4200 = !DILocalVariable(name: "fd", scope: !4186, file: !537, line: 162, type: !53)
!4201 = !DILocalVariable(name: "fp", scope: !4184, file: !537, line: 178, type: !4202)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3166, line: 49, baseType: !4204)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3168, line: 241, size: 1728, elements: !4205)
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4204, file: !3168, line: 242, baseType: !53, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4204, file: !3168, line: 247, baseType: !12, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4204, file: !3168, line: 248, baseType: !12, size: 64, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4204, file: !3168, line: 249, baseType: !12, size: 64, offset: 192)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4204, file: !3168, line: 250, baseType: !12, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4204, file: !3168, line: 251, baseType: !12, size: 64, offset: 320)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4204, file: !3168, line: 252, baseType: !12, size: 64, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4204, file: !3168, line: 253, baseType: !12, size: 64, offset: 448)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4204, file: !3168, line: 254, baseType: !12, size: 64, offset: 512)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4204, file: !3168, line: 256, baseType: !12, size: 64, offset: 576)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4204, file: !3168, line: 257, baseType: !12, size: 64, offset: 640)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4204, file: !3168, line: 258, baseType: !12, size: 64, offset: 704)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4204, file: !3168, line: 260, baseType: !4219, size: 64, offset: 768)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3168, line: 156, size: 192, elements: !4221)
!4221 = !{!4222, !4223, !4225}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4220, file: !3168, line: 157, baseType: !4219, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4220, file: !3168, line: 158, baseType: !4224, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4220, file: !3168, line: 162, baseType: !53, size: 32, offset: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4204, file: !3168, line: 262, baseType: !4224, size: 64, offset: 832)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4204, file: !3168, line: 264, baseType: !53, size: 32, offset: 896)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4204, file: !3168, line: 268, baseType: !53, size: 32, offset: 928)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4204, file: !3168, line: 270, baseType: !3194, size: 64, offset: 960)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4204, file: !3168, line: 274, baseType: !138, size: 16, offset: 1024)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4204, file: !3168, line: 275, baseType: !3198, size: 8, offset: 1040)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4204, file: !3168, line: 276, baseType: !3200, size: 8, offset: 1048)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4204, file: !3168, line: 280, baseType: !3204, size: 64, offset: 1088)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4204, file: !3168, line: 289, baseType: !3207, size: 64, offset: 1152)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4204, file: !3168, line: 297, baseType: !14, size: 64, offset: 1216)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4204, file: !3168, line: 298, baseType: !14, size: 64, offset: 1280)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4204, file: !3168, line: 299, baseType: !14, size: 64, offset: 1344)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4204, file: !3168, line: 300, baseType: !14, size: 64, offset: 1408)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4204, file: !3168, line: 302, baseType: !15, size: 64, offset: 1472)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4204, file: !3168, line: 303, baseType: !53, size: 32, offset: 1536)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4204, file: !3168, line: 305, baseType: !3215, size: 160, offset: 1568)
!4242 = !DILocalVariable(name: "res_ptr", scope: !4182, file: !537, line: 190, type: !12)
!4243 = !DILocalVariable(name: "res_size", scope: !4182, file: !537, line: 191, type: !15)
!4244 = !DILocalVariable(name: "c", scope: !4179, file: !537, line: 195, type: !53)
!4245 = !DILocalVariable(name: "buf2", scope: !4179, file: !537, line: 197, type: !4246)
!4246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 408, elements: !4247)
!4247 = !{!4248}
!4248 = !DISubrange(count: 51)
!4249 = !DILocalVariable(name: "l1", scope: !4179, file: !537, line: 198, type: !15)
!4250 = !DILocalVariable(name: "l2", scope: !4179, file: !537, line: 198, type: !15)
!4251 = !DILocalVariable(name: "old_res_ptr", scope: !4179, file: !537, line: 199, type: !12)
!4252 = !DILocation(line: 196, column: 28, scope: !4179, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 589, column: 18, scope: !4176)
!4254 = !DILocation(line: 197, column: 28, scope: !4179, inlinedAt: !4253)
!4255 = !DILocation(line: 403, column: 13, scope: !4166)
!4256 = !DILocation(line: 395, column: 15, scope: !4166)
!4257 = !DILocation(line: 584, column: 15, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4166, file: !537, line: 584, column: 7)
!4259 = !DILocation(line: 584, column: 7, scope: !4166)
!4260 = !DILocation(line: 128, column: 8, scope: !4190, inlinedAt: !4253)
!4261 = !DILocation(line: 126, column: 15, scope: !4190, inlinedAt: !4253)
!4262 = !DILocation(line: 129, column: 10, scope: !4189, inlinedAt: !4253)
!4263 = !DILocation(line: 129, column: 7, scope: !4190, inlinedAt: !4253)
!4264 = !DILocation(line: 138, column: 13, scope: !4188, inlinedAt: !4253)
!4265 = !DILocation(line: 132, column: 19, scope: !4188, inlinedAt: !4253)
!4266 = !DILocation(line: 139, column: 15, scope: !4267, inlinedAt: !4253)
!4267 = distinct !DILexicalBlock(scope: !4188, file: !537, line: 139, column: 11)
!4268 = !DILocation(line: 139, column: 23, scope: !4267, inlinedAt: !4253)
!4269 = !DILocation(line: 139, column: 26, scope: !4270, inlinedAt: !4253)
!4270 = !DILexicalBlockFile(scope: !4267, file: !537, discriminator: 1)
!4271 = !DILocation(line: 139, column: 33, scope: !4270, inlinedAt: !4253)
!4272 = !DILocation(line: 139, column: 11, scope: !4273, inlinedAt: !4253)
!4273 = !DILexicalBlockFile(scope: !4188, file: !537, discriminator: 1)
!4274 = !DILocation(line: 140, column: 9, scope: !4267, inlinedAt: !4253)
!4275 = !DILocation(line: 144, column: 26, scope: !4197, inlinedAt: !4253)
!4276 = !DILocation(line: 144, column: 16, scope: !4197, inlinedAt: !4253)
!4277 = !DILocation(line: 145, column: 16, scope: !4197, inlinedAt: !4253)
!4278 = !DILocation(line: 146, column: 34, scope: !4197, inlinedAt: !4253)
!4279 = !DILocation(line: 146, column: 38, scope: !4197, inlinedAt: !4253)
!4280 = !DILocation(line: 146, column: 42, scope: !4281, inlinedAt: !4253)
!4281 = !DILexicalBlockFile(scope: !4197, file: !537, discriminator: 1)
!4282 = !DILocation(line: 146, column: 41, scope: !4281, inlinedAt: !4253)
!4283 = !DILocation(line: 147, column: 48, scope: !4197, inlinedAt: !4253)
!4284 = !DILocation(line: 147, column: 46, scope: !4197, inlinedAt: !4253)
!4285 = !DILocation(line: 147, column: 69, scope: !4197, inlinedAt: !4253)
!4286 = !DILocation(line: 147, column: 30, scope: !4197, inlinedAt: !4253)
!4287 = !DILocation(line: 134, column: 13, scope: !4188, inlinedAt: !4253)
!4288 = !DILocation(line: 148, column: 13, scope: !4197, inlinedAt: !4253)
!4289 = !DILocation(line: 150, column: 13, scope: !4290, inlinedAt: !4253)
!4290 = distinct !DILexicalBlock(scope: !4291, file: !537, line: 149, column: 11)
!4291 = distinct !DILexicalBlock(scope: !4197, file: !537, line: 148, column: 13)
!4292 = !DILocation(line: 151, column: 17, scope: !4290, inlinedAt: !4253)
!4293 = !DILocation(line: 152, column: 34, scope: !4294, inlinedAt: !4253)
!4294 = distinct !DILexicalBlock(scope: !4290, file: !537, line: 151, column: 17)
!4295 = !DILocation(line: 153, column: 41, scope: !4290, inlinedAt: !4253)
!4296 = !DILocation(line: 153, column: 13, scope: !4290, inlinedAt: !4253)
!4297 = !DILocation(line: 157, column: 11, scope: !4188, inlinedAt: !4253)
!4298 = !DILocation(line: 171, column: 16, scope: !4186, inlinedAt: !4253)
!4299 = !DILocation(line: 162, column: 15, scope: !4186, inlinedAt: !4253)
!4300 = !DILocation(line: 173, column: 18, scope: !4185, inlinedAt: !4253)
!4301 = !DILocation(line: 173, column: 15, scope: !4186, inlinedAt: !4253)
!4302 = !DILocation(line: 180, column: 20, scope: !4184, inlinedAt: !4253)
!4303 = !DILocation(line: 178, column: 21, scope: !4184, inlinedAt: !4253)
!4304 = !DILocation(line: 181, column: 22, scope: !4183, inlinedAt: !4253)
!4305 = !DILocation(line: 181, column: 19, scope: !4184, inlinedAt: !4253)
!4306 = !DILocation(line: 190, column: 25, scope: !4182, inlinedAt: !4253)
!4307 = !DILocation(line: 184, column: 19, scope: !4308, inlinedAt: !4253)
!4308 = distinct !DILexicalBlock(scope: !4183, file: !537, line: 182, column: 17)
!4309 = !DILocation(line: 186, column: 17, scope: !4308, inlinedAt: !4253)
!4310 = !DILocation(line: 191, column: 26, scope: !4182, inlinedAt: !4253)
!4311 = !DILocation(line: 196, column: 23, scope: !4179, inlinedAt: !4253)
!4312 = !DILocation(line: 197, column: 23, scope: !4179, inlinedAt: !4253)
!4313 = !DILocalVariable(name: "__fp", arg: 1, scope: !4314, file: !4088, line: 63, type: !4202)
!4314 = distinct !DISubprogram(name: "getc_unlocked", scope: !4088, file: !4088, line: 63, type: !4315, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !4317)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!53, !4202}
!4317 = !{!4313}
!4318 = !DILocation(line: 63, column: 22, scope: !4314, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 201, column: 27, scope: !4179, inlinedAt: !4253)
!4320 = !DILocation(line: 65, column: 10, scope: !4314, inlinedAt: !4319)
!4321 = !{!4094, !837, i64 8}
!4322 = !{!4094, !837, i64 16}
!4323 = !{!"branch_weights", i32 2000, i32 1}
!4324 = !DILocation(line: 65, column: 10, scope: !4325, inlinedAt: !4319)
!4325 = !DILexicalBlockFile(scope: !4314, file: !4088, discriminator: 1)
!4326 = !DILocation(line: 65, column: 10, scope: !4327, inlinedAt: !4319)
!4327 = !DILexicalBlockFile(scope: !4314, file: !4088, discriminator: 2)
!4328 = !DILocation(line: 65, column: 10, scope: !4329, inlinedAt: !4319)
!4329 = !DILexicalBlockFile(scope: !4314, file: !4088, discriminator: 3)
!4330 = !DILocation(line: 195, column: 27, scope: !4179, inlinedAt: !4253)
!4331 = !DILocation(line: 202, column: 27, scope: !4179, inlinedAt: !4253)
!4332 = !DILocation(line: 63, column: 22, scope: !4314, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 210, column: 33, scope: !4334, inlinedAt: !4253)
!4334 = distinct !DILexicalBlock(scope: !4335, file: !537, line: 207, column: 25)
!4335 = distinct !DILexicalBlock(scope: !4179, file: !537, line: 206, column: 27)
!4336 = !DILocation(line: 65, column: 10, scope: !4314, inlinedAt: !4333)
!4337 = !DILocation(line: 65, column: 10, scope: !4325, inlinedAt: !4333)
!4338 = !DILocation(line: 65, column: 10, scope: !4327, inlinedAt: !4333)
!4339 = !DILocation(line: 65, column: 10, scope: !4329, inlinedAt: !4333)
!4340 = !DILocation(line: 210, column: 29, scope: !4341, inlinedAt: !4253)
!4341 = !DILexicalBlockFile(scope: !4334, file: !537, discriminator: 1)
!4342 = distinct !{!4342, !4343, !4344}
!4343 = !DILocation(line: 193, column: 19, scope: !4181)
!4344 = !DILocation(line: 241, column: 21, scope: !4181)
!4345 = !DILocation(line: 216, column: 23, scope: !4179, inlinedAt: !4253)
!4346 = !DILocation(line: 217, column: 27, scope: !4347, inlinedAt: !4253)
!4347 = distinct !DILexicalBlock(scope: !4179, file: !537, line: 217, column: 27)
!4348 = !DILocation(line: 217, column: 64, scope: !4347, inlinedAt: !4253)
!4349 = !DILocation(line: 217, column: 27, scope: !4179, inlinedAt: !4253)
!4350 = !DILocation(line: 219, column: 28, scope: !4179, inlinedAt: !4253)
!4351 = !DILocation(line: 198, column: 30, scope: !4179, inlinedAt: !4253)
!4352 = !DILocation(line: 220, column: 28, scope: !4179, inlinedAt: !4253)
!4353 = !DILocation(line: 198, column: 34, scope: !4179, inlinedAt: !4253)
!4354 = !DILocation(line: 199, column: 29, scope: !4179, inlinedAt: !4253)
!4355 = !DILocation(line: 222, column: 36, scope: !4356, inlinedAt: !4253)
!4356 = distinct !DILexicalBlock(scope: !4179, file: !537, line: 222, column: 27)
!4357 = !DILocation(line: 222, column: 27, scope: !4179, inlinedAt: !4253)
!4358 = !DILocation(line: 225, column: 63, scope: !4359, inlinedAt: !4253)
!4359 = distinct !DILexicalBlock(scope: !4356, file: !537, line: 223, column: 25)
!4360 = !DILocation(line: 225, column: 46, scope: !4359, inlinedAt: !4253)
!4361 = !DILocation(line: 226, column: 25, scope: !4359, inlinedAt: !4253)
!4362 = !DILocation(line: 229, column: 36, scope: !4363, inlinedAt: !4253)
!4363 = distinct !DILexicalBlock(scope: !4356, file: !537, line: 228, column: 25)
!4364 = !DILocation(line: 230, column: 73, scope: !4363, inlinedAt: !4253)
!4365 = !DILocation(line: 230, column: 46, scope: !4363, inlinedAt: !4253)
!4366 = !DILocation(line: 232, column: 35, scope: !4367, inlinedAt: !4253)
!4367 = distinct !DILexicalBlock(scope: !4179, file: !537, line: 232, column: 27)
!4368 = !DILocation(line: 232, column: 27, scope: !4179, inlinedAt: !4253)
!4369 = !DILocation(line: 236, column: 27, scope: !4370, inlinedAt: !4253)
!4370 = distinct !DILexicalBlock(scope: !4367, file: !537, line: 233, column: 25)
!4371 = !DILocation(line: 237, column: 27, scope: !4370, inlinedAt: !4253)
!4372 = !DILocation(line: 239, column: 39, scope: !4179, inlinedAt: !4253)
!4373 = !DILocation(line: 239, column: 50, scope: !4179, inlinedAt: !4253)
!4374 = !DILocation(line: 239, column: 61, scope: !4179, inlinedAt: !4253)
!4375 = !DILocalVariable(name: "__dest", arg: 1, scope: !4376, file: !4377, line: 107, type: !4380)
!4376 = distinct !DISubprogram(name: "strcpy", scope: !4377, file: !4377, line: 107, type: !4378, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !4381)
!4377 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!12, !4380, !3782}
!4380 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!4381 = !{!4375, !4382}
!4382 = !DILocalVariable(name: "__src", arg: 2, scope: !4376, file: !4377, line: 107, type: !3782)
!4383 = !DILocation(line: 107, column: 1, scope: !4376, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 239, column: 23, scope: !4179, inlinedAt: !4253)
!4385 = !DILocation(line: 109, column: 49, scope: !4376, inlinedAt: !4384)
!4386 = !DILocation(line: 109, column: 10, scope: !4376, inlinedAt: !4384)
!4387 = !DILocation(line: 107, column: 1, scope: !4376, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 240, column: 23, scope: !4179, inlinedAt: !4253)
!4389 = !DILocation(line: 109, column: 49, scope: !4376, inlinedAt: !4388)
!4390 = !DILocation(line: 109, column: 10, scope: !4376, inlinedAt: !4388)
!4391 = !DILocation(line: 241, column: 21, scope: !4180, inlinedAt: !4253)
!4392 = !DILocation(line: 242, column: 19, scope: !4182, inlinedAt: !4253)
!4393 = !DILocation(line: 243, column: 32, scope: !4394, inlinedAt: !4253)
!4394 = distinct !DILexicalBlock(scope: !4182, file: !537, line: 243, column: 23)
!4395 = !DILocation(line: 243, column: 23, scope: !4182, inlinedAt: !4253)
!4396 = !DILocation(line: 247, column: 33, scope: !4397, inlinedAt: !4253)
!4397 = distinct !DILexicalBlock(scope: !4394, file: !537, line: 246, column: 21)
!4398 = !DILocation(line: 247, column: 45, scope: !4397, inlinedAt: !4253)
!4399 = !DILocation(line: 253, column: 11, scope: !4186, inlinedAt: !4253)
!4400 = !DILocation(line: 377, column: 23, scope: !4188, inlinedAt: !4253)
!4401 = !DILocation(line: 378, column: 5, scope: !4188, inlinedAt: !4253)
!4402 = !DILocation(line: 396, column: 15, scope: !4166)
!4403 = !DILocation(line: 590, column: 8, scope: !4175)
!4404 = !DILocation(line: 590, column: 17, scope: !4175)
!4405 = !DILocation(line: 589, column: 3, scope: !4406)
!4406 = !DILexicalBlockFile(scope: !4176, file: !537, discriminator: 1)
!4407 = !DILocation(line: 592, column: 9, scope: !4173)
!4408 = !DILocation(line: 592, column: 35, scope: !4174)
!4409 = !DILocation(line: 593, column: 9, scope: !4174)
!4410 = !DILocation(line: 593, column: 24, scope: !4411)
!4411 = !DILexicalBlockFile(scope: !4174, file: !537, discriminator: 1)
!4412 = !DILocation(line: 593, column: 31, scope: !4411)
!4413 = !DILocation(line: 593, column: 34, scope: !4414)
!4414 = !DILexicalBlockFile(scope: !4174, file: !537, discriminator: 2)
!4415 = !DILocation(line: 593, column: 45, scope: !4414)
!4416 = !DILocation(line: 592, column: 9, scope: !4417)
!4417 = !DILexicalBlockFile(scope: !4175, file: !537, discriminator: 1)
!4418 = !DILocation(line: 595, column: 29, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4174, file: !537, line: 594, column: 7)
!4420 = !DILocation(line: 595, column: 27, scope: !4419)
!4421 = !DILocation(line: 595, column: 46, scope: !4419)
!4422 = !DILocation(line: 596, column: 9, scope: !4419)
!4423 = !DILocation(line: 591, column: 19, scope: !4175)
!4424 = !DILocation(line: 591, column: 36, scope: !4175)
!4425 = !DILocation(line: 591, column: 16, scope: !4175)
!4426 = !DILocation(line: 591, column: 52, scope: !4417)
!4427 = !DILocation(line: 591, column: 69, scope: !4175)
!4428 = !DILocation(line: 591, column: 49, scope: !4175)
!4429 = distinct !{!4429, !4430, !4431}
!4430 = !DILocation(line: 589, column: 3, scope: !4176)
!4431 = !DILocation(line: 597, column: 7, scope: !4176)
!4432 = !DILocation(line: 602, column: 7, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4166, file: !537, line: 602, column: 7)
!4434 = !DILocation(line: 602, column: 18, scope: !4433)
!4435 = !DILocation(line: 602, column: 7, scope: !4166)
!4436 = !DILocation(line: 612, column: 3, scope: !4166)
!4437 = distinct !DISubprogram(name: "rpl_fclose", scope: !4438, file: !4438, line: 56, type: !4439, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !812, variables: !4481)
!4438 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!53, !4441}
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3166, line: 49, baseType: !4443)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3168, line: 241, size: 1728, elements: !4444)
!4444 = !{!4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4443, file: !3168, line: 242, baseType: !53, size: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4443, file: !3168, line: 247, baseType: !12, size: 64, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4443, file: !3168, line: 248, baseType: !12, size: 64, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4443, file: !3168, line: 249, baseType: !12, size: 64, offset: 192)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4443, file: !3168, line: 250, baseType: !12, size: 64, offset: 256)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4443, file: !3168, line: 251, baseType: !12, size: 64, offset: 320)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4443, file: !3168, line: 252, baseType: !12, size: 64, offset: 384)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4443, file: !3168, line: 253, baseType: !12, size: 64, offset: 448)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4443, file: !3168, line: 254, baseType: !12, size: 64, offset: 512)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4443, file: !3168, line: 256, baseType: !12, size: 64, offset: 576)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4443, file: !3168, line: 257, baseType: !12, size: 64, offset: 640)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4443, file: !3168, line: 258, baseType: !12, size: 64, offset: 704)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4443, file: !3168, line: 260, baseType: !4458, size: 64, offset: 768)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3168, line: 156, size: 192, elements: !4460)
!4460 = !{!4461, !4462, !4464}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4459, file: !3168, line: 157, baseType: !4458, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4459, file: !3168, line: 158, baseType: !4463, size: 64, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4459, file: !3168, line: 162, baseType: !53, size: 32, offset: 128)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4443, file: !3168, line: 262, baseType: !4463, size: 64, offset: 832)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4443, file: !3168, line: 264, baseType: !53, size: 32, offset: 896)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4443, file: !3168, line: 268, baseType: !53, size: 32, offset: 928)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4443, file: !3168, line: 270, baseType: !3194, size: 64, offset: 960)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4443, file: !3168, line: 274, baseType: !138, size: 16, offset: 1024)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4443, file: !3168, line: 275, baseType: !3198, size: 8, offset: 1040)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4443, file: !3168, line: 276, baseType: !3200, size: 8, offset: 1048)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4443, file: !3168, line: 280, baseType: !3204, size: 64, offset: 1088)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4443, file: !3168, line: 289, baseType: !3207, size: 64, offset: 1152)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4443, file: !3168, line: 297, baseType: !14, size: 64, offset: 1216)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4443, file: !3168, line: 298, baseType: !14, size: 64, offset: 1280)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4443, file: !3168, line: 299, baseType: !14, size: 64, offset: 1344)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4443, file: !3168, line: 300, baseType: !14, size: 64, offset: 1408)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4443, file: !3168, line: 302, baseType: !15, size: 64, offset: 1472)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4443, file: !3168, line: 303, baseType: !53, size: 32, offset: 1536)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4443, file: !3168, line: 305, baseType: !3215, size: 160, offset: 1568)
!4481 = !{!4482, !4483, !4484, !4485}
!4482 = !DILocalVariable(name: "fp", arg: 1, scope: !4437, file: !4438, line: 56, type: !4441)
!4483 = !DILocalVariable(name: "saved_errno", scope: !4437, file: !4438, line: 58, type: !53)
!4484 = !DILocalVariable(name: "fd", scope: !4437, file: !4438, line: 59, type: !53)
!4485 = !DILocalVariable(name: "result", scope: !4437, file: !4438, line: 60, type: !53)
!4486 = !DILocation(line: 56, column: 19, scope: !4437)
!4487 = !DILocation(line: 58, column: 7, scope: !4437)
!4488 = !DILocation(line: 60, column: 7, scope: !4437)
!4489 = !DILocation(line: 63, column: 8, scope: !4437)
!4490 = !DILocation(line: 59, column: 7, scope: !4437)
!4491 = !DILocation(line: 64, column: 10, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4437, file: !4438, line: 64, column: 7)
!4493 = !DILocation(line: 64, column: 7, scope: !4437)
!4494 = !DILocation(line: 65, column: 12, scope: !4492)
!4495 = !DILocation(line: 65, column: 5, scope: !4492)
!4496 = !DILocation(line: 70, column: 9, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4437, file: !4438, line: 70, column: 7)
!4498 = !DILocation(line: 70, column: 23, scope: !4497)
!4499 = !DILocation(line: 70, column: 33, scope: !4500)
!4500 = !DILexicalBlockFile(scope: !4497, file: !4438, discriminator: 1)
!4501 = !DILocation(line: 70, column: 26, scope: !4502)
!4502 = !DILexicalBlockFile(scope: !4497, file: !4438, discriminator: 3)
!4503 = !DILocation(line: 70, column: 59, scope: !4500)
!4504 = !DILocation(line: 71, column: 7, scope: !4497)
!4505 = !DILocation(line: 71, column: 10, scope: !4500)
!4506 = !DILocation(line: 70, column: 7, scope: !4507)
!4507 = !DILexicalBlockFile(scope: !4437, file: !4438, discriminator: 2)
!4508 = !DILocation(line: 98, column: 12, scope: !4437)
!4509 = !DILocation(line: 103, column: 7, scope: !4437)
!4510 = !DILocation(line: 72, column: 19, scope: !4497)
!4511 = !DILocation(line: 103, column: 19, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4437, file: !4438, line: 103, column: 7)
!4513 = !DILocation(line: 105, column: 13, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4512, file: !4438, line: 104, column: 5)
!4515 = !DILocation(line: 107, column: 5, scope: !4514)
!4516 = !DILocation(line: 110, column: 1, scope: !4437)
!4517 = distinct !DISubprogram(name: "rpl_fflush", scope: !4518, file: !4518, line: 127, type: !4519, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !814, variables: !4561)
!4518 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!53, !4521}
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3166, line: 49, baseType: !4523)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3168, line: 241, size: 1728, elements: !4524)
!4524 = !{!4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4523, file: !3168, line: 242, baseType: !53, size: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4523, file: !3168, line: 247, baseType: !12, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4523, file: !3168, line: 248, baseType: !12, size: 64, offset: 128)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4523, file: !3168, line: 249, baseType: !12, size: 64, offset: 192)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4523, file: !3168, line: 250, baseType: !12, size: 64, offset: 256)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4523, file: !3168, line: 251, baseType: !12, size: 64, offset: 320)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4523, file: !3168, line: 252, baseType: !12, size: 64, offset: 384)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4523, file: !3168, line: 253, baseType: !12, size: 64, offset: 448)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4523, file: !3168, line: 254, baseType: !12, size: 64, offset: 512)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4523, file: !3168, line: 256, baseType: !12, size: 64, offset: 576)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4523, file: !3168, line: 257, baseType: !12, size: 64, offset: 640)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4523, file: !3168, line: 258, baseType: !12, size: 64, offset: 704)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4523, file: !3168, line: 260, baseType: !4538, size: 64, offset: 768)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3168, line: 156, size: 192, elements: !4540)
!4540 = !{!4541, !4542, !4544}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4539, file: !3168, line: 157, baseType: !4538, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4539, file: !3168, line: 158, baseType: !4543, size: 64, offset: 64)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4539, file: !3168, line: 162, baseType: !53, size: 32, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4523, file: !3168, line: 262, baseType: !4543, size: 64, offset: 832)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4523, file: !3168, line: 264, baseType: !53, size: 32, offset: 896)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4523, file: !3168, line: 268, baseType: !53, size: 32, offset: 928)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4523, file: !3168, line: 270, baseType: !3194, size: 64, offset: 960)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4523, file: !3168, line: 274, baseType: !138, size: 16, offset: 1024)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4523, file: !3168, line: 275, baseType: !3198, size: 8, offset: 1040)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4523, file: !3168, line: 276, baseType: !3200, size: 8, offset: 1048)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4523, file: !3168, line: 280, baseType: !3204, size: 64, offset: 1088)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4523, file: !3168, line: 289, baseType: !3207, size: 64, offset: 1152)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4523, file: !3168, line: 297, baseType: !14, size: 64, offset: 1216)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4523, file: !3168, line: 298, baseType: !14, size: 64, offset: 1280)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4523, file: !3168, line: 299, baseType: !14, size: 64, offset: 1344)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4523, file: !3168, line: 300, baseType: !14, size: 64, offset: 1408)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4523, file: !3168, line: 302, baseType: !15, size: 64, offset: 1472)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4523, file: !3168, line: 303, baseType: !53, size: 32, offset: 1536)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4523, file: !3168, line: 305, baseType: !3215, size: 160, offset: 1568)
!4561 = !{!4562}
!4562 = !DILocalVariable(name: "stream", arg: 1, scope: !4517, file: !4518, line: 127, type: !4521)
!4563 = !DILocation(line: 127, column: 19, scope: !4517)
!4564 = !DILocation(line: 148, column: 14, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4517, file: !4518, line: 148, column: 7)
!4566 = !DILocation(line: 148, column: 22, scope: !4565)
!4567 = !DILocation(line: 148, column: 27, scope: !4568)
!4568 = !DILexicalBlockFile(scope: !4565, file: !4518, discriminator: 1)
!4569 = !DILocation(line: 148, column: 7, scope: !4570)
!4570 = !DILexicalBlockFile(scope: !4517, file: !4518, discriminator: 1)
!4571 = !DILocation(line: 149, column: 12, scope: !4565)
!4572 = !DILocation(line: 149, column: 5, scope: !4565)
!4573 = !DILocalVariable(name: "fp", arg: 1, scope: !4574, file: !4518, line: 40, type: !4521)
!4574 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4518, file: !4518, line: 40, type: !4575, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !814, variables: !4577)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{null, !4521}
!4577 = !{!4573}
!4578 = !DILocation(line: 40, column: 48, scope: !4574, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 153, column: 3, scope: !4517)
!4580 = !DILocation(line: 42, column: 11, scope: !4581, inlinedAt: !4579)
!4581 = distinct !DILexicalBlock(scope: !4574, file: !4518, line: 42, column: 7)
!4582 = !DILocation(line: 42, column: 18, scope: !4581, inlinedAt: !4579)
!4583 = !DILocation(line: 42, column: 7, scope: !4574, inlinedAt: !4579)
!4584 = !DILocation(line: 44, column: 5, scope: !4581, inlinedAt: !4579)
!4585 = !DILocation(line: 155, column: 10, scope: !4517)
!4586 = !DILocation(line: 155, column: 3, scope: !4517)
!4587 = !DILocation(line: 229, column: 1, scope: !4517)
!4588 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4589, file: !4589, line: 28, type: !4590, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !816, variables: !4633)
!4589 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!53, !4592, !4632, !53}
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3166, line: 49, baseType: !4594)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3168, line: 241, size: 1728, elements: !4595)
!4595 = !{!4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4594, file: !3168, line: 242, baseType: !53, size: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4594, file: !3168, line: 247, baseType: !12, size: 64, offset: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4594, file: !3168, line: 248, baseType: !12, size: 64, offset: 128)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4594, file: !3168, line: 249, baseType: !12, size: 64, offset: 192)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4594, file: !3168, line: 250, baseType: !12, size: 64, offset: 256)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4594, file: !3168, line: 251, baseType: !12, size: 64, offset: 320)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4594, file: !3168, line: 252, baseType: !12, size: 64, offset: 384)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4594, file: !3168, line: 253, baseType: !12, size: 64, offset: 448)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4594, file: !3168, line: 254, baseType: !12, size: 64, offset: 512)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4594, file: !3168, line: 256, baseType: !12, size: 64, offset: 576)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4594, file: !3168, line: 257, baseType: !12, size: 64, offset: 640)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4594, file: !3168, line: 258, baseType: !12, size: 64, offset: 704)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4594, file: !3168, line: 260, baseType: !4609, size: 64, offset: 768)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3168, line: 156, size: 192, elements: !4611)
!4611 = !{!4612, !4613, !4615}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4610, file: !3168, line: 157, baseType: !4609, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4610, file: !3168, line: 158, baseType: !4614, size: 64, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4610, file: !3168, line: 162, baseType: !53, size: 32, offset: 128)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4594, file: !3168, line: 262, baseType: !4614, size: 64, offset: 832)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4594, file: !3168, line: 264, baseType: !53, size: 32, offset: 896)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4594, file: !3168, line: 268, baseType: !53, size: 32, offset: 928)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4594, file: !3168, line: 270, baseType: !3194, size: 64, offset: 960)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4594, file: !3168, line: 274, baseType: !138, size: 16, offset: 1024)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4594, file: !3168, line: 275, baseType: !3198, size: 8, offset: 1040)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4594, file: !3168, line: 276, baseType: !3200, size: 8, offset: 1048)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4594, file: !3168, line: 280, baseType: !3204, size: 64, offset: 1088)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4594, file: !3168, line: 289, baseType: !3207, size: 64, offset: 1152)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4594, file: !3168, line: 297, baseType: !14, size: 64, offset: 1216)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4594, file: !3168, line: 298, baseType: !14, size: 64, offset: 1280)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4594, file: !3168, line: 299, baseType: !14, size: 64, offset: 1344)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4594, file: !3168, line: 300, baseType: !14, size: 64, offset: 1408)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4594, file: !3168, line: 302, baseType: !15, size: 64, offset: 1472)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4594, file: !3168, line: 303, baseType: !53, size: 32, offset: 1536)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4594, file: !3168, line: 305, baseType: !3215, size: 160, offset: 1568)
!4632 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3166, line: 91, baseType: !3194)
!4633 = !{!4634, !4635, !4636, !4637}
!4634 = !DILocalVariable(name: "fp", arg: 1, scope: !4588, file: !4589, line: 28, type: !4592)
!4635 = !DILocalVariable(name: "offset", arg: 2, scope: !4588, file: !4589, line: 28, type: !4632)
!4636 = !DILocalVariable(name: "whence", arg: 3, scope: !4588, file: !4589, line: 28, type: !53)
!4637 = !DILocalVariable(name: "pos", scope: !4638, file: !4589, line: 116, type: !4632)
!4638 = distinct !DILexicalBlock(scope: !4639, file: !4589, line: 112, column: 5)
!4639 = distinct !DILexicalBlock(scope: !4588, file: !4589, line: 51, column: 7)
!4640 = !DILocation(line: 28, column: 15, scope: !4588)
!4641 = !DILocation(line: 28, column: 25, scope: !4588)
!4642 = !DILocation(line: 28, column: 37, scope: !4588)
!4643 = !DILocation(line: 51, column: 11, scope: !4639)
!4644 = !DILocation(line: 51, column: 31, scope: !4639)
!4645 = !DILocation(line: 51, column: 24, scope: !4639)
!4646 = !DILocation(line: 52, column: 7, scope: !4639)
!4647 = !DILocation(line: 52, column: 14, scope: !4648)
!4648 = !DILexicalBlockFile(scope: !4639, file: !4589, discriminator: 1)
!4649 = !{!4094, !837, i64 40}
!4650 = !DILocation(line: 52, column: 35, scope: !4648)
!4651 = !{!4094, !837, i64 32}
!4652 = !DILocation(line: 52, column: 28, scope: !4648)
!4653 = !DILocation(line: 53, column: 7, scope: !4639)
!4654 = !DILocation(line: 53, column: 14, scope: !4648)
!4655 = !{!4094, !837, i64 72}
!4656 = !DILocation(line: 53, column: 28, scope: !4648)
!4657 = !DILocation(line: 51, column: 7, scope: !4658)
!4658 = !DILexicalBlockFile(scope: !4588, file: !4589, discriminator: 1)
!4659 = !DILocation(line: 116, column: 26, scope: !4638)
!4660 = !DILocation(line: 116, column: 19, scope: !4661)
!4661 = !DILexicalBlockFile(scope: !4638, file: !4589, discriminator: 1)
!4662 = !DILocation(line: 116, column: 13, scope: !4638)
!4663 = !DILocation(line: 117, column: 15, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4638, file: !4589, line: 117, column: 11)
!4665 = !DILocation(line: 117, column: 11, scope: !4638)
!4666 = !DILocation(line: 127, column: 11, scope: !4638)
!4667 = !DILocation(line: 127, column: 18, scope: !4638)
!4668 = !DILocation(line: 128, column: 11, scope: !4638)
!4669 = !DILocation(line: 128, column: 19, scope: !4638)
!4670 = !{!4094, !2478, i64 144}
!4671 = !DILocation(line: 159, column: 7, scope: !4638)
!4672 = !DILocation(line: 161, column: 10, scope: !4588)
!4673 = !DILocation(line: 161, column: 3, scope: !4588)
!4674 = !DILocation(line: 162, column: 1, scope: !4588)
