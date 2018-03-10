; ModuleID = 'coreutils-8.27/src/whoami.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Print the user name associated with the current effective user ID.\0ASame as id -un.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"whoami\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.24 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"cannot find name for user ID %lu\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), align 8, !dbg !0
@.str.13 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.16 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.17 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.29, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.30, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.29 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.30 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.35 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.36 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.37 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.41, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.47, i32 0, i32 0), i8* null], align 16, !dbg !53
@.str.38 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.39 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.40 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.41 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.42 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.43 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.44 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.45 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.46 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.47 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.48 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.49 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.50 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
@.str.55 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.58 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.59 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.60 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.61 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.62 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.63 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.64 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.65 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.66 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.67 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.68 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.71 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.72 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.73 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.74 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.75 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.86 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.96 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.99 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.100 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.101 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.102 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.103 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.104 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.105 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !584 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !588, metadata !589), !dbg !590
  %2 = icmp eq i32 %0, 0, !dbg !591
  br i1 %2, label %8, label %3, !dbg !593

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !594, !tbaa !597
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !594
  %6 = load i8*, i8** @program_name, align 8, !dbg !594, !tbaa !597
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !601
  br label %36, !dbg !603

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !605
  %10 = load i8*, i8** @program_name, align 8, !dbg !605, !tbaa !597
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !607
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !609
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609, !tbaa !597
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !610
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !611
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !597
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !612
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !613
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !613, !tbaa !597
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !614
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !514, metadata !589) #10, !dbg !615
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !514, metadata !589) #10, !dbg !615
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !617
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !618
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !620
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !525, metadata !589) #10, !dbg !621
  %24 = icmp eq i8* %23, null, !dbg !622
  br i1 %24, label %31, label %25, !dbg !623

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i64 3) #13, !dbg !624
  %27 = icmp eq i32 %26, 0, !dbg !624
  br i1 %27, label %31, label %28, !dbg !626

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !628
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !630
  br label %31, !dbg !632

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !633
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !634
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !635
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0)) #10, !dbg !636
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #14, !dbg !637
  unreachable, !dbg !637
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !638 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !643, metadata !589), !dbg !664
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !644, metadata !589), !dbg !665
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !663, metadata !589), !dbg !666
  %3 = load i8*, i8** %1, align 8, !dbg !667, !tbaa !597
  tail call void @set_program_name(i8* %3) #10, !dbg !668
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !669
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !670
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !671
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !672
  %8 = load i8*, i8** @Version, align 8, !dbg !673, !tbaa !597
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !674
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !675
  %10 = icmp eq i32 %9, -1, !dbg !677
  br i1 %10, label %12, label %11, !dbg !678

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #15, !dbg !679
  unreachable, !dbg !679

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !680, !tbaa !682
  %14 = icmp eq i32 %13, %0, !dbg !684
  br i1 %14, label %22, label %15, !dbg !685

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !686
  %17 = load i32, i32* @optind, align 4, !dbg !688, !tbaa !682
  %18 = sext i32 %17 to i64, !dbg !689
  %19 = getelementptr inbounds i8*, i8** %1, i64 %18, !dbg !689
  %20 = load i8*, i8** %19, align 8, !dbg !689, !tbaa !597
  %21 = tail call i8* @quote(i8* %20) #10, !dbg !690
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %21) #10, !dbg !692
  tail call void @usage(i32 1) #15, !dbg !694
  unreachable, !dbg !694

; <label>:22:                                     ; preds = %12
  %23 = tail call i32* @__errno_location() #1, !dbg !695
  store i32 0, i32* %23, align 4, !dbg !696, !tbaa !682
  %24 = tail call i32 @geteuid() #10, !dbg !697
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !660, metadata !589), !dbg !698
  %25 = icmp eq i32 %24, -1, !dbg !699
  br i1 %25, label %26, label %29, !dbg !700

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %23, align 4, !dbg !701, !tbaa !682
  %28 = icmp eq i32 %27, 0, !dbg !701
  br i1 %28, label %29, label %34, !dbg !703

; <label>:29:                                     ; preds = %22, %26
  %30 = tail call %struct.passwd* @getpwuid(i32 %24) #10, !dbg !704
  tail call void @llvm.dbg.value(metadata %struct.passwd* %30, i64 0, metadata !645, metadata !589), !dbg !706
  %31 = icmp eq %struct.passwd* %30, null, !dbg !707
  br i1 %31, label %32, label %38, !dbg !709

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %23, align 4, !tbaa !682
  br label %34, !dbg !709

; <label>:34:                                     ; preds = %32, %26
  %35 = phi i32 [ %33, %32 ], [ %27, %26 ], !dbg !710
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !711
  %37 = zext i32 %24 to i64, !dbg !710
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %35, i8* %36, i64 %37) #10, !dbg !713
  unreachable, !dbg !710

; <label>:38:                                     ; preds = %29
  %39 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i64 0, i32 0, !dbg !715
  %40 = load i8*, i8** %39, align 8, !dbg !715, !tbaa !716
  %41 = tail call i32 @puts(i8* %40), !dbg !718
  ret i32 0, !dbg !719
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

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !720 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !722, metadata !589), !dbg !723
  store i8* %0, i8** @file_name, align 8, !dbg !724, !tbaa !597
  ret void, !dbg !725
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !726 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !730, metadata !731), !dbg !732
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !733, !tbaa !734
  ret void, !dbg !736
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !737 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !744, !tbaa !597
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !745
  %3 = icmp eq i32 %2, 0, !dbg !746
  br i1 %3, label %21, label %4, !dbg !747

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !748, !tbaa !734, !range !750
  %6 = icmp eq i8 %5, 0, !dbg !748
  %7 = tail call i32* @__errno_location() #1, !dbg !751
  br i1 %6, label %11, label %8, !dbg !753

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !754, !tbaa !682
  %10 = icmp eq i32 %9, 32, !dbg !756
  br i1 %10, label %21, label %11, !dbg !757

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !759
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !741, metadata !589), !dbg !760
  %13 = load i8*, i8** @file_name, align 8, !dbg !761, !tbaa !597
  %14 = icmp eq i8* %13, null, !dbg !761
  %15 = load i32, i32* %7, align 4, !tbaa !682
  br i1 %14, label %18, label %16, !dbg !762

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !763
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.17, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !765
  br label %19, !dbg !767

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.18, i64 0, i64 0), i8* %12) #10, !dbg !768
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !769, !tbaa !682
  tail call void @_exit(i32 %20) #14, !dbg !770
  unreachable, !dbg !770

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !771, !tbaa !597
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !773
  %24 = icmp eq i32 %23, 0, !dbg !774
  br i1 %24, label %27, label %25, !dbg !775

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !776, !tbaa !682
  tail call void @_exit(i32 %26) #14, !dbg !777
  unreachable, !dbg !777

; <label>:27:                                     ; preds = %21
  ret void, !dbg !778
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !779 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !784, metadata !589), !dbg !811
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !785, metadata !589), !dbg !812
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !786, metadata !589), !dbg !813
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !787, metadata !589), !dbg !814
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !788, metadata !589), !dbg !815
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !789, metadata !589), !dbg !816
  %8 = load i32, i32* @opterr, align 4, !dbg !817, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !791, metadata !589), !dbg !818
  store i32 0, i32* @opterr, align 4, !dbg !819, !tbaa !682
  %9 = icmp eq i32 %0, 2, !dbg !820
  br i1 %9, label %10, label %17, !dbg !821

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !822
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !790, metadata !589), !dbg !824
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !825

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !827
  br label %17, !dbg !828

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !829
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !829
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !792, metadata !589), !dbg !830
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !831
  call void @llvm.va_start(i8* nonnull %14), !dbg !831
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !832, !tbaa !597
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !833
  call void @exit(i32 0) #14, !dbg !834
  unreachable, !dbg !834

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !835, !tbaa !682
  store i32 0, i32* @optind, align 4, !dbg !836, !tbaa !682
  ret void, !dbg !837
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !838 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !840, metadata !589), !dbg !843
  %2 = icmp eq i8* %0, null, !dbg !844
  br i1 %2, label %3, label %6, !dbg !846

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !847, !tbaa !597
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !849
  tail call void @abort() #14, !dbg !850
  unreachable, !dbg !850

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !851
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !841, metadata !589), !dbg !852
  %8 = icmp ne i8* %7, null, !dbg !853
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !854
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !856
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !842, metadata !589), !dbg !857
  %11 = ptrtoint i8* %10 to i64, !dbg !858
  %12 = ptrtoint i8* %0 to i64, !dbg !858
  %13 = sub i64 %11, %12, !dbg !858
  %14 = icmp sgt i64 %13, 6, !dbg !860
  br i1 %14, label %15, label %24, !dbg !861

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !862
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.36, i64 0, i64 0), i64 7) #13, !dbg !862
  %18 = icmp eq i32 %17, 0, !dbg !864
  br i1 %18, label %19, label %24, !dbg !865

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !840, metadata !589), !dbg !843
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.37, i64 0, i64 0), i64 3) #13, !dbg !866
  %21 = icmp eq i32 %20, 0, !dbg !869
  br i1 %21, label %22, label %24, !dbg !870

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !871
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !840, metadata !589), !dbg !843
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !873, !tbaa !597
  br label %24, !dbg !874

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !840, metadata !589), !dbg !843
  store i8* %25, i8** @program_name, align 8, !dbg !875, !tbaa !597
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !876, !tbaa !597
  ret void, !dbg !877
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !878 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !883, metadata !589), !dbg !886
  %2 = tail call i32* @__errno_location() #1, !dbg !887
  %3 = load i32, i32* %2, align 4, !dbg !887, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !884, metadata !589), !dbg !888
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !889
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !890
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !890
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !892
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !892
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !885, metadata !589), !dbg !893
  store i32 %3, i32* %2, align 4, !dbg !894, !tbaa !682
  ret %struct.quoting_options* %8, !dbg !895
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !896 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !902, metadata !589), !dbg !903
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !904
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !904
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !905
  %5 = load i32, i32* %4, align 8, !dbg !905, !tbaa !907
  ret i32 %5, !dbg !909
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !910 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !914, metadata !589), !dbg !916
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !915, metadata !589), !dbg !917
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !918
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !918
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !919
  store i32 %1, i32* %5, align 8, !dbg !921, !tbaa !907
  ret void, !dbg !922
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !923 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !927, metadata !589), !dbg !935
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !928, metadata !589), !dbg !936
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !929, metadata !589), !dbg !937
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !930, metadata !589), !dbg !938
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !939
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !939
  %6 = lshr i8 %1, 5, !dbg !940
  %7 = zext i8 %6 to i64, !dbg !940
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !942
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !931, metadata !589), !dbg !943
  %9 = and i8 %1, 31, !dbg !944
  %10 = zext i8 %9 to i32, !dbg !945
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !933, metadata !589), !dbg !946
  %11 = load i32, i32* %8, align 4, !dbg !947, !tbaa !682
  %12 = lshr i32 %11, %10, !dbg !948
  %13 = and i32 %12, 1, !dbg !949
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !934, metadata !589), !dbg !950
  %14 = and i32 %2, 1, !dbg !951
  %15 = xor i32 %13, %14, !dbg !952
  %16 = shl i32 %15, %10, !dbg !953
  %17 = xor i32 %16, %11, !dbg !954
  store i32 %17, i32* %8, align 4, !dbg !954, !tbaa !682
  ret i32 %13, !dbg !955
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !956 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !960, metadata !589), !dbg !963
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !961, metadata !589), !dbg !964
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !960, metadata !589), !dbg !963
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !960, metadata !589), !dbg !963
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !968
  %6 = load i32, i32* %5, align 4, !dbg !968, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !962, metadata !589), !dbg !970
  store i32 %1, i32* %5, align 4, !dbg !971, !tbaa !969
  ret i32 %6, !dbg !972
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !973 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !977, metadata !589), !dbg !980
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !978, metadata !589), !dbg !981
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !979, metadata !589), !dbg !982
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !983
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !977, metadata !589), !dbg !980
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !985
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !977, metadata !589), !dbg !980
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !986
  store i32 10, i32* %6, align 8, !dbg !987, !tbaa !907
  %7 = icmp ne i8* %1, null, !dbg !988
  %8 = icmp ne i8* %2, null, !dbg !990
  %9 = and i1 %7, %8, !dbg !992
  br i1 %9, label %11, label %10, !dbg !992

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !993
  unreachable, !dbg !993

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !994
  store i8* %1, i8** %12, align 8, !dbg !995, !tbaa !996
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !997
  store i8* %2, i8** %13, align 8, !dbg !998, !tbaa !999
  ret void, !dbg !1000
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1001 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1005, metadata !589), !dbg !1013
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1006, metadata !589), !dbg !1014
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1007, metadata !589), !dbg !1015
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1008, metadata !589), !dbg !1016
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1009, metadata !589), !dbg !1017
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1018
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1018
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1010, metadata !589), !dbg !1019
  %8 = tail call i32* @__errno_location() #1, !dbg !1020
  %9 = load i32, i32* %8, align 4, !dbg !1020, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1011, metadata !589), !dbg !1021
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1022
  %11 = load i32, i32* %10, align 8, !dbg !1022, !tbaa !907
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1023
  %13 = load i32, i32* %12, align 4, !dbg !1023, !tbaa !969
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1024
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1025
  %16 = load i8*, i8** %15, align 8, !dbg !1025, !tbaa !996
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1026
  %18 = load i8*, i8** %17, align 8, !dbg !1026, !tbaa !999
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1027
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1012, metadata !589), !dbg !1028
  store i32 %9, i32* %8, align 4, !dbg !1029, !tbaa !682
  ret i64 %19, !dbg !1030
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1031 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1037, metadata !589), !dbg !1100
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1038, metadata !589), !dbg !1101
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1039, metadata !589), !dbg !1102
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1040, metadata !589), !dbg !1103
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1041, metadata !589), !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1042, metadata !589), !dbg !1105
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1043, metadata !589), !dbg !1106
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1044, metadata !589), !dbg !1107
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1045, metadata !589), !dbg !1108
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1047, metadata !589), !dbg !1109
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1048, metadata !589), !dbg !1110
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1049, metadata !589), !dbg !1111
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1050, metadata !589), !dbg !1112
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1051, metadata !589), !dbg !1113
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1114
  %14 = icmp eq i64 %13, 1, !dbg !1115
  %15 = lshr i32 %5, 1, !dbg !1116
  %16 = trunc i32 %15 to i8, !dbg !1116
  %17 = and i8 %16, 1, !dbg !1116
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1053, metadata !589), !dbg !1116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1054, metadata !589), !dbg !1117
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1055, metadata !589), !dbg !1118
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1056, metadata !589), !dbg !1119
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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1038, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1056, metadata !589), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1055, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1053, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1040, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1051, metadata !589), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1050, metadata !589), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1049, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1048, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1045, metadata !589), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1044, metadata !589), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1041, metadata !589), !dbg !1104
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
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1041, metadata !589), !dbg !1104
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1053, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1053, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1041, metadata !589), !dbg !1104
  br label %95, !dbg !1122

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1053, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1041, metadata !589), !dbg !1104
  %43 = and i8 %36, 1, !dbg !1124
  %44 = icmp eq i8 %43, 0, !dbg !1124
  br i1 %44, label %45, label %95, !dbg !1122

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1126
  br i1 %46, label %95, label %47, !dbg !1130

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1132, !tbaa !1134
  br label %95, !dbg !1132

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.48, i64 0, i64 0), i32 %28), !dbg !1135
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1044, metadata !589), !dbg !1107
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), i32 %28), !dbg !1139
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1045, metadata !589), !dbg !1108
  br label %51, !dbg !1140

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1045, metadata !589), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1044, metadata !589), !dbg !1107
  %54 = and i8 %36, 1, !dbg !1141
  %55 = icmp eq i8 %54, 0, !dbg !1141
  br i1 %55, label %56, label %73, !dbg !1143

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1049, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1047, metadata !589), !dbg !1109
  %57 = load i8, i8* %52, align 1, !dbg !1144, !tbaa !1134
  %58 = icmp eq i8 %57, 0, !dbg !1148
  br i1 %58, label %73, label %59, !dbg !1148

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1150

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1150
  br i1 %64, label %65, label %67, !dbg !1154

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1156
  store i8 %61, i8* %66, align 1, !dbg !1156, !tbaa !1134
  br label %67, !dbg !1156

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1047, metadata !589), !dbg !1109
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1049, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1049, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1047, metadata !589), !dbg !1109
  %70 = load i8, i8* %69, align 1, !dbg !1144, !tbaa !1134
  %71 = icmp eq i8 %70, 0, !dbg !1148
  br i1 %71, label %72, label %60, !dbg !1148, !llvm.loop !1162

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1109

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1051, metadata !589), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1049, metadata !589), !dbg !1111
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1165
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1050, metadata !589), !dbg !1112
  br label %95, !dbg !1166

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1051, metadata !589), !dbg !1113
  br label %77, !dbg !1167

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1051, metadata !589), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1053, metadata !589), !dbg !1116
  br label %79, !dbg !1168

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1053, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1051, metadata !589), !dbg !1113
  %82 = and i8 %81, 1, !dbg !1169
  %83 = icmp eq i8 %82, 0, !dbg !1169
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1051, metadata !589), !dbg !1113
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1171
  br label %85, !dbg !1171

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1053, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1051, metadata !589), !dbg !1113
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1041, metadata !589), !dbg !1104
  %88 = and i8 %87, 1, !dbg !1172
  %89 = icmp eq i8 %88, 0, !dbg !1172
  br i1 %89, label %90, label %95, !dbg !1174

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1175
  br i1 %91, label %95, label %92, !dbg !1179

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1181, !tbaa !1134
  br label %95, !dbg !1181

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1053, metadata !589), !dbg !1116
  br label %95, !dbg !1183

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1184
  unreachable, !dbg !1184

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1053, metadata !589), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1051, metadata !589), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1050, metadata !589), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1049, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1045, metadata !589), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1044, metadata !589), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1041, metadata !589), !dbg !1104
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1046, metadata !589), !dbg !1185
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
  br label %123, !dbg !1186

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1038, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1056, metadata !589), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1055, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1040, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1048, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1046, metadata !589), !dbg !1185
  %132 = icmp eq i64 %127, -1, !dbg !1187
  br i1 %132, label %135, label %133, !dbg !1189

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1190
  br i1 %134, label %597, label %139, !dbg !1192

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1194
  %137 = load i8, i8* %136, align 1, !dbg !1194, !tbaa !1134
  %138 = icmp eq i8 %137, 0, !dbg !1196
  br i1 %138, label %597, label %139, !dbg !1192

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1062, metadata !589), !dbg !1197
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1063, metadata !589), !dbg !1198
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1064, metadata !589), !dbg !1199
  br i1 %109, label %140, label %155, !dbg !1200

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1202
  %142 = and i1 %110, %132, !dbg !1204
  br i1 %142, label %143, label %145, !dbg !1204

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1040, metadata !589), !dbg !1103
  br label %145, !dbg !1206

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1040, metadata !589), !dbg !1103
  %147 = icmp ugt i64 %141, %146, !dbg !1208
  br i1 %147, label %155, label %148, !dbg !1210

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1211
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1212
  %151 = icmp ne i32 %150, 0, !dbg !1213
  %152 = or i1 %151, %112, !dbg !1213
  %153 = xor i1 %151, true, !dbg !1213
  %154 = zext i1 %153 to i8, !dbg !1213
  br i1 %152, label %155, label %644, !dbg !1213

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1062, metadata !589), !dbg !1197
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1040, metadata !589), !dbg !1103
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1215
  %159 = load i8, i8* %158, align 1, !dbg !1215, !tbaa !1134
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1057, metadata !589), !dbg !1216
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
  ], !dbg !1217

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1218

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1219

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1063, metadata !589), !dbg !1198
  %163 = and i8 %128, 1, !dbg !1224
  %164 = icmp eq i8 %163, 0, !dbg !1224
  %165 = and i1 %114, %164, !dbg !1227
  br i1 %165, label %166, label %182, !dbg !1227

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1229
  br i1 %167, label %168, label %170, !dbg !1234

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1236
  store i8 39, i8* %169, align 1, !dbg !1236, !tbaa !1134
  br label %170, !dbg !1236

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1047, metadata !589), !dbg !1109
  %172 = icmp ult i64 %171, %131, !dbg !1240
  br i1 %172, label %173, label %175, !dbg !1244

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1246
  store i8 36, i8* %174, align 1, !dbg !1246, !tbaa !1134
  br label %175, !dbg !1246

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1047, metadata !589), !dbg !1109
  %177 = icmp ult i64 %176, %131, !dbg !1250
  br i1 %177, label %178, label %180, !dbg !1254

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1256
  store i8 39, i8* %179, align 1, !dbg !1256, !tbaa !1134
  br label %180, !dbg !1256

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1054, metadata !589), !dbg !1117
  br label %182, !dbg !1260

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1047, metadata !589), !dbg !1109
  %185 = icmp ult i64 %183, %131, !dbg !1262
  br i1 %185, label %186, label %188, !dbg !1266

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1268
  store i8 92, i8* %187, align 1, !dbg !1268, !tbaa !1134
  br label %188, !dbg !1268

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1047, metadata !589), !dbg !1109
  br i1 %106, label %190, label %476, !dbg !1272

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1274
  %192 = icmp ult i64 %191, %156, !dbg !1276
  br i1 %192, label %193, label %476, !dbg !1277

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1278
  %195 = load i8, i8* %194, align 1, !dbg !1278, !tbaa !1134
  %196 = add i8 %195, -48, !dbg !1280
  %197 = icmp ult i8 %196, 10, !dbg !1280
  br i1 %197, label %198, label %476, !dbg !1280

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1281
  br i1 %199, label %200, label %202, !dbg !1286

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1288
  store i8 48, i8* %201, align 1, !dbg !1288, !tbaa !1134
  br label %202, !dbg !1288

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1047, metadata !589), !dbg !1109
  %204 = icmp ult i64 %203, %131, !dbg !1292
  br i1 %204, label %205, label %207, !dbg !1296

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1298
  store i8 48, i8* %206, align 1, !dbg !1298, !tbaa !1134
  br label %207, !dbg !1298

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1300
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1047, metadata !589), !dbg !1109
  br label %476, !dbg !1302

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1303

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1304

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1305

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1307

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1309
  %215 = icmp ult i64 %214, %156, !dbg !1311
  br i1 %215, label %216, label %476, !dbg !1312

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1313
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1315
  %219 = load i8, i8* %218, align 1, !dbg !1315, !tbaa !1134
  %220 = icmp eq i8 %219, 63, !dbg !1316
  br i1 %220, label %221, label %476, !dbg !1317

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1319
  %223 = load i8, i8* %222, align 1, !dbg !1319, !tbaa !1134
  %224 = sext i8 %223 to i32, !dbg !1319
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
  ], !dbg !1320

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1321

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1057, metadata !589), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1046, metadata !589), !dbg !1185
  %227 = icmp ult i64 %125, %131, !dbg !1323
  br i1 %227, label %228, label %230, !dbg !1327

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1329
  store i8 63, i8* %229, align 1, !dbg !1329, !tbaa !1134
  br label %230, !dbg !1329

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1047, metadata !589), !dbg !1109
  %232 = icmp ult i64 %231, %131, !dbg !1333
  br i1 %232, label %233, label %235, !dbg !1337

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1339
  store i8 34, i8* %234, align 1, !dbg !1339, !tbaa !1134
  br label %235, !dbg !1339

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1047, metadata !589), !dbg !1109
  %237 = icmp ult i64 %236, %131, !dbg !1343
  br i1 %237, label %238, label %240, !dbg !1347

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1349
  store i8 34, i8* %239, align 1, !dbg !1349, !tbaa !1134
  br label %240, !dbg !1349

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1047, metadata !589), !dbg !1109
  %242 = icmp ult i64 %241, %131, !dbg !1353
  br i1 %242, label %243, label %245, !dbg !1357

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1359
  store i8 63, i8* %244, align 1, !dbg !1359, !tbaa !1134
  br label %245, !dbg !1359

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1047, metadata !589), !dbg !1109
  br label %476, !dbg !1363

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1061, metadata !589), !dbg !1364
  br label %257, !dbg !1365

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1061, metadata !589), !dbg !1364
  br label %257, !dbg !1366

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1061, metadata !589), !dbg !1364
  br label %255, !dbg !1367

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1061, metadata !589), !dbg !1364
  br label %255, !dbg !1368

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1061, metadata !589), !dbg !1364
  br label %257, !dbg !1369

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1061, metadata !589), !dbg !1364
  br i1 %114, label %253, label %254, !dbg !1370

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1371

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1374

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1061, metadata !589), !dbg !1364
  br i1 %118, label %257, label %644, !dbg !1376

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1061, metadata !589), !dbg !1364
  br i1 %105, label %503, label %476, !dbg !1378

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1379
  br i1 %260, label %261, label %266, !dbg !1381

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1382, !tbaa !1134
  %263 = icmp ne i8 %262, 0, !dbg !1384
  %264 = icmp ne i64 %124, 0, !dbg !1385
  %265 = or i1 %264, %263, !dbg !1387
  br i1 %265, label %476, label %272, !dbg !1387

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1388
  %268 = icmp ne i64 %124, 0, !dbg !1385
  %269 = or i1 %268, %267, !dbg !1390
  br i1 %269, label %476, label %272, !dbg !1390

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1385
  br i1 %271, label %272, label %476, !dbg !1392

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1064, metadata !589), !dbg !1199
  br label %273, !dbg !1393

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1064, metadata !589), !dbg !1199
  br i1 %118, label %476, label %644, !dbg !1394

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1055, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1064, metadata !589), !dbg !1199
  br i1 %114, label %276, label %476, !dbg !1396

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1397

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1400
  %279 = icmp ne i64 %126, 0, !dbg !1402
  %280 = or i1 %279, %278, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1048, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1038, metadata !589), !dbg !1101
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1404
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1038, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1048, metadata !589), !dbg !1110
  %283 = icmp ult i64 %125, %282, !dbg !1405
  br i1 %283, label %284, label %286, !dbg !1409

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1411
  store i8 39, i8* %285, align 1, !dbg !1411, !tbaa !1134
  br label %286, !dbg !1411

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1047, metadata !589), !dbg !1109
  %288 = icmp ult i64 %287, %282, !dbg !1415
  br i1 %288, label %289, label %291, !dbg !1419

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1421
  store i8 92, i8* %290, align 1, !dbg !1421, !tbaa !1134
  br label %291, !dbg !1421

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1047, metadata !589), !dbg !1109
  %293 = icmp ult i64 %292, %282, !dbg !1425
  br i1 %293, label %294, label %296, !dbg !1429

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1431
  store i8 39, i8* %295, align 1, !dbg !1431, !tbaa !1134
  br label %296, !dbg !1431

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1054, metadata !589), !dbg !1117
  br label %476, !dbg !1435

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1436

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1065, metadata !589), !dbg !1437
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1438
  %301 = load i16*, i16** %300, align 8, !dbg !1438, !tbaa !597
  %302 = zext i8 %159 to i64, !dbg !1438
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1438
  %304 = load i16, i16* %303, align 2, !dbg !1438, !tbaa !1440
  %305 = lshr i16 %304, 14, !dbg !1442
  %306 = trunc i16 %305 to i8, !dbg !1442
  %307 = and i8 %306, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1068, metadata !589), !dbg !1443
  br label %368, !dbg !1444

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1445
  store i64 0, i64* %10, align 8, !dbg !1446
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1065, metadata !589), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1068, metadata !589), !dbg !1443
  %309 = icmp eq i64 %156, -1, !dbg !1447
  br i1 %309, label %310, label %312, !dbg !1449, !llvm.loop !1450

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1040, metadata !589), !dbg !1103
  br label %312, !dbg !1454, !llvm.loop !1450

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1443

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1068, metadata !589), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1065, metadata !589), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1040, metadata !589), !dbg !1103
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1455
  %317 = add i64 %315, %124, !dbg !1456
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1457
  %319 = sub i64 %313, %317, !dbg !1458
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1069, metadata !1459), !dbg !1460
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1086, metadata !1459), !dbg !1461
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1089, metadata !589), !dbg !1463
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1464

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1065, metadata !589), !dbg !1437
  %322 = icmp ugt i64 %313, %317, !dbg !1465
  br i1 %322, label %323, label %351, !dbg !1468

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1469

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1469
  %328 = load i8, i8* %327, align 1, !dbg !1469, !tbaa !1134
  %329 = icmp eq i8 %328, 0, !dbg !1471
  br i1 %329, label %348, label %330, !dbg !1472

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1065, metadata !589), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1065, metadata !589), !dbg !1437
  %332 = add i64 %331, %124, !dbg !1475
  %333 = icmp ult i64 %332, %313, !dbg !1465
  br i1 %333, label %324, label %348, !dbg !1468, !llvm.loop !1476

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1478
  %336 = and i1 %116, %335, !dbg !1482
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1090, metadata !589), !dbg !1483
  br i1 %336, label %337, label %355, !dbg !1482

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1484

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1484
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1485
  %342 = load i8, i8* %341, align 1, !dbg !1485, !tbaa !1134
  %343 = sext i8 %342 to i32, !dbg !1485
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1486

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1090, metadata !589), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1090, metadata !589), !dbg !1483
  %346 = icmp ult i64 %345, %320, !dbg !1478
  br i1 %346, label %338, label %354, !dbg !1489, !llvm.loop !1491

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1443

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1443

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1443

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1068, metadata !589), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1065, metadata !589), !dbg !1437
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1494
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1495

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1495, !tbaa !682
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1086, metadata !589), !dbg !1461
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1497
  %358 = icmp eq i32 %357, 0, !dbg !1497
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1068, metadata !589), !dbg !1443
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1498
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1068, metadata !589), !dbg !1443
  %360 = add i64 %320, %315, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1065, metadata !589), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1068, metadata !589), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1065, metadata !589), !dbg !1437
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1494
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1069, metadata !1459), !dbg !1460
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1500
  %362 = icmp eq i32 %361, 0, !dbg !1501
  br i1 %362, label %314, label %363, !dbg !1502, !llvm.loop !1450

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1504

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1504
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1068, metadata !589), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1065, metadata !589), !dbg !1437
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1494
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1504
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1068, metadata !589), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1065, metadata !589), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1040, metadata !589), !dbg !1103
  %372 = and i8 %371, 1, !dbg !1505
  %373 = icmp ne i8 %372, 0, !dbg !1505
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1064, metadata !589), !dbg !1199
  %374 = icmp ult i64 %370, 2, !dbg !1506
  %375 = or i1 %373, %113, !dbg !1507
  %376 = and i1 %374, %375, !dbg !1509
  br i1 %376, label %476, label %377, !dbg !1509

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1097, metadata !589), !dbg !1511
  br label %379, !dbg !1512

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1063, metadata !589), !dbg !1198
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1062, metadata !589), !dbg !1197
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1057, metadata !589), !dbg !1216
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1046, metadata !589), !dbg !1185
  br i1 %375, label %432, label %386, !dbg !1513

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1518

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1063, metadata !589), !dbg !1198
  %388 = and i8 %382, 1, !dbg !1522
  %389 = icmp eq i8 %388, 0, !dbg !1522
  %390 = and i1 %114, %389, !dbg !1525
  br i1 %390, label %391, label %407, !dbg !1525

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1527
  br i1 %392, label %393, label %395, !dbg !1532

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1534
  store i8 39, i8* %394, align 1, !dbg !1534, !tbaa !1134
  br label %395, !dbg !1534

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1047, metadata !589), !dbg !1109
  %397 = icmp ult i64 %396, %131, !dbg !1538
  br i1 %397, label %398, label %400, !dbg !1542

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1544
  store i8 36, i8* %399, align 1, !dbg !1544, !tbaa !1134
  br label %400, !dbg !1544

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1047, metadata !589), !dbg !1109
  %402 = icmp ult i64 %401, %131, !dbg !1548
  br i1 %402, label %403, label %405, !dbg !1552

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1554
  store i8 39, i8* %404, align 1, !dbg !1554, !tbaa !1134
  br label %405, !dbg !1554

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1054, metadata !589), !dbg !1117
  br label %407, !dbg !1558

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1047, metadata !589), !dbg !1109
  %410 = icmp ult i64 %408, %131, !dbg !1560
  br i1 %410, label %411, label %413, !dbg !1564

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1566
  store i8 92, i8* %412, align 1, !dbg !1566, !tbaa !1134
  br label %413, !dbg !1566

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1047, metadata !589), !dbg !1109
  %415 = icmp ult i64 %414, %131, !dbg !1570
  br i1 %415, label %416, label %420, !dbg !1574

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1576
  %418 = or i8 %417, 48, !dbg !1576
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1576
  store i8 %418, i8* %419, align 1, !dbg !1576, !tbaa !1134
  br label %420, !dbg !1576

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1047, metadata !589), !dbg !1109
  %422 = icmp ult i64 %421, %131, !dbg !1580
  br i1 %422, label %423, label %428, !dbg !1584

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1586
  %425 = and i8 %424, 7, !dbg !1586
  %426 = or i8 %425, 48, !dbg !1586
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1586
  store i8 %426, i8* %427, align 1, !dbg !1586, !tbaa !1134
  br label %428, !dbg !1586

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1047, metadata !589), !dbg !1109
  %430 = and i8 %383, 7, !dbg !1590
  %431 = or i8 %430, 48, !dbg !1591
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1057, metadata !589), !dbg !1216
  br label %441, !dbg !1592

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1593
  %434 = icmp eq i8 %433, 0, !dbg !1593
  br i1 %434, label %441, label %435, !dbg !1595

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1596
  br i1 %436, label %437, label %439, !dbg !1601

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1603
  store i8 92, i8* %438, align 1, !dbg !1603, !tbaa !1134
  br label %439, !dbg !1603

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1062, metadata !589), !dbg !1197
  br label %441, !dbg !1607

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1063, metadata !589), !dbg !1198
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1062, metadata !589), !dbg !1197
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1057, metadata !589), !dbg !1216
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1047, metadata !589), !dbg !1109
  %447 = add i64 %380, 1, !dbg !1608
  %448 = icmp ugt i64 %378, %447, !dbg !1610
  br i1 %448, label %449, label %541, !dbg !1611

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1612
  %451 = icmp ne i8 %450, 0, !dbg !1612
  %452 = and i8 %446, 1, !dbg !1616
  %453 = icmp eq i8 %452, 0, !dbg !1616
  %454 = and i1 %451, %453, !dbg !1612
  br i1 %454, label %455, label %466, !dbg !1612

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1618
  br i1 %456, label %457, label %459, !dbg !1623

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1625
  store i8 39, i8* %458, align 1, !dbg !1625, !tbaa !1134
  br label %459, !dbg !1625

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1047, metadata !589), !dbg !1109
  %461 = icmp ult i64 %460, %131, !dbg !1629
  br i1 %461, label %462, label %464, !dbg !1633

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1635
  store i8 39, i8* %463, align 1, !dbg !1635, !tbaa !1134
  br label %464, !dbg !1635

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1054, metadata !589), !dbg !1117
  br label %466, !dbg !1639

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1047, metadata !589), !dbg !1109
  %469 = icmp ult i64 %467, %131, !dbg !1641
  br i1 %469, label %470, label %472, !dbg !1645

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1647
  store i8 %444, i8* %471, align 1, !dbg !1647, !tbaa !1134
  br label %472, !dbg !1647

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1046, metadata !589), !dbg !1185
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1651
  %475 = load i8, i8* %474, align 1, !dbg !1651, !tbaa !1134
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1057, metadata !589), !dbg !1216
  br label %379, !dbg !1652, !llvm.loop !1654

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1038, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1064, metadata !589), !dbg !1199
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1063, metadata !589), !dbg !1198
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1062, metadata !589), !dbg !1197
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1057, metadata !589), !dbg !1216
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1055, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1040, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1048, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1046, metadata !589), !dbg !1185
  br i1 %107, label %488, label %487, !dbg !1657

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1659

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1660

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1661
  %491 = zext i8 %490 to i64, !dbg !1661
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1663
  %493 = load i32, i32* %492, align 4, !dbg !1663, !tbaa !682
  %494 = and i8 %483, 31, !dbg !1664
  %495 = zext i8 %494 to i32, !dbg !1665
  %496 = shl i32 1, %495, !dbg !1666
  %497 = and i32 %493, %496, !dbg !1666
  %498 = icmp eq i32 %497, 0, !dbg !1666
  %499 = icmp eq i8 %157, 0, !dbg !1667
  %500 = and i1 %499, %498, !dbg !1668
  br i1 %500, label %542, label %503, !dbg !1668

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1667
  br i1 %502, label %542, label %503, !dbg !1669

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1038, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1064, metadata !589), !dbg !1199
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1057, metadata !589), !dbg !1216
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1055, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1040, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1048, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1046, metadata !589), !dbg !1185
  br i1 %112, label %513, label %644, !dbg !1671

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1063, metadata !589), !dbg !1198
  %514 = and i8 %508, 1, !dbg !1674
  %515 = icmp eq i8 %514, 0, !dbg !1674
  %516 = and i1 %114, %515, !dbg !1677
  br i1 %516, label %517, label %533, !dbg !1677

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1679
  br i1 %518, label %519, label %521, !dbg !1684

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1686
  store i8 39, i8* %520, align 1, !dbg !1686, !tbaa !1134
  br label %521, !dbg !1686

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1047, metadata !589), !dbg !1109
  %523 = icmp ult i64 %522, %512, !dbg !1690
  br i1 %523, label %524, label %526, !dbg !1694

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1696
  store i8 36, i8* %525, align 1, !dbg !1696, !tbaa !1134
  br label %526, !dbg !1696

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1047, metadata !589), !dbg !1109
  %528 = icmp ult i64 %527, %512, !dbg !1700
  br i1 %528, label %529, label %531, !dbg !1704

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1706
  store i8 39, i8* %530, align 1, !dbg !1706, !tbaa !1134
  br label %531, !dbg !1706

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1054, metadata !589), !dbg !1117
  br label %533, !dbg !1710

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1047, metadata !589), !dbg !1109
  %536 = icmp ult i64 %534, %512, !dbg !1712
  br i1 %536, label %537, label %539, !dbg !1716

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1718
  store i8 92, i8* %538, align 1, !dbg !1718, !tbaa !1134
  br label %539, !dbg !1718

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1038, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1064, metadata !589), !dbg !1199
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1063, metadata !589), !dbg !1198
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1057, metadata !589), !dbg !1216
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1055, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1040, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1048, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1046, metadata !589), !dbg !1185
  br label %569, !dbg !1722

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1038, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1064, metadata !589), !dbg !1199
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1063, metadata !589), !dbg !1198
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1057, metadata !589), !dbg !1216
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1055, metadata !589), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1040, metadata !589), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1048, metadata !589), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1046, metadata !589), !dbg !1185
  %553 = and i8 %547, 1, !dbg !1722
  %554 = icmp ne i8 %553, 0, !dbg !1722
  %555 = and i8 %550, 1, !dbg !1726
  %556 = icmp eq i8 %555, 0, !dbg !1726
  %557 = and i1 %554, %556, !dbg !1722
  br i1 %557, label %558, label %569, !dbg !1722

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1728
  br i1 %559, label %560, label %562, !dbg !1733

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1735
  store i8 39, i8* %561, align 1, !dbg !1735, !tbaa !1134
  br label %562, !dbg !1735

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1047, metadata !589), !dbg !1109
  %564 = icmp ult i64 %563, %552, !dbg !1739
  br i1 %564, label %565, label %567, !dbg !1743

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1745
  store i8 39, i8* %566, align 1, !dbg !1745, !tbaa !1134
  br label %567, !dbg !1745

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1047, metadata !589), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1054, metadata !589), !dbg !1117
  br label %569, !dbg !1749

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1054, metadata !589), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1047, metadata !589), !dbg !1109
  %579 = icmp ult i64 %577, %570, !dbg !1751
  br i1 %579, label %580, label %582, !dbg !1755

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1757
  store i8 %572, i8* %581, align 1, !dbg !1757, !tbaa !1134
  br label %582, !dbg !1757

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1047, metadata !589), !dbg !1109
  %584 = and i8 %571, 1, !dbg !1761
  %585 = icmp eq i8 %584, 0, !dbg !1761
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1056, metadata !589), !dbg !1119
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1763
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1056, metadata !589), !dbg !1119
  br label %587, !dbg !1764

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1046, metadata !589), !dbg !1185
  br label %123, !dbg !1767, !llvm.loop !1768

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1771
  %600 = and i1 %114, %599, !dbg !1773
  %601 = xor i1 %600, true, !dbg !1773
  %602 = or i1 %112, %601, !dbg !1773
  br i1 %602, label %603, label %648, !dbg !1773

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1774
  %605 = xor i1 %604, true, !dbg !1774
  %606 = and i8 %129, 1, !dbg !1776
  %607 = icmp eq i8 %606, 0, !dbg !1776
  %608 = or i1 %607, %605, !dbg !1774
  br i1 %608, label %618, label %609, !dbg !1774

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1778
  %611 = icmp eq i8 %610, 0, !dbg !1778
  br i1 %611, label %614, label %612, !dbg !1781

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1782
  br label %659, !dbg !1783

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1784
  %616 = icmp ne i64 %126, 0, !dbg !1786
  %617 = and i1 %616, %615, !dbg !1788
  br i1 %617, label %27, label %618, !dbg !1788

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1789
  %620 = and i1 %619, %112, !dbg !1791
  br i1 %620, label %621, label %638, !dbg !1791

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1049, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1047, metadata !589), !dbg !1109
  %622 = load i8, i8* %100, align 1, !dbg !1792, !tbaa !1134
  %623 = icmp eq i8 %622, 0, !dbg !1796
  br i1 %623, label %638, label %624, !dbg !1796

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1798

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1798
  br i1 %629, label %630, label %632, !dbg !1802

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1804
  store i8 %626, i8* %631, align 1, !dbg !1804, !tbaa !1134
  br label %632, !dbg !1804

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1047, metadata !589), !dbg !1109
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1808
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1049, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1049, metadata !589), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1047, metadata !589), !dbg !1109
  %635 = load i8, i8* %634, align 1, !dbg !1792, !tbaa !1134
  %636 = icmp eq i8 %635, 0, !dbg !1796
  br i1 %636, label %637, label %625, !dbg !1796, !llvm.loop !1810

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1109

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1047, metadata !589), !dbg !1109
  %640 = icmp ult i64 %639, %131, !dbg !1813
  br i1 %640, label %641, label %659, !dbg !1815

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1816
  store i8 0, i8* %642, align 1, !dbg !1817, !tbaa !1134
  br label %659, !dbg !1816

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
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1038, metadata !589), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1040, metadata !589), !dbg !1103
  %653 = icmp ne i32 %650, 2, !dbg !1818
  %654 = icmp eq i8 %104, 0, !dbg !1820
  %655 = or i1 %653, %654, !dbg !1822
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1041, metadata !589), !dbg !1104
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1041, metadata !589), !dbg !1104
  %657 = and i32 %5, -3, !dbg !1823
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1824
  br label %659, !dbg !1825

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1826
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1827 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1831, metadata !589), !dbg !1835
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1832, metadata !589), !dbg !1836
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1837
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1833, metadata !589), !dbg !1838
  %4 = icmp eq i8* %3, %0, !dbg !1839
  br i1 %4, label %5, label %75, !dbg !1841

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1842
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1834, metadata !589), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1844, metadata !589), !dbg !1860
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1858, metadata !589), !dbg !1863
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1859, metadata !589), !dbg !1864
  %7 = load i8, i8* %6, align 1, !tbaa !1134
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1865
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1865

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1868, metadata !589), !dbg !1882
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1880, metadata !589), !dbg !1886
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1881, metadata !589), !dbg !1887
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1134
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1888
  %15 = icmp eq i32 %14, 84, !dbg !1888
  br i1 %15, label %16, label %72, !dbg !1888

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1891, metadata !589), !dbg !1904
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1902, metadata !589), !dbg !1908
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1903, metadata !589), !dbg !1909
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1134
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1910
  %21 = icmp eq i32 %20, 70, !dbg !1910
  br i1 %21, label %22, label %72, !dbg !1910

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1913, metadata !589), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1923, metadata !589), !dbg !1929
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1924, metadata !589), !dbg !1930
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1134
  %25 = icmp eq i8 %24, 45, !dbg !1931
  br i1 %25, label %26, label %72, !dbg !1934

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1936, metadata !589), !dbg !1947
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1945, metadata !589), !dbg !1951
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1946, metadata !589), !dbg !1952
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1134
  %29 = icmp eq i8 %28, 56, !dbg !1953
  br i1 %29, label %30, label %72, !dbg !1956

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1958, metadata !589), !dbg !1968
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1966, metadata !589), !dbg !1972
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1967, metadata !589), !dbg !1973
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1134
  %33 = icmp eq i8 %32, 0, !dbg !1974
  br i1 %33, label %34, label %72, !dbg !1977

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1979, !tbaa !1134
  %36 = icmp eq i8 %35, 96, !dbg !1980
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1979
  br label %75, !dbg !1981

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1868, metadata !589), !dbg !1982
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1880, metadata !589), !dbg !1986
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1881, metadata !589), !dbg !1987
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1134
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !1988
  %43 = icmp eq i32 %42, 66, !dbg !1988
  br i1 %43, label %44, label %72, !dbg !1988

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1891, metadata !589), !dbg !1989
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1902, metadata !589), !dbg !1991
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1903, metadata !589), !dbg !1992
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1134
  %47 = icmp eq i8 %46, 49, !dbg !1993
  br i1 %47, label %48, label %72, !dbg !1995

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1913, metadata !589), !dbg !1997
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1923, metadata !589), !dbg !1999
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1924, metadata !589), !dbg !2000
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1134
  %51 = icmp eq i8 %50, 56, !dbg !2001
  br i1 %51, label %52, label %72, !dbg !2002

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1936, metadata !589), !dbg !2003
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1945, metadata !589), !dbg !2005
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1946, metadata !589), !dbg !2006
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1134
  %55 = icmp eq i8 %54, 48, !dbg !2007
  br i1 %55, label %56, label %72, !dbg !2008

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1958, metadata !589), !dbg !2009
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1966, metadata !589), !dbg !2011
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1967, metadata !589), !dbg !2012
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1134
  %59 = icmp eq i8 %58, 51, !dbg !2013
  br i1 %59, label %60, label %72, !dbg !2014

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2015, metadata !589), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2022, metadata !589), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2023, metadata !589), !dbg !2029
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1134
  %63 = icmp eq i8 %62, 48, !dbg !2030
  br i1 %63, label %64, label %72, !dbg !2033

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2035, metadata !589), !dbg !2043
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2041, metadata !589), !dbg !2047
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2042, metadata !589), !dbg !2048
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1134
  %67 = icmp eq i8 %66, 0, !dbg !2049
  br i1 %67, label %68, label %72, !dbg !2052

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2053, !tbaa !1134
  %70 = icmp eq i8 %69, 96, !dbg !2054
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2053
  br label %75, !dbg !2055

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2056
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), !dbg !2057
  br label %75, !dbg !2058

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2059
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2060 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2064, metadata !589), !dbg !2067
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2065, metadata !589), !dbg !2068
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2066, metadata !589), !dbg !2069
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2070, metadata !589) #10, !dbg !2083
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2075, metadata !589) #10, !dbg !2085
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2076, metadata !589) #10, !dbg !2086
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2077, metadata !589) #10, !dbg !2087
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2088
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2078, metadata !589) #10, !dbg !2089
  %6 = tail call i32* @__errno_location() #1, !dbg !2090
  %7 = load i32, i32* %6, align 4, !dbg !2090, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2079, metadata !589) #10, !dbg !2091
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2092
  %9 = load i32, i32* %8, align 4, !dbg !2092, !tbaa !969
  %10 = or i32 %9, 1, !dbg !2093
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2080, metadata !589) #10, !dbg !2094
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2095
  %12 = load i32, i32* %11, align 8, !dbg !2095, !tbaa !907
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2096
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2097
  %15 = load i8*, i8** %14, align 8, !dbg !2097, !tbaa !996
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2098
  %17 = load i8*, i8** %16, align 8, !dbg !2098, !tbaa !999
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2099
  %19 = add i64 %18, 1, !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2081, metadata !589) #10, !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2102, metadata !589) #10, !dbg !2107
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2109
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2082, metadata !589) #10, !dbg !2110
  %21 = load i32, i32* %11, align 8, !dbg !2111, !tbaa !907
  %22 = load i8*, i8** %14, align 8, !dbg !2112, !tbaa !996
  %23 = load i8*, i8** %16, align 8, !dbg !2113, !tbaa !999
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2114
  store i32 %7, i32* %6, align 4, !dbg !2115, !tbaa !682
  ret i8* %20, !dbg !2116
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2071 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2070, metadata !589), !dbg !2117
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2075, metadata !589), !dbg !2118
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2076, metadata !589), !dbg !2119
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2077, metadata !589), !dbg !2120
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2121
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2121
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2078, metadata !589), !dbg !2122
  %7 = tail call i32* @__errno_location() #1, !dbg !2123
  %8 = load i32, i32* %7, align 4, !dbg !2123, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2079, metadata !589), !dbg !2124
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2125
  %10 = load i32, i32* %9, align 4, !dbg !2125, !tbaa !969
  %11 = icmp ne i64* %2, null, !dbg !2126
  %12 = xor i1 %11, true, !dbg !2126
  %13 = zext i1 %12 to i32, !dbg !2126
  %14 = or i32 %10, %13, !dbg !2127
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2080, metadata !589), !dbg !2128
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2129
  %16 = load i32, i32* %15, align 8, !dbg !2129, !tbaa !907
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2130
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2131
  %19 = load i8*, i8** %18, align 8, !dbg !2131, !tbaa !996
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2132
  %21 = load i8*, i8** %20, align 8, !dbg !2132, !tbaa !999
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2133
  %23 = add i64 %22, 1, !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2081, metadata !589), !dbg !2135
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2102, metadata !589) #10, !dbg !2136
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2138
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2082, metadata !589), !dbg !2139
  %25 = load i32, i32* %15, align 8, !dbg !2140, !tbaa !907
  %26 = load i8*, i8** %18, align 8, !dbg !2141, !tbaa !996
  %27 = load i8*, i8** %20, align 8, !dbg !2142, !tbaa !999
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2143
  store i32 %8, i32* %7, align 4, !dbg !2144, !tbaa !682
  br i1 %11, label %29, label %30, !dbg !2145

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2146, !tbaa !2148
  br label %30, !dbg !2150

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2151
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2152 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2156, !tbaa !597
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2154, metadata !589), !dbg !2157
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2155, metadata !589), !dbg !2158
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2155, metadata !589), !dbg !2158
  %2 = load i32, i32* @nslots, align 4, !dbg !2159, !tbaa !682
  %3 = icmp sgt i32 %2, 1, !dbg !2163
  br i1 %3, label %4, label %14, !dbg !2164

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2166

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2166
  %8 = load i8*, i8** %7, align 8, !dbg !2166, !tbaa !2167
  tail call void @free(i8* %8) #10, !dbg !2169
  %9 = add nuw i64 %6, 1, !dbg !2170
  %10 = load i32, i32* @nslots, align 4, !dbg !2159, !tbaa !682
  %11 = sext i32 %10 to i64, !dbg !2163
  %12 = icmp slt i64 %9, %11, !dbg !2163
  br i1 %12, label %5, label %13, !dbg !2164, !llvm.loop !2172

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2175

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2175
  %16 = load i8*, i8** %15, align 8, !dbg !2175, !tbaa !2167
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2177
  br i1 %17, label %19, label %18, !dbg !2178

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2179
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2181, !tbaa !2182
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2183, !tbaa !2167
  br label %19, !dbg !2184

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2185
  br i1 %20, label %23, label %21, !dbg !2187

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2188
  tail call void @free(i8* %22) #10, !dbg !2190
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2191, !tbaa !597
  br label %23, !dbg !2192

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2193, !tbaa !682
  ret void, !dbg !2194
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2195 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2199, metadata !589), !dbg !2201
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2200, metadata !589), !dbg !2202
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2203
  ret i8* %3, !dbg !2204
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2205 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2209, metadata !589), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2210, metadata !589), !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2211, metadata !589), !dbg !2225
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2212, metadata !589), !dbg !2226
  %5 = tail call i32* @__errno_location() #1, !dbg !2227
  %6 = load i32, i32* %5, align 4, !dbg !2227, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2213, metadata !589), !dbg !2228
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2229, !tbaa !597
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2214, metadata !589), !dbg !2230
  %8 = icmp slt i32 %0, 0, !dbg !2231
  br i1 %8, label %9, label %10, !dbg !2233

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2234
  unreachable, !dbg !2234

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2235, !tbaa !682
  %12 = icmp sgt i32 %11, %0, !dbg !2236
  br i1 %12, label %34, label %13, !dbg !2237

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2238
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2239
  br i1 %15, label %16, label %17, !dbg !2241

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2242
  unreachable, !dbg !2242

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2243
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2243
  %20 = add nsw i32 %0, 1, !dbg !2245
  %21 = sext i32 %20 to i64, !dbg !2246
  %22 = shl nsw i64 %21, 4, !dbg !2247
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2248
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2248
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2214, metadata !589), !dbg !2230
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2249, !tbaa !597
  br i1 %14, label %25, label %26, !dbg !2250

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2251, !tbaa.struct !2253
  br label %26, !dbg !2254

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2255, !tbaa !682
  %28 = sext i32 %27 to i64, !dbg !2256
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2256
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2257
  %31 = sub nsw i32 %20, %27, !dbg !2258
  %32 = sext i32 %31 to i64, !dbg !2259
  %33 = shl nsw i64 %32, 4, !dbg !2260
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2257
  store i32 %20, i32* @nslots, align 4, !dbg !2261, !tbaa !682
  br label %34, !dbg !2262

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2214, metadata !589), !dbg !2230
  %36 = sext i32 %0 to i64, !dbg !2263
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2264
  %38 = load i64, i64* %37, align 8, !dbg !2264, !tbaa !2182
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2218, metadata !589), !dbg !2265
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2266
  %40 = load i8*, i8** %39, align 8, !dbg !2266, !tbaa !2167
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2220, metadata !589), !dbg !2267
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2268
  %42 = load i32, i32* %41, align 4, !dbg !2268, !tbaa !969
  %43 = or i32 %42, 1, !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2221, metadata !589), !dbg !2270
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2271
  %45 = load i32, i32* %44, align 8, !dbg !2271, !tbaa !907
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2272
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2273
  %48 = load i8*, i8** %47, align 8, !dbg !2273, !tbaa !996
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2274
  %50 = load i8*, i8** %49, align 8, !dbg !2274, !tbaa !999
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2222, metadata !589), !dbg !2276
  %52 = icmp ugt i64 %38, %51, !dbg !2277
  br i1 %52, label %63, label %53, !dbg !2279

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2280
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2218, metadata !589), !dbg !2265
  store i64 %54, i64* %37, align 8, !dbg !2282, !tbaa !2182
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2283
  br i1 %55, label %57, label %56, !dbg !2285

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2286
  br label %57, !dbg !2286

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2102, metadata !589) #10, !dbg !2287
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2289
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2220, metadata !589), !dbg !2267
  store i8* %58, i8** %39, align 8, !dbg !2290, !tbaa !2167
  %59 = load i32, i32* %44, align 8, !dbg !2291, !tbaa !907
  %60 = load i8*, i8** %47, align 8, !dbg !2292, !tbaa !996
  %61 = load i8*, i8** %49, align 8, !dbg !2293, !tbaa !999
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2294
  br label %63, !dbg !2295

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2220, metadata !589), !dbg !2267
  store i32 %6, i32* %5, align 4, !dbg !2296, !tbaa !682
  ret i8* %64, !dbg !2297
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2298 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2302, metadata !589), !dbg !2305
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2303, metadata !589), !dbg !2306
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2304, metadata !589), !dbg !2307
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2308
  ret i8* %4, !dbg !2309
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2310 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2314, metadata !589), !dbg !2315
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2199, metadata !589) #10, !dbg !2316
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2200, metadata !589) #10, !dbg !2318
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2319
  ret i8* %2, !dbg !2320
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2321 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2325, metadata !589), !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2326, metadata !589), !dbg !2328
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2302, metadata !589) #10, !dbg !2329
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2303, metadata !589) #10, !dbg !2331
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2304, metadata !589) #10, !dbg !2332
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2333
  ret i8* %3, !dbg !2334
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2335 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2343, metadata !2349), !dbg !2350
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2339, metadata !589), !dbg !2352
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2340, metadata !589), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2341, metadata !589), !dbg !2354
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2355
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2342, metadata !1459), !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2348, metadata !589) #10, !dbg !2357
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2358
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2358
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2343, metadata !589) #10, !dbg !2350
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2343, metadata !2359) #10, !dbg !2350
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2350
  %8 = icmp eq i32 %1, 10, !dbg !2360
  br i1 %8, label %9, label %10, !dbg !2362

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2363, !noalias !2364
  unreachable, !dbg !2363

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2343, metadata !2359) #10, !dbg !2350
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2367
  store i32 %1, i32* %11, align 8, !dbg !2367, !alias.scope !2364
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2367
  %13 = bitcast i32* %12 to i8*, !dbg !2367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2367
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2368
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2342, metadata !1459), !dbg !2356
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2369
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2370
  ret i8* %14, !dbg !2371
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2372 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2343, metadata !2349), !dbg !2381
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2376, metadata !589), !dbg !2383
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2377, metadata !589), !dbg !2384
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2378, metadata !589), !dbg !2385
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2379, metadata !589), !dbg !2386
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2387
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2387
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2380, metadata !1459), !dbg !2388
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2348, metadata !589) #10, !dbg !2389
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2390
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2390
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2343, metadata !589) #10, !dbg !2381
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2343, metadata !2359) #10, !dbg !2381
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2381
  %9 = icmp eq i32 %1, 10, !dbg !2391
  br i1 %9, label %10, label %11, !dbg !2392

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2393, !noalias !2394
  unreachable, !dbg !2393

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2343, metadata !2359) #10, !dbg !2381
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2397
  store i32 %1, i32* %12, align 8, !dbg !2397, !alias.scope !2394
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2397
  %14 = bitcast i32* %13 to i8*, !dbg !2397
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2397
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2398
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2380, metadata !1459), !dbg !2388
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2399
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2400
  ret i8* %15, !dbg !2401
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2402 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2343, metadata !2349), !dbg !2408
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2406, metadata !589), !dbg !2411
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2407, metadata !589), !dbg !2412
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2339, metadata !589) #10, !dbg !2413
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2340, metadata !589) #10, !dbg !2414
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2341, metadata !589) #10, !dbg !2415
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2416
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2342, metadata !1459) #10, !dbg !2417
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2348, metadata !589) #10, !dbg !2418
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2419
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2419
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2343, metadata !589) #10, !dbg !2408
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2343, metadata !2359) #10, !dbg !2408
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2408
  %7 = icmp eq i32 %0, 10, !dbg !2420
  br i1 %7, label %8, label %9, !dbg !2421

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2422, !noalias !2423
  unreachable, !dbg !2422

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2343, metadata !2359) #10, !dbg !2408
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2426
  store i32 %0, i32* %10, align 8, !dbg !2426, !alias.scope !2423
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2426
  %12 = bitcast i32* %11 to i8*, !dbg !2426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2426
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2427
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2342, metadata !1459) #10, !dbg !2417
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2428
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2429
  ret i8* %13, !dbg !2430
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2431 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2343, metadata !2349), !dbg !2438
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2435, metadata !589), !dbg !2441
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2436, metadata !589), !dbg !2442
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2437, metadata !589), !dbg !2443
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2376, metadata !589) #10, !dbg !2444
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2377, metadata !589) #10, !dbg !2445
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2378, metadata !589) #10, !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2379, metadata !589) #10, !dbg !2447
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2448
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2448
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2380, metadata !1459) #10, !dbg !2449
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2348, metadata !589) #10, !dbg !2450
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2451
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2451
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2343, metadata !589) #10, !dbg !2438
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2343, metadata !2359) #10, !dbg !2438
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2438
  %8 = icmp eq i32 %0, 10, !dbg !2452
  br i1 %8, label %9, label %10, !dbg !2453

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2454, !noalias !2455
  unreachable, !dbg !2454

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2343, metadata !2359) #10, !dbg !2438
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2458
  store i32 %0, i32* %11, align 8, !dbg !2458, !alias.scope !2455
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2458
  %13 = bitcast i32* %12 to i8*, !dbg !2458
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2458
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2459
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2380, metadata !1459) #10, !dbg !2449
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2460
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2461
  ret i8* %14, !dbg !2462
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2463 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2467, metadata !589), !dbg !2471
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2468, metadata !589), !dbg !2472
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2469, metadata !589), !dbg !2473
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2474
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2475, !tbaa.struct !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2470, metadata !1459), !dbg !2477
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !927, metadata !589), !dbg !2478
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !928, metadata !589), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !929, metadata !589), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !930, metadata !589), !dbg !2482
  %6 = lshr i8 %2, 5, !dbg !2483
  %7 = zext i8 %6 to i64, !dbg !2483
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2484
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !931, metadata !589), !dbg !2485
  %9 = and i8 %2, 31, !dbg !2486
  %10 = zext i8 %9 to i32, !dbg !2487
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !933, metadata !589), !dbg !2488
  %11 = load i32, i32* %8, align 4, !dbg !2489, !tbaa !682
  %12 = lshr i32 %11, %10, !dbg !2490
  %13 = and i32 %12, 1, !dbg !2491
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !934, metadata !589), !dbg !2492
  %14 = xor i32 %13, 1, !dbg !2493
  %15 = shl i32 %14, %10, !dbg !2494
  %16 = xor i32 %15, %11, !dbg !2495
  store i32 %16, i32* %8, align 4, !dbg !2495, !tbaa !682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2470, metadata !1459), !dbg !2477
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2496
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2497
  ret i8* %17, !dbg !2498
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2499 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2503, metadata !589), !dbg !2505
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2504, metadata !589), !dbg !2506
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2467, metadata !589) #10, !dbg !2507
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2468, metadata !589) #10, !dbg !2509
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2469, metadata !589) #10, !dbg !2510
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2511
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2512, !tbaa.struct !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2470, metadata !1459) #10, !dbg !2513
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !927, metadata !589) #10, !dbg !2514
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !928, metadata !589) #10, !dbg !2516
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !929, metadata !589) #10, !dbg !2517
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !930, metadata !589) #10, !dbg !2518
  %5 = lshr i8 %1, 5, !dbg !2519
  %6 = zext i8 %5 to i64, !dbg !2519
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2520
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !931, metadata !589) #10, !dbg !2521
  %8 = and i8 %1, 31, !dbg !2522
  %9 = zext i8 %8 to i32, !dbg !2523
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !933, metadata !589) #10, !dbg !2524
  %10 = load i32, i32* %7, align 4, !dbg !2525, !tbaa !682
  %11 = lshr i32 %10, %9, !dbg !2526
  %12 = and i32 %11, 1, !dbg !2527
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !934, metadata !589) #10, !dbg !2528
  %13 = xor i32 %12, 1, !dbg !2529
  %14 = shl i32 %13, %9, !dbg !2530
  %15 = xor i32 %14, %10, !dbg !2531
  store i32 %15, i32* %7, align 4, !dbg !2531, !tbaa !682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2470, metadata !1459) #10, !dbg !2513
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2532
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2533
  ret i8* %16, !dbg !2534
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2535 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2537, metadata !589), !dbg !2538
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2503, metadata !589) #10, !dbg !2539
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2504, metadata !589) #10, !dbg !2541
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2467, metadata !589) #10, !dbg !2542
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2468, metadata !589) #10, !dbg !2544
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2469, metadata !589) #10, !dbg !2545
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2546
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2547, !tbaa.struct !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2470, metadata !1459) #10, !dbg !2548
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !927, metadata !589) #10, !dbg !2549
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !928, metadata !589) #10, !dbg !2551
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !929, metadata !589) #10, !dbg !2552
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !930, metadata !589) #10, !dbg !2553
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2554
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !931, metadata !589) #10, !dbg !2555
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !933, metadata !589) #10, !dbg !2556
  %5 = load i32, i32* %4, align 4, !dbg !2557, !tbaa !682
  %6 = or i32 %5, 67108864, !dbg !2558
  store i32 %6, i32* %4, align 4, !dbg !2558, !tbaa !682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2470, metadata !1459) #10, !dbg !2548
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2559
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2560
  ret i8* %7, !dbg !2561
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2562 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2564, metadata !589), !dbg !2566
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2565, metadata !589), !dbg !2567
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2467, metadata !589) #10, !dbg !2568
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2468, metadata !589) #10, !dbg !2570
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2469, metadata !589) #10, !dbg !2571
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2572
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2573, !tbaa.struct !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2470, metadata !1459) #10, !dbg !2574
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !927, metadata !589) #10, !dbg !2575
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !928, metadata !589) #10, !dbg !2577
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !929, metadata !589) #10, !dbg !2578
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !930, metadata !589) #10, !dbg !2579
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2580
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !931, metadata !589) #10, !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !933, metadata !589) #10, !dbg !2582
  %6 = load i32, i32* %5, align 4, !dbg !2583, !tbaa !682
  %7 = or i32 %6, 67108864, !dbg !2584
  store i32 %7, i32* %5, align 4, !dbg !2584, !tbaa !682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2470, metadata !1459) #10, !dbg !2574
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2585
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2586
  ret i8* %8, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2588 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2343, metadata !2349), !dbg !2594
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2590, metadata !589), !dbg !2596
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2591, metadata !589), !dbg !2597
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2592, metadata !589), !dbg !2598
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2599
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2599
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2348, metadata !589) #10, !dbg !2600
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2601
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2601
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2343, metadata !589) #10, !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2343, metadata !2359) #10, !dbg !2594
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2594
  %9 = icmp eq i32 %1, 10, !dbg !2602
  br i1 %9, label %10, label %11, !dbg !2603

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2604, !noalias !2605
  unreachable, !dbg !2604

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2343, metadata !2359) #10, !dbg !2594
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2608
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2609
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2610
  store i32 %1, i32* %13, align 8, !dbg !2610
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2610
  %15 = bitcast i32* %14 to i8*, !dbg !2610
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2593, metadata !1459), !dbg !2611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !927, metadata !589), !dbg !2612
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !928, metadata !589), !dbg !2614
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !929, metadata !589), !dbg !2615
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !930, metadata !589), !dbg !2616
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2617
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !931, metadata !589), !dbg !2618
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !933, metadata !589), !dbg !2619
  %17 = load i32, i32* %16, align 4, !dbg !2620, !tbaa !682
  %18 = or i32 %17, 67108864, !dbg !2621
  store i32 %18, i32* %16, align 4, !dbg !2621, !tbaa !682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2593, metadata !1459), !dbg !2611
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2622
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2623
  ret i8* %19, !dbg !2624
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2625 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2629, metadata !589), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2630, metadata !589), !dbg !2634
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2631, metadata !589), !dbg !2635
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2632, metadata !589), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2637, metadata !589) #10, !dbg !2647
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2642, metadata !589) #10, !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2643, metadata !589) #10, !dbg !2650
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2644, metadata !589) #10, !dbg !2651
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2645, metadata !589) #10, !dbg !2652
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2653
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2654, !tbaa.struct !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2646, metadata !1459) #10, !dbg !2655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !977, metadata !589) #10, !dbg !2656
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !978, metadata !589) #10, !dbg !2658
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !979, metadata !589) #10, !dbg !2659
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !977, metadata !589) #10, !dbg !2656
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !977, metadata !589) #10, !dbg !2656
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2660
  store i32 10, i32* %7, align 8, !dbg !2661, !tbaa !907
  %8 = icmp ne i8* %1, null, !dbg !2662
  %9 = icmp ne i8* %2, null, !dbg !2663
  %10 = and i1 %8, %9, !dbg !2664
  br i1 %10, label %12, label %11, !dbg !2664

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2665
  unreachable, !dbg !2665

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2666
  store i8* %1, i8** %13, align 8, !dbg !2667, !tbaa !996
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2668
  store i8* %2, i8** %14, align 8, !dbg !2669, !tbaa !999
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2646, metadata !1459) #10, !dbg !2655
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2670
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2671
  ret i8* %15, !dbg !2672
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2638 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2637, metadata !589), !dbg !2673
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2642, metadata !589), !dbg !2674
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2643, metadata !589), !dbg !2675
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2644, metadata !589), !dbg !2676
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2645, metadata !589), !dbg !2677
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2678
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2679, !tbaa.struct !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2646, metadata !1459), !dbg !2680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !977, metadata !589) #10, !dbg !2681
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !978, metadata !589) #10, !dbg !2683
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !979, metadata !589) #10, !dbg !2684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !977, metadata !589) #10, !dbg !2681
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !977, metadata !589) #10, !dbg !2681
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2685
  store i32 10, i32* %8, align 8, !dbg !2686, !tbaa !907
  %9 = icmp ne i8* %1, null, !dbg !2687
  %10 = icmp ne i8* %2, null, !dbg !2688
  %11 = and i1 %9, %10, !dbg !2689
  br i1 %11, label %13, label %12, !dbg !2689

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2690
  unreachable, !dbg !2690

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2691
  store i8* %1, i8** %14, align 8, !dbg !2692, !tbaa !996
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2693
  store i8* %2, i8** %15, align 8, !dbg !2694, !tbaa !999
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2646, metadata !1459), !dbg !2680
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2695
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2696
  ret i8* %16, !dbg !2697
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2698 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2702, metadata !589), !dbg !2705
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2703, metadata !589), !dbg !2706
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2704, metadata !589), !dbg !2707
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2629, metadata !589) #10, !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2630, metadata !589) #10, !dbg !2710
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2631, metadata !589) #10, !dbg !2711
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2632, metadata !589) #10, !dbg !2712
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2637, metadata !589) #10, !dbg !2713
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2642, metadata !589) #10, !dbg !2715
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2643, metadata !589) #10, !dbg !2716
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2644, metadata !589) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2645, metadata !589) #10, !dbg !2718
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2719
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2719
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2720, !tbaa.struct !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2646, metadata !1459) #10, !dbg !2721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !977, metadata !589) #10, !dbg !2722
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !978, metadata !589) #10, !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !979, metadata !589) #10, !dbg !2725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !977, metadata !589) #10, !dbg !2722
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !977, metadata !589) #10, !dbg !2722
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2726
  store i32 10, i32* %6, align 8, !dbg !2727, !tbaa !907
  %7 = icmp ne i8* %0, null, !dbg !2728
  %8 = icmp ne i8* %1, null, !dbg !2729
  %9 = and i1 %7, %8, !dbg !2730
  br i1 %9, label %11, label %10, !dbg !2730

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2731
  unreachable, !dbg !2731

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2732
  store i8* %0, i8** %12, align 8, !dbg !2733, !tbaa !996
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2734
  store i8* %1, i8** %13, align 8, !dbg !2735, !tbaa !999
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2646, metadata !1459) #10, !dbg !2721
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2736
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2737
  ret i8* %14, !dbg !2738
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2739 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2743, metadata !589), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2744, metadata !589), !dbg !2748
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2745, metadata !589), !dbg !2749
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2746, metadata !589), !dbg !2750
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2637, metadata !589) #10, !dbg !2751
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2642, metadata !589) #10, !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2643, metadata !589) #10, !dbg !2754
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2644, metadata !589) #10, !dbg !2755
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2645, metadata !589) #10, !dbg !2756
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2757
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2758, !tbaa.struct !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2646, metadata !1459) #10, !dbg !2759
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !977, metadata !589) #10, !dbg !2760
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !978, metadata !589) #10, !dbg !2762
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !979, metadata !589) #10, !dbg !2763
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !977, metadata !589) #10, !dbg !2760
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !977, metadata !589) #10, !dbg !2760
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2764
  store i32 10, i32* %7, align 8, !dbg !2765, !tbaa !907
  %8 = icmp ne i8* %0, null, !dbg !2766
  %9 = icmp ne i8* %1, null, !dbg !2767
  %10 = and i1 %8, %9, !dbg !2768
  br i1 %10, label %12, label %11, !dbg !2768

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2769
  unreachable, !dbg !2769

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2770
  store i8* %0, i8** %13, align 8, !dbg !2771, !tbaa !996
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2772
  store i8* %1, i8** %14, align 8, !dbg !2773, !tbaa !999
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2646, metadata !1459) #10, !dbg !2759
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2774
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2775
  ret i8* %15, !dbg !2776
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2777 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2781, metadata !589), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2782, metadata !589), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2783, metadata !589), !dbg !2786
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2787
  ret i8* %4, !dbg !2788
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2789 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2793, metadata !589), !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2794, metadata !589), !dbg !2796
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2781, metadata !589) #10, !dbg !2797
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2782, metadata !589) #10, !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2783, metadata !589) #10, !dbg !2800
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2801
  ret i8* %3, !dbg !2802
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2803 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2807, metadata !589), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2808, metadata !589), !dbg !2810
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2781, metadata !589) #10, !dbg !2811
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2782, metadata !589) #10, !dbg !2813
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2783, metadata !589) #10, !dbg !2814
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2815
  ret i8* %3, !dbg !2816
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2817 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2821, metadata !589), !dbg !2822
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2807, metadata !589) #10, !dbg !2823
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2808, metadata !589) #10, !dbg !2825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2781, metadata !589) #10, !dbg !2826
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2782, metadata !589) #10, !dbg !2828
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2783, metadata !589) #10, !dbg !2829
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2830
  ret i8* %2, !dbg !2831
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2832 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2888, metadata !589), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2889, metadata !589), !dbg !2895
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2890, metadata !589), !dbg !2896
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2891, metadata !589), !dbg !2897
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2892, metadata !589), !dbg !2898
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2893, metadata !589), !dbg !2899
  %7 = icmp eq i8* %1, null, !dbg !2900
  br i1 %7, label %10, label %8, !dbg !2902

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2903
  br label %12, !dbg !2903

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2904
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i32 5) #10, !dbg !2905
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2906
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.58, i64 0, i64 0), i32 5) #10, !dbg !2908
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2909
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
  ], !dbg !2910

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2911
  unreachable, !dbg !2911

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.59, i64 0, i64 0), i32 5) #10, !dbg !2913
  %20 = load i8*, i8** %4, align 8, !dbg !2913, !tbaa !597
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2914
  br label %146, !dbg !2916

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.60, i64 0, i64 0), i32 5) #10, !dbg !2917
  %24 = load i8*, i8** %4, align 8, !dbg !2917, !tbaa !597
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2917
  %26 = load i8*, i8** %25, align 8, !dbg !2917, !tbaa !597
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2918
  br label %146, !dbg !2919

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.61, i64 0, i64 0), i32 5) #10, !dbg !2920
  %30 = load i8*, i8** %4, align 8, !dbg !2920, !tbaa !597
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2920
  %32 = load i8*, i8** %31, align 8, !dbg !2920, !tbaa !597
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2920
  %34 = load i8*, i8** %33, align 8, !dbg !2920, !tbaa !597
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2921
  br label %146, !dbg !2922

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.62, i64 0, i64 0), i32 5) #10, !dbg !2923
  %38 = load i8*, i8** %4, align 8, !dbg !2923, !tbaa !597
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2923
  %40 = load i8*, i8** %39, align 8, !dbg !2923, !tbaa !597
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2923
  %42 = load i8*, i8** %41, align 8, !dbg !2923, !tbaa !597
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2923
  %44 = load i8*, i8** %43, align 8, !dbg !2923, !tbaa !597
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2924
  br label %146, !dbg !2925

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.63, i64 0, i64 0), i32 5) #10, !dbg !2926
  %48 = load i8*, i8** %4, align 8, !dbg !2926, !tbaa !597
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2926
  %50 = load i8*, i8** %49, align 8, !dbg !2926, !tbaa !597
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2926
  %52 = load i8*, i8** %51, align 8, !dbg !2926, !tbaa !597
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2926
  %54 = load i8*, i8** %53, align 8, !dbg !2926, !tbaa !597
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2926
  %56 = load i8*, i8** %55, align 8, !dbg !2926, !tbaa !597
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2927
  br label %146, !dbg !2928

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.64, i64 0, i64 0), i32 5) #10, !dbg !2929
  %60 = load i8*, i8** %4, align 8, !dbg !2929, !tbaa !597
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2929
  %62 = load i8*, i8** %61, align 8, !dbg !2929, !tbaa !597
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2929
  %64 = load i8*, i8** %63, align 8, !dbg !2929, !tbaa !597
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2929
  %66 = load i8*, i8** %65, align 8, !dbg !2929, !tbaa !597
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2929
  %68 = load i8*, i8** %67, align 8, !dbg !2929, !tbaa !597
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2929
  %70 = load i8*, i8** %69, align 8, !dbg !2929, !tbaa !597
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2930
  br label %146, !dbg !2931

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.65, i64 0, i64 0), i32 5) #10, !dbg !2932
  %74 = load i8*, i8** %4, align 8, !dbg !2932, !tbaa !597
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2932
  %76 = load i8*, i8** %75, align 8, !dbg !2932, !tbaa !597
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2932
  %78 = load i8*, i8** %77, align 8, !dbg !2932, !tbaa !597
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2932
  %80 = load i8*, i8** %79, align 8, !dbg !2932, !tbaa !597
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2932
  %82 = load i8*, i8** %81, align 8, !dbg !2932, !tbaa !597
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2932
  %84 = load i8*, i8** %83, align 8, !dbg !2932, !tbaa !597
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2932
  %86 = load i8*, i8** %85, align 8, !dbg !2932, !tbaa !597
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2933
  br label %146, !dbg !2934

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.66, i64 0, i64 0), i32 5) #10, !dbg !2935
  %90 = load i8*, i8** %4, align 8, !dbg !2935, !tbaa !597
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2935
  %92 = load i8*, i8** %91, align 8, !dbg !2935, !tbaa !597
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2935
  %94 = load i8*, i8** %93, align 8, !dbg !2935, !tbaa !597
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2935
  %96 = load i8*, i8** %95, align 8, !dbg !2935, !tbaa !597
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2935
  %98 = load i8*, i8** %97, align 8, !dbg !2935, !tbaa !597
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2935
  %100 = load i8*, i8** %99, align 8, !dbg !2935, !tbaa !597
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2935
  %102 = load i8*, i8** %101, align 8, !dbg !2935, !tbaa !597
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2935
  %104 = load i8*, i8** %103, align 8, !dbg !2935, !tbaa !597
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2936
  br label %146, !dbg !2937

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.67, i64 0, i64 0), i32 5) #10, !dbg !2938
  %108 = load i8*, i8** %4, align 8, !dbg !2938, !tbaa !597
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2938
  %110 = load i8*, i8** %109, align 8, !dbg !2938, !tbaa !597
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2938
  %112 = load i8*, i8** %111, align 8, !dbg !2938, !tbaa !597
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2938
  %114 = load i8*, i8** %113, align 8, !dbg !2938, !tbaa !597
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2938
  %116 = load i8*, i8** %115, align 8, !dbg !2938, !tbaa !597
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2938
  %118 = load i8*, i8** %117, align 8, !dbg !2938, !tbaa !597
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2938
  %120 = load i8*, i8** %119, align 8, !dbg !2938, !tbaa !597
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2938
  %122 = load i8*, i8** %121, align 8, !dbg !2938, !tbaa !597
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2938
  %124 = load i8*, i8** %123, align 8, !dbg !2938, !tbaa !597
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2939
  br label %146, !dbg !2940

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.68, i64 0, i64 0), i32 5) #10, !dbg !2941
  %128 = load i8*, i8** %4, align 8, !dbg !2941, !tbaa !597
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2941
  %130 = load i8*, i8** %129, align 8, !dbg !2941, !tbaa !597
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2941
  %132 = load i8*, i8** %131, align 8, !dbg !2941, !tbaa !597
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2941
  %134 = load i8*, i8** %133, align 8, !dbg !2941, !tbaa !597
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2941
  %136 = load i8*, i8** %135, align 8, !dbg !2941, !tbaa !597
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2941
  %138 = load i8*, i8** %137, align 8, !dbg !2941, !tbaa !597
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2941
  %140 = load i8*, i8** %139, align 8, !dbg !2941, !tbaa !597
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2941
  %142 = load i8*, i8** %141, align 8, !dbg !2941, !tbaa !597
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2941
  %144 = load i8*, i8** %143, align 8, !dbg !2941, !tbaa !597
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2942
  br label %146, !dbg !2943

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2944
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2945 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2949, metadata !589), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2950, metadata !589), !dbg !2956
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2951, metadata !589), !dbg !2957
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2952, metadata !589), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2953, metadata !589), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2954, metadata !589), !dbg !2960
  br label %6, !dbg !2961

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2954, metadata !589), !dbg !2960
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2963
  %9 = load i8*, i8** %8, align 8, !dbg !2963, !tbaa !597
  %10 = icmp eq i8* %9, null, !dbg !2966
  %11 = add i64 %7, 1, !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2954, metadata !589), !dbg !2960
  br i1 %10, label %12, label %6, !dbg !2966, !llvm.loop !2970

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2973
  ret void, !dbg !2974
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2975 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2986, metadata !589), !dbg !2994
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2987, metadata !589), !dbg !2995
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2988, metadata !589), !dbg !2996
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2989, metadata !589), !dbg !2997
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2990, metadata !589), !dbg !2998
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2999
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !2999
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2992, metadata !589), !dbg !3000
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2991, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2991, metadata !589), !dbg !3001
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3002
  %12 = icmp ult i32 %11, 41, !dbg !3002
  br i1 %12, label %13, label %18, !dbg !3002

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3006
  %15 = sext i32 %11 to i64, !dbg !3006
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3006
  %17 = add i32 %11, 8, !dbg !3006
  store i32 %17, i32* %8, align 8, !dbg !3006
  br label %21, !dbg !3006

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3008
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3008
  store i8* %20, i8** %10, align 8, !dbg !3008
  br label %21, !dbg !3008

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3002
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3010
  %25 = load i8*, i8** %24, align 8, !dbg !3010
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3012
  store i8* %25, i8** %26, align 16, !dbg !3013, !tbaa !597
  %27 = icmp eq i8* %25, null, !dbg !3014
  br i1 %27, label %30, label %28, !dbg !3015

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  %29 = icmp ult i32 %22, 41, !dbg !3002
  br i1 %29, label %35, label %32, !dbg !3002

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3017
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3018
  ret void, !dbg !3018

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3008
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3008
  store i8* %34, i8** %10, align 8, !dbg !3008
  br label %40, !dbg !3008

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3006
  %37 = sext i32 %22 to i64, !dbg !3006
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3006
  %39 = add i32 %22, 8, !dbg !3006
  store i32 %39, i32* %8, align 8, !dbg !3006
  br label %40, !dbg !3006

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3002
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3010
  %44 = load i8*, i8** %43, align 8, !dbg !3010
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3012
  store i8* %44, i8** %45, align 8, !dbg !3013, !tbaa !597
  %46 = icmp eq i8* %44, null, !dbg !3014
  br i1 %46, label %30, label %47, !dbg !3015

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  %48 = icmp ult i32 %41, 41, !dbg !3002
  br i1 %48, label %52, label %49, !dbg !3002

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3008
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3008
  store i8* %51, i8** %10, align 8, !dbg !3008
  br label %57, !dbg !3008

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3006
  %54 = sext i32 %41 to i64, !dbg !3006
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3006
  %56 = add i32 %41, 8, !dbg !3006
  store i32 %56, i32* %8, align 8, !dbg !3006
  br label %57, !dbg !3006

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3002
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3010
  %61 = load i8*, i8** %60, align 8, !dbg !3010
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3012
  store i8* %61, i8** %62, align 16, !dbg !3013, !tbaa !597
  %63 = icmp eq i8* %61, null, !dbg !3014
  br i1 %63, label %30, label %64, !dbg !3015

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  %65 = icmp ult i32 %58, 41, !dbg !3002
  br i1 %65, label %69, label %66, !dbg !3002

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3008
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3008
  store i8* %68, i8** %10, align 8, !dbg !3008
  br label %74, !dbg !3008

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3006
  %71 = sext i32 %58 to i64, !dbg !3006
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3006
  %73 = add i32 %58, 8, !dbg !3006
  store i32 %73, i32* %8, align 8, !dbg !3006
  br label %74, !dbg !3006

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3002
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3010
  %78 = load i8*, i8** %77, align 8, !dbg !3010
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3012
  store i8* %78, i8** %79, align 8, !dbg !3013, !tbaa !597
  %80 = icmp eq i8* %78, null, !dbg !3014
  br i1 %80, label %30, label %81, !dbg !3015

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  %82 = icmp ult i32 %75, 41, !dbg !3002
  br i1 %82, label %86, label %83, !dbg !3002

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3008
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3008
  store i8* %85, i8** %10, align 8, !dbg !3008
  br label %91, !dbg !3008

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3006
  %88 = sext i32 %75 to i64, !dbg !3006
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3006
  %90 = add i32 %75, 8, !dbg !3006
  store i32 %90, i32* %8, align 8, !dbg !3006
  br label %91, !dbg !3006

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3002
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3010
  %95 = load i8*, i8** %94, align 8, !dbg !3010
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3012
  store i8* %95, i8** %96, align 16, !dbg !3013, !tbaa !597
  %97 = icmp eq i8* %95, null, !dbg !3014
  br i1 %97, label %30, label %98, !dbg !3015

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  %99 = icmp ult i32 %92, 41, !dbg !3002
  br i1 %99, label %103, label %100, !dbg !3002

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3008
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3008
  store i8* %102, i8** %10, align 8, !dbg !3008
  br label %108, !dbg !3008

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3006
  %105 = sext i32 %92 to i64, !dbg !3006
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3006
  %107 = add i32 %92, 8, !dbg !3006
  store i32 %107, i32* %8, align 8, !dbg !3006
  br label %108, !dbg !3006

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3010
  %111 = load i8*, i8** %110, align 8, !dbg !3010
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3012
  store i8* %111, i8** %112, align 8, !dbg !3013, !tbaa !597
  %113 = icmp eq i8* %111, null, !dbg !3014
  br i1 %113, label %30, label %114, !dbg !3015

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  %115 = load i8*, i8** %10, align 8, !dbg !3008
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3008
  store i8* %116, i8** %10, align 8, !dbg !3008
  %117 = bitcast i8* %115 to i8**, !dbg !3010
  %118 = load i8*, i8** %117, align 8, !dbg !3010
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3012
  store i8* %118, i8** %119, align 16, !dbg !3013, !tbaa !597
  %120 = icmp eq i8* %118, null, !dbg !3014
  br i1 %120, label %30, label %121, !dbg !3015

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  %122 = load i8*, i8** %10, align 8, !dbg !3008
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3008
  store i8* %123, i8** %10, align 8, !dbg !3008
  %124 = bitcast i8* %122 to i8**, !dbg !3010
  %125 = load i8*, i8** %124, align 8, !dbg !3010
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3012
  store i8* %125, i8** %126, align 8, !dbg !3013, !tbaa !597
  %127 = icmp eq i8* %125, null, !dbg !3014
  br i1 %127, label %30, label %128, !dbg !3015

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  %129 = load i8*, i8** %10, align 8, !dbg !3008
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3008
  store i8* %130, i8** %10, align 8, !dbg !3008
  %131 = bitcast i8* %129 to i8**, !dbg !3010
  %132 = load i8*, i8** %131, align 8, !dbg !3010
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3012
  store i8* %132, i8** %133, align 16, !dbg !3013, !tbaa !597
  %134 = icmp eq i8* %132, null, !dbg !3014
  br i1 %134, label %30, label %135, !dbg !3015

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  %136 = load i8*, i8** %10, align 8, !dbg !3008
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3008
  store i8* %137, i8** %10, align 8, !dbg !3008
  %138 = bitcast i8* %136 to i8**, !dbg !3010
  %139 = load i8*, i8** %138, align 8, !dbg !3010
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3012
  store i8* %139, i8** %140, align 8, !dbg !3013, !tbaa !597
  %141 = icmp eq i8* %139, null, !dbg !3014
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2991, metadata !589), !dbg !3001
  %142 = select i1 %141, i64 9, i64 10, !dbg !3015
  br label %30, !dbg !3015
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3019 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3023, metadata !589), !dbg !3032
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3024, metadata !589), !dbg !3033
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3025, metadata !589), !dbg !3034
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3026, metadata !589), !dbg !3035
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3036
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3036
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3027, metadata !589), !dbg !3037
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3038
  call void @llvm.va_start(i8* nonnull %6), !dbg !3038
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3039
  call void @llvm.va_end(i8* nonnull %6), !dbg !3040
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3041
  ret void, !dbg !3041
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3042 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.71, i64 0, i64 0), i32 5) #10, !dbg !3043
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.72, i64 0, i64 0)) #10, !dbg !3044
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.73, i64 0, i64 0), i32 5) #10, !dbg !3046
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.75, i64 0, i64 0)) #10, !dbg !3047
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3048
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3048, !tbaa !597
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3049
  ret void, !dbg !3050
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3051 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3055, metadata !589), !dbg !3057
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3056, metadata !589), !dbg !3058
  %3 = udiv i64 9223372036854775807, %1, !dbg !3059
  %4 = icmp ult i64 %3, %0, !dbg !3059
  br i1 %4, label %5, label %6, !dbg !3061

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3062
  unreachable, !dbg !3062

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3064, metadata !589) #10, !dbg !3071
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3070, metadata !589) #10, !dbg !3074
  %9 = icmp eq i8* %8, null, !dbg !3075
  %10 = icmp ne i64 %7, 0, !dbg !3077
  %11 = and i1 %10, %9, !dbg !3079
  br i1 %11, label %12, label %13, !dbg !3079

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3080
  unreachable, !dbg !3080

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3081
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3065 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3064, metadata !589), !dbg !3082
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3070, metadata !589), !dbg !3084
  %3 = icmp eq i8* %2, null, !dbg !3085
  %4 = icmp ne i64 %0, 0, !dbg !3086
  %5 = and i1 %4, %3, !dbg !3087
  br i1 %5, label %6, label %7, !dbg !3087

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3088
  unreachable, !dbg !3088

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3089
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3090 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3094, metadata !589), !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3095, metadata !589), !dbg !3098
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3096, metadata !589), !dbg !3099
  %4 = udiv i64 9223372036854775807, %2, !dbg !3100
  %5 = icmp ult i64 %4, %1, !dbg !3100
  br i1 %5, label %6, label %7, !dbg !3102

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3103
  unreachable, !dbg !3103

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3105, metadata !589) #10, !dbg !3111
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3110, metadata !589) #10, !dbg !3113
  %9 = icmp eq i64 %8, 0, !dbg !3114
  %10 = icmp ne i8* %0, null, !dbg !3116
  %11 = and i1 %10, %9, !dbg !3118
  br i1 %11, label %12, label %13, !dbg !3118

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3119
  br label %19, !dbg !3121

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3122
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3105, metadata !589) #10, !dbg !3111
  %15 = icmp eq i8* %14, null, !dbg !3123
  %16 = icmp ne i64 %8, 0, !dbg !3125
  %17 = and i1 %16, %15, !dbg !3127
  br i1 %17, label %18, label %19, !dbg !3127

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3128
  unreachable, !dbg !3128

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3129
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3106 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3105, metadata !589), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3110, metadata !589), !dbg !3131
  %3 = icmp eq i64 %1, 0, !dbg !3132
  %4 = icmp ne i8* %0, null, !dbg !3133
  %5 = and i1 %4, %3, !dbg !3134
  br i1 %5, label %6, label %7, !dbg !3134

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3135
  br label %13, !dbg !3136

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3137
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3105, metadata !589), !dbg !3130
  %9 = icmp eq i8* %8, null, !dbg !3138
  %10 = icmp ne i64 %1, 0, !dbg !3139
  %11 = and i1 %10, %9, !dbg !3140
  br i1 %11, label %12, label %13, !dbg !3140

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3141
  unreachable, !dbg !3141

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3142
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !549 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !554, metadata !589), !dbg !3143
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !555, metadata !589), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !556, metadata !589), !dbg !3145
  %4 = load i64, i64* %1, align 8, !dbg !3146, !tbaa !2148
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !557, metadata !589), !dbg !3147
  %5 = icmp eq i8* %0, null, !dbg !3148
  br i1 %5, label %6, label %13, !dbg !3150

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3151
  br i1 %7, label %8, label %17, !dbg !3154

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !557, metadata !589), !dbg !3147
  %10 = icmp ugt i64 %2, 128, !dbg !3157
  %11 = zext i1 %10 to i64, !dbg !3157
  %12 = add nuw nsw i64 %9, %11, !dbg !3158
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !557, metadata !589), !dbg !3147
  br label %17, !dbg !3159

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3160
  %15 = icmp ugt i64 %14, %4, !dbg !3163
  br i1 %15, label %20, label %16, !dbg !3164

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3165
  unreachable, !dbg !3165

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3147
  store i64 %18, i64* %1, align 8, !dbg !3166, !tbaa !2148
  %19 = mul i64 %18, %2, !dbg !3167
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3105, metadata !589) #10, !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3110, metadata !589) #10, !dbg !3170
  br label %27, !dbg !3171

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3172
  %22 = add i64 %4, 1, !dbg !3173
  %23 = add i64 %22, %21, !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3147
  store i64 %23, i64* %1, align 8, !dbg !3166, !tbaa !2148
  %24 = mul i64 %23, %2, !dbg !3167
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3105, metadata !589) #10, !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3110, metadata !589) #10, !dbg !3170
  %25 = icmp eq i64 %24, 0, !dbg !3175
  br i1 %25, label %26, label %27, !dbg !3171

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3176
  br label %34, !dbg !3177

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3178
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3105, metadata !589) #10, !dbg !3168
  %30 = icmp eq i8* %29, null, !dbg !3179
  %31 = icmp ne i64 %28, 0, !dbg !3180
  %32 = and i1 %31, %30, !dbg !3181
  br i1 %32, label %33, label %34, !dbg !3181

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3182
  unreachable, !dbg !3182

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3183
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3184 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3186, metadata !589), !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3064, metadata !589) #10, !dbg !3188
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3190
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3070, metadata !589) #10, !dbg !3191
  %3 = icmp eq i8* %2, null, !dbg !3192
  %4 = icmp ne i64 %0, 0, !dbg !3193
  %5 = and i1 %4, %3, !dbg !3194
  br i1 %5, label %6, label %7, !dbg !3194

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3195
  unreachable, !dbg !3195

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3196
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3197 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3201, metadata !589), !dbg !3203
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3202, metadata !589), !dbg !3204
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !554, metadata !589) #10, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !555, metadata !589) #10, !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !556, metadata !589) #10, !dbg !3208
  %3 = load i64, i64* %1, align 8, !dbg !3209, !tbaa !2148
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !557, metadata !589) #10, !dbg !3210
  %4 = icmp eq i8* %0, null, !dbg !3211
  br i1 %4, label %5, label %8, !dbg !3212

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !557, metadata !589) #10, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !557, metadata !589) #10, !dbg !3210
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #10, !dbg !3210
  store i64 %7, i64* %1, align 8, !dbg !3215, !tbaa !2148
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3105, metadata !589) #10, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3110, metadata !589) #10, !dbg !3218
  br label %17, !dbg !3219

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3220
  br i1 %9, label %11, label %10, !dbg !3221

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3222
  unreachable, !dbg !3222

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3223
  %13 = add i64 %3, 1, !dbg !3224
  %14 = add i64 %13, %12, !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #10, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #10, !dbg !3210
  store i64 %14, i64* %1, align 8, !dbg !3215, !tbaa !2148
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3105, metadata !589) #10, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3110, metadata !589) #10, !dbg !3218
  %15 = icmp eq i64 %14, 0, !dbg !3226
  br i1 %15, label %16, label %17, !dbg !3219

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3227
  br label %24, !dbg !3228

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3229
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3105, metadata !589) #10, !dbg !3216
  %20 = icmp eq i8* %19, null, !dbg !3230
  %21 = icmp ne i64 %18, 0, !dbg !3231
  %22 = and i1 %21, %20, !dbg !3232
  br i1 %22, label %23, label %24, !dbg !3232

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3233
  unreachable, !dbg !3233

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3234
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3235 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3237, metadata !589), !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3064, metadata !589) #10, !dbg !3239
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3241
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3070, metadata !589) #10, !dbg !3242
  %3 = icmp eq i8* %2, null, !dbg !3243
  %4 = icmp ne i64 %0, 0, !dbg !3244
  %5 = and i1 %4, %3, !dbg !3245
  br i1 %5, label %6, label %7, !dbg !3245

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3246
  unreachable, !dbg !3246

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3247
  ret i8* %2, !dbg !3248
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3249 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3251, metadata !589), !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3252, metadata !589), !dbg !3255
  %3 = udiv i64 9223372036854775807, %1, !dbg !3256
  %4 = icmp ult i64 %3, %0, !dbg !3256
  br i1 %4, label %8, label %5, !dbg !3258

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3259
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3253, metadata !589), !dbg !3261
  %7 = icmp eq i8* %6, null, !dbg !3262
  br i1 %7, label %8, label %9, !dbg !3263

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3265
  unreachable, !dbg !3265

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3266
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3271, metadata !589), !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3272, metadata !589), !dbg !3274
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3064, metadata !589) #10, !dbg !3275
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3277
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3070, metadata !589) #10, !dbg !3278
  %4 = icmp eq i8* %3, null, !dbg !3279
  %5 = icmp ne i64 %1, 0, !dbg !3280
  %6 = and i1 %5, %4, !dbg !3281
  br i1 %6, label %7, label %8, !dbg !3281

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3282
  unreachable, !dbg !3282

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3283
  ret i8* %3, !dbg !3284
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3285 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3287, metadata !589), !dbg !3288
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3289
  %3 = add i64 %2, 1, !dbg !3290
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3271, metadata !589) #10, !dbg !3291
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3272, metadata !589) #10, !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3064, metadata !589) #10, !dbg !3295
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3297
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3070, metadata !589) #10, !dbg !3298
  %5 = icmp eq i8* %4, null, !dbg !3299
  %6 = icmp ne i64 %3, 0, !dbg !3300
  %7 = and i1 %6, %5, !dbg !3301
  br i1 %7, label %8, label %9, !dbg !3301

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3302
  unreachable, !dbg !3302

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3303
  ret i8* %4, !dbg !3304
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3305 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3307, !tbaa !682
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.86, i64 0, i64 0), i32 5) #10, !dbg !3308
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i8* %2) #10, !dbg !3309
  tail call void @abort() #14, !dbg !3311
  unreachable, !dbg !3311
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3312 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3315, metadata !589), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3316, metadata !589), !dbg !3322
  %3 = icmp eq i64 %0, 0, !dbg !3323
  %4 = icmp eq i64 %1, 0, !dbg !3324
  %5 = or i1 %3, %4, !dbg !3326
  br i1 %5, label %12, label %6, !dbg !3326

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3318, metadata !589), !dbg !3328
  %8 = udiv i64 %7, %1, !dbg !3329
  %9 = icmp eq i64 %8, %0, !dbg !3331
  br i1 %9, label %12, label %10, !dbg !3332

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3333
  store i32 12, i32* %11, align 4, !dbg !3335, !tbaa !682
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3315, metadata !589), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3316, metadata !589), !dbg !3322
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3336
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3317, metadata !589), !dbg !3337
  br label %16, !dbg !3338

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3339
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3340 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3357, metadata !589), !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3358, metadata !589), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3359, metadata !589), !dbg !3368
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3360, metadata !589), !dbg !3369
  %6 = bitcast i32* %5 to i8*, !dbg !3370
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3370
  %7 = icmp eq i32* %0, null, !dbg !3371
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3357, metadata !589), !dbg !3366
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3373
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3357, metadata !589), !dbg !3366
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3374
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3361, metadata !589), !dbg !3375
  %10 = icmp ugt i64 %9, -3, !dbg !3376
  %11 = icmp ne i64 %2, 0, !dbg !3377
  %12 = and i1 %11, %10, !dbg !3379
  br i1 %12, label %13, label %18, !dbg !3379

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3380
  br i1 %14, label %18, label %15, !dbg !3382

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3384, !tbaa !1134
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3363, metadata !589), !dbg !3385
  %17 = zext i8 %16 to i32, !dbg !3386
  store i32 %17, i32* %8, align 4, !dbg !3387, !tbaa !682
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3388
  ret i64 %19, !dbg !3388
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3389 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3434, metadata !589), !dbg !3439
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3440
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3441, metadata !589), !dbg !3445
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3447
  %4 = load i32, i32* %3, align 8, !dbg !3447, !tbaa !3448
  %5 = and i32 %4, 32, !dbg !3447
  %6 = icmp eq i32 %5, 0, !dbg !3450
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3451
  %8 = icmp ne i32 %7, 0, !dbg !3452
  br i1 %6, label %9, label %19, !dbg !3453

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3455
  %11 = icmp ne i64 %2, 0, !dbg !3455
  %12 = or i1 %11, %10, !dbg !3455
  %13 = sext i1 %8 to i32, !dbg !3455
  br i1 %12, label %22, label %14, !dbg !3455

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3457
  %16 = load i32, i32* %15, align 4, !dbg !3457, !tbaa !682
  %17 = icmp ne i32 %16, 9, !dbg !3459
  %18 = sext i1 %17 to i32, !dbg !3459
  br label %22, !dbg !3459

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3461

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3463
  store i32 0, i32* %21, align 4, !dbg !3465, !tbaa !682
  br label %22, !dbg !3463

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3466
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3467 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3472, metadata !589), !dbg !3492
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3473, metadata !589), !dbg !3493
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3494
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3474, metadata !589), !dbg !3495
  %3 = icmp eq i8* %2, null, !dbg !3496
  br i1 %3, label %15, label %4, !dbg !3497

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3482, metadata !589), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3483, metadata !589), !dbg !3499
  %5 = load i8, i8* %2, align 1, !dbg !3500, !tbaa !1134
  %6 = icmp eq i8 %5, 67, !dbg !3502
  br i1 %6, label %7, label %11, !dbg !3505

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3507
  %9 = load i8, i8* %8, align 1, !dbg !3507, !tbaa !1134
  %10 = icmp eq i8 %9, 0, !dbg !3510
  br i1 %10, label %14, label %11, !dbg !3512

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3488, metadata !589), !dbg !3514
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.96, i64 0, i64 0)) #10, !dbg !3515
  %13 = icmp eq i32 %12, 0, !dbg !3517
  br i1 %13, label %14, label %15, !dbg !3519

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3473, metadata !589), !dbg !3493
  br label %15, !dbg !3521

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3522
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3523 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3535, metadata !589), !dbg !3609
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3602, metadata !589), !dbg !3611
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3612
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3527, metadata !589), !dbg !3613
  %4 = icmp eq i8* %3, null, !dbg !3614
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), i8* %3, !dbg !3616
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3527, metadata !589), !dbg !3613
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3617, !tbaa !597
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3549, metadata !589) #10, !dbg !3618
  %7 = icmp eq i8* %6, null, !dbg !3619
  br i1 %7, label %8, label %127, !dbg !3620

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.100, i64 0, i64 0)) #10, !dbg !3621
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3550, metadata !589) #10, !dbg !3622
  %10 = icmp eq i8* %9, null, !dbg !3623
  br i1 %10, label %14, label %11, !dbg !3625

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3626, !tbaa !1134
  %13 = icmp eq i8 %12, 0, !dbg !3628
  br i1 %13, label %14, label %15, !dbg !3629

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3631

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.101, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3550, metadata !589) #10, !dbg !3622
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3632
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3553, metadata !589) #10, !dbg !3633
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3555, metadata !589) #10, !dbg !3634
  %18 = icmp eq i64 %17, 0, !dbg !3635
  br i1 %18, label %24, label %19, !dbg !3636

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3637
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3637
  %22 = load i8, i8* %21, align 1, !dbg !3637, !tbaa !1134
  %23 = icmp ne i8 %22, 47, !dbg !3639
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3640
  %27 = add i64 %17, 14, !dbg !3641
  %28 = add i64 %27, %26, !dbg !3642
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3643
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3552, metadata !589) #10, !dbg !3644
  %30 = icmp eq i8* %29, null, !dbg !3645
  br i1 %30, label %125, label %31, !dbg !3645

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3646
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3649

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3650, !tbaa !1134
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3652
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.102, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3653
  br label %37, !dbg !3654

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3652
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.102, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3653
  br label %37, !dbg !3654

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3655
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3557, metadata !589) #10, !dbg !3656
  %39 = icmp slt i32 %38, 0, !dbg !3657
  br i1 %39, label %123, label %40, !dbg !3658

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.103, i64 0, i64 0)) #10, !dbg !3659
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3558, metadata !589) #10, !dbg !3660
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3661
  br i1 %42, label %48, label %43, !dbg !3662

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3663

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !3664
  br label %123, !dbg !3666

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3599, metadata !589) #10, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3600, metadata !589) #10, !dbg !3667
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !3668
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !3669
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3670, metadata !589) #10, !dbg !3675
  %53 = load i8*, i8** %46, align 8, !dbg !3677, !tbaa !3678
  %54 = load i8*, i8** %47, align 8, !dbg !3677, !tbaa !3679
  %55 = icmp ult i8* %53, %54, !dbg !3677
  br i1 %55, label %58, label %56, !dbg !3677, !prof !3680

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3681
  br label %62, !dbg !3681

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3683
  store i8* %59, i8** %46, align 8, !dbg !3683, !tbaa !3678
  %60 = load i8, i8* %53, align 1, !dbg !3683, !tbaa !1134
  %61 = zext i8 %60 to i32, !dbg !3683
  br label %62, !dbg !3683

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3685
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3601, metadata !589) #10, !dbg !3687
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3688

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3689

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3670, metadata !589) #10, !dbg !3689
  %66 = load i8*, i8** %46, align 8, !dbg !3693, !tbaa !3678
  %67 = load i8*, i8** %47, align 8, !dbg !3693, !tbaa !3679
  %68 = icmp ult i8* %66, %67, !dbg !3693
  br i1 %68, label %71, label %69, !dbg !3693, !prof !3680

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3694
  br label %75, !dbg !3694

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3695
  store i8* %72, i8** %46, align 8, !dbg !3695, !tbaa !3678
  %73 = load i8, i8* %66, align 1, !dbg !3695, !tbaa !1134
  %74 = zext i8 %73 to i32, !dbg !3695
  br label %75, !dbg !3695

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3696
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3601, metadata !589) #10, !dbg !3687
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3697, !llvm.loop !3699

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !3702
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.104, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !3703
  %80 = icmp slt i32 %79, 2, !dbg !3705
  br i1 %80, label %115, label %81, !dbg !3706

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3606, metadata !589) #10, !dbg !3708
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3709
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3607, metadata !589) #10, !dbg !3710
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3608, metadata !589) #10, !dbg !3711
  %84 = icmp eq i64 %51, 0, !dbg !3712
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3714

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3600, metadata !589) #10, !dbg !3667
  %89 = add i64 %86, 2, !dbg !3715
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !3717
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3599, metadata !589) #10, !dbg !3663
  br label %95, !dbg !3718

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3719
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3600, metadata !589) #10, !dbg !3667
  %93 = add i64 %92, 1, !dbg !3721
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3599, metadata !589) #10, !dbg !3663
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3599, metadata !589) #10, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3600, metadata !589) #10, !dbg !3667
  %98 = icmp eq i8* %97, null, !dbg !3723
  br i1 %98, label %99, label %100, !dbg !3725

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3600, metadata !589) #10, !dbg !3667
  call void @free(i8* %52) #10, !dbg !3726
  br label %116, !dbg !3728

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3729
  %102 = xor i64 %83, -1, !dbg !3730
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3730
  %104 = xor i64 %82, -1, !dbg !3731
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3731
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3732, metadata !589) #10, !dbg !3741
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3740, metadata !589) #10, !dbg !3741
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !3743
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !3744
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3732, metadata !589) #10, !dbg !3745
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3740, metadata !589) #10, !dbg !3745
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !3747
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !3748
  br label %111, !dbg !3749

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3663

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3599, metadata !589) #10, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3600, metadata !589) #10, !dbg !3667
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3749
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3749
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3663

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3663

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3599, metadata !589) #10, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3600, metadata !589) #10, !dbg !3667
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3749
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3749
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3750
  %120 = icmp eq i64 %117, 0, !dbg !3751
  br i1 %120, label %123, label %121, !dbg !3753

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3754
  store i8 0, i8* %122, align 1, !dbg !3756, !tbaa !1134
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3549, metadata !589) #10, !dbg !3618
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3549, metadata !589) #10, !dbg !3618
  call void @free(i8* %29) #10, !dbg !3757
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3549, metadata !589) #10, !dbg !3618
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3758, !tbaa !597
  br label %127, !dbg !3759

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3528, metadata !589), !dbg !3760
  %129 = load i8, i8* %128, align 1, !dbg !3761, !tbaa !1134
  %130 = icmp eq i8 %129, 0, !dbg !3762
  br i1 %130, label %157, label %131, !dbg !3763

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3765

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !3765
  %136 = icmp eq i32 %135, 0, !dbg !3766
  br i1 %136, label %143, label %137, !dbg !3767

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3768
  br i1 %138, label %139, label %147, !dbg !3770

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3771
  %141 = load i8, i8* %140, align 1, !dbg !3771, !tbaa !1134
  %142 = icmp eq i8 %141, 0, !dbg !3773
  br i1 %142, label %143, label %147, !dbg !3774

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3776
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3778
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3779
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3527, metadata !589), !dbg !3613
  br label %157, !dbg !3780

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3781
  %149 = add i64 %148, 1, !dbg !3782
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3783
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3528, metadata !589), !dbg !3760
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3784
  %152 = add i64 %151, 1, !dbg !3785
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3786
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3528, metadata !589), !dbg !3760
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3528, metadata !589), !dbg !3760
  %154 = load i8, i8* %153, align 1, !dbg !3761, !tbaa !1134
  %155 = icmp eq i8 %154, 0, !dbg !3762
  br i1 %155, label %156, label %132, !dbg !3763, !llvm.loop !3787

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3613

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3527, metadata !589), !dbg !3613
  %159 = load i8, i8* %158, align 1, !dbg !3790, !tbaa !1134
  %160 = icmp eq i8 %159, 0, !dbg !3792
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i64 0, i64 0), i8* %158, !dbg !3793
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3527, metadata !589), !dbg !3613
  ret i8* %161, !dbg !3794
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3795 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3840, metadata !589), !dbg !3844
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3841, metadata !589), !dbg !3845
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3843, metadata !589), !dbg !3846
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3847
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3842, metadata !589), !dbg !3848
  %3 = icmp slt i32 %2, 0, !dbg !3849
  br i1 %3, label %4, label %6, !dbg !3851

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3852
  br label %24, !dbg !3853

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3854
  %8 = icmp eq i32 %7, 0, !dbg !3854
  br i1 %8, label %13, label %9, !dbg !3856

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3857
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3859
  %12 = icmp eq i64 %11, -1, !dbg !3861
  br i1 %12, label %16, label %13, !dbg !3862

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3863
  %15 = icmp eq i32 %14, 0, !dbg !3863
  br i1 %15, label %16, label %18, !dbg !3864

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3841, metadata !589), !dbg !3845
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3866
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3843, metadata !589), !dbg !3846
  br label %24, !dbg !3867

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3868
  %20 = load i32, i32* %19, align 4, !dbg !3868, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3841, metadata !589), !dbg !3845
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3841, metadata !589), !dbg !3845
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3866
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3843, metadata !589), !dbg !3846
  %22 = icmp eq i32 %20, 0, !dbg !3869
  br i1 %22, label %24, label %23, !dbg !3867

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3871, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3843, metadata !589), !dbg !3846
  br label %24, !dbg !3873

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3874
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3875 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3920, metadata !589), !dbg !3921
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3922
  br i1 %2, label %6, label %3, !dbg !3924

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3925
  %5 = icmp eq i32 %4, 0, !dbg !3925
  br i1 %5, label %6, label %8, !dbg !3927

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3929
  br label %17, !dbg !3930

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3931, metadata !589) #10, !dbg !3936
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3938
  %10 = load i32, i32* %9, align 8, !dbg !3938, !tbaa !3448
  %11 = and i32 %10, 256, !dbg !3940
  %12 = icmp eq i32 %11, 0, !dbg !3940
  br i1 %12, label %15, label %13, !dbg !3941

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3942
  br label %15, !dbg !3942

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3943
  br label %17, !dbg !3944

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3945
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3946 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3992, metadata !589), !dbg !3998
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3993, metadata !589), !dbg !3999
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3994, metadata !589), !dbg !4000
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4001
  %5 = load i8*, i8** %4, align 8, !dbg !4001, !tbaa !3679
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4002
  %7 = load i8*, i8** %6, align 8, !dbg !4002, !tbaa !3678
  %8 = icmp eq i8* %5, %7, !dbg !4003
  br i1 %8, label %9, label %28, !dbg !4004

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4005
  %11 = load i8*, i8** %10, align 8, !dbg !4005, !tbaa !4007
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4008
  %13 = load i8*, i8** %12, align 8, !dbg !4008, !tbaa !4009
  %14 = icmp eq i8* %11, %13, !dbg !4010
  br i1 %14, label %15, label %28, !dbg !4011

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4012
  %17 = load i8*, i8** %16, align 8, !dbg !4012, !tbaa !4013
  %18 = icmp eq i8* %17, null, !dbg !4014
  br i1 %18, label %19, label %28, !dbg !4015

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4017
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4018
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3995, metadata !589), !dbg !4020
  %22 = icmp eq i64 %21, -1, !dbg !4021
  br i1 %22, label %30, label %23, !dbg !4023

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4024
  %25 = load i32, i32* %24, align 8, !dbg !4025, !tbaa !3448
  %26 = and i32 %25, -17, !dbg !4025
  store i32 %26, i32* %24, align 8, !dbg !4025, !tbaa !3448
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4026
  store i64 %21, i64* %27, align 8, !dbg !4027, !tbaa !4028
  br label %30, !dbg !4029

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4030
  br label %30, !dbg !4031

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4032
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

!llvm.dbg.cu = !{!498, !2, !11, !20, !28, !46, !55, !536, !142, !544, !561, !563, !565, !568, !570, !151, !573, !575, !577}
!llvm.ident = !{!579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579}
!llvm.module.flags = !{!580, !581, !582, !583}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10)
!10 = distinct !DIGlobalVariable(name: "file_name", scope: !11, file: !16, line: 36, type: !6, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !13)
!12 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!13 = !{!9, !14}
!14 = !DIGlobalVariableExpression(var: !15)
!15 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !11, file: !16, line: 46, type: !17, isLocal: true, isDefinition: true)
!16 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!17 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!18 = !DIGlobalVariableExpression(var: !19)
!19 = distinct !DIGlobalVariable(name: "exit_failure", scope: !20, file: !23, line: 24, type: !24, isLocal: false, isDefinition: true)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !22)
!21 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!22 = !{!18}
!23 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIGlobalVariableExpression(var: !27)
!27 = distinct !DIGlobalVariable(name: "long_options", scope: !28, file: !31, line: 33, type: !32, isLocal: true, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !30)
!29 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!26}
!31 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 768, elements: !42)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !35, line: 104, size: 256, elements: !36)
!35 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !{!37, !38, !39, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !35, line: 106, baseType: !6, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !34, file: !35, line: 109, baseType: !25, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !34, file: !35, line: 110, baseType: !40, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !34, file: !35, line: 111, baseType: !25, size: 32, offset: 192)
!42 = !{!43}
!43 = !DISubrange(count: 3)
!44 = !DIGlobalVariableExpression(var: !45)
!45 = distinct !DIGlobalVariable(name: "program_name", scope: !46, file: !52, line: 33, type: !6, isLocal: false, isDefinition: true)
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !48, globals: !51)
!47 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!51 = !{!44}
!52 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!53 = !DIGlobalVariableExpression(var: !54)
!54 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !55, file: !100, line: 77, type: !136, isLocal: false, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !92, globals: !97)
!56 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!57 = !{!58, !72, !77}
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !59, line: 32, size: 32, elements: !60)
!59 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!61 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!62 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!63 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!64 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!65 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!66 = !DIEnumerator(name: "c_quoting_style", value: 5)
!67 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!68 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!69 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!70 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!71 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !59, line: 242, size: 32, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!75 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!76 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 46, size: 32, elements: !79)
!78 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!80 = !DIEnumerator(name: "_ISupper", value: 256)
!81 = !DIEnumerator(name: "_ISlower", value: 512)
!82 = !DIEnumerator(name: "_ISalpha", value: 1024)
!83 = !DIEnumerator(name: "_ISdigit", value: 2048)
!84 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!85 = !DIEnumerator(name: "_ISspace", value: 8192)
!86 = !DIEnumerator(name: "_ISprint", value: 16384)
!87 = !DIEnumerator(name: "_ISgraph", value: 32768)
!88 = !DIEnumerator(name: "_ISblank", value: 1)
!89 = !DIEnumerator(name: "_IScntrl", value: 2)
!90 = !DIEnumerator(name: "_ISpunct", value: 4)
!91 = !DIEnumerator(name: "_ISalnum", value: 8)
!92 = !{!25, !93, !94, !50}
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !{!53, !98, !105, !118, !120, !125, !132, !134}
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !55, file: !100, line: 93, type: !101, isLocal: false, isDefinition: true)
!100 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 320, elements: !103)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!103 = !{!104}
!104 = !DISubrange(count: 10)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !55, file: !100, line: 1043, type: !107, isLocal: false, isDefinition: true)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !100, line: 57, size: 448, elements: !108)
!108 = !{!109, !110, !111, !116, !117}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !107, file: !100, line: 60, baseType: !58, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !100, line: 63, baseType: !25, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !107, file: !100, line: 67, baseType: !112, size: 256, offset: 64)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !114)
!113 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!114 = !{!115}
!115 = !DISubrange(count: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !107, file: !100, line: 70, baseType: !6, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !107, file: !100, line: 73, baseType: !6, size: 64, offset: 384)
!118 = !DIGlobalVariableExpression(var: !119)
!119 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !55, file: !100, line: 108, type: !107, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121)
!121 = distinct !DIGlobalVariable(name: "slot0", scope: !55, file: !100, line: 834, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 256)
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "slotvec", scope: !55, file: !100, line: 837, type: !127, isLocal: true, isDefinition: true)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !100, line: 826, size: 128, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !128, file: !100, line: 828, baseType: !94, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !128, file: !100, line: 829, baseType: !50, size: 64, offset: 64)
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "nslots", scope: !55, file: !100, line: 835, type: !25, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135)
!135 = distinct !DIGlobalVariable(name: "slotvec0", scope: !55, file: !100, line: 836, type: !128, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 704, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!138 = !{!139}
!139 = !DISubrange(count: 11)
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !142, file: !145, line: 26, type: !146, isLocal: false, isDefinition: true)
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !144)
!143 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!144 = !{!140}
!145 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 47)
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !151, file: !496, line: 120, type: !497, isLocal: true, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !153, retainedTypes: !492, globals: !495)
!152 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!153 = !{!154}
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 41, size: 32, elements: !156)
!155 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!157 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!158 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!159 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!160 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!161 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!162 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!163 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!164 = !DIEnumerator(name: "DAY_1", value: 131079)
!165 = !DIEnumerator(name: "DAY_2", value: 131080)
!166 = !DIEnumerator(name: "DAY_3", value: 131081)
!167 = !DIEnumerator(name: "DAY_4", value: 131082)
!168 = !DIEnumerator(name: "DAY_5", value: 131083)
!169 = !DIEnumerator(name: "DAY_6", value: 131084)
!170 = !DIEnumerator(name: "DAY_7", value: 131085)
!171 = !DIEnumerator(name: "ABMON_1", value: 131086)
!172 = !DIEnumerator(name: "ABMON_2", value: 131087)
!173 = !DIEnumerator(name: "ABMON_3", value: 131088)
!174 = !DIEnumerator(name: "ABMON_4", value: 131089)
!175 = !DIEnumerator(name: "ABMON_5", value: 131090)
!176 = !DIEnumerator(name: "ABMON_6", value: 131091)
!177 = !DIEnumerator(name: "ABMON_7", value: 131092)
!178 = !DIEnumerator(name: "ABMON_8", value: 131093)
!179 = !DIEnumerator(name: "ABMON_9", value: 131094)
!180 = !DIEnumerator(name: "ABMON_10", value: 131095)
!181 = !DIEnumerator(name: "ABMON_11", value: 131096)
!182 = !DIEnumerator(name: "ABMON_12", value: 131097)
!183 = !DIEnumerator(name: "MON_1", value: 131098)
!184 = !DIEnumerator(name: "MON_2", value: 131099)
!185 = !DIEnumerator(name: "MON_3", value: 131100)
!186 = !DIEnumerator(name: "MON_4", value: 131101)
!187 = !DIEnumerator(name: "MON_5", value: 131102)
!188 = !DIEnumerator(name: "MON_6", value: 131103)
!189 = !DIEnumerator(name: "MON_7", value: 131104)
!190 = !DIEnumerator(name: "MON_8", value: 131105)
!191 = !DIEnumerator(name: "MON_9", value: 131106)
!192 = !DIEnumerator(name: "MON_10", value: 131107)
!193 = !DIEnumerator(name: "MON_11", value: 131108)
!194 = !DIEnumerator(name: "MON_12", value: 131109)
!195 = !DIEnumerator(name: "AM_STR", value: 131110)
!196 = !DIEnumerator(name: "PM_STR", value: 131111)
!197 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!198 = !DIEnumerator(name: "D_FMT", value: 131113)
!199 = !DIEnumerator(name: "T_FMT", value: 131114)
!200 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!201 = !DIEnumerator(name: "ERA", value: 131116)
!202 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!203 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!204 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!205 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!206 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!207 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!208 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!209 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!210 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!211 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!212 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!213 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!214 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!215 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!216 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!217 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!218 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!219 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!220 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!221 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!222 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!223 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!224 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!225 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!226 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!227 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!228 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!229 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!230 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!231 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!232 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!233 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!234 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!235 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!236 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!237 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!238 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!239 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!240 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!241 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!242 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!243 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!244 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!245 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!246 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!247 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!248 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!249 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!250 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!251 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!252 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!253 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!254 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!255 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!256 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!257 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!258 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!259 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!260 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!261 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!262 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!263 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!264 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!265 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!266 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!267 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!268 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!269 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!270 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!271 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!272 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!273 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!274 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!275 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!276 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!277 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!278 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!279 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!280 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!281 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!282 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!283 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!284 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!285 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!286 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!287 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!288 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!289 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!290 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!291 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!292 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!293 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!294 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!295 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!296 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!297 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!298 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!299 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!300 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!301 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!302 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!303 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!304 = !DIEnumerator(name: "CODESET", value: 14)
!305 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!306 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!307 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!308 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!309 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!310 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!311 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!312 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!313 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!314 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!315 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!316 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!317 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!318 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!319 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!320 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!321 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!322 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!323 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!324 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!325 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!326 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!327 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!328 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!329 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!330 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!331 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!332 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!333 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!334 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!335 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!336 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!337 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!338 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!339 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!340 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!341 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!342 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!343 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!344 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!345 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!346 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!347 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!348 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!349 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!350 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!351 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!352 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!353 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!354 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!355 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!356 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!357 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!358 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!359 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!360 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!361 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!362 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!363 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!364 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!365 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!366 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!367 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!368 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!369 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!370 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!371 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!372 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!373 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!374 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!375 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!376 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!377 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!378 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!379 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!380 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!381 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!382 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!383 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!384 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!385 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!386 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!387 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!388 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!389 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!390 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!391 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!392 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!393 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!394 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!395 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!396 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!397 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!398 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!399 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!400 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!401 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!402 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!403 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!404 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!405 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!406 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!407 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!408 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!409 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!410 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!411 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!412 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!413 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!414 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!415 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!416 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!417 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!418 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!419 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!420 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!421 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!422 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!423 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!424 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!425 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!426 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!427 = !DIEnumerator(name: "THOUSEP", value: 65537)
!428 = !DIEnumerator(name: "__GROUPING", value: 65538)
!429 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!430 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!431 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!432 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!433 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!434 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!435 = !DIEnumerator(name: "__YESSTR", value: 327682)
!436 = !DIEnumerator(name: "__NOSTR", value: 327683)
!437 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!438 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!439 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!440 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!441 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!442 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!443 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!444 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!445 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!446 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!447 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!448 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!449 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!450 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!451 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!452 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!453 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!454 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!455 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!456 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!457 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!458 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!459 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!460 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!461 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!462 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!463 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!464 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!465 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!466 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!467 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!468 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!469 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!470 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!471 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!472 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!473 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!474 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!475 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!476 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!477 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!478 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!479 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!480 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!481 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!482 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!483 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!484 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!485 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!486 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!487 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!488 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!489 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!490 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!491 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!492 = !{!49, !50, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!495 = !{!149}
!496 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!497 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !500, globals: !505)
!499 = !DIFile(filename: "src/whoami.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!500 = !{!6, !49, !96, !94, !501, !503}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!505 = !{!506}
!506 = !DIGlobalVariableExpression(var: !507)
!507 = distinct !DIGlobalVariable(name: "infomap", scope: !508, file: !509, line: 632, type: !533, isLocal: true, isDefinition: true)
!508 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !509, file: !509, line: 630, type: !510, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !512)
!509 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!510 = !DISubroutineType(types: !511)
!511 = !{null, !6}
!512 = !{!513, !514, !515, !522, !524, !525, !526, !529, !530, !532}
!513 = !DILocalVariable(name: "program", arg: 1, scope: !508, file: !509, line: 630, type: !6)
!514 = !DILocalVariable(name: "node", scope: !508, file: !509, line: 642, type: !6)
!515 = !DILocalVariable(name: "map_prog", scope: !508, file: !509, line: 643, type: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !508, file: !509, line: 632, size: 128, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !518, file: !509, line: 632, baseType: !6, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !518, file: !509, line: 632, baseType: !6, size: 64, offset: 64)
!522 = !DILocalVariable(name: "__s1_len", scope: !523, file: !509, line: 645, type: !94)
!523 = distinct !DILexicalBlock(scope: !508, file: !509, line: 645, column: 33)
!524 = !DILocalVariable(name: "__s2_len", scope: !523, file: !509, line: 645, type: !94)
!525 = !DILocalVariable(name: "lc_messages", scope: !508, file: !509, line: 655, type: !6)
!526 = !DILocalVariable(name: "__s1_len", scope: !527, file: !509, line: 656, type: !94)
!527 = distinct !DILexicalBlock(scope: !528, file: !509, line: 656, column: 22)
!528 = distinct !DILexicalBlock(scope: !508, file: !509, line: 656, column: 7)
!529 = !DILocalVariable(name: "__s2_len", scope: !527, file: !509, line: 656, type: !94)
!530 = !DILocalVariable(name: "__s2", scope: !531, file: !509, line: 656, type: !503)
!531 = distinct !DILexicalBlock(scope: !527, file: !509, line: 656, column: 22)
!532 = !DILocalVariable(name: "__result", scope: !531, file: !509, line: 656, type: !25)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 896, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 7)
!536 = distinct !DICompileUnit(language: DW_LANG_C99, file: !537, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !538, retainedTypes: !543)
!537 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!538 = !{!539}
!539 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !540, line: 41, size: 32, elements: !541)
!540 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!541 = !{!542}
!542 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!543 = !{!49}
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !546, retainedTypes: !560)
!545 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!546 = !{!547}
!547 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !549, file: !548, line: 192, size: 32, elements: !558)
!548 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = distinct !DISubprogram(name: "x2nrealloc", scope: !548, file: !548, line: 180, type: !550, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !553)
!550 = !DISubroutineType(types: !551)
!551 = !{!49, !49, !552, !94}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!553 = !{!554, !555, !556, !557}
!554 = !DILocalVariable(name: "p", arg: 1, scope: !549, file: !548, line: 180, type: !49)
!555 = !DILocalVariable(name: "pn", arg: 2, scope: !549, file: !548, line: 180, type: !552)
!556 = !DILocalVariable(name: "s", arg: 3, scope: !549, file: !548, line: 180, type: !94)
!557 = !DILocalVariable(name: "n", scope: !549, file: !548, line: 182, type: !94)
!558 = !{!559}
!559 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!560 = !{!94, !50, !49}
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!562 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !543)
!564 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !567)
!566 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = !{!94}
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!569 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !572)
!571 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = !{!94, !501, !503, !6}
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!574 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !543)
!576 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !543)
!578 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!580 = !{i32 2, !"Dwarf Version", i32 4}
!581 = !{i32 2, !"Debug Info Version", i32 3}
!582 = !{i32 1, !"PIC Level", i32 2}
!583 = !{i32 1, !"PIE Level", i32 2}
!584 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 39, type: !585, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !25}
!587 = !{!588}
!588 = !DILocalVariable(name: "status", arg: 1, scope: !584, file: !499, line: 39, type: !25)
!589 = !DIExpression()
!590 = !DILocation(line: 39, column: 12, scope: !584)
!591 = !DILocation(line: 41, column: 14, scope: !592)
!592 = distinct !DILexicalBlock(scope: !584, file: !499, line: 41, column: 7)
!593 = !DILocation(line: 41, column: 7, scope: !584)
!594 = !DILocation(line: 42, column: 5, scope: !595)
!595 = !DILexicalBlockFile(scope: !596, file: !499, discriminator: 1)
!596 = distinct !DILexicalBlock(scope: !592, file: !499, line: 42, column: 5)
!597 = !{!598, !598, i64 0}
!598 = !{!"any pointer", !599, i64 0}
!599 = !{!"omnipotent char", !600, i64 0}
!600 = !{!"Simple C/C++ TBAA"}
!601 = !DILocation(line: 42, column: 5, scope: !602)
!602 = !DILexicalBlockFile(scope: !596, file: !499, discriminator: 3)
!603 = !DILocation(line: 42, column: 5, scope: !604)
!604 = !DILexicalBlockFile(scope: !596, file: !499, discriminator: 2)
!605 = !DILocation(line: 45, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !592, file: !499, line: 44, column: 5)
!607 = !DILocation(line: 45, column: 7, scope: !608)
!608 = !DILexicalBlockFile(scope: !606, file: !499, discriminator: 1)
!609 = !DILocation(line: 46, column: 7, scope: !606)
!610 = !DILocation(line: 46, column: 7, scope: !608)
!611 = !DILocation(line: 51, column: 7, scope: !606)
!612 = !DILocation(line: 51, column: 7, scope: !608)
!613 = !DILocation(line: 52, column: 7, scope: !606)
!614 = !DILocation(line: 52, column: 7, scope: !608)
!615 = !DILocation(line: 642, column: 15, scope: !508, inlinedAt: !616)
!616 = distinct !DILocation(line: 53, column: 7, scope: !606)
!617 = !DILocation(line: 651, column: 3, scope: !508, inlinedAt: !616)
!618 = !DILocation(line: 651, column: 3, scope: !619, inlinedAt: !616)
!619 = !DILexicalBlockFile(scope: !508, file: !509, discriminator: 1)
!620 = !DILocation(line: 655, column: 29, scope: !508, inlinedAt: !616)
!621 = !DILocation(line: 655, column: 15, scope: !508, inlinedAt: !616)
!622 = !DILocation(line: 656, column: 7, scope: !528, inlinedAt: !616)
!623 = !DILocation(line: 656, column: 19, scope: !528, inlinedAt: !616)
!624 = !DILocation(line: 656, column: 22, scope: !625, inlinedAt: !616)
!625 = !DILexicalBlockFile(scope: !528, file: !509, discriminator: 16)
!626 = !DILocation(line: 656, column: 7, scope: !627, inlinedAt: !616)
!627 = !DILexicalBlockFile(scope: !508, file: !509, discriminator: 16)
!628 = !DILocation(line: 662, column: 7, scope: !629, inlinedAt: !616)
!629 = distinct !DILexicalBlock(scope: !528, file: !509, line: 657, column: 5)
!630 = !DILocation(line: 662, column: 7, scope: !631, inlinedAt: !616)
!631 = !DILexicalBlockFile(scope: !629, file: !509, discriminator: 1)
!632 = !DILocation(line: 664, column: 5, scope: !629, inlinedAt: !616)
!633 = !DILocation(line: 665, column: 3, scope: !508, inlinedAt: !616)
!634 = !DILocation(line: 665, column: 3, scope: !619, inlinedAt: !616)
!635 = !DILocation(line: 667, column: 3, scope: !508, inlinedAt: !616)
!636 = !DILocation(line: 667, column: 3, scope: !619, inlinedAt: !616)
!637 = !DILocation(line: 55, column: 3, scope: !584)
!638 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 59, type: !639, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !642)
!639 = !DISubroutineType(types: !640)
!640 = !{!25, !25, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!642 = !{!643, !644, !645, !660, !663}
!643 = !DILocalVariable(name: "argc", arg: 1, scope: !638, file: !499, line: 59, type: !25)
!644 = !DILocalVariable(name: "argv", arg: 2, scope: !638, file: !499, line: 59, type: !641)
!645 = !DILocalVariable(name: "pw", scope: !638, file: !499, line: 61, type: !646)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !648, line: 49, size: 384, elements: !649)
!648 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!649 = !{!650, !651, !652, !655, !657, !658, !659}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !647, file: !648, line: 51, baseType: !50, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !647, file: !648, line: 52, baseType: !50, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !647, file: !648, line: 53, baseType: !653, size: 32, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !654, line: 134, baseType: !113)
!654 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !647, file: !648, line: 54, baseType: !656, size: 32, offset: 160)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !654, line: 135, baseType: !113)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !647, file: !648, line: 55, baseType: !50, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !647, file: !648, line: 56, baseType: !50, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !647, file: !648, line: 57, baseType: !50, size: 64, offset: 320)
!660 = !DILocalVariable(name: "uid", scope: !638, file: !499, line: 62, type: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !662, line: 80, baseType: !653)
!662 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!663 = !DILocalVariable(name: "NO_UID", scope: !638, file: !499, line: 63, type: !661)
!664 = !DILocation(line: 59, column: 11, scope: !638)
!665 = !DILocation(line: 59, column: 24, scope: !638)
!666 = !DILocation(line: 63, column: 9, scope: !638)
!667 = !DILocation(line: 66, column: 21, scope: !638)
!668 = !DILocation(line: 66, column: 3, scope: !638)
!669 = !DILocation(line: 67, column: 3, scope: !638)
!670 = !DILocation(line: 68, column: 3, scope: !638)
!671 = !DILocation(line: 69, column: 3, scope: !638)
!672 = !DILocation(line: 71, column: 3, scope: !638)
!673 = !DILocation(line: 73, column: 63, scope: !638)
!674 = !DILocation(line: 73, column: 3, scope: !638)
!675 = !DILocation(line: 75, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !638, file: !499, line: 75, column: 7)
!677 = !DILocation(line: 75, column: 48, scope: !676)
!678 = !DILocation(line: 75, column: 7, scope: !638)
!679 = !DILocation(line: 76, column: 5, scope: !676)
!680 = !DILocation(line: 78, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !638, file: !499, line: 78, column: 7)
!682 = !{!683, !683, i64 0}
!683 = !{!"int", !599, i64 0}
!684 = !DILocation(line: 78, column: 14, scope: !681)
!685 = !DILocation(line: 78, column: 7, scope: !638)
!686 = !DILocation(line: 80, column: 20, scope: !687)
!687 = distinct !DILexicalBlock(scope: !681, file: !499, line: 79, column: 5)
!688 = !DILocation(line: 80, column: 55, scope: !687)
!689 = !DILocation(line: 80, column: 50, scope: !687)
!690 = !DILocation(line: 80, column: 43, scope: !691)
!691 = !DILexicalBlockFile(scope: !687, file: !499, discriminator: 1)
!692 = !DILocation(line: 80, column: 7, scope: !693)
!693 = !DILexicalBlockFile(scope: !687, file: !499, discriminator: 2)
!694 = !DILocation(line: 81, column: 7, scope: !687)
!695 = !DILocation(line: 84, column: 3, scope: !638)
!696 = !DILocation(line: 84, column: 9, scope: !638)
!697 = !DILocation(line: 85, column: 9, scope: !638)
!698 = !DILocation(line: 62, column: 9, scope: !638)
!699 = !DILocation(line: 86, column: 13, scope: !638)
!700 = !DILocation(line: 86, column: 23, scope: !638)
!701 = !DILocation(line: 86, column: 26, scope: !702)
!702 = !DILexicalBlockFile(scope: !638, file: !499, discriminator: 1)
!703 = !DILocation(line: 86, column: 9, scope: !702)
!704 = !DILocation(line: 86, column: 41, scope: !705)
!705 = !DILexicalBlockFile(scope: !638, file: !499, discriminator: 3)
!706 = !DILocation(line: 61, column: 18, scope: !638)
!707 = !DILocation(line: 87, column: 8, scope: !708)
!708 = distinct !DILexicalBlock(scope: !638, file: !499, line: 87, column: 7)
!709 = !DILocation(line: 87, column: 7, scope: !638)
!710 = !DILocation(line: 88, column: 5, scope: !708)
!711 = !DILocation(line: 88, column: 5, scope: !712)
!712 = !DILexicalBlockFile(scope: !708, file: !499, discriminator: 1)
!713 = !DILocation(line: 88, column: 5, scope: !714)
!714 = !DILexicalBlockFile(scope: !708, file: !499, discriminator: 2)
!715 = !DILocation(line: 90, column: 13, scope: !638)
!716 = !{!717, !598, i64 0}
!717 = !{!"passwd", !598, i64 0, !598, i64 8, !683, i64 16, !683, i64 20, !598, i64 24, !598, i64 32, !598, i64 40}
!718 = !DILocation(line: 90, column: 3, scope: !638)
!719 = !DILocation(line: 91, column: 3, scope: !638)
!720 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !510, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !721)
!721 = !{!722}
!722 = !DILocalVariable(name: "file", arg: 1, scope: !720, file: !16, line: 41, type: !6)
!723 = !DILocation(line: 41, column: 41, scope: !720)
!724 = !DILocation(line: 43, column: 13, scope: !720)
!725 = !DILocation(line: 44, column: 1, scope: !720)
!726 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !727, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !17}
!729 = !{!730}
!730 = !DILocalVariable(name: "ignore", arg: 1, scope: !726, file: !16, line: 78, type: !17)
!731 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!732 = !DILocation(line: 78, column: 37, scope: !726)
!733 = !DILocation(line: 80, column: 16, scope: !726)
!734 = !{!735, !735, i64 0}
!735 = !{!"_Bool", !599, i64 0}
!736 = !DILocation(line: 81, column: 1, scope: !726)
!737 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !738, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{null}
!740 = !{!741}
!741 = !DILocalVariable(name: "write_error", scope: !742, file: !16, line: 112, type: !6)
!742 = distinct !DILexicalBlock(scope: !743, file: !16, line: 111, column: 5)
!743 = distinct !DILexicalBlock(scope: !737, file: !16, line: 109, column: 7)
!744 = !DILocation(line: 109, column: 21, scope: !743)
!745 = !DILocation(line: 109, column: 7, scope: !743)
!746 = !DILocation(line: 109, column: 29, scope: !743)
!747 = !DILocation(line: 110, column: 7, scope: !743)
!748 = !DILocation(line: 110, column: 12, scope: !749)
!749 = !DILexicalBlockFile(scope: !743, file: !16, discriminator: 1)
!750 = !{i8 0, i8 2}
!751 = !DILocation(line: 114, column: 19, scope: !752)
!752 = distinct !DILexicalBlock(scope: !742, file: !16, line: 113, column: 11)
!753 = !DILocation(line: 110, column: 25, scope: !749)
!754 = !DILocation(line: 110, column: 28, scope: !755)
!755 = !DILexicalBlockFile(scope: !743, file: !16, discriminator: 2)
!756 = !DILocation(line: 110, column: 34, scope: !755)
!757 = !DILocation(line: 109, column: 7, scope: !758)
!758 = !DILexicalBlockFile(scope: !737, file: !16, discriminator: 1)
!759 = !DILocation(line: 112, column: 33, scope: !742)
!760 = !DILocation(line: 112, column: 19, scope: !742)
!761 = !DILocation(line: 113, column: 11, scope: !752)
!762 = !DILocation(line: 113, column: 11, scope: !742)
!763 = !DILocation(line: 114, column: 36, scope: !764)
!764 = !DILexicalBlockFile(scope: !752, file: !16, discriminator: 1)
!765 = !DILocation(line: 114, column: 9, scope: !766)
!766 = !DILexicalBlockFile(scope: !752, file: !16, discriminator: 2)
!767 = !DILocation(line: 114, column: 9, scope: !752)
!768 = !DILocation(line: 117, column: 9, scope: !764)
!769 = !DILocation(line: 119, column: 14, scope: !742)
!770 = !DILocation(line: 119, column: 7, scope: !742)
!771 = !DILocation(line: 122, column: 22, scope: !772)
!772 = distinct !DILexicalBlock(scope: !737, file: !16, line: 122, column: 8)
!773 = !DILocation(line: 122, column: 8, scope: !772)
!774 = !DILocation(line: 122, column: 30, scope: !772)
!775 = !DILocation(line: 122, column: 8, scope: !737)
!776 = !DILocation(line: 123, column: 13, scope: !772)
!777 = !DILocation(line: 123, column: 6, scope: !772)
!778 = !DILocation(line: 124, column: 1, scope: !737)
!779 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !780, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !783)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !25, !641, !6, !6, !6, !782, null}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792}
!784 = !DILocalVariable(name: "argc", arg: 1, scope: !779, file: !31, line: 44, type: !25)
!785 = !DILocalVariable(name: "argv", arg: 2, scope: !779, file: !31, line: 45, type: !641)
!786 = !DILocalVariable(name: "command_name", arg: 3, scope: !779, file: !31, line: 46, type: !6)
!787 = !DILocalVariable(name: "package", arg: 4, scope: !779, file: !31, line: 47, type: !6)
!788 = !DILocalVariable(name: "version", arg: 5, scope: !779, file: !31, line: 48, type: !6)
!789 = !DILocalVariable(name: "usage_func", arg: 6, scope: !779, file: !31, line: 49, type: !782)
!790 = !DILocalVariable(name: "c", scope: !779, file: !31, line: 52, type: !25)
!791 = !DILocalVariable(name: "saved_opterr", scope: !779, file: !31, line: 53, type: !25)
!792 = !DILocalVariable(name: "authors", scope: !793, file: !31, line: 71, type: !797)
!793 = distinct !DILexicalBlock(scope: !794, file: !31, line: 70, column: 11)
!794 = distinct !DILexicalBlock(scope: !795, file: !31, line: 64, column: 9)
!795 = distinct !DILexicalBlock(scope: !796, file: !31, line: 62, column: 5)
!796 = distinct !DILexicalBlock(scope: !779, file: !31, line: 60, column: 7)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !798, line: 80, baseType: !799)
!798 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !800, line: 50, baseType: !801)
!800 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !802)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 192, elements: !809)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !804)
!804 = !{!805, !806, !807, !808}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !803, file: !29, line: 71, baseType: !113, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !803, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !803, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !803, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!809 = !{!810}
!810 = !DISubrange(count: 1)
!811 = !DILocation(line: 44, column: 25, scope: !779)
!812 = !DILocation(line: 45, column: 28, scope: !779)
!813 = !DILocation(line: 46, column: 33, scope: !779)
!814 = !DILocation(line: 47, column: 33, scope: !779)
!815 = !DILocation(line: 48, column: 33, scope: !779)
!816 = !DILocation(line: 49, column: 28, scope: !779)
!817 = !DILocation(line: 55, column: 18, scope: !779)
!818 = !DILocation(line: 53, column: 7, scope: !779)
!819 = !DILocation(line: 58, column: 10, scope: !779)
!820 = !DILocation(line: 60, column: 12, scope: !796)
!821 = !DILocation(line: 61, column: 7, scope: !796)
!822 = !DILocation(line: 61, column: 15, scope: !823)
!823 = !DILexicalBlockFile(scope: !796, file: !31, discriminator: 1)
!824 = !DILocation(line: 52, column: 7, scope: !779)
!825 = !DILocation(line: 60, column: 7, scope: !826)
!826 = !DILexicalBlockFile(scope: !779, file: !31, discriminator: 1)
!827 = !DILocation(line: 66, column: 11, scope: !794)
!828 = !DILocation(line: 67, column: 11, scope: !794)
!829 = !DILocation(line: 71, column: 13, scope: !793)
!830 = !DILocation(line: 71, column: 21, scope: !793)
!831 = !DILocation(line: 72, column: 13, scope: !793)
!832 = !DILocation(line: 73, column: 29, scope: !793)
!833 = !DILocation(line: 73, column: 13, scope: !793)
!834 = !DILocation(line: 74, column: 13, scope: !793)
!835 = !DILocation(line: 84, column: 10, scope: !779)
!836 = !DILocation(line: 88, column: 10, scope: !779)
!837 = !DILocation(line: 89, column: 1, scope: !779)
!838 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !510, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !839)
!839 = !{!840, !841, !842}
!840 = !DILocalVariable(name: "argv0", arg: 1, scope: !838, file: !52, line: 39, type: !6)
!841 = !DILocalVariable(name: "slash", scope: !838, file: !52, line: 46, type: !6)
!842 = !DILocalVariable(name: "base", scope: !838, file: !52, line: 47, type: !6)
!843 = !DILocation(line: 39, column: 31, scope: !838)
!844 = !DILocation(line: 51, column: 13, scope: !845)
!845 = distinct !DILexicalBlock(scope: !838, file: !52, line: 51, column: 7)
!846 = !DILocation(line: 51, column: 7, scope: !838)
!847 = !DILocation(line: 55, column: 14, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !52, line: 52, column: 5)
!849 = !DILocation(line: 54, column: 7, scope: !848)
!850 = !DILocation(line: 56, column: 7, scope: !848)
!851 = !DILocation(line: 59, column: 11, scope: !838)
!852 = !DILocation(line: 46, column: 15, scope: !838)
!853 = !DILocation(line: 60, column: 17, scope: !838)
!854 = !DILocation(line: 60, column: 33, scope: !855)
!855 = !DILexicalBlockFile(scope: !838, file: !52, discriminator: 1)
!856 = !DILocation(line: 60, column: 11, scope: !838)
!857 = !DILocation(line: 47, column: 15, scope: !838)
!858 = !DILocation(line: 61, column: 12, scope: !859)
!859 = distinct !DILexicalBlock(scope: !838, file: !52, line: 61, column: 7)
!860 = !DILocation(line: 61, column: 20, scope: !859)
!861 = !DILocation(line: 61, column: 25, scope: !859)
!862 = !DILocation(line: 61, column: 28, scope: !863)
!863 = !DILexicalBlockFile(scope: !859, file: !52, discriminator: 1)
!864 = !DILocation(line: 61, column: 61, scope: !863)
!865 = !DILocation(line: 61, column: 7, scope: !855)
!866 = !DILocation(line: 64, column: 11, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !52, line: 64, column: 11)
!868 = distinct !DILexicalBlock(scope: !859, file: !52, line: 62, column: 5)
!869 = !DILocation(line: 64, column: 36, scope: !867)
!870 = !DILocation(line: 64, column: 11, scope: !868)
!871 = !DILocation(line: 66, column: 24, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !52, line: 65, column: 9)
!873 = !DILocation(line: 70, column: 41, scope: !872)
!874 = !DILocation(line: 72, column: 9, scope: !872)
!875 = !DILocation(line: 84, column: 16, scope: !838)
!876 = !DILocation(line: 90, column: 27, scope: !838)
!877 = !DILocation(line: 92, column: 1, scope: !838)
!878 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !879, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !882)
!879 = !DISubroutineType(types: !880)
!880 = !{!881, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!882 = !{!883, !884, !885}
!883 = !DILocalVariable(name: "o", arg: 1, scope: !878, file: !100, line: 114, type: !881)
!884 = !DILocalVariable(name: "e", scope: !878, file: !100, line: 116, type: !25)
!885 = !DILocalVariable(name: "p", scope: !878, file: !100, line: 117, type: !881)
!886 = !DILocation(line: 114, column: 48, scope: !878)
!887 = !DILocation(line: 116, column: 11, scope: !878)
!888 = !DILocation(line: 116, column: 7, scope: !878)
!889 = !DILocation(line: 117, column: 40, scope: !878)
!890 = !DILocation(line: 117, column: 40, scope: !891)
!891 = !DILexicalBlockFile(scope: !878, file: !100, discriminator: 3)
!892 = !DILocation(line: 117, column: 31, scope: !891)
!893 = !DILocation(line: 117, column: 27, scope: !878)
!894 = !DILocation(line: 119, column: 9, scope: !878)
!895 = !DILocation(line: 120, column: 3, scope: !878)
!896 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !897, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !901)
!897 = !DISubroutineType(types: !898)
!898 = !{!58, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!901 = !{!902}
!902 = !DILocalVariable(name: "o", arg: 1, scope: !896, file: !100, line: 125, type: !899)
!903 = !DILocation(line: 125, column: 50, scope: !896)
!904 = !DILocation(line: 127, column: 11, scope: !896)
!905 = !DILocation(line: 127, column: 46, scope: !906)
!906 = !DILexicalBlockFile(scope: !896, file: !100, discriminator: 3)
!907 = !{!908, !599, i64 0}
!908 = !{!"quoting_options", !599, i64 0, !683, i64 4, !599, i64 8, !598, i64 40, !598, i64 48}
!909 = !DILocation(line: 127, column: 3, scope: !906)
!910 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !911, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !881, !58}
!913 = !{!914, !915}
!914 = !DILocalVariable(name: "o", arg: 1, scope: !910, file: !100, line: 133, type: !881)
!915 = !DILocalVariable(name: "s", arg: 2, scope: !910, file: !100, line: 133, type: !58)
!916 = !DILocation(line: 133, column: 44, scope: !910)
!917 = !DILocation(line: 133, column: 66, scope: !910)
!918 = !DILocation(line: 135, column: 4, scope: !910)
!919 = !DILocation(line: 135, column: 39, scope: !920)
!920 = !DILexicalBlockFile(scope: !910, file: !100, discriminator: 3)
!921 = !DILocation(line: 135, column: 45, scope: !920)
!922 = !DILocation(line: 136, column: 1, scope: !910)
!923 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !924, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !926)
!924 = !DISubroutineType(types: !925)
!925 = !{!25, !881, !8, !25}
!926 = !{!927, !928, !929, !930, !931, !933, !934}
!927 = !DILocalVariable(name: "o", arg: 1, scope: !923, file: !100, line: 144, type: !881)
!928 = !DILocalVariable(name: "c", arg: 2, scope: !923, file: !100, line: 144, type: !8)
!929 = !DILocalVariable(name: "i", arg: 3, scope: !923, file: !100, line: 144, type: !25)
!930 = !DILocalVariable(name: "uc", scope: !923, file: !100, line: 146, type: !494)
!931 = !DILocalVariable(name: "p", scope: !923, file: !100, line: 147, type: !932)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!933 = !DILocalVariable(name: "shift", scope: !923, file: !100, line: 149, type: !25)
!934 = !DILocalVariable(name: "r", scope: !923, file: !100, line: 150, type: !25)
!935 = !DILocation(line: 144, column: 43, scope: !923)
!936 = !DILocation(line: 144, column: 51, scope: !923)
!937 = !DILocation(line: 144, column: 58, scope: !923)
!938 = !DILocation(line: 146, column: 17, scope: !923)
!939 = !DILocation(line: 148, column: 6, scope: !923)
!940 = !DILocation(line: 148, column: 62, scope: !941)
!941 = !DILexicalBlockFile(scope: !923, file: !100, discriminator: 3)
!942 = !DILocation(line: 148, column: 57, scope: !941)
!943 = !DILocation(line: 147, column: 17, scope: !923)
!944 = !DILocation(line: 149, column: 18, scope: !923)
!945 = !DILocation(line: 149, column: 15, scope: !923)
!946 = !DILocation(line: 149, column: 7, scope: !923)
!947 = !DILocation(line: 150, column: 12, scope: !923)
!948 = !DILocation(line: 150, column: 15, scope: !923)
!949 = !DILocation(line: 150, column: 25, scope: !923)
!950 = !DILocation(line: 150, column: 7, scope: !923)
!951 = !DILocation(line: 151, column: 13, scope: !923)
!952 = !DILocation(line: 151, column: 18, scope: !923)
!953 = !DILocation(line: 151, column: 23, scope: !923)
!954 = !DILocation(line: 151, column: 6, scope: !923)
!955 = !DILocation(line: 152, column: 3, scope: !923)
!956 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !957, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !959)
!957 = !DISubroutineType(types: !958)
!958 = !{!25, !881, !25}
!959 = !{!960, !961, !962}
!960 = !DILocalVariable(name: "o", arg: 1, scope: !956, file: !100, line: 160, type: !881)
!961 = !DILocalVariable(name: "i", arg: 2, scope: !956, file: !100, line: 160, type: !25)
!962 = !DILocalVariable(name: "r", scope: !956, file: !100, line: 162, type: !25)
!963 = !DILocation(line: 160, column: 44, scope: !956)
!964 = !DILocation(line: 160, column: 51, scope: !956)
!965 = !DILocation(line: 163, column: 8, scope: !966)
!966 = distinct !DILexicalBlock(scope: !956, file: !100, line: 163, column: 7)
!967 = !DILocation(line: 163, column: 7, scope: !956)
!968 = !DILocation(line: 165, column: 10, scope: !956)
!969 = !{!908, !683, i64 4}
!970 = !DILocation(line: 162, column: 7, scope: !956)
!971 = !DILocation(line: 166, column: 12, scope: !956)
!972 = !DILocation(line: 167, column: 3, scope: !956)
!973 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !974, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !881, !6, !6}
!976 = !{!977, !978, !979}
!977 = !DILocalVariable(name: "o", arg: 1, scope: !973, file: !100, line: 171, type: !881)
!978 = !DILocalVariable(name: "left_quote", arg: 2, scope: !973, file: !100, line: 172, type: !6)
!979 = !DILocalVariable(name: "right_quote", arg: 3, scope: !973, file: !100, line: 172, type: !6)
!980 = !DILocation(line: 171, column: 45, scope: !973)
!981 = !DILocation(line: 172, column: 33, scope: !973)
!982 = !DILocation(line: 172, column: 57, scope: !973)
!983 = !DILocation(line: 174, column: 8, scope: !984)
!984 = distinct !DILexicalBlock(scope: !973, file: !100, line: 174, column: 7)
!985 = !DILocation(line: 174, column: 7, scope: !973)
!986 = !DILocation(line: 176, column: 6, scope: !973)
!987 = !DILocation(line: 176, column: 12, scope: !973)
!988 = !DILocation(line: 177, column: 8, scope: !989)
!989 = distinct !DILexicalBlock(scope: !973, file: !100, line: 177, column: 7)
!990 = !DILocation(line: 177, column: 23, scope: !991)
!991 = !DILexicalBlockFile(scope: !989, file: !100, discriminator: 1)
!992 = !DILocation(line: 177, column: 19, scope: !989)
!993 = !DILocation(line: 178, column: 5, scope: !989)
!994 = !DILocation(line: 179, column: 6, scope: !973)
!995 = !DILocation(line: 179, column: 17, scope: !973)
!996 = !{!908, !598, i64 40}
!997 = !DILocation(line: 180, column: 6, scope: !973)
!998 = !DILocation(line: 180, column: 18, scope: !973)
!999 = !{!908, !598, i64 48}
!1000 = !DILocation(line: 181, column: 1, scope: !973)
!1001 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !1002, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!94, !50, !94, !6, !94, !899}
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012}
!1005 = !DILocalVariable(name: "buffer", arg: 1, scope: !1001, file: !100, line: 776, type: !50)
!1006 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1001, file: !100, line: 776, type: !94)
!1007 = !DILocalVariable(name: "arg", arg: 3, scope: !1001, file: !100, line: 777, type: !6)
!1008 = !DILocalVariable(name: "argsize", arg: 4, scope: !1001, file: !100, line: 777, type: !94)
!1009 = !DILocalVariable(name: "o", arg: 5, scope: !1001, file: !100, line: 778, type: !899)
!1010 = !DILocalVariable(name: "p", scope: !1001, file: !100, line: 780, type: !899)
!1011 = !DILocalVariable(name: "e", scope: !1001, file: !100, line: 781, type: !25)
!1012 = !DILocalVariable(name: "r", scope: !1001, file: !100, line: 782, type: !94)
!1013 = !DILocation(line: 776, column: 24, scope: !1001)
!1014 = !DILocation(line: 776, column: 39, scope: !1001)
!1015 = !DILocation(line: 777, column: 30, scope: !1001)
!1016 = !DILocation(line: 777, column: 42, scope: !1001)
!1017 = !DILocation(line: 778, column: 48, scope: !1001)
!1018 = !DILocation(line: 780, column: 37, scope: !1001)
!1019 = !DILocation(line: 780, column: 33, scope: !1001)
!1020 = !DILocation(line: 781, column: 11, scope: !1001)
!1021 = !DILocation(line: 781, column: 7, scope: !1001)
!1022 = !DILocation(line: 783, column: 43, scope: !1001)
!1023 = !DILocation(line: 783, column: 53, scope: !1001)
!1024 = !DILocation(line: 783, column: 60, scope: !1001)
!1025 = !DILocation(line: 784, column: 43, scope: !1001)
!1026 = !DILocation(line: 784, column: 58, scope: !1001)
!1027 = !DILocation(line: 782, column: 14, scope: !1001)
!1028 = !DILocation(line: 782, column: 10, scope: !1001)
!1029 = !DILocation(line: 785, column: 9, scope: !1001)
!1030 = !DILocation(line: 786, column: 3, scope: !1001)
!1031 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !1032, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1036)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!94, !50, !94, !6, !94, !58, !25, !1034, !6, !6}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1061, !1062, !1063, !1064, !1065, !1068, !1069, !1086, !1089, !1090, !1097}
!1037 = !DILocalVariable(name: "buffer", arg: 1, scope: !1031, file: !100, line: 248, type: !50)
!1038 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1031, file: !100, line: 248, type: !94)
!1039 = !DILocalVariable(name: "arg", arg: 3, scope: !1031, file: !100, line: 249, type: !6)
!1040 = !DILocalVariable(name: "argsize", arg: 4, scope: !1031, file: !100, line: 249, type: !94)
!1041 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1031, file: !100, line: 250, type: !58)
!1042 = !DILocalVariable(name: "flags", arg: 6, scope: !1031, file: !100, line: 250, type: !25)
!1043 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1031, file: !100, line: 251, type: !1034)
!1044 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1031, file: !100, line: 252, type: !6)
!1045 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1031, file: !100, line: 253, type: !6)
!1046 = !DILocalVariable(name: "i", scope: !1031, file: !100, line: 255, type: !94)
!1047 = !DILocalVariable(name: "len", scope: !1031, file: !100, line: 256, type: !94)
!1048 = !DILocalVariable(name: "orig_buffersize", scope: !1031, file: !100, line: 257, type: !94)
!1049 = !DILocalVariable(name: "quote_string", scope: !1031, file: !100, line: 258, type: !6)
!1050 = !DILocalVariable(name: "quote_string_len", scope: !1031, file: !100, line: 259, type: !94)
!1051 = !DILocalVariable(name: "backslash_escapes", scope: !1031, file: !100, line: 260, type: !17)
!1052 = !DILocalVariable(name: "unibyte_locale", scope: !1031, file: !100, line: 261, type: !17)
!1053 = !DILocalVariable(name: "elide_outer_quotes", scope: !1031, file: !100, line: 262, type: !17)
!1054 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1031, file: !100, line: 263, type: !17)
!1055 = !DILocalVariable(name: "encountered_single_quote", scope: !1031, file: !100, line: 264, type: !17)
!1056 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1031, file: !100, line: 265, type: !17)
!1057 = !DILocalVariable(name: "c", scope: !1058, file: !100, line: 394, type: !494)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !100, line: 393, column: 5)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 392, column: 3)
!1060 = distinct !DILexicalBlock(scope: !1031, file: !100, line: 392, column: 3)
!1061 = !DILocalVariable(name: "esc", scope: !1058, file: !100, line: 395, type: !494)
!1062 = !DILocalVariable(name: "is_right_quote", scope: !1058, file: !100, line: 396, type: !17)
!1063 = !DILocalVariable(name: "escaping", scope: !1058, file: !100, line: 397, type: !17)
!1064 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1058, file: !100, line: 398, type: !17)
!1065 = !DILocalVariable(name: "m", scope: !1066, file: !100, line: 602, type: !94)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !100, line: 600, column: 11)
!1067 = distinct !DILexicalBlock(scope: !1058, file: !100, line: 418, column: 9)
!1068 = !DILocalVariable(name: "printable", scope: !1066, file: !100, line: 604, type: !17)
!1069 = !DILocalVariable(name: "mbstate", scope: !1070, file: !100, line: 613, type: !1072)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !100, line: 612, column: 15)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !100, line: 606, column: 17)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1073, line: 107, baseType: !1074)
!1073 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1073, line: 95, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1073, line: 83, size: 64, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1075, file: !1073, line: 85, baseType: !25, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1075, file: !1073, line: 94, baseType: !1079, size: 32, offset: 32)
!1079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1075, file: !1073, line: 86, size: 32, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1079, file: !1073, line: 89, baseType: !113, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1079, file: !1073, line: 93, baseType: !1083, size: 32)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1084)
!1084 = !{!1085}
!1085 = !DISubrange(count: 4)
!1086 = !DILocalVariable(name: "w", scope: !1087, file: !100, line: 623, type: !1088)
!1087 = distinct !DILexicalBlock(scope: !1070, file: !100, line: 622, column: 19)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1089 = !DILocalVariable(name: "bytes", scope: !1087, file: !100, line: 624, type: !94)
!1090 = !DILocalVariable(name: "j", scope: !1091, file: !100, line: 649, type: !94)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !100, line: 648, column: 27)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !100, line: 646, column: 29)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !100, line: 641, column: 23)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !100, line: 633, column: 30)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !100, line: 628, column: 30)
!1096 = distinct !DILexicalBlock(scope: !1087, file: !100, line: 626, column: 25)
!1097 = !DILocalVariable(name: "ilim", scope: !1098, file: !100, line: 676, type: !94)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !100, line: 673, column: 15)
!1099 = distinct !DILexicalBlock(scope: !1066, file: !100, line: 672, column: 17)
!1100 = !DILocation(line: 248, column: 33, scope: !1031)
!1101 = !DILocation(line: 248, column: 48, scope: !1031)
!1102 = !DILocation(line: 249, column: 39, scope: !1031)
!1103 = !DILocation(line: 249, column: 51, scope: !1031)
!1104 = !DILocation(line: 250, column: 46, scope: !1031)
!1105 = !DILocation(line: 250, column: 65, scope: !1031)
!1106 = !DILocation(line: 251, column: 47, scope: !1031)
!1107 = !DILocation(line: 252, column: 39, scope: !1031)
!1108 = !DILocation(line: 253, column: 39, scope: !1031)
!1109 = !DILocation(line: 256, column: 10, scope: !1031)
!1110 = !DILocation(line: 257, column: 10, scope: !1031)
!1111 = !DILocation(line: 258, column: 15, scope: !1031)
!1112 = !DILocation(line: 259, column: 10, scope: !1031)
!1113 = !DILocation(line: 260, column: 8, scope: !1031)
!1114 = !DILocation(line: 261, column: 25, scope: !1031)
!1115 = !DILocation(line: 261, column: 36, scope: !1031)
!1116 = !DILocation(line: 262, column: 8, scope: !1031)
!1117 = !DILocation(line: 263, column: 8, scope: !1031)
!1118 = !DILocation(line: 264, column: 8, scope: !1031)
!1119 = !DILocation(line: 265, column: 8, scope: !1031)
!1120 = !DILocation(line: 265, column: 3, scope: !1031)
!1121 = !DILocation(line: 308, column: 3, scope: !1031)
!1122 = !DILocation(line: 315, column: 11, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1031, file: !100, line: 309, column: 5)
!1124 = !DILocation(line: 315, column: 12, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1123, file: !100, line: 315, column: 11)
!1126 = !DILocation(line: 316, column: 9, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !100, discriminator: 1)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !100, line: 316, column: 9)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !100, line: 316, column: 9)
!1130 = !DILocation(line: 316, column: 9, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1129, file: !100, discriminator: 1)
!1132 = !DILocation(line: 316, column: 9, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1128, file: !100, discriminator: 2)
!1134 = !{!599, !599, i64 0}
!1135 = !DILocation(line: 354, column: 26, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !100, line: 332, column: 11)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !100, line: 331, column: 13)
!1138 = distinct !DILexicalBlock(scope: !1123, file: !100, line: 330, column: 7)
!1139 = !DILocation(line: 355, column: 27, scope: !1136)
!1140 = !DILocation(line: 356, column: 11, scope: !1136)
!1141 = !DILocation(line: 357, column: 14, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !100, line: 357, column: 13)
!1143 = !DILocation(line: 357, column: 13, scope: !1138)
!1144 = !DILocation(line: 358, column: 43, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1146, file: !100, discriminator: 1)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !100, line: 358, column: 11)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !100, line: 358, column: 11)
!1148 = !DILocation(line: 358, column: 11, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1147, file: !100, discriminator: 1)
!1150 = !DILocation(line: 359, column: 13, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1152, file: !100, discriminator: 1)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !100, line: 359, column: 13)
!1153 = distinct !DILexicalBlock(scope: !1146, file: !100, line: 359, column: 13)
!1154 = !DILocation(line: 359, column: 13, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1153, file: !100, discriminator: 1)
!1156 = !DILocation(line: 359, column: 13, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1152, file: !100, discriminator: 2)
!1158 = !DILocation(line: 359, column: 13, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1153, file: !100, discriminator: 3)
!1160 = !DILocation(line: 358, column: 70, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1146, file: !100, discriminator: 2)
!1162 = distinct !{!1162, !1163, !1164}
!1163 = !DILocation(line: 358, column: 11, scope: !1147)
!1164 = !DILocation(line: 359, column: 13, scope: !1147)
!1165 = !DILocation(line: 362, column: 28, scope: !1138)
!1166 = !DILocation(line: 364, column: 7, scope: !1123)
!1167 = !DILocation(line: 367, column: 7, scope: !1123)
!1168 = !DILocation(line: 370, column: 7, scope: !1123)
!1169 = !DILocation(line: 373, column: 12, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1123, file: !100, line: 373, column: 11)
!1171 = !DILocation(line: 373, column: 11, scope: !1123)
!1172 = !DILocation(line: 378, column: 12, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1123, file: !100, line: 378, column: 11)
!1174 = !DILocation(line: 378, column: 11, scope: !1123)
!1175 = !DILocation(line: 379, column: 9, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1177, file: !100, discriminator: 1)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !100, line: 379, column: 9)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !100, line: 379, column: 9)
!1179 = !DILocation(line: 379, column: 9, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1178, file: !100, discriminator: 1)
!1181 = !DILocation(line: 379, column: 9, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1177, file: !100, discriminator: 2)
!1183 = !DILocation(line: 386, column: 7, scope: !1123)
!1184 = !DILocation(line: 389, column: 7, scope: !1123)
!1185 = !DILocation(line: 255, column: 10, scope: !1031)
!1186 = !DILocation(line: 392, column: 8, scope: !1060)
!1187 = !DILocation(line: 392, column: 27, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1059, file: !100, discriminator: 1)
!1189 = !DILocation(line: 392, column: 19, scope: !1188)
!1190 = !DILocation(line: 392, column: 60, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1059, file: !100, discriminator: 3)
!1192 = !DILocation(line: 392, column: 3, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1060, file: !100, discriminator: 4)
!1194 = !DILocation(line: 392, column: 41, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1059, file: !100, discriminator: 2)
!1196 = !DILocation(line: 392, column: 48, scope: !1195)
!1197 = !DILocation(line: 396, column: 12, scope: !1058)
!1198 = !DILocation(line: 397, column: 12, scope: !1058)
!1199 = !DILocation(line: 398, column: 12, scope: !1058)
!1200 = !DILocation(line: 401, column: 11, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1058, file: !100, line: 400, column: 11)
!1202 = !DILocation(line: 403, column: 17, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1201, file: !100, discriminator: 1)
!1204 = !DILocation(line: 404, column: 39, scope: !1201)
!1205 = !DILocation(line: 408, column: 32, scope: !1201)
!1206 = !DILocation(line: 404, column: 19, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1201, file: !100, discriminator: 2)
!1208 = !DILocation(line: 404, column: 15, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1201, file: !100, discriminator: 4)
!1210 = !DILocation(line: 409, column: 11, scope: !1201)
!1211 = !DILocation(line: 409, column: 26, scope: !1203)
!1212 = !DILocation(line: 409, column: 14, scope: !1203)
!1213 = !DILocation(line: 400, column: 11, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1058, file: !100, discriminator: 1)
!1215 = !DILocation(line: 416, column: 11, scope: !1058)
!1216 = !DILocation(line: 394, column: 21, scope: !1058)
!1217 = !DILocation(line: 417, column: 7, scope: !1058)
!1218 = !DILocation(line: 420, column: 15, scope: !1067)
!1219 = !DILocation(line: 422, column: 15, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !100, discriminator: 1)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !100, line: 422, column: 15)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !100, line: 421, column: 13)
!1223 = distinct !DILexicalBlock(scope: !1067, file: !100, line: 420, column: 15)
!1224 = !DILocation(line: 422, column: 15, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1226, file: !100, discriminator: 4)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !100, line: 422, column: 15)
!1227 = !DILocation(line: 422, column: 15, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1226, file: !100, discriminator: 3)
!1229 = !DILocation(line: 422, column: 15, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1231, file: !100, discriminator: 6)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !100, line: 422, column: 15)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 422, column: 15)
!1233 = distinct !DILexicalBlock(scope: !1226, file: !100, line: 422, column: 15)
!1234 = !DILocation(line: 422, column: 15, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1232, file: !100, discriminator: 6)
!1236 = !DILocation(line: 422, column: 15, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1231, file: !100, discriminator: 7)
!1238 = !DILocation(line: 422, column: 15, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1232, file: !100, discriminator: 8)
!1240 = !DILocation(line: 422, column: 15, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1242, file: !100, discriminator: 11)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !100, line: 422, column: 15)
!1243 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 422, column: 15)
!1244 = !DILocation(line: 422, column: 15, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1243, file: !100, discriminator: 11)
!1246 = !DILocation(line: 422, column: 15, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1242, file: !100, discriminator: 12)
!1248 = !DILocation(line: 422, column: 15, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1243, file: !100, discriminator: 13)
!1250 = !DILocation(line: 422, column: 15, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1252, file: !100, discriminator: 16)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !100, line: 422, column: 15)
!1253 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 422, column: 15)
!1254 = !DILocation(line: 422, column: 15, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1253, file: !100, discriminator: 16)
!1256 = !DILocation(line: 422, column: 15, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1252, file: !100, discriminator: 17)
!1258 = !DILocation(line: 422, column: 15, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1253, file: !100, discriminator: 18)
!1260 = !DILocation(line: 422, column: 15, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1233, file: !100, discriminator: 20)
!1262 = !DILocation(line: 422, column: 15, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1264, file: !100, discriminator: 22)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !100, line: 422, column: 15)
!1265 = distinct !DILexicalBlock(scope: !1221, file: !100, line: 422, column: 15)
!1266 = !DILocation(line: 422, column: 15, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1265, file: !100, discriminator: 22)
!1268 = !DILocation(line: 422, column: 15, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1264, file: !100, discriminator: 23)
!1270 = !DILocation(line: 422, column: 15, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1265, file: !100, discriminator: 24)
!1272 = !DILocation(line: 430, column: 19, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1222, file: !100, line: 429, column: 19)
!1274 = !DILocation(line: 430, column: 24, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1273, file: !100, discriminator: 1)
!1276 = !DILocation(line: 430, column: 28, scope: !1275)
!1277 = !DILocation(line: 430, column: 38, scope: !1275)
!1278 = !DILocation(line: 430, column: 48, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1273, file: !100, discriminator: 2)
!1280 = !DILocation(line: 430, column: 59, scope: !1279)
!1281 = !DILocation(line: 432, column: 19, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1283, file: !100, discriminator: 1)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !100, line: 432, column: 19)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !100, line: 432, column: 19)
!1285 = distinct !DILexicalBlock(scope: !1273, file: !100, line: 431, column: 17)
!1286 = !DILocation(line: 432, column: 19, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1284, file: !100, discriminator: 1)
!1288 = !DILocation(line: 432, column: 19, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1283, file: !100, discriminator: 2)
!1290 = !DILocation(line: 432, column: 19, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1284, file: !100, discriminator: 3)
!1292 = !DILocation(line: 433, column: 19, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1294, file: !100, discriminator: 1)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !100, line: 433, column: 19)
!1295 = distinct !DILexicalBlock(scope: !1285, file: !100, line: 433, column: 19)
!1296 = !DILocation(line: 433, column: 19, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1295, file: !100, discriminator: 1)
!1298 = !DILocation(line: 433, column: 19, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1294, file: !100, discriminator: 2)
!1300 = !DILocation(line: 433, column: 19, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1295, file: !100, discriminator: 3)
!1302 = !DILocation(line: 434, column: 17, scope: !1285)
!1303 = !DILocation(line: 441, column: 20, scope: !1223)
!1304 = !DILocation(line: 446, column: 11, scope: !1067)
!1305 = !DILocation(line: 449, column: 19, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1067, file: !100, line: 447, column: 13)
!1307 = !DILocation(line: 455, column: 19, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1306, file: !100, line: 454, column: 19)
!1309 = !DILocation(line: 455, column: 24, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1308, file: !100, discriminator: 1)
!1311 = !DILocation(line: 455, column: 28, scope: !1310)
!1312 = !DILocation(line: 455, column: 38, scope: !1310)
!1313 = !DILocation(line: 455, column: 47, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1308, file: !100, discriminator: 2)
!1315 = !DILocation(line: 455, column: 41, scope: !1314)
!1316 = !DILocation(line: 455, column: 52, scope: !1314)
!1317 = !DILocation(line: 454, column: 19, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1306, file: !100, discriminator: 1)
!1319 = !DILocation(line: 456, column: 25, scope: !1308)
!1320 = !DILocation(line: 456, column: 17, scope: !1308)
!1321 = !DILocation(line: 463, column: 25, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1308, file: !100, line: 457, column: 19)
!1323 = !DILocation(line: 467, column: 21, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1325, file: !100, discriminator: 1)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !100, line: 467, column: 21)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !100, line: 467, column: 21)
!1327 = !DILocation(line: 467, column: 21, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1326, file: !100, discriminator: 1)
!1329 = !DILocation(line: 467, column: 21, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1325, file: !100, discriminator: 2)
!1331 = !DILocation(line: 467, column: 21, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1326, file: !100, discriminator: 3)
!1333 = !DILocation(line: 468, column: 21, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1335, file: !100, discriminator: 1)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !100, line: 468, column: 21)
!1336 = distinct !DILexicalBlock(scope: !1322, file: !100, line: 468, column: 21)
!1337 = !DILocation(line: 468, column: 21, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1336, file: !100, discriminator: 1)
!1339 = !DILocation(line: 468, column: 21, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1335, file: !100, discriminator: 2)
!1341 = !DILocation(line: 468, column: 21, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1336, file: !100, discriminator: 3)
!1343 = !DILocation(line: 469, column: 21, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1345, file: !100, discriminator: 1)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !100, line: 469, column: 21)
!1346 = distinct !DILexicalBlock(scope: !1322, file: !100, line: 469, column: 21)
!1347 = !DILocation(line: 469, column: 21, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1346, file: !100, discriminator: 1)
!1349 = !DILocation(line: 469, column: 21, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1345, file: !100, discriminator: 2)
!1351 = !DILocation(line: 469, column: 21, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1346, file: !100, discriminator: 3)
!1353 = !DILocation(line: 470, column: 21, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1355, file: !100, discriminator: 1)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !100, line: 470, column: 21)
!1356 = distinct !DILexicalBlock(scope: !1322, file: !100, line: 470, column: 21)
!1357 = !DILocation(line: 470, column: 21, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1356, file: !100, discriminator: 1)
!1359 = !DILocation(line: 470, column: 21, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1355, file: !100, discriminator: 2)
!1361 = !DILocation(line: 470, column: 21, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1356, file: !100, discriminator: 3)
!1363 = !DILocation(line: 471, column: 21, scope: !1322)
!1364 = !DILocation(line: 395, column: 21, scope: !1058)
!1365 = !DILocation(line: 484, column: 31, scope: !1067)
!1366 = !DILocation(line: 485, column: 31, scope: !1067)
!1367 = !DILocation(line: 487, column: 31, scope: !1067)
!1368 = !DILocation(line: 488, column: 31, scope: !1067)
!1369 = !DILocation(line: 489, column: 31, scope: !1067)
!1370 = !DILocation(line: 492, column: 15, scope: !1067)
!1371 = !DILocation(line: 494, column: 19, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !100, line: 493, column: 13)
!1373 = distinct !DILexicalBlock(scope: !1067, file: !100, line: 492, column: 15)
!1374 = !DILocation(line: 501, column: 33, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1067, file: !100, line: 501, column: 15)
!1376 = !DILocation(line: 506, column: 15, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1067, file: !100, line: 505, column: 15)
!1378 = !DILocation(line: 510, column: 15, scope: !1067)
!1379 = !DILocation(line: 518, column: 26, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1067, file: !100, line: 518, column: 15)
!1381 = !DILocation(line: 518, column: 15, scope: !1067)
!1382 = !DILocation(line: 518, column: 40, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1380, file: !100, discriminator: 1)
!1384 = !DILocation(line: 518, column: 47, scope: !1383)
!1385 = !DILocation(line: 522, column: 17, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1067, file: !100, line: 522, column: 15)
!1387 = !DILocation(line: 518, column: 18, scope: !1383)
!1388 = !DILocation(line: 518, column: 65, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1380, file: !100, discriminator: 2)
!1390 = !DILocation(line: 518, column: 15, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1067, file: !100, discriminator: 2)
!1392 = !DILocation(line: 522, column: 15, scope: !1067)
!1393 = !DILocation(line: 526, column: 11, scope: !1067)
!1394 = !DILocation(line: 541, column: 15, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1067, file: !100, line: 540, column: 15)
!1396 = !DILocation(line: 548, column: 15, scope: !1067)
!1397 = !DILocation(line: 550, column: 19, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !100, line: 549, column: 13)
!1399 = distinct !DILexicalBlock(scope: !1067, file: !100, line: 548, column: 15)
!1400 = !DILocation(line: 553, column: 19, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !100, line: 553, column: 19)
!1402 = !DILocation(line: 553, column: 35, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1401, file: !100, discriminator: 1)
!1404 = !DILocation(line: 553, column: 30, scope: !1401)
!1405 = !DILocation(line: 562, column: 15, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1407, file: !100, discriminator: 1)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !100, line: 562, column: 15)
!1408 = distinct !DILexicalBlock(scope: !1398, file: !100, line: 562, column: 15)
!1409 = !DILocation(line: 562, column: 15, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1408, file: !100, discriminator: 1)
!1411 = !DILocation(line: 562, column: 15, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1407, file: !100, discriminator: 2)
!1413 = !DILocation(line: 562, column: 15, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1408, file: !100, discriminator: 3)
!1415 = !DILocation(line: 563, column: 15, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1417, file: !100, discriminator: 1)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !100, line: 563, column: 15)
!1418 = distinct !DILexicalBlock(scope: !1398, file: !100, line: 563, column: 15)
!1419 = !DILocation(line: 563, column: 15, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1418, file: !100, discriminator: 1)
!1421 = !DILocation(line: 563, column: 15, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1417, file: !100, discriminator: 2)
!1423 = !DILocation(line: 563, column: 15, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1418, file: !100, discriminator: 3)
!1425 = !DILocation(line: 564, column: 15, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1427, file: !100, discriminator: 1)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !100, line: 564, column: 15)
!1428 = distinct !DILexicalBlock(scope: !1398, file: !100, line: 564, column: 15)
!1429 = !DILocation(line: 564, column: 15, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1428, file: !100, discriminator: 1)
!1431 = !DILocation(line: 564, column: 15, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1427, file: !100, discriminator: 2)
!1433 = !DILocation(line: 564, column: 15, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1428, file: !100, discriminator: 3)
!1435 = !DILocation(line: 566, column: 13, scope: !1398)
!1436 = !DILocation(line: 606, column: 17, scope: !1066)
!1437 = !DILocation(line: 602, column: 20, scope: !1066)
!1438 = !DILocation(line: 609, column: 29, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1071, file: !100, line: 607, column: 15)
!1440 = !{!1441, !1441, i64 0}
!1441 = !{!"short", !599, i64 0}
!1442 = !DILocation(line: 609, column: 27, scope: !1439)
!1443 = !DILocation(line: 604, column: 18, scope: !1066)
!1444 = !DILocation(line: 610, column: 15, scope: !1439)
!1445 = !DILocation(line: 613, column: 17, scope: !1070)
!1446 = !DILocation(line: 614, column: 17, scope: !1070)
!1447 = !DILocation(line: 618, column: 29, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1070, file: !100, line: 618, column: 21)
!1449 = !DILocation(line: 618, column: 21, scope: !1070)
!1450 = distinct !{!1450, !1451, !1452}
!1451 = !DILocation(line: 621, column: 17, scope: !1070)
!1452 = !DILocation(line: 667, column: 44, scope: !1070)
!1453 = !DILocation(line: 619, column: 29, scope: !1448)
!1454 = !DILocation(line: 619, column: 19, scope: !1448)
!1455 = !DILocation(line: 623, column: 21, scope: !1087)
!1456 = !DILocation(line: 624, column: 56, scope: !1087)
!1457 = !DILocation(line: 624, column: 50, scope: !1087)
!1458 = !DILocation(line: 625, column: 53, scope: !1087)
!1459 = !DIExpression(DW_OP_deref)
!1460 = !DILocation(line: 613, column: 27, scope: !1070)
!1461 = !DILocation(line: 623, column: 29, scope: !1087)
!1462 = !DILocation(line: 624, column: 36, scope: !1087)
!1463 = !DILocation(line: 624, column: 28, scope: !1087)
!1464 = !DILocation(line: 626, column: 25, scope: !1087)
!1465 = !DILocation(line: 636, column: 38, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1467, file: !100, discriminator: 1)
!1467 = distinct !DILexicalBlock(scope: !1094, file: !100, line: 634, column: 23)
!1468 = !DILocation(line: 636, column: 48, scope: !1466)
!1469 = !DILocation(line: 636, column: 51, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1467, file: !100, discriminator: 2)
!1471 = !DILocation(line: 636, column: 48, scope: !1470)
!1472 = !DILocation(line: 636, column: 25, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1467, file: !100, discriminator: 3)
!1474 = !DILocation(line: 637, column: 28, scope: !1467)
!1475 = !DILocation(line: 636, column: 34, scope: !1466)
!1476 = distinct !{!1476, !1477, !1474}
!1477 = !DILocation(line: 636, column: 25, scope: !1467)
!1478 = !DILocation(line: 650, column: 43, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1480, file: !100, discriminator: 1)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !100, line: 650, column: 29)
!1481 = distinct !DILexicalBlock(scope: !1091, file: !100, line: 650, column: 29)
!1482 = !DILocation(line: 647, column: 29, scope: !1092)
!1483 = !DILocation(line: 649, column: 36, scope: !1091)
!1484 = !DILocation(line: 651, column: 49, scope: !1480)
!1485 = !DILocation(line: 651, column: 39, scope: !1480)
!1486 = !DILocation(line: 651, column: 31, scope: !1480)
!1487 = !DILocation(line: 650, column: 53, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1480, file: !100, discriminator: 2)
!1489 = !DILocation(line: 650, column: 29, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1481, file: !100, discriminator: 1)
!1491 = distinct !{!1491, !1492, !1493}
!1492 = !DILocation(line: 650, column: 29, scope: !1481)
!1493 = !DILocation(line: 659, column: 33, scope: !1481)
!1494 = !DILocation(line: 666, column: 19, scope: !1070)
!1495 = !DILocation(line: 662, column: 41, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1093, file: !100, line: 662, column: 29)
!1497 = !DILocation(line: 662, column: 31, scope: !1496)
!1498 = !DILocation(line: 662, column: 29, scope: !1093)
!1499 = !DILocation(line: 664, column: 27, scope: !1093)
!1500 = !DILocation(line: 667, column: 26, scope: !1070)
!1501 = !DILocation(line: 667, column: 24, scope: !1070)
!1502 = !DILocation(line: 666, column: 19, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1087, file: !100, discriminator: 3)
!1504 = !DILocation(line: 668, column: 15, scope: !1071)
!1505 = !DILocation(line: 670, column: 40, scope: !1066)
!1506 = !DILocation(line: 672, column: 19, scope: !1099)
!1507 = !DILocation(line: 672, column: 45, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1099, file: !100, discriminator: 1)
!1509 = !DILocation(line: 672, column: 23, scope: !1099)
!1510 = !DILocation(line: 676, column: 33, scope: !1098)
!1511 = !DILocation(line: 676, column: 24, scope: !1098)
!1512 = !DILocation(line: 678, column: 17, scope: !1098)
!1513 = !DILocation(line: 680, column: 43, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !100, line: 680, column: 25)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !100, line: 679, column: 19)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !100, line: 678, column: 17)
!1517 = distinct !DILexicalBlock(scope: !1098, file: !100, line: 678, column: 17)
!1518 = !DILocation(line: 682, column: 25, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1520, file: !100, discriminator: 1)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !100, line: 682, column: 25)
!1521 = distinct !DILexicalBlock(scope: !1514, file: !100, line: 681, column: 23)
!1522 = !DILocation(line: 682, column: 25, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1524, file: !100, discriminator: 4)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !100, line: 682, column: 25)
!1525 = !DILocation(line: 682, column: 25, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1524, file: !100, discriminator: 3)
!1527 = !DILocation(line: 682, column: 25, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1529, file: !100, discriminator: 6)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !100, line: 682, column: 25)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !100, line: 682, column: 25)
!1531 = distinct !DILexicalBlock(scope: !1524, file: !100, line: 682, column: 25)
!1532 = !DILocation(line: 682, column: 25, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1530, file: !100, discriminator: 6)
!1534 = !DILocation(line: 682, column: 25, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1529, file: !100, discriminator: 7)
!1536 = !DILocation(line: 682, column: 25, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1530, file: !100, discriminator: 8)
!1538 = !DILocation(line: 682, column: 25, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1540, file: !100, discriminator: 11)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !100, line: 682, column: 25)
!1541 = distinct !DILexicalBlock(scope: !1531, file: !100, line: 682, column: 25)
!1542 = !DILocation(line: 682, column: 25, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1541, file: !100, discriminator: 11)
!1544 = !DILocation(line: 682, column: 25, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1540, file: !100, discriminator: 12)
!1546 = !DILocation(line: 682, column: 25, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1541, file: !100, discriminator: 13)
!1548 = !DILocation(line: 682, column: 25, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1550, file: !100, discriminator: 16)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !100, line: 682, column: 25)
!1551 = distinct !DILexicalBlock(scope: !1531, file: !100, line: 682, column: 25)
!1552 = !DILocation(line: 682, column: 25, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1551, file: !100, discriminator: 16)
!1554 = !DILocation(line: 682, column: 25, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1550, file: !100, discriminator: 17)
!1556 = !DILocation(line: 682, column: 25, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1551, file: !100, discriminator: 18)
!1558 = !DILocation(line: 682, column: 25, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1531, file: !100, discriminator: 20)
!1560 = !DILocation(line: 682, column: 25, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1562, file: !100, discriminator: 22)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !100, line: 682, column: 25)
!1563 = distinct !DILexicalBlock(scope: !1520, file: !100, line: 682, column: 25)
!1564 = !DILocation(line: 682, column: 25, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1563, file: !100, discriminator: 22)
!1566 = !DILocation(line: 682, column: 25, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1562, file: !100, discriminator: 23)
!1568 = !DILocation(line: 682, column: 25, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1563, file: !100, discriminator: 24)
!1570 = !DILocation(line: 683, column: 25, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !100, discriminator: 1)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !100, line: 683, column: 25)
!1573 = distinct !DILexicalBlock(scope: !1521, file: !100, line: 683, column: 25)
!1574 = !DILocation(line: 683, column: 25, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1573, file: !100, discriminator: 1)
!1576 = !DILocation(line: 683, column: 25, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1572, file: !100, discriminator: 2)
!1578 = !DILocation(line: 683, column: 25, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1573, file: !100, discriminator: 3)
!1580 = !DILocation(line: 684, column: 25, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1582, file: !100, discriminator: 1)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !100, line: 684, column: 25)
!1583 = distinct !DILexicalBlock(scope: !1521, file: !100, line: 684, column: 25)
!1584 = !DILocation(line: 684, column: 25, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1583, file: !100, discriminator: 1)
!1586 = !DILocation(line: 684, column: 25, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1582, file: !100, discriminator: 2)
!1588 = !DILocation(line: 684, column: 25, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1583, file: !100, discriminator: 3)
!1590 = !DILocation(line: 685, column: 38, scope: !1521)
!1591 = !DILocation(line: 685, column: 33, scope: !1521)
!1592 = !DILocation(line: 686, column: 23, scope: !1521)
!1593 = !DILocation(line: 687, column: 30, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1514, file: !100, line: 687, column: 30)
!1595 = !DILocation(line: 687, column: 30, scope: !1514)
!1596 = !DILocation(line: 689, column: 25, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1598, file: !100, discriminator: 1)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !100, line: 689, column: 25)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !100, line: 689, column: 25)
!1600 = distinct !DILexicalBlock(scope: !1594, file: !100, line: 688, column: 23)
!1601 = !DILocation(line: 689, column: 25, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1599, file: !100, discriminator: 1)
!1603 = !DILocation(line: 689, column: 25, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1598, file: !100, discriminator: 2)
!1605 = !DILocation(line: 689, column: 25, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1599, file: !100, discriminator: 3)
!1607 = !DILocation(line: 691, column: 23, scope: !1600)
!1608 = !DILocation(line: 692, column: 35, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1515, file: !100, line: 692, column: 25)
!1610 = !DILocation(line: 692, column: 30, scope: !1609)
!1611 = !DILocation(line: 692, column: 25, scope: !1515)
!1612 = !DILocation(line: 694, column: 21, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1614, file: !100, discriminator: 1)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !100, line: 694, column: 21)
!1615 = distinct !DILexicalBlock(scope: !1515, file: !100, line: 694, column: 21)
!1616 = !DILocation(line: 694, column: 21, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1614, file: !100, discriminator: 2)
!1618 = !DILocation(line: 694, column: 21, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1620, file: !100, discriminator: 4)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !100, line: 694, column: 21)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !100, line: 694, column: 21)
!1622 = distinct !DILexicalBlock(scope: !1614, file: !100, line: 694, column: 21)
!1623 = !DILocation(line: 694, column: 21, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1621, file: !100, discriminator: 4)
!1625 = !DILocation(line: 694, column: 21, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1620, file: !100, discriminator: 5)
!1627 = !DILocation(line: 694, column: 21, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1621, file: !100, discriminator: 6)
!1629 = !DILocation(line: 694, column: 21, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1631, file: !100, discriminator: 9)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !100, line: 694, column: 21)
!1632 = distinct !DILexicalBlock(scope: !1622, file: !100, line: 694, column: 21)
!1633 = !DILocation(line: 694, column: 21, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1632, file: !100, discriminator: 9)
!1635 = !DILocation(line: 694, column: 21, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1631, file: !100, discriminator: 10)
!1637 = !DILocation(line: 694, column: 21, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1632, file: !100, discriminator: 11)
!1639 = !DILocation(line: 694, column: 21, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1622, file: !100, discriminator: 13)
!1641 = !DILocation(line: 695, column: 21, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1643, file: !100, discriminator: 1)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !100, line: 695, column: 21)
!1644 = distinct !DILexicalBlock(scope: !1515, file: !100, line: 695, column: 21)
!1645 = !DILocation(line: 695, column: 21, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1644, file: !100, discriminator: 1)
!1647 = !DILocation(line: 695, column: 21, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1643, file: !100, discriminator: 2)
!1649 = !DILocation(line: 695, column: 21, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1644, file: !100, discriminator: 3)
!1651 = !DILocation(line: 696, column: 25, scope: !1515)
!1652 = !DILocation(line: 678, column: 17, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1516, file: !100, discriminator: 1)
!1654 = distinct !{!1654, !1655, !1656}
!1655 = !DILocation(line: 678, column: 17, scope: !1517)
!1656 = !DILocation(line: 697, column: 19, scope: !1517)
!1657 = !DILocation(line: 704, column: 34, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1058, file: !100, line: 704, column: 11)
!1659 = !DILocation(line: 706, column: 14, scope: !1658)
!1660 = !DILocation(line: 707, column: 14, scope: !1658)
!1661 = !DILocation(line: 707, column: 35, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1658, file: !100, discriminator: 1)
!1663 = !DILocation(line: 707, column: 17, scope: !1662)
!1664 = !DILocation(line: 707, column: 53, scope: !1662)
!1665 = !DILocation(line: 707, column: 47, scope: !1662)
!1666 = !DILocation(line: 707, column: 65, scope: !1662)
!1667 = !DILocation(line: 708, column: 15, scope: !1662)
!1668 = !DILocation(line: 708, column: 11, scope: !1658)
!1669 = !DILocation(line: 704, column: 11, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1058, file: !100, discriminator: 2)
!1671 = !DILocation(line: 712, column: 7, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1673, file: !100, discriminator: 1)
!1673 = distinct !DILexicalBlock(scope: !1058, file: !100, line: 712, column: 7)
!1674 = !DILocation(line: 712, column: 7, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1676, file: !100, discriminator: 4)
!1676 = distinct !DILexicalBlock(scope: !1673, file: !100, line: 712, column: 7)
!1677 = !DILocation(line: 712, column: 7, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1676, file: !100, discriminator: 3)
!1679 = !DILocation(line: 712, column: 7, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1681, file: !100, discriminator: 6)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !100, line: 712, column: 7)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !100, line: 712, column: 7)
!1683 = distinct !DILexicalBlock(scope: !1676, file: !100, line: 712, column: 7)
!1684 = !DILocation(line: 712, column: 7, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1682, file: !100, discriminator: 6)
!1686 = !DILocation(line: 712, column: 7, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1681, file: !100, discriminator: 7)
!1688 = !DILocation(line: 712, column: 7, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1682, file: !100, discriminator: 8)
!1690 = !DILocation(line: 712, column: 7, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1692, file: !100, discriminator: 11)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !100, line: 712, column: 7)
!1693 = distinct !DILexicalBlock(scope: !1683, file: !100, line: 712, column: 7)
!1694 = !DILocation(line: 712, column: 7, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1693, file: !100, discriminator: 11)
!1696 = !DILocation(line: 712, column: 7, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1692, file: !100, discriminator: 12)
!1698 = !DILocation(line: 712, column: 7, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1693, file: !100, discriminator: 13)
!1700 = !DILocation(line: 712, column: 7, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1702, file: !100, discriminator: 16)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !100, line: 712, column: 7)
!1703 = distinct !DILexicalBlock(scope: !1683, file: !100, line: 712, column: 7)
!1704 = !DILocation(line: 712, column: 7, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1703, file: !100, discriminator: 16)
!1706 = !DILocation(line: 712, column: 7, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1702, file: !100, discriminator: 17)
!1708 = !DILocation(line: 712, column: 7, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1703, file: !100, discriminator: 18)
!1710 = !DILocation(line: 712, column: 7, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1683, file: !100, discriminator: 20)
!1712 = !DILocation(line: 712, column: 7, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1714, file: !100, discriminator: 22)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !100, line: 712, column: 7)
!1715 = distinct !DILexicalBlock(scope: !1673, file: !100, line: 712, column: 7)
!1716 = !DILocation(line: 712, column: 7, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1715, file: !100, discriminator: 22)
!1718 = !DILocation(line: 712, column: 7, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1714, file: !100, discriminator: 23)
!1720 = !DILocation(line: 712, column: 7, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1715, file: !100, discriminator: 24)
!1722 = !DILocation(line: 715, column: 7, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1724, file: !100, discriminator: 1)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !100, line: 715, column: 7)
!1725 = distinct !DILexicalBlock(scope: !1058, file: !100, line: 715, column: 7)
!1726 = !DILocation(line: 715, column: 7, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1724, file: !100, discriminator: 2)
!1728 = !DILocation(line: 715, column: 7, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1730, file: !100, discriminator: 4)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !100, line: 715, column: 7)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !100, line: 715, column: 7)
!1732 = distinct !DILexicalBlock(scope: !1724, file: !100, line: 715, column: 7)
!1733 = !DILocation(line: 715, column: 7, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1731, file: !100, discriminator: 4)
!1735 = !DILocation(line: 715, column: 7, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1730, file: !100, discriminator: 5)
!1737 = !DILocation(line: 715, column: 7, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1731, file: !100, discriminator: 6)
!1739 = !DILocation(line: 715, column: 7, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1741, file: !100, discriminator: 9)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !100, line: 715, column: 7)
!1742 = distinct !DILexicalBlock(scope: !1732, file: !100, line: 715, column: 7)
!1743 = !DILocation(line: 715, column: 7, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1742, file: !100, discriminator: 9)
!1745 = !DILocation(line: 715, column: 7, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1741, file: !100, discriminator: 10)
!1747 = !DILocation(line: 715, column: 7, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1742, file: !100, discriminator: 11)
!1749 = !DILocation(line: 715, column: 7, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1732, file: !100, discriminator: 13)
!1751 = !DILocation(line: 716, column: 7, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1753, file: !100, discriminator: 1)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !100, line: 716, column: 7)
!1754 = distinct !DILexicalBlock(scope: !1058, file: !100, line: 716, column: 7)
!1755 = !DILocation(line: 716, column: 7, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1754, file: !100, discriminator: 1)
!1757 = !DILocation(line: 716, column: 7, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1753, file: !100, discriminator: 2)
!1759 = !DILocation(line: 716, column: 7, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1754, file: !100, discriminator: 3)
!1761 = !DILocation(line: 718, column: 13, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1058, file: !100, line: 718, column: 11)
!1763 = !DILocation(line: 718, column: 11, scope: !1058)
!1764 = !DILocation(line: 720, column: 5, scope: !1059)
!1765 = !DILocation(line: 392, column: 75, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1059, file: !100, discriminator: 5)
!1767 = !DILocation(line: 392, column: 3, scope: !1766)
!1768 = distinct !{!1768, !1769, !1770}
!1769 = !DILocation(line: 392, column: 3, scope: !1060)
!1770 = !DILocation(line: 720, column: 5, scope: !1060)
!1771 = !DILocation(line: 722, column: 11, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1031, file: !100, line: 722, column: 7)
!1773 = !DILocation(line: 722, column: 16, scope: !1772)
!1774 = !DILocation(line: 730, column: 51, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1031, file: !100, line: 730, column: 7)
!1776 = !DILocation(line: 731, column: 10, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1775, file: !100, discriminator: 1)
!1778 = !DILocation(line: 733, column: 11, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !100, line: 733, column: 11)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !100, line: 732, column: 5)
!1781 = !DILocation(line: 733, column: 11, scope: !1780)
!1782 = !DILocation(line: 734, column: 16, scope: !1779)
!1783 = !DILocation(line: 734, column: 9, scope: !1779)
!1784 = !DILocation(line: 738, column: 18, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1779, file: !100, line: 738, column: 16)
!1786 = !DILocation(line: 738, column: 32, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1785, file: !100, discriminator: 1)
!1788 = !DILocation(line: 738, column: 29, scope: !1785)
!1789 = !DILocation(line: 747, column: 7, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1031, file: !100, line: 747, column: 7)
!1791 = !DILocation(line: 747, column: 20, scope: !1790)
!1792 = !DILocation(line: 748, column: 12, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1794, file: !100, discriminator: 1)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !100, line: 748, column: 5)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !100, line: 748, column: 5)
!1796 = !DILocation(line: 748, column: 5, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1795, file: !100, discriminator: 1)
!1798 = !DILocation(line: 749, column: 7, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1800, file: !100, discriminator: 1)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !100, line: 749, column: 7)
!1801 = distinct !DILexicalBlock(scope: !1794, file: !100, line: 749, column: 7)
!1802 = !DILocation(line: 749, column: 7, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1801, file: !100, discriminator: 1)
!1804 = !DILocation(line: 749, column: 7, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1800, file: !100, discriminator: 2)
!1806 = !DILocation(line: 749, column: 7, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1801, file: !100, discriminator: 3)
!1808 = !DILocation(line: 748, column: 39, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1794, file: !100, discriminator: 2)
!1810 = distinct !{!1810, !1811, !1812}
!1811 = !DILocation(line: 748, column: 5, scope: !1795)
!1812 = !DILocation(line: 749, column: 7, scope: !1795)
!1813 = !DILocation(line: 751, column: 11, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1031, file: !100, line: 751, column: 7)
!1815 = !DILocation(line: 751, column: 7, scope: !1031)
!1816 = !DILocation(line: 752, column: 5, scope: !1814)
!1817 = !DILocation(line: 752, column: 17, scope: !1814)
!1818 = !DILocation(line: 758, column: 21, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1031, file: !100, line: 758, column: 7)
!1820 = !DILocation(line: 758, column: 54, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1819, file: !100, discriminator: 1)
!1822 = !DILocation(line: 758, column: 51, scope: !1819)
!1823 = !DILocation(line: 762, column: 42, scope: !1031)
!1824 = !DILocation(line: 760, column: 10, scope: !1031)
!1825 = !DILocation(line: 760, column: 3, scope: !1031)
!1826 = !DILocation(line: 764, column: 1, scope: !1031)
!1827 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1828, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1830)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!6, !6, !58}
!1830 = !{!1831, !1832, !1833, !1834}
!1831 = !DILocalVariable(name: "msgid", arg: 1, scope: !1827, file: !100, line: 199, type: !6)
!1832 = !DILocalVariable(name: "s", arg: 2, scope: !1827, file: !100, line: 199, type: !58)
!1833 = !DILocalVariable(name: "translation", scope: !1827, file: !100, line: 201, type: !6)
!1834 = !DILocalVariable(name: "locale_code", scope: !1827, file: !100, line: 202, type: !6)
!1835 = !DILocation(line: 199, column: 28, scope: !1827)
!1836 = !DILocation(line: 199, column: 54, scope: !1827)
!1837 = !DILocation(line: 201, column: 29, scope: !1827)
!1838 = !DILocation(line: 201, column: 15, scope: !1827)
!1839 = !DILocation(line: 204, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1827, file: !100, line: 204, column: 7)
!1841 = !DILocation(line: 204, column: 7, scope: !1827)
!1842 = !DILocation(line: 225, column: 17, scope: !1827)
!1843 = !DILocation(line: 202, column: 15, scope: !1827)
!1844 = !DILocalVariable(name: "s2", arg: 2, scope: !1845, file: !1846, line: 160, type: !6)
!1845 = distinct !DISubprogram(name: "strcaseeq0", scope: !1846, file: !1846, line: 160, type: !1847, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1849)
!1846 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1849 = !{!1850, !1844, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859}
!1850 = !DILocalVariable(name: "s1", arg: 1, scope: !1845, file: !1846, line: 160, type: !6)
!1851 = !DILocalVariable(name: "s20", arg: 3, scope: !1845, file: !1846, line: 160, type: !8)
!1852 = !DILocalVariable(name: "s21", arg: 4, scope: !1845, file: !1846, line: 160, type: !8)
!1853 = !DILocalVariable(name: "s22", arg: 5, scope: !1845, file: !1846, line: 160, type: !8)
!1854 = !DILocalVariable(name: "s23", arg: 6, scope: !1845, file: !1846, line: 160, type: !8)
!1855 = !DILocalVariable(name: "s24", arg: 7, scope: !1845, file: !1846, line: 160, type: !8)
!1856 = !DILocalVariable(name: "s25", arg: 8, scope: !1845, file: !1846, line: 160, type: !8)
!1857 = !DILocalVariable(name: "s26", arg: 9, scope: !1845, file: !1846, line: 160, type: !8)
!1858 = !DILocalVariable(name: "s27", arg: 10, scope: !1845, file: !1846, line: 160, type: !8)
!1859 = !DILocalVariable(name: "s28", arg: 11, scope: !1845, file: !1846, line: 160, type: !8)
!1860 = !DILocation(line: 160, column: 41, scope: !1845, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 226, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1827, file: !100, line: 226, column: 7)
!1863 = !DILocation(line: 160, column: 120, scope: !1845, inlinedAt: !1861)
!1864 = !DILocation(line: 160, column: 130, scope: !1845, inlinedAt: !1861)
!1865 = !DILocation(line: 162, column: 7, scope: !1866, inlinedAt: !1861)
!1866 = !DILexicalBlockFile(scope: !1867, file: !1846, discriminator: 1)
!1867 = distinct !DILexicalBlock(scope: !1845, file: !1846, line: 162, column: 7)
!1868 = !DILocalVariable(name: "s2", arg: 2, scope: !1869, file: !1846, line: 146, type: !6)
!1869 = distinct !DISubprogram(name: "strcaseeq1", scope: !1846, file: !1846, line: 146, type: !1870, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1872)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1872 = !{!1873, !1868, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881}
!1873 = !DILocalVariable(name: "s1", arg: 1, scope: !1869, file: !1846, line: 146, type: !6)
!1874 = !DILocalVariable(name: "s21", arg: 3, scope: !1869, file: !1846, line: 146, type: !8)
!1875 = !DILocalVariable(name: "s22", arg: 4, scope: !1869, file: !1846, line: 146, type: !8)
!1876 = !DILocalVariable(name: "s23", arg: 5, scope: !1869, file: !1846, line: 146, type: !8)
!1877 = !DILocalVariable(name: "s24", arg: 6, scope: !1869, file: !1846, line: 146, type: !8)
!1878 = !DILocalVariable(name: "s25", arg: 7, scope: !1869, file: !1846, line: 146, type: !8)
!1879 = !DILocalVariable(name: "s26", arg: 8, scope: !1869, file: !1846, line: 146, type: !8)
!1880 = !DILocalVariable(name: "s27", arg: 9, scope: !1869, file: !1846, line: 146, type: !8)
!1881 = !DILocalVariable(name: "s28", arg: 10, scope: !1869, file: !1846, line: 146, type: !8)
!1882 = !DILocation(line: 146, column: 41, scope: !1869, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 167, column: 16, scope: !1884, inlinedAt: !1861)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !1846, line: 164, column: 11)
!1885 = distinct !DILexicalBlock(scope: !1867, file: !1846, line: 163, column: 5)
!1886 = !DILocation(line: 146, column: 110, scope: !1869, inlinedAt: !1883)
!1887 = !DILocation(line: 146, column: 120, scope: !1869, inlinedAt: !1883)
!1888 = !DILocation(line: 148, column: 7, scope: !1889, inlinedAt: !1883)
!1889 = !DILexicalBlockFile(scope: !1890, file: !1846, discriminator: 1)
!1890 = distinct !DILexicalBlock(scope: !1869, file: !1846, line: 148, column: 7)
!1891 = !DILocalVariable(name: "s2", arg: 2, scope: !1892, file: !1846, line: 132, type: !6)
!1892 = distinct !DISubprogram(name: "strcaseeq2", scope: !1846, file: !1846, line: 132, type: !1893, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1895 = !{!1896, !1891, !1897, !1898, !1899, !1900, !1901, !1902, !1903}
!1896 = !DILocalVariable(name: "s1", arg: 1, scope: !1892, file: !1846, line: 132, type: !6)
!1897 = !DILocalVariable(name: "s22", arg: 3, scope: !1892, file: !1846, line: 132, type: !8)
!1898 = !DILocalVariable(name: "s23", arg: 4, scope: !1892, file: !1846, line: 132, type: !8)
!1899 = !DILocalVariable(name: "s24", arg: 5, scope: !1892, file: !1846, line: 132, type: !8)
!1900 = !DILocalVariable(name: "s25", arg: 6, scope: !1892, file: !1846, line: 132, type: !8)
!1901 = !DILocalVariable(name: "s26", arg: 7, scope: !1892, file: !1846, line: 132, type: !8)
!1902 = !DILocalVariable(name: "s27", arg: 8, scope: !1892, file: !1846, line: 132, type: !8)
!1903 = !DILocalVariable(name: "s28", arg: 9, scope: !1892, file: !1846, line: 132, type: !8)
!1904 = !DILocation(line: 132, column: 41, scope: !1892, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 153, column: 16, scope: !1906, inlinedAt: !1883)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !1846, line: 150, column: 11)
!1907 = distinct !DILexicalBlock(scope: !1890, file: !1846, line: 149, column: 5)
!1908 = !DILocation(line: 132, column: 100, scope: !1892, inlinedAt: !1905)
!1909 = !DILocation(line: 132, column: 110, scope: !1892, inlinedAt: !1905)
!1910 = !DILocation(line: 134, column: 7, scope: !1911, inlinedAt: !1905)
!1911 = !DILexicalBlockFile(scope: !1912, file: !1846, discriminator: 1)
!1912 = distinct !DILexicalBlock(scope: !1892, file: !1846, line: 134, column: 7)
!1913 = !DILocalVariable(name: "s2", arg: 2, scope: !1914, file: !1846, line: 118, type: !6)
!1914 = distinct !DISubprogram(name: "strcaseeq3", scope: !1846, file: !1846, line: 118, type: !1915, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1917)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1917 = !{!1918, !1913, !1919, !1920, !1921, !1922, !1923, !1924}
!1918 = !DILocalVariable(name: "s1", arg: 1, scope: !1914, file: !1846, line: 118, type: !6)
!1919 = !DILocalVariable(name: "s23", arg: 3, scope: !1914, file: !1846, line: 118, type: !8)
!1920 = !DILocalVariable(name: "s24", arg: 4, scope: !1914, file: !1846, line: 118, type: !8)
!1921 = !DILocalVariable(name: "s25", arg: 5, scope: !1914, file: !1846, line: 118, type: !8)
!1922 = !DILocalVariable(name: "s26", arg: 6, scope: !1914, file: !1846, line: 118, type: !8)
!1923 = !DILocalVariable(name: "s27", arg: 7, scope: !1914, file: !1846, line: 118, type: !8)
!1924 = !DILocalVariable(name: "s28", arg: 8, scope: !1914, file: !1846, line: 118, type: !8)
!1925 = !DILocation(line: 118, column: 41, scope: !1914, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 139, column: 16, scope: !1927, inlinedAt: !1905)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !1846, line: 136, column: 11)
!1928 = distinct !DILexicalBlock(scope: !1912, file: !1846, line: 135, column: 5)
!1929 = !DILocation(line: 118, column: 90, scope: !1914, inlinedAt: !1926)
!1930 = !DILocation(line: 118, column: 100, scope: !1914, inlinedAt: !1926)
!1931 = !DILocation(line: 120, column: 7, scope: !1932, inlinedAt: !1926)
!1932 = !DILexicalBlockFile(scope: !1933, file: !1846, discriminator: 2)
!1933 = distinct !DILexicalBlock(scope: !1914, file: !1846, line: 120, column: 7)
!1934 = !DILocation(line: 120, column: 7, scope: !1935, inlinedAt: !1926)
!1935 = !DILexicalBlockFile(scope: !1914, file: !1846, discriminator: 2)
!1936 = !DILocalVariable(name: "s2", arg: 2, scope: !1937, file: !1846, line: 104, type: !6)
!1937 = distinct !DISubprogram(name: "strcaseeq4", scope: !1846, file: !1846, line: 104, type: !1938, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1940)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1940 = !{!1941, !1936, !1942, !1943, !1944, !1945, !1946}
!1941 = !DILocalVariable(name: "s1", arg: 1, scope: !1937, file: !1846, line: 104, type: !6)
!1942 = !DILocalVariable(name: "s24", arg: 3, scope: !1937, file: !1846, line: 104, type: !8)
!1943 = !DILocalVariable(name: "s25", arg: 4, scope: !1937, file: !1846, line: 104, type: !8)
!1944 = !DILocalVariable(name: "s26", arg: 5, scope: !1937, file: !1846, line: 104, type: !8)
!1945 = !DILocalVariable(name: "s27", arg: 6, scope: !1937, file: !1846, line: 104, type: !8)
!1946 = !DILocalVariable(name: "s28", arg: 7, scope: !1937, file: !1846, line: 104, type: !8)
!1947 = !DILocation(line: 104, column: 41, scope: !1937, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 125, column: 16, scope: !1949, inlinedAt: !1926)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !1846, line: 122, column: 11)
!1950 = distinct !DILexicalBlock(scope: !1933, file: !1846, line: 121, column: 5)
!1951 = !DILocation(line: 104, column: 80, scope: !1937, inlinedAt: !1948)
!1952 = !DILocation(line: 104, column: 90, scope: !1937, inlinedAt: !1948)
!1953 = !DILocation(line: 106, column: 7, scope: !1954, inlinedAt: !1948)
!1954 = !DILexicalBlockFile(scope: !1955, file: !1846, discriminator: 2)
!1955 = distinct !DILexicalBlock(scope: !1937, file: !1846, line: 106, column: 7)
!1956 = !DILocation(line: 106, column: 7, scope: !1957, inlinedAt: !1948)
!1957 = !DILexicalBlockFile(scope: !1937, file: !1846, discriminator: 2)
!1958 = !DILocalVariable(name: "s2", arg: 2, scope: !1959, file: !1846, line: 90, type: !6)
!1959 = distinct !DISubprogram(name: "strcaseeq5", scope: !1846, file: !1846, line: 90, type: !1960, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!25, !6, !6, !8, !8, !8, !8}
!1962 = !{!1963, !1958, !1964, !1965, !1966, !1967}
!1963 = !DILocalVariable(name: "s1", arg: 1, scope: !1959, file: !1846, line: 90, type: !6)
!1964 = !DILocalVariable(name: "s25", arg: 3, scope: !1959, file: !1846, line: 90, type: !8)
!1965 = !DILocalVariable(name: "s26", arg: 4, scope: !1959, file: !1846, line: 90, type: !8)
!1966 = !DILocalVariable(name: "s27", arg: 5, scope: !1959, file: !1846, line: 90, type: !8)
!1967 = !DILocalVariable(name: "s28", arg: 6, scope: !1959, file: !1846, line: 90, type: !8)
!1968 = !DILocation(line: 90, column: 41, scope: !1959, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 111, column: 16, scope: !1970, inlinedAt: !1948)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !1846, line: 108, column: 11)
!1971 = distinct !DILexicalBlock(scope: !1955, file: !1846, line: 107, column: 5)
!1972 = !DILocation(line: 90, column: 70, scope: !1959, inlinedAt: !1969)
!1973 = !DILocation(line: 90, column: 80, scope: !1959, inlinedAt: !1969)
!1974 = !DILocation(line: 92, column: 7, scope: !1975, inlinedAt: !1969)
!1975 = !DILexicalBlockFile(scope: !1976, file: !1846, discriminator: 2)
!1976 = distinct !DILexicalBlock(scope: !1959, file: !1846, line: 92, column: 7)
!1977 = !DILocation(line: 92, column: 7, scope: !1978, inlinedAt: !1969)
!1978 = !DILexicalBlockFile(scope: !1959, file: !1846, discriminator: 2)
!1979 = !DILocation(line: 227, column: 12, scope: !1862)
!1980 = !DILocation(line: 227, column: 21, scope: !1862)
!1981 = !DILocation(line: 227, column: 5, scope: !1862)
!1982 = !DILocation(line: 146, column: 41, scope: !1869, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 167, column: 16, scope: !1884, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 228, column: 7, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1827, file: !100, line: 228, column: 7)
!1986 = !DILocation(line: 146, column: 110, scope: !1869, inlinedAt: !1983)
!1987 = !DILocation(line: 146, column: 120, scope: !1869, inlinedAt: !1983)
!1988 = !DILocation(line: 148, column: 7, scope: !1889, inlinedAt: !1983)
!1989 = !DILocation(line: 132, column: 41, scope: !1892, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 153, column: 16, scope: !1906, inlinedAt: !1983)
!1991 = !DILocation(line: 132, column: 100, scope: !1892, inlinedAt: !1990)
!1992 = !DILocation(line: 132, column: 110, scope: !1892, inlinedAt: !1990)
!1993 = !DILocation(line: 134, column: 7, scope: !1994, inlinedAt: !1990)
!1994 = !DILexicalBlockFile(scope: !1912, file: !1846, discriminator: 2)
!1995 = !DILocation(line: 134, column: 7, scope: !1996, inlinedAt: !1990)
!1996 = !DILexicalBlockFile(scope: !1892, file: !1846, discriminator: 2)
!1997 = !DILocation(line: 118, column: 41, scope: !1914, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 139, column: 16, scope: !1927, inlinedAt: !1990)
!1999 = !DILocation(line: 118, column: 90, scope: !1914, inlinedAt: !1998)
!2000 = !DILocation(line: 118, column: 100, scope: !1914, inlinedAt: !1998)
!2001 = !DILocation(line: 120, column: 7, scope: !1932, inlinedAt: !1998)
!2002 = !DILocation(line: 120, column: 7, scope: !1935, inlinedAt: !1998)
!2003 = !DILocation(line: 104, column: 41, scope: !1937, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 125, column: 16, scope: !1949, inlinedAt: !1998)
!2005 = !DILocation(line: 104, column: 80, scope: !1937, inlinedAt: !2004)
!2006 = !DILocation(line: 104, column: 90, scope: !1937, inlinedAt: !2004)
!2007 = !DILocation(line: 106, column: 7, scope: !1954, inlinedAt: !2004)
!2008 = !DILocation(line: 106, column: 7, scope: !1957, inlinedAt: !2004)
!2009 = !DILocation(line: 90, column: 41, scope: !1959, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 111, column: 16, scope: !1970, inlinedAt: !2004)
!2011 = !DILocation(line: 90, column: 70, scope: !1959, inlinedAt: !2010)
!2012 = !DILocation(line: 90, column: 80, scope: !1959, inlinedAt: !2010)
!2013 = !DILocation(line: 92, column: 7, scope: !1975, inlinedAt: !2010)
!2014 = !DILocation(line: 92, column: 7, scope: !1978, inlinedAt: !2010)
!2015 = !DILocalVariable(name: "s2", arg: 2, scope: !2016, file: !1846, line: 76, type: !6)
!2016 = distinct !DISubprogram(name: "strcaseeq6", scope: !1846, file: !1846, line: 76, type: !2017, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2019)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!25, !6, !6, !8, !8, !8}
!2019 = !{!2020, !2015, !2021, !2022, !2023}
!2020 = !DILocalVariable(name: "s1", arg: 1, scope: !2016, file: !1846, line: 76, type: !6)
!2021 = !DILocalVariable(name: "s26", arg: 3, scope: !2016, file: !1846, line: 76, type: !8)
!2022 = !DILocalVariable(name: "s27", arg: 4, scope: !2016, file: !1846, line: 76, type: !8)
!2023 = !DILocalVariable(name: "s28", arg: 5, scope: !2016, file: !1846, line: 76, type: !8)
!2024 = !DILocation(line: 76, column: 41, scope: !2016, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 97, column: 16, scope: !2026, inlinedAt: !2010)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !1846, line: 94, column: 11)
!2027 = distinct !DILexicalBlock(scope: !1976, file: !1846, line: 93, column: 5)
!2028 = !DILocation(line: 76, column: 60, scope: !2016, inlinedAt: !2025)
!2029 = !DILocation(line: 76, column: 70, scope: !2016, inlinedAt: !2025)
!2030 = !DILocation(line: 78, column: 7, scope: !2031, inlinedAt: !2025)
!2031 = !DILexicalBlockFile(scope: !2032, file: !1846, discriminator: 2)
!2032 = distinct !DILexicalBlock(scope: !2016, file: !1846, line: 78, column: 7)
!2033 = !DILocation(line: 78, column: 7, scope: !2034, inlinedAt: !2025)
!2034 = !DILexicalBlockFile(scope: !2016, file: !1846, discriminator: 2)
!2035 = !DILocalVariable(name: "s2", arg: 2, scope: !2036, file: !1846, line: 62, type: !6)
!2036 = distinct !DISubprogram(name: "strcaseeq7", scope: !1846, file: !1846, line: 62, type: !2037, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!25, !6, !6, !8, !8}
!2039 = !{!2040, !2035, !2041, !2042}
!2040 = !DILocalVariable(name: "s1", arg: 1, scope: !2036, file: !1846, line: 62, type: !6)
!2041 = !DILocalVariable(name: "s27", arg: 3, scope: !2036, file: !1846, line: 62, type: !8)
!2042 = !DILocalVariable(name: "s28", arg: 4, scope: !2036, file: !1846, line: 62, type: !8)
!2043 = !DILocation(line: 62, column: 41, scope: !2036, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 83, column: 16, scope: !2045, inlinedAt: !2025)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !1846, line: 80, column: 11)
!2046 = distinct !DILexicalBlock(scope: !2032, file: !1846, line: 79, column: 5)
!2047 = !DILocation(line: 62, column: 50, scope: !2036, inlinedAt: !2044)
!2048 = !DILocation(line: 62, column: 60, scope: !2036, inlinedAt: !2044)
!2049 = !DILocation(line: 64, column: 7, scope: !2050, inlinedAt: !2044)
!2050 = !DILexicalBlockFile(scope: !2051, file: !1846, discriminator: 2)
!2051 = distinct !DILexicalBlock(scope: !2036, file: !1846, line: 64, column: 7)
!2052 = !DILocation(line: 228, column: 7, scope: !1827)
!2053 = !DILocation(line: 229, column: 12, scope: !1985)
!2054 = !DILocation(line: 229, column: 21, scope: !1985)
!2055 = !DILocation(line: 229, column: 5, scope: !1985)
!2056 = !DILocation(line: 231, column: 13, scope: !1827)
!2057 = !DILocation(line: 231, column: 11, scope: !1827)
!2058 = !DILocation(line: 231, column: 3, scope: !1827)
!2059 = !DILocation(line: 232, column: 1, scope: !1827)
!2060 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !2061, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!50, !6, !94, !899}
!2063 = !{!2064, !2065, !2066}
!2064 = !DILocalVariable(name: "arg", arg: 1, scope: !2060, file: !100, line: 791, type: !6)
!2065 = !DILocalVariable(name: "argsize", arg: 2, scope: !2060, file: !100, line: 791, type: !94)
!2066 = !DILocalVariable(name: "o", arg: 3, scope: !2060, file: !100, line: 792, type: !899)
!2067 = !DILocation(line: 791, column: 29, scope: !2060)
!2068 = !DILocation(line: 791, column: 41, scope: !2060)
!2069 = !DILocation(line: 792, column: 47, scope: !2060)
!2070 = !DILocalVariable(name: "arg", arg: 1, scope: !2071, file: !100, line: 804, type: !6)
!2071 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !2072, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!50, !6, !94, !552, !899}
!2074 = !{!2070, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082}
!2075 = !DILocalVariable(name: "argsize", arg: 2, scope: !2071, file: !100, line: 804, type: !94)
!2076 = !DILocalVariable(name: "size", arg: 3, scope: !2071, file: !100, line: 804, type: !552)
!2077 = !DILocalVariable(name: "o", arg: 4, scope: !2071, file: !100, line: 805, type: !899)
!2078 = !DILocalVariable(name: "p", scope: !2071, file: !100, line: 807, type: !899)
!2079 = !DILocalVariable(name: "e", scope: !2071, file: !100, line: 808, type: !25)
!2080 = !DILocalVariable(name: "flags", scope: !2071, file: !100, line: 810, type: !25)
!2081 = !DILocalVariable(name: "bufsize", scope: !2071, file: !100, line: 811, type: !94)
!2082 = !DILocalVariable(name: "buf", scope: !2071, file: !100, line: 815, type: !50)
!2083 = !DILocation(line: 804, column: 33, scope: !2071, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 794, column: 10, scope: !2060)
!2085 = !DILocation(line: 804, column: 45, scope: !2071, inlinedAt: !2084)
!2086 = !DILocation(line: 804, column: 62, scope: !2071, inlinedAt: !2084)
!2087 = !DILocation(line: 805, column: 51, scope: !2071, inlinedAt: !2084)
!2088 = !DILocation(line: 807, column: 37, scope: !2071, inlinedAt: !2084)
!2089 = !DILocation(line: 807, column: 33, scope: !2071, inlinedAt: !2084)
!2090 = !DILocation(line: 808, column: 11, scope: !2071, inlinedAt: !2084)
!2091 = !DILocation(line: 808, column: 7, scope: !2071, inlinedAt: !2084)
!2092 = !DILocation(line: 810, column: 18, scope: !2071, inlinedAt: !2084)
!2093 = !DILocation(line: 810, column: 24, scope: !2071, inlinedAt: !2084)
!2094 = !DILocation(line: 810, column: 7, scope: !2071, inlinedAt: !2084)
!2095 = !DILocation(line: 811, column: 69, scope: !2071, inlinedAt: !2084)
!2096 = !DILocation(line: 812, column: 53, scope: !2071, inlinedAt: !2084)
!2097 = !DILocation(line: 813, column: 49, scope: !2071, inlinedAt: !2084)
!2098 = !DILocation(line: 814, column: 49, scope: !2071, inlinedAt: !2084)
!2099 = !DILocation(line: 811, column: 20, scope: !2071, inlinedAt: !2084)
!2100 = !DILocation(line: 814, column: 62, scope: !2071, inlinedAt: !2084)
!2101 = !DILocation(line: 811, column: 10, scope: !2071, inlinedAt: !2084)
!2102 = !DILocalVariable(name: "n", arg: 1, scope: !2103, file: !548, line: 220, type: !94)
!2103 = distinct !DISubprogram(name: "xcharalloc", scope: !548, file: !548, line: 220, type: !2104, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2106)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!50, !94}
!2106 = !{!2102}
!2107 = !DILocation(line: 220, column: 20, scope: !2103, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 815, column: 15, scope: !2071, inlinedAt: !2084)
!2109 = !DILocation(line: 222, column: 10, scope: !2103, inlinedAt: !2108)
!2110 = !DILocation(line: 815, column: 9, scope: !2071, inlinedAt: !2084)
!2111 = !DILocation(line: 816, column: 60, scope: !2071, inlinedAt: !2084)
!2112 = !DILocation(line: 818, column: 32, scope: !2071, inlinedAt: !2084)
!2113 = !DILocation(line: 818, column: 47, scope: !2071, inlinedAt: !2084)
!2114 = !DILocation(line: 816, column: 3, scope: !2071, inlinedAt: !2084)
!2115 = !DILocation(line: 819, column: 9, scope: !2071, inlinedAt: !2084)
!2116 = !DILocation(line: 794, column: 3, scope: !2060)
!2117 = !DILocation(line: 804, column: 33, scope: !2071)
!2118 = !DILocation(line: 804, column: 45, scope: !2071)
!2119 = !DILocation(line: 804, column: 62, scope: !2071)
!2120 = !DILocation(line: 805, column: 51, scope: !2071)
!2121 = !DILocation(line: 807, column: 37, scope: !2071)
!2122 = !DILocation(line: 807, column: 33, scope: !2071)
!2123 = !DILocation(line: 808, column: 11, scope: !2071)
!2124 = !DILocation(line: 808, column: 7, scope: !2071)
!2125 = !DILocation(line: 810, column: 18, scope: !2071)
!2126 = !DILocation(line: 810, column: 27, scope: !2071)
!2127 = !DILocation(line: 810, column: 24, scope: !2071)
!2128 = !DILocation(line: 810, column: 7, scope: !2071)
!2129 = !DILocation(line: 811, column: 69, scope: !2071)
!2130 = !DILocation(line: 812, column: 53, scope: !2071)
!2131 = !DILocation(line: 813, column: 49, scope: !2071)
!2132 = !DILocation(line: 814, column: 49, scope: !2071)
!2133 = !DILocation(line: 811, column: 20, scope: !2071)
!2134 = !DILocation(line: 814, column: 62, scope: !2071)
!2135 = !DILocation(line: 811, column: 10, scope: !2071)
!2136 = !DILocation(line: 220, column: 20, scope: !2103, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 815, column: 15, scope: !2071)
!2138 = !DILocation(line: 222, column: 10, scope: !2103, inlinedAt: !2137)
!2139 = !DILocation(line: 815, column: 9, scope: !2071)
!2140 = !DILocation(line: 816, column: 60, scope: !2071)
!2141 = !DILocation(line: 818, column: 32, scope: !2071)
!2142 = !DILocation(line: 818, column: 47, scope: !2071)
!2143 = !DILocation(line: 816, column: 3, scope: !2071)
!2144 = !DILocation(line: 819, column: 9, scope: !2071)
!2145 = !DILocation(line: 820, column: 7, scope: !2071)
!2146 = !DILocation(line: 821, column: 11, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2071, file: !100, line: 820, column: 7)
!2148 = !{!2149, !2149, i64 0}
!2149 = !{!"long", !599, i64 0}
!2150 = !DILocation(line: 821, column: 5, scope: !2147)
!2151 = !DILocation(line: 822, column: 3, scope: !2071)
!2152 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !738, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2153)
!2153 = !{!2154, !2155}
!2154 = !DILocalVariable(name: "sv", scope: !2152, file: !100, line: 842, type: !127)
!2155 = !DILocalVariable(name: "i", scope: !2152, file: !100, line: 843, type: !25)
!2156 = !DILocation(line: 842, column: 24, scope: !2152)
!2157 = !DILocation(line: 842, column: 19, scope: !2152)
!2158 = !DILocation(line: 843, column: 7, scope: !2152)
!2159 = !DILocation(line: 844, column: 19, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2161, file: !100, discriminator: 1)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !100, line: 844, column: 3)
!2162 = distinct !DILexicalBlock(scope: !2152, file: !100, line: 844, column: 3)
!2163 = !DILocation(line: 844, column: 17, scope: !2160)
!2164 = !DILocation(line: 844, column: 3, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2162, file: !100, discriminator: 1)
!2166 = !DILocation(line: 845, column: 17, scope: !2161)
!2167 = !{!2168, !598, i64 8}
!2168 = !{!"slotvec", !2149, i64 0, !598, i64 8}
!2169 = !DILocation(line: 845, column: 5, scope: !2161)
!2170 = !DILocation(line: 844, column: 28, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2161, file: !100, discriminator: 2)
!2172 = distinct !{!2172, !2173, !2174}
!2173 = !DILocation(line: 844, column: 3, scope: !2162)
!2174 = !DILocation(line: 845, column: 20, scope: !2162)
!2175 = !DILocation(line: 846, column: 13, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2152, file: !100, line: 846, column: 7)
!2177 = !DILocation(line: 846, column: 17, scope: !2176)
!2178 = !DILocation(line: 846, column: 7, scope: !2152)
!2179 = !DILocation(line: 848, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !100, line: 847, column: 5)
!2181 = !DILocation(line: 849, column: 21, scope: !2180)
!2182 = !{!2168, !2149, i64 0}
!2183 = !DILocation(line: 850, column: 20, scope: !2180)
!2184 = !DILocation(line: 851, column: 5, scope: !2180)
!2185 = !DILocation(line: 852, column: 10, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2152, file: !100, line: 852, column: 7)
!2187 = !DILocation(line: 852, column: 7, scope: !2152)
!2188 = !DILocation(line: 854, column: 13, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2186, file: !100, line: 853, column: 5)
!2190 = !DILocation(line: 854, column: 7, scope: !2189)
!2191 = !DILocation(line: 855, column: 15, scope: !2189)
!2192 = !DILocation(line: 856, column: 5, scope: !2189)
!2193 = !DILocation(line: 857, column: 10, scope: !2152)
!2194 = !DILocation(line: 858, column: 1, scope: !2152)
!2195 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !2196, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!50, !25, !6}
!2198 = !{!2199, !2200}
!2199 = !DILocalVariable(name: "n", arg: 1, scope: !2195, file: !100, line: 922, type: !25)
!2200 = !DILocalVariable(name: "arg", arg: 2, scope: !2195, file: !100, line: 922, type: !6)
!2201 = !DILocation(line: 922, column: 17, scope: !2195)
!2202 = !DILocation(line: 922, column: 32, scope: !2195)
!2203 = !DILocation(line: 924, column: 10, scope: !2195)
!2204 = !DILocation(line: 924, column: 3, scope: !2195)
!2205 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !2206, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!50, !25, !6, !94, !899}
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2214, !2215, !2218, !2220, !2221, !2222}
!2209 = !DILocalVariable(name: "n", arg: 1, scope: !2205, file: !100, line: 869, type: !25)
!2210 = !DILocalVariable(name: "arg", arg: 2, scope: !2205, file: !100, line: 869, type: !6)
!2211 = !DILocalVariable(name: "argsize", arg: 3, scope: !2205, file: !100, line: 869, type: !94)
!2212 = !DILocalVariable(name: "options", arg: 4, scope: !2205, file: !100, line: 870, type: !899)
!2213 = !DILocalVariable(name: "e", scope: !2205, file: !100, line: 872, type: !25)
!2214 = !DILocalVariable(name: "sv", scope: !2205, file: !100, line: 874, type: !127)
!2215 = !DILocalVariable(name: "preallocated", scope: !2216, file: !100, line: 881, type: !17)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !100, line: 880, column: 5)
!2217 = distinct !DILexicalBlock(scope: !2205, file: !100, line: 879, column: 7)
!2218 = !DILocalVariable(name: "size", scope: !2219, file: !100, line: 894, type: !94)
!2219 = distinct !DILexicalBlock(scope: !2205, file: !100, line: 893, column: 3)
!2220 = !DILocalVariable(name: "val", scope: !2219, file: !100, line: 895, type: !50)
!2221 = !DILocalVariable(name: "flags", scope: !2219, file: !100, line: 897, type: !25)
!2222 = !DILocalVariable(name: "qsize", scope: !2219, file: !100, line: 898, type: !94)
!2223 = !DILocation(line: 869, column: 25, scope: !2205)
!2224 = !DILocation(line: 869, column: 40, scope: !2205)
!2225 = !DILocation(line: 869, column: 52, scope: !2205)
!2226 = !DILocation(line: 870, column: 51, scope: !2205)
!2227 = !DILocation(line: 872, column: 11, scope: !2205)
!2228 = !DILocation(line: 872, column: 7, scope: !2205)
!2229 = !DILocation(line: 874, column: 24, scope: !2205)
!2230 = !DILocation(line: 874, column: 19, scope: !2205)
!2231 = !DILocation(line: 876, column: 9, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2205, file: !100, line: 876, column: 7)
!2233 = !DILocation(line: 876, column: 7, scope: !2205)
!2234 = !DILocation(line: 877, column: 5, scope: !2232)
!2235 = !DILocation(line: 879, column: 7, scope: !2217)
!2236 = !DILocation(line: 879, column: 14, scope: !2217)
!2237 = !DILocation(line: 879, column: 7, scope: !2205)
!2238 = !DILocation(line: 881, column: 31, scope: !2216)
!2239 = !DILocation(line: 883, column: 67, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2216, file: !100, line: 883, column: 11)
!2241 = !DILocation(line: 883, column: 11, scope: !2216)
!2242 = !DILocation(line: 884, column: 9, scope: !2240)
!2243 = !DILocation(line: 886, column: 32, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2216, file: !100, discriminator: 3)
!2245 = !DILocation(line: 886, column: 61, scope: !2244)
!2246 = !DILocation(line: 886, column: 58, scope: !2244)
!2247 = !DILocation(line: 886, column: 66, scope: !2244)
!2248 = !DILocation(line: 886, column: 22, scope: !2244)
!2249 = !DILocation(line: 886, column: 15, scope: !2244)
!2250 = !DILocation(line: 887, column: 11, scope: !2216)
!2251 = !DILocation(line: 888, column: 15, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2216, file: !100, line: 887, column: 11)
!2253 = !{i64 0, i64 8, !2148, i64 8, i64 8, !597}
!2254 = !DILocation(line: 888, column: 9, scope: !2252)
!2255 = !DILocation(line: 889, column: 20, scope: !2216)
!2256 = !DILocation(line: 889, column: 18, scope: !2216)
!2257 = !DILocation(line: 889, column: 7, scope: !2216)
!2258 = !DILocation(line: 889, column: 38, scope: !2216)
!2259 = !DILocation(line: 889, column: 31, scope: !2216)
!2260 = !DILocation(line: 889, column: 48, scope: !2216)
!2261 = !DILocation(line: 890, column: 14, scope: !2216)
!2262 = !DILocation(line: 891, column: 5, scope: !2216)
!2263 = !DILocation(line: 894, column: 19, scope: !2219)
!2264 = !DILocation(line: 894, column: 25, scope: !2219)
!2265 = !DILocation(line: 894, column: 12, scope: !2219)
!2266 = !DILocation(line: 895, column: 23, scope: !2219)
!2267 = !DILocation(line: 895, column: 11, scope: !2219)
!2268 = !DILocation(line: 897, column: 26, scope: !2219)
!2269 = !DILocation(line: 897, column: 32, scope: !2219)
!2270 = !DILocation(line: 897, column: 9, scope: !2219)
!2271 = !DILocation(line: 899, column: 55, scope: !2219)
!2272 = !DILocation(line: 900, column: 46, scope: !2219)
!2273 = !DILocation(line: 901, column: 55, scope: !2219)
!2274 = !DILocation(line: 902, column: 55, scope: !2219)
!2275 = !DILocation(line: 898, column: 20, scope: !2219)
!2276 = !DILocation(line: 898, column: 12, scope: !2219)
!2277 = !DILocation(line: 904, column: 14, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2219, file: !100, line: 904, column: 9)
!2279 = !DILocation(line: 904, column: 9, scope: !2219)
!2280 = !DILocation(line: 906, column: 35, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !100, line: 905, column: 7)
!2282 = !DILocation(line: 906, column: 20, scope: !2281)
!2283 = !DILocation(line: 907, column: 17, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2281, file: !100, line: 907, column: 13)
!2285 = !DILocation(line: 907, column: 13, scope: !2281)
!2286 = !DILocation(line: 908, column: 11, scope: !2284)
!2287 = !DILocation(line: 220, column: 20, scope: !2103, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 909, column: 27, scope: !2281)
!2289 = !DILocation(line: 222, column: 10, scope: !2103, inlinedAt: !2288)
!2290 = !DILocation(line: 909, column: 19, scope: !2281)
!2291 = !DILocation(line: 910, column: 69, scope: !2281)
!2292 = !DILocation(line: 912, column: 44, scope: !2281)
!2293 = !DILocation(line: 913, column: 44, scope: !2281)
!2294 = !DILocation(line: 910, column: 9, scope: !2281)
!2295 = !DILocation(line: 914, column: 7, scope: !2281)
!2296 = !DILocation(line: 916, column: 11, scope: !2219)
!2297 = !DILocation(line: 917, column: 5, scope: !2219)
!2298 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !2299, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!50, !25, !6, !94}
!2301 = !{!2302, !2303, !2304}
!2302 = !DILocalVariable(name: "n", arg: 1, scope: !2298, file: !100, line: 928, type: !25)
!2303 = !DILocalVariable(name: "arg", arg: 2, scope: !2298, file: !100, line: 928, type: !6)
!2304 = !DILocalVariable(name: "argsize", arg: 3, scope: !2298, file: !100, line: 928, type: !94)
!2305 = !DILocation(line: 928, column: 21, scope: !2298)
!2306 = !DILocation(line: 928, column: 36, scope: !2298)
!2307 = !DILocation(line: 928, column: 48, scope: !2298)
!2308 = !DILocation(line: 930, column: 10, scope: !2298)
!2309 = !DILocation(line: 930, column: 3, scope: !2298)
!2310 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !2311, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!50, !6}
!2313 = !{!2314}
!2314 = !DILocalVariable(name: "arg", arg: 1, scope: !2310, file: !100, line: 934, type: !6)
!2315 = !DILocation(line: 934, column: 23, scope: !2310)
!2316 = !DILocation(line: 922, column: 17, scope: !2195, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 936, column: 10, scope: !2310)
!2318 = !DILocation(line: 922, column: 32, scope: !2195, inlinedAt: !2317)
!2319 = !DILocation(line: 924, column: 10, scope: !2195, inlinedAt: !2317)
!2320 = !DILocation(line: 936, column: 3, scope: !2310)
!2321 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !2322, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!50, !6, !94}
!2324 = !{!2325, !2326}
!2325 = !DILocalVariable(name: "arg", arg: 1, scope: !2321, file: !100, line: 940, type: !6)
!2326 = !DILocalVariable(name: "argsize", arg: 2, scope: !2321, file: !100, line: 940, type: !94)
!2327 = !DILocation(line: 940, column: 27, scope: !2321)
!2328 = !DILocation(line: 940, column: 39, scope: !2321)
!2329 = !DILocation(line: 928, column: 21, scope: !2298, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 942, column: 10, scope: !2321)
!2331 = !DILocation(line: 928, column: 36, scope: !2298, inlinedAt: !2330)
!2332 = !DILocation(line: 928, column: 48, scope: !2298, inlinedAt: !2330)
!2333 = !DILocation(line: 930, column: 10, scope: !2298, inlinedAt: !2330)
!2334 = !DILocation(line: 942, column: 3, scope: !2321)
!2335 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !2336, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!50, !25, !58, !6}
!2338 = !{!2339, !2340, !2341, !2342}
!2339 = !DILocalVariable(name: "n", arg: 1, scope: !2335, file: !100, line: 946, type: !25)
!2340 = !DILocalVariable(name: "s", arg: 2, scope: !2335, file: !100, line: 946, type: !58)
!2341 = !DILocalVariable(name: "arg", arg: 3, scope: !2335, file: !100, line: 946, type: !6)
!2342 = !DILocalVariable(name: "o", scope: !2335, file: !100, line: 948, type: !900)
!2343 = !DILocalVariable(name: "o", scope: !2344, file: !100, line: 187, type: !107)
!2344 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2345, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!107, !58}
!2347 = !{!2348, !2343}
!2348 = !DILocalVariable(name: "style", arg: 1, scope: !2344, file: !100, line: 185, type: !58)
!2349 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2350 = !DILocation(line: 187, column: 26, scope: !2344, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 948, column: 36, scope: !2335)
!2352 = !DILocation(line: 946, column: 23, scope: !2335)
!2353 = !DILocation(line: 946, column: 45, scope: !2335)
!2354 = !DILocation(line: 946, column: 60, scope: !2335)
!2355 = !DILocation(line: 948, column: 3, scope: !2335)
!2356 = !DILocation(line: 948, column: 32, scope: !2335)
!2357 = !DILocation(line: 185, column: 48, scope: !2344, inlinedAt: !2351)
!2358 = !DILocation(line: 187, column: 3, scope: !2344, inlinedAt: !2351)
!2359 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2360 = !DILocation(line: 188, column: 13, scope: !2361, inlinedAt: !2351)
!2361 = distinct !DILexicalBlock(scope: !2344, file: !100, line: 188, column: 7)
!2362 = !DILocation(line: 188, column: 7, scope: !2344, inlinedAt: !2351)
!2363 = !DILocation(line: 189, column: 5, scope: !2361, inlinedAt: !2351)
!2364 = !{!2365}
!2365 = distinct !{!2365, !2366, !"quoting_options_from_style: argument 0"}
!2366 = distinct !{!2366, !"quoting_options_from_style"}
!2367 = !DILocation(line: 191, column: 10, scope: !2344, inlinedAt: !2351)
!2368 = !DILocation(line: 192, column: 1, scope: !2344, inlinedAt: !2351)
!2369 = !DILocation(line: 949, column: 10, scope: !2335)
!2370 = !DILocation(line: 950, column: 1, scope: !2335)
!2371 = !DILocation(line: 949, column: 3, scope: !2335)
!2372 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2373, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!50, !25, !58, !6, !94}
!2375 = !{!2376, !2377, !2378, !2379, !2380}
!2376 = !DILocalVariable(name: "n", arg: 1, scope: !2372, file: !100, line: 953, type: !25)
!2377 = !DILocalVariable(name: "s", arg: 2, scope: !2372, file: !100, line: 953, type: !58)
!2378 = !DILocalVariable(name: "arg", arg: 3, scope: !2372, file: !100, line: 954, type: !6)
!2379 = !DILocalVariable(name: "argsize", arg: 4, scope: !2372, file: !100, line: 954, type: !94)
!2380 = !DILocalVariable(name: "o", scope: !2372, file: !100, line: 956, type: !900)
!2381 = !DILocation(line: 187, column: 26, scope: !2344, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 956, column: 36, scope: !2372)
!2383 = !DILocation(line: 953, column: 27, scope: !2372)
!2384 = !DILocation(line: 953, column: 49, scope: !2372)
!2385 = !DILocation(line: 954, column: 35, scope: !2372)
!2386 = !DILocation(line: 954, column: 47, scope: !2372)
!2387 = !DILocation(line: 956, column: 3, scope: !2372)
!2388 = !DILocation(line: 956, column: 32, scope: !2372)
!2389 = !DILocation(line: 185, column: 48, scope: !2344, inlinedAt: !2382)
!2390 = !DILocation(line: 187, column: 3, scope: !2344, inlinedAt: !2382)
!2391 = !DILocation(line: 188, column: 13, scope: !2361, inlinedAt: !2382)
!2392 = !DILocation(line: 188, column: 7, scope: !2344, inlinedAt: !2382)
!2393 = !DILocation(line: 189, column: 5, scope: !2361, inlinedAt: !2382)
!2394 = !{!2395}
!2395 = distinct !{!2395, !2396, !"quoting_options_from_style: argument 0"}
!2396 = distinct !{!2396, !"quoting_options_from_style"}
!2397 = !DILocation(line: 191, column: 10, scope: !2344, inlinedAt: !2382)
!2398 = !DILocation(line: 192, column: 1, scope: !2344, inlinedAt: !2382)
!2399 = !DILocation(line: 957, column: 10, scope: !2372)
!2400 = !DILocation(line: 958, column: 1, scope: !2372)
!2401 = !DILocation(line: 957, column: 3, scope: !2372)
!2402 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2403, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!50, !58, !6}
!2405 = !{!2406, !2407}
!2406 = !DILocalVariable(name: "s", arg: 1, scope: !2402, file: !100, line: 961, type: !58)
!2407 = !DILocalVariable(name: "arg", arg: 2, scope: !2402, file: !100, line: 961, type: !6)
!2408 = !DILocation(line: 187, column: 26, scope: !2344, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 948, column: 36, scope: !2335, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 963, column: 10, scope: !2402)
!2411 = !DILocation(line: 961, column: 36, scope: !2402)
!2412 = !DILocation(line: 961, column: 51, scope: !2402)
!2413 = !DILocation(line: 946, column: 23, scope: !2335, inlinedAt: !2410)
!2414 = !DILocation(line: 946, column: 45, scope: !2335, inlinedAt: !2410)
!2415 = !DILocation(line: 946, column: 60, scope: !2335, inlinedAt: !2410)
!2416 = !DILocation(line: 948, column: 3, scope: !2335, inlinedAt: !2410)
!2417 = !DILocation(line: 948, column: 32, scope: !2335, inlinedAt: !2410)
!2418 = !DILocation(line: 185, column: 48, scope: !2344, inlinedAt: !2409)
!2419 = !DILocation(line: 187, column: 3, scope: !2344, inlinedAt: !2409)
!2420 = !DILocation(line: 188, column: 13, scope: !2361, inlinedAt: !2409)
!2421 = !DILocation(line: 188, column: 7, scope: !2344, inlinedAt: !2409)
!2422 = !DILocation(line: 189, column: 5, scope: !2361, inlinedAt: !2409)
!2423 = !{!2424}
!2424 = distinct !{!2424, !2425, !"quoting_options_from_style: argument 0"}
!2425 = distinct !{!2425, !"quoting_options_from_style"}
!2426 = !DILocation(line: 191, column: 10, scope: !2344, inlinedAt: !2409)
!2427 = !DILocation(line: 192, column: 1, scope: !2344, inlinedAt: !2409)
!2428 = !DILocation(line: 949, column: 10, scope: !2335, inlinedAt: !2410)
!2429 = !DILocation(line: 950, column: 1, scope: !2335, inlinedAt: !2410)
!2430 = !DILocation(line: 963, column: 3, scope: !2402)
!2431 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2432, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!50, !58, !6, !94}
!2434 = !{!2435, !2436, !2437}
!2435 = !DILocalVariable(name: "s", arg: 1, scope: !2431, file: !100, line: 967, type: !58)
!2436 = !DILocalVariable(name: "arg", arg: 2, scope: !2431, file: !100, line: 967, type: !6)
!2437 = !DILocalVariable(name: "argsize", arg: 3, scope: !2431, file: !100, line: 967, type: !94)
!2438 = !DILocation(line: 187, column: 26, scope: !2344, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 956, column: 36, scope: !2372, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 969, column: 10, scope: !2431)
!2441 = !DILocation(line: 967, column: 40, scope: !2431)
!2442 = !DILocation(line: 967, column: 55, scope: !2431)
!2443 = !DILocation(line: 967, column: 67, scope: !2431)
!2444 = !DILocation(line: 953, column: 27, scope: !2372, inlinedAt: !2440)
!2445 = !DILocation(line: 953, column: 49, scope: !2372, inlinedAt: !2440)
!2446 = !DILocation(line: 954, column: 35, scope: !2372, inlinedAt: !2440)
!2447 = !DILocation(line: 954, column: 47, scope: !2372, inlinedAt: !2440)
!2448 = !DILocation(line: 956, column: 3, scope: !2372, inlinedAt: !2440)
!2449 = !DILocation(line: 956, column: 32, scope: !2372, inlinedAt: !2440)
!2450 = !DILocation(line: 185, column: 48, scope: !2344, inlinedAt: !2439)
!2451 = !DILocation(line: 187, column: 3, scope: !2344, inlinedAt: !2439)
!2452 = !DILocation(line: 188, column: 13, scope: !2361, inlinedAt: !2439)
!2453 = !DILocation(line: 188, column: 7, scope: !2344, inlinedAt: !2439)
!2454 = !DILocation(line: 189, column: 5, scope: !2361, inlinedAt: !2439)
!2455 = !{!2456}
!2456 = distinct !{!2456, !2457, !"quoting_options_from_style: argument 0"}
!2457 = distinct !{!2457, !"quoting_options_from_style"}
!2458 = !DILocation(line: 191, column: 10, scope: !2344, inlinedAt: !2439)
!2459 = !DILocation(line: 192, column: 1, scope: !2344, inlinedAt: !2439)
!2460 = !DILocation(line: 957, column: 10, scope: !2372, inlinedAt: !2440)
!2461 = !DILocation(line: 958, column: 1, scope: !2372, inlinedAt: !2440)
!2462 = !DILocation(line: 969, column: 3, scope: !2431)
!2463 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2464, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!50, !6, !94, !8}
!2466 = !{!2467, !2468, !2469, !2470}
!2467 = !DILocalVariable(name: "arg", arg: 1, scope: !2463, file: !100, line: 973, type: !6)
!2468 = !DILocalVariable(name: "argsize", arg: 2, scope: !2463, file: !100, line: 973, type: !94)
!2469 = !DILocalVariable(name: "ch", arg: 3, scope: !2463, file: !100, line: 973, type: !8)
!2470 = !DILocalVariable(name: "options", scope: !2463, file: !100, line: 975, type: !107)
!2471 = !DILocation(line: 973, column: 32, scope: !2463)
!2472 = !DILocation(line: 973, column: 44, scope: !2463)
!2473 = !DILocation(line: 973, column: 58, scope: !2463)
!2474 = !DILocation(line: 975, column: 3, scope: !2463)
!2475 = !DILocation(line: 976, column: 13, scope: !2463)
!2476 = !{i64 0, i64 4, !1134, i64 4, i64 4, !682, i64 8, i64 32, !1134, i64 40, i64 8, !597, i64 48, i64 8, !597}
!2477 = !DILocation(line: 975, column: 26, scope: !2463)
!2478 = !DILocation(line: 144, column: 43, scope: !923, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 977, column: 3, scope: !2463)
!2480 = !DILocation(line: 144, column: 51, scope: !923, inlinedAt: !2479)
!2481 = !DILocation(line: 144, column: 58, scope: !923, inlinedAt: !2479)
!2482 = !DILocation(line: 146, column: 17, scope: !923, inlinedAt: !2479)
!2483 = !DILocation(line: 148, column: 62, scope: !941, inlinedAt: !2479)
!2484 = !DILocation(line: 148, column: 57, scope: !941, inlinedAt: !2479)
!2485 = !DILocation(line: 147, column: 17, scope: !923, inlinedAt: !2479)
!2486 = !DILocation(line: 149, column: 18, scope: !923, inlinedAt: !2479)
!2487 = !DILocation(line: 149, column: 15, scope: !923, inlinedAt: !2479)
!2488 = !DILocation(line: 149, column: 7, scope: !923, inlinedAt: !2479)
!2489 = !DILocation(line: 150, column: 12, scope: !923, inlinedAt: !2479)
!2490 = !DILocation(line: 150, column: 15, scope: !923, inlinedAt: !2479)
!2491 = !DILocation(line: 150, column: 25, scope: !923, inlinedAt: !2479)
!2492 = !DILocation(line: 150, column: 7, scope: !923, inlinedAt: !2479)
!2493 = !DILocation(line: 151, column: 18, scope: !923, inlinedAt: !2479)
!2494 = !DILocation(line: 151, column: 23, scope: !923, inlinedAt: !2479)
!2495 = !DILocation(line: 151, column: 6, scope: !923, inlinedAt: !2479)
!2496 = !DILocation(line: 978, column: 10, scope: !2463)
!2497 = !DILocation(line: 979, column: 1, scope: !2463)
!2498 = !DILocation(line: 978, column: 3, scope: !2463)
!2499 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2500, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!50, !6, !8}
!2502 = !{!2503, !2504}
!2503 = !DILocalVariable(name: "arg", arg: 1, scope: !2499, file: !100, line: 982, type: !6)
!2504 = !DILocalVariable(name: "ch", arg: 2, scope: !2499, file: !100, line: 982, type: !8)
!2505 = !DILocation(line: 982, column: 28, scope: !2499)
!2506 = !DILocation(line: 982, column: 38, scope: !2499)
!2507 = !DILocation(line: 973, column: 32, scope: !2463, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 984, column: 10, scope: !2499)
!2509 = !DILocation(line: 973, column: 44, scope: !2463, inlinedAt: !2508)
!2510 = !DILocation(line: 973, column: 58, scope: !2463, inlinedAt: !2508)
!2511 = !DILocation(line: 975, column: 3, scope: !2463, inlinedAt: !2508)
!2512 = !DILocation(line: 976, column: 13, scope: !2463, inlinedAt: !2508)
!2513 = !DILocation(line: 975, column: 26, scope: !2463, inlinedAt: !2508)
!2514 = !DILocation(line: 144, column: 43, scope: !923, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 977, column: 3, scope: !2463, inlinedAt: !2508)
!2516 = !DILocation(line: 144, column: 51, scope: !923, inlinedAt: !2515)
!2517 = !DILocation(line: 144, column: 58, scope: !923, inlinedAt: !2515)
!2518 = !DILocation(line: 146, column: 17, scope: !923, inlinedAt: !2515)
!2519 = !DILocation(line: 148, column: 62, scope: !941, inlinedAt: !2515)
!2520 = !DILocation(line: 148, column: 57, scope: !941, inlinedAt: !2515)
!2521 = !DILocation(line: 147, column: 17, scope: !923, inlinedAt: !2515)
!2522 = !DILocation(line: 149, column: 18, scope: !923, inlinedAt: !2515)
!2523 = !DILocation(line: 149, column: 15, scope: !923, inlinedAt: !2515)
!2524 = !DILocation(line: 149, column: 7, scope: !923, inlinedAt: !2515)
!2525 = !DILocation(line: 150, column: 12, scope: !923, inlinedAt: !2515)
!2526 = !DILocation(line: 150, column: 15, scope: !923, inlinedAt: !2515)
!2527 = !DILocation(line: 150, column: 25, scope: !923, inlinedAt: !2515)
!2528 = !DILocation(line: 150, column: 7, scope: !923, inlinedAt: !2515)
!2529 = !DILocation(line: 151, column: 18, scope: !923, inlinedAt: !2515)
!2530 = !DILocation(line: 151, column: 23, scope: !923, inlinedAt: !2515)
!2531 = !DILocation(line: 151, column: 6, scope: !923, inlinedAt: !2515)
!2532 = !DILocation(line: 978, column: 10, scope: !2463, inlinedAt: !2508)
!2533 = !DILocation(line: 979, column: 1, scope: !2463, inlinedAt: !2508)
!2534 = !DILocation(line: 984, column: 3, scope: !2499)
!2535 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !2311, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2536)
!2536 = !{!2537}
!2537 = !DILocalVariable(name: "arg", arg: 1, scope: !2535, file: !100, line: 988, type: !6)
!2538 = !DILocation(line: 988, column: 29, scope: !2535)
!2539 = !DILocation(line: 982, column: 28, scope: !2499, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 990, column: 10, scope: !2535)
!2541 = !DILocation(line: 982, column: 38, scope: !2499, inlinedAt: !2540)
!2542 = !DILocation(line: 973, column: 32, scope: !2463, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 984, column: 10, scope: !2499, inlinedAt: !2540)
!2544 = !DILocation(line: 973, column: 44, scope: !2463, inlinedAt: !2543)
!2545 = !DILocation(line: 973, column: 58, scope: !2463, inlinedAt: !2543)
!2546 = !DILocation(line: 975, column: 3, scope: !2463, inlinedAt: !2543)
!2547 = !DILocation(line: 976, column: 13, scope: !2463, inlinedAt: !2543)
!2548 = !DILocation(line: 975, column: 26, scope: !2463, inlinedAt: !2543)
!2549 = !DILocation(line: 144, column: 43, scope: !923, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 977, column: 3, scope: !2463, inlinedAt: !2543)
!2551 = !DILocation(line: 144, column: 51, scope: !923, inlinedAt: !2550)
!2552 = !DILocation(line: 144, column: 58, scope: !923, inlinedAt: !2550)
!2553 = !DILocation(line: 146, column: 17, scope: !923, inlinedAt: !2550)
!2554 = !DILocation(line: 148, column: 57, scope: !941, inlinedAt: !2550)
!2555 = !DILocation(line: 147, column: 17, scope: !923, inlinedAt: !2550)
!2556 = !DILocation(line: 149, column: 7, scope: !923, inlinedAt: !2550)
!2557 = !DILocation(line: 150, column: 12, scope: !923, inlinedAt: !2550)
!2558 = !DILocation(line: 151, column: 6, scope: !923, inlinedAt: !2550)
!2559 = !DILocation(line: 978, column: 10, scope: !2463, inlinedAt: !2543)
!2560 = !DILocation(line: 979, column: 1, scope: !2463, inlinedAt: !2543)
!2561 = !DILocation(line: 990, column: 3, scope: !2535)
!2562 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !2322, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2563)
!2563 = !{!2564, !2565}
!2564 = !DILocalVariable(name: "arg", arg: 1, scope: !2562, file: !100, line: 994, type: !6)
!2565 = !DILocalVariable(name: "argsize", arg: 2, scope: !2562, file: !100, line: 994, type: !94)
!2566 = !DILocation(line: 994, column: 33, scope: !2562)
!2567 = !DILocation(line: 994, column: 45, scope: !2562)
!2568 = !DILocation(line: 973, column: 32, scope: !2463, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 996, column: 10, scope: !2562)
!2570 = !DILocation(line: 973, column: 44, scope: !2463, inlinedAt: !2569)
!2571 = !DILocation(line: 973, column: 58, scope: !2463, inlinedAt: !2569)
!2572 = !DILocation(line: 975, column: 3, scope: !2463, inlinedAt: !2569)
!2573 = !DILocation(line: 976, column: 13, scope: !2463, inlinedAt: !2569)
!2574 = !DILocation(line: 975, column: 26, scope: !2463, inlinedAt: !2569)
!2575 = !DILocation(line: 144, column: 43, scope: !923, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 977, column: 3, scope: !2463, inlinedAt: !2569)
!2577 = !DILocation(line: 144, column: 51, scope: !923, inlinedAt: !2576)
!2578 = !DILocation(line: 144, column: 58, scope: !923, inlinedAt: !2576)
!2579 = !DILocation(line: 146, column: 17, scope: !923, inlinedAt: !2576)
!2580 = !DILocation(line: 148, column: 57, scope: !941, inlinedAt: !2576)
!2581 = !DILocation(line: 147, column: 17, scope: !923, inlinedAt: !2576)
!2582 = !DILocation(line: 149, column: 7, scope: !923, inlinedAt: !2576)
!2583 = !DILocation(line: 150, column: 12, scope: !923, inlinedAt: !2576)
!2584 = !DILocation(line: 151, column: 6, scope: !923, inlinedAt: !2576)
!2585 = !DILocation(line: 978, column: 10, scope: !2463, inlinedAt: !2569)
!2586 = !DILocation(line: 979, column: 1, scope: !2463, inlinedAt: !2569)
!2587 = !DILocation(line: 996, column: 3, scope: !2562)
!2588 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !2336, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2589)
!2589 = !{!2590, !2591, !2592, !2593}
!2590 = !DILocalVariable(name: "n", arg: 1, scope: !2588, file: !100, line: 1000, type: !25)
!2591 = !DILocalVariable(name: "s", arg: 2, scope: !2588, file: !100, line: 1000, type: !58)
!2592 = !DILocalVariable(name: "arg", arg: 3, scope: !2588, file: !100, line: 1000, type: !6)
!2593 = !DILocalVariable(name: "options", scope: !2588, file: !100, line: 1002, type: !107)
!2594 = !DILocation(line: 187, column: 26, scope: !2344, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 1003, column: 13, scope: !2588)
!2596 = !DILocation(line: 1000, column: 29, scope: !2588)
!2597 = !DILocation(line: 1000, column: 51, scope: !2588)
!2598 = !DILocation(line: 1000, column: 66, scope: !2588)
!2599 = !DILocation(line: 1002, column: 3, scope: !2588)
!2600 = !DILocation(line: 185, column: 48, scope: !2344, inlinedAt: !2595)
!2601 = !DILocation(line: 187, column: 3, scope: !2344, inlinedAt: !2595)
!2602 = !DILocation(line: 188, column: 13, scope: !2361, inlinedAt: !2595)
!2603 = !DILocation(line: 188, column: 7, scope: !2344, inlinedAt: !2595)
!2604 = !DILocation(line: 189, column: 5, scope: !2361, inlinedAt: !2595)
!2605 = !{!2606}
!2606 = distinct !{!2606, !2607, !"quoting_options_from_style: argument 0"}
!2607 = distinct !{!2607, !"quoting_options_from_style"}
!2608 = !DILocation(line: 191, column: 10, scope: !2344, inlinedAt: !2595)
!2609 = !DILocation(line: 192, column: 1, scope: !2344, inlinedAt: !2595)
!2610 = !DILocation(line: 1003, column: 13, scope: !2588)
!2611 = !DILocation(line: 1002, column: 26, scope: !2588)
!2612 = !DILocation(line: 144, column: 43, scope: !923, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 1004, column: 3, scope: !2588)
!2614 = !DILocation(line: 144, column: 51, scope: !923, inlinedAt: !2613)
!2615 = !DILocation(line: 144, column: 58, scope: !923, inlinedAt: !2613)
!2616 = !DILocation(line: 146, column: 17, scope: !923, inlinedAt: !2613)
!2617 = !DILocation(line: 148, column: 57, scope: !941, inlinedAt: !2613)
!2618 = !DILocation(line: 147, column: 17, scope: !923, inlinedAt: !2613)
!2619 = !DILocation(line: 149, column: 7, scope: !923, inlinedAt: !2613)
!2620 = !DILocation(line: 150, column: 12, scope: !923, inlinedAt: !2613)
!2621 = !DILocation(line: 151, column: 6, scope: !923, inlinedAt: !2613)
!2622 = !DILocation(line: 1005, column: 10, scope: !2588)
!2623 = !DILocation(line: 1006, column: 1, scope: !2588)
!2624 = !DILocation(line: 1005, column: 3, scope: !2588)
!2625 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2626, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!50, !25, !6, !6, !6}
!2628 = !{!2629, !2630, !2631, !2632}
!2629 = !DILocalVariable(name: "n", arg: 1, scope: !2625, file: !100, line: 1009, type: !25)
!2630 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2625, file: !100, line: 1009, type: !6)
!2631 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2625, file: !100, line: 1010, type: !6)
!2632 = !DILocalVariable(name: "arg", arg: 4, scope: !2625, file: !100, line: 1010, type: !6)
!2633 = !DILocation(line: 1009, column: 24, scope: !2625)
!2634 = !DILocation(line: 1009, column: 39, scope: !2625)
!2635 = !DILocation(line: 1010, column: 32, scope: !2625)
!2636 = !DILocation(line: 1010, column: 57, scope: !2625)
!2637 = !DILocalVariable(name: "n", arg: 1, scope: !2638, file: !100, line: 1017, type: !25)
!2638 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2639, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!50, !25, !6, !6, !6, !94}
!2641 = !{!2637, !2642, !2643, !2644, !2645, !2646}
!2642 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2638, file: !100, line: 1017, type: !6)
!2643 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2638, file: !100, line: 1018, type: !6)
!2644 = !DILocalVariable(name: "arg", arg: 4, scope: !2638, file: !100, line: 1019, type: !6)
!2645 = !DILocalVariable(name: "argsize", arg: 5, scope: !2638, file: !100, line: 1019, type: !94)
!2646 = !DILocalVariable(name: "o", scope: !2638, file: !100, line: 1021, type: !107)
!2647 = !DILocation(line: 1017, column: 28, scope: !2638, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1012, column: 10, scope: !2625)
!2649 = !DILocation(line: 1017, column: 43, scope: !2638, inlinedAt: !2648)
!2650 = !DILocation(line: 1018, column: 36, scope: !2638, inlinedAt: !2648)
!2651 = !DILocation(line: 1019, column: 36, scope: !2638, inlinedAt: !2648)
!2652 = !DILocation(line: 1019, column: 48, scope: !2638, inlinedAt: !2648)
!2653 = !DILocation(line: 1021, column: 3, scope: !2638, inlinedAt: !2648)
!2654 = !DILocation(line: 1021, column: 30, scope: !2638, inlinedAt: !2648)
!2655 = !DILocation(line: 1021, column: 26, scope: !2638, inlinedAt: !2648)
!2656 = !DILocation(line: 171, column: 45, scope: !973, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 1022, column: 3, scope: !2638, inlinedAt: !2648)
!2658 = !DILocation(line: 172, column: 33, scope: !973, inlinedAt: !2657)
!2659 = !DILocation(line: 172, column: 57, scope: !973, inlinedAt: !2657)
!2660 = !DILocation(line: 176, column: 6, scope: !973, inlinedAt: !2657)
!2661 = !DILocation(line: 176, column: 12, scope: !973, inlinedAt: !2657)
!2662 = !DILocation(line: 177, column: 8, scope: !989, inlinedAt: !2657)
!2663 = !DILocation(line: 177, column: 23, scope: !991, inlinedAt: !2657)
!2664 = !DILocation(line: 177, column: 19, scope: !989, inlinedAt: !2657)
!2665 = !DILocation(line: 178, column: 5, scope: !989, inlinedAt: !2657)
!2666 = !DILocation(line: 179, column: 6, scope: !973, inlinedAt: !2657)
!2667 = !DILocation(line: 179, column: 17, scope: !973, inlinedAt: !2657)
!2668 = !DILocation(line: 180, column: 6, scope: !973, inlinedAt: !2657)
!2669 = !DILocation(line: 180, column: 18, scope: !973, inlinedAt: !2657)
!2670 = !DILocation(line: 1023, column: 10, scope: !2638, inlinedAt: !2648)
!2671 = !DILocation(line: 1024, column: 1, scope: !2638, inlinedAt: !2648)
!2672 = !DILocation(line: 1012, column: 3, scope: !2625)
!2673 = !DILocation(line: 1017, column: 28, scope: !2638)
!2674 = !DILocation(line: 1017, column: 43, scope: !2638)
!2675 = !DILocation(line: 1018, column: 36, scope: !2638)
!2676 = !DILocation(line: 1019, column: 36, scope: !2638)
!2677 = !DILocation(line: 1019, column: 48, scope: !2638)
!2678 = !DILocation(line: 1021, column: 3, scope: !2638)
!2679 = !DILocation(line: 1021, column: 30, scope: !2638)
!2680 = !DILocation(line: 1021, column: 26, scope: !2638)
!2681 = !DILocation(line: 171, column: 45, scope: !973, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1022, column: 3, scope: !2638)
!2683 = !DILocation(line: 172, column: 33, scope: !973, inlinedAt: !2682)
!2684 = !DILocation(line: 172, column: 57, scope: !973, inlinedAt: !2682)
!2685 = !DILocation(line: 176, column: 6, scope: !973, inlinedAt: !2682)
!2686 = !DILocation(line: 176, column: 12, scope: !973, inlinedAt: !2682)
!2687 = !DILocation(line: 177, column: 8, scope: !989, inlinedAt: !2682)
!2688 = !DILocation(line: 177, column: 23, scope: !991, inlinedAt: !2682)
!2689 = !DILocation(line: 177, column: 19, scope: !989, inlinedAt: !2682)
!2690 = !DILocation(line: 178, column: 5, scope: !989, inlinedAt: !2682)
!2691 = !DILocation(line: 179, column: 6, scope: !973, inlinedAt: !2682)
!2692 = !DILocation(line: 179, column: 17, scope: !973, inlinedAt: !2682)
!2693 = !DILocation(line: 180, column: 6, scope: !973, inlinedAt: !2682)
!2694 = !DILocation(line: 180, column: 18, scope: !973, inlinedAt: !2682)
!2695 = !DILocation(line: 1023, column: 10, scope: !2638)
!2696 = !DILocation(line: 1024, column: 1, scope: !2638)
!2697 = !DILocation(line: 1023, column: 3, scope: !2638)
!2698 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2699, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!50, !6, !6, !6}
!2701 = !{!2702, !2703, !2704}
!2702 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2698, file: !100, line: 1027, type: !6)
!2703 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2698, file: !100, line: 1027, type: !6)
!2704 = !DILocalVariable(name: "arg", arg: 3, scope: !2698, file: !100, line: 1028, type: !6)
!2705 = !DILocation(line: 1027, column: 30, scope: !2698)
!2706 = !DILocation(line: 1027, column: 54, scope: !2698)
!2707 = !DILocation(line: 1028, column: 30, scope: !2698)
!2708 = !DILocation(line: 1009, column: 24, scope: !2625, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 1030, column: 10, scope: !2698)
!2710 = !DILocation(line: 1009, column: 39, scope: !2625, inlinedAt: !2709)
!2711 = !DILocation(line: 1010, column: 32, scope: !2625, inlinedAt: !2709)
!2712 = !DILocation(line: 1010, column: 57, scope: !2625, inlinedAt: !2709)
!2713 = !DILocation(line: 1017, column: 28, scope: !2638, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 1012, column: 10, scope: !2625, inlinedAt: !2709)
!2715 = !DILocation(line: 1017, column: 43, scope: !2638, inlinedAt: !2714)
!2716 = !DILocation(line: 1018, column: 36, scope: !2638, inlinedAt: !2714)
!2717 = !DILocation(line: 1019, column: 36, scope: !2638, inlinedAt: !2714)
!2718 = !DILocation(line: 1019, column: 48, scope: !2638, inlinedAt: !2714)
!2719 = !DILocation(line: 1021, column: 3, scope: !2638, inlinedAt: !2714)
!2720 = !DILocation(line: 1021, column: 30, scope: !2638, inlinedAt: !2714)
!2721 = !DILocation(line: 1021, column: 26, scope: !2638, inlinedAt: !2714)
!2722 = !DILocation(line: 171, column: 45, scope: !973, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 1022, column: 3, scope: !2638, inlinedAt: !2714)
!2724 = !DILocation(line: 172, column: 33, scope: !973, inlinedAt: !2723)
!2725 = !DILocation(line: 172, column: 57, scope: !973, inlinedAt: !2723)
!2726 = !DILocation(line: 176, column: 6, scope: !973, inlinedAt: !2723)
!2727 = !DILocation(line: 176, column: 12, scope: !973, inlinedAt: !2723)
!2728 = !DILocation(line: 177, column: 8, scope: !989, inlinedAt: !2723)
!2729 = !DILocation(line: 177, column: 23, scope: !991, inlinedAt: !2723)
!2730 = !DILocation(line: 177, column: 19, scope: !989, inlinedAt: !2723)
!2731 = !DILocation(line: 178, column: 5, scope: !989, inlinedAt: !2723)
!2732 = !DILocation(line: 179, column: 6, scope: !973, inlinedAt: !2723)
!2733 = !DILocation(line: 179, column: 17, scope: !973, inlinedAt: !2723)
!2734 = !DILocation(line: 180, column: 6, scope: !973, inlinedAt: !2723)
!2735 = !DILocation(line: 180, column: 18, scope: !973, inlinedAt: !2723)
!2736 = !DILocation(line: 1023, column: 10, scope: !2638, inlinedAt: !2714)
!2737 = !DILocation(line: 1024, column: 1, scope: !2638, inlinedAt: !2714)
!2738 = !DILocation(line: 1030, column: 3, scope: !2698)
!2739 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2740, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!50, !6, !6, !6, !94}
!2742 = !{!2743, !2744, !2745, !2746}
!2743 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2739, file: !100, line: 1034, type: !6)
!2744 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2739, file: !100, line: 1034, type: !6)
!2745 = !DILocalVariable(name: "arg", arg: 3, scope: !2739, file: !100, line: 1035, type: !6)
!2746 = !DILocalVariable(name: "argsize", arg: 4, scope: !2739, file: !100, line: 1035, type: !94)
!2747 = !DILocation(line: 1034, column: 34, scope: !2739)
!2748 = !DILocation(line: 1034, column: 58, scope: !2739)
!2749 = !DILocation(line: 1035, column: 34, scope: !2739)
!2750 = !DILocation(line: 1035, column: 46, scope: !2739)
!2751 = !DILocation(line: 1017, column: 28, scope: !2638, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 1037, column: 10, scope: !2739)
!2753 = !DILocation(line: 1017, column: 43, scope: !2638, inlinedAt: !2752)
!2754 = !DILocation(line: 1018, column: 36, scope: !2638, inlinedAt: !2752)
!2755 = !DILocation(line: 1019, column: 36, scope: !2638, inlinedAt: !2752)
!2756 = !DILocation(line: 1019, column: 48, scope: !2638, inlinedAt: !2752)
!2757 = !DILocation(line: 1021, column: 3, scope: !2638, inlinedAt: !2752)
!2758 = !DILocation(line: 1021, column: 30, scope: !2638, inlinedAt: !2752)
!2759 = !DILocation(line: 1021, column: 26, scope: !2638, inlinedAt: !2752)
!2760 = !DILocation(line: 171, column: 45, scope: !973, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1022, column: 3, scope: !2638, inlinedAt: !2752)
!2762 = !DILocation(line: 172, column: 33, scope: !973, inlinedAt: !2761)
!2763 = !DILocation(line: 172, column: 57, scope: !973, inlinedAt: !2761)
!2764 = !DILocation(line: 176, column: 6, scope: !973, inlinedAt: !2761)
!2765 = !DILocation(line: 176, column: 12, scope: !973, inlinedAt: !2761)
!2766 = !DILocation(line: 177, column: 8, scope: !989, inlinedAt: !2761)
!2767 = !DILocation(line: 177, column: 23, scope: !991, inlinedAt: !2761)
!2768 = !DILocation(line: 177, column: 19, scope: !989, inlinedAt: !2761)
!2769 = !DILocation(line: 178, column: 5, scope: !989, inlinedAt: !2761)
!2770 = !DILocation(line: 179, column: 6, scope: !973, inlinedAt: !2761)
!2771 = !DILocation(line: 179, column: 17, scope: !973, inlinedAt: !2761)
!2772 = !DILocation(line: 180, column: 6, scope: !973, inlinedAt: !2761)
!2773 = !DILocation(line: 180, column: 18, scope: !973, inlinedAt: !2761)
!2774 = !DILocation(line: 1023, column: 10, scope: !2638, inlinedAt: !2752)
!2775 = !DILocation(line: 1024, column: 1, scope: !2638, inlinedAt: !2752)
!2776 = !DILocation(line: 1037, column: 3, scope: !2739)
!2777 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2778, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!6, !25, !6, !94}
!2780 = !{!2781, !2782, !2783}
!2781 = !DILocalVariable(name: "n", arg: 1, scope: !2777, file: !100, line: 1052, type: !25)
!2782 = !DILocalVariable(name: "arg", arg: 2, scope: !2777, file: !100, line: 1052, type: !6)
!2783 = !DILocalVariable(name: "argsize", arg: 3, scope: !2777, file: !100, line: 1052, type: !94)
!2784 = !DILocation(line: 1052, column: 18, scope: !2777)
!2785 = !DILocation(line: 1052, column: 33, scope: !2777)
!2786 = !DILocation(line: 1052, column: 45, scope: !2777)
!2787 = !DILocation(line: 1054, column: 10, scope: !2777)
!2788 = !DILocation(line: 1054, column: 3, scope: !2777)
!2789 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2790, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!6, !6, !94}
!2792 = !{!2793, !2794}
!2793 = !DILocalVariable(name: "arg", arg: 1, scope: !2789, file: !100, line: 1058, type: !6)
!2794 = !DILocalVariable(name: "argsize", arg: 2, scope: !2789, file: !100, line: 1058, type: !94)
!2795 = !DILocation(line: 1058, column: 24, scope: !2789)
!2796 = !DILocation(line: 1058, column: 36, scope: !2789)
!2797 = !DILocation(line: 1052, column: 18, scope: !2777, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 1060, column: 10, scope: !2789)
!2799 = !DILocation(line: 1052, column: 33, scope: !2777, inlinedAt: !2798)
!2800 = !DILocation(line: 1052, column: 45, scope: !2777, inlinedAt: !2798)
!2801 = !DILocation(line: 1054, column: 10, scope: !2777, inlinedAt: !2798)
!2802 = !DILocation(line: 1060, column: 3, scope: !2789)
!2803 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2804, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!6, !25, !6}
!2806 = !{!2807, !2808}
!2807 = !DILocalVariable(name: "n", arg: 1, scope: !2803, file: !100, line: 1064, type: !25)
!2808 = !DILocalVariable(name: "arg", arg: 2, scope: !2803, file: !100, line: 1064, type: !6)
!2809 = !DILocation(line: 1064, column: 14, scope: !2803)
!2810 = !DILocation(line: 1064, column: 29, scope: !2803)
!2811 = !DILocation(line: 1052, column: 18, scope: !2777, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 1066, column: 10, scope: !2803)
!2813 = !DILocation(line: 1052, column: 33, scope: !2777, inlinedAt: !2812)
!2814 = !DILocation(line: 1052, column: 45, scope: !2777, inlinedAt: !2812)
!2815 = !DILocation(line: 1054, column: 10, scope: !2777, inlinedAt: !2812)
!2816 = !DILocation(line: 1066, column: 3, scope: !2803)
!2817 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2818, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2820)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!6, !6}
!2820 = !{!2821}
!2821 = !DILocalVariable(name: "arg", arg: 1, scope: !2817, file: !100, line: 1070, type: !6)
!2822 = !DILocation(line: 1070, column: 20, scope: !2817)
!2823 = !DILocation(line: 1064, column: 14, scope: !2803, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 1072, column: 10, scope: !2817)
!2825 = !DILocation(line: 1064, column: 29, scope: !2803, inlinedAt: !2824)
!2826 = !DILocation(line: 1052, column: 18, scope: !2777, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 1066, column: 10, scope: !2803, inlinedAt: !2824)
!2828 = !DILocation(line: 1052, column: 33, scope: !2777, inlinedAt: !2827)
!2829 = !DILocation(line: 1052, column: 45, scope: !2777, inlinedAt: !2827)
!2830 = !DILocation(line: 1054, column: 10, scope: !2777, inlinedAt: !2827)
!2831 = !DILocation(line: 1072, column: 3, scope: !2817)
!2832 = distinct !DISubprogram(name: "version_etc_arn", scope: !540, file: !540, line: 62, type: !2833, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2887)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !2835, !6, !6, !6, !2886, !94}
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !798, line: 49, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !2839)
!2838 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2839 = !{!2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2860, !2861, !2862, !2863, !2866, !2867, !2869, !2871, !2874, !2876, !2877, !2878, !2879, !2880, !2881, !2882}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2837, file: !2838, line: 242, baseType: !25, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2837, file: !2838, line: 247, baseType: !50, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2837, file: !2838, line: 248, baseType: !50, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2837, file: !2838, line: 249, baseType: !50, size: 64, offset: 192)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2837, file: !2838, line: 250, baseType: !50, size: 64, offset: 256)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2837, file: !2838, line: 251, baseType: !50, size: 64, offset: 320)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2837, file: !2838, line: 252, baseType: !50, size: 64, offset: 384)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2837, file: !2838, line: 253, baseType: !50, size: 64, offset: 448)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2837, file: !2838, line: 254, baseType: !50, size: 64, offset: 512)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2837, file: !2838, line: 256, baseType: !50, size: 64, offset: 576)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2837, file: !2838, line: 257, baseType: !50, size: 64, offset: 640)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2837, file: !2838, line: 258, baseType: !50, size: 64, offset: 704)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2837, file: !2838, line: 260, baseType: !2853, size: 64, offset: 768)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !2855)
!2855 = !{!2856, !2857, !2859}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2854, file: !2838, line: 157, baseType: !2853, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2854, file: !2838, line: 158, baseType: !2858, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2854, file: !2838, line: 162, baseType: !25, size: 32, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2837, file: !2838, line: 262, baseType: !2858, size: 64, offset: 832)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2837, file: !2838, line: 264, baseType: !25, size: 32, offset: 896)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2837, file: !2838, line: 268, baseType: !25, size: 32, offset: 928)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2837, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !654, line: 140, baseType: !2865)
!2865 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2837, file: !2838, line: 274, baseType: !93, size: 16, offset: 1024)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2837, file: !2838, line: 275, baseType: !2868, size: 8, offset: 1040)
!2868 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2837, file: !2838, line: 276, baseType: !2870, size: 8, offset: 1048)
!2870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !809)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2837, file: !2838, line: 280, baseType: !2872, size: 64, offset: 1088)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2838, line: 150, baseType: null)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2837, file: !2838, line: 289, baseType: !2875, size: 64, offset: 1152)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !654, line: 141, baseType: !2865)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2837, file: !2838, line: 297, baseType: !49, size: 64, offset: 1216)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2837, file: !2838, line: 298, baseType: !49, size: 64, offset: 1280)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2837, file: !2838, line: 299, baseType: !49, size: 64, offset: 1344)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2837, file: !2838, line: 300, baseType: !49, size: 64, offset: 1408)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2837, file: !2838, line: 302, baseType: !94, size: 64, offset: 1472)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2837, file: !2838, line: 303, baseType: !25, size: 32, offset: 1536)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2837, file: !2838, line: 305, baseType: !2883, size: 160, offset: 1568)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2884)
!2884 = !{!2885}
!2885 = !DISubrange(count: 20)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893}
!2888 = !DILocalVariable(name: "stream", arg: 1, scope: !2832, file: !540, line: 62, type: !2835)
!2889 = !DILocalVariable(name: "command_name", arg: 2, scope: !2832, file: !540, line: 63, type: !6)
!2890 = !DILocalVariable(name: "package", arg: 3, scope: !2832, file: !540, line: 63, type: !6)
!2891 = !DILocalVariable(name: "version", arg: 4, scope: !2832, file: !540, line: 64, type: !6)
!2892 = !DILocalVariable(name: "authors", arg: 5, scope: !2832, file: !540, line: 65, type: !2886)
!2893 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2832, file: !540, line: 65, type: !94)
!2894 = !DILocation(line: 62, column: 24, scope: !2832)
!2895 = !DILocation(line: 63, column: 30, scope: !2832)
!2896 = !DILocation(line: 63, column: 56, scope: !2832)
!2897 = !DILocation(line: 64, column: 30, scope: !2832)
!2898 = !DILocation(line: 65, column: 39, scope: !2832)
!2899 = !DILocation(line: 65, column: 55, scope: !2832)
!2900 = !DILocation(line: 67, column: 7, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2832, file: !540, line: 67, column: 7)
!2902 = !DILocation(line: 67, column: 7, scope: !2832)
!2903 = !DILocation(line: 68, column: 5, scope: !2901)
!2904 = !DILocation(line: 70, column: 5, scope: !2901)
!2905 = !DILocation(line: 84, column: 3, scope: !2832)
!2906 = !DILocation(line: 84, column: 3, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !2832, file: !540, discriminator: 1)
!2908 = !DILocation(line: 86, column: 3, scope: !2832)
!2909 = !DILocation(line: 86, column: 3, scope: !2907)
!2910 = !DILocation(line: 95, column: 3, scope: !2832)
!2911 = !DILocation(line: 99, column: 7, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2832, file: !540, line: 96, column: 5)
!2913 = !DILocation(line: 102, column: 7, scope: !2912)
!2914 = !DILocation(line: 102, column: 7, scope: !2915)
!2915 = !DILexicalBlockFile(scope: !2912, file: !540, discriminator: 1)
!2916 = !DILocation(line: 103, column: 7, scope: !2912)
!2917 = !DILocation(line: 106, column: 7, scope: !2912)
!2918 = !DILocation(line: 106, column: 7, scope: !2915)
!2919 = !DILocation(line: 107, column: 7, scope: !2912)
!2920 = !DILocation(line: 110, column: 7, scope: !2912)
!2921 = !DILocation(line: 110, column: 7, scope: !2915)
!2922 = !DILocation(line: 112, column: 7, scope: !2912)
!2923 = !DILocation(line: 117, column: 7, scope: !2912)
!2924 = !DILocation(line: 117, column: 7, scope: !2915)
!2925 = !DILocation(line: 119, column: 7, scope: !2912)
!2926 = !DILocation(line: 124, column: 7, scope: !2912)
!2927 = !DILocation(line: 124, column: 7, scope: !2915)
!2928 = !DILocation(line: 126, column: 7, scope: !2912)
!2929 = !DILocation(line: 131, column: 7, scope: !2912)
!2930 = !DILocation(line: 131, column: 7, scope: !2915)
!2931 = !DILocation(line: 134, column: 7, scope: !2912)
!2932 = !DILocation(line: 139, column: 7, scope: !2912)
!2933 = !DILocation(line: 139, column: 7, scope: !2915)
!2934 = !DILocation(line: 142, column: 7, scope: !2912)
!2935 = !DILocation(line: 147, column: 7, scope: !2912)
!2936 = !DILocation(line: 147, column: 7, scope: !2915)
!2937 = !DILocation(line: 151, column: 7, scope: !2912)
!2938 = !DILocation(line: 156, column: 7, scope: !2912)
!2939 = !DILocation(line: 156, column: 7, scope: !2915)
!2940 = !DILocation(line: 160, column: 7, scope: !2912)
!2941 = !DILocation(line: 167, column: 7, scope: !2912)
!2942 = !DILocation(line: 167, column: 7, scope: !2915)
!2943 = !DILocation(line: 171, column: 7, scope: !2912)
!2944 = !DILocation(line: 173, column: 1, scope: !2832)
!2945 = distinct !DISubprogram(name: "version_etc_ar", scope: !540, file: !540, line: 180, type: !2946, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{null, !2835, !6, !6, !6, !2886}
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954}
!2949 = !DILocalVariable(name: "stream", arg: 1, scope: !2945, file: !540, line: 180, type: !2835)
!2950 = !DILocalVariable(name: "command_name", arg: 2, scope: !2945, file: !540, line: 181, type: !6)
!2951 = !DILocalVariable(name: "package", arg: 3, scope: !2945, file: !540, line: 181, type: !6)
!2952 = !DILocalVariable(name: "version", arg: 4, scope: !2945, file: !540, line: 182, type: !6)
!2953 = !DILocalVariable(name: "authors", arg: 5, scope: !2945, file: !540, line: 182, type: !2886)
!2954 = !DILocalVariable(name: "n_authors", scope: !2945, file: !540, line: 184, type: !94)
!2955 = !DILocation(line: 180, column: 23, scope: !2945)
!2956 = !DILocation(line: 181, column: 29, scope: !2945)
!2957 = !DILocation(line: 181, column: 55, scope: !2945)
!2958 = !DILocation(line: 182, column: 29, scope: !2945)
!2959 = !DILocation(line: 182, column: 59, scope: !2945)
!2960 = !DILocation(line: 184, column: 10, scope: !2945)
!2961 = !DILocation(line: 186, column: 8, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2945, file: !540, line: 186, column: 3)
!2963 = !DILocation(line: 186, column: 23, scope: !2964)
!2964 = !DILexicalBlockFile(scope: !2965, file: !540, discriminator: 1)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !540, line: 186, column: 3)
!2966 = !DILocation(line: 186, column: 3, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2962, file: !540, discriminator: 1)
!2968 = !DILocation(line: 186, column: 52, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2965, file: !540, discriminator: 3)
!2970 = distinct !{!2970, !2971, !2972}
!2971 = !DILocation(line: 186, column: 3, scope: !2962)
!2972 = !DILocation(line: 187, column: 5, scope: !2962)
!2973 = !DILocation(line: 188, column: 3, scope: !2945)
!2974 = !DILocation(line: 189, column: 1, scope: !2945)
!2975 = distinct !DISubprogram(name: "version_etc_va", scope: !540, file: !540, line: 196, type: !2976, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2985)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !2835, !6, !6, !6, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !537, line: 189, size: 192, elements: !2980)
!2980 = !{!2981, !2982, !2983, !2984}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2979, file: !537, line: 189, baseType: !113, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2979, file: !537, line: 189, baseType: !113, size: 32, offset: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2979, file: !537, line: 189, baseType: !49, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2979, file: !537, line: 189, baseType: !49, size: 64, offset: 128)
!2985 = !{!2986, !2987, !2988, !2989, !2990, !2991, !2992}
!2986 = !DILocalVariable(name: "stream", arg: 1, scope: !2975, file: !540, line: 196, type: !2835)
!2987 = !DILocalVariable(name: "command_name", arg: 2, scope: !2975, file: !540, line: 197, type: !6)
!2988 = !DILocalVariable(name: "package", arg: 3, scope: !2975, file: !540, line: 197, type: !6)
!2989 = !DILocalVariable(name: "version", arg: 4, scope: !2975, file: !540, line: 198, type: !6)
!2990 = !DILocalVariable(name: "authors", arg: 5, scope: !2975, file: !540, line: 198, type: !2978)
!2991 = !DILocalVariable(name: "n_authors", scope: !2975, file: !540, line: 200, type: !94)
!2992 = !DILocalVariable(name: "authtab", scope: !2975, file: !540, line: 201, type: !2993)
!2993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2994 = !DILocation(line: 196, column: 23, scope: !2975)
!2995 = !DILocation(line: 197, column: 29, scope: !2975)
!2996 = !DILocation(line: 197, column: 55, scope: !2975)
!2997 = !DILocation(line: 198, column: 29, scope: !2975)
!2998 = !DILocation(line: 198, column: 46, scope: !2975)
!2999 = !DILocation(line: 201, column: 3, scope: !2975)
!3000 = !DILocation(line: 201, column: 15, scope: !2975)
!3001 = !DILocation(line: 200, column: 10, scope: !2975)
!3002 = !DILocation(line: 205, column: 35, scope: !3003)
!3003 = !DILexicalBlockFile(scope: !3004, file: !540, discriminator: 1)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !540, line: 203, column: 3)
!3005 = distinct !DILexicalBlock(scope: !2975, file: !540, line: 203, column: 3)
!3006 = !DILocation(line: 205, column: 35, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !3004, file: !540, discriminator: 2)
!3008 = !DILocation(line: 205, column: 35, scope: !3009)
!3009 = !DILexicalBlockFile(scope: !3004, file: !540, discriminator: 3)
!3010 = !DILocation(line: 205, column: 35, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !3004, file: !540, discriminator: 4)
!3012 = !DILocation(line: 205, column: 14, scope: !3011)
!3013 = !DILocation(line: 205, column: 33, scope: !3011)
!3014 = !DILocation(line: 205, column: 67, scope: !3011)
!3015 = !DILocation(line: 203, column: 3, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !3005, file: !540, discriminator: 1)
!3017 = !DILocation(line: 208, column: 3, scope: !2975)
!3018 = !DILocation(line: 210, column: 1, scope: !2975)
!3019 = distinct !DISubprogram(name: "version_etc", scope: !540, file: !540, line: 227, type: !3020, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !2835, !6, !6, !6, null}
!3022 = !{!3023, !3024, !3025, !3026, !3027}
!3023 = !DILocalVariable(name: "stream", arg: 1, scope: !3019, file: !540, line: 227, type: !2835)
!3024 = !DILocalVariable(name: "command_name", arg: 2, scope: !3019, file: !540, line: 228, type: !6)
!3025 = !DILocalVariable(name: "package", arg: 3, scope: !3019, file: !540, line: 228, type: !6)
!3026 = !DILocalVariable(name: "version", arg: 4, scope: !3019, file: !540, line: 229, type: !6)
!3027 = !DILocalVariable(name: "authors", scope: !3019, file: !540, line: 231, type: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !798, line: 80, baseType: !3029)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !800, line: 50, baseType: !3030)
!3030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !537, line: 231, baseType: !3031)
!3031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2979, size: 192, elements: !809)
!3032 = !DILocation(line: 227, column: 20, scope: !3019)
!3033 = !DILocation(line: 228, column: 26, scope: !3019)
!3034 = !DILocation(line: 228, column: 52, scope: !3019)
!3035 = !DILocation(line: 229, column: 26, scope: !3019)
!3036 = !DILocation(line: 231, column: 3, scope: !3019)
!3037 = !DILocation(line: 231, column: 11, scope: !3019)
!3038 = !DILocation(line: 233, column: 3, scope: !3019)
!3039 = !DILocation(line: 234, column: 3, scope: !3019)
!3040 = !DILocation(line: 235, column: 3, scope: !3019)
!3041 = !DILocation(line: 236, column: 1, scope: !3019)
!3042 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !540, file: !540, line: 239, type: !738, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !4)
!3043 = !DILocation(line: 245, column: 3, scope: !3042)
!3044 = !DILocation(line: 245, column: 3, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !3042, file: !540, discriminator: 1)
!3046 = !DILocation(line: 251, column: 3, scope: !3042)
!3047 = !DILocation(line: 251, column: 3, scope: !3045)
!3048 = !DILocation(line: 256, column: 3, scope: !3042)
!3049 = !DILocation(line: 256, column: 3, scope: !3045)
!3050 = !DILocation(line: 258, column: 1, scope: !3042)
!3051 = distinct !DISubprogram(name: "xnmalloc", scope: !548, file: !548, line: 105, type: !3052, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!49, !94, !94}
!3054 = !{!3055, !3056}
!3055 = !DILocalVariable(name: "n", arg: 1, scope: !3051, file: !548, line: 105, type: !94)
!3056 = !DILocalVariable(name: "s", arg: 2, scope: !3051, file: !548, line: 105, type: !94)
!3057 = !DILocation(line: 105, column: 18, scope: !3051)
!3058 = !DILocation(line: 105, column: 28, scope: !3051)
!3059 = !DILocation(line: 107, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3051, file: !548, line: 107, column: 7)
!3061 = !DILocation(line: 107, column: 7, scope: !3051)
!3062 = !DILocation(line: 108, column: 5, scope: !3060)
!3063 = !DILocation(line: 109, column: 21, scope: !3051)
!3064 = !DILocalVariable(name: "n", arg: 1, scope: !3065, file: !3066, line: 39, type: !94)
!3065 = distinct !DISubprogram(name: "xmalloc", scope: !3066, file: !3066, line: 39, type: !3067, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3069)
!3066 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!49, !94}
!3069 = !{!3064, !3070}
!3070 = !DILocalVariable(name: "p", scope: !3065, file: !3066, line: 41, type: !49)
!3071 = !DILocation(line: 39, column: 17, scope: !3065, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 109, column: 10, scope: !3051)
!3073 = !DILocation(line: 41, column: 13, scope: !3065, inlinedAt: !3072)
!3074 = !DILocation(line: 41, column: 9, scope: !3065, inlinedAt: !3072)
!3075 = !DILocation(line: 42, column: 8, scope: !3076, inlinedAt: !3072)
!3076 = distinct !DILexicalBlock(scope: !3065, file: !3066, line: 42, column: 7)
!3077 = !DILocation(line: 42, column: 15, scope: !3078, inlinedAt: !3072)
!3078 = !DILexicalBlockFile(scope: !3076, file: !3066, discriminator: 1)
!3079 = !DILocation(line: 42, column: 10, scope: !3076, inlinedAt: !3072)
!3080 = !DILocation(line: 43, column: 5, scope: !3076, inlinedAt: !3072)
!3081 = !DILocation(line: 109, column: 3, scope: !3051)
!3082 = !DILocation(line: 39, column: 17, scope: !3065)
!3083 = !DILocation(line: 41, column: 13, scope: !3065)
!3084 = !DILocation(line: 41, column: 9, scope: !3065)
!3085 = !DILocation(line: 42, column: 8, scope: !3076)
!3086 = !DILocation(line: 42, column: 15, scope: !3078)
!3087 = !DILocation(line: 42, column: 10, scope: !3076)
!3088 = !DILocation(line: 43, column: 5, scope: !3076)
!3089 = !DILocation(line: 44, column: 3, scope: !3065)
!3090 = distinct !DISubprogram(name: "xnrealloc", scope: !548, file: !548, line: 118, type: !3091, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!49, !49, !94, !94}
!3093 = !{!3094, !3095, !3096}
!3094 = !DILocalVariable(name: "p", arg: 1, scope: !3090, file: !548, line: 118, type: !49)
!3095 = !DILocalVariable(name: "n", arg: 2, scope: !3090, file: !548, line: 118, type: !94)
!3096 = !DILocalVariable(name: "s", arg: 3, scope: !3090, file: !548, line: 118, type: !94)
!3097 = !DILocation(line: 118, column: 18, scope: !3090)
!3098 = !DILocation(line: 118, column: 28, scope: !3090)
!3099 = !DILocation(line: 118, column: 38, scope: !3090)
!3100 = !DILocation(line: 120, column: 7, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3090, file: !548, line: 120, column: 7)
!3102 = !DILocation(line: 120, column: 7, scope: !3090)
!3103 = !DILocation(line: 121, column: 5, scope: !3101)
!3104 = !DILocation(line: 122, column: 25, scope: !3090)
!3105 = !DILocalVariable(name: "p", arg: 1, scope: !3106, file: !3066, line: 51, type: !49)
!3106 = distinct !DISubprogram(name: "xrealloc", scope: !3066, file: !3066, line: 51, type: !3107, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!49, !49, !94}
!3109 = !{!3105, !3110}
!3110 = !DILocalVariable(name: "n", arg: 2, scope: !3106, file: !3066, line: 51, type: !94)
!3111 = !DILocation(line: 51, column: 17, scope: !3106, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 122, column: 10, scope: !3090)
!3113 = !DILocation(line: 51, column: 27, scope: !3106, inlinedAt: !3112)
!3114 = !DILocation(line: 53, column: 8, scope: !3115, inlinedAt: !3112)
!3115 = distinct !DILexicalBlock(scope: !3106, file: !3066, line: 53, column: 7)
!3116 = !DILocation(line: 53, column: 13, scope: !3117, inlinedAt: !3112)
!3117 = !DILexicalBlockFile(scope: !3115, file: !3066, discriminator: 1)
!3118 = !DILocation(line: 53, column: 10, scope: !3115, inlinedAt: !3112)
!3119 = !DILocation(line: 57, column: 7, scope: !3120, inlinedAt: !3112)
!3120 = distinct !DILexicalBlock(scope: !3115, file: !3066, line: 54, column: 5)
!3121 = !DILocation(line: 58, column: 7, scope: !3120, inlinedAt: !3112)
!3122 = !DILocation(line: 61, column: 7, scope: !3106, inlinedAt: !3112)
!3123 = !DILocation(line: 62, column: 8, scope: !3124, inlinedAt: !3112)
!3124 = distinct !DILexicalBlock(scope: !3106, file: !3066, line: 62, column: 7)
!3125 = !DILocation(line: 62, column: 13, scope: !3126, inlinedAt: !3112)
!3126 = !DILexicalBlockFile(scope: !3124, file: !3066, discriminator: 1)
!3127 = !DILocation(line: 62, column: 10, scope: !3124, inlinedAt: !3112)
!3128 = !DILocation(line: 63, column: 5, scope: !3124, inlinedAt: !3112)
!3129 = !DILocation(line: 122, column: 3, scope: !3090)
!3130 = !DILocation(line: 51, column: 17, scope: !3106)
!3131 = !DILocation(line: 51, column: 27, scope: !3106)
!3132 = !DILocation(line: 53, column: 8, scope: !3115)
!3133 = !DILocation(line: 53, column: 13, scope: !3117)
!3134 = !DILocation(line: 53, column: 10, scope: !3115)
!3135 = !DILocation(line: 57, column: 7, scope: !3120)
!3136 = !DILocation(line: 58, column: 7, scope: !3120)
!3137 = !DILocation(line: 61, column: 7, scope: !3106)
!3138 = !DILocation(line: 62, column: 8, scope: !3124)
!3139 = !DILocation(line: 62, column: 13, scope: !3126)
!3140 = !DILocation(line: 62, column: 10, scope: !3124)
!3141 = !DILocation(line: 63, column: 5, scope: !3124)
!3142 = !DILocation(line: 65, column: 1, scope: !3106)
!3143 = !DILocation(line: 180, column: 19, scope: !549)
!3144 = !DILocation(line: 180, column: 30, scope: !549)
!3145 = !DILocation(line: 180, column: 41, scope: !549)
!3146 = !DILocation(line: 182, column: 14, scope: !549)
!3147 = !DILocation(line: 182, column: 10, scope: !549)
!3148 = !DILocation(line: 184, column: 9, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !549, file: !548, line: 184, column: 7)
!3150 = !DILocation(line: 184, column: 7, scope: !549)
!3151 = !DILocation(line: 186, column: 13, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !548, line: 186, column: 11)
!3153 = distinct !DILexicalBlock(scope: !3149, file: !548, line: 185, column: 5)
!3154 = !DILocation(line: 186, column: 11, scope: !3153)
!3155 = !DILocation(line: 194, column: 30, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3152, file: !548, line: 187, column: 9)
!3157 = !DILocation(line: 195, column: 16, scope: !3156)
!3158 = !DILocation(line: 195, column: 13, scope: !3156)
!3159 = !DILocation(line: 196, column: 9, scope: !3156)
!3160 = !DILocation(line: 204, column: 69, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !548, line: 204, column: 11)
!3162 = distinct !DILexicalBlock(scope: !3149, file: !548, line: 199, column: 5)
!3163 = !DILocation(line: 205, column: 11, scope: !3161)
!3164 = !DILocation(line: 204, column: 11, scope: !3162)
!3165 = !DILocation(line: 206, column: 9, scope: !3161)
!3166 = !DILocation(line: 210, column: 7, scope: !549)
!3167 = !DILocation(line: 211, column: 25, scope: !549)
!3168 = !DILocation(line: 51, column: 17, scope: !3106, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 211, column: 10, scope: !549)
!3170 = !DILocation(line: 51, column: 27, scope: !3106, inlinedAt: !3169)
!3171 = !DILocation(line: 53, column: 10, scope: !3115, inlinedAt: !3169)
!3172 = !DILocation(line: 207, column: 14, scope: !3162)
!3173 = !DILocation(line: 207, column: 18, scope: !3162)
!3174 = !DILocation(line: 207, column: 9, scope: !3162)
!3175 = !DILocation(line: 53, column: 8, scope: !3115, inlinedAt: !3169)
!3176 = !DILocation(line: 57, column: 7, scope: !3120, inlinedAt: !3169)
!3177 = !DILocation(line: 58, column: 7, scope: !3120, inlinedAt: !3169)
!3178 = !DILocation(line: 61, column: 7, scope: !3106, inlinedAt: !3169)
!3179 = !DILocation(line: 62, column: 8, scope: !3124, inlinedAt: !3169)
!3180 = !DILocation(line: 62, column: 13, scope: !3126, inlinedAt: !3169)
!3181 = !DILocation(line: 62, column: 10, scope: !3124, inlinedAt: !3169)
!3182 = !DILocation(line: 63, column: 5, scope: !3124, inlinedAt: !3169)
!3183 = !DILocation(line: 211, column: 3, scope: !549)
!3184 = distinct !DISubprogram(name: "xcharalloc", scope: !548, file: !548, line: 220, type: !2104, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3185)
!3185 = !{!3186}
!3186 = !DILocalVariable(name: "n", arg: 1, scope: !3184, file: !548, line: 220, type: !94)
!3187 = !DILocation(line: 220, column: 20, scope: !3184)
!3188 = !DILocation(line: 39, column: 17, scope: !3065, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 222, column: 10, scope: !3184)
!3190 = !DILocation(line: 41, column: 13, scope: !3065, inlinedAt: !3189)
!3191 = !DILocation(line: 41, column: 9, scope: !3065, inlinedAt: !3189)
!3192 = !DILocation(line: 42, column: 8, scope: !3076, inlinedAt: !3189)
!3193 = !DILocation(line: 42, column: 15, scope: !3078, inlinedAt: !3189)
!3194 = !DILocation(line: 42, column: 10, scope: !3076, inlinedAt: !3189)
!3195 = !DILocation(line: 43, column: 5, scope: !3076, inlinedAt: !3189)
!3196 = !DILocation(line: 222, column: 3, scope: !3184)
!3197 = distinct !DISubprogram(name: "x2realloc", scope: !3066, file: !3066, line: 74, type: !3198, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3200)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!49, !49, !552}
!3200 = !{!3201, !3202}
!3201 = !DILocalVariable(name: "p", arg: 1, scope: !3197, file: !3066, line: 74, type: !49)
!3202 = !DILocalVariable(name: "pn", arg: 2, scope: !3197, file: !3066, line: 74, type: !552)
!3203 = !DILocation(line: 74, column: 18, scope: !3197)
!3204 = !DILocation(line: 74, column: 29, scope: !3197)
!3205 = !DILocation(line: 180, column: 19, scope: !549, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 76, column: 10, scope: !3197)
!3207 = !DILocation(line: 180, column: 30, scope: !549, inlinedAt: !3206)
!3208 = !DILocation(line: 180, column: 41, scope: !549, inlinedAt: !3206)
!3209 = !DILocation(line: 182, column: 14, scope: !549, inlinedAt: !3206)
!3210 = !DILocation(line: 182, column: 10, scope: !549, inlinedAt: !3206)
!3211 = !DILocation(line: 184, column: 9, scope: !3149, inlinedAt: !3206)
!3212 = !DILocation(line: 184, column: 7, scope: !549, inlinedAt: !3206)
!3213 = !DILocation(line: 186, column: 13, scope: !3152, inlinedAt: !3206)
!3214 = !DILocation(line: 186, column: 11, scope: !3153, inlinedAt: !3206)
!3215 = !DILocation(line: 210, column: 7, scope: !549, inlinedAt: !3206)
!3216 = !DILocation(line: 51, column: 17, scope: !3106, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 211, column: 10, scope: !549, inlinedAt: !3206)
!3218 = !DILocation(line: 51, column: 27, scope: !3106, inlinedAt: !3217)
!3219 = !DILocation(line: 53, column: 10, scope: !3115, inlinedAt: !3217)
!3220 = !DILocation(line: 205, column: 11, scope: !3161, inlinedAt: !3206)
!3221 = !DILocation(line: 204, column: 11, scope: !3162, inlinedAt: !3206)
!3222 = !DILocation(line: 206, column: 9, scope: !3161, inlinedAt: !3206)
!3223 = !DILocation(line: 207, column: 14, scope: !3162, inlinedAt: !3206)
!3224 = !DILocation(line: 207, column: 18, scope: !3162, inlinedAt: !3206)
!3225 = !DILocation(line: 207, column: 9, scope: !3162, inlinedAt: !3206)
!3226 = !DILocation(line: 53, column: 8, scope: !3115, inlinedAt: !3217)
!3227 = !DILocation(line: 57, column: 7, scope: !3120, inlinedAt: !3217)
!3228 = !DILocation(line: 58, column: 7, scope: !3120, inlinedAt: !3217)
!3229 = !DILocation(line: 61, column: 7, scope: !3106, inlinedAt: !3217)
!3230 = !DILocation(line: 62, column: 8, scope: !3124, inlinedAt: !3217)
!3231 = !DILocation(line: 62, column: 13, scope: !3126, inlinedAt: !3217)
!3232 = !DILocation(line: 62, column: 10, scope: !3124, inlinedAt: !3217)
!3233 = !DILocation(line: 63, column: 5, scope: !3124, inlinedAt: !3217)
!3234 = !DILocation(line: 76, column: 3, scope: !3197)
!3235 = distinct !DISubprogram(name: "xzalloc", scope: !3066, file: !3066, line: 84, type: !3067, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3236)
!3236 = !{!3237}
!3237 = !DILocalVariable(name: "s", arg: 1, scope: !3235, file: !3066, line: 84, type: !94)
!3238 = !DILocation(line: 84, column: 17, scope: !3235)
!3239 = !DILocation(line: 39, column: 17, scope: !3065, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 86, column: 18, scope: !3235)
!3241 = !DILocation(line: 41, column: 13, scope: !3065, inlinedAt: !3240)
!3242 = !DILocation(line: 41, column: 9, scope: !3065, inlinedAt: !3240)
!3243 = !DILocation(line: 42, column: 8, scope: !3076, inlinedAt: !3240)
!3244 = !DILocation(line: 42, column: 15, scope: !3078, inlinedAt: !3240)
!3245 = !DILocation(line: 42, column: 10, scope: !3076, inlinedAt: !3240)
!3246 = !DILocation(line: 43, column: 5, scope: !3076, inlinedAt: !3240)
!3247 = !DILocation(line: 86, column: 10, scope: !3235)
!3248 = !DILocation(line: 86, column: 3, scope: !3235)
!3249 = distinct !DISubprogram(name: "xcalloc", scope: !3066, file: !3066, line: 93, type: !3052, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3250)
!3250 = !{!3251, !3252, !3253}
!3251 = !DILocalVariable(name: "n", arg: 1, scope: !3249, file: !3066, line: 93, type: !94)
!3252 = !DILocalVariable(name: "s", arg: 2, scope: !3249, file: !3066, line: 93, type: !94)
!3253 = !DILocalVariable(name: "p", scope: !3249, file: !3066, line: 95, type: !49)
!3254 = !DILocation(line: 93, column: 17, scope: !3249)
!3255 = !DILocation(line: 93, column: 27, scope: !3249)
!3256 = !DILocation(line: 100, column: 7, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3249, file: !3066, line: 100, column: 7)
!3258 = !DILocation(line: 101, column: 7, scope: !3257)
!3259 = !DILocation(line: 101, column: 18, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !3257, file: !3066, discriminator: 1)
!3261 = !DILocation(line: 95, column: 9, scope: !3249)
!3262 = !DILocation(line: 101, column: 16, scope: !3260)
!3263 = !DILocation(line: 100, column: 7, scope: !3264)
!3264 = !DILexicalBlockFile(scope: !3249, file: !3066, discriminator: 1)
!3265 = !DILocation(line: 102, column: 5, scope: !3257)
!3266 = !DILocation(line: 103, column: 3, scope: !3249)
!3267 = distinct !DISubprogram(name: "xmemdup", scope: !3066, file: !3066, line: 111, type: !3268, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!49, !501, !94}
!3270 = !{!3271, !3272}
!3271 = !DILocalVariable(name: "p", arg: 1, scope: !3267, file: !3066, line: 111, type: !501)
!3272 = !DILocalVariable(name: "s", arg: 2, scope: !3267, file: !3066, line: 111, type: !94)
!3273 = !DILocation(line: 111, column: 22, scope: !3267)
!3274 = !DILocation(line: 111, column: 32, scope: !3267)
!3275 = !DILocation(line: 39, column: 17, scope: !3065, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 113, column: 18, scope: !3267)
!3277 = !DILocation(line: 41, column: 13, scope: !3065, inlinedAt: !3276)
!3278 = !DILocation(line: 41, column: 9, scope: !3065, inlinedAt: !3276)
!3279 = !DILocation(line: 42, column: 8, scope: !3076, inlinedAt: !3276)
!3280 = !DILocation(line: 42, column: 15, scope: !3078, inlinedAt: !3276)
!3281 = !DILocation(line: 42, column: 10, scope: !3076, inlinedAt: !3276)
!3282 = !DILocation(line: 43, column: 5, scope: !3076, inlinedAt: !3276)
!3283 = !DILocation(line: 113, column: 10, scope: !3267)
!3284 = !DILocation(line: 113, column: 3, scope: !3267)
!3285 = distinct !DISubprogram(name: "xstrdup", scope: !3066, file: !3066, line: 119, type: !2311, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3286)
!3286 = !{!3287}
!3287 = !DILocalVariable(name: "string", arg: 1, scope: !3285, file: !3066, line: 119, type: !6)
!3288 = !DILocation(line: 119, column: 22, scope: !3285)
!3289 = !DILocation(line: 121, column: 27, scope: !3285)
!3290 = !DILocation(line: 121, column: 43, scope: !3285)
!3291 = !DILocation(line: 111, column: 22, scope: !3267, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 121, column: 10, scope: !3293)
!3293 = !DILexicalBlockFile(scope: !3285, file: !3066, discriminator: 1)
!3294 = !DILocation(line: 111, column: 32, scope: !3267, inlinedAt: !3292)
!3295 = !DILocation(line: 39, column: 17, scope: !3065, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 113, column: 18, scope: !3267, inlinedAt: !3292)
!3297 = !DILocation(line: 41, column: 13, scope: !3065, inlinedAt: !3296)
!3298 = !DILocation(line: 41, column: 9, scope: !3065, inlinedAt: !3296)
!3299 = !DILocation(line: 42, column: 8, scope: !3076, inlinedAt: !3296)
!3300 = !DILocation(line: 42, column: 15, scope: !3078, inlinedAt: !3296)
!3301 = !DILocation(line: 42, column: 10, scope: !3076, inlinedAt: !3296)
!3302 = !DILocation(line: 43, column: 5, scope: !3076, inlinedAt: !3296)
!3303 = !DILocation(line: 113, column: 10, scope: !3267, inlinedAt: !3292)
!3304 = !DILocation(line: 121, column: 3, scope: !3285)
!3305 = distinct !DISubprogram(name: "xalloc_die", scope: !3306, file: !3306, line: 32, type: !738, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !561, variables: !4)
!3306 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3307 = !DILocation(line: 34, column: 10, scope: !3305)
!3308 = !DILocation(line: 34, column: 33, scope: !3305)
!3309 = !DILocation(line: 34, column: 3, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3305, file: !3306, discriminator: 1)
!3311 = !DILocation(line: 40, column: 3, scope: !3305)
!3312 = distinct !DISubprogram(name: "rpl_calloc", scope: !3313, file: !3313, line: 42, type: !3052, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3314)
!3313 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3314 = !{!3315, !3316, !3317, !3318}
!3315 = !DILocalVariable(name: "n", arg: 1, scope: !3312, file: !3313, line: 42, type: !94)
!3316 = !DILocalVariable(name: "s", arg: 2, scope: !3312, file: !3313, line: 42, type: !94)
!3317 = !DILocalVariable(name: "result", scope: !3312, file: !3313, line: 44, type: !49)
!3318 = !DILocalVariable(name: "bytes", scope: !3319, file: !3313, line: 56, type: !94)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !3313, line: 53, column: 5)
!3320 = distinct !DILexicalBlock(scope: !3312, file: !3313, line: 47, column: 7)
!3321 = !DILocation(line: 42, column: 20, scope: !3312)
!3322 = !DILocation(line: 42, column: 30, scope: !3312)
!3323 = !DILocation(line: 47, column: 9, scope: !3320)
!3324 = !DILocation(line: 47, column: 19, scope: !3325)
!3325 = !DILexicalBlockFile(scope: !3320, file: !3313, discriminator: 1)
!3326 = !DILocation(line: 47, column: 14, scope: !3320)
!3327 = !DILocation(line: 56, column: 24, scope: !3319)
!3328 = !DILocation(line: 56, column: 14, scope: !3319)
!3329 = !DILocation(line: 57, column: 17, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3319, file: !3313, line: 57, column: 11)
!3331 = !DILocation(line: 57, column: 21, scope: !3330)
!3332 = !DILocation(line: 57, column: 11, scope: !3319)
!3333 = !DILocation(line: 59, column: 11, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3330, file: !3313, line: 58, column: 9)
!3335 = !DILocation(line: 59, column: 17, scope: !3334)
!3336 = !DILocation(line: 65, column: 12, scope: !3312)
!3337 = !DILocation(line: 44, column: 9, scope: !3312)
!3338 = !DILocation(line: 72, column: 3, scope: !3312)
!3339 = !DILocation(line: 73, column: 1, scope: !3312)
!3340 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3341, file: !3341, line: 334, type: !3342, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3356)
!3341 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!94, !3344, !6, !94, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1073, line: 107, baseType: !3347)
!3347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1073, line: 95, baseType: !3348)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1073, line: 83, size: 64, elements: !3349)
!3349 = !{!3350, !3351}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3348, file: !1073, line: 85, baseType: !25, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3348, file: !1073, line: 94, baseType: !3352, size: 32, offset: 32)
!3352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3348, file: !1073, line: 86, size: 32, elements: !3353)
!3353 = !{!3354, !3355}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3352, file: !1073, line: 89, baseType: !113, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3352, file: !1073, line: 93, baseType: !1083, size: 32)
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3362, !3363}
!3357 = !DILocalVariable(name: "pwc", arg: 1, scope: !3340, file: !3341, line: 334, type: !3344)
!3358 = !DILocalVariable(name: "s", arg: 2, scope: !3340, file: !3341, line: 334, type: !6)
!3359 = !DILocalVariable(name: "n", arg: 3, scope: !3340, file: !3341, line: 334, type: !94)
!3360 = !DILocalVariable(name: "ps", arg: 4, scope: !3340, file: !3341, line: 334, type: !3345)
!3361 = !DILocalVariable(name: "ret", scope: !3340, file: !3341, line: 336, type: !94)
!3362 = !DILocalVariable(name: "wc", scope: !3340, file: !3341, line: 337, type: !1088)
!3363 = !DILocalVariable(name: "uc", scope: !3364, file: !3341, line: 398, type: !494)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !3341, line: 397, column: 5)
!3365 = distinct !DILexicalBlock(scope: !3340, file: !3341, line: 396, column: 7)
!3366 = !DILocation(line: 334, column: 23, scope: !3340)
!3367 = !DILocation(line: 334, column: 40, scope: !3340)
!3368 = !DILocation(line: 334, column: 50, scope: !3340)
!3369 = !DILocation(line: 334, column: 64, scope: !3340)
!3370 = !DILocation(line: 337, column: 3, scope: !3340)
!3371 = !DILocation(line: 353, column: 9, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3340, file: !3341, line: 353, column: 7)
!3373 = !DILocation(line: 353, column: 7, scope: !3340)
!3374 = !DILocation(line: 388, column: 9, scope: !3340)
!3375 = !DILocation(line: 336, column: 10, scope: !3340)
!3376 = !DILocation(line: 396, column: 19, scope: !3365)
!3377 = !DILocation(line: 396, column: 31, scope: !3378)
!3378 = !DILexicalBlockFile(scope: !3365, file: !3341, discriminator: 1)
!3379 = !DILocation(line: 396, column: 26, scope: !3365)
!3380 = !DILocation(line: 396, column: 41, scope: !3381)
!3381 = !DILexicalBlockFile(scope: !3365, file: !3341, discriminator: 2)
!3382 = !DILocation(line: 396, column: 7, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3340, file: !3341, discriminator: 2)
!3384 = !DILocation(line: 398, column: 26, scope: !3364)
!3385 = !DILocation(line: 398, column: 21, scope: !3364)
!3386 = !DILocation(line: 399, column: 14, scope: !3364)
!3387 = !DILocation(line: 399, column: 12, scope: !3364)
!3388 = !DILocation(line: 405, column: 1, scope: !3340)
!3389 = distinct !DISubprogram(name: "close_stream", scope: !3390, file: !3390, line: 56, type: !3391, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3433)
!3390 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!25, !3393}
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !798, line: 49, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !3396)
!3396 = !{!3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3395, file: !2838, line: 242, baseType: !25, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3395, file: !2838, line: 247, baseType: !50, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3395, file: !2838, line: 248, baseType: !50, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3395, file: !2838, line: 249, baseType: !50, size: 64, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3395, file: !2838, line: 250, baseType: !50, size: 64, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3395, file: !2838, line: 251, baseType: !50, size: 64, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3395, file: !2838, line: 252, baseType: !50, size: 64, offset: 384)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3395, file: !2838, line: 253, baseType: !50, size: 64, offset: 448)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3395, file: !2838, line: 254, baseType: !50, size: 64, offset: 512)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3395, file: !2838, line: 256, baseType: !50, size: 64, offset: 576)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3395, file: !2838, line: 257, baseType: !50, size: 64, offset: 640)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3395, file: !2838, line: 258, baseType: !50, size: 64, offset: 704)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3395, file: !2838, line: 260, baseType: !3410, size: 64, offset: 768)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !3412)
!3412 = !{!3413, !3414, !3416}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3411, file: !2838, line: 157, baseType: !3410, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3411, file: !2838, line: 158, baseType: !3415, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3411, file: !2838, line: 162, baseType: !25, size: 32, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3395, file: !2838, line: 262, baseType: !3415, size: 64, offset: 832)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3395, file: !2838, line: 264, baseType: !25, size: 32, offset: 896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3395, file: !2838, line: 268, baseType: !25, size: 32, offset: 928)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3395, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3395, file: !2838, line: 274, baseType: !93, size: 16, offset: 1024)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3395, file: !2838, line: 275, baseType: !2868, size: 8, offset: 1040)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3395, file: !2838, line: 276, baseType: !2870, size: 8, offset: 1048)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3395, file: !2838, line: 280, baseType: !2872, size: 64, offset: 1088)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3395, file: !2838, line: 289, baseType: !2875, size: 64, offset: 1152)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3395, file: !2838, line: 297, baseType: !49, size: 64, offset: 1216)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3395, file: !2838, line: 298, baseType: !49, size: 64, offset: 1280)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3395, file: !2838, line: 299, baseType: !49, size: 64, offset: 1344)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3395, file: !2838, line: 300, baseType: !49, size: 64, offset: 1408)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3395, file: !2838, line: 302, baseType: !94, size: 64, offset: 1472)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3395, file: !2838, line: 303, baseType: !25, size: 32, offset: 1536)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3395, file: !2838, line: 305, baseType: !2883, size: 160, offset: 1568)
!3433 = !{!3434, !3435, !3437, !3438}
!3434 = !DILocalVariable(name: "stream", arg: 1, scope: !3389, file: !3390, line: 56, type: !3393)
!3435 = !DILocalVariable(name: "some_pending", scope: !3389, file: !3390, line: 58, type: !3436)
!3436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3437 = !DILocalVariable(name: "prev_fail", scope: !3389, file: !3390, line: 59, type: !3436)
!3438 = !DILocalVariable(name: "fclose_fail", scope: !3389, file: !3390, line: 60, type: !3436)
!3439 = !DILocation(line: 56, column: 21, scope: !3389)
!3440 = !DILocation(line: 58, column: 30, scope: !3389)
!3441 = !DILocalVariable(name: "__stream", arg: 1, scope: !3442, file: !3443, line: 132, type: !3393)
!3442 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3443, file: !3443, line: 132, type: !3391, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3444)
!3443 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3444 = !{!3441}
!3445 = !DILocation(line: 132, column: 1, scope: !3442, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 59, column: 27, scope: !3389)
!3447 = !DILocation(line: 134, column: 10, scope: !3442, inlinedAt: !3446)
!3448 = !{!3449, !683, i64 0}
!3449 = !{!"_IO_FILE", !683, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !598, i64 32, !598, i64 40, !598, i64 48, !598, i64 56, !598, i64 64, !598, i64 72, !598, i64 80, !598, i64 88, !598, i64 96, !598, i64 104, !683, i64 112, !683, i64 116, !2149, i64 120, !1441, i64 128, !599, i64 130, !599, i64 131, !598, i64 136, !2149, i64 144, !598, i64 152, !598, i64 160, !598, i64 168, !598, i64 176, !2149, i64 184, !683, i64 192, !599, i64 196}
!3450 = !DILocation(line: 59, column: 43, scope: !3389)
!3451 = !DILocation(line: 60, column: 29, scope: !3389)
!3452 = !DILocation(line: 60, column: 45, scope: !3389)
!3453 = !DILocation(line: 70, column: 17, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3389, file: !3390, line: 70, column: 7)
!3455 = !DILocation(line: 70, column: 33, scope: !3456)
!3456 = !DILexicalBlockFile(scope: !3454, file: !3390, discriminator: 1)
!3457 = !DILocation(line: 70, column: 53, scope: !3458)
!3458 = !DILexicalBlockFile(scope: !3454, file: !3390, discriminator: 3)
!3459 = !DILocation(line: 70, column: 7, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3389, file: !3390, discriminator: 3)
!3461 = !DILocation(line: 72, column: 11, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3454, file: !3390, line: 71, column: 5)
!3463 = !DILocation(line: 73, column: 9, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3462, file: !3390, line: 72, column: 11)
!3465 = !DILocation(line: 73, column: 15, scope: !3464)
!3466 = !DILocation(line: 78, column: 1, scope: !3389)
!3467 = distinct !DISubprogram(name: "hard_locale", scope: !3468, file: !3468, line: 38, type: !3469, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3471)
!3468 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!17, !25}
!3471 = !{!3472, !3473, !3474, !3475, !3482, !3483, !3485, !3486, !3488, !3489, !3491}
!3472 = !DILocalVariable(name: "category", arg: 1, scope: !3467, file: !3468, line: 38, type: !25)
!3473 = !DILocalVariable(name: "hard", scope: !3467, file: !3468, line: 40, type: !17)
!3474 = !DILocalVariable(name: "p", scope: !3467, file: !3468, line: 41, type: !6)
!3475 = !DILocalVariable(name: "__s1_len", scope: !3476, file: !3468, line: 47, type: !94)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !3468, line: 47, column: 15)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !3468, line: 47, column: 15)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !3468, line: 46, column: 9)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !3468, line: 45, column: 11)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !3468, line: 44, column: 5)
!3481 = distinct !DILexicalBlock(scope: !3467, file: !3468, line: 43, column: 7)
!3482 = !DILocalVariable(name: "__s2_len", scope: !3476, file: !3468, line: 47, type: !94)
!3483 = !DILocalVariable(name: "__s2", scope: !3484, file: !3468, line: 47, type: !503)
!3484 = distinct !DILexicalBlock(scope: !3476, file: !3468, line: 47, column: 15)
!3485 = !DILocalVariable(name: "__result", scope: !3484, file: !3468, line: 47, type: !25)
!3486 = !DILocalVariable(name: "__s1_len", scope: !3487, file: !3468, line: 47, type: !94)
!3487 = distinct !DILexicalBlock(scope: !3477, file: !3468, line: 47, column: 39)
!3488 = !DILocalVariable(name: "__s2_len", scope: !3487, file: !3468, line: 47, type: !94)
!3489 = !DILocalVariable(name: "__s2", scope: !3490, file: !3468, line: 47, type: !503)
!3490 = distinct !DILexicalBlock(scope: !3487, file: !3468, line: 47, column: 39)
!3491 = !DILocalVariable(name: "__result", scope: !3490, file: !3468, line: 47, type: !25)
!3492 = !DILocation(line: 38, column: 18, scope: !3467)
!3493 = !DILocation(line: 40, column: 8, scope: !3467)
!3494 = !DILocation(line: 41, column: 19, scope: !3467)
!3495 = !DILocation(line: 41, column: 15, scope: !3467)
!3496 = !DILocation(line: 43, column: 7, scope: !3481)
!3497 = !DILocation(line: 43, column: 7, scope: !3467)
!3498 = !DILocation(line: 47, column: 15, scope: !3476)
!3499 = !DILocation(line: 47, column: 15, scope: !3484)
!3500 = !DILocation(line: 47, column: 15, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3484, file: !3468, discriminator: 2)
!3502 = !DILocation(line: 47, column: 15, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3504, file: !3468, discriminator: 3)
!3504 = distinct !DILexicalBlock(scope: !3484, file: !3468, line: 47, column: 15)
!3505 = !DILocation(line: 47, column: 15, scope: !3506)
!3506 = !DILexicalBlockFile(scope: !3504, file: !3468, discriminator: 2)
!3507 = !DILocation(line: 47, column: 15, scope: !3508)
!3508 = !DILexicalBlockFile(scope: !3509, file: !3468, discriminator: 4)
!3509 = distinct !DILexicalBlock(scope: !3504, file: !3468, line: 47, column: 15)
!3510 = !DILocation(line: 47, column: 15, scope: !3511)
!3511 = !DILexicalBlockFile(scope: !3476, file: !3468, discriminator: 11)
!3512 = !DILocation(line: 47, column: 36, scope: !3513)
!3513 = !DILexicalBlockFile(scope: !3477, file: !3468, discriminator: 13)
!3514 = !DILocation(line: 47, column: 39, scope: !3487)
!3515 = !DILocation(line: 47, column: 39, scope: !3516)
!3516 = !DILexicalBlockFile(scope: !3487, file: !3468, discriminator: 26)
!3517 = !DILocation(line: 47, column: 59, scope: !3518)
!3518 = !DILexicalBlockFile(scope: !3477, file: !3468, discriminator: 27)
!3519 = !DILocation(line: 47, column: 15, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3478, file: !3468, discriminator: 27)
!3521 = !DILocation(line: 48, column: 13, scope: !3477)
!3522 = !DILocation(line: 71, column: 3, scope: !3467)
!3523 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3524, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!6}
!3526 = !{!3527, !3528, !3529, !3534}
!3527 = !DILocalVariable(name: "codeset", scope: !3523, file: !496, line: 395, type: !6)
!3528 = !DILocalVariable(name: "aliases", scope: !3523, file: !496, line: 396, type: !6)
!3529 = !DILocalVariable(name: "__s1_len", scope: !3530, file: !496, line: 592, type: !94)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !496, line: 592, column: 9)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !496, line: 592, column: 9)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !496, line: 589, column: 3)
!3533 = distinct !DILexicalBlock(scope: !3523, file: !496, line: 589, column: 3)
!3534 = !DILocalVariable(name: "__s2_len", scope: !3530, file: !496, line: 592, type: !94)
!3535 = !DILocalVariable(name: "buf1", scope: !3536, file: !496, line: 196, type: !3603)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !496, line: 194, column: 21)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !496, line: 193, column: 19)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !496, line: 193, column: 19)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !496, line: 188, column: 17)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !496, line: 181, column: 19)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !496, line: 177, column: 13)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !496, line: 173, column: 15)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !496, line: 161, column: 9)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !496, line: 157, column: 11)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !496, line: 130, column: 5)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !496, line: 129, column: 7)
!3547 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3524, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3548)
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3555, !3556, !3557, !3558, !3599, !3600, !3601, !3535, !3602, !3606, !3607, !3608}
!3549 = !DILocalVariable(name: "cp", scope: !3547, file: !496, line: 126, type: !6)
!3550 = !DILocalVariable(name: "dir", scope: !3545, file: !496, line: 132, type: !6)
!3551 = !DILocalVariable(name: "base", scope: !3545, file: !496, line: 133, type: !6)
!3552 = !DILocalVariable(name: "file_name", scope: !3545, file: !496, line: 134, type: !50)
!3553 = !DILocalVariable(name: "dir_len", scope: !3554, file: !496, line: 144, type: !94)
!3554 = distinct !DILexicalBlock(scope: !3545, file: !496, line: 143, column: 7)
!3555 = !DILocalVariable(name: "base_len", scope: !3554, file: !496, line: 145, type: !94)
!3556 = !DILocalVariable(name: "add_slash", scope: !3554, file: !496, line: 146, type: !25)
!3557 = !DILocalVariable(name: "fd", scope: !3543, file: !496, line: 162, type: !25)
!3558 = !DILocalVariable(name: "fp", scope: !3541, file: !496, line: 178, type: !3559)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !798, line: 49, baseType: !3561)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !3562)
!3562 = !{!3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3561, file: !2838, line: 242, baseType: !25, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3561, file: !2838, line: 247, baseType: !50, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3561, file: !2838, line: 248, baseType: !50, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3561, file: !2838, line: 249, baseType: !50, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3561, file: !2838, line: 250, baseType: !50, size: 64, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3561, file: !2838, line: 251, baseType: !50, size: 64, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3561, file: !2838, line: 252, baseType: !50, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3561, file: !2838, line: 253, baseType: !50, size: 64, offset: 448)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3561, file: !2838, line: 254, baseType: !50, size: 64, offset: 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3561, file: !2838, line: 256, baseType: !50, size: 64, offset: 576)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3561, file: !2838, line: 257, baseType: !50, size: 64, offset: 640)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3561, file: !2838, line: 258, baseType: !50, size: 64, offset: 704)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3561, file: !2838, line: 260, baseType: !3576, size: 64, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !3578)
!3578 = !{!3579, !3580, !3582}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3577, file: !2838, line: 157, baseType: !3576, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3577, file: !2838, line: 158, baseType: !3581, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3577, file: !2838, line: 162, baseType: !25, size: 32, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3561, file: !2838, line: 262, baseType: !3581, size: 64, offset: 832)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3561, file: !2838, line: 264, baseType: !25, size: 32, offset: 896)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3561, file: !2838, line: 268, baseType: !25, size: 32, offset: 928)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3561, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3561, file: !2838, line: 274, baseType: !93, size: 16, offset: 1024)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3561, file: !2838, line: 275, baseType: !2868, size: 8, offset: 1040)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3561, file: !2838, line: 276, baseType: !2870, size: 8, offset: 1048)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3561, file: !2838, line: 280, baseType: !2872, size: 64, offset: 1088)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3561, file: !2838, line: 289, baseType: !2875, size: 64, offset: 1152)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3561, file: !2838, line: 297, baseType: !49, size: 64, offset: 1216)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3561, file: !2838, line: 298, baseType: !49, size: 64, offset: 1280)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3561, file: !2838, line: 299, baseType: !49, size: 64, offset: 1344)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3561, file: !2838, line: 300, baseType: !49, size: 64, offset: 1408)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3561, file: !2838, line: 302, baseType: !94, size: 64, offset: 1472)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3561, file: !2838, line: 303, baseType: !25, size: 32, offset: 1536)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3561, file: !2838, line: 305, baseType: !2883, size: 160, offset: 1568)
!3599 = !DILocalVariable(name: "res_ptr", scope: !3539, file: !496, line: 190, type: !50)
!3600 = !DILocalVariable(name: "res_size", scope: !3539, file: !496, line: 191, type: !94)
!3601 = !DILocalVariable(name: "c", scope: !3536, file: !496, line: 195, type: !25)
!3602 = !DILocalVariable(name: "buf2", scope: !3536, file: !496, line: 197, type: !3603)
!3603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3604)
!3604 = !{!3605}
!3605 = !DISubrange(count: 51)
!3606 = !DILocalVariable(name: "l1", scope: !3536, file: !496, line: 198, type: !94)
!3607 = !DILocalVariable(name: "l2", scope: !3536, file: !496, line: 198, type: !94)
!3608 = !DILocalVariable(name: "old_res_ptr", scope: !3536, file: !496, line: 199, type: !50)
!3609 = !DILocation(line: 196, column: 28, scope: !3536, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 589, column: 18, scope: !3533)
!3611 = !DILocation(line: 197, column: 28, scope: !3536, inlinedAt: !3610)
!3612 = !DILocation(line: 403, column: 13, scope: !3523)
!3613 = !DILocation(line: 395, column: 15, scope: !3523)
!3614 = !DILocation(line: 584, column: 15, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3523, file: !496, line: 584, column: 7)
!3616 = !DILocation(line: 584, column: 7, scope: !3523)
!3617 = !DILocation(line: 128, column: 8, scope: !3547, inlinedAt: !3610)
!3618 = !DILocation(line: 126, column: 15, scope: !3547, inlinedAt: !3610)
!3619 = !DILocation(line: 129, column: 10, scope: !3546, inlinedAt: !3610)
!3620 = !DILocation(line: 129, column: 7, scope: !3547, inlinedAt: !3610)
!3621 = !DILocation(line: 138, column: 13, scope: !3545, inlinedAt: !3610)
!3622 = !DILocation(line: 132, column: 19, scope: !3545, inlinedAt: !3610)
!3623 = !DILocation(line: 139, column: 15, scope: !3624, inlinedAt: !3610)
!3624 = distinct !DILexicalBlock(scope: !3545, file: !496, line: 139, column: 11)
!3625 = !DILocation(line: 139, column: 23, scope: !3624, inlinedAt: !3610)
!3626 = !DILocation(line: 139, column: 26, scope: !3627, inlinedAt: !3610)
!3627 = !DILexicalBlockFile(scope: !3624, file: !496, discriminator: 1)
!3628 = !DILocation(line: 139, column: 33, scope: !3627, inlinedAt: !3610)
!3629 = !DILocation(line: 139, column: 11, scope: !3630, inlinedAt: !3610)
!3630 = !DILexicalBlockFile(scope: !3545, file: !496, discriminator: 1)
!3631 = !DILocation(line: 140, column: 9, scope: !3624, inlinedAt: !3610)
!3632 = !DILocation(line: 144, column: 26, scope: !3554, inlinedAt: !3610)
!3633 = !DILocation(line: 144, column: 16, scope: !3554, inlinedAt: !3610)
!3634 = !DILocation(line: 145, column: 16, scope: !3554, inlinedAt: !3610)
!3635 = !DILocation(line: 146, column: 34, scope: !3554, inlinedAt: !3610)
!3636 = !DILocation(line: 146, column: 38, scope: !3554, inlinedAt: !3610)
!3637 = !DILocation(line: 146, column: 42, scope: !3638, inlinedAt: !3610)
!3638 = !DILexicalBlockFile(scope: !3554, file: !496, discriminator: 1)
!3639 = !DILocation(line: 146, column: 41, scope: !3638, inlinedAt: !3610)
!3640 = !DILocation(line: 147, column: 48, scope: !3554, inlinedAt: !3610)
!3641 = !DILocation(line: 147, column: 46, scope: !3554, inlinedAt: !3610)
!3642 = !DILocation(line: 147, column: 69, scope: !3554, inlinedAt: !3610)
!3643 = !DILocation(line: 147, column: 30, scope: !3554, inlinedAt: !3610)
!3644 = !DILocation(line: 134, column: 13, scope: !3545, inlinedAt: !3610)
!3645 = !DILocation(line: 148, column: 13, scope: !3554, inlinedAt: !3610)
!3646 = !DILocation(line: 150, column: 13, scope: !3647, inlinedAt: !3610)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !496, line: 149, column: 11)
!3648 = distinct !DILexicalBlock(scope: !3554, file: !496, line: 148, column: 13)
!3649 = !DILocation(line: 151, column: 17, scope: !3647, inlinedAt: !3610)
!3650 = !DILocation(line: 152, column: 34, scope: !3651, inlinedAt: !3610)
!3651 = distinct !DILexicalBlock(scope: !3647, file: !496, line: 151, column: 17)
!3652 = !DILocation(line: 153, column: 41, scope: !3647, inlinedAt: !3610)
!3653 = !DILocation(line: 153, column: 13, scope: !3647, inlinedAt: !3610)
!3654 = !DILocation(line: 157, column: 11, scope: !3545, inlinedAt: !3610)
!3655 = !DILocation(line: 171, column: 16, scope: !3543, inlinedAt: !3610)
!3656 = !DILocation(line: 162, column: 15, scope: !3543, inlinedAt: !3610)
!3657 = !DILocation(line: 173, column: 18, scope: !3542, inlinedAt: !3610)
!3658 = !DILocation(line: 173, column: 15, scope: !3543, inlinedAt: !3610)
!3659 = !DILocation(line: 180, column: 20, scope: !3541, inlinedAt: !3610)
!3660 = !DILocation(line: 178, column: 21, scope: !3541, inlinedAt: !3610)
!3661 = !DILocation(line: 181, column: 22, scope: !3540, inlinedAt: !3610)
!3662 = !DILocation(line: 181, column: 19, scope: !3541, inlinedAt: !3610)
!3663 = !DILocation(line: 190, column: 25, scope: !3539, inlinedAt: !3610)
!3664 = !DILocation(line: 184, column: 19, scope: !3665, inlinedAt: !3610)
!3665 = distinct !DILexicalBlock(scope: !3540, file: !496, line: 182, column: 17)
!3666 = !DILocation(line: 186, column: 17, scope: !3665, inlinedAt: !3610)
!3667 = !DILocation(line: 191, column: 26, scope: !3539, inlinedAt: !3610)
!3668 = !DILocation(line: 196, column: 23, scope: !3536, inlinedAt: !3610)
!3669 = !DILocation(line: 197, column: 23, scope: !3536, inlinedAt: !3610)
!3670 = !DILocalVariable(name: "__fp", arg: 1, scope: !3671, file: !3443, line: 63, type: !3559)
!3671 = distinct !DISubprogram(name: "getc_unlocked", scope: !3443, file: !3443, line: 63, type: !3672, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3674)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!25, !3559}
!3674 = !{!3670}
!3675 = !DILocation(line: 63, column: 22, scope: !3671, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 201, column: 27, scope: !3536, inlinedAt: !3610)
!3677 = !DILocation(line: 65, column: 10, scope: !3671, inlinedAt: !3676)
!3678 = !{!3449, !598, i64 8}
!3679 = !{!3449, !598, i64 16}
!3680 = !{!"branch_weights", i32 2000, i32 1}
!3681 = !DILocation(line: 65, column: 10, scope: !3682, inlinedAt: !3676)
!3682 = !DILexicalBlockFile(scope: !3671, file: !3443, discriminator: 1)
!3683 = !DILocation(line: 65, column: 10, scope: !3684, inlinedAt: !3676)
!3684 = !DILexicalBlockFile(scope: !3671, file: !3443, discriminator: 2)
!3685 = !DILocation(line: 65, column: 10, scope: !3686, inlinedAt: !3676)
!3686 = !DILexicalBlockFile(scope: !3671, file: !3443, discriminator: 3)
!3687 = !DILocation(line: 195, column: 27, scope: !3536, inlinedAt: !3610)
!3688 = !DILocation(line: 202, column: 27, scope: !3536, inlinedAt: !3610)
!3689 = !DILocation(line: 63, column: 22, scope: !3671, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 210, column: 33, scope: !3691, inlinedAt: !3610)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !496, line: 207, column: 25)
!3692 = distinct !DILexicalBlock(scope: !3536, file: !496, line: 206, column: 27)
!3693 = !DILocation(line: 65, column: 10, scope: !3671, inlinedAt: !3690)
!3694 = !DILocation(line: 65, column: 10, scope: !3682, inlinedAt: !3690)
!3695 = !DILocation(line: 65, column: 10, scope: !3684, inlinedAt: !3690)
!3696 = !DILocation(line: 65, column: 10, scope: !3686, inlinedAt: !3690)
!3697 = !DILocation(line: 210, column: 29, scope: !3698, inlinedAt: !3610)
!3698 = !DILexicalBlockFile(scope: !3691, file: !496, discriminator: 1)
!3699 = distinct !{!3699, !3700, !3701}
!3700 = !DILocation(line: 193, column: 19, scope: !3538)
!3701 = !DILocation(line: 241, column: 21, scope: !3538)
!3702 = !DILocation(line: 216, column: 23, scope: !3536, inlinedAt: !3610)
!3703 = !DILocation(line: 217, column: 27, scope: !3704, inlinedAt: !3610)
!3704 = distinct !DILexicalBlock(scope: !3536, file: !496, line: 217, column: 27)
!3705 = !DILocation(line: 217, column: 64, scope: !3704, inlinedAt: !3610)
!3706 = !DILocation(line: 217, column: 27, scope: !3536, inlinedAt: !3610)
!3707 = !DILocation(line: 219, column: 28, scope: !3536, inlinedAt: !3610)
!3708 = !DILocation(line: 198, column: 30, scope: !3536, inlinedAt: !3610)
!3709 = !DILocation(line: 220, column: 28, scope: !3536, inlinedAt: !3610)
!3710 = !DILocation(line: 198, column: 34, scope: !3536, inlinedAt: !3610)
!3711 = !DILocation(line: 199, column: 29, scope: !3536, inlinedAt: !3610)
!3712 = !DILocation(line: 222, column: 36, scope: !3713, inlinedAt: !3610)
!3713 = distinct !DILexicalBlock(scope: !3536, file: !496, line: 222, column: 27)
!3714 = !DILocation(line: 222, column: 27, scope: !3536, inlinedAt: !3610)
!3715 = !DILocation(line: 225, column: 63, scope: !3716, inlinedAt: !3610)
!3716 = distinct !DILexicalBlock(scope: !3713, file: !496, line: 223, column: 25)
!3717 = !DILocation(line: 225, column: 46, scope: !3716, inlinedAt: !3610)
!3718 = !DILocation(line: 226, column: 25, scope: !3716, inlinedAt: !3610)
!3719 = !DILocation(line: 229, column: 36, scope: !3720, inlinedAt: !3610)
!3720 = distinct !DILexicalBlock(scope: !3713, file: !496, line: 228, column: 25)
!3721 = !DILocation(line: 230, column: 73, scope: !3720, inlinedAt: !3610)
!3722 = !DILocation(line: 230, column: 46, scope: !3720, inlinedAt: !3610)
!3723 = !DILocation(line: 232, column: 35, scope: !3724, inlinedAt: !3610)
!3724 = distinct !DILexicalBlock(scope: !3536, file: !496, line: 232, column: 27)
!3725 = !DILocation(line: 232, column: 27, scope: !3536, inlinedAt: !3610)
!3726 = !DILocation(line: 236, column: 27, scope: !3727, inlinedAt: !3610)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !496, line: 233, column: 25)
!3728 = !DILocation(line: 237, column: 27, scope: !3727, inlinedAt: !3610)
!3729 = !DILocation(line: 239, column: 39, scope: !3536, inlinedAt: !3610)
!3730 = !DILocation(line: 239, column: 50, scope: !3536, inlinedAt: !3610)
!3731 = !DILocation(line: 239, column: 61, scope: !3536, inlinedAt: !3610)
!3732 = !DILocalVariable(name: "__dest", arg: 1, scope: !3733, file: !3734, line: 107, type: !3737)
!3733 = distinct !DISubprogram(name: "strcpy", scope: !3734, file: !3734, line: 107, type: !3735, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3739)
!3734 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!50, !3737, !3738}
!3737 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3738 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3739 = !{!3732, !3740}
!3740 = !DILocalVariable(name: "__src", arg: 2, scope: !3733, file: !3734, line: 107, type: !3738)
!3741 = !DILocation(line: 107, column: 1, scope: !3733, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 239, column: 23, scope: !3536, inlinedAt: !3610)
!3743 = !DILocation(line: 109, column: 49, scope: !3733, inlinedAt: !3742)
!3744 = !DILocation(line: 109, column: 10, scope: !3733, inlinedAt: !3742)
!3745 = !DILocation(line: 107, column: 1, scope: !3733, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 240, column: 23, scope: !3536, inlinedAt: !3610)
!3747 = !DILocation(line: 109, column: 49, scope: !3733, inlinedAt: !3746)
!3748 = !DILocation(line: 109, column: 10, scope: !3733, inlinedAt: !3746)
!3749 = !DILocation(line: 241, column: 21, scope: !3537, inlinedAt: !3610)
!3750 = !DILocation(line: 242, column: 19, scope: !3539, inlinedAt: !3610)
!3751 = !DILocation(line: 243, column: 32, scope: !3752, inlinedAt: !3610)
!3752 = distinct !DILexicalBlock(scope: !3539, file: !496, line: 243, column: 23)
!3753 = !DILocation(line: 243, column: 23, scope: !3539, inlinedAt: !3610)
!3754 = !DILocation(line: 247, column: 33, scope: !3755, inlinedAt: !3610)
!3755 = distinct !DILexicalBlock(scope: !3752, file: !496, line: 246, column: 21)
!3756 = !DILocation(line: 247, column: 45, scope: !3755, inlinedAt: !3610)
!3757 = !DILocation(line: 253, column: 11, scope: !3543, inlinedAt: !3610)
!3758 = !DILocation(line: 377, column: 23, scope: !3545, inlinedAt: !3610)
!3759 = !DILocation(line: 378, column: 5, scope: !3545, inlinedAt: !3610)
!3760 = !DILocation(line: 396, column: 15, scope: !3523)
!3761 = !DILocation(line: 590, column: 8, scope: !3532)
!3762 = !DILocation(line: 590, column: 17, scope: !3532)
!3763 = !DILocation(line: 589, column: 3, scope: !3764)
!3764 = !DILexicalBlockFile(scope: !3533, file: !496, discriminator: 1)
!3765 = !DILocation(line: 592, column: 9, scope: !3530)
!3766 = !DILocation(line: 592, column: 35, scope: !3531)
!3767 = !DILocation(line: 593, column: 9, scope: !3531)
!3768 = !DILocation(line: 593, column: 24, scope: !3769)
!3769 = !DILexicalBlockFile(scope: !3531, file: !496, discriminator: 1)
!3770 = !DILocation(line: 593, column: 31, scope: !3769)
!3771 = !DILocation(line: 593, column: 34, scope: !3772)
!3772 = !DILexicalBlockFile(scope: !3531, file: !496, discriminator: 2)
!3773 = !DILocation(line: 593, column: 45, scope: !3772)
!3774 = !DILocation(line: 592, column: 9, scope: !3775)
!3775 = !DILexicalBlockFile(scope: !3532, file: !496, discriminator: 1)
!3776 = !DILocation(line: 595, column: 29, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3531, file: !496, line: 594, column: 7)
!3778 = !DILocation(line: 595, column: 27, scope: !3777)
!3779 = !DILocation(line: 595, column: 46, scope: !3777)
!3780 = !DILocation(line: 596, column: 9, scope: !3777)
!3781 = !DILocation(line: 591, column: 19, scope: !3532)
!3782 = !DILocation(line: 591, column: 36, scope: !3532)
!3783 = !DILocation(line: 591, column: 16, scope: !3532)
!3784 = !DILocation(line: 591, column: 52, scope: !3775)
!3785 = !DILocation(line: 591, column: 69, scope: !3532)
!3786 = !DILocation(line: 591, column: 49, scope: !3532)
!3787 = distinct !{!3787, !3788, !3789}
!3788 = !DILocation(line: 589, column: 3, scope: !3533)
!3789 = !DILocation(line: 597, column: 7, scope: !3533)
!3790 = !DILocation(line: 602, column: 7, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3523, file: !496, line: 602, column: 7)
!3792 = !DILocation(line: 602, column: 18, scope: !3791)
!3793 = !DILocation(line: 602, column: 7, scope: !3523)
!3794 = !DILocation(line: 612, column: 3, scope: !3523)
!3795 = distinct !DISubprogram(name: "rpl_fclose", scope: !3796, file: !3796, line: 56, type: !3797, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3839)
!3796 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!25, !3799}
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !798, line: 49, baseType: !3801)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !3802)
!3802 = !{!3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3801, file: !2838, line: 242, baseType: !25, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3801, file: !2838, line: 247, baseType: !50, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3801, file: !2838, line: 248, baseType: !50, size: 64, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3801, file: !2838, line: 249, baseType: !50, size: 64, offset: 192)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3801, file: !2838, line: 250, baseType: !50, size: 64, offset: 256)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3801, file: !2838, line: 251, baseType: !50, size: 64, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3801, file: !2838, line: 252, baseType: !50, size: 64, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3801, file: !2838, line: 253, baseType: !50, size: 64, offset: 448)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3801, file: !2838, line: 254, baseType: !50, size: 64, offset: 512)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3801, file: !2838, line: 256, baseType: !50, size: 64, offset: 576)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3801, file: !2838, line: 257, baseType: !50, size: 64, offset: 640)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3801, file: !2838, line: 258, baseType: !50, size: 64, offset: 704)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3801, file: !2838, line: 260, baseType: !3816, size: 64, offset: 768)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !3818)
!3818 = !{!3819, !3820, !3822}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3817, file: !2838, line: 157, baseType: !3816, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3817, file: !2838, line: 158, baseType: !3821, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3817, file: !2838, line: 162, baseType: !25, size: 32, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3801, file: !2838, line: 262, baseType: !3821, size: 64, offset: 832)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3801, file: !2838, line: 264, baseType: !25, size: 32, offset: 896)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3801, file: !2838, line: 268, baseType: !25, size: 32, offset: 928)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3801, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3801, file: !2838, line: 274, baseType: !93, size: 16, offset: 1024)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3801, file: !2838, line: 275, baseType: !2868, size: 8, offset: 1040)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3801, file: !2838, line: 276, baseType: !2870, size: 8, offset: 1048)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3801, file: !2838, line: 280, baseType: !2872, size: 64, offset: 1088)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3801, file: !2838, line: 289, baseType: !2875, size: 64, offset: 1152)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3801, file: !2838, line: 297, baseType: !49, size: 64, offset: 1216)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3801, file: !2838, line: 298, baseType: !49, size: 64, offset: 1280)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3801, file: !2838, line: 299, baseType: !49, size: 64, offset: 1344)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3801, file: !2838, line: 300, baseType: !49, size: 64, offset: 1408)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3801, file: !2838, line: 302, baseType: !94, size: 64, offset: 1472)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3801, file: !2838, line: 303, baseType: !25, size: 32, offset: 1536)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3801, file: !2838, line: 305, baseType: !2883, size: 160, offset: 1568)
!3839 = !{!3840, !3841, !3842, !3843}
!3840 = !DILocalVariable(name: "fp", arg: 1, scope: !3795, file: !3796, line: 56, type: !3799)
!3841 = !DILocalVariable(name: "saved_errno", scope: !3795, file: !3796, line: 58, type: !25)
!3842 = !DILocalVariable(name: "fd", scope: !3795, file: !3796, line: 59, type: !25)
!3843 = !DILocalVariable(name: "result", scope: !3795, file: !3796, line: 60, type: !25)
!3844 = !DILocation(line: 56, column: 19, scope: !3795)
!3845 = !DILocation(line: 58, column: 7, scope: !3795)
!3846 = !DILocation(line: 60, column: 7, scope: !3795)
!3847 = !DILocation(line: 63, column: 8, scope: !3795)
!3848 = !DILocation(line: 59, column: 7, scope: !3795)
!3849 = !DILocation(line: 64, column: 10, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3795, file: !3796, line: 64, column: 7)
!3851 = !DILocation(line: 64, column: 7, scope: !3795)
!3852 = !DILocation(line: 65, column: 12, scope: !3850)
!3853 = !DILocation(line: 65, column: 5, scope: !3850)
!3854 = !DILocation(line: 70, column: 9, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3795, file: !3796, line: 70, column: 7)
!3856 = !DILocation(line: 70, column: 23, scope: !3855)
!3857 = !DILocation(line: 70, column: 33, scope: !3858)
!3858 = !DILexicalBlockFile(scope: !3855, file: !3796, discriminator: 1)
!3859 = !DILocation(line: 70, column: 26, scope: !3860)
!3860 = !DILexicalBlockFile(scope: !3855, file: !3796, discriminator: 3)
!3861 = !DILocation(line: 70, column: 59, scope: !3858)
!3862 = !DILocation(line: 71, column: 7, scope: !3855)
!3863 = !DILocation(line: 71, column: 10, scope: !3858)
!3864 = !DILocation(line: 70, column: 7, scope: !3865)
!3865 = !DILexicalBlockFile(scope: !3795, file: !3796, discriminator: 2)
!3866 = !DILocation(line: 98, column: 12, scope: !3795)
!3867 = !DILocation(line: 103, column: 7, scope: !3795)
!3868 = !DILocation(line: 72, column: 19, scope: !3855)
!3869 = !DILocation(line: 103, column: 19, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3795, file: !3796, line: 103, column: 7)
!3871 = !DILocation(line: 105, column: 13, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3870, file: !3796, line: 104, column: 5)
!3873 = !DILocation(line: 107, column: 5, scope: !3872)
!3874 = !DILocation(line: 110, column: 1, scope: !3795)
!3875 = distinct !DISubprogram(name: "rpl_fflush", scope: !3876, file: !3876, line: 127, type: !3877, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3919)
!3876 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!25, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !798, line: 49, baseType: !3881)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !3882)
!3882 = !{!3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3881, file: !2838, line: 242, baseType: !25, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3881, file: !2838, line: 247, baseType: !50, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3881, file: !2838, line: 248, baseType: !50, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3881, file: !2838, line: 249, baseType: !50, size: 64, offset: 192)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3881, file: !2838, line: 250, baseType: !50, size: 64, offset: 256)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3881, file: !2838, line: 251, baseType: !50, size: 64, offset: 320)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3881, file: !2838, line: 252, baseType: !50, size: 64, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3881, file: !2838, line: 253, baseType: !50, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3881, file: !2838, line: 254, baseType: !50, size: 64, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3881, file: !2838, line: 256, baseType: !50, size: 64, offset: 576)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3881, file: !2838, line: 257, baseType: !50, size: 64, offset: 640)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3881, file: !2838, line: 258, baseType: !50, size: 64, offset: 704)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3881, file: !2838, line: 260, baseType: !3896, size: 64, offset: 768)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !3898)
!3898 = !{!3899, !3900, !3902}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3897, file: !2838, line: 157, baseType: !3896, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3897, file: !2838, line: 158, baseType: !3901, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3897, file: !2838, line: 162, baseType: !25, size: 32, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3881, file: !2838, line: 262, baseType: !3901, size: 64, offset: 832)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3881, file: !2838, line: 264, baseType: !25, size: 32, offset: 896)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3881, file: !2838, line: 268, baseType: !25, size: 32, offset: 928)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3881, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3881, file: !2838, line: 274, baseType: !93, size: 16, offset: 1024)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3881, file: !2838, line: 275, baseType: !2868, size: 8, offset: 1040)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3881, file: !2838, line: 276, baseType: !2870, size: 8, offset: 1048)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3881, file: !2838, line: 280, baseType: !2872, size: 64, offset: 1088)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3881, file: !2838, line: 289, baseType: !2875, size: 64, offset: 1152)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3881, file: !2838, line: 297, baseType: !49, size: 64, offset: 1216)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3881, file: !2838, line: 298, baseType: !49, size: 64, offset: 1280)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3881, file: !2838, line: 299, baseType: !49, size: 64, offset: 1344)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3881, file: !2838, line: 300, baseType: !49, size: 64, offset: 1408)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3881, file: !2838, line: 302, baseType: !94, size: 64, offset: 1472)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3881, file: !2838, line: 303, baseType: !25, size: 32, offset: 1536)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3881, file: !2838, line: 305, baseType: !2883, size: 160, offset: 1568)
!3919 = !{!3920}
!3920 = !DILocalVariable(name: "stream", arg: 1, scope: !3875, file: !3876, line: 127, type: !3879)
!3921 = !DILocation(line: 127, column: 19, scope: !3875)
!3922 = !DILocation(line: 148, column: 14, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3875, file: !3876, line: 148, column: 7)
!3924 = !DILocation(line: 148, column: 22, scope: !3923)
!3925 = !DILocation(line: 148, column: 27, scope: !3926)
!3926 = !DILexicalBlockFile(scope: !3923, file: !3876, discriminator: 1)
!3927 = !DILocation(line: 148, column: 7, scope: !3928)
!3928 = !DILexicalBlockFile(scope: !3875, file: !3876, discriminator: 1)
!3929 = !DILocation(line: 149, column: 12, scope: !3923)
!3930 = !DILocation(line: 149, column: 5, scope: !3923)
!3931 = !DILocalVariable(name: "fp", arg: 1, scope: !3932, file: !3876, line: 40, type: !3879)
!3932 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3876, file: !3876, line: 40, type: !3933, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !3879}
!3935 = !{!3931}
!3936 = !DILocation(line: 40, column: 48, scope: !3932, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 153, column: 3, scope: !3875)
!3938 = !DILocation(line: 42, column: 11, scope: !3939, inlinedAt: !3937)
!3939 = distinct !DILexicalBlock(scope: !3932, file: !3876, line: 42, column: 7)
!3940 = !DILocation(line: 42, column: 18, scope: !3939, inlinedAt: !3937)
!3941 = !DILocation(line: 42, column: 7, scope: !3932, inlinedAt: !3937)
!3942 = !DILocation(line: 44, column: 5, scope: !3939, inlinedAt: !3937)
!3943 = !DILocation(line: 155, column: 10, scope: !3875)
!3944 = !DILocation(line: 155, column: 3, scope: !3875)
!3945 = !DILocation(line: 229, column: 1, scope: !3875)
!3946 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3947, file: !3947, line: 28, type: !3948, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !3991)
!3947 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!25, !3950, !3990, !25}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !798, line: 49, baseType: !3952)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2838, line: 241, size: 1728, elements: !3953)
!3953 = !{!3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3952, file: !2838, line: 242, baseType: !25, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3952, file: !2838, line: 247, baseType: !50, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3952, file: !2838, line: 248, baseType: !50, size: 64, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3952, file: !2838, line: 249, baseType: !50, size: 64, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3952, file: !2838, line: 250, baseType: !50, size: 64, offset: 256)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3952, file: !2838, line: 251, baseType: !50, size: 64, offset: 320)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3952, file: !2838, line: 252, baseType: !50, size: 64, offset: 384)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3952, file: !2838, line: 253, baseType: !50, size: 64, offset: 448)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3952, file: !2838, line: 254, baseType: !50, size: 64, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3952, file: !2838, line: 256, baseType: !50, size: 64, offset: 576)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3952, file: !2838, line: 257, baseType: !50, size: 64, offset: 640)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3952, file: !2838, line: 258, baseType: !50, size: 64, offset: 704)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3952, file: !2838, line: 260, baseType: !3967, size: 64, offset: 768)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2838, line: 156, size: 192, elements: !3969)
!3969 = !{!3970, !3971, !3973}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3968, file: !2838, line: 157, baseType: !3967, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3968, file: !2838, line: 158, baseType: !3972, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3968, file: !2838, line: 162, baseType: !25, size: 32, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3952, file: !2838, line: 262, baseType: !3972, size: 64, offset: 832)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3952, file: !2838, line: 264, baseType: !25, size: 32, offset: 896)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3952, file: !2838, line: 268, baseType: !25, size: 32, offset: 928)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3952, file: !2838, line: 270, baseType: !2864, size: 64, offset: 960)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3952, file: !2838, line: 274, baseType: !93, size: 16, offset: 1024)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3952, file: !2838, line: 275, baseType: !2868, size: 8, offset: 1040)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3952, file: !2838, line: 276, baseType: !2870, size: 8, offset: 1048)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3952, file: !2838, line: 280, baseType: !2872, size: 64, offset: 1088)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3952, file: !2838, line: 289, baseType: !2875, size: 64, offset: 1152)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3952, file: !2838, line: 297, baseType: !49, size: 64, offset: 1216)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3952, file: !2838, line: 298, baseType: !49, size: 64, offset: 1280)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3952, file: !2838, line: 299, baseType: !49, size: 64, offset: 1344)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3952, file: !2838, line: 300, baseType: !49, size: 64, offset: 1408)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3952, file: !2838, line: 302, baseType: !94, size: 64, offset: 1472)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3952, file: !2838, line: 303, baseType: !25, size: 32, offset: 1536)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3952, file: !2838, line: 305, baseType: !2883, size: 160, offset: 1568)
!3990 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !798, line: 91, baseType: !2864)
!3991 = !{!3992, !3993, !3994, !3995}
!3992 = !DILocalVariable(name: "fp", arg: 1, scope: !3946, file: !3947, line: 28, type: !3950)
!3993 = !DILocalVariable(name: "offset", arg: 2, scope: !3946, file: !3947, line: 28, type: !3990)
!3994 = !DILocalVariable(name: "whence", arg: 3, scope: !3946, file: !3947, line: 28, type: !25)
!3995 = !DILocalVariable(name: "pos", scope: !3996, file: !3947, line: 116, type: !3990)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !3947, line: 112, column: 5)
!3997 = distinct !DILexicalBlock(scope: !3946, file: !3947, line: 51, column: 7)
!3998 = !DILocation(line: 28, column: 15, scope: !3946)
!3999 = !DILocation(line: 28, column: 25, scope: !3946)
!4000 = !DILocation(line: 28, column: 37, scope: !3946)
!4001 = !DILocation(line: 51, column: 11, scope: !3997)
!4002 = !DILocation(line: 51, column: 31, scope: !3997)
!4003 = !DILocation(line: 51, column: 24, scope: !3997)
!4004 = !DILocation(line: 52, column: 7, scope: !3997)
!4005 = !DILocation(line: 52, column: 14, scope: !4006)
!4006 = !DILexicalBlockFile(scope: !3997, file: !3947, discriminator: 1)
!4007 = !{!3449, !598, i64 40}
!4008 = !DILocation(line: 52, column: 35, scope: !4006)
!4009 = !{!3449, !598, i64 32}
!4010 = !DILocation(line: 52, column: 28, scope: !4006)
!4011 = !DILocation(line: 53, column: 7, scope: !3997)
!4012 = !DILocation(line: 53, column: 14, scope: !4006)
!4013 = !{!3449, !598, i64 72}
!4014 = !DILocation(line: 53, column: 28, scope: !4006)
!4015 = !DILocation(line: 51, column: 7, scope: !4016)
!4016 = !DILexicalBlockFile(scope: !3946, file: !3947, discriminator: 1)
!4017 = !DILocation(line: 116, column: 26, scope: !3996)
!4018 = !DILocation(line: 116, column: 19, scope: !4019)
!4019 = !DILexicalBlockFile(scope: !3996, file: !3947, discriminator: 1)
!4020 = !DILocation(line: 116, column: 13, scope: !3996)
!4021 = !DILocation(line: 117, column: 15, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3996, file: !3947, line: 117, column: 11)
!4023 = !DILocation(line: 117, column: 11, scope: !3996)
!4024 = !DILocation(line: 127, column: 11, scope: !3996)
!4025 = !DILocation(line: 127, column: 18, scope: !3996)
!4026 = !DILocation(line: 128, column: 11, scope: !3996)
!4027 = !DILocation(line: 128, column: 19, scope: !3996)
!4028 = !{!3449, !2149, i64 144}
!4029 = !DILocation(line: 159, column: 7, scope: !3996)
!4030 = !DILocation(line: 161, column: 10, scope: !3946)
!4031 = !DILocation(line: 161, column: 3, scope: !3946)
!4032 = !DILocation(line: 162, column: 1, scope: !3946)
