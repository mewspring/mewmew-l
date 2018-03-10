; ModuleID = 'coreutils-8.27/src/printenv.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [167 x i8] c"Usage: %s [OPTION]... [VARIABLE]...\0APrint the values of the specified environment VARIABLE(s).\0AIf no VARIABLE is specified, print name and value pairs for them all.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"  -0, --null     end each output line with NUL, not newline\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"printenv\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"+iu:0\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@environ = external local_unnamed_addr global i8**, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !66
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !72
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !77
@.str.18 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !81
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !88
@.str.33 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.34 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.35 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.39, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.41, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.45, i32 0, i32 0), i8* null], align 16, !dbg !95
@.str.36 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.37 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.38 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.39 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.40 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.41 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.42 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.43 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.44 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.45 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !137
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !144
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !157
@.str.11.46 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.47 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.48 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.49 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.50 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.51 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !164
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !171
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !159
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !173
@.str.54 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.56 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.57 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.58 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.59 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.60 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.61 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.62 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.63 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.64 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.65 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.66 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.67 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.70 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.71 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.72 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.73 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !179
@.str.1.84 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.94 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.97 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !188
@.str.3.98 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.99 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.100 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.101 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.102 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.103 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !584 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !588, metadata !589), !dbg !590
  %2 = icmp eq i32 %0, 0, !dbg !591
  br i1 %2, label %8, label %3, !dbg !593

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !594, !tbaa !597
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !594
  %6 = load i8*, i8** @program_name, align 8, !dbg !594, !tbaa !597
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !601
  br label %38, !dbg !603

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !605
  %10 = load i8*, i8** @program_name, align 8, !dbg !605, !tbaa !597
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !607
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !609
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609, !tbaa !597
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !610
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !611
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !597
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !612
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !613
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !613, !tbaa !597
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !614
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !615
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !616
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !31, metadata !589) #9, !dbg !617
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !31, metadata !589) #9, !dbg !617
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #9, !dbg !619
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !620
  %25 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !622
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !42, metadata !589) #9, !dbg !623
  %26 = icmp eq i8* %25, null, !dbg !624
  br i1 %26, label %33, label %27, !dbg !625

; <label>:27:                                     ; preds = %8
  %28 = tail call i32 @strncmp(i8* nonnull %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #13, !dbg !626
  %29 = icmp eq i32 %28, 0, !dbg !626
  br i1 %29, label %33, label %30, !dbg !628

; <label>:30:                                     ; preds = %27
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #9, !dbg !630
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !632
  br label %33, !dbg !634

; <label>:33:                                     ; preds = %8, %27, %30
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #9, !dbg !635
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !636
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #9, !dbg !637
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !638
  br label %38

; <label>:38:                                     ; preds = %33, %3
  tail call void @exit(i32 %0) #14, !dbg !639
  unreachable, !dbg !639
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !640 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !645, metadata !589), !dbg !661
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !646, metadata !589), !dbg !662
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !653, metadata !589), !dbg !663
  %3 = load i8*, i8** %1, align 8, !dbg !664, !tbaa !597
  tail call void @set_program_name(i8* %3) #9, !dbg !665
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !666
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !667
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !668
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !669, metadata !589), !dbg !672
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !674, !tbaa !676
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !678
  br label %8, !dbg !679

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i32 [ 10, %2 ], [ 0, %8 ]
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !680
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !652, metadata !589), !dbg !682
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 48, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !683, !llvm.loop !684

; <label>:11:                                     ; preds = %8
  tail call void @usage(i32 0) #15, !dbg !686
  unreachable, !dbg !686

; <label>:12:                                     ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !597
  %14 = load i8*, i8** @Version, align 8, !dbg !689, !tbaa !597
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* null) #9, !dbg !689
  tail call void @exit(i32 0) #14, !dbg !690
  unreachable, !dbg !689

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 2) #15, !dbg !692
  unreachable, !dbg !692

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* @optind, align 4, !dbg !693, !tbaa !676
  %18 = icmp slt i32 %17, %0, !dbg !694
  br i1 %18, label %19, label %21, !dbg !695

; <label>:19:                                     ; preds = %16
  %20 = sext i32 %17 to i64, !dbg !696
  br label %33, !dbg !696

; <label>:21:                                     ; preds = %16
  %22 = load i8**, i8*** @environ, align 8, !dbg !697, !tbaa !597
  tail call void @llvm.dbg.value(metadata i8** %22, i64 0, metadata !647, metadata !589), !dbg !700
  tail call void @llvm.dbg.value(metadata i8** %22, i64 0, metadata !647, metadata !589), !dbg !700
  %23 = load i8*, i8** %22, align 8, !dbg !701, !tbaa !597
  %24 = icmp eq i8* %23, null, !dbg !704
  br i1 %24, label %100, label %25, !dbg !705

; <label>:25:                                     ; preds = %21
  br label %26, !dbg !707

; <label>:26:                                     ; preds = %25, %26
  %27 = phi i8* [ %31, %26 ], [ %23, %25 ]
  %28 = phi i8** [ %30, %26 ], [ %22, %25 ]
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %27, i32 %9) #9, !dbg !707
  %30 = getelementptr inbounds i8*, i8** %28, i64 1, !dbg !708
  tail call void @llvm.dbg.value(metadata i8** %30, i64 0, metadata !647, metadata !589), !dbg !700
  tail call void @llvm.dbg.value(metadata i8** %30, i64 0, metadata !647, metadata !589), !dbg !700
  %31 = load i8*, i8** %30, align 8, !dbg !701, !tbaa !597
  %32 = icmp eq i8* %31, null, !dbg !704
  br i1 %32, label %99, label %26, !dbg !705, !llvm.loop !710

; <label>:33:                                     ; preds = %90, %19
  %34 = phi i64 [ %20, %19 ], [ %92, %90 ]
  %35 = phi i32 [ 0, %19 ], [ %91, %90 ]
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !657, metadata !589), !dbg !696
  %36 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !713
  %37 = load i8*, i8** %36, align 8, !dbg !713, !tbaa !597
  %38 = tail call i8* @strchr(i8* %37, i32 61) #9, !dbg !713
  %39 = icmp eq i8* %38, null, !dbg !713
  br i1 %39, label %40, label %90, !dbg !716

; <label>:40:                                     ; preds = %33
  %41 = load i8**, i8*** @environ, align 8, !dbg !718, !tbaa !597
  tail call void @llvm.dbg.value(metadata i8** %41, i64 0, metadata !647, metadata !589), !dbg !700
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !657, metadata !589), !dbg !696
  tail call void @llvm.dbg.value(metadata i8** %41, i64 0, metadata !647, metadata !589), !dbg !700
  %42 = load i8*, i8** %41, align 8, !dbg !720, !tbaa !597
  %43 = icmp eq i8* %42, null, !dbg !723
  br i1 %43, label %85, label %44, !dbg !723

; <label>:44:                                     ; preds = %40
  br label %45, !dbg !725

; <label>:45:                                     ; preds = %44, %82
  %46 = phi i8* [ %83, %82 ], [ %37, %44 ], !dbg !726
  %47 = phi i8* [ %80, %82 ], [ %42, %44 ]
  %48 = phi i8 [ %78, %82 ], [ 0, %44 ]
  %49 = phi i8** [ %79, %82 ], [ %41, %44 ]
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !648, metadata !589), !dbg !725
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !649, metadata !589), !dbg !728
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !649, metadata !589), !dbg !728
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !648, metadata !589), !dbg !725
  %50 = load i8, i8* %47, align 1, !dbg !729, !tbaa !731
  %51 = icmp eq i8 %50, 0, !dbg !732
  br i1 %51, label %77, label %52, !dbg !733

; <label>:52:                                     ; preds = %45
  %53 = load i8, i8* %46, align 1, !dbg !734, !tbaa !731
  %54 = icmp eq i8 %53, 0, !dbg !736
  br i1 %54, label %77, label %55, !dbg !737

; <label>:55:                                     ; preds = %52
  br label %56, !dbg !738

; <label>:56:                                     ; preds = %55, %66
  %57 = phi i8 [ %68, %66 ], [ %53, %55 ]
  %58 = phi i8* [ %61, %66 ], [ %47, %55 ]
  %59 = phi i8* [ %62, %66 ], [ %46, %55 ]
  %60 = phi i8 [ %67, %66 ], [ %50, %55 ]
  %61 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !738
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !648, metadata !589), !dbg !725
  %62 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !740
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !649, metadata !589), !dbg !728
  %63 = icmp eq i8 %60, %57, !dbg !741
  br i1 %63, label %64, label %76, !dbg !742

; <label>:64:                                     ; preds = %56
  %65 = load i8, i8* %61, align 1, !dbg !744, !tbaa !731
  switch i8 %65, label %66 [
    i8 61, label %70
    i8 0, label %76
  ], !dbg !747

; <label>:66:                                     ; preds = %64, %70
  %67 = phi i8 [ 61, %70 ], [ %65, %64 ]
  %68 = load i8, i8* %62, align 1, !dbg !734, !tbaa !731
  %69 = icmp eq i8 %68, 0, !dbg !736
  br i1 %69, label %76, label %56, !dbg !737, !llvm.loop !748

; <label>:70:                                     ; preds = %64
  %71 = load i8, i8* %62, align 1, !dbg !751, !tbaa !731
  %72 = icmp eq i8 %71, 0, !dbg !753
  br i1 %72, label %73, label %66, !dbg !754

; <label>:73:                                     ; preds = %70
  %74 = getelementptr inbounds i8, i8* %58, i64 2, !dbg !756
  %75 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %74, i32 %9) #9, !dbg !756
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !657, metadata !589), !dbg !696
  br label %77, !dbg !758

; <label>:76:                                     ; preds = %56, %66, %64
  br label %77, !dbg !696

; <label>:77:                                     ; preds = %76, %52, %45, %73
  %78 = phi i8 [ 1, %73 ], [ %48, %45 ], [ %48, %52 ], [ %48, %76 ]
  tail call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !657, metadata !589), !dbg !696
  %79 = getelementptr inbounds i8*, i8** %49, i64 1, !dbg !759
  tail call void @llvm.dbg.value(metadata i8** %79, i64 0, metadata !647, metadata !589), !dbg !700
  tail call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !657, metadata !589), !dbg !696
  tail call void @llvm.dbg.value(metadata i8** %79, i64 0, metadata !647, metadata !589), !dbg !700
  %80 = load i8*, i8** %79, align 8, !dbg !720, !tbaa !597
  %81 = icmp eq i8* %80, null, !dbg !723
  br i1 %81, label %84, label %82, !dbg !723, !llvm.loop !761

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** %36, align 8, !tbaa !597
  br label %45, !dbg !723

; <label>:84:                                     ; preds = %77
  br label %85, !dbg !764

; <label>:85:                                     ; preds = %84, %40
  %86 = phi i8 [ 0, %40 ], [ %78, %84 ]
  %87 = and i8 %86, 1, !dbg !764
  %88 = zext i8 %87 to i32, !dbg !764
  %89 = add nsw i32 %88, %35, !dbg !765
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !654, metadata !589), !dbg !766
  br label %90, !dbg !767

; <label>:90:                                     ; preds = %33, %85
  %91 = phi i32 [ %89, %85 ], [ %35, %33 ]
  tail call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !654, metadata !589), !dbg !766
  %92 = add nsw i64 %34, 1, !dbg !768
  tail call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !654, metadata !589), !dbg !766
  %93 = trunc i64 %92 to i32, !dbg !770
  %94 = icmp eq i32 %93, %0, !dbg !770
  br i1 %94, label %95, label %33, !dbg !772, !llvm.loop !774

; <label>:95:                                     ; preds = %90
  %96 = load i32, i32* @optind, align 4, !dbg !777, !tbaa !676
  %97 = sub nsw i32 %0, %96, !dbg !778
  %98 = icmp ne i32 %91, %97
  br label %100

; <label>:99:                                     ; preds = %26
  br label %100, !dbg !779

; <label>:100:                                    ; preds = %99, %21, %95
  %101 = phi i1 [ %98, %95 ], [ false, %21 ], [ false, %99 ]
  %102 = zext i1 %101 to i32, !dbg !779
  ret i32 %102, !dbg !780
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !781 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !783, metadata !589), !dbg !784
  store i8* %0, i8** @file_name, align 8, !dbg !785, !tbaa !597
  ret void, !dbg !786
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !787 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !791, metadata !792), !dbg !793
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !794, !tbaa !795
  ret void, !dbg !797
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !798 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !805, !tbaa !597
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !806
  %3 = icmp eq i32 %2, 0, !dbg !807
  br i1 %3, label %21, label %4, !dbg !808

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !809, !tbaa !795, !range !811
  %6 = icmp eq i8 %5, 0, !dbg !809
  %7 = tail call i32* @__errno_location() #1, !dbg !812
  br i1 %6, label %11, label %8, !dbg !814

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !815, !tbaa !676
  %10 = icmp eq i32 %9, 32, !dbg !817
  br i1 %10, label %21, label %11, !dbg !818

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 5) #9, !dbg !820
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !802, metadata !589), !dbg !821
  %13 = load i8*, i8** @file_name, align 8, !dbg !822, !tbaa !597
  %14 = icmp eq i8* %13, null, !dbg !822
  %15 = load i32, i32* %7, align 4, !tbaa !676
  br i1 %14, label %18, label %16, !dbg !823

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !824
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.19, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !826
  br label %19, !dbg !828

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i8* %12) #9, !dbg !829
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !830, !tbaa !676
  tail call void @_exit(i32 %20) #14, !dbg !831
  unreachable, !dbg !831

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !832, !tbaa !597
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !834
  %24 = icmp eq i32 %23, 0, !dbg !835
  br i1 %24, label %27, label %25, !dbg !836

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !837, !tbaa !676
  tail call void @_exit(i32 %26) #14, !dbg !838
  unreachable, !dbg !838

; <label>:27:                                     ; preds = %21
  ret void, !dbg !839
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !840 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !842, metadata !589), !dbg !845
  %2 = icmp eq i8* %0, null, !dbg !846
  br i1 %2, label %3, label %6, !dbg !848

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !849, !tbaa !597
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !851
  tail call void @abort() #14, !dbg !852
  unreachable, !dbg !852

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !853
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !843, metadata !589), !dbg !854
  %8 = icmp ne i8* %7, null, !dbg !855
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !856
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !858
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !844, metadata !589), !dbg !859
  %11 = ptrtoint i8* %10 to i64, !dbg !860
  %12 = ptrtoint i8* %0 to i64, !dbg !860
  %13 = sub i64 %11, %12, !dbg !860
  %14 = icmp sgt i64 %13, 6, !dbg !862
  br i1 %14, label %15, label %24, !dbg !863

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !864
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.34, i64 0, i64 0), i64 7) #13, !dbg !864
  %18 = icmp eq i32 %17, 0, !dbg !866
  br i1 %18, label %19, label %24, !dbg !867

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !842, metadata !589), !dbg !845
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.35, i64 0, i64 0), i64 3) #13, !dbg !868
  %21 = icmp eq i32 %20, 0, !dbg !871
  br i1 %21, label %22, label %24, !dbg !872

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !873
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !842, metadata !589), !dbg !845
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !875, !tbaa !597
  br label %24, !dbg !876

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !842, metadata !589), !dbg !845
  store i8* %25, i8** @program_name, align 8, !dbg !877, !tbaa !597
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !878, !tbaa !597
  ret void, !dbg !879
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !880 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !885, metadata !589), !dbg !888
  %2 = tail call i32* @__errno_location() #1, !dbg !889
  %3 = load i32, i32* %2, align 4, !dbg !889, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !886, metadata !589), !dbg !890
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !891
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !892
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !892
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !894
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !894
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !887, metadata !589), !dbg !895
  store i32 %3, i32* %2, align 4, !dbg !896, !tbaa !676
  ret %struct.quoting_options* %8, !dbg !897
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !898 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !904, metadata !589), !dbg !905
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !906
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !906
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !907
  %5 = load i32, i32* %4, align 8, !dbg !907, !tbaa !909
  ret i32 %5, !dbg !911
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !912 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !916, metadata !589), !dbg !918
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !917, metadata !589), !dbg !919
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !920
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !920
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !921
  store i32 %1, i32* %5, align 8, !dbg !923, !tbaa !909
  ret void, !dbg !924
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !925 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !929, metadata !589), !dbg !937
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !930, metadata !589), !dbg !938
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !931, metadata !589), !dbg !939
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !932, metadata !589), !dbg !940
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !941
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !941
  %6 = lshr i8 %1, 5, !dbg !942
  %7 = zext i8 %6 to i64, !dbg !942
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !944
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !933, metadata !589), !dbg !945
  %9 = and i8 %1, 31, !dbg !946
  %10 = zext i8 %9 to i32, !dbg !947
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !935, metadata !589), !dbg !948
  %11 = load i32, i32* %8, align 4, !dbg !949, !tbaa !676
  %12 = lshr i32 %11, %10, !dbg !950
  %13 = and i32 %12, 1, !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !936, metadata !589), !dbg !952
  %14 = and i32 %2, 1, !dbg !953
  %15 = xor i32 %13, %14, !dbg !954
  %16 = shl i32 %15, %10, !dbg !955
  %17 = xor i32 %16, %11, !dbg !956
  store i32 %17, i32* %8, align 4, !dbg !956, !tbaa !676
  ret i32 %13, !dbg !957
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !958 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !962, metadata !589), !dbg !965
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !963, metadata !589), !dbg !966
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !962, metadata !589), !dbg !965
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !969
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !962, metadata !589), !dbg !965
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !970
  %6 = load i32, i32* %5, align 4, !dbg !970, !tbaa !971
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !964, metadata !589), !dbg !972
  store i32 %1, i32* %5, align 4, !dbg !973, !tbaa !971
  ret i32 %6, !dbg !974
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !975 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !979, metadata !589), !dbg !982
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !980, metadata !589), !dbg !983
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !981, metadata !589), !dbg !984
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !985
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !979, metadata !589), !dbg !982
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !987
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !979, metadata !589), !dbg !982
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !988
  store i32 10, i32* %6, align 8, !dbg !989, !tbaa !909
  %7 = icmp ne i8* %1, null, !dbg !990
  %8 = icmp ne i8* %2, null, !dbg !992
  %9 = and i1 %7, %8, !dbg !994
  br i1 %9, label %11, label %10, !dbg !994

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !995
  unreachable, !dbg !995

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !996
  store i8* %1, i8** %12, align 8, !dbg !997, !tbaa !998
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !999
  store i8* %2, i8** %13, align 8, !dbg !1000, !tbaa !1001
  ret void, !dbg !1002
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1003 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1007, metadata !589), !dbg !1015
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1008, metadata !589), !dbg !1016
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1009, metadata !589), !dbg !1017
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1010, metadata !589), !dbg !1018
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1011, metadata !589), !dbg !1019
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1020
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1012, metadata !589), !dbg !1021
  %8 = tail call i32* @__errno_location() #1, !dbg !1022
  %9 = load i32, i32* %8, align 4, !dbg !1022, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1013, metadata !589), !dbg !1023
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1024
  %11 = load i32, i32* %10, align 8, !dbg !1024, !tbaa !909
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1025
  %13 = load i32, i32* %12, align 4, !dbg !1025, !tbaa !971
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1026
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1027
  %16 = load i8*, i8** %15, align 8, !dbg !1027, !tbaa !998
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1028
  %18 = load i8*, i8** %17, align 8, !dbg !1028, !tbaa !1001
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1029
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1014, metadata !589), !dbg !1030
  store i32 %9, i32* %8, align 4, !dbg !1031, !tbaa !676
  ret i64 %19, !dbg !1032
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1033 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1039, metadata !589), !dbg !1100
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1040, metadata !589), !dbg !1101
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1041, metadata !589), !dbg !1102
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1042, metadata !589), !dbg !1103
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1043, metadata !589), !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1044, metadata !589), !dbg !1105
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1045, metadata !589), !dbg !1106
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1046, metadata !589), !dbg !1107
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1047, metadata !589), !dbg !1108
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1049, metadata !589), !dbg !1109
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1050, metadata !589), !dbg !1110
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1051, metadata !589), !dbg !1111
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1052, metadata !589), !dbg !1112
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1053, metadata !589), !dbg !1113
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1114
  %14 = icmp eq i64 %13, 1, !dbg !1115
  %15 = lshr i32 %5, 1, !dbg !1116
  %16 = trunc i32 %15 to i8, !dbg !1116
  %17 = and i8 %16, 1, !dbg !1116
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1055, metadata !589), !dbg !1116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1056, metadata !589), !dbg !1117
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1057, metadata !589), !dbg !1118
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1058, metadata !589), !dbg !1119
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1120

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1040, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1058, metadata !589), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1057, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1055, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1042, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1053, metadata !589), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1052, metadata !589), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1051, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1050, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1047, metadata !589), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1046, metadata !589), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1043, metadata !589), !dbg !1104
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
  ], !dbg !1121

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1043, metadata !589), !dbg !1104
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1055, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1055, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1043, metadata !589), !dbg !1104
  br label %95, !dbg !1122

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1055, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1043, metadata !589), !dbg !1104
  %43 = and i8 %36, 1, !dbg !1124
  %44 = icmp eq i8 %43, 0, !dbg !1124
  br i1 %44, label %45, label %95, !dbg !1122

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1126
  br i1 %46, label %95, label %47, !dbg !1130

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1132, !tbaa !731
  br label %95, !dbg !1132

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.46, i64 0, i64 0), i32 %28), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1046, metadata !589), !dbg !1107
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), i32 %28), !dbg !1138
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1047, metadata !589), !dbg !1108
  br label %51, !dbg !1139

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1047, metadata !589), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1046, metadata !589), !dbg !1107
  %54 = and i8 %36, 1, !dbg !1140
  %55 = icmp eq i8 %54, 0, !dbg !1140
  br i1 %55, label %56, label %73, !dbg !1142

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1051, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1049, metadata !589), !dbg !1109
  %57 = load i8, i8* %52, align 1, !dbg !1143, !tbaa !731
  %58 = icmp eq i8 %57, 0, !dbg !1147
  br i1 %58, label %73, label %59, !dbg !1147

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1149

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1149
  br i1 %64, label %65, label %67, !dbg !1153

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1155
  store i8 %61, i8* %66, align 1, !dbg !1155, !tbaa !731
  br label %67, !dbg !1155

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1049, metadata !589), !dbg !1109
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1159
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1051, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1051, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1049, metadata !589), !dbg !1109
  %70 = load i8, i8* %69, align 1, !dbg !1143, !tbaa !731
  %71 = icmp eq i8 %70, 0, !dbg !1147
  br i1 %71, label %72, label %60, !dbg !1147, !llvm.loop !1161

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1109

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1053, metadata !589), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1051, metadata !589), !dbg !1111
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1164
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1052, metadata !589), !dbg !1112
  br label %95, !dbg !1165

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1053, metadata !589), !dbg !1113
  br label %77, !dbg !1166

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1053, metadata !589), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1055, metadata !589), !dbg !1116
  br label %79, !dbg !1167

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1055, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1053, metadata !589), !dbg !1113
  %82 = and i8 %81, 1, !dbg !1168
  %83 = icmp eq i8 %82, 0, !dbg !1168
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1053, metadata !589), !dbg !1113
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1170
  br label %85, !dbg !1170

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1055, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1053, metadata !589), !dbg !1113
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1043, metadata !589), !dbg !1104
  %88 = and i8 %87, 1, !dbg !1171
  %89 = icmp eq i8 %88, 0, !dbg !1171
  br i1 %89, label %90, label %95, !dbg !1173

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1174
  br i1 %91, label %95, label %92, !dbg !1178

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1180, !tbaa !731
  br label %95, !dbg !1180

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1055, metadata !589), !dbg !1116
  br label %95, !dbg !1182

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1183
  unreachable, !dbg !1183

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1055, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1053, metadata !589), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1052, metadata !589), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1051, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1047, metadata !589), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1046, metadata !589), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1043, metadata !589), !dbg !1104
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1048, metadata !589), !dbg !1184
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
  br label %123, !dbg !1185

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1040, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1058, metadata !589), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1057, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1042, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1050, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1048, metadata !589), !dbg !1184
  %132 = icmp eq i64 %127, -1, !dbg !1186
  br i1 %132, label %135, label %133, !dbg !1188

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1189
  br i1 %134, label %597, label %139, !dbg !1191

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1193
  %137 = load i8, i8* %136, align 1, !dbg !1193, !tbaa !731
  %138 = icmp eq i8 %137, 0, !dbg !1195
  br i1 %138, label %597, label %139, !dbg !1191

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1064, metadata !589), !dbg !1196
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1065, metadata !589), !dbg !1197
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1066, metadata !589), !dbg !1198
  br i1 %109, label %140, label %155, !dbg !1199

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1201
  %142 = and i1 %110, %132, !dbg !1203
  br i1 %142, label %143, label %145, !dbg !1203

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1042, metadata !589), !dbg !1103
  br label %145, !dbg !1205

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1042, metadata !589), !dbg !1103
  %147 = icmp ugt i64 %141, %146, !dbg !1207
  br i1 %147, label %155, label %148, !dbg !1209

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1210
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1211
  %151 = icmp ne i32 %150, 0, !dbg !1212
  %152 = or i1 %151, %112, !dbg !1212
  %153 = xor i1 %151, true, !dbg !1212
  %154 = zext i1 %153 to i8, !dbg !1212
  br i1 %152, label %155, label %644, !dbg !1212

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1064, metadata !589), !dbg !1196
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1042, metadata !589), !dbg !1103
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1214
  %159 = load i8, i8* %158, align 1, !dbg !1214, !tbaa !731
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1059, metadata !589), !dbg !1215
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
  ], !dbg !1216

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1217

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1218

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1065, metadata !589), !dbg !1197
  %163 = and i8 %128, 1, !dbg !1223
  %164 = icmp eq i8 %163, 0, !dbg !1223
  %165 = and i1 %114, %164, !dbg !1226
  br i1 %165, label %166, label %182, !dbg !1226

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1228
  br i1 %167, label %168, label %170, !dbg !1233

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1235
  store i8 39, i8* %169, align 1, !dbg !1235, !tbaa !731
  br label %170, !dbg !1235

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1049, metadata !589), !dbg !1109
  %172 = icmp ult i64 %171, %131, !dbg !1239
  br i1 %172, label %173, label %175, !dbg !1243

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1245
  store i8 36, i8* %174, align 1, !dbg !1245, !tbaa !731
  br label %175, !dbg !1245

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1247
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1049, metadata !589), !dbg !1109
  %177 = icmp ult i64 %176, %131, !dbg !1249
  br i1 %177, label %178, label %180, !dbg !1253

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1255
  store i8 39, i8* %179, align 1, !dbg !1255, !tbaa !731
  br label %180, !dbg !1255

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1056, metadata !589), !dbg !1117
  br label %182, !dbg !1259

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1049, metadata !589), !dbg !1109
  %185 = icmp ult i64 %183, %131, !dbg !1261
  br i1 %185, label %186, label %188, !dbg !1265

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1267
  store i8 92, i8* %187, align 1, !dbg !1267, !tbaa !731
  br label %188, !dbg !1267

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1049, metadata !589), !dbg !1109
  br i1 %106, label %190, label %476, !dbg !1271

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1273
  %192 = icmp ult i64 %191, %156, !dbg !1275
  br i1 %192, label %193, label %476, !dbg !1276

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1277
  %195 = load i8, i8* %194, align 1, !dbg !1277, !tbaa !731
  %196 = add i8 %195, -48, !dbg !1279
  %197 = icmp ult i8 %196, 10, !dbg !1279
  br i1 %197, label %198, label %476, !dbg !1279

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1280
  br i1 %199, label %200, label %202, !dbg !1285

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1287
  store i8 48, i8* %201, align 1, !dbg !1287, !tbaa !731
  br label %202, !dbg !1287

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1049, metadata !589), !dbg !1109
  %204 = icmp ult i64 %203, %131, !dbg !1291
  br i1 %204, label %205, label %207, !dbg !1295

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1297
  store i8 48, i8* %206, align 1, !dbg !1297, !tbaa !731
  br label %207, !dbg !1297

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1049, metadata !589), !dbg !1109
  br label %476, !dbg !1301

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1302

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1303

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1304

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1306

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1308
  %215 = icmp ult i64 %214, %156, !dbg !1310
  br i1 %215, label %216, label %476, !dbg !1311

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1312
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1314
  %219 = load i8, i8* %218, align 1, !dbg !1314, !tbaa !731
  %220 = icmp eq i8 %219, 63, !dbg !1315
  br i1 %220, label %221, label %476, !dbg !1316

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1318
  %223 = load i8, i8* %222, align 1, !dbg !1318, !tbaa !731
  %224 = sext i8 %223 to i32, !dbg !1318
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
  ], !dbg !1319

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1320

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1059, metadata !589), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1048, metadata !589), !dbg !1184
  %227 = icmp ult i64 %125, %131, !dbg !1322
  br i1 %227, label %228, label %230, !dbg !1326

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1328
  store i8 63, i8* %229, align 1, !dbg !1328, !tbaa !731
  br label %230, !dbg !1328

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1049, metadata !589), !dbg !1109
  %232 = icmp ult i64 %231, %131, !dbg !1332
  br i1 %232, label %233, label %235, !dbg !1336

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1338
  store i8 34, i8* %234, align 1, !dbg !1338, !tbaa !731
  br label %235, !dbg !1338

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1049, metadata !589), !dbg !1109
  %237 = icmp ult i64 %236, %131, !dbg !1342
  br i1 %237, label %238, label %240, !dbg !1346

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1348
  store i8 34, i8* %239, align 1, !dbg !1348, !tbaa !731
  br label %240, !dbg !1348

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1049, metadata !589), !dbg !1109
  %242 = icmp ult i64 %241, %131, !dbg !1352
  br i1 %242, label %243, label %245, !dbg !1356

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1358
  store i8 63, i8* %244, align 1, !dbg !1358, !tbaa !731
  br label %245, !dbg !1358

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1049, metadata !589), !dbg !1109
  br label %476, !dbg !1362

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1063, metadata !589), !dbg !1363
  br label %257, !dbg !1364

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1063, metadata !589), !dbg !1363
  br label %257, !dbg !1365

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1063, metadata !589), !dbg !1363
  br label %255, !dbg !1366

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1063, metadata !589), !dbg !1363
  br label %255, !dbg !1367

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1063, metadata !589), !dbg !1363
  br label %257, !dbg !1368

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1063, metadata !589), !dbg !1363
  br i1 %114, label %253, label %254, !dbg !1369

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1370

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1373

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1063, metadata !589), !dbg !1363
  br i1 %118, label %257, label %644, !dbg !1375

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1063, metadata !589), !dbg !1363
  br i1 %105, label %503, label %476, !dbg !1377

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1378
  br i1 %260, label %261, label %266, !dbg !1380

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1381, !tbaa !731
  %263 = icmp ne i8 %262, 0, !dbg !1383
  %264 = icmp ne i64 %124, 0, !dbg !1384
  %265 = or i1 %264, %263, !dbg !1386
  br i1 %265, label %476, label %272, !dbg !1386

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1387
  %268 = icmp ne i64 %124, 0, !dbg !1384
  %269 = or i1 %268, %267, !dbg !1389
  br i1 %269, label %476, label %272, !dbg !1389

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1384
  br i1 %271, label %272, label %476, !dbg !1391

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1066, metadata !589), !dbg !1198
  br label %273, !dbg !1392

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1066, metadata !589), !dbg !1198
  br i1 %118, label %476, label %644, !dbg !1393

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1057, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1066, metadata !589), !dbg !1198
  br i1 %114, label %276, label %476, !dbg !1395

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1396

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1399
  %279 = icmp ne i64 %126, 0, !dbg !1401
  %280 = or i1 %279, %278, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1050, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1040, metadata !589), !dbg !1101
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1403
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1040, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1050, metadata !589), !dbg !1110
  %283 = icmp ult i64 %125, %282, !dbg !1404
  br i1 %283, label %284, label %286, !dbg !1408

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1410
  store i8 39, i8* %285, align 1, !dbg !1410, !tbaa !731
  br label %286, !dbg !1410

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1049, metadata !589), !dbg !1109
  %288 = icmp ult i64 %287, %282, !dbg !1414
  br i1 %288, label %289, label %291, !dbg !1418

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1420
  store i8 92, i8* %290, align 1, !dbg !1420, !tbaa !731
  br label %291, !dbg !1420

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1049, metadata !589), !dbg !1109
  %293 = icmp ult i64 %292, %282, !dbg !1424
  br i1 %293, label %294, label %296, !dbg !1428

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1430
  store i8 39, i8* %295, align 1, !dbg !1430, !tbaa !731
  br label %296, !dbg !1430

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1056, metadata !589), !dbg !1117
  br label %476, !dbg !1434

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1435

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1067, metadata !589), !dbg !1436
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1437
  %301 = load i16*, i16** %300, align 8, !dbg !1437, !tbaa !597
  %302 = zext i8 %159 to i64, !dbg !1437
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1437
  %304 = load i16, i16* %303, align 2, !dbg !1437, !tbaa !1439
  %305 = lshr i16 %304, 14, !dbg !1441
  %306 = trunc i16 %305 to i8, !dbg !1441
  %307 = and i8 %306, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1070, metadata !589), !dbg !1442
  br label %368, !dbg !1443

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9, !dbg !1444
  store i64 0, i64* %10, align 8, !dbg !1445
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1067, metadata !589), !dbg !1436
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1070, metadata !589), !dbg !1442
  %309 = icmp eq i64 %156, -1, !dbg !1446
  br i1 %309, label %310, label %312, !dbg !1448, !llvm.loop !1449

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1042, metadata !589), !dbg !1103
  br label %312, !dbg !1453, !llvm.loop !1449

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1442

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1070, metadata !589), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1067, metadata !589), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1042, metadata !589), !dbg !1103
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9, !dbg !1454
  %317 = add i64 %315, %124, !dbg !1455
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1456
  %319 = sub i64 %313, %317, !dbg !1457
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1071, metadata !1458), !dbg !1459
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1086, metadata !1458), !dbg !1460
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #9, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1089, metadata !589), !dbg !1462
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1463

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1067, metadata !589), !dbg !1436
  %322 = icmp ugt i64 %313, %317, !dbg !1464
  br i1 %322, label %323, label %351, !dbg !1467

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1468

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1468
  %328 = load i8, i8* %327, align 1, !dbg !1468, !tbaa !731
  %329 = icmp eq i8 %328, 0, !dbg !1470
  br i1 %329, label %348, label %330, !dbg !1471

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1067, metadata !589), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1067, metadata !589), !dbg !1436
  %332 = add i64 %331, %124, !dbg !1474
  %333 = icmp ult i64 %332, %313, !dbg !1464
  br i1 %333, label %324, label %348, !dbg !1467, !llvm.loop !1475

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1477
  %336 = and i1 %116, %335, !dbg !1481
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1090, metadata !589), !dbg !1482
  br i1 %336, label %337, label %355, !dbg !1481

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1483

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1483
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1484
  %342 = load i8, i8* %341, align 1, !dbg !1484, !tbaa !731
  %343 = sext i8 %342 to i32, !dbg !1484
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1485

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1090, metadata !589), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1090, metadata !589), !dbg !1482
  %346 = icmp ult i64 %345, %320, !dbg !1477
  br i1 %346, label %338, label %354, !dbg !1488, !llvm.loop !1490

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1442

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1442

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1442

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1070, metadata !589), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1067, metadata !589), !dbg !1436
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1493
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1494

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1494, !tbaa !676
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1086, metadata !589), !dbg !1460
  %357 = call i32 @iswprint(i32 %356) #9, !dbg !1496
  %358 = icmp eq i32 %357, 0, !dbg !1496
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1070, metadata !589), !dbg !1442
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1497
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1070, metadata !589), !dbg !1442
  %360 = add i64 %320, %315, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1067, metadata !589), !dbg !1436
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1070, metadata !589), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1067, metadata !589), !dbg !1436
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1493
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1071, metadata !1458), !dbg !1459
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1499
  %362 = icmp eq i32 %361, 0, !dbg !1500
  br i1 %362, label %314, label %363, !dbg !1501, !llvm.loop !1449

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1503

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1503
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1070, metadata !589), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1067, metadata !589), !dbg !1436
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1493
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1503
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1070, metadata !589), !dbg !1442
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1067, metadata !589), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1042, metadata !589), !dbg !1103
  %372 = and i8 %371, 1, !dbg !1504
  %373 = icmp ne i8 %372, 0, !dbg !1504
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1066, metadata !589), !dbg !1198
  %374 = icmp ult i64 %370, 2, !dbg !1505
  %375 = or i1 %373, %113, !dbg !1506
  %376 = and i1 %374, %375, !dbg !1508
  br i1 %376, label %476, label %377, !dbg !1508

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1097, metadata !589), !dbg !1510
  br label %379, !dbg !1511

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1065, metadata !589), !dbg !1197
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1064, metadata !589), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1059, metadata !589), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1048, metadata !589), !dbg !1184
  br i1 %375, label %432, label %386, !dbg !1512

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1517

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1065, metadata !589), !dbg !1197
  %388 = and i8 %382, 1, !dbg !1521
  %389 = icmp eq i8 %388, 0, !dbg !1521
  %390 = and i1 %114, %389, !dbg !1524
  br i1 %390, label %391, label %407, !dbg !1524

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1526
  br i1 %392, label %393, label %395, !dbg !1531

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1533
  store i8 39, i8* %394, align 1, !dbg !1533, !tbaa !731
  br label %395, !dbg !1533

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1049, metadata !589), !dbg !1109
  %397 = icmp ult i64 %396, %131, !dbg !1537
  br i1 %397, label %398, label %400, !dbg !1541

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1543
  store i8 36, i8* %399, align 1, !dbg !1543, !tbaa !731
  br label %400, !dbg !1543

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1049, metadata !589), !dbg !1109
  %402 = icmp ult i64 %401, %131, !dbg !1547
  br i1 %402, label %403, label %405, !dbg !1551

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1553
  store i8 39, i8* %404, align 1, !dbg !1553, !tbaa !731
  br label %405, !dbg !1553

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1056, metadata !589), !dbg !1117
  br label %407, !dbg !1557

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1049, metadata !589), !dbg !1109
  %410 = icmp ult i64 %408, %131, !dbg !1559
  br i1 %410, label %411, label %413, !dbg !1563

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1565
  store i8 92, i8* %412, align 1, !dbg !1565, !tbaa !731
  br label %413, !dbg !1565

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1049, metadata !589), !dbg !1109
  %415 = icmp ult i64 %414, %131, !dbg !1569
  br i1 %415, label %416, label %420, !dbg !1573

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1575
  %418 = or i8 %417, 48, !dbg !1575
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1575
  store i8 %418, i8* %419, align 1, !dbg !1575, !tbaa !731
  br label %420, !dbg !1575

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1049, metadata !589), !dbg !1109
  %422 = icmp ult i64 %421, %131, !dbg !1579
  br i1 %422, label %423, label %428, !dbg !1583

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1585
  %425 = and i8 %424, 7, !dbg !1585
  %426 = or i8 %425, 48, !dbg !1585
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1585
  store i8 %426, i8* %427, align 1, !dbg !1585, !tbaa !731
  br label %428, !dbg !1585

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1049, metadata !589), !dbg !1109
  %430 = and i8 %383, 7, !dbg !1589
  %431 = or i8 %430, 48, !dbg !1590
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1059, metadata !589), !dbg !1215
  br label %441, !dbg !1591

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1592
  %434 = icmp eq i8 %433, 0, !dbg !1592
  br i1 %434, label %441, label %435, !dbg !1594

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1595
  br i1 %436, label %437, label %439, !dbg !1600

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1602
  store i8 92, i8* %438, align 1, !dbg !1602, !tbaa !731
  br label %439, !dbg !1602

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1064, metadata !589), !dbg !1196
  br label %441, !dbg !1606

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1065, metadata !589), !dbg !1197
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1064, metadata !589), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1059, metadata !589), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1049, metadata !589), !dbg !1109
  %447 = add i64 %380, 1, !dbg !1607
  %448 = icmp ugt i64 %378, %447, !dbg !1609
  br i1 %448, label %449, label %541, !dbg !1610

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1611
  %451 = icmp ne i8 %450, 0, !dbg !1611
  %452 = and i8 %446, 1, !dbg !1615
  %453 = icmp eq i8 %452, 0, !dbg !1615
  %454 = and i1 %451, %453, !dbg !1611
  br i1 %454, label %455, label %466, !dbg !1611

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1617
  br i1 %456, label %457, label %459, !dbg !1622

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1624
  store i8 39, i8* %458, align 1, !dbg !1624, !tbaa !731
  br label %459, !dbg !1624

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1049, metadata !589), !dbg !1109
  %461 = icmp ult i64 %460, %131, !dbg !1628
  br i1 %461, label %462, label %464, !dbg !1632

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1634
  store i8 39, i8* %463, align 1, !dbg !1634, !tbaa !731
  br label %464, !dbg !1634

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1056, metadata !589), !dbg !1117
  br label %466, !dbg !1638

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1049, metadata !589), !dbg !1109
  %469 = icmp ult i64 %467, %131, !dbg !1640
  br i1 %469, label %470, label %472, !dbg !1644

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1646
  store i8 %444, i8* %471, align 1, !dbg !1646, !tbaa !731
  br label %472, !dbg !1646

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1048, metadata !589), !dbg !1184
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1650
  %475 = load i8, i8* %474, align 1, !dbg !1650, !tbaa !731
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1059, metadata !589), !dbg !1215
  br label %379, !dbg !1651, !llvm.loop !1653

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1040, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1066, metadata !589), !dbg !1198
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1065, metadata !589), !dbg !1197
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1064, metadata !589), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1059, metadata !589), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1057, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1042, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1050, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1048, metadata !589), !dbg !1184
  br i1 %107, label %488, label %487, !dbg !1656

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1658

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1659

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1660
  %491 = zext i8 %490 to i64, !dbg !1660
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1662
  %493 = load i32, i32* %492, align 4, !dbg !1662, !tbaa !676
  %494 = and i8 %483, 31, !dbg !1663
  %495 = zext i8 %494 to i32, !dbg !1664
  %496 = shl i32 1, %495, !dbg !1665
  %497 = and i32 %493, %496, !dbg !1665
  %498 = icmp eq i32 %497, 0, !dbg !1665
  %499 = icmp eq i8 %157, 0, !dbg !1666
  %500 = and i1 %499, %498, !dbg !1667
  br i1 %500, label %542, label %503, !dbg !1667

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1666
  br i1 %502, label %542, label %503, !dbg !1668

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1040, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1066, metadata !589), !dbg !1198
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1059, metadata !589), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1057, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1042, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1050, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1048, metadata !589), !dbg !1184
  br i1 %112, label %513, label %644, !dbg !1670

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1065, metadata !589), !dbg !1197
  %514 = and i8 %508, 1, !dbg !1673
  %515 = icmp eq i8 %514, 0, !dbg !1673
  %516 = and i1 %114, %515, !dbg !1676
  br i1 %516, label %517, label %533, !dbg !1676

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1678
  br i1 %518, label %519, label %521, !dbg !1683

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1685
  store i8 39, i8* %520, align 1, !dbg !1685, !tbaa !731
  br label %521, !dbg !1685

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1049, metadata !589), !dbg !1109
  %523 = icmp ult i64 %522, %512, !dbg !1689
  br i1 %523, label %524, label %526, !dbg !1693

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1695
  store i8 36, i8* %525, align 1, !dbg !1695, !tbaa !731
  br label %526, !dbg !1695

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1049, metadata !589), !dbg !1109
  %528 = icmp ult i64 %527, %512, !dbg !1699
  br i1 %528, label %529, label %531, !dbg !1703

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1705
  store i8 39, i8* %530, align 1, !dbg !1705, !tbaa !731
  br label %531, !dbg !1705

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1056, metadata !589), !dbg !1117
  br label %533, !dbg !1709

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1049, metadata !589), !dbg !1109
  %536 = icmp ult i64 %534, %512, !dbg !1711
  br i1 %536, label %537, label %539, !dbg !1715

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1717
  store i8 92, i8* %538, align 1, !dbg !1717, !tbaa !731
  br label %539, !dbg !1717

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1040, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1066, metadata !589), !dbg !1198
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1065, metadata !589), !dbg !1197
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1059, metadata !589), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1057, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1042, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1050, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1048, metadata !589), !dbg !1184
  br label %569, !dbg !1721

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1101

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1040, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1066, metadata !589), !dbg !1198
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1065, metadata !589), !dbg !1197
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1059, metadata !589), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1057, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1042, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1050, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1048, metadata !589), !dbg !1184
  %553 = and i8 %547, 1, !dbg !1721
  %554 = icmp ne i8 %553, 0, !dbg !1721
  %555 = and i8 %550, 1, !dbg !1725
  %556 = icmp eq i8 %555, 0, !dbg !1725
  %557 = and i1 %554, %556, !dbg !1721
  br i1 %557, label %558, label %569, !dbg !1721

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1727
  br i1 %559, label %560, label %562, !dbg !1732

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1734
  store i8 39, i8* %561, align 1, !dbg !1734, !tbaa !731
  br label %562, !dbg !1734

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1049, metadata !589), !dbg !1109
  %564 = icmp ult i64 %563, %552, !dbg !1738
  br i1 %564, label %565, label %567, !dbg !1742

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1744
  store i8 39, i8* %566, align 1, !dbg !1744, !tbaa !731
  br label %567, !dbg !1744

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1049, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1056, metadata !589), !dbg !1117
  br label %569, !dbg !1748

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1056, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1049, metadata !589), !dbg !1109
  %579 = icmp ult i64 %577, %570, !dbg !1750
  br i1 %579, label %580, label %582, !dbg !1754

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1756
  store i8 %572, i8* %581, align 1, !dbg !1756, !tbaa !731
  br label %582, !dbg !1756

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1049, metadata !589), !dbg !1109
  %584 = and i8 %571, 1, !dbg !1760
  %585 = icmp eq i8 %584, 0, !dbg !1760
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1058, metadata !589), !dbg !1119
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1762
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1058, metadata !589), !dbg !1119
  br label %587, !dbg !1763

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1048, metadata !589), !dbg !1184
  br label %123, !dbg !1766, !llvm.loop !1767

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1770
  %600 = and i1 %114, %599, !dbg !1772
  %601 = xor i1 %600, true, !dbg !1772
  %602 = or i1 %112, %601, !dbg !1772
  br i1 %602, label %603, label %648, !dbg !1772

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1773
  %605 = xor i1 %604, true, !dbg !1773
  %606 = and i8 %129, 1, !dbg !1775
  %607 = icmp eq i8 %606, 0, !dbg !1775
  %608 = or i1 %607, %605, !dbg !1773
  br i1 %608, label %618, label %609, !dbg !1773

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1777
  %611 = icmp eq i8 %610, 0, !dbg !1777
  br i1 %611, label %614, label %612, !dbg !1780

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1781
  br label %659, !dbg !1782

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1783
  %616 = icmp ne i64 %126, 0, !dbg !1785
  %617 = and i1 %616, %615, !dbg !1787
  br i1 %617, label %27, label %618, !dbg !1787

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1788
  %620 = and i1 %619, %112, !dbg !1790
  br i1 %620, label %621, label %638, !dbg !1790

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1051, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1049, metadata !589), !dbg !1109
  %622 = load i8, i8* %100, align 1, !dbg !1791, !tbaa !731
  %623 = icmp eq i8 %622, 0, !dbg !1795
  br i1 %623, label %638, label %624, !dbg !1795

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1797

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1797
  br i1 %629, label %630, label %632, !dbg !1801

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1803
  store i8 %626, i8* %631, align 1, !dbg !1803, !tbaa !731
  br label %632, !dbg !1803

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1049, metadata !589), !dbg !1109
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1807
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1051, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1051, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1049, metadata !589), !dbg !1109
  %635 = load i8, i8* %634, align 1, !dbg !1791, !tbaa !731
  %636 = icmp eq i8 %635, 0, !dbg !1795
  br i1 %636, label %637, label %625, !dbg !1795, !llvm.loop !1809

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1109

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1049, metadata !589), !dbg !1109
  %640 = icmp ult i64 %639, %131, !dbg !1812
  br i1 %640, label %641, label %659, !dbg !1814

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1815
  store i8 0, i8* %642, align 1, !dbg !1816, !tbaa !731
  br label %659, !dbg !1815

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1101

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1101

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1101

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1040, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1042, metadata !589), !dbg !1103
  %653 = icmp ne i32 %650, 2, !dbg !1817
  %654 = icmp eq i8 %104, 0, !dbg !1819
  %655 = or i1 %653, %654, !dbg !1821
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1043, metadata !589), !dbg !1104
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1043, metadata !589), !dbg !1104
  %657 = and i32 %5, -3, !dbg !1822
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1823
  br label %659, !dbg !1824

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1825
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1826 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1830, metadata !589), !dbg !1834
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1831, metadata !589), !dbg !1835
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1836
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1832, metadata !589), !dbg !1837
  %4 = icmp eq i8* %3, %0, !dbg !1838
  br i1 %4, label %5, label %75, !dbg !1840

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1841
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1833, metadata !589), !dbg !1842
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1843, metadata !589), !dbg !1859
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1857, metadata !589), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1858, metadata !589), !dbg !1863
  %7 = load i8, i8* %6, align 1, !tbaa !731
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1864
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1864

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1867, metadata !589), !dbg !1881
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1879, metadata !589), !dbg !1885
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1880, metadata !589), !dbg !1886
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !731
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1887
  %15 = icmp eq i32 %14, 84, !dbg !1887
  br i1 %15, label %16, label %72, !dbg !1887

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1890, metadata !589), !dbg !1903
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1901, metadata !589), !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1902, metadata !589), !dbg !1908
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !731
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1909
  %21 = icmp eq i32 %20, 70, !dbg !1909
  br i1 %21, label %22, label %72, !dbg !1909

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1912, metadata !589), !dbg !1924
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1922, metadata !589), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1923, metadata !589), !dbg !1929
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !731
  %25 = icmp eq i8 %24, 45, !dbg !1930
  br i1 %25, label %26, label %72, !dbg !1933

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1935, metadata !589), !dbg !1946
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1944, metadata !589), !dbg !1950
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1945, metadata !589), !dbg !1951
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !731
  %29 = icmp eq i8 %28, 56, !dbg !1952
  br i1 %29, label %30, label %72, !dbg !1955

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1957, metadata !589), !dbg !1967
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1965, metadata !589), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1966, metadata !589), !dbg !1972
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !731
  %33 = icmp eq i8 %32, 0, !dbg !1973
  br i1 %33, label %34, label %72, !dbg !1976

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1978, !tbaa !731
  %36 = icmp eq i8 %35, 96, !dbg !1979
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.49, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.50, i64 0, i64 0), !dbg !1978
  br label %75, !dbg !1980

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1867, metadata !589), !dbg !1981
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1879, metadata !589), !dbg !1985
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1880, metadata !589), !dbg !1986
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !731
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !1987
  %43 = icmp eq i32 %42, 66, !dbg !1987
  br i1 %43, label %44, label %72, !dbg !1987

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1890, metadata !589), !dbg !1988
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1901, metadata !589), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1902, metadata !589), !dbg !1991
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !731
  %47 = icmp eq i8 %46, 49, !dbg !1992
  br i1 %47, label %48, label %72, !dbg !1994

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1912, metadata !589), !dbg !1996
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1922, metadata !589), !dbg !1998
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1923, metadata !589), !dbg !1999
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !731
  %51 = icmp eq i8 %50, 56, !dbg !2000
  br i1 %51, label %52, label %72, !dbg !2001

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1935, metadata !589), !dbg !2002
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1944, metadata !589), !dbg !2004
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1945, metadata !589), !dbg !2005
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !731
  %55 = icmp eq i8 %54, 48, !dbg !2006
  br i1 %55, label %56, label %72, !dbg !2007

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1957, metadata !589), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1965, metadata !589), !dbg !2010
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1966, metadata !589), !dbg !2011
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !731
  %59 = icmp eq i8 %58, 51, !dbg !2012
  br i1 %59, label %60, label %72, !dbg !2013

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2014, metadata !589), !dbg !2023
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2021, metadata !589), !dbg !2027
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2022, metadata !589), !dbg !2028
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !731
  %63 = icmp eq i8 %62, 48, !dbg !2029
  br i1 %63, label %64, label %72, !dbg !2032

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2034, metadata !589), !dbg !2042
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2040, metadata !589), !dbg !2046
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2041, metadata !589), !dbg !2047
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !731
  %67 = icmp eq i8 %66, 0, !dbg !2048
  br i1 %67, label %68, label %72, !dbg !2051

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2052, !tbaa !731
  %70 = icmp eq i8 %69, 96, !dbg !2053
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.51, i64 0, i64 0), !dbg !2052
  br label %75, !dbg !2054

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2055
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), !dbg !2056
  br label %75, !dbg !2057

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2058
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #11

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #11

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2059 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2063, metadata !589), !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2064, metadata !589), !dbg !2067
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2065, metadata !589), !dbg !2068
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2069, metadata !589) #9, !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2074, metadata !589) #9, !dbg !2084
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2075, metadata !589) #9, !dbg !2085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2076, metadata !589) #9, !dbg !2086
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2087
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2087
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2077, metadata !589) #9, !dbg !2088
  %6 = tail call i32* @__errno_location() #1, !dbg !2089
  %7 = load i32, i32* %6, align 4, !dbg !2089, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2078, metadata !589) #9, !dbg !2090
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2091
  %9 = load i32, i32* %8, align 4, !dbg !2091, !tbaa !971
  %10 = or i32 %9, 1, !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2079, metadata !589) #9, !dbg !2093
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2094
  %12 = load i32, i32* %11, align 8, !dbg !2094, !tbaa !909
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2095
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2096
  %15 = load i8*, i8** %14, align 8, !dbg !2096, !tbaa !998
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2097
  %17 = load i8*, i8** %16, align 8, !dbg !2097, !tbaa !1001
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !2098
  %19 = add i64 %18, 1, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2080, metadata !589) #9, !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2101, metadata !589) #9, !dbg !2106
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2108
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2081, metadata !589) #9, !dbg !2109
  %21 = load i32, i32* %11, align 8, !dbg !2110, !tbaa !909
  %22 = load i8*, i8** %14, align 8, !dbg !2111, !tbaa !998
  %23 = load i8*, i8** %16, align 8, !dbg !2112, !tbaa !1001
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !2113
  store i32 %7, i32* %6, align 4, !dbg !2114, !tbaa !676
  ret i8* %20, !dbg !2115
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2070 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2069, metadata !589), !dbg !2116
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2074, metadata !589), !dbg !2117
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2075, metadata !589), !dbg !2118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2076, metadata !589), !dbg !2119
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2120
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2120
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2077, metadata !589), !dbg !2121
  %7 = tail call i32* @__errno_location() #1, !dbg !2122
  %8 = load i32, i32* %7, align 4, !dbg !2122, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2078, metadata !589), !dbg !2123
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2124
  %10 = load i32, i32* %9, align 4, !dbg !2124, !tbaa !971
  %11 = icmp ne i64* %2, null, !dbg !2125
  %12 = xor i1 %11, true, !dbg !2125
  %13 = zext i1 %12 to i32, !dbg !2125
  %14 = or i32 %10, %13, !dbg !2126
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2079, metadata !589), !dbg !2127
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2128
  %16 = load i32, i32* %15, align 8, !dbg !2128, !tbaa !909
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2129
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2130
  %19 = load i8*, i8** %18, align 8, !dbg !2130, !tbaa !998
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2131
  %21 = load i8*, i8** %20, align 8, !dbg !2131, !tbaa !1001
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2132
  %23 = add i64 %22, 1, !dbg !2133
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2080, metadata !589), !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2101, metadata !589) #9, !dbg !2135
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2137
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2081, metadata !589), !dbg !2138
  %25 = load i32, i32* %15, align 8, !dbg !2139, !tbaa !909
  %26 = load i8*, i8** %18, align 8, !dbg !2140, !tbaa !998
  %27 = load i8*, i8** %20, align 8, !dbg !2141, !tbaa !1001
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2142
  store i32 %8, i32* %7, align 4, !dbg !2143, !tbaa !676
  br i1 %11, label %29, label %30, !dbg !2144

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2145, !tbaa !2147
  br label %30, !dbg !2149

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2150
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2151 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2155, !tbaa !597
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2153, metadata !589), !dbg !2156
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2154, metadata !589), !dbg !2157
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2154, metadata !589), !dbg !2157
  %2 = load i32, i32* @nslots, align 4, !dbg !2158, !tbaa !676
  %3 = icmp sgt i32 %2, 1, !dbg !2162
  br i1 %3, label %4, label %14, !dbg !2163

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2165

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2165
  %8 = load i8*, i8** %7, align 8, !dbg !2165, !tbaa !2166
  tail call void @free(i8* %8) #9, !dbg !2168
  %9 = add nuw i64 %6, 1, !dbg !2169
  %10 = load i32, i32* @nslots, align 4, !dbg !2158, !tbaa !676
  %11 = sext i32 %10 to i64, !dbg !2162
  %12 = icmp slt i64 %9, %11, !dbg !2162
  br i1 %12, label %5, label %13, !dbg !2163, !llvm.loop !2171

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2174

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2174
  %16 = load i8*, i8** %15, align 8, !dbg !2174, !tbaa !2166
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2176
  br i1 %17, label %19, label %18, !dbg !2177

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #9, !dbg !2178
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2180, !tbaa !2181
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2182, !tbaa !2166
  br label %19, !dbg !2183

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2184
  br i1 %20, label %23, label %21, !dbg !2186

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2187
  tail call void @free(i8* %22) #9, !dbg !2189
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2190, !tbaa !597
  br label %23, !dbg !2191

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2192, !tbaa !676
  ret void, !dbg !2193
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2194 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2198, metadata !589), !dbg !2200
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2199, metadata !589), !dbg !2201
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2202
  ret i8* %3, !dbg !2203
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2204 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2208, metadata !589), !dbg !2222
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2209, metadata !589), !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2210, metadata !589), !dbg !2224
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2211, metadata !589), !dbg !2225
  %5 = tail call i32* @__errno_location() #1, !dbg !2226
  %6 = load i32, i32* %5, align 4, !dbg !2226, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2212, metadata !589), !dbg !2227
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2228, !tbaa !597
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2213, metadata !589), !dbg !2229
  %8 = icmp slt i32 %0, 0, !dbg !2230
  br i1 %8, label %9, label %10, !dbg !2232

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2233
  unreachable, !dbg !2233

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2234, !tbaa !676
  %12 = icmp sgt i32 %11, %0, !dbg !2235
  br i1 %12, label %34, label %13, !dbg !2236

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2237
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2238
  br i1 %15, label %16, label %17, !dbg !2240

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2241
  unreachable, !dbg !2241

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2242
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2242
  %20 = add nsw i32 %0, 1, !dbg !2244
  %21 = sext i32 %20 to i64, !dbg !2245
  %22 = shl nsw i64 %21, 4, !dbg !2246
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2247
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2247
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2213, metadata !589), !dbg !2229
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2248, !tbaa !597
  br i1 %14, label %25, label %26, !dbg !2249

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2250, !tbaa.struct !2252
  br label %26, !dbg !2253

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2254, !tbaa !676
  %28 = sext i32 %27 to i64, !dbg !2255
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2255
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2256
  %31 = sub nsw i32 %20, %27, !dbg !2257
  %32 = sext i32 %31 to i64, !dbg !2258
  %33 = shl nsw i64 %32, 4, !dbg !2259
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2256
  store i32 %20, i32* @nslots, align 4, !dbg !2260, !tbaa !676
  br label %34, !dbg !2261

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2213, metadata !589), !dbg !2229
  %36 = sext i32 %0 to i64, !dbg !2262
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2263
  %38 = load i64, i64* %37, align 8, !dbg !2263, !tbaa !2181
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2217, metadata !589), !dbg !2264
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2265
  %40 = load i8*, i8** %39, align 8, !dbg !2265, !tbaa !2166
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2219, metadata !589), !dbg !2266
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2267
  %42 = load i32, i32* %41, align 4, !dbg !2267, !tbaa !971
  %43 = or i32 %42, 1, !dbg !2268
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2220, metadata !589), !dbg !2269
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2270
  %45 = load i32, i32* %44, align 8, !dbg !2270, !tbaa !909
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2271
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2272
  %48 = load i8*, i8** %47, align 8, !dbg !2272, !tbaa !998
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2273
  %50 = load i8*, i8** %49, align 8, !dbg !2273, !tbaa !1001
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2274
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2221, metadata !589), !dbg !2275
  %52 = icmp ugt i64 %38, %51, !dbg !2276
  br i1 %52, label %63, label %53, !dbg !2278

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2279
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2217, metadata !589), !dbg !2264
  store i64 %54, i64* %37, align 8, !dbg !2281, !tbaa !2181
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2282
  br i1 %55, label %57, label %56, !dbg !2284

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2285
  br label %57, !dbg !2285

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2101, metadata !589) #9, !dbg !2286
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2288
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2219, metadata !589), !dbg !2266
  store i8* %58, i8** %39, align 8, !dbg !2289, !tbaa !2166
  %59 = load i32, i32* %44, align 8, !dbg !2290, !tbaa !909
  %60 = load i8*, i8** %47, align 8, !dbg !2291, !tbaa !998
  %61 = load i8*, i8** %49, align 8, !dbg !2292, !tbaa !1001
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2293
  br label %63, !dbg !2294

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2219, metadata !589), !dbg !2266
  store i32 %6, i32* %5, align 4, !dbg !2295, !tbaa !676
  ret i8* %64, !dbg !2296
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #11

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2297 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2301, metadata !589), !dbg !2304
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2302, metadata !589), !dbg !2305
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2303, metadata !589), !dbg !2306
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2307
  ret i8* %4, !dbg !2308
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2309 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2313, metadata !589), !dbg !2314
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2198, metadata !589) #9, !dbg !2315
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2199, metadata !589) #9, !dbg !2317
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2318
  ret i8* %2, !dbg !2319
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2320 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2324, metadata !589), !dbg !2326
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2325, metadata !589), !dbg !2327
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2301, metadata !589) #9, !dbg !2328
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2302, metadata !589) #9, !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2303, metadata !589) #9, !dbg !2331
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2332
  ret i8* %3, !dbg !2333
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2334 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2342, metadata !2348), !dbg !2349
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2338, metadata !589), !dbg !2351
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2339, metadata !589), !dbg !2352
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2340, metadata !589), !dbg !2353
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2354
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2354
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2341, metadata !1458), !dbg !2355
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2347, metadata !589) #9, !dbg !2356
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2357
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2357
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2342, metadata !589) #9, !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2342, metadata !2358) #9, !dbg !2349
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2349
  %8 = icmp eq i32 %1, 10, !dbg !2359
  br i1 %8, label %9, label %10, !dbg !2361

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2362, !noalias !2363
  unreachable, !dbg !2362

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2342, metadata !2358) #9, !dbg !2349
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2366
  store i32 %1, i32* %11, align 8, !dbg !2366, !alias.scope !2363
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2366
  %13 = bitcast i32* %12 to i8*, !dbg !2366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2366
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2341, metadata !1458), !dbg !2355
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2368
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2369
  ret i8* %14, !dbg !2370
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2371 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2342, metadata !2348), !dbg !2380
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2375, metadata !589), !dbg !2382
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2376, metadata !589), !dbg !2383
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2377, metadata !589), !dbg !2384
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2378, metadata !589), !dbg !2385
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2386
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2386
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2379, metadata !1458), !dbg !2387
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2347, metadata !589) #9, !dbg !2388
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2389
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2389
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2342, metadata !589) #9, !dbg !2380
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2342, metadata !2358) #9, !dbg !2380
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2380
  %9 = icmp eq i32 %1, 10, !dbg !2390
  br i1 %9, label %10, label %11, !dbg !2391

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2392, !noalias !2393
  unreachable, !dbg !2392

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2342, metadata !2358) #9, !dbg !2380
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2396
  store i32 %1, i32* %12, align 8, !dbg !2396, !alias.scope !2393
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2396
  %14 = bitcast i32* %13 to i8*, !dbg !2396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2396
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2397
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2379, metadata !1458), !dbg !2387
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2398
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2399
  ret i8* %15, !dbg !2400
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2401 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2342, metadata !2348), !dbg !2407
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2405, metadata !589), !dbg !2410
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2406, metadata !589), !dbg !2411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2338, metadata !589) #9, !dbg !2412
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2339, metadata !589) #9, !dbg !2413
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2340, metadata !589) #9, !dbg !2414
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2415
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2415
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2341, metadata !1458) #9, !dbg !2416
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2347, metadata !589) #9, !dbg !2417
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2418
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2418
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2342, metadata !589) #9, !dbg !2407
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2342, metadata !2358) #9, !dbg !2407
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2407
  %7 = icmp eq i32 %0, 10, !dbg !2419
  br i1 %7, label %8, label %9, !dbg !2420

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2421, !noalias !2422
  unreachable, !dbg !2421

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2342, metadata !2358) #9, !dbg !2407
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2425
  store i32 %0, i32* %10, align 8, !dbg !2425, !alias.scope !2422
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2425
  %12 = bitcast i32* %11 to i8*, !dbg !2425
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2425
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2426
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2341, metadata !1458) #9, !dbg !2416
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2427
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2428
  ret i8* %13, !dbg !2429
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2430 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2342, metadata !2348), !dbg !2437
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2434, metadata !589), !dbg !2440
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2435, metadata !589), !dbg !2441
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2436, metadata !589), !dbg !2442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2375, metadata !589) #9, !dbg !2443
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2376, metadata !589) #9, !dbg !2444
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2377, metadata !589) #9, !dbg !2445
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2378, metadata !589) #9, !dbg !2446
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2447
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2447
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2379, metadata !1458) #9, !dbg !2448
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2347, metadata !589) #9, !dbg !2449
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2450
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2450
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2342, metadata !589) #9, !dbg !2437
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2342, metadata !2358) #9, !dbg !2437
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2437
  %8 = icmp eq i32 %0, 10, !dbg !2451
  br i1 %8, label %9, label %10, !dbg !2452

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2453, !noalias !2454
  unreachable, !dbg !2453

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2342, metadata !2358) #9, !dbg !2437
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2457
  store i32 %0, i32* %11, align 8, !dbg !2457, !alias.scope !2454
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2457
  %13 = bitcast i32* %12 to i8*, !dbg !2457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2457
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2458
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2379, metadata !1458) #9, !dbg !2448
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2459
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2460
  ret i8* %14, !dbg !2461
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2462 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2466, metadata !589), !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2467, metadata !589), !dbg !2471
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2468, metadata !589), !dbg !2472
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2473
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2473
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2474, !tbaa.struct !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2469, metadata !1458), !dbg !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !929, metadata !589), !dbg !2477
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !930, metadata !589), !dbg !2479
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !931, metadata !589), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !932, metadata !589), !dbg !2481
  %6 = lshr i8 %2, 5, !dbg !2482
  %7 = zext i8 %6 to i64, !dbg !2482
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2483
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !933, metadata !589), !dbg !2484
  %9 = and i8 %2, 31, !dbg !2485
  %10 = zext i8 %9 to i32, !dbg !2486
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !935, metadata !589), !dbg !2487
  %11 = load i32, i32* %8, align 4, !dbg !2488, !tbaa !676
  %12 = lshr i32 %11, %10, !dbg !2489
  %13 = and i32 %12, 1, !dbg !2490
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !936, metadata !589), !dbg !2491
  %14 = xor i32 %13, 1, !dbg !2492
  %15 = shl i32 %14, %10, !dbg !2493
  %16 = xor i32 %15, %11, !dbg !2494
  store i32 %16, i32* %8, align 4, !dbg !2494, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2469, metadata !1458), !dbg !2476
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2495
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2496
  ret i8* %17, !dbg !2497
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2498 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2502, metadata !589), !dbg !2504
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2503, metadata !589), !dbg !2505
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2466, metadata !589) #9, !dbg !2506
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2467, metadata !589) #9, !dbg !2508
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2468, metadata !589) #9, !dbg !2509
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2510
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2511, !tbaa.struct !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2469, metadata !1458) #9, !dbg !2512
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !929, metadata !589) #9, !dbg !2513
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !930, metadata !589) #9, !dbg !2515
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !931, metadata !589) #9, !dbg !2516
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !932, metadata !589) #9, !dbg !2517
  %5 = lshr i8 %1, 5, !dbg !2518
  %6 = zext i8 %5 to i64, !dbg !2518
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2519
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !933, metadata !589) #9, !dbg !2520
  %8 = and i8 %1, 31, !dbg !2521
  %9 = zext i8 %8 to i32, !dbg !2522
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !935, metadata !589) #9, !dbg !2523
  %10 = load i32, i32* %7, align 4, !dbg !2524, !tbaa !676
  %11 = lshr i32 %10, %9, !dbg !2525
  %12 = and i32 %11, 1, !dbg !2526
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !936, metadata !589) #9, !dbg !2527
  %13 = xor i32 %12, 1, !dbg !2528
  %14 = shl i32 %13, %9, !dbg !2529
  %15 = xor i32 %14, %10, !dbg !2530
  store i32 %15, i32* %7, align 4, !dbg !2530, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2469, metadata !1458) #9, !dbg !2512
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2531
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2532
  ret i8* %16, !dbg !2533
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2534 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2536, metadata !589), !dbg !2537
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2502, metadata !589) #9, !dbg !2538
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2503, metadata !589) #9, !dbg !2540
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2466, metadata !589) #9, !dbg !2541
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2467, metadata !589) #9, !dbg !2543
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2468, metadata !589) #9, !dbg !2544
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2545
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9, !dbg !2545
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2546, !tbaa.struct !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2469, metadata !1458) #9, !dbg !2547
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !929, metadata !589) #9, !dbg !2548
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !930, metadata !589) #9, !dbg !2550
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !931, metadata !589) #9, !dbg !2551
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !932, metadata !589) #9, !dbg !2552
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2553
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !933, metadata !589) #9, !dbg !2554
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !935, metadata !589) #9, !dbg !2555
  %5 = load i32, i32* %4, align 4, !dbg !2556, !tbaa !676
  %6 = or i32 %5, 67108864, !dbg !2557
  store i32 %6, i32* %4, align 4, !dbg !2557, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2469, metadata !1458) #9, !dbg !2547
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2558
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9, !dbg !2559
  ret i8* %7, !dbg !2560
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2561 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2563, metadata !589), !dbg !2565
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2564, metadata !589), !dbg !2566
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2466, metadata !589) #9, !dbg !2567
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2467, metadata !589) #9, !dbg !2569
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2468, metadata !589) #9, !dbg !2570
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2571
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2571
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2572, !tbaa.struct !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2469, metadata !1458) #9, !dbg !2573
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !929, metadata !589) #9, !dbg !2574
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !930, metadata !589) #9, !dbg !2576
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !931, metadata !589) #9, !dbg !2577
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !932, metadata !589) #9, !dbg !2578
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2579
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !933, metadata !589) #9, !dbg !2580
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !935, metadata !589) #9, !dbg !2581
  %6 = load i32, i32* %5, align 4, !dbg !2582, !tbaa !676
  %7 = or i32 %6, 67108864, !dbg !2583
  store i32 %7, i32* %5, align 4, !dbg !2583, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2469, metadata !1458) #9, !dbg !2573
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2584
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2585
  ret i8* %8, !dbg !2586
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2587 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2342, metadata !2348), !dbg !2593
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2589, metadata !589), !dbg !2595
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2590, metadata !589), !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2591, metadata !589), !dbg !2597
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2598
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2347, metadata !589) #9, !dbg !2599
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2600
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2600
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2342, metadata !589) #9, !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2342, metadata !2358) #9, !dbg !2593
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2593
  %9 = icmp eq i32 %1, 10, !dbg !2601
  br i1 %9, label %10, label %11, !dbg !2602

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2603, !noalias !2604
  unreachable, !dbg !2603

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2342, metadata !2358) #9, !dbg !2593
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2607
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2607
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2608
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2609
  store i32 %1, i32* %13, align 8, !dbg !2609
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2609
  %15 = bitcast i32* %14 to i8*, !dbg !2609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2609
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2592, metadata !1458), !dbg !2610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !929, metadata !589), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !930, metadata !589), !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !931, metadata !589), !dbg !2614
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !932, metadata !589), !dbg !2615
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2616
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !933, metadata !589), !dbg !2617
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !935, metadata !589), !dbg !2618
  %17 = load i32, i32* %16, align 4, !dbg !2619, !tbaa !676
  %18 = or i32 %17, 67108864, !dbg !2620
  store i32 %18, i32* %16, align 4, !dbg !2620, !tbaa !676
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2592, metadata !1458), !dbg !2610
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2621
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2622
  ret i8* %19, !dbg !2623
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2624 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2628, metadata !589), !dbg !2632
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2629, metadata !589), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2630, metadata !589), !dbg !2634
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2631, metadata !589), !dbg !2635
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2636, metadata !589) #9, !dbg !2646
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2641, metadata !589) #9, !dbg !2648
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2642, metadata !589) #9, !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2643, metadata !589) #9, !dbg !2650
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2644, metadata !589) #9, !dbg !2651
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2652
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2652
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2653, !tbaa.struct !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2645, metadata !1458) #9, !dbg !2654
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !979, metadata !589) #9, !dbg !2655
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !980, metadata !589) #9, !dbg !2657
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !981, metadata !589) #9, !dbg !2658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !979, metadata !589) #9, !dbg !2655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !979, metadata !589) #9, !dbg !2655
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2659
  store i32 10, i32* %7, align 8, !dbg !2660, !tbaa !909
  %8 = icmp ne i8* %1, null, !dbg !2661
  %9 = icmp ne i8* %2, null, !dbg !2662
  %10 = and i1 %8, %9, !dbg !2663
  br i1 %10, label %12, label %11, !dbg !2663

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2664
  unreachable, !dbg !2664

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2665
  store i8* %1, i8** %13, align 8, !dbg !2666, !tbaa !998
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2667
  store i8* %2, i8** %14, align 8, !dbg !2668, !tbaa !1001
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2645, metadata !1458) #9, !dbg !2654
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2669
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2670
  ret i8* %15, !dbg !2671
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2637 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2636, metadata !589), !dbg !2672
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2641, metadata !589), !dbg !2673
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2642, metadata !589), !dbg !2674
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2643, metadata !589), !dbg !2675
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2644, metadata !589), !dbg !2676
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2677
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2678, !tbaa.struct !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2645, metadata !1458), !dbg !2679
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !979, metadata !589) #9, !dbg !2680
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !980, metadata !589) #9, !dbg !2682
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !981, metadata !589) #9, !dbg !2683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !979, metadata !589) #9, !dbg !2680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !979, metadata !589) #9, !dbg !2680
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2684
  store i32 10, i32* %8, align 8, !dbg !2685, !tbaa !909
  %9 = icmp ne i8* %1, null, !dbg !2686
  %10 = icmp ne i8* %2, null, !dbg !2687
  %11 = and i1 %9, %10, !dbg !2688
  br i1 %11, label %13, label %12, !dbg !2688

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2689
  unreachable, !dbg !2689

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2690
  store i8* %1, i8** %14, align 8, !dbg !2691, !tbaa !998
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2692
  store i8* %2, i8** %15, align 8, !dbg !2693, !tbaa !1001
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2645, metadata !1458), !dbg !2679
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2694
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2695
  ret i8* %16, !dbg !2696
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2697 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2701, metadata !589), !dbg !2704
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2702, metadata !589), !dbg !2705
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2703, metadata !589), !dbg !2706
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2628, metadata !589) #9, !dbg !2707
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2629, metadata !589) #9, !dbg !2709
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2630, metadata !589) #9, !dbg !2710
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2631, metadata !589) #9, !dbg !2711
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2636, metadata !589) #9, !dbg !2712
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2641, metadata !589) #9, !dbg !2714
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2642, metadata !589) #9, !dbg !2715
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2643, metadata !589) #9, !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2644, metadata !589) #9, !dbg !2717
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2718
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2719, !tbaa.struct !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2645, metadata !1458) #9, !dbg !2720
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !979, metadata !589) #9, !dbg !2721
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !980, metadata !589) #9, !dbg !2723
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !981, metadata !589) #9, !dbg !2724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !979, metadata !589) #9, !dbg !2721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !979, metadata !589) #9, !dbg !2721
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2725
  store i32 10, i32* %6, align 8, !dbg !2726, !tbaa !909
  %7 = icmp ne i8* %0, null, !dbg !2727
  %8 = icmp ne i8* %1, null, !dbg !2728
  %9 = and i1 %7, %8, !dbg !2729
  br i1 %9, label %11, label %10, !dbg !2729

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2730
  unreachable, !dbg !2730

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2731
  store i8* %0, i8** %12, align 8, !dbg !2732, !tbaa !998
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2733
  store i8* %1, i8** %13, align 8, !dbg !2734, !tbaa !1001
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2645, metadata !1458) #9, !dbg !2720
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2735
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2736
  ret i8* %14, !dbg !2737
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2738 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2742, metadata !589), !dbg !2746
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2743, metadata !589), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2744, metadata !589), !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2745, metadata !589), !dbg !2749
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2636, metadata !589) #9, !dbg !2750
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2641, metadata !589) #9, !dbg !2752
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2642, metadata !589) #9, !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2643, metadata !589) #9, !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2644, metadata !589) #9, !dbg !2755
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2756
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2756
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2757, !tbaa.struct !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2645, metadata !1458) #9, !dbg !2758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !979, metadata !589) #9, !dbg !2759
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !980, metadata !589) #9, !dbg !2761
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !981, metadata !589) #9, !dbg !2762
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !979, metadata !589) #9, !dbg !2759
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !979, metadata !589) #9, !dbg !2759
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2763
  store i32 10, i32* %7, align 8, !dbg !2764, !tbaa !909
  %8 = icmp ne i8* %0, null, !dbg !2765
  %9 = icmp ne i8* %1, null, !dbg !2766
  %10 = and i1 %8, %9, !dbg !2767
  br i1 %10, label %12, label %11, !dbg !2767

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2768
  unreachable, !dbg !2768

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2769
  store i8* %0, i8** %13, align 8, !dbg !2770, !tbaa !998
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2771
  store i8* %1, i8** %14, align 8, !dbg !2772, !tbaa !1001
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2645, metadata !1458) #9, !dbg !2758
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2773
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2774
  ret i8* %15, !dbg !2775
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2776 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2780, metadata !589), !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2781, metadata !589), !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2782, metadata !589), !dbg !2785
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2786
  ret i8* %4, !dbg !2787
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2788 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2792, metadata !589), !dbg !2794
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2793, metadata !589), !dbg !2795
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2780, metadata !589) #9, !dbg !2796
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2781, metadata !589) #9, !dbg !2798
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2782, metadata !589) #9, !dbg !2799
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2800
  ret i8* %3, !dbg !2801
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2802 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2806, metadata !589), !dbg !2808
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2807, metadata !589), !dbg !2809
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2780, metadata !589) #9, !dbg !2810
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2781, metadata !589) #9, !dbg !2812
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2782, metadata !589) #9, !dbg !2813
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2814
  ret i8* %3, !dbg !2815
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2816 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2820, metadata !589), !dbg !2821
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2806, metadata !589) #9, !dbg !2822
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2807, metadata !589) #9, !dbg !2824
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2780, metadata !589) #9, !dbg !2825
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2781, metadata !589) #9, !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2782, metadata !589) #9, !dbg !2828
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2829
  ret i8* %2, !dbg !2830
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2831 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2891, metadata !589), !dbg !2897
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2892, metadata !589), !dbg !2898
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2893, metadata !589), !dbg !2899
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2894, metadata !589), !dbg !2900
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2895, metadata !589), !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2896, metadata !589), !dbg !2902
  %7 = icmp eq i8* %1, null, !dbg !2903
  br i1 %7, label %10, label %8, !dbg !2905

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2906
  br label %12, !dbg !2906

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2907
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i32 5) #9, !dbg !2908
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2909
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.57, i64 0, i64 0), i32 5) #9, !dbg !2911
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2912
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
  ], !dbg !2913

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2914
  unreachable, !dbg !2914

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.58, i64 0, i64 0), i32 5) #9, !dbg !2916
  %20 = load i8*, i8** %4, align 8, !dbg !2916, !tbaa !597
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2917
  br label %146, !dbg !2919

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.59, i64 0, i64 0), i32 5) #9, !dbg !2920
  %24 = load i8*, i8** %4, align 8, !dbg !2920, !tbaa !597
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2920
  %26 = load i8*, i8** %25, align 8, !dbg !2920, !tbaa !597
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2921
  br label %146, !dbg !2922

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.60, i64 0, i64 0), i32 5) #9, !dbg !2923
  %30 = load i8*, i8** %4, align 8, !dbg !2923, !tbaa !597
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2923
  %32 = load i8*, i8** %31, align 8, !dbg !2923, !tbaa !597
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2923
  %34 = load i8*, i8** %33, align 8, !dbg !2923, !tbaa !597
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2924
  br label %146, !dbg !2925

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.61, i64 0, i64 0), i32 5) #9, !dbg !2926
  %38 = load i8*, i8** %4, align 8, !dbg !2926, !tbaa !597
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2926
  %40 = load i8*, i8** %39, align 8, !dbg !2926, !tbaa !597
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2926
  %42 = load i8*, i8** %41, align 8, !dbg !2926, !tbaa !597
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2926
  %44 = load i8*, i8** %43, align 8, !dbg !2926, !tbaa !597
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2927
  br label %146, !dbg !2928

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.62, i64 0, i64 0), i32 5) #9, !dbg !2929
  %48 = load i8*, i8** %4, align 8, !dbg !2929, !tbaa !597
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2929
  %50 = load i8*, i8** %49, align 8, !dbg !2929, !tbaa !597
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2929
  %52 = load i8*, i8** %51, align 8, !dbg !2929, !tbaa !597
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2929
  %54 = load i8*, i8** %53, align 8, !dbg !2929, !tbaa !597
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2929
  %56 = load i8*, i8** %55, align 8, !dbg !2929, !tbaa !597
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2930
  br label %146, !dbg !2931

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.63, i64 0, i64 0), i32 5) #9, !dbg !2932
  %60 = load i8*, i8** %4, align 8, !dbg !2932, !tbaa !597
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2932
  %62 = load i8*, i8** %61, align 8, !dbg !2932, !tbaa !597
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2932
  %64 = load i8*, i8** %63, align 8, !dbg !2932, !tbaa !597
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2932
  %66 = load i8*, i8** %65, align 8, !dbg !2932, !tbaa !597
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2932
  %68 = load i8*, i8** %67, align 8, !dbg !2932, !tbaa !597
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2932
  %70 = load i8*, i8** %69, align 8, !dbg !2932, !tbaa !597
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2933
  br label %146, !dbg !2934

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.64, i64 0, i64 0), i32 5) #9, !dbg !2935
  %74 = load i8*, i8** %4, align 8, !dbg !2935, !tbaa !597
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2935
  %76 = load i8*, i8** %75, align 8, !dbg !2935, !tbaa !597
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2935
  %78 = load i8*, i8** %77, align 8, !dbg !2935, !tbaa !597
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2935
  %80 = load i8*, i8** %79, align 8, !dbg !2935, !tbaa !597
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2935
  %82 = load i8*, i8** %81, align 8, !dbg !2935, !tbaa !597
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2935
  %84 = load i8*, i8** %83, align 8, !dbg !2935, !tbaa !597
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2935
  %86 = load i8*, i8** %85, align 8, !dbg !2935, !tbaa !597
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2936
  br label %146, !dbg !2937

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.65, i64 0, i64 0), i32 5) #9, !dbg !2938
  %90 = load i8*, i8** %4, align 8, !dbg !2938, !tbaa !597
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2938
  %92 = load i8*, i8** %91, align 8, !dbg !2938, !tbaa !597
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2938
  %94 = load i8*, i8** %93, align 8, !dbg !2938, !tbaa !597
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2938
  %96 = load i8*, i8** %95, align 8, !dbg !2938, !tbaa !597
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2938
  %98 = load i8*, i8** %97, align 8, !dbg !2938, !tbaa !597
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2938
  %100 = load i8*, i8** %99, align 8, !dbg !2938, !tbaa !597
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2938
  %102 = load i8*, i8** %101, align 8, !dbg !2938, !tbaa !597
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2938
  %104 = load i8*, i8** %103, align 8, !dbg !2938, !tbaa !597
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2939
  br label %146, !dbg !2940

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.66, i64 0, i64 0), i32 5) #9, !dbg !2941
  %108 = load i8*, i8** %4, align 8, !dbg !2941, !tbaa !597
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2941
  %110 = load i8*, i8** %109, align 8, !dbg !2941, !tbaa !597
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2941
  %112 = load i8*, i8** %111, align 8, !dbg !2941, !tbaa !597
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2941
  %114 = load i8*, i8** %113, align 8, !dbg !2941, !tbaa !597
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2941
  %116 = load i8*, i8** %115, align 8, !dbg !2941, !tbaa !597
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2941
  %118 = load i8*, i8** %117, align 8, !dbg !2941, !tbaa !597
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2941
  %120 = load i8*, i8** %119, align 8, !dbg !2941, !tbaa !597
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2941
  %122 = load i8*, i8** %121, align 8, !dbg !2941, !tbaa !597
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2941
  %124 = load i8*, i8** %123, align 8, !dbg !2941, !tbaa !597
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2942
  br label %146, !dbg !2943

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.67, i64 0, i64 0), i32 5) #9, !dbg !2944
  %128 = load i8*, i8** %4, align 8, !dbg !2944, !tbaa !597
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2944
  %130 = load i8*, i8** %129, align 8, !dbg !2944, !tbaa !597
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2944
  %132 = load i8*, i8** %131, align 8, !dbg !2944, !tbaa !597
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2944
  %134 = load i8*, i8** %133, align 8, !dbg !2944, !tbaa !597
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2944
  %136 = load i8*, i8** %135, align 8, !dbg !2944, !tbaa !597
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2944
  %138 = load i8*, i8** %137, align 8, !dbg !2944, !tbaa !597
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2944
  %140 = load i8*, i8** %139, align 8, !dbg !2944, !tbaa !597
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2944
  %142 = load i8*, i8** %141, align 8, !dbg !2944, !tbaa !597
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2944
  %144 = load i8*, i8** %143, align 8, !dbg !2944, !tbaa !597
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2945
  br label %146, !dbg !2946

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2947
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2948 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2952, metadata !589), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2953, metadata !589), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2954, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2955, metadata !589), !dbg !2961
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2956, metadata !589), !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2957, metadata !589), !dbg !2963
  br label %6, !dbg !2964

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2957, metadata !589), !dbg !2963
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2966
  %9 = load i8*, i8** %8, align 8, !dbg !2966, !tbaa !597
  %10 = icmp eq i8* %9, null, !dbg !2969
  %11 = add i64 %7, 1, !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2957, metadata !589), !dbg !2963
  br i1 %10, label %12, label %6, !dbg !2969, !llvm.loop !2973

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2976
  ret void, !dbg !2977
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2978 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2989, metadata !589), !dbg !2997
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2990, metadata !589), !dbg !2998
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2991, metadata !589), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2992, metadata !589), !dbg !3000
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2993, metadata !589), !dbg !3001
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3002
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9, !dbg !3002
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2995, metadata !589), !dbg !3003
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2994, metadata !589), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2994, metadata !589), !dbg !3004
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3005
  %12 = icmp ult i32 %11, 41, !dbg !3005
  br i1 %12, label %13, label %18, !dbg !3005

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3009
  %15 = sext i32 %11 to i64, !dbg !3009
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3009
  %17 = add i32 %11, 8, !dbg !3009
  store i32 %17, i32* %8, align 8, !dbg !3009
  br label %21, !dbg !3009

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3011
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3011
  store i8* %20, i8** %10, align 8, !dbg !3011
  br label %21, !dbg !3011

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3005
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3013
  %25 = load i8*, i8** %24, align 8, !dbg !3013
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3015
  store i8* %25, i8** %26, align 16, !dbg !3016, !tbaa !597
  %27 = icmp eq i8* %25, null, !dbg !3017
  br i1 %27, label %30, label %28, !dbg !3018

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  %29 = icmp ult i32 %22, 41, !dbg !3005
  br i1 %29, label %35, label %32, !dbg !3005

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3020
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9, !dbg !3021
  ret void, !dbg !3021

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3011
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3011
  store i8* %34, i8** %10, align 8, !dbg !3011
  br label %40, !dbg !3011

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3009
  %37 = sext i32 %22 to i64, !dbg !3009
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3009
  %39 = add i32 %22, 8, !dbg !3009
  store i32 %39, i32* %8, align 8, !dbg !3009
  br label %40, !dbg !3009

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3005
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3013
  %44 = load i8*, i8** %43, align 8, !dbg !3013
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3015
  store i8* %44, i8** %45, align 8, !dbg !3016, !tbaa !597
  %46 = icmp eq i8* %44, null, !dbg !3017
  br i1 %46, label %30, label %47, !dbg !3018

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  %48 = icmp ult i32 %41, 41, !dbg !3005
  br i1 %48, label %52, label %49, !dbg !3005

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3011
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3011
  store i8* %51, i8** %10, align 8, !dbg !3011
  br label %57, !dbg !3011

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3009
  %54 = sext i32 %41 to i64, !dbg !3009
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3009
  %56 = add i32 %41, 8, !dbg !3009
  store i32 %56, i32* %8, align 8, !dbg !3009
  br label %57, !dbg !3009

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3005
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3013
  %61 = load i8*, i8** %60, align 8, !dbg !3013
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3015
  store i8* %61, i8** %62, align 16, !dbg !3016, !tbaa !597
  %63 = icmp eq i8* %61, null, !dbg !3017
  br i1 %63, label %30, label %64, !dbg !3018

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  %65 = icmp ult i32 %58, 41, !dbg !3005
  br i1 %65, label %69, label %66, !dbg !3005

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3011
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3011
  store i8* %68, i8** %10, align 8, !dbg !3011
  br label %74, !dbg !3011

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3009
  %71 = sext i32 %58 to i64, !dbg !3009
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3009
  %73 = add i32 %58, 8, !dbg !3009
  store i32 %73, i32* %8, align 8, !dbg !3009
  br label %74, !dbg !3009

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3005
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3013
  %78 = load i8*, i8** %77, align 8, !dbg !3013
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3015
  store i8* %78, i8** %79, align 8, !dbg !3016, !tbaa !597
  %80 = icmp eq i8* %78, null, !dbg !3017
  br i1 %80, label %30, label %81, !dbg !3018

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  %82 = icmp ult i32 %75, 41, !dbg !3005
  br i1 %82, label %86, label %83, !dbg !3005

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3011
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3011
  store i8* %85, i8** %10, align 8, !dbg !3011
  br label %91, !dbg !3011

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3009
  %88 = sext i32 %75 to i64, !dbg !3009
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3009
  %90 = add i32 %75, 8, !dbg !3009
  store i32 %90, i32* %8, align 8, !dbg !3009
  br label %91, !dbg !3009

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3005
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3013
  %95 = load i8*, i8** %94, align 8, !dbg !3013
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3015
  store i8* %95, i8** %96, align 16, !dbg !3016, !tbaa !597
  %97 = icmp eq i8* %95, null, !dbg !3017
  br i1 %97, label %30, label %98, !dbg !3018

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  %99 = icmp ult i32 %92, 41, !dbg !3005
  br i1 %99, label %103, label %100, !dbg !3005

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3011
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3011
  store i8* %102, i8** %10, align 8, !dbg !3011
  br label %108, !dbg !3011

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3009
  %105 = sext i32 %92 to i64, !dbg !3009
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3009
  %107 = add i32 %92, 8, !dbg !3009
  store i32 %107, i32* %8, align 8, !dbg !3009
  br label %108, !dbg !3009

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3013
  %111 = load i8*, i8** %110, align 8, !dbg !3013
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3015
  store i8* %111, i8** %112, align 8, !dbg !3016, !tbaa !597
  %113 = icmp eq i8* %111, null, !dbg !3017
  br i1 %113, label %30, label %114, !dbg !3018

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  %115 = load i8*, i8** %10, align 8, !dbg !3011
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3011
  store i8* %116, i8** %10, align 8, !dbg !3011
  %117 = bitcast i8* %115 to i8**, !dbg !3013
  %118 = load i8*, i8** %117, align 8, !dbg !3013
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3015
  store i8* %118, i8** %119, align 16, !dbg !3016, !tbaa !597
  %120 = icmp eq i8* %118, null, !dbg !3017
  br i1 %120, label %30, label %121, !dbg !3018

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  %122 = load i8*, i8** %10, align 8, !dbg !3011
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3011
  store i8* %123, i8** %10, align 8, !dbg !3011
  %124 = bitcast i8* %122 to i8**, !dbg !3013
  %125 = load i8*, i8** %124, align 8, !dbg !3013
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3015
  store i8* %125, i8** %126, align 8, !dbg !3016, !tbaa !597
  %127 = icmp eq i8* %125, null, !dbg !3017
  br i1 %127, label %30, label %128, !dbg !3018

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  %129 = load i8*, i8** %10, align 8, !dbg !3011
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3011
  store i8* %130, i8** %10, align 8, !dbg !3011
  %131 = bitcast i8* %129 to i8**, !dbg !3013
  %132 = load i8*, i8** %131, align 8, !dbg !3013
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3015
  store i8* %132, i8** %133, align 16, !dbg !3016, !tbaa !597
  %134 = icmp eq i8* %132, null, !dbg !3017
  br i1 %134, label %30, label %135, !dbg !3018

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  %136 = load i8*, i8** %10, align 8, !dbg !3011
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3011
  store i8* %137, i8** %10, align 8, !dbg !3011
  %138 = bitcast i8* %136 to i8**, !dbg !3013
  %139 = load i8*, i8** %138, align 8, !dbg !3013
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3015
  store i8* %139, i8** %140, align 8, !dbg !3016, !tbaa !597
  %141 = icmp eq i8* %139, null, !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2994, metadata !589), !dbg !3004
  %142 = select i1 %141, i64 9, i64 10, !dbg !3018
  br label %30, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3022 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3026, metadata !589), !dbg !3036
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3027, metadata !589), !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3028, metadata !589), !dbg !3038
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3029, metadata !589), !dbg !3039
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3040
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9, !dbg !3040
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3030, metadata !589), !dbg !3041
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3042
  call void @llvm.va_start(i8* nonnull %6), !dbg !3042
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3043
  call void @llvm.va_end(i8* nonnull %6), !dbg !3044
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9, !dbg !3045
  ret void, !dbg !3045
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3046 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.70, i64 0, i64 0), i32 5) #9, !dbg !3047
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.71, i64 0, i64 0)) #9, !dbg !3048
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !3050
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.73, i64 0, i64 0)) #9, !dbg !3051
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !3052
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3052, !tbaa !597
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !3053
  ret void, !dbg !3054
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3055 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3059, metadata !589), !dbg !3061
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3060, metadata !589), !dbg !3062
  %3 = udiv i64 9223372036854775807, %1, !dbg !3063
  %4 = icmp ult i64 %3, %0, !dbg !3063
  br i1 %4, label %5, label %6, !dbg !3065

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3066
  unreachable, !dbg !3066

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3068, metadata !589) #9, !dbg !3075
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !3077
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3074, metadata !589) #9, !dbg !3078
  %9 = icmp eq i8* %8, null, !dbg !3079
  %10 = icmp ne i64 %7, 0, !dbg !3081
  %11 = and i1 %10, %9, !dbg !3083
  br i1 %11, label %12, label %13, !dbg !3083

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3084
  unreachable, !dbg !3084

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3085
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3069 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3068, metadata !589), !dbg !3086
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3087
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3074, metadata !589), !dbg !3088
  %3 = icmp eq i8* %2, null, !dbg !3089
  %4 = icmp ne i64 %0, 0, !dbg !3090
  %5 = and i1 %4, %3, !dbg !3091
  br i1 %5, label %6, label %7, !dbg !3091

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3092
  unreachable, !dbg !3092

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3093
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3094 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3098, metadata !589), !dbg !3101
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3099, metadata !589), !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3100, metadata !589), !dbg !3103
  %4 = udiv i64 9223372036854775807, %2, !dbg !3104
  %5 = icmp ult i64 %4, %1, !dbg !3104
  br i1 %5, label %6, label %7, !dbg !3106

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3107
  unreachable, !dbg !3107

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3108
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3109, metadata !589) #9, !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3114, metadata !589) #9, !dbg !3117
  %9 = icmp eq i64 %8, 0, !dbg !3118
  %10 = icmp ne i8* %0, null, !dbg !3120
  %11 = and i1 %10, %9, !dbg !3122
  br i1 %11, label %12, label %13, !dbg !3122

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !3123
  br label %19, !dbg !3125

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !3126
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3109, metadata !589) #9, !dbg !3115
  %15 = icmp eq i8* %14, null, !dbg !3127
  %16 = icmp ne i64 %8, 0, !dbg !3129
  %17 = and i1 %16, %15, !dbg !3131
  br i1 %17, label %18, label %19, !dbg !3131

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3132
  unreachable, !dbg !3132

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3133
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3110 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3109, metadata !589), !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3114, metadata !589), !dbg !3135
  %3 = icmp eq i64 %1, 0, !dbg !3136
  %4 = icmp ne i8* %0, null, !dbg !3137
  %5 = and i1 %4, %3, !dbg !3138
  br i1 %5, label %6, label %7, !dbg !3138

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !3139
  br label %13, !dbg !3140

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !3141
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3109, metadata !589), !dbg !3134
  %9 = icmp eq i8* %8, null, !dbg !3142
  %10 = icmp ne i64 %1, 0, !dbg !3143
  %11 = and i1 %10, %9, !dbg !3144
  br i1 %11, label %12, label %13, !dbg !3144

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3145
  unreachable, !dbg !3145

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3146
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !549 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !554, metadata !589), !dbg !3147
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !555, metadata !589), !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !556, metadata !589), !dbg !3149
  %4 = load i64, i64* %1, align 8, !dbg !3150, !tbaa !2147
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !557, metadata !589), !dbg !3151
  %5 = icmp eq i8* %0, null, !dbg !3152
  br i1 %5, label %6, label %13, !dbg !3154

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3155
  br i1 %7, label %8, label %17, !dbg !3158

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !557, metadata !589), !dbg !3151
  %10 = icmp ugt i64 %2, 128, !dbg !3161
  %11 = zext i1 %10 to i64, !dbg !3161
  %12 = add nuw nsw i64 %9, %11, !dbg !3162
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !557, metadata !589), !dbg !3151
  br label %17, !dbg !3163

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3164
  %15 = icmp ugt i64 %14, %4, !dbg !3167
  br i1 %15, label %20, label %16, !dbg !3168

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3169
  unreachable, !dbg !3169

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3151
  store i64 %18, i64* %1, align 8, !dbg !3170, !tbaa !2147
  %19 = mul i64 %18, %2, !dbg !3171
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3109, metadata !589) #9, !dbg !3172
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3114, metadata !589) #9, !dbg !3174
  br label %27, !dbg !3175

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3176
  %22 = add i64 %4, 1, !dbg !3177
  %23 = add i64 %22, %21, !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3151
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3151
  store i64 %23, i64* %1, align 8, !dbg !3170, !tbaa !2147
  %24 = mul i64 %23, %2, !dbg !3171
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3109, metadata !589) #9, !dbg !3172
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3114, metadata !589) #9, !dbg !3174
  %25 = icmp eq i64 %24, 0, !dbg !3179
  br i1 %25, label %26, label %27, !dbg !3175

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !3180
  br label %34, !dbg !3181

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !3182
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3109, metadata !589) #9, !dbg !3172
  %30 = icmp eq i8* %29, null, !dbg !3183
  %31 = icmp ne i64 %28, 0, !dbg !3184
  %32 = and i1 %31, %30, !dbg !3185
  br i1 %32, label %33, label %34, !dbg !3185

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3186
  unreachable, !dbg !3186

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3187
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3188 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3190, metadata !589), !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3068, metadata !589) #9, !dbg !3192
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3194
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3074, metadata !589) #9, !dbg !3195
  %3 = icmp eq i8* %2, null, !dbg !3196
  %4 = icmp ne i64 %0, 0, !dbg !3197
  %5 = and i1 %4, %3, !dbg !3198
  br i1 %5, label %6, label %7, !dbg !3198

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3199
  unreachable, !dbg !3199

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3200
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3201 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3205, metadata !589), !dbg !3207
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3206, metadata !589), !dbg !3208
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !554, metadata !589) #9, !dbg !3209
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !555, metadata !589) #9, !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !556, metadata !589) #9, !dbg !3212
  %3 = load i64, i64* %1, align 8, !dbg !3213, !tbaa !2147
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !557, metadata !589) #9, !dbg !3214
  %4 = icmp eq i8* %0, null, !dbg !3215
  br i1 %4, label %5, label %8, !dbg !3216

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3217
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !557, metadata !589) #9, !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !557, metadata !589) #9, !dbg !3214
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #9, !dbg !3214
  store i64 %7, i64* %1, align 8, !dbg !3219, !tbaa !2147
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3109, metadata !589) #9, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3114, metadata !589) #9, !dbg !3222
  br label %17, !dbg !3223

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3224
  br i1 %9, label %11, label %10, !dbg !3225

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3226
  unreachable, !dbg !3226

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3227
  %13 = add i64 %3, 1, !dbg !3228
  %14 = add i64 %13, %12, !dbg !3229
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #9, !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #9, !dbg !3214
  store i64 %14, i64* %1, align 8, !dbg !3219, !tbaa !2147
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3109, metadata !589) #9, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3114, metadata !589) #9, !dbg !3222
  %15 = icmp eq i64 %14, 0, !dbg !3230
  br i1 %15, label %16, label %17, !dbg !3223

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !3231
  br label %24, !dbg !3232

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !3233
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3109, metadata !589) #9, !dbg !3220
  %20 = icmp eq i8* %19, null, !dbg !3234
  %21 = icmp ne i64 %18, 0, !dbg !3235
  %22 = and i1 %21, %20, !dbg !3236
  br i1 %22, label %23, label %24, !dbg !3236

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3237
  unreachable, !dbg !3237

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3238
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3239 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3241, metadata !589), !dbg !3242
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3068, metadata !589) #9, !dbg !3243
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3245
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3074, metadata !589) #9, !dbg !3246
  %3 = icmp eq i8* %2, null, !dbg !3247
  %4 = icmp ne i64 %0, 0, !dbg !3248
  %5 = and i1 %4, %3, !dbg !3249
  br i1 %5, label %6, label %7, !dbg !3249

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3250
  unreachable, !dbg !3250

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3251
  ret i8* %2, !dbg !3252
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3253 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3255, metadata !589), !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3256, metadata !589), !dbg !3259
  %3 = udiv i64 9223372036854775807, %1, !dbg !3260
  %4 = icmp ult i64 %3, %0, !dbg !3260
  br i1 %4, label %8, label %5, !dbg !3262

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3257, metadata !589), !dbg !3265
  %7 = icmp eq i8* %6, null, !dbg !3266
  br i1 %7, label %8, label %9, !dbg !3267

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3269
  unreachable, !dbg !3269

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3270
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3271 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3275, metadata !589), !dbg !3277
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3276, metadata !589), !dbg !3278
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3068, metadata !589) #9, !dbg !3279
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3281
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3074, metadata !589) #9, !dbg !3282
  %4 = icmp eq i8* %3, null, !dbg !3283
  %5 = icmp ne i64 %1, 0, !dbg !3284
  %6 = and i1 %5, %4, !dbg !3285
  br i1 %6, label %7, label %8, !dbg !3285

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3286
  unreachable, !dbg !3286

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3287
  ret i8* %3, !dbg !3288
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3289 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3291, metadata !589), !dbg !3292
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3293
  %3 = add i64 %2, 1, !dbg !3294
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3275, metadata !589) #9, !dbg !3295
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3276, metadata !589) #9, !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3068, metadata !589) #9, !dbg !3299
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3301
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3074, metadata !589) #9, !dbg !3302
  %5 = icmp eq i8* %4, null, !dbg !3303
  %6 = icmp ne i64 %3, 0, !dbg !3304
  %7 = and i1 %6, %5, !dbg !3305
  br i1 %7, label %8, label %9, !dbg !3305

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3306
  unreachable, !dbg !3306

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3307
  ret i8* %4, !dbg !3308
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3309 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3311, !tbaa !676
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.84, i64 0, i64 0), i32 5) #9, !dbg !3312
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i8* %2) #9, !dbg !3313
  tail call void @abort() #14, !dbg !3315
  unreachable, !dbg !3315
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3316 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3319, metadata !589), !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3320, metadata !589), !dbg !3326
  %3 = icmp eq i64 %0, 0, !dbg !3327
  %4 = icmp eq i64 %1, 0, !dbg !3328
  %5 = or i1 %3, %4, !dbg !3330
  br i1 %5, label %12, label %6, !dbg !3330

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3322, metadata !589), !dbg !3332
  %8 = udiv i64 %7, %1, !dbg !3333
  %9 = icmp eq i64 %8, %0, !dbg !3335
  br i1 %9, label %12, label %10, !dbg !3336

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3337
  store i32 12, i32* %11, align 4, !dbg !3339, !tbaa !676
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3319, metadata !589), !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3320, metadata !589), !dbg !3326
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3340
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3321, metadata !589), !dbg !3341
  br label %16, !dbg !3342

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3343
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3344 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3361, metadata !589), !dbg !3370
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3362, metadata !589), !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3363, metadata !589), !dbg !3372
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3364, metadata !589), !dbg !3373
  %6 = bitcast i32* %5 to i8*, !dbg !3374
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9, !dbg !3374
  %7 = icmp eq i32* %0, null, !dbg !3375
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3361, metadata !589), !dbg !3370
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3377
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3361, metadata !589), !dbg !3370
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3365, metadata !589), !dbg !3379
  %10 = icmp ugt i64 %9, -3, !dbg !3380
  %11 = icmp ne i64 %2, 0, !dbg !3381
  %12 = and i1 %11, %10, !dbg !3383
  br i1 %12, label %13, label %18, !dbg !3383

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3384
  br i1 %14, label %18, label %15, !dbg !3386

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3388, !tbaa !731
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3367, metadata !589), !dbg !3389
  %17 = zext i8 %16 to i32, !dbg !3390
  store i32 %17, i32* %8, align 4, !dbg !3391, !tbaa !676
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9, !dbg !3392
  ret i64 %19, !dbg !3392
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3393 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3438, metadata !589), !dbg !3443
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3444
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3445, metadata !589), !dbg !3449
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3451
  %4 = load i32, i32* %3, align 8, !dbg !3451, !tbaa !3452
  %5 = and i32 %4, 32, !dbg !3451
  %6 = icmp eq i32 %5, 0, !dbg !3454
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3455
  %8 = icmp ne i32 %7, 0, !dbg !3456
  br i1 %6, label %9, label %19, !dbg !3457

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3459
  %11 = icmp ne i64 %2, 0, !dbg !3459
  %12 = or i1 %11, %10, !dbg !3459
  %13 = sext i1 %8 to i32, !dbg !3459
  br i1 %12, label %22, label %14, !dbg !3459

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3461
  %16 = load i32, i32* %15, align 4, !dbg !3461, !tbaa !676
  %17 = icmp ne i32 %16, 9, !dbg !3463
  %18 = sext i1 %17 to i32, !dbg !3463
  br label %22, !dbg !3463

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3465

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3467
  store i32 0, i32* %21, align 4, !dbg !3469, !tbaa !676
  br label %22, !dbg !3467

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3470
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3471 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3476, metadata !589), !dbg !3496
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3477, metadata !589), !dbg !3497
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3498
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3478, metadata !589), !dbg !3499
  %3 = icmp eq i8* %2, null, !dbg !3500
  br i1 %3, label %15, label %4, !dbg !3501

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3486, metadata !589), !dbg !3502
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3487, metadata !589), !dbg !3503
  %5 = load i8, i8* %2, align 1, !dbg !3504, !tbaa !731
  %6 = icmp eq i8 %5, 67, !dbg !3506
  br i1 %6, label %7, label %11, !dbg !3509

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3511
  %9 = load i8, i8* %8, align 1, !dbg !3511, !tbaa !731
  %10 = icmp eq i8 %9, 0, !dbg !3514
  br i1 %10, label %14, label %11, !dbg !3516

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3492, metadata !589), !dbg !3518
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.94, i64 0, i64 0)) #9, !dbg !3519
  %13 = icmp eq i32 %12, 0, !dbg !3521
  br i1 %13, label %14, label %15, !dbg !3523

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3477, metadata !589), !dbg !3497
  br label %15, !dbg !3525

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3526
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3527 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3539, metadata !589), !dbg !3613
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3606, metadata !589), !dbg !3615
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3616
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3531, metadata !589), !dbg !3617
  %4 = icmp eq i8* %3, null, !dbg !3618
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0), i8* %3, !dbg !3620
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3531, metadata !589), !dbg !3617
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3621, !tbaa !597
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3553, metadata !589) #9, !dbg !3622
  %7 = icmp eq i8* %6, null, !dbg !3623
  br i1 %7, label %8, label %127, !dbg !3624

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.98, i64 0, i64 0)) #9, !dbg !3625
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3554, metadata !589) #9, !dbg !3626
  %10 = icmp eq i8* %9, null, !dbg !3627
  br i1 %10, label %14, label %11, !dbg !3629

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3630, !tbaa !731
  %13 = icmp eq i8 %12, 0, !dbg !3632
  br i1 %13, label %14, label %15, !dbg !3633

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3635

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.99, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3554, metadata !589) #9, !dbg !3626
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3636
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3557, metadata !589) #9, !dbg !3637
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3559, metadata !589) #9, !dbg !3638
  %18 = icmp eq i64 %17, 0, !dbg !3639
  br i1 %18, label %24, label %19, !dbg !3640

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3641
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3641
  %22 = load i8, i8* %21, align 1, !dbg !3641, !tbaa !731
  %23 = icmp ne i8 %22, 47, !dbg !3643
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3644
  %27 = add i64 %17, 14, !dbg !3645
  %28 = add i64 %27, %26, !dbg !3646
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3647
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3556, metadata !589) #9, !dbg !3648
  %30 = icmp eq i8* %29, null, !dbg !3649
  br i1 %30, label %125, label %31, !dbg !3649

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3650
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3653

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3654, !tbaa !731
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3656
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.100, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3657
  br label %37, !dbg !3658

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3656
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.100, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3657
  br label %37, !dbg !3658

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3561, metadata !589) #9, !dbg !3660
  %39 = icmp slt i32 %38, 0, !dbg !3661
  br i1 %39, label %123, label %40, !dbg !3662

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.101, i64 0, i64 0)) #9, !dbg !3663
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3562, metadata !589) #9, !dbg !3664
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3665
  br i1 %42, label %48, label %43, !dbg !3666

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3667

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9, !dbg !3668
  br label %123, !dbg !3670

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3603, metadata !589) #9, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3604, metadata !589) #9, !dbg !3671
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9, !dbg !3672
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9, !dbg !3673
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3674, metadata !589) #9, !dbg !3679
  %53 = load i8*, i8** %46, align 8, !dbg !3681, !tbaa !3682
  %54 = load i8*, i8** %47, align 8, !dbg !3681, !tbaa !3683
  %55 = icmp ult i8* %53, %54, !dbg !3681
  br i1 %55, label %58, label %56, !dbg !3681, !prof !3684

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3685
  br label %62, !dbg !3685

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3687
  store i8* %59, i8** %46, align 8, !dbg !3687, !tbaa !3682
  %60 = load i8, i8* %53, align 1, !dbg !3687, !tbaa !731
  %61 = zext i8 %60 to i32, !dbg !3687
  br label %62, !dbg !3687

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3689
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3605, metadata !589) #9, !dbg !3691
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3692

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3693

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3674, metadata !589) #9, !dbg !3693
  %66 = load i8*, i8** %46, align 8, !dbg !3697, !tbaa !3682
  %67 = load i8*, i8** %47, align 8, !dbg !3697, !tbaa !3683
  %68 = icmp ult i8* %66, %67, !dbg !3697
  br i1 %68, label %71, label %69, !dbg !3697, !prof !3684

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3698
  br label %75, !dbg !3698

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3699
  store i8* %72, i8** %46, align 8, !dbg !3699, !tbaa !3682
  %73 = load i8, i8* %66, align 1, !dbg !3699, !tbaa !731
  %74 = zext i8 %73 to i32, !dbg !3699
  br label %75, !dbg !3699

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3700
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3605, metadata !589) #9, !dbg !3691
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3701, !llvm.loop !3703

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9, !dbg !3706
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.102, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9, !dbg !3707
  %80 = icmp slt i32 %79, 2, !dbg !3709
  br i1 %80, label %115, label %81, !dbg !3710

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3711
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3610, metadata !589) #9, !dbg !3712
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3713
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3611, metadata !589) #9, !dbg !3714
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3612, metadata !589) #9, !dbg !3715
  %84 = icmp eq i64 %51, 0, !dbg !3716
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3718

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3604, metadata !589) #9, !dbg !3671
  %89 = add i64 %86, 2, !dbg !3719
  %90 = call noalias i8* @malloc(i64 %89) #9, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3603, metadata !589) #9, !dbg !3667
  br label %95, !dbg !3722

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3723
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3604, metadata !589) #9, !dbg !3671
  %93 = add i64 %92, 1, !dbg !3725
  %94 = call i8* @realloc(i8* %52, i64 %93) #9, !dbg !3726
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3603, metadata !589) #9, !dbg !3667
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3603, metadata !589) #9, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3604, metadata !589) #9, !dbg !3671
  %98 = icmp eq i8* %97, null, !dbg !3727
  br i1 %98, label %99, label %100, !dbg !3729

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3604, metadata !589) #9, !dbg !3671
  call void @free(i8* %52) #9, !dbg !3730
  br label %116, !dbg !3732

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3733
  %102 = xor i64 %83, -1, !dbg !3734
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3734
  %104 = xor i64 %82, -1, !dbg !3735
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3735
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3736, metadata !589) #9, !dbg !3745
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3744, metadata !589) #9, !dbg !3745
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9, !dbg !3747
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9, !dbg !3748
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3736, metadata !589) #9, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3744, metadata !589) #9, !dbg !3749
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9, !dbg !3751
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9, !dbg !3752
  br label %111, !dbg !3753

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3667

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3603, metadata !589) #9, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3604, metadata !589) #9, !dbg !3671
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3753
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3753
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3667

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3667

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3603, metadata !589) #9, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3604, metadata !589) #9, !dbg !3671
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3753
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3753
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3754
  %120 = icmp eq i64 %117, 0, !dbg !3755
  br i1 %120, label %123, label %121, !dbg !3757

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3758
  store i8 0, i8* %122, align 1, !dbg !3760, !tbaa !731
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3553, metadata !589) #9, !dbg !3622
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3553, metadata !589) #9, !dbg !3622
  call void @free(i8* %29) #9, !dbg !3761
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3553, metadata !589) #9, !dbg !3622
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3762, !tbaa !597
  br label %127, !dbg !3763

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3532, metadata !589), !dbg !3764
  %129 = load i8, i8* %128, align 1, !dbg !3765, !tbaa !731
  %130 = icmp eq i8 %129, 0, !dbg !3766
  br i1 %130, label %157, label %131, !dbg !3767

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3769

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9, !dbg !3769
  %136 = icmp eq i32 %135, 0, !dbg !3770
  br i1 %136, label %143, label %137, !dbg !3771

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3772
  br i1 %138, label %139, label %147, !dbg !3774

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3775
  %141 = load i8, i8* %140, align 1, !dbg !3775, !tbaa !731
  %142 = icmp eq i8 %141, 0, !dbg !3777
  br i1 %142, label %143, label %147, !dbg !3778

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3780
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3782
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3783
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3531, metadata !589), !dbg !3617
  br label %157, !dbg !3784

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3785
  %149 = add i64 %148, 1, !dbg !3786
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3787
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3532, metadata !589), !dbg !3764
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3788
  %152 = add i64 %151, 1, !dbg !3789
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3790
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3532, metadata !589), !dbg !3764
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3532, metadata !589), !dbg !3764
  %154 = load i8, i8* %153, align 1, !dbg !3765, !tbaa !731
  %155 = icmp eq i8 %154, 0, !dbg !3766
  br i1 %155, label %156, label %132, !dbg !3767, !llvm.loop !3791

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3617

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3531, metadata !589), !dbg !3617
  %159 = load i8, i8* %158, align 1, !dbg !3794, !tbaa !731
  %160 = icmp eq i8 %159, 0, !dbg !3796
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.103, i64 0, i64 0), i8* %158, !dbg !3797
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3531, metadata !589), !dbg !3617
  ret i8* %161, !dbg !3798
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3799 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3844, metadata !589), !dbg !3848
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3845, metadata !589), !dbg !3849
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3847, metadata !589), !dbg !3850
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3851
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3846, metadata !589), !dbg !3852
  %3 = icmp slt i32 %2, 0, !dbg !3853
  br i1 %3, label %4, label %6, !dbg !3855

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3856
  br label %24, !dbg !3857

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3858
  %8 = icmp eq i32 %7, 0, !dbg !3858
  br i1 %8, label %13, label %9, !dbg !3860

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3861
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3863
  %12 = icmp eq i64 %11, -1, !dbg !3865
  br i1 %12, label %16, label %13, !dbg !3866

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3867
  %15 = icmp eq i32 %14, 0, !dbg !3867
  br i1 %15, label %16, label %18, !dbg !3868

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3845, metadata !589), !dbg !3849
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3870
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3847, metadata !589), !dbg !3850
  br label %24, !dbg !3871

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3872
  %20 = load i32, i32* %19, align 4, !dbg !3872, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3845, metadata !589), !dbg !3849
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3845, metadata !589), !dbg !3849
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3870
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3847, metadata !589), !dbg !3850
  %22 = icmp eq i32 %20, 0, !dbg !3873
  br i1 %22, label %24, label %23, !dbg !3871

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3875, !tbaa !676
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3847, metadata !589), !dbg !3850
  br label %24, !dbg !3877

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3878
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3879 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3924, metadata !589), !dbg !3925
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3926
  br i1 %2, label %6, label %3, !dbg !3928

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3929
  %5 = icmp eq i32 %4, 0, !dbg !3929
  br i1 %5, label %6, label %8, !dbg !3931

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3933
  br label %17, !dbg !3934

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3935, metadata !589) #9, !dbg !3940
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3942
  %10 = load i32, i32* %9, align 8, !dbg !3942, !tbaa !3452
  %11 = and i32 %10, 256, !dbg !3944
  %12 = icmp eq i32 %11, 0, !dbg !3944
  br i1 %12, label %15, label %13, !dbg !3945

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3946
  br label %15, !dbg !3946

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3947
  br label %17, !dbg !3948

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3949
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3950 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3996, metadata !589), !dbg !4002
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3997, metadata !589), !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3998, metadata !589), !dbg !4004
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4005
  %5 = load i8*, i8** %4, align 8, !dbg !4005, !tbaa !3683
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4006
  %7 = load i8*, i8** %6, align 8, !dbg !4006, !tbaa !3682
  %8 = icmp eq i8* %5, %7, !dbg !4007
  br i1 %8, label %9, label %28, !dbg !4008

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4009
  %11 = load i8*, i8** %10, align 8, !dbg !4009, !tbaa !4011
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4012
  %13 = load i8*, i8** %12, align 8, !dbg !4012, !tbaa !4013
  %14 = icmp eq i8* %11, %13, !dbg !4014
  br i1 %14, label %15, label %28, !dbg !4015

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4016
  %17 = load i8*, i8** %16, align 8, !dbg !4016, !tbaa !4017
  %18 = icmp eq i8* %17, null, !dbg !4018
  br i1 %18, label %19, label %28, !dbg !4019

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4021
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !4022
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3999, metadata !589), !dbg !4024
  %22 = icmp eq i64 %21, -1, !dbg !4025
  br i1 %22, label %30, label %23, !dbg !4027

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4028
  %25 = load i32, i32* %24, align 8, !dbg !4029, !tbaa !3452
  %26 = and i32 %25, -17, !dbg !4029
  store i32 %26, i32* %24, align 8, !dbg !4029, !tbaa !3452
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4030
  store i64 %21, i64* %27, align 8, !dbg !4031, !tbaa !4032
  br label %30, !dbg !4033

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4034
  br label %30, !dbg !4035

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4036
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
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !68, !74, !83, !90, !97, !536, !181, !544, !561, !563, !565, !568, !570, !190, !573, !575, !577}
!llvm.ident = !{!579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579}
!llvm.module.flags = !{!580, !581, !582, !583}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 47, type: !54, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !8, globals: !22)
!3 = !DIFile(filename: "src/printenv.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 38, size: 32, elements: !6)
!6 = !{!7}
!7 = !DIEnumerator(name: "PRINTENV_FAILURE", value: 2)
!8 = !{!9, !11, !12, !15, !17, !20}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 62, baseType: !14)
!13 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!22 = !{!23, !0}
!23 = !DIGlobalVariableExpression(var: !24)
!24 = distinct !DIGlobalVariable(name: "infomap", scope: !25, file: !26, line: 632, type: !51, isLocal: true, isDefinition: true)
!25 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !26, file: !26, line: 630, type: !27, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !29)
!26 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!27 = !DISubroutineType(types: !28)
!28 = !{null, !20}
!29 = !{!30, !31, !32, !39, !41, !42, !43, !46, !47, !49}
!30 = !DILocalVariable(name: "program", arg: 1, scope: !25, file: !26, line: 630, type: !20)
!31 = !DILocalVariable(name: "node", scope: !25, file: !26, line: 642, type: !20)
!32 = !DILocalVariable(name: "map_prog", scope: !25, file: !26, line: 643, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !25, file: !26, line: 632, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !35, file: !26, line: 632, baseType: !20, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !35, file: !26, line: 632, baseType: !20, size: 64, offset: 64)
!39 = !DILocalVariable(name: "__s1_len", scope: !40, file: !26, line: 645, type: !12)
!40 = distinct !DILexicalBlock(scope: !25, file: !26, line: 645, column: 33)
!41 = !DILocalVariable(name: "__s2_len", scope: !40, file: !26, line: 645, type: !12)
!42 = !DILocalVariable(name: "lc_messages", scope: !25, file: !26, line: 655, type: !20)
!43 = !DILocalVariable(name: "__s1_len", scope: !44, file: !26, line: 656, type: !12)
!44 = distinct !DILexicalBlock(scope: !45, file: !26, line: 656, column: 22)
!45 = distinct !DILexicalBlock(scope: !25, file: !26, line: 656, column: 7)
!46 = !DILocalVariable(name: "__s2_len", scope: !44, file: !26, line: 656, type: !12)
!47 = !DILocalVariable(name: "__s2", scope: !48, file: !26, line: 656, type: !17)
!48 = distinct !DILexicalBlock(scope: !44, file: !26, line: 656, column: 22)
!49 = !DILocalVariable(name: "__result", scope: !48, file: !26, line: 656, type: !50)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 896, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 7)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 1024, elements: !64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !57, line: 104, size: 256, elements: !58)
!57 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!58 = !{!59, !60, !61, !63}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !57, line: 106, baseType: !20, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !56, file: !57, line: 109, baseType: !50, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !56, file: !57, line: 110, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !57, line: 111, baseType: !50, size: 32, offset: 192)
!64 = !{!65}
!65 = !DISubrange(count: 4)
!66 = !DIGlobalVariableExpression(var: !67)
!67 = distinct !DIGlobalVariable(name: "Version", scope: !68, file: !69, line: 2, type: !20, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !71)
!69 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!70 = !{}
!71 = !{!66}
!72 = !DIGlobalVariableExpression(var: !73)
!73 = distinct !DIGlobalVariable(name: "file_name", scope: !74, file: !79, line: 36, type: !20, isLocal: true, isDefinition: true)
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !76)
!75 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!76 = !{!72, !77}
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !74, file: !79, line: 46, type: !80, isLocal: true, isDefinition: true)
!79 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!80 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!81 = !DIGlobalVariableExpression(var: !82)
!82 = distinct !DIGlobalVariable(name: "exit_failure", scope: !83, file: !86, line: 24, type: !87, isLocal: false, isDefinition: true)
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !85)
!84 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!85 = !{!81}
!86 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "program_name", scope: !90, file: !94, line: 33, type: !20, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !92, globals: !93)
!91 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !{!11, !9}
!93 = !{!88}
!94 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !97, file: !139, line: 77, type: !175, isLocal: false, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !99, retainedTypes: !134, globals: !136)
!98 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !{!100, !114, !119}
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !101, line: 32, size: 32, elements: !102)
!101 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!103 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!104 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!105 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!106 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!107 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!108 = !DIEnumerator(name: "c_quoting_style", value: 5)
!109 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!110 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!111 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!112 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!113 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !101, line: 242, size: 32, elements: !115)
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!117 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!118 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !120, line: 46, size: 32, elements: !121)
!120 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!122 = !DIEnumerator(name: "_ISupper", value: 256)
!123 = !DIEnumerator(name: "_ISlower", value: 512)
!124 = !DIEnumerator(name: "_ISalpha", value: 1024)
!125 = !DIEnumerator(name: "_ISdigit", value: 2048)
!126 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!127 = !DIEnumerator(name: "_ISspace", value: 8192)
!128 = !DIEnumerator(name: "_ISprint", value: 16384)
!129 = !DIEnumerator(name: "_ISgraph", value: 32768)
!130 = !DIEnumerator(name: "_ISblank", value: 1)
!131 = !DIEnumerator(name: "_IScntrl", value: 2)
!132 = !DIEnumerator(name: "_ISpunct", value: 4)
!133 = !DIEnumerator(name: "_ISalnum", value: 8)
!134 = !{!50, !135, !12, !9}
!135 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!136 = !{!95, !137, !144, !157, !159, !164, !171, !173}
!137 = !DIGlobalVariableExpression(var: !138)
!138 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !97, file: !139, line: 93, type: !140, isLocal: false, isDefinition: true)
!139 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 320, elements: !142)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!142 = !{!143}
!143 = !DISubrange(count: 10)
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !97, file: !139, line: 1043, type: !146, isLocal: false, isDefinition: true)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !139, line: 57, size: 448, elements: !147)
!147 = !{!148, !149, !150, !155, !156}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !146, file: !139, line: 60, baseType: !100, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !139, line: 63, baseType: !50, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !146, file: !139, line: 67, baseType: !151, size: 256, offset: 64)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !153)
!152 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!153 = !{!154}
!154 = !DISubrange(count: 8)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !146, file: !139, line: 70, baseType: !20, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !146, file: !139, line: 73, baseType: !20, size: 64, offset: 384)
!157 = !DIGlobalVariableExpression(var: !158)
!158 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !97, file: !139, line: 108, type: !146, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "slot0", scope: !97, file: !139, line: 834, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 256)
!164 = !DIGlobalVariableExpression(var: !165)
!165 = distinct !DIGlobalVariable(name: "slotvec", scope: !97, file: !139, line: 837, type: !166, isLocal: true, isDefinition: true)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !139, line: 826, size: 128, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !167, file: !139, line: 828, baseType: !12, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !167, file: !139, line: 829, baseType: !9, size: 64, offset: 64)
!171 = !DIGlobalVariableExpression(var: !172)
!172 = distinct !DIGlobalVariable(name: "nslots", scope: !97, file: !139, line: 835, type: !50, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "slotvec0", scope: !97, file: !139, line: 836, type: !167, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 704, elements: !177)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!177 = !{!178}
!178 = !DISubrange(count: 11)
!179 = !DIGlobalVariableExpression(var: !180)
!180 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !181, file: !184, line: 26, type: !185, isLocal: false, isDefinition: true)
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !183)
!182 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!183 = !{!179}
!184 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 376, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 47)
!188 = !DIGlobalVariableExpression(var: !189)
!189 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !190, file: !534, line: 120, type: !535, isLocal: true, isDefinition: true)
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !192, retainedTypes: !531, globals: !533)
!191 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!192 = !{!193}
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !194, line: 41, size: 32, elements: !195)
!194 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!196 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!197 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!198 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!199 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!200 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!201 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!202 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!203 = !DIEnumerator(name: "DAY_1", value: 131079)
!204 = !DIEnumerator(name: "DAY_2", value: 131080)
!205 = !DIEnumerator(name: "DAY_3", value: 131081)
!206 = !DIEnumerator(name: "DAY_4", value: 131082)
!207 = !DIEnumerator(name: "DAY_5", value: 131083)
!208 = !DIEnumerator(name: "DAY_6", value: 131084)
!209 = !DIEnumerator(name: "DAY_7", value: 131085)
!210 = !DIEnumerator(name: "ABMON_1", value: 131086)
!211 = !DIEnumerator(name: "ABMON_2", value: 131087)
!212 = !DIEnumerator(name: "ABMON_3", value: 131088)
!213 = !DIEnumerator(name: "ABMON_4", value: 131089)
!214 = !DIEnumerator(name: "ABMON_5", value: 131090)
!215 = !DIEnumerator(name: "ABMON_6", value: 131091)
!216 = !DIEnumerator(name: "ABMON_7", value: 131092)
!217 = !DIEnumerator(name: "ABMON_8", value: 131093)
!218 = !DIEnumerator(name: "ABMON_9", value: 131094)
!219 = !DIEnumerator(name: "ABMON_10", value: 131095)
!220 = !DIEnumerator(name: "ABMON_11", value: 131096)
!221 = !DIEnumerator(name: "ABMON_12", value: 131097)
!222 = !DIEnumerator(name: "MON_1", value: 131098)
!223 = !DIEnumerator(name: "MON_2", value: 131099)
!224 = !DIEnumerator(name: "MON_3", value: 131100)
!225 = !DIEnumerator(name: "MON_4", value: 131101)
!226 = !DIEnumerator(name: "MON_5", value: 131102)
!227 = !DIEnumerator(name: "MON_6", value: 131103)
!228 = !DIEnumerator(name: "MON_7", value: 131104)
!229 = !DIEnumerator(name: "MON_8", value: 131105)
!230 = !DIEnumerator(name: "MON_9", value: 131106)
!231 = !DIEnumerator(name: "MON_10", value: 131107)
!232 = !DIEnumerator(name: "MON_11", value: 131108)
!233 = !DIEnumerator(name: "MON_12", value: 131109)
!234 = !DIEnumerator(name: "AM_STR", value: 131110)
!235 = !DIEnumerator(name: "PM_STR", value: 131111)
!236 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!237 = !DIEnumerator(name: "D_FMT", value: 131113)
!238 = !DIEnumerator(name: "T_FMT", value: 131114)
!239 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!240 = !DIEnumerator(name: "ERA", value: 131116)
!241 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!242 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!243 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!244 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!245 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!246 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!247 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!248 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!249 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!250 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!251 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!252 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!253 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!254 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!255 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!256 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!257 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!258 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!259 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!260 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!261 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!262 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!263 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!264 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!265 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!266 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!267 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!268 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!269 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!270 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!271 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!272 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!273 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!274 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!275 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!276 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!277 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!278 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!279 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!280 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!281 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!282 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!283 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!284 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!285 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!286 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!287 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!288 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!289 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!290 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!291 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!292 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!293 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!294 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!295 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!296 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!297 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!298 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!299 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!300 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!301 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!302 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!303 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!304 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!305 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!306 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!307 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!308 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!309 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!310 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!311 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!312 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!313 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!314 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!315 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!316 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!317 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!318 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!319 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!320 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!321 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!322 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!323 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!324 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!325 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!326 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!327 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!328 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!329 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!330 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!331 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!332 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!333 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!334 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!335 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!336 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!337 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!338 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!339 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!340 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!341 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!342 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!343 = !DIEnumerator(name: "CODESET", value: 14)
!344 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!345 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!346 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!347 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!390 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!391 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!399 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!400 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!415 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!416 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!417 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!418 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!419 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!420 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!421 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!422 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!423 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!424 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!425 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!426 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!427 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!428 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!429 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!430 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!431 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!432 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!433 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!434 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!435 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!436 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!437 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!454 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!455 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!458 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!459 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!460 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!461 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!462 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!463 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!464 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!465 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!466 = !DIEnumerator(name: "THOUSEP", value: 65537)
!467 = !DIEnumerator(name: "__GROUPING", value: 65538)
!468 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!469 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!470 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!471 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!472 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!473 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!474 = !DIEnumerator(name: "__YESSTR", value: 327682)
!475 = !DIEnumerator(name: "__NOSTR", value: 327683)
!476 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!477 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!478 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!479 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!480 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!481 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!482 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!483 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!484 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!485 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!486 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!487 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!488 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!489 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!490 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!491 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!492 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!493 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!494 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!495 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!496 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!497 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!498 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!499 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!500 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!501 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!502 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!503 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!504 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!505 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!506 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!507 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!508 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!509 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!510 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!511 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!512 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!529 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!530 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!531 = !{!11, !9, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!533 = !{!188}
!534 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!536 = distinct !DICompileUnit(language: DW_LANG_C99, file: !537, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !538, retainedTypes: !543)
!537 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!538 = !{!539}
!539 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !540, line: 41, size: 32, elements: !541)
!540 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!541 = !{!542}
!542 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!543 = !{!11}
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !546, retainedTypes: !560)
!545 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!546 = !{!547}
!547 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !549, file: !548, line: 192, size: 32, elements: !558)
!548 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = distinct !DISubprogram(name: "x2nrealloc", scope: !548, file: !548, line: 180, type: !550, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !553)
!550 = !DISubroutineType(types: !551)
!551 = !{!11, !11, !552, !12}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!553 = !{!554, !555, !556, !557}
!554 = !DILocalVariable(name: "p", arg: 1, scope: !549, file: !548, line: 180, type: !11)
!555 = !DILocalVariable(name: "pn", arg: 2, scope: !549, file: !548, line: 180, type: !552)
!556 = !DILocalVariable(name: "s", arg: 3, scope: !549, file: !548, line: 180, type: !12)
!557 = !DILocalVariable(name: "n", scope: !549, file: !548, line: 182, type: !12)
!558 = !{!559}
!559 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!560 = !{!12, !9, !11}
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70)
!562 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !543)
!564 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !567)
!566 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = !{!12}
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70)
!569 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !572)
!571 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = !{!12, !15, !17, !20}
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70)
!574 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !543)
!576 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !543)
!578 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!580 = !{i32 2, !"Dwarf Version", i32 4}
!581 = !{i32 2, !"Debug Info Version", i32 3}
!582 = !{i32 1, !"PIC Level", i32 2}
!583 = !{i32 1, !"PIE Level", i32 2}
!584 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 56, type: !585, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !50}
!587 = !{!588}
!588 = !DILocalVariable(name: "status", arg: 1, scope: !584, file: !3, line: 56, type: !50)
!589 = !DIExpression()
!590 = !DILocation(line: 56, column: 12, scope: !584)
!591 = !DILocation(line: 58, column: 14, scope: !592)
!592 = distinct !DILexicalBlock(scope: !584, file: !3, line: 58, column: 7)
!593 = !DILocation(line: 58, column: 7, scope: !584)
!594 = !DILocation(line: 59, column: 5, scope: !595)
!595 = !DILexicalBlockFile(scope: !596, file: !3, discriminator: 1)
!596 = distinct !DILexicalBlock(scope: !592, file: !3, line: 59, column: 5)
!597 = !{!598, !598, i64 0}
!598 = !{!"any pointer", !599, i64 0}
!599 = !{!"omnipotent char", !600, i64 0}
!600 = !{!"Simple C/C++ TBAA"}
!601 = !DILocation(line: 59, column: 5, scope: !602)
!602 = !DILexicalBlockFile(scope: !596, file: !3, discriminator: 3)
!603 = !DILocation(line: 59, column: 5, scope: !604)
!604 = !DILexicalBlockFile(scope: !596, file: !3, discriminator: 2)
!605 = !DILocation(line: 62, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !592, file: !3, line: 61, column: 5)
!607 = !DILocation(line: 62, column: 7, scope: !608)
!608 = !DILexicalBlockFile(scope: !606, file: !3, discriminator: 1)
!609 = !DILocation(line: 69, column: 7, scope: !606)
!610 = !DILocation(line: 69, column: 7, scope: !608)
!611 = !DILocation(line: 72, column: 7, scope: !606)
!612 = !DILocation(line: 72, column: 7, scope: !608)
!613 = !DILocation(line: 73, column: 7, scope: !606)
!614 = !DILocation(line: 73, column: 7, scope: !608)
!615 = !DILocation(line: 74, column: 7, scope: !606)
!616 = !DILocation(line: 74, column: 7, scope: !608)
!617 = !DILocation(line: 642, column: 15, scope: !25, inlinedAt: !618)
!618 = distinct !DILocation(line: 75, column: 7, scope: !606)
!619 = !DILocation(line: 651, column: 3, scope: !25, inlinedAt: !618)
!620 = !DILocation(line: 651, column: 3, scope: !621, inlinedAt: !618)
!621 = !DILexicalBlockFile(scope: !25, file: !26, discriminator: 1)
!622 = !DILocation(line: 655, column: 29, scope: !25, inlinedAt: !618)
!623 = !DILocation(line: 655, column: 15, scope: !25, inlinedAt: !618)
!624 = !DILocation(line: 656, column: 7, scope: !45, inlinedAt: !618)
!625 = !DILocation(line: 656, column: 19, scope: !45, inlinedAt: !618)
!626 = !DILocation(line: 656, column: 22, scope: !627, inlinedAt: !618)
!627 = !DILexicalBlockFile(scope: !45, file: !26, discriminator: 16)
!628 = !DILocation(line: 656, column: 7, scope: !629, inlinedAt: !618)
!629 = !DILexicalBlockFile(scope: !25, file: !26, discriminator: 16)
!630 = !DILocation(line: 662, column: 7, scope: !631, inlinedAt: !618)
!631 = distinct !DILexicalBlock(scope: !45, file: !26, line: 657, column: 5)
!632 = !DILocation(line: 662, column: 7, scope: !633, inlinedAt: !618)
!633 = !DILexicalBlockFile(scope: !631, file: !26, discriminator: 1)
!634 = !DILocation(line: 664, column: 5, scope: !631, inlinedAt: !618)
!635 = !DILocation(line: 665, column: 3, scope: !25, inlinedAt: !618)
!636 = !DILocation(line: 665, column: 3, scope: !621, inlinedAt: !618)
!637 = !DILocation(line: 667, column: 3, scope: !25, inlinedAt: !618)
!638 = !DILocation(line: 667, column: 3, scope: !621, inlinedAt: !618)
!639 = !DILocation(line: 77, column: 3, scope: !584)
!640 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 81, type: !641, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !644)
!641 = !DISubroutineType(types: !642)
!642 = !{!50, !50, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !657}
!645 = !DILocalVariable(name: "argc", arg: 1, scope: !640, file: !3, line: 81, type: !50)
!646 = !DILocalVariable(name: "argv", arg: 2, scope: !640, file: !3, line: 81, type: !643)
!647 = !DILocalVariable(name: "env", scope: !640, file: !3, line: 83, type: !643)
!648 = !DILocalVariable(name: "ep", scope: !640, file: !3, line: 84, type: !9)
!649 = !DILocalVariable(name: "ap", scope: !640, file: !3, line: 84, type: !9)
!650 = !DILocalVariable(name: "i", scope: !640, file: !3, line: 85, type: !50)
!651 = !DILocalVariable(name: "ok", scope: !640, file: !3, line: 86, type: !80)
!652 = !DILocalVariable(name: "optc", scope: !640, file: !3, line: 87, type: !50)
!653 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !640, file: !3, line: 88, type: !80)
!654 = !DILocalVariable(name: "matches", scope: !655, file: !3, line: 121, type: !50)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 120, column: 5)
!656 = distinct !DILexicalBlock(scope: !640, file: !3, line: 113, column: 7)
!657 = !DILocalVariable(name: "matched", scope: !658, file: !3, line: 125, type: !80)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 124, column: 9)
!659 = distinct !DILexicalBlock(scope: !660, file: !3, line: 123, column: 7)
!660 = distinct !DILexicalBlock(scope: !655, file: !3, line: 123, column: 7)
!661 = !DILocation(line: 81, column: 11, scope: !640)
!662 = !DILocation(line: 81, column: 24, scope: !640)
!663 = !DILocation(line: 88, column: 8, scope: !640)
!664 = !DILocation(line: 91, column: 21, scope: !640)
!665 = !DILocation(line: 91, column: 3, scope: !640)
!666 = !DILocation(line: 92, column: 3, scope: !640)
!667 = !DILocation(line: 93, column: 3, scope: !640)
!668 = !DILocation(line: 94, column: 3, scope: !640)
!669 = !DILocalVariable(name: "status", arg: 1, scope: !670, file: !26, line: 99, type: !50)
!670 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !26, file: !26, line: 99, type: !585, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !671)
!671 = !{!669}
!672 = !DILocation(line: 99, column: 30, scope: !670, inlinedAt: !673)
!673 = distinct !DILocation(line: 96, column: 3, scope: !640)
!674 = !DILocation(line: 102, column: 18, scope: !675, inlinedAt: !673)
!675 = distinct !DILexicalBlock(scope: !670, file: !26, line: 101, column: 7)
!676 = !{!677, !677, i64 0}
!677 = !{!"int", !599, i64 0}
!678 = !DILocation(line: 97, column: 3, scope: !640)
!679 = !DILocation(line: 99, column: 3, scope: !640)
!680 = !DILocation(line: 99, column: 18, scope: !681)
!681 = !DILexicalBlockFile(scope: !640, file: !3, discriminator: 1)
!682 = !DILocation(line: 87, column: 7, scope: !640)
!683 = !DILocation(line: 99, column: 3, scope: !681)
!684 = distinct !{!684, !679, !685}
!685 = !DILocation(line: 111, column: 5, scope: !640)
!686 = !DILocation(line: 106, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 102, column: 9)
!688 = distinct !DILexicalBlock(scope: !640, file: !3, line: 100, column: 5)
!689 = !DILocation(line: 107, column: 9, scope: !687)
!690 = !DILocation(line: 107, column: 9, scope: !691)
!691 = !DILexicalBlockFile(scope: !687, file: !3, discriminator: 1)
!692 = !DILocation(line: 109, column: 11, scope: !687)
!693 = !DILocation(line: 113, column: 7, scope: !656)
!694 = !DILocation(line: 113, column: 14, scope: !656)
!695 = !DILocation(line: 113, column: 7, scope: !640)
!696 = !DILocation(line: 125, column: 16, scope: !658)
!697 = !DILocation(line: 115, column: 18, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 115, column: 7)
!699 = distinct !DILexicalBlock(scope: !656, file: !3, line: 114, column: 5)
!700 = !DILocation(line: 83, column: 10, scope: !640)
!701 = !DILocation(line: 115, column: 27, scope: !702)
!702 = !DILexicalBlockFile(scope: !703, file: !3, discriminator: 1)
!703 = distinct !DILexicalBlock(scope: !698, file: !3, line: 115, column: 7)
!704 = !DILocation(line: 115, column: 32, scope: !702)
!705 = !DILocation(line: 115, column: 7, scope: !706)
!706 = !DILexicalBlockFile(scope: !698, file: !3, discriminator: 1)
!707 = !DILocation(line: 116, column: 9, scope: !703)
!708 = !DILocation(line: 115, column: 41, scope: !709)
!709 = !DILexicalBlockFile(scope: !703, file: !3, discriminator: 2)
!710 = distinct !{!710, !711, !712}
!711 = !DILocation(line: 115, column: 7, scope: !698)
!712 = !DILocation(line: 116, column: 9, scope: !698)
!713 = !DILocation(line: 128, column: 15, scope: !714)
!714 = !DILexicalBlockFile(scope: !715, file: !3, discriminator: 2)
!715 = distinct !DILexicalBlock(scope: !658, file: !3, line: 128, column: 15)
!716 = !DILocation(line: 128, column: 15, scope: !717)
!717 = !DILexicalBlockFile(scope: !658, file: !3, discriminator: 2)
!718 = !DILocation(line: 131, column: 22, scope: !719)
!719 = distinct !DILexicalBlock(scope: !658, file: !3, line: 131, column: 11)
!720 = !DILocation(line: 131, column: 31, scope: !721)
!721 = !DILexicalBlockFile(scope: !722, file: !3, discriminator: 1)
!722 = distinct !DILexicalBlock(scope: !719, file: !3, line: 131, column: 11)
!723 = !DILocation(line: 131, column: 11, scope: !724)
!724 = !DILexicalBlockFile(scope: !719, file: !3, discriminator: 1)
!725 = !DILocation(line: 84, column: 9, scope: !640)
!726 = !DILocation(line: 134, column: 20, scope: !727)
!727 = distinct !DILexicalBlock(scope: !722, file: !3, line: 132, column: 13)
!728 = !DILocation(line: 84, column: 14, scope: !640)
!729 = !DILocation(line: 135, column: 22, scope: !730)
!730 = !DILexicalBlockFile(scope: !727, file: !3, discriminator: 1)
!731 = !{!599, !599, i64 0}
!732 = !DILocation(line: 135, column: 26, scope: !730)
!733 = !DILocation(line: 135, column: 34, scope: !730)
!734 = !DILocation(line: 135, column: 37, scope: !735)
!735 = !DILexicalBlockFile(scope: !727, file: !3, discriminator: 2)
!736 = !DILocation(line: 135, column: 41, scope: !735)
!737 = !DILocation(line: 135, column: 49, scope: !735)
!738 = !DILocation(line: 135, column: 55, scope: !739)
!739 = !DILexicalBlockFile(scope: !727, file: !3, discriminator: 3)
!740 = !DILocation(line: 135, column: 64, scope: !739)
!741 = !DILocation(line: 135, column: 58, scope: !739)
!742 = !DILocation(line: 135, column: 15, scope: !743)
!743 = !DILexicalBlockFile(scope: !727, file: !3, discriminator: 4)
!744 = !DILocation(line: 137, column: 23, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 137, column: 23)
!746 = distinct !DILexicalBlock(scope: !727, file: !3, line: 136, column: 17)
!747 = !DILocation(line: 137, column: 34, scope: !745)
!748 = distinct !{!748, !749, !750}
!749 = !DILocation(line: 135, column: 15, scope: !727)
!750 = !DILocation(line: 144, column: 17, scope: !727)
!751 = !DILocation(line: 137, column: 37, scope: !752)
!752 = !DILexicalBlockFile(scope: !745, file: !3, discriminator: 1)
!753 = !DILocation(line: 137, column: 41, scope: !752)
!754 = !DILocation(line: 137, column: 23, scope: !755)
!755 = !DILexicalBlockFile(scope: !746, file: !3, discriminator: 1)
!756 = !DILocation(line: 139, column: 23, scope: !757)
!757 = distinct !DILexicalBlock(scope: !745, file: !3, line: 138, column: 21)
!758 = !DILocation(line: 142, column: 23, scope: !757)
!759 = !DILocation(line: 131, column: 37, scope: !760)
!760 = !DILexicalBlockFile(scope: !722, file: !3, discriminator: 2)
!761 = distinct !{!761, !762, !763}
!762 = !DILocation(line: 131, column: 11, scope: !719)
!763 = !DILocation(line: 145, column: 13, scope: !719)
!764 = !DILocation(line: 147, column: 22, scope: !658)
!765 = !DILocation(line: 147, column: 19, scope: !658)
!766 = !DILocation(line: 121, column: 11, scope: !655)
!767 = !DILocation(line: 148, column: 9, scope: !659)
!768 = !DILocation(line: 123, column: 34, scope: !769)
!769 = !DILexicalBlockFile(scope: !659, file: !3, discriminator: 2)
!770 = !DILocation(line: 123, column: 26, scope: !771)
!771 = !DILexicalBlockFile(scope: !659, file: !3, discriminator: 1)
!772 = !DILocation(line: 123, column: 7, scope: !773)
!773 = !DILexicalBlockFile(scope: !660, file: !3, discriminator: 1)
!774 = distinct !{!774, !775, !776}
!775 = !DILocation(line: 123, column: 7, scope: !660)
!776 = !DILocation(line: 148, column: 9, scope: !660)
!777 = !DILocation(line: 150, column: 31, scope: !655)
!778 = !DILocation(line: 150, column: 29, scope: !655)
!779 = !DILocation(line: 153, column: 10, scope: !640)
!780 = !DILocation(line: 154, column: 1, scope: !640)
!781 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !79, file: !79, line: 41, type: !27, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !74, variables: !782)
!782 = !{!783}
!783 = !DILocalVariable(name: "file", arg: 1, scope: !781, file: !79, line: 41, type: !20)
!784 = !DILocation(line: 41, column: 41, scope: !781)
!785 = !DILocation(line: 43, column: 13, scope: !781)
!786 = !DILocation(line: 44, column: 1, scope: !781)
!787 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !79, file: !79, line: 78, type: !788, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !74, variables: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !80}
!790 = !{!791}
!791 = !DILocalVariable(name: "ignore", arg: 1, scope: !787, file: !79, line: 78, type: !80)
!792 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!793 = !DILocation(line: 78, column: 37, scope: !787)
!794 = !DILocation(line: 80, column: 16, scope: !787)
!795 = !{!796, !796, i64 0}
!796 = !{!"_Bool", !599, i64 0}
!797 = !DILocation(line: 81, column: 1, scope: !787)
!798 = distinct !DISubprogram(name: "close_stdout", scope: !79, file: !79, line: 107, type: !799, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !74, variables: !801)
!799 = !DISubroutineType(types: !800)
!800 = !{null}
!801 = !{!802}
!802 = !DILocalVariable(name: "write_error", scope: !803, file: !79, line: 112, type: !20)
!803 = distinct !DILexicalBlock(scope: !804, file: !79, line: 111, column: 5)
!804 = distinct !DILexicalBlock(scope: !798, file: !79, line: 109, column: 7)
!805 = !DILocation(line: 109, column: 21, scope: !804)
!806 = !DILocation(line: 109, column: 7, scope: !804)
!807 = !DILocation(line: 109, column: 29, scope: !804)
!808 = !DILocation(line: 110, column: 7, scope: !804)
!809 = !DILocation(line: 110, column: 12, scope: !810)
!810 = !DILexicalBlockFile(scope: !804, file: !79, discriminator: 1)
!811 = !{i8 0, i8 2}
!812 = !DILocation(line: 114, column: 19, scope: !813)
!813 = distinct !DILexicalBlock(scope: !803, file: !79, line: 113, column: 11)
!814 = !DILocation(line: 110, column: 25, scope: !810)
!815 = !DILocation(line: 110, column: 28, scope: !816)
!816 = !DILexicalBlockFile(scope: !804, file: !79, discriminator: 2)
!817 = !DILocation(line: 110, column: 34, scope: !816)
!818 = !DILocation(line: 109, column: 7, scope: !819)
!819 = !DILexicalBlockFile(scope: !798, file: !79, discriminator: 1)
!820 = !DILocation(line: 112, column: 33, scope: !803)
!821 = !DILocation(line: 112, column: 19, scope: !803)
!822 = !DILocation(line: 113, column: 11, scope: !813)
!823 = !DILocation(line: 113, column: 11, scope: !803)
!824 = !DILocation(line: 114, column: 36, scope: !825)
!825 = !DILexicalBlockFile(scope: !813, file: !79, discriminator: 1)
!826 = !DILocation(line: 114, column: 9, scope: !827)
!827 = !DILexicalBlockFile(scope: !813, file: !79, discriminator: 2)
!828 = !DILocation(line: 114, column: 9, scope: !813)
!829 = !DILocation(line: 117, column: 9, scope: !825)
!830 = !DILocation(line: 119, column: 14, scope: !803)
!831 = !DILocation(line: 119, column: 7, scope: !803)
!832 = !DILocation(line: 122, column: 22, scope: !833)
!833 = distinct !DILexicalBlock(scope: !798, file: !79, line: 122, column: 8)
!834 = !DILocation(line: 122, column: 8, scope: !833)
!835 = !DILocation(line: 122, column: 30, scope: !833)
!836 = !DILocation(line: 122, column: 8, scope: !798)
!837 = !DILocation(line: 123, column: 13, scope: !833)
!838 = !DILocation(line: 123, column: 6, scope: !833)
!839 = !DILocation(line: 124, column: 1, scope: !798)
!840 = distinct !DISubprogram(name: "set_program_name", scope: !94, file: !94, line: 39, type: !27, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !841)
!841 = !{!842, !843, !844}
!842 = !DILocalVariable(name: "argv0", arg: 1, scope: !840, file: !94, line: 39, type: !20)
!843 = !DILocalVariable(name: "slash", scope: !840, file: !94, line: 46, type: !20)
!844 = !DILocalVariable(name: "base", scope: !840, file: !94, line: 47, type: !20)
!845 = !DILocation(line: 39, column: 31, scope: !840)
!846 = !DILocation(line: 51, column: 13, scope: !847)
!847 = distinct !DILexicalBlock(scope: !840, file: !94, line: 51, column: 7)
!848 = !DILocation(line: 51, column: 7, scope: !840)
!849 = !DILocation(line: 55, column: 14, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !94, line: 52, column: 5)
!851 = !DILocation(line: 54, column: 7, scope: !850)
!852 = !DILocation(line: 56, column: 7, scope: !850)
!853 = !DILocation(line: 59, column: 11, scope: !840)
!854 = !DILocation(line: 46, column: 15, scope: !840)
!855 = !DILocation(line: 60, column: 17, scope: !840)
!856 = !DILocation(line: 60, column: 33, scope: !857)
!857 = !DILexicalBlockFile(scope: !840, file: !94, discriminator: 1)
!858 = !DILocation(line: 60, column: 11, scope: !840)
!859 = !DILocation(line: 47, column: 15, scope: !840)
!860 = !DILocation(line: 61, column: 12, scope: !861)
!861 = distinct !DILexicalBlock(scope: !840, file: !94, line: 61, column: 7)
!862 = !DILocation(line: 61, column: 20, scope: !861)
!863 = !DILocation(line: 61, column: 25, scope: !861)
!864 = !DILocation(line: 61, column: 28, scope: !865)
!865 = !DILexicalBlockFile(scope: !861, file: !94, discriminator: 1)
!866 = !DILocation(line: 61, column: 61, scope: !865)
!867 = !DILocation(line: 61, column: 7, scope: !857)
!868 = !DILocation(line: 64, column: 11, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !94, line: 64, column: 11)
!870 = distinct !DILexicalBlock(scope: !861, file: !94, line: 62, column: 5)
!871 = !DILocation(line: 64, column: 36, scope: !869)
!872 = !DILocation(line: 64, column: 11, scope: !870)
!873 = !DILocation(line: 66, column: 24, scope: !874)
!874 = distinct !DILexicalBlock(scope: !869, file: !94, line: 65, column: 9)
!875 = !DILocation(line: 70, column: 41, scope: !874)
!876 = !DILocation(line: 72, column: 9, scope: !874)
!877 = !DILocation(line: 84, column: 16, scope: !840)
!878 = !DILocation(line: 90, column: 27, scope: !840)
!879 = !DILocation(line: 92, column: 1, scope: !840)
!880 = distinct !DISubprogram(name: "clone_quoting_options", scope: !139, file: !139, line: 114, type: !881, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !884)
!881 = !DISubroutineType(types: !882)
!882 = !{!883, !883}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!884 = !{!885, !886, !887}
!885 = !DILocalVariable(name: "o", arg: 1, scope: !880, file: !139, line: 114, type: !883)
!886 = !DILocalVariable(name: "e", scope: !880, file: !139, line: 116, type: !50)
!887 = !DILocalVariable(name: "p", scope: !880, file: !139, line: 117, type: !883)
!888 = !DILocation(line: 114, column: 48, scope: !880)
!889 = !DILocation(line: 116, column: 11, scope: !880)
!890 = !DILocation(line: 116, column: 7, scope: !880)
!891 = !DILocation(line: 117, column: 40, scope: !880)
!892 = !DILocation(line: 117, column: 40, scope: !893)
!893 = !DILexicalBlockFile(scope: !880, file: !139, discriminator: 3)
!894 = !DILocation(line: 117, column: 31, scope: !893)
!895 = !DILocation(line: 117, column: 27, scope: !880)
!896 = !DILocation(line: 119, column: 9, scope: !880)
!897 = !DILocation(line: 120, column: 3, scope: !880)
!898 = distinct !DISubprogram(name: "get_quoting_style", scope: !139, file: !139, line: 125, type: !899, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !903)
!899 = !DISubroutineType(types: !900)
!900 = !{!100, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!903 = !{!904}
!904 = !DILocalVariable(name: "o", arg: 1, scope: !898, file: !139, line: 125, type: !901)
!905 = !DILocation(line: 125, column: 50, scope: !898)
!906 = !DILocation(line: 127, column: 11, scope: !898)
!907 = !DILocation(line: 127, column: 46, scope: !908)
!908 = !DILexicalBlockFile(scope: !898, file: !139, discriminator: 3)
!909 = !{!910, !599, i64 0}
!910 = !{!"quoting_options", !599, i64 0, !677, i64 4, !599, i64 8, !598, i64 40, !598, i64 48}
!911 = !DILocation(line: 127, column: 3, scope: !908)
!912 = distinct !DISubprogram(name: "set_quoting_style", scope: !139, file: !139, line: 133, type: !913, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !883, !100}
!915 = !{!916, !917}
!916 = !DILocalVariable(name: "o", arg: 1, scope: !912, file: !139, line: 133, type: !883)
!917 = !DILocalVariable(name: "s", arg: 2, scope: !912, file: !139, line: 133, type: !100)
!918 = !DILocation(line: 133, column: 44, scope: !912)
!919 = !DILocation(line: 133, column: 66, scope: !912)
!920 = !DILocation(line: 135, column: 4, scope: !912)
!921 = !DILocation(line: 135, column: 39, scope: !922)
!922 = !DILexicalBlockFile(scope: !912, file: !139, discriminator: 3)
!923 = !DILocation(line: 135, column: 45, scope: !922)
!924 = !DILocation(line: 136, column: 1, scope: !912)
!925 = distinct !DISubprogram(name: "set_char_quoting", scope: !139, file: !139, line: 144, type: !926, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!50, !883, !10, !50}
!928 = !{!929, !930, !931, !932, !933, !935, !936}
!929 = !DILocalVariable(name: "o", arg: 1, scope: !925, file: !139, line: 144, type: !883)
!930 = !DILocalVariable(name: "c", arg: 2, scope: !925, file: !139, line: 144, type: !10)
!931 = !DILocalVariable(name: "i", arg: 3, scope: !925, file: !139, line: 144, type: !50)
!932 = !DILocalVariable(name: "uc", scope: !925, file: !139, line: 146, type: !19)
!933 = !DILocalVariable(name: "p", scope: !925, file: !139, line: 147, type: !934)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!935 = !DILocalVariable(name: "shift", scope: !925, file: !139, line: 149, type: !50)
!936 = !DILocalVariable(name: "r", scope: !925, file: !139, line: 150, type: !50)
!937 = !DILocation(line: 144, column: 43, scope: !925)
!938 = !DILocation(line: 144, column: 51, scope: !925)
!939 = !DILocation(line: 144, column: 58, scope: !925)
!940 = !DILocation(line: 146, column: 17, scope: !925)
!941 = !DILocation(line: 148, column: 6, scope: !925)
!942 = !DILocation(line: 148, column: 62, scope: !943)
!943 = !DILexicalBlockFile(scope: !925, file: !139, discriminator: 3)
!944 = !DILocation(line: 148, column: 57, scope: !943)
!945 = !DILocation(line: 147, column: 17, scope: !925)
!946 = !DILocation(line: 149, column: 18, scope: !925)
!947 = !DILocation(line: 149, column: 15, scope: !925)
!948 = !DILocation(line: 149, column: 7, scope: !925)
!949 = !DILocation(line: 150, column: 12, scope: !925)
!950 = !DILocation(line: 150, column: 15, scope: !925)
!951 = !DILocation(line: 150, column: 25, scope: !925)
!952 = !DILocation(line: 150, column: 7, scope: !925)
!953 = !DILocation(line: 151, column: 13, scope: !925)
!954 = !DILocation(line: 151, column: 18, scope: !925)
!955 = !DILocation(line: 151, column: 23, scope: !925)
!956 = !DILocation(line: 151, column: 6, scope: !925)
!957 = !DILocation(line: 152, column: 3, scope: !925)
!958 = distinct !DISubprogram(name: "set_quoting_flags", scope: !139, file: !139, line: 160, type: !959, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !961)
!959 = !DISubroutineType(types: !960)
!960 = !{!50, !883, !50}
!961 = !{!962, !963, !964}
!962 = !DILocalVariable(name: "o", arg: 1, scope: !958, file: !139, line: 160, type: !883)
!963 = !DILocalVariable(name: "i", arg: 2, scope: !958, file: !139, line: 160, type: !50)
!964 = !DILocalVariable(name: "r", scope: !958, file: !139, line: 162, type: !50)
!965 = !DILocation(line: 160, column: 44, scope: !958)
!966 = !DILocation(line: 160, column: 51, scope: !958)
!967 = !DILocation(line: 163, column: 8, scope: !968)
!968 = distinct !DILexicalBlock(scope: !958, file: !139, line: 163, column: 7)
!969 = !DILocation(line: 163, column: 7, scope: !958)
!970 = !DILocation(line: 165, column: 10, scope: !958)
!971 = !{!910, !677, i64 4}
!972 = !DILocation(line: 162, column: 7, scope: !958)
!973 = !DILocation(line: 166, column: 12, scope: !958)
!974 = !DILocation(line: 167, column: 3, scope: !958)
!975 = distinct !DISubprogram(name: "set_custom_quoting", scope: !139, file: !139, line: 171, type: !976, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !978)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !883, !20, !20}
!978 = !{!979, !980, !981}
!979 = !DILocalVariable(name: "o", arg: 1, scope: !975, file: !139, line: 171, type: !883)
!980 = !DILocalVariable(name: "left_quote", arg: 2, scope: !975, file: !139, line: 172, type: !20)
!981 = !DILocalVariable(name: "right_quote", arg: 3, scope: !975, file: !139, line: 172, type: !20)
!982 = !DILocation(line: 171, column: 45, scope: !975)
!983 = !DILocation(line: 172, column: 33, scope: !975)
!984 = !DILocation(line: 172, column: 57, scope: !975)
!985 = !DILocation(line: 174, column: 8, scope: !986)
!986 = distinct !DILexicalBlock(scope: !975, file: !139, line: 174, column: 7)
!987 = !DILocation(line: 174, column: 7, scope: !975)
!988 = !DILocation(line: 176, column: 6, scope: !975)
!989 = !DILocation(line: 176, column: 12, scope: !975)
!990 = !DILocation(line: 177, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !975, file: !139, line: 177, column: 7)
!992 = !DILocation(line: 177, column: 23, scope: !993)
!993 = !DILexicalBlockFile(scope: !991, file: !139, discriminator: 1)
!994 = !DILocation(line: 177, column: 19, scope: !991)
!995 = !DILocation(line: 178, column: 5, scope: !991)
!996 = !DILocation(line: 179, column: 6, scope: !975)
!997 = !DILocation(line: 179, column: 17, scope: !975)
!998 = !{!910, !598, i64 40}
!999 = !DILocation(line: 180, column: 6, scope: !975)
!1000 = !DILocation(line: 180, column: 18, scope: !975)
!1001 = !{!910, !598, i64 48}
!1002 = !DILocation(line: 181, column: 1, scope: !975)
!1003 = distinct !DISubprogram(name: "quotearg_buffer", scope: !139, file: !139, line: 776, type: !1004, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!12, !9, !12, !20, !12, !901}
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014}
!1007 = !DILocalVariable(name: "buffer", arg: 1, scope: !1003, file: !139, line: 776, type: !9)
!1008 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1003, file: !139, line: 776, type: !12)
!1009 = !DILocalVariable(name: "arg", arg: 3, scope: !1003, file: !139, line: 777, type: !20)
!1010 = !DILocalVariable(name: "argsize", arg: 4, scope: !1003, file: !139, line: 777, type: !12)
!1011 = !DILocalVariable(name: "o", arg: 5, scope: !1003, file: !139, line: 778, type: !901)
!1012 = !DILocalVariable(name: "p", scope: !1003, file: !139, line: 780, type: !901)
!1013 = !DILocalVariable(name: "e", scope: !1003, file: !139, line: 781, type: !50)
!1014 = !DILocalVariable(name: "r", scope: !1003, file: !139, line: 782, type: !12)
!1015 = !DILocation(line: 776, column: 24, scope: !1003)
!1016 = !DILocation(line: 776, column: 39, scope: !1003)
!1017 = !DILocation(line: 777, column: 30, scope: !1003)
!1018 = !DILocation(line: 777, column: 42, scope: !1003)
!1019 = !DILocation(line: 778, column: 48, scope: !1003)
!1020 = !DILocation(line: 780, column: 37, scope: !1003)
!1021 = !DILocation(line: 780, column: 33, scope: !1003)
!1022 = !DILocation(line: 781, column: 11, scope: !1003)
!1023 = !DILocation(line: 781, column: 7, scope: !1003)
!1024 = !DILocation(line: 783, column: 43, scope: !1003)
!1025 = !DILocation(line: 783, column: 53, scope: !1003)
!1026 = !DILocation(line: 783, column: 60, scope: !1003)
!1027 = !DILocation(line: 784, column: 43, scope: !1003)
!1028 = !DILocation(line: 784, column: 58, scope: !1003)
!1029 = !DILocation(line: 782, column: 14, scope: !1003)
!1030 = !DILocation(line: 782, column: 10, scope: !1003)
!1031 = !DILocation(line: 785, column: 9, scope: !1003)
!1032 = !DILocation(line: 786, column: 3, scope: !1003)
!1033 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !139, file: !139, line: 248, type: !1034, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1038)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!12, !9, !12, !20, !12, !100, !50, !1036, !20, !20}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1063, !1064, !1065, !1066, !1067, !1070, !1071, !1086, !1089, !1090, !1097}
!1039 = !DILocalVariable(name: "buffer", arg: 1, scope: !1033, file: !139, line: 248, type: !9)
!1040 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1033, file: !139, line: 248, type: !12)
!1041 = !DILocalVariable(name: "arg", arg: 3, scope: !1033, file: !139, line: 249, type: !20)
!1042 = !DILocalVariable(name: "argsize", arg: 4, scope: !1033, file: !139, line: 249, type: !12)
!1043 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1033, file: !139, line: 250, type: !100)
!1044 = !DILocalVariable(name: "flags", arg: 6, scope: !1033, file: !139, line: 250, type: !50)
!1045 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1033, file: !139, line: 251, type: !1036)
!1046 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1033, file: !139, line: 252, type: !20)
!1047 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1033, file: !139, line: 253, type: !20)
!1048 = !DILocalVariable(name: "i", scope: !1033, file: !139, line: 255, type: !12)
!1049 = !DILocalVariable(name: "len", scope: !1033, file: !139, line: 256, type: !12)
!1050 = !DILocalVariable(name: "orig_buffersize", scope: !1033, file: !139, line: 257, type: !12)
!1051 = !DILocalVariable(name: "quote_string", scope: !1033, file: !139, line: 258, type: !20)
!1052 = !DILocalVariable(name: "quote_string_len", scope: !1033, file: !139, line: 259, type: !12)
!1053 = !DILocalVariable(name: "backslash_escapes", scope: !1033, file: !139, line: 260, type: !80)
!1054 = !DILocalVariable(name: "unibyte_locale", scope: !1033, file: !139, line: 261, type: !80)
!1055 = !DILocalVariable(name: "elide_outer_quotes", scope: !1033, file: !139, line: 262, type: !80)
!1056 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1033, file: !139, line: 263, type: !80)
!1057 = !DILocalVariable(name: "encountered_single_quote", scope: !1033, file: !139, line: 264, type: !80)
!1058 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1033, file: !139, line: 265, type: !80)
!1059 = !DILocalVariable(name: "c", scope: !1060, file: !139, line: 394, type: !19)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !139, line: 393, column: 5)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !139, line: 392, column: 3)
!1062 = distinct !DILexicalBlock(scope: !1033, file: !139, line: 392, column: 3)
!1063 = !DILocalVariable(name: "esc", scope: !1060, file: !139, line: 395, type: !19)
!1064 = !DILocalVariable(name: "is_right_quote", scope: !1060, file: !139, line: 396, type: !80)
!1065 = !DILocalVariable(name: "escaping", scope: !1060, file: !139, line: 397, type: !80)
!1066 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1060, file: !139, line: 398, type: !80)
!1067 = !DILocalVariable(name: "m", scope: !1068, file: !139, line: 602, type: !12)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !139, line: 600, column: 11)
!1069 = distinct !DILexicalBlock(scope: !1060, file: !139, line: 418, column: 9)
!1070 = !DILocalVariable(name: "printable", scope: !1068, file: !139, line: 604, type: !80)
!1071 = !DILocalVariable(name: "mbstate", scope: !1072, file: !139, line: 613, type: !1074)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !139, line: 612, column: 15)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !139, line: 606, column: 17)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1075, line: 107, baseType: !1076)
!1075 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1075, line: 95, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1075, line: 83, size: 64, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1077, file: !1075, line: 85, baseType: !50, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1077, file: !1075, line: 94, baseType: !1081, size: 32, offset: 32)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !1075, line: 86, size: 32, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1081, file: !1075, line: 89, baseType: !152, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1081, file: !1075, line: 93, baseType: !1085, size: 32)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, elements: !64)
!1086 = !DILocalVariable(name: "w", scope: !1087, file: !139, line: 623, type: !1088)
!1087 = distinct !DILexicalBlock(scope: !1072, file: !139, line: 622, column: 19)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !13, line: 90, baseType: !50)
!1089 = !DILocalVariable(name: "bytes", scope: !1087, file: !139, line: 624, type: !12)
!1090 = !DILocalVariable(name: "j", scope: !1091, file: !139, line: 649, type: !12)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !139, line: 648, column: 27)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !139, line: 646, column: 29)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !139, line: 641, column: 23)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !139, line: 633, column: 30)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !139, line: 628, column: 30)
!1096 = distinct !DILexicalBlock(scope: !1087, file: !139, line: 626, column: 25)
!1097 = !DILocalVariable(name: "ilim", scope: !1098, file: !139, line: 676, type: !12)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !139, line: 673, column: 15)
!1099 = distinct !DILexicalBlock(scope: !1068, file: !139, line: 672, column: 17)
!1100 = !DILocation(line: 248, column: 33, scope: !1033)
!1101 = !DILocation(line: 248, column: 48, scope: !1033)
!1102 = !DILocation(line: 249, column: 39, scope: !1033)
!1103 = !DILocation(line: 249, column: 51, scope: !1033)
!1104 = !DILocation(line: 250, column: 46, scope: !1033)
!1105 = !DILocation(line: 250, column: 65, scope: !1033)
!1106 = !DILocation(line: 251, column: 47, scope: !1033)
!1107 = !DILocation(line: 252, column: 39, scope: !1033)
!1108 = !DILocation(line: 253, column: 39, scope: !1033)
!1109 = !DILocation(line: 256, column: 10, scope: !1033)
!1110 = !DILocation(line: 257, column: 10, scope: !1033)
!1111 = !DILocation(line: 258, column: 15, scope: !1033)
!1112 = !DILocation(line: 259, column: 10, scope: !1033)
!1113 = !DILocation(line: 260, column: 8, scope: !1033)
!1114 = !DILocation(line: 261, column: 25, scope: !1033)
!1115 = !DILocation(line: 261, column: 36, scope: !1033)
!1116 = !DILocation(line: 262, column: 8, scope: !1033)
!1117 = !DILocation(line: 263, column: 8, scope: !1033)
!1118 = !DILocation(line: 264, column: 8, scope: !1033)
!1119 = !DILocation(line: 265, column: 8, scope: !1033)
!1120 = !DILocation(line: 265, column: 3, scope: !1033)
!1121 = !DILocation(line: 308, column: 3, scope: !1033)
!1122 = !DILocation(line: 315, column: 11, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1033, file: !139, line: 309, column: 5)
!1124 = !DILocation(line: 315, column: 12, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1123, file: !139, line: 315, column: 11)
!1126 = !DILocation(line: 316, column: 9, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !139, discriminator: 1)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !139, line: 316, column: 9)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !139, line: 316, column: 9)
!1130 = !DILocation(line: 316, column: 9, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1129, file: !139, discriminator: 1)
!1132 = !DILocation(line: 316, column: 9, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1128, file: !139, discriminator: 2)
!1134 = !DILocation(line: 354, column: 26, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !139, line: 332, column: 11)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !139, line: 331, column: 13)
!1137 = distinct !DILexicalBlock(scope: !1123, file: !139, line: 330, column: 7)
!1138 = !DILocation(line: 355, column: 27, scope: !1135)
!1139 = !DILocation(line: 356, column: 11, scope: !1135)
!1140 = !DILocation(line: 357, column: 14, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !139, line: 357, column: 13)
!1142 = !DILocation(line: 357, column: 13, scope: !1137)
!1143 = !DILocation(line: 358, column: 43, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1145, file: !139, discriminator: 1)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !139, line: 358, column: 11)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !139, line: 358, column: 11)
!1147 = !DILocation(line: 358, column: 11, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1146, file: !139, discriminator: 1)
!1149 = !DILocation(line: 359, column: 13, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1151, file: !139, discriminator: 1)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !139, line: 359, column: 13)
!1152 = distinct !DILexicalBlock(scope: !1145, file: !139, line: 359, column: 13)
!1153 = !DILocation(line: 359, column: 13, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1152, file: !139, discriminator: 1)
!1155 = !DILocation(line: 359, column: 13, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1151, file: !139, discriminator: 2)
!1157 = !DILocation(line: 359, column: 13, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1152, file: !139, discriminator: 3)
!1159 = !DILocation(line: 358, column: 70, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1145, file: !139, discriminator: 2)
!1161 = distinct !{!1161, !1162, !1163}
!1162 = !DILocation(line: 358, column: 11, scope: !1146)
!1163 = !DILocation(line: 359, column: 13, scope: !1146)
!1164 = !DILocation(line: 362, column: 28, scope: !1137)
!1165 = !DILocation(line: 364, column: 7, scope: !1123)
!1166 = !DILocation(line: 367, column: 7, scope: !1123)
!1167 = !DILocation(line: 370, column: 7, scope: !1123)
!1168 = !DILocation(line: 373, column: 12, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1123, file: !139, line: 373, column: 11)
!1170 = !DILocation(line: 373, column: 11, scope: !1123)
!1171 = !DILocation(line: 378, column: 12, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1123, file: !139, line: 378, column: 11)
!1173 = !DILocation(line: 378, column: 11, scope: !1123)
!1174 = !DILocation(line: 379, column: 9, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1176, file: !139, discriminator: 1)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !139, line: 379, column: 9)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !139, line: 379, column: 9)
!1178 = !DILocation(line: 379, column: 9, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1177, file: !139, discriminator: 1)
!1180 = !DILocation(line: 379, column: 9, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1176, file: !139, discriminator: 2)
!1182 = !DILocation(line: 386, column: 7, scope: !1123)
!1183 = !DILocation(line: 389, column: 7, scope: !1123)
!1184 = !DILocation(line: 255, column: 10, scope: !1033)
!1185 = !DILocation(line: 392, column: 8, scope: !1062)
!1186 = !DILocation(line: 392, column: 27, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1061, file: !139, discriminator: 1)
!1188 = !DILocation(line: 392, column: 19, scope: !1187)
!1189 = !DILocation(line: 392, column: 60, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1061, file: !139, discriminator: 3)
!1191 = !DILocation(line: 392, column: 3, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1062, file: !139, discriminator: 4)
!1193 = !DILocation(line: 392, column: 41, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1061, file: !139, discriminator: 2)
!1195 = !DILocation(line: 392, column: 48, scope: !1194)
!1196 = !DILocation(line: 396, column: 12, scope: !1060)
!1197 = !DILocation(line: 397, column: 12, scope: !1060)
!1198 = !DILocation(line: 398, column: 12, scope: !1060)
!1199 = !DILocation(line: 401, column: 11, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1060, file: !139, line: 400, column: 11)
!1201 = !DILocation(line: 403, column: 17, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1200, file: !139, discriminator: 1)
!1203 = !DILocation(line: 404, column: 39, scope: !1200)
!1204 = !DILocation(line: 408, column: 32, scope: !1200)
!1205 = !DILocation(line: 404, column: 19, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1200, file: !139, discriminator: 2)
!1207 = !DILocation(line: 404, column: 15, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1200, file: !139, discriminator: 4)
!1209 = !DILocation(line: 409, column: 11, scope: !1200)
!1210 = !DILocation(line: 409, column: 26, scope: !1202)
!1211 = !DILocation(line: 409, column: 14, scope: !1202)
!1212 = !DILocation(line: 400, column: 11, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1060, file: !139, discriminator: 1)
!1214 = !DILocation(line: 416, column: 11, scope: !1060)
!1215 = !DILocation(line: 394, column: 21, scope: !1060)
!1216 = !DILocation(line: 417, column: 7, scope: !1060)
!1217 = !DILocation(line: 420, column: 15, scope: !1069)
!1218 = !DILocation(line: 422, column: 15, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1220, file: !139, discriminator: 1)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !139, line: 422, column: 15)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !139, line: 421, column: 13)
!1222 = distinct !DILexicalBlock(scope: !1069, file: !139, line: 420, column: 15)
!1223 = !DILocation(line: 422, column: 15, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1225, file: !139, discriminator: 4)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !139, line: 422, column: 15)
!1226 = !DILocation(line: 422, column: 15, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1225, file: !139, discriminator: 3)
!1228 = !DILocation(line: 422, column: 15, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1230, file: !139, discriminator: 6)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !139, line: 422, column: 15)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !139, line: 422, column: 15)
!1232 = distinct !DILexicalBlock(scope: !1225, file: !139, line: 422, column: 15)
!1233 = !DILocation(line: 422, column: 15, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1231, file: !139, discriminator: 6)
!1235 = !DILocation(line: 422, column: 15, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1230, file: !139, discriminator: 7)
!1237 = !DILocation(line: 422, column: 15, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1231, file: !139, discriminator: 8)
!1239 = !DILocation(line: 422, column: 15, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1241, file: !139, discriminator: 11)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !139, line: 422, column: 15)
!1242 = distinct !DILexicalBlock(scope: !1232, file: !139, line: 422, column: 15)
!1243 = !DILocation(line: 422, column: 15, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1242, file: !139, discriminator: 11)
!1245 = !DILocation(line: 422, column: 15, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1241, file: !139, discriminator: 12)
!1247 = !DILocation(line: 422, column: 15, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1242, file: !139, discriminator: 13)
!1249 = !DILocation(line: 422, column: 15, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1251, file: !139, discriminator: 16)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !139, line: 422, column: 15)
!1252 = distinct !DILexicalBlock(scope: !1232, file: !139, line: 422, column: 15)
!1253 = !DILocation(line: 422, column: 15, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1252, file: !139, discriminator: 16)
!1255 = !DILocation(line: 422, column: 15, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1251, file: !139, discriminator: 17)
!1257 = !DILocation(line: 422, column: 15, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1252, file: !139, discriminator: 18)
!1259 = !DILocation(line: 422, column: 15, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1232, file: !139, discriminator: 20)
!1261 = !DILocation(line: 422, column: 15, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1263, file: !139, discriminator: 22)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !139, line: 422, column: 15)
!1264 = distinct !DILexicalBlock(scope: !1220, file: !139, line: 422, column: 15)
!1265 = !DILocation(line: 422, column: 15, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1264, file: !139, discriminator: 22)
!1267 = !DILocation(line: 422, column: 15, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1263, file: !139, discriminator: 23)
!1269 = !DILocation(line: 422, column: 15, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1264, file: !139, discriminator: 24)
!1271 = !DILocation(line: 430, column: 19, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1221, file: !139, line: 429, column: 19)
!1273 = !DILocation(line: 430, column: 24, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1272, file: !139, discriminator: 1)
!1275 = !DILocation(line: 430, column: 28, scope: !1274)
!1276 = !DILocation(line: 430, column: 38, scope: !1274)
!1277 = !DILocation(line: 430, column: 48, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1272, file: !139, discriminator: 2)
!1279 = !DILocation(line: 430, column: 59, scope: !1278)
!1280 = !DILocation(line: 432, column: 19, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1282, file: !139, discriminator: 1)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !139, line: 432, column: 19)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !139, line: 432, column: 19)
!1284 = distinct !DILexicalBlock(scope: !1272, file: !139, line: 431, column: 17)
!1285 = !DILocation(line: 432, column: 19, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1283, file: !139, discriminator: 1)
!1287 = !DILocation(line: 432, column: 19, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1282, file: !139, discriminator: 2)
!1289 = !DILocation(line: 432, column: 19, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1283, file: !139, discriminator: 3)
!1291 = !DILocation(line: 433, column: 19, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1293, file: !139, discriminator: 1)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !139, line: 433, column: 19)
!1294 = distinct !DILexicalBlock(scope: !1284, file: !139, line: 433, column: 19)
!1295 = !DILocation(line: 433, column: 19, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1294, file: !139, discriminator: 1)
!1297 = !DILocation(line: 433, column: 19, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1293, file: !139, discriminator: 2)
!1299 = !DILocation(line: 433, column: 19, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1294, file: !139, discriminator: 3)
!1301 = !DILocation(line: 434, column: 17, scope: !1284)
!1302 = !DILocation(line: 441, column: 20, scope: !1222)
!1303 = !DILocation(line: 446, column: 11, scope: !1069)
!1304 = !DILocation(line: 449, column: 19, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1069, file: !139, line: 447, column: 13)
!1306 = !DILocation(line: 455, column: 19, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1305, file: !139, line: 454, column: 19)
!1308 = !DILocation(line: 455, column: 24, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1307, file: !139, discriminator: 1)
!1310 = !DILocation(line: 455, column: 28, scope: !1309)
!1311 = !DILocation(line: 455, column: 38, scope: !1309)
!1312 = !DILocation(line: 455, column: 47, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1307, file: !139, discriminator: 2)
!1314 = !DILocation(line: 455, column: 41, scope: !1313)
!1315 = !DILocation(line: 455, column: 52, scope: !1313)
!1316 = !DILocation(line: 454, column: 19, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1305, file: !139, discriminator: 1)
!1318 = !DILocation(line: 456, column: 25, scope: !1307)
!1319 = !DILocation(line: 456, column: 17, scope: !1307)
!1320 = !DILocation(line: 463, column: 25, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1307, file: !139, line: 457, column: 19)
!1322 = !DILocation(line: 467, column: 21, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1324, file: !139, discriminator: 1)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !139, line: 467, column: 21)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !139, line: 467, column: 21)
!1326 = !DILocation(line: 467, column: 21, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1325, file: !139, discriminator: 1)
!1328 = !DILocation(line: 467, column: 21, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1324, file: !139, discriminator: 2)
!1330 = !DILocation(line: 467, column: 21, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1325, file: !139, discriminator: 3)
!1332 = !DILocation(line: 468, column: 21, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1334, file: !139, discriminator: 1)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !139, line: 468, column: 21)
!1335 = distinct !DILexicalBlock(scope: !1321, file: !139, line: 468, column: 21)
!1336 = !DILocation(line: 468, column: 21, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1335, file: !139, discriminator: 1)
!1338 = !DILocation(line: 468, column: 21, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1334, file: !139, discriminator: 2)
!1340 = !DILocation(line: 468, column: 21, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1335, file: !139, discriminator: 3)
!1342 = !DILocation(line: 469, column: 21, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1344, file: !139, discriminator: 1)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !139, line: 469, column: 21)
!1345 = distinct !DILexicalBlock(scope: !1321, file: !139, line: 469, column: 21)
!1346 = !DILocation(line: 469, column: 21, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1345, file: !139, discriminator: 1)
!1348 = !DILocation(line: 469, column: 21, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1344, file: !139, discriminator: 2)
!1350 = !DILocation(line: 469, column: 21, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1345, file: !139, discriminator: 3)
!1352 = !DILocation(line: 470, column: 21, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !139, discriminator: 1)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !139, line: 470, column: 21)
!1355 = distinct !DILexicalBlock(scope: !1321, file: !139, line: 470, column: 21)
!1356 = !DILocation(line: 470, column: 21, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1355, file: !139, discriminator: 1)
!1358 = !DILocation(line: 470, column: 21, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1354, file: !139, discriminator: 2)
!1360 = !DILocation(line: 470, column: 21, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1355, file: !139, discriminator: 3)
!1362 = !DILocation(line: 471, column: 21, scope: !1321)
!1363 = !DILocation(line: 395, column: 21, scope: !1060)
!1364 = !DILocation(line: 484, column: 31, scope: !1069)
!1365 = !DILocation(line: 485, column: 31, scope: !1069)
!1366 = !DILocation(line: 487, column: 31, scope: !1069)
!1367 = !DILocation(line: 488, column: 31, scope: !1069)
!1368 = !DILocation(line: 489, column: 31, scope: !1069)
!1369 = !DILocation(line: 492, column: 15, scope: !1069)
!1370 = !DILocation(line: 494, column: 19, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !139, line: 493, column: 13)
!1372 = distinct !DILexicalBlock(scope: !1069, file: !139, line: 492, column: 15)
!1373 = !DILocation(line: 501, column: 33, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1069, file: !139, line: 501, column: 15)
!1375 = !DILocation(line: 506, column: 15, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1069, file: !139, line: 505, column: 15)
!1377 = !DILocation(line: 510, column: 15, scope: !1069)
!1378 = !DILocation(line: 518, column: 26, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1069, file: !139, line: 518, column: 15)
!1380 = !DILocation(line: 518, column: 15, scope: !1069)
!1381 = !DILocation(line: 518, column: 40, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1379, file: !139, discriminator: 1)
!1383 = !DILocation(line: 518, column: 47, scope: !1382)
!1384 = !DILocation(line: 522, column: 17, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1069, file: !139, line: 522, column: 15)
!1386 = !DILocation(line: 518, column: 18, scope: !1382)
!1387 = !DILocation(line: 518, column: 65, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1379, file: !139, discriminator: 2)
!1389 = !DILocation(line: 518, column: 15, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1069, file: !139, discriminator: 2)
!1391 = !DILocation(line: 522, column: 15, scope: !1069)
!1392 = !DILocation(line: 526, column: 11, scope: !1069)
!1393 = !DILocation(line: 541, column: 15, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1069, file: !139, line: 540, column: 15)
!1395 = !DILocation(line: 548, column: 15, scope: !1069)
!1396 = !DILocation(line: 550, column: 19, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !139, line: 549, column: 13)
!1398 = distinct !DILexicalBlock(scope: !1069, file: !139, line: 548, column: 15)
!1399 = !DILocation(line: 553, column: 19, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !139, line: 553, column: 19)
!1401 = !DILocation(line: 553, column: 35, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1400, file: !139, discriminator: 1)
!1403 = !DILocation(line: 553, column: 30, scope: !1400)
!1404 = !DILocation(line: 562, column: 15, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1406, file: !139, discriminator: 1)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !139, line: 562, column: 15)
!1407 = distinct !DILexicalBlock(scope: !1397, file: !139, line: 562, column: 15)
!1408 = !DILocation(line: 562, column: 15, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1407, file: !139, discriminator: 1)
!1410 = !DILocation(line: 562, column: 15, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1406, file: !139, discriminator: 2)
!1412 = !DILocation(line: 562, column: 15, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1407, file: !139, discriminator: 3)
!1414 = !DILocation(line: 563, column: 15, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1416, file: !139, discriminator: 1)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !139, line: 563, column: 15)
!1417 = distinct !DILexicalBlock(scope: !1397, file: !139, line: 563, column: 15)
!1418 = !DILocation(line: 563, column: 15, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1417, file: !139, discriminator: 1)
!1420 = !DILocation(line: 563, column: 15, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1416, file: !139, discriminator: 2)
!1422 = !DILocation(line: 563, column: 15, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1417, file: !139, discriminator: 3)
!1424 = !DILocation(line: 564, column: 15, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1426, file: !139, discriminator: 1)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !139, line: 564, column: 15)
!1427 = distinct !DILexicalBlock(scope: !1397, file: !139, line: 564, column: 15)
!1428 = !DILocation(line: 564, column: 15, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1427, file: !139, discriminator: 1)
!1430 = !DILocation(line: 564, column: 15, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1426, file: !139, discriminator: 2)
!1432 = !DILocation(line: 564, column: 15, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1427, file: !139, discriminator: 3)
!1434 = !DILocation(line: 566, column: 13, scope: !1397)
!1435 = !DILocation(line: 606, column: 17, scope: !1068)
!1436 = !DILocation(line: 602, column: 20, scope: !1068)
!1437 = !DILocation(line: 609, column: 29, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1073, file: !139, line: 607, column: 15)
!1439 = !{!1440, !1440, i64 0}
!1440 = !{!"short", !599, i64 0}
!1441 = !DILocation(line: 609, column: 27, scope: !1438)
!1442 = !DILocation(line: 604, column: 18, scope: !1068)
!1443 = !DILocation(line: 610, column: 15, scope: !1438)
!1444 = !DILocation(line: 613, column: 17, scope: !1072)
!1445 = !DILocation(line: 614, column: 17, scope: !1072)
!1446 = !DILocation(line: 618, column: 29, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1072, file: !139, line: 618, column: 21)
!1448 = !DILocation(line: 618, column: 21, scope: !1072)
!1449 = distinct !{!1449, !1450, !1451}
!1450 = !DILocation(line: 621, column: 17, scope: !1072)
!1451 = !DILocation(line: 667, column: 44, scope: !1072)
!1452 = !DILocation(line: 619, column: 29, scope: !1447)
!1453 = !DILocation(line: 619, column: 19, scope: !1447)
!1454 = !DILocation(line: 623, column: 21, scope: !1087)
!1455 = !DILocation(line: 624, column: 56, scope: !1087)
!1456 = !DILocation(line: 624, column: 50, scope: !1087)
!1457 = !DILocation(line: 625, column: 53, scope: !1087)
!1458 = !DIExpression(DW_OP_deref)
!1459 = !DILocation(line: 613, column: 27, scope: !1072)
!1460 = !DILocation(line: 623, column: 29, scope: !1087)
!1461 = !DILocation(line: 624, column: 36, scope: !1087)
!1462 = !DILocation(line: 624, column: 28, scope: !1087)
!1463 = !DILocation(line: 626, column: 25, scope: !1087)
!1464 = !DILocation(line: 636, column: 38, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1466, file: !139, discriminator: 1)
!1466 = distinct !DILexicalBlock(scope: !1094, file: !139, line: 634, column: 23)
!1467 = !DILocation(line: 636, column: 48, scope: !1465)
!1468 = !DILocation(line: 636, column: 51, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1466, file: !139, discriminator: 2)
!1470 = !DILocation(line: 636, column: 48, scope: !1469)
!1471 = !DILocation(line: 636, column: 25, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1466, file: !139, discriminator: 3)
!1473 = !DILocation(line: 637, column: 28, scope: !1466)
!1474 = !DILocation(line: 636, column: 34, scope: !1465)
!1475 = distinct !{!1475, !1476, !1473}
!1476 = !DILocation(line: 636, column: 25, scope: !1466)
!1477 = !DILocation(line: 650, column: 43, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1479, file: !139, discriminator: 1)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !139, line: 650, column: 29)
!1480 = distinct !DILexicalBlock(scope: !1091, file: !139, line: 650, column: 29)
!1481 = !DILocation(line: 647, column: 29, scope: !1092)
!1482 = !DILocation(line: 649, column: 36, scope: !1091)
!1483 = !DILocation(line: 651, column: 49, scope: !1479)
!1484 = !DILocation(line: 651, column: 39, scope: !1479)
!1485 = !DILocation(line: 651, column: 31, scope: !1479)
!1486 = !DILocation(line: 650, column: 53, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1479, file: !139, discriminator: 2)
!1488 = !DILocation(line: 650, column: 29, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1480, file: !139, discriminator: 1)
!1490 = distinct !{!1490, !1491, !1492}
!1491 = !DILocation(line: 650, column: 29, scope: !1480)
!1492 = !DILocation(line: 659, column: 33, scope: !1480)
!1493 = !DILocation(line: 666, column: 19, scope: !1072)
!1494 = !DILocation(line: 662, column: 41, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1093, file: !139, line: 662, column: 29)
!1496 = !DILocation(line: 662, column: 31, scope: !1495)
!1497 = !DILocation(line: 662, column: 29, scope: !1093)
!1498 = !DILocation(line: 664, column: 27, scope: !1093)
!1499 = !DILocation(line: 667, column: 26, scope: !1072)
!1500 = !DILocation(line: 667, column: 24, scope: !1072)
!1501 = !DILocation(line: 666, column: 19, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1087, file: !139, discriminator: 3)
!1503 = !DILocation(line: 668, column: 15, scope: !1073)
!1504 = !DILocation(line: 670, column: 40, scope: !1068)
!1505 = !DILocation(line: 672, column: 19, scope: !1099)
!1506 = !DILocation(line: 672, column: 45, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1099, file: !139, discriminator: 1)
!1508 = !DILocation(line: 672, column: 23, scope: !1099)
!1509 = !DILocation(line: 676, column: 33, scope: !1098)
!1510 = !DILocation(line: 676, column: 24, scope: !1098)
!1511 = !DILocation(line: 678, column: 17, scope: !1098)
!1512 = !DILocation(line: 680, column: 43, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !139, line: 680, column: 25)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !139, line: 679, column: 19)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !139, line: 678, column: 17)
!1516 = distinct !DILexicalBlock(scope: !1098, file: !139, line: 678, column: 17)
!1517 = !DILocation(line: 682, column: 25, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1519, file: !139, discriminator: 1)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !139, line: 682, column: 25)
!1520 = distinct !DILexicalBlock(scope: !1513, file: !139, line: 681, column: 23)
!1521 = !DILocation(line: 682, column: 25, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1523, file: !139, discriminator: 4)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !139, line: 682, column: 25)
!1524 = !DILocation(line: 682, column: 25, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1523, file: !139, discriminator: 3)
!1526 = !DILocation(line: 682, column: 25, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1528, file: !139, discriminator: 6)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !139, line: 682, column: 25)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !139, line: 682, column: 25)
!1530 = distinct !DILexicalBlock(scope: !1523, file: !139, line: 682, column: 25)
!1531 = !DILocation(line: 682, column: 25, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1529, file: !139, discriminator: 6)
!1533 = !DILocation(line: 682, column: 25, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1528, file: !139, discriminator: 7)
!1535 = !DILocation(line: 682, column: 25, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1529, file: !139, discriminator: 8)
!1537 = !DILocation(line: 682, column: 25, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1539, file: !139, discriminator: 11)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !139, line: 682, column: 25)
!1540 = distinct !DILexicalBlock(scope: !1530, file: !139, line: 682, column: 25)
!1541 = !DILocation(line: 682, column: 25, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1540, file: !139, discriminator: 11)
!1543 = !DILocation(line: 682, column: 25, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1539, file: !139, discriminator: 12)
!1545 = !DILocation(line: 682, column: 25, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1540, file: !139, discriminator: 13)
!1547 = !DILocation(line: 682, column: 25, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1549, file: !139, discriminator: 16)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !139, line: 682, column: 25)
!1550 = distinct !DILexicalBlock(scope: !1530, file: !139, line: 682, column: 25)
!1551 = !DILocation(line: 682, column: 25, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1550, file: !139, discriminator: 16)
!1553 = !DILocation(line: 682, column: 25, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1549, file: !139, discriminator: 17)
!1555 = !DILocation(line: 682, column: 25, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1550, file: !139, discriminator: 18)
!1557 = !DILocation(line: 682, column: 25, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1530, file: !139, discriminator: 20)
!1559 = !DILocation(line: 682, column: 25, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1561, file: !139, discriminator: 22)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !139, line: 682, column: 25)
!1562 = distinct !DILexicalBlock(scope: !1519, file: !139, line: 682, column: 25)
!1563 = !DILocation(line: 682, column: 25, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1562, file: !139, discriminator: 22)
!1565 = !DILocation(line: 682, column: 25, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1561, file: !139, discriminator: 23)
!1567 = !DILocation(line: 682, column: 25, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1562, file: !139, discriminator: 24)
!1569 = !DILocation(line: 683, column: 25, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1571, file: !139, discriminator: 1)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !139, line: 683, column: 25)
!1572 = distinct !DILexicalBlock(scope: !1520, file: !139, line: 683, column: 25)
!1573 = !DILocation(line: 683, column: 25, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1572, file: !139, discriminator: 1)
!1575 = !DILocation(line: 683, column: 25, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1571, file: !139, discriminator: 2)
!1577 = !DILocation(line: 683, column: 25, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1572, file: !139, discriminator: 3)
!1579 = !DILocation(line: 684, column: 25, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1581, file: !139, discriminator: 1)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !139, line: 684, column: 25)
!1582 = distinct !DILexicalBlock(scope: !1520, file: !139, line: 684, column: 25)
!1583 = !DILocation(line: 684, column: 25, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1582, file: !139, discriminator: 1)
!1585 = !DILocation(line: 684, column: 25, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1581, file: !139, discriminator: 2)
!1587 = !DILocation(line: 684, column: 25, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1582, file: !139, discriminator: 3)
!1589 = !DILocation(line: 685, column: 38, scope: !1520)
!1590 = !DILocation(line: 685, column: 33, scope: !1520)
!1591 = !DILocation(line: 686, column: 23, scope: !1520)
!1592 = !DILocation(line: 687, column: 30, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1513, file: !139, line: 687, column: 30)
!1594 = !DILocation(line: 687, column: 30, scope: !1513)
!1595 = !DILocation(line: 689, column: 25, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1597, file: !139, discriminator: 1)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !139, line: 689, column: 25)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !139, line: 689, column: 25)
!1599 = distinct !DILexicalBlock(scope: !1593, file: !139, line: 688, column: 23)
!1600 = !DILocation(line: 689, column: 25, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1598, file: !139, discriminator: 1)
!1602 = !DILocation(line: 689, column: 25, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1597, file: !139, discriminator: 2)
!1604 = !DILocation(line: 689, column: 25, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1598, file: !139, discriminator: 3)
!1606 = !DILocation(line: 691, column: 23, scope: !1599)
!1607 = !DILocation(line: 692, column: 35, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1514, file: !139, line: 692, column: 25)
!1609 = !DILocation(line: 692, column: 30, scope: !1608)
!1610 = !DILocation(line: 692, column: 25, scope: !1514)
!1611 = !DILocation(line: 694, column: 21, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1613, file: !139, discriminator: 1)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !139, line: 694, column: 21)
!1614 = distinct !DILexicalBlock(scope: !1514, file: !139, line: 694, column: 21)
!1615 = !DILocation(line: 694, column: 21, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1613, file: !139, discriminator: 2)
!1617 = !DILocation(line: 694, column: 21, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1619, file: !139, discriminator: 4)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !139, line: 694, column: 21)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !139, line: 694, column: 21)
!1621 = distinct !DILexicalBlock(scope: !1613, file: !139, line: 694, column: 21)
!1622 = !DILocation(line: 694, column: 21, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1620, file: !139, discriminator: 4)
!1624 = !DILocation(line: 694, column: 21, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1619, file: !139, discriminator: 5)
!1626 = !DILocation(line: 694, column: 21, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1620, file: !139, discriminator: 6)
!1628 = !DILocation(line: 694, column: 21, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1630, file: !139, discriminator: 9)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !139, line: 694, column: 21)
!1631 = distinct !DILexicalBlock(scope: !1621, file: !139, line: 694, column: 21)
!1632 = !DILocation(line: 694, column: 21, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1631, file: !139, discriminator: 9)
!1634 = !DILocation(line: 694, column: 21, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1630, file: !139, discriminator: 10)
!1636 = !DILocation(line: 694, column: 21, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1631, file: !139, discriminator: 11)
!1638 = !DILocation(line: 694, column: 21, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1621, file: !139, discriminator: 13)
!1640 = !DILocation(line: 695, column: 21, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1642, file: !139, discriminator: 1)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !139, line: 695, column: 21)
!1643 = distinct !DILexicalBlock(scope: !1514, file: !139, line: 695, column: 21)
!1644 = !DILocation(line: 695, column: 21, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1643, file: !139, discriminator: 1)
!1646 = !DILocation(line: 695, column: 21, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1642, file: !139, discriminator: 2)
!1648 = !DILocation(line: 695, column: 21, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1643, file: !139, discriminator: 3)
!1650 = !DILocation(line: 696, column: 25, scope: !1514)
!1651 = !DILocation(line: 678, column: 17, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1515, file: !139, discriminator: 1)
!1653 = distinct !{!1653, !1654, !1655}
!1654 = !DILocation(line: 678, column: 17, scope: !1516)
!1655 = !DILocation(line: 697, column: 19, scope: !1516)
!1656 = !DILocation(line: 704, column: 34, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1060, file: !139, line: 704, column: 11)
!1658 = !DILocation(line: 706, column: 14, scope: !1657)
!1659 = !DILocation(line: 707, column: 14, scope: !1657)
!1660 = !DILocation(line: 707, column: 35, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1657, file: !139, discriminator: 1)
!1662 = !DILocation(line: 707, column: 17, scope: !1661)
!1663 = !DILocation(line: 707, column: 53, scope: !1661)
!1664 = !DILocation(line: 707, column: 47, scope: !1661)
!1665 = !DILocation(line: 707, column: 65, scope: !1661)
!1666 = !DILocation(line: 708, column: 15, scope: !1661)
!1667 = !DILocation(line: 708, column: 11, scope: !1657)
!1668 = !DILocation(line: 704, column: 11, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1060, file: !139, discriminator: 2)
!1670 = !DILocation(line: 712, column: 7, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1672, file: !139, discriminator: 1)
!1672 = distinct !DILexicalBlock(scope: !1060, file: !139, line: 712, column: 7)
!1673 = !DILocation(line: 712, column: 7, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !139, discriminator: 4)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !139, line: 712, column: 7)
!1676 = !DILocation(line: 712, column: 7, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1675, file: !139, discriminator: 3)
!1678 = !DILocation(line: 712, column: 7, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1680, file: !139, discriminator: 6)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !139, line: 712, column: 7)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !139, line: 712, column: 7)
!1682 = distinct !DILexicalBlock(scope: !1675, file: !139, line: 712, column: 7)
!1683 = !DILocation(line: 712, column: 7, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1681, file: !139, discriminator: 6)
!1685 = !DILocation(line: 712, column: 7, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1680, file: !139, discriminator: 7)
!1687 = !DILocation(line: 712, column: 7, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1681, file: !139, discriminator: 8)
!1689 = !DILocation(line: 712, column: 7, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1691, file: !139, discriminator: 11)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !139, line: 712, column: 7)
!1692 = distinct !DILexicalBlock(scope: !1682, file: !139, line: 712, column: 7)
!1693 = !DILocation(line: 712, column: 7, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1692, file: !139, discriminator: 11)
!1695 = !DILocation(line: 712, column: 7, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1691, file: !139, discriminator: 12)
!1697 = !DILocation(line: 712, column: 7, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1692, file: !139, discriminator: 13)
!1699 = !DILocation(line: 712, column: 7, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1701, file: !139, discriminator: 16)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !139, line: 712, column: 7)
!1702 = distinct !DILexicalBlock(scope: !1682, file: !139, line: 712, column: 7)
!1703 = !DILocation(line: 712, column: 7, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1702, file: !139, discriminator: 16)
!1705 = !DILocation(line: 712, column: 7, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1701, file: !139, discriminator: 17)
!1707 = !DILocation(line: 712, column: 7, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1702, file: !139, discriminator: 18)
!1709 = !DILocation(line: 712, column: 7, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1682, file: !139, discriminator: 20)
!1711 = !DILocation(line: 712, column: 7, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1713, file: !139, discriminator: 22)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !139, line: 712, column: 7)
!1714 = distinct !DILexicalBlock(scope: !1672, file: !139, line: 712, column: 7)
!1715 = !DILocation(line: 712, column: 7, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1714, file: !139, discriminator: 22)
!1717 = !DILocation(line: 712, column: 7, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1713, file: !139, discriminator: 23)
!1719 = !DILocation(line: 712, column: 7, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1714, file: !139, discriminator: 24)
!1721 = !DILocation(line: 715, column: 7, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1723, file: !139, discriminator: 1)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !139, line: 715, column: 7)
!1724 = distinct !DILexicalBlock(scope: !1060, file: !139, line: 715, column: 7)
!1725 = !DILocation(line: 715, column: 7, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1723, file: !139, discriminator: 2)
!1727 = !DILocation(line: 715, column: 7, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1729, file: !139, discriminator: 4)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !139, line: 715, column: 7)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !139, line: 715, column: 7)
!1731 = distinct !DILexicalBlock(scope: !1723, file: !139, line: 715, column: 7)
!1732 = !DILocation(line: 715, column: 7, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1730, file: !139, discriminator: 4)
!1734 = !DILocation(line: 715, column: 7, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1729, file: !139, discriminator: 5)
!1736 = !DILocation(line: 715, column: 7, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1730, file: !139, discriminator: 6)
!1738 = !DILocation(line: 715, column: 7, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1740, file: !139, discriminator: 9)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !139, line: 715, column: 7)
!1741 = distinct !DILexicalBlock(scope: !1731, file: !139, line: 715, column: 7)
!1742 = !DILocation(line: 715, column: 7, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1741, file: !139, discriminator: 9)
!1744 = !DILocation(line: 715, column: 7, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1740, file: !139, discriminator: 10)
!1746 = !DILocation(line: 715, column: 7, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1741, file: !139, discriminator: 11)
!1748 = !DILocation(line: 715, column: 7, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1731, file: !139, discriminator: 13)
!1750 = !DILocation(line: 716, column: 7, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1752, file: !139, discriminator: 1)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !139, line: 716, column: 7)
!1753 = distinct !DILexicalBlock(scope: !1060, file: !139, line: 716, column: 7)
!1754 = !DILocation(line: 716, column: 7, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1753, file: !139, discriminator: 1)
!1756 = !DILocation(line: 716, column: 7, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1752, file: !139, discriminator: 2)
!1758 = !DILocation(line: 716, column: 7, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1753, file: !139, discriminator: 3)
!1760 = !DILocation(line: 718, column: 13, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1060, file: !139, line: 718, column: 11)
!1762 = !DILocation(line: 718, column: 11, scope: !1060)
!1763 = !DILocation(line: 720, column: 5, scope: !1061)
!1764 = !DILocation(line: 392, column: 75, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1061, file: !139, discriminator: 5)
!1766 = !DILocation(line: 392, column: 3, scope: !1765)
!1767 = distinct !{!1767, !1768, !1769}
!1768 = !DILocation(line: 392, column: 3, scope: !1062)
!1769 = !DILocation(line: 720, column: 5, scope: !1062)
!1770 = !DILocation(line: 722, column: 11, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1033, file: !139, line: 722, column: 7)
!1772 = !DILocation(line: 722, column: 16, scope: !1771)
!1773 = !DILocation(line: 730, column: 51, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1033, file: !139, line: 730, column: 7)
!1775 = !DILocation(line: 731, column: 10, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1774, file: !139, discriminator: 1)
!1777 = !DILocation(line: 733, column: 11, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !139, line: 733, column: 11)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !139, line: 732, column: 5)
!1780 = !DILocation(line: 733, column: 11, scope: !1779)
!1781 = !DILocation(line: 734, column: 16, scope: !1778)
!1782 = !DILocation(line: 734, column: 9, scope: !1778)
!1783 = !DILocation(line: 738, column: 18, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1778, file: !139, line: 738, column: 16)
!1785 = !DILocation(line: 738, column: 32, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1784, file: !139, discriminator: 1)
!1787 = !DILocation(line: 738, column: 29, scope: !1784)
!1788 = !DILocation(line: 747, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1033, file: !139, line: 747, column: 7)
!1790 = !DILocation(line: 747, column: 20, scope: !1789)
!1791 = !DILocation(line: 748, column: 12, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1793, file: !139, discriminator: 1)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !139, line: 748, column: 5)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !139, line: 748, column: 5)
!1795 = !DILocation(line: 748, column: 5, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1794, file: !139, discriminator: 1)
!1797 = !DILocation(line: 749, column: 7, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1799, file: !139, discriminator: 1)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !139, line: 749, column: 7)
!1800 = distinct !DILexicalBlock(scope: !1793, file: !139, line: 749, column: 7)
!1801 = !DILocation(line: 749, column: 7, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1800, file: !139, discriminator: 1)
!1803 = !DILocation(line: 749, column: 7, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1799, file: !139, discriminator: 2)
!1805 = !DILocation(line: 749, column: 7, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1800, file: !139, discriminator: 3)
!1807 = !DILocation(line: 748, column: 39, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1793, file: !139, discriminator: 2)
!1809 = distinct !{!1809, !1810, !1811}
!1810 = !DILocation(line: 748, column: 5, scope: !1794)
!1811 = !DILocation(line: 749, column: 7, scope: !1794)
!1812 = !DILocation(line: 751, column: 11, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1033, file: !139, line: 751, column: 7)
!1814 = !DILocation(line: 751, column: 7, scope: !1033)
!1815 = !DILocation(line: 752, column: 5, scope: !1813)
!1816 = !DILocation(line: 752, column: 17, scope: !1813)
!1817 = !DILocation(line: 758, column: 21, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1033, file: !139, line: 758, column: 7)
!1819 = !DILocation(line: 758, column: 54, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1818, file: !139, discriminator: 1)
!1821 = !DILocation(line: 758, column: 51, scope: !1818)
!1822 = !DILocation(line: 762, column: 42, scope: !1033)
!1823 = !DILocation(line: 760, column: 10, scope: !1033)
!1824 = !DILocation(line: 760, column: 3, scope: !1033)
!1825 = !DILocation(line: 764, column: 1, scope: !1033)
!1826 = distinct !DISubprogram(name: "gettext_quote", scope: !139, file: !139, line: 199, type: !1827, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!20, !20, !100}
!1829 = !{!1830, !1831, !1832, !1833}
!1830 = !DILocalVariable(name: "msgid", arg: 1, scope: !1826, file: !139, line: 199, type: !20)
!1831 = !DILocalVariable(name: "s", arg: 2, scope: !1826, file: !139, line: 199, type: !100)
!1832 = !DILocalVariable(name: "translation", scope: !1826, file: !139, line: 201, type: !20)
!1833 = !DILocalVariable(name: "locale_code", scope: !1826, file: !139, line: 202, type: !20)
!1834 = !DILocation(line: 199, column: 28, scope: !1826)
!1835 = !DILocation(line: 199, column: 54, scope: !1826)
!1836 = !DILocation(line: 201, column: 29, scope: !1826)
!1837 = !DILocation(line: 201, column: 15, scope: !1826)
!1838 = !DILocation(line: 204, column: 19, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1826, file: !139, line: 204, column: 7)
!1840 = !DILocation(line: 204, column: 7, scope: !1826)
!1841 = !DILocation(line: 225, column: 17, scope: !1826)
!1842 = !DILocation(line: 202, column: 15, scope: !1826)
!1843 = !DILocalVariable(name: "s2", arg: 2, scope: !1844, file: !1845, line: 160, type: !20)
!1844 = distinct !DISubprogram(name: "strcaseeq0", scope: !1845, file: !1845, line: 160, type: !1846, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1848)
!1845 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!50, !20, !20, !10, !10, !10, !10, !10, !10, !10, !10, !10}
!1848 = !{!1849, !1843, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858}
!1849 = !DILocalVariable(name: "s1", arg: 1, scope: !1844, file: !1845, line: 160, type: !20)
!1850 = !DILocalVariable(name: "s20", arg: 3, scope: !1844, file: !1845, line: 160, type: !10)
!1851 = !DILocalVariable(name: "s21", arg: 4, scope: !1844, file: !1845, line: 160, type: !10)
!1852 = !DILocalVariable(name: "s22", arg: 5, scope: !1844, file: !1845, line: 160, type: !10)
!1853 = !DILocalVariable(name: "s23", arg: 6, scope: !1844, file: !1845, line: 160, type: !10)
!1854 = !DILocalVariable(name: "s24", arg: 7, scope: !1844, file: !1845, line: 160, type: !10)
!1855 = !DILocalVariable(name: "s25", arg: 8, scope: !1844, file: !1845, line: 160, type: !10)
!1856 = !DILocalVariable(name: "s26", arg: 9, scope: !1844, file: !1845, line: 160, type: !10)
!1857 = !DILocalVariable(name: "s27", arg: 10, scope: !1844, file: !1845, line: 160, type: !10)
!1858 = !DILocalVariable(name: "s28", arg: 11, scope: !1844, file: !1845, line: 160, type: !10)
!1859 = !DILocation(line: 160, column: 41, scope: !1844, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 226, column: 7, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1826, file: !139, line: 226, column: 7)
!1862 = !DILocation(line: 160, column: 120, scope: !1844, inlinedAt: !1860)
!1863 = !DILocation(line: 160, column: 130, scope: !1844, inlinedAt: !1860)
!1864 = !DILocation(line: 162, column: 7, scope: !1865, inlinedAt: !1860)
!1865 = !DILexicalBlockFile(scope: !1866, file: !1845, discriminator: 1)
!1866 = distinct !DILexicalBlock(scope: !1844, file: !1845, line: 162, column: 7)
!1867 = !DILocalVariable(name: "s2", arg: 2, scope: !1868, file: !1845, line: 146, type: !20)
!1868 = distinct !DISubprogram(name: "strcaseeq1", scope: !1845, file: !1845, line: 146, type: !1869, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1871)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!50, !20, !20, !10, !10, !10, !10, !10, !10, !10, !10}
!1871 = !{!1872, !1867, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880}
!1872 = !DILocalVariable(name: "s1", arg: 1, scope: !1868, file: !1845, line: 146, type: !20)
!1873 = !DILocalVariable(name: "s21", arg: 3, scope: !1868, file: !1845, line: 146, type: !10)
!1874 = !DILocalVariable(name: "s22", arg: 4, scope: !1868, file: !1845, line: 146, type: !10)
!1875 = !DILocalVariable(name: "s23", arg: 5, scope: !1868, file: !1845, line: 146, type: !10)
!1876 = !DILocalVariable(name: "s24", arg: 6, scope: !1868, file: !1845, line: 146, type: !10)
!1877 = !DILocalVariable(name: "s25", arg: 7, scope: !1868, file: !1845, line: 146, type: !10)
!1878 = !DILocalVariable(name: "s26", arg: 8, scope: !1868, file: !1845, line: 146, type: !10)
!1879 = !DILocalVariable(name: "s27", arg: 9, scope: !1868, file: !1845, line: 146, type: !10)
!1880 = !DILocalVariable(name: "s28", arg: 10, scope: !1868, file: !1845, line: 146, type: !10)
!1881 = !DILocation(line: 146, column: 41, scope: !1868, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 167, column: 16, scope: !1883, inlinedAt: !1860)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !1845, line: 164, column: 11)
!1884 = distinct !DILexicalBlock(scope: !1866, file: !1845, line: 163, column: 5)
!1885 = !DILocation(line: 146, column: 110, scope: !1868, inlinedAt: !1882)
!1886 = !DILocation(line: 146, column: 120, scope: !1868, inlinedAt: !1882)
!1887 = !DILocation(line: 148, column: 7, scope: !1888, inlinedAt: !1882)
!1888 = !DILexicalBlockFile(scope: !1889, file: !1845, discriminator: 1)
!1889 = distinct !DILexicalBlock(scope: !1868, file: !1845, line: 148, column: 7)
!1890 = !DILocalVariable(name: "s2", arg: 2, scope: !1891, file: !1845, line: 132, type: !20)
!1891 = distinct !DISubprogram(name: "strcaseeq2", scope: !1845, file: !1845, line: 132, type: !1892, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1894)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!50, !20, !20, !10, !10, !10, !10, !10, !10, !10}
!1894 = !{!1895, !1890, !1896, !1897, !1898, !1899, !1900, !1901, !1902}
!1895 = !DILocalVariable(name: "s1", arg: 1, scope: !1891, file: !1845, line: 132, type: !20)
!1896 = !DILocalVariable(name: "s22", arg: 3, scope: !1891, file: !1845, line: 132, type: !10)
!1897 = !DILocalVariable(name: "s23", arg: 4, scope: !1891, file: !1845, line: 132, type: !10)
!1898 = !DILocalVariable(name: "s24", arg: 5, scope: !1891, file: !1845, line: 132, type: !10)
!1899 = !DILocalVariable(name: "s25", arg: 6, scope: !1891, file: !1845, line: 132, type: !10)
!1900 = !DILocalVariable(name: "s26", arg: 7, scope: !1891, file: !1845, line: 132, type: !10)
!1901 = !DILocalVariable(name: "s27", arg: 8, scope: !1891, file: !1845, line: 132, type: !10)
!1902 = !DILocalVariable(name: "s28", arg: 9, scope: !1891, file: !1845, line: 132, type: !10)
!1903 = !DILocation(line: 132, column: 41, scope: !1891, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 153, column: 16, scope: !1905, inlinedAt: !1882)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !1845, line: 150, column: 11)
!1906 = distinct !DILexicalBlock(scope: !1889, file: !1845, line: 149, column: 5)
!1907 = !DILocation(line: 132, column: 100, scope: !1891, inlinedAt: !1904)
!1908 = !DILocation(line: 132, column: 110, scope: !1891, inlinedAt: !1904)
!1909 = !DILocation(line: 134, column: 7, scope: !1910, inlinedAt: !1904)
!1910 = !DILexicalBlockFile(scope: !1911, file: !1845, discriminator: 1)
!1911 = distinct !DILexicalBlock(scope: !1891, file: !1845, line: 134, column: 7)
!1912 = !DILocalVariable(name: "s2", arg: 2, scope: !1913, file: !1845, line: 118, type: !20)
!1913 = distinct !DISubprogram(name: "strcaseeq3", scope: !1845, file: !1845, line: 118, type: !1914, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1916)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!50, !20, !20, !10, !10, !10, !10, !10, !10}
!1916 = !{!1917, !1912, !1918, !1919, !1920, !1921, !1922, !1923}
!1917 = !DILocalVariable(name: "s1", arg: 1, scope: !1913, file: !1845, line: 118, type: !20)
!1918 = !DILocalVariable(name: "s23", arg: 3, scope: !1913, file: !1845, line: 118, type: !10)
!1919 = !DILocalVariable(name: "s24", arg: 4, scope: !1913, file: !1845, line: 118, type: !10)
!1920 = !DILocalVariable(name: "s25", arg: 5, scope: !1913, file: !1845, line: 118, type: !10)
!1921 = !DILocalVariable(name: "s26", arg: 6, scope: !1913, file: !1845, line: 118, type: !10)
!1922 = !DILocalVariable(name: "s27", arg: 7, scope: !1913, file: !1845, line: 118, type: !10)
!1923 = !DILocalVariable(name: "s28", arg: 8, scope: !1913, file: !1845, line: 118, type: !10)
!1924 = !DILocation(line: 118, column: 41, scope: !1913, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 139, column: 16, scope: !1926, inlinedAt: !1904)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !1845, line: 136, column: 11)
!1927 = distinct !DILexicalBlock(scope: !1911, file: !1845, line: 135, column: 5)
!1928 = !DILocation(line: 118, column: 90, scope: !1913, inlinedAt: !1925)
!1929 = !DILocation(line: 118, column: 100, scope: !1913, inlinedAt: !1925)
!1930 = !DILocation(line: 120, column: 7, scope: !1931, inlinedAt: !1925)
!1931 = !DILexicalBlockFile(scope: !1932, file: !1845, discriminator: 2)
!1932 = distinct !DILexicalBlock(scope: !1913, file: !1845, line: 120, column: 7)
!1933 = !DILocation(line: 120, column: 7, scope: !1934, inlinedAt: !1925)
!1934 = !DILexicalBlockFile(scope: !1913, file: !1845, discriminator: 2)
!1935 = !DILocalVariable(name: "s2", arg: 2, scope: !1936, file: !1845, line: 104, type: !20)
!1936 = distinct !DISubprogram(name: "strcaseeq4", scope: !1845, file: !1845, line: 104, type: !1937, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!50, !20, !20, !10, !10, !10, !10, !10}
!1939 = !{!1940, !1935, !1941, !1942, !1943, !1944, !1945}
!1940 = !DILocalVariable(name: "s1", arg: 1, scope: !1936, file: !1845, line: 104, type: !20)
!1941 = !DILocalVariable(name: "s24", arg: 3, scope: !1936, file: !1845, line: 104, type: !10)
!1942 = !DILocalVariable(name: "s25", arg: 4, scope: !1936, file: !1845, line: 104, type: !10)
!1943 = !DILocalVariable(name: "s26", arg: 5, scope: !1936, file: !1845, line: 104, type: !10)
!1944 = !DILocalVariable(name: "s27", arg: 6, scope: !1936, file: !1845, line: 104, type: !10)
!1945 = !DILocalVariable(name: "s28", arg: 7, scope: !1936, file: !1845, line: 104, type: !10)
!1946 = !DILocation(line: 104, column: 41, scope: !1936, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 125, column: 16, scope: !1948, inlinedAt: !1925)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !1845, line: 122, column: 11)
!1949 = distinct !DILexicalBlock(scope: !1932, file: !1845, line: 121, column: 5)
!1950 = !DILocation(line: 104, column: 80, scope: !1936, inlinedAt: !1947)
!1951 = !DILocation(line: 104, column: 90, scope: !1936, inlinedAt: !1947)
!1952 = !DILocation(line: 106, column: 7, scope: !1953, inlinedAt: !1947)
!1953 = !DILexicalBlockFile(scope: !1954, file: !1845, discriminator: 2)
!1954 = distinct !DILexicalBlock(scope: !1936, file: !1845, line: 106, column: 7)
!1955 = !DILocation(line: 106, column: 7, scope: !1956, inlinedAt: !1947)
!1956 = !DILexicalBlockFile(scope: !1936, file: !1845, discriminator: 2)
!1957 = !DILocalVariable(name: "s2", arg: 2, scope: !1958, file: !1845, line: 90, type: !20)
!1958 = distinct !DISubprogram(name: "strcaseeq5", scope: !1845, file: !1845, line: 90, type: !1959, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1961)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!50, !20, !20, !10, !10, !10, !10}
!1961 = !{!1962, !1957, !1963, !1964, !1965, !1966}
!1962 = !DILocalVariable(name: "s1", arg: 1, scope: !1958, file: !1845, line: 90, type: !20)
!1963 = !DILocalVariable(name: "s25", arg: 3, scope: !1958, file: !1845, line: 90, type: !10)
!1964 = !DILocalVariable(name: "s26", arg: 4, scope: !1958, file: !1845, line: 90, type: !10)
!1965 = !DILocalVariable(name: "s27", arg: 5, scope: !1958, file: !1845, line: 90, type: !10)
!1966 = !DILocalVariable(name: "s28", arg: 6, scope: !1958, file: !1845, line: 90, type: !10)
!1967 = !DILocation(line: 90, column: 41, scope: !1958, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 111, column: 16, scope: !1969, inlinedAt: !1947)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !1845, line: 108, column: 11)
!1970 = distinct !DILexicalBlock(scope: !1954, file: !1845, line: 107, column: 5)
!1971 = !DILocation(line: 90, column: 70, scope: !1958, inlinedAt: !1968)
!1972 = !DILocation(line: 90, column: 80, scope: !1958, inlinedAt: !1968)
!1973 = !DILocation(line: 92, column: 7, scope: !1974, inlinedAt: !1968)
!1974 = !DILexicalBlockFile(scope: !1975, file: !1845, discriminator: 2)
!1975 = distinct !DILexicalBlock(scope: !1958, file: !1845, line: 92, column: 7)
!1976 = !DILocation(line: 92, column: 7, scope: !1977, inlinedAt: !1968)
!1977 = !DILexicalBlockFile(scope: !1958, file: !1845, discriminator: 2)
!1978 = !DILocation(line: 227, column: 12, scope: !1861)
!1979 = !DILocation(line: 227, column: 21, scope: !1861)
!1980 = !DILocation(line: 227, column: 5, scope: !1861)
!1981 = !DILocation(line: 146, column: 41, scope: !1868, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 167, column: 16, scope: !1883, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 228, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1826, file: !139, line: 228, column: 7)
!1985 = !DILocation(line: 146, column: 110, scope: !1868, inlinedAt: !1982)
!1986 = !DILocation(line: 146, column: 120, scope: !1868, inlinedAt: !1982)
!1987 = !DILocation(line: 148, column: 7, scope: !1888, inlinedAt: !1982)
!1988 = !DILocation(line: 132, column: 41, scope: !1891, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 153, column: 16, scope: !1905, inlinedAt: !1982)
!1990 = !DILocation(line: 132, column: 100, scope: !1891, inlinedAt: !1989)
!1991 = !DILocation(line: 132, column: 110, scope: !1891, inlinedAt: !1989)
!1992 = !DILocation(line: 134, column: 7, scope: !1993, inlinedAt: !1989)
!1993 = !DILexicalBlockFile(scope: !1911, file: !1845, discriminator: 2)
!1994 = !DILocation(line: 134, column: 7, scope: !1995, inlinedAt: !1989)
!1995 = !DILexicalBlockFile(scope: !1891, file: !1845, discriminator: 2)
!1996 = !DILocation(line: 118, column: 41, scope: !1913, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 139, column: 16, scope: !1926, inlinedAt: !1989)
!1998 = !DILocation(line: 118, column: 90, scope: !1913, inlinedAt: !1997)
!1999 = !DILocation(line: 118, column: 100, scope: !1913, inlinedAt: !1997)
!2000 = !DILocation(line: 120, column: 7, scope: !1931, inlinedAt: !1997)
!2001 = !DILocation(line: 120, column: 7, scope: !1934, inlinedAt: !1997)
!2002 = !DILocation(line: 104, column: 41, scope: !1936, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 125, column: 16, scope: !1948, inlinedAt: !1997)
!2004 = !DILocation(line: 104, column: 80, scope: !1936, inlinedAt: !2003)
!2005 = !DILocation(line: 104, column: 90, scope: !1936, inlinedAt: !2003)
!2006 = !DILocation(line: 106, column: 7, scope: !1953, inlinedAt: !2003)
!2007 = !DILocation(line: 106, column: 7, scope: !1956, inlinedAt: !2003)
!2008 = !DILocation(line: 90, column: 41, scope: !1958, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 111, column: 16, scope: !1969, inlinedAt: !2003)
!2010 = !DILocation(line: 90, column: 70, scope: !1958, inlinedAt: !2009)
!2011 = !DILocation(line: 90, column: 80, scope: !1958, inlinedAt: !2009)
!2012 = !DILocation(line: 92, column: 7, scope: !1974, inlinedAt: !2009)
!2013 = !DILocation(line: 92, column: 7, scope: !1977, inlinedAt: !2009)
!2014 = !DILocalVariable(name: "s2", arg: 2, scope: !2015, file: !1845, line: 76, type: !20)
!2015 = distinct !DISubprogram(name: "strcaseeq6", scope: !1845, file: !1845, line: 76, type: !2016, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!50, !20, !20, !10, !10, !10}
!2018 = !{!2019, !2014, !2020, !2021, !2022}
!2019 = !DILocalVariable(name: "s1", arg: 1, scope: !2015, file: !1845, line: 76, type: !20)
!2020 = !DILocalVariable(name: "s26", arg: 3, scope: !2015, file: !1845, line: 76, type: !10)
!2021 = !DILocalVariable(name: "s27", arg: 4, scope: !2015, file: !1845, line: 76, type: !10)
!2022 = !DILocalVariable(name: "s28", arg: 5, scope: !2015, file: !1845, line: 76, type: !10)
!2023 = !DILocation(line: 76, column: 41, scope: !2015, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 97, column: 16, scope: !2025, inlinedAt: !2009)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !1845, line: 94, column: 11)
!2026 = distinct !DILexicalBlock(scope: !1975, file: !1845, line: 93, column: 5)
!2027 = !DILocation(line: 76, column: 60, scope: !2015, inlinedAt: !2024)
!2028 = !DILocation(line: 76, column: 70, scope: !2015, inlinedAt: !2024)
!2029 = !DILocation(line: 78, column: 7, scope: !2030, inlinedAt: !2024)
!2030 = !DILexicalBlockFile(scope: !2031, file: !1845, discriminator: 2)
!2031 = distinct !DILexicalBlock(scope: !2015, file: !1845, line: 78, column: 7)
!2032 = !DILocation(line: 78, column: 7, scope: !2033, inlinedAt: !2024)
!2033 = !DILexicalBlockFile(scope: !2015, file: !1845, discriminator: 2)
!2034 = !DILocalVariable(name: "s2", arg: 2, scope: !2035, file: !1845, line: 62, type: !20)
!2035 = distinct !DISubprogram(name: "strcaseeq7", scope: !1845, file: !1845, line: 62, type: !2036, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!50, !20, !20, !10, !10}
!2038 = !{!2039, !2034, !2040, !2041}
!2039 = !DILocalVariable(name: "s1", arg: 1, scope: !2035, file: !1845, line: 62, type: !20)
!2040 = !DILocalVariable(name: "s27", arg: 3, scope: !2035, file: !1845, line: 62, type: !10)
!2041 = !DILocalVariable(name: "s28", arg: 4, scope: !2035, file: !1845, line: 62, type: !10)
!2042 = !DILocation(line: 62, column: 41, scope: !2035, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 83, column: 16, scope: !2044, inlinedAt: !2024)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !1845, line: 80, column: 11)
!2045 = distinct !DILexicalBlock(scope: !2031, file: !1845, line: 79, column: 5)
!2046 = !DILocation(line: 62, column: 50, scope: !2035, inlinedAt: !2043)
!2047 = !DILocation(line: 62, column: 60, scope: !2035, inlinedAt: !2043)
!2048 = !DILocation(line: 64, column: 7, scope: !2049, inlinedAt: !2043)
!2049 = !DILexicalBlockFile(scope: !2050, file: !1845, discriminator: 2)
!2050 = distinct !DILexicalBlock(scope: !2035, file: !1845, line: 64, column: 7)
!2051 = !DILocation(line: 228, column: 7, scope: !1826)
!2052 = !DILocation(line: 229, column: 12, scope: !1984)
!2053 = !DILocation(line: 229, column: 21, scope: !1984)
!2054 = !DILocation(line: 229, column: 5, scope: !1984)
!2055 = !DILocation(line: 231, column: 13, scope: !1826)
!2056 = !DILocation(line: 231, column: 11, scope: !1826)
!2057 = !DILocation(line: 231, column: 3, scope: !1826)
!2058 = !DILocation(line: 232, column: 1, scope: !1826)
!2059 = distinct !DISubprogram(name: "quotearg_alloc", scope: !139, file: !139, line: 791, type: !2060, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!9, !20, !12, !901}
!2062 = !{!2063, !2064, !2065}
!2063 = !DILocalVariable(name: "arg", arg: 1, scope: !2059, file: !139, line: 791, type: !20)
!2064 = !DILocalVariable(name: "argsize", arg: 2, scope: !2059, file: !139, line: 791, type: !12)
!2065 = !DILocalVariable(name: "o", arg: 3, scope: !2059, file: !139, line: 792, type: !901)
!2066 = !DILocation(line: 791, column: 29, scope: !2059)
!2067 = !DILocation(line: 791, column: 41, scope: !2059)
!2068 = !DILocation(line: 792, column: 47, scope: !2059)
!2069 = !DILocalVariable(name: "arg", arg: 1, scope: !2070, file: !139, line: 804, type: !20)
!2070 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !139, file: !139, line: 804, type: !2071, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2073)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!9, !20, !12, !552, !901}
!2073 = !{!2069, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081}
!2074 = !DILocalVariable(name: "argsize", arg: 2, scope: !2070, file: !139, line: 804, type: !12)
!2075 = !DILocalVariable(name: "size", arg: 3, scope: !2070, file: !139, line: 804, type: !552)
!2076 = !DILocalVariable(name: "o", arg: 4, scope: !2070, file: !139, line: 805, type: !901)
!2077 = !DILocalVariable(name: "p", scope: !2070, file: !139, line: 807, type: !901)
!2078 = !DILocalVariable(name: "e", scope: !2070, file: !139, line: 808, type: !50)
!2079 = !DILocalVariable(name: "flags", scope: !2070, file: !139, line: 810, type: !50)
!2080 = !DILocalVariable(name: "bufsize", scope: !2070, file: !139, line: 811, type: !12)
!2081 = !DILocalVariable(name: "buf", scope: !2070, file: !139, line: 815, type: !9)
!2082 = !DILocation(line: 804, column: 33, scope: !2070, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 794, column: 10, scope: !2059)
!2084 = !DILocation(line: 804, column: 45, scope: !2070, inlinedAt: !2083)
!2085 = !DILocation(line: 804, column: 62, scope: !2070, inlinedAt: !2083)
!2086 = !DILocation(line: 805, column: 51, scope: !2070, inlinedAt: !2083)
!2087 = !DILocation(line: 807, column: 37, scope: !2070, inlinedAt: !2083)
!2088 = !DILocation(line: 807, column: 33, scope: !2070, inlinedAt: !2083)
!2089 = !DILocation(line: 808, column: 11, scope: !2070, inlinedAt: !2083)
!2090 = !DILocation(line: 808, column: 7, scope: !2070, inlinedAt: !2083)
!2091 = !DILocation(line: 810, column: 18, scope: !2070, inlinedAt: !2083)
!2092 = !DILocation(line: 810, column: 24, scope: !2070, inlinedAt: !2083)
!2093 = !DILocation(line: 810, column: 7, scope: !2070, inlinedAt: !2083)
!2094 = !DILocation(line: 811, column: 69, scope: !2070, inlinedAt: !2083)
!2095 = !DILocation(line: 812, column: 53, scope: !2070, inlinedAt: !2083)
!2096 = !DILocation(line: 813, column: 49, scope: !2070, inlinedAt: !2083)
!2097 = !DILocation(line: 814, column: 49, scope: !2070, inlinedAt: !2083)
!2098 = !DILocation(line: 811, column: 20, scope: !2070, inlinedAt: !2083)
!2099 = !DILocation(line: 814, column: 62, scope: !2070, inlinedAt: !2083)
!2100 = !DILocation(line: 811, column: 10, scope: !2070, inlinedAt: !2083)
!2101 = !DILocalVariable(name: "n", arg: 1, scope: !2102, file: !548, line: 220, type: !12)
!2102 = distinct !DISubprogram(name: "xcharalloc", scope: !548, file: !548, line: 220, type: !2103, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!9, !12}
!2105 = !{!2101}
!2106 = !DILocation(line: 220, column: 20, scope: !2102, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 815, column: 15, scope: !2070, inlinedAt: !2083)
!2108 = !DILocation(line: 222, column: 10, scope: !2102, inlinedAt: !2107)
!2109 = !DILocation(line: 815, column: 9, scope: !2070, inlinedAt: !2083)
!2110 = !DILocation(line: 816, column: 60, scope: !2070, inlinedAt: !2083)
!2111 = !DILocation(line: 818, column: 32, scope: !2070, inlinedAt: !2083)
!2112 = !DILocation(line: 818, column: 47, scope: !2070, inlinedAt: !2083)
!2113 = !DILocation(line: 816, column: 3, scope: !2070, inlinedAt: !2083)
!2114 = !DILocation(line: 819, column: 9, scope: !2070, inlinedAt: !2083)
!2115 = !DILocation(line: 794, column: 3, scope: !2059)
!2116 = !DILocation(line: 804, column: 33, scope: !2070)
!2117 = !DILocation(line: 804, column: 45, scope: !2070)
!2118 = !DILocation(line: 804, column: 62, scope: !2070)
!2119 = !DILocation(line: 805, column: 51, scope: !2070)
!2120 = !DILocation(line: 807, column: 37, scope: !2070)
!2121 = !DILocation(line: 807, column: 33, scope: !2070)
!2122 = !DILocation(line: 808, column: 11, scope: !2070)
!2123 = !DILocation(line: 808, column: 7, scope: !2070)
!2124 = !DILocation(line: 810, column: 18, scope: !2070)
!2125 = !DILocation(line: 810, column: 27, scope: !2070)
!2126 = !DILocation(line: 810, column: 24, scope: !2070)
!2127 = !DILocation(line: 810, column: 7, scope: !2070)
!2128 = !DILocation(line: 811, column: 69, scope: !2070)
!2129 = !DILocation(line: 812, column: 53, scope: !2070)
!2130 = !DILocation(line: 813, column: 49, scope: !2070)
!2131 = !DILocation(line: 814, column: 49, scope: !2070)
!2132 = !DILocation(line: 811, column: 20, scope: !2070)
!2133 = !DILocation(line: 814, column: 62, scope: !2070)
!2134 = !DILocation(line: 811, column: 10, scope: !2070)
!2135 = !DILocation(line: 220, column: 20, scope: !2102, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 815, column: 15, scope: !2070)
!2137 = !DILocation(line: 222, column: 10, scope: !2102, inlinedAt: !2136)
!2138 = !DILocation(line: 815, column: 9, scope: !2070)
!2139 = !DILocation(line: 816, column: 60, scope: !2070)
!2140 = !DILocation(line: 818, column: 32, scope: !2070)
!2141 = !DILocation(line: 818, column: 47, scope: !2070)
!2142 = !DILocation(line: 816, column: 3, scope: !2070)
!2143 = !DILocation(line: 819, column: 9, scope: !2070)
!2144 = !DILocation(line: 820, column: 7, scope: !2070)
!2145 = !DILocation(line: 821, column: 11, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2070, file: !139, line: 820, column: 7)
!2147 = !{!2148, !2148, i64 0}
!2148 = !{!"long", !599, i64 0}
!2149 = !DILocation(line: 821, column: 5, scope: !2146)
!2150 = !DILocation(line: 822, column: 3, scope: !2070)
!2151 = distinct !DISubprogram(name: "quotearg_free", scope: !139, file: !139, line: 840, type: !799, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2152)
!2152 = !{!2153, !2154}
!2153 = !DILocalVariable(name: "sv", scope: !2151, file: !139, line: 842, type: !166)
!2154 = !DILocalVariable(name: "i", scope: !2151, file: !139, line: 843, type: !50)
!2155 = !DILocation(line: 842, column: 24, scope: !2151)
!2156 = !DILocation(line: 842, column: 19, scope: !2151)
!2157 = !DILocation(line: 843, column: 7, scope: !2151)
!2158 = !DILocation(line: 844, column: 19, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2160, file: !139, discriminator: 1)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !139, line: 844, column: 3)
!2161 = distinct !DILexicalBlock(scope: !2151, file: !139, line: 844, column: 3)
!2162 = !DILocation(line: 844, column: 17, scope: !2159)
!2163 = !DILocation(line: 844, column: 3, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2161, file: !139, discriminator: 1)
!2165 = !DILocation(line: 845, column: 17, scope: !2160)
!2166 = !{!2167, !598, i64 8}
!2167 = !{!"slotvec", !2148, i64 0, !598, i64 8}
!2168 = !DILocation(line: 845, column: 5, scope: !2160)
!2169 = !DILocation(line: 844, column: 28, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2160, file: !139, discriminator: 2)
!2171 = distinct !{!2171, !2172, !2173}
!2172 = !DILocation(line: 844, column: 3, scope: !2161)
!2173 = !DILocation(line: 845, column: 20, scope: !2161)
!2174 = !DILocation(line: 846, column: 13, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2151, file: !139, line: 846, column: 7)
!2176 = !DILocation(line: 846, column: 17, scope: !2175)
!2177 = !DILocation(line: 846, column: 7, scope: !2151)
!2178 = !DILocation(line: 848, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !139, line: 847, column: 5)
!2180 = !DILocation(line: 849, column: 21, scope: !2179)
!2181 = !{!2167, !2148, i64 0}
!2182 = !DILocation(line: 850, column: 20, scope: !2179)
!2183 = !DILocation(line: 851, column: 5, scope: !2179)
!2184 = !DILocation(line: 852, column: 10, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2151, file: !139, line: 852, column: 7)
!2186 = !DILocation(line: 852, column: 7, scope: !2151)
!2187 = !DILocation(line: 854, column: 13, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2185, file: !139, line: 853, column: 5)
!2189 = !DILocation(line: 854, column: 7, scope: !2188)
!2190 = !DILocation(line: 855, column: 15, scope: !2188)
!2191 = !DILocation(line: 856, column: 5, scope: !2188)
!2192 = !DILocation(line: 857, column: 10, scope: !2151)
!2193 = !DILocation(line: 858, column: 1, scope: !2151)
!2194 = distinct !DISubprogram(name: "quotearg_n", scope: !139, file: !139, line: 922, type: !2195, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!9, !50, !20}
!2197 = !{!2198, !2199}
!2198 = !DILocalVariable(name: "n", arg: 1, scope: !2194, file: !139, line: 922, type: !50)
!2199 = !DILocalVariable(name: "arg", arg: 2, scope: !2194, file: !139, line: 922, type: !20)
!2200 = !DILocation(line: 922, column: 17, scope: !2194)
!2201 = !DILocation(line: 922, column: 32, scope: !2194)
!2202 = !DILocation(line: 924, column: 10, scope: !2194)
!2203 = !DILocation(line: 924, column: 3, scope: !2194)
!2204 = distinct !DISubprogram(name: "quotearg_n_options", scope: !139, file: !139, line: 869, type: !2205, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!9, !50, !20, !12, !901}
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214, !2217, !2219, !2220, !2221}
!2208 = !DILocalVariable(name: "n", arg: 1, scope: !2204, file: !139, line: 869, type: !50)
!2209 = !DILocalVariable(name: "arg", arg: 2, scope: !2204, file: !139, line: 869, type: !20)
!2210 = !DILocalVariable(name: "argsize", arg: 3, scope: !2204, file: !139, line: 869, type: !12)
!2211 = !DILocalVariable(name: "options", arg: 4, scope: !2204, file: !139, line: 870, type: !901)
!2212 = !DILocalVariable(name: "e", scope: !2204, file: !139, line: 872, type: !50)
!2213 = !DILocalVariable(name: "sv", scope: !2204, file: !139, line: 874, type: !166)
!2214 = !DILocalVariable(name: "preallocated", scope: !2215, file: !139, line: 881, type: !80)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !139, line: 880, column: 5)
!2216 = distinct !DILexicalBlock(scope: !2204, file: !139, line: 879, column: 7)
!2217 = !DILocalVariable(name: "size", scope: !2218, file: !139, line: 894, type: !12)
!2218 = distinct !DILexicalBlock(scope: !2204, file: !139, line: 893, column: 3)
!2219 = !DILocalVariable(name: "val", scope: !2218, file: !139, line: 895, type: !9)
!2220 = !DILocalVariable(name: "flags", scope: !2218, file: !139, line: 897, type: !50)
!2221 = !DILocalVariable(name: "qsize", scope: !2218, file: !139, line: 898, type: !12)
!2222 = !DILocation(line: 869, column: 25, scope: !2204)
!2223 = !DILocation(line: 869, column: 40, scope: !2204)
!2224 = !DILocation(line: 869, column: 52, scope: !2204)
!2225 = !DILocation(line: 870, column: 51, scope: !2204)
!2226 = !DILocation(line: 872, column: 11, scope: !2204)
!2227 = !DILocation(line: 872, column: 7, scope: !2204)
!2228 = !DILocation(line: 874, column: 24, scope: !2204)
!2229 = !DILocation(line: 874, column: 19, scope: !2204)
!2230 = !DILocation(line: 876, column: 9, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2204, file: !139, line: 876, column: 7)
!2232 = !DILocation(line: 876, column: 7, scope: !2204)
!2233 = !DILocation(line: 877, column: 5, scope: !2231)
!2234 = !DILocation(line: 879, column: 7, scope: !2216)
!2235 = !DILocation(line: 879, column: 14, scope: !2216)
!2236 = !DILocation(line: 879, column: 7, scope: !2204)
!2237 = !DILocation(line: 881, column: 31, scope: !2215)
!2238 = !DILocation(line: 883, column: 67, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2215, file: !139, line: 883, column: 11)
!2240 = !DILocation(line: 883, column: 11, scope: !2215)
!2241 = !DILocation(line: 884, column: 9, scope: !2239)
!2242 = !DILocation(line: 886, column: 32, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2215, file: !139, discriminator: 3)
!2244 = !DILocation(line: 886, column: 61, scope: !2243)
!2245 = !DILocation(line: 886, column: 58, scope: !2243)
!2246 = !DILocation(line: 886, column: 66, scope: !2243)
!2247 = !DILocation(line: 886, column: 22, scope: !2243)
!2248 = !DILocation(line: 886, column: 15, scope: !2243)
!2249 = !DILocation(line: 887, column: 11, scope: !2215)
!2250 = !DILocation(line: 888, column: 15, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2215, file: !139, line: 887, column: 11)
!2252 = !{i64 0, i64 8, !2147, i64 8, i64 8, !597}
!2253 = !DILocation(line: 888, column: 9, scope: !2251)
!2254 = !DILocation(line: 889, column: 20, scope: !2215)
!2255 = !DILocation(line: 889, column: 18, scope: !2215)
!2256 = !DILocation(line: 889, column: 7, scope: !2215)
!2257 = !DILocation(line: 889, column: 38, scope: !2215)
!2258 = !DILocation(line: 889, column: 31, scope: !2215)
!2259 = !DILocation(line: 889, column: 48, scope: !2215)
!2260 = !DILocation(line: 890, column: 14, scope: !2215)
!2261 = !DILocation(line: 891, column: 5, scope: !2215)
!2262 = !DILocation(line: 894, column: 19, scope: !2218)
!2263 = !DILocation(line: 894, column: 25, scope: !2218)
!2264 = !DILocation(line: 894, column: 12, scope: !2218)
!2265 = !DILocation(line: 895, column: 23, scope: !2218)
!2266 = !DILocation(line: 895, column: 11, scope: !2218)
!2267 = !DILocation(line: 897, column: 26, scope: !2218)
!2268 = !DILocation(line: 897, column: 32, scope: !2218)
!2269 = !DILocation(line: 897, column: 9, scope: !2218)
!2270 = !DILocation(line: 899, column: 55, scope: !2218)
!2271 = !DILocation(line: 900, column: 46, scope: !2218)
!2272 = !DILocation(line: 901, column: 55, scope: !2218)
!2273 = !DILocation(line: 902, column: 55, scope: !2218)
!2274 = !DILocation(line: 898, column: 20, scope: !2218)
!2275 = !DILocation(line: 898, column: 12, scope: !2218)
!2276 = !DILocation(line: 904, column: 14, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2218, file: !139, line: 904, column: 9)
!2278 = !DILocation(line: 904, column: 9, scope: !2218)
!2279 = !DILocation(line: 906, column: 35, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !139, line: 905, column: 7)
!2281 = !DILocation(line: 906, column: 20, scope: !2280)
!2282 = !DILocation(line: 907, column: 17, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !139, line: 907, column: 13)
!2284 = !DILocation(line: 907, column: 13, scope: !2280)
!2285 = !DILocation(line: 908, column: 11, scope: !2283)
!2286 = !DILocation(line: 220, column: 20, scope: !2102, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 909, column: 27, scope: !2280)
!2288 = !DILocation(line: 222, column: 10, scope: !2102, inlinedAt: !2287)
!2289 = !DILocation(line: 909, column: 19, scope: !2280)
!2290 = !DILocation(line: 910, column: 69, scope: !2280)
!2291 = !DILocation(line: 912, column: 44, scope: !2280)
!2292 = !DILocation(line: 913, column: 44, scope: !2280)
!2293 = !DILocation(line: 910, column: 9, scope: !2280)
!2294 = !DILocation(line: 914, column: 7, scope: !2280)
!2295 = !DILocation(line: 916, column: 11, scope: !2218)
!2296 = !DILocation(line: 917, column: 5, scope: !2218)
!2297 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !139, file: !139, line: 928, type: !2298, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!9, !50, !20, !12}
!2300 = !{!2301, !2302, !2303}
!2301 = !DILocalVariable(name: "n", arg: 1, scope: !2297, file: !139, line: 928, type: !50)
!2302 = !DILocalVariable(name: "arg", arg: 2, scope: !2297, file: !139, line: 928, type: !20)
!2303 = !DILocalVariable(name: "argsize", arg: 3, scope: !2297, file: !139, line: 928, type: !12)
!2304 = !DILocation(line: 928, column: 21, scope: !2297)
!2305 = !DILocation(line: 928, column: 36, scope: !2297)
!2306 = !DILocation(line: 928, column: 48, scope: !2297)
!2307 = !DILocation(line: 930, column: 10, scope: !2297)
!2308 = !DILocation(line: 930, column: 3, scope: !2297)
!2309 = distinct !DISubprogram(name: "quotearg", scope: !139, file: !139, line: 934, type: !2310, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2312)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!9, !20}
!2312 = !{!2313}
!2313 = !DILocalVariable(name: "arg", arg: 1, scope: !2309, file: !139, line: 934, type: !20)
!2314 = !DILocation(line: 934, column: 23, scope: !2309)
!2315 = !DILocation(line: 922, column: 17, scope: !2194, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 936, column: 10, scope: !2309)
!2317 = !DILocation(line: 922, column: 32, scope: !2194, inlinedAt: !2316)
!2318 = !DILocation(line: 924, column: 10, scope: !2194, inlinedAt: !2316)
!2319 = !DILocation(line: 936, column: 3, scope: !2309)
!2320 = distinct !DISubprogram(name: "quotearg_mem", scope: !139, file: !139, line: 940, type: !2321, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!9, !20, !12}
!2323 = !{!2324, !2325}
!2324 = !DILocalVariable(name: "arg", arg: 1, scope: !2320, file: !139, line: 940, type: !20)
!2325 = !DILocalVariable(name: "argsize", arg: 2, scope: !2320, file: !139, line: 940, type: !12)
!2326 = !DILocation(line: 940, column: 27, scope: !2320)
!2327 = !DILocation(line: 940, column: 39, scope: !2320)
!2328 = !DILocation(line: 928, column: 21, scope: !2297, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 942, column: 10, scope: !2320)
!2330 = !DILocation(line: 928, column: 36, scope: !2297, inlinedAt: !2329)
!2331 = !DILocation(line: 928, column: 48, scope: !2297, inlinedAt: !2329)
!2332 = !DILocation(line: 930, column: 10, scope: !2297, inlinedAt: !2329)
!2333 = !DILocation(line: 942, column: 3, scope: !2320)
!2334 = distinct !DISubprogram(name: "quotearg_n_style", scope: !139, file: !139, line: 946, type: !2335, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2337)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!9, !50, !100, !20}
!2337 = !{!2338, !2339, !2340, !2341}
!2338 = !DILocalVariable(name: "n", arg: 1, scope: !2334, file: !139, line: 946, type: !50)
!2339 = !DILocalVariable(name: "s", arg: 2, scope: !2334, file: !139, line: 946, type: !100)
!2340 = !DILocalVariable(name: "arg", arg: 3, scope: !2334, file: !139, line: 946, type: !20)
!2341 = !DILocalVariable(name: "o", scope: !2334, file: !139, line: 948, type: !902)
!2342 = !DILocalVariable(name: "o", scope: !2343, file: !139, line: 187, type: !146)
!2343 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !139, file: !139, line: 185, type: !2344, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!146, !100}
!2346 = !{!2347, !2342}
!2347 = !DILocalVariable(name: "style", arg: 1, scope: !2343, file: !139, line: 185, type: !100)
!2348 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2349 = !DILocation(line: 187, column: 26, scope: !2343, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 948, column: 36, scope: !2334)
!2351 = !DILocation(line: 946, column: 23, scope: !2334)
!2352 = !DILocation(line: 946, column: 45, scope: !2334)
!2353 = !DILocation(line: 946, column: 60, scope: !2334)
!2354 = !DILocation(line: 948, column: 3, scope: !2334)
!2355 = !DILocation(line: 948, column: 32, scope: !2334)
!2356 = !DILocation(line: 185, column: 48, scope: !2343, inlinedAt: !2350)
!2357 = !DILocation(line: 187, column: 3, scope: !2343, inlinedAt: !2350)
!2358 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2359 = !DILocation(line: 188, column: 13, scope: !2360, inlinedAt: !2350)
!2360 = distinct !DILexicalBlock(scope: !2343, file: !139, line: 188, column: 7)
!2361 = !DILocation(line: 188, column: 7, scope: !2343, inlinedAt: !2350)
!2362 = !DILocation(line: 189, column: 5, scope: !2360, inlinedAt: !2350)
!2363 = !{!2364}
!2364 = distinct !{!2364, !2365, !"quoting_options_from_style: argument 0"}
!2365 = distinct !{!2365, !"quoting_options_from_style"}
!2366 = !DILocation(line: 191, column: 10, scope: !2343, inlinedAt: !2350)
!2367 = !DILocation(line: 192, column: 1, scope: !2343, inlinedAt: !2350)
!2368 = !DILocation(line: 949, column: 10, scope: !2334)
!2369 = !DILocation(line: 950, column: 1, scope: !2334)
!2370 = !DILocation(line: 949, column: 3, scope: !2334)
!2371 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !139, file: !139, line: 953, type: !2372, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!9, !50, !100, !20, !12}
!2374 = !{!2375, !2376, !2377, !2378, !2379}
!2375 = !DILocalVariable(name: "n", arg: 1, scope: !2371, file: !139, line: 953, type: !50)
!2376 = !DILocalVariable(name: "s", arg: 2, scope: !2371, file: !139, line: 953, type: !100)
!2377 = !DILocalVariable(name: "arg", arg: 3, scope: !2371, file: !139, line: 954, type: !20)
!2378 = !DILocalVariable(name: "argsize", arg: 4, scope: !2371, file: !139, line: 954, type: !12)
!2379 = !DILocalVariable(name: "o", scope: !2371, file: !139, line: 956, type: !902)
!2380 = !DILocation(line: 187, column: 26, scope: !2343, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 956, column: 36, scope: !2371)
!2382 = !DILocation(line: 953, column: 27, scope: !2371)
!2383 = !DILocation(line: 953, column: 49, scope: !2371)
!2384 = !DILocation(line: 954, column: 35, scope: !2371)
!2385 = !DILocation(line: 954, column: 47, scope: !2371)
!2386 = !DILocation(line: 956, column: 3, scope: !2371)
!2387 = !DILocation(line: 956, column: 32, scope: !2371)
!2388 = !DILocation(line: 185, column: 48, scope: !2343, inlinedAt: !2381)
!2389 = !DILocation(line: 187, column: 3, scope: !2343, inlinedAt: !2381)
!2390 = !DILocation(line: 188, column: 13, scope: !2360, inlinedAt: !2381)
!2391 = !DILocation(line: 188, column: 7, scope: !2343, inlinedAt: !2381)
!2392 = !DILocation(line: 189, column: 5, scope: !2360, inlinedAt: !2381)
!2393 = !{!2394}
!2394 = distinct !{!2394, !2395, !"quoting_options_from_style: argument 0"}
!2395 = distinct !{!2395, !"quoting_options_from_style"}
!2396 = !DILocation(line: 191, column: 10, scope: !2343, inlinedAt: !2381)
!2397 = !DILocation(line: 192, column: 1, scope: !2343, inlinedAt: !2381)
!2398 = !DILocation(line: 957, column: 10, scope: !2371)
!2399 = !DILocation(line: 958, column: 1, scope: !2371)
!2400 = !DILocation(line: 957, column: 3, scope: !2371)
!2401 = distinct !DISubprogram(name: "quotearg_style", scope: !139, file: !139, line: 961, type: !2402, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!9, !100, !20}
!2404 = !{!2405, !2406}
!2405 = !DILocalVariable(name: "s", arg: 1, scope: !2401, file: !139, line: 961, type: !100)
!2406 = !DILocalVariable(name: "arg", arg: 2, scope: !2401, file: !139, line: 961, type: !20)
!2407 = !DILocation(line: 187, column: 26, scope: !2343, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 948, column: 36, scope: !2334, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 963, column: 10, scope: !2401)
!2410 = !DILocation(line: 961, column: 36, scope: !2401)
!2411 = !DILocation(line: 961, column: 51, scope: !2401)
!2412 = !DILocation(line: 946, column: 23, scope: !2334, inlinedAt: !2409)
!2413 = !DILocation(line: 946, column: 45, scope: !2334, inlinedAt: !2409)
!2414 = !DILocation(line: 946, column: 60, scope: !2334, inlinedAt: !2409)
!2415 = !DILocation(line: 948, column: 3, scope: !2334, inlinedAt: !2409)
!2416 = !DILocation(line: 948, column: 32, scope: !2334, inlinedAt: !2409)
!2417 = !DILocation(line: 185, column: 48, scope: !2343, inlinedAt: !2408)
!2418 = !DILocation(line: 187, column: 3, scope: !2343, inlinedAt: !2408)
!2419 = !DILocation(line: 188, column: 13, scope: !2360, inlinedAt: !2408)
!2420 = !DILocation(line: 188, column: 7, scope: !2343, inlinedAt: !2408)
!2421 = !DILocation(line: 189, column: 5, scope: !2360, inlinedAt: !2408)
!2422 = !{!2423}
!2423 = distinct !{!2423, !2424, !"quoting_options_from_style: argument 0"}
!2424 = distinct !{!2424, !"quoting_options_from_style"}
!2425 = !DILocation(line: 191, column: 10, scope: !2343, inlinedAt: !2408)
!2426 = !DILocation(line: 192, column: 1, scope: !2343, inlinedAt: !2408)
!2427 = !DILocation(line: 949, column: 10, scope: !2334, inlinedAt: !2409)
!2428 = !DILocation(line: 950, column: 1, scope: !2334, inlinedAt: !2409)
!2429 = !DILocation(line: 963, column: 3, scope: !2401)
!2430 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !139, file: !139, line: 967, type: !2431, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!9, !100, !20, !12}
!2433 = !{!2434, !2435, !2436}
!2434 = !DILocalVariable(name: "s", arg: 1, scope: !2430, file: !139, line: 967, type: !100)
!2435 = !DILocalVariable(name: "arg", arg: 2, scope: !2430, file: !139, line: 967, type: !20)
!2436 = !DILocalVariable(name: "argsize", arg: 3, scope: !2430, file: !139, line: 967, type: !12)
!2437 = !DILocation(line: 187, column: 26, scope: !2343, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 956, column: 36, scope: !2371, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 969, column: 10, scope: !2430)
!2440 = !DILocation(line: 967, column: 40, scope: !2430)
!2441 = !DILocation(line: 967, column: 55, scope: !2430)
!2442 = !DILocation(line: 967, column: 67, scope: !2430)
!2443 = !DILocation(line: 953, column: 27, scope: !2371, inlinedAt: !2439)
!2444 = !DILocation(line: 953, column: 49, scope: !2371, inlinedAt: !2439)
!2445 = !DILocation(line: 954, column: 35, scope: !2371, inlinedAt: !2439)
!2446 = !DILocation(line: 954, column: 47, scope: !2371, inlinedAt: !2439)
!2447 = !DILocation(line: 956, column: 3, scope: !2371, inlinedAt: !2439)
!2448 = !DILocation(line: 956, column: 32, scope: !2371, inlinedAt: !2439)
!2449 = !DILocation(line: 185, column: 48, scope: !2343, inlinedAt: !2438)
!2450 = !DILocation(line: 187, column: 3, scope: !2343, inlinedAt: !2438)
!2451 = !DILocation(line: 188, column: 13, scope: !2360, inlinedAt: !2438)
!2452 = !DILocation(line: 188, column: 7, scope: !2343, inlinedAt: !2438)
!2453 = !DILocation(line: 189, column: 5, scope: !2360, inlinedAt: !2438)
!2454 = !{!2455}
!2455 = distinct !{!2455, !2456, !"quoting_options_from_style: argument 0"}
!2456 = distinct !{!2456, !"quoting_options_from_style"}
!2457 = !DILocation(line: 191, column: 10, scope: !2343, inlinedAt: !2438)
!2458 = !DILocation(line: 192, column: 1, scope: !2343, inlinedAt: !2438)
!2459 = !DILocation(line: 957, column: 10, scope: !2371, inlinedAt: !2439)
!2460 = !DILocation(line: 958, column: 1, scope: !2371, inlinedAt: !2439)
!2461 = !DILocation(line: 969, column: 3, scope: !2430)
!2462 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !139, file: !139, line: 973, type: !2463, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!9, !20, !12, !10}
!2465 = !{!2466, !2467, !2468, !2469}
!2466 = !DILocalVariable(name: "arg", arg: 1, scope: !2462, file: !139, line: 973, type: !20)
!2467 = !DILocalVariable(name: "argsize", arg: 2, scope: !2462, file: !139, line: 973, type: !12)
!2468 = !DILocalVariable(name: "ch", arg: 3, scope: !2462, file: !139, line: 973, type: !10)
!2469 = !DILocalVariable(name: "options", scope: !2462, file: !139, line: 975, type: !146)
!2470 = !DILocation(line: 973, column: 32, scope: !2462)
!2471 = !DILocation(line: 973, column: 44, scope: !2462)
!2472 = !DILocation(line: 973, column: 58, scope: !2462)
!2473 = !DILocation(line: 975, column: 3, scope: !2462)
!2474 = !DILocation(line: 976, column: 13, scope: !2462)
!2475 = !{i64 0, i64 4, !731, i64 4, i64 4, !676, i64 8, i64 32, !731, i64 40, i64 8, !597, i64 48, i64 8, !597}
!2476 = !DILocation(line: 975, column: 26, scope: !2462)
!2477 = !DILocation(line: 144, column: 43, scope: !925, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 977, column: 3, scope: !2462)
!2479 = !DILocation(line: 144, column: 51, scope: !925, inlinedAt: !2478)
!2480 = !DILocation(line: 144, column: 58, scope: !925, inlinedAt: !2478)
!2481 = !DILocation(line: 146, column: 17, scope: !925, inlinedAt: !2478)
!2482 = !DILocation(line: 148, column: 62, scope: !943, inlinedAt: !2478)
!2483 = !DILocation(line: 148, column: 57, scope: !943, inlinedAt: !2478)
!2484 = !DILocation(line: 147, column: 17, scope: !925, inlinedAt: !2478)
!2485 = !DILocation(line: 149, column: 18, scope: !925, inlinedAt: !2478)
!2486 = !DILocation(line: 149, column: 15, scope: !925, inlinedAt: !2478)
!2487 = !DILocation(line: 149, column: 7, scope: !925, inlinedAt: !2478)
!2488 = !DILocation(line: 150, column: 12, scope: !925, inlinedAt: !2478)
!2489 = !DILocation(line: 150, column: 15, scope: !925, inlinedAt: !2478)
!2490 = !DILocation(line: 150, column: 25, scope: !925, inlinedAt: !2478)
!2491 = !DILocation(line: 150, column: 7, scope: !925, inlinedAt: !2478)
!2492 = !DILocation(line: 151, column: 18, scope: !925, inlinedAt: !2478)
!2493 = !DILocation(line: 151, column: 23, scope: !925, inlinedAt: !2478)
!2494 = !DILocation(line: 151, column: 6, scope: !925, inlinedAt: !2478)
!2495 = !DILocation(line: 978, column: 10, scope: !2462)
!2496 = !DILocation(line: 979, column: 1, scope: !2462)
!2497 = !DILocation(line: 978, column: 3, scope: !2462)
!2498 = distinct !DISubprogram(name: "quotearg_char", scope: !139, file: !139, line: 982, type: !2499, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!9, !20, !10}
!2501 = !{!2502, !2503}
!2502 = !DILocalVariable(name: "arg", arg: 1, scope: !2498, file: !139, line: 982, type: !20)
!2503 = !DILocalVariable(name: "ch", arg: 2, scope: !2498, file: !139, line: 982, type: !10)
!2504 = !DILocation(line: 982, column: 28, scope: !2498)
!2505 = !DILocation(line: 982, column: 38, scope: !2498)
!2506 = !DILocation(line: 973, column: 32, scope: !2462, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 984, column: 10, scope: !2498)
!2508 = !DILocation(line: 973, column: 44, scope: !2462, inlinedAt: !2507)
!2509 = !DILocation(line: 973, column: 58, scope: !2462, inlinedAt: !2507)
!2510 = !DILocation(line: 975, column: 3, scope: !2462, inlinedAt: !2507)
!2511 = !DILocation(line: 976, column: 13, scope: !2462, inlinedAt: !2507)
!2512 = !DILocation(line: 975, column: 26, scope: !2462, inlinedAt: !2507)
!2513 = !DILocation(line: 144, column: 43, scope: !925, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 977, column: 3, scope: !2462, inlinedAt: !2507)
!2515 = !DILocation(line: 144, column: 51, scope: !925, inlinedAt: !2514)
!2516 = !DILocation(line: 144, column: 58, scope: !925, inlinedAt: !2514)
!2517 = !DILocation(line: 146, column: 17, scope: !925, inlinedAt: !2514)
!2518 = !DILocation(line: 148, column: 62, scope: !943, inlinedAt: !2514)
!2519 = !DILocation(line: 148, column: 57, scope: !943, inlinedAt: !2514)
!2520 = !DILocation(line: 147, column: 17, scope: !925, inlinedAt: !2514)
!2521 = !DILocation(line: 149, column: 18, scope: !925, inlinedAt: !2514)
!2522 = !DILocation(line: 149, column: 15, scope: !925, inlinedAt: !2514)
!2523 = !DILocation(line: 149, column: 7, scope: !925, inlinedAt: !2514)
!2524 = !DILocation(line: 150, column: 12, scope: !925, inlinedAt: !2514)
!2525 = !DILocation(line: 150, column: 15, scope: !925, inlinedAt: !2514)
!2526 = !DILocation(line: 150, column: 25, scope: !925, inlinedAt: !2514)
!2527 = !DILocation(line: 150, column: 7, scope: !925, inlinedAt: !2514)
!2528 = !DILocation(line: 151, column: 18, scope: !925, inlinedAt: !2514)
!2529 = !DILocation(line: 151, column: 23, scope: !925, inlinedAt: !2514)
!2530 = !DILocation(line: 151, column: 6, scope: !925, inlinedAt: !2514)
!2531 = !DILocation(line: 978, column: 10, scope: !2462, inlinedAt: !2507)
!2532 = !DILocation(line: 979, column: 1, scope: !2462, inlinedAt: !2507)
!2533 = !DILocation(line: 984, column: 3, scope: !2498)
!2534 = distinct !DISubprogram(name: "quotearg_colon", scope: !139, file: !139, line: 988, type: !2310, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2535)
!2535 = !{!2536}
!2536 = !DILocalVariable(name: "arg", arg: 1, scope: !2534, file: !139, line: 988, type: !20)
!2537 = !DILocation(line: 988, column: 29, scope: !2534)
!2538 = !DILocation(line: 982, column: 28, scope: !2498, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 990, column: 10, scope: !2534)
!2540 = !DILocation(line: 982, column: 38, scope: !2498, inlinedAt: !2539)
!2541 = !DILocation(line: 973, column: 32, scope: !2462, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 984, column: 10, scope: !2498, inlinedAt: !2539)
!2543 = !DILocation(line: 973, column: 44, scope: !2462, inlinedAt: !2542)
!2544 = !DILocation(line: 973, column: 58, scope: !2462, inlinedAt: !2542)
!2545 = !DILocation(line: 975, column: 3, scope: !2462, inlinedAt: !2542)
!2546 = !DILocation(line: 976, column: 13, scope: !2462, inlinedAt: !2542)
!2547 = !DILocation(line: 975, column: 26, scope: !2462, inlinedAt: !2542)
!2548 = !DILocation(line: 144, column: 43, scope: !925, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 977, column: 3, scope: !2462, inlinedAt: !2542)
!2550 = !DILocation(line: 144, column: 51, scope: !925, inlinedAt: !2549)
!2551 = !DILocation(line: 144, column: 58, scope: !925, inlinedAt: !2549)
!2552 = !DILocation(line: 146, column: 17, scope: !925, inlinedAt: !2549)
!2553 = !DILocation(line: 148, column: 57, scope: !943, inlinedAt: !2549)
!2554 = !DILocation(line: 147, column: 17, scope: !925, inlinedAt: !2549)
!2555 = !DILocation(line: 149, column: 7, scope: !925, inlinedAt: !2549)
!2556 = !DILocation(line: 150, column: 12, scope: !925, inlinedAt: !2549)
!2557 = !DILocation(line: 151, column: 6, scope: !925, inlinedAt: !2549)
!2558 = !DILocation(line: 978, column: 10, scope: !2462, inlinedAt: !2542)
!2559 = !DILocation(line: 979, column: 1, scope: !2462, inlinedAt: !2542)
!2560 = !DILocation(line: 990, column: 3, scope: !2534)
!2561 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !139, file: !139, line: 994, type: !2321, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2562)
!2562 = !{!2563, !2564}
!2563 = !DILocalVariable(name: "arg", arg: 1, scope: !2561, file: !139, line: 994, type: !20)
!2564 = !DILocalVariable(name: "argsize", arg: 2, scope: !2561, file: !139, line: 994, type: !12)
!2565 = !DILocation(line: 994, column: 33, scope: !2561)
!2566 = !DILocation(line: 994, column: 45, scope: !2561)
!2567 = !DILocation(line: 973, column: 32, scope: !2462, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 996, column: 10, scope: !2561)
!2569 = !DILocation(line: 973, column: 44, scope: !2462, inlinedAt: !2568)
!2570 = !DILocation(line: 973, column: 58, scope: !2462, inlinedAt: !2568)
!2571 = !DILocation(line: 975, column: 3, scope: !2462, inlinedAt: !2568)
!2572 = !DILocation(line: 976, column: 13, scope: !2462, inlinedAt: !2568)
!2573 = !DILocation(line: 975, column: 26, scope: !2462, inlinedAt: !2568)
!2574 = !DILocation(line: 144, column: 43, scope: !925, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 977, column: 3, scope: !2462, inlinedAt: !2568)
!2576 = !DILocation(line: 144, column: 51, scope: !925, inlinedAt: !2575)
!2577 = !DILocation(line: 144, column: 58, scope: !925, inlinedAt: !2575)
!2578 = !DILocation(line: 146, column: 17, scope: !925, inlinedAt: !2575)
!2579 = !DILocation(line: 148, column: 57, scope: !943, inlinedAt: !2575)
!2580 = !DILocation(line: 147, column: 17, scope: !925, inlinedAt: !2575)
!2581 = !DILocation(line: 149, column: 7, scope: !925, inlinedAt: !2575)
!2582 = !DILocation(line: 150, column: 12, scope: !925, inlinedAt: !2575)
!2583 = !DILocation(line: 151, column: 6, scope: !925, inlinedAt: !2575)
!2584 = !DILocation(line: 978, column: 10, scope: !2462, inlinedAt: !2568)
!2585 = !DILocation(line: 979, column: 1, scope: !2462, inlinedAt: !2568)
!2586 = !DILocation(line: 996, column: 3, scope: !2561)
!2587 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !139, file: !139, line: 1000, type: !2335, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2588)
!2588 = !{!2589, !2590, !2591, !2592}
!2589 = !DILocalVariable(name: "n", arg: 1, scope: !2587, file: !139, line: 1000, type: !50)
!2590 = !DILocalVariable(name: "s", arg: 2, scope: !2587, file: !139, line: 1000, type: !100)
!2591 = !DILocalVariable(name: "arg", arg: 3, scope: !2587, file: !139, line: 1000, type: !20)
!2592 = !DILocalVariable(name: "options", scope: !2587, file: !139, line: 1002, type: !146)
!2593 = !DILocation(line: 187, column: 26, scope: !2343, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 1003, column: 13, scope: !2587)
!2595 = !DILocation(line: 1000, column: 29, scope: !2587)
!2596 = !DILocation(line: 1000, column: 51, scope: !2587)
!2597 = !DILocation(line: 1000, column: 66, scope: !2587)
!2598 = !DILocation(line: 1002, column: 3, scope: !2587)
!2599 = !DILocation(line: 185, column: 48, scope: !2343, inlinedAt: !2594)
!2600 = !DILocation(line: 187, column: 3, scope: !2343, inlinedAt: !2594)
!2601 = !DILocation(line: 188, column: 13, scope: !2360, inlinedAt: !2594)
!2602 = !DILocation(line: 188, column: 7, scope: !2343, inlinedAt: !2594)
!2603 = !DILocation(line: 189, column: 5, scope: !2360, inlinedAt: !2594)
!2604 = !{!2605}
!2605 = distinct !{!2605, !2606, !"quoting_options_from_style: argument 0"}
!2606 = distinct !{!2606, !"quoting_options_from_style"}
!2607 = !DILocation(line: 191, column: 10, scope: !2343, inlinedAt: !2594)
!2608 = !DILocation(line: 192, column: 1, scope: !2343, inlinedAt: !2594)
!2609 = !DILocation(line: 1003, column: 13, scope: !2587)
!2610 = !DILocation(line: 1002, column: 26, scope: !2587)
!2611 = !DILocation(line: 144, column: 43, scope: !925, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1004, column: 3, scope: !2587)
!2613 = !DILocation(line: 144, column: 51, scope: !925, inlinedAt: !2612)
!2614 = !DILocation(line: 144, column: 58, scope: !925, inlinedAt: !2612)
!2615 = !DILocation(line: 146, column: 17, scope: !925, inlinedAt: !2612)
!2616 = !DILocation(line: 148, column: 57, scope: !943, inlinedAt: !2612)
!2617 = !DILocation(line: 147, column: 17, scope: !925, inlinedAt: !2612)
!2618 = !DILocation(line: 149, column: 7, scope: !925, inlinedAt: !2612)
!2619 = !DILocation(line: 150, column: 12, scope: !925, inlinedAt: !2612)
!2620 = !DILocation(line: 151, column: 6, scope: !925, inlinedAt: !2612)
!2621 = !DILocation(line: 1005, column: 10, scope: !2587)
!2622 = !DILocation(line: 1006, column: 1, scope: !2587)
!2623 = !DILocation(line: 1005, column: 3, scope: !2587)
!2624 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !139, file: !139, line: 1009, type: !2625, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!9, !50, !20, !20, !20}
!2627 = !{!2628, !2629, !2630, !2631}
!2628 = !DILocalVariable(name: "n", arg: 1, scope: !2624, file: !139, line: 1009, type: !50)
!2629 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2624, file: !139, line: 1009, type: !20)
!2630 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2624, file: !139, line: 1010, type: !20)
!2631 = !DILocalVariable(name: "arg", arg: 4, scope: !2624, file: !139, line: 1010, type: !20)
!2632 = !DILocation(line: 1009, column: 24, scope: !2624)
!2633 = !DILocation(line: 1009, column: 39, scope: !2624)
!2634 = !DILocation(line: 1010, column: 32, scope: !2624)
!2635 = !DILocation(line: 1010, column: 57, scope: !2624)
!2636 = !DILocalVariable(name: "n", arg: 1, scope: !2637, file: !139, line: 1017, type: !50)
!2637 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !139, file: !139, line: 1017, type: !2638, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!9, !50, !20, !20, !20, !12}
!2640 = !{!2636, !2641, !2642, !2643, !2644, !2645}
!2641 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2637, file: !139, line: 1017, type: !20)
!2642 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2637, file: !139, line: 1018, type: !20)
!2643 = !DILocalVariable(name: "arg", arg: 4, scope: !2637, file: !139, line: 1019, type: !20)
!2644 = !DILocalVariable(name: "argsize", arg: 5, scope: !2637, file: !139, line: 1019, type: !12)
!2645 = !DILocalVariable(name: "o", scope: !2637, file: !139, line: 1021, type: !146)
!2646 = !DILocation(line: 1017, column: 28, scope: !2637, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 1012, column: 10, scope: !2624)
!2648 = !DILocation(line: 1017, column: 43, scope: !2637, inlinedAt: !2647)
!2649 = !DILocation(line: 1018, column: 36, scope: !2637, inlinedAt: !2647)
!2650 = !DILocation(line: 1019, column: 36, scope: !2637, inlinedAt: !2647)
!2651 = !DILocation(line: 1019, column: 48, scope: !2637, inlinedAt: !2647)
!2652 = !DILocation(line: 1021, column: 3, scope: !2637, inlinedAt: !2647)
!2653 = !DILocation(line: 1021, column: 30, scope: !2637, inlinedAt: !2647)
!2654 = !DILocation(line: 1021, column: 26, scope: !2637, inlinedAt: !2647)
!2655 = !DILocation(line: 171, column: 45, scope: !975, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 1022, column: 3, scope: !2637, inlinedAt: !2647)
!2657 = !DILocation(line: 172, column: 33, scope: !975, inlinedAt: !2656)
!2658 = !DILocation(line: 172, column: 57, scope: !975, inlinedAt: !2656)
!2659 = !DILocation(line: 176, column: 6, scope: !975, inlinedAt: !2656)
!2660 = !DILocation(line: 176, column: 12, scope: !975, inlinedAt: !2656)
!2661 = !DILocation(line: 177, column: 8, scope: !991, inlinedAt: !2656)
!2662 = !DILocation(line: 177, column: 23, scope: !993, inlinedAt: !2656)
!2663 = !DILocation(line: 177, column: 19, scope: !991, inlinedAt: !2656)
!2664 = !DILocation(line: 178, column: 5, scope: !991, inlinedAt: !2656)
!2665 = !DILocation(line: 179, column: 6, scope: !975, inlinedAt: !2656)
!2666 = !DILocation(line: 179, column: 17, scope: !975, inlinedAt: !2656)
!2667 = !DILocation(line: 180, column: 6, scope: !975, inlinedAt: !2656)
!2668 = !DILocation(line: 180, column: 18, scope: !975, inlinedAt: !2656)
!2669 = !DILocation(line: 1023, column: 10, scope: !2637, inlinedAt: !2647)
!2670 = !DILocation(line: 1024, column: 1, scope: !2637, inlinedAt: !2647)
!2671 = !DILocation(line: 1012, column: 3, scope: !2624)
!2672 = !DILocation(line: 1017, column: 28, scope: !2637)
!2673 = !DILocation(line: 1017, column: 43, scope: !2637)
!2674 = !DILocation(line: 1018, column: 36, scope: !2637)
!2675 = !DILocation(line: 1019, column: 36, scope: !2637)
!2676 = !DILocation(line: 1019, column: 48, scope: !2637)
!2677 = !DILocation(line: 1021, column: 3, scope: !2637)
!2678 = !DILocation(line: 1021, column: 30, scope: !2637)
!2679 = !DILocation(line: 1021, column: 26, scope: !2637)
!2680 = !DILocation(line: 171, column: 45, scope: !975, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1022, column: 3, scope: !2637)
!2682 = !DILocation(line: 172, column: 33, scope: !975, inlinedAt: !2681)
!2683 = !DILocation(line: 172, column: 57, scope: !975, inlinedAt: !2681)
!2684 = !DILocation(line: 176, column: 6, scope: !975, inlinedAt: !2681)
!2685 = !DILocation(line: 176, column: 12, scope: !975, inlinedAt: !2681)
!2686 = !DILocation(line: 177, column: 8, scope: !991, inlinedAt: !2681)
!2687 = !DILocation(line: 177, column: 23, scope: !993, inlinedAt: !2681)
!2688 = !DILocation(line: 177, column: 19, scope: !991, inlinedAt: !2681)
!2689 = !DILocation(line: 178, column: 5, scope: !991, inlinedAt: !2681)
!2690 = !DILocation(line: 179, column: 6, scope: !975, inlinedAt: !2681)
!2691 = !DILocation(line: 179, column: 17, scope: !975, inlinedAt: !2681)
!2692 = !DILocation(line: 180, column: 6, scope: !975, inlinedAt: !2681)
!2693 = !DILocation(line: 180, column: 18, scope: !975, inlinedAt: !2681)
!2694 = !DILocation(line: 1023, column: 10, scope: !2637)
!2695 = !DILocation(line: 1024, column: 1, scope: !2637)
!2696 = !DILocation(line: 1023, column: 3, scope: !2637)
!2697 = distinct !DISubprogram(name: "quotearg_custom", scope: !139, file: !139, line: 1027, type: !2698, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!9, !20, !20, !20}
!2700 = !{!2701, !2702, !2703}
!2701 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2697, file: !139, line: 1027, type: !20)
!2702 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2697, file: !139, line: 1027, type: !20)
!2703 = !DILocalVariable(name: "arg", arg: 3, scope: !2697, file: !139, line: 1028, type: !20)
!2704 = !DILocation(line: 1027, column: 30, scope: !2697)
!2705 = !DILocation(line: 1027, column: 54, scope: !2697)
!2706 = !DILocation(line: 1028, column: 30, scope: !2697)
!2707 = !DILocation(line: 1009, column: 24, scope: !2624, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 1030, column: 10, scope: !2697)
!2709 = !DILocation(line: 1009, column: 39, scope: !2624, inlinedAt: !2708)
!2710 = !DILocation(line: 1010, column: 32, scope: !2624, inlinedAt: !2708)
!2711 = !DILocation(line: 1010, column: 57, scope: !2624, inlinedAt: !2708)
!2712 = !DILocation(line: 1017, column: 28, scope: !2637, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 1012, column: 10, scope: !2624, inlinedAt: !2708)
!2714 = !DILocation(line: 1017, column: 43, scope: !2637, inlinedAt: !2713)
!2715 = !DILocation(line: 1018, column: 36, scope: !2637, inlinedAt: !2713)
!2716 = !DILocation(line: 1019, column: 36, scope: !2637, inlinedAt: !2713)
!2717 = !DILocation(line: 1019, column: 48, scope: !2637, inlinedAt: !2713)
!2718 = !DILocation(line: 1021, column: 3, scope: !2637, inlinedAt: !2713)
!2719 = !DILocation(line: 1021, column: 30, scope: !2637, inlinedAt: !2713)
!2720 = !DILocation(line: 1021, column: 26, scope: !2637, inlinedAt: !2713)
!2721 = !DILocation(line: 171, column: 45, scope: !975, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 1022, column: 3, scope: !2637, inlinedAt: !2713)
!2723 = !DILocation(line: 172, column: 33, scope: !975, inlinedAt: !2722)
!2724 = !DILocation(line: 172, column: 57, scope: !975, inlinedAt: !2722)
!2725 = !DILocation(line: 176, column: 6, scope: !975, inlinedAt: !2722)
!2726 = !DILocation(line: 176, column: 12, scope: !975, inlinedAt: !2722)
!2727 = !DILocation(line: 177, column: 8, scope: !991, inlinedAt: !2722)
!2728 = !DILocation(line: 177, column: 23, scope: !993, inlinedAt: !2722)
!2729 = !DILocation(line: 177, column: 19, scope: !991, inlinedAt: !2722)
!2730 = !DILocation(line: 178, column: 5, scope: !991, inlinedAt: !2722)
!2731 = !DILocation(line: 179, column: 6, scope: !975, inlinedAt: !2722)
!2732 = !DILocation(line: 179, column: 17, scope: !975, inlinedAt: !2722)
!2733 = !DILocation(line: 180, column: 6, scope: !975, inlinedAt: !2722)
!2734 = !DILocation(line: 180, column: 18, scope: !975, inlinedAt: !2722)
!2735 = !DILocation(line: 1023, column: 10, scope: !2637, inlinedAt: !2713)
!2736 = !DILocation(line: 1024, column: 1, scope: !2637, inlinedAt: !2713)
!2737 = !DILocation(line: 1030, column: 3, scope: !2697)
!2738 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !139, file: !139, line: 1034, type: !2739, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!9, !20, !20, !20, !12}
!2741 = !{!2742, !2743, !2744, !2745}
!2742 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2738, file: !139, line: 1034, type: !20)
!2743 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2738, file: !139, line: 1034, type: !20)
!2744 = !DILocalVariable(name: "arg", arg: 3, scope: !2738, file: !139, line: 1035, type: !20)
!2745 = !DILocalVariable(name: "argsize", arg: 4, scope: !2738, file: !139, line: 1035, type: !12)
!2746 = !DILocation(line: 1034, column: 34, scope: !2738)
!2747 = !DILocation(line: 1034, column: 58, scope: !2738)
!2748 = !DILocation(line: 1035, column: 34, scope: !2738)
!2749 = !DILocation(line: 1035, column: 46, scope: !2738)
!2750 = !DILocation(line: 1017, column: 28, scope: !2637, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 1037, column: 10, scope: !2738)
!2752 = !DILocation(line: 1017, column: 43, scope: !2637, inlinedAt: !2751)
!2753 = !DILocation(line: 1018, column: 36, scope: !2637, inlinedAt: !2751)
!2754 = !DILocation(line: 1019, column: 36, scope: !2637, inlinedAt: !2751)
!2755 = !DILocation(line: 1019, column: 48, scope: !2637, inlinedAt: !2751)
!2756 = !DILocation(line: 1021, column: 3, scope: !2637, inlinedAt: !2751)
!2757 = !DILocation(line: 1021, column: 30, scope: !2637, inlinedAt: !2751)
!2758 = !DILocation(line: 1021, column: 26, scope: !2637, inlinedAt: !2751)
!2759 = !DILocation(line: 171, column: 45, scope: !975, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1022, column: 3, scope: !2637, inlinedAt: !2751)
!2761 = !DILocation(line: 172, column: 33, scope: !975, inlinedAt: !2760)
!2762 = !DILocation(line: 172, column: 57, scope: !975, inlinedAt: !2760)
!2763 = !DILocation(line: 176, column: 6, scope: !975, inlinedAt: !2760)
!2764 = !DILocation(line: 176, column: 12, scope: !975, inlinedAt: !2760)
!2765 = !DILocation(line: 177, column: 8, scope: !991, inlinedAt: !2760)
!2766 = !DILocation(line: 177, column: 23, scope: !993, inlinedAt: !2760)
!2767 = !DILocation(line: 177, column: 19, scope: !991, inlinedAt: !2760)
!2768 = !DILocation(line: 178, column: 5, scope: !991, inlinedAt: !2760)
!2769 = !DILocation(line: 179, column: 6, scope: !975, inlinedAt: !2760)
!2770 = !DILocation(line: 179, column: 17, scope: !975, inlinedAt: !2760)
!2771 = !DILocation(line: 180, column: 6, scope: !975, inlinedAt: !2760)
!2772 = !DILocation(line: 180, column: 18, scope: !975, inlinedAt: !2760)
!2773 = !DILocation(line: 1023, column: 10, scope: !2637, inlinedAt: !2751)
!2774 = !DILocation(line: 1024, column: 1, scope: !2637, inlinedAt: !2751)
!2775 = !DILocation(line: 1037, column: 3, scope: !2738)
!2776 = distinct !DISubprogram(name: "quote_n_mem", scope: !139, file: !139, line: 1052, type: !2777, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!20, !50, !20, !12}
!2779 = !{!2780, !2781, !2782}
!2780 = !DILocalVariable(name: "n", arg: 1, scope: !2776, file: !139, line: 1052, type: !50)
!2781 = !DILocalVariable(name: "arg", arg: 2, scope: !2776, file: !139, line: 1052, type: !20)
!2782 = !DILocalVariable(name: "argsize", arg: 3, scope: !2776, file: !139, line: 1052, type: !12)
!2783 = !DILocation(line: 1052, column: 18, scope: !2776)
!2784 = !DILocation(line: 1052, column: 33, scope: !2776)
!2785 = !DILocation(line: 1052, column: 45, scope: !2776)
!2786 = !DILocation(line: 1054, column: 10, scope: !2776)
!2787 = !DILocation(line: 1054, column: 3, scope: !2776)
!2788 = distinct !DISubprogram(name: "quote_mem", scope: !139, file: !139, line: 1058, type: !2789, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!20, !20, !12}
!2791 = !{!2792, !2793}
!2792 = !DILocalVariable(name: "arg", arg: 1, scope: !2788, file: !139, line: 1058, type: !20)
!2793 = !DILocalVariable(name: "argsize", arg: 2, scope: !2788, file: !139, line: 1058, type: !12)
!2794 = !DILocation(line: 1058, column: 24, scope: !2788)
!2795 = !DILocation(line: 1058, column: 36, scope: !2788)
!2796 = !DILocation(line: 1052, column: 18, scope: !2776, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 1060, column: 10, scope: !2788)
!2798 = !DILocation(line: 1052, column: 33, scope: !2776, inlinedAt: !2797)
!2799 = !DILocation(line: 1052, column: 45, scope: !2776, inlinedAt: !2797)
!2800 = !DILocation(line: 1054, column: 10, scope: !2776, inlinedAt: !2797)
!2801 = !DILocation(line: 1060, column: 3, scope: !2788)
!2802 = distinct !DISubprogram(name: "quote_n", scope: !139, file: !139, line: 1064, type: !2803, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!20, !50, !20}
!2805 = !{!2806, !2807}
!2806 = !DILocalVariable(name: "n", arg: 1, scope: !2802, file: !139, line: 1064, type: !50)
!2807 = !DILocalVariable(name: "arg", arg: 2, scope: !2802, file: !139, line: 1064, type: !20)
!2808 = !DILocation(line: 1064, column: 14, scope: !2802)
!2809 = !DILocation(line: 1064, column: 29, scope: !2802)
!2810 = !DILocation(line: 1052, column: 18, scope: !2776, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 1066, column: 10, scope: !2802)
!2812 = !DILocation(line: 1052, column: 33, scope: !2776, inlinedAt: !2811)
!2813 = !DILocation(line: 1052, column: 45, scope: !2776, inlinedAt: !2811)
!2814 = !DILocation(line: 1054, column: 10, scope: !2776, inlinedAt: !2811)
!2815 = !DILocation(line: 1066, column: 3, scope: !2802)
!2816 = distinct !DISubprogram(name: "quote", scope: !139, file: !139, line: 1070, type: !2817, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!20, !20}
!2819 = !{!2820}
!2820 = !DILocalVariable(name: "arg", arg: 1, scope: !2816, file: !139, line: 1070, type: !20)
!2821 = !DILocation(line: 1070, column: 20, scope: !2816)
!2822 = !DILocation(line: 1064, column: 14, scope: !2802, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 1072, column: 10, scope: !2816)
!2824 = !DILocation(line: 1064, column: 29, scope: !2802, inlinedAt: !2823)
!2825 = !DILocation(line: 1052, column: 18, scope: !2776, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 1066, column: 10, scope: !2802, inlinedAt: !2823)
!2827 = !DILocation(line: 1052, column: 33, scope: !2776, inlinedAt: !2826)
!2828 = !DILocation(line: 1052, column: 45, scope: !2776, inlinedAt: !2826)
!2829 = !DILocation(line: 1054, column: 10, scope: !2776, inlinedAt: !2826)
!2830 = !DILocation(line: 1072, column: 3, scope: !2816)
!2831 = distinct !DISubprogram(name: "version_etc_arn", scope: !540, file: !540, line: 62, type: !2832, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2890)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !2834, !20, !20, !20, !2889, !12}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2836, line: 49, baseType: !2837)
!2836 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !2839)
!2838 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2839 = !{!2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2860, !2861, !2862, !2863, !2867, !2868, !2870, !2874, !2877, !2879, !2880, !2881, !2882, !2883, !2884, !2885}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2837, file: !2838, line: 242, baseType: !50, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2837, file: !2838, line: 247, baseType: !9, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2837, file: !2838, line: 248, baseType: !9, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2837, file: !2838, line: 249, baseType: !9, size: 64, offset: 192)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2837, file: !2838, line: 250, baseType: !9, size: 64, offset: 256)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2837, file: !2838, line: 251, baseType: !9, size: 64, offset: 320)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2837, file: !2838, line: 252, baseType: !9, size: 64, offset: 384)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2837, file: !2838, line: 253, baseType: !9, size: 64, offset: 448)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2837, file: !2838, line: 254, baseType: !9, size: 64, offset: 512)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2837, file: !2838, line: 256, baseType: !9, size: 64, offset: 576)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2837, file: !2838, line: 257, baseType: !9, size: 64, offset: 640)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2837, file: !2838, line: 258, baseType: !9, size: 64, offset: 704)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2837, file: !2838, line: 260, baseType: !2853, size: 64, offset: 768)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !2855)
!2855 = !{!2856, !2857, !2859}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2854, file: !2838, line: 157, baseType: !2853, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2854, file: !2838, line: 158, baseType: !2858, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2854, file: !2838, line: 162, baseType: !50, size: 32, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2837, file: !2838, line: 262, baseType: !2858, size: 64, offset: 832)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2837, file: !2838, line: 264, baseType: !50, size: 32, offset: 896)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2837, file: !2838, line: 268, baseType: !50, size: 32, offset: 928)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2837, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2865, line: 140, baseType: !2866)
!2865 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2866 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2837, file: !2838, line: 274, baseType: !135, size: 16, offset: 1024)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2837, file: !2838, line: 275, baseType: !2869, size: 8, offset: 1040)
!2869 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2837, file: !2838, line: 276, baseType: !2871, size: 8, offset: 1048)
!2871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !2872)
!2872 = !{!2873}
!2873 = !DISubrange(count: 1)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2837, file: !2838, line: 280, baseType: !2875, size: 64, offset: 1088)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2838, line: 150, baseType: null)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2837, file: !2838, line: 289, baseType: !2878, size: 64, offset: 1152)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2865, line: 141, baseType: !2866)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2837, file: !2838, line: 297, baseType: !11, size: 64, offset: 1216)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2837, file: !2838, line: 298, baseType: !11, size: 64, offset: 1280)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2837, file: !2838, line: 299, baseType: !11, size: 64, offset: 1344)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2837, file: !2838, line: 300, baseType: !11, size: 64, offset: 1408)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2837, file: !2838, line: 302, baseType: !12, size: 64, offset: 1472)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2837, file: !2838, line: 303, baseType: !50, size: 32, offset: 1536)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2837, file: !2838, line: 305, baseType: !2886, size: 160, offset: 1568)
!2886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !2887)
!2887 = !{!2888}
!2888 = !DISubrange(count: 20)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!2890 = !{!2891, !2892, !2893, !2894, !2895, !2896}
!2891 = !DILocalVariable(name: "stream", arg: 1, scope: !2831, file: !540, line: 62, type: !2834)
!2892 = !DILocalVariable(name: "command_name", arg: 2, scope: !2831, file: !540, line: 63, type: !20)
!2893 = !DILocalVariable(name: "package", arg: 3, scope: !2831, file: !540, line: 63, type: !20)
!2894 = !DILocalVariable(name: "version", arg: 4, scope: !2831, file: !540, line: 64, type: !20)
!2895 = !DILocalVariable(name: "authors", arg: 5, scope: !2831, file: !540, line: 65, type: !2889)
!2896 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2831, file: !540, line: 65, type: !12)
!2897 = !DILocation(line: 62, column: 24, scope: !2831)
!2898 = !DILocation(line: 63, column: 30, scope: !2831)
!2899 = !DILocation(line: 63, column: 56, scope: !2831)
!2900 = !DILocation(line: 64, column: 30, scope: !2831)
!2901 = !DILocation(line: 65, column: 39, scope: !2831)
!2902 = !DILocation(line: 65, column: 55, scope: !2831)
!2903 = !DILocation(line: 67, column: 7, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2831, file: !540, line: 67, column: 7)
!2905 = !DILocation(line: 67, column: 7, scope: !2831)
!2906 = !DILocation(line: 68, column: 5, scope: !2904)
!2907 = !DILocation(line: 70, column: 5, scope: !2904)
!2908 = !DILocation(line: 84, column: 3, scope: !2831)
!2909 = !DILocation(line: 84, column: 3, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2831, file: !540, discriminator: 1)
!2911 = !DILocation(line: 86, column: 3, scope: !2831)
!2912 = !DILocation(line: 86, column: 3, scope: !2910)
!2913 = !DILocation(line: 95, column: 3, scope: !2831)
!2914 = !DILocation(line: 99, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2831, file: !540, line: 96, column: 5)
!2916 = !DILocation(line: 102, column: 7, scope: !2915)
!2917 = !DILocation(line: 102, column: 7, scope: !2918)
!2918 = !DILexicalBlockFile(scope: !2915, file: !540, discriminator: 1)
!2919 = !DILocation(line: 103, column: 7, scope: !2915)
!2920 = !DILocation(line: 106, column: 7, scope: !2915)
!2921 = !DILocation(line: 106, column: 7, scope: !2918)
!2922 = !DILocation(line: 107, column: 7, scope: !2915)
!2923 = !DILocation(line: 110, column: 7, scope: !2915)
!2924 = !DILocation(line: 110, column: 7, scope: !2918)
!2925 = !DILocation(line: 112, column: 7, scope: !2915)
!2926 = !DILocation(line: 117, column: 7, scope: !2915)
!2927 = !DILocation(line: 117, column: 7, scope: !2918)
!2928 = !DILocation(line: 119, column: 7, scope: !2915)
!2929 = !DILocation(line: 124, column: 7, scope: !2915)
!2930 = !DILocation(line: 124, column: 7, scope: !2918)
!2931 = !DILocation(line: 126, column: 7, scope: !2915)
!2932 = !DILocation(line: 131, column: 7, scope: !2915)
!2933 = !DILocation(line: 131, column: 7, scope: !2918)
!2934 = !DILocation(line: 134, column: 7, scope: !2915)
!2935 = !DILocation(line: 139, column: 7, scope: !2915)
!2936 = !DILocation(line: 139, column: 7, scope: !2918)
!2937 = !DILocation(line: 142, column: 7, scope: !2915)
!2938 = !DILocation(line: 147, column: 7, scope: !2915)
!2939 = !DILocation(line: 147, column: 7, scope: !2918)
!2940 = !DILocation(line: 151, column: 7, scope: !2915)
!2941 = !DILocation(line: 156, column: 7, scope: !2915)
!2942 = !DILocation(line: 156, column: 7, scope: !2918)
!2943 = !DILocation(line: 160, column: 7, scope: !2915)
!2944 = !DILocation(line: 167, column: 7, scope: !2915)
!2945 = !DILocation(line: 167, column: 7, scope: !2918)
!2946 = !DILocation(line: 171, column: 7, scope: !2915)
!2947 = !DILocation(line: 173, column: 1, scope: !2831)
!2948 = distinct !DISubprogram(name: "version_etc_ar", scope: !540, file: !540, line: 180, type: !2949, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{null, !2834, !20, !20, !20, !2889}
!2951 = !{!2952, !2953, !2954, !2955, !2956, !2957}
!2952 = !DILocalVariable(name: "stream", arg: 1, scope: !2948, file: !540, line: 180, type: !2834)
!2953 = !DILocalVariable(name: "command_name", arg: 2, scope: !2948, file: !540, line: 181, type: !20)
!2954 = !DILocalVariable(name: "package", arg: 3, scope: !2948, file: !540, line: 181, type: !20)
!2955 = !DILocalVariable(name: "version", arg: 4, scope: !2948, file: !540, line: 182, type: !20)
!2956 = !DILocalVariable(name: "authors", arg: 5, scope: !2948, file: !540, line: 182, type: !2889)
!2957 = !DILocalVariable(name: "n_authors", scope: !2948, file: !540, line: 184, type: !12)
!2958 = !DILocation(line: 180, column: 23, scope: !2948)
!2959 = !DILocation(line: 181, column: 29, scope: !2948)
!2960 = !DILocation(line: 181, column: 55, scope: !2948)
!2961 = !DILocation(line: 182, column: 29, scope: !2948)
!2962 = !DILocation(line: 182, column: 59, scope: !2948)
!2963 = !DILocation(line: 184, column: 10, scope: !2948)
!2964 = !DILocation(line: 186, column: 8, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2948, file: !540, line: 186, column: 3)
!2966 = !DILocation(line: 186, column: 23, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2968, file: !540, discriminator: 1)
!2968 = distinct !DILexicalBlock(scope: !2965, file: !540, line: 186, column: 3)
!2969 = !DILocation(line: 186, column: 3, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2965, file: !540, discriminator: 1)
!2971 = !DILocation(line: 186, column: 52, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !2968, file: !540, discriminator: 3)
!2973 = distinct !{!2973, !2974, !2975}
!2974 = !DILocation(line: 186, column: 3, scope: !2965)
!2975 = !DILocation(line: 187, column: 5, scope: !2965)
!2976 = !DILocation(line: 188, column: 3, scope: !2948)
!2977 = !DILocation(line: 189, column: 1, scope: !2948)
!2978 = distinct !DISubprogram(name: "version_etc_va", scope: !540, file: !540, line: 196, type: !2979, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2988)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2834, !20, !20, !20, !2981}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !537, line: 189, size: 192, elements: !2983)
!2983 = !{!2984, !2985, !2986, !2987}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2982, file: !537, line: 189, baseType: !152, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2982, file: !537, line: 189, baseType: !152, size: 32, offset: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2982, file: !537, line: 189, baseType: !11, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2982, file: !537, line: 189, baseType: !11, size: 64, offset: 128)
!2988 = !{!2989, !2990, !2991, !2992, !2993, !2994, !2995}
!2989 = !DILocalVariable(name: "stream", arg: 1, scope: !2978, file: !540, line: 196, type: !2834)
!2990 = !DILocalVariable(name: "command_name", arg: 2, scope: !2978, file: !540, line: 197, type: !20)
!2991 = !DILocalVariable(name: "package", arg: 3, scope: !2978, file: !540, line: 197, type: !20)
!2992 = !DILocalVariable(name: "version", arg: 4, scope: !2978, file: !540, line: 198, type: !20)
!2993 = !DILocalVariable(name: "authors", arg: 5, scope: !2978, file: !540, line: 198, type: !2981)
!2994 = !DILocalVariable(name: "n_authors", scope: !2978, file: !540, line: 200, type: !12)
!2995 = !DILocalVariable(name: "authtab", scope: !2978, file: !540, line: 201, type: !2996)
!2996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 640, elements: !142)
!2997 = !DILocation(line: 196, column: 23, scope: !2978)
!2998 = !DILocation(line: 197, column: 29, scope: !2978)
!2999 = !DILocation(line: 197, column: 55, scope: !2978)
!3000 = !DILocation(line: 198, column: 29, scope: !2978)
!3001 = !DILocation(line: 198, column: 46, scope: !2978)
!3002 = !DILocation(line: 201, column: 3, scope: !2978)
!3003 = !DILocation(line: 201, column: 15, scope: !2978)
!3004 = !DILocation(line: 200, column: 10, scope: !2978)
!3005 = !DILocation(line: 205, column: 35, scope: !3006)
!3006 = !DILexicalBlockFile(scope: !3007, file: !540, discriminator: 1)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !540, line: 203, column: 3)
!3008 = distinct !DILexicalBlock(scope: !2978, file: !540, line: 203, column: 3)
!3009 = !DILocation(line: 205, column: 35, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !3007, file: !540, discriminator: 2)
!3011 = !DILocation(line: 205, column: 35, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3007, file: !540, discriminator: 3)
!3013 = !DILocation(line: 205, column: 35, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !3007, file: !540, discriminator: 4)
!3015 = !DILocation(line: 205, column: 14, scope: !3014)
!3016 = !DILocation(line: 205, column: 33, scope: !3014)
!3017 = !DILocation(line: 205, column: 67, scope: !3014)
!3018 = !DILocation(line: 203, column: 3, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !3008, file: !540, discriminator: 1)
!3020 = !DILocation(line: 208, column: 3, scope: !2978)
!3021 = !DILocation(line: 210, column: 1, scope: !2978)
!3022 = distinct !DISubprogram(name: "version_etc", scope: !540, file: !540, line: 227, type: !3023, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !2834, !20, !20, !20, null}
!3025 = !{!3026, !3027, !3028, !3029, !3030}
!3026 = !DILocalVariable(name: "stream", arg: 1, scope: !3022, file: !540, line: 227, type: !2834)
!3027 = !DILocalVariable(name: "command_name", arg: 2, scope: !3022, file: !540, line: 228, type: !20)
!3028 = !DILocalVariable(name: "package", arg: 3, scope: !3022, file: !540, line: 228, type: !20)
!3029 = !DILocalVariable(name: "version", arg: 4, scope: !3022, file: !540, line: 229, type: !20)
!3030 = !DILocalVariable(name: "authors", scope: !3022, file: !540, line: 231, type: !3031)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2836, line: 80, baseType: !3032)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3033, line: 50, baseType: !3034)
!3033 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !537, line: 231, baseType: !3035)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2982, size: 192, elements: !2872)
!3036 = !DILocation(line: 227, column: 20, scope: !3022)
!3037 = !DILocation(line: 228, column: 26, scope: !3022)
!3038 = !DILocation(line: 228, column: 52, scope: !3022)
!3039 = !DILocation(line: 229, column: 26, scope: !3022)
!3040 = !DILocation(line: 231, column: 3, scope: !3022)
!3041 = !DILocation(line: 231, column: 11, scope: !3022)
!3042 = !DILocation(line: 233, column: 3, scope: !3022)
!3043 = !DILocation(line: 234, column: 3, scope: !3022)
!3044 = !DILocation(line: 235, column: 3, scope: !3022)
!3045 = !DILocation(line: 236, column: 1, scope: !3022)
!3046 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !540, file: !540, line: 239, type: !799, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !70)
!3047 = !DILocation(line: 245, column: 3, scope: !3046)
!3048 = !DILocation(line: 245, column: 3, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3046, file: !540, discriminator: 1)
!3050 = !DILocation(line: 251, column: 3, scope: !3046)
!3051 = !DILocation(line: 251, column: 3, scope: !3049)
!3052 = !DILocation(line: 256, column: 3, scope: !3046)
!3053 = !DILocation(line: 256, column: 3, scope: !3049)
!3054 = !DILocation(line: 258, column: 1, scope: !3046)
!3055 = distinct !DISubprogram(name: "xnmalloc", scope: !548, file: !548, line: 105, type: !3056, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!11, !12, !12}
!3058 = !{!3059, !3060}
!3059 = !DILocalVariable(name: "n", arg: 1, scope: !3055, file: !548, line: 105, type: !12)
!3060 = !DILocalVariable(name: "s", arg: 2, scope: !3055, file: !548, line: 105, type: !12)
!3061 = !DILocation(line: 105, column: 18, scope: !3055)
!3062 = !DILocation(line: 105, column: 28, scope: !3055)
!3063 = !DILocation(line: 107, column: 7, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3055, file: !548, line: 107, column: 7)
!3065 = !DILocation(line: 107, column: 7, scope: !3055)
!3066 = !DILocation(line: 108, column: 5, scope: !3064)
!3067 = !DILocation(line: 109, column: 21, scope: !3055)
!3068 = !DILocalVariable(name: "n", arg: 1, scope: !3069, file: !3070, line: 39, type: !12)
!3069 = distinct !DISubprogram(name: "xmalloc", scope: !3070, file: !3070, line: 39, type: !3071, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3073)
!3070 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!11, !12}
!3073 = !{!3068, !3074}
!3074 = !DILocalVariable(name: "p", scope: !3069, file: !3070, line: 41, type: !11)
!3075 = !DILocation(line: 39, column: 17, scope: !3069, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 109, column: 10, scope: !3055)
!3077 = !DILocation(line: 41, column: 13, scope: !3069, inlinedAt: !3076)
!3078 = !DILocation(line: 41, column: 9, scope: !3069, inlinedAt: !3076)
!3079 = !DILocation(line: 42, column: 8, scope: !3080, inlinedAt: !3076)
!3080 = distinct !DILexicalBlock(scope: !3069, file: !3070, line: 42, column: 7)
!3081 = !DILocation(line: 42, column: 15, scope: !3082, inlinedAt: !3076)
!3082 = !DILexicalBlockFile(scope: !3080, file: !3070, discriminator: 1)
!3083 = !DILocation(line: 42, column: 10, scope: !3080, inlinedAt: !3076)
!3084 = !DILocation(line: 43, column: 5, scope: !3080, inlinedAt: !3076)
!3085 = !DILocation(line: 109, column: 3, scope: !3055)
!3086 = !DILocation(line: 39, column: 17, scope: !3069)
!3087 = !DILocation(line: 41, column: 13, scope: !3069)
!3088 = !DILocation(line: 41, column: 9, scope: !3069)
!3089 = !DILocation(line: 42, column: 8, scope: !3080)
!3090 = !DILocation(line: 42, column: 15, scope: !3082)
!3091 = !DILocation(line: 42, column: 10, scope: !3080)
!3092 = !DILocation(line: 43, column: 5, scope: !3080)
!3093 = !DILocation(line: 44, column: 3, scope: !3069)
!3094 = distinct !DISubprogram(name: "xnrealloc", scope: !548, file: !548, line: 118, type: !3095, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3097)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!11, !11, !12, !12}
!3097 = !{!3098, !3099, !3100}
!3098 = !DILocalVariable(name: "p", arg: 1, scope: !3094, file: !548, line: 118, type: !11)
!3099 = !DILocalVariable(name: "n", arg: 2, scope: !3094, file: !548, line: 118, type: !12)
!3100 = !DILocalVariable(name: "s", arg: 3, scope: !3094, file: !548, line: 118, type: !12)
!3101 = !DILocation(line: 118, column: 18, scope: !3094)
!3102 = !DILocation(line: 118, column: 28, scope: !3094)
!3103 = !DILocation(line: 118, column: 38, scope: !3094)
!3104 = !DILocation(line: 120, column: 7, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3094, file: !548, line: 120, column: 7)
!3106 = !DILocation(line: 120, column: 7, scope: !3094)
!3107 = !DILocation(line: 121, column: 5, scope: !3105)
!3108 = !DILocation(line: 122, column: 25, scope: !3094)
!3109 = !DILocalVariable(name: "p", arg: 1, scope: !3110, file: !3070, line: 51, type: !11)
!3110 = distinct !DISubprogram(name: "xrealloc", scope: !3070, file: !3070, line: 51, type: !3111, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!11, !11, !12}
!3113 = !{!3109, !3114}
!3114 = !DILocalVariable(name: "n", arg: 2, scope: !3110, file: !3070, line: 51, type: !12)
!3115 = !DILocation(line: 51, column: 17, scope: !3110, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 122, column: 10, scope: !3094)
!3117 = !DILocation(line: 51, column: 27, scope: !3110, inlinedAt: !3116)
!3118 = !DILocation(line: 53, column: 8, scope: !3119, inlinedAt: !3116)
!3119 = distinct !DILexicalBlock(scope: !3110, file: !3070, line: 53, column: 7)
!3120 = !DILocation(line: 53, column: 13, scope: !3121, inlinedAt: !3116)
!3121 = !DILexicalBlockFile(scope: !3119, file: !3070, discriminator: 1)
!3122 = !DILocation(line: 53, column: 10, scope: !3119, inlinedAt: !3116)
!3123 = !DILocation(line: 57, column: 7, scope: !3124, inlinedAt: !3116)
!3124 = distinct !DILexicalBlock(scope: !3119, file: !3070, line: 54, column: 5)
!3125 = !DILocation(line: 58, column: 7, scope: !3124, inlinedAt: !3116)
!3126 = !DILocation(line: 61, column: 7, scope: !3110, inlinedAt: !3116)
!3127 = !DILocation(line: 62, column: 8, scope: !3128, inlinedAt: !3116)
!3128 = distinct !DILexicalBlock(scope: !3110, file: !3070, line: 62, column: 7)
!3129 = !DILocation(line: 62, column: 13, scope: !3130, inlinedAt: !3116)
!3130 = !DILexicalBlockFile(scope: !3128, file: !3070, discriminator: 1)
!3131 = !DILocation(line: 62, column: 10, scope: !3128, inlinedAt: !3116)
!3132 = !DILocation(line: 63, column: 5, scope: !3128, inlinedAt: !3116)
!3133 = !DILocation(line: 122, column: 3, scope: !3094)
!3134 = !DILocation(line: 51, column: 17, scope: !3110)
!3135 = !DILocation(line: 51, column: 27, scope: !3110)
!3136 = !DILocation(line: 53, column: 8, scope: !3119)
!3137 = !DILocation(line: 53, column: 13, scope: !3121)
!3138 = !DILocation(line: 53, column: 10, scope: !3119)
!3139 = !DILocation(line: 57, column: 7, scope: !3124)
!3140 = !DILocation(line: 58, column: 7, scope: !3124)
!3141 = !DILocation(line: 61, column: 7, scope: !3110)
!3142 = !DILocation(line: 62, column: 8, scope: !3128)
!3143 = !DILocation(line: 62, column: 13, scope: !3130)
!3144 = !DILocation(line: 62, column: 10, scope: !3128)
!3145 = !DILocation(line: 63, column: 5, scope: !3128)
!3146 = !DILocation(line: 65, column: 1, scope: !3110)
!3147 = !DILocation(line: 180, column: 19, scope: !549)
!3148 = !DILocation(line: 180, column: 30, scope: !549)
!3149 = !DILocation(line: 180, column: 41, scope: !549)
!3150 = !DILocation(line: 182, column: 14, scope: !549)
!3151 = !DILocation(line: 182, column: 10, scope: !549)
!3152 = !DILocation(line: 184, column: 9, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !549, file: !548, line: 184, column: 7)
!3154 = !DILocation(line: 184, column: 7, scope: !549)
!3155 = !DILocation(line: 186, column: 13, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !548, line: 186, column: 11)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !548, line: 185, column: 5)
!3158 = !DILocation(line: 186, column: 11, scope: !3157)
!3159 = !DILocation(line: 194, column: 30, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3156, file: !548, line: 187, column: 9)
!3161 = !DILocation(line: 195, column: 16, scope: !3160)
!3162 = !DILocation(line: 195, column: 13, scope: !3160)
!3163 = !DILocation(line: 196, column: 9, scope: !3160)
!3164 = !DILocation(line: 204, column: 69, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !548, line: 204, column: 11)
!3166 = distinct !DILexicalBlock(scope: !3153, file: !548, line: 199, column: 5)
!3167 = !DILocation(line: 205, column: 11, scope: !3165)
!3168 = !DILocation(line: 204, column: 11, scope: !3166)
!3169 = !DILocation(line: 206, column: 9, scope: !3165)
!3170 = !DILocation(line: 210, column: 7, scope: !549)
!3171 = !DILocation(line: 211, column: 25, scope: !549)
!3172 = !DILocation(line: 51, column: 17, scope: !3110, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 211, column: 10, scope: !549)
!3174 = !DILocation(line: 51, column: 27, scope: !3110, inlinedAt: !3173)
!3175 = !DILocation(line: 53, column: 10, scope: !3119, inlinedAt: !3173)
!3176 = !DILocation(line: 207, column: 14, scope: !3166)
!3177 = !DILocation(line: 207, column: 18, scope: !3166)
!3178 = !DILocation(line: 207, column: 9, scope: !3166)
!3179 = !DILocation(line: 53, column: 8, scope: !3119, inlinedAt: !3173)
!3180 = !DILocation(line: 57, column: 7, scope: !3124, inlinedAt: !3173)
!3181 = !DILocation(line: 58, column: 7, scope: !3124, inlinedAt: !3173)
!3182 = !DILocation(line: 61, column: 7, scope: !3110, inlinedAt: !3173)
!3183 = !DILocation(line: 62, column: 8, scope: !3128, inlinedAt: !3173)
!3184 = !DILocation(line: 62, column: 13, scope: !3130, inlinedAt: !3173)
!3185 = !DILocation(line: 62, column: 10, scope: !3128, inlinedAt: !3173)
!3186 = !DILocation(line: 63, column: 5, scope: !3128, inlinedAt: !3173)
!3187 = !DILocation(line: 211, column: 3, scope: !549)
!3188 = distinct !DISubprogram(name: "xcharalloc", scope: !548, file: !548, line: 220, type: !2103, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3189)
!3189 = !{!3190}
!3190 = !DILocalVariable(name: "n", arg: 1, scope: !3188, file: !548, line: 220, type: !12)
!3191 = !DILocation(line: 220, column: 20, scope: !3188)
!3192 = !DILocation(line: 39, column: 17, scope: !3069, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 222, column: 10, scope: !3188)
!3194 = !DILocation(line: 41, column: 13, scope: !3069, inlinedAt: !3193)
!3195 = !DILocation(line: 41, column: 9, scope: !3069, inlinedAt: !3193)
!3196 = !DILocation(line: 42, column: 8, scope: !3080, inlinedAt: !3193)
!3197 = !DILocation(line: 42, column: 15, scope: !3082, inlinedAt: !3193)
!3198 = !DILocation(line: 42, column: 10, scope: !3080, inlinedAt: !3193)
!3199 = !DILocation(line: 43, column: 5, scope: !3080, inlinedAt: !3193)
!3200 = !DILocation(line: 222, column: 3, scope: !3188)
!3201 = distinct !DISubprogram(name: "x2realloc", scope: !3070, file: !3070, line: 74, type: !3202, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!11, !11, !552}
!3204 = !{!3205, !3206}
!3205 = !DILocalVariable(name: "p", arg: 1, scope: !3201, file: !3070, line: 74, type: !11)
!3206 = !DILocalVariable(name: "pn", arg: 2, scope: !3201, file: !3070, line: 74, type: !552)
!3207 = !DILocation(line: 74, column: 18, scope: !3201)
!3208 = !DILocation(line: 74, column: 29, scope: !3201)
!3209 = !DILocation(line: 180, column: 19, scope: !549, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 76, column: 10, scope: !3201)
!3211 = !DILocation(line: 180, column: 30, scope: !549, inlinedAt: !3210)
!3212 = !DILocation(line: 180, column: 41, scope: !549, inlinedAt: !3210)
!3213 = !DILocation(line: 182, column: 14, scope: !549, inlinedAt: !3210)
!3214 = !DILocation(line: 182, column: 10, scope: !549, inlinedAt: !3210)
!3215 = !DILocation(line: 184, column: 9, scope: !3153, inlinedAt: !3210)
!3216 = !DILocation(line: 184, column: 7, scope: !549, inlinedAt: !3210)
!3217 = !DILocation(line: 186, column: 13, scope: !3156, inlinedAt: !3210)
!3218 = !DILocation(line: 186, column: 11, scope: !3157, inlinedAt: !3210)
!3219 = !DILocation(line: 210, column: 7, scope: !549, inlinedAt: !3210)
!3220 = !DILocation(line: 51, column: 17, scope: !3110, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 211, column: 10, scope: !549, inlinedAt: !3210)
!3222 = !DILocation(line: 51, column: 27, scope: !3110, inlinedAt: !3221)
!3223 = !DILocation(line: 53, column: 10, scope: !3119, inlinedAt: !3221)
!3224 = !DILocation(line: 205, column: 11, scope: !3165, inlinedAt: !3210)
!3225 = !DILocation(line: 204, column: 11, scope: !3166, inlinedAt: !3210)
!3226 = !DILocation(line: 206, column: 9, scope: !3165, inlinedAt: !3210)
!3227 = !DILocation(line: 207, column: 14, scope: !3166, inlinedAt: !3210)
!3228 = !DILocation(line: 207, column: 18, scope: !3166, inlinedAt: !3210)
!3229 = !DILocation(line: 207, column: 9, scope: !3166, inlinedAt: !3210)
!3230 = !DILocation(line: 53, column: 8, scope: !3119, inlinedAt: !3221)
!3231 = !DILocation(line: 57, column: 7, scope: !3124, inlinedAt: !3221)
!3232 = !DILocation(line: 58, column: 7, scope: !3124, inlinedAt: !3221)
!3233 = !DILocation(line: 61, column: 7, scope: !3110, inlinedAt: !3221)
!3234 = !DILocation(line: 62, column: 8, scope: !3128, inlinedAt: !3221)
!3235 = !DILocation(line: 62, column: 13, scope: !3130, inlinedAt: !3221)
!3236 = !DILocation(line: 62, column: 10, scope: !3128, inlinedAt: !3221)
!3237 = !DILocation(line: 63, column: 5, scope: !3128, inlinedAt: !3221)
!3238 = !DILocation(line: 76, column: 3, scope: !3201)
!3239 = distinct !DISubprogram(name: "xzalloc", scope: !3070, file: !3070, line: 84, type: !3071, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3240)
!3240 = !{!3241}
!3241 = !DILocalVariable(name: "s", arg: 1, scope: !3239, file: !3070, line: 84, type: !12)
!3242 = !DILocation(line: 84, column: 17, scope: !3239)
!3243 = !DILocation(line: 39, column: 17, scope: !3069, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 86, column: 18, scope: !3239)
!3245 = !DILocation(line: 41, column: 13, scope: !3069, inlinedAt: !3244)
!3246 = !DILocation(line: 41, column: 9, scope: !3069, inlinedAt: !3244)
!3247 = !DILocation(line: 42, column: 8, scope: !3080, inlinedAt: !3244)
!3248 = !DILocation(line: 42, column: 15, scope: !3082, inlinedAt: !3244)
!3249 = !DILocation(line: 42, column: 10, scope: !3080, inlinedAt: !3244)
!3250 = !DILocation(line: 43, column: 5, scope: !3080, inlinedAt: !3244)
!3251 = !DILocation(line: 86, column: 10, scope: !3239)
!3252 = !DILocation(line: 86, column: 3, scope: !3239)
!3253 = distinct !DISubprogram(name: "xcalloc", scope: !3070, file: !3070, line: 93, type: !3056, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3254)
!3254 = !{!3255, !3256, !3257}
!3255 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !3070, line: 93, type: !12)
!3256 = !DILocalVariable(name: "s", arg: 2, scope: !3253, file: !3070, line: 93, type: !12)
!3257 = !DILocalVariable(name: "p", scope: !3253, file: !3070, line: 95, type: !11)
!3258 = !DILocation(line: 93, column: 17, scope: !3253)
!3259 = !DILocation(line: 93, column: 27, scope: !3253)
!3260 = !DILocation(line: 100, column: 7, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3253, file: !3070, line: 100, column: 7)
!3262 = !DILocation(line: 101, column: 7, scope: !3261)
!3263 = !DILocation(line: 101, column: 18, scope: !3264)
!3264 = !DILexicalBlockFile(scope: !3261, file: !3070, discriminator: 1)
!3265 = !DILocation(line: 95, column: 9, scope: !3253)
!3266 = !DILocation(line: 101, column: 16, scope: !3264)
!3267 = !DILocation(line: 100, column: 7, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !3253, file: !3070, discriminator: 1)
!3269 = !DILocation(line: 102, column: 5, scope: !3261)
!3270 = !DILocation(line: 103, column: 3, scope: !3253)
!3271 = distinct !DISubprogram(name: "xmemdup", scope: !3070, file: !3070, line: 111, type: !3272, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!11, !15, !12}
!3274 = !{!3275, !3276}
!3275 = !DILocalVariable(name: "p", arg: 1, scope: !3271, file: !3070, line: 111, type: !15)
!3276 = !DILocalVariable(name: "s", arg: 2, scope: !3271, file: !3070, line: 111, type: !12)
!3277 = !DILocation(line: 111, column: 22, scope: !3271)
!3278 = !DILocation(line: 111, column: 32, scope: !3271)
!3279 = !DILocation(line: 39, column: 17, scope: !3069, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 113, column: 18, scope: !3271)
!3281 = !DILocation(line: 41, column: 13, scope: !3069, inlinedAt: !3280)
!3282 = !DILocation(line: 41, column: 9, scope: !3069, inlinedAt: !3280)
!3283 = !DILocation(line: 42, column: 8, scope: !3080, inlinedAt: !3280)
!3284 = !DILocation(line: 42, column: 15, scope: !3082, inlinedAt: !3280)
!3285 = !DILocation(line: 42, column: 10, scope: !3080, inlinedAt: !3280)
!3286 = !DILocation(line: 43, column: 5, scope: !3080, inlinedAt: !3280)
!3287 = !DILocation(line: 113, column: 10, scope: !3271)
!3288 = !DILocation(line: 113, column: 3, scope: !3271)
!3289 = distinct !DISubprogram(name: "xstrdup", scope: !3070, file: !3070, line: 119, type: !2310, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3290)
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "string", arg: 1, scope: !3289, file: !3070, line: 119, type: !20)
!3292 = !DILocation(line: 119, column: 22, scope: !3289)
!3293 = !DILocation(line: 121, column: 27, scope: !3289)
!3294 = !DILocation(line: 121, column: 43, scope: !3289)
!3295 = !DILocation(line: 111, column: 22, scope: !3271, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 121, column: 10, scope: !3297)
!3297 = !DILexicalBlockFile(scope: !3289, file: !3070, discriminator: 1)
!3298 = !DILocation(line: 111, column: 32, scope: !3271, inlinedAt: !3296)
!3299 = !DILocation(line: 39, column: 17, scope: !3069, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 113, column: 18, scope: !3271, inlinedAt: !3296)
!3301 = !DILocation(line: 41, column: 13, scope: !3069, inlinedAt: !3300)
!3302 = !DILocation(line: 41, column: 9, scope: !3069, inlinedAt: !3300)
!3303 = !DILocation(line: 42, column: 8, scope: !3080, inlinedAt: !3300)
!3304 = !DILocation(line: 42, column: 15, scope: !3082, inlinedAt: !3300)
!3305 = !DILocation(line: 42, column: 10, scope: !3080, inlinedAt: !3300)
!3306 = !DILocation(line: 43, column: 5, scope: !3080, inlinedAt: !3300)
!3307 = !DILocation(line: 113, column: 10, scope: !3271, inlinedAt: !3296)
!3308 = !DILocation(line: 121, column: 3, scope: !3289)
!3309 = distinct !DISubprogram(name: "xalloc_die", scope: !3310, file: !3310, line: 32, type: !799, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !561, variables: !70)
!3310 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3311 = !DILocation(line: 34, column: 10, scope: !3309)
!3312 = !DILocation(line: 34, column: 33, scope: !3309)
!3313 = !DILocation(line: 34, column: 3, scope: !3314)
!3314 = !DILexicalBlockFile(scope: !3309, file: !3310, discriminator: 1)
!3315 = !DILocation(line: 40, column: 3, scope: !3309)
!3316 = distinct !DISubprogram(name: "rpl_calloc", scope: !3317, file: !3317, line: 42, type: !3056, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3318)
!3317 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3318 = !{!3319, !3320, !3321, !3322}
!3319 = !DILocalVariable(name: "n", arg: 1, scope: !3316, file: !3317, line: 42, type: !12)
!3320 = !DILocalVariable(name: "s", arg: 2, scope: !3316, file: !3317, line: 42, type: !12)
!3321 = !DILocalVariable(name: "result", scope: !3316, file: !3317, line: 44, type: !11)
!3322 = !DILocalVariable(name: "bytes", scope: !3323, file: !3317, line: 56, type: !12)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !3317, line: 53, column: 5)
!3324 = distinct !DILexicalBlock(scope: !3316, file: !3317, line: 47, column: 7)
!3325 = !DILocation(line: 42, column: 20, scope: !3316)
!3326 = !DILocation(line: 42, column: 30, scope: !3316)
!3327 = !DILocation(line: 47, column: 9, scope: !3324)
!3328 = !DILocation(line: 47, column: 19, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !3324, file: !3317, discriminator: 1)
!3330 = !DILocation(line: 47, column: 14, scope: !3324)
!3331 = !DILocation(line: 56, column: 24, scope: !3323)
!3332 = !DILocation(line: 56, column: 14, scope: !3323)
!3333 = !DILocation(line: 57, column: 17, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3323, file: !3317, line: 57, column: 11)
!3335 = !DILocation(line: 57, column: 21, scope: !3334)
!3336 = !DILocation(line: 57, column: 11, scope: !3323)
!3337 = !DILocation(line: 59, column: 11, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3334, file: !3317, line: 58, column: 9)
!3339 = !DILocation(line: 59, column: 17, scope: !3338)
!3340 = !DILocation(line: 65, column: 12, scope: !3316)
!3341 = !DILocation(line: 44, column: 9, scope: !3316)
!3342 = !DILocation(line: 72, column: 3, scope: !3316)
!3343 = !DILocation(line: 73, column: 1, scope: !3316)
!3344 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3345, file: !3345, line: 334, type: !3346, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3360)
!3345 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!12, !3348, !20, !12, !3349}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1075, line: 107, baseType: !3351)
!3351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1075, line: 95, baseType: !3352)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1075, line: 83, size: 64, elements: !3353)
!3353 = !{!3354, !3355}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3352, file: !1075, line: 85, baseType: !50, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3352, file: !1075, line: 94, baseType: !3356, size: 32, offset: 32)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3352, file: !1075, line: 86, size: 32, elements: !3357)
!3357 = !{!3358, !3359}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3356, file: !1075, line: 89, baseType: !152, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3356, file: !1075, line: 93, baseType: !1085, size: 32)
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366, !3367}
!3361 = !DILocalVariable(name: "pwc", arg: 1, scope: !3344, file: !3345, line: 334, type: !3348)
!3362 = !DILocalVariable(name: "s", arg: 2, scope: !3344, file: !3345, line: 334, type: !20)
!3363 = !DILocalVariable(name: "n", arg: 3, scope: !3344, file: !3345, line: 334, type: !12)
!3364 = !DILocalVariable(name: "ps", arg: 4, scope: !3344, file: !3345, line: 334, type: !3349)
!3365 = !DILocalVariable(name: "ret", scope: !3344, file: !3345, line: 336, type: !12)
!3366 = !DILocalVariable(name: "wc", scope: !3344, file: !3345, line: 337, type: !1088)
!3367 = !DILocalVariable(name: "uc", scope: !3368, file: !3345, line: 398, type: !19)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !3345, line: 397, column: 5)
!3369 = distinct !DILexicalBlock(scope: !3344, file: !3345, line: 396, column: 7)
!3370 = !DILocation(line: 334, column: 23, scope: !3344)
!3371 = !DILocation(line: 334, column: 40, scope: !3344)
!3372 = !DILocation(line: 334, column: 50, scope: !3344)
!3373 = !DILocation(line: 334, column: 64, scope: !3344)
!3374 = !DILocation(line: 337, column: 3, scope: !3344)
!3375 = !DILocation(line: 353, column: 9, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3344, file: !3345, line: 353, column: 7)
!3377 = !DILocation(line: 353, column: 7, scope: !3344)
!3378 = !DILocation(line: 388, column: 9, scope: !3344)
!3379 = !DILocation(line: 336, column: 10, scope: !3344)
!3380 = !DILocation(line: 396, column: 19, scope: !3369)
!3381 = !DILocation(line: 396, column: 31, scope: !3382)
!3382 = !DILexicalBlockFile(scope: !3369, file: !3345, discriminator: 1)
!3383 = !DILocation(line: 396, column: 26, scope: !3369)
!3384 = !DILocation(line: 396, column: 41, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !3369, file: !3345, discriminator: 2)
!3386 = !DILocation(line: 396, column: 7, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3344, file: !3345, discriminator: 2)
!3388 = !DILocation(line: 398, column: 26, scope: !3368)
!3389 = !DILocation(line: 398, column: 21, scope: !3368)
!3390 = !DILocation(line: 399, column: 14, scope: !3368)
!3391 = !DILocation(line: 399, column: 12, scope: !3368)
!3392 = !DILocation(line: 405, column: 1, scope: !3344)
!3393 = distinct !DISubprogram(name: "close_stream", scope: !3394, file: !3394, line: 56, type: !3395, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3437)
!3394 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!50, !3397}
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2836, line: 49, baseType: !3399)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3399, file: !2838, line: 242, baseType: !50, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3399, file: !2838, line: 247, baseType: !9, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3399, file: !2838, line: 248, baseType: !9, size: 64, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3399, file: !2838, line: 249, baseType: !9, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3399, file: !2838, line: 250, baseType: !9, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3399, file: !2838, line: 251, baseType: !9, size: 64, offset: 320)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3399, file: !2838, line: 252, baseType: !9, size: 64, offset: 384)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3399, file: !2838, line: 253, baseType: !9, size: 64, offset: 448)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3399, file: !2838, line: 254, baseType: !9, size: 64, offset: 512)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3399, file: !2838, line: 256, baseType: !9, size: 64, offset: 576)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3399, file: !2838, line: 257, baseType: !9, size: 64, offset: 640)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3399, file: !2838, line: 258, baseType: !9, size: 64, offset: 704)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3399, file: !2838, line: 260, baseType: !3414, size: 64, offset: 768)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !3416)
!3416 = !{!3417, !3418, !3420}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3415, file: !2838, line: 157, baseType: !3414, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3415, file: !2838, line: 158, baseType: !3419, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3415, file: !2838, line: 162, baseType: !50, size: 32, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3399, file: !2838, line: 262, baseType: !3419, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3399, file: !2838, line: 264, baseType: !50, size: 32, offset: 896)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3399, file: !2838, line: 268, baseType: !50, size: 32, offset: 928)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3399, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3399, file: !2838, line: 274, baseType: !135, size: 16, offset: 1024)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3399, file: !2838, line: 275, baseType: !2869, size: 8, offset: 1040)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3399, file: !2838, line: 276, baseType: !2871, size: 8, offset: 1048)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3399, file: !2838, line: 280, baseType: !2875, size: 64, offset: 1088)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3399, file: !2838, line: 289, baseType: !2878, size: 64, offset: 1152)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3399, file: !2838, line: 297, baseType: !11, size: 64, offset: 1216)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3399, file: !2838, line: 298, baseType: !11, size: 64, offset: 1280)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3399, file: !2838, line: 299, baseType: !11, size: 64, offset: 1344)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3399, file: !2838, line: 300, baseType: !11, size: 64, offset: 1408)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3399, file: !2838, line: 302, baseType: !12, size: 64, offset: 1472)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3399, file: !2838, line: 303, baseType: !50, size: 32, offset: 1536)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3399, file: !2838, line: 305, baseType: !2886, size: 160, offset: 1568)
!3437 = !{!3438, !3439, !3441, !3442}
!3438 = !DILocalVariable(name: "stream", arg: 1, scope: !3393, file: !3394, line: 56, type: !3397)
!3439 = !DILocalVariable(name: "some_pending", scope: !3393, file: !3394, line: 58, type: !3440)
!3440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!3441 = !DILocalVariable(name: "prev_fail", scope: !3393, file: !3394, line: 59, type: !3440)
!3442 = !DILocalVariable(name: "fclose_fail", scope: !3393, file: !3394, line: 60, type: !3440)
!3443 = !DILocation(line: 56, column: 21, scope: !3393)
!3444 = !DILocation(line: 58, column: 30, scope: !3393)
!3445 = !DILocalVariable(name: "__stream", arg: 1, scope: !3446, file: !3447, line: 132, type: !3397)
!3446 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3447, file: !3447, line: 132, type: !3395, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3448)
!3447 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3448 = !{!3445}
!3449 = !DILocation(line: 132, column: 1, scope: !3446, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 59, column: 27, scope: !3393)
!3451 = !DILocation(line: 134, column: 10, scope: !3446, inlinedAt: !3450)
!3452 = !{!3453, !677, i64 0}
!3453 = !{!"_IO_FILE", !677, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !598, i64 32, !598, i64 40, !598, i64 48, !598, i64 56, !598, i64 64, !598, i64 72, !598, i64 80, !598, i64 88, !598, i64 96, !598, i64 104, !677, i64 112, !677, i64 116, !2148, i64 120, !1440, i64 128, !599, i64 130, !599, i64 131, !598, i64 136, !2148, i64 144, !598, i64 152, !598, i64 160, !598, i64 168, !598, i64 176, !2148, i64 184, !677, i64 192, !599, i64 196}
!3454 = !DILocation(line: 59, column: 43, scope: !3393)
!3455 = !DILocation(line: 60, column: 29, scope: !3393)
!3456 = !DILocation(line: 60, column: 45, scope: !3393)
!3457 = !DILocation(line: 70, column: 17, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3393, file: !3394, line: 70, column: 7)
!3459 = !DILocation(line: 70, column: 33, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3458, file: !3394, discriminator: 1)
!3461 = !DILocation(line: 70, column: 53, scope: !3462)
!3462 = !DILexicalBlockFile(scope: !3458, file: !3394, discriminator: 3)
!3463 = !DILocation(line: 70, column: 7, scope: !3464)
!3464 = !DILexicalBlockFile(scope: !3393, file: !3394, discriminator: 3)
!3465 = !DILocation(line: 72, column: 11, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3458, file: !3394, line: 71, column: 5)
!3467 = !DILocation(line: 73, column: 9, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3466, file: !3394, line: 72, column: 11)
!3469 = !DILocation(line: 73, column: 15, scope: !3468)
!3470 = !DILocation(line: 78, column: 1, scope: !3393)
!3471 = distinct !DISubprogram(name: "hard_locale", scope: !3472, file: !3472, line: 38, type: !3473, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3475)
!3472 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!80, !50}
!3475 = !{!3476, !3477, !3478, !3479, !3486, !3487, !3489, !3490, !3492, !3493, !3495}
!3476 = !DILocalVariable(name: "category", arg: 1, scope: !3471, file: !3472, line: 38, type: !50)
!3477 = !DILocalVariable(name: "hard", scope: !3471, file: !3472, line: 40, type: !80)
!3478 = !DILocalVariable(name: "p", scope: !3471, file: !3472, line: 41, type: !20)
!3479 = !DILocalVariable(name: "__s1_len", scope: !3480, file: !3472, line: 47, type: !12)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !3472, line: 47, column: 15)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !3472, line: 47, column: 15)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !3472, line: 46, column: 9)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !3472, line: 45, column: 11)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3472, line: 44, column: 5)
!3485 = distinct !DILexicalBlock(scope: !3471, file: !3472, line: 43, column: 7)
!3486 = !DILocalVariable(name: "__s2_len", scope: !3480, file: !3472, line: 47, type: !12)
!3487 = !DILocalVariable(name: "__s2", scope: !3488, file: !3472, line: 47, type: !17)
!3488 = distinct !DILexicalBlock(scope: !3480, file: !3472, line: 47, column: 15)
!3489 = !DILocalVariable(name: "__result", scope: !3488, file: !3472, line: 47, type: !50)
!3490 = !DILocalVariable(name: "__s1_len", scope: !3491, file: !3472, line: 47, type: !12)
!3491 = distinct !DILexicalBlock(scope: !3481, file: !3472, line: 47, column: 39)
!3492 = !DILocalVariable(name: "__s2_len", scope: !3491, file: !3472, line: 47, type: !12)
!3493 = !DILocalVariable(name: "__s2", scope: !3494, file: !3472, line: 47, type: !17)
!3494 = distinct !DILexicalBlock(scope: !3491, file: !3472, line: 47, column: 39)
!3495 = !DILocalVariable(name: "__result", scope: !3494, file: !3472, line: 47, type: !50)
!3496 = !DILocation(line: 38, column: 18, scope: !3471)
!3497 = !DILocation(line: 40, column: 8, scope: !3471)
!3498 = !DILocation(line: 41, column: 19, scope: !3471)
!3499 = !DILocation(line: 41, column: 15, scope: !3471)
!3500 = !DILocation(line: 43, column: 7, scope: !3485)
!3501 = !DILocation(line: 43, column: 7, scope: !3471)
!3502 = !DILocation(line: 47, column: 15, scope: !3480)
!3503 = !DILocation(line: 47, column: 15, scope: !3488)
!3504 = !DILocation(line: 47, column: 15, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !3488, file: !3472, discriminator: 2)
!3506 = !DILocation(line: 47, column: 15, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3508, file: !3472, discriminator: 3)
!3508 = distinct !DILexicalBlock(scope: !3488, file: !3472, line: 47, column: 15)
!3509 = !DILocation(line: 47, column: 15, scope: !3510)
!3510 = !DILexicalBlockFile(scope: !3508, file: !3472, discriminator: 2)
!3511 = !DILocation(line: 47, column: 15, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3513, file: !3472, discriminator: 4)
!3513 = distinct !DILexicalBlock(scope: !3508, file: !3472, line: 47, column: 15)
!3514 = !DILocation(line: 47, column: 15, scope: !3515)
!3515 = !DILexicalBlockFile(scope: !3480, file: !3472, discriminator: 11)
!3516 = !DILocation(line: 47, column: 36, scope: !3517)
!3517 = !DILexicalBlockFile(scope: !3481, file: !3472, discriminator: 13)
!3518 = !DILocation(line: 47, column: 39, scope: !3491)
!3519 = !DILocation(line: 47, column: 39, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3491, file: !3472, discriminator: 26)
!3521 = !DILocation(line: 47, column: 59, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3481, file: !3472, discriminator: 27)
!3523 = !DILocation(line: 47, column: 15, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3482, file: !3472, discriminator: 27)
!3525 = !DILocation(line: 48, column: 13, scope: !3481)
!3526 = !DILocation(line: 71, column: 3, scope: !3471)
!3527 = distinct !DISubprogram(name: "locale_charset", scope: !534, file: !534, line: 393, type: !3528, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !190, variables: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!20}
!3530 = !{!3531, !3532, !3533, !3538}
!3531 = !DILocalVariable(name: "codeset", scope: !3527, file: !534, line: 395, type: !20)
!3532 = !DILocalVariable(name: "aliases", scope: !3527, file: !534, line: 396, type: !20)
!3533 = !DILocalVariable(name: "__s1_len", scope: !3534, file: !534, line: 592, type: !12)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !534, line: 592, column: 9)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !534, line: 592, column: 9)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !534, line: 589, column: 3)
!3537 = distinct !DILexicalBlock(scope: !3527, file: !534, line: 589, column: 3)
!3538 = !DILocalVariable(name: "__s2_len", scope: !3534, file: !534, line: 592, type: !12)
!3539 = !DILocalVariable(name: "buf1", scope: !3540, file: !534, line: 196, type: !3607)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !534, line: 194, column: 21)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !534, line: 193, column: 19)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !534, line: 193, column: 19)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !534, line: 188, column: 17)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !534, line: 181, column: 19)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !534, line: 177, column: 13)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !534, line: 173, column: 15)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !534, line: 161, column: 9)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !534, line: 157, column: 11)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !534, line: 130, column: 5)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !534, line: 129, column: 7)
!3551 = distinct !DISubprogram(name: "get_charset_aliases", scope: !534, file: !534, line: 124, type: !3528, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !190, variables: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3559, !3560, !3561, !3562, !3603, !3604, !3605, !3539, !3606, !3610, !3611, !3612}
!3553 = !DILocalVariable(name: "cp", scope: !3551, file: !534, line: 126, type: !20)
!3554 = !DILocalVariable(name: "dir", scope: !3549, file: !534, line: 132, type: !20)
!3555 = !DILocalVariable(name: "base", scope: !3549, file: !534, line: 133, type: !20)
!3556 = !DILocalVariable(name: "file_name", scope: !3549, file: !534, line: 134, type: !9)
!3557 = !DILocalVariable(name: "dir_len", scope: !3558, file: !534, line: 144, type: !12)
!3558 = distinct !DILexicalBlock(scope: !3549, file: !534, line: 143, column: 7)
!3559 = !DILocalVariable(name: "base_len", scope: !3558, file: !534, line: 145, type: !12)
!3560 = !DILocalVariable(name: "add_slash", scope: !3558, file: !534, line: 146, type: !50)
!3561 = !DILocalVariable(name: "fd", scope: !3547, file: !534, line: 162, type: !50)
!3562 = !DILocalVariable(name: "fp", scope: !3545, file: !534, line: 178, type: !3563)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2836, line: 49, baseType: !3565)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !3566)
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3565, file: !2838, line: 242, baseType: !50, size: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3565, file: !2838, line: 247, baseType: !9, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3565, file: !2838, line: 248, baseType: !9, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3565, file: !2838, line: 249, baseType: !9, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3565, file: !2838, line: 250, baseType: !9, size: 64, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3565, file: !2838, line: 251, baseType: !9, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3565, file: !2838, line: 252, baseType: !9, size: 64, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3565, file: !2838, line: 253, baseType: !9, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3565, file: !2838, line: 254, baseType: !9, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3565, file: !2838, line: 256, baseType: !9, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3565, file: !2838, line: 257, baseType: !9, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3565, file: !2838, line: 258, baseType: !9, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3565, file: !2838, line: 260, baseType: !3580, size: 64, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !3582)
!3582 = !{!3583, !3584, !3586}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3581, file: !2838, line: 157, baseType: !3580, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3581, file: !2838, line: 158, baseType: !3585, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3581, file: !2838, line: 162, baseType: !50, size: 32, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3565, file: !2838, line: 262, baseType: !3585, size: 64, offset: 832)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3565, file: !2838, line: 264, baseType: !50, size: 32, offset: 896)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3565, file: !2838, line: 268, baseType: !50, size: 32, offset: 928)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3565, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3565, file: !2838, line: 274, baseType: !135, size: 16, offset: 1024)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3565, file: !2838, line: 275, baseType: !2869, size: 8, offset: 1040)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3565, file: !2838, line: 276, baseType: !2871, size: 8, offset: 1048)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3565, file: !2838, line: 280, baseType: !2875, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3565, file: !2838, line: 289, baseType: !2878, size: 64, offset: 1152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3565, file: !2838, line: 297, baseType: !11, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3565, file: !2838, line: 298, baseType: !11, size: 64, offset: 1280)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3565, file: !2838, line: 299, baseType: !11, size: 64, offset: 1344)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3565, file: !2838, line: 300, baseType: !11, size: 64, offset: 1408)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3565, file: !2838, line: 302, baseType: !12, size: 64, offset: 1472)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3565, file: !2838, line: 303, baseType: !50, size: 32, offset: 1536)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3565, file: !2838, line: 305, baseType: !2886, size: 160, offset: 1568)
!3603 = !DILocalVariable(name: "res_ptr", scope: !3543, file: !534, line: 190, type: !9)
!3604 = !DILocalVariable(name: "res_size", scope: !3543, file: !534, line: 191, type: !12)
!3605 = !DILocalVariable(name: "c", scope: !3540, file: !534, line: 195, type: !50)
!3606 = !DILocalVariable(name: "buf2", scope: !3540, file: !534, line: 197, type: !3607)
!3607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 408, elements: !3608)
!3608 = !{!3609}
!3609 = !DISubrange(count: 51)
!3610 = !DILocalVariable(name: "l1", scope: !3540, file: !534, line: 198, type: !12)
!3611 = !DILocalVariable(name: "l2", scope: !3540, file: !534, line: 198, type: !12)
!3612 = !DILocalVariable(name: "old_res_ptr", scope: !3540, file: !534, line: 199, type: !9)
!3613 = !DILocation(line: 196, column: 28, scope: !3540, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 589, column: 18, scope: !3537)
!3615 = !DILocation(line: 197, column: 28, scope: !3540, inlinedAt: !3614)
!3616 = !DILocation(line: 403, column: 13, scope: !3527)
!3617 = !DILocation(line: 395, column: 15, scope: !3527)
!3618 = !DILocation(line: 584, column: 15, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3527, file: !534, line: 584, column: 7)
!3620 = !DILocation(line: 584, column: 7, scope: !3527)
!3621 = !DILocation(line: 128, column: 8, scope: !3551, inlinedAt: !3614)
!3622 = !DILocation(line: 126, column: 15, scope: !3551, inlinedAt: !3614)
!3623 = !DILocation(line: 129, column: 10, scope: !3550, inlinedAt: !3614)
!3624 = !DILocation(line: 129, column: 7, scope: !3551, inlinedAt: !3614)
!3625 = !DILocation(line: 138, column: 13, scope: !3549, inlinedAt: !3614)
!3626 = !DILocation(line: 132, column: 19, scope: !3549, inlinedAt: !3614)
!3627 = !DILocation(line: 139, column: 15, scope: !3628, inlinedAt: !3614)
!3628 = distinct !DILexicalBlock(scope: !3549, file: !534, line: 139, column: 11)
!3629 = !DILocation(line: 139, column: 23, scope: !3628, inlinedAt: !3614)
!3630 = !DILocation(line: 139, column: 26, scope: !3631, inlinedAt: !3614)
!3631 = !DILexicalBlockFile(scope: !3628, file: !534, discriminator: 1)
!3632 = !DILocation(line: 139, column: 33, scope: !3631, inlinedAt: !3614)
!3633 = !DILocation(line: 139, column: 11, scope: !3634, inlinedAt: !3614)
!3634 = !DILexicalBlockFile(scope: !3549, file: !534, discriminator: 1)
!3635 = !DILocation(line: 140, column: 9, scope: !3628, inlinedAt: !3614)
!3636 = !DILocation(line: 144, column: 26, scope: !3558, inlinedAt: !3614)
!3637 = !DILocation(line: 144, column: 16, scope: !3558, inlinedAt: !3614)
!3638 = !DILocation(line: 145, column: 16, scope: !3558, inlinedAt: !3614)
!3639 = !DILocation(line: 146, column: 34, scope: !3558, inlinedAt: !3614)
!3640 = !DILocation(line: 146, column: 38, scope: !3558, inlinedAt: !3614)
!3641 = !DILocation(line: 146, column: 42, scope: !3642, inlinedAt: !3614)
!3642 = !DILexicalBlockFile(scope: !3558, file: !534, discriminator: 1)
!3643 = !DILocation(line: 146, column: 41, scope: !3642, inlinedAt: !3614)
!3644 = !DILocation(line: 147, column: 48, scope: !3558, inlinedAt: !3614)
!3645 = !DILocation(line: 147, column: 46, scope: !3558, inlinedAt: !3614)
!3646 = !DILocation(line: 147, column: 69, scope: !3558, inlinedAt: !3614)
!3647 = !DILocation(line: 147, column: 30, scope: !3558, inlinedAt: !3614)
!3648 = !DILocation(line: 134, column: 13, scope: !3549, inlinedAt: !3614)
!3649 = !DILocation(line: 148, column: 13, scope: !3558, inlinedAt: !3614)
!3650 = !DILocation(line: 150, column: 13, scope: !3651, inlinedAt: !3614)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !534, line: 149, column: 11)
!3652 = distinct !DILexicalBlock(scope: !3558, file: !534, line: 148, column: 13)
!3653 = !DILocation(line: 151, column: 17, scope: !3651, inlinedAt: !3614)
!3654 = !DILocation(line: 152, column: 34, scope: !3655, inlinedAt: !3614)
!3655 = distinct !DILexicalBlock(scope: !3651, file: !534, line: 151, column: 17)
!3656 = !DILocation(line: 153, column: 41, scope: !3651, inlinedAt: !3614)
!3657 = !DILocation(line: 153, column: 13, scope: !3651, inlinedAt: !3614)
!3658 = !DILocation(line: 157, column: 11, scope: !3549, inlinedAt: !3614)
!3659 = !DILocation(line: 171, column: 16, scope: !3547, inlinedAt: !3614)
!3660 = !DILocation(line: 162, column: 15, scope: !3547, inlinedAt: !3614)
!3661 = !DILocation(line: 173, column: 18, scope: !3546, inlinedAt: !3614)
!3662 = !DILocation(line: 173, column: 15, scope: !3547, inlinedAt: !3614)
!3663 = !DILocation(line: 180, column: 20, scope: !3545, inlinedAt: !3614)
!3664 = !DILocation(line: 178, column: 21, scope: !3545, inlinedAt: !3614)
!3665 = !DILocation(line: 181, column: 22, scope: !3544, inlinedAt: !3614)
!3666 = !DILocation(line: 181, column: 19, scope: !3545, inlinedAt: !3614)
!3667 = !DILocation(line: 190, column: 25, scope: !3543, inlinedAt: !3614)
!3668 = !DILocation(line: 184, column: 19, scope: !3669, inlinedAt: !3614)
!3669 = distinct !DILexicalBlock(scope: !3544, file: !534, line: 182, column: 17)
!3670 = !DILocation(line: 186, column: 17, scope: !3669, inlinedAt: !3614)
!3671 = !DILocation(line: 191, column: 26, scope: !3543, inlinedAt: !3614)
!3672 = !DILocation(line: 196, column: 23, scope: !3540, inlinedAt: !3614)
!3673 = !DILocation(line: 197, column: 23, scope: !3540, inlinedAt: !3614)
!3674 = !DILocalVariable(name: "__fp", arg: 1, scope: !3675, file: !3447, line: 63, type: !3563)
!3675 = distinct !DISubprogram(name: "getc_unlocked", scope: !3447, file: !3447, line: 63, type: !3676, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !190, variables: !3678)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!50, !3563}
!3678 = !{!3674}
!3679 = !DILocation(line: 63, column: 22, scope: !3675, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 201, column: 27, scope: !3540, inlinedAt: !3614)
!3681 = !DILocation(line: 65, column: 10, scope: !3675, inlinedAt: !3680)
!3682 = !{!3453, !598, i64 8}
!3683 = !{!3453, !598, i64 16}
!3684 = !{!"branch_weights", i32 2000, i32 1}
!3685 = !DILocation(line: 65, column: 10, scope: !3686, inlinedAt: !3680)
!3686 = !DILexicalBlockFile(scope: !3675, file: !3447, discriminator: 1)
!3687 = !DILocation(line: 65, column: 10, scope: !3688, inlinedAt: !3680)
!3688 = !DILexicalBlockFile(scope: !3675, file: !3447, discriminator: 2)
!3689 = !DILocation(line: 65, column: 10, scope: !3690, inlinedAt: !3680)
!3690 = !DILexicalBlockFile(scope: !3675, file: !3447, discriminator: 3)
!3691 = !DILocation(line: 195, column: 27, scope: !3540, inlinedAt: !3614)
!3692 = !DILocation(line: 202, column: 27, scope: !3540, inlinedAt: !3614)
!3693 = !DILocation(line: 63, column: 22, scope: !3675, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 210, column: 33, scope: !3695, inlinedAt: !3614)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !534, line: 207, column: 25)
!3696 = distinct !DILexicalBlock(scope: !3540, file: !534, line: 206, column: 27)
!3697 = !DILocation(line: 65, column: 10, scope: !3675, inlinedAt: !3694)
!3698 = !DILocation(line: 65, column: 10, scope: !3686, inlinedAt: !3694)
!3699 = !DILocation(line: 65, column: 10, scope: !3688, inlinedAt: !3694)
!3700 = !DILocation(line: 65, column: 10, scope: !3690, inlinedAt: !3694)
!3701 = !DILocation(line: 210, column: 29, scope: !3702, inlinedAt: !3614)
!3702 = !DILexicalBlockFile(scope: !3695, file: !534, discriminator: 1)
!3703 = distinct !{!3703, !3704, !3705}
!3704 = !DILocation(line: 193, column: 19, scope: !3542)
!3705 = !DILocation(line: 241, column: 21, scope: !3542)
!3706 = !DILocation(line: 216, column: 23, scope: !3540, inlinedAt: !3614)
!3707 = !DILocation(line: 217, column: 27, scope: !3708, inlinedAt: !3614)
!3708 = distinct !DILexicalBlock(scope: !3540, file: !534, line: 217, column: 27)
!3709 = !DILocation(line: 217, column: 64, scope: !3708, inlinedAt: !3614)
!3710 = !DILocation(line: 217, column: 27, scope: !3540, inlinedAt: !3614)
!3711 = !DILocation(line: 219, column: 28, scope: !3540, inlinedAt: !3614)
!3712 = !DILocation(line: 198, column: 30, scope: !3540, inlinedAt: !3614)
!3713 = !DILocation(line: 220, column: 28, scope: !3540, inlinedAt: !3614)
!3714 = !DILocation(line: 198, column: 34, scope: !3540, inlinedAt: !3614)
!3715 = !DILocation(line: 199, column: 29, scope: !3540, inlinedAt: !3614)
!3716 = !DILocation(line: 222, column: 36, scope: !3717, inlinedAt: !3614)
!3717 = distinct !DILexicalBlock(scope: !3540, file: !534, line: 222, column: 27)
!3718 = !DILocation(line: 222, column: 27, scope: !3540, inlinedAt: !3614)
!3719 = !DILocation(line: 225, column: 63, scope: !3720, inlinedAt: !3614)
!3720 = distinct !DILexicalBlock(scope: !3717, file: !534, line: 223, column: 25)
!3721 = !DILocation(line: 225, column: 46, scope: !3720, inlinedAt: !3614)
!3722 = !DILocation(line: 226, column: 25, scope: !3720, inlinedAt: !3614)
!3723 = !DILocation(line: 229, column: 36, scope: !3724, inlinedAt: !3614)
!3724 = distinct !DILexicalBlock(scope: !3717, file: !534, line: 228, column: 25)
!3725 = !DILocation(line: 230, column: 73, scope: !3724, inlinedAt: !3614)
!3726 = !DILocation(line: 230, column: 46, scope: !3724, inlinedAt: !3614)
!3727 = !DILocation(line: 232, column: 35, scope: !3728, inlinedAt: !3614)
!3728 = distinct !DILexicalBlock(scope: !3540, file: !534, line: 232, column: 27)
!3729 = !DILocation(line: 232, column: 27, scope: !3540, inlinedAt: !3614)
!3730 = !DILocation(line: 236, column: 27, scope: !3731, inlinedAt: !3614)
!3731 = distinct !DILexicalBlock(scope: !3728, file: !534, line: 233, column: 25)
!3732 = !DILocation(line: 237, column: 27, scope: !3731, inlinedAt: !3614)
!3733 = !DILocation(line: 239, column: 39, scope: !3540, inlinedAt: !3614)
!3734 = !DILocation(line: 239, column: 50, scope: !3540, inlinedAt: !3614)
!3735 = !DILocation(line: 239, column: 61, scope: !3540, inlinedAt: !3614)
!3736 = !DILocalVariable(name: "__dest", arg: 1, scope: !3737, file: !3738, line: 107, type: !3741)
!3737 = distinct !DISubprogram(name: "strcpy", scope: !3738, file: !3738, line: 107, type: !3739, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !190, variables: !3743)
!3738 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!9, !3741, !3742}
!3741 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!3742 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!3743 = !{!3736, !3744}
!3744 = !DILocalVariable(name: "__src", arg: 2, scope: !3737, file: !3738, line: 107, type: !3742)
!3745 = !DILocation(line: 107, column: 1, scope: !3737, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 239, column: 23, scope: !3540, inlinedAt: !3614)
!3747 = !DILocation(line: 109, column: 49, scope: !3737, inlinedAt: !3746)
!3748 = !DILocation(line: 109, column: 10, scope: !3737, inlinedAt: !3746)
!3749 = !DILocation(line: 107, column: 1, scope: !3737, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 240, column: 23, scope: !3540, inlinedAt: !3614)
!3751 = !DILocation(line: 109, column: 49, scope: !3737, inlinedAt: !3750)
!3752 = !DILocation(line: 109, column: 10, scope: !3737, inlinedAt: !3750)
!3753 = !DILocation(line: 241, column: 21, scope: !3541, inlinedAt: !3614)
!3754 = !DILocation(line: 242, column: 19, scope: !3543, inlinedAt: !3614)
!3755 = !DILocation(line: 243, column: 32, scope: !3756, inlinedAt: !3614)
!3756 = distinct !DILexicalBlock(scope: !3543, file: !534, line: 243, column: 23)
!3757 = !DILocation(line: 243, column: 23, scope: !3543, inlinedAt: !3614)
!3758 = !DILocation(line: 247, column: 33, scope: !3759, inlinedAt: !3614)
!3759 = distinct !DILexicalBlock(scope: !3756, file: !534, line: 246, column: 21)
!3760 = !DILocation(line: 247, column: 45, scope: !3759, inlinedAt: !3614)
!3761 = !DILocation(line: 253, column: 11, scope: !3547, inlinedAt: !3614)
!3762 = !DILocation(line: 377, column: 23, scope: !3549, inlinedAt: !3614)
!3763 = !DILocation(line: 378, column: 5, scope: !3549, inlinedAt: !3614)
!3764 = !DILocation(line: 396, column: 15, scope: !3527)
!3765 = !DILocation(line: 590, column: 8, scope: !3536)
!3766 = !DILocation(line: 590, column: 17, scope: !3536)
!3767 = !DILocation(line: 589, column: 3, scope: !3768)
!3768 = !DILexicalBlockFile(scope: !3537, file: !534, discriminator: 1)
!3769 = !DILocation(line: 592, column: 9, scope: !3534)
!3770 = !DILocation(line: 592, column: 35, scope: !3535)
!3771 = !DILocation(line: 593, column: 9, scope: !3535)
!3772 = !DILocation(line: 593, column: 24, scope: !3773)
!3773 = !DILexicalBlockFile(scope: !3535, file: !534, discriminator: 1)
!3774 = !DILocation(line: 593, column: 31, scope: !3773)
!3775 = !DILocation(line: 593, column: 34, scope: !3776)
!3776 = !DILexicalBlockFile(scope: !3535, file: !534, discriminator: 2)
!3777 = !DILocation(line: 593, column: 45, scope: !3776)
!3778 = !DILocation(line: 592, column: 9, scope: !3779)
!3779 = !DILexicalBlockFile(scope: !3536, file: !534, discriminator: 1)
!3780 = !DILocation(line: 595, column: 29, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3535, file: !534, line: 594, column: 7)
!3782 = !DILocation(line: 595, column: 27, scope: !3781)
!3783 = !DILocation(line: 595, column: 46, scope: !3781)
!3784 = !DILocation(line: 596, column: 9, scope: !3781)
!3785 = !DILocation(line: 591, column: 19, scope: !3536)
!3786 = !DILocation(line: 591, column: 36, scope: !3536)
!3787 = !DILocation(line: 591, column: 16, scope: !3536)
!3788 = !DILocation(line: 591, column: 52, scope: !3779)
!3789 = !DILocation(line: 591, column: 69, scope: !3536)
!3790 = !DILocation(line: 591, column: 49, scope: !3536)
!3791 = distinct !{!3791, !3792, !3793}
!3792 = !DILocation(line: 589, column: 3, scope: !3537)
!3793 = !DILocation(line: 597, column: 7, scope: !3537)
!3794 = !DILocation(line: 602, column: 7, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3527, file: !534, line: 602, column: 7)
!3796 = !DILocation(line: 602, column: 18, scope: !3795)
!3797 = !DILocation(line: 602, column: 7, scope: !3527)
!3798 = !DILocation(line: 612, column: 3, scope: !3527)
!3799 = distinct !DISubprogram(name: "rpl_fclose", scope: !3800, file: !3800, line: 56, type: !3801, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3843)
!3800 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!50, !3803}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2836, line: 49, baseType: !3805)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !3806)
!3806 = !{!3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3805, file: !2838, line: 242, baseType: !50, size: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3805, file: !2838, line: 247, baseType: !9, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3805, file: !2838, line: 248, baseType: !9, size: 64, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3805, file: !2838, line: 249, baseType: !9, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3805, file: !2838, line: 250, baseType: !9, size: 64, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3805, file: !2838, line: 251, baseType: !9, size: 64, offset: 320)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3805, file: !2838, line: 252, baseType: !9, size: 64, offset: 384)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3805, file: !2838, line: 253, baseType: !9, size: 64, offset: 448)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3805, file: !2838, line: 254, baseType: !9, size: 64, offset: 512)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3805, file: !2838, line: 256, baseType: !9, size: 64, offset: 576)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3805, file: !2838, line: 257, baseType: !9, size: 64, offset: 640)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3805, file: !2838, line: 258, baseType: !9, size: 64, offset: 704)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3805, file: !2838, line: 260, baseType: !3820, size: 64, offset: 768)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !3822)
!3822 = !{!3823, !3824, !3826}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3821, file: !2838, line: 157, baseType: !3820, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3821, file: !2838, line: 158, baseType: !3825, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3821, file: !2838, line: 162, baseType: !50, size: 32, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3805, file: !2838, line: 262, baseType: !3825, size: 64, offset: 832)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3805, file: !2838, line: 264, baseType: !50, size: 32, offset: 896)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3805, file: !2838, line: 268, baseType: !50, size: 32, offset: 928)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3805, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3805, file: !2838, line: 274, baseType: !135, size: 16, offset: 1024)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3805, file: !2838, line: 275, baseType: !2869, size: 8, offset: 1040)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3805, file: !2838, line: 276, baseType: !2871, size: 8, offset: 1048)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3805, file: !2838, line: 280, baseType: !2875, size: 64, offset: 1088)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3805, file: !2838, line: 289, baseType: !2878, size: 64, offset: 1152)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3805, file: !2838, line: 297, baseType: !11, size: 64, offset: 1216)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3805, file: !2838, line: 298, baseType: !11, size: 64, offset: 1280)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3805, file: !2838, line: 299, baseType: !11, size: 64, offset: 1344)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3805, file: !2838, line: 300, baseType: !11, size: 64, offset: 1408)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3805, file: !2838, line: 302, baseType: !12, size: 64, offset: 1472)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3805, file: !2838, line: 303, baseType: !50, size: 32, offset: 1536)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3805, file: !2838, line: 305, baseType: !2886, size: 160, offset: 1568)
!3843 = !{!3844, !3845, !3846, !3847}
!3844 = !DILocalVariable(name: "fp", arg: 1, scope: !3799, file: !3800, line: 56, type: !3803)
!3845 = !DILocalVariable(name: "saved_errno", scope: !3799, file: !3800, line: 58, type: !50)
!3846 = !DILocalVariable(name: "fd", scope: !3799, file: !3800, line: 59, type: !50)
!3847 = !DILocalVariable(name: "result", scope: !3799, file: !3800, line: 60, type: !50)
!3848 = !DILocation(line: 56, column: 19, scope: !3799)
!3849 = !DILocation(line: 58, column: 7, scope: !3799)
!3850 = !DILocation(line: 60, column: 7, scope: !3799)
!3851 = !DILocation(line: 63, column: 8, scope: !3799)
!3852 = !DILocation(line: 59, column: 7, scope: !3799)
!3853 = !DILocation(line: 64, column: 10, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3799, file: !3800, line: 64, column: 7)
!3855 = !DILocation(line: 64, column: 7, scope: !3799)
!3856 = !DILocation(line: 65, column: 12, scope: !3854)
!3857 = !DILocation(line: 65, column: 5, scope: !3854)
!3858 = !DILocation(line: 70, column: 9, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3799, file: !3800, line: 70, column: 7)
!3860 = !DILocation(line: 70, column: 23, scope: !3859)
!3861 = !DILocation(line: 70, column: 33, scope: !3862)
!3862 = !DILexicalBlockFile(scope: !3859, file: !3800, discriminator: 1)
!3863 = !DILocation(line: 70, column: 26, scope: !3864)
!3864 = !DILexicalBlockFile(scope: !3859, file: !3800, discriminator: 3)
!3865 = !DILocation(line: 70, column: 59, scope: !3862)
!3866 = !DILocation(line: 71, column: 7, scope: !3859)
!3867 = !DILocation(line: 71, column: 10, scope: !3862)
!3868 = !DILocation(line: 70, column: 7, scope: !3869)
!3869 = !DILexicalBlockFile(scope: !3799, file: !3800, discriminator: 2)
!3870 = !DILocation(line: 98, column: 12, scope: !3799)
!3871 = !DILocation(line: 103, column: 7, scope: !3799)
!3872 = !DILocation(line: 72, column: 19, scope: !3859)
!3873 = !DILocation(line: 103, column: 19, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3799, file: !3800, line: 103, column: 7)
!3875 = !DILocation(line: 105, column: 13, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3874, file: !3800, line: 104, column: 5)
!3877 = !DILocation(line: 107, column: 5, scope: !3876)
!3878 = !DILocation(line: 110, column: 1, scope: !3799)
!3879 = distinct !DISubprogram(name: "rpl_fflush", scope: !3880, file: !3880, line: 127, type: !3881, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3923)
!3880 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!50, !3883}
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2836, line: 49, baseType: !3885)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !3886)
!3886 = !{!3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3885, file: !2838, line: 242, baseType: !50, size: 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3885, file: !2838, line: 247, baseType: !9, size: 64, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3885, file: !2838, line: 248, baseType: !9, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3885, file: !2838, line: 249, baseType: !9, size: 64, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3885, file: !2838, line: 250, baseType: !9, size: 64, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3885, file: !2838, line: 251, baseType: !9, size: 64, offset: 320)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3885, file: !2838, line: 252, baseType: !9, size: 64, offset: 384)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3885, file: !2838, line: 253, baseType: !9, size: 64, offset: 448)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3885, file: !2838, line: 254, baseType: !9, size: 64, offset: 512)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3885, file: !2838, line: 256, baseType: !9, size: 64, offset: 576)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3885, file: !2838, line: 257, baseType: !9, size: 64, offset: 640)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3885, file: !2838, line: 258, baseType: !9, size: 64, offset: 704)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3885, file: !2838, line: 260, baseType: !3900, size: 64, offset: 768)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !3902)
!3902 = !{!3903, !3904, !3906}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3901, file: !2838, line: 157, baseType: !3900, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3901, file: !2838, line: 158, baseType: !3905, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3901, file: !2838, line: 162, baseType: !50, size: 32, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3885, file: !2838, line: 262, baseType: !3905, size: 64, offset: 832)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3885, file: !2838, line: 264, baseType: !50, size: 32, offset: 896)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3885, file: !2838, line: 268, baseType: !50, size: 32, offset: 928)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3885, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3885, file: !2838, line: 274, baseType: !135, size: 16, offset: 1024)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3885, file: !2838, line: 275, baseType: !2869, size: 8, offset: 1040)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3885, file: !2838, line: 276, baseType: !2871, size: 8, offset: 1048)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3885, file: !2838, line: 280, baseType: !2875, size: 64, offset: 1088)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3885, file: !2838, line: 289, baseType: !2878, size: 64, offset: 1152)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3885, file: !2838, line: 297, baseType: !11, size: 64, offset: 1216)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3885, file: !2838, line: 298, baseType: !11, size: 64, offset: 1280)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3885, file: !2838, line: 299, baseType: !11, size: 64, offset: 1344)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3885, file: !2838, line: 300, baseType: !11, size: 64, offset: 1408)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3885, file: !2838, line: 302, baseType: !12, size: 64, offset: 1472)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3885, file: !2838, line: 303, baseType: !50, size: 32, offset: 1536)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3885, file: !2838, line: 305, baseType: !2886, size: 160, offset: 1568)
!3923 = !{!3924}
!3924 = !DILocalVariable(name: "stream", arg: 1, scope: !3879, file: !3880, line: 127, type: !3883)
!3925 = !DILocation(line: 127, column: 19, scope: !3879)
!3926 = !DILocation(line: 148, column: 14, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3879, file: !3880, line: 148, column: 7)
!3928 = !DILocation(line: 148, column: 22, scope: !3927)
!3929 = !DILocation(line: 148, column: 27, scope: !3930)
!3930 = !DILexicalBlockFile(scope: !3927, file: !3880, discriminator: 1)
!3931 = !DILocation(line: 148, column: 7, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !3879, file: !3880, discriminator: 1)
!3933 = !DILocation(line: 149, column: 12, scope: !3927)
!3934 = !DILocation(line: 149, column: 5, scope: !3927)
!3935 = !DILocalVariable(name: "fp", arg: 1, scope: !3936, file: !3880, line: 40, type: !3883)
!3936 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3880, file: !3880, line: 40, type: !3937, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !3883}
!3939 = !{!3935}
!3940 = !DILocation(line: 40, column: 48, scope: !3936, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 153, column: 3, scope: !3879)
!3942 = !DILocation(line: 42, column: 11, scope: !3943, inlinedAt: !3941)
!3943 = distinct !DILexicalBlock(scope: !3936, file: !3880, line: 42, column: 7)
!3944 = !DILocation(line: 42, column: 18, scope: !3943, inlinedAt: !3941)
!3945 = !DILocation(line: 42, column: 7, scope: !3936, inlinedAt: !3941)
!3946 = !DILocation(line: 44, column: 5, scope: !3943, inlinedAt: !3941)
!3947 = !DILocation(line: 155, column: 10, scope: !3879)
!3948 = !DILocation(line: 155, column: 3, scope: !3879)
!3949 = !DILocation(line: 229, column: 1, scope: !3879)
!3950 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3951, file: !3951, line: 28, type: !3952, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !3995)
!3951 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!50, !3954, !3994, !50}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2836, line: 49, baseType: !3956)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3956, file: !2838, line: 242, baseType: !50, size: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3956, file: !2838, line: 247, baseType: !9, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3956, file: !2838, line: 248, baseType: !9, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3956, file: !2838, line: 249, baseType: !9, size: 64, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3956, file: !2838, line: 250, baseType: !9, size: 64, offset: 256)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3956, file: !2838, line: 251, baseType: !9, size: 64, offset: 320)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3956, file: !2838, line: 252, baseType: !9, size: 64, offset: 384)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3956, file: !2838, line: 253, baseType: !9, size: 64, offset: 448)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3956, file: !2838, line: 254, baseType: !9, size: 64, offset: 512)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3956, file: !2838, line: 256, baseType: !9, size: 64, offset: 576)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3956, file: !2838, line: 257, baseType: !9, size: 64, offset: 640)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3956, file: !2838, line: 258, baseType: !9, size: 64, offset: 704)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3956, file: !2838, line: 260, baseType: !3971, size: 64, offset: 768)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !3973)
!3973 = !{!3974, !3975, !3977}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3972, file: !2838, line: 157, baseType: !3971, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3972, file: !2838, line: 158, baseType: !3976, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3972, file: !2838, line: 162, baseType: !50, size: 32, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3956, file: !2838, line: 262, baseType: !3976, size: 64, offset: 832)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3956, file: !2838, line: 264, baseType: !50, size: 32, offset: 896)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3956, file: !2838, line: 268, baseType: !50, size: 32, offset: 928)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3956, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3956, file: !2838, line: 274, baseType: !135, size: 16, offset: 1024)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3956, file: !2838, line: 275, baseType: !2869, size: 8, offset: 1040)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3956, file: !2838, line: 276, baseType: !2871, size: 8, offset: 1048)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3956, file: !2838, line: 280, baseType: !2875, size: 64, offset: 1088)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3956, file: !2838, line: 289, baseType: !2878, size: 64, offset: 1152)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3956, file: !2838, line: 297, baseType: !11, size: 64, offset: 1216)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3956, file: !2838, line: 298, baseType: !11, size: 64, offset: 1280)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3956, file: !2838, line: 299, baseType: !11, size: 64, offset: 1344)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3956, file: !2838, line: 300, baseType: !11, size: 64, offset: 1408)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3956, file: !2838, line: 302, baseType: !12, size: 64, offset: 1472)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3956, file: !2838, line: 303, baseType: !50, size: 32, offset: 1536)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3956, file: !2838, line: 305, baseType: !2886, size: 160, offset: 1568)
!3994 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2836, line: 91, baseType: !2864)
!3995 = !{!3996, !3997, !3998, !3999}
!3996 = !DILocalVariable(name: "fp", arg: 1, scope: !3950, file: !3951, line: 28, type: !3954)
!3997 = !DILocalVariable(name: "offset", arg: 2, scope: !3950, file: !3951, line: 28, type: !3994)
!3998 = !DILocalVariable(name: "whence", arg: 3, scope: !3950, file: !3951, line: 28, type: !50)
!3999 = !DILocalVariable(name: "pos", scope: !4000, file: !3951, line: 116, type: !3994)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !3951, line: 112, column: 5)
!4001 = distinct !DILexicalBlock(scope: !3950, file: !3951, line: 51, column: 7)
!4002 = !DILocation(line: 28, column: 15, scope: !3950)
!4003 = !DILocation(line: 28, column: 25, scope: !3950)
!4004 = !DILocation(line: 28, column: 37, scope: !3950)
!4005 = !DILocation(line: 51, column: 11, scope: !4001)
!4006 = !DILocation(line: 51, column: 31, scope: !4001)
!4007 = !DILocation(line: 51, column: 24, scope: !4001)
!4008 = !DILocation(line: 52, column: 7, scope: !4001)
!4009 = !DILocation(line: 52, column: 14, scope: !4010)
!4010 = !DILexicalBlockFile(scope: !4001, file: !3951, discriminator: 1)
!4011 = !{!3453, !598, i64 40}
!4012 = !DILocation(line: 52, column: 35, scope: !4010)
!4013 = !{!3453, !598, i64 32}
!4014 = !DILocation(line: 52, column: 28, scope: !4010)
!4015 = !DILocation(line: 53, column: 7, scope: !4001)
!4016 = !DILocation(line: 53, column: 14, scope: !4010)
!4017 = !{!3453, !598, i64 72}
!4018 = !DILocation(line: 53, column: 28, scope: !4010)
!4019 = !DILocation(line: 51, column: 7, scope: !4020)
!4020 = !DILexicalBlockFile(scope: !3950, file: !3951, discriminator: 1)
!4021 = !DILocation(line: 116, column: 26, scope: !4000)
!4022 = !DILocation(line: 116, column: 19, scope: !4023)
!4023 = !DILexicalBlockFile(scope: !4000, file: !3951, discriminator: 1)
!4024 = !DILocation(line: 116, column: 13, scope: !4000)
!4025 = !DILocation(line: 117, column: 15, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4000, file: !3951, line: 117, column: 11)
!4027 = !DILocation(line: 117, column: 11, scope: !4000)
!4028 = !DILocation(line: 127, column: 11, scope: !4000)
!4029 = !DILocation(line: 127, column: 18, scope: !4000)
!4030 = !DILocation(line: 128, column: 11, scope: !4000)
!4031 = !DILocation(line: 128, column: 19, scope: !4000)
!4032 = !{!3453, !2148, i64 144}
!4033 = !DILocation(line: 159, column: 7, scope: !4000)
!4034 = !DILocation(line: 161, column: 10, scope: !3950)
!4035 = !DILocation(line: 161, column: 3, scope: !3950)
!4036 = !DILocation(line: 162, column: 1, scope: !3950)
