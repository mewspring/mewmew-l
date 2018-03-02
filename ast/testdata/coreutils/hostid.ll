; ModuleID = 'coreutils-8.27/src/hostid.bc'
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
@.str.1 = private unnamed_addr constant [89 x i8] c"Usage: %s [OPTION]\0APrint the numeric identifier (in hexadecimal) for the current host.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"hostid\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), align 8, !dbg !0
@.str.12 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.15 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.16 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.28, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.29, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.28 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.29 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.34 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.35 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.36 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.40, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.46, i32 0, i32 0), i8* null], align 16, !dbg !53
@.str.37 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.38 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.39 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.40 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.41 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.42 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.43 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.44 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.45 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.46 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.47 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.48 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.49 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.50 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
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
@.str.13 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.70 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.71 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.72 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.73 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.84 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.94 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.97 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.98 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.99 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.100 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.101 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.102 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.103 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

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
  br label %33, !dbg !603

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !605
  %10 = load i8*, i8** @program_name, align 8, !dbg !605, !tbaa !597
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !607
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !609
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !609, !tbaa !597
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !610
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !611
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !597
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !612
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !514, metadata !589) #10, !dbg !613
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 0, metadata !514, metadata !589) #10, !dbg !613
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !615
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !616
  %20 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !618
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !525, metadata !589) #10, !dbg !619
  %21 = icmp eq i8* %20, null, !dbg !620
  br i1 %21, label %28, label %22, !dbg !621

; <label>:22:                                     ; preds = %8
  %23 = tail call i32 @strncmp(i8* nonnull %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 3) #13, !dbg !622
  %24 = icmp eq i32 %23, 0, !dbg !622
  br i1 %24, label %28, label %25, !dbg !624

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !626
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !628
  br label %28, !dbg !630

; <label>:28:                                     ; preds = %8, %22, %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !631
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !632
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !633
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !634
  br label %33

; <label>:33:                                     ; preds = %28, %3
  tail call void @exit(i32 %0) #14, !dbg !635
  unreachable, !dbg !635
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !636 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !641, metadata !589), !dbg !644
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !642, metadata !589), !dbg !645
  %3 = load i8*, i8** %1, align 8, !dbg !646, !tbaa !597
  tail call void @set_program_name(i8* %3) #10, !dbg !647
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !648
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !649
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !650
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !651
  %8 = load i8*, i8** @Version, align 8, !dbg !652, !tbaa !597
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* null) #10, !dbg !653
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !654
  %10 = icmp eq i32 %9, -1, !dbg !656
  br i1 %10, label %12, label %11, !dbg !657

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #15, !dbg !658
  unreachable, !dbg !658

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !659, !tbaa !661
  %14 = icmp slt i32 %13, %0, !dbg !663
  br i1 %14, label %15, label %22, !dbg !664

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !665
  %17 = load i32, i32* @optind, align 4, !dbg !667, !tbaa !661
  %18 = sext i32 %17 to i64, !dbg !668
  %19 = getelementptr inbounds i8*, i8** %1, i64 %18, !dbg !668
  %20 = load i8*, i8** %19, align 8, !dbg !668, !tbaa !597
  %21 = tail call i8* @quote(i8* %20) #10, !dbg !669
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %21) #10, !dbg !671
  tail call void @usage(i32 1) #15, !dbg !673
  unreachable, !dbg !673

; <label>:22:                                     ; preds = %12
  %23 = tail call i64 @gethostid() #10, !dbg !674
  %24 = trunc i64 %23 to i32, !dbg !674
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !643, metadata !589), !dbg !675
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !643, metadata !589), !dbg !675
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %24) #10, !dbg !676
  ret i32 0, !dbg !677
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

declare i64 @gethostid() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !678 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !680, metadata !589), !dbg !681
  store i8* %0, i8** @file_name, align 8, !dbg !682, !tbaa !597
  ret void, !dbg !683
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !684 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !688, metadata !689), !dbg !690
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !691, !tbaa !692
  ret void, !dbg !694
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !695 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !702, !tbaa !597
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !703
  %3 = icmp eq i32 %2, 0, !dbg !704
  br i1 %3, label %21, label %4, !dbg !705

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !706, !tbaa !692, !range !708
  %6 = icmp eq i8 %5, 0, !dbg !706
  %7 = tail call i32* @__errno_location() #1, !dbg !709
  br i1 %6, label %11, label %8, !dbg !711

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !712, !tbaa !661
  %10 = icmp eq i32 %9, 32, !dbg !714
  br i1 %10, label %21, label %11, !dbg !715

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !717
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !699, metadata !589), !dbg !718
  %13 = load i8*, i8** @file_name, align 8, !dbg !719, !tbaa !597
  %14 = icmp eq i8* %13, null, !dbg !719
  %15 = load i32, i32* %7, align 4, !tbaa !661
  br i1 %14, label %18, label %16, !dbg !720

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !721
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.16, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !723
  br label %19, !dbg !725

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.17, i64 0, i64 0), i8* %12) #10, !dbg !726
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !727, !tbaa !661
  tail call void @_exit(i32 %20) #14, !dbg !728
  unreachable, !dbg !728

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !729, !tbaa !597
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !731
  %24 = icmp eq i32 %23, 0, !dbg !732
  br i1 %24, label %27, label %25, !dbg !733

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !734, !tbaa !661
  tail call void @_exit(i32 %26) #14, !dbg !735
  unreachable, !dbg !735

; <label>:27:                                     ; preds = %21
  ret void, !dbg !736
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !737 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !742, metadata !589), !dbg !769
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !743, metadata !589), !dbg !770
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !744, metadata !589), !dbg !771
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !745, metadata !589), !dbg !772
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !746, metadata !589), !dbg !773
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !747, metadata !589), !dbg !774
  %8 = load i32, i32* @opterr, align 4, !dbg !775, !tbaa !661
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !749, metadata !589), !dbg !776
  store i32 0, i32* @opterr, align 4, !dbg !777, !tbaa !661
  %9 = icmp eq i32 %0, 2, !dbg !778
  br i1 %9, label %10, label %17, !dbg !779

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !780
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !748, metadata !589), !dbg !782
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !783

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !785
  br label %17, !dbg !786

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !787
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !787
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !750, metadata !589), !dbg !788
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !789
  call void @llvm.va_start(i8* nonnull %14), !dbg !789
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !790, !tbaa !597
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !791
  call void @exit(i32 0) #14, !dbg !792
  unreachable, !dbg !792

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !793, !tbaa !661
  store i32 0, i32* @optind, align 4, !dbg !794, !tbaa !661
  ret void, !dbg !795
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !796 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !798, metadata !589), !dbg !801
  %2 = icmp eq i8* %0, null, !dbg !802
  br i1 %2, label %3, label %6, !dbg !804

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !805, !tbaa !597
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !807
  tail call void @abort() #14, !dbg !808
  unreachable, !dbg !808

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !809
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !799, metadata !589), !dbg !810
  %8 = icmp ne i8* %7, null, !dbg !811
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !812
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !814
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !800, metadata !589), !dbg !815
  %11 = ptrtoint i8* %10 to i64, !dbg !816
  %12 = ptrtoint i8* %0 to i64, !dbg !816
  %13 = sub i64 %11, %12, !dbg !816
  %14 = icmp sgt i64 %13, 6, !dbg !818
  br i1 %14, label %15, label %24, !dbg !819

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !820
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.35, i64 0, i64 0), i64 7) #13, !dbg !820
  %18 = icmp eq i32 %17, 0, !dbg !822
  br i1 %18, label %19, label %24, !dbg !823

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !798, metadata !589), !dbg !801
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.36, i64 0, i64 0), i64 3) #13, !dbg !824
  %21 = icmp eq i32 %20, 0, !dbg !827
  br i1 %21, label %22, label %24, !dbg !828

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !829
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !798, metadata !589), !dbg !801
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !831, !tbaa !597
  br label %24, !dbg !832

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !798, metadata !589), !dbg !801
  store i8* %25, i8** @program_name, align 8, !dbg !833, !tbaa !597
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !834, !tbaa !597
  ret void, !dbg !835
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !836 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !841, metadata !589), !dbg !844
  %2 = tail call i32* @__errno_location() #1, !dbg !845
  %3 = load i32, i32* %2, align 4, !dbg !845, !tbaa !661
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !842, metadata !589), !dbg !846
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !847
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !848
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !848
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !850
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !850
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !843, metadata !589), !dbg !851
  store i32 %3, i32* %2, align 4, !dbg !852, !tbaa !661
  ret %struct.quoting_options* %8, !dbg !853
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !854 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !860, metadata !589), !dbg !861
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !862
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !862
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !863
  %5 = load i32, i32* %4, align 8, !dbg !863, !tbaa !865
  ret i32 %5, !dbg !867
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !868 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !872, metadata !589), !dbg !874
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !873, metadata !589), !dbg !875
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !876
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !876
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !877
  store i32 %1, i32* %5, align 8, !dbg !879, !tbaa !865
  ret void, !dbg !880
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !881 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !885, metadata !589), !dbg !893
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !886, metadata !589), !dbg !894
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !887, metadata !589), !dbg !895
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !888, metadata !589), !dbg !896
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !897
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !897
  %6 = lshr i8 %1, 5, !dbg !898
  %7 = zext i8 %6 to i64, !dbg !898
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !900
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !889, metadata !589), !dbg !901
  %9 = and i8 %1, 31, !dbg !902
  %10 = zext i8 %9 to i32, !dbg !903
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !891, metadata !589), !dbg !904
  %11 = load i32, i32* %8, align 4, !dbg !905, !tbaa !661
  %12 = lshr i32 %11, %10, !dbg !906
  %13 = and i32 %12, 1, !dbg !907
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !892, metadata !589), !dbg !908
  %14 = and i32 %2, 1, !dbg !909
  %15 = xor i32 %13, %14, !dbg !910
  %16 = shl i32 %15, %10, !dbg !911
  %17 = xor i32 %16, %11, !dbg !912
  store i32 %17, i32* %8, align 4, !dbg !912, !tbaa !661
  ret i32 %13, !dbg !913
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !914 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !918, metadata !589), !dbg !921
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !919, metadata !589), !dbg !922
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !923
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !918, metadata !589), !dbg !921
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !925
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !918, metadata !589), !dbg !921
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !926
  %6 = load i32, i32* %5, align 4, !dbg !926, !tbaa !927
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !920, metadata !589), !dbg !928
  store i32 %1, i32* %5, align 4, !dbg !929, !tbaa !927
  ret i32 %6, !dbg !930
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !931 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !935, metadata !589), !dbg !938
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !936, metadata !589), !dbg !939
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !937, metadata !589), !dbg !940
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !941
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !935, metadata !589), !dbg !938
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !943
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !935, metadata !589), !dbg !938
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !944
  store i32 10, i32* %6, align 8, !dbg !945, !tbaa !865
  %7 = icmp ne i8* %1, null, !dbg !946
  %8 = icmp ne i8* %2, null, !dbg !948
  %9 = and i1 %7, %8, !dbg !950
  br i1 %9, label %11, label %10, !dbg !950

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !951
  unreachable, !dbg !951

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !952
  store i8* %1, i8** %12, align 8, !dbg !953, !tbaa !954
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !955
  store i8* %2, i8** %13, align 8, !dbg !956, !tbaa !957
  ret void, !dbg !958
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !959 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !963, metadata !589), !dbg !971
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !964, metadata !589), !dbg !972
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !965, metadata !589), !dbg !973
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !966, metadata !589), !dbg !974
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !967, metadata !589), !dbg !975
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !976
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !976
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !968, metadata !589), !dbg !977
  %8 = tail call i32* @__errno_location() #1, !dbg !978
  %9 = load i32, i32* %8, align 4, !dbg !978, !tbaa !661
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !969, metadata !589), !dbg !979
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !980
  %11 = load i32, i32* %10, align 8, !dbg !980, !tbaa !865
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !981
  %13 = load i32, i32* %12, align 4, !dbg !981, !tbaa !927
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !982
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !983
  %16 = load i8*, i8** %15, align 8, !dbg !983, !tbaa !954
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !984
  %18 = load i8*, i8** %17, align 8, !dbg !984, !tbaa !957
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !985
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !970, metadata !589), !dbg !986
  store i32 %9, i32* %8, align 4, !dbg !987, !tbaa !661
  ret i64 %19, !dbg !988
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !989 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !995, metadata !589), !dbg !1058
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !996, metadata !589), !dbg !1059
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !997, metadata !589), !dbg !1060
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !998, metadata !589), !dbg !1061
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !999, metadata !589), !dbg !1062
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1000, metadata !589), !dbg !1063
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1001, metadata !589), !dbg !1064
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1002, metadata !589), !dbg !1065
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1003, metadata !589), !dbg !1066
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1005, metadata !589), !dbg !1067
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1006, metadata !589), !dbg !1068
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1007, metadata !589), !dbg !1069
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1008, metadata !589), !dbg !1070
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1009, metadata !589), !dbg !1071
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1072
  %14 = icmp eq i64 %13, 1, !dbg !1073
  %15 = lshr i32 %5, 1, !dbg !1074
  %16 = trunc i32 %15 to i8, !dbg !1074
  %17 = and i8 %16, 1, !dbg !1074
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1011, metadata !589), !dbg !1074
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1012, metadata !589), !dbg !1075
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1013, metadata !589), !dbg !1076
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1014, metadata !589), !dbg !1077
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1078

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !996, metadata !589), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1014, metadata !589), !dbg !1077
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1013, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1011, metadata !589), !dbg !1074
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !998, metadata !589), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1009, metadata !589), !dbg !1071
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1008, metadata !589), !dbg !1070
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1007, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1006, metadata !589), !dbg !1068
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1003, metadata !589), !dbg !1066
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1002, metadata !589), !dbg !1065
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !999, metadata !589), !dbg !1062
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
  ], !dbg !1079

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !999, metadata !589), !dbg !1062
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1011, metadata !589), !dbg !1074
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1011, metadata !589), !dbg !1074
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !999, metadata !589), !dbg !1062
  br label %95, !dbg !1080

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1011, metadata !589), !dbg !1074
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !999, metadata !589), !dbg !1062
  %43 = and i8 %36, 1, !dbg !1082
  %44 = icmp eq i8 %43, 0, !dbg !1082
  br i1 %44, label %45, label %95, !dbg !1080

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1084
  br i1 %46, label %95, label %47, !dbg !1088

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1090, !tbaa !1092
  br label %95, !dbg !1090

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.47, i64 0, i64 0), i32 %28), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1002, metadata !589), !dbg !1065
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), i32 %28), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1003, metadata !589), !dbg !1066
  br label %51, !dbg !1098

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1003, metadata !589), !dbg !1066
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1002, metadata !589), !dbg !1065
  %54 = and i8 %36, 1, !dbg !1099
  %55 = icmp eq i8 %54, 0, !dbg !1099
  br i1 %55, label %56, label %73, !dbg !1101

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1007, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1005, metadata !589), !dbg !1067
  %57 = load i8, i8* %52, align 1, !dbg !1102, !tbaa !1092
  %58 = icmp eq i8 %57, 0, !dbg !1106
  br i1 %58, label %73, label %59, !dbg !1106

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1108

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1108
  br i1 %64, label %65, label %67, !dbg !1112

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1114
  store i8 %61, i8* %66, align 1, !dbg !1114, !tbaa !1092
  br label %67, !dbg !1114

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1116
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1005, metadata !589), !dbg !1067
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1118
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1007, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1007, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1005, metadata !589), !dbg !1067
  %70 = load i8, i8* %69, align 1, !dbg !1102, !tbaa !1092
  %71 = icmp eq i8 %70, 0, !dbg !1106
  br i1 %71, label %72, label %60, !dbg !1106, !llvm.loop !1120

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1067

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1009, metadata !589), !dbg !1071
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1007, metadata !589), !dbg !1069
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1008, metadata !589), !dbg !1070
  br label %95, !dbg !1124

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1009, metadata !589), !dbg !1071
  br label %77, !dbg !1125

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1009, metadata !589), !dbg !1071
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1011, metadata !589), !dbg !1074
  br label %79, !dbg !1126

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1011, metadata !589), !dbg !1074
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1009, metadata !589), !dbg !1071
  %82 = and i8 %81, 1, !dbg !1127
  %83 = icmp eq i8 %82, 0, !dbg !1127
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1009, metadata !589), !dbg !1071
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1129
  br label %85, !dbg !1129

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1011, metadata !589), !dbg !1074
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1009, metadata !589), !dbg !1071
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !999, metadata !589), !dbg !1062
  %88 = and i8 %87, 1, !dbg !1130
  %89 = icmp eq i8 %88, 0, !dbg !1130
  br i1 %89, label %90, label %95, !dbg !1132

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1133
  br i1 %91, label %95, label %92, !dbg !1137

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1139, !tbaa !1092
  br label %95, !dbg !1139

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1011, metadata !589), !dbg !1074
  br label %95, !dbg !1141

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1142
  unreachable, !dbg !1142

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1011, metadata !589), !dbg !1074
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1009, metadata !589), !dbg !1071
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1008, metadata !589), !dbg !1070
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1007, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1003, metadata !589), !dbg !1066
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1002, metadata !589), !dbg !1065
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !999, metadata !589), !dbg !1062
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1004, metadata !589), !dbg !1143
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
  br label %123, !dbg !1144

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !996, metadata !589), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1014, metadata !589), !dbg !1077
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1013, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !998, metadata !589), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1006, metadata !589), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1004, metadata !589), !dbg !1143
  %132 = icmp eq i64 %127, -1, !dbg !1145
  br i1 %132, label %135, label %133, !dbg !1147

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1148
  br i1 %134, label %597, label %139, !dbg !1150

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1152
  %137 = load i8, i8* %136, align 1, !dbg !1152, !tbaa !1092
  %138 = icmp eq i8 %137, 0, !dbg !1154
  br i1 %138, label %597, label %139, !dbg !1150

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1020, metadata !589), !dbg !1155
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1021, metadata !589), !dbg !1156
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1022, metadata !589), !dbg !1157
  br i1 %109, label %140, label %155, !dbg !1158

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1160
  %142 = and i1 %110, %132, !dbg !1162
  br i1 %142, label %143, label %145, !dbg !1162

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1163
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !998, metadata !589), !dbg !1061
  br label %145, !dbg !1164

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !998, metadata !589), !dbg !1061
  %147 = icmp ugt i64 %141, %146, !dbg !1166
  br i1 %147, label %155, label %148, !dbg !1168

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1169
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1170
  %151 = icmp ne i32 %150, 0, !dbg !1171
  %152 = or i1 %151, %112, !dbg !1171
  %153 = xor i1 %151, true, !dbg !1171
  %154 = zext i1 %153 to i8, !dbg !1171
  br i1 %152, label %155, label %644, !dbg !1171

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1020, metadata !589), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !998, metadata !589), !dbg !1061
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1173
  %159 = load i8, i8* %158, align 1, !dbg !1173, !tbaa !1092
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1015, metadata !589), !dbg !1174
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
  ], !dbg !1175

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1176

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1177

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1021, metadata !589), !dbg !1156
  %163 = and i8 %128, 1, !dbg !1182
  %164 = icmp eq i8 %163, 0, !dbg !1182
  %165 = and i1 %114, %164, !dbg !1185
  br i1 %165, label %166, label %182, !dbg !1185

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1187
  br i1 %167, label %168, label %170, !dbg !1192

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1194
  store i8 39, i8* %169, align 1, !dbg !1194, !tbaa !1092
  br label %170, !dbg !1194

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1005, metadata !589), !dbg !1067
  %172 = icmp ult i64 %171, %131, !dbg !1198
  br i1 %172, label %173, label %175, !dbg !1202

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1204
  store i8 36, i8* %174, align 1, !dbg !1204, !tbaa !1092
  br label %175, !dbg !1204

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1005, metadata !589), !dbg !1067
  %177 = icmp ult i64 %176, %131, !dbg !1208
  br i1 %177, label %178, label %180, !dbg !1212

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1214
  store i8 39, i8* %179, align 1, !dbg !1214, !tbaa !1092
  br label %180, !dbg !1214

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1012, metadata !589), !dbg !1075
  br label %182, !dbg !1218

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1005, metadata !589), !dbg !1067
  %185 = icmp ult i64 %183, %131, !dbg !1220
  br i1 %185, label %186, label %188, !dbg !1224

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1226
  store i8 92, i8* %187, align 1, !dbg !1226, !tbaa !1092
  br label %188, !dbg !1226

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1005, metadata !589), !dbg !1067
  br i1 %106, label %190, label %476, !dbg !1230

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1232
  %192 = icmp ult i64 %191, %156, !dbg !1234
  br i1 %192, label %193, label %476, !dbg !1235

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1236
  %195 = load i8, i8* %194, align 1, !dbg !1236, !tbaa !1092
  %196 = add i8 %195, -48, !dbg !1238
  %197 = icmp ult i8 %196, 10, !dbg !1238
  br i1 %197, label %198, label %476, !dbg !1238

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1239
  br i1 %199, label %200, label %202, !dbg !1244

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1246
  store i8 48, i8* %201, align 1, !dbg !1246, !tbaa !1092
  br label %202, !dbg !1246

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1005, metadata !589), !dbg !1067
  %204 = icmp ult i64 %203, %131, !dbg !1250
  br i1 %204, label %205, label %207, !dbg !1254

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1256
  store i8 48, i8* %206, align 1, !dbg !1256, !tbaa !1092
  br label %207, !dbg !1256

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1005, metadata !589), !dbg !1067
  br label %476, !dbg !1260

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1261

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1262

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1263

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1265

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1267
  %215 = icmp ult i64 %214, %156, !dbg !1269
  br i1 %215, label %216, label %476, !dbg !1270

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1271
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1273
  %219 = load i8, i8* %218, align 1, !dbg !1273, !tbaa !1092
  %220 = icmp eq i8 %219, 63, !dbg !1274
  br i1 %220, label %221, label %476, !dbg !1275

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1277
  %223 = load i8, i8* %222, align 1, !dbg !1277, !tbaa !1092
  %224 = sext i8 %223 to i32, !dbg !1277
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
  ], !dbg !1278

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1279

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1015, metadata !589), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1004, metadata !589), !dbg !1143
  %227 = icmp ult i64 %125, %131, !dbg !1281
  br i1 %227, label %228, label %230, !dbg !1285

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1287
  store i8 63, i8* %229, align 1, !dbg !1287, !tbaa !1092
  br label %230, !dbg !1287

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1005, metadata !589), !dbg !1067
  %232 = icmp ult i64 %231, %131, !dbg !1291
  br i1 %232, label %233, label %235, !dbg !1295

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1297
  store i8 34, i8* %234, align 1, !dbg !1297, !tbaa !1092
  br label %235, !dbg !1297

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1005, metadata !589), !dbg !1067
  %237 = icmp ult i64 %236, %131, !dbg !1301
  br i1 %237, label %238, label %240, !dbg !1305

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1307
  store i8 34, i8* %239, align 1, !dbg !1307, !tbaa !1092
  br label %240, !dbg !1307

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1005, metadata !589), !dbg !1067
  %242 = icmp ult i64 %241, %131, !dbg !1311
  br i1 %242, label %243, label %245, !dbg !1315

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1317
  store i8 63, i8* %244, align 1, !dbg !1317, !tbaa !1092
  br label %245, !dbg !1317

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1005, metadata !589), !dbg !1067
  br label %476, !dbg !1321

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1019, metadata !589), !dbg !1322
  br label %257, !dbg !1323

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1019, metadata !589), !dbg !1322
  br label %257, !dbg !1324

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1019, metadata !589), !dbg !1322
  br label %255, !dbg !1325

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1019, metadata !589), !dbg !1322
  br label %255, !dbg !1326

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1019, metadata !589), !dbg !1322
  br label %257, !dbg !1327

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1019, metadata !589), !dbg !1322
  br i1 %114, label %253, label %254, !dbg !1328

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1329

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1332

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1019, metadata !589), !dbg !1322
  br i1 %118, label %257, label %644, !dbg !1334

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1019, metadata !589), !dbg !1322
  br i1 %105, label %503, label %476, !dbg !1336

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1337
  br i1 %260, label %261, label %266, !dbg !1339

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1340, !tbaa !1092
  %263 = icmp ne i8 %262, 0, !dbg !1342
  %264 = icmp ne i64 %124, 0, !dbg !1343
  %265 = or i1 %264, %263, !dbg !1345
  br i1 %265, label %476, label %272, !dbg !1345

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1346
  %268 = icmp ne i64 %124, 0, !dbg !1343
  %269 = or i1 %268, %267, !dbg !1348
  br i1 %269, label %476, label %272, !dbg !1348

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1343
  br i1 %271, label %272, label %476, !dbg !1350

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1022, metadata !589), !dbg !1157
  br label %273, !dbg !1351

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1022, metadata !589), !dbg !1157
  br i1 %118, label %476, label %644, !dbg !1352

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1013, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1022, metadata !589), !dbg !1157
  br i1 %114, label %276, label %476, !dbg !1354

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1355

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1358
  %279 = icmp ne i64 %126, 0, !dbg !1360
  %280 = or i1 %279, %278, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1006, metadata !589), !dbg !1068
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !996, metadata !589), !dbg !1059
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1362
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !996, metadata !589), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1006, metadata !589), !dbg !1068
  %283 = icmp ult i64 %125, %282, !dbg !1363
  br i1 %283, label %284, label %286, !dbg !1367

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1369
  store i8 39, i8* %285, align 1, !dbg !1369, !tbaa !1092
  br label %286, !dbg !1369

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1005, metadata !589), !dbg !1067
  %288 = icmp ult i64 %287, %282, !dbg !1373
  br i1 %288, label %289, label %291, !dbg !1377

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1379
  store i8 92, i8* %290, align 1, !dbg !1379, !tbaa !1092
  br label %291, !dbg !1379

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1005, metadata !589), !dbg !1067
  %293 = icmp ult i64 %292, %282, !dbg !1383
  br i1 %293, label %294, label %296, !dbg !1387

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1389
  store i8 39, i8* %295, align 1, !dbg !1389, !tbaa !1092
  br label %296, !dbg !1389

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1012, metadata !589), !dbg !1075
  br label %476, !dbg !1393

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1394

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1023, metadata !589), !dbg !1395
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1396
  %301 = load i16*, i16** %300, align 8, !dbg !1396, !tbaa !597
  %302 = zext i8 %159 to i64, !dbg !1396
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1396
  %304 = load i16, i16* %303, align 2, !dbg !1396, !tbaa !1398
  %305 = lshr i16 %304, 14, !dbg !1400
  %306 = trunc i16 %305 to i8, !dbg !1400
  %307 = and i8 %306, 1, !dbg !1400
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1026, metadata !589), !dbg !1401
  br label %368, !dbg !1402

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1403
  store i64 0, i64* %10, align 8, !dbg !1404
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1023, metadata !589), !dbg !1395
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1026, metadata !589), !dbg !1401
  %309 = icmp eq i64 %156, -1, !dbg !1405
  br i1 %309, label %310, label %312, !dbg !1407, !llvm.loop !1408

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !998, metadata !589), !dbg !1061
  br label %312, !dbg !1412, !llvm.loop !1408

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1401

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1026, metadata !589), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1023, metadata !589), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !998, metadata !589), !dbg !1061
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1413
  %317 = add i64 %315, %124, !dbg !1414
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1415
  %319 = sub i64 %313, %317, !dbg !1416
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1027, metadata !1417), !dbg !1418
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1044, metadata !1417), !dbg !1419
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1047, metadata !589), !dbg !1421
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1422

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1023, metadata !589), !dbg !1395
  %322 = icmp ugt i64 %313, %317, !dbg !1423
  br i1 %322, label %323, label %351, !dbg !1426

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1427

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1427
  %328 = load i8, i8* %327, align 1, !dbg !1427, !tbaa !1092
  %329 = icmp eq i8 %328, 0, !dbg !1429
  br i1 %329, label %348, label %330, !dbg !1430

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1023, metadata !589), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1023, metadata !589), !dbg !1395
  %332 = add i64 %331, %124, !dbg !1433
  %333 = icmp ult i64 %332, %313, !dbg !1423
  br i1 %333, label %324, label %348, !dbg !1426, !llvm.loop !1434

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1436
  %336 = and i1 %116, %335, !dbg !1440
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1048, metadata !589), !dbg !1441
  br i1 %336, label %337, label %355, !dbg !1440

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1442

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1442
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1443
  %342 = load i8, i8* %341, align 1, !dbg !1443, !tbaa !1092
  %343 = sext i8 %342 to i32, !dbg !1443
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1444

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1048, metadata !589), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1048, metadata !589), !dbg !1441
  %346 = icmp ult i64 %345, %320, !dbg !1436
  br i1 %346, label %338, label %354, !dbg !1447, !llvm.loop !1449

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1401

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1401

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1401

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1026, metadata !589), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1023, metadata !589), !dbg !1395
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1452
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1453

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1453, !tbaa !661
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1044, metadata !589), !dbg !1419
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1455
  %358 = icmp eq i32 %357, 0, !dbg !1455
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1026, metadata !589), !dbg !1401
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1456
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1026, metadata !589), !dbg !1401
  %360 = add i64 %320, %315, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1023, metadata !589), !dbg !1395
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1026, metadata !589), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1023, metadata !589), !dbg !1395
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1452
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1027, metadata !1417), !dbg !1418
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1458
  %362 = icmp eq i32 %361, 0, !dbg !1459
  br i1 %362, label %314, label %363, !dbg !1460, !llvm.loop !1408

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1462

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1462
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1026, metadata !589), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1023, metadata !589), !dbg !1395
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1452
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1462
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1026, metadata !589), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1023, metadata !589), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !998, metadata !589), !dbg !1061
  %372 = and i8 %371, 1, !dbg !1463
  %373 = icmp ne i8 %372, 0, !dbg !1463
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1022, metadata !589), !dbg !1157
  %374 = icmp ult i64 %370, 2, !dbg !1464
  %375 = or i1 %373, %113, !dbg !1465
  %376 = and i1 %374, %375, !dbg !1467
  br i1 %376, label %476, label %377, !dbg !1467

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1055, metadata !589), !dbg !1469
  br label %379, !dbg !1470

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1021, metadata !589), !dbg !1156
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1020, metadata !589), !dbg !1155
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1015, metadata !589), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1004, metadata !589), !dbg !1143
  br i1 %375, label %432, label %386, !dbg !1471

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1476

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1021, metadata !589), !dbg !1156
  %388 = and i8 %382, 1, !dbg !1480
  %389 = icmp eq i8 %388, 0, !dbg !1480
  %390 = and i1 %114, %389, !dbg !1483
  br i1 %390, label %391, label %407, !dbg !1483

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1485
  br i1 %392, label %393, label %395, !dbg !1490

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1492
  store i8 39, i8* %394, align 1, !dbg !1492, !tbaa !1092
  br label %395, !dbg !1492

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1005, metadata !589), !dbg !1067
  %397 = icmp ult i64 %396, %131, !dbg !1496
  br i1 %397, label %398, label %400, !dbg !1500

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1502
  store i8 36, i8* %399, align 1, !dbg !1502, !tbaa !1092
  br label %400, !dbg !1502

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1005, metadata !589), !dbg !1067
  %402 = icmp ult i64 %401, %131, !dbg !1506
  br i1 %402, label %403, label %405, !dbg !1510

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1512
  store i8 39, i8* %404, align 1, !dbg !1512, !tbaa !1092
  br label %405, !dbg !1512

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1514
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1012, metadata !589), !dbg !1075
  br label %407, !dbg !1516

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1005, metadata !589), !dbg !1067
  %410 = icmp ult i64 %408, %131, !dbg !1518
  br i1 %410, label %411, label %413, !dbg !1522

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1524
  store i8 92, i8* %412, align 1, !dbg !1524, !tbaa !1092
  br label %413, !dbg !1524

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1005, metadata !589), !dbg !1067
  %415 = icmp ult i64 %414, %131, !dbg !1528
  br i1 %415, label %416, label %420, !dbg !1532

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1534
  %418 = or i8 %417, 48, !dbg !1534
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1534
  store i8 %418, i8* %419, align 1, !dbg !1534, !tbaa !1092
  br label %420, !dbg !1534

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1005, metadata !589), !dbg !1067
  %422 = icmp ult i64 %421, %131, !dbg !1538
  br i1 %422, label %423, label %428, !dbg !1542

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1544
  %425 = and i8 %424, 7, !dbg !1544
  %426 = or i8 %425, 48, !dbg !1544
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1544
  store i8 %426, i8* %427, align 1, !dbg !1544, !tbaa !1092
  br label %428, !dbg !1544

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1005, metadata !589), !dbg !1067
  %430 = and i8 %383, 7, !dbg !1548
  %431 = or i8 %430, 48, !dbg !1549
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1015, metadata !589), !dbg !1174
  br label %441, !dbg !1550

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1551
  %434 = icmp eq i8 %433, 0, !dbg !1551
  br i1 %434, label %441, label %435, !dbg !1553

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1554
  br i1 %436, label %437, label %439, !dbg !1559

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1561
  store i8 92, i8* %438, align 1, !dbg !1561, !tbaa !1092
  br label %439, !dbg !1561

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1020, metadata !589), !dbg !1155
  br label %441, !dbg !1565

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1021, metadata !589), !dbg !1156
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1020, metadata !589), !dbg !1155
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1015, metadata !589), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1005, metadata !589), !dbg !1067
  %447 = add i64 %380, 1, !dbg !1566
  %448 = icmp ugt i64 %378, %447, !dbg !1568
  br i1 %448, label %449, label %541, !dbg !1569

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1570
  %451 = icmp ne i8 %450, 0, !dbg !1570
  %452 = and i8 %446, 1, !dbg !1574
  %453 = icmp eq i8 %452, 0, !dbg !1574
  %454 = and i1 %451, %453, !dbg !1570
  br i1 %454, label %455, label %466, !dbg !1570

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1576
  br i1 %456, label %457, label %459, !dbg !1581

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1583
  store i8 39, i8* %458, align 1, !dbg !1583, !tbaa !1092
  br label %459, !dbg !1583

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1005, metadata !589), !dbg !1067
  %461 = icmp ult i64 %460, %131, !dbg !1587
  br i1 %461, label %462, label %464, !dbg !1591

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1593
  store i8 39, i8* %463, align 1, !dbg !1593, !tbaa !1092
  br label %464, !dbg !1593

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1012, metadata !589), !dbg !1075
  br label %466, !dbg !1597

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1005, metadata !589), !dbg !1067
  %469 = icmp ult i64 %467, %131, !dbg !1599
  br i1 %469, label %470, label %472, !dbg !1603

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1605
  store i8 %444, i8* %471, align 1, !dbg !1605, !tbaa !1092
  br label %472, !dbg !1605

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1004, metadata !589), !dbg !1143
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1609
  %475 = load i8, i8* %474, align 1, !dbg !1609, !tbaa !1092
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1015, metadata !589), !dbg !1174
  br label %379, !dbg !1610, !llvm.loop !1612

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !996, metadata !589), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1022, metadata !589), !dbg !1157
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1021, metadata !589), !dbg !1156
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1020, metadata !589), !dbg !1155
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1015, metadata !589), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1013, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !998, metadata !589), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1006, metadata !589), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1004, metadata !589), !dbg !1143
  br i1 %107, label %488, label %487, !dbg !1615

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1617

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1618

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1619
  %491 = zext i8 %490 to i64, !dbg !1619
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1621
  %493 = load i32, i32* %492, align 4, !dbg !1621, !tbaa !661
  %494 = and i8 %483, 31, !dbg !1622
  %495 = zext i8 %494 to i32, !dbg !1623
  %496 = shl i32 1, %495, !dbg !1624
  %497 = and i32 %493, %496, !dbg !1624
  %498 = icmp eq i32 %497, 0, !dbg !1624
  %499 = icmp eq i8 %157, 0, !dbg !1625
  %500 = and i1 %499, %498, !dbg !1626
  br i1 %500, label %542, label %503, !dbg !1626

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1625
  br i1 %502, label %542, label %503, !dbg !1627

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !996, metadata !589), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1022, metadata !589), !dbg !1157
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1015, metadata !589), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1013, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !998, metadata !589), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1006, metadata !589), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1004, metadata !589), !dbg !1143
  br i1 %112, label %513, label %644, !dbg !1629

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1021, metadata !589), !dbg !1156
  %514 = and i8 %508, 1, !dbg !1632
  %515 = icmp eq i8 %514, 0, !dbg !1632
  %516 = and i1 %114, %515, !dbg !1635
  br i1 %516, label %517, label %533, !dbg !1635

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1637
  br i1 %518, label %519, label %521, !dbg !1642

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1644
  store i8 39, i8* %520, align 1, !dbg !1644, !tbaa !1092
  br label %521, !dbg !1644

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1005, metadata !589), !dbg !1067
  %523 = icmp ult i64 %522, %512, !dbg !1648
  br i1 %523, label %524, label %526, !dbg !1652

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1654
  store i8 36, i8* %525, align 1, !dbg !1654, !tbaa !1092
  br label %526, !dbg !1654

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1005, metadata !589), !dbg !1067
  %528 = icmp ult i64 %527, %512, !dbg !1658
  br i1 %528, label %529, label %531, !dbg !1662

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1664
  store i8 39, i8* %530, align 1, !dbg !1664, !tbaa !1092
  br label %531, !dbg !1664

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1012, metadata !589), !dbg !1075
  br label %533, !dbg !1668

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1005, metadata !589), !dbg !1067
  %536 = icmp ult i64 %534, %512, !dbg !1670
  br i1 %536, label %537, label %539, !dbg !1674

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1676
  store i8 92, i8* %538, align 1, !dbg !1676, !tbaa !1092
  br label %539, !dbg !1676

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !996, metadata !589), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1022, metadata !589), !dbg !1157
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1021, metadata !589), !dbg !1156
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1015, metadata !589), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1013, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !998, metadata !589), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1006, metadata !589), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1004, metadata !589), !dbg !1143
  br label %569, !dbg !1680

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1059

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !996, metadata !589), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1022, metadata !589), !dbg !1157
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1021, metadata !589), !dbg !1156
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1015, metadata !589), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1013, metadata !589), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !998, metadata !589), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1006, metadata !589), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1004, metadata !589), !dbg !1143
  %553 = and i8 %547, 1, !dbg !1680
  %554 = icmp ne i8 %553, 0, !dbg !1680
  %555 = and i8 %550, 1, !dbg !1684
  %556 = icmp eq i8 %555, 0, !dbg !1684
  %557 = and i1 %554, %556, !dbg !1680
  br i1 %557, label %558, label %569, !dbg !1680

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1686
  br i1 %559, label %560, label %562, !dbg !1691

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1693
  store i8 39, i8* %561, align 1, !dbg !1693, !tbaa !1092
  br label %562, !dbg !1693

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1005, metadata !589), !dbg !1067
  %564 = icmp ult i64 %563, %552, !dbg !1697
  br i1 %564, label %565, label %567, !dbg !1701

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1703
  store i8 39, i8* %566, align 1, !dbg !1703, !tbaa !1092
  br label %567, !dbg !1703

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1005, metadata !589), !dbg !1067
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1012, metadata !589), !dbg !1075
  br label %569, !dbg !1707

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1012, metadata !589), !dbg !1075
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1005, metadata !589), !dbg !1067
  %579 = icmp ult i64 %577, %570, !dbg !1709
  br i1 %579, label %580, label %582, !dbg !1713

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1715
  store i8 %572, i8* %581, align 1, !dbg !1715, !tbaa !1092
  br label %582, !dbg !1715

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1005, metadata !589), !dbg !1067
  %584 = and i8 %571, 1, !dbg !1719
  %585 = icmp eq i8 %584, 0, !dbg !1719
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1014, metadata !589), !dbg !1077
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1721
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1014, metadata !589), !dbg !1077
  br label %587, !dbg !1722

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1004, metadata !589), !dbg !1143
  br label %123, !dbg !1725, !llvm.loop !1726

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1729
  %600 = and i1 %114, %599, !dbg !1731
  %601 = xor i1 %600, true, !dbg !1731
  %602 = or i1 %112, %601, !dbg !1731
  br i1 %602, label %603, label %648, !dbg !1731

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1732
  %605 = xor i1 %604, true, !dbg !1732
  %606 = and i8 %129, 1, !dbg !1734
  %607 = icmp eq i8 %606, 0, !dbg !1734
  %608 = or i1 %607, %605, !dbg !1732
  br i1 %608, label %618, label %609, !dbg !1732

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1736
  %611 = icmp eq i8 %610, 0, !dbg !1736
  br i1 %611, label %614, label %612, !dbg !1739

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1740
  br label %659, !dbg !1741

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1742
  %616 = icmp ne i64 %126, 0, !dbg !1744
  %617 = and i1 %616, %615, !dbg !1746
  br i1 %617, label %27, label %618, !dbg !1746

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1747
  %620 = and i1 %619, %112, !dbg !1749
  br i1 %620, label %621, label %638, !dbg !1749

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1007, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1005, metadata !589), !dbg !1067
  %622 = load i8, i8* %100, align 1, !dbg !1750, !tbaa !1092
  %623 = icmp eq i8 %622, 0, !dbg !1754
  br i1 %623, label %638, label %624, !dbg !1754

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1756

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1756
  br i1 %629, label %630, label %632, !dbg !1760

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1762
  store i8 %626, i8* %631, align 1, !dbg !1762, !tbaa !1092
  br label %632, !dbg !1762

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1005, metadata !589), !dbg !1067
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1766
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1007, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1007, metadata !589), !dbg !1069
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1005, metadata !589), !dbg !1067
  %635 = load i8, i8* %634, align 1, !dbg !1750, !tbaa !1092
  %636 = icmp eq i8 %635, 0, !dbg !1754
  br i1 %636, label %637, label %625, !dbg !1754, !llvm.loop !1768

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1067

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1005, metadata !589), !dbg !1067
  %640 = icmp ult i64 %639, %131, !dbg !1771
  br i1 %640, label %641, label %659, !dbg !1773

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1774
  store i8 0, i8* %642, align 1, !dbg !1775, !tbaa !1092
  br label %659, !dbg !1774

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1059

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1059

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1059

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !996, metadata !589), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !998, metadata !589), !dbg !1061
  %653 = icmp ne i32 %650, 2, !dbg !1776
  %654 = icmp eq i8 %104, 0, !dbg !1778
  %655 = or i1 %653, %654, !dbg !1780
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !999, metadata !589), !dbg !1062
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !999, metadata !589), !dbg !1062
  %657 = and i32 %5, -3, !dbg !1781
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1782
  br label %659, !dbg !1783

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1784
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1785 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1789, metadata !589), !dbg !1793
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1790, metadata !589), !dbg !1794
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1795
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1791, metadata !589), !dbg !1796
  %4 = icmp eq i8* %3, %0, !dbg !1797
  br i1 %4, label %5, label %75, !dbg !1799

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1800
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1792, metadata !589), !dbg !1801
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1802, metadata !589), !dbg !1818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1816, metadata !589), !dbg !1821
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1817, metadata !589), !dbg !1822
  %7 = load i8, i8* %6, align 1, !tbaa !1092
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1823
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1823

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1826, metadata !589), !dbg !1840
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1838, metadata !589), !dbg !1844
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1839, metadata !589), !dbg !1845
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1092
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1846
  %15 = icmp eq i32 %14, 84, !dbg !1846
  br i1 %15, label %16, label %72, !dbg !1846

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1849, metadata !589), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1860, metadata !589), !dbg !1866
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1861, metadata !589), !dbg !1867
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1092
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1868
  %21 = icmp eq i32 %20, 70, !dbg !1868
  br i1 %21, label %22, label %72, !dbg !1868

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1871, metadata !589), !dbg !1883
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1881, metadata !589), !dbg !1887
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1882, metadata !589), !dbg !1888
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1092
  %25 = icmp eq i8 %24, 45, !dbg !1889
  br i1 %25, label %26, label %72, !dbg !1892

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1894, metadata !589), !dbg !1905
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1903, metadata !589), !dbg !1909
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !589), !dbg !1910
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1092
  %29 = icmp eq i8 %28, 56, !dbg !1911
  br i1 %29, label %30, label %72, !dbg !1914

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1916, metadata !589), !dbg !1926
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1924, metadata !589), !dbg !1930
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1925, metadata !589), !dbg !1931
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1092
  %33 = icmp eq i8 %32, 0, !dbg !1932
  br i1 %33, label %34, label %72, !dbg !1935

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1937, !tbaa !1092
  %36 = icmp eq i8 %35, 96, !dbg !1938
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.50, i64 0, i64 0), !dbg !1937
  br label %75, !dbg !1939

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1826, metadata !589), !dbg !1940
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1838, metadata !589), !dbg !1944
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1839, metadata !589), !dbg !1945
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1092
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !1946
  %43 = icmp eq i32 %42, 66, !dbg !1946
  br i1 %43, label %44, label %72, !dbg !1946

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1849, metadata !589), !dbg !1947
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1860, metadata !589), !dbg !1949
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1861, metadata !589), !dbg !1950
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1092
  %47 = icmp eq i8 %46, 49, !dbg !1951
  br i1 %47, label %48, label %72, !dbg !1953

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1871, metadata !589), !dbg !1955
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1881, metadata !589), !dbg !1957
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1882, metadata !589), !dbg !1958
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1092
  %51 = icmp eq i8 %50, 56, !dbg !1959
  br i1 %51, label %52, label %72, !dbg !1960

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1894, metadata !589), !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1903, metadata !589), !dbg !1963
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !589), !dbg !1964
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1092
  %55 = icmp eq i8 %54, 48, !dbg !1965
  br i1 %55, label %56, label %72, !dbg !1966

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1916, metadata !589), !dbg !1967
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1924, metadata !589), !dbg !1969
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1925, metadata !589), !dbg !1970
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1092
  %59 = icmp eq i8 %58, 51, !dbg !1971
  br i1 %59, label %60, label %72, !dbg !1972

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1973, metadata !589), !dbg !1982
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1980, metadata !589), !dbg !1986
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1981, metadata !589), !dbg !1987
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1092
  %63 = icmp eq i8 %62, 48, !dbg !1988
  br i1 %63, label %64, label %72, !dbg !1991

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1993, metadata !589), !dbg !2001
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1999, metadata !589), !dbg !2005
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2000, metadata !589), !dbg !2006
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1092
  %67 = icmp eq i8 %66, 0, !dbg !2007
  br i1 %67, label %68, label %72, !dbg !2010

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2011, !tbaa !1092
  %70 = icmp eq i8 %69, 96, !dbg !2012
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2011
  br label %75, !dbg !2013

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2014
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), !dbg !2015
  br label %75, !dbg !2016

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2017
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2018 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2022, metadata !589), !dbg !2025
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2023, metadata !589), !dbg !2026
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2024, metadata !589), !dbg !2027
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2028, metadata !589) #10, !dbg !2041
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2033, metadata !589) #10, !dbg !2043
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2034, metadata !589) #10, !dbg !2044
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2035, metadata !589) #10, !dbg !2045
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2046
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2046
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2036, metadata !589) #10, !dbg !2047
  %6 = tail call i32* @__errno_location() #1, !dbg !2048
  %7 = load i32, i32* %6, align 4, !dbg !2048, !tbaa !661
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2037, metadata !589) #10, !dbg !2049
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2050
  %9 = load i32, i32* %8, align 4, !dbg !2050, !tbaa !927
  %10 = or i32 %9, 1, !dbg !2051
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2038, metadata !589) #10, !dbg !2052
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2053
  %12 = load i32, i32* %11, align 8, !dbg !2053, !tbaa !865
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2054
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2055
  %15 = load i8*, i8** %14, align 8, !dbg !2055, !tbaa !954
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2056
  %17 = load i8*, i8** %16, align 8, !dbg !2056, !tbaa !957
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2057
  %19 = add i64 %18, 1, !dbg !2058
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2039, metadata !589) #10, !dbg !2059
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2060, metadata !589) #10, !dbg !2065
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2067
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2040, metadata !589) #10, !dbg !2068
  %21 = load i32, i32* %11, align 8, !dbg !2069, !tbaa !865
  %22 = load i8*, i8** %14, align 8, !dbg !2070, !tbaa !954
  %23 = load i8*, i8** %16, align 8, !dbg !2071, !tbaa !957
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2072
  store i32 %7, i32* %6, align 4, !dbg !2073, !tbaa !661
  ret i8* %20, !dbg !2074
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2029 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2028, metadata !589), !dbg !2075
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2033, metadata !589), !dbg !2076
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2034, metadata !589), !dbg !2077
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2035, metadata !589), !dbg !2078
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2079
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2079
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2036, metadata !589), !dbg !2080
  %7 = tail call i32* @__errno_location() #1, !dbg !2081
  %8 = load i32, i32* %7, align 4, !dbg !2081, !tbaa !661
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2037, metadata !589), !dbg !2082
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2083
  %10 = load i32, i32* %9, align 4, !dbg !2083, !tbaa !927
  %11 = icmp ne i64* %2, null, !dbg !2084
  %12 = xor i1 %11, true, !dbg !2084
  %13 = zext i1 %12 to i32, !dbg !2084
  %14 = or i32 %10, %13, !dbg !2085
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2038, metadata !589), !dbg !2086
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2087
  %16 = load i32, i32* %15, align 8, !dbg !2087, !tbaa !865
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2088
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2089
  %19 = load i8*, i8** %18, align 8, !dbg !2089, !tbaa !954
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2090
  %21 = load i8*, i8** %20, align 8, !dbg !2090, !tbaa !957
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2091
  %23 = add i64 %22, 1, !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2039, metadata !589), !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2060, metadata !589) #10, !dbg !2094
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2096
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2040, metadata !589), !dbg !2097
  %25 = load i32, i32* %15, align 8, !dbg !2098, !tbaa !865
  %26 = load i8*, i8** %18, align 8, !dbg !2099, !tbaa !954
  %27 = load i8*, i8** %20, align 8, !dbg !2100, !tbaa !957
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2101
  store i32 %8, i32* %7, align 4, !dbg !2102, !tbaa !661
  br i1 %11, label %29, label %30, !dbg !2103

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2104, !tbaa !2106
  br label %30, !dbg !2108

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2109
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2110 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2114, !tbaa !597
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2112, metadata !589), !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2113, metadata !589), !dbg !2116
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2113, metadata !589), !dbg !2116
  %2 = load i32, i32* @nslots, align 4, !dbg !2117, !tbaa !661
  %3 = icmp sgt i32 %2, 1, !dbg !2121
  br i1 %3, label %4, label %14, !dbg !2122

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2124

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2124
  %8 = load i8*, i8** %7, align 8, !dbg !2124, !tbaa !2125
  tail call void @free(i8* %8) #10, !dbg !2127
  %9 = add nuw i64 %6, 1, !dbg !2128
  %10 = load i32, i32* @nslots, align 4, !dbg !2117, !tbaa !661
  %11 = sext i32 %10 to i64, !dbg !2121
  %12 = icmp slt i64 %9, %11, !dbg !2121
  br i1 %12, label %5, label %13, !dbg !2122, !llvm.loop !2130

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2133

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2133
  %16 = load i8*, i8** %15, align 8, !dbg !2133, !tbaa !2125
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2135
  br i1 %17, label %19, label %18, !dbg !2136

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2137
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2139, !tbaa !2140
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2141, !tbaa !2125
  br label %19, !dbg !2142

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2143
  br i1 %20, label %23, label %21, !dbg !2145

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2146
  tail call void @free(i8* %22) #10, !dbg !2148
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2149, !tbaa !597
  br label %23, !dbg !2150

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2151, !tbaa !661
  ret void, !dbg !2152
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2153 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2157, metadata !589), !dbg !2159
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2158, metadata !589), !dbg !2160
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2161
  ret i8* %3, !dbg !2162
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2163 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2167, metadata !589), !dbg !2181
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2168, metadata !589), !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2169, metadata !589), !dbg !2183
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2170, metadata !589), !dbg !2184
  %5 = tail call i32* @__errno_location() #1, !dbg !2185
  %6 = load i32, i32* %5, align 4, !dbg !2185, !tbaa !661
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2171, metadata !589), !dbg !2186
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2187, !tbaa !597
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2172, metadata !589), !dbg !2188
  %8 = icmp slt i32 %0, 0, !dbg !2189
  br i1 %8, label %9, label %10, !dbg !2191

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2192
  unreachable, !dbg !2192

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2193, !tbaa !661
  %12 = icmp sgt i32 %11, %0, !dbg !2194
  br i1 %12, label %34, label %13, !dbg !2195

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2196
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2197
  br i1 %15, label %16, label %17, !dbg !2199

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2200
  unreachable, !dbg !2200

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2201
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2201
  %20 = add nsw i32 %0, 1, !dbg !2203
  %21 = sext i32 %20 to i64, !dbg !2204
  %22 = shl nsw i64 %21, 4, !dbg !2205
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2206
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2206
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2172, metadata !589), !dbg !2188
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2207, !tbaa !597
  br i1 %14, label %25, label %26, !dbg !2208

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2209, !tbaa.struct !2211
  br label %26, !dbg !2212

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2213, !tbaa !661
  %28 = sext i32 %27 to i64, !dbg !2214
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2214
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2215
  %31 = sub nsw i32 %20, %27, !dbg !2216
  %32 = sext i32 %31 to i64, !dbg !2217
  %33 = shl nsw i64 %32, 4, !dbg !2218
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2215
  store i32 %20, i32* @nslots, align 4, !dbg !2219, !tbaa !661
  br label %34, !dbg !2220

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2172, metadata !589), !dbg !2188
  %36 = sext i32 %0 to i64, !dbg !2221
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2222
  %38 = load i64, i64* %37, align 8, !dbg !2222, !tbaa !2140
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2176, metadata !589), !dbg !2223
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2224
  %40 = load i8*, i8** %39, align 8, !dbg !2224, !tbaa !2125
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2178, metadata !589), !dbg !2225
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2226
  %42 = load i32, i32* %41, align 4, !dbg !2226, !tbaa !927
  %43 = or i32 %42, 1, !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2179, metadata !589), !dbg !2228
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2229
  %45 = load i32, i32* %44, align 8, !dbg !2229, !tbaa !865
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2230
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2231
  %48 = load i8*, i8** %47, align 8, !dbg !2231, !tbaa !954
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2232
  %50 = load i8*, i8** %49, align 8, !dbg !2232, !tbaa !957
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2180, metadata !589), !dbg !2234
  %52 = icmp ugt i64 %38, %51, !dbg !2235
  br i1 %52, label %63, label %53, !dbg !2237

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2238
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2176, metadata !589), !dbg !2223
  store i64 %54, i64* %37, align 8, !dbg !2240, !tbaa !2140
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2241
  br i1 %55, label %57, label %56, !dbg !2243

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2244
  br label %57, !dbg !2244

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2060, metadata !589) #10, !dbg !2245
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2247
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2178, metadata !589), !dbg !2225
  store i8* %58, i8** %39, align 8, !dbg !2248, !tbaa !2125
  %59 = load i32, i32* %44, align 8, !dbg !2249, !tbaa !865
  %60 = load i8*, i8** %47, align 8, !dbg !2250, !tbaa !954
  %61 = load i8*, i8** %49, align 8, !dbg !2251, !tbaa !957
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2252
  br label %63, !dbg !2253

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2178, metadata !589), !dbg !2225
  store i32 %6, i32* %5, align 4, !dbg !2254, !tbaa !661
  ret i8* %64, !dbg !2255
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2256 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2260, metadata !589), !dbg !2263
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2261, metadata !589), !dbg !2264
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2262, metadata !589), !dbg !2265
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2266
  ret i8* %4, !dbg !2267
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2268 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2272, metadata !589), !dbg !2273
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2157, metadata !589) #10, !dbg !2274
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2158, metadata !589) #10, !dbg !2276
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2277
  ret i8* %2, !dbg !2278
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2279 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2283, metadata !589), !dbg !2285
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2284, metadata !589), !dbg !2286
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2260, metadata !589) #10, !dbg !2287
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2261, metadata !589) #10, !dbg !2289
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2262, metadata !589) #10, !dbg !2290
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2291
  ret i8* %3, !dbg !2292
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2293 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2301, metadata !2307), !dbg !2308
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2297, metadata !589), !dbg !2310
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2298, metadata !589), !dbg !2311
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2299, metadata !589), !dbg !2312
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2313
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2313
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2300, metadata !1417), !dbg !2314
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2306, metadata !589) #10, !dbg !2315
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2316
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2316
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2301, metadata !589) #10, !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2301, metadata !2317) #10, !dbg !2308
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2308
  %8 = icmp eq i32 %1, 10, !dbg !2318
  br i1 %8, label %9, label %10, !dbg !2320

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2321, !noalias !2322
  unreachable, !dbg !2321

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2301, metadata !2317) #10, !dbg !2308
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2325
  store i32 %1, i32* %11, align 8, !dbg !2325, !alias.scope !2322
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2325
  %13 = bitcast i32* %12 to i8*, !dbg !2325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2325
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2326
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2300, metadata !1417), !dbg !2314
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2327
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2328
  ret i8* %14, !dbg !2329
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2330 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2301, metadata !2307), !dbg !2339
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2334, metadata !589), !dbg !2341
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2335, metadata !589), !dbg !2342
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2336, metadata !589), !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2337, metadata !589), !dbg !2344
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2345
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2345
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2338, metadata !1417), !dbg !2346
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2306, metadata !589) #10, !dbg !2347
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2348
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2348
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2301, metadata !589) #10, !dbg !2339
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2301, metadata !2317) #10, !dbg !2339
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2339
  %9 = icmp eq i32 %1, 10, !dbg !2349
  br i1 %9, label %10, label %11, !dbg !2350

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2351, !noalias !2352
  unreachable, !dbg !2351

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2301, metadata !2317) #10, !dbg !2339
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2355
  store i32 %1, i32* %12, align 8, !dbg !2355, !alias.scope !2352
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2355
  %14 = bitcast i32* %13 to i8*, !dbg !2355
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2355
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2356
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2338, metadata !1417), !dbg !2346
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2357
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2358
  ret i8* %15, !dbg !2359
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2360 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2301, metadata !2307), !dbg !2366
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2364, metadata !589), !dbg !2369
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2365, metadata !589), !dbg !2370
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2297, metadata !589) #10, !dbg !2371
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2298, metadata !589) #10, !dbg !2372
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2299, metadata !589) #10, !dbg !2373
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2374
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2300, metadata !1417) #10, !dbg !2375
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2306, metadata !589) #10, !dbg !2376
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2377
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2377
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2301, metadata !589) #10, !dbg !2366
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2301, metadata !2317) #10, !dbg !2366
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2366
  %7 = icmp eq i32 %0, 10, !dbg !2378
  br i1 %7, label %8, label %9, !dbg !2379

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2380, !noalias !2381
  unreachable, !dbg !2380

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2301, metadata !2317) #10, !dbg !2366
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2384
  store i32 %0, i32* %10, align 8, !dbg !2384, !alias.scope !2381
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2384
  %12 = bitcast i32* %11 to i8*, !dbg !2384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2384
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2385
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2300, metadata !1417) #10, !dbg !2375
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2386
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2387
  ret i8* %13, !dbg !2388
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2389 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2301, metadata !2307), !dbg !2396
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2393, metadata !589), !dbg !2399
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2394, metadata !589), !dbg !2400
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2395, metadata !589), !dbg !2401
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2334, metadata !589) #10, !dbg !2402
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2335, metadata !589) #10, !dbg !2403
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2336, metadata !589) #10, !dbg !2404
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2337, metadata !589) #10, !dbg !2405
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2406
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2338, metadata !1417) #10, !dbg !2407
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2306, metadata !589) #10, !dbg !2408
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2409
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2409
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2301, metadata !589) #10, !dbg !2396
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2301, metadata !2317) #10, !dbg !2396
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2396
  %8 = icmp eq i32 %0, 10, !dbg !2410
  br i1 %8, label %9, label %10, !dbg !2411

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2412, !noalias !2413
  unreachable, !dbg !2412

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2301, metadata !2317) #10, !dbg !2396
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2416
  store i32 %0, i32* %11, align 8, !dbg !2416, !alias.scope !2413
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2416
  %13 = bitcast i32* %12 to i8*, !dbg !2416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2416
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2417
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2338, metadata !1417) #10, !dbg !2407
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2418
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2419
  ret i8* %14, !dbg !2420
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2421 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2425, metadata !589), !dbg !2429
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2426, metadata !589), !dbg !2430
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2427, metadata !589), !dbg !2431
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2432
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2432
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2433, !tbaa.struct !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2428, metadata !1417), !dbg !2435
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !885, metadata !589), !dbg !2436
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !886, metadata !589), !dbg !2438
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !887, metadata !589), !dbg !2439
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !888, metadata !589), !dbg !2440
  %6 = lshr i8 %2, 5, !dbg !2441
  %7 = zext i8 %6 to i64, !dbg !2441
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2442
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !889, metadata !589), !dbg !2443
  %9 = and i8 %2, 31, !dbg !2444
  %10 = zext i8 %9 to i32, !dbg !2445
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !891, metadata !589), !dbg !2446
  %11 = load i32, i32* %8, align 4, !dbg !2447, !tbaa !661
  %12 = lshr i32 %11, %10, !dbg !2448
  %13 = and i32 %12, 1, !dbg !2449
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !892, metadata !589), !dbg !2450
  %14 = xor i32 %13, 1, !dbg !2451
  %15 = shl i32 %14, %10, !dbg !2452
  %16 = xor i32 %15, %11, !dbg !2453
  store i32 %16, i32* %8, align 4, !dbg !2453, !tbaa !661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2428, metadata !1417), !dbg !2435
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2454
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2455
  ret i8* %17, !dbg !2456
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2457 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2461, metadata !589), !dbg !2463
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2462, metadata !589), !dbg !2464
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2425, metadata !589) #10, !dbg !2465
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2426, metadata !589) #10, !dbg !2467
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2427, metadata !589) #10, !dbg !2468
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2469
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2470, !tbaa.struct !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2428, metadata !1417) #10, !dbg !2471
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !885, metadata !589) #10, !dbg !2472
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !886, metadata !589) #10, !dbg !2474
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !887, metadata !589) #10, !dbg !2475
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !888, metadata !589) #10, !dbg !2476
  %5 = lshr i8 %1, 5, !dbg !2477
  %6 = zext i8 %5 to i64, !dbg !2477
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2478
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !889, metadata !589) #10, !dbg !2479
  %8 = and i8 %1, 31, !dbg !2480
  %9 = zext i8 %8 to i32, !dbg !2481
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !891, metadata !589) #10, !dbg !2482
  %10 = load i32, i32* %7, align 4, !dbg !2483, !tbaa !661
  %11 = lshr i32 %10, %9, !dbg !2484
  %12 = and i32 %11, 1, !dbg !2485
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !892, metadata !589) #10, !dbg !2486
  %13 = xor i32 %12, 1, !dbg !2487
  %14 = shl i32 %13, %9, !dbg !2488
  %15 = xor i32 %14, %10, !dbg !2489
  store i32 %15, i32* %7, align 4, !dbg !2489, !tbaa !661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2428, metadata !1417) #10, !dbg !2471
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2490
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2491
  ret i8* %16, !dbg !2492
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2493 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2495, metadata !589), !dbg !2496
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2461, metadata !589) #10, !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2462, metadata !589) #10, !dbg !2499
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2425, metadata !589) #10, !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2426, metadata !589) #10, !dbg !2502
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2427, metadata !589) #10, !dbg !2503
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2504
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2504
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2505, !tbaa.struct !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2428, metadata !1417) #10, !dbg !2506
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !885, metadata !589) #10, !dbg !2507
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !886, metadata !589) #10, !dbg !2509
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !887, metadata !589) #10, !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !888, metadata !589) #10, !dbg !2511
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2512
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !889, metadata !589) #10, !dbg !2513
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !891, metadata !589) #10, !dbg !2514
  %5 = load i32, i32* %4, align 4, !dbg !2515, !tbaa !661
  %6 = or i32 %5, 67108864, !dbg !2516
  store i32 %6, i32* %4, align 4, !dbg !2516, !tbaa !661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2428, metadata !1417) #10, !dbg !2506
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2517
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2518
  ret i8* %7, !dbg !2519
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2520 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2522, metadata !589), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2523, metadata !589), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2425, metadata !589) #10, !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2426, metadata !589) #10, !dbg !2528
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2427, metadata !589) #10, !dbg !2529
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2530
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2531, !tbaa.struct !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2428, metadata !1417) #10, !dbg !2532
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !885, metadata !589) #10, !dbg !2533
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !886, metadata !589) #10, !dbg !2535
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !887, metadata !589) #10, !dbg !2536
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !888, metadata !589) #10, !dbg !2537
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2538
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !889, metadata !589) #10, !dbg !2539
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !891, metadata !589) #10, !dbg !2540
  %6 = load i32, i32* %5, align 4, !dbg !2541, !tbaa !661
  %7 = or i32 %6, 67108864, !dbg !2542
  store i32 %7, i32* %5, align 4, !dbg !2542, !tbaa !661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2428, metadata !1417) #10, !dbg !2532
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2543
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2544
  ret i8* %8, !dbg !2545
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2546 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2301, metadata !2307), !dbg !2552
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2548, metadata !589), !dbg !2554
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2549, metadata !589), !dbg !2555
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2550, metadata !589), !dbg !2556
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2557
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2557
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2306, metadata !589) #10, !dbg !2558
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2559
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2559
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2301, metadata !589) #10, !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2301, metadata !2317) #10, !dbg !2552
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2552
  %9 = icmp eq i32 %1, 10, !dbg !2560
  br i1 %9, label %10, label %11, !dbg !2561

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2562, !noalias !2563
  unreachable, !dbg !2562

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2301, metadata !2317) #10, !dbg !2552
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2566
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2567
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2568
  store i32 %1, i32* %13, align 8, !dbg !2568
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2568
  %15 = bitcast i32* %14 to i8*, !dbg !2568
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2568
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2551, metadata !1417), !dbg !2569
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !885, metadata !589), !dbg !2570
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !886, metadata !589), !dbg !2572
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !887, metadata !589), !dbg !2573
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !888, metadata !589), !dbg !2574
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2575
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !889, metadata !589), !dbg !2576
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !891, metadata !589), !dbg !2577
  %17 = load i32, i32* %16, align 4, !dbg !2578, !tbaa !661
  %18 = or i32 %17, 67108864, !dbg !2579
  store i32 %18, i32* %16, align 4, !dbg !2579, !tbaa !661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2551, metadata !1417), !dbg !2569
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2580
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2581
  ret i8* %19, !dbg !2582
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2583 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2587, metadata !589), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2588, metadata !589), !dbg !2592
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2589, metadata !589), !dbg !2593
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2590, metadata !589), !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2595, metadata !589) #10, !dbg !2605
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2600, metadata !589) #10, !dbg !2607
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2601, metadata !589) #10, !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2602, metadata !589) #10, !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2603, metadata !589) #10, !dbg !2610
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2611
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2611
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2612, !tbaa.struct !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2604, metadata !1417) #10, !dbg !2613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !935, metadata !589) #10, !dbg !2614
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !936, metadata !589) #10, !dbg !2616
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !937, metadata !589) #10, !dbg !2617
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !935, metadata !589) #10, !dbg !2614
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !935, metadata !589) #10, !dbg !2614
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2618
  store i32 10, i32* %7, align 8, !dbg !2619, !tbaa !865
  %8 = icmp ne i8* %1, null, !dbg !2620
  %9 = icmp ne i8* %2, null, !dbg !2621
  %10 = and i1 %8, %9, !dbg !2622
  br i1 %10, label %12, label %11, !dbg !2622

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2623
  unreachable, !dbg !2623

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2624
  store i8* %1, i8** %13, align 8, !dbg !2625, !tbaa !954
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2626
  store i8* %2, i8** %14, align 8, !dbg !2627, !tbaa !957
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2604, metadata !1417) #10, !dbg !2613
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2628
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2629
  ret i8* %15, !dbg !2630
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2596 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2595, metadata !589), !dbg !2631
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2600, metadata !589), !dbg !2632
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2601, metadata !589), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2602, metadata !589), !dbg !2634
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2603, metadata !589), !dbg !2635
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2636
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2636
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2637, !tbaa.struct !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2604, metadata !1417), !dbg !2638
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !935, metadata !589) #10, !dbg !2639
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !936, metadata !589) #10, !dbg !2641
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !937, metadata !589) #10, !dbg !2642
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !935, metadata !589) #10, !dbg !2639
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !935, metadata !589) #10, !dbg !2639
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2643
  store i32 10, i32* %8, align 8, !dbg !2644, !tbaa !865
  %9 = icmp ne i8* %1, null, !dbg !2645
  %10 = icmp ne i8* %2, null, !dbg !2646
  %11 = and i1 %9, %10, !dbg !2647
  br i1 %11, label %13, label %12, !dbg !2647

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2648
  unreachable, !dbg !2648

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2649
  store i8* %1, i8** %14, align 8, !dbg !2650, !tbaa !954
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2651
  store i8* %2, i8** %15, align 8, !dbg !2652, !tbaa !957
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2604, metadata !1417), !dbg !2638
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2653
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2654
  ret i8* %16, !dbg !2655
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2656 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2660, metadata !589), !dbg !2663
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2661, metadata !589), !dbg !2664
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2662, metadata !589), !dbg !2665
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2587, metadata !589) #10, !dbg !2666
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2588, metadata !589) #10, !dbg !2668
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2589, metadata !589) #10, !dbg !2669
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2590, metadata !589) #10, !dbg !2670
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2595, metadata !589) #10, !dbg !2671
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2600, metadata !589) #10, !dbg !2673
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2601, metadata !589) #10, !dbg !2674
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2602, metadata !589) #10, !dbg !2675
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2603, metadata !589) #10, !dbg !2676
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2677
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2678, !tbaa.struct !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2604, metadata !1417) #10, !dbg !2679
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !935, metadata !589) #10, !dbg !2680
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !936, metadata !589) #10, !dbg !2682
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !937, metadata !589) #10, !dbg !2683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !935, metadata !589) #10, !dbg !2680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !935, metadata !589) #10, !dbg !2680
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2684
  store i32 10, i32* %6, align 8, !dbg !2685, !tbaa !865
  %7 = icmp ne i8* %0, null, !dbg !2686
  %8 = icmp ne i8* %1, null, !dbg !2687
  %9 = and i1 %7, %8, !dbg !2688
  br i1 %9, label %11, label %10, !dbg !2688

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2689
  unreachable, !dbg !2689

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2690
  store i8* %0, i8** %12, align 8, !dbg !2691, !tbaa !954
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2692
  store i8* %1, i8** %13, align 8, !dbg !2693, !tbaa !957
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2604, metadata !1417) #10, !dbg !2679
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2694
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2695
  ret i8* %14, !dbg !2696
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2697 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2701, metadata !589), !dbg !2705
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2702, metadata !589), !dbg !2706
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2703, metadata !589), !dbg !2707
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2704, metadata !589), !dbg !2708
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2595, metadata !589) #10, !dbg !2709
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2600, metadata !589) #10, !dbg !2711
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2601, metadata !589) #10, !dbg !2712
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2602, metadata !589) #10, !dbg !2713
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2603, metadata !589) #10, !dbg !2714
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2715
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2715
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2716, !tbaa.struct !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2604, metadata !1417) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !935, metadata !589) #10, !dbg !2718
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !936, metadata !589) #10, !dbg !2720
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !937, metadata !589) #10, !dbg !2721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !935, metadata !589) #10, !dbg !2718
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !935, metadata !589) #10, !dbg !2718
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2722
  store i32 10, i32* %7, align 8, !dbg !2723, !tbaa !865
  %8 = icmp ne i8* %0, null, !dbg !2724
  %9 = icmp ne i8* %1, null, !dbg !2725
  %10 = and i1 %8, %9, !dbg !2726
  br i1 %10, label %12, label %11, !dbg !2726

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2727
  unreachable, !dbg !2727

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2728
  store i8* %0, i8** %13, align 8, !dbg !2729, !tbaa !954
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2730
  store i8* %1, i8** %14, align 8, !dbg !2731, !tbaa !957
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2604, metadata !1417) #10, !dbg !2717
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2732
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2733
  ret i8* %15, !dbg !2734
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2735 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2739, metadata !589), !dbg !2742
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2740, metadata !589), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2741, metadata !589), !dbg !2744
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2745
  ret i8* %4, !dbg !2746
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2747 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2751, metadata !589), !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2752, metadata !589), !dbg !2754
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2739, metadata !589) #10, !dbg !2755
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2740, metadata !589) #10, !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2741, metadata !589) #10, !dbg !2758
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2759
  ret i8* %3, !dbg !2760
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2761 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2765, metadata !589), !dbg !2767
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2766, metadata !589), !dbg !2768
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2739, metadata !589) #10, !dbg !2769
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2740, metadata !589) #10, !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2741, metadata !589) #10, !dbg !2772
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2773
  ret i8* %3, !dbg !2774
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2775 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2779, metadata !589), !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2765, metadata !589) #10, !dbg !2781
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2766, metadata !589) #10, !dbg !2783
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2739, metadata !589) #10, !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2740, metadata !589) #10, !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2741, metadata !589) #10, !dbg !2787
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2788
  ret i8* %2, !dbg !2789
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2790 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2847, metadata !589), !dbg !2853
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2848, metadata !589), !dbg !2854
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2849, metadata !589), !dbg !2855
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2850, metadata !589), !dbg !2856
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2851, metadata !589), !dbg !2857
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2852, metadata !589), !dbg !2858
  %7 = icmp eq i8* %1, null, !dbg !2859
  br i1 %7, label %10, label %8, !dbg !2861

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2862
  br label %12, !dbg !2862

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2863
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i32 5) #10, !dbg !2864
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2865
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.58, i64 0, i64 0), i32 5) #10, !dbg !2867
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2868
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
  ], !dbg !2869

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2870
  unreachable, !dbg !2870

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.59, i64 0, i64 0), i32 5) #10, !dbg !2872
  %20 = load i8*, i8** %4, align 8, !dbg !2872, !tbaa !597
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2873
  br label %146, !dbg !2875

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.60, i64 0, i64 0), i32 5) #10, !dbg !2876
  %24 = load i8*, i8** %4, align 8, !dbg !2876, !tbaa !597
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2876
  %26 = load i8*, i8** %25, align 8, !dbg !2876, !tbaa !597
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2877
  br label %146, !dbg !2878

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.61, i64 0, i64 0), i32 5) #10, !dbg !2879
  %30 = load i8*, i8** %4, align 8, !dbg !2879, !tbaa !597
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2879
  %32 = load i8*, i8** %31, align 8, !dbg !2879, !tbaa !597
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2879
  %34 = load i8*, i8** %33, align 8, !dbg !2879, !tbaa !597
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2880
  br label %146, !dbg !2881

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.62, i64 0, i64 0), i32 5) #10, !dbg !2882
  %38 = load i8*, i8** %4, align 8, !dbg !2882, !tbaa !597
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2882
  %40 = load i8*, i8** %39, align 8, !dbg !2882, !tbaa !597
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2882
  %42 = load i8*, i8** %41, align 8, !dbg !2882, !tbaa !597
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2882
  %44 = load i8*, i8** %43, align 8, !dbg !2882, !tbaa !597
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2883
  br label %146, !dbg !2884

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.63, i64 0, i64 0), i32 5) #10, !dbg !2885
  %48 = load i8*, i8** %4, align 8, !dbg !2885, !tbaa !597
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2885
  %50 = load i8*, i8** %49, align 8, !dbg !2885, !tbaa !597
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2885
  %52 = load i8*, i8** %51, align 8, !dbg !2885, !tbaa !597
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2885
  %54 = load i8*, i8** %53, align 8, !dbg !2885, !tbaa !597
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2885
  %56 = load i8*, i8** %55, align 8, !dbg !2885, !tbaa !597
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2886
  br label %146, !dbg !2887

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.64, i64 0, i64 0), i32 5) #10, !dbg !2888
  %60 = load i8*, i8** %4, align 8, !dbg !2888, !tbaa !597
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2888
  %62 = load i8*, i8** %61, align 8, !dbg !2888, !tbaa !597
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2888
  %64 = load i8*, i8** %63, align 8, !dbg !2888, !tbaa !597
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2888
  %66 = load i8*, i8** %65, align 8, !dbg !2888, !tbaa !597
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2888
  %68 = load i8*, i8** %67, align 8, !dbg !2888, !tbaa !597
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2888
  %70 = load i8*, i8** %69, align 8, !dbg !2888, !tbaa !597
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2889
  br label %146, !dbg !2890

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.65, i64 0, i64 0), i32 5) #10, !dbg !2891
  %74 = load i8*, i8** %4, align 8, !dbg !2891, !tbaa !597
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2891
  %76 = load i8*, i8** %75, align 8, !dbg !2891, !tbaa !597
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2891
  %78 = load i8*, i8** %77, align 8, !dbg !2891, !tbaa !597
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2891
  %80 = load i8*, i8** %79, align 8, !dbg !2891, !tbaa !597
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2891
  %82 = load i8*, i8** %81, align 8, !dbg !2891, !tbaa !597
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2891
  %84 = load i8*, i8** %83, align 8, !dbg !2891, !tbaa !597
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2891
  %86 = load i8*, i8** %85, align 8, !dbg !2891, !tbaa !597
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2892
  br label %146, !dbg !2893

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.66, i64 0, i64 0), i32 5) #10, !dbg !2894
  %90 = load i8*, i8** %4, align 8, !dbg !2894, !tbaa !597
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2894
  %92 = load i8*, i8** %91, align 8, !dbg !2894, !tbaa !597
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2894
  %94 = load i8*, i8** %93, align 8, !dbg !2894, !tbaa !597
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2894
  %96 = load i8*, i8** %95, align 8, !dbg !2894, !tbaa !597
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2894
  %98 = load i8*, i8** %97, align 8, !dbg !2894, !tbaa !597
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2894
  %100 = load i8*, i8** %99, align 8, !dbg !2894, !tbaa !597
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2894
  %102 = load i8*, i8** %101, align 8, !dbg !2894, !tbaa !597
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2894
  %104 = load i8*, i8** %103, align 8, !dbg !2894, !tbaa !597
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2895
  br label %146, !dbg !2896

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.67, i64 0, i64 0), i32 5) #10, !dbg !2897
  %108 = load i8*, i8** %4, align 8, !dbg !2897, !tbaa !597
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2897
  %110 = load i8*, i8** %109, align 8, !dbg !2897, !tbaa !597
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2897
  %112 = load i8*, i8** %111, align 8, !dbg !2897, !tbaa !597
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2897
  %114 = load i8*, i8** %113, align 8, !dbg !2897, !tbaa !597
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2897
  %116 = load i8*, i8** %115, align 8, !dbg !2897, !tbaa !597
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2897
  %118 = load i8*, i8** %117, align 8, !dbg !2897, !tbaa !597
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2897
  %120 = load i8*, i8** %119, align 8, !dbg !2897, !tbaa !597
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2897
  %122 = load i8*, i8** %121, align 8, !dbg !2897, !tbaa !597
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2897
  %124 = load i8*, i8** %123, align 8, !dbg !2897, !tbaa !597
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2898
  br label %146, !dbg !2899

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !2900
  %128 = load i8*, i8** %4, align 8, !dbg !2900, !tbaa !597
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2900
  %130 = load i8*, i8** %129, align 8, !dbg !2900, !tbaa !597
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2900
  %132 = load i8*, i8** %131, align 8, !dbg !2900, !tbaa !597
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2900
  %134 = load i8*, i8** %133, align 8, !dbg !2900, !tbaa !597
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2900
  %136 = load i8*, i8** %135, align 8, !dbg !2900, !tbaa !597
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2900
  %138 = load i8*, i8** %137, align 8, !dbg !2900, !tbaa !597
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2900
  %140 = load i8*, i8** %139, align 8, !dbg !2900, !tbaa !597
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2900
  %142 = load i8*, i8** %141, align 8, !dbg !2900, !tbaa !597
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2900
  %144 = load i8*, i8** %143, align 8, !dbg !2900, !tbaa !597
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2901
  br label %146, !dbg !2902

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2903
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2904 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2908, metadata !589), !dbg !2914
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2909, metadata !589), !dbg !2915
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2910, metadata !589), !dbg !2916
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2911, metadata !589), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2912, metadata !589), !dbg !2918
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2913, metadata !589), !dbg !2919
  br label %6, !dbg !2920

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2913, metadata !589), !dbg !2919
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2922
  %9 = load i8*, i8** %8, align 8, !dbg !2922, !tbaa !597
  %10 = icmp eq i8* %9, null, !dbg !2925
  %11 = add i64 %7, 1, !dbg !2927
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2913, metadata !589), !dbg !2919
  br i1 %10, label %12, label %6, !dbg !2925, !llvm.loop !2929

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2932
  ret void, !dbg !2933
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2934 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2945, metadata !589), !dbg !2953
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2946, metadata !589), !dbg !2954
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2947, metadata !589), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2948, metadata !589), !dbg !2956
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2949, metadata !589), !dbg !2957
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2958
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !2958
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2951, metadata !589), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2950, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2950, metadata !589), !dbg !2960
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !2961
  %12 = icmp ult i32 %11, 41, !dbg !2961
  br i1 %12, label %13, label %18, !dbg !2961

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2965
  %15 = sext i32 %11 to i64, !dbg !2965
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2965
  %17 = add i32 %11, 8, !dbg !2965
  store i32 %17, i32* %8, align 8, !dbg !2965
  br label %21, !dbg !2965

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2967
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2967
  store i8* %20, i8** %10, align 8, !dbg !2967
  br label %21, !dbg !2967

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !2961
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2969
  %25 = load i8*, i8** %24, align 8, !dbg !2969
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2971
  store i8* %25, i8** %26, align 16, !dbg !2972, !tbaa !597
  %27 = icmp eq i8* %25, null, !dbg !2973
  br i1 %27, label %30, label %28, !dbg !2974

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  %29 = icmp ult i32 %22, 41, !dbg !2961
  br i1 %29, label %35, label %32, !dbg !2961

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2976
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !2977
  ret void, !dbg !2977

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2967
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2967
  store i8* %34, i8** %10, align 8, !dbg !2967
  br label %40, !dbg !2967

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2965
  %37 = sext i32 %22 to i64, !dbg !2965
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2965
  %39 = add i32 %22, 8, !dbg !2965
  store i32 %39, i32* %8, align 8, !dbg !2965
  br label %40, !dbg !2965

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !2961
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2969
  %44 = load i8*, i8** %43, align 8, !dbg !2969
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2971
  store i8* %44, i8** %45, align 8, !dbg !2972, !tbaa !597
  %46 = icmp eq i8* %44, null, !dbg !2973
  br i1 %46, label %30, label %47, !dbg !2974

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  %48 = icmp ult i32 %41, 41, !dbg !2961
  br i1 %48, label %52, label %49, !dbg !2961

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2967
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2967
  store i8* %51, i8** %10, align 8, !dbg !2967
  br label %57, !dbg !2967

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2965
  %54 = sext i32 %41 to i64, !dbg !2965
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2965
  %56 = add i32 %41, 8, !dbg !2965
  store i32 %56, i32* %8, align 8, !dbg !2965
  br label %57, !dbg !2965

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !2961
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2969
  %61 = load i8*, i8** %60, align 8, !dbg !2969
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2971
  store i8* %61, i8** %62, align 16, !dbg !2972, !tbaa !597
  %63 = icmp eq i8* %61, null, !dbg !2973
  br i1 %63, label %30, label %64, !dbg !2974

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  %65 = icmp ult i32 %58, 41, !dbg !2961
  br i1 %65, label %69, label %66, !dbg !2961

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2967
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2967
  store i8* %68, i8** %10, align 8, !dbg !2967
  br label %74, !dbg !2967

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2965
  %71 = sext i32 %58 to i64, !dbg !2965
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2965
  %73 = add i32 %58, 8, !dbg !2965
  store i32 %73, i32* %8, align 8, !dbg !2965
  br label %74, !dbg !2965

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !2961
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2969
  %78 = load i8*, i8** %77, align 8, !dbg !2969
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2971
  store i8* %78, i8** %79, align 8, !dbg !2972, !tbaa !597
  %80 = icmp eq i8* %78, null, !dbg !2973
  br i1 %80, label %30, label %81, !dbg !2974

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  %82 = icmp ult i32 %75, 41, !dbg !2961
  br i1 %82, label %86, label %83, !dbg !2961

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2967
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2967
  store i8* %85, i8** %10, align 8, !dbg !2967
  br label %91, !dbg !2967

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2965
  %88 = sext i32 %75 to i64, !dbg !2965
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2965
  %90 = add i32 %75, 8, !dbg !2965
  store i32 %90, i32* %8, align 8, !dbg !2965
  br label %91, !dbg !2965

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !2961
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2969
  %95 = load i8*, i8** %94, align 8, !dbg !2969
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2971
  store i8* %95, i8** %96, align 16, !dbg !2972, !tbaa !597
  %97 = icmp eq i8* %95, null, !dbg !2973
  br i1 %97, label %30, label %98, !dbg !2974

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  %99 = icmp ult i32 %92, 41, !dbg !2961
  br i1 %99, label %103, label %100, !dbg !2961

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2967
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2967
  store i8* %102, i8** %10, align 8, !dbg !2967
  br label %108, !dbg !2967

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2965
  %105 = sext i32 %92 to i64, !dbg !2965
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2965
  %107 = add i32 %92, 8, !dbg !2965
  store i32 %107, i32* %8, align 8, !dbg !2965
  br label %108, !dbg !2965

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2969
  %111 = load i8*, i8** %110, align 8, !dbg !2969
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2971
  store i8* %111, i8** %112, align 8, !dbg !2972, !tbaa !597
  %113 = icmp eq i8* %111, null, !dbg !2973
  br i1 %113, label %30, label %114, !dbg !2974

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  %115 = load i8*, i8** %10, align 8, !dbg !2967
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2967
  store i8* %116, i8** %10, align 8, !dbg !2967
  %117 = bitcast i8* %115 to i8**, !dbg !2969
  %118 = load i8*, i8** %117, align 8, !dbg !2969
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2971
  store i8* %118, i8** %119, align 16, !dbg !2972, !tbaa !597
  %120 = icmp eq i8* %118, null, !dbg !2973
  br i1 %120, label %30, label %121, !dbg !2974

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  %122 = load i8*, i8** %10, align 8, !dbg !2967
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2967
  store i8* %123, i8** %10, align 8, !dbg !2967
  %124 = bitcast i8* %122 to i8**, !dbg !2969
  %125 = load i8*, i8** %124, align 8, !dbg !2969
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2971
  store i8* %125, i8** %126, align 8, !dbg !2972, !tbaa !597
  %127 = icmp eq i8* %125, null, !dbg !2973
  br i1 %127, label %30, label %128, !dbg !2974

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  %129 = load i8*, i8** %10, align 8, !dbg !2967
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2967
  store i8* %130, i8** %10, align 8, !dbg !2967
  %131 = bitcast i8* %129 to i8**, !dbg !2969
  %132 = load i8*, i8** %131, align 8, !dbg !2969
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2971
  store i8* %132, i8** %133, align 16, !dbg !2972, !tbaa !597
  %134 = icmp eq i8* %132, null, !dbg !2973
  br i1 %134, label %30, label %135, !dbg !2974

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  %136 = load i8*, i8** %10, align 8, !dbg !2967
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2967
  store i8* %137, i8** %10, align 8, !dbg !2967
  %138 = bitcast i8* %136 to i8**, !dbg !2969
  %139 = load i8*, i8** %138, align 8, !dbg !2969
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2971
  store i8* %139, i8** %140, align 8, !dbg !2972, !tbaa !597
  %141 = icmp eq i8* %139, null, !dbg !2973
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2950, metadata !589), !dbg !2960
  %142 = select i1 %141, i64 9, i64 10, !dbg !2974
  br label %30, !dbg !2974
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2978 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2982, metadata !589), !dbg !2991
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2983, metadata !589), !dbg !2992
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2984, metadata !589), !dbg !2993
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2985, metadata !589), !dbg !2994
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2995
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !2995
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2986, metadata !589), !dbg !2996
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2997
  call void @llvm.va_start(i8* nonnull %6), !dbg !2997
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2998
  call void @llvm.va_end(i8* nonnull %6), !dbg !2999
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3000
  ret void, !dbg !3000
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3001 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.70, i64 0, i64 0), i32 5) #10, !dbg !3002
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.71, i64 0, i64 0)) #10, !dbg !3003
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3005
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.73, i64 0, i64 0)) #10, !dbg !3006
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3007
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3007, !tbaa !597
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3008
  ret void, !dbg !3009
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3010 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3014, metadata !589), !dbg !3016
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3015, metadata !589), !dbg !3017
  %3 = udiv i64 9223372036854775807, %1, !dbg !3018
  %4 = icmp ult i64 %3, %0, !dbg !3018
  br i1 %4, label %5, label %6, !dbg !3020

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3021
  unreachable, !dbg !3021

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3023, metadata !589) #10, !dbg !3030
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3032
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3029, metadata !589) #10, !dbg !3033
  %9 = icmp eq i8* %8, null, !dbg !3034
  %10 = icmp ne i64 %7, 0, !dbg !3036
  %11 = and i1 %10, %9, !dbg !3038
  br i1 %11, label %12, label %13, !dbg !3038

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3039
  unreachable, !dbg !3039

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3040
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3024 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3023, metadata !589), !dbg !3041
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3042
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3029, metadata !589), !dbg !3043
  %3 = icmp eq i8* %2, null, !dbg !3044
  %4 = icmp ne i64 %0, 0, !dbg !3045
  %5 = and i1 %4, %3, !dbg !3046
  br i1 %5, label %6, label %7, !dbg !3046

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3047
  unreachable, !dbg !3047

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3048
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3049 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3053, metadata !589), !dbg !3056
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3054, metadata !589), !dbg !3057
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3055, metadata !589), !dbg !3058
  %4 = udiv i64 9223372036854775807, %2, !dbg !3059
  %5 = icmp ult i64 %4, %1, !dbg !3059
  br i1 %5, label %6, label %7, !dbg !3061

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3062
  unreachable, !dbg !3062

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3063
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3064, metadata !589) #10, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3069, metadata !589) #10, !dbg !3072
  %9 = icmp eq i64 %8, 0, !dbg !3073
  %10 = icmp ne i8* %0, null, !dbg !3075
  %11 = and i1 %10, %9, !dbg !3077
  br i1 %11, label %12, label %13, !dbg !3077

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3078
  br label %19, !dbg !3080

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3064, metadata !589) #10, !dbg !3070
  %15 = icmp eq i8* %14, null, !dbg !3082
  %16 = icmp ne i64 %8, 0, !dbg !3084
  %17 = and i1 %16, %15, !dbg !3086
  br i1 %17, label %18, label %19, !dbg !3086

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3087
  unreachable, !dbg !3087

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3088
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3065 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3064, metadata !589), !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3069, metadata !589), !dbg !3090
  %3 = icmp eq i64 %1, 0, !dbg !3091
  %4 = icmp ne i8* %0, null, !dbg !3092
  %5 = and i1 %4, %3, !dbg !3093
  br i1 %5, label %6, label %7, !dbg !3093

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3094
  br label %13, !dbg !3095

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3096
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3064, metadata !589), !dbg !3089
  %9 = icmp eq i8* %8, null, !dbg !3097
  %10 = icmp ne i64 %1, 0, !dbg !3098
  %11 = and i1 %10, %9, !dbg !3099
  br i1 %11, label %12, label %13, !dbg !3099

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3100
  unreachable, !dbg !3100

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3101
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !549 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !554, metadata !589), !dbg !3102
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !555, metadata !589), !dbg !3103
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !556, metadata !589), !dbg !3104
  %4 = load i64, i64* %1, align 8, !dbg !3105, !tbaa !2106
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !557, metadata !589), !dbg !3106
  %5 = icmp eq i8* %0, null, !dbg !3107
  br i1 %5, label %6, label %13, !dbg !3109

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3110
  br i1 %7, label %8, label %17, !dbg !3113

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !557, metadata !589), !dbg !3106
  %10 = icmp ugt i64 %2, 128, !dbg !3116
  %11 = zext i1 %10 to i64, !dbg !3116
  %12 = add nuw nsw i64 %9, %11, !dbg !3117
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !557, metadata !589), !dbg !3106
  br label %17, !dbg !3118

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3119
  %15 = icmp ugt i64 %14, %4, !dbg !3122
  br i1 %15, label %20, label %16, !dbg !3123

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3124
  unreachable, !dbg !3124

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3106
  store i64 %18, i64* %1, align 8, !dbg !3125, !tbaa !2106
  %19 = mul i64 %18, %2, !dbg !3126
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3064, metadata !589) #10, !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3069, metadata !589) #10, !dbg !3129
  br label %27, !dbg !3130

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3131
  %22 = add i64 %4, 1, !dbg !3132
  %23 = add i64 %22, %21, !dbg !3133
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3106
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !557, metadata !589), !dbg !3106
  store i64 %23, i64* %1, align 8, !dbg !3125, !tbaa !2106
  %24 = mul i64 %23, %2, !dbg !3126
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3064, metadata !589) #10, !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3069, metadata !589) #10, !dbg !3129
  %25 = icmp eq i64 %24, 0, !dbg !3134
  br i1 %25, label %26, label %27, !dbg !3130

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3135
  br label %34, !dbg !3136

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3137
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3064, metadata !589) #10, !dbg !3127
  %30 = icmp eq i8* %29, null, !dbg !3138
  %31 = icmp ne i64 %28, 0, !dbg !3139
  %32 = and i1 %31, %30, !dbg !3140
  br i1 %32, label %33, label %34, !dbg !3140

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3141
  unreachable, !dbg !3141

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3142
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3143 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3145, metadata !589), !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3023, metadata !589) #10, !dbg !3147
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3029, metadata !589) #10, !dbg !3150
  %3 = icmp eq i8* %2, null, !dbg !3151
  %4 = icmp ne i64 %0, 0, !dbg !3152
  %5 = and i1 %4, %3, !dbg !3153
  br i1 %5, label %6, label %7, !dbg !3153

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3154
  unreachable, !dbg !3154

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3155
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3156 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3160, metadata !589), !dbg !3162
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3161, metadata !589), !dbg !3163
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !554, metadata !589) #10, !dbg !3164
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !555, metadata !589) #10, !dbg !3166
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !556, metadata !589) #10, !dbg !3167
  %3 = load i64, i64* %1, align 8, !dbg !3168, !tbaa !2106
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !557, metadata !589) #10, !dbg !3169
  %4 = icmp eq i8* %0, null, !dbg !3170
  br i1 %4, label %5, label %8, !dbg !3171

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3172
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !557, metadata !589) #10, !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !557, metadata !589) #10, !dbg !3169
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #10, !dbg !3169
  store i64 %7, i64* %1, align 8, !dbg !3174, !tbaa !2106
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3064, metadata !589) #10, !dbg !3175
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3069, metadata !589) #10, !dbg !3177
  br label %17, !dbg !3178

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3179
  br i1 %9, label %11, label %10, !dbg !3180

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3181
  unreachable, !dbg !3181

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3182
  %13 = add i64 %3, 1, !dbg !3183
  %14 = add i64 %13, %12, !dbg !3184
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #10, !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !557, metadata !589) #10, !dbg !3169
  store i64 %14, i64* %1, align 8, !dbg !3174, !tbaa !2106
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3064, metadata !589) #10, !dbg !3175
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3069, metadata !589) #10, !dbg !3177
  %15 = icmp eq i64 %14, 0, !dbg !3185
  br i1 %15, label %16, label %17, !dbg !3178

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3186
  br label %24, !dbg !3187

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3188
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3064, metadata !589) #10, !dbg !3175
  %20 = icmp eq i8* %19, null, !dbg !3189
  %21 = icmp ne i64 %18, 0, !dbg !3190
  %22 = and i1 %21, %20, !dbg !3191
  br i1 %22, label %23, label %24, !dbg !3191

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3192
  unreachable, !dbg !3192

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3193
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3194 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3196, metadata !589), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3023, metadata !589) #10, !dbg !3198
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3200
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3029, metadata !589) #10, !dbg !3201
  %3 = icmp eq i8* %2, null, !dbg !3202
  %4 = icmp ne i64 %0, 0, !dbg !3203
  %5 = and i1 %4, %3, !dbg !3204
  br i1 %5, label %6, label %7, !dbg !3204

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3205
  unreachable, !dbg !3205

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3206
  ret i8* %2, !dbg !3207
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3208 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3210, metadata !589), !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3211, metadata !589), !dbg !3214
  %3 = udiv i64 9223372036854775807, %1, !dbg !3215
  %4 = icmp ult i64 %3, %0, !dbg !3215
  br i1 %4, label %8, label %5, !dbg !3217

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3218
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3212, metadata !589), !dbg !3220
  %7 = icmp eq i8* %6, null, !dbg !3221
  br i1 %7, label %8, label %9, !dbg !3222

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3224
  unreachable, !dbg !3224

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3225
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3226 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3230, metadata !589), !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3231, metadata !589), !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3023, metadata !589) #10, !dbg !3234
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3236
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3029, metadata !589) #10, !dbg !3237
  %4 = icmp eq i8* %3, null, !dbg !3238
  %5 = icmp ne i64 %1, 0, !dbg !3239
  %6 = and i1 %5, %4, !dbg !3240
  br i1 %6, label %7, label %8, !dbg !3240

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3241
  unreachable, !dbg !3241

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3242
  ret i8* %3, !dbg !3243
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3244 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3246, metadata !589), !dbg !3247
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3248
  %3 = add i64 %2, 1, !dbg !3249
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3230, metadata !589) #10, !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3231, metadata !589) #10, !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3023, metadata !589) #10, !dbg !3254
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3256
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3029, metadata !589) #10, !dbg !3257
  %5 = icmp eq i8* %4, null, !dbg !3258
  %6 = icmp ne i64 %3, 0, !dbg !3259
  %7 = and i1 %6, %5, !dbg !3260
  br i1 %7, label %8, label %9, !dbg !3260

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3261
  unreachable, !dbg !3261

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3262
  ret i8* %4, !dbg !3263
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3264 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3266, !tbaa !661
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.84, i64 0, i64 0), i32 5) #10, !dbg !3267
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i8* %2) #10, !dbg !3268
  tail call void @abort() #14, !dbg !3270
  unreachable, !dbg !3270
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3271 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3274, metadata !589), !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3275, metadata !589), !dbg !3281
  %3 = icmp eq i64 %0, 0, !dbg !3282
  %4 = icmp eq i64 %1, 0, !dbg !3283
  %5 = or i1 %3, %4, !dbg !3285
  br i1 %5, label %12, label %6, !dbg !3285

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3286
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3277, metadata !589), !dbg !3287
  %8 = udiv i64 %7, %1, !dbg !3288
  %9 = icmp eq i64 %8, %0, !dbg !3290
  br i1 %9, label %12, label %10, !dbg !3291

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3292
  store i32 12, i32* %11, align 4, !dbg !3294, !tbaa !661
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3274, metadata !589), !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3275, metadata !589), !dbg !3281
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3295
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3276, metadata !589), !dbg !3296
  br label %16, !dbg !3297

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3298
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3299 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3316, metadata !589), !dbg !3325
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3317, metadata !589), !dbg !3326
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3318, metadata !589), !dbg !3327
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3319, metadata !589), !dbg !3328
  %6 = bitcast i32* %5 to i8*, !dbg !3329
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3329
  %7 = icmp eq i32* %0, null, !dbg !3330
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3316, metadata !589), !dbg !3325
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3332
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3316, metadata !589), !dbg !3325
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3320, metadata !589), !dbg !3334
  %10 = icmp ugt i64 %9, -3, !dbg !3335
  %11 = icmp ne i64 %2, 0, !dbg !3336
  %12 = and i1 %11, %10, !dbg !3338
  br i1 %12, label %13, label %18, !dbg !3338

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3339
  br i1 %14, label %18, label %15, !dbg !3341

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3343, !tbaa !1092
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3322, metadata !589), !dbg !3344
  %17 = zext i8 %16 to i32, !dbg !3345
  store i32 %17, i32* %8, align 4, !dbg !3346, !tbaa !661
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3347
  ret i64 %19, !dbg !3347
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3348 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3393, metadata !589), !dbg !3398
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3399
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3400, metadata !589), !dbg !3404
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3406
  %4 = load i32, i32* %3, align 8, !dbg !3406, !tbaa !3407
  %5 = and i32 %4, 32, !dbg !3406
  %6 = icmp eq i32 %5, 0, !dbg !3409
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3410
  %8 = icmp ne i32 %7, 0, !dbg !3411
  br i1 %6, label %9, label %19, !dbg !3412

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3414
  %11 = icmp ne i64 %2, 0, !dbg !3414
  %12 = or i1 %11, %10, !dbg !3414
  %13 = sext i1 %8 to i32, !dbg !3414
  br i1 %12, label %22, label %14, !dbg !3414

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3416
  %16 = load i32, i32* %15, align 4, !dbg !3416, !tbaa !661
  %17 = icmp ne i32 %16, 9, !dbg !3418
  %18 = sext i1 %17 to i32, !dbg !3418
  br label %22, !dbg !3418

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3420

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3422
  store i32 0, i32* %21, align 4, !dbg !3424, !tbaa !661
  br label %22, !dbg !3422

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3425
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3426 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3431, metadata !589), !dbg !3451
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3432, metadata !589), !dbg !3452
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3453
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3433, metadata !589), !dbg !3454
  %3 = icmp eq i8* %2, null, !dbg !3455
  br i1 %3, label %15, label %4, !dbg !3456

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3441, metadata !589), !dbg !3457
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3442, metadata !589), !dbg !3458
  %5 = load i8, i8* %2, align 1, !dbg !3459, !tbaa !1092
  %6 = icmp eq i8 %5, 67, !dbg !3461
  br i1 %6, label %7, label %11, !dbg !3464

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3466
  %9 = load i8, i8* %8, align 1, !dbg !3466, !tbaa !1092
  %10 = icmp eq i8 %9, 0, !dbg !3469
  br i1 %10, label %14, label %11, !dbg !3471

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3447, metadata !589), !dbg !3473
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.94, i64 0, i64 0)) #10, !dbg !3474
  %13 = icmp eq i32 %12, 0, !dbg !3476
  br i1 %13, label %14, label %15, !dbg !3478

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3432, metadata !589), !dbg !3452
  br label %15, !dbg !3480

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3481
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3482 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3494, metadata !589), !dbg !3568
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3561, metadata !589), !dbg !3570
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3571
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3486, metadata !589), !dbg !3572
  %4 = icmp eq i8* %3, null, !dbg !3573
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0), i8* %3, !dbg !3575
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3486, metadata !589), !dbg !3572
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3576, !tbaa !597
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3508, metadata !589) #10, !dbg !3577
  %7 = icmp eq i8* %6, null, !dbg !3578
  br i1 %7, label %8, label %127, !dbg !3579

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.98, i64 0, i64 0)) #10, !dbg !3580
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3509, metadata !589) #10, !dbg !3581
  %10 = icmp eq i8* %9, null, !dbg !3582
  br i1 %10, label %14, label %11, !dbg !3584

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3585, !tbaa !1092
  %13 = icmp eq i8 %12, 0, !dbg !3587
  br i1 %13, label %14, label %15, !dbg !3588

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3590

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.99, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3509, metadata !589) #10, !dbg !3581
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3512, metadata !589) #10, !dbg !3592
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3514, metadata !589) #10, !dbg !3593
  %18 = icmp eq i64 %17, 0, !dbg !3594
  br i1 %18, label %24, label %19, !dbg !3595

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3596
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3596
  %22 = load i8, i8* %21, align 1, !dbg !3596, !tbaa !1092
  %23 = icmp ne i8 %22, 47, !dbg !3598
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3599
  %27 = add i64 %17, 14, !dbg !3600
  %28 = add i64 %27, %26, !dbg !3601
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3602
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3511, metadata !589) #10, !dbg !3603
  %30 = icmp eq i8* %29, null, !dbg !3604
  br i1 %30, label %125, label %31, !dbg !3604

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3605
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3608

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3609, !tbaa !1092
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3611
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.100, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3612
  br label %37, !dbg !3613

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3611
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.100, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3612
  br label %37, !dbg !3613

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3614
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3516, metadata !589) #10, !dbg !3615
  %39 = icmp slt i32 %38, 0, !dbg !3616
  br i1 %39, label %123, label %40, !dbg !3617

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.101, i64 0, i64 0)) #10, !dbg !3618
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3517, metadata !589) #10, !dbg !3619
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3620
  br i1 %42, label %48, label %43, !dbg !3621

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3622

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !3623
  br label %123, !dbg !3625

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3558, metadata !589) #10, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3559, metadata !589) #10, !dbg !3626
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !3627
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !3628
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3629, metadata !589) #10, !dbg !3634
  %53 = load i8*, i8** %46, align 8, !dbg !3636, !tbaa !3637
  %54 = load i8*, i8** %47, align 8, !dbg !3636, !tbaa !3638
  %55 = icmp ult i8* %53, %54, !dbg !3636
  br i1 %55, label %58, label %56, !dbg !3636, !prof !3639

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3640
  br label %62, !dbg !3640

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3642
  store i8* %59, i8** %46, align 8, !dbg !3642, !tbaa !3637
  %60 = load i8, i8* %53, align 1, !dbg !3642, !tbaa !1092
  %61 = zext i8 %60 to i32, !dbg !3642
  br label %62, !dbg !3642

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3644
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3560, metadata !589) #10, !dbg !3646
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3647

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3648

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3629, metadata !589) #10, !dbg !3648
  %66 = load i8*, i8** %46, align 8, !dbg !3652, !tbaa !3637
  %67 = load i8*, i8** %47, align 8, !dbg !3652, !tbaa !3638
  %68 = icmp ult i8* %66, %67, !dbg !3652
  br i1 %68, label %71, label %69, !dbg !3652, !prof !3639

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3653
  br label %75, !dbg !3653

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3654
  store i8* %72, i8** %46, align 8, !dbg !3654, !tbaa !3637
  %73 = load i8, i8* %66, align 1, !dbg !3654, !tbaa !1092
  %74 = zext i8 %73 to i32, !dbg !3654
  br label %75, !dbg !3654

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3655
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3560, metadata !589) #10, !dbg !3646
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3656, !llvm.loop !3658

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !3661
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.102, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !3662
  %80 = icmp slt i32 %79, 2, !dbg !3664
  br i1 %80, label %115, label %81, !dbg !3665

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3565, metadata !589) #10, !dbg !3667
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3668
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3566, metadata !589) #10, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3567, metadata !589) #10, !dbg !3670
  %84 = icmp eq i64 %51, 0, !dbg !3671
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3673

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3559, metadata !589) #10, !dbg !3626
  %89 = add i64 %86, 2, !dbg !3674
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3558, metadata !589) #10, !dbg !3622
  br label %95, !dbg !3677

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3559, metadata !589) #10, !dbg !3626
  %93 = add i64 %92, 1, !dbg !3680
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !3681
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3558, metadata !589) #10, !dbg !3622
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3558, metadata !589) #10, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3559, metadata !589) #10, !dbg !3626
  %98 = icmp eq i8* %97, null, !dbg !3682
  br i1 %98, label %99, label %100, !dbg !3684

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3559, metadata !589) #10, !dbg !3626
  call void @free(i8* %52) #10, !dbg !3685
  br label %116, !dbg !3687

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3688
  %102 = xor i64 %83, -1, !dbg !3689
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3689
  %104 = xor i64 %82, -1, !dbg !3690
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3690
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3691, metadata !589) #10, !dbg !3700
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3699, metadata !589) #10, !dbg !3700
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !3702
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !3703
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3691, metadata !589) #10, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3699, metadata !589) #10, !dbg !3704
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !3706
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !3707
  br label %111, !dbg !3708

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3622

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3558, metadata !589) #10, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3559, metadata !589) #10, !dbg !3626
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3708
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3708
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3622

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3622

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3558, metadata !589) #10, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3559, metadata !589) #10, !dbg !3626
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3708
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3708
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3709
  %120 = icmp eq i64 %117, 0, !dbg !3710
  br i1 %120, label %123, label %121, !dbg !3712

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3713
  store i8 0, i8* %122, align 1, !dbg !3715, !tbaa !1092
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3508, metadata !589) #10, !dbg !3577
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3508, metadata !589) #10, !dbg !3577
  call void @free(i8* %29) #10, !dbg !3716
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.97, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3508, metadata !589) #10, !dbg !3577
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3717, !tbaa !597
  br label %127, !dbg !3718

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3487, metadata !589), !dbg !3719
  %129 = load i8, i8* %128, align 1, !dbg !3720, !tbaa !1092
  %130 = icmp eq i8 %129, 0, !dbg !3721
  br i1 %130, label %157, label %131, !dbg !3722

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3724

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !3724
  %136 = icmp eq i32 %135, 0, !dbg !3725
  br i1 %136, label %143, label %137, !dbg !3726

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3727
  br i1 %138, label %139, label %147, !dbg !3729

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3730
  %141 = load i8, i8* %140, align 1, !dbg !3730, !tbaa !1092
  %142 = icmp eq i8 %141, 0, !dbg !3732
  br i1 %142, label %143, label %147, !dbg !3733

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3735
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3737
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3738
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3486, metadata !589), !dbg !3572
  br label %157, !dbg !3739

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3740
  %149 = add i64 %148, 1, !dbg !3741
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3742
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3487, metadata !589), !dbg !3719
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3743
  %152 = add i64 %151, 1, !dbg !3744
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3745
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3487, metadata !589), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3487, metadata !589), !dbg !3719
  %154 = load i8, i8* %153, align 1, !dbg !3720, !tbaa !1092
  %155 = icmp eq i8 %154, 0, !dbg !3721
  br i1 %155, label %156, label %132, !dbg !3722, !llvm.loop !3746

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3572

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3486, metadata !589), !dbg !3572
  %159 = load i8, i8* %158, align 1, !dbg !3749, !tbaa !1092
  %160 = icmp eq i8 %159, 0, !dbg !3751
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.103, i64 0, i64 0), i8* %158, !dbg !3752
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3486, metadata !589), !dbg !3572
  ret i8* %161, !dbg !3753
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3754 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3799, metadata !589), !dbg !3803
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3800, metadata !589), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3802, metadata !589), !dbg !3805
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3806
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3801, metadata !589), !dbg !3807
  %3 = icmp slt i32 %2, 0, !dbg !3808
  br i1 %3, label %4, label %6, !dbg !3810

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3811
  br label %24, !dbg !3812

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3813
  %8 = icmp eq i32 %7, 0, !dbg !3813
  br i1 %8, label %13, label %9, !dbg !3815

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3816
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3818
  %12 = icmp eq i64 %11, -1, !dbg !3820
  br i1 %12, label %16, label %13, !dbg !3821

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3822
  %15 = icmp eq i32 %14, 0, !dbg !3822
  br i1 %15, label %16, label %18, !dbg !3823

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3800, metadata !589), !dbg !3804
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3802, metadata !589), !dbg !3805
  br label %24, !dbg !3826

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3827
  %20 = load i32, i32* %19, align 4, !dbg !3827, !tbaa !661
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3800, metadata !589), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3800, metadata !589), !dbg !3804
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3802, metadata !589), !dbg !3805
  %22 = icmp eq i32 %20, 0, !dbg !3828
  br i1 %22, label %24, label %23, !dbg !3826

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3830, !tbaa !661
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3802, metadata !589), !dbg !3805
  br label %24, !dbg !3832

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3833
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3834 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3879, metadata !589), !dbg !3880
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3881
  br i1 %2, label %6, label %3, !dbg !3883

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3884
  %5 = icmp eq i32 %4, 0, !dbg !3884
  br i1 %5, label %6, label %8, !dbg !3886

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3888
  br label %17, !dbg !3889

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3890, metadata !589) #10, !dbg !3895
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3897
  %10 = load i32, i32* %9, align 8, !dbg !3897, !tbaa !3407
  %11 = and i32 %10, 256, !dbg !3899
  %12 = icmp eq i32 %11, 0, !dbg !3899
  br i1 %12, label %15, label %13, !dbg !3900

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3901
  br label %15, !dbg !3901

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3902
  br label %17, !dbg !3903

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3904
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3905 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3951, metadata !589), !dbg !3957
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3952, metadata !589), !dbg !3958
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3953, metadata !589), !dbg !3959
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3960
  %5 = load i8*, i8** %4, align 8, !dbg !3960, !tbaa !3638
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3961
  %7 = load i8*, i8** %6, align 8, !dbg !3961, !tbaa !3637
  %8 = icmp eq i8* %5, %7, !dbg !3962
  br i1 %8, label %9, label %28, !dbg !3963

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3964
  %11 = load i8*, i8** %10, align 8, !dbg !3964, !tbaa !3966
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3967
  %13 = load i8*, i8** %12, align 8, !dbg !3967, !tbaa !3968
  %14 = icmp eq i8* %11, %13, !dbg !3969
  br i1 %14, label %15, label %28, !dbg !3970

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3971
  %17 = load i8*, i8** %16, align 8, !dbg !3971, !tbaa !3972
  %18 = icmp eq i8* %17, null, !dbg !3973
  br i1 %18, label %19, label %28, !dbg !3974

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3976
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3977
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3954, metadata !589), !dbg !3979
  %22 = icmp eq i64 %21, -1, !dbg !3980
  br i1 %22, label %30, label %23, !dbg !3982

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3983
  %25 = load i32, i32* %24, align 8, !dbg !3984, !tbaa !3407
  %26 = and i32 %25, -17, !dbg !3984
  store i32 %26, i32* %24, align 8, !dbg !3984, !tbaa !3407
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3985
  store i64 %21, i64* %27, align 8, !dbg !3986, !tbaa !3987
  br label %30, !dbg !3988

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3989
  br label %30, !dbg !3990

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3991
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
!499 = !DIFile(filename: "src/hostid.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!584 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 36, type: !585, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !25}
!587 = !{!588}
!588 = !DILocalVariable(name: "status", arg: 1, scope: !584, file: !499, line: 36, type: !25)
!589 = !DIExpression()
!590 = !DILocation(line: 36, column: 12, scope: !584)
!591 = !DILocation(line: 38, column: 14, scope: !592)
!592 = distinct !DILexicalBlock(scope: !584, file: !499, line: 38, column: 7)
!593 = !DILocation(line: 38, column: 7, scope: !584)
!594 = !DILocation(line: 39, column: 5, scope: !595)
!595 = !DILexicalBlockFile(scope: !596, file: !499, discriminator: 1)
!596 = distinct !DILexicalBlock(scope: !592, file: !499, line: 39, column: 5)
!597 = !{!598, !598, i64 0}
!598 = !{!"any pointer", !599, i64 0}
!599 = !{!"omnipotent char", !600, i64 0}
!600 = !{!"Simple C/C++ TBAA"}
!601 = !DILocation(line: 39, column: 5, scope: !602)
!602 = !DILexicalBlockFile(scope: !596, file: !499, discriminator: 3)
!603 = !DILocation(line: 39, column: 5, scope: !604)
!604 = !DILexicalBlockFile(scope: !596, file: !499, discriminator: 2)
!605 = !DILocation(line: 42, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !592, file: !499, line: 41, column: 5)
!607 = !DILocation(line: 42, column: 7, scope: !608)
!608 = !DILexicalBlockFile(scope: !606, file: !499, discriminator: 1)
!609 = !DILocation(line: 47, column: 7, scope: !606)
!610 = !DILocation(line: 47, column: 7, scope: !608)
!611 = !DILocation(line: 48, column: 7, scope: !606)
!612 = !DILocation(line: 48, column: 7, scope: !608)
!613 = !DILocation(line: 642, column: 15, scope: !508, inlinedAt: !614)
!614 = distinct !DILocation(line: 49, column: 7, scope: !606)
!615 = !DILocation(line: 651, column: 3, scope: !508, inlinedAt: !614)
!616 = !DILocation(line: 651, column: 3, scope: !617, inlinedAt: !614)
!617 = !DILexicalBlockFile(scope: !508, file: !509, discriminator: 1)
!618 = !DILocation(line: 655, column: 29, scope: !508, inlinedAt: !614)
!619 = !DILocation(line: 655, column: 15, scope: !508, inlinedAt: !614)
!620 = !DILocation(line: 656, column: 7, scope: !528, inlinedAt: !614)
!621 = !DILocation(line: 656, column: 19, scope: !528, inlinedAt: !614)
!622 = !DILocation(line: 656, column: 22, scope: !623, inlinedAt: !614)
!623 = !DILexicalBlockFile(scope: !528, file: !509, discriminator: 16)
!624 = !DILocation(line: 656, column: 7, scope: !625, inlinedAt: !614)
!625 = !DILexicalBlockFile(scope: !508, file: !509, discriminator: 16)
!626 = !DILocation(line: 662, column: 7, scope: !627, inlinedAt: !614)
!627 = distinct !DILexicalBlock(scope: !528, file: !509, line: 657, column: 5)
!628 = !DILocation(line: 662, column: 7, scope: !629, inlinedAt: !614)
!629 = !DILexicalBlockFile(scope: !627, file: !509, discriminator: 1)
!630 = !DILocation(line: 664, column: 5, scope: !627, inlinedAt: !614)
!631 = !DILocation(line: 665, column: 3, scope: !508, inlinedAt: !614)
!632 = !DILocation(line: 665, column: 3, scope: !617, inlinedAt: !614)
!633 = !DILocation(line: 667, column: 3, scope: !508, inlinedAt: !614)
!634 = !DILocation(line: 667, column: 3, scope: !617, inlinedAt: !614)
!635 = !DILocation(line: 51, column: 3, scope: !584)
!636 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 55, type: !637, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !640)
!637 = !DISubroutineType(types: !638)
!638 = !{!25, !25, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!640 = !{!641, !642, !643}
!641 = !DILocalVariable(name: "argc", arg: 1, scope: !636, file: !499, line: 55, type: !25)
!642 = !DILocalVariable(name: "argv", arg: 2, scope: !636, file: !499, line: 55, type: !639)
!643 = !DILocalVariable(name: "id", scope: !636, file: !499, line: 57, type: !113)
!644 = !DILocation(line: 55, column: 11, scope: !636)
!645 = !DILocation(line: 55, column: 24, scope: !636)
!646 = !DILocation(line: 60, column: 21, scope: !636)
!647 = !DILocation(line: 60, column: 3, scope: !636)
!648 = !DILocation(line: 61, column: 3, scope: !636)
!649 = !DILocation(line: 62, column: 3, scope: !636)
!650 = !DILocation(line: 63, column: 3, scope: !636)
!651 = !DILocation(line: 65, column: 3, scope: !636)
!652 = !DILocation(line: 67, column: 63, scope: !636)
!653 = !DILocation(line: 67, column: 3, scope: !636)
!654 = !DILocation(line: 69, column: 7, scope: !655)
!655 = distinct !DILexicalBlock(scope: !636, file: !499, line: 69, column: 7)
!656 = !DILocation(line: 69, column: 48, scope: !655)
!657 = !DILocation(line: 69, column: 7, scope: !636)
!658 = !DILocation(line: 70, column: 5, scope: !655)
!659 = !DILocation(line: 72, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !636, file: !499, line: 72, column: 7)
!661 = !{!662, !662, i64 0}
!662 = !{!"int", !599, i64 0}
!663 = !DILocation(line: 72, column: 14, scope: !660)
!664 = !DILocation(line: 72, column: 7, scope: !636)
!665 = !DILocation(line: 74, column: 20, scope: !666)
!666 = distinct !DILexicalBlock(scope: !660, file: !499, line: 73, column: 5)
!667 = !DILocation(line: 74, column: 55, scope: !666)
!668 = !DILocation(line: 74, column: 50, scope: !666)
!669 = !DILocation(line: 74, column: 43, scope: !670)
!670 = !DILexicalBlockFile(scope: !666, file: !499, discriminator: 1)
!671 = !DILocation(line: 74, column: 7, scope: !672)
!672 = !DILexicalBlockFile(scope: !666, file: !499, discriminator: 2)
!673 = !DILocation(line: 75, column: 7, scope: !666)
!674 = !DILocation(line: 78, column: 8, scope: !636)
!675 = !DILocation(line: 57, column: 16, scope: !636)
!676 = !DILocation(line: 85, column: 3, scope: !636)
!677 = !DILocation(line: 87, column: 3, scope: !636)
!678 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !510, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !679)
!679 = !{!680}
!680 = !DILocalVariable(name: "file", arg: 1, scope: !678, file: !16, line: 41, type: !6)
!681 = !DILocation(line: 41, column: 41, scope: !678)
!682 = !DILocation(line: 43, column: 13, scope: !678)
!683 = !DILocation(line: 44, column: 1, scope: !678)
!684 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !685, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !17}
!687 = !{!688}
!688 = !DILocalVariable(name: "ignore", arg: 1, scope: !684, file: !16, line: 78, type: !17)
!689 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!690 = !DILocation(line: 78, column: 37, scope: !684)
!691 = !DILocation(line: 80, column: 16, scope: !684)
!692 = !{!693, !693, i64 0}
!693 = !{!"_Bool", !599, i64 0}
!694 = !DILocation(line: 81, column: 1, scope: !684)
!695 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !696, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{null}
!698 = !{!699}
!699 = !DILocalVariable(name: "write_error", scope: !700, file: !16, line: 112, type: !6)
!700 = distinct !DILexicalBlock(scope: !701, file: !16, line: 111, column: 5)
!701 = distinct !DILexicalBlock(scope: !695, file: !16, line: 109, column: 7)
!702 = !DILocation(line: 109, column: 21, scope: !701)
!703 = !DILocation(line: 109, column: 7, scope: !701)
!704 = !DILocation(line: 109, column: 29, scope: !701)
!705 = !DILocation(line: 110, column: 7, scope: !701)
!706 = !DILocation(line: 110, column: 12, scope: !707)
!707 = !DILexicalBlockFile(scope: !701, file: !16, discriminator: 1)
!708 = !{i8 0, i8 2}
!709 = !DILocation(line: 114, column: 19, scope: !710)
!710 = distinct !DILexicalBlock(scope: !700, file: !16, line: 113, column: 11)
!711 = !DILocation(line: 110, column: 25, scope: !707)
!712 = !DILocation(line: 110, column: 28, scope: !713)
!713 = !DILexicalBlockFile(scope: !701, file: !16, discriminator: 2)
!714 = !DILocation(line: 110, column: 34, scope: !713)
!715 = !DILocation(line: 109, column: 7, scope: !716)
!716 = !DILexicalBlockFile(scope: !695, file: !16, discriminator: 1)
!717 = !DILocation(line: 112, column: 33, scope: !700)
!718 = !DILocation(line: 112, column: 19, scope: !700)
!719 = !DILocation(line: 113, column: 11, scope: !710)
!720 = !DILocation(line: 113, column: 11, scope: !700)
!721 = !DILocation(line: 114, column: 36, scope: !722)
!722 = !DILexicalBlockFile(scope: !710, file: !16, discriminator: 1)
!723 = !DILocation(line: 114, column: 9, scope: !724)
!724 = !DILexicalBlockFile(scope: !710, file: !16, discriminator: 2)
!725 = !DILocation(line: 114, column: 9, scope: !710)
!726 = !DILocation(line: 117, column: 9, scope: !722)
!727 = !DILocation(line: 119, column: 14, scope: !700)
!728 = !DILocation(line: 119, column: 7, scope: !700)
!729 = !DILocation(line: 122, column: 22, scope: !730)
!730 = distinct !DILexicalBlock(scope: !695, file: !16, line: 122, column: 8)
!731 = !DILocation(line: 122, column: 8, scope: !730)
!732 = !DILocation(line: 122, column: 30, scope: !730)
!733 = !DILocation(line: 122, column: 8, scope: !695)
!734 = !DILocation(line: 123, column: 13, scope: !730)
!735 = !DILocation(line: 123, column: 6, scope: !730)
!736 = !DILocation(line: 124, column: 1, scope: !695)
!737 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !738, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !741)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !25, !639, !6, !6, !6, !740, null}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750}
!742 = !DILocalVariable(name: "argc", arg: 1, scope: !737, file: !31, line: 44, type: !25)
!743 = !DILocalVariable(name: "argv", arg: 2, scope: !737, file: !31, line: 45, type: !639)
!744 = !DILocalVariable(name: "command_name", arg: 3, scope: !737, file: !31, line: 46, type: !6)
!745 = !DILocalVariable(name: "package", arg: 4, scope: !737, file: !31, line: 47, type: !6)
!746 = !DILocalVariable(name: "version", arg: 5, scope: !737, file: !31, line: 48, type: !6)
!747 = !DILocalVariable(name: "usage_func", arg: 6, scope: !737, file: !31, line: 49, type: !740)
!748 = !DILocalVariable(name: "c", scope: !737, file: !31, line: 52, type: !25)
!749 = !DILocalVariable(name: "saved_opterr", scope: !737, file: !31, line: 53, type: !25)
!750 = !DILocalVariable(name: "authors", scope: !751, file: !31, line: 71, type: !755)
!751 = distinct !DILexicalBlock(scope: !752, file: !31, line: 70, column: 11)
!752 = distinct !DILexicalBlock(scope: !753, file: !31, line: 64, column: 9)
!753 = distinct !DILexicalBlock(scope: !754, file: !31, line: 62, column: 5)
!754 = distinct !DILexicalBlock(scope: !737, file: !31, line: 60, column: 7)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !756, line: 80, baseType: !757)
!756 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !758, line: 50, baseType: !759)
!758 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !760)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 192, elements: !767)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !762)
!762 = !{!763, !764, !765, !766}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !761, file: !29, line: 71, baseType: !113, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !761, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !761, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !761, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!767 = !{!768}
!768 = !DISubrange(count: 1)
!769 = !DILocation(line: 44, column: 25, scope: !737)
!770 = !DILocation(line: 45, column: 28, scope: !737)
!771 = !DILocation(line: 46, column: 33, scope: !737)
!772 = !DILocation(line: 47, column: 33, scope: !737)
!773 = !DILocation(line: 48, column: 33, scope: !737)
!774 = !DILocation(line: 49, column: 28, scope: !737)
!775 = !DILocation(line: 55, column: 18, scope: !737)
!776 = !DILocation(line: 53, column: 7, scope: !737)
!777 = !DILocation(line: 58, column: 10, scope: !737)
!778 = !DILocation(line: 60, column: 12, scope: !754)
!779 = !DILocation(line: 61, column: 7, scope: !754)
!780 = !DILocation(line: 61, column: 15, scope: !781)
!781 = !DILexicalBlockFile(scope: !754, file: !31, discriminator: 1)
!782 = !DILocation(line: 52, column: 7, scope: !737)
!783 = !DILocation(line: 60, column: 7, scope: !784)
!784 = !DILexicalBlockFile(scope: !737, file: !31, discriminator: 1)
!785 = !DILocation(line: 66, column: 11, scope: !752)
!786 = !DILocation(line: 67, column: 11, scope: !752)
!787 = !DILocation(line: 71, column: 13, scope: !751)
!788 = !DILocation(line: 71, column: 21, scope: !751)
!789 = !DILocation(line: 72, column: 13, scope: !751)
!790 = !DILocation(line: 73, column: 29, scope: !751)
!791 = !DILocation(line: 73, column: 13, scope: !751)
!792 = !DILocation(line: 74, column: 13, scope: !751)
!793 = !DILocation(line: 84, column: 10, scope: !737)
!794 = !DILocation(line: 88, column: 10, scope: !737)
!795 = !DILocation(line: 89, column: 1, scope: !737)
!796 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !510, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !797)
!797 = !{!798, !799, !800}
!798 = !DILocalVariable(name: "argv0", arg: 1, scope: !796, file: !52, line: 39, type: !6)
!799 = !DILocalVariable(name: "slash", scope: !796, file: !52, line: 46, type: !6)
!800 = !DILocalVariable(name: "base", scope: !796, file: !52, line: 47, type: !6)
!801 = !DILocation(line: 39, column: 31, scope: !796)
!802 = !DILocation(line: 51, column: 13, scope: !803)
!803 = distinct !DILexicalBlock(scope: !796, file: !52, line: 51, column: 7)
!804 = !DILocation(line: 51, column: 7, scope: !796)
!805 = !DILocation(line: 55, column: 14, scope: !806)
!806 = distinct !DILexicalBlock(scope: !803, file: !52, line: 52, column: 5)
!807 = !DILocation(line: 54, column: 7, scope: !806)
!808 = !DILocation(line: 56, column: 7, scope: !806)
!809 = !DILocation(line: 59, column: 11, scope: !796)
!810 = !DILocation(line: 46, column: 15, scope: !796)
!811 = !DILocation(line: 60, column: 17, scope: !796)
!812 = !DILocation(line: 60, column: 33, scope: !813)
!813 = !DILexicalBlockFile(scope: !796, file: !52, discriminator: 1)
!814 = !DILocation(line: 60, column: 11, scope: !796)
!815 = !DILocation(line: 47, column: 15, scope: !796)
!816 = !DILocation(line: 61, column: 12, scope: !817)
!817 = distinct !DILexicalBlock(scope: !796, file: !52, line: 61, column: 7)
!818 = !DILocation(line: 61, column: 20, scope: !817)
!819 = !DILocation(line: 61, column: 25, scope: !817)
!820 = !DILocation(line: 61, column: 28, scope: !821)
!821 = !DILexicalBlockFile(scope: !817, file: !52, discriminator: 1)
!822 = !DILocation(line: 61, column: 61, scope: !821)
!823 = !DILocation(line: 61, column: 7, scope: !813)
!824 = !DILocation(line: 64, column: 11, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !52, line: 64, column: 11)
!826 = distinct !DILexicalBlock(scope: !817, file: !52, line: 62, column: 5)
!827 = !DILocation(line: 64, column: 36, scope: !825)
!828 = !DILocation(line: 64, column: 11, scope: !826)
!829 = !DILocation(line: 66, column: 24, scope: !830)
!830 = distinct !DILexicalBlock(scope: !825, file: !52, line: 65, column: 9)
!831 = !DILocation(line: 70, column: 41, scope: !830)
!832 = !DILocation(line: 72, column: 9, scope: !830)
!833 = !DILocation(line: 84, column: 16, scope: !796)
!834 = !DILocation(line: 90, column: 27, scope: !796)
!835 = !DILocation(line: 92, column: 1, scope: !796)
!836 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !837, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !840)
!837 = !DISubroutineType(types: !838)
!838 = !{!839, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!840 = !{!841, !842, !843}
!841 = !DILocalVariable(name: "o", arg: 1, scope: !836, file: !100, line: 114, type: !839)
!842 = !DILocalVariable(name: "e", scope: !836, file: !100, line: 116, type: !25)
!843 = !DILocalVariable(name: "p", scope: !836, file: !100, line: 117, type: !839)
!844 = !DILocation(line: 114, column: 48, scope: !836)
!845 = !DILocation(line: 116, column: 11, scope: !836)
!846 = !DILocation(line: 116, column: 7, scope: !836)
!847 = !DILocation(line: 117, column: 40, scope: !836)
!848 = !DILocation(line: 117, column: 40, scope: !849)
!849 = !DILexicalBlockFile(scope: !836, file: !100, discriminator: 3)
!850 = !DILocation(line: 117, column: 31, scope: !849)
!851 = !DILocation(line: 117, column: 27, scope: !836)
!852 = !DILocation(line: 119, column: 9, scope: !836)
!853 = !DILocation(line: 120, column: 3, scope: !836)
!854 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !855, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !859)
!855 = !DISubroutineType(types: !856)
!856 = !{!58, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!859 = !{!860}
!860 = !DILocalVariable(name: "o", arg: 1, scope: !854, file: !100, line: 125, type: !857)
!861 = !DILocation(line: 125, column: 50, scope: !854)
!862 = !DILocation(line: 127, column: 11, scope: !854)
!863 = !DILocation(line: 127, column: 46, scope: !864)
!864 = !DILexicalBlockFile(scope: !854, file: !100, discriminator: 3)
!865 = !{!866, !599, i64 0}
!866 = !{!"quoting_options", !599, i64 0, !662, i64 4, !599, i64 8, !598, i64 40, !598, i64 48}
!867 = !DILocation(line: 127, column: 3, scope: !864)
!868 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !869, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !839, !58}
!871 = !{!872, !873}
!872 = !DILocalVariable(name: "o", arg: 1, scope: !868, file: !100, line: 133, type: !839)
!873 = !DILocalVariable(name: "s", arg: 2, scope: !868, file: !100, line: 133, type: !58)
!874 = !DILocation(line: 133, column: 44, scope: !868)
!875 = !DILocation(line: 133, column: 66, scope: !868)
!876 = !DILocation(line: 135, column: 4, scope: !868)
!877 = !DILocation(line: 135, column: 39, scope: !878)
!878 = !DILexicalBlockFile(scope: !868, file: !100, discriminator: 3)
!879 = !DILocation(line: 135, column: 45, scope: !878)
!880 = !DILocation(line: 136, column: 1, scope: !868)
!881 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !882, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{!25, !839, !8, !25}
!884 = !{!885, !886, !887, !888, !889, !891, !892}
!885 = !DILocalVariable(name: "o", arg: 1, scope: !881, file: !100, line: 144, type: !839)
!886 = !DILocalVariable(name: "c", arg: 2, scope: !881, file: !100, line: 144, type: !8)
!887 = !DILocalVariable(name: "i", arg: 3, scope: !881, file: !100, line: 144, type: !25)
!888 = !DILocalVariable(name: "uc", scope: !881, file: !100, line: 146, type: !494)
!889 = !DILocalVariable(name: "p", scope: !881, file: !100, line: 147, type: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!891 = !DILocalVariable(name: "shift", scope: !881, file: !100, line: 149, type: !25)
!892 = !DILocalVariable(name: "r", scope: !881, file: !100, line: 150, type: !25)
!893 = !DILocation(line: 144, column: 43, scope: !881)
!894 = !DILocation(line: 144, column: 51, scope: !881)
!895 = !DILocation(line: 144, column: 58, scope: !881)
!896 = !DILocation(line: 146, column: 17, scope: !881)
!897 = !DILocation(line: 148, column: 6, scope: !881)
!898 = !DILocation(line: 148, column: 62, scope: !899)
!899 = !DILexicalBlockFile(scope: !881, file: !100, discriminator: 3)
!900 = !DILocation(line: 148, column: 57, scope: !899)
!901 = !DILocation(line: 147, column: 17, scope: !881)
!902 = !DILocation(line: 149, column: 18, scope: !881)
!903 = !DILocation(line: 149, column: 15, scope: !881)
!904 = !DILocation(line: 149, column: 7, scope: !881)
!905 = !DILocation(line: 150, column: 12, scope: !881)
!906 = !DILocation(line: 150, column: 15, scope: !881)
!907 = !DILocation(line: 150, column: 25, scope: !881)
!908 = !DILocation(line: 150, column: 7, scope: !881)
!909 = !DILocation(line: 151, column: 13, scope: !881)
!910 = !DILocation(line: 151, column: 18, scope: !881)
!911 = !DILocation(line: 151, column: 23, scope: !881)
!912 = !DILocation(line: 151, column: 6, scope: !881)
!913 = !DILocation(line: 152, column: 3, scope: !881)
!914 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !915, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{!25, !839, !25}
!917 = !{!918, !919, !920}
!918 = !DILocalVariable(name: "o", arg: 1, scope: !914, file: !100, line: 160, type: !839)
!919 = !DILocalVariable(name: "i", arg: 2, scope: !914, file: !100, line: 160, type: !25)
!920 = !DILocalVariable(name: "r", scope: !914, file: !100, line: 162, type: !25)
!921 = !DILocation(line: 160, column: 44, scope: !914)
!922 = !DILocation(line: 160, column: 51, scope: !914)
!923 = !DILocation(line: 163, column: 8, scope: !924)
!924 = distinct !DILexicalBlock(scope: !914, file: !100, line: 163, column: 7)
!925 = !DILocation(line: 163, column: 7, scope: !914)
!926 = !DILocation(line: 165, column: 10, scope: !914)
!927 = !{!866, !662, i64 4}
!928 = !DILocation(line: 162, column: 7, scope: !914)
!929 = !DILocation(line: 166, column: 12, scope: !914)
!930 = !DILocation(line: 167, column: 3, scope: !914)
!931 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !932, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !934)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !839, !6, !6}
!934 = !{!935, !936, !937}
!935 = !DILocalVariable(name: "o", arg: 1, scope: !931, file: !100, line: 171, type: !839)
!936 = !DILocalVariable(name: "left_quote", arg: 2, scope: !931, file: !100, line: 172, type: !6)
!937 = !DILocalVariable(name: "right_quote", arg: 3, scope: !931, file: !100, line: 172, type: !6)
!938 = !DILocation(line: 171, column: 45, scope: !931)
!939 = !DILocation(line: 172, column: 33, scope: !931)
!940 = !DILocation(line: 172, column: 57, scope: !931)
!941 = !DILocation(line: 174, column: 8, scope: !942)
!942 = distinct !DILexicalBlock(scope: !931, file: !100, line: 174, column: 7)
!943 = !DILocation(line: 174, column: 7, scope: !931)
!944 = !DILocation(line: 176, column: 6, scope: !931)
!945 = !DILocation(line: 176, column: 12, scope: !931)
!946 = !DILocation(line: 177, column: 8, scope: !947)
!947 = distinct !DILexicalBlock(scope: !931, file: !100, line: 177, column: 7)
!948 = !DILocation(line: 177, column: 23, scope: !949)
!949 = !DILexicalBlockFile(scope: !947, file: !100, discriminator: 1)
!950 = !DILocation(line: 177, column: 19, scope: !947)
!951 = !DILocation(line: 178, column: 5, scope: !947)
!952 = !DILocation(line: 179, column: 6, scope: !931)
!953 = !DILocation(line: 179, column: 17, scope: !931)
!954 = !{!866, !598, i64 40}
!955 = !DILocation(line: 180, column: 6, scope: !931)
!956 = !DILocation(line: 180, column: 18, scope: !931)
!957 = !{!866, !598, i64 48}
!958 = !DILocation(line: 181, column: 1, scope: !931)
!959 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !960, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !962)
!960 = !DISubroutineType(types: !961)
!961 = !{!94, !50, !94, !6, !94, !857}
!962 = !{!963, !964, !965, !966, !967, !968, !969, !970}
!963 = !DILocalVariable(name: "buffer", arg: 1, scope: !959, file: !100, line: 776, type: !50)
!964 = !DILocalVariable(name: "buffersize", arg: 2, scope: !959, file: !100, line: 776, type: !94)
!965 = !DILocalVariable(name: "arg", arg: 3, scope: !959, file: !100, line: 777, type: !6)
!966 = !DILocalVariable(name: "argsize", arg: 4, scope: !959, file: !100, line: 777, type: !94)
!967 = !DILocalVariable(name: "o", arg: 5, scope: !959, file: !100, line: 778, type: !857)
!968 = !DILocalVariable(name: "p", scope: !959, file: !100, line: 780, type: !857)
!969 = !DILocalVariable(name: "e", scope: !959, file: !100, line: 781, type: !25)
!970 = !DILocalVariable(name: "r", scope: !959, file: !100, line: 782, type: !94)
!971 = !DILocation(line: 776, column: 24, scope: !959)
!972 = !DILocation(line: 776, column: 39, scope: !959)
!973 = !DILocation(line: 777, column: 30, scope: !959)
!974 = !DILocation(line: 777, column: 42, scope: !959)
!975 = !DILocation(line: 778, column: 48, scope: !959)
!976 = !DILocation(line: 780, column: 37, scope: !959)
!977 = !DILocation(line: 780, column: 33, scope: !959)
!978 = !DILocation(line: 781, column: 11, scope: !959)
!979 = !DILocation(line: 781, column: 7, scope: !959)
!980 = !DILocation(line: 783, column: 43, scope: !959)
!981 = !DILocation(line: 783, column: 53, scope: !959)
!982 = !DILocation(line: 783, column: 60, scope: !959)
!983 = !DILocation(line: 784, column: 43, scope: !959)
!984 = !DILocation(line: 784, column: 58, scope: !959)
!985 = !DILocation(line: 782, column: 14, scope: !959)
!986 = !DILocation(line: 782, column: 10, scope: !959)
!987 = !DILocation(line: 785, column: 9, scope: !959)
!988 = !DILocation(line: 786, column: 3, scope: !959)
!989 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !990, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !994)
!990 = !DISubroutineType(types: !991)
!991 = !{!94, !50, !94, !6, !94, !58, !25, !992, !6, !6}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1019, !1020, !1021, !1022, !1023, !1026, !1027, !1044, !1047, !1048, !1055}
!995 = !DILocalVariable(name: "buffer", arg: 1, scope: !989, file: !100, line: 248, type: !50)
!996 = !DILocalVariable(name: "buffersize", arg: 2, scope: !989, file: !100, line: 248, type: !94)
!997 = !DILocalVariable(name: "arg", arg: 3, scope: !989, file: !100, line: 249, type: !6)
!998 = !DILocalVariable(name: "argsize", arg: 4, scope: !989, file: !100, line: 249, type: !94)
!999 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !989, file: !100, line: 250, type: !58)
!1000 = !DILocalVariable(name: "flags", arg: 6, scope: !989, file: !100, line: 250, type: !25)
!1001 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !989, file: !100, line: 251, type: !992)
!1002 = !DILocalVariable(name: "left_quote", arg: 8, scope: !989, file: !100, line: 252, type: !6)
!1003 = !DILocalVariable(name: "right_quote", arg: 9, scope: !989, file: !100, line: 253, type: !6)
!1004 = !DILocalVariable(name: "i", scope: !989, file: !100, line: 255, type: !94)
!1005 = !DILocalVariable(name: "len", scope: !989, file: !100, line: 256, type: !94)
!1006 = !DILocalVariable(name: "orig_buffersize", scope: !989, file: !100, line: 257, type: !94)
!1007 = !DILocalVariable(name: "quote_string", scope: !989, file: !100, line: 258, type: !6)
!1008 = !DILocalVariable(name: "quote_string_len", scope: !989, file: !100, line: 259, type: !94)
!1009 = !DILocalVariable(name: "backslash_escapes", scope: !989, file: !100, line: 260, type: !17)
!1010 = !DILocalVariable(name: "unibyte_locale", scope: !989, file: !100, line: 261, type: !17)
!1011 = !DILocalVariable(name: "elide_outer_quotes", scope: !989, file: !100, line: 262, type: !17)
!1012 = !DILocalVariable(name: "pending_shell_escape_end", scope: !989, file: !100, line: 263, type: !17)
!1013 = !DILocalVariable(name: "encountered_single_quote", scope: !989, file: !100, line: 264, type: !17)
!1014 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !989, file: !100, line: 265, type: !17)
!1015 = !DILocalVariable(name: "c", scope: !1016, file: !100, line: 394, type: !494)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !100, line: 393, column: 5)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !100, line: 392, column: 3)
!1018 = distinct !DILexicalBlock(scope: !989, file: !100, line: 392, column: 3)
!1019 = !DILocalVariable(name: "esc", scope: !1016, file: !100, line: 395, type: !494)
!1020 = !DILocalVariable(name: "is_right_quote", scope: !1016, file: !100, line: 396, type: !17)
!1021 = !DILocalVariable(name: "escaping", scope: !1016, file: !100, line: 397, type: !17)
!1022 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1016, file: !100, line: 398, type: !17)
!1023 = !DILocalVariable(name: "m", scope: !1024, file: !100, line: 602, type: !94)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 600, column: 11)
!1025 = distinct !DILexicalBlock(scope: !1016, file: !100, line: 418, column: 9)
!1026 = !DILocalVariable(name: "printable", scope: !1024, file: !100, line: 604, type: !17)
!1027 = !DILocalVariable(name: "mbstate", scope: !1028, file: !100, line: 613, type: !1030)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !100, line: 612, column: 15)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 606, column: 17)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1031, line: 107, baseType: !1032)
!1031 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1031, line: 95, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1031, line: 83, size: 64, elements: !1034)
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1033, file: !1031, line: 85, baseType: !25, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1033, file: !1031, line: 94, baseType: !1037, size: 32, offset: 32)
!1037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1033, file: !1031, line: 86, size: 32, elements: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1037, file: !1031, line: 89, baseType: !113, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1037, file: !1031, line: 93, baseType: !1041, size: 32)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1042)
!1042 = !{!1043}
!1043 = !DISubrange(count: 4)
!1044 = !DILocalVariable(name: "w", scope: !1045, file: !100, line: 623, type: !1046)
!1045 = distinct !DILexicalBlock(scope: !1028, file: !100, line: 622, column: 19)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1047 = !DILocalVariable(name: "bytes", scope: !1045, file: !100, line: 624, type: !94)
!1048 = !DILocalVariable(name: "j", scope: !1049, file: !100, line: 649, type: !94)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !100, line: 648, column: 27)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !100, line: 646, column: 29)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !100, line: 641, column: 23)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !100, line: 633, column: 30)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !100, line: 628, column: 30)
!1054 = distinct !DILexicalBlock(scope: !1045, file: !100, line: 626, column: 25)
!1055 = !DILocalVariable(name: "ilim", scope: !1056, file: !100, line: 676, type: !94)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !100, line: 673, column: 15)
!1057 = distinct !DILexicalBlock(scope: !1024, file: !100, line: 672, column: 17)
!1058 = !DILocation(line: 248, column: 33, scope: !989)
!1059 = !DILocation(line: 248, column: 48, scope: !989)
!1060 = !DILocation(line: 249, column: 39, scope: !989)
!1061 = !DILocation(line: 249, column: 51, scope: !989)
!1062 = !DILocation(line: 250, column: 46, scope: !989)
!1063 = !DILocation(line: 250, column: 65, scope: !989)
!1064 = !DILocation(line: 251, column: 47, scope: !989)
!1065 = !DILocation(line: 252, column: 39, scope: !989)
!1066 = !DILocation(line: 253, column: 39, scope: !989)
!1067 = !DILocation(line: 256, column: 10, scope: !989)
!1068 = !DILocation(line: 257, column: 10, scope: !989)
!1069 = !DILocation(line: 258, column: 15, scope: !989)
!1070 = !DILocation(line: 259, column: 10, scope: !989)
!1071 = !DILocation(line: 260, column: 8, scope: !989)
!1072 = !DILocation(line: 261, column: 25, scope: !989)
!1073 = !DILocation(line: 261, column: 36, scope: !989)
!1074 = !DILocation(line: 262, column: 8, scope: !989)
!1075 = !DILocation(line: 263, column: 8, scope: !989)
!1076 = !DILocation(line: 264, column: 8, scope: !989)
!1077 = !DILocation(line: 265, column: 8, scope: !989)
!1078 = !DILocation(line: 265, column: 3, scope: !989)
!1079 = !DILocation(line: 308, column: 3, scope: !989)
!1080 = !DILocation(line: 315, column: 11, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !989, file: !100, line: 309, column: 5)
!1082 = !DILocation(line: 315, column: 12, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1081, file: !100, line: 315, column: 11)
!1084 = !DILocation(line: 316, column: 9, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1086, file: !100, discriminator: 1)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !100, line: 316, column: 9)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !100, line: 316, column: 9)
!1088 = !DILocation(line: 316, column: 9, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1087, file: !100, discriminator: 1)
!1090 = !DILocation(line: 316, column: 9, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1086, file: !100, discriminator: 2)
!1092 = !{!599, !599, i64 0}
!1093 = !DILocation(line: 354, column: 26, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !100, line: 332, column: 11)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !100, line: 331, column: 13)
!1096 = distinct !DILexicalBlock(scope: !1081, file: !100, line: 330, column: 7)
!1097 = !DILocation(line: 355, column: 27, scope: !1094)
!1098 = !DILocation(line: 356, column: 11, scope: !1094)
!1099 = !DILocation(line: 357, column: 14, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !100, line: 357, column: 13)
!1101 = !DILocation(line: 357, column: 13, scope: !1096)
!1102 = !DILocation(line: 358, column: 43, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1104, file: !100, discriminator: 1)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !100, line: 358, column: 11)
!1105 = distinct !DILexicalBlock(scope: !1100, file: !100, line: 358, column: 11)
!1106 = !DILocation(line: 358, column: 11, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1105, file: !100, discriminator: 1)
!1108 = !DILocation(line: 359, column: 13, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1110, file: !100, discriminator: 1)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !100, line: 359, column: 13)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !100, line: 359, column: 13)
!1112 = !DILocation(line: 359, column: 13, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1111, file: !100, discriminator: 1)
!1114 = !DILocation(line: 359, column: 13, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1110, file: !100, discriminator: 2)
!1116 = !DILocation(line: 359, column: 13, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1111, file: !100, discriminator: 3)
!1118 = !DILocation(line: 358, column: 70, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1104, file: !100, discriminator: 2)
!1120 = distinct !{!1120, !1121, !1122}
!1121 = !DILocation(line: 358, column: 11, scope: !1105)
!1122 = !DILocation(line: 359, column: 13, scope: !1105)
!1123 = !DILocation(line: 362, column: 28, scope: !1096)
!1124 = !DILocation(line: 364, column: 7, scope: !1081)
!1125 = !DILocation(line: 367, column: 7, scope: !1081)
!1126 = !DILocation(line: 370, column: 7, scope: !1081)
!1127 = !DILocation(line: 373, column: 12, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1081, file: !100, line: 373, column: 11)
!1129 = !DILocation(line: 373, column: 11, scope: !1081)
!1130 = !DILocation(line: 378, column: 12, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1081, file: !100, line: 378, column: 11)
!1132 = !DILocation(line: 378, column: 11, scope: !1081)
!1133 = !DILocation(line: 379, column: 9, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !100, discriminator: 1)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !100, line: 379, column: 9)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !100, line: 379, column: 9)
!1137 = !DILocation(line: 379, column: 9, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1136, file: !100, discriminator: 1)
!1139 = !DILocation(line: 379, column: 9, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1135, file: !100, discriminator: 2)
!1141 = !DILocation(line: 386, column: 7, scope: !1081)
!1142 = !DILocation(line: 389, column: 7, scope: !1081)
!1143 = !DILocation(line: 255, column: 10, scope: !989)
!1144 = !DILocation(line: 392, column: 8, scope: !1018)
!1145 = !DILocation(line: 392, column: 27, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1017, file: !100, discriminator: 1)
!1147 = !DILocation(line: 392, column: 19, scope: !1146)
!1148 = !DILocation(line: 392, column: 60, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1017, file: !100, discriminator: 3)
!1150 = !DILocation(line: 392, column: 3, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1018, file: !100, discriminator: 4)
!1152 = !DILocation(line: 392, column: 41, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1017, file: !100, discriminator: 2)
!1154 = !DILocation(line: 392, column: 48, scope: !1153)
!1155 = !DILocation(line: 396, column: 12, scope: !1016)
!1156 = !DILocation(line: 397, column: 12, scope: !1016)
!1157 = !DILocation(line: 398, column: 12, scope: !1016)
!1158 = !DILocation(line: 401, column: 11, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1016, file: !100, line: 400, column: 11)
!1160 = !DILocation(line: 403, column: 17, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1159, file: !100, discriminator: 1)
!1162 = !DILocation(line: 404, column: 39, scope: !1159)
!1163 = !DILocation(line: 408, column: 32, scope: !1159)
!1164 = !DILocation(line: 404, column: 19, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1159, file: !100, discriminator: 2)
!1166 = !DILocation(line: 404, column: 15, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1159, file: !100, discriminator: 4)
!1168 = !DILocation(line: 409, column: 11, scope: !1159)
!1169 = !DILocation(line: 409, column: 26, scope: !1161)
!1170 = !DILocation(line: 409, column: 14, scope: !1161)
!1171 = !DILocation(line: 400, column: 11, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1016, file: !100, discriminator: 1)
!1173 = !DILocation(line: 416, column: 11, scope: !1016)
!1174 = !DILocation(line: 394, column: 21, scope: !1016)
!1175 = !DILocation(line: 417, column: 7, scope: !1016)
!1176 = !DILocation(line: 420, column: 15, scope: !1025)
!1177 = !DILocation(line: 422, column: 15, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !100, discriminator: 1)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !100, line: 422, column: 15)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !100, line: 421, column: 13)
!1181 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 420, column: 15)
!1182 = !DILocation(line: 422, column: 15, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1184, file: !100, discriminator: 4)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !100, line: 422, column: 15)
!1185 = !DILocation(line: 422, column: 15, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1184, file: !100, discriminator: 3)
!1187 = !DILocation(line: 422, column: 15, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1189, file: !100, discriminator: 6)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !100, line: 422, column: 15)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 422, column: 15)
!1191 = distinct !DILexicalBlock(scope: !1184, file: !100, line: 422, column: 15)
!1192 = !DILocation(line: 422, column: 15, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1190, file: !100, discriminator: 6)
!1194 = !DILocation(line: 422, column: 15, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1189, file: !100, discriminator: 7)
!1196 = !DILocation(line: 422, column: 15, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1190, file: !100, discriminator: 8)
!1198 = !DILocation(line: 422, column: 15, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1200, file: !100, discriminator: 11)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !100, line: 422, column: 15)
!1201 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 422, column: 15)
!1202 = !DILocation(line: 422, column: 15, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1201, file: !100, discriminator: 11)
!1204 = !DILocation(line: 422, column: 15, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1200, file: !100, discriminator: 12)
!1206 = !DILocation(line: 422, column: 15, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1201, file: !100, discriminator: 13)
!1208 = !DILocation(line: 422, column: 15, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1210, file: !100, discriminator: 16)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !100, line: 422, column: 15)
!1211 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 422, column: 15)
!1212 = !DILocation(line: 422, column: 15, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1211, file: !100, discriminator: 16)
!1214 = !DILocation(line: 422, column: 15, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1210, file: !100, discriminator: 17)
!1216 = !DILocation(line: 422, column: 15, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1211, file: !100, discriminator: 18)
!1218 = !DILocation(line: 422, column: 15, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1191, file: !100, discriminator: 20)
!1220 = !DILocation(line: 422, column: 15, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1222, file: !100, discriminator: 22)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !100, line: 422, column: 15)
!1223 = distinct !DILexicalBlock(scope: !1179, file: !100, line: 422, column: 15)
!1224 = !DILocation(line: 422, column: 15, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1223, file: !100, discriminator: 22)
!1226 = !DILocation(line: 422, column: 15, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1222, file: !100, discriminator: 23)
!1228 = !DILocation(line: 422, column: 15, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1223, file: !100, discriminator: 24)
!1230 = !DILocation(line: 430, column: 19, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1180, file: !100, line: 429, column: 19)
!1232 = !DILocation(line: 430, column: 24, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1231, file: !100, discriminator: 1)
!1234 = !DILocation(line: 430, column: 28, scope: !1233)
!1235 = !DILocation(line: 430, column: 38, scope: !1233)
!1236 = !DILocation(line: 430, column: 48, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1231, file: !100, discriminator: 2)
!1238 = !DILocation(line: 430, column: 59, scope: !1237)
!1239 = !DILocation(line: 432, column: 19, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1241, file: !100, discriminator: 1)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !100, line: 432, column: 19)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !100, line: 432, column: 19)
!1243 = distinct !DILexicalBlock(scope: !1231, file: !100, line: 431, column: 17)
!1244 = !DILocation(line: 432, column: 19, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1242, file: !100, discriminator: 1)
!1246 = !DILocation(line: 432, column: 19, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1241, file: !100, discriminator: 2)
!1248 = !DILocation(line: 432, column: 19, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1242, file: !100, discriminator: 3)
!1250 = !DILocation(line: 433, column: 19, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1252, file: !100, discriminator: 1)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !100, line: 433, column: 19)
!1253 = distinct !DILexicalBlock(scope: !1243, file: !100, line: 433, column: 19)
!1254 = !DILocation(line: 433, column: 19, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1253, file: !100, discriminator: 1)
!1256 = !DILocation(line: 433, column: 19, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1252, file: !100, discriminator: 2)
!1258 = !DILocation(line: 433, column: 19, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1253, file: !100, discriminator: 3)
!1260 = !DILocation(line: 434, column: 17, scope: !1243)
!1261 = !DILocation(line: 441, column: 20, scope: !1181)
!1262 = !DILocation(line: 446, column: 11, scope: !1025)
!1263 = !DILocation(line: 449, column: 19, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 447, column: 13)
!1265 = !DILocation(line: 455, column: 19, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1264, file: !100, line: 454, column: 19)
!1267 = !DILocation(line: 455, column: 24, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1266, file: !100, discriminator: 1)
!1269 = !DILocation(line: 455, column: 28, scope: !1268)
!1270 = !DILocation(line: 455, column: 38, scope: !1268)
!1271 = !DILocation(line: 455, column: 47, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1266, file: !100, discriminator: 2)
!1273 = !DILocation(line: 455, column: 41, scope: !1272)
!1274 = !DILocation(line: 455, column: 52, scope: !1272)
!1275 = !DILocation(line: 454, column: 19, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1264, file: !100, discriminator: 1)
!1277 = !DILocation(line: 456, column: 25, scope: !1266)
!1278 = !DILocation(line: 456, column: 17, scope: !1266)
!1279 = !DILocation(line: 463, column: 25, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1266, file: !100, line: 457, column: 19)
!1281 = !DILocation(line: 467, column: 21, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1283, file: !100, discriminator: 1)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !100, line: 467, column: 21)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !100, line: 467, column: 21)
!1285 = !DILocation(line: 467, column: 21, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1284, file: !100, discriminator: 1)
!1287 = !DILocation(line: 467, column: 21, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1283, file: !100, discriminator: 2)
!1289 = !DILocation(line: 467, column: 21, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1284, file: !100, discriminator: 3)
!1291 = !DILocation(line: 468, column: 21, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1293, file: !100, discriminator: 1)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !100, line: 468, column: 21)
!1294 = distinct !DILexicalBlock(scope: !1280, file: !100, line: 468, column: 21)
!1295 = !DILocation(line: 468, column: 21, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1294, file: !100, discriminator: 1)
!1297 = !DILocation(line: 468, column: 21, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1293, file: !100, discriminator: 2)
!1299 = !DILocation(line: 468, column: 21, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1294, file: !100, discriminator: 3)
!1301 = !DILocation(line: 469, column: 21, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1303, file: !100, discriminator: 1)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !100, line: 469, column: 21)
!1304 = distinct !DILexicalBlock(scope: !1280, file: !100, line: 469, column: 21)
!1305 = !DILocation(line: 469, column: 21, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1304, file: !100, discriminator: 1)
!1307 = !DILocation(line: 469, column: 21, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1303, file: !100, discriminator: 2)
!1309 = !DILocation(line: 469, column: 21, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1304, file: !100, discriminator: 3)
!1311 = !DILocation(line: 470, column: 21, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1313, file: !100, discriminator: 1)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !100, line: 470, column: 21)
!1314 = distinct !DILexicalBlock(scope: !1280, file: !100, line: 470, column: 21)
!1315 = !DILocation(line: 470, column: 21, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1314, file: !100, discriminator: 1)
!1317 = !DILocation(line: 470, column: 21, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1313, file: !100, discriminator: 2)
!1319 = !DILocation(line: 470, column: 21, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1314, file: !100, discriminator: 3)
!1321 = !DILocation(line: 471, column: 21, scope: !1280)
!1322 = !DILocation(line: 395, column: 21, scope: !1016)
!1323 = !DILocation(line: 484, column: 31, scope: !1025)
!1324 = !DILocation(line: 485, column: 31, scope: !1025)
!1325 = !DILocation(line: 487, column: 31, scope: !1025)
!1326 = !DILocation(line: 488, column: 31, scope: !1025)
!1327 = !DILocation(line: 489, column: 31, scope: !1025)
!1328 = !DILocation(line: 492, column: 15, scope: !1025)
!1329 = !DILocation(line: 494, column: 19, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !100, line: 493, column: 13)
!1331 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 492, column: 15)
!1332 = !DILocation(line: 501, column: 33, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 501, column: 15)
!1334 = !DILocation(line: 506, column: 15, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 505, column: 15)
!1336 = !DILocation(line: 510, column: 15, scope: !1025)
!1337 = !DILocation(line: 518, column: 26, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 518, column: 15)
!1339 = !DILocation(line: 518, column: 15, scope: !1025)
!1340 = !DILocation(line: 518, column: 40, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1338, file: !100, discriminator: 1)
!1342 = !DILocation(line: 518, column: 47, scope: !1341)
!1343 = !DILocation(line: 522, column: 17, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 522, column: 15)
!1345 = !DILocation(line: 518, column: 18, scope: !1341)
!1346 = !DILocation(line: 518, column: 65, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1338, file: !100, discriminator: 2)
!1348 = !DILocation(line: 518, column: 15, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1025, file: !100, discriminator: 2)
!1350 = !DILocation(line: 522, column: 15, scope: !1025)
!1351 = !DILocation(line: 526, column: 11, scope: !1025)
!1352 = !DILocation(line: 541, column: 15, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 540, column: 15)
!1354 = !DILocation(line: 548, column: 15, scope: !1025)
!1355 = !DILocation(line: 550, column: 19, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !100, line: 549, column: 13)
!1357 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 548, column: 15)
!1358 = !DILocation(line: 553, column: 19, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !100, line: 553, column: 19)
!1360 = !DILocation(line: 553, column: 35, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1359, file: !100, discriminator: 1)
!1362 = !DILocation(line: 553, column: 30, scope: !1359)
!1363 = !DILocation(line: 562, column: 15, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !100, discriminator: 1)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !100, line: 562, column: 15)
!1366 = distinct !DILexicalBlock(scope: !1356, file: !100, line: 562, column: 15)
!1367 = !DILocation(line: 562, column: 15, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1366, file: !100, discriminator: 1)
!1369 = !DILocation(line: 562, column: 15, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1365, file: !100, discriminator: 2)
!1371 = !DILocation(line: 562, column: 15, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1366, file: !100, discriminator: 3)
!1373 = !DILocation(line: 563, column: 15, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !100, discriminator: 1)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !100, line: 563, column: 15)
!1376 = distinct !DILexicalBlock(scope: !1356, file: !100, line: 563, column: 15)
!1377 = !DILocation(line: 563, column: 15, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1376, file: !100, discriminator: 1)
!1379 = !DILocation(line: 563, column: 15, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1375, file: !100, discriminator: 2)
!1381 = !DILocation(line: 563, column: 15, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1376, file: !100, discriminator: 3)
!1383 = !DILocation(line: 564, column: 15, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1385, file: !100, discriminator: 1)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !100, line: 564, column: 15)
!1386 = distinct !DILexicalBlock(scope: !1356, file: !100, line: 564, column: 15)
!1387 = !DILocation(line: 564, column: 15, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1386, file: !100, discriminator: 1)
!1389 = !DILocation(line: 564, column: 15, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1385, file: !100, discriminator: 2)
!1391 = !DILocation(line: 564, column: 15, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1386, file: !100, discriminator: 3)
!1393 = !DILocation(line: 566, column: 13, scope: !1356)
!1394 = !DILocation(line: 606, column: 17, scope: !1024)
!1395 = !DILocation(line: 602, column: 20, scope: !1024)
!1396 = !DILocation(line: 609, column: 29, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1029, file: !100, line: 607, column: 15)
!1398 = !{!1399, !1399, i64 0}
!1399 = !{!"short", !599, i64 0}
!1400 = !DILocation(line: 609, column: 27, scope: !1397)
!1401 = !DILocation(line: 604, column: 18, scope: !1024)
!1402 = !DILocation(line: 610, column: 15, scope: !1397)
!1403 = !DILocation(line: 613, column: 17, scope: !1028)
!1404 = !DILocation(line: 614, column: 17, scope: !1028)
!1405 = !DILocation(line: 618, column: 29, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1028, file: !100, line: 618, column: 21)
!1407 = !DILocation(line: 618, column: 21, scope: !1028)
!1408 = distinct !{!1408, !1409, !1410}
!1409 = !DILocation(line: 621, column: 17, scope: !1028)
!1410 = !DILocation(line: 667, column: 44, scope: !1028)
!1411 = !DILocation(line: 619, column: 29, scope: !1406)
!1412 = !DILocation(line: 619, column: 19, scope: !1406)
!1413 = !DILocation(line: 623, column: 21, scope: !1045)
!1414 = !DILocation(line: 624, column: 56, scope: !1045)
!1415 = !DILocation(line: 624, column: 50, scope: !1045)
!1416 = !DILocation(line: 625, column: 53, scope: !1045)
!1417 = !DIExpression(DW_OP_deref)
!1418 = !DILocation(line: 613, column: 27, scope: !1028)
!1419 = !DILocation(line: 623, column: 29, scope: !1045)
!1420 = !DILocation(line: 624, column: 36, scope: !1045)
!1421 = !DILocation(line: 624, column: 28, scope: !1045)
!1422 = !DILocation(line: 626, column: 25, scope: !1045)
!1423 = !DILocation(line: 636, column: 38, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1425, file: !100, discriminator: 1)
!1425 = distinct !DILexicalBlock(scope: !1052, file: !100, line: 634, column: 23)
!1426 = !DILocation(line: 636, column: 48, scope: !1424)
!1427 = !DILocation(line: 636, column: 51, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1425, file: !100, discriminator: 2)
!1429 = !DILocation(line: 636, column: 48, scope: !1428)
!1430 = !DILocation(line: 636, column: 25, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1425, file: !100, discriminator: 3)
!1432 = !DILocation(line: 637, column: 28, scope: !1425)
!1433 = !DILocation(line: 636, column: 34, scope: !1424)
!1434 = distinct !{!1434, !1435, !1432}
!1435 = !DILocation(line: 636, column: 25, scope: !1425)
!1436 = !DILocation(line: 650, column: 43, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1438, file: !100, discriminator: 1)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !100, line: 650, column: 29)
!1439 = distinct !DILexicalBlock(scope: !1049, file: !100, line: 650, column: 29)
!1440 = !DILocation(line: 647, column: 29, scope: !1050)
!1441 = !DILocation(line: 649, column: 36, scope: !1049)
!1442 = !DILocation(line: 651, column: 49, scope: !1438)
!1443 = !DILocation(line: 651, column: 39, scope: !1438)
!1444 = !DILocation(line: 651, column: 31, scope: !1438)
!1445 = !DILocation(line: 650, column: 53, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1438, file: !100, discriminator: 2)
!1447 = !DILocation(line: 650, column: 29, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1439, file: !100, discriminator: 1)
!1449 = distinct !{!1449, !1450, !1451}
!1450 = !DILocation(line: 650, column: 29, scope: !1439)
!1451 = !DILocation(line: 659, column: 33, scope: !1439)
!1452 = !DILocation(line: 666, column: 19, scope: !1028)
!1453 = !DILocation(line: 662, column: 41, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1051, file: !100, line: 662, column: 29)
!1455 = !DILocation(line: 662, column: 31, scope: !1454)
!1456 = !DILocation(line: 662, column: 29, scope: !1051)
!1457 = !DILocation(line: 664, column: 27, scope: !1051)
!1458 = !DILocation(line: 667, column: 26, scope: !1028)
!1459 = !DILocation(line: 667, column: 24, scope: !1028)
!1460 = !DILocation(line: 666, column: 19, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1045, file: !100, discriminator: 3)
!1462 = !DILocation(line: 668, column: 15, scope: !1029)
!1463 = !DILocation(line: 670, column: 40, scope: !1024)
!1464 = !DILocation(line: 672, column: 19, scope: !1057)
!1465 = !DILocation(line: 672, column: 45, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1057, file: !100, discriminator: 1)
!1467 = !DILocation(line: 672, column: 23, scope: !1057)
!1468 = !DILocation(line: 676, column: 33, scope: !1056)
!1469 = !DILocation(line: 676, column: 24, scope: !1056)
!1470 = !DILocation(line: 678, column: 17, scope: !1056)
!1471 = !DILocation(line: 680, column: 43, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !100, line: 680, column: 25)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !100, line: 679, column: 19)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !100, line: 678, column: 17)
!1475 = distinct !DILexicalBlock(scope: !1056, file: !100, line: 678, column: 17)
!1476 = !DILocation(line: 682, column: 25, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1478, file: !100, discriminator: 1)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !100, line: 682, column: 25)
!1479 = distinct !DILexicalBlock(scope: !1472, file: !100, line: 681, column: 23)
!1480 = !DILocation(line: 682, column: 25, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1482, file: !100, discriminator: 4)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !100, line: 682, column: 25)
!1483 = !DILocation(line: 682, column: 25, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1482, file: !100, discriminator: 3)
!1485 = !DILocation(line: 682, column: 25, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1487, file: !100, discriminator: 6)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !100, line: 682, column: 25)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !100, line: 682, column: 25)
!1489 = distinct !DILexicalBlock(scope: !1482, file: !100, line: 682, column: 25)
!1490 = !DILocation(line: 682, column: 25, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1488, file: !100, discriminator: 6)
!1492 = !DILocation(line: 682, column: 25, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1487, file: !100, discriminator: 7)
!1494 = !DILocation(line: 682, column: 25, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1488, file: !100, discriminator: 8)
!1496 = !DILocation(line: 682, column: 25, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1498, file: !100, discriminator: 11)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !100, line: 682, column: 25)
!1499 = distinct !DILexicalBlock(scope: !1489, file: !100, line: 682, column: 25)
!1500 = !DILocation(line: 682, column: 25, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1499, file: !100, discriminator: 11)
!1502 = !DILocation(line: 682, column: 25, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1498, file: !100, discriminator: 12)
!1504 = !DILocation(line: 682, column: 25, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1499, file: !100, discriminator: 13)
!1506 = !DILocation(line: 682, column: 25, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1508, file: !100, discriminator: 16)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !100, line: 682, column: 25)
!1509 = distinct !DILexicalBlock(scope: !1489, file: !100, line: 682, column: 25)
!1510 = !DILocation(line: 682, column: 25, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1509, file: !100, discriminator: 16)
!1512 = !DILocation(line: 682, column: 25, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1508, file: !100, discriminator: 17)
!1514 = !DILocation(line: 682, column: 25, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1509, file: !100, discriminator: 18)
!1516 = !DILocation(line: 682, column: 25, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1489, file: !100, discriminator: 20)
!1518 = !DILocation(line: 682, column: 25, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1520, file: !100, discriminator: 22)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !100, line: 682, column: 25)
!1521 = distinct !DILexicalBlock(scope: !1478, file: !100, line: 682, column: 25)
!1522 = !DILocation(line: 682, column: 25, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1521, file: !100, discriminator: 22)
!1524 = !DILocation(line: 682, column: 25, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1520, file: !100, discriminator: 23)
!1526 = !DILocation(line: 682, column: 25, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1521, file: !100, discriminator: 24)
!1528 = !DILocation(line: 683, column: 25, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1530, file: !100, discriminator: 1)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !100, line: 683, column: 25)
!1531 = distinct !DILexicalBlock(scope: !1479, file: !100, line: 683, column: 25)
!1532 = !DILocation(line: 683, column: 25, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1531, file: !100, discriminator: 1)
!1534 = !DILocation(line: 683, column: 25, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1530, file: !100, discriminator: 2)
!1536 = !DILocation(line: 683, column: 25, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1531, file: !100, discriminator: 3)
!1538 = !DILocation(line: 684, column: 25, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1540, file: !100, discriminator: 1)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !100, line: 684, column: 25)
!1541 = distinct !DILexicalBlock(scope: !1479, file: !100, line: 684, column: 25)
!1542 = !DILocation(line: 684, column: 25, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1541, file: !100, discriminator: 1)
!1544 = !DILocation(line: 684, column: 25, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1540, file: !100, discriminator: 2)
!1546 = !DILocation(line: 684, column: 25, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1541, file: !100, discriminator: 3)
!1548 = !DILocation(line: 685, column: 38, scope: !1479)
!1549 = !DILocation(line: 685, column: 33, scope: !1479)
!1550 = !DILocation(line: 686, column: 23, scope: !1479)
!1551 = !DILocation(line: 687, column: 30, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1472, file: !100, line: 687, column: 30)
!1553 = !DILocation(line: 687, column: 30, scope: !1472)
!1554 = !DILocation(line: 689, column: 25, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1556, file: !100, discriminator: 1)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !100, line: 689, column: 25)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !100, line: 689, column: 25)
!1558 = distinct !DILexicalBlock(scope: !1552, file: !100, line: 688, column: 23)
!1559 = !DILocation(line: 689, column: 25, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1557, file: !100, discriminator: 1)
!1561 = !DILocation(line: 689, column: 25, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1556, file: !100, discriminator: 2)
!1563 = !DILocation(line: 689, column: 25, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1557, file: !100, discriminator: 3)
!1565 = !DILocation(line: 691, column: 23, scope: !1558)
!1566 = !DILocation(line: 692, column: 35, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1473, file: !100, line: 692, column: 25)
!1568 = !DILocation(line: 692, column: 30, scope: !1567)
!1569 = !DILocation(line: 692, column: 25, scope: !1473)
!1570 = !DILocation(line: 694, column: 21, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !100, discriminator: 1)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !100, line: 694, column: 21)
!1573 = distinct !DILexicalBlock(scope: !1473, file: !100, line: 694, column: 21)
!1574 = !DILocation(line: 694, column: 21, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1572, file: !100, discriminator: 2)
!1576 = !DILocation(line: 694, column: 21, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1578, file: !100, discriminator: 4)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !100, line: 694, column: 21)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !100, line: 694, column: 21)
!1580 = distinct !DILexicalBlock(scope: !1572, file: !100, line: 694, column: 21)
!1581 = !DILocation(line: 694, column: 21, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1579, file: !100, discriminator: 4)
!1583 = !DILocation(line: 694, column: 21, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1578, file: !100, discriminator: 5)
!1585 = !DILocation(line: 694, column: 21, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1579, file: !100, discriminator: 6)
!1587 = !DILocation(line: 694, column: 21, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1589, file: !100, discriminator: 9)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !100, line: 694, column: 21)
!1590 = distinct !DILexicalBlock(scope: !1580, file: !100, line: 694, column: 21)
!1591 = !DILocation(line: 694, column: 21, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1590, file: !100, discriminator: 9)
!1593 = !DILocation(line: 694, column: 21, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1589, file: !100, discriminator: 10)
!1595 = !DILocation(line: 694, column: 21, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1590, file: !100, discriminator: 11)
!1597 = !DILocation(line: 694, column: 21, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1580, file: !100, discriminator: 13)
!1599 = !DILocation(line: 695, column: 21, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1601, file: !100, discriminator: 1)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !100, line: 695, column: 21)
!1602 = distinct !DILexicalBlock(scope: !1473, file: !100, line: 695, column: 21)
!1603 = !DILocation(line: 695, column: 21, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1602, file: !100, discriminator: 1)
!1605 = !DILocation(line: 695, column: 21, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1601, file: !100, discriminator: 2)
!1607 = !DILocation(line: 695, column: 21, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1602, file: !100, discriminator: 3)
!1609 = !DILocation(line: 696, column: 25, scope: !1473)
!1610 = !DILocation(line: 678, column: 17, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1474, file: !100, discriminator: 1)
!1612 = distinct !{!1612, !1613, !1614}
!1613 = !DILocation(line: 678, column: 17, scope: !1475)
!1614 = !DILocation(line: 697, column: 19, scope: !1475)
!1615 = !DILocation(line: 704, column: 34, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1016, file: !100, line: 704, column: 11)
!1617 = !DILocation(line: 706, column: 14, scope: !1616)
!1618 = !DILocation(line: 707, column: 14, scope: !1616)
!1619 = !DILocation(line: 707, column: 35, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1616, file: !100, discriminator: 1)
!1621 = !DILocation(line: 707, column: 17, scope: !1620)
!1622 = !DILocation(line: 707, column: 53, scope: !1620)
!1623 = !DILocation(line: 707, column: 47, scope: !1620)
!1624 = !DILocation(line: 707, column: 65, scope: !1620)
!1625 = !DILocation(line: 708, column: 15, scope: !1620)
!1626 = !DILocation(line: 708, column: 11, scope: !1616)
!1627 = !DILocation(line: 704, column: 11, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1016, file: !100, discriminator: 2)
!1629 = !DILocation(line: 712, column: 7, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1631, file: !100, discriminator: 1)
!1631 = distinct !DILexicalBlock(scope: !1016, file: !100, line: 712, column: 7)
!1632 = !DILocation(line: 712, column: 7, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1634, file: !100, discriminator: 4)
!1634 = distinct !DILexicalBlock(scope: !1631, file: !100, line: 712, column: 7)
!1635 = !DILocation(line: 712, column: 7, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1634, file: !100, discriminator: 3)
!1637 = !DILocation(line: 712, column: 7, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1639, file: !100, discriminator: 6)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !100, line: 712, column: 7)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !100, line: 712, column: 7)
!1641 = distinct !DILexicalBlock(scope: !1634, file: !100, line: 712, column: 7)
!1642 = !DILocation(line: 712, column: 7, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1640, file: !100, discriminator: 6)
!1644 = !DILocation(line: 712, column: 7, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1639, file: !100, discriminator: 7)
!1646 = !DILocation(line: 712, column: 7, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1640, file: !100, discriminator: 8)
!1648 = !DILocation(line: 712, column: 7, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1650, file: !100, discriminator: 11)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !100, line: 712, column: 7)
!1651 = distinct !DILexicalBlock(scope: !1641, file: !100, line: 712, column: 7)
!1652 = !DILocation(line: 712, column: 7, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1651, file: !100, discriminator: 11)
!1654 = !DILocation(line: 712, column: 7, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1650, file: !100, discriminator: 12)
!1656 = !DILocation(line: 712, column: 7, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1651, file: !100, discriminator: 13)
!1658 = !DILocation(line: 712, column: 7, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1660, file: !100, discriminator: 16)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !100, line: 712, column: 7)
!1661 = distinct !DILexicalBlock(scope: !1641, file: !100, line: 712, column: 7)
!1662 = !DILocation(line: 712, column: 7, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1661, file: !100, discriminator: 16)
!1664 = !DILocation(line: 712, column: 7, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1660, file: !100, discriminator: 17)
!1666 = !DILocation(line: 712, column: 7, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1661, file: !100, discriminator: 18)
!1668 = !DILocation(line: 712, column: 7, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1641, file: !100, discriminator: 20)
!1670 = !DILocation(line: 712, column: 7, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1672, file: !100, discriminator: 22)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !100, line: 712, column: 7)
!1673 = distinct !DILexicalBlock(scope: !1631, file: !100, line: 712, column: 7)
!1674 = !DILocation(line: 712, column: 7, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1673, file: !100, discriminator: 22)
!1676 = !DILocation(line: 712, column: 7, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1672, file: !100, discriminator: 23)
!1678 = !DILocation(line: 712, column: 7, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1673, file: !100, discriminator: 24)
!1680 = !DILocation(line: 715, column: 7, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !100, discriminator: 1)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !100, line: 715, column: 7)
!1683 = distinct !DILexicalBlock(scope: !1016, file: !100, line: 715, column: 7)
!1684 = !DILocation(line: 715, column: 7, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1682, file: !100, discriminator: 2)
!1686 = !DILocation(line: 715, column: 7, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1688, file: !100, discriminator: 4)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !100, line: 715, column: 7)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !100, line: 715, column: 7)
!1690 = distinct !DILexicalBlock(scope: !1682, file: !100, line: 715, column: 7)
!1691 = !DILocation(line: 715, column: 7, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1689, file: !100, discriminator: 4)
!1693 = !DILocation(line: 715, column: 7, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1688, file: !100, discriminator: 5)
!1695 = !DILocation(line: 715, column: 7, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1689, file: !100, discriminator: 6)
!1697 = !DILocation(line: 715, column: 7, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1699, file: !100, discriminator: 9)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !100, line: 715, column: 7)
!1700 = distinct !DILexicalBlock(scope: !1690, file: !100, line: 715, column: 7)
!1701 = !DILocation(line: 715, column: 7, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1700, file: !100, discriminator: 9)
!1703 = !DILocation(line: 715, column: 7, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1699, file: !100, discriminator: 10)
!1705 = !DILocation(line: 715, column: 7, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1700, file: !100, discriminator: 11)
!1707 = !DILocation(line: 715, column: 7, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1690, file: !100, discriminator: 13)
!1709 = !DILocation(line: 716, column: 7, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1711, file: !100, discriminator: 1)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !100, line: 716, column: 7)
!1712 = distinct !DILexicalBlock(scope: !1016, file: !100, line: 716, column: 7)
!1713 = !DILocation(line: 716, column: 7, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1712, file: !100, discriminator: 1)
!1715 = !DILocation(line: 716, column: 7, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1711, file: !100, discriminator: 2)
!1717 = !DILocation(line: 716, column: 7, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1712, file: !100, discriminator: 3)
!1719 = !DILocation(line: 718, column: 13, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1016, file: !100, line: 718, column: 11)
!1721 = !DILocation(line: 718, column: 11, scope: !1016)
!1722 = !DILocation(line: 720, column: 5, scope: !1017)
!1723 = !DILocation(line: 392, column: 75, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1017, file: !100, discriminator: 5)
!1725 = !DILocation(line: 392, column: 3, scope: !1724)
!1726 = distinct !{!1726, !1727, !1728}
!1727 = !DILocation(line: 392, column: 3, scope: !1018)
!1728 = !DILocation(line: 720, column: 5, scope: !1018)
!1729 = !DILocation(line: 722, column: 11, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !989, file: !100, line: 722, column: 7)
!1731 = !DILocation(line: 722, column: 16, scope: !1730)
!1732 = !DILocation(line: 730, column: 51, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !989, file: !100, line: 730, column: 7)
!1734 = !DILocation(line: 731, column: 10, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1733, file: !100, discriminator: 1)
!1736 = !DILocation(line: 733, column: 11, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !100, line: 733, column: 11)
!1738 = distinct !DILexicalBlock(scope: !1733, file: !100, line: 732, column: 5)
!1739 = !DILocation(line: 733, column: 11, scope: !1738)
!1740 = !DILocation(line: 734, column: 16, scope: !1737)
!1741 = !DILocation(line: 734, column: 9, scope: !1737)
!1742 = !DILocation(line: 738, column: 18, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1737, file: !100, line: 738, column: 16)
!1744 = !DILocation(line: 738, column: 32, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1743, file: !100, discriminator: 1)
!1746 = !DILocation(line: 738, column: 29, scope: !1743)
!1747 = !DILocation(line: 747, column: 7, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !989, file: !100, line: 747, column: 7)
!1749 = !DILocation(line: 747, column: 20, scope: !1748)
!1750 = !DILocation(line: 748, column: 12, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1752, file: !100, discriminator: 1)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !100, line: 748, column: 5)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !100, line: 748, column: 5)
!1754 = !DILocation(line: 748, column: 5, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1753, file: !100, discriminator: 1)
!1756 = !DILocation(line: 749, column: 7, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1758, file: !100, discriminator: 1)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !100, line: 749, column: 7)
!1759 = distinct !DILexicalBlock(scope: !1752, file: !100, line: 749, column: 7)
!1760 = !DILocation(line: 749, column: 7, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1759, file: !100, discriminator: 1)
!1762 = !DILocation(line: 749, column: 7, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1758, file: !100, discriminator: 2)
!1764 = !DILocation(line: 749, column: 7, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1759, file: !100, discriminator: 3)
!1766 = !DILocation(line: 748, column: 39, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1752, file: !100, discriminator: 2)
!1768 = distinct !{!1768, !1769, !1770}
!1769 = !DILocation(line: 748, column: 5, scope: !1753)
!1770 = !DILocation(line: 749, column: 7, scope: !1753)
!1771 = !DILocation(line: 751, column: 11, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !989, file: !100, line: 751, column: 7)
!1773 = !DILocation(line: 751, column: 7, scope: !989)
!1774 = !DILocation(line: 752, column: 5, scope: !1772)
!1775 = !DILocation(line: 752, column: 17, scope: !1772)
!1776 = !DILocation(line: 758, column: 21, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !989, file: !100, line: 758, column: 7)
!1778 = !DILocation(line: 758, column: 54, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1777, file: !100, discriminator: 1)
!1780 = !DILocation(line: 758, column: 51, scope: !1777)
!1781 = !DILocation(line: 762, column: 42, scope: !989)
!1782 = !DILocation(line: 760, column: 10, scope: !989)
!1783 = !DILocation(line: 760, column: 3, scope: !989)
!1784 = !DILocation(line: 764, column: 1, scope: !989)
!1785 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1786, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!6, !6, !58}
!1788 = !{!1789, !1790, !1791, !1792}
!1789 = !DILocalVariable(name: "msgid", arg: 1, scope: !1785, file: !100, line: 199, type: !6)
!1790 = !DILocalVariable(name: "s", arg: 2, scope: !1785, file: !100, line: 199, type: !58)
!1791 = !DILocalVariable(name: "translation", scope: !1785, file: !100, line: 201, type: !6)
!1792 = !DILocalVariable(name: "locale_code", scope: !1785, file: !100, line: 202, type: !6)
!1793 = !DILocation(line: 199, column: 28, scope: !1785)
!1794 = !DILocation(line: 199, column: 54, scope: !1785)
!1795 = !DILocation(line: 201, column: 29, scope: !1785)
!1796 = !DILocation(line: 201, column: 15, scope: !1785)
!1797 = !DILocation(line: 204, column: 19, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1785, file: !100, line: 204, column: 7)
!1799 = !DILocation(line: 204, column: 7, scope: !1785)
!1800 = !DILocation(line: 225, column: 17, scope: !1785)
!1801 = !DILocation(line: 202, column: 15, scope: !1785)
!1802 = !DILocalVariable(name: "s2", arg: 2, scope: !1803, file: !1804, line: 160, type: !6)
!1803 = distinct !DISubprogram(name: "strcaseeq0", scope: !1804, file: !1804, line: 160, type: !1805, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1807)
!1804 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1807 = !{!1808, !1802, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817}
!1808 = !DILocalVariable(name: "s1", arg: 1, scope: !1803, file: !1804, line: 160, type: !6)
!1809 = !DILocalVariable(name: "s20", arg: 3, scope: !1803, file: !1804, line: 160, type: !8)
!1810 = !DILocalVariable(name: "s21", arg: 4, scope: !1803, file: !1804, line: 160, type: !8)
!1811 = !DILocalVariable(name: "s22", arg: 5, scope: !1803, file: !1804, line: 160, type: !8)
!1812 = !DILocalVariable(name: "s23", arg: 6, scope: !1803, file: !1804, line: 160, type: !8)
!1813 = !DILocalVariable(name: "s24", arg: 7, scope: !1803, file: !1804, line: 160, type: !8)
!1814 = !DILocalVariable(name: "s25", arg: 8, scope: !1803, file: !1804, line: 160, type: !8)
!1815 = !DILocalVariable(name: "s26", arg: 9, scope: !1803, file: !1804, line: 160, type: !8)
!1816 = !DILocalVariable(name: "s27", arg: 10, scope: !1803, file: !1804, line: 160, type: !8)
!1817 = !DILocalVariable(name: "s28", arg: 11, scope: !1803, file: !1804, line: 160, type: !8)
!1818 = !DILocation(line: 160, column: 41, scope: !1803, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 226, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1785, file: !100, line: 226, column: 7)
!1821 = !DILocation(line: 160, column: 120, scope: !1803, inlinedAt: !1819)
!1822 = !DILocation(line: 160, column: 130, scope: !1803, inlinedAt: !1819)
!1823 = !DILocation(line: 162, column: 7, scope: !1824, inlinedAt: !1819)
!1824 = !DILexicalBlockFile(scope: !1825, file: !1804, discriminator: 1)
!1825 = distinct !DILexicalBlock(scope: !1803, file: !1804, line: 162, column: 7)
!1826 = !DILocalVariable(name: "s2", arg: 2, scope: !1827, file: !1804, line: 146, type: !6)
!1827 = distinct !DISubprogram(name: "strcaseeq1", scope: !1804, file: !1804, line: 146, type: !1828, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1830)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1830 = !{!1831, !1826, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839}
!1831 = !DILocalVariable(name: "s1", arg: 1, scope: !1827, file: !1804, line: 146, type: !6)
!1832 = !DILocalVariable(name: "s21", arg: 3, scope: !1827, file: !1804, line: 146, type: !8)
!1833 = !DILocalVariable(name: "s22", arg: 4, scope: !1827, file: !1804, line: 146, type: !8)
!1834 = !DILocalVariable(name: "s23", arg: 5, scope: !1827, file: !1804, line: 146, type: !8)
!1835 = !DILocalVariable(name: "s24", arg: 6, scope: !1827, file: !1804, line: 146, type: !8)
!1836 = !DILocalVariable(name: "s25", arg: 7, scope: !1827, file: !1804, line: 146, type: !8)
!1837 = !DILocalVariable(name: "s26", arg: 8, scope: !1827, file: !1804, line: 146, type: !8)
!1838 = !DILocalVariable(name: "s27", arg: 9, scope: !1827, file: !1804, line: 146, type: !8)
!1839 = !DILocalVariable(name: "s28", arg: 10, scope: !1827, file: !1804, line: 146, type: !8)
!1840 = !DILocation(line: 146, column: 41, scope: !1827, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 167, column: 16, scope: !1842, inlinedAt: !1819)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !1804, line: 164, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1825, file: !1804, line: 163, column: 5)
!1844 = !DILocation(line: 146, column: 110, scope: !1827, inlinedAt: !1841)
!1845 = !DILocation(line: 146, column: 120, scope: !1827, inlinedAt: !1841)
!1846 = !DILocation(line: 148, column: 7, scope: !1847, inlinedAt: !1841)
!1847 = !DILexicalBlockFile(scope: !1848, file: !1804, discriminator: 1)
!1848 = distinct !DILexicalBlock(scope: !1827, file: !1804, line: 148, column: 7)
!1849 = !DILocalVariable(name: "s2", arg: 2, scope: !1850, file: !1804, line: 132, type: !6)
!1850 = distinct !DISubprogram(name: "strcaseeq2", scope: !1804, file: !1804, line: 132, type: !1851, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1853 = !{!1854, !1849, !1855, !1856, !1857, !1858, !1859, !1860, !1861}
!1854 = !DILocalVariable(name: "s1", arg: 1, scope: !1850, file: !1804, line: 132, type: !6)
!1855 = !DILocalVariable(name: "s22", arg: 3, scope: !1850, file: !1804, line: 132, type: !8)
!1856 = !DILocalVariable(name: "s23", arg: 4, scope: !1850, file: !1804, line: 132, type: !8)
!1857 = !DILocalVariable(name: "s24", arg: 5, scope: !1850, file: !1804, line: 132, type: !8)
!1858 = !DILocalVariable(name: "s25", arg: 6, scope: !1850, file: !1804, line: 132, type: !8)
!1859 = !DILocalVariable(name: "s26", arg: 7, scope: !1850, file: !1804, line: 132, type: !8)
!1860 = !DILocalVariable(name: "s27", arg: 8, scope: !1850, file: !1804, line: 132, type: !8)
!1861 = !DILocalVariable(name: "s28", arg: 9, scope: !1850, file: !1804, line: 132, type: !8)
!1862 = !DILocation(line: 132, column: 41, scope: !1850, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 153, column: 16, scope: !1864, inlinedAt: !1841)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !1804, line: 150, column: 11)
!1865 = distinct !DILexicalBlock(scope: !1848, file: !1804, line: 149, column: 5)
!1866 = !DILocation(line: 132, column: 100, scope: !1850, inlinedAt: !1863)
!1867 = !DILocation(line: 132, column: 110, scope: !1850, inlinedAt: !1863)
!1868 = !DILocation(line: 134, column: 7, scope: !1869, inlinedAt: !1863)
!1869 = !DILexicalBlockFile(scope: !1870, file: !1804, discriminator: 1)
!1870 = distinct !DILexicalBlock(scope: !1850, file: !1804, line: 134, column: 7)
!1871 = !DILocalVariable(name: "s2", arg: 2, scope: !1872, file: !1804, line: 118, type: !6)
!1872 = distinct !DISubprogram(name: "strcaseeq3", scope: !1804, file: !1804, line: 118, type: !1873, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1875 = !{!1876, !1871, !1877, !1878, !1879, !1880, !1881, !1882}
!1876 = !DILocalVariable(name: "s1", arg: 1, scope: !1872, file: !1804, line: 118, type: !6)
!1877 = !DILocalVariable(name: "s23", arg: 3, scope: !1872, file: !1804, line: 118, type: !8)
!1878 = !DILocalVariable(name: "s24", arg: 4, scope: !1872, file: !1804, line: 118, type: !8)
!1879 = !DILocalVariable(name: "s25", arg: 5, scope: !1872, file: !1804, line: 118, type: !8)
!1880 = !DILocalVariable(name: "s26", arg: 6, scope: !1872, file: !1804, line: 118, type: !8)
!1881 = !DILocalVariable(name: "s27", arg: 7, scope: !1872, file: !1804, line: 118, type: !8)
!1882 = !DILocalVariable(name: "s28", arg: 8, scope: !1872, file: !1804, line: 118, type: !8)
!1883 = !DILocation(line: 118, column: 41, scope: !1872, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 139, column: 16, scope: !1885, inlinedAt: !1863)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !1804, line: 136, column: 11)
!1886 = distinct !DILexicalBlock(scope: !1870, file: !1804, line: 135, column: 5)
!1887 = !DILocation(line: 118, column: 90, scope: !1872, inlinedAt: !1884)
!1888 = !DILocation(line: 118, column: 100, scope: !1872, inlinedAt: !1884)
!1889 = !DILocation(line: 120, column: 7, scope: !1890, inlinedAt: !1884)
!1890 = !DILexicalBlockFile(scope: !1891, file: !1804, discriminator: 2)
!1891 = distinct !DILexicalBlock(scope: !1872, file: !1804, line: 120, column: 7)
!1892 = !DILocation(line: 120, column: 7, scope: !1893, inlinedAt: !1884)
!1893 = !DILexicalBlockFile(scope: !1872, file: !1804, discriminator: 2)
!1894 = !DILocalVariable(name: "s2", arg: 2, scope: !1895, file: !1804, line: 104, type: !6)
!1895 = distinct !DISubprogram(name: "strcaseeq4", scope: !1804, file: !1804, line: 104, type: !1896, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1898 = !{!1899, !1894, !1900, !1901, !1902, !1903, !1904}
!1899 = !DILocalVariable(name: "s1", arg: 1, scope: !1895, file: !1804, line: 104, type: !6)
!1900 = !DILocalVariable(name: "s24", arg: 3, scope: !1895, file: !1804, line: 104, type: !8)
!1901 = !DILocalVariable(name: "s25", arg: 4, scope: !1895, file: !1804, line: 104, type: !8)
!1902 = !DILocalVariable(name: "s26", arg: 5, scope: !1895, file: !1804, line: 104, type: !8)
!1903 = !DILocalVariable(name: "s27", arg: 6, scope: !1895, file: !1804, line: 104, type: !8)
!1904 = !DILocalVariable(name: "s28", arg: 7, scope: !1895, file: !1804, line: 104, type: !8)
!1905 = !DILocation(line: 104, column: 41, scope: !1895, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 125, column: 16, scope: !1907, inlinedAt: !1884)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !1804, line: 122, column: 11)
!1908 = distinct !DILexicalBlock(scope: !1891, file: !1804, line: 121, column: 5)
!1909 = !DILocation(line: 104, column: 80, scope: !1895, inlinedAt: !1906)
!1910 = !DILocation(line: 104, column: 90, scope: !1895, inlinedAt: !1906)
!1911 = !DILocation(line: 106, column: 7, scope: !1912, inlinedAt: !1906)
!1912 = !DILexicalBlockFile(scope: !1913, file: !1804, discriminator: 2)
!1913 = distinct !DILexicalBlock(scope: !1895, file: !1804, line: 106, column: 7)
!1914 = !DILocation(line: 106, column: 7, scope: !1915, inlinedAt: !1906)
!1915 = !DILexicalBlockFile(scope: !1895, file: !1804, discriminator: 2)
!1916 = !DILocalVariable(name: "s2", arg: 2, scope: !1917, file: !1804, line: 90, type: !6)
!1917 = distinct !DISubprogram(name: "strcaseeq5", scope: !1804, file: !1804, line: 90, type: !1918, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!25, !6, !6, !8, !8, !8, !8}
!1920 = !{!1921, !1916, !1922, !1923, !1924, !1925}
!1921 = !DILocalVariable(name: "s1", arg: 1, scope: !1917, file: !1804, line: 90, type: !6)
!1922 = !DILocalVariable(name: "s25", arg: 3, scope: !1917, file: !1804, line: 90, type: !8)
!1923 = !DILocalVariable(name: "s26", arg: 4, scope: !1917, file: !1804, line: 90, type: !8)
!1924 = !DILocalVariable(name: "s27", arg: 5, scope: !1917, file: !1804, line: 90, type: !8)
!1925 = !DILocalVariable(name: "s28", arg: 6, scope: !1917, file: !1804, line: 90, type: !8)
!1926 = !DILocation(line: 90, column: 41, scope: !1917, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 111, column: 16, scope: !1928, inlinedAt: !1906)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !1804, line: 108, column: 11)
!1929 = distinct !DILexicalBlock(scope: !1913, file: !1804, line: 107, column: 5)
!1930 = !DILocation(line: 90, column: 70, scope: !1917, inlinedAt: !1927)
!1931 = !DILocation(line: 90, column: 80, scope: !1917, inlinedAt: !1927)
!1932 = !DILocation(line: 92, column: 7, scope: !1933, inlinedAt: !1927)
!1933 = !DILexicalBlockFile(scope: !1934, file: !1804, discriminator: 2)
!1934 = distinct !DILexicalBlock(scope: !1917, file: !1804, line: 92, column: 7)
!1935 = !DILocation(line: 92, column: 7, scope: !1936, inlinedAt: !1927)
!1936 = !DILexicalBlockFile(scope: !1917, file: !1804, discriminator: 2)
!1937 = !DILocation(line: 227, column: 12, scope: !1820)
!1938 = !DILocation(line: 227, column: 21, scope: !1820)
!1939 = !DILocation(line: 227, column: 5, scope: !1820)
!1940 = !DILocation(line: 146, column: 41, scope: !1827, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 167, column: 16, scope: !1842, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 228, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1785, file: !100, line: 228, column: 7)
!1944 = !DILocation(line: 146, column: 110, scope: !1827, inlinedAt: !1941)
!1945 = !DILocation(line: 146, column: 120, scope: !1827, inlinedAt: !1941)
!1946 = !DILocation(line: 148, column: 7, scope: !1847, inlinedAt: !1941)
!1947 = !DILocation(line: 132, column: 41, scope: !1850, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 153, column: 16, scope: !1864, inlinedAt: !1941)
!1949 = !DILocation(line: 132, column: 100, scope: !1850, inlinedAt: !1948)
!1950 = !DILocation(line: 132, column: 110, scope: !1850, inlinedAt: !1948)
!1951 = !DILocation(line: 134, column: 7, scope: !1952, inlinedAt: !1948)
!1952 = !DILexicalBlockFile(scope: !1870, file: !1804, discriminator: 2)
!1953 = !DILocation(line: 134, column: 7, scope: !1954, inlinedAt: !1948)
!1954 = !DILexicalBlockFile(scope: !1850, file: !1804, discriminator: 2)
!1955 = !DILocation(line: 118, column: 41, scope: !1872, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 139, column: 16, scope: !1885, inlinedAt: !1948)
!1957 = !DILocation(line: 118, column: 90, scope: !1872, inlinedAt: !1956)
!1958 = !DILocation(line: 118, column: 100, scope: !1872, inlinedAt: !1956)
!1959 = !DILocation(line: 120, column: 7, scope: !1890, inlinedAt: !1956)
!1960 = !DILocation(line: 120, column: 7, scope: !1893, inlinedAt: !1956)
!1961 = !DILocation(line: 104, column: 41, scope: !1895, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 125, column: 16, scope: !1907, inlinedAt: !1956)
!1963 = !DILocation(line: 104, column: 80, scope: !1895, inlinedAt: !1962)
!1964 = !DILocation(line: 104, column: 90, scope: !1895, inlinedAt: !1962)
!1965 = !DILocation(line: 106, column: 7, scope: !1912, inlinedAt: !1962)
!1966 = !DILocation(line: 106, column: 7, scope: !1915, inlinedAt: !1962)
!1967 = !DILocation(line: 90, column: 41, scope: !1917, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 111, column: 16, scope: !1928, inlinedAt: !1962)
!1969 = !DILocation(line: 90, column: 70, scope: !1917, inlinedAt: !1968)
!1970 = !DILocation(line: 90, column: 80, scope: !1917, inlinedAt: !1968)
!1971 = !DILocation(line: 92, column: 7, scope: !1933, inlinedAt: !1968)
!1972 = !DILocation(line: 92, column: 7, scope: !1936, inlinedAt: !1968)
!1973 = !DILocalVariable(name: "s2", arg: 2, scope: !1974, file: !1804, line: 76, type: !6)
!1974 = distinct !DISubprogram(name: "strcaseeq6", scope: !1804, file: !1804, line: 76, type: !1975, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!25, !6, !6, !8, !8, !8}
!1977 = !{!1978, !1973, !1979, !1980, !1981}
!1978 = !DILocalVariable(name: "s1", arg: 1, scope: !1974, file: !1804, line: 76, type: !6)
!1979 = !DILocalVariable(name: "s26", arg: 3, scope: !1974, file: !1804, line: 76, type: !8)
!1980 = !DILocalVariable(name: "s27", arg: 4, scope: !1974, file: !1804, line: 76, type: !8)
!1981 = !DILocalVariable(name: "s28", arg: 5, scope: !1974, file: !1804, line: 76, type: !8)
!1982 = !DILocation(line: 76, column: 41, scope: !1974, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 97, column: 16, scope: !1984, inlinedAt: !1968)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !1804, line: 94, column: 11)
!1985 = distinct !DILexicalBlock(scope: !1934, file: !1804, line: 93, column: 5)
!1986 = !DILocation(line: 76, column: 60, scope: !1974, inlinedAt: !1983)
!1987 = !DILocation(line: 76, column: 70, scope: !1974, inlinedAt: !1983)
!1988 = !DILocation(line: 78, column: 7, scope: !1989, inlinedAt: !1983)
!1989 = !DILexicalBlockFile(scope: !1990, file: !1804, discriminator: 2)
!1990 = distinct !DILexicalBlock(scope: !1974, file: !1804, line: 78, column: 7)
!1991 = !DILocation(line: 78, column: 7, scope: !1992, inlinedAt: !1983)
!1992 = !DILexicalBlockFile(scope: !1974, file: !1804, discriminator: 2)
!1993 = !DILocalVariable(name: "s2", arg: 2, scope: !1994, file: !1804, line: 62, type: !6)
!1994 = distinct !DISubprogram(name: "strcaseeq7", scope: !1804, file: !1804, line: 62, type: !1995, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!25, !6, !6, !8, !8}
!1997 = !{!1998, !1993, !1999, !2000}
!1998 = !DILocalVariable(name: "s1", arg: 1, scope: !1994, file: !1804, line: 62, type: !6)
!1999 = !DILocalVariable(name: "s27", arg: 3, scope: !1994, file: !1804, line: 62, type: !8)
!2000 = !DILocalVariable(name: "s28", arg: 4, scope: !1994, file: !1804, line: 62, type: !8)
!2001 = !DILocation(line: 62, column: 41, scope: !1994, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 83, column: 16, scope: !2003, inlinedAt: !1983)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !1804, line: 80, column: 11)
!2004 = distinct !DILexicalBlock(scope: !1990, file: !1804, line: 79, column: 5)
!2005 = !DILocation(line: 62, column: 50, scope: !1994, inlinedAt: !2002)
!2006 = !DILocation(line: 62, column: 60, scope: !1994, inlinedAt: !2002)
!2007 = !DILocation(line: 64, column: 7, scope: !2008, inlinedAt: !2002)
!2008 = !DILexicalBlockFile(scope: !2009, file: !1804, discriminator: 2)
!2009 = distinct !DILexicalBlock(scope: !1994, file: !1804, line: 64, column: 7)
!2010 = !DILocation(line: 228, column: 7, scope: !1785)
!2011 = !DILocation(line: 229, column: 12, scope: !1943)
!2012 = !DILocation(line: 229, column: 21, scope: !1943)
!2013 = !DILocation(line: 229, column: 5, scope: !1943)
!2014 = !DILocation(line: 231, column: 13, scope: !1785)
!2015 = !DILocation(line: 231, column: 11, scope: !1785)
!2016 = !DILocation(line: 231, column: 3, scope: !1785)
!2017 = !DILocation(line: 232, column: 1, scope: !1785)
!2018 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !2019, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!50, !6, !94, !857}
!2021 = !{!2022, !2023, !2024}
!2022 = !DILocalVariable(name: "arg", arg: 1, scope: !2018, file: !100, line: 791, type: !6)
!2023 = !DILocalVariable(name: "argsize", arg: 2, scope: !2018, file: !100, line: 791, type: !94)
!2024 = !DILocalVariable(name: "o", arg: 3, scope: !2018, file: !100, line: 792, type: !857)
!2025 = !DILocation(line: 791, column: 29, scope: !2018)
!2026 = !DILocation(line: 791, column: 41, scope: !2018)
!2027 = !DILocation(line: 792, column: 47, scope: !2018)
!2028 = !DILocalVariable(name: "arg", arg: 1, scope: !2029, file: !100, line: 804, type: !6)
!2029 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !2030, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!50, !6, !94, !552, !857}
!2032 = !{!2028, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040}
!2033 = !DILocalVariable(name: "argsize", arg: 2, scope: !2029, file: !100, line: 804, type: !94)
!2034 = !DILocalVariable(name: "size", arg: 3, scope: !2029, file: !100, line: 804, type: !552)
!2035 = !DILocalVariable(name: "o", arg: 4, scope: !2029, file: !100, line: 805, type: !857)
!2036 = !DILocalVariable(name: "p", scope: !2029, file: !100, line: 807, type: !857)
!2037 = !DILocalVariable(name: "e", scope: !2029, file: !100, line: 808, type: !25)
!2038 = !DILocalVariable(name: "flags", scope: !2029, file: !100, line: 810, type: !25)
!2039 = !DILocalVariable(name: "bufsize", scope: !2029, file: !100, line: 811, type: !94)
!2040 = !DILocalVariable(name: "buf", scope: !2029, file: !100, line: 815, type: !50)
!2041 = !DILocation(line: 804, column: 33, scope: !2029, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 794, column: 10, scope: !2018)
!2043 = !DILocation(line: 804, column: 45, scope: !2029, inlinedAt: !2042)
!2044 = !DILocation(line: 804, column: 62, scope: !2029, inlinedAt: !2042)
!2045 = !DILocation(line: 805, column: 51, scope: !2029, inlinedAt: !2042)
!2046 = !DILocation(line: 807, column: 37, scope: !2029, inlinedAt: !2042)
!2047 = !DILocation(line: 807, column: 33, scope: !2029, inlinedAt: !2042)
!2048 = !DILocation(line: 808, column: 11, scope: !2029, inlinedAt: !2042)
!2049 = !DILocation(line: 808, column: 7, scope: !2029, inlinedAt: !2042)
!2050 = !DILocation(line: 810, column: 18, scope: !2029, inlinedAt: !2042)
!2051 = !DILocation(line: 810, column: 24, scope: !2029, inlinedAt: !2042)
!2052 = !DILocation(line: 810, column: 7, scope: !2029, inlinedAt: !2042)
!2053 = !DILocation(line: 811, column: 69, scope: !2029, inlinedAt: !2042)
!2054 = !DILocation(line: 812, column: 53, scope: !2029, inlinedAt: !2042)
!2055 = !DILocation(line: 813, column: 49, scope: !2029, inlinedAt: !2042)
!2056 = !DILocation(line: 814, column: 49, scope: !2029, inlinedAt: !2042)
!2057 = !DILocation(line: 811, column: 20, scope: !2029, inlinedAt: !2042)
!2058 = !DILocation(line: 814, column: 62, scope: !2029, inlinedAt: !2042)
!2059 = !DILocation(line: 811, column: 10, scope: !2029, inlinedAt: !2042)
!2060 = !DILocalVariable(name: "n", arg: 1, scope: !2061, file: !548, line: 220, type: !94)
!2061 = distinct !DISubprogram(name: "xcharalloc", scope: !548, file: !548, line: 220, type: !2062, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!50, !94}
!2064 = !{!2060}
!2065 = !DILocation(line: 220, column: 20, scope: !2061, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 815, column: 15, scope: !2029, inlinedAt: !2042)
!2067 = !DILocation(line: 222, column: 10, scope: !2061, inlinedAt: !2066)
!2068 = !DILocation(line: 815, column: 9, scope: !2029, inlinedAt: !2042)
!2069 = !DILocation(line: 816, column: 60, scope: !2029, inlinedAt: !2042)
!2070 = !DILocation(line: 818, column: 32, scope: !2029, inlinedAt: !2042)
!2071 = !DILocation(line: 818, column: 47, scope: !2029, inlinedAt: !2042)
!2072 = !DILocation(line: 816, column: 3, scope: !2029, inlinedAt: !2042)
!2073 = !DILocation(line: 819, column: 9, scope: !2029, inlinedAt: !2042)
!2074 = !DILocation(line: 794, column: 3, scope: !2018)
!2075 = !DILocation(line: 804, column: 33, scope: !2029)
!2076 = !DILocation(line: 804, column: 45, scope: !2029)
!2077 = !DILocation(line: 804, column: 62, scope: !2029)
!2078 = !DILocation(line: 805, column: 51, scope: !2029)
!2079 = !DILocation(line: 807, column: 37, scope: !2029)
!2080 = !DILocation(line: 807, column: 33, scope: !2029)
!2081 = !DILocation(line: 808, column: 11, scope: !2029)
!2082 = !DILocation(line: 808, column: 7, scope: !2029)
!2083 = !DILocation(line: 810, column: 18, scope: !2029)
!2084 = !DILocation(line: 810, column: 27, scope: !2029)
!2085 = !DILocation(line: 810, column: 24, scope: !2029)
!2086 = !DILocation(line: 810, column: 7, scope: !2029)
!2087 = !DILocation(line: 811, column: 69, scope: !2029)
!2088 = !DILocation(line: 812, column: 53, scope: !2029)
!2089 = !DILocation(line: 813, column: 49, scope: !2029)
!2090 = !DILocation(line: 814, column: 49, scope: !2029)
!2091 = !DILocation(line: 811, column: 20, scope: !2029)
!2092 = !DILocation(line: 814, column: 62, scope: !2029)
!2093 = !DILocation(line: 811, column: 10, scope: !2029)
!2094 = !DILocation(line: 220, column: 20, scope: !2061, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 815, column: 15, scope: !2029)
!2096 = !DILocation(line: 222, column: 10, scope: !2061, inlinedAt: !2095)
!2097 = !DILocation(line: 815, column: 9, scope: !2029)
!2098 = !DILocation(line: 816, column: 60, scope: !2029)
!2099 = !DILocation(line: 818, column: 32, scope: !2029)
!2100 = !DILocation(line: 818, column: 47, scope: !2029)
!2101 = !DILocation(line: 816, column: 3, scope: !2029)
!2102 = !DILocation(line: 819, column: 9, scope: !2029)
!2103 = !DILocation(line: 820, column: 7, scope: !2029)
!2104 = !DILocation(line: 821, column: 11, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2029, file: !100, line: 820, column: 7)
!2106 = !{!2107, !2107, i64 0}
!2107 = !{!"long", !599, i64 0}
!2108 = !DILocation(line: 821, column: 5, scope: !2105)
!2109 = !DILocation(line: 822, column: 3, scope: !2029)
!2110 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !696, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2111)
!2111 = !{!2112, !2113}
!2112 = !DILocalVariable(name: "sv", scope: !2110, file: !100, line: 842, type: !127)
!2113 = !DILocalVariable(name: "i", scope: !2110, file: !100, line: 843, type: !25)
!2114 = !DILocation(line: 842, column: 24, scope: !2110)
!2115 = !DILocation(line: 842, column: 19, scope: !2110)
!2116 = !DILocation(line: 843, column: 7, scope: !2110)
!2117 = !DILocation(line: 844, column: 19, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2119, file: !100, discriminator: 1)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !100, line: 844, column: 3)
!2120 = distinct !DILexicalBlock(scope: !2110, file: !100, line: 844, column: 3)
!2121 = !DILocation(line: 844, column: 17, scope: !2118)
!2122 = !DILocation(line: 844, column: 3, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2120, file: !100, discriminator: 1)
!2124 = !DILocation(line: 845, column: 17, scope: !2119)
!2125 = !{!2126, !598, i64 8}
!2126 = !{!"slotvec", !2107, i64 0, !598, i64 8}
!2127 = !DILocation(line: 845, column: 5, scope: !2119)
!2128 = !DILocation(line: 844, column: 28, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2119, file: !100, discriminator: 2)
!2130 = distinct !{!2130, !2131, !2132}
!2131 = !DILocation(line: 844, column: 3, scope: !2120)
!2132 = !DILocation(line: 845, column: 20, scope: !2120)
!2133 = !DILocation(line: 846, column: 13, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2110, file: !100, line: 846, column: 7)
!2135 = !DILocation(line: 846, column: 17, scope: !2134)
!2136 = !DILocation(line: 846, column: 7, scope: !2110)
!2137 = !DILocation(line: 848, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2134, file: !100, line: 847, column: 5)
!2139 = !DILocation(line: 849, column: 21, scope: !2138)
!2140 = !{!2126, !2107, i64 0}
!2141 = !DILocation(line: 850, column: 20, scope: !2138)
!2142 = !DILocation(line: 851, column: 5, scope: !2138)
!2143 = !DILocation(line: 852, column: 10, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2110, file: !100, line: 852, column: 7)
!2145 = !DILocation(line: 852, column: 7, scope: !2110)
!2146 = !DILocation(line: 854, column: 13, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !100, line: 853, column: 5)
!2148 = !DILocation(line: 854, column: 7, scope: !2147)
!2149 = !DILocation(line: 855, column: 15, scope: !2147)
!2150 = !DILocation(line: 856, column: 5, scope: !2147)
!2151 = !DILocation(line: 857, column: 10, scope: !2110)
!2152 = !DILocation(line: 858, column: 1, scope: !2110)
!2153 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !2154, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2156)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!50, !25, !6}
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "n", arg: 1, scope: !2153, file: !100, line: 922, type: !25)
!2158 = !DILocalVariable(name: "arg", arg: 2, scope: !2153, file: !100, line: 922, type: !6)
!2159 = !DILocation(line: 922, column: 17, scope: !2153)
!2160 = !DILocation(line: 922, column: 32, scope: !2153)
!2161 = !DILocation(line: 924, column: 10, scope: !2153)
!2162 = !DILocation(line: 924, column: 3, scope: !2153)
!2163 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !2164, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!50, !25, !6, !94, !857}
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172, !2173, !2176, !2178, !2179, !2180}
!2167 = !DILocalVariable(name: "n", arg: 1, scope: !2163, file: !100, line: 869, type: !25)
!2168 = !DILocalVariable(name: "arg", arg: 2, scope: !2163, file: !100, line: 869, type: !6)
!2169 = !DILocalVariable(name: "argsize", arg: 3, scope: !2163, file: !100, line: 869, type: !94)
!2170 = !DILocalVariable(name: "options", arg: 4, scope: !2163, file: !100, line: 870, type: !857)
!2171 = !DILocalVariable(name: "e", scope: !2163, file: !100, line: 872, type: !25)
!2172 = !DILocalVariable(name: "sv", scope: !2163, file: !100, line: 874, type: !127)
!2173 = !DILocalVariable(name: "preallocated", scope: !2174, file: !100, line: 881, type: !17)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !100, line: 880, column: 5)
!2175 = distinct !DILexicalBlock(scope: !2163, file: !100, line: 879, column: 7)
!2176 = !DILocalVariable(name: "size", scope: !2177, file: !100, line: 894, type: !94)
!2177 = distinct !DILexicalBlock(scope: !2163, file: !100, line: 893, column: 3)
!2178 = !DILocalVariable(name: "val", scope: !2177, file: !100, line: 895, type: !50)
!2179 = !DILocalVariable(name: "flags", scope: !2177, file: !100, line: 897, type: !25)
!2180 = !DILocalVariable(name: "qsize", scope: !2177, file: !100, line: 898, type: !94)
!2181 = !DILocation(line: 869, column: 25, scope: !2163)
!2182 = !DILocation(line: 869, column: 40, scope: !2163)
!2183 = !DILocation(line: 869, column: 52, scope: !2163)
!2184 = !DILocation(line: 870, column: 51, scope: !2163)
!2185 = !DILocation(line: 872, column: 11, scope: !2163)
!2186 = !DILocation(line: 872, column: 7, scope: !2163)
!2187 = !DILocation(line: 874, column: 24, scope: !2163)
!2188 = !DILocation(line: 874, column: 19, scope: !2163)
!2189 = !DILocation(line: 876, column: 9, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2163, file: !100, line: 876, column: 7)
!2191 = !DILocation(line: 876, column: 7, scope: !2163)
!2192 = !DILocation(line: 877, column: 5, scope: !2190)
!2193 = !DILocation(line: 879, column: 7, scope: !2175)
!2194 = !DILocation(line: 879, column: 14, scope: !2175)
!2195 = !DILocation(line: 879, column: 7, scope: !2163)
!2196 = !DILocation(line: 881, column: 31, scope: !2174)
!2197 = !DILocation(line: 883, column: 67, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2174, file: !100, line: 883, column: 11)
!2199 = !DILocation(line: 883, column: 11, scope: !2174)
!2200 = !DILocation(line: 884, column: 9, scope: !2198)
!2201 = !DILocation(line: 886, column: 32, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !2174, file: !100, discriminator: 3)
!2203 = !DILocation(line: 886, column: 61, scope: !2202)
!2204 = !DILocation(line: 886, column: 58, scope: !2202)
!2205 = !DILocation(line: 886, column: 66, scope: !2202)
!2206 = !DILocation(line: 886, column: 22, scope: !2202)
!2207 = !DILocation(line: 886, column: 15, scope: !2202)
!2208 = !DILocation(line: 887, column: 11, scope: !2174)
!2209 = !DILocation(line: 888, column: 15, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2174, file: !100, line: 887, column: 11)
!2211 = !{i64 0, i64 8, !2106, i64 8, i64 8, !597}
!2212 = !DILocation(line: 888, column: 9, scope: !2210)
!2213 = !DILocation(line: 889, column: 20, scope: !2174)
!2214 = !DILocation(line: 889, column: 18, scope: !2174)
!2215 = !DILocation(line: 889, column: 7, scope: !2174)
!2216 = !DILocation(line: 889, column: 38, scope: !2174)
!2217 = !DILocation(line: 889, column: 31, scope: !2174)
!2218 = !DILocation(line: 889, column: 48, scope: !2174)
!2219 = !DILocation(line: 890, column: 14, scope: !2174)
!2220 = !DILocation(line: 891, column: 5, scope: !2174)
!2221 = !DILocation(line: 894, column: 19, scope: !2177)
!2222 = !DILocation(line: 894, column: 25, scope: !2177)
!2223 = !DILocation(line: 894, column: 12, scope: !2177)
!2224 = !DILocation(line: 895, column: 23, scope: !2177)
!2225 = !DILocation(line: 895, column: 11, scope: !2177)
!2226 = !DILocation(line: 897, column: 26, scope: !2177)
!2227 = !DILocation(line: 897, column: 32, scope: !2177)
!2228 = !DILocation(line: 897, column: 9, scope: !2177)
!2229 = !DILocation(line: 899, column: 55, scope: !2177)
!2230 = !DILocation(line: 900, column: 46, scope: !2177)
!2231 = !DILocation(line: 901, column: 55, scope: !2177)
!2232 = !DILocation(line: 902, column: 55, scope: !2177)
!2233 = !DILocation(line: 898, column: 20, scope: !2177)
!2234 = !DILocation(line: 898, column: 12, scope: !2177)
!2235 = !DILocation(line: 904, column: 14, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2177, file: !100, line: 904, column: 9)
!2237 = !DILocation(line: 904, column: 9, scope: !2177)
!2238 = !DILocation(line: 906, column: 35, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2236, file: !100, line: 905, column: 7)
!2240 = !DILocation(line: 906, column: 20, scope: !2239)
!2241 = !DILocation(line: 907, column: 17, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2239, file: !100, line: 907, column: 13)
!2243 = !DILocation(line: 907, column: 13, scope: !2239)
!2244 = !DILocation(line: 908, column: 11, scope: !2242)
!2245 = !DILocation(line: 220, column: 20, scope: !2061, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 909, column: 27, scope: !2239)
!2247 = !DILocation(line: 222, column: 10, scope: !2061, inlinedAt: !2246)
!2248 = !DILocation(line: 909, column: 19, scope: !2239)
!2249 = !DILocation(line: 910, column: 69, scope: !2239)
!2250 = !DILocation(line: 912, column: 44, scope: !2239)
!2251 = !DILocation(line: 913, column: 44, scope: !2239)
!2252 = !DILocation(line: 910, column: 9, scope: !2239)
!2253 = !DILocation(line: 914, column: 7, scope: !2239)
!2254 = !DILocation(line: 916, column: 11, scope: !2177)
!2255 = !DILocation(line: 917, column: 5, scope: !2177)
!2256 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !2257, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!50, !25, !6, !94}
!2259 = !{!2260, !2261, !2262}
!2260 = !DILocalVariable(name: "n", arg: 1, scope: !2256, file: !100, line: 928, type: !25)
!2261 = !DILocalVariable(name: "arg", arg: 2, scope: !2256, file: !100, line: 928, type: !6)
!2262 = !DILocalVariable(name: "argsize", arg: 3, scope: !2256, file: !100, line: 928, type: !94)
!2263 = !DILocation(line: 928, column: 21, scope: !2256)
!2264 = !DILocation(line: 928, column: 36, scope: !2256)
!2265 = !DILocation(line: 928, column: 48, scope: !2256)
!2266 = !DILocation(line: 930, column: 10, scope: !2256)
!2267 = !DILocation(line: 930, column: 3, scope: !2256)
!2268 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !2269, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!50, !6}
!2271 = !{!2272}
!2272 = !DILocalVariable(name: "arg", arg: 1, scope: !2268, file: !100, line: 934, type: !6)
!2273 = !DILocation(line: 934, column: 23, scope: !2268)
!2274 = !DILocation(line: 922, column: 17, scope: !2153, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 936, column: 10, scope: !2268)
!2276 = !DILocation(line: 922, column: 32, scope: !2153, inlinedAt: !2275)
!2277 = !DILocation(line: 924, column: 10, scope: !2153, inlinedAt: !2275)
!2278 = !DILocation(line: 936, column: 3, scope: !2268)
!2279 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !2280, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!50, !6, !94}
!2282 = !{!2283, !2284}
!2283 = !DILocalVariable(name: "arg", arg: 1, scope: !2279, file: !100, line: 940, type: !6)
!2284 = !DILocalVariable(name: "argsize", arg: 2, scope: !2279, file: !100, line: 940, type: !94)
!2285 = !DILocation(line: 940, column: 27, scope: !2279)
!2286 = !DILocation(line: 940, column: 39, scope: !2279)
!2287 = !DILocation(line: 928, column: 21, scope: !2256, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 942, column: 10, scope: !2279)
!2289 = !DILocation(line: 928, column: 36, scope: !2256, inlinedAt: !2288)
!2290 = !DILocation(line: 928, column: 48, scope: !2256, inlinedAt: !2288)
!2291 = !DILocation(line: 930, column: 10, scope: !2256, inlinedAt: !2288)
!2292 = !DILocation(line: 942, column: 3, scope: !2279)
!2293 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !2294, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!50, !25, !58, !6}
!2296 = !{!2297, !2298, !2299, !2300}
!2297 = !DILocalVariable(name: "n", arg: 1, scope: !2293, file: !100, line: 946, type: !25)
!2298 = !DILocalVariable(name: "s", arg: 2, scope: !2293, file: !100, line: 946, type: !58)
!2299 = !DILocalVariable(name: "arg", arg: 3, scope: !2293, file: !100, line: 946, type: !6)
!2300 = !DILocalVariable(name: "o", scope: !2293, file: !100, line: 948, type: !858)
!2301 = !DILocalVariable(name: "o", scope: !2302, file: !100, line: 187, type: !107)
!2302 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2303, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!107, !58}
!2305 = !{!2306, !2301}
!2306 = !DILocalVariable(name: "style", arg: 1, scope: !2302, file: !100, line: 185, type: !58)
!2307 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2308 = !DILocation(line: 187, column: 26, scope: !2302, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 948, column: 36, scope: !2293)
!2310 = !DILocation(line: 946, column: 23, scope: !2293)
!2311 = !DILocation(line: 946, column: 45, scope: !2293)
!2312 = !DILocation(line: 946, column: 60, scope: !2293)
!2313 = !DILocation(line: 948, column: 3, scope: !2293)
!2314 = !DILocation(line: 948, column: 32, scope: !2293)
!2315 = !DILocation(line: 185, column: 48, scope: !2302, inlinedAt: !2309)
!2316 = !DILocation(line: 187, column: 3, scope: !2302, inlinedAt: !2309)
!2317 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2318 = !DILocation(line: 188, column: 13, scope: !2319, inlinedAt: !2309)
!2319 = distinct !DILexicalBlock(scope: !2302, file: !100, line: 188, column: 7)
!2320 = !DILocation(line: 188, column: 7, scope: !2302, inlinedAt: !2309)
!2321 = !DILocation(line: 189, column: 5, scope: !2319, inlinedAt: !2309)
!2322 = !{!2323}
!2323 = distinct !{!2323, !2324, !"quoting_options_from_style: argument 0"}
!2324 = distinct !{!2324, !"quoting_options_from_style"}
!2325 = !DILocation(line: 191, column: 10, scope: !2302, inlinedAt: !2309)
!2326 = !DILocation(line: 192, column: 1, scope: !2302, inlinedAt: !2309)
!2327 = !DILocation(line: 949, column: 10, scope: !2293)
!2328 = !DILocation(line: 950, column: 1, scope: !2293)
!2329 = !DILocation(line: 949, column: 3, scope: !2293)
!2330 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2331, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2333)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!50, !25, !58, !6, !94}
!2333 = !{!2334, !2335, !2336, !2337, !2338}
!2334 = !DILocalVariable(name: "n", arg: 1, scope: !2330, file: !100, line: 953, type: !25)
!2335 = !DILocalVariable(name: "s", arg: 2, scope: !2330, file: !100, line: 953, type: !58)
!2336 = !DILocalVariable(name: "arg", arg: 3, scope: !2330, file: !100, line: 954, type: !6)
!2337 = !DILocalVariable(name: "argsize", arg: 4, scope: !2330, file: !100, line: 954, type: !94)
!2338 = !DILocalVariable(name: "o", scope: !2330, file: !100, line: 956, type: !858)
!2339 = !DILocation(line: 187, column: 26, scope: !2302, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 956, column: 36, scope: !2330)
!2341 = !DILocation(line: 953, column: 27, scope: !2330)
!2342 = !DILocation(line: 953, column: 49, scope: !2330)
!2343 = !DILocation(line: 954, column: 35, scope: !2330)
!2344 = !DILocation(line: 954, column: 47, scope: !2330)
!2345 = !DILocation(line: 956, column: 3, scope: !2330)
!2346 = !DILocation(line: 956, column: 32, scope: !2330)
!2347 = !DILocation(line: 185, column: 48, scope: !2302, inlinedAt: !2340)
!2348 = !DILocation(line: 187, column: 3, scope: !2302, inlinedAt: !2340)
!2349 = !DILocation(line: 188, column: 13, scope: !2319, inlinedAt: !2340)
!2350 = !DILocation(line: 188, column: 7, scope: !2302, inlinedAt: !2340)
!2351 = !DILocation(line: 189, column: 5, scope: !2319, inlinedAt: !2340)
!2352 = !{!2353}
!2353 = distinct !{!2353, !2354, !"quoting_options_from_style: argument 0"}
!2354 = distinct !{!2354, !"quoting_options_from_style"}
!2355 = !DILocation(line: 191, column: 10, scope: !2302, inlinedAt: !2340)
!2356 = !DILocation(line: 192, column: 1, scope: !2302, inlinedAt: !2340)
!2357 = !DILocation(line: 957, column: 10, scope: !2330)
!2358 = !DILocation(line: 958, column: 1, scope: !2330)
!2359 = !DILocation(line: 957, column: 3, scope: !2330)
!2360 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2361, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!50, !58, !6}
!2363 = !{!2364, !2365}
!2364 = !DILocalVariable(name: "s", arg: 1, scope: !2360, file: !100, line: 961, type: !58)
!2365 = !DILocalVariable(name: "arg", arg: 2, scope: !2360, file: !100, line: 961, type: !6)
!2366 = !DILocation(line: 187, column: 26, scope: !2302, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 948, column: 36, scope: !2293, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 963, column: 10, scope: !2360)
!2369 = !DILocation(line: 961, column: 36, scope: !2360)
!2370 = !DILocation(line: 961, column: 51, scope: !2360)
!2371 = !DILocation(line: 946, column: 23, scope: !2293, inlinedAt: !2368)
!2372 = !DILocation(line: 946, column: 45, scope: !2293, inlinedAt: !2368)
!2373 = !DILocation(line: 946, column: 60, scope: !2293, inlinedAt: !2368)
!2374 = !DILocation(line: 948, column: 3, scope: !2293, inlinedAt: !2368)
!2375 = !DILocation(line: 948, column: 32, scope: !2293, inlinedAt: !2368)
!2376 = !DILocation(line: 185, column: 48, scope: !2302, inlinedAt: !2367)
!2377 = !DILocation(line: 187, column: 3, scope: !2302, inlinedAt: !2367)
!2378 = !DILocation(line: 188, column: 13, scope: !2319, inlinedAt: !2367)
!2379 = !DILocation(line: 188, column: 7, scope: !2302, inlinedAt: !2367)
!2380 = !DILocation(line: 189, column: 5, scope: !2319, inlinedAt: !2367)
!2381 = !{!2382}
!2382 = distinct !{!2382, !2383, !"quoting_options_from_style: argument 0"}
!2383 = distinct !{!2383, !"quoting_options_from_style"}
!2384 = !DILocation(line: 191, column: 10, scope: !2302, inlinedAt: !2367)
!2385 = !DILocation(line: 192, column: 1, scope: !2302, inlinedAt: !2367)
!2386 = !DILocation(line: 949, column: 10, scope: !2293, inlinedAt: !2368)
!2387 = !DILocation(line: 950, column: 1, scope: !2293, inlinedAt: !2368)
!2388 = !DILocation(line: 963, column: 3, scope: !2360)
!2389 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2390, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!50, !58, !6, !94}
!2392 = !{!2393, !2394, !2395}
!2393 = !DILocalVariable(name: "s", arg: 1, scope: !2389, file: !100, line: 967, type: !58)
!2394 = !DILocalVariable(name: "arg", arg: 2, scope: !2389, file: !100, line: 967, type: !6)
!2395 = !DILocalVariable(name: "argsize", arg: 3, scope: !2389, file: !100, line: 967, type: !94)
!2396 = !DILocation(line: 187, column: 26, scope: !2302, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 956, column: 36, scope: !2330, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 969, column: 10, scope: !2389)
!2399 = !DILocation(line: 967, column: 40, scope: !2389)
!2400 = !DILocation(line: 967, column: 55, scope: !2389)
!2401 = !DILocation(line: 967, column: 67, scope: !2389)
!2402 = !DILocation(line: 953, column: 27, scope: !2330, inlinedAt: !2398)
!2403 = !DILocation(line: 953, column: 49, scope: !2330, inlinedAt: !2398)
!2404 = !DILocation(line: 954, column: 35, scope: !2330, inlinedAt: !2398)
!2405 = !DILocation(line: 954, column: 47, scope: !2330, inlinedAt: !2398)
!2406 = !DILocation(line: 956, column: 3, scope: !2330, inlinedAt: !2398)
!2407 = !DILocation(line: 956, column: 32, scope: !2330, inlinedAt: !2398)
!2408 = !DILocation(line: 185, column: 48, scope: !2302, inlinedAt: !2397)
!2409 = !DILocation(line: 187, column: 3, scope: !2302, inlinedAt: !2397)
!2410 = !DILocation(line: 188, column: 13, scope: !2319, inlinedAt: !2397)
!2411 = !DILocation(line: 188, column: 7, scope: !2302, inlinedAt: !2397)
!2412 = !DILocation(line: 189, column: 5, scope: !2319, inlinedAt: !2397)
!2413 = !{!2414}
!2414 = distinct !{!2414, !2415, !"quoting_options_from_style: argument 0"}
!2415 = distinct !{!2415, !"quoting_options_from_style"}
!2416 = !DILocation(line: 191, column: 10, scope: !2302, inlinedAt: !2397)
!2417 = !DILocation(line: 192, column: 1, scope: !2302, inlinedAt: !2397)
!2418 = !DILocation(line: 957, column: 10, scope: !2330, inlinedAt: !2398)
!2419 = !DILocation(line: 958, column: 1, scope: !2330, inlinedAt: !2398)
!2420 = !DILocation(line: 969, column: 3, scope: !2389)
!2421 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2422, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!50, !6, !94, !8}
!2424 = !{!2425, !2426, !2427, !2428}
!2425 = !DILocalVariable(name: "arg", arg: 1, scope: !2421, file: !100, line: 973, type: !6)
!2426 = !DILocalVariable(name: "argsize", arg: 2, scope: !2421, file: !100, line: 973, type: !94)
!2427 = !DILocalVariable(name: "ch", arg: 3, scope: !2421, file: !100, line: 973, type: !8)
!2428 = !DILocalVariable(name: "options", scope: !2421, file: !100, line: 975, type: !107)
!2429 = !DILocation(line: 973, column: 32, scope: !2421)
!2430 = !DILocation(line: 973, column: 44, scope: !2421)
!2431 = !DILocation(line: 973, column: 58, scope: !2421)
!2432 = !DILocation(line: 975, column: 3, scope: !2421)
!2433 = !DILocation(line: 976, column: 13, scope: !2421)
!2434 = !{i64 0, i64 4, !1092, i64 4, i64 4, !661, i64 8, i64 32, !1092, i64 40, i64 8, !597, i64 48, i64 8, !597}
!2435 = !DILocation(line: 975, column: 26, scope: !2421)
!2436 = !DILocation(line: 144, column: 43, scope: !881, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 977, column: 3, scope: !2421)
!2438 = !DILocation(line: 144, column: 51, scope: !881, inlinedAt: !2437)
!2439 = !DILocation(line: 144, column: 58, scope: !881, inlinedAt: !2437)
!2440 = !DILocation(line: 146, column: 17, scope: !881, inlinedAt: !2437)
!2441 = !DILocation(line: 148, column: 62, scope: !899, inlinedAt: !2437)
!2442 = !DILocation(line: 148, column: 57, scope: !899, inlinedAt: !2437)
!2443 = !DILocation(line: 147, column: 17, scope: !881, inlinedAt: !2437)
!2444 = !DILocation(line: 149, column: 18, scope: !881, inlinedAt: !2437)
!2445 = !DILocation(line: 149, column: 15, scope: !881, inlinedAt: !2437)
!2446 = !DILocation(line: 149, column: 7, scope: !881, inlinedAt: !2437)
!2447 = !DILocation(line: 150, column: 12, scope: !881, inlinedAt: !2437)
!2448 = !DILocation(line: 150, column: 15, scope: !881, inlinedAt: !2437)
!2449 = !DILocation(line: 150, column: 25, scope: !881, inlinedAt: !2437)
!2450 = !DILocation(line: 150, column: 7, scope: !881, inlinedAt: !2437)
!2451 = !DILocation(line: 151, column: 18, scope: !881, inlinedAt: !2437)
!2452 = !DILocation(line: 151, column: 23, scope: !881, inlinedAt: !2437)
!2453 = !DILocation(line: 151, column: 6, scope: !881, inlinedAt: !2437)
!2454 = !DILocation(line: 978, column: 10, scope: !2421)
!2455 = !DILocation(line: 979, column: 1, scope: !2421)
!2456 = !DILocation(line: 978, column: 3, scope: !2421)
!2457 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2458, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2460)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!50, !6, !8}
!2460 = !{!2461, !2462}
!2461 = !DILocalVariable(name: "arg", arg: 1, scope: !2457, file: !100, line: 982, type: !6)
!2462 = !DILocalVariable(name: "ch", arg: 2, scope: !2457, file: !100, line: 982, type: !8)
!2463 = !DILocation(line: 982, column: 28, scope: !2457)
!2464 = !DILocation(line: 982, column: 38, scope: !2457)
!2465 = !DILocation(line: 973, column: 32, scope: !2421, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 984, column: 10, scope: !2457)
!2467 = !DILocation(line: 973, column: 44, scope: !2421, inlinedAt: !2466)
!2468 = !DILocation(line: 973, column: 58, scope: !2421, inlinedAt: !2466)
!2469 = !DILocation(line: 975, column: 3, scope: !2421, inlinedAt: !2466)
!2470 = !DILocation(line: 976, column: 13, scope: !2421, inlinedAt: !2466)
!2471 = !DILocation(line: 975, column: 26, scope: !2421, inlinedAt: !2466)
!2472 = !DILocation(line: 144, column: 43, scope: !881, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 977, column: 3, scope: !2421, inlinedAt: !2466)
!2474 = !DILocation(line: 144, column: 51, scope: !881, inlinedAt: !2473)
!2475 = !DILocation(line: 144, column: 58, scope: !881, inlinedAt: !2473)
!2476 = !DILocation(line: 146, column: 17, scope: !881, inlinedAt: !2473)
!2477 = !DILocation(line: 148, column: 62, scope: !899, inlinedAt: !2473)
!2478 = !DILocation(line: 148, column: 57, scope: !899, inlinedAt: !2473)
!2479 = !DILocation(line: 147, column: 17, scope: !881, inlinedAt: !2473)
!2480 = !DILocation(line: 149, column: 18, scope: !881, inlinedAt: !2473)
!2481 = !DILocation(line: 149, column: 15, scope: !881, inlinedAt: !2473)
!2482 = !DILocation(line: 149, column: 7, scope: !881, inlinedAt: !2473)
!2483 = !DILocation(line: 150, column: 12, scope: !881, inlinedAt: !2473)
!2484 = !DILocation(line: 150, column: 15, scope: !881, inlinedAt: !2473)
!2485 = !DILocation(line: 150, column: 25, scope: !881, inlinedAt: !2473)
!2486 = !DILocation(line: 150, column: 7, scope: !881, inlinedAt: !2473)
!2487 = !DILocation(line: 151, column: 18, scope: !881, inlinedAt: !2473)
!2488 = !DILocation(line: 151, column: 23, scope: !881, inlinedAt: !2473)
!2489 = !DILocation(line: 151, column: 6, scope: !881, inlinedAt: !2473)
!2490 = !DILocation(line: 978, column: 10, scope: !2421, inlinedAt: !2466)
!2491 = !DILocation(line: 979, column: 1, scope: !2421, inlinedAt: !2466)
!2492 = !DILocation(line: 984, column: 3, scope: !2457)
!2493 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !2269, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2494)
!2494 = !{!2495}
!2495 = !DILocalVariable(name: "arg", arg: 1, scope: !2493, file: !100, line: 988, type: !6)
!2496 = !DILocation(line: 988, column: 29, scope: !2493)
!2497 = !DILocation(line: 982, column: 28, scope: !2457, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 990, column: 10, scope: !2493)
!2499 = !DILocation(line: 982, column: 38, scope: !2457, inlinedAt: !2498)
!2500 = !DILocation(line: 973, column: 32, scope: !2421, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 984, column: 10, scope: !2457, inlinedAt: !2498)
!2502 = !DILocation(line: 973, column: 44, scope: !2421, inlinedAt: !2501)
!2503 = !DILocation(line: 973, column: 58, scope: !2421, inlinedAt: !2501)
!2504 = !DILocation(line: 975, column: 3, scope: !2421, inlinedAt: !2501)
!2505 = !DILocation(line: 976, column: 13, scope: !2421, inlinedAt: !2501)
!2506 = !DILocation(line: 975, column: 26, scope: !2421, inlinedAt: !2501)
!2507 = !DILocation(line: 144, column: 43, scope: !881, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 977, column: 3, scope: !2421, inlinedAt: !2501)
!2509 = !DILocation(line: 144, column: 51, scope: !881, inlinedAt: !2508)
!2510 = !DILocation(line: 144, column: 58, scope: !881, inlinedAt: !2508)
!2511 = !DILocation(line: 146, column: 17, scope: !881, inlinedAt: !2508)
!2512 = !DILocation(line: 148, column: 57, scope: !899, inlinedAt: !2508)
!2513 = !DILocation(line: 147, column: 17, scope: !881, inlinedAt: !2508)
!2514 = !DILocation(line: 149, column: 7, scope: !881, inlinedAt: !2508)
!2515 = !DILocation(line: 150, column: 12, scope: !881, inlinedAt: !2508)
!2516 = !DILocation(line: 151, column: 6, scope: !881, inlinedAt: !2508)
!2517 = !DILocation(line: 978, column: 10, scope: !2421, inlinedAt: !2501)
!2518 = !DILocation(line: 979, column: 1, scope: !2421, inlinedAt: !2501)
!2519 = !DILocation(line: 990, column: 3, scope: !2493)
!2520 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !2280, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2521)
!2521 = !{!2522, !2523}
!2522 = !DILocalVariable(name: "arg", arg: 1, scope: !2520, file: !100, line: 994, type: !6)
!2523 = !DILocalVariable(name: "argsize", arg: 2, scope: !2520, file: !100, line: 994, type: !94)
!2524 = !DILocation(line: 994, column: 33, scope: !2520)
!2525 = !DILocation(line: 994, column: 45, scope: !2520)
!2526 = !DILocation(line: 973, column: 32, scope: !2421, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 996, column: 10, scope: !2520)
!2528 = !DILocation(line: 973, column: 44, scope: !2421, inlinedAt: !2527)
!2529 = !DILocation(line: 973, column: 58, scope: !2421, inlinedAt: !2527)
!2530 = !DILocation(line: 975, column: 3, scope: !2421, inlinedAt: !2527)
!2531 = !DILocation(line: 976, column: 13, scope: !2421, inlinedAt: !2527)
!2532 = !DILocation(line: 975, column: 26, scope: !2421, inlinedAt: !2527)
!2533 = !DILocation(line: 144, column: 43, scope: !881, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 977, column: 3, scope: !2421, inlinedAt: !2527)
!2535 = !DILocation(line: 144, column: 51, scope: !881, inlinedAt: !2534)
!2536 = !DILocation(line: 144, column: 58, scope: !881, inlinedAt: !2534)
!2537 = !DILocation(line: 146, column: 17, scope: !881, inlinedAt: !2534)
!2538 = !DILocation(line: 148, column: 57, scope: !899, inlinedAt: !2534)
!2539 = !DILocation(line: 147, column: 17, scope: !881, inlinedAt: !2534)
!2540 = !DILocation(line: 149, column: 7, scope: !881, inlinedAt: !2534)
!2541 = !DILocation(line: 150, column: 12, scope: !881, inlinedAt: !2534)
!2542 = !DILocation(line: 151, column: 6, scope: !881, inlinedAt: !2534)
!2543 = !DILocation(line: 978, column: 10, scope: !2421, inlinedAt: !2527)
!2544 = !DILocation(line: 979, column: 1, scope: !2421, inlinedAt: !2527)
!2545 = !DILocation(line: 996, column: 3, scope: !2520)
!2546 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !2294, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2547)
!2547 = !{!2548, !2549, !2550, !2551}
!2548 = !DILocalVariable(name: "n", arg: 1, scope: !2546, file: !100, line: 1000, type: !25)
!2549 = !DILocalVariable(name: "s", arg: 2, scope: !2546, file: !100, line: 1000, type: !58)
!2550 = !DILocalVariable(name: "arg", arg: 3, scope: !2546, file: !100, line: 1000, type: !6)
!2551 = !DILocalVariable(name: "options", scope: !2546, file: !100, line: 1002, type: !107)
!2552 = !DILocation(line: 187, column: 26, scope: !2302, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 1003, column: 13, scope: !2546)
!2554 = !DILocation(line: 1000, column: 29, scope: !2546)
!2555 = !DILocation(line: 1000, column: 51, scope: !2546)
!2556 = !DILocation(line: 1000, column: 66, scope: !2546)
!2557 = !DILocation(line: 1002, column: 3, scope: !2546)
!2558 = !DILocation(line: 185, column: 48, scope: !2302, inlinedAt: !2553)
!2559 = !DILocation(line: 187, column: 3, scope: !2302, inlinedAt: !2553)
!2560 = !DILocation(line: 188, column: 13, scope: !2319, inlinedAt: !2553)
!2561 = !DILocation(line: 188, column: 7, scope: !2302, inlinedAt: !2553)
!2562 = !DILocation(line: 189, column: 5, scope: !2319, inlinedAt: !2553)
!2563 = !{!2564}
!2564 = distinct !{!2564, !2565, !"quoting_options_from_style: argument 0"}
!2565 = distinct !{!2565, !"quoting_options_from_style"}
!2566 = !DILocation(line: 191, column: 10, scope: !2302, inlinedAt: !2553)
!2567 = !DILocation(line: 192, column: 1, scope: !2302, inlinedAt: !2553)
!2568 = !DILocation(line: 1003, column: 13, scope: !2546)
!2569 = !DILocation(line: 1002, column: 26, scope: !2546)
!2570 = !DILocation(line: 144, column: 43, scope: !881, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 1004, column: 3, scope: !2546)
!2572 = !DILocation(line: 144, column: 51, scope: !881, inlinedAt: !2571)
!2573 = !DILocation(line: 144, column: 58, scope: !881, inlinedAt: !2571)
!2574 = !DILocation(line: 146, column: 17, scope: !881, inlinedAt: !2571)
!2575 = !DILocation(line: 148, column: 57, scope: !899, inlinedAt: !2571)
!2576 = !DILocation(line: 147, column: 17, scope: !881, inlinedAt: !2571)
!2577 = !DILocation(line: 149, column: 7, scope: !881, inlinedAt: !2571)
!2578 = !DILocation(line: 150, column: 12, scope: !881, inlinedAt: !2571)
!2579 = !DILocation(line: 151, column: 6, scope: !881, inlinedAt: !2571)
!2580 = !DILocation(line: 1005, column: 10, scope: !2546)
!2581 = !DILocation(line: 1006, column: 1, scope: !2546)
!2582 = !DILocation(line: 1005, column: 3, scope: !2546)
!2583 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2584, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!50, !25, !6, !6, !6}
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DILocalVariable(name: "n", arg: 1, scope: !2583, file: !100, line: 1009, type: !25)
!2588 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2583, file: !100, line: 1009, type: !6)
!2589 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2583, file: !100, line: 1010, type: !6)
!2590 = !DILocalVariable(name: "arg", arg: 4, scope: !2583, file: !100, line: 1010, type: !6)
!2591 = !DILocation(line: 1009, column: 24, scope: !2583)
!2592 = !DILocation(line: 1009, column: 39, scope: !2583)
!2593 = !DILocation(line: 1010, column: 32, scope: !2583)
!2594 = !DILocation(line: 1010, column: 57, scope: !2583)
!2595 = !DILocalVariable(name: "n", arg: 1, scope: !2596, file: !100, line: 1017, type: !25)
!2596 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2597, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!50, !25, !6, !6, !6, !94}
!2599 = !{!2595, !2600, !2601, !2602, !2603, !2604}
!2600 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2596, file: !100, line: 1017, type: !6)
!2601 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2596, file: !100, line: 1018, type: !6)
!2602 = !DILocalVariable(name: "arg", arg: 4, scope: !2596, file: !100, line: 1019, type: !6)
!2603 = !DILocalVariable(name: "argsize", arg: 5, scope: !2596, file: !100, line: 1019, type: !94)
!2604 = !DILocalVariable(name: "o", scope: !2596, file: !100, line: 1021, type: !107)
!2605 = !DILocation(line: 1017, column: 28, scope: !2596, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 1012, column: 10, scope: !2583)
!2607 = !DILocation(line: 1017, column: 43, scope: !2596, inlinedAt: !2606)
!2608 = !DILocation(line: 1018, column: 36, scope: !2596, inlinedAt: !2606)
!2609 = !DILocation(line: 1019, column: 36, scope: !2596, inlinedAt: !2606)
!2610 = !DILocation(line: 1019, column: 48, scope: !2596, inlinedAt: !2606)
!2611 = !DILocation(line: 1021, column: 3, scope: !2596, inlinedAt: !2606)
!2612 = !DILocation(line: 1021, column: 30, scope: !2596, inlinedAt: !2606)
!2613 = !DILocation(line: 1021, column: 26, scope: !2596, inlinedAt: !2606)
!2614 = !DILocation(line: 171, column: 45, scope: !931, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 1022, column: 3, scope: !2596, inlinedAt: !2606)
!2616 = !DILocation(line: 172, column: 33, scope: !931, inlinedAt: !2615)
!2617 = !DILocation(line: 172, column: 57, scope: !931, inlinedAt: !2615)
!2618 = !DILocation(line: 176, column: 6, scope: !931, inlinedAt: !2615)
!2619 = !DILocation(line: 176, column: 12, scope: !931, inlinedAt: !2615)
!2620 = !DILocation(line: 177, column: 8, scope: !947, inlinedAt: !2615)
!2621 = !DILocation(line: 177, column: 23, scope: !949, inlinedAt: !2615)
!2622 = !DILocation(line: 177, column: 19, scope: !947, inlinedAt: !2615)
!2623 = !DILocation(line: 178, column: 5, scope: !947, inlinedAt: !2615)
!2624 = !DILocation(line: 179, column: 6, scope: !931, inlinedAt: !2615)
!2625 = !DILocation(line: 179, column: 17, scope: !931, inlinedAt: !2615)
!2626 = !DILocation(line: 180, column: 6, scope: !931, inlinedAt: !2615)
!2627 = !DILocation(line: 180, column: 18, scope: !931, inlinedAt: !2615)
!2628 = !DILocation(line: 1023, column: 10, scope: !2596, inlinedAt: !2606)
!2629 = !DILocation(line: 1024, column: 1, scope: !2596, inlinedAt: !2606)
!2630 = !DILocation(line: 1012, column: 3, scope: !2583)
!2631 = !DILocation(line: 1017, column: 28, scope: !2596)
!2632 = !DILocation(line: 1017, column: 43, scope: !2596)
!2633 = !DILocation(line: 1018, column: 36, scope: !2596)
!2634 = !DILocation(line: 1019, column: 36, scope: !2596)
!2635 = !DILocation(line: 1019, column: 48, scope: !2596)
!2636 = !DILocation(line: 1021, column: 3, scope: !2596)
!2637 = !DILocation(line: 1021, column: 30, scope: !2596)
!2638 = !DILocation(line: 1021, column: 26, scope: !2596)
!2639 = !DILocation(line: 171, column: 45, scope: !931, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 1022, column: 3, scope: !2596)
!2641 = !DILocation(line: 172, column: 33, scope: !931, inlinedAt: !2640)
!2642 = !DILocation(line: 172, column: 57, scope: !931, inlinedAt: !2640)
!2643 = !DILocation(line: 176, column: 6, scope: !931, inlinedAt: !2640)
!2644 = !DILocation(line: 176, column: 12, scope: !931, inlinedAt: !2640)
!2645 = !DILocation(line: 177, column: 8, scope: !947, inlinedAt: !2640)
!2646 = !DILocation(line: 177, column: 23, scope: !949, inlinedAt: !2640)
!2647 = !DILocation(line: 177, column: 19, scope: !947, inlinedAt: !2640)
!2648 = !DILocation(line: 178, column: 5, scope: !947, inlinedAt: !2640)
!2649 = !DILocation(line: 179, column: 6, scope: !931, inlinedAt: !2640)
!2650 = !DILocation(line: 179, column: 17, scope: !931, inlinedAt: !2640)
!2651 = !DILocation(line: 180, column: 6, scope: !931, inlinedAt: !2640)
!2652 = !DILocation(line: 180, column: 18, scope: !931, inlinedAt: !2640)
!2653 = !DILocation(line: 1023, column: 10, scope: !2596)
!2654 = !DILocation(line: 1024, column: 1, scope: !2596)
!2655 = !DILocation(line: 1023, column: 3, scope: !2596)
!2656 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2657, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!50, !6, !6, !6}
!2659 = !{!2660, !2661, !2662}
!2660 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2656, file: !100, line: 1027, type: !6)
!2661 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2656, file: !100, line: 1027, type: !6)
!2662 = !DILocalVariable(name: "arg", arg: 3, scope: !2656, file: !100, line: 1028, type: !6)
!2663 = !DILocation(line: 1027, column: 30, scope: !2656)
!2664 = !DILocation(line: 1027, column: 54, scope: !2656)
!2665 = !DILocation(line: 1028, column: 30, scope: !2656)
!2666 = !DILocation(line: 1009, column: 24, scope: !2583, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 1030, column: 10, scope: !2656)
!2668 = !DILocation(line: 1009, column: 39, scope: !2583, inlinedAt: !2667)
!2669 = !DILocation(line: 1010, column: 32, scope: !2583, inlinedAt: !2667)
!2670 = !DILocation(line: 1010, column: 57, scope: !2583, inlinedAt: !2667)
!2671 = !DILocation(line: 1017, column: 28, scope: !2596, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1012, column: 10, scope: !2583, inlinedAt: !2667)
!2673 = !DILocation(line: 1017, column: 43, scope: !2596, inlinedAt: !2672)
!2674 = !DILocation(line: 1018, column: 36, scope: !2596, inlinedAt: !2672)
!2675 = !DILocation(line: 1019, column: 36, scope: !2596, inlinedAt: !2672)
!2676 = !DILocation(line: 1019, column: 48, scope: !2596, inlinedAt: !2672)
!2677 = !DILocation(line: 1021, column: 3, scope: !2596, inlinedAt: !2672)
!2678 = !DILocation(line: 1021, column: 30, scope: !2596, inlinedAt: !2672)
!2679 = !DILocation(line: 1021, column: 26, scope: !2596, inlinedAt: !2672)
!2680 = !DILocation(line: 171, column: 45, scope: !931, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1022, column: 3, scope: !2596, inlinedAt: !2672)
!2682 = !DILocation(line: 172, column: 33, scope: !931, inlinedAt: !2681)
!2683 = !DILocation(line: 172, column: 57, scope: !931, inlinedAt: !2681)
!2684 = !DILocation(line: 176, column: 6, scope: !931, inlinedAt: !2681)
!2685 = !DILocation(line: 176, column: 12, scope: !931, inlinedAt: !2681)
!2686 = !DILocation(line: 177, column: 8, scope: !947, inlinedAt: !2681)
!2687 = !DILocation(line: 177, column: 23, scope: !949, inlinedAt: !2681)
!2688 = !DILocation(line: 177, column: 19, scope: !947, inlinedAt: !2681)
!2689 = !DILocation(line: 178, column: 5, scope: !947, inlinedAt: !2681)
!2690 = !DILocation(line: 179, column: 6, scope: !931, inlinedAt: !2681)
!2691 = !DILocation(line: 179, column: 17, scope: !931, inlinedAt: !2681)
!2692 = !DILocation(line: 180, column: 6, scope: !931, inlinedAt: !2681)
!2693 = !DILocation(line: 180, column: 18, scope: !931, inlinedAt: !2681)
!2694 = !DILocation(line: 1023, column: 10, scope: !2596, inlinedAt: !2672)
!2695 = !DILocation(line: 1024, column: 1, scope: !2596, inlinedAt: !2672)
!2696 = !DILocation(line: 1030, column: 3, scope: !2656)
!2697 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2698, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!50, !6, !6, !6, !94}
!2700 = !{!2701, !2702, !2703, !2704}
!2701 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2697, file: !100, line: 1034, type: !6)
!2702 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2697, file: !100, line: 1034, type: !6)
!2703 = !DILocalVariable(name: "arg", arg: 3, scope: !2697, file: !100, line: 1035, type: !6)
!2704 = !DILocalVariable(name: "argsize", arg: 4, scope: !2697, file: !100, line: 1035, type: !94)
!2705 = !DILocation(line: 1034, column: 34, scope: !2697)
!2706 = !DILocation(line: 1034, column: 58, scope: !2697)
!2707 = !DILocation(line: 1035, column: 34, scope: !2697)
!2708 = !DILocation(line: 1035, column: 46, scope: !2697)
!2709 = !DILocation(line: 1017, column: 28, scope: !2596, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 1037, column: 10, scope: !2697)
!2711 = !DILocation(line: 1017, column: 43, scope: !2596, inlinedAt: !2710)
!2712 = !DILocation(line: 1018, column: 36, scope: !2596, inlinedAt: !2710)
!2713 = !DILocation(line: 1019, column: 36, scope: !2596, inlinedAt: !2710)
!2714 = !DILocation(line: 1019, column: 48, scope: !2596, inlinedAt: !2710)
!2715 = !DILocation(line: 1021, column: 3, scope: !2596, inlinedAt: !2710)
!2716 = !DILocation(line: 1021, column: 30, scope: !2596, inlinedAt: !2710)
!2717 = !DILocation(line: 1021, column: 26, scope: !2596, inlinedAt: !2710)
!2718 = !DILocation(line: 171, column: 45, scope: !931, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 1022, column: 3, scope: !2596, inlinedAt: !2710)
!2720 = !DILocation(line: 172, column: 33, scope: !931, inlinedAt: !2719)
!2721 = !DILocation(line: 172, column: 57, scope: !931, inlinedAt: !2719)
!2722 = !DILocation(line: 176, column: 6, scope: !931, inlinedAt: !2719)
!2723 = !DILocation(line: 176, column: 12, scope: !931, inlinedAt: !2719)
!2724 = !DILocation(line: 177, column: 8, scope: !947, inlinedAt: !2719)
!2725 = !DILocation(line: 177, column: 23, scope: !949, inlinedAt: !2719)
!2726 = !DILocation(line: 177, column: 19, scope: !947, inlinedAt: !2719)
!2727 = !DILocation(line: 178, column: 5, scope: !947, inlinedAt: !2719)
!2728 = !DILocation(line: 179, column: 6, scope: !931, inlinedAt: !2719)
!2729 = !DILocation(line: 179, column: 17, scope: !931, inlinedAt: !2719)
!2730 = !DILocation(line: 180, column: 6, scope: !931, inlinedAt: !2719)
!2731 = !DILocation(line: 180, column: 18, scope: !931, inlinedAt: !2719)
!2732 = !DILocation(line: 1023, column: 10, scope: !2596, inlinedAt: !2710)
!2733 = !DILocation(line: 1024, column: 1, scope: !2596, inlinedAt: !2710)
!2734 = !DILocation(line: 1037, column: 3, scope: !2697)
!2735 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2736, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!6, !25, !6, !94}
!2738 = !{!2739, !2740, !2741}
!2739 = !DILocalVariable(name: "n", arg: 1, scope: !2735, file: !100, line: 1052, type: !25)
!2740 = !DILocalVariable(name: "arg", arg: 2, scope: !2735, file: !100, line: 1052, type: !6)
!2741 = !DILocalVariable(name: "argsize", arg: 3, scope: !2735, file: !100, line: 1052, type: !94)
!2742 = !DILocation(line: 1052, column: 18, scope: !2735)
!2743 = !DILocation(line: 1052, column: 33, scope: !2735)
!2744 = !DILocation(line: 1052, column: 45, scope: !2735)
!2745 = !DILocation(line: 1054, column: 10, scope: !2735)
!2746 = !DILocation(line: 1054, column: 3, scope: !2735)
!2747 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2748, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!6, !6, !94}
!2750 = !{!2751, !2752}
!2751 = !DILocalVariable(name: "arg", arg: 1, scope: !2747, file: !100, line: 1058, type: !6)
!2752 = !DILocalVariable(name: "argsize", arg: 2, scope: !2747, file: !100, line: 1058, type: !94)
!2753 = !DILocation(line: 1058, column: 24, scope: !2747)
!2754 = !DILocation(line: 1058, column: 36, scope: !2747)
!2755 = !DILocation(line: 1052, column: 18, scope: !2735, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 1060, column: 10, scope: !2747)
!2757 = !DILocation(line: 1052, column: 33, scope: !2735, inlinedAt: !2756)
!2758 = !DILocation(line: 1052, column: 45, scope: !2735, inlinedAt: !2756)
!2759 = !DILocation(line: 1054, column: 10, scope: !2735, inlinedAt: !2756)
!2760 = !DILocation(line: 1060, column: 3, scope: !2747)
!2761 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2762, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!6, !25, !6}
!2764 = !{!2765, !2766}
!2765 = !DILocalVariable(name: "n", arg: 1, scope: !2761, file: !100, line: 1064, type: !25)
!2766 = !DILocalVariable(name: "arg", arg: 2, scope: !2761, file: !100, line: 1064, type: !6)
!2767 = !DILocation(line: 1064, column: 14, scope: !2761)
!2768 = !DILocation(line: 1064, column: 29, scope: !2761)
!2769 = !DILocation(line: 1052, column: 18, scope: !2735, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 1066, column: 10, scope: !2761)
!2771 = !DILocation(line: 1052, column: 33, scope: !2735, inlinedAt: !2770)
!2772 = !DILocation(line: 1052, column: 45, scope: !2735, inlinedAt: !2770)
!2773 = !DILocation(line: 1054, column: 10, scope: !2735, inlinedAt: !2770)
!2774 = !DILocation(line: 1066, column: 3, scope: !2761)
!2775 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2776, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!6, !6}
!2778 = !{!2779}
!2779 = !DILocalVariable(name: "arg", arg: 1, scope: !2775, file: !100, line: 1070, type: !6)
!2780 = !DILocation(line: 1070, column: 20, scope: !2775)
!2781 = !DILocation(line: 1064, column: 14, scope: !2761, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 1072, column: 10, scope: !2775)
!2783 = !DILocation(line: 1064, column: 29, scope: !2761, inlinedAt: !2782)
!2784 = !DILocation(line: 1052, column: 18, scope: !2735, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 1066, column: 10, scope: !2761, inlinedAt: !2782)
!2786 = !DILocation(line: 1052, column: 33, scope: !2735, inlinedAt: !2785)
!2787 = !DILocation(line: 1052, column: 45, scope: !2735, inlinedAt: !2785)
!2788 = !DILocation(line: 1054, column: 10, scope: !2735, inlinedAt: !2785)
!2789 = !DILocation(line: 1072, column: 3, scope: !2775)
!2790 = distinct !DISubprogram(name: "version_etc_arn", scope: !540, file: !540, line: 62, type: !2791, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2846)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{null, !2793, !6, !6, !6, !2845, !94}
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !756, line: 49, baseType: !2795)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2796, line: 241, size: 1728, elements: !2797)
!2796 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2818, !2819, !2820, !2821, !2825, !2826, !2828, !2830, !2833, !2835, !2836, !2837, !2838, !2839, !2840, !2841}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2795, file: !2796, line: 242, baseType: !25, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2795, file: !2796, line: 247, baseType: !50, size: 64, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2795, file: !2796, line: 248, baseType: !50, size: 64, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2795, file: !2796, line: 249, baseType: !50, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2795, file: !2796, line: 250, baseType: !50, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2795, file: !2796, line: 251, baseType: !50, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2795, file: !2796, line: 252, baseType: !50, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2795, file: !2796, line: 253, baseType: !50, size: 64, offset: 448)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2795, file: !2796, line: 254, baseType: !50, size: 64, offset: 512)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2795, file: !2796, line: 256, baseType: !50, size: 64, offset: 576)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2795, file: !2796, line: 257, baseType: !50, size: 64, offset: 640)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2795, file: !2796, line: 258, baseType: !50, size: 64, offset: 704)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2795, file: !2796, line: 260, baseType: !2811, size: 64, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2796, line: 156, size: 192, elements: !2813)
!2813 = !{!2814, !2815, !2817}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2812, file: !2796, line: 157, baseType: !2811, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2812, file: !2796, line: 158, baseType: !2816, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2812, file: !2796, line: 162, baseType: !25, size: 32, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2795, file: !2796, line: 262, baseType: !2816, size: 64, offset: 832)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2795, file: !2796, line: 264, baseType: !25, size: 32, offset: 896)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2795, file: !2796, line: 268, baseType: !25, size: 32, offset: 928)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2795, file: !2796, line: 270, baseType: !2822, size: 64, offset: 960)
!2822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2823, line: 140, baseType: !2824)
!2823 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2824 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2795, file: !2796, line: 274, baseType: !93, size: 16, offset: 1024)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2795, file: !2796, line: 275, baseType: !2827, size: 8, offset: 1040)
!2827 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2795, file: !2796, line: 276, baseType: !2829, size: 8, offset: 1048)
!2829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !767)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2795, file: !2796, line: 280, baseType: !2831, size: 64, offset: 1088)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2796, line: 150, baseType: null)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2795, file: !2796, line: 289, baseType: !2834, size: 64, offset: 1152)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2823, line: 141, baseType: !2824)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2795, file: !2796, line: 297, baseType: !49, size: 64, offset: 1216)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2795, file: !2796, line: 298, baseType: !49, size: 64, offset: 1280)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2795, file: !2796, line: 299, baseType: !49, size: 64, offset: 1344)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2795, file: !2796, line: 300, baseType: !49, size: 64, offset: 1408)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2795, file: !2796, line: 302, baseType: !94, size: 64, offset: 1472)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2795, file: !2796, line: 303, baseType: !25, size: 32, offset: 1536)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2795, file: !2796, line: 305, baseType: !2842, size: 160, offset: 1568)
!2842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2843)
!2843 = !{!2844}
!2844 = !DISubrange(count: 20)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2846 = !{!2847, !2848, !2849, !2850, !2851, !2852}
!2847 = !DILocalVariable(name: "stream", arg: 1, scope: !2790, file: !540, line: 62, type: !2793)
!2848 = !DILocalVariable(name: "command_name", arg: 2, scope: !2790, file: !540, line: 63, type: !6)
!2849 = !DILocalVariable(name: "package", arg: 3, scope: !2790, file: !540, line: 63, type: !6)
!2850 = !DILocalVariable(name: "version", arg: 4, scope: !2790, file: !540, line: 64, type: !6)
!2851 = !DILocalVariable(name: "authors", arg: 5, scope: !2790, file: !540, line: 65, type: !2845)
!2852 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2790, file: !540, line: 65, type: !94)
!2853 = !DILocation(line: 62, column: 24, scope: !2790)
!2854 = !DILocation(line: 63, column: 30, scope: !2790)
!2855 = !DILocation(line: 63, column: 56, scope: !2790)
!2856 = !DILocation(line: 64, column: 30, scope: !2790)
!2857 = !DILocation(line: 65, column: 39, scope: !2790)
!2858 = !DILocation(line: 65, column: 55, scope: !2790)
!2859 = !DILocation(line: 67, column: 7, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2790, file: !540, line: 67, column: 7)
!2861 = !DILocation(line: 67, column: 7, scope: !2790)
!2862 = !DILocation(line: 68, column: 5, scope: !2860)
!2863 = !DILocation(line: 70, column: 5, scope: !2860)
!2864 = !DILocation(line: 84, column: 3, scope: !2790)
!2865 = !DILocation(line: 84, column: 3, scope: !2866)
!2866 = !DILexicalBlockFile(scope: !2790, file: !540, discriminator: 1)
!2867 = !DILocation(line: 86, column: 3, scope: !2790)
!2868 = !DILocation(line: 86, column: 3, scope: !2866)
!2869 = !DILocation(line: 95, column: 3, scope: !2790)
!2870 = !DILocation(line: 99, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2790, file: !540, line: 96, column: 5)
!2872 = !DILocation(line: 102, column: 7, scope: !2871)
!2873 = !DILocation(line: 102, column: 7, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !2871, file: !540, discriminator: 1)
!2875 = !DILocation(line: 103, column: 7, scope: !2871)
!2876 = !DILocation(line: 106, column: 7, scope: !2871)
!2877 = !DILocation(line: 106, column: 7, scope: !2874)
!2878 = !DILocation(line: 107, column: 7, scope: !2871)
!2879 = !DILocation(line: 110, column: 7, scope: !2871)
!2880 = !DILocation(line: 110, column: 7, scope: !2874)
!2881 = !DILocation(line: 112, column: 7, scope: !2871)
!2882 = !DILocation(line: 117, column: 7, scope: !2871)
!2883 = !DILocation(line: 117, column: 7, scope: !2874)
!2884 = !DILocation(line: 119, column: 7, scope: !2871)
!2885 = !DILocation(line: 124, column: 7, scope: !2871)
!2886 = !DILocation(line: 124, column: 7, scope: !2874)
!2887 = !DILocation(line: 126, column: 7, scope: !2871)
!2888 = !DILocation(line: 131, column: 7, scope: !2871)
!2889 = !DILocation(line: 131, column: 7, scope: !2874)
!2890 = !DILocation(line: 134, column: 7, scope: !2871)
!2891 = !DILocation(line: 139, column: 7, scope: !2871)
!2892 = !DILocation(line: 139, column: 7, scope: !2874)
!2893 = !DILocation(line: 142, column: 7, scope: !2871)
!2894 = !DILocation(line: 147, column: 7, scope: !2871)
!2895 = !DILocation(line: 147, column: 7, scope: !2874)
!2896 = !DILocation(line: 151, column: 7, scope: !2871)
!2897 = !DILocation(line: 156, column: 7, scope: !2871)
!2898 = !DILocation(line: 156, column: 7, scope: !2874)
!2899 = !DILocation(line: 160, column: 7, scope: !2871)
!2900 = !DILocation(line: 167, column: 7, scope: !2871)
!2901 = !DILocation(line: 167, column: 7, scope: !2874)
!2902 = !DILocation(line: 171, column: 7, scope: !2871)
!2903 = !DILocation(line: 173, column: 1, scope: !2790)
!2904 = distinct !DISubprogram(name: "version_etc_ar", scope: !540, file: !540, line: 180, type: !2905, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{null, !2793, !6, !6, !6, !2845}
!2907 = !{!2908, !2909, !2910, !2911, !2912, !2913}
!2908 = !DILocalVariable(name: "stream", arg: 1, scope: !2904, file: !540, line: 180, type: !2793)
!2909 = !DILocalVariable(name: "command_name", arg: 2, scope: !2904, file: !540, line: 181, type: !6)
!2910 = !DILocalVariable(name: "package", arg: 3, scope: !2904, file: !540, line: 181, type: !6)
!2911 = !DILocalVariable(name: "version", arg: 4, scope: !2904, file: !540, line: 182, type: !6)
!2912 = !DILocalVariable(name: "authors", arg: 5, scope: !2904, file: !540, line: 182, type: !2845)
!2913 = !DILocalVariable(name: "n_authors", scope: !2904, file: !540, line: 184, type: !94)
!2914 = !DILocation(line: 180, column: 23, scope: !2904)
!2915 = !DILocation(line: 181, column: 29, scope: !2904)
!2916 = !DILocation(line: 181, column: 55, scope: !2904)
!2917 = !DILocation(line: 182, column: 29, scope: !2904)
!2918 = !DILocation(line: 182, column: 59, scope: !2904)
!2919 = !DILocation(line: 184, column: 10, scope: !2904)
!2920 = !DILocation(line: 186, column: 8, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2904, file: !540, line: 186, column: 3)
!2922 = !DILocation(line: 186, column: 23, scope: !2923)
!2923 = !DILexicalBlockFile(scope: !2924, file: !540, discriminator: 1)
!2924 = distinct !DILexicalBlock(scope: !2921, file: !540, line: 186, column: 3)
!2925 = !DILocation(line: 186, column: 3, scope: !2926)
!2926 = !DILexicalBlockFile(scope: !2921, file: !540, discriminator: 1)
!2927 = !DILocation(line: 186, column: 52, scope: !2928)
!2928 = !DILexicalBlockFile(scope: !2924, file: !540, discriminator: 3)
!2929 = distinct !{!2929, !2930, !2931}
!2930 = !DILocation(line: 186, column: 3, scope: !2921)
!2931 = !DILocation(line: 187, column: 5, scope: !2921)
!2932 = !DILocation(line: 188, column: 3, scope: !2904)
!2933 = !DILocation(line: 189, column: 1, scope: !2904)
!2934 = distinct !DISubprogram(name: "version_etc_va", scope: !540, file: !540, line: 196, type: !2935, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2944)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{null, !2793, !6, !6, !6, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !537, line: 189, size: 192, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2943}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2938, file: !537, line: 189, baseType: !113, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2938, file: !537, line: 189, baseType: !113, size: 32, offset: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2938, file: !537, line: 189, baseType: !49, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2938, file: !537, line: 189, baseType: !49, size: 64, offset: 128)
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950, !2951}
!2945 = !DILocalVariable(name: "stream", arg: 1, scope: !2934, file: !540, line: 196, type: !2793)
!2946 = !DILocalVariable(name: "command_name", arg: 2, scope: !2934, file: !540, line: 197, type: !6)
!2947 = !DILocalVariable(name: "package", arg: 3, scope: !2934, file: !540, line: 197, type: !6)
!2948 = !DILocalVariable(name: "version", arg: 4, scope: !2934, file: !540, line: 198, type: !6)
!2949 = !DILocalVariable(name: "authors", arg: 5, scope: !2934, file: !540, line: 198, type: !2937)
!2950 = !DILocalVariable(name: "n_authors", scope: !2934, file: !540, line: 200, type: !94)
!2951 = !DILocalVariable(name: "authtab", scope: !2934, file: !540, line: 201, type: !2952)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2953 = !DILocation(line: 196, column: 23, scope: !2934)
!2954 = !DILocation(line: 197, column: 29, scope: !2934)
!2955 = !DILocation(line: 197, column: 55, scope: !2934)
!2956 = !DILocation(line: 198, column: 29, scope: !2934)
!2957 = !DILocation(line: 198, column: 46, scope: !2934)
!2958 = !DILocation(line: 201, column: 3, scope: !2934)
!2959 = !DILocation(line: 201, column: 15, scope: !2934)
!2960 = !DILocation(line: 200, column: 10, scope: !2934)
!2961 = !DILocation(line: 205, column: 35, scope: !2962)
!2962 = !DILexicalBlockFile(scope: !2963, file: !540, discriminator: 1)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !540, line: 203, column: 3)
!2964 = distinct !DILexicalBlock(scope: !2934, file: !540, line: 203, column: 3)
!2965 = !DILocation(line: 205, column: 35, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !2963, file: !540, discriminator: 2)
!2967 = !DILocation(line: 205, column: 35, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2963, file: !540, discriminator: 3)
!2969 = !DILocation(line: 205, column: 35, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2963, file: !540, discriminator: 4)
!2971 = !DILocation(line: 205, column: 14, scope: !2970)
!2972 = !DILocation(line: 205, column: 33, scope: !2970)
!2973 = !DILocation(line: 205, column: 67, scope: !2970)
!2974 = !DILocation(line: 203, column: 3, scope: !2975)
!2975 = !DILexicalBlockFile(scope: !2964, file: !540, discriminator: 1)
!2976 = !DILocation(line: 208, column: 3, scope: !2934)
!2977 = !DILocation(line: 210, column: 1, scope: !2934)
!2978 = distinct !DISubprogram(name: "version_etc", scope: !540, file: !540, line: 227, type: !2979, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2793, !6, !6, !6, null}
!2981 = !{!2982, !2983, !2984, !2985, !2986}
!2982 = !DILocalVariable(name: "stream", arg: 1, scope: !2978, file: !540, line: 227, type: !2793)
!2983 = !DILocalVariable(name: "command_name", arg: 2, scope: !2978, file: !540, line: 228, type: !6)
!2984 = !DILocalVariable(name: "package", arg: 3, scope: !2978, file: !540, line: 228, type: !6)
!2985 = !DILocalVariable(name: "version", arg: 4, scope: !2978, file: !540, line: 229, type: !6)
!2986 = !DILocalVariable(name: "authors", scope: !2978, file: !540, line: 231, type: !2987)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !756, line: 80, baseType: !2988)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !758, line: 50, baseType: !2989)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !537, line: 231, baseType: !2990)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2938, size: 192, elements: !767)
!2991 = !DILocation(line: 227, column: 20, scope: !2978)
!2992 = !DILocation(line: 228, column: 26, scope: !2978)
!2993 = !DILocation(line: 228, column: 52, scope: !2978)
!2994 = !DILocation(line: 229, column: 26, scope: !2978)
!2995 = !DILocation(line: 231, column: 3, scope: !2978)
!2996 = !DILocation(line: 231, column: 11, scope: !2978)
!2997 = !DILocation(line: 233, column: 3, scope: !2978)
!2998 = !DILocation(line: 234, column: 3, scope: !2978)
!2999 = !DILocation(line: 235, column: 3, scope: !2978)
!3000 = !DILocation(line: 236, column: 1, scope: !2978)
!3001 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !540, file: !540, line: 239, type: !696, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !4)
!3002 = !DILocation(line: 245, column: 3, scope: !3001)
!3003 = !DILocation(line: 245, column: 3, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !3001, file: !540, discriminator: 1)
!3005 = !DILocation(line: 251, column: 3, scope: !3001)
!3006 = !DILocation(line: 251, column: 3, scope: !3004)
!3007 = !DILocation(line: 256, column: 3, scope: !3001)
!3008 = !DILocation(line: 256, column: 3, scope: !3004)
!3009 = !DILocation(line: 258, column: 1, scope: !3001)
!3010 = distinct !DISubprogram(name: "xnmalloc", scope: !548, file: !548, line: 105, type: !3011, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!49, !94, !94}
!3013 = !{!3014, !3015}
!3014 = !DILocalVariable(name: "n", arg: 1, scope: !3010, file: !548, line: 105, type: !94)
!3015 = !DILocalVariable(name: "s", arg: 2, scope: !3010, file: !548, line: 105, type: !94)
!3016 = !DILocation(line: 105, column: 18, scope: !3010)
!3017 = !DILocation(line: 105, column: 28, scope: !3010)
!3018 = !DILocation(line: 107, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3010, file: !548, line: 107, column: 7)
!3020 = !DILocation(line: 107, column: 7, scope: !3010)
!3021 = !DILocation(line: 108, column: 5, scope: !3019)
!3022 = !DILocation(line: 109, column: 21, scope: !3010)
!3023 = !DILocalVariable(name: "n", arg: 1, scope: !3024, file: !3025, line: 39, type: !94)
!3024 = distinct !DISubprogram(name: "xmalloc", scope: !3025, file: !3025, line: 39, type: !3026, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3028)
!3025 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!49, !94}
!3028 = !{!3023, !3029}
!3029 = !DILocalVariable(name: "p", scope: !3024, file: !3025, line: 41, type: !49)
!3030 = !DILocation(line: 39, column: 17, scope: !3024, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 109, column: 10, scope: !3010)
!3032 = !DILocation(line: 41, column: 13, scope: !3024, inlinedAt: !3031)
!3033 = !DILocation(line: 41, column: 9, scope: !3024, inlinedAt: !3031)
!3034 = !DILocation(line: 42, column: 8, scope: !3035, inlinedAt: !3031)
!3035 = distinct !DILexicalBlock(scope: !3024, file: !3025, line: 42, column: 7)
!3036 = !DILocation(line: 42, column: 15, scope: !3037, inlinedAt: !3031)
!3037 = !DILexicalBlockFile(scope: !3035, file: !3025, discriminator: 1)
!3038 = !DILocation(line: 42, column: 10, scope: !3035, inlinedAt: !3031)
!3039 = !DILocation(line: 43, column: 5, scope: !3035, inlinedAt: !3031)
!3040 = !DILocation(line: 109, column: 3, scope: !3010)
!3041 = !DILocation(line: 39, column: 17, scope: !3024)
!3042 = !DILocation(line: 41, column: 13, scope: !3024)
!3043 = !DILocation(line: 41, column: 9, scope: !3024)
!3044 = !DILocation(line: 42, column: 8, scope: !3035)
!3045 = !DILocation(line: 42, column: 15, scope: !3037)
!3046 = !DILocation(line: 42, column: 10, scope: !3035)
!3047 = !DILocation(line: 43, column: 5, scope: !3035)
!3048 = !DILocation(line: 44, column: 3, scope: !3024)
!3049 = distinct !DISubprogram(name: "xnrealloc", scope: !548, file: !548, line: 118, type: !3050, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!49, !49, !94, !94}
!3052 = !{!3053, !3054, !3055}
!3053 = !DILocalVariable(name: "p", arg: 1, scope: !3049, file: !548, line: 118, type: !49)
!3054 = !DILocalVariable(name: "n", arg: 2, scope: !3049, file: !548, line: 118, type: !94)
!3055 = !DILocalVariable(name: "s", arg: 3, scope: !3049, file: !548, line: 118, type: !94)
!3056 = !DILocation(line: 118, column: 18, scope: !3049)
!3057 = !DILocation(line: 118, column: 28, scope: !3049)
!3058 = !DILocation(line: 118, column: 38, scope: !3049)
!3059 = !DILocation(line: 120, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3049, file: !548, line: 120, column: 7)
!3061 = !DILocation(line: 120, column: 7, scope: !3049)
!3062 = !DILocation(line: 121, column: 5, scope: !3060)
!3063 = !DILocation(line: 122, column: 25, scope: !3049)
!3064 = !DILocalVariable(name: "p", arg: 1, scope: !3065, file: !3025, line: 51, type: !49)
!3065 = distinct !DISubprogram(name: "xrealloc", scope: !3025, file: !3025, line: 51, type: !3066, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!49, !49, !94}
!3068 = !{!3064, !3069}
!3069 = !DILocalVariable(name: "n", arg: 2, scope: !3065, file: !3025, line: 51, type: !94)
!3070 = !DILocation(line: 51, column: 17, scope: !3065, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 122, column: 10, scope: !3049)
!3072 = !DILocation(line: 51, column: 27, scope: !3065, inlinedAt: !3071)
!3073 = !DILocation(line: 53, column: 8, scope: !3074, inlinedAt: !3071)
!3074 = distinct !DILexicalBlock(scope: !3065, file: !3025, line: 53, column: 7)
!3075 = !DILocation(line: 53, column: 13, scope: !3076, inlinedAt: !3071)
!3076 = !DILexicalBlockFile(scope: !3074, file: !3025, discriminator: 1)
!3077 = !DILocation(line: 53, column: 10, scope: !3074, inlinedAt: !3071)
!3078 = !DILocation(line: 57, column: 7, scope: !3079, inlinedAt: !3071)
!3079 = distinct !DILexicalBlock(scope: !3074, file: !3025, line: 54, column: 5)
!3080 = !DILocation(line: 58, column: 7, scope: !3079, inlinedAt: !3071)
!3081 = !DILocation(line: 61, column: 7, scope: !3065, inlinedAt: !3071)
!3082 = !DILocation(line: 62, column: 8, scope: !3083, inlinedAt: !3071)
!3083 = distinct !DILexicalBlock(scope: !3065, file: !3025, line: 62, column: 7)
!3084 = !DILocation(line: 62, column: 13, scope: !3085, inlinedAt: !3071)
!3085 = !DILexicalBlockFile(scope: !3083, file: !3025, discriminator: 1)
!3086 = !DILocation(line: 62, column: 10, scope: !3083, inlinedAt: !3071)
!3087 = !DILocation(line: 63, column: 5, scope: !3083, inlinedAt: !3071)
!3088 = !DILocation(line: 122, column: 3, scope: !3049)
!3089 = !DILocation(line: 51, column: 17, scope: !3065)
!3090 = !DILocation(line: 51, column: 27, scope: !3065)
!3091 = !DILocation(line: 53, column: 8, scope: !3074)
!3092 = !DILocation(line: 53, column: 13, scope: !3076)
!3093 = !DILocation(line: 53, column: 10, scope: !3074)
!3094 = !DILocation(line: 57, column: 7, scope: !3079)
!3095 = !DILocation(line: 58, column: 7, scope: !3079)
!3096 = !DILocation(line: 61, column: 7, scope: !3065)
!3097 = !DILocation(line: 62, column: 8, scope: !3083)
!3098 = !DILocation(line: 62, column: 13, scope: !3085)
!3099 = !DILocation(line: 62, column: 10, scope: !3083)
!3100 = !DILocation(line: 63, column: 5, scope: !3083)
!3101 = !DILocation(line: 65, column: 1, scope: !3065)
!3102 = !DILocation(line: 180, column: 19, scope: !549)
!3103 = !DILocation(line: 180, column: 30, scope: !549)
!3104 = !DILocation(line: 180, column: 41, scope: !549)
!3105 = !DILocation(line: 182, column: 14, scope: !549)
!3106 = !DILocation(line: 182, column: 10, scope: !549)
!3107 = !DILocation(line: 184, column: 9, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !549, file: !548, line: 184, column: 7)
!3109 = !DILocation(line: 184, column: 7, scope: !549)
!3110 = !DILocation(line: 186, column: 13, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !548, line: 186, column: 11)
!3112 = distinct !DILexicalBlock(scope: !3108, file: !548, line: 185, column: 5)
!3113 = !DILocation(line: 186, column: 11, scope: !3112)
!3114 = !DILocation(line: 194, column: 30, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3111, file: !548, line: 187, column: 9)
!3116 = !DILocation(line: 195, column: 16, scope: !3115)
!3117 = !DILocation(line: 195, column: 13, scope: !3115)
!3118 = !DILocation(line: 196, column: 9, scope: !3115)
!3119 = !DILocation(line: 204, column: 69, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !548, line: 204, column: 11)
!3121 = distinct !DILexicalBlock(scope: !3108, file: !548, line: 199, column: 5)
!3122 = !DILocation(line: 205, column: 11, scope: !3120)
!3123 = !DILocation(line: 204, column: 11, scope: !3121)
!3124 = !DILocation(line: 206, column: 9, scope: !3120)
!3125 = !DILocation(line: 210, column: 7, scope: !549)
!3126 = !DILocation(line: 211, column: 25, scope: !549)
!3127 = !DILocation(line: 51, column: 17, scope: !3065, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 211, column: 10, scope: !549)
!3129 = !DILocation(line: 51, column: 27, scope: !3065, inlinedAt: !3128)
!3130 = !DILocation(line: 53, column: 10, scope: !3074, inlinedAt: !3128)
!3131 = !DILocation(line: 207, column: 14, scope: !3121)
!3132 = !DILocation(line: 207, column: 18, scope: !3121)
!3133 = !DILocation(line: 207, column: 9, scope: !3121)
!3134 = !DILocation(line: 53, column: 8, scope: !3074, inlinedAt: !3128)
!3135 = !DILocation(line: 57, column: 7, scope: !3079, inlinedAt: !3128)
!3136 = !DILocation(line: 58, column: 7, scope: !3079, inlinedAt: !3128)
!3137 = !DILocation(line: 61, column: 7, scope: !3065, inlinedAt: !3128)
!3138 = !DILocation(line: 62, column: 8, scope: !3083, inlinedAt: !3128)
!3139 = !DILocation(line: 62, column: 13, scope: !3085, inlinedAt: !3128)
!3140 = !DILocation(line: 62, column: 10, scope: !3083, inlinedAt: !3128)
!3141 = !DILocation(line: 63, column: 5, scope: !3083, inlinedAt: !3128)
!3142 = !DILocation(line: 211, column: 3, scope: !549)
!3143 = distinct !DISubprogram(name: "xcharalloc", scope: !548, file: !548, line: 220, type: !2062, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3144)
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "n", arg: 1, scope: !3143, file: !548, line: 220, type: !94)
!3146 = !DILocation(line: 220, column: 20, scope: !3143)
!3147 = !DILocation(line: 39, column: 17, scope: !3024, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 222, column: 10, scope: !3143)
!3149 = !DILocation(line: 41, column: 13, scope: !3024, inlinedAt: !3148)
!3150 = !DILocation(line: 41, column: 9, scope: !3024, inlinedAt: !3148)
!3151 = !DILocation(line: 42, column: 8, scope: !3035, inlinedAt: !3148)
!3152 = !DILocation(line: 42, column: 15, scope: !3037, inlinedAt: !3148)
!3153 = !DILocation(line: 42, column: 10, scope: !3035, inlinedAt: !3148)
!3154 = !DILocation(line: 43, column: 5, scope: !3035, inlinedAt: !3148)
!3155 = !DILocation(line: 222, column: 3, scope: !3143)
!3156 = distinct !DISubprogram(name: "x2realloc", scope: !3025, file: !3025, line: 74, type: !3157, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!49, !49, !552}
!3159 = !{!3160, !3161}
!3160 = !DILocalVariable(name: "p", arg: 1, scope: !3156, file: !3025, line: 74, type: !49)
!3161 = !DILocalVariable(name: "pn", arg: 2, scope: !3156, file: !3025, line: 74, type: !552)
!3162 = !DILocation(line: 74, column: 18, scope: !3156)
!3163 = !DILocation(line: 74, column: 29, scope: !3156)
!3164 = !DILocation(line: 180, column: 19, scope: !549, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 76, column: 10, scope: !3156)
!3166 = !DILocation(line: 180, column: 30, scope: !549, inlinedAt: !3165)
!3167 = !DILocation(line: 180, column: 41, scope: !549, inlinedAt: !3165)
!3168 = !DILocation(line: 182, column: 14, scope: !549, inlinedAt: !3165)
!3169 = !DILocation(line: 182, column: 10, scope: !549, inlinedAt: !3165)
!3170 = !DILocation(line: 184, column: 9, scope: !3108, inlinedAt: !3165)
!3171 = !DILocation(line: 184, column: 7, scope: !549, inlinedAt: !3165)
!3172 = !DILocation(line: 186, column: 13, scope: !3111, inlinedAt: !3165)
!3173 = !DILocation(line: 186, column: 11, scope: !3112, inlinedAt: !3165)
!3174 = !DILocation(line: 210, column: 7, scope: !549, inlinedAt: !3165)
!3175 = !DILocation(line: 51, column: 17, scope: !3065, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 211, column: 10, scope: !549, inlinedAt: !3165)
!3177 = !DILocation(line: 51, column: 27, scope: !3065, inlinedAt: !3176)
!3178 = !DILocation(line: 53, column: 10, scope: !3074, inlinedAt: !3176)
!3179 = !DILocation(line: 205, column: 11, scope: !3120, inlinedAt: !3165)
!3180 = !DILocation(line: 204, column: 11, scope: !3121, inlinedAt: !3165)
!3181 = !DILocation(line: 206, column: 9, scope: !3120, inlinedAt: !3165)
!3182 = !DILocation(line: 207, column: 14, scope: !3121, inlinedAt: !3165)
!3183 = !DILocation(line: 207, column: 18, scope: !3121, inlinedAt: !3165)
!3184 = !DILocation(line: 207, column: 9, scope: !3121, inlinedAt: !3165)
!3185 = !DILocation(line: 53, column: 8, scope: !3074, inlinedAt: !3176)
!3186 = !DILocation(line: 57, column: 7, scope: !3079, inlinedAt: !3176)
!3187 = !DILocation(line: 58, column: 7, scope: !3079, inlinedAt: !3176)
!3188 = !DILocation(line: 61, column: 7, scope: !3065, inlinedAt: !3176)
!3189 = !DILocation(line: 62, column: 8, scope: !3083, inlinedAt: !3176)
!3190 = !DILocation(line: 62, column: 13, scope: !3085, inlinedAt: !3176)
!3191 = !DILocation(line: 62, column: 10, scope: !3083, inlinedAt: !3176)
!3192 = !DILocation(line: 63, column: 5, scope: !3083, inlinedAt: !3176)
!3193 = !DILocation(line: 76, column: 3, scope: !3156)
!3194 = distinct !DISubprogram(name: "xzalloc", scope: !3025, file: !3025, line: 84, type: !3026, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3195)
!3195 = !{!3196}
!3196 = !DILocalVariable(name: "s", arg: 1, scope: !3194, file: !3025, line: 84, type: !94)
!3197 = !DILocation(line: 84, column: 17, scope: !3194)
!3198 = !DILocation(line: 39, column: 17, scope: !3024, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 86, column: 18, scope: !3194)
!3200 = !DILocation(line: 41, column: 13, scope: !3024, inlinedAt: !3199)
!3201 = !DILocation(line: 41, column: 9, scope: !3024, inlinedAt: !3199)
!3202 = !DILocation(line: 42, column: 8, scope: !3035, inlinedAt: !3199)
!3203 = !DILocation(line: 42, column: 15, scope: !3037, inlinedAt: !3199)
!3204 = !DILocation(line: 42, column: 10, scope: !3035, inlinedAt: !3199)
!3205 = !DILocation(line: 43, column: 5, scope: !3035, inlinedAt: !3199)
!3206 = !DILocation(line: 86, column: 10, scope: !3194)
!3207 = !DILocation(line: 86, column: 3, scope: !3194)
!3208 = distinct !DISubprogram(name: "xcalloc", scope: !3025, file: !3025, line: 93, type: !3011, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3209)
!3209 = !{!3210, !3211, !3212}
!3210 = !DILocalVariable(name: "n", arg: 1, scope: !3208, file: !3025, line: 93, type: !94)
!3211 = !DILocalVariable(name: "s", arg: 2, scope: !3208, file: !3025, line: 93, type: !94)
!3212 = !DILocalVariable(name: "p", scope: !3208, file: !3025, line: 95, type: !49)
!3213 = !DILocation(line: 93, column: 17, scope: !3208)
!3214 = !DILocation(line: 93, column: 27, scope: !3208)
!3215 = !DILocation(line: 100, column: 7, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3208, file: !3025, line: 100, column: 7)
!3217 = !DILocation(line: 101, column: 7, scope: !3216)
!3218 = !DILocation(line: 101, column: 18, scope: !3219)
!3219 = !DILexicalBlockFile(scope: !3216, file: !3025, discriminator: 1)
!3220 = !DILocation(line: 95, column: 9, scope: !3208)
!3221 = !DILocation(line: 101, column: 16, scope: !3219)
!3222 = !DILocation(line: 100, column: 7, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !3208, file: !3025, discriminator: 1)
!3224 = !DILocation(line: 102, column: 5, scope: !3216)
!3225 = !DILocation(line: 103, column: 3, scope: !3208)
!3226 = distinct !DISubprogram(name: "xmemdup", scope: !3025, file: !3025, line: 111, type: !3227, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!49, !501, !94}
!3229 = !{!3230, !3231}
!3230 = !DILocalVariable(name: "p", arg: 1, scope: !3226, file: !3025, line: 111, type: !501)
!3231 = !DILocalVariable(name: "s", arg: 2, scope: !3226, file: !3025, line: 111, type: !94)
!3232 = !DILocation(line: 111, column: 22, scope: !3226)
!3233 = !DILocation(line: 111, column: 32, scope: !3226)
!3234 = !DILocation(line: 39, column: 17, scope: !3024, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 113, column: 18, scope: !3226)
!3236 = !DILocation(line: 41, column: 13, scope: !3024, inlinedAt: !3235)
!3237 = !DILocation(line: 41, column: 9, scope: !3024, inlinedAt: !3235)
!3238 = !DILocation(line: 42, column: 8, scope: !3035, inlinedAt: !3235)
!3239 = !DILocation(line: 42, column: 15, scope: !3037, inlinedAt: !3235)
!3240 = !DILocation(line: 42, column: 10, scope: !3035, inlinedAt: !3235)
!3241 = !DILocation(line: 43, column: 5, scope: !3035, inlinedAt: !3235)
!3242 = !DILocation(line: 113, column: 10, scope: !3226)
!3243 = !DILocation(line: 113, column: 3, scope: !3226)
!3244 = distinct !DISubprogram(name: "xstrdup", scope: !3025, file: !3025, line: 119, type: !2269, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3245)
!3245 = !{!3246}
!3246 = !DILocalVariable(name: "string", arg: 1, scope: !3244, file: !3025, line: 119, type: !6)
!3247 = !DILocation(line: 119, column: 22, scope: !3244)
!3248 = !DILocation(line: 121, column: 27, scope: !3244)
!3249 = !DILocation(line: 121, column: 43, scope: !3244)
!3250 = !DILocation(line: 111, column: 22, scope: !3226, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 121, column: 10, scope: !3252)
!3252 = !DILexicalBlockFile(scope: !3244, file: !3025, discriminator: 1)
!3253 = !DILocation(line: 111, column: 32, scope: !3226, inlinedAt: !3251)
!3254 = !DILocation(line: 39, column: 17, scope: !3024, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 113, column: 18, scope: !3226, inlinedAt: !3251)
!3256 = !DILocation(line: 41, column: 13, scope: !3024, inlinedAt: !3255)
!3257 = !DILocation(line: 41, column: 9, scope: !3024, inlinedAt: !3255)
!3258 = !DILocation(line: 42, column: 8, scope: !3035, inlinedAt: !3255)
!3259 = !DILocation(line: 42, column: 15, scope: !3037, inlinedAt: !3255)
!3260 = !DILocation(line: 42, column: 10, scope: !3035, inlinedAt: !3255)
!3261 = !DILocation(line: 43, column: 5, scope: !3035, inlinedAt: !3255)
!3262 = !DILocation(line: 113, column: 10, scope: !3226, inlinedAt: !3251)
!3263 = !DILocation(line: 121, column: 3, scope: !3244)
!3264 = distinct !DISubprogram(name: "xalloc_die", scope: !3265, file: !3265, line: 32, type: !696, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !561, variables: !4)
!3265 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3266 = !DILocation(line: 34, column: 10, scope: !3264)
!3267 = !DILocation(line: 34, column: 33, scope: !3264)
!3268 = !DILocation(line: 34, column: 3, scope: !3269)
!3269 = !DILexicalBlockFile(scope: !3264, file: !3265, discriminator: 1)
!3270 = !DILocation(line: 40, column: 3, scope: !3264)
!3271 = distinct !DISubprogram(name: "rpl_calloc", scope: !3272, file: !3272, line: 42, type: !3011, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3273)
!3272 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3273 = !{!3274, !3275, !3276, !3277}
!3274 = !DILocalVariable(name: "n", arg: 1, scope: !3271, file: !3272, line: 42, type: !94)
!3275 = !DILocalVariable(name: "s", arg: 2, scope: !3271, file: !3272, line: 42, type: !94)
!3276 = !DILocalVariable(name: "result", scope: !3271, file: !3272, line: 44, type: !49)
!3277 = !DILocalVariable(name: "bytes", scope: !3278, file: !3272, line: 56, type: !94)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !3272, line: 53, column: 5)
!3279 = distinct !DILexicalBlock(scope: !3271, file: !3272, line: 47, column: 7)
!3280 = !DILocation(line: 42, column: 20, scope: !3271)
!3281 = !DILocation(line: 42, column: 30, scope: !3271)
!3282 = !DILocation(line: 47, column: 9, scope: !3279)
!3283 = !DILocation(line: 47, column: 19, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3279, file: !3272, discriminator: 1)
!3285 = !DILocation(line: 47, column: 14, scope: !3279)
!3286 = !DILocation(line: 56, column: 24, scope: !3278)
!3287 = !DILocation(line: 56, column: 14, scope: !3278)
!3288 = !DILocation(line: 57, column: 17, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3278, file: !3272, line: 57, column: 11)
!3290 = !DILocation(line: 57, column: 21, scope: !3289)
!3291 = !DILocation(line: 57, column: 11, scope: !3278)
!3292 = !DILocation(line: 59, column: 11, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3289, file: !3272, line: 58, column: 9)
!3294 = !DILocation(line: 59, column: 17, scope: !3293)
!3295 = !DILocation(line: 65, column: 12, scope: !3271)
!3296 = !DILocation(line: 44, column: 9, scope: !3271)
!3297 = !DILocation(line: 72, column: 3, scope: !3271)
!3298 = !DILocation(line: 73, column: 1, scope: !3271)
!3299 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3300, file: !3300, line: 334, type: !3301, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3315)
!3300 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!94, !3303, !6, !94, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1031, line: 107, baseType: !3306)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1031, line: 95, baseType: !3307)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1031, line: 83, size: 64, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3307, file: !1031, line: 85, baseType: !25, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3307, file: !1031, line: 94, baseType: !3311, size: 32, offset: 32)
!3311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3307, file: !1031, line: 86, size: 32, elements: !3312)
!3312 = !{!3313, !3314}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3311, file: !1031, line: 89, baseType: !113, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3311, file: !1031, line: 93, baseType: !1041, size: 32)
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321, !3322}
!3316 = !DILocalVariable(name: "pwc", arg: 1, scope: !3299, file: !3300, line: 334, type: !3303)
!3317 = !DILocalVariable(name: "s", arg: 2, scope: !3299, file: !3300, line: 334, type: !6)
!3318 = !DILocalVariable(name: "n", arg: 3, scope: !3299, file: !3300, line: 334, type: !94)
!3319 = !DILocalVariable(name: "ps", arg: 4, scope: !3299, file: !3300, line: 334, type: !3304)
!3320 = !DILocalVariable(name: "ret", scope: !3299, file: !3300, line: 336, type: !94)
!3321 = !DILocalVariable(name: "wc", scope: !3299, file: !3300, line: 337, type: !1046)
!3322 = !DILocalVariable(name: "uc", scope: !3323, file: !3300, line: 398, type: !494)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !3300, line: 397, column: 5)
!3324 = distinct !DILexicalBlock(scope: !3299, file: !3300, line: 396, column: 7)
!3325 = !DILocation(line: 334, column: 23, scope: !3299)
!3326 = !DILocation(line: 334, column: 40, scope: !3299)
!3327 = !DILocation(line: 334, column: 50, scope: !3299)
!3328 = !DILocation(line: 334, column: 64, scope: !3299)
!3329 = !DILocation(line: 337, column: 3, scope: !3299)
!3330 = !DILocation(line: 353, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3299, file: !3300, line: 353, column: 7)
!3332 = !DILocation(line: 353, column: 7, scope: !3299)
!3333 = !DILocation(line: 388, column: 9, scope: !3299)
!3334 = !DILocation(line: 336, column: 10, scope: !3299)
!3335 = !DILocation(line: 396, column: 19, scope: !3324)
!3336 = !DILocation(line: 396, column: 31, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !3324, file: !3300, discriminator: 1)
!3338 = !DILocation(line: 396, column: 26, scope: !3324)
!3339 = !DILocation(line: 396, column: 41, scope: !3340)
!3340 = !DILexicalBlockFile(scope: !3324, file: !3300, discriminator: 2)
!3341 = !DILocation(line: 396, column: 7, scope: !3342)
!3342 = !DILexicalBlockFile(scope: !3299, file: !3300, discriminator: 2)
!3343 = !DILocation(line: 398, column: 26, scope: !3323)
!3344 = !DILocation(line: 398, column: 21, scope: !3323)
!3345 = !DILocation(line: 399, column: 14, scope: !3323)
!3346 = !DILocation(line: 399, column: 12, scope: !3323)
!3347 = !DILocation(line: 405, column: 1, scope: !3299)
!3348 = distinct !DISubprogram(name: "close_stream", scope: !3349, file: !3349, line: 56, type: !3350, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3392)
!3349 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!25, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !756, line: 49, baseType: !3354)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2796, line: 241, size: 1728, elements: !3355)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3354, file: !2796, line: 242, baseType: !25, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3354, file: !2796, line: 247, baseType: !50, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3354, file: !2796, line: 248, baseType: !50, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3354, file: !2796, line: 249, baseType: !50, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3354, file: !2796, line: 250, baseType: !50, size: 64, offset: 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3354, file: !2796, line: 251, baseType: !50, size: 64, offset: 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3354, file: !2796, line: 252, baseType: !50, size: 64, offset: 384)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3354, file: !2796, line: 253, baseType: !50, size: 64, offset: 448)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3354, file: !2796, line: 254, baseType: !50, size: 64, offset: 512)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3354, file: !2796, line: 256, baseType: !50, size: 64, offset: 576)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3354, file: !2796, line: 257, baseType: !50, size: 64, offset: 640)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3354, file: !2796, line: 258, baseType: !50, size: 64, offset: 704)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3354, file: !2796, line: 260, baseType: !3369, size: 64, offset: 768)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2796, line: 156, size: 192, elements: !3371)
!3371 = !{!3372, !3373, !3375}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3370, file: !2796, line: 157, baseType: !3369, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3370, file: !2796, line: 158, baseType: !3374, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3370, file: !2796, line: 162, baseType: !25, size: 32, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3354, file: !2796, line: 262, baseType: !3374, size: 64, offset: 832)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3354, file: !2796, line: 264, baseType: !25, size: 32, offset: 896)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3354, file: !2796, line: 268, baseType: !25, size: 32, offset: 928)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3354, file: !2796, line: 270, baseType: !2822, size: 64, offset: 960)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3354, file: !2796, line: 274, baseType: !93, size: 16, offset: 1024)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3354, file: !2796, line: 275, baseType: !2827, size: 8, offset: 1040)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3354, file: !2796, line: 276, baseType: !2829, size: 8, offset: 1048)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3354, file: !2796, line: 280, baseType: !2831, size: 64, offset: 1088)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3354, file: !2796, line: 289, baseType: !2834, size: 64, offset: 1152)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3354, file: !2796, line: 297, baseType: !49, size: 64, offset: 1216)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3354, file: !2796, line: 298, baseType: !49, size: 64, offset: 1280)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3354, file: !2796, line: 299, baseType: !49, size: 64, offset: 1344)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3354, file: !2796, line: 300, baseType: !49, size: 64, offset: 1408)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3354, file: !2796, line: 302, baseType: !94, size: 64, offset: 1472)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3354, file: !2796, line: 303, baseType: !25, size: 32, offset: 1536)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3354, file: !2796, line: 305, baseType: !2842, size: 160, offset: 1568)
!3392 = !{!3393, !3394, !3396, !3397}
!3393 = !DILocalVariable(name: "stream", arg: 1, scope: !3348, file: !3349, line: 56, type: !3352)
!3394 = !DILocalVariable(name: "some_pending", scope: !3348, file: !3349, line: 58, type: !3395)
!3395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3396 = !DILocalVariable(name: "prev_fail", scope: !3348, file: !3349, line: 59, type: !3395)
!3397 = !DILocalVariable(name: "fclose_fail", scope: !3348, file: !3349, line: 60, type: !3395)
!3398 = !DILocation(line: 56, column: 21, scope: !3348)
!3399 = !DILocation(line: 58, column: 30, scope: !3348)
!3400 = !DILocalVariable(name: "__stream", arg: 1, scope: !3401, file: !3402, line: 132, type: !3352)
!3401 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3402, file: !3402, line: 132, type: !3350, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3403)
!3402 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3403 = !{!3400}
!3404 = !DILocation(line: 132, column: 1, scope: !3401, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 59, column: 27, scope: !3348)
!3406 = !DILocation(line: 134, column: 10, scope: !3401, inlinedAt: !3405)
!3407 = !{!3408, !662, i64 0}
!3408 = !{!"_IO_FILE", !662, i64 0, !598, i64 8, !598, i64 16, !598, i64 24, !598, i64 32, !598, i64 40, !598, i64 48, !598, i64 56, !598, i64 64, !598, i64 72, !598, i64 80, !598, i64 88, !598, i64 96, !598, i64 104, !662, i64 112, !662, i64 116, !2107, i64 120, !1399, i64 128, !599, i64 130, !599, i64 131, !598, i64 136, !2107, i64 144, !598, i64 152, !598, i64 160, !598, i64 168, !598, i64 176, !2107, i64 184, !662, i64 192, !599, i64 196}
!3409 = !DILocation(line: 59, column: 43, scope: !3348)
!3410 = !DILocation(line: 60, column: 29, scope: !3348)
!3411 = !DILocation(line: 60, column: 45, scope: !3348)
!3412 = !DILocation(line: 70, column: 17, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3348, file: !3349, line: 70, column: 7)
!3414 = !DILocation(line: 70, column: 33, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3413, file: !3349, discriminator: 1)
!3416 = !DILocation(line: 70, column: 53, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !3413, file: !3349, discriminator: 3)
!3418 = !DILocation(line: 70, column: 7, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !3348, file: !3349, discriminator: 3)
!3420 = !DILocation(line: 72, column: 11, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3413, file: !3349, line: 71, column: 5)
!3422 = !DILocation(line: 73, column: 9, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3421, file: !3349, line: 72, column: 11)
!3424 = !DILocation(line: 73, column: 15, scope: !3423)
!3425 = !DILocation(line: 78, column: 1, scope: !3348)
!3426 = distinct !DISubprogram(name: "hard_locale", scope: !3427, file: !3427, line: 38, type: !3428, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3430)
!3427 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!17, !25}
!3430 = !{!3431, !3432, !3433, !3434, !3441, !3442, !3444, !3445, !3447, !3448, !3450}
!3431 = !DILocalVariable(name: "category", arg: 1, scope: !3426, file: !3427, line: 38, type: !25)
!3432 = !DILocalVariable(name: "hard", scope: !3426, file: !3427, line: 40, type: !17)
!3433 = !DILocalVariable(name: "p", scope: !3426, file: !3427, line: 41, type: !6)
!3434 = !DILocalVariable(name: "__s1_len", scope: !3435, file: !3427, line: 47, type: !94)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !3427, line: 47, column: 15)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !3427, line: 47, column: 15)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !3427, line: 46, column: 9)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !3427, line: 45, column: 11)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !3427, line: 44, column: 5)
!3440 = distinct !DILexicalBlock(scope: !3426, file: !3427, line: 43, column: 7)
!3441 = !DILocalVariable(name: "__s2_len", scope: !3435, file: !3427, line: 47, type: !94)
!3442 = !DILocalVariable(name: "__s2", scope: !3443, file: !3427, line: 47, type: !503)
!3443 = distinct !DILexicalBlock(scope: !3435, file: !3427, line: 47, column: 15)
!3444 = !DILocalVariable(name: "__result", scope: !3443, file: !3427, line: 47, type: !25)
!3445 = !DILocalVariable(name: "__s1_len", scope: !3446, file: !3427, line: 47, type: !94)
!3446 = distinct !DILexicalBlock(scope: !3436, file: !3427, line: 47, column: 39)
!3447 = !DILocalVariable(name: "__s2_len", scope: !3446, file: !3427, line: 47, type: !94)
!3448 = !DILocalVariable(name: "__s2", scope: !3449, file: !3427, line: 47, type: !503)
!3449 = distinct !DILexicalBlock(scope: !3446, file: !3427, line: 47, column: 39)
!3450 = !DILocalVariable(name: "__result", scope: !3449, file: !3427, line: 47, type: !25)
!3451 = !DILocation(line: 38, column: 18, scope: !3426)
!3452 = !DILocation(line: 40, column: 8, scope: !3426)
!3453 = !DILocation(line: 41, column: 19, scope: !3426)
!3454 = !DILocation(line: 41, column: 15, scope: !3426)
!3455 = !DILocation(line: 43, column: 7, scope: !3440)
!3456 = !DILocation(line: 43, column: 7, scope: !3426)
!3457 = !DILocation(line: 47, column: 15, scope: !3435)
!3458 = !DILocation(line: 47, column: 15, scope: !3443)
!3459 = !DILocation(line: 47, column: 15, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3443, file: !3427, discriminator: 2)
!3461 = !DILocation(line: 47, column: 15, scope: !3462)
!3462 = !DILexicalBlockFile(scope: !3463, file: !3427, discriminator: 3)
!3463 = distinct !DILexicalBlock(scope: !3443, file: !3427, line: 47, column: 15)
!3464 = !DILocation(line: 47, column: 15, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3463, file: !3427, discriminator: 2)
!3466 = !DILocation(line: 47, column: 15, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !3468, file: !3427, discriminator: 4)
!3468 = distinct !DILexicalBlock(scope: !3463, file: !3427, line: 47, column: 15)
!3469 = !DILocation(line: 47, column: 15, scope: !3470)
!3470 = !DILexicalBlockFile(scope: !3435, file: !3427, discriminator: 11)
!3471 = !DILocation(line: 47, column: 36, scope: !3472)
!3472 = !DILexicalBlockFile(scope: !3436, file: !3427, discriminator: 13)
!3473 = !DILocation(line: 47, column: 39, scope: !3446)
!3474 = !DILocation(line: 47, column: 39, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !3446, file: !3427, discriminator: 26)
!3476 = !DILocation(line: 47, column: 59, scope: !3477)
!3477 = !DILexicalBlockFile(scope: !3436, file: !3427, discriminator: 27)
!3478 = !DILocation(line: 47, column: 15, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !3437, file: !3427, discriminator: 27)
!3480 = !DILocation(line: 48, column: 13, scope: !3436)
!3481 = !DILocation(line: 71, column: 3, scope: !3426)
!3482 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3483, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!6}
!3485 = !{!3486, !3487, !3488, !3493}
!3486 = !DILocalVariable(name: "codeset", scope: !3482, file: !496, line: 395, type: !6)
!3487 = !DILocalVariable(name: "aliases", scope: !3482, file: !496, line: 396, type: !6)
!3488 = !DILocalVariable(name: "__s1_len", scope: !3489, file: !496, line: 592, type: !94)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !496, line: 592, column: 9)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !496, line: 592, column: 9)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !496, line: 589, column: 3)
!3492 = distinct !DILexicalBlock(scope: !3482, file: !496, line: 589, column: 3)
!3493 = !DILocalVariable(name: "__s2_len", scope: !3489, file: !496, line: 592, type: !94)
!3494 = !DILocalVariable(name: "buf1", scope: !3495, file: !496, line: 196, type: !3562)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !496, line: 194, column: 21)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !496, line: 193, column: 19)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !496, line: 193, column: 19)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !496, line: 188, column: 17)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !496, line: 181, column: 19)
!3500 = distinct !DILexicalBlock(scope: !3501, file: !496, line: 177, column: 13)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !496, line: 173, column: 15)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !496, line: 161, column: 9)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !496, line: 157, column: 11)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !496, line: 130, column: 5)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !496, line: 129, column: 7)
!3506 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3483, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3507)
!3507 = !{!3508, !3509, !3510, !3511, !3512, !3514, !3515, !3516, !3517, !3558, !3559, !3560, !3494, !3561, !3565, !3566, !3567}
!3508 = !DILocalVariable(name: "cp", scope: !3506, file: !496, line: 126, type: !6)
!3509 = !DILocalVariable(name: "dir", scope: !3504, file: !496, line: 132, type: !6)
!3510 = !DILocalVariable(name: "base", scope: !3504, file: !496, line: 133, type: !6)
!3511 = !DILocalVariable(name: "file_name", scope: !3504, file: !496, line: 134, type: !50)
!3512 = !DILocalVariable(name: "dir_len", scope: !3513, file: !496, line: 144, type: !94)
!3513 = distinct !DILexicalBlock(scope: !3504, file: !496, line: 143, column: 7)
!3514 = !DILocalVariable(name: "base_len", scope: !3513, file: !496, line: 145, type: !94)
!3515 = !DILocalVariable(name: "add_slash", scope: !3513, file: !496, line: 146, type: !25)
!3516 = !DILocalVariable(name: "fd", scope: !3502, file: !496, line: 162, type: !25)
!3517 = !DILocalVariable(name: "fp", scope: !3500, file: !496, line: 178, type: !3518)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !756, line: 49, baseType: !3520)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2796, line: 241, size: 1728, elements: !3521)
!3521 = !{!3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3520, file: !2796, line: 242, baseType: !25, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3520, file: !2796, line: 247, baseType: !50, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3520, file: !2796, line: 248, baseType: !50, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3520, file: !2796, line: 249, baseType: !50, size: 64, offset: 192)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3520, file: !2796, line: 250, baseType: !50, size: 64, offset: 256)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3520, file: !2796, line: 251, baseType: !50, size: 64, offset: 320)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3520, file: !2796, line: 252, baseType: !50, size: 64, offset: 384)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3520, file: !2796, line: 253, baseType: !50, size: 64, offset: 448)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3520, file: !2796, line: 254, baseType: !50, size: 64, offset: 512)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3520, file: !2796, line: 256, baseType: !50, size: 64, offset: 576)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3520, file: !2796, line: 257, baseType: !50, size: 64, offset: 640)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3520, file: !2796, line: 258, baseType: !50, size: 64, offset: 704)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3520, file: !2796, line: 260, baseType: !3535, size: 64, offset: 768)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2796, line: 156, size: 192, elements: !3537)
!3537 = !{!3538, !3539, !3541}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3536, file: !2796, line: 157, baseType: !3535, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3536, file: !2796, line: 158, baseType: !3540, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3536, file: !2796, line: 162, baseType: !25, size: 32, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3520, file: !2796, line: 262, baseType: !3540, size: 64, offset: 832)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3520, file: !2796, line: 264, baseType: !25, size: 32, offset: 896)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3520, file: !2796, line: 268, baseType: !25, size: 32, offset: 928)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3520, file: !2796, line: 270, baseType: !2822, size: 64, offset: 960)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3520, file: !2796, line: 274, baseType: !93, size: 16, offset: 1024)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3520, file: !2796, line: 275, baseType: !2827, size: 8, offset: 1040)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3520, file: !2796, line: 276, baseType: !2829, size: 8, offset: 1048)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3520, file: !2796, line: 280, baseType: !2831, size: 64, offset: 1088)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3520, file: !2796, line: 289, baseType: !2834, size: 64, offset: 1152)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3520, file: !2796, line: 297, baseType: !49, size: 64, offset: 1216)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3520, file: !2796, line: 298, baseType: !49, size: 64, offset: 1280)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3520, file: !2796, line: 299, baseType: !49, size: 64, offset: 1344)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3520, file: !2796, line: 300, baseType: !49, size: 64, offset: 1408)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3520, file: !2796, line: 302, baseType: !94, size: 64, offset: 1472)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3520, file: !2796, line: 303, baseType: !25, size: 32, offset: 1536)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3520, file: !2796, line: 305, baseType: !2842, size: 160, offset: 1568)
!3558 = !DILocalVariable(name: "res_ptr", scope: !3498, file: !496, line: 190, type: !50)
!3559 = !DILocalVariable(name: "res_size", scope: !3498, file: !496, line: 191, type: !94)
!3560 = !DILocalVariable(name: "c", scope: !3495, file: !496, line: 195, type: !25)
!3561 = !DILocalVariable(name: "buf2", scope: !3495, file: !496, line: 197, type: !3562)
!3562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3563)
!3563 = !{!3564}
!3564 = !DISubrange(count: 51)
!3565 = !DILocalVariable(name: "l1", scope: !3495, file: !496, line: 198, type: !94)
!3566 = !DILocalVariable(name: "l2", scope: !3495, file: !496, line: 198, type: !94)
!3567 = !DILocalVariable(name: "old_res_ptr", scope: !3495, file: !496, line: 199, type: !50)
!3568 = !DILocation(line: 196, column: 28, scope: !3495, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 589, column: 18, scope: !3492)
!3570 = !DILocation(line: 197, column: 28, scope: !3495, inlinedAt: !3569)
!3571 = !DILocation(line: 403, column: 13, scope: !3482)
!3572 = !DILocation(line: 395, column: 15, scope: !3482)
!3573 = !DILocation(line: 584, column: 15, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3482, file: !496, line: 584, column: 7)
!3575 = !DILocation(line: 584, column: 7, scope: !3482)
!3576 = !DILocation(line: 128, column: 8, scope: !3506, inlinedAt: !3569)
!3577 = !DILocation(line: 126, column: 15, scope: !3506, inlinedAt: !3569)
!3578 = !DILocation(line: 129, column: 10, scope: !3505, inlinedAt: !3569)
!3579 = !DILocation(line: 129, column: 7, scope: !3506, inlinedAt: !3569)
!3580 = !DILocation(line: 138, column: 13, scope: !3504, inlinedAt: !3569)
!3581 = !DILocation(line: 132, column: 19, scope: !3504, inlinedAt: !3569)
!3582 = !DILocation(line: 139, column: 15, scope: !3583, inlinedAt: !3569)
!3583 = distinct !DILexicalBlock(scope: !3504, file: !496, line: 139, column: 11)
!3584 = !DILocation(line: 139, column: 23, scope: !3583, inlinedAt: !3569)
!3585 = !DILocation(line: 139, column: 26, scope: !3586, inlinedAt: !3569)
!3586 = !DILexicalBlockFile(scope: !3583, file: !496, discriminator: 1)
!3587 = !DILocation(line: 139, column: 33, scope: !3586, inlinedAt: !3569)
!3588 = !DILocation(line: 139, column: 11, scope: !3589, inlinedAt: !3569)
!3589 = !DILexicalBlockFile(scope: !3504, file: !496, discriminator: 1)
!3590 = !DILocation(line: 140, column: 9, scope: !3583, inlinedAt: !3569)
!3591 = !DILocation(line: 144, column: 26, scope: !3513, inlinedAt: !3569)
!3592 = !DILocation(line: 144, column: 16, scope: !3513, inlinedAt: !3569)
!3593 = !DILocation(line: 145, column: 16, scope: !3513, inlinedAt: !3569)
!3594 = !DILocation(line: 146, column: 34, scope: !3513, inlinedAt: !3569)
!3595 = !DILocation(line: 146, column: 38, scope: !3513, inlinedAt: !3569)
!3596 = !DILocation(line: 146, column: 42, scope: !3597, inlinedAt: !3569)
!3597 = !DILexicalBlockFile(scope: !3513, file: !496, discriminator: 1)
!3598 = !DILocation(line: 146, column: 41, scope: !3597, inlinedAt: !3569)
!3599 = !DILocation(line: 147, column: 48, scope: !3513, inlinedAt: !3569)
!3600 = !DILocation(line: 147, column: 46, scope: !3513, inlinedAt: !3569)
!3601 = !DILocation(line: 147, column: 69, scope: !3513, inlinedAt: !3569)
!3602 = !DILocation(line: 147, column: 30, scope: !3513, inlinedAt: !3569)
!3603 = !DILocation(line: 134, column: 13, scope: !3504, inlinedAt: !3569)
!3604 = !DILocation(line: 148, column: 13, scope: !3513, inlinedAt: !3569)
!3605 = !DILocation(line: 150, column: 13, scope: !3606, inlinedAt: !3569)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !496, line: 149, column: 11)
!3607 = distinct !DILexicalBlock(scope: !3513, file: !496, line: 148, column: 13)
!3608 = !DILocation(line: 151, column: 17, scope: !3606, inlinedAt: !3569)
!3609 = !DILocation(line: 152, column: 34, scope: !3610, inlinedAt: !3569)
!3610 = distinct !DILexicalBlock(scope: !3606, file: !496, line: 151, column: 17)
!3611 = !DILocation(line: 153, column: 41, scope: !3606, inlinedAt: !3569)
!3612 = !DILocation(line: 153, column: 13, scope: !3606, inlinedAt: !3569)
!3613 = !DILocation(line: 157, column: 11, scope: !3504, inlinedAt: !3569)
!3614 = !DILocation(line: 171, column: 16, scope: !3502, inlinedAt: !3569)
!3615 = !DILocation(line: 162, column: 15, scope: !3502, inlinedAt: !3569)
!3616 = !DILocation(line: 173, column: 18, scope: !3501, inlinedAt: !3569)
!3617 = !DILocation(line: 173, column: 15, scope: !3502, inlinedAt: !3569)
!3618 = !DILocation(line: 180, column: 20, scope: !3500, inlinedAt: !3569)
!3619 = !DILocation(line: 178, column: 21, scope: !3500, inlinedAt: !3569)
!3620 = !DILocation(line: 181, column: 22, scope: !3499, inlinedAt: !3569)
!3621 = !DILocation(line: 181, column: 19, scope: !3500, inlinedAt: !3569)
!3622 = !DILocation(line: 190, column: 25, scope: !3498, inlinedAt: !3569)
!3623 = !DILocation(line: 184, column: 19, scope: !3624, inlinedAt: !3569)
!3624 = distinct !DILexicalBlock(scope: !3499, file: !496, line: 182, column: 17)
!3625 = !DILocation(line: 186, column: 17, scope: !3624, inlinedAt: !3569)
!3626 = !DILocation(line: 191, column: 26, scope: !3498, inlinedAt: !3569)
!3627 = !DILocation(line: 196, column: 23, scope: !3495, inlinedAt: !3569)
!3628 = !DILocation(line: 197, column: 23, scope: !3495, inlinedAt: !3569)
!3629 = !DILocalVariable(name: "__fp", arg: 1, scope: !3630, file: !3402, line: 63, type: !3518)
!3630 = distinct !DISubprogram(name: "getc_unlocked", scope: !3402, file: !3402, line: 63, type: !3631, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3633)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!25, !3518}
!3633 = !{!3629}
!3634 = !DILocation(line: 63, column: 22, scope: !3630, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 201, column: 27, scope: !3495, inlinedAt: !3569)
!3636 = !DILocation(line: 65, column: 10, scope: !3630, inlinedAt: !3635)
!3637 = !{!3408, !598, i64 8}
!3638 = !{!3408, !598, i64 16}
!3639 = !{!"branch_weights", i32 2000, i32 1}
!3640 = !DILocation(line: 65, column: 10, scope: !3641, inlinedAt: !3635)
!3641 = !DILexicalBlockFile(scope: !3630, file: !3402, discriminator: 1)
!3642 = !DILocation(line: 65, column: 10, scope: !3643, inlinedAt: !3635)
!3643 = !DILexicalBlockFile(scope: !3630, file: !3402, discriminator: 2)
!3644 = !DILocation(line: 65, column: 10, scope: !3645, inlinedAt: !3635)
!3645 = !DILexicalBlockFile(scope: !3630, file: !3402, discriminator: 3)
!3646 = !DILocation(line: 195, column: 27, scope: !3495, inlinedAt: !3569)
!3647 = !DILocation(line: 202, column: 27, scope: !3495, inlinedAt: !3569)
!3648 = !DILocation(line: 63, column: 22, scope: !3630, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 210, column: 33, scope: !3650, inlinedAt: !3569)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !496, line: 207, column: 25)
!3651 = distinct !DILexicalBlock(scope: !3495, file: !496, line: 206, column: 27)
!3652 = !DILocation(line: 65, column: 10, scope: !3630, inlinedAt: !3649)
!3653 = !DILocation(line: 65, column: 10, scope: !3641, inlinedAt: !3649)
!3654 = !DILocation(line: 65, column: 10, scope: !3643, inlinedAt: !3649)
!3655 = !DILocation(line: 65, column: 10, scope: !3645, inlinedAt: !3649)
!3656 = !DILocation(line: 210, column: 29, scope: !3657, inlinedAt: !3569)
!3657 = !DILexicalBlockFile(scope: !3650, file: !496, discriminator: 1)
!3658 = distinct !{!3658, !3659, !3660}
!3659 = !DILocation(line: 193, column: 19, scope: !3497)
!3660 = !DILocation(line: 241, column: 21, scope: !3497)
!3661 = !DILocation(line: 216, column: 23, scope: !3495, inlinedAt: !3569)
!3662 = !DILocation(line: 217, column: 27, scope: !3663, inlinedAt: !3569)
!3663 = distinct !DILexicalBlock(scope: !3495, file: !496, line: 217, column: 27)
!3664 = !DILocation(line: 217, column: 64, scope: !3663, inlinedAt: !3569)
!3665 = !DILocation(line: 217, column: 27, scope: !3495, inlinedAt: !3569)
!3666 = !DILocation(line: 219, column: 28, scope: !3495, inlinedAt: !3569)
!3667 = !DILocation(line: 198, column: 30, scope: !3495, inlinedAt: !3569)
!3668 = !DILocation(line: 220, column: 28, scope: !3495, inlinedAt: !3569)
!3669 = !DILocation(line: 198, column: 34, scope: !3495, inlinedAt: !3569)
!3670 = !DILocation(line: 199, column: 29, scope: !3495, inlinedAt: !3569)
!3671 = !DILocation(line: 222, column: 36, scope: !3672, inlinedAt: !3569)
!3672 = distinct !DILexicalBlock(scope: !3495, file: !496, line: 222, column: 27)
!3673 = !DILocation(line: 222, column: 27, scope: !3495, inlinedAt: !3569)
!3674 = !DILocation(line: 225, column: 63, scope: !3675, inlinedAt: !3569)
!3675 = distinct !DILexicalBlock(scope: !3672, file: !496, line: 223, column: 25)
!3676 = !DILocation(line: 225, column: 46, scope: !3675, inlinedAt: !3569)
!3677 = !DILocation(line: 226, column: 25, scope: !3675, inlinedAt: !3569)
!3678 = !DILocation(line: 229, column: 36, scope: !3679, inlinedAt: !3569)
!3679 = distinct !DILexicalBlock(scope: !3672, file: !496, line: 228, column: 25)
!3680 = !DILocation(line: 230, column: 73, scope: !3679, inlinedAt: !3569)
!3681 = !DILocation(line: 230, column: 46, scope: !3679, inlinedAt: !3569)
!3682 = !DILocation(line: 232, column: 35, scope: !3683, inlinedAt: !3569)
!3683 = distinct !DILexicalBlock(scope: !3495, file: !496, line: 232, column: 27)
!3684 = !DILocation(line: 232, column: 27, scope: !3495, inlinedAt: !3569)
!3685 = !DILocation(line: 236, column: 27, scope: !3686, inlinedAt: !3569)
!3686 = distinct !DILexicalBlock(scope: !3683, file: !496, line: 233, column: 25)
!3687 = !DILocation(line: 237, column: 27, scope: !3686, inlinedAt: !3569)
!3688 = !DILocation(line: 239, column: 39, scope: !3495, inlinedAt: !3569)
!3689 = !DILocation(line: 239, column: 50, scope: !3495, inlinedAt: !3569)
!3690 = !DILocation(line: 239, column: 61, scope: !3495, inlinedAt: !3569)
!3691 = !DILocalVariable(name: "__dest", arg: 1, scope: !3692, file: !3693, line: 107, type: !3696)
!3692 = distinct !DISubprogram(name: "strcpy", scope: !3693, file: !3693, line: 107, type: !3694, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3698)
!3693 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!50, !3696, !3697}
!3696 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3697 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3698 = !{!3691, !3699}
!3699 = !DILocalVariable(name: "__src", arg: 2, scope: !3692, file: !3693, line: 107, type: !3697)
!3700 = !DILocation(line: 107, column: 1, scope: !3692, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 239, column: 23, scope: !3495, inlinedAt: !3569)
!3702 = !DILocation(line: 109, column: 49, scope: !3692, inlinedAt: !3701)
!3703 = !DILocation(line: 109, column: 10, scope: !3692, inlinedAt: !3701)
!3704 = !DILocation(line: 107, column: 1, scope: !3692, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 240, column: 23, scope: !3495, inlinedAt: !3569)
!3706 = !DILocation(line: 109, column: 49, scope: !3692, inlinedAt: !3705)
!3707 = !DILocation(line: 109, column: 10, scope: !3692, inlinedAt: !3705)
!3708 = !DILocation(line: 241, column: 21, scope: !3496, inlinedAt: !3569)
!3709 = !DILocation(line: 242, column: 19, scope: !3498, inlinedAt: !3569)
!3710 = !DILocation(line: 243, column: 32, scope: !3711, inlinedAt: !3569)
!3711 = distinct !DILexicalBlock(scope: !3498, file: !496, line: 243, column: 23)
!3712 = !DILocation(line: 243, column: 23, scope: !3498, inlinedAt: !3569)
!3713 = !DILocation(line: 247, column: 33, scope: !3714, inlinedAt: !3569)
!3714 = distinct !DILexicalBlock(scope: !3711, file: !496, line: 246, column: 21)
!3715 = !DILocation(line: 247, column: 45, scope: !3714, inlinedAt: !3569)
!3716 = !DILocation(line: 253, column: 11, scope: !3502, inlinedAt: !3569)
!3717 = !DILocation(line: 377, column: 23, scope: !3504, inlinedAt: !3569)
!3718 = !DILocation(line: 378, column: 5, scope: !3504, inlinedAt: !3569)
!3719 = !DILocation(line: 396, column: 15, scope: !3482)
!3720 = !DILocation(line: 590, column: 8, scope: !3491)
!3721 = !DILocation(line: 590, column: 17, scope: !3491)
!3722 = !DILocation(line: 589, column: 3, scope: !3723)
!3723 = !DILexicalBlockFile(scope: !3492, file: !496, discriminator: 1)
!3724 = !DILocation(line: 592, column: 9, scope: !3489)
!3725 = !DILocation(line: 592, column: 35, scope: !3490)
!3726 = !DILocation(line: 593, column: 9, scope: !3490)
!3727 = !DILocation(line: 593, column: 24, scope: !3728)
!3728 = !DILexicalBlockFile(scope: !3490, file: !496, discriminator: 1)
!3729 = !DILocation(line: 593, column: 31, scope: !3728)
!3730 = !DILocation(line: 593, column: 34, scope: !3731)
!3731 = !DILexicalBlockFile(scope: !3490, file: !496, discriminator: 2)
!3732 = !DILocation(line: 593, column: 45, scope: !3731)
!3733 = !DILocation(line: 592, column: 9, scope: !3734)
!3734 = !DILexicalBlockFile(scope: !3491, file: !496, discriminator: 1)
!3735 = !DILocation(line: 595, column: 29, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3490, file: !496, line: 594, column: 7)
!3737 = !DILocation(line: 595, column: 27, scope: !3736)
!3738 = !DILocation(line: 595, column: 46, scope: !3736)
!3739 = !DILocation(line: 596, column: 9, scope: !3736)
!3740 = !DILocation(line: 591, column: 19, scope: !3491)
!3741 = !DILocation(line: 591, column: 36, scope: !3491)
!3742 = !DILocation(line: 591, column: 16, scope: !3491)
!3743 = !DILocation(line: 591, column: 52, scope: !3734)
!3744 = !DILocation(line: 591, column: 69, scope: !3491)
!3745 = !DILocation(line: 591, column: 49, scope: !3491)
!3746 = distinct !{!3746, !3747, !3748}
!3747 = !DILocation(line: 589, column: 3, scope: !3492)
!3748 = !DILocation(line: 597, column: 7, scope: !3492)
!3749 = !DILocation(line: 602, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3482, file: !496, line: 602, column: 7)
!3751 = !DILocation(line: 602, column: 18, scope: !3750)
!3752 = !DILocation(line: 602, column: 7, scope: !3482)
!3753 = !DILocation(line: 612, column: 3, scope: !3482)
!3754 = distinct !DISubprogram(name: "rpl_fclose", scope: !3755, file: !3755, line: 56, type: !3756, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3798)
!3755 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!25, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !756, line: 49, baseType: !3760)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2796, line: 241, size: 1728, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3760, file: !2796, line: 242, baseType: !25, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3760, file: !2796, line: 247, baseType: !50, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3760, file: !2796, line: 248, baseType: !50, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3760, file: !2796, line: 249, baseType: !50, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3760, file: !2796, line: 250, baseType: !50, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3760, file: !2796, line: 251, baseType: !50, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3760, file: !2796, line: 252, baseType: !50, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3760, file: !2796, line: 253, baseType: !50, size: 64, offset: 448)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3760, file: !2796, line: 254, baseType: !50, size: 64, offset: 512)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3760, file: !2796, line: 256, baseType: !50, size: 64, offset: 576)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3760, file: !2796, line: 257, baseType: !50, size: 64, offset: 640)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3760, file: !2796, line: 258, baseType: !50, size: 64, offset: 704)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3760, file: !2796, line: 260, baseType: !3775, size: 64, offset: 768)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2796, line: 156, size: 192, elements: !3777)
!3777 = !{!3778, !3779, !3781}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3776, file: !2796, line: 157, baseType: !3775, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3776, file: !2796, line: 158, baseType: !3780, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3776, file: !2796, line: 162, baseType: !25, size: 32, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3760, file: !2796, line: 262, baseType: !3780, size: 64, offset: 832)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3760, file: !2796, line: 264, baseType: !25, size: 32, offset: 896)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3760, file: !2796, line: 268, baseType: !25, size: 32, offset: 928)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3760, file: !2796, line: 270, baseType: !2822, size: 64, offset: 960)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3760, file: !2796, line: 274, baseType: !93, size: 16, offset: 1024)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3760, file: !2796, line: 275, baseType: !2827, size: 8, offset: 1040)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3760, file: !2796, line: 276, baseType: !2829, size: 8, offset: 1048)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3760, file: !2796, line: 280, baseType: !2831, size: 64, offset: 1088)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3760, file: !2796, line: 289, baseType: !2834, size: 64, offset: 1152)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3760, file: !2796, line: 297, baseType: !49, size: 64, offset: 1216)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3760, file: !2796, line: 298, baseType: !49, size: 64, offset: 1280)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3760, file: !2796, line: 299, baseType: !49, size: 64, offset: 1344)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3760, file: !2796, line: 300, baseType: !49, size: 64, offset: 1408)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3760, file: !2796, line: 302, baseType: !94, size: 64, offset: 1472)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3760, file: !2796, line: 303, baseType: !25, size: 32, offset: 1536)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3760, file: !2796, line: 305, baseType: !2842, size: 160, offset: 1568)
!3798 = !{!3799, !3800, !3801, !3802}
!3799 = !DILocalVariable(name: "fp", arg: 1, scope: !3754, file: !3755, line: 56, type: !3758)
!3800 = !DILocalVariable(name: "saved_errno", scope: !3754, file: !3755, line: 58, type: !25)
!3801 = !DILocalVariable(name: "fd", scope: !3754, file: !3755, line: 59, type: !25)
!3802 = !DILocalVariable(name: "result", scope: !3754, file: !3755, line: 60, type: !25)
!3803 = !DILocation(line: 56, column: 19, scope: !3754)
!3804 = !DILocation(line: 58, column: 7, scope: !3754)
!3805 = !DILocation(line: 60, column: 7, scope: !3754)
!3806 = !DILocation(line: 63, column: 8, scope: !3754)
!3807 = !DILocation(line: 59, column: 7, scope: !3754)
!3808 = !DILocation(line: 64, column: 10, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3754, file: !3755, line: 64, column: 7)
!3810 = !DILocation(line: 64, column: 7, scope: !3754)
!3811 = !DILocation(line: 65, column: 12, scope: !3809)
!3812 = !DILocation(line: 65, column: 5, scope: !3809)
!3813 = !DILocation(line: 70, column: 9, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3754, file: !3755, line: 70, column: 7)
!3815 = !DILocation(line: 70, column: 23, scope: !3814)
!3816 = !DILocation(line: 70, column: 33, scope: !3817)
!3817 = !DILexicalBlockFile(scope: !3814, file: !3755, discriminator: 1)
!3818 = !DILocation(line: 70, column: 26, scope: !3819)
!3819 = !DILexicalBlockFile(scope: !3814, file: !3755, discriminator: 3)
!3820 = !DILocation(line: 70, column: 59, scope: !3817)
!3821 = !DILocation(line: 71, column: 7, scope: !3814)
!3822 = !DILocation(line: 71, column: 10, scope: !3817)
!3823 = !DILocation(line: 70, column: 7, scope: !3824)
!3824 = !DILexicalBlockFile(scope: !3754, file: !3755, discriminator: 2)
!3825 = !DILocation(line: 98, column: 12, scope: !3754)
!3826 = !DILocation(line: 103, column: 7, scope: !3754)
!3827 = !DILocation(line: 72, column: 19, scope: !3814)
!3828 = !DILocation(line: 103, column: 19, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3754, file: !3755, line: 103, column: 7)
!3830 = !DILocation(line: 105, column: 13, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3829, file: !3755, line: 104, column: 5)
!3832 = !DILocation(line: 107, column: 5, scope: !3831)
!3833 = !DILocation(line: 110, column: 1, scope: !3754)
!3834 = distinct !DISubprogram(name: "rpl_fflush", scope: !3835, file: !3835, line: 127, type: !3836, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3878)
!3835 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!25, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !756, line: 49, baseType: !3840)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2796, line: 241, size: 1728, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3840, file: !2796, line: 242, baseType: !25, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3840, file: !2796, line: 247, baseType: !50, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3840, file: !2796, line: 248, baseType: !50, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3840, file: !2796, line: 249, baseType: !50, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3840, file: !2796, line: 250, baseType: !50, size: 64, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3840, file: !2796, line: 251, baseType: !50, size: 64, offset: 320)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3840, file: !2796, line: 252, baseType: !50, size: 64, offset: 384)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3840, file: !2796, line: 253, baseType: !50, size: 64, offset: 448)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3840, file: !2796, line: 254, baseType: !50, size: 64, offset: 512)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3840, file: !2796, line: 256, baseType: !50, size: 64, offset: 576)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3840, file: !2796, line: 257, baseType: !50, size: 64, offset: 640)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3840, file: !2796, line: 258, baseType: !50, size: 64, offset: 704)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3840, file: !2796, line: 260, baseType: !3855, size: 64, offset: 768)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2796, line: 156, size: 192, elements: !3857)
!3857 = !{!3858, !3859, !3861}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3856, file: !2796, line: 157, baseType: !3855, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3856, file: !2796, line: 158, baseType: !3860, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3856, file: !2796, line: 162, baseType: !25, size: 32, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3840, file: !2796, line: 262, baseType: !3860, size: 64, offset: 832)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3840, file: !2796, line: 264, baseType: !25, size: 32, offset: 896)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3840, file: !2796, line: 268, baseType: !25, size: 32, offset: 928)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3840, file: !2796, line: 270, baseType: !2822, size: 64, offset: 960)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3840, file: !2796, line: 274, baseType: !93, size: 16, offset: 1024)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3840, file: !2796, line: 275, baseType: !2827, size: 8, offset: 1040)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3840, file: !2796, line: 276, baseType: !2829, size: 8, offset: 1048)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3840, file: !2796, line: 280, baseType: !2831, size: 64, offset: 1088)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3840, file: !2796, line: 289, baseType: !2834, size: 64, offset: 1152)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3840, file: !2796, line: 297, baseType: !49, size: 64, offset: 1216)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3840, file: !2796, line: 298, baseType: !49, size: 64, offset: 1280)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3840, file: !2796, line: 299, baseType: !49, size: 64, offset: 1344)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3840, file: !2796, line: 300, baseType: !49, size: 64, offset: 1408)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3840, file: !2796, line: 302, baseType: !94, size: 64, offset: 1472)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3840, file: !2796, line: 303, baseType: !25, size: 32, offset: 1536)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3840, file: !2796, line: 305, baseType: !2842, size: 160, offset: 1568)
!3878 = !{!3879}
!3879 = !DILocalVariable(name: "stream", arg: 1, scope: !3834, file: !3835, line: 127, type: !3838)
!3880 = !DILocation(line: 127, column: 19, scope: !3834)
!3881 = !DILocation(line: 148, column: 14, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3834, file: !3835, line: 148, column: 7)
!3883 = !DILocation(line: 148, column: 22, scope: !3882)
!3884 = !DILocation(line: 148, column: 27, scope: !3885)
!3885 = !DILexicalBlockFile(scope: !3882, file: !3835, discriminator: 1)
!3886 = !DILocation(line: 148, column: 7, scope: !3887)
!3887 = !DILexicalBlockFile(scope: !3834, file: !3835, discriminator: 1)
!3888 = !DILocation(line: 149, column: 12, scope: !3882)
!3889 = !DILocation(line: 149, column: 5, scope: !3882)
!3890 = !DILocalVariable(name: "fp", arg: 1, scope: !3891, file: !3835, line: 40, type: !3838)
!3891 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3835, file: !3835, line: 40, type: !3892, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3894)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !3838}
!3894 = !{!3890}
!3895 = !DILocation(line: 40, column: 48, scope: !3891, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 153, column: 3, scope: !3834)
!3897 = !DILocation(line: 42, column: 11, scope: !3898, inlinedAt: !3896)
!3898 = distinct !DILexicalBlock(scope: !3891, file: !3835, line: 42, column: 7)
!3899 = !DILocation(line: 42, column: 18, scope: !3898, inlinedAt: !3896)
!3900 = !DILocation(line: 42, column: 7, scope: !3891, inlinedAt: !3896)
!3901 = !DILocation(line: 44, column: 5, scope: !3898, inlinedAt: !3896)
!3902 = !DILocation(line: 155, column: 10, scope: !3834)
!3903 = !DILocation(line: 155, column: 3, scope: !3834)
!3904 = !DILocation(line: 229, column: 1, scope: !3834)
!3905 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3906, file: !3906, line: 28, type: !3907, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !3950)
!3906 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!25, !3909, !3949, !25}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !756, line: 49, baseType: !3911)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2796, line: 241, size: 1728, elements: !3912)
!3912 = !{!3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3911, file: !2796, line: 242, baseType: !25, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3911, file: !2796, line: 247, baseType: !50, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3911, file: !2796, line: 248, baseType: !50, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3911, file: !2796, line: 249, baseType: !50, size: 64, offset: 192)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3911, file: !2796, line: 250, baseType: !50, size: 64, offset: 256)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3911, file: !2796, line: 251, baseType: !50, size: 64, offset: 320)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3911, file: !2796, line: 252, baseType: !50, size: 64, offset: 384)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3911, file: !2796, line: 253, baseType: !50, size: 64, offset: 448)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3911, file: !2796, line: 254, baseType: !50, size: 64, offset: 512)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3911, file: !2796, line: 256, baseType: !50, size: 64, offset: 576)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3911, file: !2796, line: 257, baseType: !50, size: 64, offset: 640)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3911, file: !2796, line: 258, baseType: !50, size: 64, offset: 704)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3911, file: !2796, line: 260, baseType: !3926, size: 64, offset: 768)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2796, line: 156, size: 192, elements: !3928)
!3928 = !{!3929, !3930, !3932}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3927, file: !2796, line: 157, baseType: !3926, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3927, file: !2796, line: 158, baseType: !3931, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3927, file: !2796, line: 162, baseType: !25, size: 32, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3911, file: !2796, line: 262, baseType: !3931, size: 64, offset: 832)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3911, file: !2796, line: 264, baseType: !25, size: 32, offset: 896)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3911, file: !2796, line: 268, baseType: !25, size: 32, offset: 928)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3911, file: !2796, line: 270, baseType: !2822, size: 64, offset: 960)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3911, file: !2796, line: 274, baseType: !93, size: 16, offset: 1024)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3911, file: !2796, line: 275, baseType: !2827, size: 8, offset: 1040)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3911, file: !2796, line: 276, baseType: !2829, size: 8, offset: 1048)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3911, file: !2796, line: 280, baseType: !2831, size: 64, offset: 1088)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3911, file: !2796, line: 289, baseType: !2834, size: 64, offset: 1152)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3911, file: !2796, line: 297, baseType: !49, size: 64, offset: 1216)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3911, file: !2796, line: 298, baseType: !49, size: 64, offset: 1280)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3911, file: !2796, line: 299, baseType: !49, size: 64, offset: 1344)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3911, file: !2796, line: 300, baseType: !49, size: 64, offset: 1408)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3911, file: !2796, line: 302, baseType: !94, size: 64, offset: 1472)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3911, file: !2796, line: 303, baseType: !25, size: 32, offset: 1536)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3911, file: !2796, line: 305, baseType: !2842, size: 160, offset: 1568)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !756, line: 91, baseType: !2822)
!3950 = !{!3951, !3952, !3953, !3954}
!3951 = !DILocalVariable(name: "fp", arg: 1, scope: !3905, file: !3906, line: 28, type: !3909)
!3952 = !DILocalVariable(name: "offset", arg: 2, scope: !3905, file: !3906, line: 28, type: !3949)
!3953 = !DILocalVariable(name: "whence", arg: 3, scope: !3905, file: !3906, line: 28, type: !25)
!3954 = !DILocalVariable(name: "pos", scope: !3955, file: !3906, line: 116, type: !3949)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !3906, line: 112, column: 5)
!3956 = distinct !DILexicalBlock(scope: !3905, file: !3906, line: 51, column: 7)
!3957 = !DILocation(line: 28, column: 15, scope: !3905)
!3958 = !DILocation(line: 28, column: 25, scope: !3905)
!3959 = !DILocation(line: 28, column: 37, scope: !3905)
!3960 = !DILocation(line: 51, column: 11, scope: !3956)
!3961 = !DILocation(line: 51, column: 31, scope: !3956)
!3962 = !DILocation(line: 51, column: 24, scope: !3956)
!3963 = !DILocation(line: 52, column: 7, scope: !3956)
!3964 = !DILocation(line: 52, column: 14, scope: !3965)
!3965 = !DILexicalBlockFile(scope: !3956, file: !3906, discriminator: 1)
!3966 = !{!3408, !598, i64 40}
!3967 = !DILocation(line: 52, column: 35, scope: !3965)
!3968 = !{!3408, !598, i64 32}
!3969 = !DILocation(line: 52, column: 28, scope: !3965)
!3970 = !DILocation(line: 53, column: 7, scope: !3956)
!3971 = !DILocation(line: 53, column: 14, scope: !3965)
!3972 = !{!3408, !598, i64 72}
!3973 = !DILocation(line: 53, column: 28, scope: !3965)
!3974 = !DILocation(line: 51, column: 7, scope: !3975)
!3975 = !DILexicalBlockFile(scope: !3905, file: !3906, discriminator: 1)
!3976 = !DILocation(line: 116, column: 26, scope: !3955)
!3977 = !DILocation(line: 116, column: 19, scope: !3978)
!3978 = !DILexicalBlockFile(scope: !3955, file: !3906, discriminator: 1)
!3979 = !DILocation(line: 116, column: 13, scope: !3955)
!3980 = !DILocation(line: 117, column: 15, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3955, file: !3906, line: 117, column: 11)
!3982 = !DILocation(line: 117, column: 11, scope: !3955)
!3983 = !DILocation(line: 127, column: 11, scope: !3955)
!3984 = !DILocation(line: 127, column: 18, scope: !3955)
!3985 = !DILocation(line: 128, column: 11, scope: !3955)
!3986 = !DILocation(line: 128, column: 19, scope: !3955)
!3987 = !{!3408, !2107, i64 144}
!3988 = !DILocation(line: 159, column: 7, scope: !3955)
!3989 = !DILocation(line: 161, column: 10, scope: !3905)
!3990 = !DILocation(line: 161, column: 3, scope: !3905)
!3991 = !DILocation(line: 162, column: 1, scope: !3905)
