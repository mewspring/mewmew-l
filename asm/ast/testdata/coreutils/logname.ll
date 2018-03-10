; ModuleID = 'coreutils-8.27/src/logname.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Print the name of the current user.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"logname\00", align 1
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
@.str.10 = private unnamed_addr constant [15 x i8] c"FIXME: unknown\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"no login name\00", align 1
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
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !605
  %10 = load i8*, i8** @program_name, align 8, !dbg !605, !tbaa !597
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !607
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !609
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609, !tbaa !597
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !610
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !611
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !597
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !612
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !613
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !613, !tbaa !597
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !614
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !514, metadata !589) #10, !dbg !615
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !514, metadata !589) #10, !dbg !615
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
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !630
  br label %31, !dbg !632

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !633
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !634
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !635
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0)) #10, !dbg !636
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
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !643, metadata !589), !dbg !646
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !644, metadata !589), !dbg !647
  %3 = load i8*, i8** %1, align 8, !dbg !648, !tbaa !597
  tail call void @set_program_name(i8* %3) #10, !dbg !649
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !650
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !651
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !652
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !653
  %8 = load i8*, i8** @Version, align 8, !dbg !654, !tbaa !597
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !655
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !656
  %10 = icmp eq i32 %9, -1, !dbg !658
  br i1 %10, label %12, label %11, !dbg !659

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #15, !dbg !660
  unreachable, !dbg !660

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !661, !tbaa !663
  %14 = icmp slt i32 %13, %0, !dbg !665
  br i1 %14, label %15, label %22, !dbg !666

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !667
  %17 = load i32, i32* @optind, align 4, !dbg !669, !tbaa !663
  %18 = sext i32 %17 to i64, !dbg !670
  %19 = getelementptr inbounds i8*, i8** %1, i64 %18, !dbg !670
  %20 = load i8*, i8** %19, align 8, !dbg !670, !tbaa !597
  %21 = tail call i8* @quote(i8* %20) #10, !dbg !671
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %21) #10, !dbg !673
  tail call void @usage(i32 1) #15, !dbg !675
  unreachable, !dbg !675

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @getlogin() #10, !dbg !676
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !645, metadata !589), !dbg !677
  %24 = icmp eq i8* %23, null, !dbg !678
  br i1 %24, label %25, label %27, !dbg !680

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !681
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #10, !dbg !682
  unreachable, !dbg !681

; <label>:27:                                     ; preds = %22
  %28 = tail call i32 @puts(i8* nonnull %23), !dbg !684
  ret i32 0, !dbg !685
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

declare i8* @getlogin() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !686 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !688, metadata !589), !dbg !689
  store i8* %0, i8** @file_name, align 8, !dbg !690, !tbaa !597
  ret void, !dbg !691
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !692 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !696, metadata !697), !dbg !698
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !699, !tbaa !700
  ret void, !dbg !702
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !703 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !597
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !711
  %3 = icmp eq i32 %2, 0, !dbg !712
  br i1 %3, label %21, label %4, !dbg !713

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !714, !tbaa !700, !range !716
  %6 = icmp eq i8 %5, 0, !dbg !714
  %7 = tail call i32* @__errno_location() #1, !dbg !717
  br i1 %6, label %11, label %8, !dbg !719

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !720, !tbaa !663
  %10 = icmp eq i32 %9, 32, !dbg !722
  br i1 %10, label %21, label %11, !dbg !723

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !725
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !707, metadata !589), !dbg !726
  %13 = load i8*, i8** @file_name, align 8, !dbg !727, !tbaa !597
  %14 = icmp eq i8* %13, null, !dbg !727
  %15 = load i32, i32* %7, align 4, !tbaa !663
  br i1 %14, label %18, label %16, !dbg !728

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !729
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.17, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !731
  br label %19, !dbg !733

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.18, i64 0, i64 0), i8* %12) #10, !dbg !734
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !735, !tbaa !663
  tail call void @_exit(i32 %20) #14, !dbg !736
  unreachable, !dbg !736

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !737, !tbaa !597
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !739
  %24 = icmp eq i32 %23, 0, !dbg !740
  br i1 %24, label %27, label %25, !dbg !741

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !742, !tbaa !663
  tail call void @_exit(i32 %26) #14, !dbg !743
  unreachable, !dbg !743

; <label>:27:                                     ; preds = %21
  ret void, !dbg !744
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !745 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !750, metadata !589), !dbg !777
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !751, metadata !589), !dbg !778
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !752, metadata !589), !dbg !779
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !753, metadata !589), !dbg !780
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !754, metadata !589), !dbg !781
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !755, metadata !589), !dbg !782
  %8 = load i32, i32* @opterr, align 4, !dbg !783, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !757, metadata !589), !dbg !784
  store i32 0, i32* @opterr, align 4, !dbg !785, !tbaa !663
  %9 = icmp eq i32 %0, 2, !dbg !786
  br i1 %9, label %10, label %17, !dbg !787

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !788
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !756, metadata !589), !dbg !790
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !791

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !793
  br label %17, !dbg !794

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !795
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !795
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !758, metadata !589), !dbg !796
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !797
  call void @llvm.va_start(i8* nonnull %14), !dbg !797
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !798, !tbaa !597
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !799
  call void @exit(i32 0) #14, !dbg !800
  unreachable, !dbg !800

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !801, !tbaa !663
  store i32 0, i32* @optind, align 4, !dbg !802, !tbaa !663
  ret void, !dbg !803
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !804 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !806, metadata !589), !dbg !809
  %2 = icmp eq i8* %0, null, !dbg !810
  br i1 %2, label %3, label %6, !dbg !812

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !813, !tbaa !597
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !815
  tail call void @abort() #14, !dbg !816
  unreachable, !dbg !816

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !817
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !807, metadata !589), !dbg !818
  %8 = icmp ne i8* %7, null, !dbg !819
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !820
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !822
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !808, metadata !589), !dbg !823
  %11 = ptrtoint i8* %10 to i64, !dbg !824
  %12 = ptrtoint i8* %0 to i64, !dbg !824
  %13 = sub i64 %11, %12, !dbg !824
  %14 = icmp sgt i64 %13, 6, !dbg !826
  br i1 %14, label %15, label %24, !dbg !827

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !828
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.36, i64 0, i64 0), i64 7) #13, !dbg !828
  %18 = icmp eq i32 %17, 0, !dbg !830
  br i1 %18, label %19, label %24, !dbg !831

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !806, metadata !589), !dbg !809
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.37, i64 0, i64 0), i64 3) #13, !dbg !832
  %21 = icmp eq i32 %20, 0, !dbg !835
  br i1 %21, label %22, label %24, !dbg !836

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !837
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !806, metadata !589), !dbg !809
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !839, !tbaa !597
  br label %24, !dbg !840

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !806, metadata !589), !dbg !809
  store i8* %25, i8** @program_name, align 8, !dbg !841, !tbaa !597
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !842, !tbaa !597
  ret void, !dbg !843
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !844 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !849, metadata !589), !dbg !852
  %2 = tail call i32* @__errno_location() #1, !dbg !853
  %3 = load i32, i32* %2, align 4, !dbg !853, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !850, metadata !589), !dbg !854
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !855
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !856
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !856
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !858
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !858
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !851, metadata !589), !dbg !859
  store i32 %3, i32* %2, align 4, !dbg !860, !tbaa !663
  ret %struct.quoting_options* %8, !dbg !861
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !862 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !868, metadata !589), !dbg !869
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !870
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !870
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !871
  %5 = load i32, i32* %4, align 8, !dbg !871, !tbaa !873
  ret i32 %5, !dbg !875
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !876 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !880, metadata !589), !dbg !882
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !881, metadata !589), !dbg !883
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !884
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !884
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !885
  store i32 %1, i32* %5, align 8, !dbg !887, !tbaa !873
  ret void, !dbg !888
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !889 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !893, metadata !589), !dbg !901
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !894, metadata !589), !dbg !902
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !895, metadata !589), !dbg !903
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !896, metadata !589), !dbg !904
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !905
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !905
  %6 = lshr i8 %1, 5, !dbg !906
  %7 = zext i8 %6 to i64, !dbg !906
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !908
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !897, metadata !589), !dbg !909
  %9 = and i8 %1, 31, !dbg !910
  %10 = zext i8 %9 to i32, !dbg !911
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !899, metadata !589), !dbg !912
  %11 = load i32, i32* %8, align 4, !dbg !913, !tbaa !663
  %12 = lshr i32 %11, %10, !dbg !914
  %13 = and i32 %12, 1, !dbg !915
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !900, metadata !589), !dbg !916
  %14 = and i32 %2, 1, !dbg !917
  %15 = xor i32 %13, %14, !dbg !918
  %16 = shl i32 %15, %10, !dbg !919
  %17 = xor i32 %16, %11, !dbg !920
  store i32 %17, i32* %8, align 4, !dbg !920, !tbaa !663
  ret i32 %13, !dbg !921
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !922 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !926, metadata !589), !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !927, metadata !589), !dbg !930
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !931
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !926, metadata !589), !dbg !929
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !933
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !926, metadata !589), !dbg !929
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !934
  %6 = load i32, i32* %5, align 4, !dbg !934, !tbaa !935
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !928, metadata !589), !dbg !936
  store i32 %1, i32* %5, align 4, !dbg !937, !tbaa !935
  ret i32 %6, !dbg !938
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !939 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !943, metadata !589), !dbg !946
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !944, metadata !589), !dbg !947
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !945, metadata !589), !dbg !948
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !949
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !943, metadata !589), !dbg !946
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !951
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !943, metadata !589), !dbg !946
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !952
  store i32 10, i32* %6, align 8, !dbg !953, !tbaa !873
  %7 = icmp ne i8* %1, null, !dbg !954
  %8 = icmp ne i8* %2, null, !dbg !956
  %9 = and i1 %7, %8, !dbg !958
  br i1 %9, label %11, label %10, !dbg !958

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !959
  unreachable, !dbg !959

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !960
  store i8* %1, i8** %12, align 8, !dbg !961, !tbaa !962
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !963
  store i8* %2, i8** %13, align 8, !dbg !964, !tbaa !965
  ret void, !dbg !966
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !967 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !971, metadata !589), !dbg !979
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !972, metadata !589), !dbg !980
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !973, metadata !589), !dbg !981
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !974, metadata !589), !dbg !982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !975, metadata !589), !dbg !983
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !984
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !984
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !976, metadata !589), !dbg !985
  %8 = tail call i32* @__errno_location() #1, !dbg !986
  %9 = load i32, i32* %8, align 4, !dbg !986, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !977, metadata !589), !dbg !987
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !988
  %11 = load i32, i32* %10, align 8, !dbg !988, !tbaa !873
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !989
  %13 = load i32, i32* %12, align 4, !dbg !989, !tbaa !935
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !990
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !991
  %16 = load i8*, i8** %15, align 8, !dbg !991, !tbaa !962
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !992
  %18 = load i8*, i8** %17, align 8, !dbg !992, !tbaa !965
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !993
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !978, metadata !589), !dbg !994
  store i32 %9, i32* %8, align 4, !dbg !995, !tbaa !663
  ret i64 %19, !dbg !996
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !997 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1003, metadata !589), !dbg !1066
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1004, metadata !589), !dbg !1067
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1005, metadata !589), !dbg !1068
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1006, metadata !589), !dbg !1069
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1007, metadata !589), !dbg !1070
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1008, metadata !589), !dbg !1071
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1009, metadata !589), !dbg !1072
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1010, metadata !589), !dbg !1073
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1011, metadata !589), !dbg !1074
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1013, metadata !589), !dbg !1075
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1014, metadata !589), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1015, metadata !589), !dbg !1077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1016, metadata !589), !dbg !1078
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1017, metadata !589), !dbg !1079
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1080
  %14 = icmp eq i64 %13, 1, !dbg !1081
  %15 = lshr i32 %5, 1, !dbg !1082
  %16 = trunc i32 %15 to i8, !dbg !1082
  %17 = and i8 %16, 1, !dbg !1082
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1019, metadata !589), !dbg !1082
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1020, metadata !589), !dbg !1083
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1021, metadata !589), !dbg !1084
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1022, metadata !589), !dbg !1085
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1086

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1004, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1022, metadata !589), !dbg !1085
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1021, metadata !589), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1019, metadata !589), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1006, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1017, metadata !589), !dbg !1079
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1016, metadata !589), !dbg !1078
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1015, metadata !589), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1014, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1011, metadata !589), !dbg !1074
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1010, metadata !589), !dbg !1073
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1007, metadata !589), !dbg !1070
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
  ], !dbg !1087

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1007, metadata !589), !dbg !1070
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1019, metadata !589), !dbg !1082
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1019, metadata !589), !dbg !1082
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1007, metadata !589), !dbg !1070
  br label %95, !dbg !1088

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1019, metadata !589), !dbg !1082
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1007, metadata !589), !dbg !1070
  %43 = and i8 %36, 1, !dbg !1090
  %44 = icmp eq i8 %43, 0, !dbg !1090
  br i1 %44, label %45, label %95, !dbg !1088

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1092
  br i1 %46, label %95, label %47, !dbg !1096

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1098, !tbaa !1100
  br label %95, !dbg !1098

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.48, i64 0, i64 0), i32 %28), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1010, metadata !589), !dbg !1073
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), i32 %28), !dbg !1105
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1011, metadata !589), !dbg !1074
  br label %51, !dbg !1106

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1011, metadata !589), !dbg !1074
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1010, metadata !589), !dbg !1073
  %54 = and i8 %36, 1, !dbg !1107
  %55 = icmp eq i8 %54, 0, !dbg !1107
  br i1 %55, label %56, label %73, !dbg !1109

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1015, metadata !589), !dbg !1077
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1013, metadata !589), !dbg !1075
  %57 = load i8, i8* %52, align 1, !dbg !1110, !tbaa !1100
  %58 = icmp eq i8 %57, 0, !dbg !1114
  br i1 %58, label %73, label %59, !dbg !1114

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1116

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1116
  br i1 %64, label %65, label %67, !dbg !1120

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1122
  store i8 %61, i8* %66, align 1, !dbg !1122, !tbaa !1100
  br label %67, !dbg !1122

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1013, metadata !589), !dbg !1075
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1015, metadata !589), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1015, metadata !589), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1013, metadata !589), !dbg !1075
  %70 = load i8, i8* %69, align 1, !dbg !1110, !tbaa !1100
  %71 = icmp eq i8 %70, 0, !dbg !1114
  br i1 %71, label %72, label %60, !dbg !1114, !llvm.loop !1128

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1075

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1017, metadata !589), !dbg !1079
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1015, metadata !589), !dbg !1077
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1131
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1016, metadata !589), !dbg !1078
  br label %95, !dbg !1132

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1017, metadata !589), !dbg !1079
  br label %77, !dbg !1133

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1017, metadata !589), !dbg !1079
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1019, metadata !589), !dbg !1082
  br label %79, !dbg !1134

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1019, metadata !589), !dbg !1082
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1017, metadata !589), !dbg !1079
  %82 = and i8 %81, 1, !dbg !1135
  %83 = icmp eq i8 %82, 0, !dbg !1135
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1017, metadata !589), !dbg !1079
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1137
  br label %85, !dbg !1137

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1019, metadata !589), !dbg !1082
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1017, metadata !589), !dbg !1079
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1007, metadata !589), !dbg !1070
  %88 = and i8 %87, 1, !dbg !1138
  %89 = icmp eq i8 %88, 0, !dbg !1138
  br i1 %89, label %90, label %95, !dbg !1140

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1141
  br i1 %91, label %95, label %92, !dbg !1145

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1147, !tbaa !1100
  br label %95, !dbg !1147

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1019, metadata !589), !dbg !1082
  br label %95, !dbg !1149

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1150
  unreachable, !dbg !1150

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1019, metadata !589), !dbg !1082
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1017, metadata !589), !dbg !1079
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1016, metadata !589), !dbg !1078
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1015, metadata !589), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1011, metadata !589), !dbg !1074
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1010, metadata !589), !dbg !1073
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1007, metadata !589), !dbg !1070
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1012, metadata !589), !dbg !1151
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
  br label %123, !dbg !1152

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1004, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1022, metadata !589), !dbg !1085
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1021, metadata !589), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1006, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1014, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1012, metadata !589), !dbg !1151
  %132 = icmp eq i64 %127, -1, !dbg !1153
  br i1 %132, label %135, label %133, !dbg !1155

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1156
  br i1 %134, label %597, label %139, !dbg !1158

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1160
  %137 = load i8, i8* %136, align 1, !dbg !1160, !tbaa !1100
  %138 = icmp eq i8 %137, 0, !dbg !1162
  br i1 %138, label %597, label %139, !dbg !1158

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1028, metadata !589), !dbg !1163
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1029, metadata !589), !dbg !1164
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1030, metadata !589), !dbg !1165
  br i1 %109, label %140, label %155, !dbg !1166

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1168
  %142 = and i1 %110, %132, !dbg !1170
  br i1 %142, label %143, label %145, !dbg !1170

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1171
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1006, metadata !589), !dbg !1069
  br label %145, !dbg !1172

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1006, metadata !589), !dbg !1069
  %147 = icmp ugt i64 %141, %146, !dbg !1174
  br i1 %147, label %155, label %148, !dbg !1176

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1177
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1178
  %151 = icmp ne i32 %150, 0, !dbg !1179
  %152 = or i1 %151, %112, !dbg !1179
  %153 = xor i1 %151, true, !dbg !1179
  %154 = zext i1 %153 to i8, !dbg !1179
  br i1 %152, label %155, label %644, !dbg !1179

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1028, metadata !589), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1006, metadata !589), !dbg !1069
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1181
  %159 = load i8, i8* %158, align 1, !dbg !1181, !tbaa !1100
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1023, metadata !589), !dbg !1182
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
  ], !dbg !1183

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1184

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1185

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1029, metadata !589), !dbg !1164
  %163 = and i8 %128, 1, !dbg !1190
  %164 = icmp eq i8 %163, 0, !dbg !1190
  %165 = and i1 %114, %164, !dbg !1193
  br i1 %165, label %166, label %182, !dbg !1193

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1195
  br i1 %167, label %168, label %170, !dbg !1200

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1202
  store i8 39, i8* %169, align 1, !dbg !1202, !tbaa !1100
  br label %170, !dbg !1202

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1013, metadata !589), !dbg !1075
  %172 = icmp ult i64 %171, %131, !dbg !1206
  br i1 %172, label %173, label %175, !dbg !1210

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1212
  store i8 36, i8* %174, align 1, !dbg !1212, !tbaa !1100
  br label %175, !dbg !1212

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1013, metadata !589), !dbg !1075
  %177 = icmp ult i64 %176, %131, !dbg !1216
  br i1 %177, label %178, label %180, !dbg !1220

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1222
  store i8 39, i8* %179, align 1, !dbg !1222, !tbaa !1100
  br label %180, !dbg !1222

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1020, metadata !589), !dbg !1083
  br label %182, !dbg !1226

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1013, metadata !589), !dbg !1075
  %185 = icmp ult i64 %183, %131, !dbg !1228
  br i1 %185, label %186, label %188, !dbg !1232

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1234
  store i8 92, i8* %187, align 1, !dbg !1234, !tbaa !1100
  br label %188, !dbg !1234

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1013, metadata !589), !dbg !1075
  br i1 %106, label %190, label %476, !dbg !1238

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1240
  %192 = icmp ult i64 %191, %156, !dbg !1242
  br i1 %192, label %193, label %476, !dbg !1243

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1244
  %195 = load i8, i8* %194, align 1, !dbg !1244, !tbaa !1100
  %196 = add i8 %195, -48, !dbg !1246
  %197 = icmp ult i8 %196, 10, !dbg !1246
  br i1 %197, label %198, label %476, !dbg !1246

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1247
  br i1 %199, label %200, label %202, !dbg !1252

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1254
  store i8 48, i8* %201, align 1, !dbg !1254, !tbaa !1100
  br label %202, !dbg !1254

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1013, metadata !589), !dbg !1075
  %204 = icmp ult i64 %203, %131, !dbg !1258
  br i1 %204, label %205, label %207, !dbg !1262

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1264
  store i8 48, i8* %206, align 1, !dbg !1264, !tbaa !1100
  br label %207, !dbg !1264

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1013, metadata !589), !dbg !1075
  br label %476, !dbg !1268

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1269

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1270

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1271

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1273

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1275
  %215 = icmp ult i64 %214, %156, !dbg !1277
  br i1 %215, label %216, label %476, !dbg !1278

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1279
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1281
  %219 = load i8, i8* %218, align 1, !dbg !1281, !tbaa !1100
  %220 = icmp eq i8 %219, 63, !dbg !1282
  br i1 %220, label %221, label %476, !dbg !1283

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1285
  %223 = load i8, i8* %222, align 1, !dbg !1285, !tbaa !1100
  %224 = sext i8 %223 to i32, !dbg !1285
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
  ], !dbg !1286

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1287

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1023, metadata !589), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1012, metadata !589), !dbg !1151
  %227 = icmp ult i64 %125, %131, !dbg !1289
  br i1 %227, label %228, label %230, !dbg !1293

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1295
  store i8 63, i8* %229, align 1, !dbg !1295, !tbaa !1100
  br label %230, !dbg !1295

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1013, metadata !589), !dbg !1075
  %232 = icmp ult i64 %231, %131, !dbg !1299
  br i1 %232, label %233, label %235, !dbg !1303

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1305
  store i8 34, i8* %234, align 1, !dbg !1305, !tbaa !1100
  br label %235, !dbg !1305

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1013, metadata !589), !dbg !1075
  %237 = icmp ult i64 %236, %131, !dbg !1309
  br i1 %237, label %238, label %240, !dbg !1313

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1315
  store i8 34, i8* %239, align 1, !dbg !1315, !tbaa !1100
  br label %240, !dbg !1315

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1013, metadata !589), !dbg !1075
  %242 = icmp ult i64 %241, %131, !dbg !1319
  br i1 %242, label %243, label %245, !dbg !1323

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1325
  store i8 63, i8* %244, align 1, !dbg !1325, !tbaa !1100
  br label %245, !dbg !1325

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1013, metadata !589), !dbg !1075
  br label %476, !dbg !1329

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1027, metadata !589), !dbg !1330
  br label %257, !dbg !1331

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1027, metadata !589), !dbg !1330
  br label %257, !dbg !1332

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1027, metadata !589), !dbg !1330
  br label %255, !dbg !1333

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1027, metadata !589), !dbg !1330
  br label %255, !dbg !1334

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1027, metadata !589), !dbg !1330
  br label %257, !dbg !1335

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1027, metadata !589), !dbg !1330
  br i1 %114, label %253, label %254, !dbg !1336

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1337

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1340

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1027, metadata !589), !dbg !1330
  br i1 %118, label %257, label %644, !dbg !1342

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1027, metadata !589), !dbg !1330
  br i1 %105, label %503, label %476, !dbg !1344

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1345
  br i1 %260, label %261, label %266, !dbg !1347

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1348, !tbaa !1100
  %263 = icmp ne i8 %262, 0, !dbg !1350
  %264 = icmp ne i64 %124, 0, !dbg !1351
  %265 = or i1 %264, %263, !dbg !1353
  br i1 %265, label %476, label %272, !dbg !1353

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1354
  %268 = icmp ne i64 %124, 0, !dbg !1351
  %269 = or i1 %268, %267, !dbg !1356
  br i1 %269, label %476, label %272, !dbg !1356

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1351
  br i1 %271, label %272, label %476, !dbg !1358

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1030, metadata !589), !dbg !1165
  br label %273, !dbg !1359

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1030, metadata !589), !dbg !1165
  br i1 %118, label %476, label %644, !dbg !1360

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1021, metadata !589), !dbg !1084
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1030, metadata !589), !dbg !1165
  br i1 %114, label %276, label %476, !dbg !1362

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1363

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1366
  %279 = icmp ne i64 %126, 0, !dbg !1368
  %280 = or i1 %279, %278, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1014, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1004, metadata !589), !dbg !1067
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1370
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1004, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1014, metadata !589), !dbg !1076
  %283 = icmp ult i64 %125, %282, !dbg !1371
  br i1 %283, label %284, label %286, !dbg !1375

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1377
  store i8 39, i8* %285, align 1, !dbg !1377, !tbaa !1100
  br label %286, !dbg !1377

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1013, metadata !589), !dbg !1075
  %288 = icmp ult i64 %287, %282, !dbg !1381
  br i1 %288, label %289, label %291, !dbg !1385

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1387
  store i8 92, i8* %290, align 1, !dbg !1387, !tbaa !1100
  br label %291, !dbg !1387

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1013, metadata !589), !dbg !1075
  %293 = icmp ult i64 %292, %282, !dbg !1391
  br i1 %293, label %294, label %296, !dbg !1395

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1397
  store i8 39, i8* %295, align 1, !dbg !1397, !tbaa !1100
  br label %296, !dbg !1397

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1020, metadata !589), !dbg !1083
  br label %476, !dbg !1401

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1402

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1031, metadata !589), !dbg !1403
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1404
  %301 = load i16*, i16** %300, align 8, !dbg !1404, !tbaa !597
  %302 = zext i8 %159 to i64, !dbg !1404
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1404
  %304 = load i16, i16* %303, align 2, !dbg !1404, !tbaa !1406
  %305 = lshr i16 %304, 14, !dbg !1408
  %306 = trunc i16 %305 to i8, !dbg !1408
  %307 = and i8 %306, 1, !dbg !1408
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1034, metadata !589), !dbg !1409
  br label %368, !dbg !1410

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1411
  store i64 0, i64* %10, align 8, !dbg !1412
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1031, metadata !589), !dbg !1403
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1034, metadata !589), !dbg !1409
  %309 = icmp eq i64 %156, -1, !dbg !1413
  br i1 %309, label %310, label %312, !dbg !1415, !llvm.loop !1416

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1006, metadata !589), !dbg !1069
  br label %312, !dbg !1420, !llvm.loop !1416

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1409

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1034, metadata !589), !dbg !1409
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1031, metadata !589), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1006, metadata !589), !dbg !1069
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1421
  %317 = add i64 %315, %124, !dbg !1422
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1423
  %319 = sub i64 %313, %317, !dbg !1424
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1035, metadata !1425), !dbg !1426
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1052, metadata !1425), !dbg !1427
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1055, metadata !589), !dbg !1429
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1430

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1031, metadata !589), !dbg !1403
  %322 = icmp ugt i64 %313, %317, !dbg !1431
  br i1 %322, label %323, label %351, !dbg !1434

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1435

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1435
  %328 = load i8, i8* %327, align 1, !dbg !1435, !tbaa !1100
  %329 = icmp eq i8 %328, 0, !dbg !1437
  br i1 %329, label %348, label %330, !dbg !1438

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1031, metadata !589), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1031, metadata !589), !dbg !1403
  %332 = add i64 %331, %124, !dbg !1441
  %333 = icmp ult i64 %332, %313, !dbg !1431
  br i1 %333, label %324, label %348, !dbg !1434, !llvm.loop !1442

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1444
  %336 = and i1 %116, %335, !dbg !1448
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1056, metadata !589), !dbg !1449
  br i1 %336, label %337, label %355, !dbg !1448

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1450

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1450
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1451
  %342 = load i8, i8* %341, align 1, !dbg !1451, !tbaa !1100
  %343 = sext i8 %342 to i32, !dbg !1451
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1452

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1056, metadata !589), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1056, metadata !589), !dbg !1449
  %346 = icmp ult i64 %345, %320, !dbg !1444
  br i1 %346, label %338, label %354, !dbg !1455, !llvm.loop !1457

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1409

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1409

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1409

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1034, metadata !589), !dbg !1409
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1031, metadata !589), !dbg !1403
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1460
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1461

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1461, !tbaa !663
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1052, metadata !589), !dbg !1427
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1463
  %358 = icmp eq i32 %357, 0, !dbg !1463
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1034, metadata !589), !dbg !1409
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1464
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1034, metadata !589), !dbg !1409
  %360 = add i64 %320, %315, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1031, metadata !589), !dbg !1403
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1034, metadata !589), !dbg !1409
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1031, metadata !589), !dbg !1403
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1460
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1035, metadata !1425), !dbg !1426
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1466
  %362 = icmp eq i32 %361, 0, !dbg !1467
  br i1 %362, label %314, label %363, !dbg !1468, !llvm.loop !1416

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1470

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1470
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1034, metadata !589), !dbg !1409
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1031, metadata !589), !dbg !1403
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1460
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1470
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1034, metadata !589), !dbg !1409
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1031, metadata !589), !dbg !1403
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1006, metadata !589), !dbg !1069
  %372 = and i8 %371, 1, !dbg !1471
  %373 = icmp ne i8 %372, 0, !dbg !1471
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1030, metadata !589), !dbg !1165
  %374 = icmp ult i64 %370, 2, !dbg !1472
  %375 = or i1 %373, %113, !dbg !1473
  %376 = and i1 %374, %375, !dbg !1475
  br i1 %376, label %476, label %377, !dbg !1475

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1063, metadata !589), !dbg !1477
  br label %379, !dbg !1478

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1029, metadata !589), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1028, metadata !589), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1023, metadata !589), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1012, metadata !589), !dbg !1151
  br i1 %375, label %432, label %386, !dbg !1479

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1484

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1029, metadata !589), !dbg !1164
  %388 = and i8 %382, 1, !dbg !1488
  %389 = icmp eq i8 %388, 0, !dbg !1488
  %390 = and i1 %114, %389, !dbg !1491
  br i1 %390, label %391, label %407, !dbg !1491

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1493
  br i1 %392, label %393, label %395, !dbg !1498

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1500
  store i8 39, i8* %394, align 1, !dbg !1500, !tbaa !1100
  br label %395, !dbg !1500

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1013, metadata !589), !dbg !1075
  %397 = icmp ult i64 %396, %131, !dbg !1504
  br i1 %397, label %398, label %400, !dbg !1508

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1510
  store i8 36, i8* %399, align 1, !dbg !1510, !tbaa !1100
  br label %400, !dbg !1510

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1013, metadata !589), !dbg !1075
  %402 = icmp ult i64 %401, %131, !dbg !1514
  br i1 %402, label %403, label %405, !dbg !1518

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1520
  store i8 39, i8* %404, align 1, !dbg !1520, !tbaa !1100
  br label %405, !dbg !1520

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1020, metadata !589), !dbg !1083
  br label %407, !dbg !1524

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1013, metadata !589), !dbg !1075
  %410 = icmp ult i64 %408, %131, !dbg !1526
  br i1 %410, label %411, label %413, !dbg !1530

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1532
  store i8 92, i8* %412, align 1, !dbg !1532, !tbaa !1100
  br label %413, !dbg !1532

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1013, metadata !589), !dbg !1075
  %415 = icmp ult i64 %414, %131, !dbg !1536
  br i1 %415, label %416, label %420, !dbg !1540

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1542
  %418 = or i8 %417, 48, !dbg !1542
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1542
  store i8 %418, i8* %419, align 1, !dbg !1542, !tbaa !1100
  br label %420, !dbg !1542

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1013, metadata !589), !dbg !1075
  %422 = icmp ult i64 %421, %131, !dbg !1546
  br i1 %422, label %423, label %428, !dbg !1550

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1552
  %425 = and i8 %424, 7, !dbg !1552
  %426 = or i8 %425, 48, !dbg !1552
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1552
  store i8 %426, i8* %427, align 1, !dbg !1552, !tbaa !1100
  br label %428, !dbg !1552

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1013, metadata !589), !dbg !1075
  %430 = and i8 %383, 7, !dbg !1556
  %431 = or i8 %430, 48, !dbg !1557
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1023, metadata !589), !dbg !1182
  br label %441, !dbg !1558

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1559
  %434 = icmp eq i8 %433, 0, !dbg !1559
  br i1 %434, label %441, label %435, !dbg !1561

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1562
  br i1 %436, label %437, label %439, !dbg !1567

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1569
  store i8 92, i8* %438, align 1, !dbg !1569, !tbaa !1100
  br label %439, !dbg !1569

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1028, metadata !589), !dbg !1163
  br label %441, !dbg !1573

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1029, metadata !589), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1028, metadata !589), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1023, metadata !589), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1013, metadata !589), !dbg !1075
  %447 = add i64 %380, 1, !dbg !1574
  %448 = icmp ugt i64 %378, %447, !dbg !1576
  br i1 %448, label %449, label %541, !dbg !1577

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1578
  %451 = icmp ne i8 %450, 0, !dbg !1578
  %452 = and i8 %446, 1, !dbg !1582
  %453 = icmp eq i8 %452, 0, !dbg !1582
  %454 = and i1 %451, %453, !dbg !1578
  br i1 %454, label %455, label %466, !dbg !1578

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1584
  br i1 %456, label %457, label %459, !dbg !1589

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1591
  store i8 39, i8* %458, align 1, !dbg !1591, !tbaa !1100
  br label %459, !dbg !1591

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1593
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1013, metadata !589), !dbg !1075
  %461 = icmp ult i64 %460, %131, !dbg !1595
  br i1 %461, label %462, label %464, !dbg !1599

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1601
  store i8 39, i8* %463, align 1, !dbg !1601, !tbaa !1100
  br label %464, !dbg !1601

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1020, metadata !589), !dbg !1083
  br label %466, !dbg !1605

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1013, metadata !589), !dbg !1075
  %469 = icmp ult i64 %467, %131, !dbg !1607
  br i1 %469, label %470, label %472, !dbg !1611

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1613
  store i8 %444, i8* %471, align 1, !dbg !1613, !tbaa !1100
  br label %472, !dbg !1613

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1012, metadata !589), !dbg !1151
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1617
  %475 = load i8, i8* %474, align 1, !dbg !1617, !tbaa !1100
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1023, metadata !589), !dbg !1182
  br label %379, !dbg !1618, !llvm.loop !1620

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1004, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1030, metadata !589), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1029, metadata !589), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1028, metadata !589), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1023, metadata !589), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1021, metadata !589), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1006, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1014, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1012, metadata !589), !dbg !1151
  br i1 %107, label %488, label %487, !dbg !1623

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1625

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1626

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1627
  %491 = zext i8 %490 to i64, !dbg !1627
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1629
  %493 = load i32, i32* %492, align 4, !dbg !1629, !tbaa !663
  %494 = and i8 %483, 31, !dbg !1630
  %495 = zext i8 %494 to i32, !dbg !1631
  %496 = shl i32 1, %495, !dbg !1632
  %497 = and i32 %493, %496, !dbg !1632
  %498 = icmp eq i32 %497, 0, !dbg !1632
  %499 = icmp eq i8 %157, 0, !dbg !1633
  %500 = and i1 %499, %498, !dbg !1634
  br i1 %500, label %542, label %503, !dbg !1634

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1633
  br i1 %502, label %542, label %503, !dbg !1635

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1004, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1030, metadata !589), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1023, metadata !589), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1021, metadata !589), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1006, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1014, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1012, metadata !589), !dbg !1151
  br i1 %112, label %513, label %644, !dbg !1637

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1029, metadata !589), !dbg !1164
  %514 = and i8 %508, 1, !dbg !1640
  %515 = icmp eq i8 %514, 0, !dbg !1640
  %516 = and i1 %114, %515, !dbg !1643
  br i1 %516, label %517, label %533, !dbg !1643

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1645
  br i1 %518, label %519, label %521, !dbg !1650

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1652
  store i8 39, i8* %520, align 1, !dbg !1652, !tbaa !1100
  br label %521, !dbg !1652

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1013, metadata !589), !dbg !1075
  %523 = icmp ult i64 %522, %512, !dbg !1656
  br i1 %523, label %524, label %526, !dbg !1660

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1662
  store i8 36, i8* %525, align 1, !dbg !1662, !tbaa !1100
  br label %526, !dbg !1662

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1013, metadata !589), !dbg !1075
  %528 = icmp ult i64 %527, %512, !dbg !1666
  br i1 %528, label %529, label %531, !dbg !1670

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1672
  store i8 39, i8* %530, align 1, !dbg !1672, !tbaa !1100
  br label %531, !dbg !1672

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1020, metadata !589), !dbg !1083
  br label %533, !dbg !1676

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1013, metadata !589), !dbg !1075
  %536 = icmp ult i64 %534, %512, !dbg !1678
  br i1 %536, label %537, label %539, !dbg !1682

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1684
  store i8 92, i8* %538, align 1, !dbg !1684, !tbaa !1100
  br label %539, !dbg !1684

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1004, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1030, metadata !589), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1029, metadata !589), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1023, metadata !589), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1021, metadata !589), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1006, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1014, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1012, metadata !589), !dbg !1151
  br label %569, !dbg !1688

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1067

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1004, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1030, metadata !589), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1029, metadata !589), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1023, metadata !589), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1021, metadata !589), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1006, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1014, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1012, metadata !589), !dbg !1151
  %553 = and i8 %547, 1, !dbg !1688
  %554 = icmp ne i8 %553, 0, !dbg !1688
  %555 = and i8 %550, 1, !dbg !1692
  %556 = icmp eq i8 %555, 0, !dbg !1692
  %557 = and i1 %554, %556, !dbg !1688
  br i1 %557, label %558, label %569, !dbg !1688

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1694
  br i1 %559, label %560, label %562, !dbg !1699

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1701
  store i8 39, i8* %561, align 1, !dbg !1701, !tbaa !1100
  br label %562, !dbg !1701

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1013, metadata !589), !dbg !1075
  %564 = icmp ult i64 %563, %552, !dbg !1705
  br i1 %564, label %565, label %567, !dbg !1709

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1711
  store i8 39, i8* %566, align 1, !dbg !1711, !tbaa !1100
  br label %567, !dbg !1711

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1013, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1020, metadata !589), !dbg !1083
  br label %569, !dbg !1715

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1020, metadata !589), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1013, metadata !589), !dbg !1075
  %579 = icmp ult i64 %577, %570, !dbg !1717
  br i1 %579, label %580, label %582, !dbg !1721

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1723
  store i8 %572, i8* %581, align 1, !dbg !1723, !tbaa !1100
  br label %582, !dbg !1723

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1013, metadata !589), !dbg !1075
  %584 = and i8 %571, 1, !dbg !1727
  %585 = icmp eq i8 %584, 0, !dbg !1727
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1022, metadata !589), !dbg !1085
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1729
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1022, metadata !589), !dbg !1085
  br label %587, !dbg !1730

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1012, metadata !589), !dbg !1151
  br label %123, !dbg !1733, !llvm.loop !1734

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1737
  %600 = and i1 %114, %599, !dbg !1739
  %601 = xor i1 %600, true, !dbg !1739
  %602 = or i1 %112, %601, !dbg !1739
  br i1 %602, label %603, label %648, !dbg !1739

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1740
  %605 = xor i1 %604, true, !dbg !1740
  %606 = and i8 %129, 1, !dbg !1742
  %607 = icmp eq i8 %606, 0, !dbg !1742
  %608 = or i1 %607, %605, !dbg !1740
  br i1 %608, label %618, label %609, !dbg !1740

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1744
  %611 = icmp eq i8 %610, 0, !dbg !1744
  br i1 %611, label %614, label %612, !dbg !1747

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1748
  br label %659, !dbg !1749

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1750
  %616 = icmp ne i64 %126, 0, !dbg !1752
  %617 = and i1 %616, %615, !dbg !1754
  br i1 %617, label %27, label %618, !dbg !1754

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1755
  %620 = and i1 %619, %112, !dbg !1757
  br i1 %620, label %621, label %638, !dbg !1757

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1015, metadata !589), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1013, metadata !589), !dbg !1075
  %622 = load i8, i8* %100, align 1, !dbg !1758, !tbaa !1100
  %623 = icmp eq i8 %622, 0, !dbg !1762
  br i1 %623, label %638, label %624, !dbg !1762

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1764

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1764
  br i1 %629, label %630, label %632, !dbg !1768

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1770
  store i8 %626, i8* %631, align 1, !dbg !1770, !tbaa !1100
  br label %632, !dbg !1770

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1013, metadata !589), !dbg !1075
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1774
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1015, metadata !589), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1015, metadata !589), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1013, metadata !589), !dbg !1075
  %635 = load i8, i8* %634, align 1, !dbg !1758, !tbaa !1100
  %636 = icmp eq i8 %635, 0, !dbg !1762
  br i1 %636, label %637, label %625, !dbg !1762, !llvm.loop !1776

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1075

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1013, metadata !589), !dbg !1075
  %640 = icmp ult i64 %639, %131, !dbg !1779
  br i1 %640, label %641, label %659, !dbg !1781

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1782
  store i8 0, i8* %642, align 1, !dbg !1783, !tbaa !1100
  br label %659, !dbg !1782

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1067

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1067

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1067

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1004, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1006, metadata !589), !dbg !1069
  %653 = icmp ne i32 %650, 2, !dbg !1784
  %654 = icmp eq i8 %104, 0, !dbg !1786
  %655 = or i1 %653, %654, !dbg !1788
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1007, metadata !589), !dbg !1070
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1007, metadata !589), !dbg !1070
  %657 = and i32 %5, -3, !dbg !1789
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1790
  br label %659, !dbg !1791

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1792
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1793 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1797, metadata !589), !dbg !1801
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1798, metadata !589), !dbg !1802
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1803
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1799, metadata !589), !dbg !1804
  %4 = icmp eq i8* %3, %0, !dbg !1805
  br i1 %4, label %5, label %75, !dbg !1807

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1808
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1800, metadata !589), !dbg !1809
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1810, metadata !589), !dbg !1826
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1824, metadata !589), !dbg !1829
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1825, metadata !589), !dbg !1830
  %7 = load i8, i8* %6, align 1, !tbaa !1100
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1831
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1831

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1834, metadata !589), !dbg !1848
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1846, metadata !589), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1847, metadata !589), !dbg !1853
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1100
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1854
  %15 = icmp eq i32 %14, 84, !dbg !1854
  br i1 %15, label %16, label %72, !dbg !1854

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1857, metadata !589), !dbg !1870
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1868, metadata !589), !dbg !1874
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1869, metadata !589), !dbg !1875
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1100
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1876
  %21 = icmp eq i32 %20, 70, !dbg !1876
  br i1 %21, label %22, label %72, !dbg !1876

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1879, metadata !589), !dbg !1891
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1889, metadata !589), !dbg !1895
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1890, metadata !589), !dbg !1896
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1100
  %25 = icmp eq i8 %24, 45, !dbg !1897
  br i1 %25, label %26, label %72, !dbg !1900

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1902, metadata !589), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1911, metadata !589), !dbg !1917
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1912, metadata !589), !dbg !1918
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1100
  %29 = icmp eq i8 %28, 56, !dbg !1919
  br i1 %29, label %30, label %72, !dbg !1922

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1924, metadata !589), !dbg !1934
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1932, metadata !589), !dbg !1938
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1933, metadata !589), !dbg !1939
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1100
  %33 = icmp eq i8 %32, 0, !dbg !1940
  br i1 %33, label %34, label %72, !dbg !1943

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1945, !tbaa !1100
  %36 = icmp eq i8 %35, 96, !dbg !1946
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1945
  br label %75, !dbg !1947

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1834, metadata !589), !dbg !1948
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1846, metadata !589), !dbg !1952
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1847, metadata !589), !dbg !1953
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1100
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !1954
  %43 = icmp eq i32 %42, 66, !dbg !1954
  br i1 %43, label %44, label %72, !dbg !1954

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1857, metadata !589), !dbg !1955
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1868, metadata !589), !dbg !1957
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1869, metadata !589), !dbg !1958
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1100
  %47 = icmp eq i8 %46, 49, !dbg !1959
  br i1 %47, label %48, label %72, !dbg !1961

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1879, metadata !589), !dbg !1963
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1889, metadata !589), !dbg !1965
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1890, metadata !589), !dbg !1966
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1100
  %51 = icmp eq i8 %50, 56, !dbg !1967
  br i1 %51, label %52, label %72, !dbg !1968

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1902, metadata !589), !dbg !1969
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1911, metadata !589), !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1912, metadata !589), !dbg !1972
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1100
  %55 = icmp eq i8 %54, 48, !dbg !1973
  br i1 %55, label %56, label %72, !dbg !1974

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1924, metadata !589), !dbg !1975
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1932, metadata !589), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1933, metadata !589), !dbg !1978
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1100
  %59 = icmp eq i8 %58, 51, !dbg !1979
  br i1 %59, label %60, label %72, !dbg !1980

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1981, metadata !589), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1988, metadata !589), !dbg !1994
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1989, metadata !589), !dbg !1995
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1100
  %63 = icmp eq i8 %62, 48, !dbg !1996
  br i1 %63, label %64, label %72, !dbg !1999

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2001, metadata !589), !dbg !2009
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2007, metadata !589), !dbg !2013
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2008, metadata !589), !dbg !2014
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1100
  %67 = icmp eq i8 %66, 0, !dbg !2015
  br i1 %67, label %68, label %72, !dbg !2018

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2019, !tbaa !1100
  %70 = icmp eq i8 %69, 96, !dbg !2020
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2019
  br label %75, !dbg !2021

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2022
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), !dbg !2023
  br label %75, !dbg !2024

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2025
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2026 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2030, metadata !589), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2031, metadata !589), !dbg !2034
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2032, metadata !589), !dbg !2035
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2036, metadata !589) #10, !dbg !2049
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2041, metadata !589) #10, !dbg !2051
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2042, metadata !589) #10, !dbg !2052
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2043, metadata !589) #10, !dbg !2053
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2054
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2054
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2044, metadata !589) #10, !dbg !2055
  %6 = tail call i32* @__errno_location() #1, !dbg !2056
  %7 = load i32, i32* %6, align 4, !dbg !2056, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2045, metadata !589) #10, !dbg !2057
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2058
  %9 = load i32, i32* %8, align 4, !dbg !2058, !tbaa !935
  %10 = or i32 %9, 1, !dbg !2059
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2046, metadata !589) #10, !dbg !2060
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2061
  %12 = load i32, i32* %11, align 8, !dbg !2061, !tbaa !873
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2062
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2063
  %15 = load i8*, i8** %14, align 8, !dbg !2063, !tbaa !962
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2064
  %17 = load i8*, i8** %16, align 8, !dbg !2064, !tbaa !965
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2065
  %19 = add i64 %18, 1, !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2047, metadata !589) #10, !dbg !2067
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2068, metadata !589) #10, !dbg !2073
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2075
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2048, metadata !589) #10, !dbg !2076
  %21 = load i32, i32* %11, align 8, !dbg !2077, !tbaa !873
  %22 = load i8*, i8** %14, align 8, !dbg !2078, !tbaa !962
  %23 = load i8*, i8** %16, align 8, !dbg !2079, !tbaa !965
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2080
  store i32 %7, i32* %6, align 4, !dbg !2081, !tbaa !663
  ret i8* %20, !dbg !2082
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2037 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2036, metadata !589), !dbg !2083
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2041, metadata !589), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2042, metadata !589), !dbg !2085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2043, metadata !589), !dbg !2086
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2087
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2087
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2044, metadata !589), !dbg !2088
  %7 = tail call i32* @__errno_location() #1, !dbg !2089
  %8 = load i32, i32* %7, align 4, !dbg !2089, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2045, metadata !589), !dbg !2090
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2091
  %10 = load i32, i32* %9, align 4, !dbg !2091, !tbaa !935
  %11 = icmp ne i64* %2, null, !dbg !2092
  %12 = xor i1 %11, true, !dbg !2092
  %13 = zext i1 %12 to i32, !dbg !2092
  %14 = or i32 %10, %13, !dbg !2093
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2046, metadata !589), !dbg !2094
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2095
  %16 = load i32, i32* %15, align 8, !dbg !2095, !tbaa !873
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2096
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2097
  %19 = load i8*, i8** %18, align 8, !dbg !2097, !tbaa !962
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2098
  %21 = load i8*, i8** %20, align 8, !dbg !2098, !tbaa !965
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2099
  %23 = add i64 %22, 1, !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2047, metadata !589), !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2068, metadata !589) #10, !dbg !2102
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2048, metadata !589), !dbg !2105
  %25 = load i32, i32* %15, align 8, !dbg !2106, !tbaa !873
  %26 = load i8*, i8** %18, align 8, !dbg !2107, !tbaa !962
  %27 = load i8*, i8** %20, align 8, !dbg !2108, !tbaa !965
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2109
  store i32 %8, i32* %7, align 4, !dbg !2110, !tbaa !663
  br i1 %11, label %29, label %30, !dbg !2111

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2112, !tbaa !2114
  br label %30, !dbg !2116

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2117
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2118 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2122, !tbaa !597
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2120, metadata !589), !dbg !2123
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2121, metadata !589), !dbg !2124
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2121, metadata !589), !dbg !2124
  %2 = load i32, i32* @nslots, align 4, !dbg !2125, !tbaa !663
  %3 = icmp sgt i32 %2, 1, !dbg !2129
  br i1 %3, label %4, label %14, !dbg !2130

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2132

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2132
  %8 = load i8*, i8** %7, align 8, !dbg !2132, !tbaa !2133
  tail call void @free(i8* %8) #10, !dbg !2135
  %9 = add nuw i64 %6, 1, !dbg !2136
  %10 = load i32, i32* @nslots, align 4, !dbg !2125, !tbaa !663
  %11 = sext i32 %10 to i64, !dbg !2129
  %12 = icmp slt i64 %9, %11, !dbg !2129
  br i1 %12, label %5, label %13, !dbg !2130, !llvm.loop !2138

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2141

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2141
  %16 = load i8*, i8** %15, align 8, !dbg !2141, !tbaa !2133
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2143
  br i1 %17, label %19, label %18, !dbg !2144

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2145
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2147, !tbaa !2148
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2149, !tbaa !2133
  br label %19, !dbg !2150

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2151
  br i1 %20, label %23, label %21, !dbg !2153

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2154
  tail call void @free(i8* %22) #10, !dbg !2156
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2157, !tbaa !597
  br label %23, !dbg !2158

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2159, !tbaa !663
  ret void, !dbg !2160
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2161 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2165, metadata !589), !dbg !2167
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2166, metadata !589), !dbg !2168
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2169
  ret i8* %3, !dbg !2170
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2171 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2175, metadata !589), !dbg !2189
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2176, metadata !589), !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2177, metadata !589), !dbg !2191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2178, metadata !589), !dbg !2192
  %5 = tail call i32* @__errno_location() #1, !dbg !2193
  %6 = load i32, i32* %5, align 4, !dbg !2193, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2179, metadata !589), !dbg !2194
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2195, !tbaa !597
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2180, metadata !589), !dbg !2196
  %8 = icmp slt i32 %0, 0, !dbg !2197
  br i1 %8, label %9, label %10, !dbg !2199

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2200
  unreachable, !dbg !2200

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2201, !tbaa !663
  %12 = icmp sgt i32 %11, %0, !dbg !2202
  br i1 %12, label %34, label %13, !dbg !2203

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2204
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2205
  br i1 %15, label %16, label %17, !dbg !2207

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2208
  unreachable, !dbg !2208

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2209
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2209
  %20 = add nsw i32 %0, 1, !dbg !2211
  %21 = sext i32 %20 to i64, !dbg !2212
  %22 = shl nsw i64 %21, 4, !dbg !2213
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2214
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2214
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2180, metadata !589), !dbg !2196
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2215, !tbaa !597
  br i1 %14, label %25, label %26, !dbg !2216

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2217, !tbaa.struct !2219
  br label %26, !dbg !2220

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2221, !tbaa !663
  %28 = sext i32 %27 to i64, !dbg !2222
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2222
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2223
  %31 = sub nsw i32 %20, %27, !dbg !2224
  %32 = sext i32 %31 to i64, !dbg !2225
  %33 = shl nsw i64 %32, 4, !dbg !2226
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2223
  store i32 %20, i32* @nslots, align 4, !dbg !2227, !tbaa !663
  br label %34, !dbg !2228

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2180, metadata !589), !dbg !2196
  %36 = sext i32 %0 to i64, !dbg !2229
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2230
  %38 = load i64, i64* %37, align 8, !dbg !2230, !tbaa !2148
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2184, metadata !589), !dbg !2231
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2232
  %40 = load i8*, i8** %39, align 8, !dbg !2232, !tbaa !2133
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2186, metadata !589), !dbg !2233
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2234
  %42 = load i32, i32* %41, align 4, !dbg !2234, !tbaa !935
  %43 = or i32 %42, 1, !dbg !2235
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2187, metadata !589), !dbg !2236
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2237
  %45 = load i32, i32* %44, align 8, !dbg !2237, !tbaa !873
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2238
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2239
  %48 = load i8*, i8** %47, align 8, !dbg !2239, !tbaa !962
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2240
  %50 = load i8*, i8** %49, align 8, !dbg !2240, !tbaa !965
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2241
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2188, metadata !589), !dbg !2242
  %52 = icmp ugt i64 %38, %51, !dbg !2243
  br i1 %52, label %63, label %53, !dbg !2245

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2184, metadata !589), !dbg !2231
  store i64 %54, i64* %37, align 8, !dbg !2248, !tbaa !2148
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2249
  br i1 %55, label %57, label %56, !dbg !2251

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2252
  br label %57, !dbg !2252

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2068, metadata !589) #10, !dbg !2253
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2255
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2186, metadata !589), !dbg !2233
  store i8* %58, i8** %39, align 8, !dbg !2256, !tbaa !2133
  %59 = load i32, i32* %44, align 8, !dbg !2257, !tbaa !873
  %60 = load i8*, i8** %47, align 8, !dbg !2258, !tbaa !962
  %61 = load i8*, i8** %49, align 8, !dbg !2259, !tbaa !965
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2260
  br label %63, !dbg !2261

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2186, metadata !589), !dbg !2233
  store i32 %6, i32* %5, align 4, !dbg !2262, !tbaa !663
  ret i8* %64, !dbg !2263
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2264 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2268, metadata !589), !dbg !2271
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2269, metadata !589), !dbg !2272
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2270, metadata !589), !dbg !2273
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2274
  ret i8* %4, !dbg !2275
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2276 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2280, metadata !589), !dbg !2281
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2165, metadata !589) #10, !dbg !2282
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2166, metadata !589) #10, !dbg !2284
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2285
  ret i8* %2, !dbg !2286
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2287 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2291, metadata !589), !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2292, metadata !589), !dbg !2294
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2268, metadata !589) #10, !dbg !2295
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2269, metadata !589) #10, !dbg !2297
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2270, metadata !589) #10, !dbg !2298
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2299
  ret i8* %3, !dbg !2300
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2301 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2309, metadata !2315), !dbg !2316
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2305, metadata !589), !dbg !2318
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2306, metadata !589), !dbg !2319
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2307, metadata !589), !dbg !2320
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2321
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2321
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2308, metadata !1425), !dbg !2322
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2314, metadata !589) #10, !dbg !2323
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2324
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2324
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2309, metadata !589) #10, !dbg !2316
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2309, metadata !2325) #10, !dbg !2316
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2316
  %8 = icmp eq i32 %1, 10, !dbg !2326
  br i1 %8, label %9, label %10, !dbg !2328

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2329, !noalias !2330
  unreachable, !dbg !2329

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2309, metadata !2325) #10, !dbg !2316
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2333
  store i32 %1, i32* %11, align 8, !dbg !2333, !alias.scope !2330
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2333
  %13 = bitcast i32* %12 to i8*, !dbg !2333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2333
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2334
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2308, metadata !1425), !dbg !2322
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2335
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2336
  ret i8* %14, !dbg !2337
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2338 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2309, metadata !2315), !dbg !2347
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2342, metadata !589), !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2343, metadata !589), !dbg !2350
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2344, metadata !589), !dbg !2351
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2345, metadata !589), !dbg !2352
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2353
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2353
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2346, metadata !1425), !dbg !2354
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2314, metadata !589) #10, !dbg !2355
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2356
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2356
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2309, metadata !589) #10, !dbg !2347
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2309, metadata !2325) #10, !dbg !2347
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2347
  %9 = icmp eq i32 %1, 10, !dbg !2357
  br i1 %9, label %10, label %11, !dbg !2358

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2359, !noalias !2360
  unreachable, !dbg !2359

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2309, metadata !2325) #10, !dbg !2347
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2363
  store i32 %1, i32* %12, align 8, !dbg !2363, !alias.scope !2360
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2363
  %14 = bitcast i32* %13 to i8*, !dbg !2363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2363
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2364
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2346, metadata !1425), !dbg !2354
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2365
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2366
  ret i8* %15, !dbg !2367
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2368 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2309, metadata !2315), !dbg !2374
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2372, metadata !589), !dbg !2377
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2373, metadata !589), !dbg !2378
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2305, metadata !589) #10, !dbg !2379
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2306, metadata !589) #10, !dbg !2380
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2307, metadata !589) #10, !dbg !2381
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2382
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2382
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2308, metadata !1425) #10, !dbg !2383
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2314, metadata !589) #10, !dbg !2384
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2385
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2385
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2309, metadata !589) #10, !dbg !2374
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2309, metadata !2325) #10, !dbg !2374
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2374
  %7 = icmp eq i32 %0, 10, !dbg !2386
  br i1 %7, label %8, label %9, !dbg !2387

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2388, !noalias !2389
  unreachable, !dbg !2388

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2309, metadata !2325) #10, !dbg !2374
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2392
  store i32 %0, i32* %10, align 8, !dbg !2392, !alias.scope !2389
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2392
  %12 = bitcast i32* %11 to i8*, !dbg !2392
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2392
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2393
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2308, metadata !1425) #10, !dbg !2383
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2394
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2395
  ret i8* %13, !dbg !2396
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2397 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2309, metadata !2315), !dbg !2404
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2401, metadata !589), !dbg !2407
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2402, metadata !589), !dbg !2408
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2403, metadata !589), !dbg !2409
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2342, metadata !589) #10, !dbg !2410
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2343, metadata !589) #10, !dbg !2411
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2344, metadata !589) #10, !dbg !2412
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2345, metadata !589) #10, !dbg !2413
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2414
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2346, metadata !1425) #10, !dbg !2415
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2314, metadata !589) #10, !dbg !2416
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2417
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2417
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2309, metadata !589) #10, !dbg !2404
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2309, metadata !2325) #10, !dbg !2404
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2404
  %8 = icmp eq i32 %0, 10, !dbg !2418
  br i1 %8, label %9, label %10, !dbg !2419

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2420, !noalias !2421
  unreachable, !dbg !2420

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2309, metadata !2325) #10, !dbg !2404
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2424
  store i32 %0, i32* %11, align 8, !dbg !2424, !alias.scope !2421
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2424
  %13 = bitcast i32* %12 to i8*, !dbg !2424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2424
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2425
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2346, metadata !1425) #10, !dbg !2415
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2426
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2427
  ret i8* %14, !dbg !2428
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2429 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2433, metadata !589), !dbg !2437
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2434, metadata !589), !dbg !2438
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2435, metadata !589), !dbg !2439
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2440
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2441, !tbaa.struct !2442
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2436, metadata !1425), !dbg !2443
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !893, metadata !589), !dbg !2444
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !894, metadata !589), !dbg !2446
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !895, metadata !589), !dbg !2447
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !896, metadata !589), !dbg !2448
  %6 = lshr i8 %2, 5, !dbg !2449
  %7 = zext i8 %6 to i64, !dbg !2449
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2450
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !897, metadata !589), !dbg !2451
  %9 = and i8 %2, 31, !dbg !2452
  %10 = zext i8 %9 to i32, !dbg !2453
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !899, metadata !589), !dbg !2454
  %11 = load i32, i32* %8, align 4, !dbg !2455, !tbaa !663
  %12 = lshr i32 %11, %10, !dbg !2456
  %13 = and i32 %12, 1, !dbg !2457
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !900, metadata !589), !dbg !2458
  %14 = xor i32 %13, 1, !dbg !2459
  %15 = shl i32 %14, %10, !dbg !2460
  %16 = xor i32 %15, %11, !dbg !2461
  store i32 %16, i32* %8, align 4, !dbg !2461, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2436, metadata !1425), !dbg !2443
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2462
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2463
  ret i8* %17, !dbg !2464
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2465 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2469, metadata !589), !dbg !2471
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2470, metadata !589), !dbg !2472
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2433, metadata !589) #10, !dbg !2473
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2434, metadata !589) #10, !dbg !2475
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2435, metadata !589) #10, !dbg !2476
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2477
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2477
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2478, !tbaa.struct !2442
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2436, metadata !1425) #10, !dbg !2479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !893, metadata !589) #10, !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !894, metadata !589) #10, !dbg !2482
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !895, metadata !589) #10, !dbg !2483
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !896, metadata !589) #10, !dbg !2484
  %5 = lshr i8 %1, 5, !dbg !2485
  %6 = zext i8 %5 to i64, !dbg !2485
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2486
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !897, metadata !589) #10, !dbg !2487
  %8 = and i8 %1, 31, !dbg !2488
  %9 = zext i8 %8 to i32, !dbg !2489
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !899, metadata !589) #10, !dbg !2490
  %10 = load i32, i32* %7, align 4, !dbg !2491, !tbaa !663
  %11 = lshr i32 %10, %9, !dbg !2492
  %12 = and i32 %11, 1, !dbg !2493
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !900, metadata !589) #10, !dbg !2494
  %13 = xor i32 %12, 1, !dbg !2495
  %14 = shl i32 %13, %9, !dbg !2496
  %15 = xor i32 %14, %10, !dbg !2497
  store i32 %15, i32* %7, align 4, !dbg !2497, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2436, metadata !1425) #10, !dbg !2479
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2498
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2499
  ret i8* %16, !dbg !2500
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2501 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2503, metadata !589), !dbg !2504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2469, metadata !589) #10, !dbg !2505
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2470, metadata !589) #10, !dbg !2507
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2433, metadata !589) #10, !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2434, metadata !589) #10, !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2435, metadata !589) #10, !dbg !2511
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2512
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2513, !tbaa.struct !2442
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2436, metadata !1425) #10, !dbg !2514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !893, metadata !589) #10, !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !894, metadata !589) #10, !dbg !2517
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !895, metadata !589) #10, !dbg !2518
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !896, metadata !589) #10, !dbg !2519
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2520
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !897, metadata !589) #10, !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !899, metadata !589) #10, !dbg !2522
  %5 = load i32, i32* %4, align 4, !dbg !2523, !tbaa !663
  %6 = or i32 %5, 67108864, !dbg !2524
  store i32 %6, i32* %4, align 4, !dbg !2524, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2436, metadata !1425) #10, !dbg !2514
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2525
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2526
  ret i8* %7, !dbg !2527
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2528 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2530, metadata !589), !dbg !2532
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2531, metadata !589), !dbg !2533
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2433, metadata !589) #10, !dbg !2534
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2434, metadata !589) #10, !dbg !2536
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2435, metadata !589) #10, !dbg !2537
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2538
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2538
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2539, !tbaa.struct !2442
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2436, metadata !1425) #10, !dbg !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !893, metadata !589) #10, !dbg !2541
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !894, metadata !589) #10, !dbg !2543
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !895, metadata !589) #10, !dbg !2544
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !896, metadata !589) #10, !dbg !2545
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2546
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !897, metadata !589) #10, !dbg !2547
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !899, metadata !589) #10, !dbg !2548
  %6 = load i32, i32* %5, align 4, !dbg !2549, !tbaa !663
  %7 = or i32 %6, 67108864, !dbg !2550
  store i32 %7, i32* %5, align 4, !dbg !2550, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2436, metadata !1425) #10, !dbg !2540
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2551
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2552
  ret i8* %8, !dbg !2553
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2554 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2309, metadata !2315), !dbg !2560
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2556, metadata !589), !dbg !2562
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2557, metadata !589), !dbg !2563
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2558, metadata !589), !dbg !2564
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2565
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2565
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2314, metadata !589) #10, !dbg !2566
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2567
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2567
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2309, metadata !589) #10, !dbg !2560
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2309, metadata !2325) #10, !dbg !2560
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2560
  %9 = icmp eq i32 %1, 10, !dbg !2568
  br i1 %9, label %10, label %11, !dbg !2569

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2570, !noalias !2571
  unreachable, !dbg !2570

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2309, metadata !2325) #10, !dbg !2560
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2574
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2574
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2575
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2576
  store i32 %1, i32* %13, align 8, !dbg !2576
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2576
  %15 = bitcast i32* %14 to i8*, !dbg !2576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2576
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2559, metadata !1425), !dbg !2577
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !893, metadata !589), !dbg !2578
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !894, metadata !589), !dbg !2580
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !895, metadata !589), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !896, metadata !589), !dbg !2582
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2583
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !897, metadata !589), !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !899, metadata !589), !dbg !2585
  %17 = load i32, i32* %16, align 4, !dbg !2586, !tbaa !663
  %18 = or i32 %17, 67108864, !dbg !2587
  store i32 %18, i32* %16, align 4, !dbg !2587, !tbaa !663
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2559, metadata !1425), !dbg !2577
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2588
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2589
  ret i8* %19, !dbg !2590
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2591 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2595, metadata !589), !dbg !2599
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2596, metadata !589), !dbg !2600
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2597, metadata !589), !dbg !2601
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2598, metadata !589), !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2603, metadata !589) #10, !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2608, metadata !589) #10, !dbg !2615
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2609, metadata !589) #10, !dbg !2616
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2610, metadata !589) #10, !dbg !2617
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2611, metadata !589) #10, !dbg !2618
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2619
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2619
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2620, !tbaa.struct !2442
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2612, metadata !1425) #10, !dbg !2621
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !943, metadata !589) #10, !dbg !2622
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !944, metadata !589) #10, !dbg !2624
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !945, metadata !589) #10, !dbg !2625
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !943, metadata !589) #10, !dbg !2622
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !943, metadata !589) #10, !dbg !2622
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2626
  store i32 10, i32* %7, align 8, !dbg !2627, !tbaa !873
  %8 = icmp ne i8* %1, null, !dbg !2628
  %9 = icmp ne i8* %2, null, !dbg !2629
  %10 = and i1 %8, %9, !dbg !2630
  br i1 %10, label %12, label %11, !dbg !2630

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2631
  unreachable, !dbg !2631

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2632
  store i8* %1, i8** %13, align 8, !dbg !2633, !tbaa !962
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2634
  store i8* %2, i8** %14, align 8, !dbg !2635, !tbaa !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2612, metadata !1425) #10, !dbg !2621
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2636
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2637
  ret i8* %15, !dbg !2638
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2604 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2603, metadata !589), !dbg !2639
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2608, metadata !589), !dbg !2640
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2609, metadata !589), !dbg !2641
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2610, metadata !589), !dbg !2642
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2611, metadata !589), !dbg !2643
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2644
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2645, !tbaa.struct !2442
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2612, metadata !1425), !dbg !2646
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !943, metadata !589) #10, !dbg !2647
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !944, metadata !589) #10, !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !945, metadata !589) #10, !dbg !2650
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !943, metadata !589) #10, !dbg !2647
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !943, metadata !589) #10, !dbg !2647
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2651
  store i32 10, i32* %8, align 8, !dbg !2652, !tbaa !873
  %9 = icmp ne i8* %1, null, !dbg !2653
  %10 = icmp ne i8* %2, null, !dbg !2654
  %11 = and i1 %9, %10, !dbg !2655
  br i1 %11, label %13, label %12, !dbg !2655

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2656
  unreachable, !dbg !2656

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2657
  store i8* %1, i8** %14, align 8, !dbg !2658, !tbaa !962
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2659
  store i8* %2, i8** %15, align 8, !dbg !2660, !tbaa !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2612, metadata !1425), !dbg !2646
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2661
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2662
  ret i8* %16, !dbg !2663
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2664 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2668, metadata !589), !dbg !2671
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2669, metadata !589), !dbg !2672
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2670, metadata !589), !dbg !2673
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2595, metadata !589) #10, !dbg !2674
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2596, metadata !589) #10, !dbg !2676
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2597, metadata !589) #10, !dbg !2677
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2598, metadata !589) #10, !dbg !2678
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2603, metadata !589) #10, !dbg !2679
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2608, metadata !589) #10, !dbg !2681
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2609, metadata !589) #10, !dbg !2682
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2610, metadata !589) #10, !dbg !2683
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2611, metadata !589) #10, !dbg !2684
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2685
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2685
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2686, !tbaa.struct !2442
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2612, metadata !1425) #10, !dbg !2687
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !943, metadata !589) #10, !dbg !2688
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !944, metadata !589) #10, !dbg !2690
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !945, metadata !589) #10, !dbg !2691
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !943, metadata !589) #10, !dbg !2688
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !943, metadata !589) #10, !dbg !2688
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2692
  store i32 10, i32* %6, align 8, !dbg !2693, !tbaa !873
  %7 = icmp ne i8* %0, null, !dbg !2694
  %8 = icmp ne i8* %1, null, !dbg !2695
  %9 = and i1 %7, %8, !dbg !2696
  br i1 %9, label %11, label %10, !dbg !2696

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2697
  unreachable, !dbg !2697

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2698
  store i8* %0, i8** %12, align 8, !dbg !2699, !tbaa !962
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2700
  store i8* %1, i8** %13, align 8, !dbg !2701, !tbaa !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2612, metadata !1425) #10, !dbg !2687
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2702
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2703
  ret i8* %14, !dbg !2704
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2705 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2709, metadata !589), !dbg !2713
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2710, metadata !589), !dbg !2714
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2711, metadata !589), !dbg !2715
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2712, metadata !589), !dbg !2716
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2603, metadata !589) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2608, metadata !589) #10, !dbg !2719
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2609, metadata !589) #10, !dbg !2720
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2610, metadata !589) #10, !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2611, metadata !589) #10, !dbg !2722
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2723
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2723
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2724, !tbaa.struct !2442
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2612, metadata !1425) #10, !dbg !2725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !943, metadata !589) #10, !dbg !2726
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !944, metadata !589) #10, !dbg !2728
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !945, metadata !589) #10, !dbg !2729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !943, metadata !589) #10, !dbg !2726
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !943, metadata !589) #10, !dbg !2726
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2730
  store i32 10, i32* %7, align 8, !dbg !2731, !tbaa !873
  %8 = icmp ne i8* %0, null, !dbg !2732
  %9 = icmp ne i8* %1, null, !dbg !2733
  %10 = and i1 %8, %9, !dbg !2734
  br i1 %10, label %12, label %11, !dbg !2734

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2735
  unreachable, !dbg !2735

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2736
  store i8* %0, i8** %13, align 8, !dbg !2737, !tbaa !962
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2738
  store i8* %1, i8** %14, align 8, !dbg !2739, !tbaa !965
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2612, metadata !1425) #10, !dbg !2725
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2740
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2741
  ret i8* %15, !dbg !2742
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2743 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2747, metadata !589), !dbg !2750
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2748, metadata !589), !dbg !2751
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2749, metadata !589), !dbg !2752
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2753
  ret i8* %4, !dbg !2754
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2755 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2759, metadata !589), !dbg !2761
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2760, metadata !589), !dbg !2762
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2747, metadata !589) #10, !dbg !2763
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2748, metadata !589) #10, !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2749, metadata !589) #10, !dbg !2766
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2767
  ret i8* %3, !dbg !2768
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2769 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2773, metadata !589), !dbg !2775
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2774, metadata !589), !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2747, metadata !589) #10, !dbg !2777
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2748, metadata !589) #10, !dbg !2779
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2749, metadata !589) #10, !dbg !2780
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2781
  ret i8* %3, !dbg !2782
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2783 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2787, metadata !589), !dbg !2788
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2773, metadata !589) #10, !dbg !2789
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2774, metadata !589) #10, !dbg !2791
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2747, metadata !589) #10, !dbg !2792
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2748, metadata !589) #10, !dbg !2794
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2749, metadata !589) #10, !dbg !2795
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2796
  ret i8* %2, !dbg !2797
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2798 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2855, metadata !589), !dbg !2861
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2856, metadata !589), !dbg !2862
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2857, metadata !589), !dbg !2863
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2858, metadata !589), !dbg !2864
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2859, metadata !589), !dbg !2865
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2860, metadata !589), !dbg !2866
  %7 = icmp eq i8* %1, null, !dbg !2867
  br i1 %7, label %10, label %8, !dbg !2869

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2870
  br label %12, !dbg !2870

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2871
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i32 5) #10, !dbg !2872
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2873
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.58, i64 0, i64 0), i32 5) #10, !dbg !2875
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2876
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
  ], !dbg !2877

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2878
  unreachable, !dbg !2878

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.59, i64 0, i64 0), i32 5) #10, !dbg !2880
  %20 = load i8*, i8** %4, align 8, !dbg !2880, !tbaa !597
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2881
  br label %146, !dbg !2883

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.60, i64 0, i64 0), i32 5) #10, !dbg !2884
  %24 = load i8*, i8** %4, align 8, !dbg !2884, !tbaa !597
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2884
  %26 = load i8*, i8** %25, align 8, !dbg !2884, !tbaa !597
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2885
  br label %146, !dbg !2886

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.61, i64 0, i64 0), i32 5) #10, !dbg !2887
  %30 = load i8*, i8** %4, align 8, !dbg !2887, !tbaa !597
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2887
  %32 = load i8*, i8** %31, align 8, !dbg !2887, !tbaa !597
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2887
  %34 = load i8*, i8** %33, align 8, !dbg !2887, !tbaa !597
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2888
  br label %146, !dbg !2889

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.62, i64 0, i64 0), i32 5) #10, !dbg !2890
  %38 = load i8*, i8** %4, align 8, !dbg !2890, !tbaa !597
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2890
  %40 = load i8*, i8** %39, align 8, !dbg !2890, !tbaa !597
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2890
  %42 = load i8*, i8** %41, align 8, !dbg !2890, !tbaa !597
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2890
  %44 = load i8*, i8** %43, align 8, !dbg !2890, !tbaa !597
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2891
  br label %146, !dbg !2892

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.63, i64 0, i64 0), i32 5) #10, !dbg !2893
  %48 = load i8*, i8** %4, align 8, !dbg !2893, !tbaa !597
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2893
  %50 = load i8*, i8** %49, align 8, !dbg !2893, !tbaa !597
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2893
  %52 = load i8*, i8** %51, align 8, !dbg !2893, !tbaa !597
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2893
  %54 = load i8*, i8** %53, align 8, !dbg !2893, !tbaa !597
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2893
  %56 = load i8*, i8** %55, align 8, !dbg !2893, !tbaa !597
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2894
  br label %146, !dbg !2895

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.64, i64 0, i64 0), i32 5) #10, !dbg !2896
  %60 = load i8*, i8** %4, align 8, !dbg !2896, !tbaa !597
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2896
  %62 = load i8*, i8** %61, align 8, !dbg !2896, !tbaa !597
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2896
  %64 = load i8*, i8** %63, align 8, !dbg !2896, !tbaa !597
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2896
  %66 = load i8*, i8** %65, align 8, !dbg !2896, !tbaa !597
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2896
  %68 = load i8*, i8** %67, align 8, !dbg !2896, !tbaa !597
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2896
  %70 = load i8*, i8** %69, align 8, !dbg !2896, !tbaa !597
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2897
  br label %146, !dbg !2898

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.65, i64 0, i64 0), i32 5) #10, !dbg !2899
  %74 = load i8*, i8** %4, align 8, !dbg !2899, !tbaa !597
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2899
  %76 = load i8*, i8** %75, align 8, !dbg !2899, !tbaa !597
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2899
  %78 = load i8*, i8** %77, align 8, !dbg !2899, !tbaa !597
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2899
  %80 = load i8*, i8** %79, align 8, !dbg !2899, !tbaa !597
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2899
  %82 = load i8*, i8** %81, align 8, !dbg !2899, !tbaa !597
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2899
  %84 = load i8*, i8** %83, align 8, !dbg !2899, !tbaa !597
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2899
  %86 = load i8*, i8** %85, align 8, !dbg !2899, !tbaa !597
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2900
  br label %146, !dbg !2901

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.66, i64 0, i64 0), i32 5) #10, !dbg !2902
  %90 = load i8*, i8** %4, align 8, !dbg !2902, !tbaa !597
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2902
  %92 = load i8*, i8** %91, align 8, !dbg !2902, !tbaa !597
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2902
  %94 = load i8*, i8** %93, align 8, !dbg !2902, !tbaa !597
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2902
  %96 = load i8*, i8** %95, align 8, !dbg !2902, !tbaa !597
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2902
  %98 = load i8*, i8** %97, align 8, !dbg !2902, !tbaa !597
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2902
  %100 = load i8*, i8** %99, align 8, !dbg !2902, !tbaa !597
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2902
  %102 = load i8*, i8** %101, align 8, !dbg !2902, !tbaa !597
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2902
  %104 = load i8*, i8** %103, align 8, !dbg !2902, !tbaa !597
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2903
  br label %146, !dbg !2904

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.67, i64 0, i64 0), i32 5) #10, !dbg !2905
  %108 = load i8*, i8** %4, align 8, !dbg !2905, !tbaa !597
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2905
  %110 = load i8*, i8** %109, align 8, !dbg !2905, !tbaa !597
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2905
  %112 = load i8*, i8** %111, align 8, !dbg !2905, !tbaa !597
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2905
  %114 = load i8*, i8** %113, align 8, !dbg !2905, !tbaa !597
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2905
  %116 = load i8*, i8** %115, align 8, !dbg !2905, !tbaa !597
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2905
  %118 = load i8*, i8** %117, align 8, !dbg !2905, !tbaa !597
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2905
  %120 = load i8*, i8** %119, align 8, !dbg !2905, !tbaa !597
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2905
  %122 = load i8*, i8** %121, align 8, !dbg !2905, !tbaa !597
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2905
  %124 = load i8*, i8** %123, align 8, !dbg !2905, !tbaa !597
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2906
  br label %146, !dbg !2907

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.68, i64 0, i64 0), i32 5) #10, !dbg !2908
  %128 = load i8*, i8** %4, align 8, !dbg !2908, !tbaa !597
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2908
  %130 = load i8*, i8** %129, align 8, !dbg !2908, !tbaa !597
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2908
  %132 = load i8*, i8** %131, align 8, !dbg !2908, !tbaa !597
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2908
  %134 = load i8*, i8** %133, align 8, !dbg !2908, !tbaa !597
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2908
  %136 = load i8*, i8** %135, align 8, !dbg !2908, !tbaa !597
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2908
  %138 = load i8*, i8** %137, align 8, !dbg !2908, !tbaa !597
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2908
  %140 = load i8*, i8** %139, align 8, !dbg !2908, !tbaa !597
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2908
  %142 = load i8*, i8** %141, align 8, !dbg !2908, !tbaa !597
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2908
  %144 = load i8*, i8** %143, align 8, !dbg !2908, !tbaa !597
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2909
  br label %146, !dbg !2910

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2911
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2912 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2916, metadata !589), !dbg !2922
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2917, metadata !589), !dbg !2923
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2918, metadata !589), !dbg !2924
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2919, metadata !589), !dbg !2925
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2920, metadata !589), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2921, metadata !589), !dbg !2927
  br label %6, !dbg !2928

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2921, metadata !589), !dbg !2927
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2930
  %9 = load i8*, i8** %8, align 8, !dbg !2930, !tbaa !597
  %10 = icmp eq i8* %9, null, !dbg !2933
  %11 = add i64 %7, 1, !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2921, metadata !589), !dbg !2927
  br i1 %10, label %12, label %6, !dbg !2933, !llvm.loop !2937

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2940
  ret void, !dbg !2941
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2942 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2953, metadata !589), !dbg !2961
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2954, metadata !589), !dbg !2962
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2955, metadata !589), !dbg !2963
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2956, metadata !589), !dbg !2964
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2957, metadata !589), !dbg !2965
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2966
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !2966
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2959, metadata !589), !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2958, metadata !589), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2958, metadata !589), !dbg !2968
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !2969
  %12 = icmp ult i32 %11, 41, !dbg !2969
  br i1 %12, label %13, label %18, !dbg !2969

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2973
  %15 = sext i32 %11 to i64, !dbg !2973
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2973
  %17 = add i32 %11, 8, !dbg !2973
  store i32 %17, i32* %8, align 8, !dbg !2973
  br label %21, !dbg !2973

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2975
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2975
  store i8* %20, i8** %10, align 8, !dbg !2975
  br label %21, !dbg !2975

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !2969
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2977
  %25 = load i8*, i8** %24, align 8, !dbg !2977
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2979
  store i8* %25, i8** %26, align 16, !dbg !2980, !tbaa !597
  %27 = icmp eq i8* %25, null, !dbg !2981
  br i1 %27, label %30, label %28, !dbg !2982

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  %29 = icmp ult i32 %22, 41, !dbg !2969
  br i1 %29, label %35, label %32, !dbg !2969

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2984
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !2985
  ret void, !dbg !2985

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2975
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2975
  store i8* %34, i8** %10, align 8, !dbg !2975
  br label %40, !dbg !2975

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2973
  %37 = sext i32 %22 to i64, !dbg !2973
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2973
  %39 = add i32 %22, 8, !dbg !2973
  store i32 %39, i32* %8, align 8, !dbg !2973
  br label %40, !dbg !2973

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !2969
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2977
  %44 = load i8*, i8** %43, align 8, !dbg !2977
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2979
  store i8* %44, i8** %45, align 8, !dbg !2980, !tbaa !597
  %46 = icmp eq i8* %44, null, !dbg !2981
  br i1 %46, label %30, label %47, !dbg !2982

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  %48 = icmp ult i32 %41, 41, !dbg !2969
  br i1 %48, label %52, label %49, !dbg !2969

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2975
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2975
  store i8* %51, i8** %10, align 8, !dbg !2975
  br label %57, !dbg !2975

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2973
  %54 = sext i32 %41 to i64, !dbg !2973
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2973
  %56 = add i32 %41, 8, !dbg !2973
  store i32 %56, i32* %8, align 8, !dbg !2973
  br label %57, !dbg !2973

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !2969
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2977
  %61 = load i8*, i8** %60, align 8, !dbg !2977
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2979
  store i8* %61, i8** %62, align 16, !dbg !2980, !tbaa !597
  %63 = icmp eq i8* %61, null, !dbg !2981
  br i1 %63, label %30, label %64, !dbg !2982

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  %65 = icmp ult i32 %58, 41, !dbg !2969
  br i1 %65, label %69, label %66, !dbg !2969

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2975
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2975
  store i8* %68, i8** %10, align 8, !dbg !2975
  br label %74, !dbg !2975

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2973
  %71 = sext i32 %58 to i64, !dbg !2973
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2973
  %73 = add i32 %58, 8, !dbg !2973
  store i32 %73, i32* %8, align 8, !dbg !2973
  br label %74, !dbg !2973

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !2969
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2977
  %78 = load i8*, i8** %77, align 8, !dbg !2977
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2979
  store i8* %78, i8** %79, align 8, !dbg !2980, !tbaa !597
  %80 = icmp eq i8* %78, null, !dbg !2981
  br i1 %80, label %30, label %81, !dbg !2982

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  %82 = icmp ult i32 %75, 41, !dbg !2969
  br i1 %82, label %86, label %83, !dbg !2969

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2975
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2975
  store i8* %85, i8** %10, align 8, !dbg !2975
  br label %91, !dbg !2975

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2973
  %88 = sext i32 %75 to i64, !dbg !2973
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2973
  %90 = add i32 %75, 8, !dbg !2973
  store i32 %90, i32* %8, align 8, !dbg !2973
  br label %91, !dbg !2973

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !2969
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2977
  %95 = load i8*, i8** %94, align 8, !dbg !2977
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2979
  store i8* %95, i8** %96, align 16, !dbg !2980, !tbaa !597
  %97 = icmp eq i8* %95, null, !dbg !2981
  br i1 %97, label %30, label %98, !dbg !2982

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  %99 = icmp ult i32 %92, 41, !dbg !2969
  br i1 %99, label %103, label %100, !dbg !2969

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2975
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2975
  store i8* %102, i8** %10, align 8, !dbg !2975
  br label %108, !dbg !2975

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2973
  %105 = sext i32 %92 to i64, !dbg !2973
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2973
  %107 = add i32 %92, 8, !dbg !2973
  store i32 %107, i32* %8, align 8, !dbg !2973
  br label %108, !dbg !2973

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2977
  %111 = load i8*, i8** %110, align 8, !dbg !2977
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2979
  store i8* %111, i8** %112, align 8, !dbg !2980, !tbaa !597
  %113 = icmp eq i8* %111, null, !dbg !2981
  br i1 %113, label %30, label %114, !dbg !2982

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  %115 = load i8*, i8** %10, align 8, !dbg !2975
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2975
  store i8* %116, i8** %10, align 8, !dbg !2975
  %117 = bitcast i8* %115 to i8**, !dbg !2977
  %118 = load i8*, i8** %117, align 8, !dbg !2977
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2979
  store i8* %118, i8** %119, align 16, !dbg !2980, !tbaa !597
  %120 = icmp eq i8* %118, null, !dbg !2981
  br i1 %120, label %30, label %121, !dbg !2982

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  %122 = load i8*, i8** %10, align 8, !dbg !2975
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2975
  store i8* %123, i8** %10, align 8, !dbg !2975
  %124 = bitcast i8* %122 to i8**, !dbg !2977
  %125 = load i8*, i8** %124, align 8, !dbg !2977
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2979
  store i8* %125, i8** %126, align 8, !dbg !2980, !tbaa !597
  %127 = icmp eq i8* %125, null, !dbg !2981
  br i1 %127, label %30, label %128, !dbg !2982

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  %129 = load i8*, i8** %10, align 8, !dbg !2975
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2975
  store i8* %130, i8** %10, align 8, !dbg !2975
  %131 = bitcast i8* %129 to i8**, !dbg !2977
  %132 = load i8*, i8** %131, align 8, !dbg !2977
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2979
  store i8* %132, i8** %133, align 16, !dbg !2980, !tbaa !597
  %134 = icmp eq i8* %132, null, !dbg !2981
  br i1 %134, label %30, label %135, !dbg !2982

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  %136 = load i8*, i8** %10, align 8, !dbg !2975
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2975
  store i8* %137, i8** %10, align 8, !dbg !2975
  %138 = bitcast i8* %136 to i8**, !dbg !2977
  %139 = load i8*, i8** %138, align 8, !dbg !2977
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2979
  store i8* %139, i8** %140, align 8, !dbg !2980, !tbaa !597
  %141 = icmp eq i8* %139, null, !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2958, metadata !589), !dbg !2968
  %142 = select i1 %141, i64 9, i64 10, !dbg !2982
  br label %30, !dbg !2982
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2986 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2990, metadata !589), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2991, metadata !589), !dbg !3000
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2992, metadata !589), !dbg !3001
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2993, metadata !589), !dbg !3002
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3003
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3003
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2994, metadata !589), !dbg !3004
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3005
  call void @llvm.va_start(i8* nonnull %6), !dbg !3005
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3006
  call void @llvm.va_end(i8* nonnull %6), !dbg !3007
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3008
  ret void, !dbg !3008
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3009 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.71, i64 0, i64 0), i32 5) #10, !dbg !3010
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.72, i64 0, i64 0)) #10, !dbg !3011
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.73, i64 0, i64 0), i32 5) #10, !dbg !3013
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.75, i64 0, i64 0)) #10, !dbg !3014
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3015
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3015, !tbaa !597
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3016
  ret void, !dbg !3017
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3018 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3022, metadata !589), !dbg !3024
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3023, metadata !589), !dbg !3025
  %3 = udiv i64 9223372036854775807, %1, !dbg !3026
  %4 = icmp ult i64 %3, %0, !dbg !3026
  br i1 %4, label %5, label %6, !dbg !3028

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3029
  unreachable, !dbg !3029

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3030
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3031, metadata !589) #10, !dbg !3038
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3040
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3037, metadata !589) #10, !dbg !3041
  %9 = icmp eq i8* %8, null, !dbg !3042
  %10 = icmp ne i64 %7, 0, !dbg !3044
  %11 = and i1 %10, %9, !dbg !3046
  br i1 %11, label %12, label %13, !dbg !3046

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3047
  unreachable, !dbg !3047

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3048
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3032 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3031, metadata !589), !dbg !3049
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3050
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3037, metadata !589), !dbg !3051
  %3 = icmp eq i8* %2, null, !dbg !3052
  %4 = icmp ne i64 %0, 0, !dbg !3053
  %5 = and i1 %4, %3, !dbg !3054
  br i1 %5, label %6, label %7, !dbg !3054

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3055
  unreachable, !dbg !3055

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3056
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3057 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3061, metadata !589), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3062, metadata !589), !dbg !3065
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3063, metadata !589), !dbg !3066
  %4 = udiv i64 9223372036854775807, %2, !dbg !3067
  %5 = icmp ult i64 %4, %1, !dbg !3067
  br i1 %5, label %6, label %7, !dbg !3069

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3070
  unreachable, !dbg !3070

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !589) #10, !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3077, metadata !589) #10, !dbg !3080
  %9 = icmp eq i64 %8, 0, !dbg !3081
  %10 = icmp ne i8* %0, null, !dbg !3083
  %11 = and i1 %10, %9, !dbg !3085
  br i1 %11, label %12, label %13, !dbg !3085

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3086
  br label %19, !dbg !3088

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3089
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3072, metadata !589) #10, !dbg !3078
  %15 = icmp eq i8* %14, null, !dbg !3090
  %16 = icmp ne i64 %8, 0, !dbg !3092
  %17 = and i1 %16, %15, !dbg !3094
  br i1 %17, label %18, label %19, !dbg !3094

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3095
  unreachable, !dbg !3095

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3096
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3073 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !589), !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3077, metadata !589), !dbg !3098
  %3 = icmp eq i64 %1, 0, !dbg !3099
  %4 = icmp ne i8* %0, null, !dbg !3100
  %5 = and i1 %4, %3, !dbg !3101
  br i1 %5, label %6, label %7, !dbg !3101

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3102
  br label %13, !dbg !3103

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3104
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3072, metadata !589), !dbg !3097
  %9 = icmp eq i8* %8, null, !dbg !3105
  %10 = icmp ne i64 %1, 0, !dbg !3106
  %11 = and i1 %10, %9, !dbg !3107
  br i1 %11, label %12, label %13, !dbg !3107

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3108
  unreachable, !dbg !3108

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3109
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !549 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !554, metadata !589), !dbg !3110
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !555, metadata !589), !dbg !3111
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !556, metadata !589), !dbg !3112
  %4 = load i64, i64* %1, align 8, !dbg !3113, !tbaa !2114
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !557, metadata !589), !dbg !3114
  %5 = icmp eq i8* %0, null, !dbg !3115
  br i1 %5, label %6, label %13, !dbg !3117

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3118
  br i1 %7, label %8, label %17, !dbg !3121

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3122
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !557, metadata !589), !dbg !3114
  %10 = icmp ugt i64 %2, 128, !dbg !3124
  %11 = zext i1 %10 to i64, !dbg !3124
  %12 = add nuw nsw i64 %9, %11, !dbg !3125
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !557, metadata !589), !dbg !3114
  br label %17, !dbg !3126

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3127
  %15 = icmp ugt i64 %14, %4, !dbg !3130
  br i1 %15, label %20, label %16, !dbg !3131

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3132
  unreachable, !dbg !3132

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3114
  store i64 %18, i64* %1, align 8, !dbg !3133, !tbaa !2114
  %19 = mul i64 %18, %2, !dbg !3134
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !589) #10, !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3077, metadata !589) #10, !dbg !3137
  br label %27, !dbg !3138

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3139
  %22 = add i64 %4, 1, !dbg !3140
  %23 = add i64 %22, %21, !dbg !3141
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3114
  store i64 %23, i64* %1, align 8, !dbg !3133, !tbaa !2114
  %24 = mul i64 %23, %2, !dbg !3134
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !589) #10, !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3077, metadata !589) #10, !dbg !3137
  %25 = icmp eq i64 %24, 0, !dbg !3142
  br i1 %25, label %26, label %27, !dbg !3138

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3143
  br label %34, !dbg !3144

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3145
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3072, metadata !589) #10, !dbg !3135
  %30 = icmp eq i8* %29, null, !dbg !3146
  %31 = icmp ne i64 %28, 0, !dbg !3147
  %32 = and i1 %31, %30, !dbg !3148
  br i1 %32, label %33, label %34, !dbg !3148

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3149
  unreachable, !dbg !3149

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3150
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3151 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3153, metadata !589), !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3031, metadata !589) #10, !dbg !3155
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3157
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3037, metadata !589) #10, !dbg !3158
  %3 = icmp eq i8* %2, null, !dbg !3159
  %4 = icmp ne i64 %0, 0, !dbg !3160
  %5 = and i1 %4, %3, !dbg !3161
  br i1 %5, label %6, label %7, !dbg !3161

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3162
  unreachable, !dbg !3162

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3163
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3164 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3168, metadata !589), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3169, metadata !589), !dbg !3171
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !554, metadata !589) #10, !dbg !3172
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !555, metadata !589) #10, !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !556, metadata !589) #10, !dbg !3175
  %3 = load i64, i64* %1, align 8, !dbg !3176, !tbaa !2114
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !557, metadata !589) #10, !dbg !3177
  %4 = icmp eq i8* %0, null, !dbg !3178
  br i1 %4, label %5, label %8, !dbg !3179

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !557, metadata !589) #10, !dbg !3177
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !557, metadata !589) #10, !dbg !3177
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #10, !dbg !3177
  store i64 %7, i64* %1, align 8, !dbg !3182, !tbaa !2114
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !589) #10, !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3077, metadata !589) #10, !dbg !3185
  br label %17, !dbg !3186

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3187
  br i1 %9, label %11, label %10, !dbg !3188

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3189
  unreachable, !dbg !3189

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3190
  %13 = add i64 %3, 1, !dbg !3191
  %14 = add i64 %13, %12, !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #10, !dbg !3177
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #10, !dbg !3177
  store i64 %14, i64* %1, align 8, !dbg !3182, !tbaa !2114
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !589) #10, !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3077, metadata !589) #10, !dbg !3185
  %15 = icmp eq i64 %14, 0, !dbg !3193
  br i1 %15, label %16, label %17, !dbg !3186

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3194
  br label %24, !dbg !3195

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3072, metadata !589) #10, !dbg !3183
  %20 = icmp eq i8* %19, null, !dbg !3197
  %21 = icmp ne i64 %18, 0, !dbg !3198
  %22 = and i1 %21, %20, !dbg !3199
  br i1 %22, label %23, label %24, !dbg !3199

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3200
  unreachable, !dbg !3200

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3201
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3202 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3204, metadata !589), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3031, metadata !589) #10, !dbg !3206
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3208
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3037, metadata !589) #10, !dbg !3209
  %3 = icmp eq i8* %2, null, !dbg !3210
  %4 = icmp ne i64 %0, 0, !dbg !3211
  %5 = and i1 %4, %3, !dbg !3212
  br i1 %5, label %6, label %7, !dbg !3212

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3213
  unreachable, !dbg !3213

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3214
  ret i8* %2, !dbg !3215
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3216 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3218, metadata !589), !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3219, metadata !589), !dbg !3222
  %3 = udiv i64 9223372036854775807, %1, !dbg !3223
  %4 = icmp ult i64 %3, %0, !dbg !3223
  br i1 %4, label %8, label %5, !dbg !3225

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3220, metadata !589), !dbg !3228
  %7 = icmp eq i8* %6, null, !dbg !3229
  br i1 %7, label %8, label %9, !dbg !3230

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3232
  unreachable, !dbg !3232

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3233
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3234 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3238, metadata !589), !dbg !3240
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3239, metadata !589), !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3031, metadata !589) #10, !dbg !3242
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3244
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3037, metadata !589) #10, !dbg !3245
  %4 = icmp eq i8* %3, null, !dbg !3246
  %5 = icmp ne i64 %1, 0, !dbg !3247
  %6 = and i1 %5, %4, !dbg !3248
  br i1 %6, label %7, label %8, !dbg !3248

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3249
  unreachable, !dbg !3249

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3250
  ret i8* %3, !dbg !3251
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3252 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3254, metadata !589), !dbg !3255
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3256
  %3 = add i64 %2, 1, !dbg !3257
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3238, metadata !589) #10, !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3239, metadata !589) #10, !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3031, metadata !589) #10, !dbg !3262
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3264
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3037, metadata !589) #10, !dbg !3265
  %5 = icmp eq i8* %4, null, !dbg !3266
  %6 = icmp ne i64 %3, 0, !dbg !3267
  %7 = and i1 %6, %5, !dbg !3268
  br i1 %7, label %8, label %9, !dbg !3268

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3269
  unreachable, !dbg !3269

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3270
  ret i8* %4, !dbg !3271
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3272 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3274, !tbaa !663
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.86, i64 0, i64 0), i32 5) #10, !dbg !3275
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i8* %2) #10, !dbg !3276
  tail call void @abort() #14, !dbg !3278
  unreachable, !dbg !3278
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3279 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3282, metadata !589), !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3283, metadata !589), !dbg !3289
  %3 = icmp eq i64 %0, 0, !dbg !3290
  %4 = icmp eq i64 %1, 0, !dbg !3291
  %5 = or i1 %3, %4, !dbg !3293
  br i1 %5, label %12, label %6, !dbg !3293

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3285, metadata !589), !dbg !3295
  %8 = udiv i64 %7, %1, !dbg !3296
  %9 = icmp eq i64 %8, %0, !dbg !3298
  br i1 %9, label %12, label %10, !dbg !3299

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3300
  store i32 12, i32* %11, align 4, !dbg !3302, !tbaa !663
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3282, metadata !589), !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3283, metadata !589), !dbg !3289
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3303
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3284, metadata !589), !dbg !3304
  br label %16, !dbg !3305

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3306
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3307 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3324, metadata !589), !dbg !3333
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3325, metadata !589), !dbg !3334
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3326, metadata !589), !dbg !3335
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3327, metadata !589), !dbg !3336
  %6 = bitcast i32* %5 to i8*, !dbg !3337
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3337
  %7 = icmp eq i32* %0, null, !dbg !3338
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3324, metadata !589), !dbg !3333
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3340
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3324, metadata !589), !dbg !3333
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3328, metadata !589), !dbg !3342
  %10 = icmp ugt i64 %9, -3, !dbg !3343
  %11 = icmp ne i64 %2, 0, !dbg !3344
  %12 = and i1 %11, %10, !dbg !3346
  br i1 %12, label %13, label %18, !dbg !3346

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3347
  br i1 %14, label %18, label %15, !dbg !3349

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3351, !tbaa !1100
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3330, metadata !589), !dbg !3352
  %17 = zext i8 %16 to i32, !dbg !3353
  store i32 %17, i32* %8, align 4, !dbg !3354, !tbaa !663
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3355
  ret i64 %19, !dbg !3355
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3356 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3401, metadata !589), !dbg !3406
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3407
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3408, metadata !589), !dbg !3412
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3414
  %4 = load i32, i32* %3, align 8, !dbg !3414, !tbaa !3415
  %5 = and i32 %4, 32, !dbg !3414
  %6 = icmp eq i32 %5, 0, !dbg !3417
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3418
  %8 = icmp ne i32 %7, 0, !dbg !3419
  br i1 %6, label %9, label %19, !dbg !3420

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3422
  %11 = icmp ne i64 %2, 0, !dbg !3422
  %12 = or i1 %11, %10, !dbg !3422
  %13 = sext i1 %8 to i32, !dbg !3422
  br i1 %12, label %22, label %14, !dbg !3422

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3424
  %16 = load i32, i32* %15, align 4, !dbg !3424, !tbaa !663
  %17 = icmp ne i32 %16, 9, !dbg !3426
  %18 = sext i1 %17 to i32, !dbg !3426
  br label %22, !dbg !3426

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3428

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3430
  store i32 0, i32* %21, align 4, !dbg !3432, !tbaa !663
  br label %22, !dbg !3430

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3433
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3434 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3439, metadata !589), !dbg !3459
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3440, metadata !589), !dbg !3460
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3461
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3441, metadata !589), !dbg !3462
  %3 = icmp eq i8* %2, null, !dbg !3463
  br i1 %3, label %15, label %4, !dbg !3464

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3449, metadata !589), !dbg !3465
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3450, metadata !589), !dbg !3466
  %5 = load i8, i8* %2, align 1, !dbg !3467, !tbaa !1100
  %6 = icmp eq i8 %5, 67, !dbg !3469
  br i1 %6, label %7, label %11, !dbg !3472

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3474
  %9 = load i8, i8* %8, align 1, !dbg !3474, !tbaa !1100
  %10 = icmp eq i8 %9, 0, !dbg !3477
  br i1 %10, label %14, label %11, !dbg !3479

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3455, metadata !589), !dbg !3481
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.96, i64 0, i64 0)) #10, !dbg !3482
  %13 = icmp eq i32 %12, 0, !dbg !3484
  br i1 %13, label %14, label %15, !dbg !3486

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3440, metadata !589), !dbg !3460
  br label %15, !dbg !3488

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3489
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3490 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3502, metadata !589), !dbg !3576
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3569, metadata !589), !dbg !3578
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3579
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3494, metadata !589), !dbg !3580
  %4 = icmp eq i8* %3, null, !dbg !3581
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), i8* %3, !dbg !3583
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3494, metadata !589), !dbg !3580
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3584, !tbaa !597
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3516, metadata !589) #10, !dbg !3585
  %7 = icmp eq i8* %6, null, !dbg !3586
  br i1 %7, label %8, label %127, !dbg !3587

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.100, i64 0, i64 0)) #10, !dbg !3588
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3517, metadata !589) #10, !dbg !3589
  %10 = icmp eq i8* %9, null, !dbg !3590
  br i1 %10, label %14, label %11, !dbg !3592

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3593, !tbaa !1100
  %13 = icmp eq i8 %12, 0, !dbg !3595
  br i1 %13, label %14, label %15, !dbg !3596

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3598

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.101, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3517, metadata !589) #10, !dbg !3589
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3520, metadata !589) #10, !dbg !3600
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3522, metadata !589) #10, !dbg !3601
  %18 = icmp eq i64 %17, 0, !dbg !3602
  br i1 %18, label %24, label %19, !dbg !3603

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3604
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3604
  %22 = load i8, i8* %21, align 1, !dbg !3604, !tbaa !1100
  %23 = icmp ne i8 %22, 47, !dbg !3606
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3607
  %27 = add i64 %17, 14, !dbg !3608
  %28 = add i64 %27, %26, !dbg !3609
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3610
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3519, metadata !589) #10, !dbg !3611
  %30 = icmp eq i8* %29, null, !dbg !3612
  br i1 %30, label %125, label %31, !dbg !3612

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3613
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3616

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3617, !tbaa !1100
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3619
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.102, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3620
  br label %37, !dbg !3621

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3619
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.102, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3620
  br label %37, !dbg !3621

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3622
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3524, metadata !589) #10, !dbg !3623
  %39 = icmp slt i32 %38, 0, !dbg !3624
  br i1 %39, label %123, label %40, !dbg !3625

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.103, i64 0, i64 0)) #10, !dbg !3626
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3525, metadata !589) #10, !dbg !3627
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3628
  br i1 %42, label %48, label %43, !dbg !3629

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3630

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !3631
  br label %123, !dbg !3633

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3566, metadata !589) #10, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3567, metadata !589) #10, !dbg !3634
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !3635
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !3636
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3637, metadata !589) #10, !dbg !3642
  %53 = load i8*, i8** %46, align 8, !dbg !3644, !tbaa !3645
  %54 = load i8*, i8** %47, align 8, !dbg !3644, !tbaa !3646
  %55 = icmp ult i8* %53, %54, !dbg !3644
  br i1 %55, label %58, label %56, !dbg !3644, !prof !3647

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3648
  br label %62, !dbg !3648

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3650
  store i8* %59, i8** %46, align 8, !dbg !3650, !tbaa !3645
  %60 = load i8, i8* %53, align 1, !dbg !3650, !tbaa !1100
  %61 = zext i8 %60 to i32, !dbg !3650
  br label %62, !dbg !3650

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3652
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3568, metadata !589) #10, !dbg !3654
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3655

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3656

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3637, metadata !589) #10, !dbg !3656
  %66 = load i8*, i8** %46, align 8, !dbg !3660, !tbaa !3645
  %67 = load i8*, i8** %47, align 8, !dbg !3660, !tbaa !3646
  %68 = icmp ult i8* %66, %67, !dbg !3660
  br i1 %68, label %71, label %69, !dbg !3660, !prof !3647

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3661
  br label %75, !dbg !3661

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3662
  store i8* %72, i8** %46, align 8, !dbg !3662, !tbaa !3645
  %73 = load i8, i8* %66, align 1, !dbg !3662, !tbaa !1100
  %74 = zext i8 %73 to i32, !dbg !3662
  br label %75, !dbg !3662

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3663
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3568, metadata !589) #10, !dbg !3654
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3664, !llvm.loop !3666

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !3669
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.104, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !3670
  %80 = icmp slt i32 %79, 2, !dbg !3672
  br i1 %80, label %115, label %81, !dbg !3673

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3573, metadata !589) #10, !dbg !3675
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3676
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3574, metadata !589) #10, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3575, metadata !589) #10, !dbg !3678
  %84 = icmp eq i64 %51, 0, !dbg !3679
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3681

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3567, metadata !589) #10, !dbg !3634
  %89 = add i64 %86, 2, !dbg !3682
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !3684
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3566, metadata !589) #10, !dbg !3630
  br label %95, !dbg !3685

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3567, metadata !589) #10, !dbg !3634
  %93 = add i64 %92, 1, !dbg !3688
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !3689
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3566, metadata !589) #10, !dbg !3630
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3566, metadata !589) #10, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3567, metadata !589) #10, !dbg !3634
  %98 = icmp eq i8* %97, null, !dbg !3690
  br i1 %98, label %99, label %100, !dbg !3692

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3567, metadata !589) #10, !dbg !3634
  call void @free(i8* %52) #10, !dbg !3693
  br label %116, !dbg !3695

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3696
  %102 = xor i64 %83, -1, !dbg !3697
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3697
  %104 = xor i64 %82, -1, !dbg !3698
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3698
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3699, metadata !589) #10, !dbg !3708
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3707, metadata !589) #10, !dbg !3708
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !3710
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !3711
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3699, metadata !589) #10, !dbg !3712
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3707, metadata !589) #10, !dbg !3712
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !3714
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !3715
  br label %111, !dbg !3716

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3630

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3566, metadata !589) #10, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3567, metadata !589) #10, !dbg !3634
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3716
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3716
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3630

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3630

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3566, metadata !589) #10, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3567, metadata !589) #10, !dbg !3634
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3716
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3716
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3717
  %120 = icmp eq i64 %117, 0, !dbg !3718
  br i1 %120, label %123, label %121, !dbg !3720

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3721
  store i8 0, i8* %122, align 1, !dbg !3723, !tbaa !1100
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3516, metadata !589) #10, !dbg !3585
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3516, metadata !589) #10, !dbg !3585
  call void @free(i8* %29) #10, !dbg !3724
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3516, metadata !589) #10, !dbg !3585
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3725, !tbaa !597
  br label %127, !dbg !3726

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3495, metadata !589), !dbg !3727
  %129 = load i8, i8* %128, align 1, !dbg !3728, !tbaa !1100
  %130 = icmp eq i8 %129, 0, !dbg !3729
  br i1 %130, label %157, label %131, !dbg !3730

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3732

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !3732
  %136 = icmp eq i32 %135, 0, !dbg !3733
  br i1 %136, label %143, label %137, !dbg !3734

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3735
  br i1 %138, label %139, label %147, !dbg !3737

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3738
  %141 = load i8, i8* %140, align 1, !dbg !3738, !tbaa !1100
  %142 = icmp eq i8 %141, 0, !dbg !3740
  br i1 %142, label %143, label %147, !dbg !3741

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3743
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3745
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3746
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3494, metadata !589), !dbg !3580
  br label %157, !dbg !3747

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3748
  %149 = add i64 %148, 1, !dbg !3749
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3750
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3495, metadata !589), !dbg !3727
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3751
  %152 = add i64 %151, 1, !dbg !3752
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3753
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3495, metadata !589), !dbg !3727
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3495, metadata !589), !dbg !3727
  %154 = load i8, i8* %153, align 1, !dbg !3728, !tbaa !1100
  %155 = icmp eq i8 %154, 0, !dbg !3729
  br i1 %155, label %156, label %132, !dbg !3730, !llvm.loop !3754

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3580

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3494, metadata !589), !dbg !3580
  %159 = load i8, i8* %158, align 1, !dbg !3757, !tbaa !1100
  %160 = icmp eq i8 %159, 0, !dbg !3759
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i64 0, i64 0), i8* %158, !dbg !3760
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3494, metadata !589), !dbg !3580
  ret i8* %161, !dbg !3761
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3762 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3807, metadata !589), !dbg !3811
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3808, metadata !589), !dbg !3812
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3810, metadata !589), !dbg !3813
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3814
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3809, metadata !589), !dbg !3815
  %3 = icmp slt i32 %2, 0, !dbg !3816
  br i1 %3, label %4, label %6, !dbg !3818

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3819
  br label %24, !dbg !3820

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3821
  %8 = icmp eq i32 %7, 0, !dbg !3821
  br i1 %8, label %13, label %9, !dbg !3823

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3824
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3826
  %12 = icmp eq i64 %11, -1, !dbg !3828
  br i1 %12, label %16, label %13, !dbg !3829

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3830
  %15 = icmp eq i32 %14, 0, !dbg !3830
  br i1 %15, label %16, label %18, !dbg !3831

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3808, metadata !589), !dbg !3812
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3810, metadata !589), !dbg !3813
  br label %24, !dbg !3834

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3835
  %20 = load i32, i32* %19, align 4, !dbg !3835, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3808, metadata !589), !dbg !3812
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3808, metadata !589), !dbg !3812
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3833
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3810, metadata !589), !dbg !3813
  %22 = icmp eq i32 %20, 0, !dbg !3836
  br i1 %22, label %24, label %23, !dbg !3834

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3838, !tbaa !663
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3810, metadata !589), !dbg !3813
  br label %24, !dbg !3840

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3841
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3842 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3887, metadata !589), !dbg !3888
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3889
  br i1 %2, label %6, label %3, !dbg !3891

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3892
  %5 = icmp eq i32 %4, 0, !dbg !3892
  br i1 %5, label %6, label %8, !dbg !3894

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3896
  br label %17, !dbg !3897

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3898, metadata !589) #10, !dbg !3903
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3905
  %10 = load i32, i32* %9, align 8, !dbg !3905, !tbaa !3415
  %11 = and i32 %10, 256, !dbg !3907
  %12 = icmp eq i32 %11, 0, !dbg !3907
  br i1 %12, label %15, label %13, !dbg !3908

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3909
  br label %15, !dbg !3909

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3910
  br label %17, !dbg !3911

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3912
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3913 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3959, metadata !589), !dbg !3965
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3960, metadata !589), !dbg !3966
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3961, metadata !589), !dbg !3967
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3968
  %5 = load i8*, i8** %4, align 8, !dbg !3968, !tbaa !3646
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3969
  %7 = load i8*, i8** %6, align 8, !dbg !3969, !tbaa !3645
  %8 = icmp eq i8* %5, %7, !dbg !3970
  br i1 %8, label %9, label %28, !dbg !3971

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3972
  %11 = load i8*, i8** %10, align 8, !dbg !3972, !tbaa !3974
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3975
  %13 = load i8*, i8** %12, align 8, !dbg !3975, !tbaa !3976
  %14 = icmp eq i8* %11, %13, !dbg !3977
  br i1 %14, label %15, label %28, !dbg !3978

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3979
  %17 = load i8*, i8** %16, align 8, !dbg !3979, !tbaa !3980
  %18 = icmp eq i8* %17, null, !dbg !3981
  br i1 %18, label %19, label %28, !dbg !3982

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3984
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3985
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3962, metadata !589), !dbg !3987
  %22 = icmp eq i64 %21, -1, !dbg !3988
  br i1 %22, label %30, label %23, !dbg !3990

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3991
  %25 = load i32, i32* %24, align 8, !dbg !3992, !tbaa !3415
  %26 = and i32 %25, -17, !dbg !3992
  store i32 %26, i32* %24, align 8, !dbg !3992, !tbaa !3415
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3993
  store i64 %21, i64* %27, align 8, !dbg !3994, !tbaa !3995
  br label %30, !dbg !3996

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3997
  br label %30, !dbg !3998

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3999
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
!499 = !DIFile(filename: "src/logname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!500 = !{!6, !49, !94, !501, !503}
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
!584 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 34, type: !585, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !25}
!587 = !{!588}
!588 = !DILocalVariable(name: "status", arg: 1, scope: !584, file: !499, line: 34, type: !25)
!589 = !DIExpression()
!590 = !DILocation(line: 34, column: 12, scope: !584)
!591 = !DILocation(line: 36, column: 14, scope: !592)
!592 = distinct !DILexicalBlock(scope: !584, file: !499, line: 36, column: 7)
!593 = !DILocation(line: 36, column: 7, scope: !584)
!594 = !DILocation(line: 37, column: 5, scope: !595)
!595 = !DILexicalBlockFile(scope: !596, file: !499, discriminator: 1)
!596 = distinct !DILexicalBlock(scope: !592, file: !499, line: 37, column: 5)
!597 = !{!598, !598, i64 0}
!598 = !{!"any pointer", !599, i64 0}
!599 = !{!"omnipotent char", !600, i64 0}
!600 = !{!"Simple C/C++ TBAA"}
!601 = !DILocation(line: 37, column: 5, scope: !602)
!602 = !DILexicalBlockFile(scope: !596, file: !499, discriminator: 3)
!603 = !DILocation(line: 37, column: 5, scope: !604)
!604 = !DILexicalBlockFile(scope: !596, file: !499, discriminator: 2)
!605 = !DILocation(line: 40, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !592, file: !499, line: 39, column: 5)
!607 = !DILocation(line: 40, column: 7, scope: !608)
!608 = !DILexicalBlockFile(scope: !606, file: !499, discriminator: 1)
!609 = !DILocation(line: 41, column: 7, scope: !606)
!610 = !DILocation(line: 41, column: 7, scope: !608)
!611 = !DILocation(line: 45, column: 7, scope: !606)
!612 = !DILocation(line: 45, column: 7, scope: !608)
!613 = !DILocation(line: 46, column: 7, scope: !606)
!614 = !DILocation(line: 46, column: 7, scope: !608)
!615 = !DILocation(line: 642, column: 15, scope: !508, inlinedAt: !616)
!616 = distinct !DILocation(line: 47, column: 7, scope: !606)
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
!637 = !DILocation(line: 49, column: 3, scope: !584)
!638 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 53, type: !639, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !642)
!639 = !DISubroutineType(types: !640)
!640 = !{!25, !25, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!642 = !{!643, !644, !645}
!643 = !DILocalVariable(name: "argc", arg: 1, scope: !638, file: !499, line: 53, type: !25)
!644 = !DILocalVariable(name: "argv", arg: 2, scope: !638, file: !499, line: 53, type: !641)
!645 = !DILocalVariable(name: "cp", scope: !638, file: !499, line: 55, type: !50)
!646 = !DILocation(line: 53, column: 11, scope: !638)
!647 = !DILocation(line: 53, column: 24, scope: !638)
!648 = !DILocation(line: 58, column: 21, scope: !638)
!649 = !DILocation(line: 58, column: 3, scope: !638)
!650 = !DILocation(line: 59, column: 3, scope: !638)
!651 = !DILocation(line: 60, column: 3, scope: !638)
!652 = !DILocation(line: 61, column: 3, scope: !638)
!653 = !DILocation(line: 63, column: 3, scope: !638)
!654 = !DILocation(line: 65, column: 63, scope: !638)
!655 = !DILocation(line: 65, column: 3, scope: !638)
!656 = !DILocation(line: 67, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !638, file: !499, line: 67, column: 7)
!658 = !DILocation(line: 67, column: 48, scope: !657)
!659 = !DILocation(line: 67, column: 7, scope: !638)
!660 = !DILocation(line: 68, column: 5, scope: !657)
!661 = !DILocation(line: 70, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !638, file: !499, line: 70, column: 7)
!663 = !{!664, !664, i64 0}
!664 = !{!"int", !599, i64 0}
!665 = !DILocation(line: 70, column: 14, scope: !662)
!666 = !DILocation(line: 70, column: 7, scope: !638)
!667 = !DILocation(line: 72, column: 20, scope: !668)
!668 = distinct !DILexicalBlock(scope: !662, file: !499, line: 71, column: 5)
!669 = !DILocation(line: 72, column: 55, scope: !668)
!670 = !DILocation(line: 72, column: 50, scope: !668)
!671 = !DILocation(line: 72, column: 43, scope: !672)
!672 = !DILexicalBlockFile(scope: !668, file: !499, discriminator: 1)
!673 = !DILocation(line: 72, column: 7, scope: !674)
!674 = !DILexicalBlockFile(scope: !668, file: !499, discriminator: 2)
!675 = !DILocation(line: 73, column: 7, scope: !668)
!676 = !DILocation(line: 78, column: 8, scope: !638)
!677 = !DILocation(line: 55, column: 9, scope: !638)
!678 = !DILocation(line: 79, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !638, file: !499, line: 79, column: 7)
!680 = !DILocation(line: 79, column: 7, scope: !638)
!681 = !DILocation(line: 80, column: 5, scope: !679)
!682 = !DILocation(line: 80, column: 5, scope: !683)
!683 = !DILexicalBlockFile(scope: !679, file: !499, discriminator: 1)
!684 = !DILocation(line: 82, column: 3, scope: !638)
!685 = !DILocation(line: 83, column: 3, scope: !638)
!686 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !510, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !687)
!687 = !{!688}
!688 = !DILocalVariable(name: "file", arg: 1, scope: !686, file: !16, line: 41, type: !6)
!689 = !DILocation(line: 41, column: 41, scope: !686)
!690 = !DILocation(line: 43, column: 13, scope: !686)
!691 = !DILocation(line: 44, column: 1, scope: !686)
!692 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !693, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !17}
!695 = !{!696}
!696 = !DILocalVariable(name: "ignore", arg: 1, scope: !692, file: !16, line: 78, type: !17)
!697 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!698 = !DILocation(line: 78, column: 37, scope: !692)
!699 = !DILocation(line: 80, column: 16, scope: !692)
!700 = !{!701, !701, i64 0}
!701 = !{!"_Bool", !599, i64 0}
!702 = !DILocation(line: 81, column: 1, scope: !692)
!703 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !704, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !706)
!704 = !DISubroutineType(types: !705)
!705 = !{null}
!706 = !{!707}
!707 = !DILocalVariable(name: "write_error", scope: !708, file: !16, line: 112, type: !6)
!708 = distinct !DILexicalBlock(scope: !709, file: !16, line: 111, column: 5)
!709 = distinct !DILexicalBlock(scope: !703, file: !16, line: 109, column: 7)
!710 = !DILocation(line: 109, column: 21, scope: !709)
!711 = !DILocation(line: 109, column: 7, scope: !709)
!712 = !DILocation(line: 109, column: 29, scope: !709)
!713 = !DILocation(line: 110, column: 7, scope: !709)
!714 = !DILocation(line: 110, column: 12, scope: !715)
!715 = !DILexicalBlockFile(scope: !709, file: !16, discriminator: 1)
!716 = !{i8 0, i8 2}
!717 = !DILocation(line: 114, column: 19, scope: !718)
!718 = distinct !DILexicalBlock(scope: !708, file: !16, line: 113, column: 11)
!719 = !DILocation(line: 110, column: 25, scope: !715)
!720 = !DILocation(line: 110, column: 28, scope: !721)
!721 = !DILexicalBlockFile(scope: !709, file: !16, discriminator: 2)
!722 = !DILocation(line: 110, column: 34, scope: !721)
!723 = !DILocation(line: 109, column: 7, scope: !724)
!724 = !DILexicalBlockFile(scope: !703, file: !16, discriminator: 1)
!725 = !DILocation(line: 112, column: 33, scope: !708)
!726 = !DILocation(line: 112, column: 19, scope: !708)
!727 = !DILocation(line: 113, column: 11, scope: !718)
!728 = !DILocation(line: 113, column: 11, scope: !708)
!729 = !DILocation(line: 114, column: 36, scope: !730)
!730 = !DILexicalBlockFile(scope: !718, file: !16, discriminator: 1)
!731 = !DILocation(line: 114, column: 9, scope: !732)
!732 = !DILexicalBlockFile(scope: !718, file: !16, discriminator: 2)
!733 = !DILocation(line: 114, column: 9, scope: !718)
!734 = !DILocation(line: 117, column: 9, scope: !730)
!735 = !DILocation(line: 119, column: 14, scope: !708)
!736 = !DILocation(line: 119, column: 7, scope: !708)
!737 = !DILocation(line: 122, column: 22, scope: !738)
!738 = distinct !DILexicalBlock(scope: !703, file: !16, line: 122, column: 8)
!739 = !DILocation(line: 122, column: 8, scope: !738)
!740 = !DILocation(line: 122, column: 30, scope: !738)
!741 = !DILocation(line: 122, column: 8, scope: !703)
!742 = !DILocation(line: 123, column: 13, scope: !738)
!743 = !DILocation(line: 123, column: 6, scope: !738)
!744 = !DILocation(line: 124, column: 1, scope: !703)
!745 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !746, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !749)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !25, !641, !6, !6, !6, !748, null}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758}
!750 = !DILocalVariable(name: "argc", arg: 1, scope: !745, file: !31, line: 44, type: !25)
!751 = !DILocalVariable(name: "argv", arg: 2, scope: !745, file: !31, line: 45, type: !641)
!752 = !DILocalVariable(name: "command_name", arg: 3, scope: !745, file: !31, line: 46, type: !6)
!753 = !DILocalVariable(name: "package", arg: 4, scope: !745, file: !31, line: 47, type: !6)
!754 = !DILocalVariable(name: "version", arg: 5, scope: !745, file: !31, line: 48, type: !6)
!755 = !DILocalVariable(name: "usage_func", arg: 6, scope: !745, file: !31, line: 49, type: !748)
!756 = !DILocalVariable(name: "c", scope: !745, file: !31, line: 52, type: !25)
!757 = !DILocalVariable(name: "saved_opterr", scope: !745, file: !31, line: 53, type: !25)
!758 = !DILocalVariable(name: "authors", scope: !759, file: !31, line: 71, type: !763)
!759 = distinct !DILexicalBlock(scope: !760, file: !31, line: 70, column: 11)
!760 = distinct !DILexicalBlock(scope: !761, file: !31, line: 64, column: 9)
!761 = distinct !DILexicalBlock(scope: !762, file: !31, line: 62, column: 5)
!762 = distinct !DILexicalBlock(scope: !745, file: !31, line: 60, column: 7)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !764, line: 80, baseType: !765)
!764 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !766, line: 50, baseType: !767)
!766 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !768)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 192, elements: !775)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !770)
!770 = !{!771, !772, !773, !774}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !769, file: !29, line: 71, baseType: !113, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !769, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !769, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !769, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!775 = !{!776}
!776 = !DISubrange(count: 1)
!777 = !DILocation(line: 44, column: 25, scope: !745)
!778 = !DILocation(line: 45, column: 28, scope: !745)
!779 = !DILocation(line: 46, column: 33, scope: !745)
!780 = !DILocation(line: 47, column: 33, scope: !745)
!781 = !DILocation(line: 48, column: 33, scope: !745)
!782 = !DILocation(line: 49, column: 28, scope: !745)
!783 = !DILocation(line: 55, column: 18, scope: !745)
!784 = !DILocation(line: 53, column: 7, scope: !745)
!785 = !DILocation(line: 58, column: 10, scope: !745)
!786 = !DILocation(line: 60, column: 12, scope: !762)
!787 = !DILocation(line: 61, column: 7, scope: !762)
!788 = !DILocation(line: 61, column: 15, scope: !789)
!789 = !DILexicalBlockFile(scope: !762, file: !31, discriminator: 1)
!790 = !DILocation(line: 52, column: 7, scope: !745)
!791 = !DILocation(line: 60, column: 7, scope: !792)
!792 = !DILexicalBlockFile(scope: !745, file: !31, discriminator: 1)
!793 = !DILocation(line: 66, column: 11, scope: !760)
!794 = !DILocation(line: 67, column: 11, scope: !760)
!795 = !DILocation(line: 71, column: 13, scope: !759)
!796 = !DILocation(line: 71, column: 21, scope: !759)
!797 = !DILocation(line: 72, column: 13, scope: !759)
!798 = !DILocation(line: 73, column: 29, scope: !759)
!799 = !DILocation(line: 73, column: 13, scope: !759)
!800 = !DILocation(line: 74, column: 13, scope: !759)
!801 = !DILocation(line: 84, column: 10, scope: !745)
!802 = !DILocation(line: 88, column: 10, scope: !745)
!803 = !DILocation(line: 89, column: 1, scope: !745)
!804 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !510, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !805)
!805 = !{!806, !807, !808}
!806 = !DILocalVariable(name: "argv0", arg: 1, scope: !804, file: !52, line: 39, type: !6)
!807 = !DILocalVariable(name: "slash", scope: !804, file: !52, line: 46, type: !6)
!808 = !DILocalVariable(name: "base", scope: !804, file: !52, line: 47, type: !6)
!809 = !DILocation(line: 39, column: 31, scope: !804)
!810 = !DILocation(line: 51, column: 13, scope: !811)
!811 = distinct !DILexicalBlock(scope: !804, file: !52, line: 51, column: 7)
!812 = !DILocation(line: 51, column: 7, scope: !804)
!813 = !DILocation(line: 55, column: 14, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !52, line: 52, column: 5)
!815 = !DILocation(line: 54, column: 7, scope: !814)
!816 = !DILocation(line: 56, column: 7, scope: !814)
!817 = !DILocation(line: 59, column: 11, scope: !804)
!818 = !DILocation(line: 46, column: 15, scope: !804)
!819 = !DILocation(line: 60, column: 17, scope: !804)
!820 = !DILocation(line: 60, column: 33, scope: !821)
!821 = !DILexicalBlockFile(scope: !804, file: !52, discriminator: 1)
!822 = !DILocation(line: 60, column: 11, scope: !804)
!823 = !DILocation(line: 47, column: 15, scope: !804)
!824 = !DILocation(line: 61, column: 12, scope: !825)
!825 = distinct !DILexicalBlock(scope: !804, file: !52, line: 61, column: 7)
!826 = !DILocation(line: 61, column: 20, scope: !825)
!827 = !DILocation(line: 61, column: 25, scope: !825)
!828 = !DILocation(line: 61, column: 28, scope: !829)
!829 = !DILexicalBlockFile(scope: !825, file: !52, discriminator: 1)
!830 = !DILocation(line: 61, column: 61, scope: !829)
!831 = !DILocation(line: 61, column: 7, scope: !821)
!832 = !DILocation(line: 64, column: 11, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !52, line: 64, column: 11)
!834 = distinct !DILexicalBlock(scope: !825, file: !52, line: 62, column: 5)
!835 = !DILocation(line: 64, column: 36, scope: !833)
!836 = !DILocation(line: 64, column: 11, scope: !834)
!837 = !DILocation(line: 66, column: 24, scope: !838)
!838 = distinct !DILexicalBlock(scope: !833, file: !52, line: 65, column: 9)
!839 = !DILocation(line: 70, column: 41, scope: !838)
!840 = !DILocation(line: 72, column: 9, scope: !838)
!841 = !DILocation(line: 84, column: 16, scope: !804)
!842 = !DILocation(line: 90, column: 27, scope: !804)
!843 = !DILocation(line: 92, column: 1, scope: !804)
!844 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !845, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !848)
!845 = !DISubroutineType(types: !846)
!846 = !{!847, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!848 = !{!849, !850, !851}
!849 = !DILocalVariable(name: "o", arg: 1, scope: !844, file: !100, line: 114, type: !847)
!850 = !DILocalVariable(name: "e", scope: !844, file: !100, line: 116, type: !25)
!851 = !DILocalVariable(name: "p", scope: !844, file: !100, line: 117, type: !847)
!852 = !DILocation(line: 114, column: 48, scope: !844)
!853 = !DILocation(line: 116, column: 11, scope: !844)
!854 = !DILocation(line: 116, column: 7, scope: !844)
!855 = !DILocation(line: 117, column: 40, scope: !844)
!856 = !DILocation(line: 117, column: 40, scope: !857)
!857 = !DILexicalBlockFile(scope: !844, file: !100, discriminator: 3)
!858 = !DILocation(line: 117, column: 31, scope: !857)
!859 = !DILocation(line: 117, column: 27, scope: !844)
!860 = !DILocation(line: 119, column: 9, scope: !844)
!861 = !DILocation(line: 120, column: 3, scope: !844)
!862 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !863, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !867)
!863 = !DISubroutineType(types: !864)
!864 = !{!58, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!867 = !{!868}
!868 = !DILocalVariable(name: "o", arg: 1, scope: !862, file: !100, line: 125, type: !865)
!869 = !DILocation(line: 125, column: 50, scope: !862)
!870 = !DILocation(line: 127, column: 11, scope: !862)
!871 = !DILocation(line: 127, column: 46, scope: !872)
!872 = !DILexicalBlockFile(scope: !862, file: !100, discriminator: 3)
!873 = !{!874, !599, i64 0}
!874 = !{!"quoting_options", !599, i64 0, !664, i64 4, !599, i64 8, !598, i64 40, !598, i64 48}
!875 = !DILocation(line: 127, column: 3, scope: !872)
!876 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !877, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !847, !58}
!879 = !{!880, !881}
!880 = !DILocalVariable(name: "o", arg: 1, scope: !876, file: !100, line: 133, type: !847)
!881 = !DILocalVariable(name: "s", arg: 2, scope: !876, file: !100, line: 133, type: !58)
!882 = !DILocation(line: 133, column: 44, scope: !876)
!883 = !DILocation(line: 133, column: 66, scope: !876)
!884 = !DILocation(line: 135, column: 4, scope: !876)
!885 = !DILocation(line: 135, column: 39, scope: !886)
!886 = !DILexicalBlockFile(scope: !876, file: !100, discriminator: 3)
!887 = !DILocation(line: 135, column: 45, scope: !886)
!888 = !DILocation(line: 136, column: 1, scope: !876)
!889 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !890, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{!25, !847, !8, !25}
!892 = !{!893, !894, !895, !896, !897, !899, !900}
!893 = !DILocalVariable(name: "o", arg: 1, scope: !889, file: !100, line: 144, type: !847)
!894 = !DILocalVariable(name: "c", arg: 2, scope: !889, file: !100, line: 144, type: !8)
!895 = !DILocalVariable(name: "i", arg: 3, scope: !889, file: !100, line: 144, type: !25)
!896 = !DILocalVariable(name: "uc", scope: !889, file: !100, line: 146, type: !494)
!897 = !DILocalVariable(name: "p", scope: !889, file: !100, line: 147, type: !898)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!899 = !DILocalVariable(name: "shift", scope: !889, file: !100, line: 149, type: !25)
!900 = !DILocalVariable(name: "r", scope: !889, file: !100, line: 150, type: !25)
!901 = !DILocation(line: 144, column: 43, scope: !889)
!902 = !DILocation(line: 144, column: 51, scope: !889)
!903 = !DILocation(line: 144, column: 58, scope: !889)
!904 = !DILocation(line: 146, column: 17, scope: !889)
!905 = !DILocation(line: 148, column: 6, scope: !889)
!906 = !DILocation(line: 148, column: 62, scope: !907)
!907 = !DILexicalBlockFile(scope: !889, file: !100, discriminator: 3)
!908 = !DILocation(line: 148, column: 57, scope: !907)
!909 = !DILocation(line: 147, column: 17, scope: !889)
!910 = !DILocation(line: 149, column: 18, scope: !889)
!911 = !DILocation(line: 149, column: 15, scope: !889)
!912 = !DILocation(line: 149, column: 7, scope: !889)
!913 = !DILocation(line: 150, column: 12, scope: !889)
!914 = !DILocation(line: 150, column: 15, scope: !889)
!915 = !DILocation(line: 150, column: 25, scope: !889)
!916 = !DILocation(line: 150, column: 7, scope: !889)
!917 = !DILocation(line: 151, column: 13, scope: !889)
!918 = !DILocation(line: 151, column: 18, scope: !889)
!919 = !DILocation(line: 151, column: 23, scope: !889)
!920 = !DILocation(line: 151, column: 6, scope: !889)
!921 = !DILocation(line: 152, column: 3, scope: !889)
!922 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !923, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !925)
!923 = !DISubroutineType(types: !924)
!924 = !{!25, !847, !25}
!925 = !{!926, !927, !928}
!926 = !DILocalVariable(name: "o", arg: 1, scope: !922, file: !100, line: 160, type: !847)
!927 = !DILocalVariable(name: "i", arg: 2, scope: !922, file: !100, line: 160, type: !25)
!928 = !DILocalVariable(name: "r", scope: !922, file: !100, line: 162, type: !25)
!929 = !DILocation(line: 160, column: 44, scope: !922)
!930 = !DILocation(line: 160, column: 51, scope: !922)
!931 = !DILocation(line: 163, column: 8, scope: !932)
!932 = distinct !DILexicalBlock(scope: !922, file: !100, line: 163, column: 7)
!933 = !DILocation(line: 163, column: 7, scope: !922)
!934 = !DILocation(line: 165, column: 10, scope: !922)
!935 = !{!874, !664, i64 4}
!936 = !DILocation(line: 162, column: 7, scope: !922)
!937 = !DILocation(line: 166, column: 12, scope: !922)
!938 = !DILocation(line: 167, column: 3, scope: !922)
!939 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !940, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !942)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !847, !6, !6}
!942 = !{!943, !944, !945}
!943 = !DILocalVariable(name: "o", arg: 1, scope: !939, file: !100, line: 171, type: !847)
!944 = !DILocalVariable(name: "left_quote", arg: 2, scope: !939, file: !100, line: 172, type: !6)
!945 = !DILocalVariable(name: "right_quote", arg: 3, scope: !939, file: !100, line: 172, type: !6)
!946 = !DILocation(line: 171, column: 45, scope: !939)
!947 = !DILocation(line: 172, column: 33, scope: !939)
!948 = !DILocation(line: 172, column: 57, scope: !939)
!949 = !DILocation(line: 174, column: 8, scope: !950)
!950 = distinct !DILexicalBlock(scope: !939, file: !100, line: 174, column: 7)
!951 = !DILocation(line: 174, column: 7, scope: !939)
!952 = !DILocation(line: 176, column: 6, scope: !939)
!953 = !DILocation(line: 176, column: 12, scope: !939)
!954 = !DILocation(line: 177, column: 8, scope: !955)
!955 = distinct !DILexicalBlock(scope: !939, file: !100, line: 177, column: 7)
!956 = !DILocation(line: 177, column: 23, scope: !957)
!957 = !DILexicalBlockFile(scope: !955, file: !100, discriminator: 1)
!958 = !DILocation(line: 177, column: 19, scope: !955)
!959 = !DILocation(line: 178, column: 5, scope: !955)
!960 = !DILocation(line: 179, column: 6, scope: !939)
!961 = !DILocation(line: 179, column: 17, scope: !939)
!962 = !{!874, !598, i64 40}
!963 = !DILocation(line: 180, column: 6, scope: !939)
!964 = !DILocation(line: 180, column: 18, scope: !939)
!965 = !{!874, !598, i64 48}
!966 = !DILocation(line: 181, column: 1, scope: !939)
!967 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !968, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!94, !50, !94, !6, !94, !865}
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978}
!971 = !DILocalVariable(name: "buffer", arg: 1, scope: !967, file: !100, line: 776, type: !50)
!972 = !DILocalVariable(name: "buffersize", arg: 2, scope: !967, file: !100, line: 776, type: !94)
!973 = !DILocalVariable(name: "arg", arg: 3, scope: !967, file: !100, line: 777, type: !6)
!974 = !DILocalVariable(name: "argsize", arg: 4, scope: !967, file: !100, line: 777, type: !94)
!975 = !DILocalVariable(name: "o", arg: 5, scope: !967, file: !100, line: 778, type: !865)
!976 = !DILocalVariable(name: "p", scope: !967, file: !100, line: 780, type: !865)
!977 = !DILocalVariable(name: "e", scope: !967, file: !100, line: 781, type: !25)
!978 = !DILocalVariable(name: "r", scope: !967, file: !100, line: 782, type: !94)
!979 = !DILocation(line: 776, column: 24, scope: !967)
!980 = !DILocation(line: 776, column: 39, scope: !967)
!981 = !DILocation(line: 777, column: 30, scope: !967)
!982 = !DILocation(line: 777, column: 42, scope: !967)
!983 = !DILocation(line: 778, column: 48, scope: !967)
!984 = !DILocation(line: 780, column: 37, scope: !967)
!985 = !DILocation(line: 780, column: 33, scope: !967)
!986 = !DILocation(line: 781, column: 11, scope: !967)
!987 = !DILocation(line: 781, column: 7, scope: !967)
!988 = !DILocation(line: 783, column: 43, scope: !967)
!989 = !DILocation(line: 783, column: 53, scope: !967)
!990 = !DILocation(line: 783, column: 60, scope: !967)
!991 = !DILocation(line: 784, column: 43, scope: !967)
!992 = !DILocation(line: 784, column: 58, scope: !967)
!993 = !DILocation(line: 782, column: 14, scope: !967)
!994 = !DILocation(line: 782, column: 10, scope: !967)
!995 = !DILocation(line: 785, column: 9, scope: !967)
!996 = !DILocation(line: 786, column: 3, scope: !967)
!997 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !998, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1002)
!998 = !DISubroutineType(types: !999)
!999 = !{!94, !50, !94, !6, !94, !58, !25, !1000, !6, !6}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1027, !1028, !1029, !1030, !1031, !1034, !1035, !1052, !1055, !1056, !1063}
!1003 = !DILocalVariable(name: "buffer", arg: 1, scope: !997, file: !100, line: 248, type: !50)
!1004 = !DILocalVariable(name: "buffersize", arg: 2, scope: !997, file: !100, line: 248, type: !94)
!1005 = !DILocalVariable(name: "arg", arg: 3, scope: !997, file: !100, line: 249, type: !6)
!1006 = !DILocalVariable(name: "argsize", arg: 4, scope: !997, file: !100, line: 249, type: !94)
!1007 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !997, file: !100, line: 250, type: !58)
!1008 = !DILocalVariable(name: "flags", arg: 6, scope: !997, file: !100, line: 250, type: !25)
!1009 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !997, file: !100, line: 251, type: !1000)
!1010 = !DILocalVariable(name: "left_quote", arg: 8, scope: !997, file: !100, line: 252, type: !6)
!1011 = !DILocalVariable(name: "right_quote", arg: 9, scope: !997, file: !100, line: 253, type: !6)
!1012 = !DILocalVariable(name: "i", scope: !997, file: !100, line: 255, type: !94)
!1013 = !DILocalVariable(name: "len", scope: !997, file: !100, line: 256, type: !94)
!1014 = !DILocalVariable(name: "orig_buffersize", scope: !997, file: !100, line: 257, type: !94)
!1015 = !DILocalVariable(name: "quote_string", scope: !997, file: !100, line: 258, type: !6)
!1016 = !DILocalVariable(name: "quote_string_len", scope: !997, file: !100, line: 259, type: !94)
!1017 = !DILocalVariable(name: "backslash_escapes", scope: !997, file: !100, line: 260, type: !17)
!1018 = !DILocalVariable(name: "unibyte_locale", scope: !997, file: !100, line: 261, type: !17)
!1019 = !DILocalVariable(name: "elide_outer_quotes", scope: !997, file: !100, line: 262, type: !17)
!1020 = !DILocalVariable(name: "pending_shell_escape_end", scope: !997, file: !100, line: 263, type: !17)
!1021 = !DILocalVariable(name: "encountered_single_quote", scope: !997, file: !100, line: 264, type: !17)
!1022 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !997, file: !100, line: 265, type: !17)
!1023 = !DILocalVariable(name: "c", scope: !1024, file: !100, line: 394, type: !494)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 393, column: 5)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !100, line: 392, column: 3)
!1026 = distinct !DILexicalBlock(scope: !997, file: !100, line: 392, column: 3)
!1027 = !DILocalVariable(name: "esc", scope: !1024, file: !100, line: 395, type: !494)
!1028 = !DILocalVariable(name: "is_right_quote", scope: !1024, file: !100, line: 396, type: !17)
!1029 = !DILocalVariable(name: "escaping", scope: !1024, file: !100, line: 397, type: !17)
!1030 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1024, file: !100, line: 398, type: !17)
!1031 = !DILocalVariable(name: "m", scope: !1032, file: !100, line: 602, type: !94)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 600, column: 11)
!1033 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 418, column: 9)
!1034 = !DILocalVariable(name: "printable", scope: !1032, file: !100, line: 604, type: !17)
!1035 = !DILocalVariable(name: "mbstate", scope: !1036, file: !100, line: 613, type: !1038)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !100, line: 612, column: 15)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !100, line: 606, column: 17)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1039, line: 107, baseType: !1040)
!1039 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1039, line: 95, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1039, line: 83, size: 64, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1041, file: !1039, line: 85, baseType: !25, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1041, file: !1039, line: 94, baseType: !1045, size: 32, offset: 32)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1041, file: !1039, line: 86, size: 32, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1045, file: !1039, line: 89, baseType: !113, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1045, file: !1039, line: 93, baseType: !1049, size: 32)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 4)
!1052 = !DILocalVariable(name: "w", scope: !1053, file: !100, line: 623, type: !1054)
!1053 = distinct !DILexicalBlock(scope: !1036, file: !100, line: 622, column: 19)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1055 = !DILocalVariable(name: "bytes", scope: !1053, file: !100, line: 624, type: !94)
!1056 = !DILocalVariable(name: "j", scope: !1057, file: !100, line: 649, type: !94)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !100, line: 648, column: 27)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !100, line: 646, column: 29)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 641, column: 23)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !100, line: 633, column: 30)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !100, line: 628, column: 30)
!1062 = distinct !DILexicalBlock(scope: !1053, file: !100, line: 626, column: 25)
!1063 = !DILocalVariable(name: "ilim", scope: !1064, file: !100, line: 676, type: !94)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !100, line: 673, column: 15)
!1065 = distinct !DILexicalBlock(scope: !1032, file: !100, line: 672, column: 17)
!1066 = !DILocation(line: 248, column: 33, scope: !997)
!1067 = !DILocation(line: 248, column: 48, scope: !997)
!1068 = !DILocation(line: 249, column: 39, scope: !997)
!1069 = !DILocation(line: 249, column: 51, scope: !997)
!1070 = !DILocation(line: 250, column: 46, scope: !997)
!1071 = !DILocation(line: 250, column: 65, scope: !997)
!1072 = !DILocation(line: 251, column: 47, scope: !997)
!1073 = !DILocation(line: 252, column: 39, scope: !997)
!1074 = !DILocation(line: 253, column: 39, scope: !997)
!1075 = !DILocation(line: 256, column: 10, scope: !997)
!1076 = !DILocation(line: 257, column: 10, scope: !997)
!1077 = !DILocation(line: 258, column: 15, scope: !997)
!1078 = !DILocation(line: 259, column: 10, scope: !997)
!1079 = !DILocation(line: 260, column: 8, scope: !997)
!1080 = !DILocation(line: 261, column: 25, scope: !997)
!1081 = !DILocation(line: 261, column: 36, scope: !997)
!1082 = !DILocation(line: 262, column: 8, scope: !997)
!1083 = !DILocation(line: 263, column: 8, scope: !997)
!1084 = !DILocation(line: 264, column: 8, scope: !997)
!1085 = !DILocation(line: 265, column: 8, scope: !997)
!1086 = !DILocation(line: 265, column: 3, scope: !997)
!1087 = !DILocation(line: 308, column: 3, scope: !997)
!1088 = !DILocation(line: 315, column: 11, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !997, file: !100, line: 309, column: 5)
!1090 = !DILocation(line: 315, column: 12, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1089, file: !100, line: 315, column: 11)
!1092 = !DILocation(line: 316, column: 9, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1094, file: !100, discriminator: 1)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !100, line: 316, column: 9)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !100, line: 316, column: 9)
!1096 = !DILocation(line: 316, column: 9, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1095, file: !100, discriminator: 1)
!1098 = !DILocation(line: 316, column: 9, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1094, file: !100, discriminator: 2)
!1100 = !{!599, !599, i64 0}
!1101 = !DILocation(line: 354, column: 26, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !100, line: 332, column: 11)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !100, line: 331, column: 13)
!1104 = distinct !DILexicalBlock(scope: !1089, file: !100, line: 330, column: 7)
!1105 = !DILocation(line: 355, column: 27, scope: !1102)
!1106 = !DILocation(line: 356, column: 11, scope: !1102)
!1107 = !DILocation(line: 357, column: 14, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !100, line: 357, column: 13)
!1109 = !DILocation(line: 357, column: 13, scope: !1104)
!1110 = !DILocation(line: 358, column: 43, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1112, file: !100, discriminator: 1)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !100, line: 358, column: 11)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !100, line: 358, column: 11)
!1114 = !DILocation(line: 358, column: 11, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1113, file: !100, discriminator: 1)
!1116 = !DILocation(line: 359, column: 13, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1118, file: !100, discriminator: 1)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !100, line: 359, column: 13)
!1119 = distinct !DILexicalBlock(scope: !1112, file: !100, line: 359, column: 13)
!1120 = !DILocation(line: 359, column: 13, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1119, file: !100, discriminator: 1)
!1122 = !DILocation(line: 359, column: 13, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1118, file: !100, discriminator: 2)
!1124 = !DILocation(line: 359, column: 13, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1119, file: !100, discriminator: 3)
!1126 = !DILocation(line: 358, column: 70, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1112, file: !100, discriminator: 2)
!1128 = distinct !{!1128, !1129, !1130}
!1129 = !DILocation(line: 358, column: 11, scope: !1113)
!1130 = !DILocation(line: 359, column: 13, scope: !1113)
!1131 = !DILocation(line: 362, column: 28, scope: !1104)
!1132 = !DILocation(line: 364, column: 7, scope: !1089)
!1133 = !DILocation(line: 367, column: 7, scope: !1089)
!1134 = !DILocation(line: 370, column: 7, scope: !1089)
!1135 = !DILocation(line: 373, column: 12, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1089, file: !100, line: 373, column: 11)
!1137 = !DILocation(line: 373, column: 11, scope: !1089)
!1138 = !DILocation(line: 378, column: 12, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1089, file: !100, line: 378, column: 11)
!1140 = !DILocation(line: 378, column: 11, scope: !1089)
!1141 = !DILocation(line: 379, column: 9, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1143, file: !100, discriminator: 1)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !100, line: 379, column: 9)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !100, line: 379, column: 9)
!1145 = !DILocation(line: 379, column: 9, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1144, file: !100, discriminator: 1)
!1147 = !DILocation(line: 379, column: 9, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1143, file: !100, discriminator: 2)
!1149 = !DILocation(line: 386, column: 7, scope: !1089)
!1150 = !DILocation(line: 389, column: 7, scope: !1089)
!1151 = !DILocation(line: 255, column: 10, scope: !997)
!1152 = !DILocation(line: 392, column: 8, scope: !1026)
!1153 = !DILocation(line: 392, column: 27, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1025, file: !100, discriminator: 1)
!1155 = !DILocation(line: 392, column: 19, scope: !1154)
!1156 = !DILocation(line: 392, column: 60, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1025, file: !100, discriminator: 3)
!1158 = !DILocation(line: 392, column: 3, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1026, file: !100, discriminator: 4)
!1160 = !DILocation(line: 392, column: 41, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1025, file: !100, discriminator: 2)
!1162 = !DILocation(line: 392, column: 48, scope: !1161)
!1163 = !DILocation(line: 396, column: 12, scope: !1024)
!1164 = !DILocation(line: 397, column: 12, scope: !1024)
!1165 = !DILocation(line: 398, column: 12, scope: !1024)
!1166 = !DILocation(line: 401, column: 11, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 400, column: 11)
!1168 = !DILocation(line: 403, column: 17, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1167, file: !100, discriminator: 1)
!1170 = !DILocation(line: 404, column: 39, scope: !1167)
!1171 = !DILocation(line: 408, column: 32, scope: !1167)
!1172 = !DILocation(line: 404, column: 19, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1167, file: !100, discriminator: 2)
!1174 = !DILocation(line: 404, column: 15, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1167, file: !100, discriminator: 4)
!1176 = !DILocation(line: 409, column: 11, scope: !1167)
!1177 = !DILocation(line: 409, column: 26, scope: !1169)
!1178 = !DILocation(line: 409, column: 14, scope: !1169)
!1179 = !DILocation(line: 400, column: 11, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1024, file: !100, discriminator: 1)
!1181 = !DILocation(line: 416, column: 11, scope: !1024)
!1182 = !DILocation(line: 394, column: 21, scope: !1024)
!1183 = !DILocation(line: 417, column: 7, scope: !1024)
!1184 = !DILocation(line: 420, column: 15, scope: !1033)
!1185 = !DILocation(line: 422, column: 15, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1187, file: !100, discriminator: 1)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !100, line: 422, column: 15)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !100, line: 421, column: 13)
!1189 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 420, column: 15)
!1190 = !DILocation(line: 422, column: 15, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1192, file: !100, discriminator: 4)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !100, line: 422, column: 15)
!1193 = !DILocation(line: 422, column: 15, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1192, file: !100, discriminator: 3)
!1195 = !DILocation(line: 422, column: 15, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1197, file: !100, discriminator: 6)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !100, line: 422, column: 15)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !100, line: 422, column: 15)
!1199 = distinct !DILexicalBlock(scope: !1192, file: !100, line: 422, column: 15)
!1200 = !DILocation(line: 422, column: 15, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1198, file: !100, discriminator: 6)
!1202 = !DILocation(line: 422, column: 15, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1197, file: !100, discriminator: 7)
!1204 = !DILocation(line: 422, column: 15, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1198, file: !100, discriminator: 8)
!1206 = !DILocation(line: 422, column: 15, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1208, file: !100, discriminator: 11)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !100, line: 422, column: 15)
!1209 = distinct !DILexicalBlock(scope: !1199, file: !100, line: 422, column: 15)
!1210 = !DILocation(line: 422, column: 15, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1209, file: !100, discriminator: 11)
!1212 = !DILocation(line: 422, column: 15, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1208, file: !100, discriminator: 12)
!1214 = !DILocation(line: 422, column: 15, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1209, file: !100, discriminator: 13)
!1216 = !DILocation(line: 422, column: 15, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1218, file: !100, discriminator: 16)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !100, line: 422, column: 15)
!1219 = distinct !DILexicalBlock(scope: !1199, file: !100, line: 422, column: 15)
!1220 = !DILocation(line: 422, column: 15, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1219, file: !100, discriminator: 16)
!1222 = !DILocation(line: 422, column: 15, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1218, file: !100, discriminator: 17)
!1224 = !DILocation(line: 422, column: 15, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1219, file: !100, discriminator: 18)
!1226 = !DILocation(line: 422, column: 15, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1199, file: !100, discriminator: 20)
!1228 = !DILocation(line: 422, column: 15, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1230, file: !100, discriminator: 22)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !100, line: 422, column: 15)
!1231 = distinct !DILexicalBlock(scope: !1187, file: !100, line: 422, column: 15)
!1232 = !DILocation(line: 422, column: 15, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1231, file: !100, discriminator: 22)
!1234 = !DILocation(line: 422, column: 15, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1230, file: !100, discriminator: 23)
!1236 = !DILocation(line: 422, column: 15, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1231, file: !100, discriminator: 24)
!1238 = !DILocation(line: 430, column: 19, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1188, file: !100, line: 429, column: 19)
!1240 = !DILocation(line: 430, column: 24, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1239, file: !100, discriminator: 1)
!1242 = !DILocation(line: 430, column: 28, scope: !1241)
!1243 = !DILocation(line: 430, column: 38, scope: !1241)
!1244 = !DILocation(line: 430, column: 48, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1239, file: !100, discriminator: 2)
!1246 = !DILocation(line: 430, column: 59, scope: !1245)
!1247 = !DILocation(line: 432, column: 19, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1249, file: !100, discriminator: 1)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !100, line: 432, column: 19)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !100, line: 432, column: 19)
!1251 = distinct !DILexicalBlock(scope: !1239, file: !100, line: 431, column: 17)
!1252 = !DILocation(line: 432, column: 19, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1250, file: !100, discriminator: 1)
!1254 = !DILocation(line: 432, column: 19, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1249, file: !100, discriminator: 2)
!1256 = !DILocation(line: 432, column: 19, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1250, file: !100, discriminator: 3)
!1258 = !DILocation(line: 433, column: 19, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1260, file: !100, discriminator: 1)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !100, line: 433, column: 19)
!1261 = distinct !DILexicalBlock(scope: !1251, file: !100, line: 433, column: 19)
!1262 = !DILocation(line: 433, column: 19, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1261, file: !100, discriminator: 1)
!1264 = !DILocation(line: 433, column: 19, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1260, file: !100, discriminator: 2)
!1266 = !DILocation(line: 433, column: 19, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1261, file: !100, discriminator: 3)
!1268 = !DILocation(line: 434, column: 17, scope: !1251)
!1269 = !DILocation(line: 441, column: 20, scope: !1189)
!1270 = !DILocation(line: 446, column: 11, scope: !1033)
!1271 = !DILocation(line: 449, column: 19, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 447, column: 13)
!1273 = !DILocation(line: 455, column: 19, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1272, file: !100, line: 454, column: 19)
!1275 = !DILocation(line: 455, column: 24, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1274, file: !100, discriminator: 1)
!1277 = !DILocation(line: 455, column: 28, scope: !1276)
!1278 = !DILocation(line: 455, column: 38, scope: !1276)
!1279 = !DILocation(line: 455, column: 47, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1274, file: !100, discriminator: 2)
!1281 = !DILocation(line: 455, column: 41, scope: !1280)
!1282 = !DILocation(line: 455, column: 52, scope: !1280)
!1283 = !DILocation(line: 454, column: 19, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1272, file: !100, discriminator: 1)
!1285 = !DILocation(line: 456, column: 25, scope: !1274)
!1286 = !DILocation(line: 456, column: 17, scope: !1274)
!1287 = !DILocation(line: 463, column: 25, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1274, file: !100, line: 457, column: 19)
!1289 = !DILocation(line: 467, column: 21, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1291, file: !100, discriminator: 1)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !100, line: 467, column: 21)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !100, line: 467, column: 21)
!1293 = !DILocation(line: 467, column: 21, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1292, file: !100, discriminator: 1)
!1295 = !DILocation(line: 467, column: 21, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1291, file: !100, discriminator: 2)
!1297 = !DILocation(line: 467, column: 21, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1292, file: !100, discriminator: 3)
!1299 = !DILocation(line: 468, column: 21, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1301, file: !100, discriminator: 1)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !100, line: 468, column: 21)
!1302 = distinct !DILexicalBlock(scope: !1288, file: !100, line: 468, column: 21)
!1303 = !DILocation(line: 468, column: 21, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1302, file: !100, discriminator: 1)
!1305 = !DILocation(line: 468, column: 21, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1301, file: !100, discriminator: 2)
!1307 = !DILocation(line: 468, column: 21, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1302, file: !100, discriminator: 3)
!1309 = !DILocation(line: 469, column: 21, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1311, file: !100, discriminator: 1)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !100, line: 469, column: 21)
!1312 = distinct !DILexicalBlock(scope: !1288, file: !100, line: 469, column: 21)
!1313 = !DILocation(line: 469, column: 21, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1312, file: !100, discriminator: 1)
!1315 = !DILocation(line: 469, column: 21, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1311, file: !100, discriminator: 2)
!1317 = !DILocation(line: 469, column: 21, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1312, file: !100, discriminator: 3)
!1319 = !DILocation(line: 470, column: 21, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1321, file: !100, discriminator: 1)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !100, line: 470, column: 21)
!1322 = distinct !DILexicalBlock(scope: !1288, file: !100, line: 470, column: 21)
!1323 = !DILocation(line: 470, column: 21, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1322, file: !100, discriminator: 1)
!1325 = !DILocation(line: 470, column: 21, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1321, file: !100, discriminator: 2)
!1327 = !DILocation(line: 470, column: 21, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1322, file: !100, discriminator: 3)
!1329 = !DILocation(line: 471, column: 21, scope: !1288)
!1330 = !DILocation(line: 395, column: 21, scope: !1024)
!1331 = !DILocation(line: 484, column: 31, scope: !1033)
!1332 = !DILocation(line: 485, column: 31, scope: !1033)
!1333 = !DILocation(line: 487, column: 31, scope: !1033)
!1334 = !DILocation(line: 488, column: 31, scope: !1033)
!1335 = !DILocation(line: 489, column: 31, scope: !1033)
!1336 = !DILocation(line: 492, column: 15, scope: !1033)
!1337 = !DILocation(line: 494, column: 19, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !100, line: 493, column: 13)
!1339 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 492, column: 15)
!1340 = !DILocation(line: 501, column: 33, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 501, column: 15)
!1342 = !DILocation(line: 506, column: 15, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 505, column: 15)
!1344 = !DILocation(line: 510, column: 15, scope: !1033)
!1345 = !DILocation(line: 518, column: 26, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 518, column: 15)
!1347 = !DILocation(line: 518, column: 15, scope: !1033)
!1348 = !DILocation(line: 518, column: 40, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1346, file: !100, discriminator: 1)
!1350 = !DILocation(line: 518, column: 47, scope: !1349)
!1351 = !DILocation(line: 522, column: 17, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 522, column: 15)
!1353 = !DILocation(line: 518, column: 18, scope: !1349)
!1354 = !DILocation(line: 518, column: 65, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1346, file: !100, discriminator: 2)
!1356 = !DILocation(line: 518, column: 15, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1033, file: !100, discriminator: 2)
!1358 = !DILocation(line: 522, column: 15, scope: !1033)
!1359 = !DILocation(line: 526, column: 11, scope: !1033)
!1360 = !DILocation(line: 541, column: 15, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 540, column: 15)
!1362 = !DILocation(line: 548, column: 15, scope: !1033)
!1363 = !DILocation(line: 550, column: 19, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !100, line: 549, column: 13)
!1365 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 548, column: 15)
!1366 = !DILocation(line: 553, column: 19, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !100, line: 553, column: 19)
!1368 = !DILocation(line: 553, column: 35, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1367, file: !100, discriminator: 1)
!1370 = !DILocation(line: 553, column: 30, scope: !1367)
!1371 = !DILocation(line: 562, column: 15, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1373, file: !100, discriminator: 1)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !100, line: 562, column: 15)
!1374 = distinct !DILexicalBlock(scope: !1364, file: !100, line: 562, column: 15)
!1375 = !DILocation(line: 562, column: 15, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1374, file: !100, discriminator: 1)
!1377 = !DILocation(line: 562, column: 15, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1373, file: !100, discriminator: 2)
!1379 = !DILocation(line: 562, column: 15, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1374, file: !100, discriminator: 3)
!1381 = !DILocation(line: 563, column: 15, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1383, file: !100, discriminator: 1)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !100, line: 563, column: 15)
!1384 = distinct !DILexicalBlock(scope: !1364, file: !100, line: 563, column: 15)
!1385 = !DILocation(line: 563, column: 15, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1384, file: !100, discriminator: 1)
!1387 = !DILocation(line: 563, column: 15, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1383, file: !100, discriminator: 2)
!1389 = !DILocation(line: 563, column: 15, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1384, file: !100, discriminator: 3)
!1391 = !DILocation(line: 564, column: 15, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1393, file: !100, discriminator: 1)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !100, line: 564, column: 15)
!1394 = distinct !DILexicalBlock(scope: !1364, file: !100, line: 564, column: 15)
!1395 = !DILocation(line: 564, column: 15, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1394, file: !100, discriminator: 1)
!1397 = !DILocation(line: 564, column: 15, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1393, file: !100, discriminator: 2)
!1399 = !DILocation(line: 564, column: 15, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1394, file: !100, discriminator: 3)
!1401 = !DILocation(line: 566, column: 13, scope: !1364)
!1402 = !DILocation(line: 606, column: 17, scope: !1032)
!1403 = !DILocation(line: 602, column: 20, scope: !1032)
!1404 = !DILocation(line: 609, column: 29, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1037, file: !100, line: 607, column: 15)
!1406 = !{!1407, !1407, i64 0}
!1407 = !{!"short", !599, i64 0}
!1408 = !DILocation(line: 609, column: 27, scope: !1405)
!1409 = !DILocation(line: 604, column: 18, scope: !1032)
!1410 = !DILocation(line: 610, column: 15, scope: !1405)
!1411 = !DILocation(line: 613, column: 17, scope: !1036)
!1412 = !DILocation(line: 614, column: 17, scope: !1036)
!1413 = !DILocation(line: 618, column: 29, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1036, file: !100, line: 618, column: 21)
!1415 = !DILocation(line: 618, column: 21, scope: !1036)
!1416 = distinct !{!1416, !1417, !1418}
!1417 = !DILocation(line: 621, column: 17, scope: !1036)
!1418 = !DILocation(line: 667, column: 44, scope: !1036)
!1419 = !DILocation(line: 619, column: 29, scope: !1414)
!1420 = !DILocation(line: 619, column: 19, scope: !1414)
!1421 = !DILocation(line: 623, column: 21, scope: !1053)
!1422 = !DILocation(line: 624, column: 56, scope: !1053)
!1423 = !DILocation(line: 624, column: 50, scope: !1053)
!1424 = !DILocation(line: 625, column: 53, scope: !1053)
!1425 = !DIExpression(DW_OP_deref)
!1426 = !DILocation(line: 613, column: 27, scope: !1036)
!1427 = !DILocation(line: 623, column: 29, scope: !1053)
!1428 = !DILocation(line: 624, column: 36, scope: !1053)
!1429 = !DILocation(line: 624, column: 28, scope: !1053)
!1430 = !DILocation(line: 626, column: 25, scope: !1053)
!1431 = !DILocation(line: 636, column: 38, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1433, file: !100, discriminator: 1)
!1433 = distinct !DILexicalBlock(scope: !1060, file: !100, line: 634, column: 23)
!1434 = !DILocation(line: 636, column: 48, scope: !1432)
!1435 = !DILocation(line: 636, column: 51, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1433, file: !100, discriminator: 2)
!1437 = !DILocation(line: 636, column: 48, scope: !1436)
!1438 = !DILocation(line: 636, column: 25, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1433, file: !100, discriminator: 3)
!1440 = !DILocation(line: 637, column: 28, scope: !1433)
!1441 = !DILocation(line: 636, column: 34, scope: !1432)
!1442 = distinct !{!1442, !1443, !1440}
!1443 = !DILocation(line: 636, column: 25, scope: !1433)
!1444 = !DILocation(line: 650, column: 43, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1446, file: !100, discriminator: 1)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !100, line: 650, column: 29)
!1447 = distinct !DILexicalBlock(scope: !1057, file: !100, line: 650, column: 29)
!1448 = !DILocation(line: 647, column: 29, scope: !1058)
!1449 = !DILocation(line: 649, column: 36, scope: !1057)
!1450 = !DILocation(line: 651, column: 49, scope: !1446)
!1451 = !DILocation(line: 651, column: 39, scope: !1446)
!1452 = !DILocation(line: 651, column: 31, scope: !1446)
!1453 = !DILocation(line: 650, column: 53, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1446, file: !100, discriminator: 2)
!1455 = !DILocation(line: 650, column: 29, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1447, file: !100, discriminator: 1)
!1457 = distinct !{!1457, !1458, !1459}
!1458 = !DILocation(line: 650, column: 29, scope: !1447)
!1459 = !DILocation(line: 659, column: 33, scope: !1447)
!1460 = !DILocation(line: 666, column: 19, scope: !1036)
!1461 = !DILocation(line: 662, column: 41, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1059, file: !100, line: 662, column: 29)
!1463 = !DILocation(line: 662, column: 31, scope: !1462)
!1464 = !DILocation(line: 662, column: 29, scope: !1059)
!1465 = !DILocation(line: 664, column: 27, scope: !1059)
!1466 = !DILocation(line: 667, column: 26, scope: !1036)
!1467 = !DILocation(line: 667, column: 24, scope: !1036)
!1468 = !DILocation(line: 666, column: 19, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1053, file: !100, discriminator: 3)
!1470 = !DILocation(line: 668, column: 15, scope: !1037)
!1471 = !DILocation(line: 670, column: 40, scope: !1032)
!1472 = !DILocation(line: 672, column: 19, scope: !1065)
!1473 = !DILocation(line: 672, column: 45, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1065, file: !100, discriminator: 1)
!1475 = !DILocation(line: 672, column: 23, scope: !1065)
!1476 = !DILocation(line: 676, column: 33, scope: !1064)
!1477 = !DILocation(line: 676, column: 24, scope: !1064)
!1478 = !DILocation(line: 678, column: 17, scope: !1064)
!1479 = !DILocation(line: 680, column: 43, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !100, line: 680, column: 25)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !100, line: 679, column: 19)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !100, line: 678, column: 17)
!1483 = distinct !DILexicalBlock(scope: !1064, file: !100, line: 678, column: 17)
!1484 = !DILocation(line: 682, column: 25, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1486, file: !100, discriminator: 1)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !100, line: 682, column: 25)
!1487 = distinct !DILexicalBlock(scope: !1480, file: !100, line: 681, column: 23)
!1488 = !DILocation(line: 682, column: 25, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1490, file: !100, discriminator: 4)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !100, line: 682, column: 25)
!1491 = !DILocation(line: 682, column: 25, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1490, file: !100, discriminator: 3)
!1493 = !DILocation(line: 682, column: 25, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1495, file: !100, discriminator: 6)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !100, line: 682, column: 25)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !100, line: 682, column: 25)
!1497 = distinct !DILexicalBlock(scope: !1490, file: !100, line: 682, column: 25)
!1498 = !DILocation(line: 682, column: 25, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1496, file: !100, discriminator: 6)
!1500 = !DILocation(line: 682, column: 25, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1495, file: !100, discriminator: 7)
!1502 = !DILocation(line: 682, column: 25, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1496, file: !100, discriminator: 8)
!1504 = !DILocation(line: 682, column: 25, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1506, file: !100, discriminator: 11)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 682, column: 25)
!1507 = distinct !DILexicalBlock(scope: !1497, file: !100, line: 682, column: 25)
!1508 = !DILocation(line: 682, column: 25, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1507, file: !100, discriminator: 11)
!1510 = !DILocation(line: 682, column: 25, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1506, file: !100, discriminator: 12)
!1512 = !DILocation(line: 682, column: 25, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1507, file: !100, discriminator: 13)
!1514 = !DILocation(line: 682, column: 25, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1516, file: !100, discriminator: 16)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !100, line: 682, column: 25)
!1517 = distinct !DILexicalBlock(scope: !1497, file: !100, line: 682, column: 25)
!1518 = !DILocation(line: 682, column: 25, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1517, file: !100, discriminator: 16)
!1520 = !DILocation(line: 682, column: 25, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1516, file: !100, discriminator: 17)
!1522 = !DILocation(line: 682, column: 25, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1517, file: !100, discriminator: 18)
!1524 = !DILocation(line: 682, column: 25, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1497, file: !100, discriminator: 20)
!1526 = !DILocation(line: 682, column: 25, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1528, file: !100, discriminator: 22)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !100, line: 682, column: 25)
!1529 = distinct !DILexicalBlock(scope: !1486, file: !100, line: 682, column: 25)
!1530 = !DILocation(line: 682, column: 25, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1529, file: !100, discriminator: 22)
!1532 = !DILocation(line: 682, column: 25, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1528, file: !100, discriminator: 23)
!1534 = !DILocation(line: 682, column: 25, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1529, file: !100, discriminator: 24)
!1536 = !DILocation(line: 683, column: 25, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1538, file: !100, discriminator: 1)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !100, line: 683, column: 25)
!1539 = distinct !DILexicalBlock(scope: !1487, file: !100, line: 683, column: 25)
!1540 = !DILocation(line: 683, column: 25, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1539, file: !100, discriminator: 1)
!1542 = !DILocation(line: 683, column: 25, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1538, file: !100, discriminator: 2)
!1544 = !DILocation(line: 683, column: 25, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1539, file: !100, discriminator: 3)
!1546 = !DILocation(line: 684, column: 25, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1548, file: !100, discriminator: 1)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !100, line: 684, column: 25)
!1549 = distinct !DILexicalBlock(scope: !1487, file: !100, line: 684, column: 25)
!1550 = !DILocation(line: 684, column: 25, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1549, file: !100, discriminator: 1)
!1552 = !DILocation(line: 684, column: 25, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1548, file: !100, discriminator: 2)
!1554 = !DILocation(line: 684, column: 25, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1549, file: !100, discriminator: 3)
!1556 = !DILocation(line: 685, column: 38, scope: !1487)
!1557 = !DILocation(line: 685, column: 33, scope: !1487)
!1558 = !DILocation(line: 686, column: 23, scope: !1487)
!1559 = !DILocation(line: 687, column: 30, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1480, file: !100, line: 687, column: 30)
!1561 = !DILocation(line: 687, column: 30, scope: !1480)
!1562 = !DILocation(line: 689, column: 25, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1564, file: !100, discriminator: 1)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !100, line: 689, column: 25)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !100, line: 689, column: 25)
!1566 = distinct !DILexicalBlock(scope: !1560, file: !100, line: 688, column: 23)
!1567 = !DILocation(line: 689, column: 25, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1565, file: !100, discriminator: 1)
!1569 = !DILocation(line: 689, column: 25, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1564, file: !100, discriminator: 2)
!1571 = !DILocation(line: 689, column: 25, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1565, file: !100, discriminator: 3)
!1573 = !DILocation(line: 691, column: 23, scope: !1566)
!1574 = !DILocation(line: 692, column: 35, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1481, file: !100, line: 692, column: 25)
!1576 = !DILocation(line: 692, column: 30, scope: !1575)
!1577 = !DILocation(line: 692, column: 25, scope: !1481)
!1578 = !DILocation(line: 694, column: 21, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1580, file: !100, discriminator: 1)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !100, line: 694, column: 21)
!1581 = distinct !DILexicalBlock(scope: !1481, file: !100, line: 694, column: 21)
!1582 = !DILocation(line: 694, column: 21, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1580, file: !100, discriminator: 2)
!1584 = !DILocation(line: 694, column: 21, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1586, file: !100, discriminator: 4)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !100, line: 694, column: 21)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !100, line: 694, column: 21)
!1588 = distinct !DILexicalBlock(scope: !1580, file: !100, line: 694, column: 21)
!1589 = !DILocation(line: 694, column: 21, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1587, file: !100, discriminator: 4)
!1591 = !DILocation(line: 694, column: 21, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1586, file: !100, discriminator: 5)
!1593 = !DILocation(line: 694, column: 21, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1587, file: !100, discriminator: 6)
!1595 = !DILocation(line: 694, column: 21, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1597, file: !100, discriminator: 9)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !100, line: 694, column: 21)
!1598 = distinct !DILexicalBlock(scope: !1588, file: !100, line: 694, column: 21)
!1599 = !DILocation(line: 694, column: 21, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1598, file: !100, discriminator: 9)
!1601 = !DILocation(line: 694, column: 21, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1597, file: !100, discriminator: 10)
!1603 = !DILocation(line: 694, column: 21, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1598, file: !100, discriminator: 11)
!1605 = !DILocation(line: 694, column: 21, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1588, file: !100, discriminator: 13)
!1607 = !DILocation(line: 695, column: 21, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1609, file: !100, discriminator: 1)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !100, line: 695, column: 21)
!1610 = distinct !DILexicalBlock(scope: !1481, file: !100, line: 695, column: 21)
!1611 = !DILocation(line: 695, column: 21, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1610, file: !100, discriminator: 1)
!1613 = !DILocation(line: 695, column: 21, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1609, file: !100, discriminator: 2)
!1615 = !DILocation(line: 695, column: 21, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1610, file: !100, discriminator: 3)
!1617 = !DILocation(line: 696, column: 25, scope: !1481)
!1618 = !DILocation(line: 678, column: 17, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1482, file: !100, discriminator: 1)
!1620 = distinct !{!1620, !1621, !1622}
!1621 = !DILocation(line: 678, column: 17, scope: !1483)
!1622 = !DILocation(line: 697, column: 19, scope: !1483)
!1623 = !DILocation(line: 704, column: 34, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 704, column: 11)
!1625 = !DILocation(line: 706, column: 14, scope: !1624)
!1626 = !DILocation(line: 707, column: 14, scope: !1624)
!1627 = !DILocation(line: 707, column: 35, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1624, file: !100, discriminator: 1)
!1629 = !DILocation(line: 707, column: 17, scope: !1628)
!1630 = !DILocation(line: 707, column: 53, scope: !1628)
!1631 = !DILocation(line: 707, column: 47, scope: !1628)
!1632 = !DILocation(line: 707, column: 65, scope: !1628)
!1633 = !DILocation(line: 708, column: 15, scope: !1628)
!1634 = !DILocation(line: 708, column: 11, scope: !1624)
!1635 = !DILocation(line: 704, column: 11, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1024, file: !100, discriminator: 2)
!1637 = !DILocation(line: 712, column: 7, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1639, file: !100, discriminator: 1)
!1639 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 712, column: 7)
!1640 = !DILocation(line: 712, column: 7, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1642, file: !100, discriminator: 4)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !100, line: 712, column: 7)
!1643 = !DILocation(line: 712, column: 7, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1642, file: !100, discriminator: 3)
!1645 = !DILocation(line: 712, column: 7, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1647, file: !100, discriminator: 6)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !100, line: 712, column: 7)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !100, line: 712, column: 7)
!1649 = distinct !DILexicalBlock(scope: !1642, file: !100, line: 712, column: 7)
!1650 = !DILocation(line: 712, column: 7, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1648, file: !100, discriminator: 6)
!1652 = !DILocation(line: 712, column: 7, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1647, file: !100, discriminator: 7)
!1654 = !DILocation(line: 712, column: 7, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1648, file: !100, discriminator: 8)
!1656 = !DILocation(line: 712, column: 7, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1658, file: !100, discriminator: 11)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !100, line: 712, column: 7)
!1659 = distinct !DILexicalBlock(scope: !1649, file: !100, line: 712, column: 7)
!1660 = !DILocation(line: 712, column: 7, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1659, file: !100, discriminator: 11)
!1662 = !DILocation(line: 712, column: 7, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1658, file: !100, discriminator: 12)
!1664 = !DILocation(line: 712, column: 7, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1659, file: !100, discriminator: 13)
!1666 = !DILocation(line: 712, column: 7, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1668, file: !100, discriminator: 16)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !100, line: 712, column: 7)
!1669 = distinct !DILexicalBlock(scope: !1649, file: !100, line: 712, column: 7)
!1670 = !DILocation(line: 712, column: 7, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1669, file: !100, discriminator: 16)
!1672 = !DILocation(line: 712, column: 7, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1668, file: !100, discriminator: 17)
!1674 = !DILocation(line: 712, column: 7, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1669, file: !100, discriminator: 18)
!1676 = !DILocation(line: 712, column: 7, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1649, file: !100, discriminator: 20)
!1678 = !DILocation(line: 712, column: 7, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1680, file: !100, discriminator: 22)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !100, line: 712, column: 7)
!1681 = distinct !DILexicalBlock(scope: !1639, file: !100, line: 712, column: 7)
!1682 = !DILocation(line: 712, column: 7, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1681, file: !100, discriminator: 22)
!1684 = !DILocation(line: 712, column: 7, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1680, file: !100, discriminator: 23)
!1686 = !DILocation(line: 712, column: 7, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1681, file: !100, discriminator: 24)
!1688 = !DILocation(line: 715, column: 7, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1690, file: !100, discriminator: 1)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !100, line: 715, column: 7)
!1691 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 715, column: 7)
!1692 = !DILocation(line: 715, column: 7, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1690, file: !100, discriminator: 2)
!1694 = !DILocation(line: 715, column: 7, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1696, file: !100, discriminator: 4)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !100, line: 715, column: 7)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !100, line: 715, column: 7)
!1698 = distinct !DILexicalBlock(scope: !1690, file: !100, line: 715, column: 7)
!1699 = !DILocation(line: 715, column: 7, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1697, file: !100, discriminator: 4)
!1701 = !DILocation(line: 715, column: 7, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1696, file: !100, discriminator: 5)
!1703 = !DILocation(line: 715, column: 7, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1697, file: !100, discriminator: 6)
!1705 = !DILocation(line: 715, column: 7, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1707, file: !100, discriminator: 9)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !100, line: 715, column: 7)
!1708 = distinct !DILexicalBlock(scope: !1698, file: !100, line: 715, column: 7)
!1709 = !DILocation(line: 715, column: 7, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1708, file: !100, discriminator: 9)
!1711 = !DILocation(line: 715, column: 7, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1707, file: !100, discriminator: 10)
!1713 = !DILocation(line: 715, column: 7, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1708, file: !100, discriminator: 11)
!1715 = !DILocation(line: 715, column: 7, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1698, file: !100, discriminator: 13)
!1717 = !DILocation(line: 716, column: 7, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !100, discriminator: 1)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !100, line: 716, column: 7)
!1720 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 716, column: 7)
!1721 = !DILocation(line: 716, column: 7, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1720, file: !100, discriminator: 1)
!1723 = !DILocation(line: 716, column: 7, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1719, file: !100, discriminator: 2)
!1725 = !DILocation(line: 716, column: 7, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1720, file: !100, discriminator: 3)
!1727 = !DILocation(line: 718, column: 13, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 718, column: 11)
!1729 = !DILocation(line: 718, column: 11, scope: !1024)
!1730 = !DILocation(line: 720, column: 5, scope: !1025)
!1731 = !DILocation(line: 392, column: 75, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1025, file: !100, discriminator: 5)
!1733 = !DILocation(line: 392, column: 3, scope: !1732)
!1734 = distinct !{!1734, !1735, !1736}
!1735 = !DILocation(line: 392, column: 3, scope: !1026)
!1736 = !DILocation(line: 720, column: 5, scope: !1026)
!1737 = !DILocation(line: 722, column: 11, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !997, file: !100, line: 722, column: 7)
!1739 = !DILocation(line: 722, column: 16, scope: !1738)
!1740 = !DILocation(line: 730, column: 51, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !997, file: !100, line: 730, column: 7)
!1742 = !DILocation(line: 731, column: 10, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1741, file: !100, discriminator: 1)
!1744 = !DILocation(line: 733, column: 11, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !100, line: 733, column: 11)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !100, line: 732, column: 5)
!1747 = !DILocation(line: 733, column: 11, scope: !1746)
!1748 = !DILocation(line: 734, column: 16, scope: !1745)
!1749 = !DILocation(line: 734, column: 9, scope: !1745)
!1750 = !DILocation(line: 738, column: 18, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1745, file: !100, line: 738, column: 16)
!1752 = !DILocation(line: 738, column: 32, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1751, file: !100, discriminator: 1)
!1754 = !DILocation(line: 738, column: 29, scope: !1751)
!1755 = !DILocation(line: 747, column: 7, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !997, file: !100, line: 747, column: 7)
!1757 = !DILocation(line: 747, column: 20, scope: !1756)
!1758 = !DILocation(line: 748, column: 12, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1760, file: !100, discriminator: 1)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !100, line: 748, column: 5)
!1761 = distinct !DILexicalBlock(scope: !1756, file: !100, line: 748, column: 5)
!1762 = !DILocation(line: 748, column: 5, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1761, file: !100, discriminator: 1)
!1764 = !DILocation(line: 749, column: 7, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1766, file: !100, discriminator: 1)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !100, line: 749, column: 7)
!1767 = distinct !DILexicalBlock(scope: !1760, file: !100, line: 749, column: 7)
!1768 = !DILocation(line: 749, column: 7, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1767, file: !100, discriminator: 1)
!1770 = !DILocation(line: 749, column: 7, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1766, file: !100, discriminator: 2)
!1772 = !DILocation(line: 749, column: 7, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1767, file: !100, discriminator: 3)
!1774 = !DILocation(line: 748, column: 39, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1760, file: !100, discriminator: 2)
!1776 = distinct !{!1776, !1777, !1778}
!1777 = !DILocation(line: 748, column: 5, scope: !1761)
!1778 = !DILocation(line: 749, column: 7, scope: !1761)
!1779 = !DILocation(line: 751, column: 11, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !997, file: !100, line: 751, column: 7)
!1781 = !DILocation(line: 751, column: 7, scope: !997)
!1782 = !DILocation(line: 752, column: 5, scope: !1780)
!1783 = !DILocation(line: 752, column: 17, scope: !1780)
!1784 = !DILocation(line: 758, column: 21, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !997, file: !100, line: 758, column: 7)
!1786 = !DILocation(line: 758, column: 54, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1785, file: !100, discriminator: 1)
!1788 = !DILocation(line: 758, column: 51, scope: !1785)
!1789 = !DILocation(line: 762, column: 42, scope: !997)
!1790 = !DILocation(line: 760, column: 10, scope: !997)
!1791 = !DILocation(line: 760, column: 3, scope: !997)
!1792 = !DILocation(line: 764, column: 1, scope: !997)
!1793 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1794, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!6, !6, !58}
!1796 = !{!1797, !1798, !1799, !1800}
!1797 = !DILocalVariable(name: "msgid", arg: 1, scope: !1793, file: !100, line: 199, type: !6)
!1798 = !DILocalVariable(name: "s", arg: 2, scope: !1793, file: !100, line: 199, type: !58)
!1799 = !DILocalVariable(name: "translation", scope: !1793, file: !100, line: 201, type: !6)
!1800 = !DILocalVariable(name: "locale_code", scope: !1793, file: !100, line: 202, type: !6)
!1801 = !DILocation(line: 199, column: 28, scope: !1793)
!1802 = !DILocation(line: 199, column: 54, scope: !1793)
!1803 = !DILocation(line: 201, column: 29, scope: !1793)
!1804 = !DILocation(line: 201, column: 15, scope: !1793)
!1805 = !DILocation(line: 204, column: 19, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1793, file: !100, line: 204, column: 7)
!1807 = !DILocation(line: 204, column: 7, scope: !1793)
!1808 = !DILocation(line: 225, column: 17, scope: !1793)
!1809 = !DILocation(line: 202, column: 15, scope: !1793)
!1810 = !DILocalVariable(name: "s2", arg: 2, scope: !1811, file: !1812, line: 160, type: !6)
!1811 = distinct !DISubprogram(name: "strcaseeq0", scope: !1812, file: !1812, line: 160, type: !1813, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1815)
!1812 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1815 = !{!1816, !1810, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825}
!1816 = !DILocalVariable(name: "s1", arg: 1, scope: !1811, file: !1812, line: 160, type: !6)
!1817 = !DILocalVariable(name: "s20", arg: 3, scope: !1811, file: !1812, line: 160, type: !8)
!1818 = !DILocalVariable(name: "s21", arg: 4, scope: !1811, file: !1812, line: 160, type: !8)
!1819 = !DILocalVariable(name: "s22", arg: 5, scope: !1811, file: !1812, line: 160, type: !8)
!1820 = !DILocalVariable(name: "s23", arg: 6, scope: !1811, file: !1812, line: 160, type: !8)
!1821 = !DILocalVariable(name: "s24", arg: 7, scope: !1811, file: !1812, line: 160, type: !8)
!1822 = !DILocalVariable(name: "s25", arg: 8, scope: !1811, file: !1812, line: 160, type: !8)
!1823 = !DILocalVariable(name: "s26", arg: 9, scope: !1811, file: !1812, line: 160, type: !8)
!1824 = !DILocalVariable(name: "s27", arg: 10, scope: !1811, file: !1812, line: 160, type: !8)
!1825 = !DILocalVariable(name: "s28", arg: 11, scope: !1811, file: !1812, line: 160, type: !8)
!1826 = !DILocation(line: 160, column: 41, scope: !1811, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 226, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1793, file: !100, line: 226, column: 7)
!1829 = !DILocation(line: 160, column: 120, scope: !1811, inlinedAt: !1827)
!1830 = !DILocation(line: 160, column: 130, scope: !1811, inlinedAt: !1827)
!1831 = !DILocation(line: 162, column: 7, scope: !1832, inlinedAt: !1827)
!1832 = !DILexicalBlockFile(scope: !1833, file: !1812, discriminator: 1)
!1833 = distinct !DILexicalBlock(scope: !1811, file: !1812, line: 162, column: 7)
!1834 = !DILocalVariable(name: "s2", arg: 2, scope: !1835, file: !1812, line: 146, type: !6)
!1835 = distinct !DISubprogram(name: "strcaseeq1", scope: !1812, file: !1812, line: 146, type: !1836, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1838)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1838 = !{!1839, !1834, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847}
!1839 = !DILocalVariable(name: "s1", arg: 1, scope: !1835, file: !1812, line: 146, type: !6)
!1840 = !DILocalVariable(name: "s21", arg: 3, scope: !1835, file: !1812, line: 146, type: !8)
!1841 = !DILocalVariable(name: "s22", arg: 4, scope: !1835, file: !1812, line: 146, type: !8)
!1842 = !DILocalVariable(name: "s23", arg: 5, scope: !1835, file: !1812, line: 146, type: !8)
!1843 = !DILocalVariable(name: "s24", arg: 6, scope: !1835, file: !1812, line: 146, type: !8)
!1844 = !DILocalVariable(name: "s25", arg: 7, scope: !1835, file: !1812, line: 146, type: !8)
!1845 = !DILocalVariable(name: "s26", arg: 8, scope: !1835, file: !1812, line: 146, type: !8)
!1846 = !DILocalVariable(name: "s27", arg: 9, scope: !1835, file: !1812, line: 146, type: !8)
!1847 = !DILocalVariable(name: "s28", arg: 10, scope: !1835, file: !1812, line: 146, type: !8)
!1848 = !DILocation(line: 146, column: 41, scope: !1835, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 167, column: 16, scope: !1850, inlinedAt: !1827)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !1812, line: 164, column: 11)
!1851 = distinct !DILexicalBlock(scope: !1833, file: !1812, line: 163, column: 5)
!1852 = !DILocation(line: 146, column: 110, scope: !1835, inlinedAt: !1849)
!1853 = !DILocation(line: 146, column: 120, scope: !1835, inlinedAt: !1849)
!1854 = !DILocation(line: 148, column: 7, scope: !1855, inlinedAt: !1849)
!1855 = !DILexicalBlockFile(scope: !1856, file: !1812, discriminator: 1)
!1856 = distinct !DILexicalBlock(scope: !1835, file: !1812, line: 148, column: 7)
!1857 = !DILocalVariable(name: "s2", arg: 2, scope: !1858, file: !1812, line: 132, type: !6)
!1858 = distinct !DISubprogram(name: "strcaseeq2", scope: !1812, file: !1812, line: 132, type: !1859, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1861)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1861 = !{!1862, !1857, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1862 = !DILocalVariable(name: "s1", arg: 1, scope: !1858, file: !1812, line: 132, type: !6)
!1863 = !DILocalVariable(name: "s22", arg: 3, scope: !1858, file: !1812, line: 132, type: !8)
!1864 = !DILocalVariable(name: "s23", arg: 4, scope: !1858, file: !1812, line: 132, type: !8)
!1865 = !DILocalVariable(name: "s24", arg: 5, scope: !1858, file: !1812, line: 132, type: !8)
!1866 = !DILocalVariable(name: "s25", arg: 6, scope: !1858, file: !1812, line: 132, type: !8)
!1867 = !DILocalVariable(name: "s26", arg: 7, scope: !1858, file: !1812, line: 132, type: !8)
!1868 = !DILocalVariable(name: "s27", arg: 8, scope: !1858, file: !1812, line: 132, type: !8)
!1869 = !DILocalVariable(name: "s28", arg: 9, scope: !1858, file: !1812, line: 132, type: !8)
!1870 = !DILocation(line: 132, column: 41, scope: !1858, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 153, column: 16, scope: !1872, inlinedAt: !1849)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !1812, line: 150, column: 11)
!1873 = distinct !DILexicalBlock(scope: !1856, file: !1812, line: 149, column: 5)
!1874 = !DILocation(line: 132, column: 100, scope: !1858, inlinedAt: !1871)
!1875 = !DILocation(line: 132, column: 110, scope: !1858, inlinedAt: !1871)
!1876 = !DILocation(line: 134, column: 7, scope: !1877, inlinedAt: !1871)
!1877 = !DILexicalBlockFile(scope: !1878, file: !1812, discriminator: 1)
!1878 = distinct !DILexicalBlock(scope: !1858, file: !1812, line: 134, column: 7)
!1879 = !DILocalVariable(name: "s2", arg: 2, scope: !1880, file: !1812, line: 118, type: !6)
!1880 = distinct !DISubprogram(name: "strcaseeq3", scope: !1812, file: !1812, line: 118, type: !1881, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1883 = !{!1884, !1879, !1885, !1886, !1887, !1888, !1889, !1890}
!1884 = !DILocalVariable(name: "s1", arg: 1, scope: !1880, file: !1812, line: 118, type: !6)
!1885 = !DILocalVariable(name: "s23", arg: 3, scope: !1880, file: !1812, line: 118, type: !8)
!1886 = !DILocalVariable(name: "s24", arg: 4, scope: !1880, file: !1812, line: 118, type: !8)
!1887 = !DILocalVariable(name: "s25", arg: 5, scope: !1880, file: !1812, line: 118, type: !8)
!1888 = !DILocalVariable(name: "s26", arg: 6, scope: !1880, file: !1812, line: 118, type: !8)
!1889 = !DILocalVariable(name: "s27", arg: 7, scope: !1880, file: !1812, line: 118, type: !8)
!1890 = !DILocalVariable(name: "s28", arg: 8, scope: !1880, file: !1812, line: 118, type: !8)
!1891 = !DILocation(line: 118, column: 41, scope: !1880, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 139, column: 16, scope: !1893, inlinedAt: !1871)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !1812, line: 136, column: 11)
!1894 = distinct !DILexicalBlock(scope: !1878, file: !1812, line: 135, column: 5)
!1895 = !DILocation(line: 118, column: 90, scope: !1880, inlinedAt: !1892)
!1896 = !DILocation(line: 118, column: 100, scope: !1880, inlinedAt: !1892)
!1897 = !DILocation(line: 120, column: 7, scope: !1898, inlinedAt: !1892)
!1898 = !DILexicalBlockFile(scope: !1899, file: !1812, discriminator: 2)
!1899 = distinct !DILexicalBlock(scope: !1880, file: !1812, line: 120, column: 7)
!1900 = !DILocation(line: 120, column: 7, scope: !1901, inlinedAt: !1892)
!1901 = !DILexicalBlockFile(scope: !1880, file: !1812, discriminator: 2)
!1902 = !DILocalVariable(name: "s2", arg: 2, scope: !1903, file: !1812, line: 104, type: !6)
!1903 = distinct !DISubprogram(name: "strcaseeq4", scope: !1812, file: !1812, line: 104, type: !1904, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1906)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1906 = !{!1907, !1902, !1908, !1909, !1910, !1911, !1912}
!1907 = !DILocalVariable(name: "s1", arg: 1, scope: !1903, file: !1812, line: 104, type: !6)
!1908 = !DILocalVariable(name: "s24", arg: 3, scope: !1903, file: !1812, line: 104, type: !8)
!1909 = !DILocalVariable(name: "s25", arg: 4, scope: !1903, file: !1812, line: 104, type: !8)
!1910 = !DILocalVariable(name: "s26", arg: 5, scope: !1903, file: !1812, line: 104, type: !8)
!1911 = !DILocalVariable(name: "s27", arg: 6, scope: !1903, file: !1812, line: 104, type: !8)
!1912 = !DILocalVariable(name: "s28", arg: 7, scope: !1903, file: !1812, line: 104, type: !8)
!1913 = !DILocation(line: 104, column: 41, scope: !1903, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 125, column: 16, scope: !1915, inlinedAt: !1892)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !1812, line: 122, column: 11)
!1916 = distinct !DILexicalBlock(scope: !1899, file: !1812, line: 121, column: 5)
!1917 = !DILocation(line: 104, column: 80, scope: !1903, inlinedAt: !1914)
!1918 = !DILocation(line: 104, column: 90, scope: !1903, inlinedAt: !1914)
!1919 = !DILocation(line: 106, column: 7, scope: !1920, inlinedAt: !1914)
!1920 = !DILexicalBlockFile(scope: !1921, file: !1812, discriminator: 2)
!1921 = distinct !DILexicalBlock(scope: !1903, file: !1812, line: 106, column: 7)
!1922 = !DILocation(line: 106, column: 7, scope: !1923, inlinedAt: !1914)
!1923 = !DILexicalBlockFile(scope: !1903, file: !1812, discriminator: 2)
!1924 = !DILocalVariable(name: "s2", arg: 2, scope: !1925, file: !1812, line: 90, type: !6)
!1925 = distinct !DISubprogram(name: "strcaseeq5", scope: !1812, file: !1812, line: 90, type: !1926, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!25, !6, !6, !8, !8, !8, !8}
!1928 = !{!1929, !1924, !1930, !1931, !1932, !1933}
!1929 = !DILocalVariable(name: "s1", arg: 1, scope: !1925, file: !1812, line: 90, type: !6)
!1930 = !DILocalVariable(name: "s25", arg: 3, scope: !1925, file: !1812, line: 90, type: !8)
!1931 = !DILocalVariable(name: "s26", arg: 4, scope: !1925, file: !1812, line: 90, type: !8)
!1932 = !DILocalVariable(name: "s27", arg: 5, scope: !1925, file: !1812, line: 90, type: !8)
!1933 = !DILocalVariable(name: "s28", arg: 6, scope: !1925, file: !1812, line: 90, type: !8)
!1934 = !DILocation(line: 90, column: 41, scope: !1925, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 111, column: 16, scope: !1936, inlinedAt: !1914)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !1812, line: 108, column: 11)
!1937 = distinct !DILexicalBlock(scope: !1921, file: !1812, line: 107, column: 5)
!1938 = !DILocation(line: 90, column: 70, scope: !1925, inlinedAt: !1935)
!1939 = !DILocation(line: 90, column: 80, scope: !1925, inlinedAt: !1935)
!1940 = !DILocation(line: 92, column: 7, scope: !1941, inlinedAt: !1935)
!1941 = !DILexicalBlockFile(scope: !1942, file: !1812, discriminator: 2)
!1942 = distinct !DILexicalBlock(scope: !1925, file: !1812, line: 92, column: 7)
!1943 = !DILocation(line: 92, column: 7, scope: !1944, inlinedAt: !1935)
!1944 = !DILexicalBlockFile(scope: !1925, file: !1812, discriminator: 2)
!1945 = !DILocation(line: 227, column: 12, scope: !1828)
!1946 = !DILocation(line: 227, column: 21, scope: !1828)
!1947 = !DILocation(line: 227, column: 5, scope: !1828)
!1948 = !DILocation(line: 146, column: 41, scope: !1835, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 167, column: 16, scope: !1850, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 228, column: 7, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1793, file: !100, line: 228, column: 7)
!1952 = !DILocation(line: 146, column: 110, scope: !1835, inlinedAt: !1949)
!1953 = !DILocation(line: 146, column: 120, scope: !1835, inlinedAt: !1949)
!1954 = !DILocation(line: 148, column: 7, scope: !1855, inlinedAt: !1949)
!1955 = !DILocation(line: 132, column: 41, scope: !1858, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 153, column: 16, scope: !1872, inlinedAt: !1949)
!1957 = !DILocation(line: 132, column: 100, scope: !1858, inlinedAt: !1956)
!1958 = !DILocation(line: 132, column: 110, scope: !1858, inlinedAt: !1956)
!1959 = !DILocation(line: 134, column: 7, scope: !1960, inlinedAt: !1956)
!1960 = !DILexicalBlockFile(scope: !1878, file: !1812, discriminator: 2)
!1961 = !DILocation(line: 134, column: 7, scope: !1962, inlinedAt: !1956)
!1962 = !DILexicalBlockFile(scope: !1858, file: !1812, discriminator: 2)
!1963 = !DILocation(line: 118, column: 41, scope: !1880, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 139, column: 16, scope: !1893, inlinedAt: !1956)
!1965 = !DILocation(line: 118, column: 90, scope: !1880, inlinedAt: !1964)
!1966 = !DILocation(line: 118, column: 100, scope: !1880, inlinedAt: !1964)
!1967 = !DILocation(line: 120, column: 7, scope: !1898, inlinedAt: !1964)
!1968 = !DILocation(line: 120, column: 7, scope: !1901, inlinedAt: !1964)
!1969 = !DILocation(line: 104, column: 41, scope: !1903, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 125, column: 16, scope: !1915, inlinedAt: !1964)
!1971 = !DILocation(line: 104, column: 80, scope: !1903, inlinedAt: !1970)
!1972 = !DILocation(line: 104, column: 90, scope: !1903, inlinedAt: !1970)
!1973 = !DILocation(line: 106, column: 7, scope: !1920, inlinedAt: !1970)
!1974 = !DILocation(line: 106, column: 7, scope: !1923, inlinedAt: !1970)
!1975 = !DILocation(line: 90, column: 41, scope: !1925, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 111, column: 16, scope: !1936, inlinedAt: !1970)
!1977 = !DILocation(line: 90, column: 70, scope: !1925, inlinedAt: !1976)
!1978 = !DILocation(line: 90, column: 80, scope: !1925, inlinedAt: !1976)
!1979 = !DILocation(line: 92, column: 7, scope: !1941, inlinedAt: !1976)
!1980 = !DILocation(line: 92, column: 7, scope: !1944, inlinedAt: !1976)
!1981 = !DILocalVariable(name: "s2", arg: 2, scope: !1982, file: !1812, line: 76, type: !6)
!1982 = distinct !DISubprogram(name: "strcaseeq6", scope: !1812, file: !1812, line: 76, type: !1983, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!25, !6, !6, !8, !8, !8}
!1985 = !{!1986, !1981, !1987, !1988, !1989}
!1986 = !DILocalVariable(name: "s1", arg: 1, scope: !1982, file: !1812, line: 76, type: !6)
!1987 = !DILocalVariable(name: "s26", arg: 3, scope: !1982, file: !1812, line: 76, type: !8)
!1988 = !DILocalVariable(name: "s27", arg: 4, scope: !1982, file: !1812, line: 76, type: !8)
!1989 = !DILocalVariable(name: "s28", arg: 5, scope: !1982, file: !1812, line: 76, type: !8)
!1990 = !DILocation(line: 76, column: 41, scope: !1982, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 97, column: 16, scope: !1992, inlinedAt: !1976)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !1812, line: 94, column: 11)
!1993 = distinct !DILexicalBlock(scope: !1942, file: !1812, line: 93, column: 5)
!1994 = !DILocation(line: 76, column: 60, scope: !1982, inlinedAt: !1991)
!1995 = !DILocation(line: 76, column: 70, scope: !1982, inlinedAt: !1991)
!1996 = !DILocation(line: 78, column: 7, scope: !1997, inlinedAt: !1991)
!1997 = !DILexicalBlockFile(scope: !1998, file: !1812, discriminator: 2)
!1998 = distinct !DILexicalBlock(scope: !1982, file: !1812, line: 78, column: 7)
!1999 = !DILocation(line: 78, column: 7, scope: !2000, inlinedAt: !1991)
!2000 = !DILexicalBlockFile(scope: !1982, file: !1812, discriminator: 2)
!2001 = !DILocalVariable(name: "s2", arg: 2, scope: !2002, file: !1812, line: 62, type: !6)
!2002 = distinct !DISubprogram(name: "strcaseeq7", scope: !1812, file: !1812, line: 62, type: !2003, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!25, !6, !6, !8, !8}
!2005 = !{!2006, !2001, !2007, !2008}
!2006 = !DILocalVariable(name: "s1", arg: 1, scope: !2002, file: !1812, line: 62, type: !6)
!2007 = !DILocalVariable(name: "s27", arg: 3, scope: !2002, file: !1812, line: 62, type: !8)
!2008 = !DILocalVariable(name: "s28", arg: 4, scope: !2002, file: !1812, line: 62, type: !8)
!2009 = !DILocation(line: 62, column: 41, scope: !2002, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 83, column: 16, scope: !2011, inlinedAt: !1991)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !1812, line: 80, column: 11)
!2012 = distinct !DILexicalBlock(scope: !1998, file: !1812, line: 79, column: 5)
!2013 = !DILocation(line: 62, column: 50, scope: !2002, inlinedAt: !2010)
!2014 = !DILocation(line: 62, column: 60, scope: !2002, inlinedAt: !2010)
!2015 = !DILocation(line: 64, column: 7, scope: !2016, inlinedAt: !2010)
!2016 = !DILexicalBlockFile(scope: !2017, file: !1812, discriminator: 2)
!2017 = distinct !DILexicalBlock(scope: !2002, file: !1812, line: 64, column: 7)
!2018 = !DILocation(line: 228, column: 7, scope: !1793)
!2019 = !DILocation(line: 229, column: 12, scope: !1951)
!2020 = !DILocation(line: 229, column: 21, scope: !1951)
!2021 = !DILocation(line: 229, column: 5, scope: !1951)
!2022 = !DILocation(line: 231, column: 13, scope: !1793)
!2023 = !DILocation(line: 231, column: 11, scope: !1793)
!2024 = !DILocation(line: 231, column: 3, scope: !1793)
!2025 = !DILocation(line: 232, column: 1, scope: !1793)
!2026 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !2027, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!50, !6, !94, !865}
!2029 = !{!2030, !2031, !2032}
!2030 = !DILocalVariable(name: "arg", arg: 1, scope: !2026, file: !100, line: 791, type: !6)
!2031 = !DILocalVariable(name: "argsize", arg: 2, scope: !2026, file: !100, line: 791, type: !94)
!2032 = !DILocalVariable(name: "o", arg: 3, scope: !2026, file: !100, line: 792, type: !865)
!2033 = !DILocation(line: 791, column: 29, scope: !2026)
!2034 = !DILocation(line: 791, column: 41, scope: !2026)
!2035 = !DILocation(line: 792, column: 47, scope: !2026)
!2036 = !DILocalVariable(name: "arg", arg: 1, scope: !2037, file: !100, line: 804, type: !6)
!2037 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !2038, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!50, !6, !94, !552, !865}
!2040 = !{!2036, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048}
!2041 = !DILocalVariable(name: "argsize", arg: 2, scope: !2037, file: !100, line: 804, type: !94)
!2042 = !DILocalVariable(name: "size", arg: 3, scope: !2037, file: !100, line: 804, type: !552)
!2043 = !DILocalVariable(name: "o", arg: 4, scope: !2037, file: !100, line: 805, type: !865)
!2044 = !DILocalVariable(name: "p", scope: !2037, file: !100, line: 807, type: !865)
!2045 = !DILocalVariable(name: "e", scope: !2037, file: !100, line: 808, type: !25)
!2046 = !DILocalVariable(name: "flags", scope: !2037, file: !100, line: 810, type: !25)
!2047 = !DILocalVariable(name: "bufsize", scope: !2037, file: !100, line: 811, type: !94)
!2048 = !DILocalVariable(name: "buf", scope: !2037, file: !100, line: 815, type: !50)
!2049 = !DILocation(line: 804, column: 33, scope: !2037, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 794, column: 10, scope: !2026)
!2051 = !DILocation(line: 804, column: 45, scope: !2037, inlinedAt: !2050)
!2052 = !DILocation(line: 804, column: 62, scope: !2037, inlinedAt: !2050)
!2053 = !DILocation(line: 805, column: 51, scope: !2037, inlinedAt: !2050)
!2054 = !DILocation(line: 807, column: 37, scope: !2037, inlinedAt: !2050)
!2055 = !DILocation(line: 807, column: 33, scope: !2037, inlinedAt: !2050)
!2056 = !DILocation(line: 808, column: 11, scope: !2037, inlinedAt: !2050)
!2057 = !DILocation(line: 808, column: 7, scope: !2037, inlinedAt: !2050)
!2058 = !DILocation(line: 810, column: 18, scope: !2037, inlinedAt: !2050)
!2059 = !DILocation(line: 810, column: 24, scope: !2037, inlinedAt: !2050)
!2060 = !DILocation(line: 810, column: 7, scope: !2037, inlinedAt: !2050)
!2061 = !DILocation(line: 811, column: 69, scope: !2037, inlinedAt: !2050)
!2062 = !DILocation(line: 812, column: 53, scope: !2037, inlinedAt: !2050)
!2063 = !DILocation(line: 813, column: 49, scope: !2037, inlinedAt: !2050)
!2064 = !DILocation(line: 814, column: 49, scope: !2037, inlinedAt: !2050)
!2065 = !DILocation(line: 811, column: 20, scope: !2037, inlinedAt: !2050)
!2066 = !DILocation(line: 814, column: 62, scope: !2037, inlinedAt: !2050)
!2067 = !DILocation(line: 811, column: 10, scope: !2037, inlinedAt: !2050)
!2068 = !DILocalVariable(name: "n", arg: 1, scope: !2069, file: !548, line: 220, type: !94)
!2069 = distinct !DISubprogram(name: "xcharalloc", scope: !548, file: !548, line: 220, type: !2070, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2072)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!50, !94}
!2072 = !{!2068}
!2073 = !DILocation(line: 220, column: 20, scope: !2069, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 815, column: 15, scope: !2037, inlinedAt: !2050)
!2075 = !DILocation(line: 222, column: 10, scope: !2069, inlinedAt: !2074)
!2076 = !DILocation(line: 815, column: 9, scope: !2037, inlinedAt: !2050)
!2077 = !DILocation(line: 816, column: 60, scope: !2037, inlinedAt: !2050)
!2078 = !DILocation(line: 818, column: 32, scope: !2037, inlinedAt: !2050)
!2079 = !DILocation(line: 818, column: 47, scope: !2037, inlinedAt: !2050)
!2080 = !DILocation(line: 816, column: 3, scope: !2037, inlinedAt: !2050)
!2081 = !DILocation(line: 819, column: 9, scope: !2037, inlinedAt: !2050)
!2082 = !DILocation(line: 794, column: 3, scope: !2026)
!2083 = !DILocation(line: 804, column: 33, scope: !2037)
!2084 = !DILocation(line: 804, column: 45, scope: !2037)
!2085 = !DILocation(line: 804, column: 62, scope: !2037)
!2086 = !DILocation(line: 805, column: 51, scope: !2037)
!2087 = !DILocation(line: 807, column: 37, scope: !2037)
!2088 = !DILocation(line: 807, column: 33, scope: !2037)
!2089 = !DILocation(line: 808, column: 11, scope: !2037)
!2090 = !DILocation(line: 808, column: 7, scope: !2037)
!2091 = !DILocation(line: 810, column: 18, scope: !2037)
!2092 = !DILocation(line: 810, column: 27, scope: !2037)
!2093 = !DILocation(line: 810, column: 24, scope: !2037)
!2094 = !DILocation(line: 810, column: 7, scope: !2037)
!2095 = !DILocation(line: 811, column: 69, scope: !2037)
!2096 = !DILocation(line: 812, column: 53, scope: !2037)
!2097 = !DILocation(line: 813, column: 49, scope: !2037)
!2098 = !DILocation(line: 814, column: 49, scope: !2037)
!2099 = !DILocation(line: 811, column: 20, scope: !2037)
!2100 = !DILocation(line: 814, column: 62, scope: !2037)
!2101 = !DILocation(line: 811, column: 10, scope: !2037)
!2102 = !DILocation(line: 220, column: 20, scope: !2069, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 815, column: 15, scope: !2037)
!2104 = !DILocation(line: 222, column: 10, scope: !2069, inlinedAt: !2103)
!2105 = !DILocation(line: 815, column: 9, scope: !2037)
!2106 = !DILocation(line: 816, column: 60, scope: !2037)
!2107 = !DILocation(line: 818, column: 32, scope: !2037)
!2108 = !DILocation(line: 818, column: 47, scope: !2037)
!2109 = !DILocation(line: 816, column: 3, scope: !2037)
!2110 = !DILocation(line: 819, column: 9, scope: !2037)
!2111 = !DILocation(line: 820, column: 7, scope: !2037)
!2112 = !DILocation(line: 821, column: 11, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2037, file: !100, line: 820, column: 7)
!2114 = !{!2115, !2115, i64 0}
!2115 = !{!"long", !599, i64 0}
!2116 = !DILocation(line: 821, column: 5, scope: !2113)
!2117 = !DILocation(line: 822, column: 3, scope: !2037)
!2118 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !704, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2119)
!2119 = !{!2120, !2121}
!2120 = !DILocalVariable(name: "sv", scope: !2118, file: !100, line: 842, type: !127)
!2121 = !DILocalVariable(name: "i", scope: !2118, file: !100, line: 843, type: !25)
!2122 = !DILocation(line: 842, column: 24, scope: !2118)
!2123 = !DILocation(line: 842, column: 19, scope: !2118)
!2124 = !DILocation(line: 843, column: 7, scope: !2118)
!2125 = !DILocation(line: 844, column: 19, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2127, file: !100, discriminator: 1)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !100, line: 844, column: 3)
!2128 = distinct !DILexicalBlock(scope: !2118, file: !100, line: 844, column: 3)
!2129 = !DILocation(line: 844, column: 17, scope: !2126)
!2130 = !DILocation(line: 844, column: 3, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2128, file: !100, discriminator: 1)
!2132 = !DILocation(line: 845, column: 17, scope: !2127)
!2133 = !{!2134, !598, i64 8}
!2134 = !{!"slotvec", !2115, i64 0, !598, i64 8}
!2135 = !DILocation(line: 845, column: 5, scope: !2127)
!2136 = !DILocation(line: 844, column: 28, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2127, file: !100, discriminator: 2)
!2138 = distinct !{!2138, !2139, !2140}
!2139 = !DILocation(line: 844, column: 3, scope: !2128)
!2140 = !DILocation(line: 845, column: 20, scope: !2128)
!2141 = !DILocation(line: 846, column: 13, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2118, file: !100, line: 846, column: 7)
!2143 = !DILocation(line: 846, column: 17, scope: !2142)
!2144 = !DILocation(line: 846, column: 7, scope: !2118)
!2145 = !DILocation(line: 848, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !100, line: 847, column: 5)
!2147 = !DILocation(line: 849, column: 21, scope: !2146)
!2148 = !{!2134, !2115, i64 0}
!2149 = !DILocation(line: 850, column: 20, scope: !2146)
!2150 = !DILocation(line: 851, column: 5, scope: !2146)
!2151 = !DILocation(line: 852, column: 10, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2118, file: !100, line: 852, column: 7)
!2153 = !DILocation(line: 852, column: 7, scope: !2118)
!2154 = !DILocation(line: 854, column: 13, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2152, file: !100, line: 853, column: 5)
!2156 = !DILocation(line: 854, column: 7, scope: !2155)
!2157 = !DILocation(line: 855, column: 15, scope: !2155)
!2158 = !DILocation(line: 856, column: 5, scope: !2155)
!2159 = !DILocation(line: 857, column: 10, scope: !2118)
!2160 = !DILocation(line: 858, column: 1, scope: !2118)
!2161 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !2162, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!50, !25, !6}
!2164 = !{!2165, !2166}
!2165 = !DILocalVariable(name: "n", arg: 1, scope: !2161, file: !100, line: 922, type: !25)
!2166 = !DILocalVariable(name: "arg", arg: 2, scope: !2161, file: !100, line: 922, type: !6)
!2167 = !DILocation(line: 922, column: 17, scope: !2161)
!2168 = !DILocation(line: 922, column: 32, scope: !2161)
!2169 = !DILocation(line: 924, column: 10, scope: !2161)
!2170 = !DILocation(line: 924, column: 3, scope: !2161)
!2171 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !2172, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!50, !25, !6, !94, !865}
!2174 = !{!2175, !2176, !2177, !2178, !2179, !2180, !2181, !2184, !2186, !2187, !2188}
!2175 = !DILocalVariable(name: "n", arg: 1, scope: !2171, file: !100, line: 869, type: !25)
!2176 = !DILocalVariable(name: "arg", arg: 2, scope: !2171, file: !100, line: 869, type: !6)
!2177 = !DILocalVariable(name: "argsize", arg: 3, scope: !2171, file: !100, line: 869, type: !94)
!2178 = !DILocalVariable(name: "options", arg: 4, scope: !2171, file: !100, line: 870, type: !865)
!2179 = !DILocalVariable(name: "e", scope: !2171, file: !100, line: 872, type: !25)
!2180 = !DILocalVariable(name: "sv", scope: !2171, file: !100, line: 874, type: !127)
!2181 = !DILocalVariable(name: "preallocated", scope: !2182, file: !100, line: 881, type: !17)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !100, line: 880, column: 5)
!2183 = distinct !DILexicalBlock(scope: !2171, file: !100, line: 879, column: 7)
!2184 = !DILocalVariable(name: "size", scope: !2185, file: !100, line: 894, type: !94)
!2185 = distinct !DILexicalBlock(scope: !2171, file: !100, line: 893, column: 3)
!2186 = !DILocalVariable(name: "val", scope: !2185, file: !100, line: 895, type: !50)
!2187 = !DILocalVariable(name: "flags", scope: !2185, file: !100, line: 897, type: !25)
!2188 = !DILocalVariable(name: "qsize", scope: !2185, file: !100, line: 898, type: !94)
!2189 = !DILocation(line: 869, column: 25, scope: !2171)
!2190 = !DILocation(line: 869, column: 40, scope: !2171)
!2191 = !DILocation(line: 869, column: 52, scope: !2171)
!2192 = !DILocation(line: 870, column: 51, scope: !2171)
!2193 = !DILocation(line: 872, column: 11, scope: !2171)
!2194 = !DILocation(line: 872, column: 7, scope: !2171)
!2195 = !DILocation(line: 874, column: 24, scope: !2171)
!2196 = !DILocation(line: 874, column: 19, scope: !2171)
!2197 = !DILocation(line: 876, column: 9, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2171, file: !100, line: 876, column: 7)
!2199 = !DILocation(line: 876, column: 7, scope: !2171)
!2200 = !DILocation(line: 877, column: 5, scope: !2198)
!2201 = !DILocation(line: 879, column: 7, scope: !2183)
!2202 = !DILocation(line: 879, column: 14, scope: !2183)
!2203 = !DILocation(line: 879, column: 7, scope: !2171)
!2204 = !DILocation(line: 881, column: 31, scope: !2182)
!2205 = !DILocation(line: 883, column: 67, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2182, file: !100, line: 883, column: 11)
!2207 = !DILocation(line: 883, column: 11, scope: !2182)
!2208 = !DILocation(line: 884, column: 9, scope: !2206)
!2209 = !DILocation(line: 886, column: 32, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2182, file: !100, discriminator: 3)
!2211 = !DILocation(line: 886, column: 61, scope: !2210)
!2212 = !DILocation(line: 886, column: 58, scope: !2210)
!2213 = !DILocation(line: 886, column: 66, scope: !2210)
!2214 = !DILocation(line: 886, column: 22, scope: !2210)
!2215 = !DILocation(line: 886, column: 15, scope: !2210)
!2216 = !DILocation(line: 887, column: 11, scope: !2182)
!2217 = !DILocation(line: 888, column: 15, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2182, file: !100, line: 887, column: 11)
!2219 = !{i64 0, i64 8, !2114, i64 8, i64 8, !597}
!2220 = !DILocation(line: 888, column: 9, scope: !2218)
!2221 = !DILocation(line: 889, column: 20, scope: !2182)
!2222 = !DILocation(line: 889, column: 18, scope: !2182)
!2223 = !DILocation(line: 889, column: 7, scope: !2182)
!2224 = !DILocation(line: 889, column: 38, scope: !2182)
!2225 = !DILocation(line: 889, column: 31, scope: !2182)
!2226 = !DILocation(line: 889, column: 48, scope: !2182)
!2227 = !DILocation(line: 890, column: 14, scope: !2182)
!2228 = !DILocation(line: 891, column: 5, scope: !2182)
!2229 = !DILocation(line: 894, column: 19, scope: !2185)
!2230 = !DILocation(line: 894, column: 25, scope: !2185)
!2231 = !DILocation(line: 894, column: 12, scope: !2185)
!2232 = !DILocation(line: 895, column: 23, scope: !2185)
!2233 = !DILocation(line: 895, column: 11, scope: !2185)
!2234 = !DILocation(line: 897, column: 26, scope: !2185)
!2235 = !DILocation(line: 897, column: 32, scope: !2185)
!2236 = !DILocation(line: 897, column: 9, scope: !2185)
!2237 = !DILocation(line: 899, column: 55, scope: !2185)
!2238 = !DILocation(line: 900, column: 46, scope: !2185)
!2239 = !DILocation(line: 901, column: 55, scope: !2185)
!2240 = !DILocation(line: 902, column: 55, scope: !2185)
!2241 = !DILocation(line: 898, column: 20, scope: !2185)
!2242 = !DILocation(line: 898, column: 12, scope: !2185)
!2243 = !DILocation(line: 904, column: 14, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2185, file: !100, line: 904, column: 9)
!2245 = !DILocation(line: 904, column: 9, scope: !2185)
!2246 = !DILocation(line: 906, column: 35, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2244, file: !100, line: 905, column: 7)
!2248 = !DILocation(line: 906, column: 20, scope: !2247)
!2249 = !DILocation(line: 907, column: 17, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !100, line: 907, column: 13)
!2251 = !DILocation(line: 907, column: 13, scope: !2247)
!2252 = !DILocation(line: 908, column: 11, scope: !2250)
!2253 = !DILocation(line: 220, column: 20, scope: !2069, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 909, column: 27, scope: !2247)
!2255 = !DILocation(line: 222, column: 10, scope: !2069, inlinedAt: !2254)
!2256 = !DILocation(line: 909, column: 19, scope: !2247)
!2257 = !DILocation(line: 910, column: 69, scope: !2247)
!2258 = !DILocation(line: 912, column: 44, scope: !2247)
!2259 = !DILocation(line: 913, column: 44, scope: !2247)
!2260 = !DILocation(line: 910, column: 9, scope: !2247)
!2261 = !DILocation(line: 914, column: 7, scope: !2247)
!2262 = !DILocation(line: 916, column: 11, scope: !2185)
!2263 = !DILocation(line: 917, column: 5, scope: !2185)
!2264 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !2265, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!50, !25, !6, !94}
!2267 = !{!2268, !2269, !2270}
!2268 = !DILocalVariable(name: "n", arg: 1, scope: !2264, file: !100, line: 928, type: !25)
!2269 = !DILocalVariable(name: "arg", arg: 2, scope: !2264, file: !100, line: 928, type: !6)
!2270 = !DILocalVariable(name: "argsize", arg: 3, scope: !2264, file: !100, line: 928, type: !94)
!2271 = !DILocation(line: 928, column: 21, scope: !2264)
!2272 = !DILocation(line: 928, column: 36, scope: !2264)
!2273 = !DILocation(line: 928, column: 48, scope: !2264)
!2274 = !DILocation(line: 930, column: 10, scope: !2264)
!2275 = !DILocation(line: 930, column: 3, scope: !2264)
!2276 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !2277, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!50, !6}
!2279 = !{!2280}
!2280 = !DILocalVariable(name: "arg", arg: 1, scope: !2276, file: !100, line: 934, type: !6)
!2281 = !DILocation(line: 934, column: 23, scope: !2276)
!2282 = !DILocation(line: 922, column: 17, scope: !2161, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 936, column: 10, scope: !2276)
!2284 = !DILocation(line: 922, column: 32, scope: !2161, inlinedAt: !2283)
!2285 = !DILocation(line: 924, column: 10, scope: !2161, inlinedAt: !2283)
!2286 = !DILocation(line: 936, column: 3, scope: !2276)
!2287 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !2288, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!50, !6, !94}
!2290 = !{!2291, !2292}
!2291 = !DILocalVariable(name: "arg", arg: 1, scope: !2287, file: !100, line: 940, type: !6)
!2292 = !DILocalVariable(name: "argsize", arg: 2, scope: !2287, file: !100, line: 940, type: !94)
!2293 = !DILocation(line: 940, column: 27, scope: !2287)
!2294 = !DILocation(line: 940, column: 39, scope: !2287)
!2295 = !DILocation(line: 928, column: 21, scope: !2264, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 942, column: 10, scope: !2287)
!2297 = !DILocation(line: 928, column: 36, scope: !2264, inlinedAt: !2296)
!2298 = !DILocation(line: 928, column: 48, scope: !2264, inlinedAt: !2296)
!2299 = !DILocation(line: 930, column: 10, scope: !2264, inlinedAt: !2296)
!2300 = !DILocation(line: 942, column: 3, scope: !2287)
!2301 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !2302, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!50, !25, !58, !6}
!2304 = !{!2305, !2306, !2307, !2308}
!2305 = !DILocalVariable(name: "n", arg: 1, scope: !2301, file: !100, line: 946, type: !25)
!2306 = !DILocalVariable(name: "s", arg: 2, scope: !2301, file: !100, line: 946, type: !58)
!2307 = !DILocalVariable(name: "arg", arg: 3, scope: !2301, file: !100, line: 946, type: !6)
!2308 = !DILocalVariable(name: "o", scope: !2301, file: !100, line: 948, type: !866)
!2309 = !DILocalVariable(name: "o", scope: !2310, file: !100, line: 187, type: !107)
!2310 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2311, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!107, !58}
!2313 = !{!2314, !2309}
!2314 = !DILocalVariable(name: "style", arg: 1, scope: !2310, file: !100, line: 185, type: !58)
!2315 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2316 = !DILocation(line: 187, column: 26, scope: !2310, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 948, column: 36, scope: !2301)
!2318 = !DILocation(line: 946, column: 23, scope: !2301)
!2319 = !DILocation(line: 946, column: 45, scope: !2301)
!2320 = !DILocation(line: 946, column: 60, scope: !2301)
!2321 = !DILocation(line: 948, column: 3, scope: !2301)
!2322 = !DILocation(line: 948, column: 32, scope: !2301)
!2323 = !DILocation(line: 185, column: 48, scope: !2310, inlinedAt: !2317)
!2324 = !DILocation(line: 187, column: 3, scope: !2310, inlinedAt: !2317)
!2325 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2326 = !DILocation(line: 188, column: 13, scope: !2327, inlinedAt: !2317)
!2327 = distinct !DILexicalBlock(scope: !2310, file: !100, line: 188, column: 7)
!2328 = !DILocation(line: 188, column: 7, scope: !2310, inlinedAt: !2317)
!2329 = !DILocation(line: 189, column: 5, scope: !2327, inlinedAt: !2317)
!2330 = !{!2331}
!2331 = distinct !{!2331, !2332, !"quoting_options_from_style: argument 0"}
!2332 = distinct !{!2332, !"quoting_options_from_style"}
!2333 = !DILocation(line: 191, column: 10, scope: !2310, inlinedAt: !2317)
!2334 = !DILocation(line: 192, column: 1, scope: !2310, inlinedAt: !2317)
!2335 = !DILocation(line: 949, column: 10, scope: !2301)
!2336 = !DILocation(line: 950, column: 1, scope: !2301)
!2337 = !DILocation(line: 949, column: 3, scope: !2301)
!2338 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2339, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!50, !25, !58, !6, !94}
!2341 = !{!2342, !2343, !2344, !2345, !2346}
!2342 = !DILocalVariable(name: "n", arg: 1, scope: !2338, file: !100, line: 953, type: !25)
!2343 = !DILocalVariable(name: "s", arg: 2, scope: !2338, file: !100, line: 953, type: !58)
!2344 = !DILocalVariable(name: "arg", arg: 3, scope: !2338, file: !100, line: 954, type: !6)
!2345 = !DILocalVariable(name: "argsize", arg: 4, scope: !2338, file: !100, line: 954, type: !94)
!2346 = !DILocalVariable(name: "o", scope: !2338, file: !100, line: 956, type: !866)
!2347 = !DILocation(line: 187, column: 26, scope: !2310, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 956, column: 36, scope: !2338)
!2349 = !DILocation(line: 953, column: 27, scope: !2338)
!2350 = !DILocation(line: 953, column: 49, scope: !2338)
!2351 = !DILocation(line: 954, column: 35, scope: !2338)
!2352 = !DILocation(line: 954, column: 47, scope: !2338)
!2353 = !DILocation(line: 956, column: 3, scope: !2338)
!2354 = !DILocation(line: 956, column: 32, scope: !2338)
!2355 = !DILocation(line: 185, column: 48, scope: !2310, inlinedAt: !2348)
!2356 = !DILocation(line: 187, column: 3, scope: !2310, inlinedAt: !2348)
!2357 = !DILocation(line: 188, column: 13, scope: !2327, inlinedAt: !2348)
!2358 = !DILocation(line: 188, column: 7, scope: !2310, inlinedAt: !2348)
!2359 = !DILocation(line: 189, column: 5, scope: !2327, inlinedAt: !2348)
!2360 = !{!2361}
!2361 = distinct !{!2361, !2362, !"quoting_options_from_style: argument 0"}
!2362 = distinct !{!2362, !"quoting_options_from_style"}
!2363 = !DILocation(line: 191, column: 10, scope: !2310, inlinedAt: !2348)
!2364 = !DILocation(line: 192, column: 1, scope: !2310, inlinedAt: !2348)
!2365 = !DILocation(line: 957, column: 10, scope: !2338)
!2366 = !DILocation(line: 958, column: 1, scope: !2338)
!2367 = !DILocation(line: 957, column: 3, scope: !2338)
!2368 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2369, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!50, !58, !6}
!2371 = !{!2372, !2373}
!2372 = !DILocalVariable(name: "s", arg: 1, scope: !2368, file: !100, line: 961, type: !58)
!2373 = !DILocalVariable(name: "arg", arg: 2, scope: !2368, file: !100, line: 961, type: !6)
!2374 = !DILocation(line: 187, column: 26, scope: !2310, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 948, column: 36, scope: !2301, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 963, column: 10, scope: !2368)
!2377 = !DILocation(line: 961, column: 36, scope: !2368)
!2378 = !DILocation(line: 961, column: 51, scope: !2368)
!2379 = !DILocation(line: 946, column: 23, scope: !2301, inlinedAt: !2376)
!2380 = !DILocation(line: 946, column: 45, scope: !2301, inlinedAt: !2376)
!2381 = !DILocation(line: 946, column: 60, scope: !2301, inlinedAt: !2376)
!2382 = !DILocation(line: 948, column: 3, scope: !2301, inlinedAt: !2376)
!2383 = !DILocation(line: 948, column: 32, scope: !2301, inlinedAt: !2376)
!2384 = !DILocation(line: 185, column: 48, scope: !2310, inlinedAt: !2375)
!2385 = !DILocation(line: 187, column: 3, scope: !2310, inlinedAt: !2375)
!2386 = !DILocation(line: 188, column: 13, scope: !2327, inlinedAt: !2375)
!2387 = !DILocation(line: 188, column: 7, scope: !2310, inlinedAt: !2375)
!2388 = !DILocation(line: 189, column: 5, scope: !2327, inlinedAt: !2375)
!2389 = !{!2390}
!2390 = distinct !{!2390, !2391, !"quoting_options_from_style: argument 0"}
!2391 = distinct !{!2391, !"quoting_options_from_style"}
!2392 = !DILocation(line: 191, column: 10, scope: !2310, inlinedAt: !2375)
!2393 = !DILocation(line: 192, column: 1, scope: !2310, inlinedAt: !2375)
!2394 = !DILocation(line: 949, column: 10, scope: !2301, inlinedAt: !2376)
!2395 = !DILocation(line: 950, column: 1, scope: !2301, inlinedAt: !2376)
!2396 = !DILocation(line: 963, column: 3, scope: !2368)
!2397 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2398, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!50, !58, !6, !94}
!2400 = !{!2401, !2402, !2403}
!2401 = !DILocalVariable(name: "s", arg: 1, scope: !2397, file: !100, line: 967, type: !58)
!2402 = !DILocalVariable(name: "arg", arg: 2, scope: !2397, file: !100, line: 967, type: !6)
!2403 = !DILocalVariable(name: "argsize", arg: 3, scope: !2397, file: !100, line: 967, type: !94)
!2404 = !DILocation(line: 187, column: 26, scope: !2310, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 956, column: 36, scope: !2338, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 969, column: 10, scope: !2397)
!2407 = !DILocation(line: 967, column: 40, scope: !2397)
!2408 = !DILocation(line: 967, column: 55, scope: !2397)
!2409 = !DILocation(line: 967, column: 67, scope: !2397)
!2410 = !DILocation(line: 953, column: 27, scope: !2338, inlinedAt: !2406)
!2411 = !DILocation(line: 953, column: 49, scope: !2338, inlinedAt: !2406)
!2412 = !DILocation(line: 954, column: 35, scope: !2338, inlinedAt: !2406)
!2413 = !DILocation(line: 954, column: 47, scope: !2338, inlinedAt: !2406)
!2414 = !DILocation(line: 956, column: 3, scope: !2338, inlinedAt: !2406)
!2415 = !DILocation(line: 956, column: 32, scope: !2338, inlinedAt: !2406)
!2416 = !DILocation(line: 185, column: 48, scope: !2310, inlinedAt: !2405)
!2417 = !DILocation(line: 187, column: 3, scope: !2310, inlinedAt: !2405)
!2418 = !DILocation(line: 188, column: 13, scope: !2327, inlinedAt: !2405)
!2419 = !DILocation(line: 188, column: 7, scope: !2310, inlinedAt: !2405)
!2420 = !DILocation(line: 189, column: 5, scope: !2327, inlinedAt: !2405)
!2421 = !{!2422}
!2422 = distinct !{!2422, !2423, !"quoting_options_from_style: argument 0"}
!2423 = distinct !{!2423, !"quoting_options_from_style"}
!2424 = !DILocation(line: 191, column: 10, scope: !2310, inlinedAt: !2405)
!2425 = !DILocation(line: 192, column: 1, scope: !2310, inlinedAt: !2405)
!2426 = !DILocation(line: 957, column: 10, scope: !2338, inlinedAt: !2406)
!2427 = !DILocation(line: 958, column: 1, scope: !2338, inlinedAt: !2406)
!2428 = !DILocation(line: 969, column: 3, scope: !2397)
!2429 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2430, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!50, !6, !94, !8}
!2432 = !{!2433, !2434, !2435, !2436}
!2433 = !DILocalVariable(name: "arg", arg: 1, scope: !2429, file: !100, line: 973, type: !6)
!2434 = !DILocalVariable(name: "argsize", arg: 2, scope: !2429, file: !100, line: 973, type: !94)
!2435 = !DILocalVariable(name: "ch", arg: 3, scope: !2429, file: !100, line: 973, type: !8)
!2436 = !DILocalVariable(name: "options", scope: !2429, file: !100, line: 975, type: !107)
!2437 = !DILocation(line: 973, column: 32, scope: !2429)
!2438 = !DILocation(line: 973, column: 44, scope: !2429)
!2439 = !DILocation(line: 973, column: 58, scope: !2429)
!2440 = !DILocation(line: 975, column: 3, scope: !2429)
!2441 = !DILocation(line: 976, column: 13, scope: !2429)
!2442 = !{i64 0, i64 4, !1100, i64 4, i64 4, !663, i64 8, i64 32, !1100, i64 40, i64 8, !597, i64 48, i64 8, !597}
!2443 = !DILocation(line: 975, column: 26, scope: !2429)
!2444 = !DILocation(line: 144, column: 43, scope: !889, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 977, column: 3, scope: !2429)
!2446 = !DILocation(line: 144, column: 51, scope: !889, inlinedAt: !2445)
!2447 = !DILocation(line: 144, column: 58, scope: !889, inlinedAt: !2445)
!2448 = !DILocation(line: 146, column: 17, scope: !889, inlinedAt: !2445)
!2449 = !DILocation(line: 148, column: 62, scope: !907, inlinedAt: !2445)
!2450 = !DILocation(line: 148, column: 57, scope: !907, inlinedAt: !2445)
!2451 = !DILocation(line: 147, column: 17, scope: !889, inlinedAt: !2445)
!2452 = !DILocation(line: 149, column: 18, scope: !889, inlinedAt: !2445)
!2453 = !DILocation(line: 149, column: 15, scope: !889, inlinedAt: !2445)
!2454 = !DILocation(line: 149, column: 7, scope: !889, inlinedAt: !2445)
!2455 = !DILocation(line: 150, column: 12, scope: !889, inlinedAt: !2445)
!2456 = !DILocation(line: 150, column: 15, scope: !889, inlinedAt: !2445)
!2457 = !DILocation(line: 150, column: 25, scope: !889, inlinedAt: !2445)
!2458 = !DILocation(line: 150, column: 7, scope: !889, inlinedAt: !2445)
!2459 = !DILocation(line: 151, column: 18, scope: !889, inlinedAt: !2445)
!2460 = !DILocation(line: 151, column: 23, scope: !889, inlinedAt: !2445)
!2461 = !DILocation(line: 151, column: 6, scope: !889, inlinedAt: !2445)
!2462 = !DILocation(line: 978, column: 10, scope: !2429)
!2463 = !DILocation(line: 979, column: 1, scope: !2429)
!2464 = !DILocation(line: 978, column: 3, scope: !2429)
!2465 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2466, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!50, !6, !8}
!2468 = !{!2469, !2470}
!2469 = !DILocalVariable(name: "arg", arg: 1, scope: !2465, file: !100, line: 982, type: !6)
!2470 = !DILocalVariable(name: "ch", arg: 2, scope: !2465, file: !100, line: 982, type: !8)
!2471 = !DILocation(line: 982, column: 28, scope: !2465)
!2472 = !DILocation(line: 982, column: 38, scope: !2465)
!2473 = !DILocation(line: 973, column: 32, scope: !2429, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 984, column: 10, scope: !2465)
!2475 = !DILocation(line: 973, column: 44, scope: !2429, inlinedAt: !2474)
!2476 = !DILocation(line: 973, column: 58, scope: !2429, inlinedAt: !2474)
!2477 = !DILocation(line: 975, column: 3, scope: !2429, inlinedAt: !2474)
!2478 = !DILocation(line: 976, column: 13, scope: !2429, inlinedAt: !2474)
!2479 = !DILocation(line: 975, column: 26, scope: !2429, inlinedAt: !2474)
!2480 = !DILocation(line: 144, column: 43, scope: !889, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 977, column: 3, scope: !2429, inlinedAt: !2474)
!2482 = !DILocation(line: 144, column: 51, scope: !889, inlinedAt: !2481)
!2483 = !DILocation(line: 144, column: 58, scope: !889, inlinedAt: !2481)
!2484 = !DILocation(line: 146, column: 17, scope: !889, inlinedAt: !2481)
!2485 = !DILocation(line: 148, column: 62, scope: !907, inlinedAt: !2481)
!2486 = !DILocation(line: 148, column: 57, scope: !907, inlinedAt: !2481)
!2487 = !DILocation(line: 147, column: 17, scope: !889, inlinedAt: !2481)
!2488 = !DILocation(line: 149, column: 18, scope: !889, inlinedAt: !2481)
!2489 = !DILocation(line: 149, column: 15, scope: !889, inlinedAt: !2481)
!2490 = !DILocation(line: 149, column: 7, scope: !889, inlinedAt: !2481)
!2491 = !DILocation(line: 150, column: 12, scope: !889, inlinedAt: !2481)
!2492 = !DILocation(line: 150, column: 15, scope: !889, inlinedAt: !2481)
!2493 = !DILocation(line: 150, column: 25, scope: !889, inlinedAt: !2481)
!2494 = !DILocation(line: 150, column: 7, scope: !889, inlinedAt: !2481)
!2495 = !DILocation(line: 151, column: 18, scope: !889, inlinedAt: !2481)
!2496 = !DILocation(line: 151, column: 23, scope: !889, inlinedAt: !2481)
!2497 = !DILocation(line: 151, column: 6, scope: !889, inlinedAt: !2481)
!2498 = !DILocation(line: 978, column: 10, scope: !2429, inlinedAt: !2474)
!2499 = !DILocation(line: 979, column: 1, scope: !2429, inlinedAt: !2474)
!2500 = !DILocation(line: 984, column: 3, scope: !2465)
!2501 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !2277, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2502)
!2502 = !{!2503}
!2503 = !DILocalVariable(name: "arg", arg: 1, scope: !2501, file: !100, line: 988, type: !6)
!2504 = !DILocation(line: 988, column: 29, scope: !2501)
!2505 = !DILocation(line: 982, column: 28, scope: !2465, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 990, column: 10, scope: !2501)
!2507 = !DILocation(line: 982, column: 38, scope: !2465, inlinedAt: !2506)
!2508 = !DILocation(line: 973, column: 32, scope: !2429, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 984, column: 10, scope: !2465, inlinedAt: !2506)
!2510 = !DILocation(line: 973, column: 44, scope: !2429, inlinedAt: !2509)
!2511 = !DILocation(line: 973, column: 58, scope: !2429, inlinedAt: !2509)
!2512 = !DILocation(line: 975, column: 3, scope: !2429, inlinedAt: !2509)
!2513 = !DILocation(line: 976, column: 13, scope: !2429, inlinedAt: !2509)
!2514 = !DILocation(line: 975, column: 26, scope: !2429, inlinedAt: !2509)
!2515 = !DILocation(line: 144, column: 43, scope: !889, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 977, column: 3, scope: !2429, inlinedAt: !2509)
!2517 = !DILocation(line: 144, column: 51, scope: !889, inlinedAt: !2516)
!2518 = !DILocation(line: 144, column: 58, scope: !889, inlinedAt: !2516)
!2519 = !DILocation(line: 146, column: 17, scope: !889, inlinedAt: !2516)
!2520 = !DILocation(line: 148, column: 57, scope: !907, inlinedAt: !2516)
!2521 = !DILocation(line: 147, column: 17, scope: !889, inlinedAt: !2516)
!2522 = !DILocation(line: 149, column: 7, scope: !889, inlinedAt: !2516)
!2523 = !DILocation(line: 150, column: 12, scope: !889, inlinedAt: !2516)
!2524 = !DILocation(line: 151, column: 6, scope: !889, inlinedAt: !2516)
!2525 = !DILocation(line: 978, column: 10, scope: !2429, inlinedAt: !2509)
!2526 = !DILocation(line: 979, column: 1, scope: !2429, inlinedAt: !2509)
!2527 = !DILocation(line: 990, column: 3, scope: !2501)
!2528 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !2288, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2529)
!2529 = !{!2530, !2531}
!2530 = !DILocalVariable(name: "arg", arg: 1, scope: !2528, file: !100, line: 994, type: !6)
!2531 = !DILocalVariable(name: "argsize", arg: 2, scope: !2528, file: !100, line: 994, type: !94)
!2532 = !DILocation(line: 994, column: 33, scope: !2528)
!2533 = !DILocation(line: 994, column: 45, scope: !2528)
!2534 = !DILocation(line: 973, column: 32, scope: !2429, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 996, column: 10, scope: !2528)
!2536 = !DILocation(line: 973, column: 44, scope: !2429, inlinedAt: !2535)
!2537 = !DILocation(line: 973, column: 58, scope: !2429, inlinedAt: !2535)
!2538 = !DILocation(line: 975, column: 3, scope: !2429, inlinedAt: !2535)
!2539 = !DILocation(line: 976, column: 13, scope: !2429, inlinedAt: !2535)
!2540 = !DILocation(line: 975, column: 26, scope: !2429, inlinedAt: !2535)
!2541 = !DILocation(line: 144, column: 43, scope: !889, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 977, column: 3, scope: !2429, inlinedAt: !2535)
!2543 = !DILocation(line: 144, column: 51, scope: !889, inlinedAt: !2542)
!2544 = !DILocation(line: 144, column: 58, scope: !889, inlinedAt: !2542)
!2545 = !DILocation(line: 146, column: 17, scope: !889, inlinedAt: !2542)
!2546 = !DILocation(line: 148, column: 57, scope: !907, inlinedAt: !2542)
!2547 = !DILocation(line: 147, column: 17, scope: !889, inlinedAt: !2542)
!2548 = !DILocation(line: 149, column: 7, scope: !889, inlinedAt: !2542)
!2549 = !DILocation(line: 150, column: 12, scope: !889, inlinedAt: !2542)
!2550 = !DILocation(line: 151, column: 6, scope: !889, inlinedAt: !2542)
!2551 = !DILocation(line: 978, column: 10, scope: !2429, inlinedAt: !2535)
!2552 = !DILocation(line: 979, column: 1, scope: !2429, inlinedAt: !2535)
!2553 = !DILocation(line: 996, column: 3, scope: !2528)
!2554 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !2302, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2555)
!2555 = !{!2556, !2557, !2558, !2559}
!2556 = !DILocalVariable(name: "n", arg: 1, scope: !2554, file: !100, line: 1000, type: !25)
!2557 = !DILocalVariable(name: "s", arg: 2, scope: !2554, file: !100, line: 1000, type: !58)
!2558 = !DILocalVariable(name: "arg", arg: 3, scope: !2554, file: !100, line: 1000, type: !6)
!2559 = !DILocalVariable(name: "options", scope: !2554, file: !100, line: 1002, type: !107)
!2560 = !DILocation(line: 187, column: 26, scope: !2310, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 1003, column: 13, scope: !2554)
!2562 = !DILocation(line: 1000, column: 29, scope: !2554)
!2563 = !DILocation(line: 1000, column: 51, scope: !2554)
!2564 = !DILocation(line: 1000, column: 66, scope: !2554)
!2565 = !DILocation(line: 1002, column: 3, scope: !2554)
!2566 = !DILocation(line: 185, column: 48, scope: !2310, inlinedAt: !2561)
!2567 = !DILocation(line: 187, column: 3, scope: !2310, inlinedAt: !2561)
!2568 = !DILocation(line: 188, column: 13, scope: !2327, inlinedAt: !2561)
!2569 = !DILocation(line: 188, column: 7, scope: !2310, inlinedAt: !2561)
!2570 = !DILocation(line: 189, column: 5, scope: !2327, inlinedAt: !2561)
!2571 = !{!2572}
!2572 = distinct !{!2572, !2573, !"quoting_options_from_style: argument 0"}
!2573 = distinct !{!2573, !"quoting_options_from_style"}
!2574 = !DILocation(line: 191, column: 10, scope: !2310, inlinedAt: !2561)
!2575 = !DILocation(line: 192, column: 1, scope: !2310, inlinedAt: !2561)
!2576 = !DILocation(line: 1003, column: 13, scope: !2554)
!2577 = !DILocation(line: 1002, column: 26, scope: !2554)
!2578 = !DILocation(line: 144, column: 43, scope: !889, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1004, column: 3, scope: !2554)
!2580 = !DILocation(line: 144, column: 51, scope: !889, inlinedAt: !2579)
!2581 = !DILocation(line: 144, column: 58, scope: !889, inlinedAt: !2579)
!2582 = !DILocation(line: 146, column: 17, scope: !889, inlinedAt: !2579)
!2583 = !DILocation(line: 148, column: 57, scope: !907, inlinedAt: !2579)
!2584 = !DILocation(line: 147, column: 17, scope: !889, inlinedAt: !2579)
!2585 = !DILocation(line: 149, column: 7, scope: !889, inlinedAt: !2579)
!2586 = !DILocation(line: 150, column: 12, scope: !889, inlinedAt: !2579)
!2587 = !DILocation(line: 151, column: 6, scope: !889, inlinedAt: !2579)
!2588 = !DILocation(line: 1005, column: 10, scope: !2554)
!2589 = !DILocation(line: 1006, column: 1, scope: !2554)
!2590 = !DILocation(line: 1005, column: 3, scope: !2554)
!2591 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2592, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!50, !25, !6, !6, !6}
!2594 = !{!2595, !2596, !2597, !2598}
!2595 = !DILocalVariable(name: "n", arg: 1, scope: !2591, file: !100, line: 1009, type: !25)
!2596 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2591, file: !100, line: 1009, type: !6)
!2597 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2591, file: !100, line: 1010, type: !6)
!2598 = !DILocalVariable(name: "arg", arg: 4, scope: !2591, file: !100, line: 1010, type: !6)
!2599 = !DILocation(line: 1009, column: 24, scope: !2591)
!2600 = !DILocation(line: 1009, column: 39, scope: !2591)
!2601 = !DILocation(line: 1010, column: 32, scope: !2591)
!2602 = !DILocation(line: 1010, column: 57, scope: !2591)
!2603 = !DILocalVariable(name: "n", arg: 1, scope: !2604, file: !100, line: 1017, type: !25)
!2604 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2605, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!50, !25, !6, !6, !6, !94}
!2607 = !{!2603, !2608, !2609, !2610, !2611, !2612}
!2608 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2604, file: !100, line: 1017, type: !6)
!2609 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2604, file: !100, line: 1018, type: !6)
!2610 = !DILocalVariable(name: "arg", arg: 4, scope: !2604, file: !100, line: 1019, type: !6)
!2611 = !DILocalVariable(name: "argsize", arg: 5, scope: !2604, file: !100, line: 1019, type: !94)
!2612 = !DILocalVariable(name: "o", scope: !2604, file: !100, line: 1021, type: !107)
!2613 = !DILocation(line: 1017, column: 28, scope: !2604, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 1012, column: 10, scope: !2591)
!2615 = !DILocation(line: 1017, column: 43, scope: !2604, inlinedAt: !2614)
!2616 = !DILocation(line: 1018, column: 36, scope: !2604, inlinedAt: !2614)
!2617 = !DILocation(line: 1019, column: 36, scope: !2604, inlinedAt: !2614)
!2618 = !DILocation(line: 1019, column: 48, scope: !2604, inlinedAt: !2614)
!2619 = !DILocation(line: 1021, column: 3, scope: !2604, inlinedAt: !2614)
!2620 = !DILocation(line: 1021, column: 30, scope: !2604, inlinedAt: !2614)
!2621 = !DILocation(line: 1021, column: 26, scope: !2604, inlinedAt: !2614)
!2622 = !DILocation(line: 171, column: 45, scope: !939, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 1022, column: 3, scope: !2604, inlinedAt: !2614)
!2624 = !DILocation(line: 172, column: 33, scope: !939, inlinedAt: !2623)
!2625 = !DILocation(line: 172, column: 57, scope: !939, inlinedAt: !2623)
!2626 = !DILocation(line: 176, column: 6, scope: !939, inlinedAt: !2623)
!2627 = !DILocation(line: 176, column: 12, scope: !939, inlinedAt: !2623)
!2628 = !DILocation(line: 177, column: 8, scope: !955, inlinedAt: !2623)
!2629 = !DILocation(line: 177, column: 23, scope: !957, inlinedAt: !2623)
!2630 = !DILocation(line: 177, column: 19, scope: !955, inlinedAt: !2623)
!2631 = !DILocation(line: 178, column: 5, scope: !955, inlinedAt: !2623)
!2632 = !DILocation(line: 179, column: 6, scope: !939, inlinedAt: !2623)
!2633 = !DILocation(line: 179, column: 17, scope: !939, inlinedAt: !2623)
!2634 = !DILocation(line: 180, column: 6, scope: !939, inlinedAt: !2623)
!2635 = !DILocation(line: 180, column: 18, scope: !939, inlinedAt: !2623)
!2636 = !DILocation(line: 1023, column: 10, scope: !2604, inlinedAt: !2614)
!2637 = !DILocation(line: 1024, column: 1, scope: !2604, inlinedAt: !2614)
!2638 = !DILocation(line: 1012, column: 3, scope: !2591)
!2639 = !DILocation(line: 1017, column: 28, scope: !2604)
!2640 = !DILocation(line: 1017, column: 43, scope: !2604)
!2641 = !DILocation(line: 1018, column: 36, scope: !2604)
!2642 = !DILocation(line: 1019, column: 36, scope: !2604)
!2643 = !DILocation(line: 1019, column: 48, scope: !2604)
!2644 = !DILocation(line: 1021, column: 3, scope: !2604)
!2645 = !DILocation(line: 1021, column: 30, scope: !2604)
!2646 = !DILocation(line: 1021, column: 26, scope: !2604)
!2647 = !DILocation(line: 171, column: 45, scope: !939, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1022, column: 3, scope: !2604)
!2649 = !DILocation(line: 172, column: 33, scope: !939, inlinedAt: !2648)
!2650 = !DILocation(line: 172, column: 57, scope: !939, inlinedAt: !2648)
!2651 = !DILocation(line: 176, column: 6, scope: !939, inlinedAt: !2648)
!2652 = !DILocation(line: 176, column: 12, scope: !939, inlinedAt: !2648)
!2653 = !DILocation(line: 177, column: 8, scope: !955, inlinedAt: !2648)
!2654 = !DILocation(line: 177, column: 23, scope: !957, inlinedAt: !2648)
!2655 = !DILocation(line: 177, column: 19, scope: !955, inlinedAt: !2648)
!2656 = !DILocation(line: 178, column: 5, scope: !955, inlinedAt: !2648)
!2657 = !DILocation(line: 179, column: 6, scope: !939, inlinedAt: !2648)
!2658 = !DILocation(line: 179, column: 17, scope: !939, inlinedAt: !2648)
!2659 = !DILocation(line: 180, column: 6, scope: !939, inlinedAt: !2648)
!2660 = !DILocation(line: 180, column: 18, scope: !939, inlinedAt: !2648)
!2661 = !DILocation(line: 1023, column: 10, scope: !2604)
!2662 = !DILocation(line: 1024, column: 1, scope: !2604)
!2663 = !DILocation(line: 1023, column: 3, scope: !2604)
!2664 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2665, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!50, !6, !6, !6}
!2667 = !{!2668, !2669, !2670}
!2668 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2664, file: !100, line: 1027, type: !6)
!2669 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2664, file: !100, line: 1027, type: !6)
!2670 = !DILocalVariable(name: "arg", arg: 3, scope: !2664, file: !100, line: 1028, type: !6)
!2671 = !DILocation(line: 1027, column: 30, scope: !2664)
!2672 = !DILocation(line: 1027, column: 54, scope: !2664)
!2673 = !DILocation(line: 1028, column: 30, scope: !2664)
!2674 = !DILocation(line: 1009, column: 24, scope: !2591, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1030, column: 10, scope: !2664)
!2676 = !DILocation(line: 1009, column: 39, scope: !2591, inlinedAt: !2675)
!2677 = !DILocation(line: 1010, column: 32, scope: !2591, inlinedAt: !2675)
!2678 = !DILocation(line: 1010, column: 57, scope: !2591, inlinedAt: !2675)
!2679 = !DILocation(line: 1017, column: 28, scope: !2604, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 1012, column: 10, scope: !2591, inlinedAt: !2675)
!2681 = !DILocation(line: 1017, column: 43, scope: !2604, inlinedAt: !2680)
!2682 = !DILocation(line: 1018, column: 36, scope: !2604, inlinedAt: !2680)
!2683 = !DILocation(line: 1019, column: 36, scope: !2604, inlinedAt: !2680)
!2684 = !DILocation(line: 1019, column: 48, scope: !2604, inlinedAt: !2680)
!2685 = !DILocation(line: 1021, column: 3, scope: !2604, inlinedAt: !2680)
!2686 = !DILocation(line: 1021, column: 30, scope: !2604, inlinedAt: !2680)
!2687 = !DILocation(line: 1021, column: 26, scope: !2604, inlinedAt: !2680)
!2688 = !DILocation(line: 171, column: 45, scope: !939, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 1022, column: 3, scope: !2604, inlinedAt: !2680)
!2690 = !DILocation(line: 172, column: 33, scope: !939, inlinedAt: !2689)
!2691 = !DILocation(line: 172, column: 57, scope: !939, inlinedAt: !2689)
!2692 = !DILocation(line: 176, column: 6, scope: !939, inlinedAt: !2689)
!2693 = !DILocation(line: 176, column: 12, scope: !939, inlinedAt: !2689)
!2694 = !DILocation(line: 177, column: 8, scope: !955, inlinedAt: !2689)
!2695 = !DILocation(line: 177, column: 23, scope: !957, inlinedAt: !2689)
!2696 = !DILocation(line: 177, column: 19, scope: !955, inlinedAt: !2689)
!2697 = !DILocation(line: 178, column: 5, scope: !955, inlinedAt: !2689)
!2698 = !DILocation(line: 179, column: 6, scope: !939, inlinedAt: !2689)
!2699 = !DILocation(line: 179, column: 17, scope: !939, inlinedAt: !2689)
!2700 = !DILocation(line: 180, column: 6, scope: !939, inlinedAt: !2689)
!2701 = !DILocation(line: 180, column: 18, scope: !939, inlinedAt: !2689)
!2702 = !DILocation(line: 1023, column: 10, scope: !2604, inlinedAt: !2680)
!2703 = !DILocation(line: 1024, column: 1, scope: !2604, inlinedAt: !2680)
!2704 = !DILocation(line: 1030, column: 3, scope: !2664)
!2705 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2706, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!50, !6, !6, !6, !94}
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2705, file: !100, line: 1034, type: !6)
!2710 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2705, file: !100, line: 1034, type: !6)
!2711 = !DILocalVariable(name: "arg", arg: 3, scope: !2705, file: !100, line: 1035, type: !6)
!2712 = !DILocalVariable(name: "argsize", arg: 4, scope: !2705, file: !100, line: 1035, type: !94)
!2713 = !DILocation(line: 1034, column: 34, scope: !2705)
!2714 = !DILocation(line: 1034, column: 58, scope: !2705)
!2715 = !DILocation(line: 1035, column: 34, scope: !2705)
!2716 = !DILocation(line: 1035, column: 46, scope: !2705)
!2717 = !DILocation(line: 1017, column: 28, scope: !2604, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1037, column: 10, scope: !2705)
!2719 = !DILocation(line: 1017, column: 43, scope: !2604, inlinedAt: !2718)
!2720 = !DILocation(line: 1018, column: 36, scope: !2604, inlinedAt: !2718)
!2721 = !DILocation(line: 1019, column: 36, scope: !2604, inlinedAt: !2718)
!2722 = !DILocation(line: 1019, column: 48, scope: !2604, inlinedAt: !2718)
!2723 = !DILocation(line: 1021, column: 3, scope: !2604, inlinedAt: !2718)
!2724 = !DILocation(line: 1021, column: 30, scope: !2604, inlinedAt: !2718)
!2725 = !DILocation(line: 1021, column: 26, scope: !2604, inlinedAt: !2718)
!2726 = !DILocation(line: 171, column: 45, scope: !939, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1022, column: 3, scope: !2604, inlinedAt: !2718)
!2728 = !DILocation(line: 172, column: 33, scope: !939, inlinedAt: !2727)
!2729 = !DILocation(line: 172, column: 57, scope: !939, inlinedAt: !2727)
!2730 = !DILocation(line: 176, column: 6, scope: !939, inlinedAt: !2727)
!2731 = !DILocation(line: 176, column: 12, scope: !939, inlinedAt: !2727)
!2732 = !DILocation(line: 177, column: 8, scope: !955, inlinedAt: !2727)
!2733 = !DILocation(line: 177, column: 23, scope: !957, inlinedAt: !2727)
!2734 = !DILocation(line: 177, column: 19, scope: !955, inlinedAt: !2727)
!2735 = !DILocation(line: 178, column: 5, scope: !955, inlinedAt: !2727)
!2736 = !DILocation(line: 179, column: 6, scope: !939, inlinedAt: !2727)
!2737 = !DILocation(line: 179, column: 17, scope: !939, inlinedAt: !2727)
!2738 = !DILocation(line: 180, column: 6, scope: !939, inlinedAt: !2727)
!2739 = !DILocation(line: 180, column: 18, scope: !939, inlinedAt: !2727)
!2740 = !DILocation(line: 1023, column: 10, scope: !2604, inlinedAt: !2718)
!2741 = !DILocation(line: 1024, column: 1, scope: !2604, inlinedAt: !2718)
!2742 = !DILocation(line: 1037, column: 3, scope: !2705)
!2743 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2744, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!6, !25, !6, !94}
!2746 = !{!2747, !2748, !2749}
!2747 = !DILocalVariable(name: "n", arg: 1, scope: !2743, file: !100, line: 1052, type: !25)
!2748 = !DILocalVariable(name: "arg", arg: 2, scope: !2743, file: !100, line: 1052, type: !6)
!2749 = !DILocalVariable(name: "argsize", arg: 3, scope: !2743, file: !100, line: 1052, type: !94)
!2750 = !DILocation(line: 1052, column: 18, scope: !2743)
!2751 = !DILocation(line: 1052, column: 33, scope: !2743)
!2752 = !DILocation(line: 1052, column: 45, scope: !2743)
!2753 = !DILocation(line: 1054, column: 10, scope: !2743)
!2754 = !DILocation(line: 1054, column: 3, scope: !2743)
!2755 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2756, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!6, !6, !94}
!2758 = !{!2759, !2760}
!2759 = !DILocalVariable(name: "arg", arg: 1, scope: !2755, file: !100, line: 1058, type: !6)
!2760 = !DILocalVariable(name: "argsize", arg: 2, scope: !2755, file: !100, line: 1058, type: !94)
!2761 = !DILocation(line: 1058, column: 24, scope: !2755)
!2762 = !DILocation(line: 1058, column: 36, scope: !2755)
!2763 = !DILocation(line: 1052, column: 18, scope: !2743, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 1060, column: 10, scope: !2755)
!2765 = !DILocation(line: 1052, column: 33, scope: !2743, inlinedAt: !2764)
!2766 = !DILocation(line: 1052, column: 45, scope: !2743, inlinedAt: !2764)
!2767 = !DILocation(line: 1054, column: 10, scope: !2743, inlinedAt: !2764)
!2768 = !DILocation(line: 1060, column: 3, scope: !2755)
!2769 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2770, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!6, !25, !6}
!2772 = !{!2773, !2774}
!2773 = !DILocalVariable(name: "n", arg: 1, scope: !2769, file: !100, line: 1064, type: !25)
!2774 = !DILocalVariable(name: "arg", arg: 2, scope: !2769, file: !100, line: 1064, type: !6)
!2775 = !DILocation(line: 1064, column: 14, scope: !2769)
!2776 = !DILocation(line: 1064, column: 29, scope: !2769)
!2777 = !DILocation(line: 1052, column: 18, scope: !2743, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1066, column: 10, scope: !2769)
!2779 = !DILocation(line: 1052, column: 33, scope: !2743, inlinedAt: !2778)
!2780 = !DILocation(line: 1052, column: 45, scope: !2743, inlinedAt: !2778)
!2781 = !DILocation(line: 1054, column: 10, scope: !2743, inlinedAt: !2778)
!2782 = !DILocation(line: 1066, column: 3, scope: !2769)
!2783 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2784, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!6, !6}
!2786 = !{!2787}
!2787 = !DILocalVariable(name: "arg", arg: 1, scope: !2783, file: !100, line: 1070, type: !6)
!2788 = !DILocation(line: 1070, column: 20, scope: !2783)
!2789 = !DILocation(line: 1064, column: 14, scope: !2769, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1072, column: 10, scope: !2783)
!2791 = !DILocation(line: 1064, column: 29, scope: !2769, inlinedAt: !2790)
!2792 = !DILocation(line: 1052, column: 18, scope: !2743, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 1066, column: 10, scope: !2769, inlinedAt: !2790)
!2794 = !DILocation(line: 1052, column: 33, scope: !2743, inlinedAt: !2793)
!2795 = !DILocation(line: 1052, column: 45, scope: !2743, inlinedAt: !2793)
!2796 = !DILocation(line: 1054, column: 10, scope: !2743, inlinedAt: !2793)
!2797 = !DILocation(line: 1072, column: 3, scope: !2783)
!2798 = distinct !DISubprogram(name: "version_etc_arn", scope: !540, file: !540, line: 62, type: !2799, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2854)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2801, !6, !6, !6, !2853, !94}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !764, line: 49, baseType: !2803)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2804, line: 241, size: 1728, elements: !2805)
!2804 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2805 = !{!2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2826, !2827, !2828, !2829, !2833, !2834, !2836, !2838, !2841, !2843, !2844, !2845, !2846, !2847, !2848, !2849}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2803, file: !2804, line: 242, baseType: !25, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2803, file: !2804, line: 247, baseType: !50, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2803, file: !2804, line: 248, baseType: !50, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2803, file: !2804, line: 249, baseType: !50, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2803, file: !2804, line: 250, baseType: !50, size: 64, offset: 256)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2803, file: !2804, line: 251, baseType: !50, size: 64, offset: 320)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2803, file: !2804, line: 252, baseType: !50, size: 64, offset: 384)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2803, file: !2804, line: 253, baseType: !50, size: 64, offset: 448)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2803, file: !2804, line: 254, baseType: !50, size: 64, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2803, file: !2804, line: 256, baseType: !50, size: 64, offset: 576)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2803, file: !2804, line: 257, baseType: !50, size: 64, offset: 640)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2803, file: !2804, line: 258, baseType: !50, size: 64, offset: 704)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2803, file: !2804, line: 260, baseType: !2819, size: 64, offset: 768)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2804, line: 156, size: 192, elements: !2821)
!2821 = !{!2822, !2823, !2825}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2820, file: !2804, line: 157, baseType: !2819, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2820, file: !2804, line: 158, baseType: !2824, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2820, file: !2804, line: 162, baseType: !25, size: 32, offset: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2803, file: !2804, line: 262, baseType: !2824, size: 64, offset: 832)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2803, file: !2804, line: 264, baseType: !25, size: 32, offset: 896)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2803, file: !2804, line: 268, baseType: !25, size: 32, offset: 928)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2803, file: !2804, line: 270, baseType: !2830, size: 64, offset: 960)
!2830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2831, line: 140, baseType: !2832)
!2831 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2832 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2803, file: !2804, line: 274, baseType: !93, size: 16, offset: 1024)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2803, file: !2804, line: 275, baseType: !2835, size: 8, offset: 1040)
!2835 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2803, file: !2804, line: 276, baseType: !2837, size: 8, offset: 1048)
!2837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !775)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2803, file: !2804, line: 280, baseType: !2839, size: 64, offset: 1088)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2804, line: 150, baseType: null)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2803, file: !2804, line: 289, baseType: !2842, size: 64, offset: 1152)
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2831, line: 141, baseType: !2832)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2803, file: !2804, line: 297, baseType: !49, size: 64, offset: 1216)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2803, file: !2804, line: 298, baseType: !49, size: 64, offset: 1280)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2803, file: !2804, line: 299, baseType: !49, size: 64, offset: 1344)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2803, file: !2804, line: 300, baseType: !49, size: 64, offset: 1408)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2803, file: !2804, line: 302, baseType: !94, size: 64, offset: 1472)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2803, file: !2804, line: 303, baseType: !25, size: 32, offset: 1536)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2803, file: !2804, line: 305, baseType: !2850, size: 160, offset: 1568)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2851)
!2851 = !{!2852}
!2852 = !DISubrange(count: 20)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860}
!2855 = !DILocalVariable(name: "stream", arg: 1, scope: !2798, file: !540, line: 62, type: !2801)
!2856 = !DILocalVariable(name: "command_name", arg: 2, scope: !2798, file: !540, line: 63, type: !6)
!2857 = !DILocalVariable(name: "package", arg: 3, scope: !2798, file: !540, line: 63, type: !6)
!2858 = !DILocalVariable(name: "version", arg: 4, scope: !2798, file: !540, line: 64, type: !6)
!2859 = !DILocalVariable(name: "authors", arg: 5, scope: !2798, file: !540, line: 65, type: !2853)
!2860 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2798, file: !540, line: 65, type: !94)
!2861 = !DILocation(line: 62, column: 24, scope: !2798)
!2862 = !DILocation(line: 63, column: 30, scope: !2798)
!2863 = !DILocation(line: 63, column: 56, scope: !2798)
!2864 = !DILocation(line: 64, column: 30, scope: !2798)
!2865 = !DILocation(line: 65, column: 39, scope: !2798)
!2866 = !DILocation(line: 65, column: 55, scope: !2798)
!2867 = !DILocation(line: 67, column: 7, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2798, file: !540, line: 67, column: 7)
!2869 = !DILocation(line: 67, column: 7, scope: !2798)
!2870 = !DILocation(line: 68, column: 5, scope: !2868)
!2871 = !DILocation(line: 70, column: 5, scope: !2868)
!2872 = !DILocation(line: 84, column: 3, scope: !2798)
!2873 = !DILocation(line: 84, column: 3, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !2798, file: !540, discriminator: 1)
!2875 = !DILocation(line: 86, column: 3, scope: !2798)
!2876 = !DILocation(line: 86, column: 3, scope: !2874)
!2877 = !DILocation(line: 95, column: 3, scope: !2798)
!2878 = !DILocation(line: 99, column: 7, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2798, file: !540, line: 96, column: 5)
!2880 = !DILocation(line: 102, column: 7, scope: !2879)
!2881 = !DILocation(line: 102, column: 7, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !2879, file: !540, discriminator: 1)
!2883 = !DILocation(line: 103, column: 7, scope: !2879)
!2884 = !DILocation(line: 106, column: 7, scope: !2879)
!2885 = !DILocation(line: 106, column: 7, scope: !2882)
!2886 = !DILocation(line: 107, column: 7, scope: !2879)
!2887 = !DILocation(line: 110, column: 7, scope: !2879)
!2888 = !DILocation(line: 110, column: 7, scope: !2882)
!2889 = !DILocation(line: 112, column: 7, scope: !2879)
!2890 = !DILocation(line: 117, column: 7, scope: !2879)
!2891 = !DILocation(line: 117, column: 7, scope: !2882)
!2892 = !DILocation(line: 119, column: 7, scope: !2879)
!2893 = !DILocation(line: 124, column: 7, scope: !2879)
!2894 = !DILocation(line: 124, column: 7, scope: !2882)
!2895 = !DILocation(line: 126, column: 7, scope: !2879)
!2896 = !DILocation(line: 131, column: 7, scope: !2879)
!2897 = !DILocation(line: 131, column: 7, scope: !2882)
!2898 = !DILocation(line: 134, column: 7, scope: !2879)
!2899 = !DILocation(line: 139, column: 7, scope: !2879)
!2900 = !DILocation(line: 139, column: 7, scope: !2882)
!2901 = !DILocation(line: 142, column: 7, scope: !2879)
!2902 = !DILocation(line: 147, column: 7, scope: !2879)
!2903 = !DILocation(line: 147, column: 7, scope: !2882)
!2904 = !DILocation(line: 151, column: 7, scope: !2879)
!2905 = !DILocation(line: 156, column: 7, scope: !2879)
!2906 = !DILocation(line: 156, column: 7, scope: !2882)
!2907 = !DILocation(line: 160, column: 7, scope: !2879)
!2908 = !DILocation(line: 167, column: 7, scope: !2879)
!2909 = !DILocation(line: 167, column: 7, scope: !2882)
!2910 = !DILocation(line: 171, column: 7, scope: !2879)
!2911 = !DILocation(line: 173, column: 1, scope: !2798)
!2912 = distinct !DISubprogram(name: "version_etc_ar", scope: !540, file: !540, line: 180, type: !2913, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2915)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{null, !2801, !6, !6, !6, !2853}
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921}
!2916 = !DILocalVariable(name: "stream", arg: 1, scope: !2912, file: !540, line: 180, type: !2801)
!2917 = !DILocalVariable(name: "command_name", arg: 2, scope: !2912, file: !540, line: 181, type: !6)
!2918 = !DILocalVariable(name: "package", arg: 3, scope: !2912, file: !540, line: 181, type: !6)
!2919 = !DILocalVariable(name: "version", arg: 4, scope: !2912, file: !540, line: 182, type: !6)
!2920 = !DILocalVariable(name: "authors", arg: 5, scope: !2912, file: !540, line: 182, type: !2853)
!2921 = !DILocalVariable(name: "n_authors", scope: !2912, file: !540, line: 184, type: !94)
!2922 = !DILocation(line: 180, column: 23, scope: !2912)
!2923 = !DILocation(line: 181, column: 29, scope: !2912)
!2924 = !DILocation(line: 181, column: 55, scope: !2912)
!2925 = !DILocation(line: 182, column: 29, scope: !2912)
!2926 = !DILocation(line: 182, column: 59, scope: !2912)
!2927 = !DILocation(line: 184, column: 10, scope: !2912)
!2928 = !DILocation(line: 186, column: 8, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2912, file: !540, line: 186, column: 3)
!2930 = !DILocation(line: 186, column: 23, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !2932, file: !540, discriminator: 1)
!2932 = distinct !DILexicalBlock(scope: !2929, file: !540, line: 186, column: 3)
!2933 = !DILocation(line: 186, column: 3, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !2929, file: !540, discriminator: 1)
!2935 = !DILocation(line: 186, column: 52, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !2932, file: !540, discriminator: 3)
!2937 = distinct !{!2937, !2938, !2939}
!2938 = !DILocation(line: 186, column: 3, scope: !2929)
!2939 = !DILocation(line: 187, column: 5, scope: !2929)
!2940 = !DILocation(line: 188, column: 3, scope: !2912)
!2941 = !DILocation(line: 189, column: 1, scope: !2912)
!2942 = distinct !DISubprogram(name: "version_etc_va", scope: !540, file: !540, line: 196, type: !2943, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2952)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{null, !2801, !6, !6, !6, !2945}
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !537, line: 189, size: 192, elements: !2947)
!2947 = !{!2948, !2949, !2950, !2951}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2946, file: !537, line: 189, baseType: !113, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2946, file: !537, line: 189, baseType: !113, size: 32, offset: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2946, file: !537, line: 189, baseType: !49, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2946, file: !537, line: 189, baseType: !49, size: 64, offset: 128)
!2952 = !{!2953, !2954, !2955, !2956, !2957, !2958, !2959}
!2953 = !DILocalVariable(name: "stream", arg: 1, scope: !2942, file: !540, line: 196, type: !2801)
!2954 = !DILocalVariable(name: "command_name", arg: 2, scope: !2942, file: !540, line: 197, type: !6)
!2955 = !DILocalVariable(name: "package", arg: 3, scope: !2942, file: !540, line: 197, type: !6)
!2956 = !DILocalVariable(name: "version", arg: 4, scope: !2942, file: !540, line: 198, type: !6)
!2957 = !DILocalVariable(name: "authors", arg: 5, scope: !2942, file: !540, line: 198, type: !2945)
!2958 = !DILocalVariable(name: "n_authors", scope: !2942, file: !540, line: 200, type: !94)
!2959 = !DILocalVariable(name: "authtab", scope: !2942, file: !540, line: 201, type: !2960)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2961 = !DILocation(line: 196, column: 23, scope: !2942)
!2962 = !DILocation(line: 197, column: 29, scope: !2942)
!2963 = !DILocation(line: 197, column: 55, scope: !2942)
!2964 = !DILocation(line: 198, column: 29, scope: !2942)
!2965 = !DILocation(line: 198, column: 46, scope: !2942)
!2966 = !DILocation(line: 201, column: 3, scope: !2942)
!2967 = !DILocation(line: 201, column: 15, scope: !2942)
!2968 = !DILocation(line: 200, column: 10, scope: !2942)
!2969 = !DILocation(line: 205, column: 35, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2971, file: !540, discriminator: 1)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !540, line: 203, column: 3)
!2972 = distinct !DILexicalBlock(scope: !2942, file: !540, line: 203, column: 3)
!2973 = !DILocation(line: 205, column: 35, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2971, file: !540, discriminator: 2)
!2975 = !DILocation(line: 205, column: 35, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2971, file: !540, discriminator: 3)
!2977 = !DILocation(line: 205, column: 35, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2971, file: !540, discriminator: 4)
!2979 = !DILocation(line: 205, column: 14, scope: !2978)
!2980 = !DILocation(line: 205, column: 33, scope: !2978)
!2981 = !DILocation(line: 205, column: 67, scope: !2978)
!2982 = !DILocation(line: 203, column: 3, scope: !2983)
!2983 = !DILexicalBlockFile(scope: !2972, file: !540, discriminator: 1)
!2984 = !DILocation(line: 208, column: 3, scope: !2942)
!2985 = !DILocation(line: 210, column: 1, scope: !2942)
!2986 = distinct !DISubprogram(name: "version_etc", scope: !540, file: !540, line: 227, type: !2987, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2801, !6, !6, !6, null}
!2989 = !{!2990, !2991, !2992, !2993, !2994}
!2990 = !DILocalVariable(name: "stream", arg: 1, scope: !2986, file: !540, line: 227, type: !2801)
!2991 = !DILocalVariable(name: "command_name", arg: 2, scope: !2986, file: !540, line: 228, type: !6)
!2992 = !DILocalVariable(name: "package", arg: 3, scope: !2986, file: !540, line: 228, type: !6)
!2993 = !DILocalVariable(name: "version", arg: 4, scope: !2986, file: !540, line: 229, type: !6)
!2994 = !DILocalVariable(name: "authors", scope: !2986, file: !540, line: 231, type: !2995)
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !764, line: 80, baseType: !2996)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !766, line: 50, baseType: !2997)
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !537, line: 231, baseType: !2998)
!2998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2946, size: 192, elements: !775)
!2999 = !DILocation(line: 227, column: 20, scope: !2986)
!3000 = !DILocation(line: 228, column: 26, scope: !2986)
!3001 = !DILocation(line: 228, column: 52, scope: !2986)
!3002 = !DILocation(line: 229, column: 26, scope: !2986)
!3003 = !DILocation(line: 231, column: 3, scope: !2986)
!3004 = !DILocation(line: 231, column: 11, scope: !2986)
!3005 = !DILocation(line: 233, column: 3, scope: !2986)
!3006 = !DILocation(line: 234, column: 3, scope: !2986)
!3007 = !DILocation(line: 235, column: 3, scope: !2986)
!3008 = !DILocation(line: 236, column: 1, scope: !2986)
!3009 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !540, file: !540, line: 239, type: !704, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !4)
!3010 = !DILocation(line: 245, column: 3, scope: !3009)
!3011 = !DILocation(line: 245, column: 3, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3009, file: !540, discriminator: 1)
!3013 = !DILocation(line: 251, column: 3, scope: !3009)
!3014 = !DILocation(line: 251, column: 3, scope: !3012)
!3015 = !DILocation(line: 256, column: 3, scope: !3009)
!3016 = !DILocation(line: 256, column: 3, scope: !3012)
!3017 = !DILocation(line: 258, column: 1, scope: !3009)
!3018 = distinct !DISubprogram(name: "xnmalloc", scope: !548, file: !548, line: 105, type: !3019, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!49, !94, !94}
!3021 = !{!3022, !3023}
!3022 = !DILocalVariable(name: "n", arg: 1, scope: !3018, file: !548, line: 105, type: !94)
!3023 = !DILocalVariable(name: "s", arg: 2, scope: !3018, file: !548, line: 105, type: !94)
!3024 = !DILocation(line: 105, column: 18, scope: !3018)
!3025 = !DILocation(line: 105, column: 28, scope: !3018)
!3026 = !DILocation(line: 107, column: 7, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3018, file: !548, line: 107, column: 7)
!3028 = !DILocation(line: 107, column: 7, scope: !3018)
!3029 = !DILocation(line: 108, column: 5, scope: !3027)
!3030 = !DILocation(line: 109, column: 21, scope: !3018)
!3031 = !DILocalVariable(name: "n", arg: 1, scope: !3032, file: !3033, line: 39, type: !94)
!3032 = distinct !DISubprogram(name: "xmalloc", scope: !3033, file: !3033, line: 39, type: !3034, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3036)
!3033 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!49, !94}
!3036 = !{!3031, !3037}
!3037 = !DILocalVariable(name: "p", scope: !3032, file: !3033, line: 41, type: !49)
!3038 = !DILocation(line: 39, column: 17, scope: !3032, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 109, column: 10, scope: !3018)
!3040 = !DILocation(line: 41, column: 13, scope: !3032, inlinedAt: !3039)
!3041 = !DILocation(line: 41, column: 9, scope: !3032, inlinedAt: !3039)
!3042 = !DILocation(line: 42, column: 8, scope: !3043, inlinedAt: !3039)
!3043 = distinct !DILexicalBlock(scope: !3032, file: !3033, line: 42, column: 7)
!3044 = !DILocation(line: 42, column: 15, scope: !3045, inlinedAt: !3039)
!3045 = !DILexicalBlockFile(scope: !3043, file: !3033, discriminator: 1)
!3046 = !DILocation(line: 42, column: 10, scope: !3043, inlinedAt: !3039)
!3047 = !DILocation(line: 43, column: 5, scope: !3043, inlinedAt: !3039)
!3048 = !DILocation(line: 109, column: 3, scope: !3018)
!3049 = !DILocation(line: 39, column: 17, scope: !3032)
!3050 = !DILocation(line: 41, column: 13, scope: !3032)
!3051 = !DILocation(line: 41, column: 9, scope: !3032)
!3052 = !DILocation(line: 42, column: 8, scope: !3043)
!3053 = !DILocation(line: 42, column: 15, scope: !3045)
!3054 = !DILocation(line: 42, column: 10, scope: !3043)
!3055 = !DILocation(line: 43, column: 5, scope: !3043)
!3056 = !DILocation(line: 44, column: 3, scope: !3032)
!3057 = distinct !DISubprogram(name: "xnrealloc", scope: !548, file: !548, line: 118, type: !3058, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!49, !49, !94, !94}
!3060 = !{!3061, !3062, !3063}
!3061 = !DILocalVariable(name: "p", arg: 1, scope: !3057, file: !548, line: 118, type: !49)
!3062 = !DILocalVariable(name: "n", arg: 2, scope: !3057, file: !548, line: 118, type: !94)
!3063 = !DILocalVariable(name: "s", arg: 3, scope: !3057, file: !548, line: 118, type: !94)
!3064 = !DILocation(line: 118, column: 18, scope: !3057)
!3065 = !DILocation(line: 118, column: 28, scope: !3057)
!3066 = !DILocation(line: 118, column: 38, scope: !3057)
!3067 = !DILocation(line: 120, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3057, file: !548, line: 120, column: 7)
!3069 = !DILocation(line: 120, column: 7, scope: !3057)
!3070 = !DILocation(line: 121, column: 5, scope: !3068)
!3071 = !DILocation(line: 122, column: 25, scope: !3057)
!3072 = !DILocalVariable(name: "p", arg: 1, scope: !3073, file: !3033, line: 51, type: !49)
!3073 = distinct !DISubprogram(name: "xrealloc", scope: !3033, file: !3033, line: 51, type: !3074, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!49, !49, !94}
!3076 = !{!3072, !3077}
!3077 = !DILocalVariable(name: "n", arg: 2, scope: !3073, file: !3033, line: 51, type: !94)
!3078 = !DILocation(line: 51, column: 17, scope: !3073, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 122, column: 10, scope: !3057)
!3080 = !DILocation(line: 51, column: 27, scope: !3073, inlinedAt: !3079)
!3081 = !DILocation(line: 53, column: 8, scope: !3082, inlinedAt: !3079)
!3082 = distinct !DILexicalBlock(scope: !3073, file: !3033, line: 53, column: 7)
!3083 = !DILocation(line: 53, column: 13, scope: !3084, inlinedAt: !3079)
!3084 = !DILexicalBlockFile(scope: !3082, file: !3033, discriminator: 1)
!3085 = !DILocation(line: 53, column: 10, scope: !3082, inlinedAt: !3079)
!3086 = !DILocation(line: 57, column: 7, scope: !3087, inlinedAt: !3079)
!3087 = distinct !DILexicalBlock(scope: !3082, file: !3033, line: 54, column: 5)
!3088 = !DILocation(line: 58, column: 7, scope: !3087, inlinedAt: !3079)
!3089 = !DILocation(line: 61, column: 7, scope: !3073, inlinedAt: !3079)
!3090 = !DILocation(line: 62, column: 8, scope: !3091, inlinedAt: !3079)
!3091 = distinct !DILexicalBlock(scope: !3073, file: !3033, line: 62, column: 7)
!3092 = !DILocation(line: 62, column: 13, scope: !3093, inlinedAt: !3079)
!3093 = !DILexicalBlockFile(scope: !3091, file: !3033, discriminator: 1)
!3094 = !DILocation(line: 62, column: 10, scope: !3091, inlinedAt: !3079)
!3095 = !DILocation(line: 63, column: 5, scope: !3091, inlinedAt: !3079)
!3096 = !DILocation(line: 122, column: 3, scope: !3057)
!3097 = !DILocation(line: 51, column: 17, scope: !3073)
!3098 = !DILocation(line: 51, column: 27, scope: !3073)
!3099 = !DILocation(line: 53, column: 8, scope: !3082)
!3100 = !DILocation(line: 53, column: 13, scope: !3084)
!3101 = !DILocation(line: 53, column: 10, scope: !3082)
!3102 = !DILocation(line: 57, column: 7, scope: !3087)
!3103 = !DILocation(line: 58, column: 7, scope: !3087)
!3104 = !DILocation(line: 61, column: 7, scope: !3073)
!3105 = !DILocation(line: 62, column: 8, scope: !3091)
!3106 = !DILocation(line: 62, column: 13, scope: !3093)
!3107 = !DILocation(line: 62, column: 10, scope: !3091)
!3108 = !DILocation(line: 63, column: 5, scope: !3091)
!3109 = !DILocation(line: 65, column: 1, scope: !3073)
!3110 = !DILocation(line: 180, column: 19, scope: !549)
!3111 = !DILocation(line: 180, column: 30, scope: !549)
!3112 = !DILocation(line: 180, column: 41, scope: !549)
!3113 = !DILocation(line: 182, column: 14, scope: !549)
!3114 = !DILocation(line: 182, column: 10, scope: !549)
!3115 = !DILocation(line: 184, column: 9, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !549, file: !548, line: 184, column: 7)
!3117 = !DILocation(line: 184, column: 7, scope: !549)
!3118 = !DILocation(line: 186, column: 13, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !548, line: 186, column: 11)
!3120 = distinct !DILexicalBlock(scope: !3116, file: !548, line: 185, column: 5)
!3121 = !DILocation(line: 186, column: 11, scope: !3120)
!3122 = !DILocation(line: 194, column: 30, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3119, file: !548, line: 187, column: 9)
!3124 = !DILocation(line: 195, column: 16, scope: !3123)
!3125 = !DILocation(line: 195, column: 13, scope: !3123)
!3126 = !DILocation(line: 196, column: 9, scope: !3123)
!3127 = !DILocation(line: 204, column: 69, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !548, line: 204, column: 11)
!3129 = distinct !DILexicalBlock(scope: !3116, file: !548, line: 199, column: 5)
!3130 = !DILocation(line: 205, column: 11, scope: !3128)
!3131 = !DILocation(line: 204, column: 11, scope: !3129)
!3132 = !DILocation(line: 206, column: 9, scope: !3128)
!3133 = !DILocation(line: 210, column: 7, scope: !549)
!3134 = !DILocation(line: 211, column: 25, scope: !549)
!3135 = !DILocation(line: 51, column: 17, scope: !3073, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 211, column: 10, scope: !549)
!3137 = !DILocation(line: 51, column: 27, scope: !3073, inlinedAt: !3136)
!3138 = !DILocation(line: 53, column: 10, scope: !3082, inlinedAt: !3136)
!3139 = !DILocation(line: 207, column: 14, scope: !3129)
!3140 = !DILocation(line: 207, column: 18, scope: !3129)
!3141 = !DILocation(line: 207, column: 9, scope: !3129)
!3142 = !DILocation(line: 53, column: 8, scope: !3082, inlinedAt: !3136)
!3143 = !DILocation(line: 57, column: 7, scope: !3087, inlinedAt: !3136)
!3144 = !DILocation(line: 58, column: 7, scope: !3087, inlinedAt: !3136)
!3145 = !DILocation(line: 61, column: 7, scope: !3073, inlinedAt: !3136)
!3146 = !DILocation(line: 62, column: 8, scope: !3091, inlinedAt: !3136)
!3147 = !DILocation(line: 62, column: 13, scope: !3093, inlinedAt: !3136)
!3148 = !DILocation(line: 62, column: 10, scope: !3091, inlinedAt: !3136)
!3149 = !DILocation(line: 63, column: 5, scope: !3091, inlinedAt: !3136)
!3150 = !DILocation(line: 211, column: 3, scope: !549)
!3151 = distinct !DISubprogram(name: "xcharalloc", scope: !548, file: !548, line: 220, type: !2070, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3152)
!3152 = !{!3153}
!3153 = !DILocalVariable(name: "n", arg: 1, scope: !3151, file: !548, line: 220, type: !94)
!3154 = !DILocation(line: 220, column: 20, scope: !3151)
!3155 = !DILocation(line: 39, column: 17, scope: !3032, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 222, column: 10, scope: !3151)
!3157 = !DILocation(line: 41, column: 13, scope: !3032, inlinedAt: !3156)
!3158 = !DILocation(line: 41, column: 9, scope: !3032, inlinedAt: !3156)
!3159 = !DILocation(line: 42, column: 8, scope: !3043, inlinedAt: !3156)
!3160 = !DILocation(line: 42, column: 15, scope: !3045, inlinedAt: !3156)
!3161 = !DILocation(line: 42, column: 10, scope: !3043, inlinedAt: !3156)
!3162 = !DILocation(line: 43, column: 5, scope: !3043, inlinedAt: !3156)
!3163 = !DILocation(line: 222, column: 3, scope: !3151)
!3164 = distinct !DISubprogram(name: "x2realloc", scope: !3033, file: !3033, line: 74, type: !3165, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!49, !49, !552}
!3167 = !{!3168, !3169}
!3168 = !DILocalVariable(name: "p", arg: 1, scope: !3164, file: !3033, line: 74, type: !49)
!3169 = !DILocalVariable(name: "pn", arg: 2, scope: !3164, file: !3033, line: 74, type: !552)
!3170 = !DILocation(line: 74, column: 18, scope: !3164)
!3171 = !DILocation(line: 74, column: 29, scope: !3164)
!3172 = !DILocation(line: 180, column: 19, scope: !549, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 76, column: 10, scope: !3164)
!3174 = !DILocation(line: 180, column: 30, scope: !549, inlinedAt: !3173)
!3175 = !DILocation(line: 180, column: 41, scope: !549, inlinedAt: !3173)
!3176 = !DILocation(line: 182, column: 14, scope: !549, inlinedAt: !3173)
!3177 = !DILocation(line: 182, column: 10, scope: !549, inlinedAt: !3173)
!3178 = !DILocation(line: 184, column: 9, scope: !3116, inlinedAt: !3173)
!3179 = !DILocation(line: 184, column: 7, scope: !549, inlinedAt: !3173)
!3180 = !DILocation(line: 186, column: 13, scope: !3119, inlinedAt: !3173)
!3181 = !DILocation(line: 186, column: 11, scope: !3120, inlinedAt: !3173)
!3182 = !DILocation(line: 210, column: 7, scope: !549, inlinedAt: !3173)
!3183 = !DILocation(line: 51, column: 17, scope: !3073, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 211, column: 10, scope: !549, inlinedAt: !3173)
!3185 = !DILocation(line: 51, column: 27, scope: !3073, inlinedAt: !3184)
!3186 = !DILocation(line: 53, column: 10, scope: !3082, inlinedAt: !3184)
!3187 = !DILocation(line: 205, column: 11, scope: !3128, inlinedAt: !3173)
!3188 = !DILocation(line: 204, column: 11, scope: !3129, inlinedAt: !3173)
!3189 = !DILocation(line: 206, column: 9, scope: !3128, inlinedAt: !3173)
!3190 = !DILocation(line: 207, column: 14, scope: !3129, inlinedAt: !3173)
!3191 = !DILocation(line: 207, column: 18, scope: !3129, inlinedAt: !3173)
!3192 = !DILocation(line: 207, column: 9, scope: !3129, inlinedAt: !3173)
!3193 = !DILocation(line: 53, column: 8, scope: !3082, inlinedAt: !3184)
!3194 = !DILocation(line: 57, column: 7, scope: !3087, inlinedAt: !3184)
!3195 = !DILocation(line: 58, column: 7, scope: !3087, inlinedAt: !3184)
!3196 = !DILocation(line: 61, column: 7, scope: !3073, inlinedAt: !3184)
!3197 = !DILocation(line: 62, column: 8, scope: !3091, inlinedAt: !3184)
!3198 = !DILocation(line: 62, column: 13, scope: !3093, inlinedAt: !3184)
!3199 = !DILocation(line: 62, column: 10, scope: !3091, inlinedAt: !3184)
!3200 = !DILocation(line: 63, column: 5, scope: !3091, inlinedAt: !3184)
!3201 = !DILocation(line: 76, column: 3, scope: !3164)
!3202 = distinct !DISubprogram(name: "xzalloc", scope: !3033, file: !3033, line: 84, type: !3034, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3203)
!3203 = !{!3204}
!3204 = !DILocalVariable(name: "s", arg: 1, scope: !3202, file: !3033, line: 84, type: !94)
!3205 = !DILocation(line: 84, column: 17, scope: !3202)
!3206 = !DILocation(line: 39, column: 17, scope: !3032, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 86, column: 18, scope: !3202)
!3208 = !DILocation(line: 41, column: 13, scope: !3032, inlinedAt: !3207)
!3209 = !DILocation(line: 41, column: 9, scope: !3032, inlinedAt: !3207)
!3210 = !DILocation(line: 42, column: 8, scope: !3043, inlinedAt: !3207)
!3211 = !DILocation(line: 42, column: 15, scope: !3045, inlinedAt: !3207)
!3212 = !DILocation(line: 42, column: 10, scope: !3043, inlinedAt: !3207)
!3213 = !DILocation(line: 43, column: 5, scope: !3043, inlinedAt: !3207)
!3214 = !DILocation(line: 86, column: 10, scope: !3202)
!3215 = !DILocation(line: 86, column: 3, scope: !3202)
!3216 = distinct !DISubprogram(name: "xcalloc", scope: !3033, file: !3033, line: 93, type: !3019, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3217)
!3217 = !{!3218, !3219, !3220}
!3218 = !DILocalVariable(name: "n", arg: 1, scope: !3216, file: !3033, line: 93, type: !94)
!3219 = !DILocalVariable(name: "s", arg: 2, scope: !3216, file: !3033, line: 93, type: !94)
!3220 = !DILocalVariable(name: "p", scope: !3216, file: !3033, line: 95, type: !49)
!3221 = !DILocation(line: 93, column: 17, scope: !3216)
!3222 = !DILocation(line: 93, column: 27, scope: !3216)
!3223 = !DILocation(line: 100, column: 7, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3216, file: !3033, line: 100, column: 7)
!3225 = !DILocation(line: 101, column: 7, scope: !3224)
!3226 = !DILocation(line: 101, column: 18, scope: !3227)
!3227 = !DILexicalBlockFile(scope: !3224, file: !3033, discriminator: 1)
!3228 = !DILocation(line: 95, column: 9, scope: !3216)
!3229 = !DILocation(line: 101, column: 16, scope: !3227)
!3230 = !DILocation(line: 100, column: 7, scope: !3231)
!3231 = !DILexicalBlockFile(scope: !3216, file: !3033, discriminator: 1)
!3232 = !DILocation(line: 102, column: 5, scope: !3224)
!3233 = !DILocation(line: 103, column: 3, scope: !3216)
!3234 = distinct !DISubprogram(name: "xmemdup", scope: !3033, file: !3033, line: 111, type: !3235, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!49, !501, !94}
!3237 = !{!3238, !3239}
!3238 = !DILocalVariable(name: "p", arg: 1, scope: !3234, file: !3033, line: 111, type: !501)
!3239 = !DILocalVariable(name: "s", arg: 2, scope: !3234, file: !3033, line: 111, type: !94)
!3240 = !DILocation(line: 111, column: 22, scope: !3234)
!3241 = !DILocation(line: 111, column: 32, scope: !3234)
!3242 = !DILocation(line: 39, column: 17, scope: !3032, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 113, column: 18, scope: !3234)
!3244 = !DILocation(line: 41, column: 13, scope: !3032, inlinedAt: !3243)
!3245 = !DILocation(line: 41, column: 9, scope: !3032, inlinedAt: !3243)
!3246 = !DILocation(line: 42, column: 8, scope: !3043, inlinedAt: !3243)
!3247 = !DILocation(line: 42, column: 15, scope: !3045, inlinedAt: !3243)
!3248 = !DILocation(line: 42, column: 10, scope: !3043, inlinedAt: !3243)
!3249 = !DILocation(line: 43, column: 5, scope: !3043, inlinedAt: !3243)
!3250 = !DILocation(line: 113, column: 10, scope: !3234)
!3251 = !DILocation(line: 113, column: 3, scope: !3234)
!3252 = distinct !DISubprogram(name: "xstrdup", scope: !3033, file: !3033, line: 119, type: !2277, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3253)
!3253 = !{!3254}
!3254 = !DILocalVariable(name: "string", arg: 1, scope: !3252, file: !3033, line: 119, type: !6)
!3255 = !DILocation(line: 119, column: 22, scope: !3252)
!3256 = !DILocation(line: 121, column: 27, scope: !3252)
!3257 = !DILocation(line: 121, column: 43, scope: !3252)
!3258 = !DILocation(line: 111, column: 22, scope: !3234, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 121, column: 10, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !3252, file: !3033, discriminator: 1)
!3261 = !DILocation(line: 111, column: 32, scope: !3234, inlinedAt: !3259)
!3262 = !DILocation(line: 39, column: 17, scope: !3032, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 113, column: 18, scope: !3234, inlinedAt: !3259)
!3264 = !DILocation(line: 41, column: 13, scope: !3032, inlinedAt: !3263)
!3265 = !DILocation(line: 41, column: 9, scope: !3032, inlinedAt: !3263)
!3266 = !DILocation(line: 42, column: 8, scope: !3043, inlinedAt: !3263)
!3267 = !DILocation(line: 42, column: 15, scope: !3045, inlinedAt: !3263)
!3268 = !DILocation(line: 42, column: 10, scope: !3043, inlinedAt: !3263)
!3269 = !DILocation(line: 43, column: 5, scope: !3043, inlinedAt: !3263)
!3270 = !DILocation(line: 113, column: 10, scope: !3234, inlinedAt: !3259)
!3271 = !DILocation(line: 121, column: 3, scope: !3252)
!3272 = distinct !DISubprogram(name: "xalloc_die", scope: !3273, file: !3273, line: 32, type: !704, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !561, variables: !4)
!3273 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3274 = !DILocation(line: 34, column: 10, scope: !3272)
!3275 = !DILocation(line: 34, column: 33, scope: !3272)
!3276 = !DILocation(line: 34, column: 3, scope: !3277)
!3277 = !DILexicalBlockFile(scope: !3272, file: !3273, discriminator: 1)
!3278 = !DILocation(line: 40, column: 3, scope: !3272)
!3279 = distinct !DISubprogram(name: "rpl_calloc", scope: !3280, file: !3280, line: 42, type: !3019, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3281)
!3280 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3281 = !{!3282, !3283, !3284, !3285}
!3282 = !DILocalVariable(name: "n", arg: 1, scope: !3279, file: !3280, line: 42, type: !94)
!3283 = !DILocalVariable(name: "s", arg: 2, scope: !3279, file: !3280, line: 42, type: !94)
!3284 = !DILocalVariable(name: "result", scope: !3279, file: !3280, line: 44, type: !49)
!3285 = !DILocalVariable(name: "bytes", scope: !3286, file: !3280, line: 56, type: !94)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !3280, line: 53, column: 5)
!3287 = distinct !DILexicalBlock(scope: !3279, file: !3280, line: 47, column: 7)
!3288 = !DILocation(line: 42, column: 20, scope: !3279)
!3289 = !DILocation(line: 42, column: 30, scope: !3279)
!3290 = !DILocation(line: 47, column: 9, scope: !3287)
!3291 = !DILocation(line: 47, column: 19, scope: !3292)
!3292 = !DILexicalBlockFile(scope: !3287, file: !3280, discriminator: 1)
!3293 = !DILocation(line: 47, column: 14, scope: !3287)
!3294 = !DILocation(line: 56, column: 24, scope: !3286)
!3295 = !DILocation(line: 56, column: 14, scope: !3286)
!3296 = !DILocation(line: 57, column: 17, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3286, file: !3280, line: 57, column: 11)
!3298 = !DILocation(line: 57, column: 21, scope: !3297)
!3299 = !DILocation(line: 57, column: 11, scope: !3286)
!3300 = !DILocation(line: 59, column: 11, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3297, file: !3280, line: 58, column: 9)
!3302 = !DILocation(line: 59, column: 17, scope: !3301)
!3303 = !DILocation(line: 65, column: 12, scope: !3279)
!3304 = !DILocation(line: 44, column: 9, scope: !3279)
!3305 = !DILocation(line: 72, column: 3, scope: !3279)
!3306 = !DILocation(line: 73, column: 1, scope: !3279)
!3307 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3308, file: !3308, line: 334, type: !3309, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3323)
!3308 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!94, !3311, !6, !94, !3312}
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1039, line: 107, baseType: !3314)
!3314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1039, line: 95, baseType: !3315)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1039, line: 83, size: 64, elements: !3316)
!3316 = !{!3317, !3318}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3315, file: !1039, line: 85, baseType: !25, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3315, file: !1039, line: 94, baseType: !3319, size: 32, offset: 32)
!3319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !1039, line: 86, size: 32, elements: !3320)
!3320 = !{!3321, !3322}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3319, file: !1039, line: 89, baseType: !113, size: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3319, file: !1039, line: 93, baseType: !1049, size: 32)
!3323 = !{!3324, !3325, !3326, !3327, !3328, !3329, !3330}
!3324 = !DILocalVariable(name: "pwc", arg: 1, scope: !3307, file: !3308, line: 334, type: !3311)
!3325 = !DILocalVariable(name: "s", arg: 2, scope: !3307, file: !3308, line: 334, type: !6)
!3326 = !DILocalVariable(name: "n", arg: 3, scope: !3307, file: !3308, line: 334, type: !94)
!3327 = !DILocalVariable(name: "ps", arg: 4, scope: !3307, file: !3308, line: 334, type: !3312)
!3328 = !DILocalVariable(name: "ret", scope: !3307, file: !3308, line: 336, type: !94)
!3329 = !DILocalVariable(name: "wc", scope: !3307, file: !3308, line: 337, type: !1054)
!3330 = !DILocalVariable(name: "uc", scope: !3331, file: !3308, line: 398, type: !494)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !3308, line: 397, column: 5)
!3332 = distinct !DILexicalBlock(scope: !3307, file: !3308, line: 396, column: 7)
!3333 = !DILocation(line: 334, column: 23, scope: !3307)
!3334 = !DILocation(line: 334, column: 40, scope: !3307)
!3335 = !DILocation(line: 334, column: 50, scope: !3307)
!3336 = !DILocation(line: 334, column: 64, scope: !3307)
!3337 = !DILocation(line: 337, column: 3, scope: !3307)
!3338 = !DILocation(line: 353, column: 9, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3307, file: !3308, line: 353, column: 7)
!3340 = !DILocation(line: 353, column: 7, scope: !3307)
!3341 = !DILocation(line: 388, column: 9, scope: !3307)
!3342 = !DILocation(line: 336, column: 10, scope: !3307)
!3343 = !DILocation(line: 396, column: 19, scope: !3332)
!3344 = !DILocation(line: 396, column: 31, scope: !3345)
!3345 = !DILexicalBlockFile(scope: !3332, file: !3308, discriminator: 1)
!3346 = !DILocation(line: 396, column: 26, scope: !3332)
!3347 = !DILocation(line: 396, column: 41, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !3332, file: !3308, discriminator: 2)
!3349 = !DILocation(line: 396, column: 7, scope: !3350)
!3350 = !DILexicalBlockFile(scope: !3307, file: !3308, discriminator: 2)
!3351 = !DILocation(line: 398, column: 26, scope: !3331)
!3352 = !DILocation(line: 398, column: 21, scope: !3331)
!3353 = !DILocation(line: 399, column: 14, scope: !3331)
!3354 = !DILocation(line: 399, column: 12, scope: !3331)
!3355 = !DILocation(line: 405, column: 1, scope: !3307)
!3356 = distinct !DISubprogram(name: "close_stream", scope: !3357, file: !3357, line: 56, type: !3358, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3400)
!3357 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!25, !3360}
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !764, line: 49, baseType: !3362)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2804, line: 241, size: 1728, elements: !3363)
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3362, file: !2804, line: 242, baseType: !25, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3362, file: !2804, line: 247, baseType: !50, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3362, file: !2804, line: 248, baseType: !50, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3362, file: !2804, line: 249, baseType: !50, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3362, file: !2804, line: 250, baseType: !50, size: 64, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3362, file: !2804, line: 251, baseType: !50, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3362, file: !2804, line: 252, baseType: !50, size: 64, offset: 384)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3362, file: !2804, line: 253, baseType: !50, size: 64, offset: 448)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3362, file: !2804, line: 254, baseType: !50, size: 64, offset: 512)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3362, file: !2804, line: 256, baseType: !50, size: 64, offset: 576)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3362, file: !2804, line: 257, baseType: !50, size: 64, offset: 640)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3362, file: !2804, line: 258, baseType: !50, size: 64, offset: 704)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3362, file: !2804, line: 260, baseType: !3377, size: 64, offset: 768)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2804, line: 156, size: 192, elements: !3379)
!3379 = !{!3380, !3381, !3383}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3378, file: !2804, line: 157, baseType: !3377, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3378, file: !2804, line: 158, baseType: !3382, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3378, file: !2804, line: 162, baseType: !25, size: 32, offset: 128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3362, file: !2804, line: 262, baseType: !3382, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3362, file: !2804, line: 264, baseType: !25, size: 32, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3362, file: !2804, line: 268, baseType: !25, size: 32, offset: 928)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3362, file: !2804, line: 270, baseType: !2830, size: 64, offset: 960)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3362, file: !2804, line: 274, baseType: !93, size: 16, offset: 1024)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3362, file: !2804, line: 275, baseType: !2835, size: 8, offset: 1040)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3362, file: !2804, line: 276, baseType: !2837, size: 8, offset: 1048)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3362, file: !2804, line: 280, baseType: !2839, size: 64, offset: 1088)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3362, file: !2804, line: 289, baseType: !2842, size: 64, offset: 1152)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3362, file: !2804, line: 297, baseType: !49, size: 64, offset: 1216)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3362, file: !2804, line: 298, baseType: !49, size: 64, offset: 1280)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3362, file: !2804, line: 299, baseType: !49, size: 64, offset: 1344)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3362, file: !2804, line: 300, baseType: !49, size: 64, offset: 1408)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3362, file: !2804, line: 302, baseType: !94, size: 64, offset: 1472)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3362, file: !2804, line: 303, baseType: !25, size: 32, offset: 1536)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3362, file: !2804, line: 305, baseType: !2850, size: 160, offset: 1568)
!3400 = !{!3401, !3402, !3404, !3405}
!3401 = !DILocalVariable(name: "stream", arg: 1, scope: !3356, file: !3357, line: 56, type: !3360)
!3402 = !DILocalVariable(name: "some_pending", scope: !3356, file: !3357, line: 58, type: !3403)
!3403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3404 = !DILocalVariable(name: "prev_fail", scope: !3356, file: !3357, line: 59, type: !3403)
!3405 = !DILocalVariable(name: "fclose_fail", scope: !3356, file: !3357, line: 60, type: !3403)
!3406 = !DILocation(line: 56, column: 21, scope: !3356)
!3407 = !DILocation(line: 58, column: 30, scope: !3356)
!3408 = !DILocalVariable(name: "__stream", arg: 1, scope: !3409, file: !3410, line: 132, type: !3360)
!3409 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3410, file: !3410, line: 132, type: !3358, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3411)
!3410 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3411 = !{!3408}
!3412 = !DILocation(line: 132, column: 1, scope: !3409, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 59, column: 27, scope: !3356)
!3414 = !DILocation(line: 134, column: 10, scope: !3409, inlinedAt: !3413)
!3415 = !{!3416, !664, i64 0}
!3416 = !{!"_IO_FILE", !664, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !598, i64 32, !598, i64 40, !598, i64 48, !598, i64 56, !598, i64 64, !598, i64 72, !598, i64 80, !598, i64 88, !598, i64 96, !598, i64 104, !664, i64 112, !664, i64 116, !2115, i64 120, !1407, i64 128, !599, i64 130, !599, i64 131, !598, i64 136, !2115, i64 144, !598, i64 152, !598, i64 160, !598, i64 168, !598, i64 176, !2115, i64 184, !664, i64 192, !599, i64 196}
!3417 = !DILocation(line: 59, column: 43, scope: !3356)
!3418 = !DILocation(line: 60, column: 29, scope: !3356)
!3419 = !DILocation(line: 60, column: 45, scope: !3356)
!3420 = !DILocation(line: 70, column: 17, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3356, file: !3357, line: 70, column: 7)
!3422 = !DILocation(line: 70, column: 33, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3421, file: !3357, discriminator: 1)
!3424 = !DILocation(line: 70, column: 53, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3421, file: !3357, discriminator: 3)
!3426 = !DILocation(line: 70, column: 7, scope: !3427)
!3427 = !DILexicalBlockFile(scope: !3356, file: !3357, discriminator: 3)
!3428 = !DILocation(line: 72, column: 11, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3421, file: !3357, line: 71, column: 5)
!3430 = !DILocation(line: 73, column: 9, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3429, file: !3357, line: 72, column: 11)
!3432 = !DILocation(line: 73, column: 15, scope: !3431)
!3433 = !DILocation(line: 78, column: 1, scope: !3356)
!3434 = distinct !DISubprogram(name: "hard_locale", scope: !3435, file: !3435, line: 38, type: !3436, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3438)
!3435 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!17, !25}
!3438 = !{!3439, !3440, !3441, !3442, !3449, !3450, !3452, !3453, !3455, !3456, !3458}
!3439 = !DILocalVariable(name: "category", arg: 1, scope: !3434, file: !3435, line: 38, type: !25)
!3440 = !DILocalVariable(name: "hard", scope: !3434, file: !3435, line: 40, type: !17)
!3441 = !DILocalVariable(name: "p", scope: !3434, file: !3435, line: 41, type: !6)
!3442 = !DILocalVariable(name: "__s1_len", scope: !3443, file: !3435, line: 47, type: !94)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !3435, line: 47, column: 15)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !3435, line: 47, column: 15)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !3435, line: 46, column: 9)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3435, line: 45, column: 11)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !3435, line: 44, column: 5)
!3448 = distinct !DILexicalBlock(scope: !3434, file: !3435, line: 43, column: 7)
!3449 = !DILocalVariable(name: "__s2_len", scope: !3443, file: !3435, line: 47, type: !94)
!3450 = !DILocalVariable(name: "__s2", scope: !3451, file: !3435, line: 47, type: !503)
!3451 = distinct !DILexicalBlock(scope: !3443, file: !3435, line: 47, column: 15)
!3452 = !DILocalVariable(name: "__result", scope: !3451, file: !3435, line: 47, type: !25)
!3453 = !DILocalVariable(name: "__s1_len", scope: !3454, file: !3435, line: 47, type: !94)
!3454 = distinct !DILexicalBlock(scope: !3444, file: !3435, line: 47, column: 39)
!3455 = !DILocalVariable(name: "__s2_len", scope: !3454, file: !3435, line: 47, type: !94)
!3456 = !DILocalVariable(name: "__s2", scope: !3457, file: !3435, line: 47, type: !503)
!3457 = distinct !DILexicalBlock(scope: !3454, file: !3435, line: 47, column: 39)
!3458 = !DILocalVariable(name: "__result", scope: !3457, file: !3435, line: 47, type: !25)
!3459 = !DILocation(line: 38, column: 18, scope: !3434)
!3460 = !DILocation(line: 40, column: 8, scope: !3434)
!3461 = !DILocation(line: 41, column: 19, scope: !3434)
!3462 = !DILocation(line: 41, column: 15, scope: !3434)
!3463 = !DILocation(line: 43, column: 7, scope: !3448)
!3464 = !DILocation(line: 43, column: 7, scope: !3434)
!3465 = !DILocation(line: 47, column: 15, scope: !3443)
!3466 = !DILocation(line: 47, column: 15, scope: !3451)
!3467 = !DILocation(line: 47, column: 15, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !3451, file: !3435, discriminator: 2)
!3469 = !DILocation(line: 47, column: 15, scope: !3470)
!3470 = !DILexicalBlockFile(scope: !3471, file: !3435, discriminator: 3)
!3471 = distinct !DILexicalBlock(scope: !3451, file: !3435, line: 47, column: 15)
!3472 = !DILocation(line: 47, column: 15, scope: !3473)
!3473 = !DILexicalBlockFile(scope: !3471, file: !3435, discriminator: 2)
!3474 = !DILocation(line: 47, column: 15, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !3476, file: !3435, discriminator: 4)
!3476 = distinct !DILexicalBlock(scope: !3471, file: !3435, line: 47, column: 15)
!3477 = !DILocation(line: 47, column: 15, scope: !3478)
!3478 = !DILexicalBlockFile(scope: !3443, file: !3435, discriminator: 11)
!3479 = !DILocation(line: 47, column: 36, scope: !3480)
!3480 = !DILexicalBlockFile(scope: !3444, file: !3435, discriminator: 13)
!3481 = !DILocation(line: 47, column: 39, scope: !3454)
!3482 = !DILocation(line: 47, column: 39, scope: !3483)
!3483 = !DILexicalBlockFile(scope: !3454, file: !3435, discriminator: 26)
!3484 = !DILocation(line: 47, column: 59, scope: !3485)
!3485 = !DILexicalBlockFile(scope: !3444, file: !3435, discriminator: 27)
!3486 = !DILocation(line: 47, column: 15, scope: !3487)
!3487 = !DILexicalBlockFile(scope: !3445, file: !3435, discriminator: 27)
!3488 = !DILocation(line: 48, column: 13, scope: !3444)
!3489 = !DILocation(line: 71, column: 3, scope: !3434)
!3490 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3491, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!6}
!3493 = !{!3494, !3495, !3496, !3501}
!3494 = !DILocalVariable(name: "codeset", scope: !3490, file: !496, line: 395, type: !6)
!3495 = !DILocalVariable(name: "aliases", scope: !3490, file: !496, line: 396, type: !6)
!3496 = !DILocalVariable(name: "__s1_len", scope: !3497, file: !496, line: 592, type: !94)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !496, line: 592, column: 9)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !496, line: 592, column: 9)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !496, line: 589, column: 3)
!3500 = distinct !DILexicalBlock(scope: !3490, file: !496, line: 589, column: 3)
!3501 = !DILocalVariable(name: "__s2_len", scope: !3497, file: !496, line: 592, type: !94)
!3502 = !DILocalVariable(name: "buf1", scope: !3503, file: !496, line: 196, type: !3570)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !496, line: 194, column: 21)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !496, line: 193, column: 19)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !496, line: 193, column: 19)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !496, line: 188, column: 17)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !496, line: 181, column: 19)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !496, line: 177, column: 13)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !496, line: 173, column: 15)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !496, line: 161, column: 9)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !496, line: 157, column: 11)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !496, line: 130, column: 5)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !496, line: 129, column: 7)
!3514 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3491, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3515)
!3515 = !{!3516, !3517, !3518, !3519, !3520, !3522, !3523, !3524, !3525, !3566, !3567, !3568, !3502, !3569, !3573, !3574, !3575}
!3516 = !DILocalVariable(name: "cp", scope: !3514, file: !496, line: 126, type: !6)
!3517 = !DILocalVariable(name: "dir", scope: !3512, file: !496, line: 132, type: !6)
!3518 = !DILocalVariable(name: "base", scope: !3512, file: !496, line: 133, type: !6)
!3519 = !DILocalVariable(name: "file_name", scope: !3512, file: !496, line: 134, type: !50)
!3520 = !DILocalVariable(name: "dir_len", scope: !3521, file: !496, line: 144, type: !94)
!3521 = distinct !DILexicalBlock(scope: !3512, file: !496, line: 143, column: 7)
!3522 = !DILocalVariable(name: "base_len", scope: !3521, file: !496, line: 145, type: !94)
!3523 = !DILocalVariable(name: "add_slash", scope: !3521, file: !496, line: 146, type: !25)
!3524 = !DILocalVariable(name: "fd", scope: !3510, file: !496, line: 162, type: !25)
!3525 = !DILocalVariable(name: "fp", scope: !3508, file: !496, line: 178, type: !3526)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !764, line: 49, baseType: !3528)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2804, line: 241, size: 1728, elements: !3529)
!3529 = !{!3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3528, file: !2804, line: 242, baseType: !25, size: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3528, file: !2804, line: 247, baseType: !50, size: 64, offset: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3528, file: !2804, line: 248, baseType: !50, size: 64, offset: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3528, file: !2804, line: 249, baseType: !50, size: 64, offset: 192)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3528, file: !2804, line: 250, baseType: !50, size: 64, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3528, file: !2804, line: 251, baseType: !50, size: 64, offset: 320)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3528, file: !2804, line: 252, baseType: !50, size: 64, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3528, file: !2804, line: 253, baseType: !50, size: 64, offset: 448)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3528, file: !2804, line: 254, baseType: !50, size: 64, offset: 512)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3528, file: !2804, line: 256, baseType: !50, size: 64, offset: 576)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3528, file: !2804, line: 257, baseType: !50, size: 64, offset: 640)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3528, file: !2804, line: 258, baseType: !50, size: 64, offset: 704)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3528, file: !2804, line: 260, baseType: !3543, size: 64, offset: 768)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2804, line: 156, size: 192, elements: !3545)
!3545 = !{!3546, !3547, !3549}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3544, file: !2804, line: 157, baseType: !3543, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3544, file: !2804, line: 158, baseType: !3548, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3544, file: !2804, line: 162, baseType: !25, size: 32, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3528, file: !2804, line: 262, baseType: !3548, size: 64, offset: 832)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3528, file: !2804, line: 264, baseType: !25, size: 32, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3528, file: !2804, line: 268, baseType: !25, size: 32, offset: 928)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3528, file: !2804, line: 270, baseType: !2830, size: 64, offset: 960)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3528, file: !2804, line: 274, baseType: !93, size: 16, offset: 1024)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3528, file: !2804, line: 275, baseType: !2835, size: 8, offset: 1040)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3528, file: !2804, line: 276, baseType: !2837, size: 8, offset: 1048)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3528, file: !2804, line: 280, baseType: !2839, size: 64, offset: 1088)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3528, file: !2804, line: 289, baseType: !2842, size: 64, offset: 1152)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3528, file: !2804, line: 297, baseType: !49, size: 64, offset: 1216)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3528, file: !2804, line: 298, baseType: !49, size: 64, offset: 1280)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3528, file: !2804, line: 299, baseType: !49, size: 64, offset: 1344)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3528, file: !2804, line: 300, baseType: !49, size: 64, offset: 1408)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3528, file: !2804, line: 302, baseType: !94, size: 64, offset: 1472)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3528, file: !2804, line: 303, baseType: !25, size: 32, offset: 1536)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3528, file: !2804, line: 305, baseType: !2850, size: 160, offset: 1568)
!3566 = !DILocalVariable(name: "res_ptr", scope: !3506, file: !496, line: 190, type: !50)
!3567 = !DILocalVariable(name: "res_size", scope: !3506, file: !496, line: 191, type: !94)
!3568 = !DILocalVariable(name: "c", scope: !3503, file: !496, line: 195, type: !25)
!3569 = !DILocalVariable(name: "buf2", scope: !3503, file: !496, line: 197, type: !3570)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3571)
!3571 = !{!3572}
!3572 = !DISubrange(count: 51)
!3573 = !DILocalVariable(name: "l1", scope: !3503, file: !496, line: 198, type: !94)
!3574 = !DILocalVariable(name: "l2", scope: !3503, file: !496, line: 198, type: !94)
!3575 = !DILocalVariable(name: "old_res_ptr", scope: !3503, file: !496, line: 199, type: !50)
!3576 = !DILocation(line: 196, column: 28, scope: !3503, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 589, column: 18, scope: !3500)
!3578 = !DILocation(line: 197, column: 28, scope: !3503, inlinedAt: !3577)
!3579 = !DILocation(line: 403, column: 13, scope: !3490)
!3580 = !DILocation(line: 395, column: 15, scope: !3490)
!3581 = !DILocation(line: 584, column: 15, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3490, file: !496, line: 584, column: 7)
!3583 = !DILocation(line: 584, column: 7, scope: !3490)
!3584 = !DILocation(line: 128, column: 8, scope: !3514, inlinedAt: !3577)
!3585 = !DILocation(line: 126, column: 15, scope: !3514, inlinedAt: !3577)
!3586 = !DILocation(line: 129, column: 10, scope: !3513, inlinedAt: !3577)
!3587 = !DILocation(line: 129, column: 7, scope: !3514, inlinedAt: !3577)
!3588 = !DILocation(line: 138, column: 13, scope: !3512, inlinedAt: !3577)
!3589 = !DILocation(line: 132, column: 19, scope: !3512, inlinedAt: !3577)
!3590 = !DILocation(line: 139, column: 15, scope: !3591, inlinedAt: !3577)
!3591 = distinct !DILexicalBlock(scope: !3512, file: !496, line: 139, column: 11)
!3592 = !DILocation(line: 139, column: 23, scope: !3591, inlinedAt: !3577)
!3593 = !DILocation(line: 139, column: 26, scope: !3594, inlinedAt: !3577)
!3594 = !DILexicalBlockFile(scope: !3591, file: !496, discriminator: 1)
!3595 = !DILocation(line: 139, column: 33, scope: !3594, inlinedAt: !3577)
!3596 = !DILocation(line: 139, column: 11, scope: !3597, inlinedAt: !3577)
!3597 = !DILexicalBlockFile(scope: !3512, file: !496, discriminator: 1)
!3598 = !DILocation(line: 140, column: 9, scope: !3591, inlinedAt: !3577)
!3599 = !DILocation(line: 144, column: 26, scope: !3521, inlinedAt: !3577)
!3600 = !DILocation(line: 144, column: 16, scope: !3521, inlinedAt: !3577)
!3601 = !DILocation(line: 145, column: 16, scope: !3521, inlinedAt: !3577)
!3602 = !DILocation(line: 146, column: 34, scope: !3521, inlinedAt: !3577)
!3603 = !DILocation(line: 146, column: 38, scope: !3521, inlinedAt: !3577)
!3604 = !DILocation(line: 146, column: 42, scope: !3605, inlinedAt: !3577)
!3605 = !DILexicalBlockFile(scope: !3521, file: !496, discriminator: 1)
!3606 = !DILocation(line: 146, column: 41, scope: !3605, inlinedAt: !3577)
!3607 = !DILocation(line: 147, column: 48, scope: !3521, inlinedAt: !3577)
!3608 = !DILocation(line: 147, column: 46, scope: !3521, inlinedAt: !3577)
!3609 = !DILocation(line: 147, column: 69, scope: !3521, inlinedAt: !3577)
!3610 = !DILocation(line: 147, column: 30, scope: !3521, inlinedAt: !3577)
!3611 = !DILocation(line: 134, column: 13, scope: !3512, inlinedAt: !3577)
!3612 = !DILocation(line: 148, column: 13, scope: !3521, inlinedAt: !3577)
!3613 = !DILocation(line: 150, column: 13, scope: !3614, inlinedAt: !3577)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !496, line: 149, column: 11)
!3615 = distinct !DILexicalBlock(scope: !3521, file: !496, line: 148, column: 13)
!3616 = !DILocation(line: 151, column: 17, scope: !3614, inlinedAt: !3577)
!3617 = !DILocation(line: 152, column: 34, scope: !3618, inlinedAt: !3577)
!3618 = distinct !DILexicalBlock(scope: !3614, file: !496, line: 151, column: 17)
!3619 = !DILocation(line: 153, column: 41, scope: !3614, inlinedAt: !3577)
!3620 = !DILocation(line: 153, column: 13, scope: !3614, inlinedAt: !3577)
!3621 = !DILocation(line: 157, column: 11, scope: !3512, inlinedAt: !3577)
!3622 = !DILocation(line: 171, column: 16, scope: !3510, inlinedAt: !3577)
!3623 = !DILocation(line: 162, column: 15, scope: !3510, inlinedAt: !3577)
!3624 = !DILocation(line: 173, column: 18, scope: !3509, inlinedAt: !3577)
!3625 = !DILocation(line: 173, column: 15, scope: !3510, inlinedAt: !3577)
!3626 = !DILocation(line: 180, column: 20, scope: !3508, inlinedAt: !3577)
!3627 = !DILocation(line: 178, column: 21, scope: !3508, inlinedAt: !3577)
!3628 = !DILocation(line: 181, column: 22, scope: !3507, inlinedAt: !3577)
!3629 = !DILocation(line: 181, column: 19, scope: !3508, inlinedAt: !3577)
!3630 = !DILocation(line: 190, column: 25, scope: !3506, inlinedAt: !3577)
!3631 = !DILocation(line: 184, column: 19, scope: !3632, inlinedAt: !3577)
!3632 = distinct !DILexicalBlock(scope: !3507, file: !496, line: 182, column: 17)
!3633 = !DILocation(line: 186, column: 17, scope: !3632, inlinedAt: !3577)
!3634 = !DILocation(line: 191, column: 26, scope: !3506, inlinedAt: !3577)
!3635 = !DILocation(line: 196, column: 23, scope: !3503, inlinedAt: !3577)
!3636 = !DILocation(line: 197, column: 23, scope: !3503, inlinedAt: !3577)
!3637 = !DILocalVariable(name: "__fp", arg: 1, scope: !3638, file: !3410, line: 63, type: !3526)
!3638 = distinct !DISubprogram(name: "getc_unlocked", scope: !3410, file: !3410, line: 63, type: !3639, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3641)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!25, !3526}
!3641 = !{!3637}
!3642 = !DILocation(line: 63, column: 22, scope: !3638, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 201, column: 27, scope: !3503, inlinedAt: !3577)
!3644 = !DILocation(line: 65, column: 10, scope: !3638, inlinedAt: !3643)
!3645 = !{!3416, !598, i64 8}
!3646 = !{!3416, !598, i64 16}
!3647 = !{!"branch_weights", i32 2000, i32 1}
!3648 = !DILocation(line: 65, column: 10, scope: !3649, inlinedAt: !3643)
!3649 = !DILexicalBlockFile(scope: !3638, file: !3410, discriminator: 1)
!3650 = !DILocation(line: 65, column: 10, scope: !3651, inlinedAt: !3643)
!3651 = !DILexicalBlockFile(scope: !3638, file: !3410, discriminator: 2)
!3652 = !DILocation(line: 65, column: 10, scope: !3653, inlinedAt: !3643)
!3653 = !DILexicalBlockFile(scope: !3638, file: !3410, discriminator: 3)
!3654 = !DILocation(line: 195, column: 27, scope: !3503, inlinedAt: !3577)
!3655 = !DILocation(line: 202, column: 27, scope: !3503, inlinedAt: !3577)
!3656 = !DILocation(line: 63, column: 22, scope: !3638, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 210, column: 33, scope: !3658, inlinedAt: !3577)
!3658 = distinct !DILexicalBlock(scope: !3659, file: !496, line: 207, column: 25)
!3659 = distinct !DILexicalBlock(scope: !3503, file: !496, line: 206, column: 27)
!3660 = !DILocation(line: 65, column: 10, scope: !3638, inlinedAt: !3657)
!3661 = !DILocation(line: 65, column: 10, scope: !3649, inlinedAt: !3657)
!3662 = !DILocation(line: 65, column: 10, scope: !3651, inlinedAt: !3657)
!3663 = !DILocation(line: 65, column: 10, scope: !3653, inlinedAt: !3657)
!3664 = !DILocation(line: 210, column: 29, scope: !3665, inlinedAt: !3577)
!3665 = !DILexicalBlockFile(scope: !3658, file: !496, discriminator: 1)
!3666 = distinct !{!3666, !3667, !3668}
!3667 = !DILocation(line: 193, column: 19, scope: !3505)
!3668 = !DILocation(line: 241, column: 21, scope: !3505)
!3669 = !DILocation(line: 216, column: 23, scope: !3503, inlinedAt: !3577)
!3670 = !DILocation(line: 217, column: 27, scope: !3671, inlinedAt: !3577)
!3671 = distinct !DILexicalBlock(scope: !3503, file: !496, line: 217, column: 27)
!3672 = !DILocation(line: 217, column: 64, scope: !3671, inlinedAt: !3577)
!3673 = !DILocation(line: 217, column: 27, scope: !3503, inlinedAt: !3577)
!3674 = !DILocation(line: 219, column: 28, scope: !3503, inlinedAt: !3577)
!3675 = !DILocation(line: 198, column: 30, scope: !3503, inlinedAt: !3577)
!3676 = !DILocation(line: 220, column: 28, scope: !3503, inlinedAt: !3577)
!3677 = !DILocation(line: 198, column: 34, scope: !3503, inlinedAt: !3577)
!3678 = !DILocation(line: 199, column: 29, scope: !3503, inlinedAt: !3577)
!3679 = !DILocation(line: 222, column: 36, scope: !3680, inlinedAt: !3577)
!3680 = distinct !DILexicalBlock(scope: !3503, file: !496, line: 222, column: 27)
!3681 = !DILocation(line: 222, column: 27, scope: !3503, inlinedAt: !3577)
!3682 = !DILocation(line: 225, column: 63, scope: !3683, inlinedAt: !3577)
!3683 = distinct !DILexicalBlock(scope: !3680, file: !496, line: 223, column: 25)
!3684 = !DILocation(line: 225, column: 46, scope: !3683, inlinedAt: !3577)
!3685 = !DILocation(line: 226, column: 25, scope: !3683, inlinedAt: !3577)
!3686 = !DILocation(line: 229, column: 36, scope: !3687, inlinedAt: !3577)
!3687 = distinct !DILexicalBlock(scope: !3680, file: !496, line: 228, column: 25)
!3688 = !DILocation(line: 230, column: 73, scope: !3687, inlinedAt: !3577)
!3689 = !DILocation(line: 230, column: 46, scope: !3687, inlinedAt: !3577)
!3690 = !DILocation(line: 232, column: 35, scope: !3691, inlinedAt: !3577)
!3691 = distinct !DILexicalBlock(scope: !3503, file: !496, line: 232, column: 27)
!3692 = !DILocation(line: 232, column: 27, scope: !3503, inlinedAt: !3577)
!3693 = !DILocation(line: 236, column: 27, scope: !3694, inlinedAt: !3577)
!3694 = distinct !DILexicalBlock(scope: !3691, file: !496, line: 233, column: 25)
!3695 = !DILocation(line: 237, column: 27, scope: !3694, inlinedAt: !3577)
!3696 = !DILocation(line: 239, column: 39, scope: !3503, inlinedAt: !3577)
!3697 = !DILocation(line: 239, column: 50, scope: !3503, inlinedAt: !3577)
!3698 = !DILocation(line: 239, column: 61, scope: !3503, inlinedAt: !3577)
!3699 = !DILocalVariable(name: "__dest", arg: 1, scope: !3700, file: !3701, line: 107, type: !3704)
!3700 = distinct !DISubprogram(name: "strcpy", scope: !3701, file: !3701, line: 107, type: !3702, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3706)
!3701 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!50, !3704, !3705}
!3704 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3705 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3706 = !{!3699, !3707}
!3707 = !DILocalVariable(name: "__src", arg: 2, scope: !3700, file: !3701, line: 107, type: !3705)
!3708 = !DILocation(line: 107, column: 1, scope: !3700, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 239, column: 23, scope: !3503, inlinedAt: !3577)
!3710 = !DILocation(line: 109, column: 49, scope: !3700, inlinedAt: !3709)
!3711 = !DILocation(line: 109, column: 10, scope: !3700, inlinedAt: !3709)
!3712 = !DILocation(line: 107, column: 1, scope: !3700, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 240, column: 23, scope: !3503, inlinedAt: !3577)
!3714 = !DILocation(line: 109, column: 49, scope: !3700, inlinedAt: !3713)
!3715 = !DILocation(line: 109, column: 10, scope: !3700, inlinedAt: !3713)
!3716 = !DILocation(line: 241, column: 21, scope: !3504, inlinedAt: !3577)
!3717 = !DILocation(line: 242, column: 19, scope: !3506, inlinedAt: !3577)
!3718 = !DILocation(line: 243, column: 32, scope: !3719, inlinedAt: !3577)
!3719 = distinct !DILexicalBlock(scope: !3506, file: !496, line: 243, column: 23)
!3720 = !DILocation(line: 243, column: 23, scope: !3506, inlinedAt: !3577)
!3721 = !DILocation(line: 247, column: 33, scope: !3722, inlinedAt: !3577)
!3722 = distinct !DILexicalBlock(scope: !3719, file: !496, line: 246, column: 21)
!3723 = !DILocation(line: 247, column: 45, scope: !3722, inlinedAt: !3577)
!3724 = !DILocation(line: 253, column: 11, scope: !3510, inlinedAt: !3577)
!3725 = !DILocation(line: 377, column: 23, scope: !3512, inlinedAt: !3577)
!3726 = !DILocation(line: 378, column: 5, scope: !3512, inlinedAt: !3577)
!3727 = !DILocation(line: 396, column: 15, scope: !3490)
!3728 = !DILocation(line: 590, column: 8, scope: !3499)
!3729 = !DILocation(line: 590, column: 17, scope: !3499)
!3730 = !DILocation(line: 589, column: 3, scope: !3731)
!3731 = !DILexicalBlockFile(scope: !3500, file: !496, discriminator: 1)
!3732 = !DILocation(line: 592, column: 9, scope: !3497)
!3733 = !DILocation(line: 592, column: 35, scope: !3498)
!3734 = !DILocation(line: 593, column: 9, scope: !3498)
!3735 = !DILocation(line: 593, column: 24, scope: !3736)
!3736 = !DILexicalBlockFile(scope: !3498, file: !496, discriminator: 1)
!3737 = !DILocation(line: 593, column: 31, scope: !3736)
!3738 = !DILocation(line: 593, column: 34, scope: !3739)
!3739 = !DILexicalBlockFile(scope: !3498, file: !496, discriminator: 2)
!3740 = !DILocation(line: 593, column: 45, scope: !3739)
!3741 = !DILocation(line: 592, column: 9, scope: !3742)
!3742 = !DILexicalBlockFile(scope: !3499, file: !496, discriminator: 1)
!3743 = !DILocation(line: 595, column: 29, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3498, file: !496, line: 594, column: 7)
!3745 = !DILocation(line: 595, column: 27, scope: !3744)
!3746 = !DILocation(line: 595, column: 46, scope: !3744)
!3747 = !DILocation(line: 596, column: 9, scope: !3744)
!3748 = !DILocation(line: 591, column: 19, scope: !3499)
!3749 = !DILocation(line: 591, column: 36, scope: !3499)
!3750 = !DILocation(line: 591, column: 16, scope: !3499)
!3751 = !DILocation(line: 591, column: 52, scope: !3742)
!3752 = !DILocation(line: 591, column: 69, scope: !3499)
!3753 = !DILocation(line: 591, column: 49, scope: !3499)
!3754 = distinct !{!3754, !3755, !3756}
!3755 = !DILocation(line: 589, column: 3, scope: !3500)
!3756 = !DILocation(line: 597, column: 7, scope: !3500)
!3757 = !DILocation(line: 602, column: 7, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3490, file: !496, line: 602, column: 7)
!3759 = !DILocation(line: 602, column: 18, scope: !3758)
!3760 = !DILocation(line: 602, column: 7, scope: !3490)
!3761 = !DILocation(line: 612, column: 3, scope: !3490)
!3762 = distinct !DISubprogram(name: "rpl_fclose", scope: !3763, file: !3763, line: 56, type: !3764, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3806)
!3763 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!25, !3766}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !764, line: 49, baseType: !3768)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2804, line: 241, size: 1728, elements: !3769)
!3769 = !{!3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3768, file: !2804, line: 242, baseType: !25, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3768, file: !2804, line: 247, baseType: !50, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3768, file: !2804, line: 248, baseType: !50, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3768, file: !2804, line: 249, baseType: !50, size: 64, offset: 192)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3768, file: !2804, line: 250, baseType: !50, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3768, file: !2804, line: 251, baseType: !50, size: 64, offset: 320)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3768, file: !2804, line: 252, baseType: !50, size: 64, offset: 384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3768, file: !2804, line: 253, baseType: !50, size: 64, offset: 448)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3768, file: !2804, line: 254, baseType: !50, size: 64, offset: 512)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3768, file: !2804, line: 256, baseType: !50, size: 64, offset: 576)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3768, file: !2804, line: 257, baseType: !50, size: 64, offset: 640)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3768, file: !2804, line: 258, baseType: !50, size: 64, offset: 704)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3768, file: !2804, line: 260, baseType: !3783, size: 64, offset: 768)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2804, line: 156, size: 192, elements: !3785)
!3785 = !{!3786, !3787, !3789}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3784, file: !2804, line: 157, baseType: !3783, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3784, file: !2804, line: 158, baseType: !3788, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3784, file: !2804, line: 162, baseType: !25, size: 32, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3768, file: !2804, line: 262, baseType: !3788, size: 64, offset: 832)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3768, file: !2804, line: 264, baseType: !25, size: 32, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3768, file: !2804, line: 268, baseType: !25, size: 32, offset: 928)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3768, file: !2804, line: 270, baseType: !2830, size: 64, offset: 960)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3768, file: !2804, line: 274, baseType: !93, size: 16, offset: 1024)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3768, file: !2804, line: 275, baseType: !2835, size: 8, offset: 1040)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3768, file: !2804, line: 276, baseType: !2837, size: 8, offset: 1048)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3768, file: !2804, line: 280, baseType: !2839, size: 64, offset: 1088)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3768, file: !2804, line: 289, baseType: !2842, size: 64, offset: 1152)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3768, file: !2804, line: 297, baseType: !49, size: 64, offset: 1216)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3768, file: !2804, line: 298, baseType: !49, size: 64, offset: 1280)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3768, file: !2804, line: 299, baseType: !49, size: 64, offset: 1344)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3768, file: !2804, line: 300, baseType: !49, size: 64, offset: 1408)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3768, file: !2804, line: 302, baseType: !94, size: 64, offset: 1472)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3768, file: !2804, line: 303, baseType: !25, size: 32, offset: 1536)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3768, file: !2804, line: 305, baseType: !2850, size: 160, offset: 1568)
!3806 = !{!3807, !3808, !3809, !3810}
!3807 = !DILocalVariable(name: "fp", arg: 1, scope: !3762, file: !3763, line: 56, type: !3766)
!3808 = !DILocalVariable(name: "saved_errno", scope: !3762, file: !3763, line: 58, type: !25)
!3809 = !DILocalVariable(name: "fd", scope: !3762, file: !3763, line: 59, type: !25)
!3810 = !DILocalVariable(name: "result", scope: !3762, file: !3763, line: 60, type: !25)
!3811 = !DILocation(line: 56, column: 19, scope: !3762)
!3812 = !DILocation(line: 58, column: 7, scope: !3762)
!3813 = !DILocation(line: 60, column: 7, scope: !3762)
!3814 = !DILocation(line: 63, column: 8, scope: !3762)
!3815 = !DILocation(line: 59, column: 7, scope: !3762)
!3816 = !DILocation(line: 64, column: 10, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3762, file: !3763, line: 64, column: 7)
!3818 = !DILocation(line: 64, column: 7, scope: !3762)
!3819 = !DILocation(line: 65, column: 12, scope: !3817)
!3820 = !DILocation(line: 65, column: 5, scope: !3817)
!3821 = !DILocation(line: 70, column: 9, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3762, file: !3763, line: 70, column: 7)
!3823 = !DILocation(line: 70, column: 23, scope: !3822)
!3824 = !DILocation(line: 70, column: 33, scope: !3825)
!3825 = !DILexicalBlockFile(scope: !3822, file: !3763, discriminator: 1)
!3826 = !DILocation(line: 70, column: 26, scope: !3827)
!3827 = !DILexicalBlockFile(scope: !3822, file: !3763, discriminator: 3)
!3828 = !DILocation(line: 70, column: 59, scope: !3825)
!3829 = !DILocation(line: 71, column: 7, scope: !3822)
!3830 = !DILocation(line: 71, column: 10, scope: !3825)
!3831 = !DILocation(line: 70, column: 7, scope: !3832)
!3832 = !DILexicalBlockFile(scope: !3762, file: !3763, discriminator: 2)
!3833 = !DILocation(line: 98, column: 12, scope: !3762)
!3834 = !DILocation(line: 103, column: 7, scope: !3762)
!3835 = !DILocation(line: 72, column: 19, scope: !3822)
!3836 = !DILocation(line: 103, column: 19, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3762, file: !3763, line: 103, column: 7)
!3838 = !DILocation(line: 105, column: 13, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3837, file: !3763, line: 104, column: 5)
!3840 = !DILocation(line: 107, column: 5, scope: !3839)
!3841 = !DILocation(line: 110, column: 1, scope: !3762)
!3842 = distinct !DISubprogram(name: "rpl_fflush", scope: !3843, file: !3843, line: 127, type: !3844, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3886)
!3843 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!25, !3846}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !764, line: 49, baseType: !3848)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2804, line: 241, size: 1728, elements: !3849)
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3848, file: !2804, line: 242, baseType: !25, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3848, file: !2804, line: 247, baseType: !50, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3848, file: !2804, line: 248, baseType: !50, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3848, file: !2804, line: 249, baseType: !50, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3848, file: !2804, line: 250, baseType: !50, size: 64, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3848, file: !2804, line: 251, baseType: !50, size: 64, offset: 320)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3848, file: !2804, line: 252, baseType: !50, size: 64, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3848, file: !2804, line: 253, baseType: !50, size: 64, offset: 448)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3848, file: !2804, line: 254, baseType: !50, size: 64, offset: 512)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3848, file: !2804, line: 256, baseType: !50, size: 64, offset: 576)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3848, file: !2804, line: 257, baseType: !50, size: 64, offset: 640)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3848, file: !2804, line: 258, baseType: !50, size: 64, offset: 704)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3848, file: !2804, line: 260, baseType: !3863, size: 64, offset: 768)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2804, line: 156, size: 192, elements: !3865)
!3865 = !{!3866, !3867, !3869}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3864, file: !2804, line: 157, baseType: !3863, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3864, file: !2804, line: 158, baseType: !3868, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3864, file: !2804, line: 162, baseType: !25, size: 32, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3848, file: !2804, line: 262, baseType: !3868, size: 64, offset: 832)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3848, file: !2804, line: 264, baseType: !25, size: 32, offset: 896)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3848, file: !2804, line: 268, baseType: !25, size: 32, offset: 928)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3848, file: !2804, line: 270, baseType: !2830, size: 64, offset: 960)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3848, file: !2804, line: 274, baseType: !93, size: 16, offset: 1024)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3848, file: !2804, line: 275, baseType: !2835, size: 8, offset: 1040)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3848, file: !2804, line: 276, baseType: !2837, size: 8, offset: 1048)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3848, file: !2804, line: 280, baseType: !2839, size: 64, offset: 1088)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3848, file: !2804, line: 289, baseType: !2842, size: 64, offset: 1152)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3848, file: !2804, line: 297, baseType: !49, size: 64, offset: 1216)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3848, file: !2804, line: 298, baseType: !49, size: 64, offset: 1280)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3848, file: !2804, line: 299, baseType: !49, size: 64, offset: 1344)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3848, file: !2804, line: 300, baseType: !49, size: 64, offset: 1408)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3848, file: !2804, line: 302, baseType: !94, size: 64, offset: 1472)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3848, file: !2804, line: 303, baseType: !25, size: 32, offset: 1536)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3848, file: !2804, line: 305, baseType: !2850, size: 160, offset: 1568)
!3886 = !{!3887}
!3887 = !DILocalVariable(name: "stream", arg: 1, scope: !3842, file: !3843, line: 127, type: !3846)
!3888 = !DILocation(line: 127, column: 19, scope: !3842)
!3889 = !DILocation(line: 148, column: 14, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3842, file: !3843, line: 148, column: 7)
!3891 = !DILocation(line: 148, column: 22, scope: !3890)
!3892 = !DILocation(line: 148, column: 27, scope: !3893)
!3893 = !DILexicalBlockFile(scope: !3890, file: !3843, discriminator: 1)
!3894 = !DILocation(line: 148, column: 7, scope: !3895)
!3895 = !DILexicalBlockFile(scope: !3842, file: !3843, discriminator: 1)
!3896 = !DILocation(line: 149, column: 12, scope: !3890)
!3897 = !DILocation(line: 149, column: 5, scope: !3890)
!3898 = !DILocalVariable(name: "fp", arg: 1, scope: !3899, file: !3843, line: 40, type: !3846)
!3899 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3843, file: !3843, line: 40, type: !3900, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3902)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{null, !3846}
!3902 = !{!3898}
!3903 = !DILocation(line: 40, column: 48, scope: !3899, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 153, column: 3, scope: !3842)
!3905 = !DILocation(line: 42, column: 11, scope: !3906, inlinedAt: !3904)
!3906 = distinct !DILexicalBlock(scope: !3899, file: !3843, line: 42, column: 7)
!3907 = !DILocation(line: 42, column: 18, scope: !3906, inlinedAt: !3904)
!3908 = !DILocation(line: 42, column: 7, scope: !3899, inlinedAt: !3904)
!3909 = !DILocation(line: 44, column: 5, scope: !3906, inlinedAt: !3904)
!3910 = !DILocation(line: 155, column: 10, scope: !3842)
!3911 = !DILocation(line: 155, column: 3, scope: !3842)
!3912 = !DILocation(line: 229, column: 1, scope: !3842)
!3913 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3914, file: !3914, line: 28, type: !3915, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !3958)
!3914 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!25, !3917, !3957, !25}
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !764, line: 49, baseType: !3919)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2804, line: 241, size: 1728, elements: !3920)
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3919, file: !2804, line: 242, baseType: !25, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3919, file: !2804, line: 247, baseType: !50, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3919, file: !2804, line: 248, baseType: !50, size: 64, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3919, file: !2804, line: 249, baseType: !50, size: 64, offset: 192)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3919, file: !2804, line: 250, baseType: !50, size: 64, offset: 256)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3919, file: !2804, line: 251, baseType: !50, size: 64, offset: 320)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3919, file: !2804, line: 252, baseType: !50, size: 64, offset: 384)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3919, file: !2804, line: 253, baseType: !50, size: 64, offset: 448)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3919, file: !2804, line: 254, baseType: !50, size: 64, offset: 512)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3919, file: !2804, line: 256, baseType: !50, size: 64, offset: 576)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3919, file: !2804, line: 257, baseType: !50, size: 64, offset: 640)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3919, file: !2804, line: 258, baseType: !50, size: 64, offset: 704)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3919, file: !2804, line: 260, baseType: !3934, size: 64, offset: 768)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2804, line: 156, size: 192, elements: !3936)
!3936 = !{!3937, !3938, !3940}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3935, file: !2804, line: 157, baseType: !3934, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3935, file: !2804, line: 158, baseType: !3939, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3935, file: !2804, line: 162, baseType: !25, size: 32, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3919, file: !2804, line: 262, baseType: !3939, size: 64, offset: 832)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3919, file: !2804, line: 264, baseType: !25, size: 32, offset: 896)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3919, file: !2804, line: 268, baseType: !25, size: 32, offset: 928)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3919, file: !2804, line: 270, baseType: !2830, size: 64, offset: 960)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3919, file: !2804, line: 274, baseType: !93, size: 16, offset: 1024)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3919, file: !2804, line: 275, baseType: !2835, size: 8, offset: 1040)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3919, file: !2804, line: 276, baseType: !2837, size: 8, offset: 1048)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3919, file: !2804, line: 280, baseType: !2839, size: 64, offset: 1088)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3919, file: !2804, line: 289, baseType: !2842, size: 64, offset: 1152)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3919, file: !2804, line: 297, baseType: !49, size: 64, offset: 1216)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3919, file: !2804, line: 298, baseType: !49, size: 64, offset: 1280)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3919, file: !2804, line: 299, baseType: !49, size: 64, offset: 1344)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3919, file: !2804, line: 300, baseType: !49, size: 64, offset: 1408)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3919, file: !2804, line: 302, baseType: !94, size: 64, offset: 1472)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3919, file: !2804, line: 303, baseType: !25, size: 32, offset: 1536)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3919, file: !2804, line: 305, baseType: !2850, size: 160, offset: 1568)
!3957 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !764, line: 91, baseType: !2830)
!3958 = !{!3959, !3960, !3961, !3962}
!3959 = !DILocalVariable(name: "fp", arg: 1, scope: !3913, file: !3914, line: 28, type: !3917)
!3960 = !DILocalVariable(name: "offset", arg: 2, scope: !3913, file: !3914, line: 28, type: !3957)
!3961 = !DILocalVariable(name: "whence", arg: 3, scope: !3913, file: !3914, line: 28, type: !25)
!3962 = !DILocalVariable(name: "pos", scope: !3963, file: !3914, line: 116, type: !3957)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !3914, line: 112, column: 5)
!3964 = distinct !DILexicalBlock(scope: !3913, file: !3914, line: 51, column: 7)
!3965 = !DILocation(line: 28, column: 15, scope: !3913)
!3966 = !DILocation(line: 28, column: 25, scope: !3913)
!3967 = !DILocation(line: 28, column: 37, scope: !3913)
!3968 = !DILocation(line: 51, column: 11, scope: !3964)
!3969 = !DILocation(line: 51, column: 31, scope: !3964)
!3970 = !DILocation(line: 51, column: 24, scope: !3964)
!3971 = !DILocation(line: 52, column: 7, scope: !3964)
!3972 = !DILocation(line: 52, column: 14, scope: !3973)
!3973 = !DILexicalBlockFile(scope: !3964, file: !3914, discriminator: 1)
!3974 = !{!3416, !598, i64 40}
!3975 = !DILocation(line: 52, column: 35, scope: !3973)
!3976 = !{!3416, !598, i64 32}
!3977 = !DILocation(line: 52, column: 28, scope: !3973)
!3978 = !DILocation(line: 53, column: 7, scope: !3964)
!3979 = !DILocation(line: 53, column: 14, scope: !3973)
!3980 = !{!3416, !598, i64 72}
!3981 = !DILocation(line: 53, column: 28, scope: !3973)
!3982 = !DILocation(line: 51, column: 7, scope: !3983)
!3983 = !DILexicalBlockFile(scope: !3913, file: !3914, discriminator: 1)
!3984 = !DILocation(line: 116, column: 26, scope: !3963)
!3985 = !DILocation(line: 116, column: 19, scope: !3986)
!3986 = !DILexicalBlockFile(scope: !3963, file: !3914, discriminator: 1)
!3987 = !DILocation(line: 116, column: 13, scope: !3963)
!3988 = !DILocation(line: 117, column: 15, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3963, file: !3914, line: 117, column: 11)
!3990 = !DILocation(line: 117, column: 11, scope: !3963)
!3991 = !DILocation(line: 127, column: 11, scope: !3963)
!3992 = !DILocation(line: 127, column: 18, scope: !3963)
!3993 = !DILocation(line: 128, column: 11, scope: !3963)
!3994 = !DILocation(line: 128, column: 19, scope: !3963)
!3995 = !{!3416, !2115, i64 144}
!3996 = !DILocation(line: 159, column: 7, scope: !3963)
!3997 = !DILocation(line: 161, column: 10, scope: !3913)
!3998 = !DILocation(line: 161, column: 3, scope: !3913)
!3999 = !DILocation(line: 162, column: 1, scope: !3913)
