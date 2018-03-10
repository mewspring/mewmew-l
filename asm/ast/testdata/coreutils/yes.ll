; ModuleID = 'coreutils-8.27/src/yes.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [STRING]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Repeatedly output a line with all specified STRING(s), or 'y'.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), align 8, !dbg !0
@.str.14 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.17 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.30, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.31, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.30 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.31 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.36 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.37 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.38 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.48, i32 0, i32 0), i8* null], align 16, !dbg !53
@.str.39 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.40 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.41 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.42 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.43 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.44 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.45 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.46 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.47 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.48 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.49 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.50 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.51 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.52 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.53 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
@.str.58 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.59 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.60 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.61 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.62 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.63 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.64 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.65 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.66 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.67 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.68 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.69 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.70 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.71 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.74 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.75 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.76 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.77 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.88 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.98 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.101 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.102 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.103 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.104 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.105 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.106 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.107 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !610 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !614, metadata !615), !dbg !616
  %2 = icmp eq i32 %0, 0, !dbg !617
  br i1 %2, label %8, label %3, !dbg !619

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !620, !tbaa !623
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !620
  %6 = load i8*, i8** @program_name, align 8, !dbg !620, !tbaa !623
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !627
  br label %36, !dbg !629

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !631
  %10 = load i8*, i8** @program_name, align 8, !dbg !631, !tbaa !623
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !633
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !635
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !623
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !636
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !637
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !623
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !638
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !639
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !639, !tbaa !623
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !640
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !514, metadata !615) #10, !dbg !641
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !514, metadata !615) #10, !dbg !641
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !643
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !644
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !646
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !525, metadata !615) #10, !dbg !647
  %24 = icmp eq i8* %23, null, !dbg !648
  br i1 %24, label %31, label %25, !dbg !649

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #13, !dbg !650
  %27 = icmp eq i32 %26, 0, !dbg !650
  br i1 %27, label %31, label %28, !dbg !652

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !654
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !656
  br label %31, !dbg !658

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !659
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !660
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !661
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !662
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #14, !dbg !663
  unreachable, !dbg !663
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !664 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !669, metadata !615), !dbg !690
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !670, metadata !615), !dbg !691
  %3 = load i8*, i8** %1, align 8, !dbg !692, !tbaa !623
  tail call void @set_program_name(i8* %3) #10, !dbg !693
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !694
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !695
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !696
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !697
  %8 = load i8*, i8** @Version, align 8, !dbg !698, !tbaa !623
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !699
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !700
  %10 = icmp eq i32 %9, -1, !dbg !702
  br i1 %10, label %12, label %11, !dbg !703

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #15, !dbg !704
  unreachable, !dbg !704

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !705, !tbaa !706
  %14 = sext i32 %13 to i64, !dbg !708
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !708
  tail call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !671, metadata !615), !dbg !709
  %16 = sext i32 %0 to i64, !dbg !710
  %17 = getelementptr inbounds i8*, i8** %1, i64 %16, !dbg !710
  tail call void @llvm.dbg.value(metadata i8** %17, i64 0, metadata !672, metadata !615), !dbg !711
  %18 = icmp eq i32 %13, %0, !dbg !712
  br i1 %18, label %19, label %21, !dbg !714

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !715
  tail call void @llvm.dbg.value(metadata i8** %20, i64 0, metadata !672, metadata !615), !dbg !711
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %17, align 8, !dbg !716, !tbaa !623
  br label %21, !dbg !717

; <label>:21:                                     ; preds = %19, %12
  %22 = phi i8** [ %20, %19 ], [ %17, %12 ]
  tail call void @llvm.dbg.value(metadata i8** %22, i64 0, metadata !672, metadata !615), !dbg !711
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !673, metadata !615), !dbg !718
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !674, metadata !615), !dbg !719
  tail call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !675, metadata !615), !dbg !720
  br label %23, !dbg !721

; <label>:23:                                     ; preds = %45, %21
  %24 = phi i8** [ %43, %45 ], [ %15, %21 ]
  %25 = phi i8 [ %50, %45 ], [ 1, %21 ]
  %26 = phi i64 [ %42, %45 ], [ 0, %21 ]
  br label %27, !dbg !718

; <label>:27:                                     ; preds = %23, %38
  %28 = phi i8** [ %43, %38 ], [ %24, %23 ]
  %29 = phi i64 [ %42, %38 ], [ %26, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !673, metadata !615), !dbg !718
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !674, metadata !615), !dbg !719
  tail call void @llvm.dbg.value(metadata i8** %28, i64 0, metadata !675, metadata !615), !dbg !720
  %30 = icmp ult i8** %28, %22, !dbg !722
  br i1 %30, label %38, label %31, !dbg !724

; <label>:31:                                     ; preds = %27
  %32 = icmp ult i64 %29, 4097, !dbg !726
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !673, metadata !615), !dbg !718
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !674, metadata !615), !dbg !719
  %33 = select i1 %32, i64 8192, i64 %29, !dbg !728
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !673, metadata !615), !dbg !718
  %34 = and i8 %25, 1, !dbg !729
  %35 = icmp ne i8 %34, 0, !dbg !729
  %36 = xor i1 %32, true, !dbg !729
  %37 = and i1 %35, %36, !dbg !729
  br i1 %37, label %51, label %53, !dbg !729

; <label>:38:                                     ; preds = %27
  %39 = load i8*, i8** %28, align 8, !dbg !730, !tbaa !623
  %40 = tail call i64 @strlen(i8* %39) #13, !dbg !731
  tail call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !677, metadata !615), !dbg !732
  %41 = add i64 %29, 1, !dbg !733
  %42 = add i64 %41, %40, !dbg !734
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !673, metadata !615), !dbg !718
  %43 = getelementptr inbounds i8*, i8** %28, i64 1, !dbg !735
  %44 = icmp ult i8** %43, %22, !dbg !737
  br i1 %44, label %45, label %27, !dbg !738, !llvm.loop !739

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds i8, i8* %39, i64 %40, !dbg !742
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !744
  %48 = load i8*, i8** %43, align 8, !dbg !745, !tbaa !623
  %49 = icmp eq i8* %47, %48, !dbg !746
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !674, metadata !615), !dbg !719
  %50 = select i1 %49, i8 %25, i8 0, !dbg !747
  br label %23, !dbg !747, !llvm.loop !739

; <label>:51:                                     ; preds = %31
  %52 = load i8*, i8** %15, align 8, !dbg !749, !tbaa !623
  br label %55, !dbg !751

; <label>:53:                                     ; preds = %31
  %54 = tail call noalias i8* @xmalloc(i64 %33) #10, !dbg !752
  br label %55, !dbg !754

; <label>:55:                                     ; preds = %53, %51
  %56 = phi i8* [ %52, %51 ], [ %54, %53 ], !dbg !755
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !680, metadata !615), !dbg !757
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !681, metadata !615), !dbg !758
  tail call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !682, metadata !615), !dbg !759
  tail call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !682, metadata !615), !dbg !759
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !681, metadata !615), !dbg !758
  %57 = icmp ult i8** %15, %22, !dbg !760
  br i1 %57, label %58, label %60, !dbg !762

; <label>:58:                                     ; preds = %55
  br label %88, !dbg !764

; <label>:59:                                     ; preds = %95
  br label %60, !dbg !765

; <label>:60:                                     ; preds = %59, %55
  %61 = phi i64 [ 0, %55 ], [ %97, %59 ]
  %62 = add i64 %61, -1, !dbg !765
  %63 = getelementptr inbounds i8, i8* %56, i64 %62, !dbg !766
  store i8 10, i8* %63, align 1, !dbg !767, !tbaa !768
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !687, metadata !615), !dbg !769
  %64 = udiv i64 %33, %61, !dbg !770
  tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !688, metadata !615), !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !688, metadata !615), !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !681, metadata !615), !dbg !758
  %65 = add i64 %64, -1, !dbg !772
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !688, metadata !615), !dbg !771
  %66 = icmp eq i64 %65, 0, !dbg !775
  br i1 %66, label %104, label %67, !dbg !775

; <label>:67:                                     ; preds = %60
  %68 = add i64 %64, -2, !dbg !777
  %69 = and i64 %65, 7, !dbg !777
  %70 = icmp eq i64 %69, 0, !dbg !777
  br i1 %70, label %82, label %71, !dbg !777

; <label>:71:                                     ; preds = %67
  br label %72, !dbg !777

; <label>:72:                                     ; preds = %72, %71
  %73 = phi i64 [ %78, %72 ], [ %65, %71 ]
  %74 = phi i64 [ %77, %72 ], [ %61, %71 ]
  %75 = phi i64 [ %79, %72 ], [ %69, %71 ]
  %76 = getelementptr inbounds i8, i8* %56, i64 %74, !dbg !777
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* %56, i64 %61, i32 1, i1 false), !dbg !779
  %77 = add i64 %74, %61, !dbg !780
  tail call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !681, metadata !615), !dbg !758
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !688, metadata !615), !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !681, metadata !615), !dbg !758
  %78 = add i64 %73, -1, !dbg !772
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !688, metadata !615), !dbg !771
  %79 = add i64 %75, -1, !dbg !775
  %80 = icmp eq i64 %79, 0, !dbg !775
  br i1 %80, label %81, label %72, !dbg !775, !llvm.loop !781

; <label>:81:                                     ; preds = %72
  br label %82, !dbg !777

; <label>:82:                                     ; preds = %67, %81
  %83 = phi i64 [ undef, %67 ], [ %77, %81 ]
  %84 = phi i64 [ %65, %67 ], [ %78, %81 ]
  %85 = phi i64 [ %61, %67 ], [ %77, %81 ]
  %86 = icmp ult i64 %68, 7, !dbg !777
  br i1 %86, label %102, label %87, !dbg !777

; <label>:87:                                     ; preds = %82
  br label %106, !dbg !777

; <label>:88:                                     ; preds = %58, %95
  %89 = phi i8** [ %99, %95 ], [ %15, %58 ]
  %90 = phi i64 [ %97, %95 ], [ 0, %58 ]
  %91 = load i8*, i8** %89, align 8, !dbg !764, !tbaa !623
  %92 = tail call i64 @strlen(i8* %91) #13, !dbg !783
  tail call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !684, metadata !615), !dbg !784
  br i1 %37, label %95, label %93, !dbg !785

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds i8, i8* %56, i64 %90, !dbg !786
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %91, i64 %92, i32 1, i1 false), !dbg !788
  br label %95, !dbg !788

; <label>:95:                                     ; preds = %93, %88
  %96 = add i64 %92, %90, !dbg !789
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !681, metadata !615), !dbg !758
  %97 = add i64 %96, 1, !dbg !790
  tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !681, metadata !615), !dbg !758
  %98 = getelementptr inbounds i8, i8* %56, i64 %96, !dbg !791
  store i8 32, i8* %98, align 1, !dbg !792, !tbaa !768
  %99 = getelementptr inbounds i8*, i8** %89, i64 1, !dbg !793
  tail call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !682, metadata !615), !dbg !759
  tail call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !682, metadata !615), !dbg !759
  tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !681, metadata !615), !dbg !758
  %100 = icmp ult i8** %99, %22, !dbg !760
  br i1 %100, label %88, label %59, !dbg !762, !llvm.loop !795

; <label>:101:                                    ; preds = %106
  br label %102, !dbg !798

; <label>:102:                                    ; preds = %82, %101
  %103 = phi i64 [ %83, %82 ], [ %124, %101 ]
  br label %104, !dbg !798

; <label>:104:                                    ; preds = %102, %60
  %105 = phi i64 [ %61, %60 ], [ %103, %102 ]
  br label %127, !dbg !798

; <label>:106:                                    ; preds = %106, %87
  %107 = phi i64 [ %84, %87 ], [ %125, %106 ]
  %108 = phi i64 [ %85, %87 ], [ %124, %106 ]
  %109 = getelementptr inbounds i8, i8* %56, i64 %108, !dbg !777
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %56, i64 %61, i32 1, i1 false), !dbg !779
  %110 = add i64 %108, %61, !dbg !780
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !688, metadata !615), !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  %111 = getelementptr inbounds i8, i8* %56, i64 %110, !dbg !777
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %56, i64 %61, i32 1, i1 false), !dbg !779
  %112 = add i64 %110, %61, !dbg !780
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !688, metadata !615), !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  %113 = getelementptr inbounds i8, i8* %56, i64 %112, !dbg !777
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %56, i64 %61, i32 1, i1 false), !dbg !779
  %114 = add i64 %112, %61, !dbg !780
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !688, metadata !615), !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  %115 = getelementptr inbounds i8, i8* %56, i64 %114, !dbg !777
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %56, i64 %61, i32 1, i1 false), !dbg !779
  %116 = add i64 %114, %61, !dbg !780
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !688, metadata !615), !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  %117 = getelementptr inbounds i8, i8* %56, i64 %116, !dbg !777
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %56, i64 %61, i32 1, i1 false), !dbg !779
  %118 = add i64 %116, %61, !dbg !780
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !688, metadata !615), !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  %119 = getelementptr inbounds i8, i8* %56, i64 %118, !dbg !777
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %56, i64 %61, i32 1, i1 false), !dbg !779
  %120 = add i64 %118, %61, !dbg !780
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !688, metadata !615), !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  %121 = getelementptr inbounds i8, i8* %56, i64 %120, !dbg !777
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %56, i64 %61, i32 1, i1 false), !dbg !779
  %122 = add i64 %120, %61, !dbg !780
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !688, metadata !615), !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  %123 = getelementptr inbounds i8, i8* %56, i64 %122, !dbg !777
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %56, i64 %61, i32 1, i1 false), !dbg !779
  %124 = add i64 %122, %61, !dbg !780
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  tail call void @llvm.dbg.value(metadata i64 %107, i64 0, metadata !688, metadata !615), !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !681, metadata !615), !dbg !758
  %125 = add i64 %107, -8, !dbg !772
  %126 = icmp eq i64 %125, 0, !dbg !775
  br i1 %126, label %101, label %106, !dbg !775, !llvm.loop !799

; <label>:127:                                    ; preds = %104, %127
  %128 = tail call i64 @full_write(i32 1, i8* %56, i64 %105) #10, !dbg !798
  %129 = icmp eq i64 %128, %105, !dbg !802
  br i1 %129, label %127, label %130, !dbg !803, !llvm.loop !804

; <label>:130:                                    ; preds = %127
  %131 = tail call i32* @__errno_location() #1, !dbg !807
  %132 = load i32, i32* %131, align 4, !dbg !807, !tbaa !706
  %133 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !808
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %132, i8* %133) #10, !dbg !809
  ret i32 1, !dbg !810
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
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !811 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !813, metadata !615), !dbg !814
  store i8* %0, i8** @file_name, align 8, !dbg !815, !tbaa !623
  ret void, !dbg !816
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !817 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !821, metadata !822), !dbg !823
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !824, !tbaa !825
  ret void, !dbg !827
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !828 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !835, !tbaa !623
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !836
  %3 = icmp eq i32 %2, 0, !dbg !837
  br i1 %3, label %21, label %4, !dbg !838

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !839, !tbaa !825, !range !841
  %6 = icmp eq i8 %5, 0, !dbg !839
  %7 = tail call i32* @__errno_location() #1, !dbg !842
  br i1 %6, label %11, label %8, !dbg !844

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !845, !tbaa !706
  %10 = icmp eq i32 %9, 32, !dbg !847
  br i1 %10, label %21, label %11, !dbg !848

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !850
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !832, metadata !615), !dbg !851
  %13 = load i8*, i8** @file_name, align 8, !dbg !852, !tbaa !623
  %14 = icmp eq i8* %13, null, !dbg !852
  %15 = load i32, i32* %7, align 4, !tbaa !706
  br i1 %14, label %18, label %16, !dbg !853

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !854
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.18, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !856
  br label %19, !dbg !858

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.19, i64 0, i64 0), i8* %12) #10, !dbg !859
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !860, !tbaa !706
  tail call void @_exit(i32 %20) #14, !dbg !861
  unreachable, !dbg !861

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !862, !tbaa !623
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !864
  %24 = icmp eq i32 %23, 0, !dbg !865
  br i1 %24, label %27, label %25, !dbg !866

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !867, !tbaa !706
  tail call void @_exit(i32 %26) #14, !dbg !868
  unreachable, !dbg !868

; <label>:27:                                     ; preds = %21
  ret void, !dbg !869
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i64 @full_write(i32, i8*, i64) local_unnamed_addr #6 !dbg !870 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !873, metadata !615), !dbg !880
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !874, metadata !615), !dbg !881
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !875, metadata !615), !dbg !882
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !876, metadata !615), !dbg !883
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !877, metadata !615), !dbg !884
  %4 = icmp eq i64 %2, 0, !dbg !885
  br i1 %4, label %20, label %5, !dbg !887

; <label>:5:                                      ; preds = %3
  br label %6, !dbg !882

; <label>:6:                                      ; preds = %5, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %5 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %5 ]
  %9 = phi i64 [ %16, %13 ], [ %2, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !875, metadata !615), !dbg !882
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !877, metadata !615), !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !876, metadata !615), !dbg !883
  %10 = tail call i64 @safe_write(i32 %0, i8* %8, i64 %9) #10, !dbg !888
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !878, metadata !615), !dbg !889
  switch i64 %10, label %13 [
    i64 -1, label %18
    i64 0, label %11
  ], !dbg !890

; <label>:11:                                     ; preds = %6
  %12 = tail call i32* @__errno_location() #1, !dbg !891
  store i32 28, i32* %12, align 4, !dbg !894, !tbaa !706
  br label %20, !dbg !895

; <label>:13:                                     ; preds = %6
  %14 = add i64 %10, %7, !dbg !896
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !876, metadata !615), !dbg !883
  %15 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !897
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !877, metadata !615), !dbg !884
  %16 = sub i64 %9, %10, !dbg !898
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !875, metadata !615), !dbg !882
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !875, metadata !615), !dbg !882
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !877, metadata !615), !dbg !884
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !876, metadata !615), !dbg !883
  %17 = icmp eq i64 %16, 0, !dbg !885
  br i1 %17, label %18, label %6, !llvm.loop !899

; <label>:18:                                     ; preds = %6, %13
  %19 = phi i64 [ %7, %6 ], [ %14, %13 ]
  br label %20, !dbg !883

; <label>:20:                                     ; preds = %18, %11, %3
  %21 = phi i64 [ 0, %3 ], [ %7, %11 ], [ %19, %18 ]
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !876, metadata !615), !dbg !883
  ret i64 %21, !dbg !902
}

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !903 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !908, metadata !615), !dbg !935
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !909, metadata !615), !dbg !936
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !910, metadata !615), !dbg !937
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !911, metadata !615), !dbg !938
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !912, metadata !615), !dbg !939
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !913, metadata !615), !dbg !940
  %8 = load i32, i32* @opterr, align 4, !dbg !941, !tbaa !706
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !915, metadata !615), !dbg !942
  store i32 0, i32* @opterr, align 4, !dbg !943, !tbaa !706
  %9 = icmp eq i32 %0, 2, !dbg !944
  br i1 %9, label %10, label %17, !dbg !945

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !946
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !914, metadata !615), !dbg !948
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !949

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !951
  br label %17, !dbg !952

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !953
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !916, metadata !615), !dbg !954
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !955
  call void @llvm.va_start(i8* nonnull %14), !dbg !955
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !956, !tbaa !623
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !957
  call void @exit(i32 0) #14, !dbg !958
  unreachable, !dbg !958

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !959, !tbaa !706
  store i32 0, i32* @optind, align 4, !dbg !960, !tbaa !706
  ret void, !dbg !961
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !962 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !964, metadata !615), !dbg !967
  %2 = icmp eq i8* %0, null, !dbg !968
  br i1 %2, label %3, label %6, !dbg !970

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !971, !tbaa !623
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !973
  tail call void @abort() #14, !dbg !974
  unreachable, !dbg !974

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !975
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !965, metadata !615), !dbg !976
  %8 = icmp ne i8* %7, null, !dbg !977
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !978
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !980
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !966, metadata !615), !dbg !981
  %11 = ptrtoint i8* %10 to i64, !dbg !982
  %12 = ptrtoint i8* %0 to i64, !dbg !982
  %13 = sub i64 %11, %12, !dbg !982
  %14 = icmp sgt i64 %13, 6, !dbg !984
  br i1 %14, label %15, label %24, !dbg !985

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !986
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.37, i64 0, i64 0), i64 7) #13, !dbg !986
  %18 = icmp eq i32 %17, 0, !dbg !988
  br i1 %18, label %19, label %24, !dbg !989

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !964, metadata !615), !dbg !967
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.38, i64 0, i64 0), i64 3) #13, !dbg !990
  %21 = icmp eq i32 %20, 0, !dbg !993
  br i1 %21, label %22, label %24, !dbg !994

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !995
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !964, metadata !615), !dbg !967
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !997, !tbaa !623
  br label %24, !dbg !998

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !964, metadata !615), !dbg !967
  store i8* %25, i8** @program_name, align 8, !dbg !999, !tbaa !623
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1000, !tbaa !623
  ret void, !dbg !1001
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1002 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1007, metadata !615), !dbg !1010
  %2 = tail call i32* @__errno_location() #1, !dbg !1011
  %3 = load i32, i32* %2, align 4, !dbg !1011, !tbaa !706
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1008, metadata !615), !dbg !1012
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1013
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1014
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1014
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1016
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1016
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1009, metadata !615), !dbg !1017
  store i32 %3, i32* %2, align 4, !dbg !1018, !tbaa !706
  ret %struct.quoting_options* %8, !dbg !1019
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1020 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1026, metadata !615), !dbg !1027
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1028
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1028
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1029
  %5 = load i32, i32* %4, align 8, !dbg !1029, !tbaa !1031
  ret i32 %5, !dbg !1033
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1034 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1038, metadata !615), !dbg !1040
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1039, metadata !615), !dbg !1041
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1042
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1042
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1043
  store i32 %1, i32* %5, align 8, !dbg !1045, !tbaa !1031
  ret void, !dbg !1046
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1047 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1051, metadata !615), !dbg !1059
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1052, metadata !615), !dbg !1060
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1053, metadata !615), !dbg !1061
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1054, metadata !615), !dbg !1062
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1063
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1063
  %6 = lshr i8 %1, 5, !dbg !1064
  %7 = zext i8 %6 to i64, !dbg !1064
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1066
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1055, metadata !615), !dbg !1067
  %9 = and i8 %1, 31, !dbg !1068
  %10 = zext i8 %9 to i32, !dbg !1069
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1057, metadata !615), !dbg !1070
  %11 = load i32, i32* %8, align 4, !dbg !1071, !tbaa !706
  %12 = lshr i32 %11, %10, !dbg !1072
  %13 = and i32 %12, 1, !dbg !1073
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1058, metadata !615), !dbg !1074
  %14 = and i32 %2, 1, !dbg !1075
  %15 = xor i32 %13, %14, !dbg !1076
  %16 = shl i32 %15, %10, !dbg !1077
  %17 = xor i32 %16, %11, !dbg !1078
  store i32 %17, i32* %8, align 4, !dbg !1078, !tbaa !706
  ret i32 %13, !dbg !1079
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1080 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1084, metadata !615), !dbg !1087
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1085, metadata !615), !dbg !1088
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1084, metadata !615), !dbg !1087
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1091
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1084, metadata !615), !dbg !1087
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1092
  %6 = load i32, i32* %5, align 4, !dbg !1092, !tbaa !1093
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1086, metadata !615), !dbg !1094
  store i32 %1, i32* %5, align 4, !dbg !1095, !tbaa !1093
  ret i32 %6, !dbg !1096
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1097 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1101, metadata !615), !dbg !1104
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1102, metadata !615), !dbg !1105
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1103, metadata !615), !dbg !1106
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1107
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1101, metadata !615), !dbg !1104
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1109
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1101, metadata !615), !dbg !1104
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1110
  store i32 10, i32* %6, align 8, !dbg !1111, !tbaa !1031
  %7 = icmp ne i8* %1, null, !dbg !1112
  %8 = icmp ne i8* %2, null, !dbg !1114
  %9 = and i1 %7, %8, !dbg !1116
  br i1 %9, label %11, label %10, !dbg !1116

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1117
  unreachable, !dbg !1117

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1118
  store i8* %1, i8** %12, align 8, !dbg !1119, !tbaa !1120
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1121
  store i8* %2, i8** %13, align 8, !dbg !1122, !tbaa !1123
  ret void, !dbg !1124
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1125 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1129, metadata !615), !dbg !1137
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1130, metadata !615), !dbg !1138
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1131, metadata !615), !dbg !1139
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1132, metadata !615), !dbg !1140
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1133, metadata !615), !dbg !1141
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1142
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1142
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1134, metadata !615), !dbg !1143
  %8 = tail call i32* @__errno_location() #1, !dbg !1144
  %9 = load i32, i32* %8, align 4, !dbg !1144, !tbaa !706
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1135, metadata !615), !dbg !1145
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1146
  %11 = load i32, i32* %10, align 8, !dbg !1146, !tbaa !1031
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1147
  %13 = load i32, i32* %12, align 4, !dbg !1147, !tbaa !1093
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1148
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1149
  %16 = load i8*, i8** %15, align 8, !dbg !1149, !tbaa !1120
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1150
  %18 = load i8*, i8** %17, align 8, !dbg !1150, !tbaa !1123
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1151
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1136, metadata !615), !dbg !1152
  store i32 %9, i32* %8, align 4, !dbg !1153, !tbaa !706
  ret i64 %19, !dbg !1154
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1155 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1161, metadata !615), !dbg !1224
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1162, metadata !615), !dbg !1225
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1163, metadata !615), !dbg !1226
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1164, metadata !615), !dbg !1227
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1165, metadata !615), !dbg !1228
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1166, metadata !615), !dbg !1229
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1167, metadata !615), !dbg !1230
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1168, metadata !615), !dbg !1231
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1169, metadata !615), !dbg !1232
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1171, metadata !615), !dbg !1233
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1172, metadata !615), !dbg !1234
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1173, metadata !615), !dbg !1235
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1174, metadata !615), !dbg !1236
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1175, metadata !615), !dbg !1237
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1238
  %14 = icmp eq i64 %13, 1, !dbg !1239
  %15 = lshr i32 %5, 1, !dbg !1240
  %16 = trunc i32 %15 to i8, !dbg !1240
  %17 = and i8 %16, 1, !dbg !1240
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1177, metadata !615), !dbg !1240
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1178, metadata !615), !dbg !1241
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1179, metadata !615), !dbg !1242
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1180, metadata !615), !dbg !1243
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1244

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1162, metadata !615), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1180, metadata !615), !dbg !1243
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1179, metadata !615), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1177, metadata !615), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1164, metadata !615), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1175, metadata !615), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1174, metadata !615), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1173, metadata !615), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1172, metadata !615), !dbg !1234
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1169, metadata !615), !dbg !1232
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1168, metadata !615), !dbg !1231
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1165, metadata !615), !dbg !1228
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
  ], !dbg !1245

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1165, metadata !615), !dbg !1228
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1177, metadata !615), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1177, metadata !615), !dbg !1240
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1165, metadata !615), !dbg !1228
  br label %95, !dbg !1246

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1177, metadata !615), !dbg !1240
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1165, metadata !615), !dbg !1228
  %43 = and i8 %36, 1, !dbg !1248
  %44 = icmp eq i8 %43, 0, !dbg !1248
  br i1 %44, label %45, label %95, !dbg !1246

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1250
  br i1 %46, label %95, label %47, !dbg !1254

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1256, !tbaa !768
  br label %95, !dbg !1256

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.49, i64 0, i64 0), i32 %28), !dbg !1258
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1168, metadata !615), !dbg !1231
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), i32 %28), !dbg !1262
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1169, metadata !615), !dbg !1232
  br label %51, !dbg !1263

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1169, metadata !615), !dbg !1232
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1168, metadata !615), !dbg !1231
  %54 = and i8 %36, 1, !dbg !1264
  %55 = icmp eq i8 %54, 0, !dbg !1264
  br i1 %55, label %56, label %73, !dbg !1266

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1173, metadata !615), !dbg !1235
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1171, metadata !615), !dbg !1233
  %57 = load i8, i8* %52, align 1, !dbg !1267, !tbaa !768
  %58 = icmp eq i8 %57, 0, !dbg !1271
  br i1 %58, label %73, label %59, !dbg !1271

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1273

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1273
  br i1 %64, label %65, label %67, !dbg !1277

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1279
  store i8 %61, i8* %66, align 1, !dbg !1279, !tbaa !768
  br label %67, !dbg !1279

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1171, metadata !615), !dbg !1233
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1283
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1173, metadata !615), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1173, metadata !615), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1171, metadata !615), !dbg !1233
  %70 = load i8, i8* %69, align 1, !dbg !1267, !tbaa !768
  %71 = icmp eq i8 %70, 0, !dbg !1271
  br i1 %71, label %72, label %60, !dbg !1271, !llvm.loop !1285

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1233

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1175, metadata !615), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1173, metadata !615), !dbg !1235
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1174, metadata !615), !dbg !1236
  br label %95, !dbg !1289

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1175, metadata !615), !dbg !1237
  br label %77, !dbg !1290

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1175, metadata !615), !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1177, metadata !615), !dbg !1240
  br label %79, !dbg !1291

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1177, metadata !615), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1175, metadata !615), !dbg !1237
  %82 = and i8 %81, 1, !dbg !1292
  %83 = icmp eq i8 %82, 0, !dbg !1292
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1175, metadata !615), !dbg !1237
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1294
  br label %85, !dbg !1294

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1177, metadata !615), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1175, metadata !615), !dbg !1237
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1165, metadata !615), !dbg !1228
  %88 = and i8 %87, 1, !dbg !1295
  %89 = icmp eq i8 %88, 0, !dbg !1295
  br i1 %89, label %90, label %95, !dbg !1297

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1298
  br i1 %91, label %95, label %92, !dbg !1302

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1304, !tbaa !768
  br label %95, !dbg !1304

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1177, metadata !615), !dbg !1240
  br label %95, !dbg !1306

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1307
  unreachable, !dbg !1307

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1177, metadata !615), !dbg !1240
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1175, metadata !615), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1174, metadata !615), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1173, metadata !615), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1169, metadata !615), !dbg !1232
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1168, metadata !615), !dbg !1231
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1165, metadata !615), !dbg !1228
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1170, metadata !615), !dbg !1308
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
  br label %123, !dbg !1309

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1162, metadata !615), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1180, metadata !615), !dbg !1243
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1179, metadata !615), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1164, metadata !615), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1172, metadata !615), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1170, metadata !615), !dbg !1308
  %132 = icmp eq i64 %127, -1, !dbg !1310
  br i1 %132, label %135, label %133, !dbg !1312

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1313
  br i1 %134, label %597, label %139, !dbg !1315

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1317
  %137 = load i8, i8* %136, align 1, !dbg !1317, !tbaa !768
  %138 = icmp eq i8 %137, 0, !dbg !1319
  br i1 %138, label %597, label %139, !dbg !1315

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1186, metadata !615), !dbg !1320
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1187, metadata !615), !dbg !1321
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1188, metadata !615), !dbg !1322
  br i1 %109, label %140, label %155, !dbg !1323

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1325
  %142 = and i1 %110, %132, !dbg !1327
  br i1 %142, label %143, label %145, !dbg !1327

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1164, metadata !615), !dbg !1227
  br label %145, !dbg !1329

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1164, metadata !615), !dbg !1227
  %147 = icmp ugt i64 %141, %146, !dbg !1331
  br i1 %147, label %155, label %148, !dbg !1333

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1334
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1335
  %151 = icmp ne i32 %150, 0, !dbg !1336
  %152 = or i1 %151, %112, !dbg !1336
  %153 = xor i1 %151, true, !dbg !1336
  %154 = zext i1 %153 to i8, !dbg !1336
  br i1 %152, label %155, label %644, !dbg !1336

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1186, metadata !615), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1164, metadata !615), !dbg !1227
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1338
  %159 = load i8, i8* %158, align 1, !dbg !1338, !tbaa !768
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1181, metadata !615), !dbg !1339
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
  ], !dbg !1340

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1341

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1342

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1187, metadata !615), !dbg !1321
  %163 = and i8 %128, 1, !dbg !1347
  %164 = icmp eq i8 %163, 0, !dbg !1347
  %165 = and i1 %114, %164, !dbg !1350
  br i1 %165, label %166, label %182, !dbg !1350

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1352
  br i1 %167, label %168, label %170, !dbg !1357

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1359
  store i8 39, i8* %169, align 1, !dbg !1359, !tbaa !768
  br label %170, !dbg !1359

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1171, metadata !615), !dbg !1233
  %172 = icmp ult i64 %171, %131, !dbg !1363
  br i1 %172, label %173, label %175, !dbg !1367

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1369
  store i8 36, i8* %174, align 1, !dbg !1369, !tbaa !768
  br label %175, !dbg !1369

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1171, metadata !615), !dbg !1233
  %177 = icmp ult i64 %176, %131, !dbg !1373
  br i1 %177, label %178, label %180, !dbg !1377

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1379
  store i8 39, i8* %179, align 1, !dbg !1379, !tbaa !768
  br label %180, !dbg !1379

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1178, metadata !615), !dbg !1241
  br label %182, !dbg !1383

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1171, metadata !615), !dbg !1233
  %185 = icmp ult i64 %183, %131, !dbg !1385
  br i1 %185, label %186, label %188, !dbg !1389

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1391
  store i8 92, i8* %187, align 1, !dbg !1391, !tbaa !768
  br label %188, !dbg !1391

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1171, metadata !615), !dbg !1233
  br i1 %106, label %190, label %476, !dbg !1395

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1397
  %192 = icmp ult i64 %191, %156, !dbg !1399
  br i1 %192, label %193, label %476, !dbg !1400

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1401
  %195 = load i8, i8* %194, align 1, !dbg !1401, !tbaa !768
  %196 = add i8 %195, -48, !dbg !1403
  %197 = icmp ult i8 %196, 10, !dbg !1403
  br i1 %197, label %198, label %476, !dbg !1403

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1404
  br i1 %199, label %200, label %202, !dbg !1409

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1411
  store i8 48, i8* %201, align 1, !dbg !1411, !tbaa !768
  br label %202, !dbg !1411

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1171, metadata !615), !dbg !1233
  %204 = icmp ult i64 %203, %131, !dbg !1415
  br i1 %204, label %205, label %207, !dbg !1419

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1421
  store i8 48, i8* %206, align 1, !dbg !1421, !tbaa !768
  br label %207, !dbg !1421

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1171, metadata !615), !dbg !1233
  br label %476, !dbg !1425

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1426

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1427

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1428

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1430

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1432
  %215 = icmp ult i64 %214, %156, !dbg !1434
  br i1 %215, label %216, label %476, !dbg !1435

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1436
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1438
  %219 = load i8, i8* %218, align 1, !dbg !1438, !tbaa !768
  %220 = icmp eq i8 %219, 63, !dbg !1439
  br i1 %220, label %221, label %476, !dbg !1440

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1442
  %223 = load i8, i8* %222, align 1, !dbg !1442, !tbaa !768
  %224 = sext i8 %223 to i32, !dbg !1442
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
  ], !dbg !1443

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1444

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1181, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1170, metadata !615), !dbg !1308
  %227 = icmp ult i64 %125, %131, !dbg !1446
  br i1 %227, label %228, label %230, !dbg !1450

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1452
  store i8 63, i8* %229, align 1, !dbg !1452, !tbaa !768
  br label %230, !dbg !1452

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1171, metadata !615), !dbg !1233
  %232 = icmp ult i64 %231, %131, !dbg !1456
  br i1 %232, label %233, label %235, !dbg !1460

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1462
  store i8 34, i8* %234, align 1, !dbg !1462, !tbaa !768
  br label %235, !dbg !1462

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1171, metadata !615), !dbg !1233
  %237 = icmp ult i64 %236, %131, !dbg !1466
  br i1 %237, label %238, label %240, !dbg !1470

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1472
  store i8 34, i8* %239, align 1, !dbg !1472, !tbaa !768
  br label %240, !dbg !1472

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1171, metadata !615), !dbg !1233
  %242 = icmp ult i64 %241, %131, !dbg !1476
  br i1 %242, label %243, label %245, !dbg !1480

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1482
  store i8 63, i8* %244, align 1, !dbg !1482, !tbaa !768
  br label %245, !dbg !1482

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1171, metadata !615), !dbg !1233
  br label %476, !dbg !1486

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1185, metadata !615), !dbg !1487
  br label %257, !dbg !1488

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1185, metadata !615), !dbg !1487
  br label %257, !dbg !1489

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1185, metadata !615), !dbg !1487
  br label %255, !dbg !1490

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1185, metadata !615), !dbg !1487
  br label %255, !dbg !1491

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1185, metadata !615), !dbg !1487
  br label %257, !dbg !1492

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1185, metadata !615), !dbg !1487
  br i1 %114, label %253, label %254, !dbg !1493

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1494

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1497

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1185, metadata !615), !dbg !1487
  br i1 %118, label %257, label %644, !dbg !1499

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1185, metadata !615), !dbg !1487
  br i1 %105, label %503, label %476, !dbg !1501

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1502
  br i1 %260, label %261, label %266, !dbg !1504

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1505, !tbaa !768
  %263 = icmp ne i8 %262, 0, !dbg !1507
  %264 = icmp ne i64 %124, 0, !dbg !1508
  %265 = or i1 %264, %263, !dbg !1510
  br i1 %265, label %476, label %272, !dbg !1510

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1511
  %268 = icmp ne i64 %124, 0, !dbg !1508
  %269 = or i1 %268, %267, !dbg !1513
  br i1 %269, label %476, label %272, !dbg !1513

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1508
  br i1 %271, label %272, label %476, !dbg !1515

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1188, metadata !615), !dbg !1322
  br label %273, !dbg !1516

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1188, metadata !615), !dbg !1322
  br i1 %118, label %476, label %644, !dbg !1517

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1179, metadata !615), !dbg !1242
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1188, metadata !615), !dbg !1322
  br i1 %114, label %276, label %476, !dbg !1519

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1520

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1523
  %279 = icmp ne i64 %126, 0, !dbg !1525
  %280 = or i1 %279, %278, !dbg !1527
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1172, metadata !615), !dbg !1234
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1162, metadata !615), !dbg !1225
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1527
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1527
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1162, metadata !615), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1172, metadata !615), !dbg !1234
  %283 = icmp ult i64 %125, %282, !dbg !1528
  br i1 %283, label %284, label %286, !dbg !1532

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1534
  store i8 39, i8* %285, align 1, !dbg !1534, !tbaa !768
  br label %286, !dbg !1534

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1171, metadata !615), !dbg !1233
  %288 = icmp ult i64 %287, %282, !dbg !1538
  br i1 %288, label %289, label %291, !dbg !1542

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1544
  store i8 92, i8* %290, align 1, !dbg !1544, !tbaa !768
  br label %291, !dbg !1544

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1171, metadata !615), !dbg !1233
  %293 = icmp ult i64 %292, %282, !dbg !1548
  br i1 %293, label %294, label %296, !dbg !1552

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1554
  store i8 39, i8* %295, align 1, !dbg !1554, !tbaa !768
  br label %296, !dbg !1554

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1178, metadata !615), !dbg !1241
  br label %476, !dbg !1558

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1559

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1189, metadata !615), !dbg !1560
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1561
  %301 = load i16*, i16** %300, align 8, !dbg !1561, !tbaa !623
  %302 = zext i8 %159 to i64, !dbg !1561
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1561
  %304 = load i16, i16* %303, align 2, !dbg !1561, !tbaa !1563
  %305 = lshr i16 %304, 14, !dbg !1565
  %306 = trunc i16 %305 to i8, !dbg !1565
  %307 = and i8 %306, 1, !dbg !1565
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1192, metadata !615), !dbg !1566
  br label %368, !dbg !1567

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1568
  store i64 0, i64* %10, align 8, !dbg !1569
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1189, metadata !615), !dbg !1560
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1192, metadata !615), !dbg !1566
  %309 = icmp eq i64 %156, -1, !dbg !1570
  br i1 %309, label %310, label %312, !dbg !1572, !llvm.loop !1573

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1164, metadata !615), !dbg !1227
  br label %312, !dbg !1577, !llvm.loop !1573

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1566

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1192, metadata !615), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1189, metadata !615), !dbg !1560
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1164, metadata !615), !dbg !1227
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1578
  %317 = add i64 %315, %124, !dbg !1579
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1580
  %319 = sub i64 %313, %317, !dbg !1581
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1193, metadata !1582), !dbg !1583
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1210, metadata !1582), !dbg !1584
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1213, metadata !615), !dbg !1586
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1587

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1189, metadata !615), !dbg !1560
  %322 = icmp ugt i64 %313, %317, !dbg !1588
  br i1 %322, label %323, label %351, !dbg !1591

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1592

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1592
  %328 = load i8, i8* %327, align 1, !dbg !1592, !tbaa !768
  %329 = icmp eq i8 %328, 0, !dbg !1594
  br i1 %329, label %348, label %330, !dbg !1595

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1189, metadata !615), !dbg !1560
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1189, metadata !615), !dbg !1560
  %332 = add i64 %331, %124, !dbg !1598
  %333 = icmp ult i64 %332, %313, !dbg !1588
  br i1 %333, label %324, label %348, !dbg !1591, !llvm.loop !1599

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1601
  %336 = and i1 %116, %335, !dbg !1605
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1214, metadata !615), !dbg !1606
  br i1 %336, label %337, label %355, !dbg !1605

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1607

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1607
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1608
  %342 = load i8, i8* %341, align 1, !dbg !1608, !tbaa !768
  %343 = sext i8 %342 to i32, !dbg !1608
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1609

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1610
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1214, metadata !615), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1214, metadata !615), !dbg !1606
  %346 = icmp ult i64 %345, %320, !dbg !1601
  br i1 %346, label %338, label %354, !dbg !1612, !llvm.loop !1614

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1566

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1566

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1566

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1192, metadata !615), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1189, metadata !615), !dbg !1560
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1617
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1618

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1618, !tbaa !706
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1210, metadata !615), !dbg !1584
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1620
  %358 = icmp eq i32 %357, 0, !dbg !1620
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1192, metadata !615), !dbg !1566
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1621
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1192, metadata !615), !dbg !1566
  %360 = add i64 %320, %315, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1189, metadata !615), !dbg !1560
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1192, metadata !615), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1189, metadata !615), !dbg !1560
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1617
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1193, metadata !1582), !dbg !1583
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1623
  %362 = icmp eq i32 %361, 0, !dbg !1624
  br i1 %362, label %314, label %363, !dbg !1625, !llvm.loop !1573

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1627

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1627
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1192, metadata !615), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1189, metadata !615), !dbg !1560
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1617
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1627
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1192, metadata !615), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1189, metadata !615), !dbg !1560
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1164, metadata !615), !dbg !1227
  %372 = and i8 %371, 1, !dbg !1628
  %373 = icmp ne i8 %372, 0, !dbg !1628
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1188, metadata !615), !dbg !1322
  %374 = icmp ult i64 %370, 2, !dbg !1629
  %375 = or i1 %373, %113, !dbg !1630
  %376 = and i1 %374, %375, !dbg !1632
  br i1 %376, label %476, label %377, !dbg !1632

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1221, metadata !615), !dbg !1634
  br label %379, !dbg !1635

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1187, metadata !615), !dbg !1321
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1186, metadata !615), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1181, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1170, metadata !615), !dbg !1308
  br i1 %375, label %432, label %386, !dbg !1636

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1641

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1187, metadata !615), !dbg !1321
  %388 = and i8 %382, 1, !dbg !1645
  %389 = icmp eq i8 %388, 0, !dbg !1645
  %390 = and i1 %114, %389, !dbg !1648
  br i1 %390, label %391, label %407, !dbg !1648

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1650
  br i1 %392, label %393, label %395, !dbg !1655

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1657
  store i8 39, i8* %394, align 1, !dbg !1657, !tbaa !768
  br label %395, !dbg !1657

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1171, metadata !615), !dbg !1233
  %397 = icmp ult i64 %396, %131, !dbg !1661
  br i1 %397, label %398, label %400, !dbg !1665

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1667
  store i8 36, i8* %399, align 1, !dbg !1667, !tbaa !768
  br label %400, !dbg !1667

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1171, metadata !615), !dbg !1233
  %402 = icmp ult i64 %401, %131, !dbg !1671
  br i1 %402, label %403, label %405, !dbg !1675

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1677
  store i8 39, i8* %404, align 1, !dbg !1677, !tbaa !768
  br label %405, !dbg !1677

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1178, metadata !615), !dbg !1241
  br label %407, !dbg !1681

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1171, metadata !615), !dbg !1233
  %410 = icmp ult i64 %408, %131, !dbg !1683
  br i1 %410, label %411, label %413, !dbg !1687

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1689
  store i8 92, i8* %412, align 1, !dbg !1689, !tbaa !768
  br label %413, !dbg !1689

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1171, metadata !615), !dbg !1233
  %415 = icmp ult i64 %414, %131, !dbg !1693
  br i1 %415, label %416, label %420, !dbg !1697

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1699
  %418 = or i8 %417, 48, !dbg !1699
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1699
  store i8 %418, i8* %419, align 1, !dbg !1699, !tbaa !768
  br label %420, !dbg !1699

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1171, metadata !615), !dbg !1233
  %422 = icmp ult i64 %421, %131, !dbg !1703
  br i1 %422, label %423, label %428, !dbg !1707

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1709
  %425 = and i8 %424, 7, !dbg !1709
  %426 = or i8 %425, 48, !dbg !1709
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1709
  store i8 %426, i8* %427, align 1, !dbg !1709, !tbaa !768
  br label %428, !dbg !1709

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1171, metadata !615), !dbg !1233
  %430 = and i8 %383, 7, !dbg !1713
  %431 = or i8 %430, 48, !dbg !1714
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1181, metadata !615), !dbg !1339
  br label %441, !dbg !1715

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1716
  %434 = icmp eq i8 %433, 0, !dbg !1716
  br i1 %434, label %441, label %435, !dbg !1718

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1719
  br i1 %436, label %437, label %439, !dbg !1724

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1726
  store i8 92, i8* %438, align 1, !dbg !1726, !tbaa !768
  br label %439, !dbg !1726

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1186, metadata !615), !dbg !1320
  br label %441, !dbg !1730

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1187, metadata !615), !dbg !1321
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1186, metadata !615), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1181, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1171, metadata !615), !dbg !1233
  %447 = add i64 %380, 1, !dbg !1731
  %448 = icmp ugt i64 %378, %447, !dbg !1733
  br i1 %448, label %449, label %541, !dbg !1734

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1735
  %451 = icmp ne i8 %450, 0, !dbg !1735
  %452 = and i8 %446, 1, !dbg !1739
  %453 = icmp eq i8 %452, 0, !dbg !1739
  %454 = and i1 %451, %453, !dbg !1735
  br i1 %454, label %455, label %466, !dbg !1735

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1741
  br i1 %456, label %457, label %459, !dbg !1746

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1748
  store i8 39, i8* %458, align 1, !dbg !1748, !tbaa !768
  br label %459, !dbg !1748

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1171, metadata !615), !dbg !1233
  %461 = icmp ult i64 %460, %131, !dbg !1752
  br i1 %461, label %462, label %464, !dbg !1756

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1758
  store i8 39, i8* %463, align 1, !dbg !1758, !tbaa !768
  br label %464, !dbg !1758

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1178, metadata !615), !dbg !1241
  br label %466, !dbg !1762

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1171, metadata !615), !dbg !1233
  %469 = icmp ult i64 %467, %131, !dbg !1764
  br i1 %469, label %470, label %472, !dbg !1768

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1770
  store i8 %444, i8* %471, align 1, !dbg !1770, !tbaa !768
  br label %472, !dbg !1770

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1170, metadata !615), !dbg !1308
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1774
  %475 = load i8, i8* %474, align 1, !dbg !1774, !tbaa !768
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1181, metadata !615), !dbg !1339
  br label %379, !dbg !1775, !llvm.loop !1777

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1162, metadata !615), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1188, metadata !615), !dbg !1322
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1187, metadata !615), !dbg !1321
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1186, metadata !615), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1181, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1179, metadata !615), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1164, metadata !615), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1172, metadata !615), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1170, metadata !615), !dbg !1308
  br i1 %107, label %488, label %487, !dbg !1780

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1782

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1783

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1784
  %491 = zext i8 %490 to i64, !dbg !1784
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1786
  %493 = load i32, i32* %492, align 4, !dbg !1786, !tbaa !706
  %494 = and i8 %483, 31, !dbg !1787
  %495 = zext i8 %494 to i32, !dbg !1788
  %496 = shl i32 1, %495, !dbg !1789
  %497 = and i32 %493, %496, !dbg !1789
  %498 = icmp eq i32 %497, 0, !dbg !1789
  %499 = icmp eq i8 %157, 0, !dbg !1790
  %500 = and i1 %499, %498, !dbg !1791
  br i1 %500, label %542, label %503, !dbg !1791

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1790
  br i1 %502, label %542, label %503, !dbg !1792

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1162, metadata !615), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1188, metadata !615), !dbg !1322
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1181, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1179, metadata !615), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1164, metadata !615), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1172, metadata !615), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1170, metadata !615), !dbg !1308
  br i1 %112, label %513, label %644, !dbg !1794

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1187, metadata !615), !dbg !1321
  %514 = and i8 %508, 1, !dbg !1797
  %515 = icmp eq i8 %514, 0, !dbg !1797
  %516 = and i1 %114, %515, !dbg !1800
  br i1 %516, label %517, label %533, !dbg !1800

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1802
  br i1 %518, label %519, label %521, !dbg !1807

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1809
  store i8 39, i8* %520, align 1, !dbg !1809, !tbaa !768
  br label %521, !dbg !1809

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1171, metadata !615), !dbg !1233
  %523 = icmp ult i64 %522, %512, !dbg !1813
  br i1 %523, label %524, label %526, !dbg !1817

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1819
  store i8 36, i8* %525, align 1, !dbg !1819, !tbaa !768
  br label %526, !dbg !1819

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1171, metadata !615), !dbg !1233
  %528 = icmp ult i64 %527, %512, !dbg !1823
  br i1 %528, label %529, label %531, !dbg !1827

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1829
  store i8 39, i8* %530, align 1, !dbg !1829, !tbaa !768
  br label %531, !dbg !1829

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1178, metadata !615), !dbg !1241
  br label %533, !dbg !1833

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1171, metadata !615), !dbg !1233
  %536 = icmp ult i64 %534, %512, !dbg !1835
  br i1 %536, label %537, label %539, !dbg !1839

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1841
  store i8 92, i8* %538, align 1, !dbg !1841, !tbaa !768
  br label %539, !dbg !1841

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1162, metadata !615), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1188, metadata !615), !dbg !1322
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1187, metadata !615), !dbg !1321
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1181, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1179, metadata !615), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1164, metadata !615), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1172, metadata !615), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1170, metadata !615), !dbg !1308
  br label %569, !dbg !1845

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1225

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1162, metadata !615), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1188, metadata !615), !dbg !1322
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1187, metadata !615), !dbg !1321
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1181, metadata !615), !dbg !1339
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1179, metadata !615), !dbg !1242
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1164, metadata !615), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1172, metadata !615), !dbg !1234
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1170, metadata !615), !dbg !1308
  %553 = and i8 %547, 1, !dbg !1845
  %554 = icmp ne i8 %553, 0, !dbg !1845
  %555 = and i8 %550, 1, !dbg !1849
  %556 = icmp eq i8 %555, 0, !dbg !1849
  %557 = and i1 %554, %556, !dbg !1845
  br i1 %557, label %558, label %569, !dbg !1845

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1851
  br i1 %559, label %560, label %562, !dbg !1856

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1858
  store i8 39, i8* %561, align 1, !dbg !1858, !tbaa !768
  br label %562, !dbg !1858

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1171, metadata !615), !dbg !1233
  %564 = icmp ult i64 %563, %552, !dbg !1862
  br i1 %564, label %565, label %567, !dbg !1866

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1868
  store i8 39, i8* %566, align 1, !dbg !1868, !tbaa !768
  br label %567, !dbg !1868

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1171, metadata !615), !dbg !1233
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1178, metadata !615), !dbg !1241
  br label %569, !dbg !1872

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1178, metadata !615), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1171, metadata !615), !dbg !1233
  %579 = icmp ult i64 %577, %570, !dbg !1874
  br i1 %579, label %580, label %582, !dbg !1878

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1880
  store i8 %572, i8* %581, align 1, !dbg !1880, !tbaa !768
  br label %582, !dbg !1880

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1171, metadata !615), !dbg !1233
  %584 = and i8 %571, 1, !dbg !1884
  %585 = icmp eq i8 %584, 0, !dbg !1884
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1180, metadata !615), !dbg !1243
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1886
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1180, metadata !615), !dbg !1243
  br label %587, !dbg !1887

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1170, metadata !615), !dbg !1308
  br label %123, !dbg !1890, !llvm.loop !1891

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1894
  %600 = and i1 %114, %599, !dbg !1896
  %601 = xor i1 %600, true, !dbg !1896
  %602 = or i1 %112, %601, !dbg !1896
  br i1 %602, label %603, label %648, !dbg !1896

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1897
  %605 = xor i1 %604, true, !dbg !1897
  %606 = and i8 %129, 1, !dbg !1899
  %607 = icmp eq i8 %606, 0, !dbg !1899
  %608 = or i1 %607, %605, !dbg !1897
  br i1 %608, label %618, label %609, !dbg !1897

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1901
  %611 = icmp eq i8 %610, 0, !dbg !1901
  br i1 %611, label %614, label %612, !dbg !1904

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1905
  br label %659, !dbg !1906

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1907
  %616 = icmp ne i64 %126, 0, !dbg !1909
  %617 = and i1 %616, %615, !dbg !1911
  br i1 %617, label %27, label %618, !dbg !1911

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1912
  %620 = and i1 %619, %112, !dbg !1914
  br i1 %620, label %621, label %638, !dbg !1914

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1173, metadata !615), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1171, metadata !615), !dbg !1233
  %622 = load i8, i8* %100, align 1, !dbg !1915, !tbaa !768
  %623 = icmp eq i8 %622, 0, !dbg !1919
  br i1 %623, label %638, label %624, !dbg !1919

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1921

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1921
  br i1 %629, label %630, label %632, !dbg !1925

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1927
  store i8 %626, i8* %631, align 1, !dbg !1927, !tbaa !768
  br label %632, !dbg !1927

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1171, metadata !615), !dbg !1233
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1931
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1173, metadata !615), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1173, metadata !615), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1171, metadata !615), !dbg !1233
  %635 = load i8, i8* %634, align 1, !dbg !1915, !tbaa !768
  %636 = icmp eq i8 %635, 0, !dbg !1919
  br i1 %636, label %637, label %625, !dbg !1919, !llvm.loop !1933

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1233

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1171, metadata !615), !dbg !1233
  %640 = icmp ult i64 %639, %131, !dbg !1936
  br i1 %640, label %641, label %659, !dbg !1938

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1939
  store i8 0, i8* %642, align 1, !dbg !1940, !tbaa !768
  br label %659, !dbg !1939

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1225

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1225

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1225

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1162, metadata !615), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1164, metadata !615), !dbg !1227
  %653 = icmp ne i32 %650, 2, !dbg !1941
  %654 = icmp eq i8 %104, 0, !dbg !1943
  %655 = or i1 %653, %654, !dbg !1945
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1165, metadata !615), !dbg !1228
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1165, metadata !615), !dbg !1228
  %657 = and i32 %5, -3, !dbg !1946
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1947
  br label %659, !dbg !1948

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1949
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1950 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1954, metadata !615), !dbg !1958
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1955, metadata !615), !dbg !1959
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1960
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1956, metadata !615), !dbg !1961
  %4 = icmp eq i8* %3, %0, !dbg !1962
  br i1 %4, label %5, label %75, !dbg !1964

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1965
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1957, metadata !615), !dbg !1966
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1967, metadata !615), !dbg !1983
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1981, metadata !615), !dbg !1986
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1982, metadata !615), !dbg !1987
  %7 = load i8, i8* %6, align 1, !tbaa !768
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1988
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1988

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1991, metadata !615), !dbg !2005
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2003, metadata !615), !dbg !2009
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2004, metadata !615), !dbg !2010
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !768
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2011
  %15 = icmp eq i32 %14, 84, !dbg !2011
  br i1 %15, label %16, label %72, !dbg !2011

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2014, metadata !615), !dbg !2027
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2025, metadata !615), !dbg !2031
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2026, metadata !615), !dbg !2032
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !768
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2033
  %21 = icmp eq i32 %20, 70, !dbg !2033
  br i1 %21, label %22, label %72, !dbg !2033

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2036, metadata !615), !dbg !2048
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2046, metadata !615), !dbg !2052
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2047, metadata !615), !dbg !2053
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !768
  %25 = icmp eq i8 %24, 45, !dbg !2054
  br i1 %25, label %26, label %72, !dbg !2057

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2059, metadata !615), !dbg !2070
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2068, metadata !615), !dbg !2074
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2069, metadata !615), !dbg !2075
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !768
  %29 = icmp eq i8 %28, 56, !dbg !2076
  br i1 %29, label %30, label %72, !dbg !2079

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2081, metadata !615), !dbg !2091
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2089, metadata !615), !dbg !2095
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2090, metadata !615), !dbg !2096
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !768
  %33 = icmp eq i8 %32, 0, !dbg !2097
  br i1 %33, label %34, label %72, !dbg !2100

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2102, !tbaa !768
  %36 = icmp eq i8 %35, 96, !dbg !2103
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !2102
  br label %75, !dbg !2104

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1991, metadata !615), !dbg !2105
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2003, metadata !615), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2004, metadata !615), !dbg !2110
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !768
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2111
  %43 = icmp eq i32 %42, 66, !dbg !2111
  br i1 %43, label %44, label %72, !dbg !2111

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2014, metadata !615), !dbg !2112
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2025, metadata !615), !dbg !2114
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2026, metadata !615), !dbg !2115
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !768
  %47 = icmp eq i8 %46, 49, !dbg !2116
  br i1 %47, label %48, label %72, !dbg !2118

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2036, metadata !615), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2046, metadata !615), !dbg !2122
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2047, metadata !615), !dbg !2123
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !768
  %51 = icmp eq i8 %50, 56, !dbg !2124
  br i1 %51, label %52, label %72, !dbg !2125

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2059, metadata !615), !dbg !2126
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2068, metadata !615), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2069, metadata !615), !dbg !2129
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !768
  %55 = icmp eq i8 %54, 48, !dbg !2130
  br i1 %55, label %56, label %72, !dbg !2131

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2081, metadata !615), !dbg !2132
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2089, metadata !615), !dbg !2134
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2090, metadata !615), !dbg !2135
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !768
  %59 = icmp eq i8 %58, 51, !dbg !2136
  br i1 %59, label %60, label %72, !dbg !2137

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2138, metadata !615), !dbg !2147
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2145, metadata !615), !dbg !2151
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2146, metadata !615), !dbg !2152
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !768
  %63 = icmp eq i8 %62, 48, !dbg !2153
  br i1 %63, label %64, label %72, !dbg !2156

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2158, metadata !615), !dbg !2166
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2164, metadata !615), !dbg !2170
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2165, metadata !615), !dbg !2171
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !768
  %67 = icmp eq i8 %66, 0, !dbg !2172
  br i1 %67, label %68, label %72, !dbg !2175

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2176, !tbaa !768
  %70 = icmp eq i8 %69, 96, !dbg !2177
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.53, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2176
  br label %75, !dbg !2178

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2179
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), !dbg !2180
  br label %75, !dbg !2181

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2182
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2183 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2187, metadata !615), !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2188, metadata !615), !dbg !2191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2189, metadata !615), !dbg !2192
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2193, metadata !615) #10, !dbg !2206
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2198, metadata !615) #10, !dbg !2208
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2199, metadata !615) #10, !dbg !2209
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2200, metadata !615) #10, !dbg !2210
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2211
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2211
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2201, metadata !615) #10, !dbg !2212
  %6 = tail call i32* @__errno_location() #1, !dbg !2213
  %7 = load i32, i32* %6, align 4, !dbg !2213, !tbaa !706
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2202, metadata !615) #10, !dbg !2214
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2215
  %9 = load i32, i32* %8, align 4, !dbg !2215, !tbaa !1093
  %10 = or i32 %9, 1, !dbg !2216
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2203, metadata !615) #10, !dbg !2217
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2218
  %12 = load i32, i32* %11, align 8, !dbg !2218, !tbaa !1031
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2219
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2220
  %15 = load i8*, i8** %14, align 8, !dbg !2220, !tbaa !1120
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2221
  %17 = load i8*, i8** %16, align 8, !dbg !2221, !tbaa !1123
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2222
  %19 = add i64 %18, 1, !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2204, metadata !615) #10, !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2225, metadata !615) #10, !dbg !2230
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2232
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2205, metadata !615) #10, !dbg !2233
  %21 = load i32, i32* %11, align 8, !dbg !2234, !tbaa !1031
  %22 = load i8*, i8** %14, align 8, !dbg !2235, !tbaa !1120
  %23 = load i8*, i8** %16, align 8, !dbg !2236, !tbaa !1123
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2237
  store i32 %7, i32* %6, align 4, !dbg !2238, !tbaa !706
  ret i8* %20, !dbg !2239
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2194 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2193, metadata !615), !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2198, metadata !615), !dbg !2241
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2199, metadata !615), !dbg !2242
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2200, metadata !615), !dbg !2243
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2244
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2201, metadata !615), !dbg !2245
  %7 = tail call i32* @__errno_location() #1, !dbg !2246
  %8 = load i32, i32* %7, align 4, !dbg !2246, !tbaa !706
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2202, metadata !615), !dbg !2247
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2248
  %10 = load i32, i32* %9, align 4, !dbg !2248, !tbaa !1093
  %11 = icmp ne i64* %2, null, !dbg !2249
  %12 = xor i1 %11, true, !dbg !2249
  %13 = zext i1 %12 to i32, !dbg !2249
  %14 = or i32 %10, %13, !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2203, metadata !615), !dbg !2251
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2252
  %16 = load i32, i32* %15, align 8, !dbg !2252, !tbaa !1031
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2253
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2254
  %19 = load i8*, i8** %18, align 8, !dbg !2254, !tbaa !1120
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2255
  %21 = load i8*, i8** %20, align 8, !dbg !2255, !tbaa !1123
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2256
  %23 = add i64 %22, 1, !dbg !2257
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2204, metadata !615), !dbg !2258
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2225, metadata !615) #10, !dbg !2259
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2261
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2205, metadata !615), !dbg !2262
  %25 = load i32, i32* %15, align 8, !dbg !2263, !tbaa !1031
  %26 = load i8*, i8** %18, align 8, !dbg !2264, !tbaa !1120
  %27 = load i8*, i8** %20, align 8, !dbg !2265, !tbaa !1123
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2266
  store i32 %8, i32* %7, align 4, !dbg !2267, !tbaa !706
  br i1 %11, label %29, label %30, !dbg !2268

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2269, !tbaa !2271
  br label %30, !dbg !2273

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2274
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2275 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2279, !tbaa !623
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2277, metadata !615), !dbg !2280
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2278, metadata !615), !dbg !2281
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2278, metadata !615), !dbg !2281
  %2 = load i32, i32* @nslots, align 4, !dbg !2282, !tbaa !706
  %3 = icmp sgt i32 %2, 1, !dbg !2286
  br i1 %3, label %4, label %14, !dbg !2287

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2289

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2289
  %8 = load i8*, i8** %7, align 8, !dbg !2289, !tbaa !2290
  tail call void @free(i8* %8) #10, !dbg !2292
  %9 = add nuw i64 %6, 1, !dbg !2293
  %10 = load i32, i32* @nslots, align 4, !dbg !2282, !tbaa !706
  %11 = sext i32 %10 to i64, !dbg !2286
  %12 = icmp slt i64 %9, %11, !dbg !2286
  br i1 %12, label %5, label %13, !dbg !2287, !llvm.loop !2295

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2298

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2298
  %16 = load i8*, i8** %15, align 8, !dbg !2298, !tbaa !2290
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2300
  br i1 %17, label %19, label %18, !dbg !2301

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2302
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2304, !tbaa !2305
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2306, !tbaa !2290
  br label %19, !dbg !2307

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2308
  br i1 %20, label %23, label %21, !dbg !2310

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2311
  tail call void @free(i8* %22) #10, !dbg !2313
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2314, !tbaa !623
  br label %23, !dbg !2315

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2316, !tbaa !706
  ret void, !dbg !2317
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2318 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2322, metadata !615), !dbg !2324
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2323, metadata !615), !dbg !2325
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2326
  ret i8* %3, !dbg !2327
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2328 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2332, metadata !615), !dbg !2346
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2333, metadata !615), !dbg !2347
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2334, metadata !615), !dbg !2348
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2335, metadata !615), !dbg !2349
  %5 = tail call i32* @__errno_location() #1, !dbg !2350
  %6 = load i32, i32* %5, align 4, !dbg !2350, !tbaa !706
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2336, metadata !615), !dbg !2351
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2352, !tbaa !623
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2337, metadata !615), !dbg !2353
  %8 = icmp slt i32 %0, 0, !dbg !2354
  br i1 %8, label %9, label %10, !dbg !2356

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2357
  unreachable, !dbg !2357

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2358, !tbaa !706
  %12 = icmp sgt i32 %11, %0, !dbg !2359
  br i1 %12, label %34, label %13, !dbg !2360

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2361
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2362
  br i1 %15, label %16, label %17, !dbg !2364

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2365
  unreachable, !dbg !2365

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2366
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2366
  %20 = add nsw i32 %0, 1, !dbg !2368
  %21 = sext i32 %20 to i64, !dbg !2369
  %22 = shl nsw i64 %21, 4, !dbg !2370
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2371
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2371
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2337, metadata !615), !dbg !2353
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2372, !tbaa !623
  br i1 %14, label %25, label %26, !dbg !2373

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2374, !tbaa.struct !2376
  br label %26, !dbg !2377

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2378, !tbaa !706
  %28 = sext i32 %27 to i64, !dbg !2379
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2379
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2380
  %31 = sub nsw i32 %20, %27, !dbg !2381
  %32 = sext i32 %31 to i64, !dbg !2382
  %33 = shl nsw i64 %32, 4, !dbg !2383
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2380
  store i32 %20, i32* @nslots, align 4, !dbg !2384, !tbaa !706
  br label %34, !dbg !2385

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2337, metadata !615), !dbg !2353
  %36 = sext i32 %0 to i64, !dbg !2386
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2387
  %38 = load i64, i64* %37, align 8, !dbg !2387, !tbaa !2305
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2341, metadata !615), !dbg !2388
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2389
  %40 = load i8*, i8** %39, align 8, !dbg !2389, !tbaa !2290
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2343, metadata !615), !dbg !2390
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2391
  %42 = load i32, i32* %41, align 4, !dbg !2391, !tbaa !1093
  %43 = or i32 %42, 1, !dbg !2392
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2344, metadata !615), !dbg !2393
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2394
  %45 = load i32, i32* %44, align 8, !dbg !2394, !tbaa !1031
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2395
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2396
  %48 = load i8*, i8** %47, align 8, !dbg !2396, !tbaa !1120
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2397
  %50 = load i8*, i8** %49, align 8, !dbg !2397, !tbaa !1123
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2398
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2345, metadata !615), !dbg !2399
  %52 = icmp ugt i64 %38, %51, !dbg !2400
  br i1 %52, label %63, label %53, !dbg !2402

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2403
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2341, metadata !615), !dbg !2388
  store i64 %54, i64* %37, align 8, !dbg !2405, !tbaa !2305
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2406
  br i1 %55, label %57, label %56, !dbg !2408

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2409
  br label %57, !dbg !2409

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2225, metadata !615) #10, !dbg !2410
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2412
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2343, metadata !615), !dbg !2390
  store i8* %58, i8** %39, align 8, !dbg !2413, !tbaa !2290
  %59 = load i32, i32* %44, align 8, !dbg !2414, !tbaa !1031
  %60 = load i8*, i8** %47, align 8, !dbg !2415, !tbaa !1120
  %61 = load i8*, i8** %49, align 8, !dbg !2416, !tbaa !1123
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2417
  br label %63, !dbg !2418

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2343, metadata !615), !dbg !2390
  store i32 %6, i32* %5, align 4, !dbg !2419, !tbaa !706
  ret i8* %64, !dbg !2420
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2421 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2425, metadata !615), !dbg !2428
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2426, metadata !615), !dbg !2429
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2427, metadata !615), !dbg !2430
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2431
  ret i8* %4, !dbg !2432
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2433 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2437, metadata !615), !dbg !2438
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2322, metadata !615) #10, !dbg !2439
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2323, metadata !615) #10, !dbg !2441
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2442
  ret i8* %2, !dbg !2443
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2444 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2448, metadata !615), !dbg !2450
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2449, metadata !615), !dbg !2451
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2425, metadata !615) #10, !dbg !2452
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2426, metadata !615) #10, !dbg !2454
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2427, metadata !615) #10, !dbg !2455
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2456
  ret i8* %3, !dbg !2457
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2458 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2466, metadata !2472), !dbg !2473
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2462, metadata !615), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2463, metadata !615), !dbg !2476
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2464, metadata !615), !dbg !2477
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2478
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2478
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2465, metadata !1582), !dbg !2479
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2471, metadata !615) #10, !dbg !2480
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2481
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2481
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2466, metadata !615) #10, !dbg !2473
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2466, metadata !2482) #10, !dbg !2473
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2473
  %8 = icmp eq i32 %1, 10, !dbg !2483
  br i1 %8, label %9, label %10, !dbg !2485

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2486, !noalias !2487
  unreachable, !dbg !2486

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2466, metadata !2482) #10, !dbg !2473
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2490
  store i32 %1, i32* %11, align 8, !dbg !2490, !alias.scope !2487
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2490
  %13 = bitcast i32* %12 to i8*, !dbg !2490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2490
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2491
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2465, metadata !1582), !dbg !2479
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2492
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2493
  ret i8* %14, !dbg !2494
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2495 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2466, metadata !2472), !dbg !2504
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2499, metadata !615), !dbg !2506
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2500, metadata !615), !dbg !2507
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2501, metadata !615), !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2502, metadata !615), !dbg !2509
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2510
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2510
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2503, metadata !1582), !dbg !2511
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2471, metadata !615) #10, !dbg !2512
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2513
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2513
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2466, metadata !615) #10, !dbg !2504
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2466, metadata !2482) #10, !dbg !2504
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2504
  %9 = icmp eq i32 %1, 10, !dbg !2514
  br i1 %9, label %10, label %11, !dbg !2515

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2516, !noalias !2517
  unreachable, !dbg !2516

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2466, metadata !2482) #10, !dbg !2504
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2520
  store i32 %1, i32* %12, align 8, !dbg !2520, !alias.scope !2517
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2520
  %14 = bitcast i32* %13 to i8*, !dbg !2520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2520
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2521
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2503, metadata !1582), !dbg !2511
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2522
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2523
  ret i8* %15, !dbg !2524
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2525 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2466, metadata !2472), !dbg !2531
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2529, metadata !615), !dbg !2534
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2530, metadata !615), !dbg !2535
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2462, metadata !615) #10, !dbg !2536
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2463, metadata !615) #10, !dbg !2537
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2464, metadata !615) #10, !dbg !2538
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2539
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2539
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2465, metadata !1582) #10, !dbg !2540
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2471, metadata !615) #10, !dbg !2541
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2542
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2542
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2466, metadata !615) #10, !dbg !2531
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2466, metadata !2482) #10, !dbg !2531
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2531
  %7 = icmp eq i32 %0, 10, !dbg !2543
  br i1 %7, label %8, label %9, !dbg !2544

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2545, !noalias !2546
  unreachable, !dbg !2545

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2466, metadata !2482) #10, !dbg !2531
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2549
  store i32 %0, i32* %10, align 8, !dbg !2549, !alias.scope !2546
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2549
  %12 = bitcast i32* %11 to i8*, !dbg !2549
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2549
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2550
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2465, metadata !1582) #10, !dbg !2540
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2551
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2552
  ret i8* %13, !dbg !2553
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2554 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2466, metadata !2472), !dbg !2561
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2558, metadata !615), !dbg !2564
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2559, metadata !615), !dbg !2565
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2560, metadata !615), !dbg !2566
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2499, metadata !615) #10, !dbg !2567
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2500, metadata !615) #10, !dbg !2568
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2501, metadata !615) #10, !dbg !2569
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2502, metadata !615) #10, !dbg !2570
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2571
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2571
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2503, metadata !1582) #10, !dbg !2572
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2471, metadata !615) #10, !dbg !2573
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2574
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2574
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2466, metadata !615) #10, !dbg !2561
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2466, metadata !2482) #10, !dbg !2561
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2561
  %8 = icmp eq i32 %0, 10, !dbg !2575
  br i1 %8, label %9, label %10, !dbg !2576

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2577, !noalias !2578
  unreachable, !dbg !2577

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2466, metadata !2482) #10, !dbg !2561
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2581
  store i32 %0, i32* %11, align 8, !dbg !2581, !alias.scope !2578
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2581
  %13 = bitcast i32* %12 to i8*, !dbg !2581
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2581
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2503, metadata !1582) #10, !dbg !2572
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2583
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2584
  ret i8* %14, !dbg !2585
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2586 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2590, metadata !615), !dbg !2594
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2591, metadata !615), !dbg !2595
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2592, metadata !615), !dbg !2596
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2597
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2597
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2598, !tbaa.struct !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2593, metadata !1582), !dbg !2600
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1051, metadata !615), !dbg !2601
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1052, metadata !615), !dbg !2603
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1053, metadata !615), !dbg !2604
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1054, metadata !615), !dbg !2605
  %6 = lshr i8 %2, 5, !dbg !2606
  %7 = zext i8 %6 to i64, !dbg !2606
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2607
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1055, metadata !615), !dbg !2608
  %9 = and i8 %2, 31, !dbg !2609
  %10 = zext i8 %9 to i32, !dbg !2610
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1057, metadata !615), !dbg !2611
  %11 = load i32, i32* %8, align 4, !dbg !2612, !tbaa !706
  %12 = lshr i32 %11, %10, !dbg !2613
  %13 = and i32 %12, 1, !dbg !2614
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1058, metadata !615), !dbg !2615
  %14 = xor i32 %13, 1, !dbg !2616
  %15 = shl i32 %14, %10, !dbg !2617
  %16 = xor i32 %15, %11, !dbg !2618
  store i32 %16, i32* %8, align 4, !dbg !2618, !tbaa !706
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2593, metadata !1582), !dbg !2600
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2619
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2620
  ret i8* %17, !dbg !2621
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2622 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2626, metadata !615), !dbg !2628
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2627, metadata !615), !dbg !2629
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2590, metadata !615) #10, !dbg !2630
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2591, metadata !615) #10, !dbg !2632
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2592, metadata !615) #10, !dbg !2633
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2634
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2635, !tbaa.struct !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2593, metadata !1582) #10, !dbg !2636
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1051, metadata !615) #10, !dbg !2637
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1052, metadata !615) #10, !dbg !2639
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1053, metadata !615) #10, !dbg !2640
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1054, metadata !615) #10, !dbg !2641
  %5 = lshr i8 %1, 5, !dbg !2642
  %6 = zext i8 %5 to i64, !dbg !2642
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2643
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1055, metadata !615) #10, !dbg !2644
  %8 = and i8 %1, 31, !dbg !2645
  %9 = zext i8 %8 to i32, !dbg !2646
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1057, metadata !615) #10, !dbg !2647
  %10 = load i32, i32* %7, align 4, !dbg !2648, !tbaa !706
  %11 = lshr i32 %10, %9, !dbg !2649
  %12 = and i32 %11, 1, !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1058, metadata !615) #10, !dbg !2651
  %13 = xor i32 %12, 1, !dbg !2652
  %14 = shl i32 %13, %9, !dbg !2653
  %15 = xor i32 %14, %10, !dbg !2654
  store i32 %15, i32* %7, align 4, !dbg !2654, !tbaa !706
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2593, metadata !1582) #10, !dbg !2636
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2655
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2656
  ret i8* %16, !dbg !2657
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2658 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2660, metadata !615), !dbg !2661
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2626, metadata !615) #10, !dbg !2662
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2627, metadata !615) #10, !dbg !2664
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2590, metadata !615) #10, !dbg !2665
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2591, metadata !615) #10, !dbg !2667
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2592, metadata !615) #10, !dbg !2668
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2669
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2669
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2670, !tbaa.struct !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2593, metadata !1582) #10, !dbg !2671
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1051, metadata !615) #10, !dbg !2672
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1052, metadata !615) #10, !dbg !2674
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1053, metadata !615) #10, !dbg !2675
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1054, metadata !615) #10, !dbg !2676
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2677
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1055, metadata !615) #10, !dbg !2678
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1057, metadata !615) #10, !dbg !2679
  %5 = load i32, i32* %4, align 4, !dbg !2680, !tbaa !706
  %6 = or i32 %5, 67108864, !dbg !2681
  store i32 %6, i32* %4, align 4, !dbg !2681, !tbaa !706
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2593, metadata !1582) #10, !dbg !2671
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2682
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2683
  ret i8* %7, !dbg !2684
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2685 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2687, metadata !615), !dbg !2689
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2688, metadata !615), !dbg !2690
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2590, metadata !615) #10, !dbg !2691
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2591, metadata !615) #10, !dbg !2693
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2592, metadata !615) #10, !dbg !2694
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2695
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2696, !tbaa.struct !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2593, metadata !1582) #10, !dbg !2697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1051, metadata !615) #10, !dbg !2698
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1052, metadata !615) #10, !dbg !2700
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1053, metadata !615) #10, !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1054, metadata !615) #10, !dbg !2702
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2703
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1055, metadata !615) #10, !dbg !2704
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1057, metadata !615) #10, !dbg !2705
  %6 = load i32, i32* %5, align 4, !dbg !2706, !tbaa !706
  %7 = or i32 %6, 67108864, !dbg !2707
  store i32 %7, i32* %5, align 4, !dbg !2707, !tbaa !706
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2593, metadata !1582) #10, !dbg !2697
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2708
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2709
  ret i8* %8, !dbg !2710
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2711 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2466, metadata !2472), !dbg !2717
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2713, metadata !615), !dbg !2719
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2714, metadata !615), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2715, metadata !615), !dbg !2721
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2722
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2722
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2471, metadata !615) #10, !dbg !2723
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2724
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2724
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2466, metadata !615) #10, !dbg !2717
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2466, metadata !2482) #10, !dbg !2717
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2717
  %9 = icmp eq i32 %1, 10, !dbg !2725
  br i1 %9, label %10, label %11, !dbg !2726

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2727, !noalias !2728
  unreachable, !dbg !2727

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2466, metadata !2482) #10, !dbg !2717
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2731
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2731
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2732
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2733
  store i32 %1, i32* %13, align 8, !dbg !2733
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2733
  %15 = bitcast i32* %14 to i8*, !dbg !2733
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2733
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2716, metadata !1582), !dbg !2734
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1051, metadata !615), !dbg !2735
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1052, metadata !615), !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1053, metadata !615), !dbg !2738
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1054, metadata !615), !dbg !2739
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2740
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1055, metadata !615), !dbg !2741
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1057, metadata !615), !dbg !2742
  %17 = load i32, i32* %16, align 4, !dbg !2743, !tbaa !706
  %18 = or i32 %17, 67108864, !dbg !2744
  store i32 %18, i32* %16, align 4, !dbg !2744, !tbaa !706
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2716, metadata !1582), !dbg !2734
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2745
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2746
  ret i8* %19, !dbg !2747
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2748 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2752, metadata !615), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2753, metadata !615), !dbg !2757
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2754, metadata !615), !dbg !2758
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2755, metadata !615), !dbg !2759
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2760, metadata !615) #10, !dbg !2770
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2765, metadata !615) #10, !dbg !2772
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2766, metadata !615) #10, !dbg !2773
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2767, metadata !615) #10, !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2768, metadata !615) #10, !dbg !2775
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2776
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2777, !tbaa.struct !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2769, metadata !1582) #10, !dbg !2778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1101, metadata !615) #10, !dbg !2779
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1102, metadata !615) #10, !dbg !2781
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1103, metadata !615) #10, !dbg !2782
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1101, metadata !615) #10, !dbg !2779
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1101, metadata !615) #10, !dbg !2779
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2783
  store i32 10, i32* %7, align 8, !dbg !2784, !tbaa !1031
  %8 = icmp ne i8* %1, null, !dbg !2785
  %9 = icmp ne i8* %2, null, !dbg !2786
  %10 = and i1 %8, %9, !dbg !2787
  br i1 %10, label %12, label %11, !dbg !2787

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2788
  unreachable, !dbg !2788

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2789
  store i8* %1, i8** %13, align 8, !dbg !2790, !tbaa !1120
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2791
  store i8* %2, i8** %14, align 8, !dbg !2792, !tbaa !1123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2769, metadata !1582) #10, !dbg !2778
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2793
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2794
  ret i8* %15, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2761 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2760, metadata !615), !dbg !2796
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2765, metadata !615), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2766, metadata !615), !dbg !2798
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2767, metadata !615), !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2768, metadata !615), !dbg !2800
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2801
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2801
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2802, !tbaa.struct !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2769, metadata !1582), !dbg !2803
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1101, metadata !615) #10, !dbg !2804
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1102, metadata !615) #10, !dbg !2806
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1103, metadata !615) #10, !dbg !2807
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1101, metadata !615) #10, !dbg !2804
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1101, metadata !615) #10, !dbg !2804
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2808
  store i32 10, i32* %8, align 8, !dbg !2809, !tbaa !1031
  %9 = icmp ne i8* %1, null, !dbg !2810
  %10 = icmp ne i8* %2, null, !dbg !2811
  %11 = and i1 %9, %10, !dbg !2812
  br i1 %11, label %13, label %12, !dbg !2812

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2813
  unreachable, !dbg !2813

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2814
  store i8* %1, i8** %14, align 8, !dbg !2815, !tbaa !1120
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2816
  store i8* %2, i8** %15, align 8, !dbg !2817, !tbaa !1123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2769, metadata !1582), !dbg !2803
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2818
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2819
  ret i8* %16, !dbg !2820
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2821 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2825, metadata !615), !dbg !2828
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2826, metadata !615), !dbg !2829
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2827, metadata !615), !dbg !2830
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2752, metadata !615) #10, !dbg !2831
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2753, metadata !615) #10, !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2754, metadata !615) #10, !dbg !2834
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2755, metadata !615) #10, !dbg !2835
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2760, metadata !615) #10, !dbg !2836
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2765, metadata !615) #10, !dbg !2838
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2766, metadata !615) #10, !dbg !2839
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2767, metadata !615) #10, !dbg !2840
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2768, metadata !615) #10, !dbg !2841
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2842
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2842
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2843, !tbaa.struct !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2769, metadata !1582) #10, !dbg !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1101, metadata !615) #10, !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1102, metadata !615) #10, !dbg !2847
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1103, metadata !615) #10, !dbg !2848
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1101, metadata !615) #10, !dbg !2845
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1101, metadata !615) #10, !dbg !2845
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2849
  store i32 10, i32* %6, align 8, !dbg !2850, !tbaa !1031
  %7 = icmp ne i8* %0, null, !dbg !2851
  %8 = icmp ne i8* %1, null, !dbg !2852
  %9 = and i1 %7, %8, !dbg !2853
  br i1 %9, label %11, label %10, !dbg !2853

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2854
  unreachable, !dbg !2854

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2855
  store i8* %0, i8** %12, align 8, !dbg !2856, !tbaa !1120
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2857
  store i8* %1, i8** %13, align 8, !dbg !2858, !tbaa !1123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2769, metadata !1582) #10, !dbg !2844
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2859
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2860
  ret i8* %14, !dbg !2861
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2862 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2866, metadata !615), !dbg !2870
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2867, metadata !615), !dbg !2871
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2868, metadata !615), !dbg !2872
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2869, metadata !615), !dbg !2873
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2760, metadata !615) #10, !dbg !2874
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2765, metadata !615) #10, !dbg !2876
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2766, metadata !615) #10, !dbg !2877
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2767, metadata !615) #10, !dbg !2878
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2768, metadata !615) #10, !dbg !2879
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2880
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2881, !tbaa.struct !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2769, metadata !1582) #10, !dbg !2882
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1101, metadata !615) #10, !dbg !2883
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1102, metadata !615) #10, !dbg !2885
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1103, metadata !615) #10, !dbg !2886
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1101, metadata !615) #10, !dbg !2883
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1101, metadata !615) #10, !dbg !2883
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2887
  store i32 10, i32* %7, align 8, !dbg !2888, !tbaa !1031
  %8 = icmp ne i8* %0, null, !dbg !2889
  %9 = icmp ne i8* %1, null, !dbg !2890
  %10 = and i1 %8, %9, !dbg !2891
  br i1 %10, label %12, label %11, !dbg !2891

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2892
  unreachable, !dbg !2892

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2893
  store i8* %0, i8** %13, align 8, !dbg !2894, !tbaa !1120
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2895
  store i8* %1, i8** %14, align 8, !dbg !2896, !tbaa !1123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2769, metadata !1582) #10, !dbg !2882
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2897
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2898
  ret i8* %15, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2900 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2904, metadata !615), !dbg !2907
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2905, metadata !615), !dbg !2908
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2906, metadata !615), !dbg !2909
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2910
  ret i8* %4, !dbg !2911
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2912 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2916, metadata !615), !dbg !2918
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2917, metadata !615), !dbg !2919
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2904, metadata !615) #10, !dbg !2920
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2905, metadata !615) #10, !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2906, metadata !615) #10, !dbg !2923
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2924
  ret i8* %3, !dbg !2925
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2926 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2930, metadata !615), !dbg !2932
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2931, metadata !615), !dbg !2933
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2904, metadata !615) #10, !dbg !2934
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2905, metadata !615) #10, !dbg !2936
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2906, metadata !615) #10, !dbg !2937
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2938
  ret i8* %3, !dbg !2939
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2940 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2944, metadata !615), !dbg !2945
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2930, metadata !615) #10, !dbg !2946
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2931, metadata !615) #10, !dbg !2948
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2904, metadata !615) #10, !dbg !2949
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2905, metadata !615) #10, !dbg !2951
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2906, metadata !615) #10, !dbg !2952
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2953
  ret i8* %2, !dbg !2954
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_write(i32, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !544 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !548, metadata !615), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !549, metadata !615), !dbg !2956
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !550, metadata !615), !dbg !2957
  br label %4, !dbg !2958

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6, !dbg !2957

; <label>:6:                                      ; preds = %4, %9
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !550, metadata !615), !dbg !2957
  %7 = tail call i64 @write(i32 %0, i8* %1, i64 %5) #10, !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !551, metadata !615), !dbg !2960
  %8 = icmp sgt i64 %7, -1, !dbg !2961
  br i1 %8, label %17, label %9, !dbg !2963

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1, !dbg !2964
  %11 = load i32, i32* %10, align 4, !dbg !2964, !tbaa !706
  %12 = icmp eq i32 %11, 4, !dbg !2964
  br i1 %12, label %6, label %13, !dbg !2966, !llvm.loop !2967

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !2970
  %15 = icmp ugt i64 %5, 2147475456, !dbg !2972
  %16 = and i1 %15, %14, !dbg !2974
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19, !dbg !2975

; <label>:18:                                     ; preds = %13
  br label %19, !dbg !2975

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7, !dbg !2975
}

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2976 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3031, metadata !615), !dbg !3037
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3032, metadata !615), !dbg !3038
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3033, metadata !615), !dbg !3039
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3034, metadata !615), !dbg !3040
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3035, metadata !615), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3036, metadata !615), !dbg !3042
  %7 = icmp eq i8* %1, null, !dbg !3043
  br i1 %7, label %10, label %8, !dbg !3045

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3046
  br label %12, !dbg !3046

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3047
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i32 5) #10, !dbg !3048
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3049
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.61, i64 0, i64 0), i32 5) #10, !dbg !3051
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3052
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
  ], !dbg !3053

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3054
  unreachable, !dbg !3054

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.62, i64 0, i64 0), i32 5) #10, !dbg !3056
  %20 = load i8*, i8** %4, align 8, !dbg !3056, !tbaa !623
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3057
  br label %146, !dbg !3059

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.63, i64 0, i64 0), i32 5) #10, !dbg !3060
  %24 = load i8*, i8** %4, align 8, !dbg !3060, !tbaa !623
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3060
  %26 = load i8*, i8** %25, align 8, !dbg !3060, !tbaa !623
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3061
  br label %146, !dbg !3062

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.64, i64 0, i64 0), i32 5) #10, !dbg !3063
  %30 = load i8*, i8** %4, align 8, !dbg !3063, !tbaa !623
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3063
  %32 = load i8*, i8** %31, align 8, !dbg !3063, !tbaa !623
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3063
  %34 = load i8*, i8** %33, align 8, !dbg !3063, !tbaa !623
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3064
  br label %146, !dbg !3065

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.65, i64 0, i64 0), i32 5) #10, !dbg !3066
  %38 = load i8*, i8** %4, align 8, !dbg !3066, !tbaa !623
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3066
  %40 = load i8*, i8** %39, align 8, !dbg !3066, !tbaa !623
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3066
  %42 = load i8*, i8** %41, align 8, !dbg !3066, !tbaa !623
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3066
  %44 = load i8*, i8** %43, align 8, !dbg !3066, !tbaa !623
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3067
  br label %146, !dbg !3068

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.66, i64 0, i64 0), i32 5) #10, !dbg !3069
  %48 = load i8*, i8** %4, align 8, !dbg !3069, !tbaa !623
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3069
  %50 = load i8*, i8** %49, align 8, !dbg !3069, !tbaa !623
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3069
  %52 = load i8*, i8** %51, align 8, !dbg !3069, !tbaa !623
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3069
  %54 = load i8*, i8** %53, align 8, !dbg !3069, !tbaa !623
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3069
  %56 = load i8*, i8** %55, align 8, !dbg !3069, !tbaa !623
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3070
  br label %146, !dbg !3071

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.67, i64 0, i64 0), i32 5) #10, !dbg !3072
  %60 = load i8*, i8** %4, align 8, !dbg !3072, !tbaa !623
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3072
  %62 = load i8*, i8** %61, align 8, !dbg !3072, !tbaa !623
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3072
  %64 = load i8*, i8** %63, align 8, !dbg !3072, !tbaa !623
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3072
  %66 = load i8*, i8** %65, align 8, !dbg !3072, !tbaa !623
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3072
  %68 = load i8*, i8** %67, align 8, !dbg !3072, !tbaa !623
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3072
  %70 = load i8*, i8** %69, align 8, !dbg !3072, !tbaa !623
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3073
  br label %146, !dbg !3074

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.68, i64 0, i64 0), i32 5) #10, !dbg !3075
  %74 = load i8*, i8** %4, align 8, !dbg !3075, !tbaa !623
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3075
  %76 = load i8*, i8** %75, align 8, !dbg !3075, !tbaa !623
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3075
  %78 = load i8*, i8** %77, align 8, !dbg !3075, !tbaa !623
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3075
  %80 = load i8*, i8** %79, align 8, !dbg !3075, !tbaa !623
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3075
  %82 = load i8*, i8** %81, align 8, !dbg !3075, !tbaa !623
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3075
  %84 = load i8*, i8** %83, align 8, !dbg !3075, !tbaa !623
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3075
  %86 = load i8*, i8** %85, align 8, !dbg !3075, !tbaa !623
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3076
  br label %146, !dbg !3077

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.69, i64 0, i64 0), i32 5) #10, !dbg !3078
  %90 = load i8*, i8** %4, align 8, !dbg !3078, !tbaa !623
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3078
  %92 = load i8*, i8** %91, align 8, !dbg !3078, !tbaa !623
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3078
  %94 = load i8*, i8** %93, align 8, !dbg !3078, !tbaa !623
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3078
  %96 = load i8*, i8** %95, align 8, !dbg !3078, !tbaa !623
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3078
  %98 = load i8*, i8** %97, align 8, !dbg !3078, !tbaa !623
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3078
  %100 = load i8*, i8** %99, align 8, !dbg !3078, !tbaa !623
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3078
  %102 = load i8*, i8** %101, align 8, !dbg !3078, !tbaa !623
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3078
  %104 = load i8*, i8** %103, align 8, !dbg !3078, !tbaa !623
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3079
  br label %146, !dbg !3080

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.70, i64 0, i64 0), i32 5) #10, !dbg !3081
  %108 = load i8*, i8** %4, align 8, !dbg !3081, !tbaa !623
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3081
  %110 = load i8*, i8** %109, align 8, !dbg !3081, !tbaa !623
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3081
  %112 = load i8*, i8** %111, align 8, !dbg !3081, !tbaa !623
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3081
  %114 = load i8*, i8** %113, align 8, !dbg !3081, !tbaa !623
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3081
  %116 = load i8*, i8** %115, align 8, !dbg !3081, !tbaa !623
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3081
  %118 = load i8*, i8** %117, align 8, !dbg !3081, !tbaa !623
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3081
  %120 = load i8*, i8** %119, align 8, !dbg !3081, !tbaa !623
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3081
  %122 = load i8*, i8** %121, align 8, !dbg !3081, !tbaa !623
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3081
  %124 = load i8*, i8** %123, align 8, !dbg !3081, !tbaa !623
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3082
  br label %146, !dbg !3083

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.71, i64 0, i64 0), i32 5) #10, !dbg !3084
  %128 = load i8*, i8** %4, align 8, !dbg !3084, !tbaa !623
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3084
  %130 = load i8*, i8** %129, align 8, !dbg !3084, !tbaa !623
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3084
  %132 = load i8*, i8** %131, align 8, !dbg !3084, !tbaa !623
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3084
  %134 = load i8*, i8** %133, align 8, !dbg !3084, !tbaa !623
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3084
  %136 = load i8*, i8** %135, align 8, !dbg !3084, !tbaa !623
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3084
  %138 = load i8*, i8** %137, align 8, !dbg !3084, !tbaa !623
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3084
  %140 = load i8*, i8** %139, align 8, !dbg !3084, !tbaa !623
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3084
  %142 = load i8*, i8** %141, align 8, !dbg !3084, !tbaa !623
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3084
  %144 = load i8*, i8** %143, align 8, !dbg !3084, !tbaa !623
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3085
  br label %146, !dbg !3086

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3087
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3088 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3092, metadata !615), !dbg !3098
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3093, metadata !615), !dbg !3099
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3094, metadata !615), !dbg !3100
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3095, metadata !615), !dbg !3101
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3096, metadata !615), !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3097, metadata !615), !dbg !3103
  br label %6, !dbg !3104

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3097, metadata !615), !dbg !3103
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3106
  %9 = load i8*, i8** %8, align 8, !dbg !3106, !tbaa !623
  %10 = icmp eq i8* %9, null, !dbg !3109
  %11 = add i64 %7, 1, !dbg !3111
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3097, metadata !615), !dbg !3103
  br i1 %10, label %12, label %6, !dbg !3109, !llvm.loop !3113

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3116
  ret void, !dbg !3117
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3118 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3129, metadata !615), !dbg !3137
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3130, metadata !615), !dbg !3138
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3131, metadata !615), !dbg !3139
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3132, metadata !615), !dbg !3140
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3133, metadata !615), !dbg !3141
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3142
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3142
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3135, metadata !615), !dbg !3143
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3134, metadata !615), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3134, metadata !615), !dbg !3144
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3145
  %12 = icmp ult i32 %11, 41, !dbg !3145
  br i1 %12, label %13, label %18, !dbg !3145

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3149
  %15 = sext i32 %11 to i64, !dbg !3149
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3149
  %17 = add i32 %11, 8, !dbg !3149
  store i32 %17, i32* %8, align 8, !dbg !3149
  br label %21, !dbg !3149

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3151
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3151
  store i8* %20, i8** %10, align 8, !dbg !3151
  br label %21, !dbg !3151

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3145
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3153
  %25 = load i8*, i8** %24, align 8, !dbg !3153
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3155
  store i8* %25, i8** %26, align 16, !dbg !3156, !tbaa !623
  %27 = icmp eq i8* %25, null, !dbg !3157
  br i1 %27, label %30, label %28, !dbg !3158

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  %29 = icmp ult i32 %22, 41, !dbg !3145
  br i1 %29, label %35, label %32, !dbg !3145

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3160
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3161
  ret void, !dbg !3161

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3151
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3151
  store i8* %34, i8** %10, align 8, !dbg !3151
  br label %40, !dbg !3151

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3149
  %37 = sext i32 %22 to i64, !dbg !3149
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3149
  %39 = add i32 %22, 8, !dbg !3149
  store i32 %39, i32* %8, align 8, !dbg !3149
  br label %40, !dbg !3149

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3145
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3153
  %44 = load i8*, i8** %43, align 8, !dbg !3153
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3155
  store i8* %44, i8** %45, align 8, !dbg !3156, !tbaa !623
  %46 = icmp eq i8* %44, null, !dbg !3157
  br i1 %46, label %30, label %47, !dbg !3158

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  %48 = icmp ult i32 %41, 41, !dbg !3145
  br i1 %48, label %52, label %49, !dbg !3145

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3151
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3151
  store i8* %51, i8** %10, align 8, !dbg !3151
  br label %57, !dbg !3151

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3149
  %54 = sext i32 %41 to i64, !dbg !3149
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3149
  %56 = add i32 %41, 8, !dbg !3149
  store i32 %56, i32* %8, align 8, !dbg !3149
  br label %57, !dbg !3149

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3145
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3153
  %61 = load i8*, i8** %60, align 8, !dbg !3153
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3155
  store i8* %61, i8** %62, align 16, !dbg !3156, !tbaa !623
  %63 = icmp eq i8* %61, null, !dbg !3157
  br i1 %63, label %30, label %64, !dbg !3158

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  %65 = icmp ult i32 %58, 41, !dbg !3145
  br i1 %65, label %69, label %66, !dbg !3145

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3151
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3151
  store i8* %68, i8** %10, align 8, !dbg !3151
  br label %74, !dbg !3151

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3149
  %71 = sext i32 %58 to i64, !dbg !3149
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3149
  %73 = add i32 %58, 8, !dbg !3149
  store i32 %73, i32* %8, align 8, !dbg !3149
  br label %74, !dbg !3149

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3145
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3153
  %78 = load i8*, i8** %77, align 8, !dbg !3153
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3155
  store i8* %78, i8** %79, align 8, !dbg !3156, !tbaa !623
  %80 = icmp eq i8* %78, null, !dbg !3157
  br i1 %80, label %30, label %81, !dbg !3158

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  %82 = icmp ult i32 %75, 41, !dbg !3145
  br i1 %82, label %86, label %83, !dbg !3145

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3151
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3151
  store i8* %85, i8** %10, align 8, !dbg !3151
  br label %91, !dbg !3151

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3149
  %88 = sext i32 %75 to i64, !dbg !3149
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3149
  %90 = add i32 %75, 8, !dbg !3149
  store i32 %90, i32* %8, align 8, !dbg !3149
  br label %91, !dbg !3149

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3145
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3153
  %95 = load i8*, i8** %94, align 8, !dbg !3153
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3155
  store i8* %95, i8** %96, align 16, !dbg !3156, !tbaa !623
  %97 = icmp eq i8* %95, null, !dbg !3157
  br i1 %97, label %30, label %98, !dbg !3158

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  %99 = icmp ult i32 %92, 41, !dbg !3145
  br i1 %99, label %103, label %100, !dbg !3145

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3151
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3151
  store i8* %102, i8** %10, align 8, !dbg !3151
  br label %108, !dbg !3151

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3149
  %105 = sext i32 %92 to i64, !dbg !3149
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3149
  %107 = add i32 %92, 8, !dbg !3149
  store i32 %107, i32* %8, align 8, !dbg !3149
  br label %108, !dbg !3149

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3153
  %111 = load i8*, i8** %110, align 8, !dbg !3153
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3155
  store i8* %111, i8** %112, align 8, !dbg !3156, !tbaa !623
  %113 = icmp eq i8* %111, null, !dbg !3157
  br i1 %113, label %30, label %114, !dbg !3158

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  %115 = load i8*, i8** %10, align 8, !dbg !3151
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3151
  store i8* %116, i8** %10, align 8, !dbg !3151
  %117 = bitcast i8* %115 to i8**, !dbg !3153
  %118 = load i8*, i8** %117, align 8, !dbg !3153
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3155
  store i8* %118, i8** %119, align 16, !dbg !3156, !tbaa !623
  %120 = icmp eq i8* %118, null, !dbg !3157
  br i1 %120, label %30, label %121, !dbg !3158

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  %122 = load i8*, i8** %10, align 8, !dbg !3151
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3151
  store i8* %123, i8** %10, align 8, !dbg !3151
  %124 = bitcast i8* %122 to i8**, !dbg !3153
  %125 = load i8*, i8** %124, align 8, !dbg !3153
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3155
  store i8* %125, i8** %126, align 8, !dbg !3156, !tbaa !623
  %127 = icmp eq i8* %125, null, !dbg !3157
  br i1 %127, label %30, label %128, !dbg !3158

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  %129 = load i8*, i8** %10, align 8, !dbg !3151
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3151
  store i8* %130, i8** %10, align 8, !dbg !3151
  %131 = bitcast i8* %129 to i8**, !dbg !3153
  %132 = load i8*, i8** %131, align 8, !dbg !3153
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3155
  store i8* %132, i8** %133, align 16, !dbg !3156, !tbaa !623
  %134 = icmp eq i8* %132, null, !dbg !3157
  br i1 %134, label %30, label %135, !dbg !3158

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  %136 = load i8*, i8** %10, align 8, !dbg !3151
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3151
  store i8* %137, i8** %10, align 8, !dbg !3151
  %138 = bitcast i8* %136 to i8**, !dbg !3153
  %139 = load i8*, i8** %138, align 8, !dbg !3153
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3155
  store i8* %139, i8** %140, align 8, !dbg !3156, !tbaa !623
  %141 = icmp eq i8* %139, null, !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3134, metadata !615), !dbg !3144
  %142 = select i1 %141, i64 9, i64 10, !dbg !3158
  br label %30, !dbg !3158
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3162 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3166, metadata !615), !dbg !3175
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3167, metadata !615), !dbg !3176
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3168, metadata !615), !dbg !3177
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3169, metadata !615), !dbg !3178
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3179
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3179
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3170, metadata !615), !dbg !3180
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3181
  call void @llvm.va_start(i8* nonnull %6), !dbg !3181
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3182
  call void @llvm.va_end(i8* nonnull %6), !dbg !3183
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3184
  ret void, !dbg !3184
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3185 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.74, i64 0, i64 0), i32 5) #10, !dbg !3186
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.75, i64 0, i64 0)) #10, !dbg !3187
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !3189
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.76, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.77, i64 0, i64 0)) #10, !dbg !3190
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !3191
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3191, !tbaa !623
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3192
  ret void, !dbg !3193
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3194 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3198, metadata !615), !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3199, metadata !615), !dbg !3201
  %3 = udiv i64 9223372036854775807, %1, !dbg !3202
  %4 = icmp ult i64 %3, %0, !dbg !3202
  br i1 %4, label %5, label %6, !dbg !3204

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3205
  unreachable, !dbg !3205

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3207, metadata !615) #10, !dbg !3214
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3216
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3213, metadata !615) #10, !dbg !3217
  %9 = icmp eq i8* %8, null, !dbg !3218
  %10 = icmp ne i64 %7, 0, !dbg !3220
  %11 = and i1 %10, %9, !dbg !3222
  br i1 %11, label %12, label %13, !dbg !3222

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3223
  unreachable, !dbg !3223

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3224
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3208 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3207, metadata !615), !dbg !3225
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3213, metadata !615), !dbg !3227
  %3 = icmp eq i8* %2, null, !dbg !3228
  %4 = icmp ne i64 %0, 0, !dbg !3229
  %5 = and i1 %4, %3, !dbg !3230
  br i1 %5, label %6, label %7, !dbg !3230

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3231
  unreachable, !dbg !3231

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3232
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3233 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3237, metadata !615), !dbg !3240
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3238, metadata !615), !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3239, metadata !615), !dbg !3242
  %4 = udiv i64 9223372036854775807, %2, !dbg !3243
  %5 = icmp ult i64 %4, %1, !dbg !3243
  br i1 %5, label %6, label %7, !dbg !3245

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3246
  unreachable, !dbg !3246

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3247
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3248, metadata !615) #10, !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3253, metadata !615) #10, !dbg !3256
  %9 = icmp eq i64 %8, 0, !dbg !3257
  %10 = icmp ne i8* %0, null, !dbg !3259
  %11 = and i1 %10, %9, !dbg !3261
  br i1 %11, label %12, label %13, !dbg !3261

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3262
  br label %19, !dbg !3264

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3265
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3248, metadata !615) #10, !dbg !3254
  %15 = icmp eq i8* %14, null, !dbg !3266
  %16 = icmp ne i64 %8, 0, !dbg !3268
  %17 = and i1 %16, %15, !dbg !3270
  br i1 %17, label %18, label %19, !dbg !3270

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3271
  unreachable, !dbg !3271

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3272
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3249 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3248, metadata !615), !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3253, metadata !615), !dbg !3274
  %3 = icmp eq i64 %1, 0, !dbg !3275
  %4 = icmp ne i8* %0, null, !dbg !3276
  %5 = and i1 %4, %3, !dbg !3277
  br i1 %5, label %6, label %7, !dbg !3277

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3278
  br label %13, !dbg !3279

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3280
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3248, metadata !615), !dbg !3273
  %9 = icmp eq i8* %8, null, !dbg !3281
  %10 = icmp ne i64 %1, 0, !dbg !3282
  %11 = and i1 %10, %9, !dbg !3283
  br i1 %11, label %12, label %13, !dbg !3283

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3284
  unreachable, !dbg !3284

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3285
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !575 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !580, metadata !615), !dbg !3286
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !581, metadata !615), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !582, metadata !615), !dbg !3288
  %4 = load i64, i64* %1, align 8, !dbg !3289, !tbaa !2271
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !583, metadata !615), !dbg !3290
  %5 = icmp eq i8* %0, null, !dbg !3291
  br i1 %5, label %6, label %13, !dbg !3293

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3294
  br i1 %7, label %8, label %17, !dbg !3297

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !583, metadata !615), !dbg !3290
  %10 = icmp ugt i64 %2, 128, !dbg !3300
  %11 = zext i1 %10 to i64, !dbg !3300
  %12 = add nuw nsw i64 %9, %11, !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !583, metadata !615), !dbg !3290
  br label %17, !dbg !3302

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3303
  %15 = icmp ugt i64 %14, %4, !dbg !3306
  br i1 %15, label %20, label %16, !dbg !3307

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3308
  unreachable, !dbg !3308

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !583, metadata !615), !dbg !3290
  store i64 %18, i64* %1, align 8, !dbg !3309, !tbaa !2271
  %19 = mul i64 %18, %2, !dbg !3310
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3248, metadata !615) #10, !dbg !3311
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3253, metadata !615) #10, !dbg !3313
  br label %27, !dbg !3314

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3315
  %22 = add i64 %4, 1, !dbg !3316
  %23 = add i64 %22, %21, !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !583, metadata !615), !dbg !3290
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !583, metadata !615), !dbg !3290
  store i64 %23, i64* %1, align 8, !dbg !3309, !tbaa !2271
  %24 = mul i64 %23, %2, !dbg !3310
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3248, metadata !615) #10, !dbg !3311
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3253, metadata !615) #10, !dbg !3313
  %25 = icmp eq i64 %24, 0, !dbg !3318
  br i1 %25, label %26, label %27, !dbg !3314

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3319
  br label %34, !dbg !3320

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3321
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3248, metadata !615) #10, !dbg !3311
  %30 = icmp eq i8* %29, null, !dbg !3322
  %31 = icmp ne i64 %28, 0, !dbg !3323
  %32 = and i1 %31, %30, !dbg !3324
  br i1 %32, label %33, label %34, !dbg !3324

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3325
  unreachable, !dbg !3325

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3326
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3327 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3329, metadata !615), !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3207, metadata !615) #10, !dbg !3331
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3333
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3213, metadata !615) #10, !dbg !3334
  %3 = icmp eq i8* %2, null, !dbg !3335
  %4 = icmp ne i64 %0, 0, !dbg !3336
  %5 = and i1 %4, %3, !dbg !3337
  br i1 %5, label %6, label %7, !dbg !3337

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3338
  unreachable, !dbg !3338

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3339
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3340 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3344, metadata !615), !dbg !3346
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3345, metadata !615), !dbg !3347
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !580, metadata !615) #10, !dbg !3348
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !581, metadata !615) #10, !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !582, metadata !615) #10, !dbg !3351
  %3 = load i64, i64* %1, align 8, !dbg !3352, !tbaa !2271
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !583, metadata !615) #10, !dbg !3353
  %4 = icmp eq i8* %0, null, !dbg !3354
  br i1 %4, label %5, label %8, !dbg !3355

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !583, metadata !615) #10, !dbg !3353
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !583, metadata !615) #10, !dbg !3353
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !583, metadata !615) #10, !dbg !3353
  store i64 %7, i64* %1, align 8, !dbg !3358, !tbaa !2271
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3248, metadata !615) #10, !dbg !3359
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3253, metadata !615) #10, !dbg !3361
  br label %17, !dbg !3362

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3363
  br i1 %9, label %11, label %10, !dbg !3364

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3365
  unreachable, !dbg !3365

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3366
  %13 = add i64 %3, 1, !dbg !3367
  %14 = add i64 %13, %12, !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !583, metadata !615) #10, !dbg !3353
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !583, metadata !615) #10, !dbg !3353
  store i64 %14, i64* %1, align 8, !dbg !3358, !tbaa !2271
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3248, metadata !615) #10, !dbg !3359
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3253, metadata !615) #10, !dbg !3361
  %15 = icmp eq i64 %14, 0, !dbg !3369
  br i1 %15, label %16, label %17, !dbg !3362

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3370
  br label %24, !dbg !3371

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3372
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3248, metadata !615) #10, !dbg !3359
  %20 = icmp eq i8* %19, null, !dbg !3373
  %21 = icmp ne i64 %18, 0, !dbg !3374
  %22 = and i1 %21, %20, !dbg !3375
  br i1 %22, label %23, label %24, !dbg !3375

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3376
  unreachable, !dbg !3376

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3377
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3378 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3380, metadata !615), !dbg !3381
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3207, metadata !615) #10, !dbg !3382
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3384
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3213, metadata !615) #10, !dbg !3385
  %3 = icmp eq i8* %2, null, !dbg !3386
  %4 = icmp ne i64 %0, 0, !dbg !3387
  %5 = and i1 %4, %3, !dbg !3388
  br i1 %5, label %6, label %7, !dbg !3388

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3389
  unreachable, !dbg !3389

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3390
  ret i8* %2, !dbg !3391
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3392 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3394, metadata !615), !dbg !3397
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3395, metadata !615), !dbg !3398
  %3 = udiv i64 9223372036854775807, %1, !dbg !3399
  %4 = icmp ult i64 %3, %0, !dbg !3399
  br i1 %4, label %8, label %5, !dbg !3401

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3396, metadata !615), !dbg !3404
  %7 = icmp eq i8* %6, null, !dbg !3405
  br i1 %7, label %8, label %9, !dbg !3406

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3408
  unreachable, !dbg !3408

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3410 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3414, metadata !615), !dbg !3416
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3415, metadata !615), !dbg !3417
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3207, metadata !615) #10, !dbg !3418
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3420
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3213, metadata !615) #10, !dbg !3421
  %4 = icmp eq i8* %3, null, !dbg !3422
  %5 = icmp ne i64 %1, 0, !dbg !3423
  %6 = and i1 %5, %4, !dbg !3424
  br i1 %6, label %7, label %8, !dbg !3424

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3425
  unreachable, !dbg !3425

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3426
  ret i8* %3, !dbg !3427
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3428 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3430, metadata !615), !dbg !3431
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3432
  %3 = add i64 %2, 1, !dbg !3433
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3414, metadata !615) #10, !dbg !3434
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3415, metadata !615) #10, !dbg !3437
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3207, metadata !615) #10, !dbg !3438
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3440
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3213, metadata !615) #10, !dbg !3441
  %5 = icmp eq i8* %4, null, !dbg !3442
  %6 = icmp ne i64 %3, 0, !dbg !3443
  %7 = and i1 %6, %5, !dbg !3444
  br i1 %7, label %8, label %9, !dbg !3444

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3445
  unreachable, !dbg !3445

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3446
  ret i8* %4, !dbg !3447
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3448 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3450, !tbaa !706
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.88, i64 0, i64 0), i32 5) #10, !dbg !3451
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i8* %2) #10, !dbg !3452
  tail call void @abort() #14, !dbg !3454
  unreachable, !dbg !3454
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3455 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3458, metadata !615), !dbg !3464
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3459, metadata !615), !dbg !3465
  %3 = icmp eq i64 %0, 0, !dbg !3466
  %4 = icmp eq i64 %1, 0, !dbg !3467
  %5 = or i1 %3, %4, !dbg !3469
  br i1 %5, label %12, label %6, !dbg !3469

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3470
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3461, metadata !615), !dbg !3471
  %8 = udiv i64 %7, %1, !dbg !3472
  %9 = icmp eq i64 %8, %0, !dbg !3474
  br i1 %9, label %12, label %10, !dbg !3475

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3476
  store i32 12, i32* %11, align 4, !dbg !3478, !tbaa !706
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3458, metadata !615), !dbg !3464
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3459, metadata !615), !dbg !3465
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3479
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3460, metadata !615), !dbg !3480
  br label %16, !dbg !3481

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3482
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3483 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3500, metadata !615), !dbg !3509
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3501, metadata !615), !dbg !3510
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3502, metadata !615), !dbg !3511
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3503, metadata !615), !dbg !3512
  %6 = bitcast i32* %5 to i8*, !dbg !3513
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3513
  %7 = icmp eq i32* %0, null, !dbg !3514
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3500, metadata !615), !dbg !3509
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3516
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3500, metadata !615), !dbg !3509
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3517
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3504, metadata !615), !dbg !3518
  %10 = icmp ugt i64 %9, -3, !dbg !3519
  %11 = icmp ne i64 %2, 0, !dbg !3520
  %12 = and i1 %11, %10, !dbg !3522
  br i1 %12, label %13, label %18, !dbg !3522

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3523
  br i1 %14, label %18, label %15, !dbg !3525

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3527, !tbaa !768
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3506, metadata !615), !dbg !3528
  %17 = zext i8 %16 to i32, !dbg !3529
  store i32 %17, i32* %8, align 4, !dbg !3530, !tbaa !706
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3531
  ret i64 %19, !dbg !3531
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3532 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3577, metadata !615), !dbg !3582
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3583
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3584, metadata !615), !dbg !3588
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3590
  %4 = load i32, i32* %3, align 8, !dbg !3590, !tbaa !3591
  %5 = and i32 %4, 32, !dbg !3590
  %6 = icmp eq i32 %5, 0, !dbg !3593
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3594
  %8 = icmp ne i32 %7, 0, !dbg !3595
  br i1 %6, label %9, label %19, !dbg !3596

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3598
  %11 = icmp ne i64 %2, 0, !dbg !3598
  %12 = or i1 %11, %10, !dbg !3598
  %13 = sext i1 %8 to i32, !dbg !3598
  br i1 %12, label %22, label %14, !dbg !3598

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3600
  %16 = load i32, i32* %15, align 4, !dbg !3600, !tbaa !706
  %17 = icmp ne i32 %16, 9, !dbg !3602
  %18 = sext i1 %17 to i32, !dbg !3602
  br label %22, !dbg !3602

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3604

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3606
  store i32 0, i32* %21, align 4, !dbg !3608, !tbaa !706
  br label %22, !dbg !3606

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3609
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3610 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3615, metadata !615), !dbg !3635
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3616, metadata !615), !dbg !3636
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3617, metadata !615), !dbg !3638
  %3 = icmp eq i8* %2, null, !dbg !3639
  br i1 %3, label %15, label %4, !dbg !3640

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3625, metadata !615), !dbg !3641
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3626, metadata !615), !dbg !3642
  %5 = load i8, i8* %2, align 1, !dbg !3643, !tbaa !768
  %6 = icmp eq i8 %5, 67, !dbg !3645
  br i1 %6, label %7, label %11, !dbg !3648

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3650
  %9 = load i8, i8* %8, align 1, !dbg !3650, !tbaa !768
  %10 = icmp eq i8 %9, 0, !dbg !3653
  br i1 %10, label %14, label %11, !dbg !3655

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3631, metadata !615), !dbg !3657
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.98, i64 0, i64 0)) #10, !dbg !3658
  %13 = icmp eq i32 %12, 0, !dbg !3660
  br i1 %13, label %14, label %15, !dbg !3662

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3616, metadata !615), !dbg !3636
  br label %15, !dbg !3664

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3665
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3666 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3678, metadata !615), !dbg !3752
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3745, metadata !615), !dbg !3754
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3755
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3670, metadata !615), !dbg !3756
  %4 = icmp eq i8* %3, null, !dbg !3757
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.101, i64 0, i64 0), i8* %3, !dbg !3759
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3670, metadata !615), !dbg !3756
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3760, !tbaa !623
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3692, metadata !615) #10, !dbg !3761
  %7 = icmp eq i8* %6, null, !dbg !3762
  br i1 %7, label %8, label %127, !dbg !3763

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.102, i64 0, i64 0)) #10, !dbg !3764
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3693, metadata !615) #10, !dbg !3765
  %10 = icmp eq i8* %9, null, !dbg !3766
  br i1 %10, label %14, label %11, !dbg !3768

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3769, !tbaa !768
  %13 = icmp eq i8 %12, 0, !dbg !3771
  br i1 %13, label %14, label %15, !dbg !3772

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3774

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.103, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3693, metadata !615) #10, !dbg !3765
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3775
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3696, metadata !615) #10, !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3698, metadata !615) #10, !dbg !3777
  %18 = icmp eq i64 %17, 0, !dbg !3778
  br i1 %18, label %24, label %19, !dbg !3779

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3780
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3780
  %22 = load i8, i8* %21, align 1, !dbg !3780, !tbaa !768
  %23 = icmp ne i8 %22, 47, !dbg !3782
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3783
  %27 = add i64 %17, 14, !dbg !3784
  %28 = add i64 %27, %26, !dbg !3785
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3786
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3695, metadata !615) #10, !dbg !3787
  %30 = icmp eq i8* %29, null, !dbg !3788
  br i1 %30, label %125, label %31, !dbg !3788

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3789
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3792

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3793, !tbaa !768
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3795
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.104, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3796
  br label %37, !dbg !3797

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3795
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.104, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3796
  br label %37, !dbg !3797

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3798
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3700, metadata !615) #10, !dbg !3799
  %39 = icmp slt i32 %38, 0, !dbg !3800
  br i1 %39, label %123, label %40, !dbg !3801

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.105, i64 0, i64 0)) #10, !dbg !3802
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3701, metadata !615) #10, !dbg !3803
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3804
  br i1 %42, label %48, label %43, !dbg !3805

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3806

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !3807
  br label %123, !dbg !3809

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3742, metadata !615) #10, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3743, metadata !615) #10, !dbg !3810
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !3811
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !3812
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3813, metadata !615) #10, !dbg !3818
  %53 = load i8*, i8** %46, align 8, !dbg !3820, !tbaa !3821
  %54 = load i8*, i8** %47, align 8, !dbg !3820, !tbaa !3822
  %55 = icmp ult i8* %53, %54, !dbg !3820
  br i1 %55, label %58, label %56, !dbg !3820, !prof !3823

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3824
  br label %62, !dbg !3824

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3826
  store i8* %59, i8** %46, align 8, !dbg !3826, !tbaa !3821
  %60 = load i8, i8* %53, align 1, !dbg !3826, !tbaa !768
  %61 = zext i8 %60 to i32, !dbg !3826
  br label %62, !dbg !3826

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3828
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3744, metadata !615) #10, !dbg !3830
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3831

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3832

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3813, metadata !615) #10, !dbg !3832
  %66 = load i8*, i8** %46, align 8, !dbg !3836, !tbaa !3821
  %67 = load i8*, i8** %47, align 8, !dbg !3836, !tbaa !3822
  %68 = icmp ult i8* %66, %67, !dbg !3836
  br i1 %68, label %71, label %69, !dbg !3836, !prof !3823

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3837
  br label %75, !dbg !3837

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3838
  store i8* %72, i8** %46, align 8, !dbg !3838, !tbaa !3821
  %73 = load i8, i8* %66, align 1, !dbg !3838, !tbaa !768
  %74 = zext i8 %73 to i32, !dbg !3838
  br label %75, !dbg !3838

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3839
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3744, metadata !615) #10, !dbg !3830
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3840, !llvm.loop !3842

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !3845
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.106, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !3846
  %80 = icmp slt i32 %79, 2, !dbg !3848
  br i1 %80, label %115, label %81, !dbg !3849

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3850
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3749, metadata !615) #10, !dbg !3851
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3852
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3750, metadata !615) #10, !dbg !3853
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3751, metadata !615) #10, !dbg !3854
  %84 = icmp eq i64 %51, 0, !dbg !3855
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3857

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3743, metadata !615) #10, !dbg !3810
  %89 = add i64 %86, 2, !dbg !3858
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3742, metadata !615) #10, !dbg !3806
  br label %95, !dbg !3861

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3862
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3743, metadata !615) #10, !dbg !3810
  %93 = add i64 %92, 1, !dbg !3864
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !3865
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3742, metadata !615) #10, !dbg !3806
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3742, metadata !615) #10, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3743, metadata !615) #10, !dbg !3810
  %98 = icmp eq i8* %97, null, !dbg !3866
  br i1 %98, label %99, label %100, !dbg !3868

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3743, metadata !615) #10, !dbg !3810
  call void @free(i8* %52) #10, !dbg !3869
  br label %116, !dbg !3871

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3872
  %102 = xor i64 %83, -1, !dbg !3873
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3873
  %104 = xor i64 %82, -1, !dbg !3874
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3874
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3875, metadata !615) #10, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3883, metadata !615) #10, !dbg !3884
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !3886
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !3887
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3875, metadata !615) #10, !dbg !3888
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3883, metadata !615) #10, !dbg !3888
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !3890
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !3891
  br label %111, !dbg !3892

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3806

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3742, metadata !615) #10, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3743, metadata !615) #10, !dbg !3810
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3892
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3892
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3806

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3806

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3742, metadata !615) #10, !dbg !3806
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3743, metadata !615) #10, !dbg !3810
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !3892
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !3892
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3893
  %120 = icmp eq i64 %117, 0, !dbg !3894
  br i1 %120, label %123, label %121, !dbg !3896

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3897
  store i8 0, i8* %122, align 1, !dbg !3899, !tbaa !768
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3692, metadata !615) #10, !dbg !3761
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.101, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.101, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.101, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3692, metadata !615) #10, !dbg !3761
  call void @free(i8* %29) #10, !dbg !3900
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.101, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3692, metadata !615) #10, !dbg !3761
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3901, !tbaa !623
  br label %127, !dbg !3902

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3671, metadata !615), !dbg !3903
  %129 = load i8, i8* %128, align 1, !dbg !3904, !tbaa !768
  %130 = icmp eq i8 %129, 0, !dbg !3905
  br i1 %130, label %157, label %131, !dbg !3906

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3908

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !3908
  %136 = icmp eq i32 %135, 0, !dbg !3909
  br i1 %136, label %143, label %137, !dbg !3910

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3911
  br i1 %138, label %139, label %147, !dbg !3913

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3914
  %141 = load i8, i8* %140, align 1, !dbg !3914, !tbaa !768
  %142 = icmp eq i8 %141, 0, !dbg !3916
  br i1 %142, label %143, label %147, !dbg !3917

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3919
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3921
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3922
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3670, metadata !615), !dbg !3756
  br label %157, !dbg !3923

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3924
  %149 = add i64 %148, 1, !dbg !3925
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3926
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3671, metadata !615), !dbg !3903
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3927
  %152 = add i64 %151, 1, !dbg !3928
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3929
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3671, metadata !615), !dbg !3903
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3671, metadata !615), !dbg !3903
  %154 = load i8, i8* %153, align 1, !dbg !3904, !tbaa !768
  %155 = icmp eq i8 %154, 0, !dbg !3905
  br i1 %155, label %156, label %132, !dbg !3906, !llvm.loop !3930

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3756

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3670, metadata !615), !dbg !3756
  %159 = load i8, i8* %158, align 1, !dbg !3933, !tbaa !768
  %160 = icmp eq i8 %159, 0, !dbg !3935
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.107, i64 0, i64 0), i8* %158, !dbg !3936
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3670, metadata !615), !dbg !3756
  ret i8* %161, !dbg !3937
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3938 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3983, metadata !615), !dbg !3987
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3984, metadata !615), !dbg !3988
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3986, metadata !615), !dbg !3989
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3990
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3985, metadata !615), !dbg !3991
  %3 = icmp slt i32 %2, 0, !dbg !3992
  br i1 %3, label %4, label %6, !dbg !3994

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3995
  br label %24, !dbg !3996

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3997
  %8 = icmp eq i32 %7, 0, !dbg !3997
  br i1 %8, label %13, label %9, !dbg !3999

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4000
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4002
  %12 = icmp eq i64 %11, -1, !dbg !4004
  br i1 %12, label %16, label %13, !dbg !4005

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4006
  %15 = icmp eq i32 %14, 0, !dbg !4006
  br i1 %15, label %16, label %18, !dbg !4007

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3984, metadata !615), !dbg !3988
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4009
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3986, metadata !615), !dbg !3989
  br label %24, !dbg !4010

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4011
  %20 = load i32, i32* %19, align 4, !dbg !4011, !tbaa !706
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3984, metadata !615), !dbg !3988
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3984, metadata !615), !dbg !3988
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4009
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3986, metadata !615), !dbg !3989
  %22 = icmp eq i32 %20, 0, !dbg !4012
  br i1 %22, label %24, label %23, !dbg !4010

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4014, !tbaa !706
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3986, metadata !615), !dbg !3989
  br label %24, !dbg !4016

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4017
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4018 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4063, metadata !615), !dbg !4064
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4065
  br i1 %2, label %6, label %3, !dbg !4067

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4068
  %5 = icmp eq i32 %4, 0, !dbg !4068
  br i1 %5, label %6, label %8, !dbg !4070

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4072
  br label %17, !dbg !4073

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4074, metadata !615) #10, !dbg !4079
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4081
  %10 = load i32, i32* %9, align 8, !dbg !4081, !tbaa !3591
  %11 = and i32 %10, 256, !dbg !4083
  %12 = icmp eq i32 %11, 0, !dbg !4083
  br i1 %12, label %15, label %13, !dbg !4084

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4085
  br label %15, !dbg !4085

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4086
  br label %17, !dbg !4087

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4088
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4089 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4135, metadata !615), !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4136, metadata !615), !dbg !4142
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4137, metadata !615), !dbg !4143
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4144
  %5 = load i8*, i8** %4, align 8, !dbg !4144, !tbaa !3822
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4145
  %7 = load i8*, i8** %6, align 8, !dbg !4145, !tbaa !3821
  %8 = icmp eq i8* %5, %7, !dbg !4146
  br i1 %8, label %9, label %28, !dbg !4147

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4148
  %11 = load i8*, i8** %10, align 8, !dbg !4148, !tbaa !4150
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4151
  %13 = load i8*, i8** %12, align 8, !dbg !4151, !tbaa !4152
  %14 = icmp eq i8* %11, %13, !dbg !4153
  br i1 %14, label %15, label %28, !dbg !4154

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4155
  %17 = load i8*, i8** %16, align 8, !dbg !4155, !tbaa !4156
  %18 = icmp eq i8* %17, null, !dbg !4157
  br i1 %18, label %19, label %28, !dbg !4158

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4160
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4161
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4138, metadata !615), !dbg !4163
  %22 = icmp eq i64 %21, -1, !dbg !4164
  br i1 %22, label %30, label %23, !dbg !4166

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4167
  %25 = load i32, i32* %24, align 8, !dbg !4168, !tbaa !3591
  %26 = and i32 %25, -17, !dbg !4168
  store i32 %26, i32* %24, align 8, !dbg !4168, !tbaa !3591
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4169
  store i64 %21, i64* %27, align 8, !dbg !4170, !tbaa !4171
  br label %30, !dbg !4172

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4173
  br label %30, !dbg !4174

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4175
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

!llvm.dbg.cu = !{!498, !2, !11, !20, !536, !28, !46, !55, !539, !562, !142, !570, !587, !589, !591, !594, !596, !151, !599, !601, !603}
!llvm.ident = !{!605, !605, !605, !605, !605, !605, !605, !605, !605, !605, !605, !605, !605, !605, !605, !605, !605, !605, !605, !605, !605}
!llvm.module.flags = !{!606, !607, !608, !609}

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
!499 = !DIFile(filename: "src/yes.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!500 = !{!6, !49, !94, !501, !503, !50}
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
!536 = distinct !DICompileUnit(language: DW_LANG_C99, file: !537, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !538)
!537 = !DIFile(filename: "./lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!538 = !{!6, !94}
!539 = distinct !DICompileUnit(language: DW_LANG_C99, file: !540, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !541)
!540 = !DIFile(filename: "./lib/safe-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!541 = !{!542}
!542 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !544, file: !543, line: 62, size: 32, elements: !560)
!543 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = distinct !DISubprogram(name: "safe_write", scope: !543, file: !543, line: 56, type: !545, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{!94, !25, !501, !94}
!547 = !{!548, !549, !550, !551}
!548 = !DILocalVariable(name: "fd", arg: 1, scope: !544, file: !543, line: 56, type: !25)
!549 = !DILocalVariable(name: "buf", arg: 2, scope: !544, file: !543, line: 56, type: !501)
!550 = !DILocalVariable(name: "count", arg: 3, scope: !544, file: !543, line: 56, type: !94)
!551 = !DILocalVariable(name: "result", scope: !552, file: !543, line: 66, type: !555)
!552 = distinct !DILexicalBlock(scope: !553, file: !543, line: 65, column: 5)
!553 = distinct !DILexicalBlock(scope: !554, file: !543, line: 64, column: 3)
!554 = distinct !DILexicalBlock(scope: !544, file: !543, line: 64, column: 3)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !556, line: 109, baseType: !557)
!556 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !558, line: 181, baseType: !559)
!558 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!560 = !{!561}
!561 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !564, retainedTypes: !569)
!563 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = !{!565}
!565 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !566, line: 41, size: 32, elements: !567)
!566 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = !{!568}
!568 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!569 = !{!49}
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !572, retainedTypes: !586)
!571 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = !{!573}
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !575, file: !574, line: 192, size: 32, elements: !584)
!574 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = distinct !DISubprogram(name: "x2nrealloc", scope: !574, file: !574, line: 180, type: !576, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !579)
!576 = !DISubroutineType(types: !577)
!577 = !{!49, !49, !578, !94}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!579 = !{!580, !581, !582, !583}
!580 = !DILocalVariable(name: "p", arg: 1, scope: !575, file: !574, line: 180, type: !49)
!581 = !DILocalVariable(name: "pn", arg: 2, scope: !575, file: !574, line: 180, type: !578)
!582 = !DILocalVariable(name: "s", arg: 3, scope: !575, file: !574, line: 180, type: !94)
!583 = !DILocalVariable(name: "n", scope: !575, file: !574, line: 182, type: !94)
!584 = !{!585}
!585 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!586 = !{!94, !50, !49}
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!588 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !569)
!590 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !593)
!592 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = !{!94}
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!595 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !598)
!597 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = !{!94, !501, !503, !6}
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!600 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !569)
!602 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !569)
!604 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!606 = !{i32 2, !"Dwarf Version", i32 4}
!607 = !{i32 2, !"Debug Info Version", i32 3}
!608 = !{i32 1, !"PIC Level", i32 2}
!609 = !{i32 1, !"PIE Level", i32 2}
!610 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 36, type: !611, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !25}
!613 = !{!614}
!614 = !DILocalVariable(name: "status", arg: 1, scope: !610, file: !499, line: 36, type: !25)
!615 = !DIExpression()
!616 = !DILocation(line: 36, column: 12, scope: !610)
!617 = !DILocation(line: 38, column: 14, scope: !618)
!618 = distinct !DILexicalBlock(scope: !610, file: !499, line: 38, column: 7)
!619 = !DILocation(line: 38, column: 7, scope: !610)
!620 = !DILocation(line: 39, column: 5, scope: !621)
!621 = !DILexicalBlockFile(scope: !622, file: !499, discriminator: 1)
!622 = distinct !DILexicalBlock(scope: !618, file: !499, line: 39, column: 5)
!623 = !{!624, !624, i64 0}
!624 = !{!"any pointer", !625, i64 0}
!625 = !{!"omnipotent char", !626, i64 0}
!626 = !{!"Simple C/C++ TBAA"}
!627 = !DILocation(line: 39, column: 5, scope: !628)
!628 = !DILexicalBlockFile(scope: !622, file: !499, discriminator: 3)
!629 = !DILocation(line: 39, column: 5, scope: !630)
!630 = !DILexicalBlockFile(scope: !622, file: !499, discriminator: 2)
!631 = !DILocation(line: 42, column: 7, scope: !632)
!632 = distinct !DILexicalBlock(scope: !618, file: !499, line: 41, column: 5)
!633 = !DILocation(line: 42, column: 7, scope: !634)
!634 = !DILexicalBlockFile(scope: !632, file: !499, discriminator: 1)
!635 = !DILocation(line: 48, column: 7, scope: !632)
!636 = !DILocation(line: 48, column: 7, scope: !634)
!637 = !DILocation(line: 52, column: 7, scope: !632)
!638 = !DILocation(line: 52, column: 7, scope: !634)
!639 = !DILocation(line: 53, column: 7, scope: !632)
!640 = !DILocation(line: 53, column: 7, scope: !634)
!641 = !DILocation(line: 642, column: 15, scope: !508, inlinedAt: !642)
!642 = distinct !DILocation(line: 54, column: 7, scope: !632)
!643 = !DILocation(line: 651, column: 3, scope: !508, inlinedAt: !642)
!644 = !DILocation(line: 651, column: 3, scope: !645, inlinedAt: !642)
!645 = !DILexicalBlockFile(scope: !508, file: !509, discriminator: 1)
!646 = !DILocation(line: 655, column: 29, scope: !508, inlinedAt: !642)
!647 = !DILocation(line: 655, column: 15, scope: !508, inlinedAt: !642)
!648 = !DILocation(line: 656, column: 7, scope: !528, inlinedAt: !642)
!649 = !DILocation(line: 656, column: 19, scope: !528, inlinedAt: !642)
!650 = !DILocation(line: 656, column: 22, scope: !651, inlinedAt: !642)
!651 = !DILexicalBlockFile(scope: !528, file: !509, discriminator: 16)
!652 = !DILocation(line: 656, column: 7, scope: !653, inlinedAt: !642)
!653 = !DILexicalBlockFile(scope: !508, file: !509, discriminator: 16)
!654 = !DILocation(line: 662, column: 7, scope: !655, inlinedAt: !642)
!655 = distinct !DILexicalBlock(scope: !528, file: !509, line: 657, column: 5)
!656 = !DILocation(line: 662, column: 7, scope: !657, inlinedAt: !642)
!657 = !DILexicalBlockFile(scope: !655, file: !509, discriminator: 1)
!658 = !DILocation(line: 664, column: 5, scope: !655, inlinedAt: !642)
!659 = !DILocation(line: 665, column: 3, scope: !508, inlinedAt: !642)
!660 = !DILocation(line: 665, column: 3, scope: !645, inlinedAt: !642)
!661 = !DILocation(line: 667, column: 3, scope: !508, inlinedAt: !642)
!662 = !DILocation(line: 667, column: 3, scope: !645, inlinedAt: !642)
!663 = !DILocation(line: 56, column: 3, scope: !610)
!664 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 60, type: !665, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !668)
!665 = !DISubroutineType(types: !666)
!666 = !{!25, !25, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !677, !680, !681, !682, !684, !687, !688}
!669 = !DILocalVariable(name: "argc", arg: 1, scope: !664, file: !499, line: 60, type: !25)
!670 = !DILocalVariable(name: "argv", arg: 2, scope: !664, file: !499, line: 60, type: !667)
!671 = !DILocalVariable(name: "operands", scope: !664, file: !499, line: 75, type: !667)
!672 = !DILocalVariable(name: "operand_lim", scope: !664, file: !499, line: 76, type: !667)
!673 = !DILocalVariable(name: "bufalloc", scope: !664, file: !499, line: 82, type: !94)
!674 = !DILocalVariable(name: "reuse_operand_strings", scope: !664, file: !499, line: 83, type: !17)
!675 = !DILocalVariable(name: "operandp", scope: !676, file: !499, line: 84, type: !667)
!676 = distinct !DILexicalBlock(scope: !664, file: !499, line: 84, column: 3)
!677 = !DILocalVariable(name: "operand_len", scope: !678, file: !499, line: 86, type: !94)
!678 = distinct !DILexicalBlock(scope: !679, file: !499, line: 85, column: 5)
!679 = distinct !DILexicalBlock(scope: !676, file: !499, line: 84, column: 3)
!680 = !DILocalVariable(name: "buf", scope: !664, file: !499, line: 102, type: !50)
!681 = !DILocalVariable(name: "bufused", scope: !664, file: !499, line: 103, type: !94)
!682 = !DILocalVariable(name: "operandp", scope: !683, file: !499, line: 104, type: !667)
!683 = distinct !DILexicalBlock(scope: !664, file: !499, line: 104, column: 3)
!684 = !DILocalVariable(name: "operand_len", scope: !685, file: !499, line: 106, type: !94)
!685 = distinct !DILexicalBlock(scope: !686, file: !499, line: 105, column: 5)
!686 = distinct !DILexicalBlock(scope: !683, file: !499, line: 104, column: 3)
!687 = !DILocalVariable(name: "copysize", scope: !664, file: !499, line: 116, type: !94)
!688 = !DILocalVariable(name: "copies", scope: !689, file: !499, line: 117, type: !94)
!689 = distinct !DILexicalBlock(scope: !664, file: !499, line: 117, column: 3)
!690 = !DILocation(line: 60, column: 11, scope: !664)
!691 = !DILocation(line: 60, column: 24, scope: !664)
!692 = !DILocation(line: 63, column: 21, scope: !664)
!693 = !DILocation(line: 63, column: 3, scope: !664)
!694 = !DILocation(line: 64, column: 3, scope: !664)
!695 = !DILocation(line: 65, column: 3, scope: !664)
!696 = !DILocation(line: 66, column: 3, scope: !664)
!697 = !DILocation(line: 68, column: 3, scope: !664)
!698 = !DILocation(line: 70, column: 63, scope: !664)
!699 = !DILocation(line: 70, column: 3, scope: !664)
!700 = !DILocation(line: 72, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !664, file: !499, line: 72, column: 7)
!702 = !DILocation(line: 72, column: 49, scope: !701)
!703 = !DILocation(line: 72, column: 7, scope: !664)
!704 = !DILocation(line: 73, column: 5, scope: !701)
!705 = !DILocation(line: 75, column: 28, scope: !664)
!706 = !{!707, !707, i64 0}
!707 = !{!"int", !625, i64 0}
!708 = !DILocation(line: 75, column: 26, scope: !664)
!709 = !DILocation(line: 75, column: 10, scope: !664)
!710 = !DILocation(line: 76, column: 29, scope: !664)
!711 = !DILocation(line: 76, column: 10, scope: !664)
!712 = !DILocation(line: 77, column: 14, scope: !713)
!713 = distinct !DILexicalBlock(scope: !664, file: !499, line: 77, column: 7)
!714 = !DILocation(line: 77, column: 7, scope: !664)
!715 = !DILocation(line: 78, column: 17, scope: !713)
!716 = !DILocation(line: 78, column: 20, scope: !713)
!717 = !DILocation(line: 78, column: 5, scope: !713)
!718 = !DILocation(line: 82, column: 10, scope: !664)
!719 = !DILocation(line: 83, column: 8, scope: !664)
!720 = !DILocation(line: 84, column: 15, scope: !676)
!721 = !DILocation(line: 84, column: 8, scope: !676)
!722 = !DILocation(line: 84, column: 45, scope: !723)
!723 = !DILexicalBlockFile(scope: !679, file: !499, discriminator: 1)
!724 = !DILocation(line: 84, column: 3, scope: !725)
!725 = !DILexicalBlockFile(scope: !676, file: !499, discriminator: 1)
!726 = !DILocation(line: 94, column: 16, scope: !727)
!727 = distinct !DILexicalBlock(scope: !664, file: !499, line: 94, column: 7)
!728 = !DILocation(line: 94, column: 7, scope: !664)
!729 = !DILocation(line: 102, column: 15, scope: !664)
!730 = !DILocation(line: 86, column: 36, scope: !678)
!731 = !DILocation(line: 86, column: 28, scope: !678)
!732 = !DILocation(line: 86, column: 14, scope: !678)
!733 = !DILocation(line: 87, column: 31, scope: !678)
!734 = !DILocation(line: 87, column: 16, scope: !678)
!735 = !DILocation(line: 88, column: 20, scope: !736)
!736 = distinct !DILexicalBlock(scope: !678, file: !499, line: 88, column: 11)
!737 = !DILocation(line: 88, column: 24, scope: !736)
!738 = !DILocation(line: 89, column: 11, scope: !736)
!739 = distinct !{!739, !740, !741}
!740 = !DILocation(line: 84, column: 3, scope: !676)
!741 = !DILocation(line: 91, column: 5, scope: !676)
!742 = !DILocation(line: 89, column: 24, scope: !743)
!743 = !DILexicalBlockFile(scope: !736, file: !499, discriminator: 1)
!744 = !DILocation(line: 89, column: 38, scope: !743)
!745 = !DILocation(line: 89, column: 45, scope: !743)
!746 = !DILocation(line: 89, column: 42, scope: !743)
!747 = !DILocation(line: 88, column: 11, scope: !748)
!748 = !DILexicalBlockFile(scope: !678, file: !499, discriminator: 1)
!749 = !DILocation(line: 102, column: 39, scope: !750)
!750 = !DILexicalBlockFile(scope: !664, file: !499, discriminator: 1)
!751 = !DILocation(line: 102, column: 15, scope: !750)
!752 = !DILocation(line: 102, column: 51, scope: !753)
!753 = !DILexicalBlockFile(scope: !664, file: !499, discriminator: 2)
!754 = !DILocation(line: 102, column: 15, scope: !753)
!755 = !DILocation(line: 102, column: 15, scope: !756)
!756 = !DILexicalBlockFile(scope: !664, file: !499, discriminator: 3)
!757 = !DILocation(line: 102, column: 9, scope: !664)
!758 = !DILocation(line: 103, column: 10, scope: !664)
!759 = !DILocation(line: 104, column: 15, scope: !683)
!760 = !DILocation(line: 104, column: 45, scope: !761)
!761 = !DILexicalBlockFile(scope: !686, file: !499, discriminator: 1)
!762 = !DILocation(line: 104, column: 3, scope: !763)
!763 = !DILexicalBlockFile(scope: !683, file: !499, discriminator: 1)
!764 = !DILocation(line: 106, column: 36, scope: !685)
!765 = !DILocation(line: 112, column: 15, scope: !664)
!766 = !DILocation(line: 112, column: 3, scope: !664)
!767 = !DILocation(line: 112, column: 20, scope: !664)
!768 = !{!625, !625, i64 0}
!769 = !DILocation(line: 116, column: 10, scope: !664)
!770 = !DILocation(line: 117, column: 33, scope: !689)
!771 = !DILocation(line: 117, column: 15, scope: !689)
!772 = !DILocation(line: 117, column: 45, scope: !773)
!773 = !DILexicalBlockFile(scope: !774, file: !499, discriminator: 1)
!774 = distinct !DILexicalBlock(scope: !689, file: !499, line: 117, column: 3)
!775 = !DILocation(line: 117, column: 3, scope: !776)
!776 = !DILexicalBlockFile(scope: !689, file: !499, discriminator: 1)
!777 = !DILocation(line: 119, column: 19, scope: !778)
!778 = distinct !DILexicalBlock(scope: !774, file: !499, line: 118, column: 5)
!779 = !DILocation(line: 119, column: 7, scope: !778)
!780 = !DILocation(line: 120, column: 15, scope: !778)
!781 = distinct !{!781, !782}
!782 = !{!"llvm.loop.unroll.disable"}
!783 = !DILocation(line: 106, column: 28, scope: !685)
!784 = !DILocation(line: 106, column: 14, scope: !685)
!785 = !DILocation(line: 107, column: 11, scope: !685)
!786 = !DILocation(line: 108, column: 21, scope: !787)
!787 = distinct !DILexicalBlock(scope: !685, file: !499, line: 107, column: 11)
!788 = !DILocation(line: 108, column: 9, scope: !787)
!789 = !DILocation(line: 109, column: 15, scope: !685)
!790 = !DILocation(line: 110, column: 18, scope: !685)
!791 = !DILocation(line: 110, column: 7, scope: !685)
!792 = !DILocation(line: 110, column: 22, scope: !685)
!793 = !DILocation(line: 104, column: 68, scope: !794)
!794 = !DILexicalBlockFile(scope: !686, file: !499, discriminator: 3)
!795 = distinct !{!795, !796, !797}
!796 = !DILocation(line: 104, column: 3, scope: !683)
!797 = !DILocation(line: 111, column: 5, scope: !683)
!798 = !DILocation(line: 124, column: 10, scope: !750)
!799 = distinct !{!799, !800, !801}
!800 = !DILocation(line: 117, column: 3, scope: !689)
!801 = !DILocation(line: 121, column: 5, scope: !689)
!802 = !DILocation(line: 124, column: 51, scope: !750)
!803 = !DILocation(line: 124, column: 3, scope: !750)
!804 = distinct !{!804, !805, !806}
!805 = !DILocation(line: 124, column: 3, scope: !664)
!806 = !DILocation(line: 125, column: 5, scope: !664)
!807 = !DILocation(line: 126, column: 13, scope: !664)
!808 = !DILocation(line: 126, column: 20, scope: !750)
!809 = !DILocation(line: 126, column: 3, scope: !753)
!810 = !DILocation(line: 128, column: 1, scope: !664)
!811 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !510, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !812)
!812 = !{!813}
!813 = !DILocalVariable(name: "file", arg: 1, scope: !811, file: !16, line: 41, type: !6)
!814 = !DILocation(line: 41, column: 41, scope: !811)
!815 = !DILocation(line: 43, column: 13, scope: !811)
!816 = !DILocation(line: 44, column: 1, scope: !811)
!817 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !818, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !17}
!820 = !{!821}
!821 = !DILocalVariable(name: "ignore", arg: 1, scope: !817, file: !16, line: 78, type: !17)
!822 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!823 = !DILocation(line: 78, column: 37, scope: !817)
!824 = !DILocation(line: 80, column: 16, scope: !817)
!825 = !{!826, !826, i64 0}
!826 = !{!"_Bool", !625, i64 0}
!827 = !DILocation(line: 81, column: 1, scope: !817)
!828 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !829, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{null}
!831 = !{!832}
!832 = !DILocalVariable(name: "write_error", scope: !833, file: !16, line: 112, type: !6)
!833 = distinct !DILexicalBlock(scope: !834, file: !16, line: 111, column: 5)
!834 = distinct !DILexicalBlock(scope: !828, file: !16, line: 109, column: 7)
!835 = !DILocation(line: 109, column: 21, scope: !834)
!836 = !DILocation(line: 109, column: 7, scope: !834)
!837 = !DILocation(line: 109, column: 29, scope: !834)
!838 = !DILocation(line: 110, column: 7, scope: !834)
!839 = !DILocation(line: 110, column: 12, scope: !840)
!840 = !DILexicalBlockFile(scope: !834, file: !16, discriminator: 1)
!841 = !{i8 0, i8 2}
!842 = !DILocation(line: 114, column: 19, scope: !843)
!843 = distinct !DILexicalBlock(scope: !833, file: !16, line: 113, column: 11)
!844 = !DILocation(line: 110, column: 25, scope: !840)
!845 = !DILocation(line: 110, column: 28, scope: !846)
!846 = !DILexicalBlockFile(scope: !834, file: !16, discriminator: 2)
!847 = !DILocation(line: 110, column: 34, scope: !846)
!848 = !DILocation(line: 109, column: 7, scope: !849)
!849 = !DILexicalBlockFile(scope: !828, file: !16, discriminator: 1)
!850 = !DILocation(line: 112, column: 33, scope: !833)
!851 = !DILocation(line: 112, column: 19, scope: !833)
!852 = !DILocation(line: 113, column: 11, scope: !843)
!853 = !DILocation(line: 113, column: 11, scope: !833)
!854 = !DILocation(line: 114, column: 36, scope: !855)
!855 = !DILexicalBlockFile(scope: !843, file: !16, discriminator: 1)
!856 = !DILocation(line: 114, column: 9, scope: !857)
!857 = !DILexicalBlockFile(scope: !843, file: !16, discriminator: 2)
!858 = !DILocation(line: 114, column: 9, scope: !843)
!859 = !DILocation(line: 117, column: 9, scope: !855)
!860 = !DILocation(line: 119, column: 14, scope: !833)
!861 = !DILocation(line: 119, column: 7, scope: !833)
!862 = !DILocation(line: 122, column: 22, scope: !863)
!863 = distinct !DILexicalBlock(scope: !828, file: !16, line: 122, column: 8)
!864 = !DILocation(line: 122, column: 8, scope: !863)
!865 = !DILocation(line: 122, column: 30, scope: !863)
!866 = !DILocation(line: 122, column: 8, scope: !828)
!867 = !DILocation(line: 123, column: 13, scope: !863)
!868 = !DILocation(line: 123, column: 6, scope: !863)
!869 = !DILocation(line: 124, column: 1, scope: !828)
!870 = distinct !DISubprogram(name: "full_write", scope: !871, file: !871, line: 58, type: !545, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !536, variables: !872)
!871 = !DIFile(filename: "lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!872 = !{!873, !874, !875, !876, !877, !878}
!873 = !DILocalVariable(name: "fd", arg: 1, scope: !870, file: !871, line: 58, type: !25)
!874 = !DILocalVariable(name: "buf", arg: 2, scope: !870, file: !871, line: 58, type: !501)
!875 = !DILocalVariable(name: "count", arg: 3, scope: !870, file: !871, line: 58, type: !94)
!876 = !DILocalVariable(name: "total", scope: !870, file: !871, line: 60, type: !94)
!877 = !DILocalVariable(name: "ptr", scope: !870, file: !871, line: 61, type: !6)
!878 = !DILocalVariable(name: "n_rw", scope: !879, file: !871, line: 65, type: !94)
!879 = distinct !DILexicalBlock(scope: !870, file: !871, line: 64, column: 5)
!880 = !DILocation(line: 58, column: 14, scope: !870)
!881 = !DILocation(line: 58, column: 30, scope: !870)
!882 = !DILocation(line: 58, column: 42, scope: !870)
!883 = !DILocation(line: 60, column: 10, scope: !870)
!884 = !DILocation(line: 61, column: 15, scope: !870)
!885 = !DILocation(line: 63, column: 16, scope: !886)
!886 = !DILexicalBlockFile(scope: !870, file: !871, discriminator: 1)
!887 = !DILocation(line: 63, column: 3, scope: !886)
!888 = !DILocation(line: 65, column: 21, scope: !879)
!889 = !DILocation(line: 65, column: 14, scope: !879)
!890 = !DILocation(line: 66, column: 11, scope: !879)
!891 = !DILocation(line: 70, column: 11, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !871, line: 69, column: 9)
!893 = distinct !DILexicalBlock(scope: !879, file: !871, line: 68, column: 11)
!894 = !DILocation(line: 70, column: 17, scope: !892)
!895 = !DILocation(line: 71, column: 11, scope: !892)
!896 = !DILocation(line: 73, column: 13, scope: !879)
!897 = !DILocation(line: 74, column: 11, scope: !879)
!898 = !DILocation(line: 75, column: 13, scope: !879)
!899 = distinct !{!899, !900, !901}
!900 = !DILocation(line: 63, column: 3, scope: !870)
!901 = !DILocation(line: 76, column: 5, scope: !870)
!902 = !DILocation(line: 78, column: 3, scope: !870)
!903 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !904, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !907)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !25, !667, !6, !6, !6, !906, null}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!907 = !{!908, !909, !910, !911, !912, !913, !914, !915, !916}
!908 = !DILocalVariable(name: "argc", arg: 1, scope: !903, file: !31, line: 44, type: !25)
!909 = !DILocalVariable(name: "argv", arg: 2, scope: !903, file: !31, line: 45, type: !667)
!910 = !DILocalVariable(name: "command_name", arg: 3, scope: !903, file: !31, line: 46, type: !6)
!911 = !DILocalVariable(name: "package", arg: 4, scope: !903, file: !31, line: 47, type: !6)
!912 = !DILocalVariable(name: "version", arg: 5, scope: !903, file: !31, line: 48, type: !6)
!913 = !DILocalVariable(name: "usage_func", arg: 6, scope: !903, file: !31, line: 49, type: !906)
!914 = !DILocalVariable(name: "c", scope: !903, file: !31, line: 52, type: !25)
!915 = !DILocalVariable(name: "saved_opterr", scope: !903, file: !31, line: 53, type: !25)
!916 = !DILocalVariable(name: "authors", scope: !917, file: !31, line: 71, type: !921)
!917 = distinct !DILexicalBlock(scope: !918, file: !31, line: 70, column: 11)
!918 = distinct !DILexicalBlock(scope: !919, file: !31, line: 64, column: 9)
!919 = distinct !DILexicalBlock(scope: !920, file: !31, line: 62, column: 5)
!920 = distinct !DILexicalBlock(scope: !903, file: !31, line: 60, column: 7)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !922, line: 80, baseType: !923)
!922 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !924, line: 50, baseType: !925)
!924 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !926)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 192, elements: !933)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !928)
!928 = !{!929, !930, !931, !932}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !927, file: !29, line: 71, baseType: !113, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !927, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !927, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !927, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!933 = !{!934}
!934 = !DISubrange(count: 1)
!935 = !DILocation(line: 44, column: 25, scope: !903)
!936 = !DILocation(line: 45, column: 28, scope: !903)
!937 = !DILocation(line: 46, column: 33, scope: !903)
!938 = !DILocation(line: 47, column: 33, scope: !903)
!939 = !DILocation(line: 48, column: 33, scope: !903)
!940 = !DILocation(line: 49, column: 28, scope: !903)
!941 = !DILocation(line: 55, column: 18, scope: !903)
!942 = !DILocation(line: 53, column: 7, scope: !903)
!943 = !DILocation(line: 58, column: 10, scope: !903)
!944 = !DILocation(line: 60, column: 12, scope: !920)
!945 = !DILocation(line: 61, column: 7, scope: !920)
!946 = !DILocation(line: 61, column: 15, scope: !947)
!947 = !DILexicalBlockFile(scope: !920, file: !31, discriminator: 1)
!948 = !DILocation(line: 52, column: 7, scope: !903)
!949 = !DILocation(line: 60, column: 7, scope: !950)
!950 = !DILexicalBlockFile(scope: !903, file: !31, discriminator: 1)
!951 = !DILocation(line: 66, column: 11, scope: !918)
!952 = !DILocation(line: 67, column: 11, scope: !918)
!953 = !DILocation(line: 71, column: 13, scope: !917)
!954 = !DILocation(line: 71, column: 21, scope: !917)
!955 = !DILocation(line: 72, column: 13, scope: !917)
!956 = !DILocation(line: 73, column: 29, scope: !917)
!957 = !DILocation(line: 73, column: 13, scope: !917)
!958 = !DILocation(line: 74, column: 13, scope: !917)
!959 = !DILocation(line: 84, column: 10, scope: !903)
!960 = !DILocation(line: 88, column: 10, scope: !903)
!961 = !DILocation(line: 89, column: 1, scope: !903)
!962 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !510, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !963)
!963 = !{!964, !965, !966}
!964 = !DILocalVariable(name: "argv0", arg: 1, scope: !962, file: !52, line: 39, type: !6)
!965 = !DILocalVariable(name: "slash", scope: !962, file: !52, line: 46, type: !6)
!966 = !DILocalVariable(name: "base", scope: !962, file: !52, line: 47, type: !6)
!967 = !DILocation(line: 39, column: 31, scope: !962)
!968 = !DILocation(line: 51, column: 13, scope: !969)
!969 = distinct !DILexicalBlock(scope: !962, file: !52, line: 51, column: 7)
!970 = !DILocation(line: 51, column: 7, scope: !962)
!971 = !DILocation(line: 55, column: 14, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !52, line: 52, column: 5)
!973 = !DILocation(line: 54, column: 7, scope: !972)
!974 = !DILocation(line: 56, column: 7, scope: !972)
!975 = !DILocation(line: 59, column: 11, scope: !962)
!976 = !DILocation(line: 46, column: 15, scope: !962)
!977 = !DILocation(line: 60, column: 17, scope: !962)
!978 = !DILocation(line: 60, column: 33, scope: !979)
!979 = !DILexicalBlockFile(scope: !962, file: !52, discriminator: 1)
!980 = !DILocation(line: 60, column: 11, scope: !962)
!981 = !DILocation(line: 47, column: 15, scope: !962)
!982 = !DILocation(line: 61, column: 12, scope: !983)
!983 = distinct !DILexicalBlock(scope: !962, file: !52, line: 61, column: 7)
!984 = !DILocation(line: 61, column: 20, scope: !983)
!985 = !DILocation(line: 61, column: 25, scope: !983)
!986 = !DILocation(line: 61, column: 28, scope: !987)
!987 = !DILexicalBlockFile(scope: !983, file: !52, discriminator: 1)
!988 = !DILocation(line: 61, column: 61, scope: !987)
!989 = !DILocation(line: 61, column: 7, scope: !979)
!990 = !DILocation(line: 64, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !52, line: 64, column: 11)
!992 = distinct !DILexicalBlock(scope: !983, file: !52, line: 62, column: 5)
!993 = !DILocation(line: 64, column: 36, scope: !991)
!994 = !DILocation(line: 64, column: 11, scope: !992)
!995 = !DILocation(line: 66, column: 24, scope: !996)
!996 = distinct !DILexicalBlock(scope: !991, file: !52, line: 65, column: 9)
!997 = !DILocation(line: 70, column: 41, scope: !996)
!998 = !DILocation(line: 72, column: 9, scope: !996)
!999 = !DILocation(line: 84, column: 16, scope: !962)
!1000 = !DILocation(line: 90, column: 27, scope: !962)
!1001 = !DILocation(line: 92, column: 1, scope: !962)
!1002 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !1003, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1006)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!1005, !1005}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1006 = !{!1007, !1008, !1009}
!1007 = !DILocalVariable(name: "o", arg: 1, scope: !1002, file: !100, line: 114, type: !1005)
!1008 = !DILocalVariable(name: "e", scope: !1002, file: !100, line: 116, type: !25)
!1009 = !DILocalVariable(name: "p", scope: !1002, file: !100, line: 117, type: !1005)
!1010 = !DILocation(line: 114, column: 48, scope: !1002)
!1011 = !DILocation(line: 116, column: 11, scope: !1002)
!1012 = !DILocation(line: 116, column: 7, scope: !1002)
!1013 = !DILocation(line: 117, column: 40, scope: !1002)
!1014 = !DILocation(line: 117, column: 40, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !1002, file: !100, discriminator: 3)
!1016 = !DILocation(line: 117, column: 31, scope: !1015)
!1017 = !DILocation(line: 117, column: 27, scope: !1002)
!1018 = !DILocation(line: 119, column: 9, scope: !1002)
!1019 = !DILocation(line: 120, column: 3, scope: !1002)
!1020 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !1021, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1025)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!58, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1025 = !{!1026}
!1026 = !DILocalVariable(name: "o", arg: 1, scope: !1020, file: !100, line: 125, type: !1023)
!1027 = !DILocation(line: 125, column: 50, scope: !1020)
!1028 = !DILocation(line: 127, column: 11, scope: !1020)
!1029 = !DILocation(line: 127, column: 46, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1020, file: !100, discriminator: 3)
!1031 = !{!1032, !625, i64 0}
!1032 = !{!"quoting_options", !625, i64 0, !707, i64 4, !625, i64 8, !624, i64 40, !624, i64 48}
!1033 = !DILocation(line: 127, column: 3, scope: !1030)
!1034 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !1035, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !1005, !58}
!1037 = !{!1038, !1039}
!1038 = !DILocalVariable(name: "o", arg: 1, scope: !1034, file: !100, line: 133, type: !1005)
!1039 = !DILocalVariable(name: "s", arg: 2, scope: !1034, file: !100, line: 133, type: !58)
!1040 = !DILocation(line: 133, column: 44, scope: !1034)
!1041 = !DILocation(line: 133, column: 66, scope: !1034)
!1042 = !DILocation(line: 135, column: 4, scope: !1034)
!1043 = !DILocation(line: 135, column: 39, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1034, file: !100, discriminator: 3)
!1045 = !DILocation(line: 135, column: 45, scope: !1044)
!1046 = !DILocation(line: 136, column: 1, scope: !1034)
!1047 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !1048, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!25, !1005, !8, !25}
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1057, !1058}
!1051 = !DILocalVariable(name: "o", arg: 1, scope: !1047, file: !100, line: 144, type: !1005)
!1052 = !DILocalVariable(name: "c", arg: 2, scope: !1047, file: !100, line: 144, type: !8)
!1053 = !DILocalVariable(name: "i", arg: 3, scope: !1047, file: !100, line: 144, type: !25)
!1054 = !DILocalVariable(name: "uc", scope: !1047, file: !100, line: 146, type: !494)
!1055 = !DILocalVariable(name: "p", scope: !1047, file: !100, line: 147, type: !1056)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1057 = !DILocalVariable(name: "shift", scope: !1047, file: !100, line: 149, type: !25)
!1058 = !DILocalVariable(name: "r", scope: !1047, file: !100, line: 150, type: !25)
!1059 = !DILocation(line: 144, column: 43, scope: !1047)
!1060 = !DILocation(line: 144, column: 51, scope: !1047)
!1061 = !DILocation(line: 144, column: 58, scope: !1047)
!1062 = !DILocation(line: 146, column: 17, scope: !1047)
!1063 = !DILocation(line: 148, column: 6, scope: !1047)
!1064 = !DILocation(line: 148, column: 62, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1047, file: !100, discriminator: 3)
!1066 = !DILocation(line: 148, column: 57, scope: !1065)
!1067 = !DILocation(line: 147, column: 17, scope: !1047)
!1068 = !DILocation(line: 149, column: 18, scope: !1047)
!1069 = !DILocation(line: 149, column: 15, scope: !1047)
!1070 = !DILocation(line: 149, column: 7, scope: !1047)
!1071 = !DILocation(line: 150, column: 12, scope: !1047)
!1072 = !DILocation(line: 150, column: 15, scope: !1047)
!1073 = !DILocation(line: 150, column: 25, scope: !1047)
!1074 = !DILocation(line: 150, column: 7, scope: !1047)
!1075 = !DILocation(line: 151, column: 13, scope: !1047)
!1076 = !DILocation(line: 151, column: 18, scope: !1047)
!1077 = !DILocation(line: 151, column: 23, scope: !1047)
!1078 = !DILocation(line: 151, column: 6, scope: !1047)
!1079 = !DILocation(line: 152, column: 3, scope: !1047)
!1080 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !1081, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1083)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!25, !1005, !25}
!1083 = !{!1084, !1085, !1086}
!1084 = !DILocalVariable(name: "o", arg: 1, scope: !1080, file: !100, line: 160, type: !1005)
!1085 = !DILocalVariable(name: "i", arg: 2, scope: !1080, file: !100, line: 160, type: !25)
!1086 = !DILocalVariable(name: "r", scope: !1080, file: !100, line: 162, type: !25)
!1087 = !DILocation(line: 160, column: 44, scope: !1080)
!1088 = !DILocation(line: 160, column: 51, scope: !1080)
!1089 = !DILocation(line: 163, column: 8, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1080, file: !100, line: 163, column: 7)
!1091 = !DILocation(line: 163, column: 7, scope: !1080)
!1092 = !DILocation(line: 165, column: 10, scope: !1080)
!1093 = !{!1032, !707, i64 4}
!1094 = !DILocation(line: 162, column: 7, scope: !1080)
!1095 = !DILocation(line: 166, column: 12, scope: !1080)
!1096 = !DILocation(line: 167, column: 3, scope: !1080)
!1097 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !1098, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1100)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !1005, !6, !6}
!1100 = !{!1101, !1102, !1103}
!1101 = !DILocalVariable(name: "o", arg: 1, scope: !1097, file: !100, line: 171, type: !1005)
!1102 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1097, file: !100, line: 172, type: !6)
!1103 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1097, file: !100, line: 172, type: !6)
!1104 = !DILocation(line: 171, column: 45, scope: !1097)
!1105 = !DILocation(line: 172, column: 33, scope: !1097)
!1106 = !DILocation(line: 172, column: 57, scope: !1097)
!1107 = !DILocation(line: 174, column: 8, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1097, file: !100, line: 174, column: 7)
!1109 = !DILocation(line: 174, column: 7, scope: !1097)
!1110 = !DILocation(line: 176, column: 6, scope: !1097)
!1111 = !DILocation(line: 176, column: 12, scope: !1097)
!1112 = !DILocation(line: 177, column: 8, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1097, file: !100, line: 177, column: 7)
!1114 = !DILocation(line: 177, column: 23, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1113, file: !100, discriminator: 1)
!1116 = !DILocation(line: 177, column: 19, scope: !1113)
!1117 = !DILocation(line: 178, column: 5, scope: !1113)
!1118 = !DILocation(line: 179, column: 6, scope: !1097)
!1119 = !DILocation(line: 179, column: 17, scope: !1097)
!1120 = !{!1032, !624, i64 40}
!1121 = !DILocation(line: 180, column: 6, scope: !1097)
!1122 = !DILocation(line: 180, column: 18, scope: !1097)
!1123 = !{!1032, !624, i64 48}
!1124 = !DILocation(line: 181, column: 1, scope: !1097)
!1125 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !1126, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!94, !50, !94, !6, !94, !1023}
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136}
!1129 = !DILocalVariable(name: "buffer", arg: 1, scope: !1125, file: !100, line: 776, type: !50)
!1130 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1125, file: !100, line: 776, type: !94)
!1131 = !DILocalVariable(name: "arg", arg: 3, scope: !1125, file: !100, line: 777, type: !6)
!1132 = !DILocalVariable(name: "argsize", arg: 4, scope: !1125, file: !100, line: 777, type: !94)
!1133 = !DILocalVariable(name: "o", arg: 5, scope: !1125, file: !100, line: 778, type: !1023)
!1134 = !DILocalVariable(name: "p", scope: !1125, file: !100, line: 780, type: !1023)
!1135 = !DILocalVariable(name: "e", scope: !1125, file: !100, line: 781, type: !25)
!1136 = !DILocalVariable(name: "r", scope: !1125, file: !100, line: 782, type: !94)
!1137 = !DILocation(line: 776, column: 24, scope: !1125)
!1138 = !DILocation(line: 776, column: 39, scope: !1125)
!1139 = !DILocation(line: 777, column: 30, scope: !1125)
!1140 = !DILocation(line: 777, column: 42, scope: !1125)
!1141 = !DILocation(line: 778, column: 48, scope: !1125)
!1142 = !DILocation(line: 780, column: 37, scope: !1125)
!1143 = !DILocation(line: 780, column: 33, scope: !1125)
!1144 = !DILocation(line: 781, column: 11, scope: !1125)
!1145 = !DILocation(line: 781, column: 7, scope: !1125)
!1146 = !DILocation(line: 783, column: 43, scope: !1125)
!1147 = !DILocation(line: 783, column: 53, scope: !1125)
!1148 = !DILocation(line: 783, column: 60, scope: !1125)
!1149 = !DILocation(line: 784, column: 43, scope: !1125)
!1150 = !DILocation(line: 784, column: 58, scope: !1125)
!1151 = !DILocation(line: 782, column: 14, scope: !1125)
!1152 = !DILocation(line: 782, column: 10, scope: !1125)
!1153 = !DILocation(line: 785, column: 9, scope: !1125)
!1154 = !DILocation(line: 786, column: 3, scope: !1125)
!1155 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !1156, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1160)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!94, !50, !94, !6, !94, !58, !25, !1158, !6, !6}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1185, !1186, !1187, !1188, !1189, !1192, !1193, !1210, !1213, !1214, !1221}
!1161 = !DILocalVariable(name: "buffer", arg: 1, scope: !1155, file: !100, line: 248, type: !50)
!1162 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1155, file: !100, line: 248, type: !94)
!1163 = !DILocalVariable(name: "arg", arg: 3, scope: !1155, file: !100, line: 249, type: !6)
!1164 = !DILocalVariable(name: "argsize", arg: 4, scope: !1155, file: !100, line: 249, type: !94)
!1165 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1155, file: !100, line: 250, type: !58)
!1166 = !DILocalVariable(name: "flags", arg: 6, scope: !1155, file: !100, line: 250, type: !25)
!1167 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1155, file: !100, line: 251, type: !1158)
!1168 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1155, file: !100, line: 252, type: !6)
!1169 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1155, file: !100, line: 253, type: !6)
!1170 = !DILocalVariable(name: "i", scope: !1155, file: !100, line: 255, type: !94)
!1171 = !DILocalVariable(name: "len", scope: !1155, file: !100, line: 256, type: !94)
!1172 = !DILocalVariable(name: "orig_buffersize", scope: !1155, file: !100, line: 257, type: !94)
!1173 = !DILocalVariable(name: "quote_string", scope: !1155, file: !100, line: 258, type: !6)
!1174 = !DILocalVariable(name: "quote_string_len", scope: !1155, file: !100, line: 259, type: !94)
!1175 = !DILocalVariable(name: "backslash_escapes", scope: !1155, file: !100, line: 260, type: !17)
!1176 = !DILocalVariable(name: "unibyte_locale", scope: !1155, file: !100, line: 261, type: !17)
!1177 = !DILocalVariable(name: "elide_outer_quotes", scope: !1155, file: !100, line: 262, type: !17)
!1178 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1155, file: !100, line: 263, type: !17)
!1179 = !DILocalVariable(name: "encountered_single_quote", scope: !1155, file: !100, line: 264, type: !17)
!1180 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1155, file: !100, line: 265, type: !17)
!1181 = !DILocalVariable(name: "c", scope: !1182, file: !100, line: 394, type: !494)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !100, line: 393, column: 5)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !100, line: 392, column: 3)
!1184 = distinct !DILexicalBlock(scope: !1155, file: !100, line: 392, column: 3)
!1185 = !DILocalVariable(name: "esc", scope: !1182, file: !100, line: 395, type: !494)
!1186 = !DILocalVariable(name: "is_right_quote", scope: !1182, file: !100, line: 396, type: !17)
!1187 = !DILocalVariable(name: "escaping", scope: !1182, file: !100, line: 397, type: !17)
!1188 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1182, file: !100, line: 398, type: !17)
!1189 = !DILocalVariable(name: "m", scope: !1190, file: !100, line: 602, type: !94)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 600, column: 11)
!1191 = distinct !DILexicalBlock(scope: !1182, file: !100, line: 418, column: 9)
!1192 = !DILocalVariable(name: "printable", scope: !1190, file: !100, line: 604, type: !17)
!1193 = !DILocalVariable(name: "mbstate", scope: !1194, file: !100, line: 613, type: !1196)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !100, line: 612, column: 15)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !100, line: 606, column: 17)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1197, line: 107, baseType: !1198)
!1197 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1197, line: 95, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1197, line: 83, size: 64, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1199, file: !1197, line: 85, baseType: !25, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1199, file: !1197, line: 94, baseType: !1203, size: 32, offset: 32)
!1203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1197, line: 86, size: 32, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1203, file: !1197, line: 89, baseType: !113, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1203, file: !1197, line: 93, baseType: !1207, size: 32)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1208)
!1208 = !{!1209}
!1209 = !DISubrange(count: 4)
!1210 = !DILocalVariable(name: "w", scope: !1211, file: !100, line: 623, type: !1212)
!1211 = distinct !DILexicalBlock(scope: !1194, file: !100, line: 622, column: 19)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1213 = !DILocalVariable(name: "bytes", scope: !1211, file: !100, line: 624, type: !94)
!1214 = !DILocalVariable(name: "j", scope: !1215, file: !100, line: 649, type: !94)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !100, line: 648, column: 27)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !100, line: 646, column: 29)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !100, line: 641, column: 23)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !100, line: 633, column: 30)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !100, line: 628, column: 30)
!1220 = distinct !DILexicalBlock(scope: !1211, file: !100, line: 626, column: 25)
!1221 = !DILocalVariable(name: "ilim", scope: !1222, file: !100, line: 676, type: !94)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !100, line: 673, column: 15)
!1223 = distinct !DILexicalBlock(scope: !1190, file: !100, line: 672, column: 17)
!1224 = !DILocation(line: 248, column: 33, scope: !1155)
!1225 = !DILocation(line: 248, column: 48, scope: !1155)
!1226 = !DILocation(line: 249, column: 39, scope: !1155)
!1227 = !DILocation(line: 249, column: 51, scope: !1155)
!1228 = !DILocation(line: 250, column: 46, scope: !1155)
!1229 = !DILocation(line: 250, column: 65, scope: !1155)
!1230 = !DILocation(line: 251, column: 47, scope: !1155)
!1231 = !DILocation(line: 252, column: 39, scope: !1155)
!1232 = !DILocation(line: 253, column: 39, scope: !1155)
!1233 = !DILocation(line: 256, column: 10, scope: !1155)
!1234 = !DILocation(line: 257, column: 10, scope: !1155)
!1235 = !DILocation(line: 258, column: 15, scope: !1155)
!1236 = !DILocation(line: 259, column: 10, scope: !1155)
!1237 = !DILocation(line: 260, column: 8, scope: !1155)
!1238 = !DILocation(line: 261, column: 25, scope: !1155)
!1239 = !DILocation(line: 261, column: 36, scope: !1155)
!1240 = !DILocation(line: 262, column: 8, scope: !1155)
!1241 = !DILocation(line: 263, column: 8, scope: !1155)
!1242 = !DILocation(line: 264, column: 8, scope: !1155)
!1243 = !DILocation(line: 265, column: 8, scope: !1155)
!1244 = !DILocation(line: 265, column: 3, scope: !1155)
!1245 = !DILocation(line: 308, column: 3, scope: !1155)
!1246 = !DILocation(line: 315, column: 11, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1155, file: !100, line: 309, column: 5)
!1248 = !DILocation(line: 315, column: 12, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1247, file: !100, line: 315, column: 11)
!1250 = !DILocation(line: 316, column: 9, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1252, file: !100, discriminator: 1)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !100, line: 316, column: 9)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !100, line: 316, column: 9)
!1254 = !DILocation(line: 316, column: 9, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1253, file: !100, discriminator: 1)
!1256 = !DILocation(line: 316, column: 9, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1252, file: !100, discriminator: 2)
!1258 = !DILocation(line: 354, column: 26, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !100, line: 332, column: 11)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !100, line: 331, column: 13)
!1261 = distinct !DILexicalBlock(scope: !1247, file: !100, line: 330, column: 7)
!1262 = !DILocation(line: 355, column: 27, scope: !1259)
!1263 = !DILocation(line: 356, column: 11, scope: !1259)
!1264 = !DILocation(line: 357, column: 14, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !100, line: 357, column: 13)
!1266 = !DILocation(line: 357, column: 13, scope: !1261)
!1267 = !DILocation(line: 358, column: 43, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1269, file: !100, discriminator: 1)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !100, line: 358, column: 11)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !100, line: 358, column: 11)
!1271 = !DILocation(line: 358, column: 11, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1270, file: !100, discriminator: 1)
!1273 = !DILocation(line: 359, column: 13, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1275, file: !100, discriminator: 1)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !100, line: 359, column: 13)
!1276 = distinct !DILexicalBlock(scope: !1269, file: !100, line: 359, column: 13)
!1277 = !DILocation(line: 359, column: 13, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1276, file: !100, discriminator: 1)
!1279 = !DILocation(line: 359, column: 13, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1275, file: !100, discriminator: 2)
!1281 = !DILocation(line: 359, column: 13, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1276, file: !100, discriminator: 3)
!1283 = !DILocation(line: 358, column: 70, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1269, file: !100, discriminator: 2)
!1285 = distinct !{!1285, !1286, !1287}
!1286 = !DILocation(line: 358, column: 11, scope: !1270)
!1287 = !DILocation(line: 359, column: 13, scope: !1270)
!1288 = !DILocation(line: 362, column: 28, scope: !1261)
!1289 = !DILocation(line: 364, column: 7, scope: !1247)
!1290 = !DILocation(line: 367, column: 7, scope: !1247)
!1291 = !DILocation(line: 370, column: 7, scope: !1247)
!1292 = !DILocation(line: 373, column: 12, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1247, file: !100, line: 373, column: 11)
!1294 = !DILocation(line: 373, column: 11, scope: !1247)
!1295 = !DILocation(line: 378, column: 12, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1247, file: !100, line: 378, column: 11)
!1297 = !DILocation(line: 378, column: 11, scope: !1247)
!1298 = !DILocation(line: 379, column: 9, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1300, file: !100, discriminator: 1)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 379, column: 9)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !100, line: 379, column: 9)
!1302 = !DILocation(line: 379, column: 9, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1301, file: !100, discriminator: 1)
!1304 = !DILocation(line: 379, column: 9, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1300, file: !100, discriminator: 2)
!1306 = !DILocation(line: 386, column: 7, scope: !1247)
!1307 = !DILocation(line: 389, column: 7, scope: !1247)
!1308 = !DILocation(line: 255, column: 10, scope: !1155)
!1309 = !DILocation(line: 392, column: 8, scope: !1184)
!1310 = !DILocation(line: 392, column: 27, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1183, file: !100, discriminator: 1)
!1312 = !DILocation(line: 392, column: 19, scope: !1311)
!1313 = !DILocation(line: 392, column: 60, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1183, file: !100, discriminator: 3)
!1315 = !DILocation(line: 392, column: 3, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1184, file: !100, discriminator: 4)
!1317 = !DILocation(line: 392, column: 41, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1183, file: !100, discriminator: 2)
!1319 = !DILocation(line: 392, column: 48, scope: !1318)
!1320 = !DILocation(line: 396, column: 12, scope: !1182)
!1321 = !DILocation(line: 397, column: 12, scope: !1182)
!1322 = !DILocation(line: 398, column: 12, scope: !1182)
!1323 = !DILocation(line: 401, column: 11, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1182, file: !100, line: 400, column: 11)
!1325 = !DILocation(line: 403, column: 17, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1324, file: !100, discriminator: 1)
!1327 = !DILocation(line: 404, column: 39, scope: !1324)
!1328 = !DILocation(line: 408, column: 32, scope: !1324)
!1329 = !DILocation(line: 404, column: 19, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1324, file: !100, discriminator: 2)
!1331 = !DILocation(line: 404, column: 15, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1324, file: !100, discriminator: 4)
!1333 = !DILocation(line: 409, column: 11, scope: !1324)
!1334 = !DILocation(line: 409, column: 26, scope: !1326)
!1335 = !DILocation(line: 409, column: 14, scope: !1326)
!1336 = !DILocation(line: 400, column: 11, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1182, file: !100, discriminator: 1)
!1338 = !DILocation(line: 416, column: 11, scope: !1182)
!1339 = !DILocation(line: 394, column: 21, scope: !1182)
!1340 = !DILocation(line: 417, column: 7, scope: !1182)
!1341 = !DILocation(line: 420, column: 15, scope: !1191)
!1342 = !DILocation(line: 422, column: 15, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1344, file: !100, discriminator: 1)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !100, line: 422, column: 15)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !100, line: 421, column: 13)
!1346 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 420, column: 15)
!1347 = !DILocation(line: 422, column: 15, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1349, file: !100, discriminator: 4)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !100, line: 422, column: 15)
!1350 = !DILocation(line: 422, column: 15, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1349, file: !100, discriminator: 3)
!1352 = !DILocation(line: 422, column: 15, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !100, discriminator: 6)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !100, line: 422, column: 15)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !100, line: 422, column: 15)
!1356 = distinct !DILexicalBlock(scope: !1349, file: !100, line: 422, column: 15)
!1357 = !DILocation(line: 422, column: 15, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1355, file: !100, discriminator: 6)
!1359 = !DILocation(line: 422, column: 15, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1354, file: !100, discriminator: 7)
!1361 = !DILocation(line: 422, column: 15, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1355, file: !100, discriminator: 8)
!1363 = !DILocation(line: 422, column: 15, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !100, discriminator: 11)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !100, line: 422, column: 15)
!1366 = distinct !DILexicalBlock(scope: !1356, file: !100, line: 422, column: 15)
!1367 = !DILocation(line: 422, column: 15, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1366, file: !100, discriminator: 11)
!1369 = !DILocation(line: 422, column: 15, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1365, file: !100, discriminator: 12)
!1371 = !DILocation(line: 422, column: 15, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1366, file: !100, discriminator: 13)
!1373 = !DILocation(line: 422, column: 15, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !100, discriminator: 16)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !100, line: 422, column: 15)
!1376 = distinct !DILexicalBlock(scope: !1356, file: !100, line: 422, column: 15)
!1377 = !DILocation(line: 422, column: 15, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1376, file: !100, discriminator: 16)
!1379 = !DILocation(line: 422, column: 15, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1375, file: !100, discriminator: 17)
!1381 = !DILocation(line: 422, column: 15, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1376, file: !100, discriminator: 18)
!1383 = !DILocation(line: 422, column: 15, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1356, file: !100, discriminator: 20)
!1385 = !DILocation(line: 422, column: 15, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1387, file: !100, discriminator: 22)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !100, line: 422, column: 15)
!1388 = distinct !DILexicalBlock(scope: !1344, file: !100, line: 422, column: 15)
!1389 = !DILocation(line: 422, column: 15, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1388, file: !100, discriminator: 22)
!1391 = !DILocation(line: 422, column: 15, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1387, file: !100, discriminator: 23)
!1393 = !DILocation(line: 422, column: 15, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1388, file: !100, discriminator: 24)
!1395 = !DILocation(line: 430, column: 19, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1345, file: !100, line: 429, column: 19)
!1397 = !DILocation(line: 430, column: 24, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1396, file: !100, discriminator: 1)
!1399 = !DILocation(line: 430, column: 28, scope: !1398)
!1400 = !DILocation(line: 430, column: 38, scope: !1398)
!1401 = !DILocation(line: 430, column: 48, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1396, file: !100, discriminator: 2)
!1403 = !DILocation(line: 430, column: 59, scope: !1402)
!1404 = !DILocation(line: 432, column: 19, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1406, file: !100, discriminator: 1)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !100, line: 432, column: 19)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !100, line: 432, column: 19)
!1408 = distinct !DILexicalBlock(scope: !1396, file: !100, line: 431, column: 17)
!1409 = !DILocation(line: 432, column: 19, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1407, file: !100, discriminator: 1)
!1411 = !DILocation(line: 432, column: 19, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1406, file: !100, discriminator: 2)
!1413 = !DILocation(line: 432, column: 19, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1407, file: !100, discriminator: 3)
!1415 = !DILocation(line: 433, column: 19, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1417, file: !100, discriminator: 1)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !100, line: 433, column: 19)
!1418 = distinct !DILexicalBlock(scope: !1408, file: !100, line: 433, column: 19)
!1419 = !DILocation(line: 433, column: 19, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1418, file: !100, discriminator: 1)
!1421 = !DILocation(line: 433, column: 19, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1417, file: !100, discriminator: 2)
!1423 = !DILocation(line: 433, column: 19, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1418, file: !100, discriminator: 3)
!1425 = !DILocation(line: 434, column: 17, scope: !1408)
!1426 = !DILocation(line: 441, column: 20, scope: !1346)
!1427 = !DILocation(line: 446, column: 11, scope: !1191)
!1428 = !DILocation(line: 449, column: 19, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 447, column: 13)
!1430 = !DILocation(line: 455, column: 19, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1429, file: !100, line: 454, column: 19)
!1432 = !DILocation(line: 455, column: 24, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1431, file: !100, discriminator: 1)
!1434 = !DILocation(line: 455, column: 28, scope: !1433)
!1435 = !DILocation(line: 455, column: 38, scope: !1433)
!1436 = !DILocation(line: 455, column: 47, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1431, file: !100, discriminator: 2)
!1438 = !DILocation(line: 455, column: 41, scope: !1437)
!1439 = !DILocation(line: 455, column: 52, scope: !1437)
!1440 = !DILocation(line: 454, column: 19, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1429, file: !100, discriminator: 1)
!1442 = !DILocation(line: 456, column: 25, scope: !1431)
!1443 = !DILocation(line: 456, column: 17, scope: !1431)
!1444 = !DILocation(line: 463, column: 25, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1431, file: !100, line: 457, column: 19)
!1446 = !DILocation(line: 467, column: 21, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1448, file: !100, discriminator: 1)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !100, line: 467, column: 21)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !100, line: 467, column: 21)
!1450 = !DILocation(line: 467, column: 21, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1449, file: !100, discriminator: 1)
!1452 = !DILocation(line: 467, column: 21, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1448, file: !100, discriminator: 2)
!1454 = !DILocation(line: 467, column: 21, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1449, file: !100, discriminator: 3)
!1456 = !DILocation(line: 468, column: 21, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1458, file: !100, discriminator: 1)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !100, line: 468, column: 21)
!1459 = distinct !DILexicalBlock(scope: !1445, file: !100, line: 468, column: 21)
!1460 = !DILocation(line: 468, column: 21, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1459, file: !100, discriminator: 1)
!1462 = !DILocation(line: 468, column: 21, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1458, file: !100, discriminator: 2)
!1464 = !DILocation(line: 468, column: 21, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1459, file: !100, discriminator: 3)
!1466 = !DILocation(line: 469, column: 21, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1468, file: !100, discriminator: 1)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !100, line: 469, column: 21)
!1469 = distinct !DILexicalBlock(scope: !1445, file: !100, line: 469, column: 21)
!1470 = !DILocation(line: 469, column: 21, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1469, file: !100, discriminator: 1)
!1472 = !DILocation(line: 469, column: 21, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1468, file: !100, discriminator: 2)
!1474 = !DILocation(line: 469, column: 21, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1469, file: !100, discriminator: 3)
!1476 = !DILocation(line: 470, column: 21, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1478, file: !100, discriminator: 1)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !100, line: 470, column: 21)
!1479 = distinct !DILexicalBlock(scope: !1445, file: !100, line: 470, column: 21)
!1480 = !DILocation(line: 470, column: 21, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1479, file: !100, discriminator: 1)
!1482 = !DILocation(line: 470, column: 21, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1478, file: !100, discriminator: 2)
!1484 = !DILocation(line: 470, column: 21, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1479, file: !100, discriminator: 3)
!1486 = !DILocation(line: 471, column: 21, scope: !1445)
!1487 = !DILocation(line: 395, column: 21, scope: !1182)
!1488 = !DILocation(line: 484, column: 31, scope: !1191)
!1489 = !DILocation(line: 485, column: 31, scope: !1191)
!1490 = !DILocation(line: 487, column: 31, scope: !1191)
!1491 = !DILocation(line: 488, column: 31, scope: !1191)
!1492 = !DILocation(line: 489, column: 31, scope: !1191)
!1493 = !DILocation(line: 492, column: 15, scope: !1191)
!1494 = !DILocation(line: 494, column: 19, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !100, line: 493, column: 13)
!1496 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 492, column: 15)
!1497 = !DILocation(line: 501, column: 33, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 501, column: 15)
!1499 = !DILocation(line: 506, column: 15, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 505, column: 15)
!1501 = !DILocation(line: 510, column: 15, scope: !1191)
!1502 = !DILocation(line: 518, column: 26, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 518, column: 15)
!1504 = !DILocation(line: 518, column: 15, scope: !1191)
!1505 = !DILocation(line: 518, column: 40, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1503, file: !100, discriminator: 1)
!1507 = !DILocation(line: 518, column: 47, scope: !1506)
!1508 = !DILocation(line: 522, column: 17, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 522, column: 15)
!1510 = !DILocation(line: 518, column: 18, scope: !1506)
!1511 = !DILocation(line: 518, column: 65, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1503, file: !100, discriminator: 2)
!1513 = !DILocation(line: 518, column: 15, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1191, file: !100, discriminator: 2)
!1515 = !DILocation(line: 522, column: 15, scope: !1191)
!1516 = !DILocation(line: 526, column: 11, scope: !1191)
!1517 = !DILocation(line: 541, column: 15, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 540, column: 15)
!1519 = !DILocation(line: 548, column: 15, scope: !1191)
!1520 = !DILocation(line: 550, column: 19, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !100, line: 549, column: 13)
!1522 = distinct !DILexicalBlock(scope: !1191, file: !100, line: 548, column: 15)
!1523 = !DILocation(line: 553, column: 19, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !100, line: 553, column: 19)
!1525 = !DILocation(line: 553, column: 35, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1524, file: !100, discriminator: 1)
!1527 = !DILocation(line: 553, column: 30, scope: !1524)
!1528 = !DILocation(line: 562, column: 15, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1530, file: !100, discriminator: 1)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !100, line: 562, column: 15)
!1531 = distinct !DILexicalBlock(scope: !1521, file: !100, line: 562, column: 15)
!1532 = !DILocation(line: 562, column: 15, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1531, file: !100, discriminator: 1)
!1534 = !DILocation(line: 562, column: 15, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1530, file: !100, discriminator: 2)
!1536 = !DILocation(line: 562, column: 15, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1531, file: !100, discriminator: 3)
!1538 = !DILocation(line: 563, column: 15, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1540, file: !100, discriminator: 1)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !100, line: 563, column: 15)
!1541 = distinct !DILexicalBlock(scope: !1521, file: !100, line: 563, column: 15)
!1542 = !DILocation(line: 563, column: 15, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1541, file: !100, discriminator: 1)
!1544 = !DILocation(line: 563, column: 15, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1540, file: !100, discriminator: 2)
!1546 = !DILocation(line: 563, column: 15, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1541, file: !100, discriminator: 3)
!1548 = !DILocation(line: 564, column: 15, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1550, file: !100, discriminator: 1)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !100, line: 564, column: 15)
!1551 = distinct !DILexicalBlock(scope: !1521, file: !100, line: 564, column: 15)
!1552 = !DILocation(line: 564, column: 15, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1551, file: !100, discriminator: 1)
!1554 = !DILocation(line: 564, column: 15, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1550, file: !100, discriminator: 2)
!1556 = !DILocation(line: 564, column: 15, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1551, file: !100, discriminator: 3)
!1558 = !DILocation(line: 566, column: 13, scope: !1521)
!1559 = !DILocation(line: 606, column: 17, scope: !1190)
!1560 = !DILocation(line: 602, column: 20, scope: !1190)
!1561 = !DILocation(line: 609, column: 29, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1195, file: !100, line: 607, column: 15)
!1563 = !{!1564, !1564, i64 0}
!1564 = !{!"short", !625, i64 0}
!1565 = !DILocation(line: 609, column: 27, scope: !1562)
!1566 = !DILocation(line: 604, column: 18, scope: !1190)
!1567 = !DILocation(line: 610, column: 15, scope: !1562)
!1568 = !DILocation(line: 613, column: 17, scope: !1194)
!1569 = !DILocation(line: 614, column: 17, scope: !1194)
!1570 = !DILocation(line: 618, column: 29, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1194, file: !100, line: 618, column: 21)
!1572 = !DILocation(line: 618, column: 21, scope: !1194)
!1573 = distinct !{!1573, !1574, !1575}
!1574 = !DILocation(line: 621, column: 17, scope: !1194)
!1575 = !DILocation(line: 667, column: 44, scope: !1194)
!1576 = !DILocation(line: 619, column: 29, scope: !1571)
!1577 = !DILocation(line: 619, column: 19, scope: !1571)
!1578 = !DILocation(line: 623, column: 21, scope: !1211)
!1579 = !DILocation(line: 624, column: 56, scope: !1211)
!1580 = !DILocation(line: 624, column: 50, scope: !1211)
!1581 = !DILocation(line: 625, column: 53, scope: !1211)
!1582 = !DIExpression(DW_OP_deref)
!1583 = !DILocation(line: 613, column: 27, scope: !1194)
!1584 = !DILocation(line: 623, column: 29, scope: !1211)
!1585 = !DILocation(line: 624, column: 36, scope: !1211)
!1586 = !DILocation(line: 624, column: 28, scope: !1211)
!1587 = !DILocation(line: 626, column: 25, scope: !1211)
!1588 = !DILocation(line: 636, column: 38, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1590, file: !100, discriminator: 1)
!1590 = distinct !DILexicalBlock(scope: !1218, file: !100, line: 634, column: 23)
!1591 = !DILocation(line: 636, column: 48, scope: !1589)
!1592 = !DILocation(line: 636, column: 51, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1590, file: !100, discriminator: 2)
!1594 = !DILocation(line: 636, column: 48, scope: !1593)
!1595 = !DILocation(line: 636, column: 25, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1590, file: !100, discriminator: 3)
!1597 = !DILocation(line: 637, column: 28, scope: !1590)
!1598 = !DILocation(line: 636, column: 34, scope: !1589)
!1599 = distinct !{!1599, !1600, !1597}
!1600 = !DILocation(line: 636, column: 25, scope: !1590)
!1601 = !DILocation(line: 650, column: 43, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1603, file: !100, discriminator: 1)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !100, line: 650, column: 29)
!1604 = distinct !DILexicalBlock(scope: !1215, file: !100, line: 650, column: 29)
!1605 = !DILocation(line: 647, column: 29, scope: !1216)
!1606 = !DILocation(line: 649, column: 36, scope: !1215)
!1607 = !DILocation(line: 651, column: 49, scope: !1603)
!1608 = !DILocation(line: 651, column: 39, scope: !1603)
!1609 = !DILocation(line: 651, column: 31, scope: !1603)
!1610 = !DILocation(line: 650, column: 53, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1603, file: !100, discriminator: 2)
!1612 = !DILocation(line: 650, column: 29, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1604, file: !100, discriminator: 1)
!1614 = distinct !{!1614, !1615, !1616}
!1615 = !DILocation(line: 650, column: 29, scope: !1604)
!1616 = !DILocation(line: 659, column: 33, scope: !1604)
!1617 = !DILocation(line: 666, column: 19, scope: !1194)
!1618 = !DILocation(line: 662, column: 41, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1217, file: !100, line: 662, column: 29)
!1620 = !DILocation(line: 662, column: 31, scope: !1619)
!1621 = !DILocation(line: 662, column: 29, scope: !1217)
!1622 = !DILocation(line: 664, column: 27, scope: !1217)
!1623 = !DILocation(line: 667, column: 26, scope: !1194)
!1624 = !DILocation(line: 667, column: 24, scope: !1194)
!1625 = !DILocation(line: 666, column: 19, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1211, file: !100, discriminator: 3)
!1627 = !DILocation(line: 668, column: 15, scope: !1195)
!1628 = !DILocation(line: 670, column: 40, scope: !1190)
!1629 = !DILocation(line: 672, column: 19, scope: !1223)
!1630 = !DILocation(line: 672, column: 45, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1223, file: !100, discriminator: 1)
!1632 = !DILocation(line: 672, column: 23, scope: !1223)
!1633 = !DILocation(line: 676, column: 33, scope: !1222)
!1634 = !DILocation(line: 676, column: 24, scope: !1222)
!1635 = !DILocation(line: 678, column: 17, scope: !1222)
!1636 = !DILocation(line: 680, column: 43, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !100, line: 680, column: 25)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !100, line: 679, column: 19)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !100, line: 678, column: 17)
!1640 = distinct !DILexicalBlock(scope: !1222, file: !100, line: 678, column: 17)
!1641 = !DILocation(line: 682, column: 25, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1643, file: !100, discriminator: 1)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !100, line: 682, column: 25)
!1644 = distinct !DILexicalBlock(scope: !1637, file: !100, line: 681, column: 23)
!1645 = !DILocation(line: 682, column: 25, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1647, file: !100, discriminator: 4)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !100, line: 682, column: 25)
!1648 = !DILocation(line: 682, column: 25, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1647, file: !100, discriminator: 3)
!1650 = !DILocation(line: 682, column: 25, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1652, file: !100, discriminator: 6)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !100, line: 682, column: 25)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !100, line: 682, column: 25)
!1654 = distinct !DILexicalBlock(scope: !1647, file: !100, line: 682, column: 25)
!1655 = !DILocation(line: 682, column: 25, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1653, file: !100, discriminator: 6)
!1657 = !DILocation(line: 682, column: 25, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1652, file: !100, discriminator: 7)
!1659 = !DILocation(line: 682, column: 25, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1653, file: !100, discriminator: 8)
!1661 = !DILocation(line: 682, column: 25, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1663, file: !100, discriminator: 11)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !100, line: 682, column: 25)
!1664 = distinct !DILexicalBlock(scope: !1654, file: !100, line: 682, column: 25)
!1665 = !DILocation(line: 682, column: 25, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1664, file: !100, discriminator: 11)
!1667 = !DILocation(line: 682, column: 25, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1663, file: !100, discriminator: 12)
!1669 = !DILocation(line: 682, column: 25, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1664, file: !100, discriminator: 13)
!1671 = !DILocation(line: 682, column: 25, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1673, file: !100, discriminator: 16)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !100, line: 682, column: 25)
!1674 = distinct !DILexicalBlock(scope: !1654, file: !100, line: 682, column: 25)
!1675 = !DILocation(line: 682, column: 25, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1674, file: !100, discriminator: 16)
!1677 = !DILocation(line: 682, column: 25, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1673, file: !100, discriminator: 17)
!1679 = !DILocation(line: 682, column: 25, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1674, file: !100, discriminator: 18)
!1681 = !DILocation(line: 682, column: 25, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1654, file: !100, discriminator: 20)
!1683 = !DILocation(line: 682, column: 25, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1685, file: !100, discriminator: 22)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !100, line: 682, column: 25)
!1686 = distinct !DILexicalBlock(scope: !1643, file: !100, line: 682, column: 25)
!1687 = !DILocation(line: 682, column: 25, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1686, file: !100, discriminator: 22)
!1689 = !DILocation(line: 682, column: 25, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1685, file: !100, discriminator: 23)
!1691 = !DILocation(line: 682, column: 25, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1686, file: !100, discriminator: 24)
!1693 = !DILocation(line: 683, column: 25, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1695, file: !100, discriminator: 1)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !100, line: 683, column: 25)
!1696 = distinct !DILexicalBlock(scope: !1644, file: !100, line: 683, column: 25)
!1697 = !DILocation(line: 683, column: 25, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1696, file: !100, discriminator: 1)
!1699 = !DILocation(line: 683, column: 25, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1695, file: !100, discriminator: 2)
!1701 = !DILocation(line: 683, column: 25, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1696, file: !100, discriminator: 3)
!1703 = !DILocation(line: 684, column: 25, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1705, file: !100, discriminator: 1)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !100, line: 684, column: 25)
!1706 = distinct !DILexicalBlock(scope: !1644, file: !100, line: 684, column: 25)
!1707 = !DILocation(line: 684, column: 25, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1706, file: !100, discriminator: 1)
!1709 = !DILocation(line: 684, column: 25, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1705, file: !100, discriminator: 2)
!1711 = !DILocation(line: 684, column: 25, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1706, file: !100, discriminator: 3)
!1713 = !DILocation(line: 685, column: 38, scope: !1644)
!1714 = !DILocation(line: 685, column: 33, scope: !1644)
!1715 = !DILocation(line: 686, column: 23, scope: !1644)
!1716 = !DILocation(line: 687, column: 30, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1637, file: !100, line: 687, column: 30)
!1718 = !DILocation(line: 687, column: 30, scope: !1637)
!1719 = !DILocation(line: 689, column: 25, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1721, file: !100, discriminator: 1)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !100, line: 689, column: 25)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !100, line: 689, column: 25)
!1723 = distinct !DILexicalBlock(scope: !1717, file: !100, line: 688, column: 23)
!1724 = !DILocation(line: 689, column: 25, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1722, file: !100, discriminator: 1)
!1726 = !DILocation(line: 689, column: 25, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1721, file: !100, discriminator: 2)
!1728 = !DILocation(line: 689, column: 25, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1722, file: !100, discriminator: 3)
!1730 = !DILocation(line: 691, column: 23, scope: !1723)
!1731 = !DILocation(line: 692, column: 35, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1638, file: !100, line: 692, column: 25)
!1733 = !DILocation(line: 692, column: 30, scope: !1732)
!1734 = !DILocation(line: 692, column: 25, scope: !1638)
!1735 = !DILocation(line: 694, column: 21, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1737, file: !100, discriminator: 1)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !100, line: 694, column: 21)
!1738 = distinct !DILexicalBlock(scope: !1638, file: !100, line: 694, column: 21)
!1739 = !DILocation(line: 694, column: 21, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1737, file: !100, discriminator: 2)
!1741 = !DILocation(line: 694, column: 21, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1743, file: !100, discriminator: 4)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !100, line: 694, column: 21)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !100, line: 694, column: 21)
!1745 = distinct !DILexicalBlock(scope: !1737, file: !100, line: 694, column: 21)
!1746 = !DILocation(line: 694, column: 21, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1744, file: !100, discriminator: 4)
!1748 = !DILocation(line: 694, column: 21, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1743, file: !100, discriminator: 5)
!1750 = !DILocation(line: 694, column: 21, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1744, file: !100, discriminator: 6)
!1752 = !DILocation(line: 694, column: 21, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1754, file: !100, discriminator: 9)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !100, line: 694, column: 21)
!1755 = distinct !DILexicalBlock(scope: !1745, file: !100, line: 694, column: 21)
!1756 = !DILocation(line: 694, column: 21, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1755, file: !100, discriminator: 9)
!1758 = !DILocation(line: 694, column: 21, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1754, file: !100, discriminator: 10)
!1760 = !DILocation(line: 694, column: 21, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1755, file: !100, discriminator: 11)
!1762 = !DILocation(line: 694, column: 21, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1745, file: !100, discriminator: 13)
!1764 = !DILocation(line: 695, column: 21, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1766, file: !100, discriminator: 1)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !100, line: 695, column: 21)
!1767 = distinct !DILexicalBlock(scope: !1638, file: !100, line: 695, column: 21)
!1768 = !DILocation(line: 695, column: 21, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1767, file: !100, discriminator: 1)
!1770 = !DILocation(line: 695, column: 21, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1766, file: !100, discriminator: 2)
!1772 = !DILocation(line: 695, column: 21, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1767, file: !100, discriminator: 3)
!1774 = !DILocation(line: 696, column: 25, scope: !1638)
!1775 = !DILocation(line: 678, column: 17, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1639, file: !100, discriminator: 1)
!1777 = distinct !{!1777, !1778, !1779}
!1778 = !DILocation(line: 678, column: 17, scope: !1640)
!1779 = !DILocation(line: 697, column: 19, scope: !1640)
!1780 = !DILocation(line: 704, column: 34, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1182, file: !100, line: 704, column: 11)
!1782 = !DILocation(line: 706, column: 14, scope: !1781)
!1783 = !DILocation(line: 707, column: 14, scope: !1781)
!1784 = !DILocation(line: 707, column: 35, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1781, file: !100, discriminator: 1)
!1786 = !DILocation(line: 707, column: 17, scope: !1785)
!1787 = !DILocation(line: 707, column: 53, scope: !1785)
!1788 = !DILocation(line: 707, column: 47, scope: !1785)
!1789 = !DILocation(line: 707, column: 65, scope: !1785)
!1790 = !DILocation(line: 708, column: 15, scope: !1785)
!1791 = !DILocation(line: 708, column: 11, scope: !1781)
!1792 = !DILocation(line: 704, column: 11, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1182, file: !100, discriminator: 2)
!1794 = !DILocation(line: 712, column: 7, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1796, file: !100, discriminator: 1)
!1796 = distinct !DILexicalBlock(scope: !1182, file: !100, line: 712, column: 7)
!1797 = !DILocation(line: 712, column: 7, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1799, file: !100, discriminator: 4)
!1799 = distinct !DILexicalBlock(scope: !1796, file: !100, line: 712, column: 7)
!1800 = !DILocation(line: 712, column: 7, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1799, file: !100, discriminator: 3)
!1802 = !DILocation(line: 712, column: 7, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1804, file: !100, discriminator: 6)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !100, line: 712, column: 7)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !100, line: 712, column: 7)
!1806 = distinct !DILexicalBlock(scope: !1799, file: !100, line: 712, column: 7)
!1807 = !DILocation(line: 712, column: 7, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1805, file: !100, discriminator: 6)
!1809 = !DILocation(line: 712, column: 7, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1804, file: !100, discriminator: 7)
!1811 = !DILocation(line: 712, column: 7, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1805, file: !100, discriminator: 8)
!1813 = !DILocation(line: 712, column: 7, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1815, file: !100, discriminator: 11)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !100, line: 712, column: 7)
!1816 = distinct !DILexicalBlock(scope: !1806, file: !100, line: 712, column: 7)
!1817 = !DILocation(line: 712, column: 7, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1816, file: !100, discriminator: 11)
!1819 = !DILocation(line: 712, column: 7, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1815, file: !100, discriminator: 12)
!1821 = !DILocation(line: 712, column: 7, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1816, file: !100, discriminator: 13)
!1823 = !DILocation(line: 712, column: 7, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1825, file: !100, discriminator: 16)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !100, line: 712, column: 7)
!1826 = distinct !DILexicalBlock(scope: !1806, file: !100, line: 712, column: 7)
!1827 = !DILocation(line: 712, column: 7, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1826, file: !100, discriminator: 16)
!1829 = !DILocation(line: 712, column: 7, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1825, file: !100, discriminator: 17)
!1831 = !DILocation(line: 712, column: 7, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1826, file: !100, discriminator: 18)
!1833 = !DILocation(line: 712, column: 7, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1806, file: !100, discriminator: 20)
!1835 = !DILocation(line: 712, column: 7, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1837, file: !100, discriminator: 22)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !100, line: 712, column: 7)
!1838 = distinct !DILexicalBlock(scope: !1796, file: !100, line: 712, column: 7)
!1839 = !DILocation(line: 712, column: 7, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1838, file: !100, discriminator: 22)
!1841 = !DILocation(line: 712, column: 7, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1837, file: !100, discriminator: 23)
!1843 = !DILocation(line: 712, column: 7, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1838, file: !100, discriminator: 24)
!1845 = !DILocation(line: 715, column: 7, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1847, file: !100, discriminator: 1)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !100, line: 715, column: 7)
!1848 = distinct !DILexicalBlock(scope: !1182, file: !100, line: 715, column: 7)
!1849 = !DILocation(line: 715, column: 7, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1847, file: !100, discriminator: 2)
!1851 = !DILocation(line: 715, column: 7, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1853, file: !100, discriminator: 4)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !100, line: 715, column: 7)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !100, line: 715, column: 7)
!1855 = distinct !DILexicalBlock(scope: !1847, file: !100, line: 715, column: 7)
!1856 = !DILocation(line: 715, column: 7, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1854, file: !100, discriminator: 4)
!1858 = !DILocation(line: 715, column: 7, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1853, file: !100, discriminator: 5)
!1860 = !DILocation(line: 715, column: 7, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1854, file: !100, discriminator: 6)
!1862 = !DILocation(line: 715, column: 7, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1864, file: !100, discriminator: 9)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !100, line: 715, column: 7)
!1865 = distinct !DILexicalBlock(scope: !1855, file: !100, line: 715, column: 7)
!1866 = !DILocation(line: 715, column: 7, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1865, file: !100, discriminator: 9)
!1868 = !DILocation(line: 715, column: 7, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1864, file: !100, discriminator: 10)
!1870 = !DILocation(line: 715, column: 7, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1865, file: !100, discriminator: 11)
!1872 = !DILocation(line: 715, column: 7, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1855, file: !100, discriminator: 13)
!1874 = !DILocation(line: 716, column: 7, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1876, file: !100, discriminator: 1)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !100, line: 716, column: 7)
!1877 = distinct !DILexicalBlock(scope: !1182, file: !100, line: 716, column: 7)
!1878 = !DILocation(line: 716, column: 7, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1877, file: !100, discriminator: 1)
!1880 = !DILocation(line: 716, column: 7, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1876, file: !100, discriminator: 2)
!1882 = !DILocation(line: 716, column: 7, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1877, file: !100, discriminator: 3)
!1884 = !DILocation(line: 718, column: 13, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1182, file: !100, line: 718, column: 11)
!1886 = !DILocation(line: 718, column: 11, scope: !1182)
!1887 = !DILocation(line: 720, column: 5, scope: !1183)
!1888 = !DILocation(line: 392, column: 75, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1183, file: !100, discriminator: 5)
!1890 = !DILocation(line: 392, column: 3, scope: !1889)
!1891 = distinct !{!1891, !1892, !1893}
!1892 = !DILocation(line: 392, column: 3, scope: !1184)
!1893 = !DILocation(line: 720, column: 5, scope: !1184)
!1894 = !DILocation(line: 722, column: 11, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1155, file: !100, line: 722, column: 7)
!1896 = !DILocation(line: 722, column: 16, scope: !1895)
!1897 = !DILocation(line: 730, column: 51, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1155, file: !100, line: 730, column: 7)
!1899 = !DILocation(line: 731, column: 10, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1898, file: !100, discriminator: 1)
!1901 = !DILocation(line: 733, column: 11, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !100, line: 733, column: 11)
!1903 = distinct !DILexicalBlock(scope: !1898, file: !100, line: 732, column: 5)
!1904 = !DILocation(line: 733, column: 11, scope: !1903)
!1905 = !DILocation(line: 734, column: 16, scope: !1902)
!1906 = !DILocation(line: 734, column: 9, scope: !1902)
!1907 = !DILocation(line: 738, column: 18, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1902, file: !100, line: 738, column: 16)
!1909 = !DILocation(line: 738, column: 32, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1908, file: !100, discriminator: 1)
!1911 = !DILocation(line: 738, column: 29, scope: !1908)
!1912 = !DILocation(line: 747, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1155, file: !100, line: 747, column: 7)
!1914 = !DILocation(line: 747, column: 20, scope: !1913)
!1915 = !DILocation(line: 748, column: 12, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1917, file: !100, discriminator: 1)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !100, line: 748, column: 5)
!1918 = distinct !DILexicalBlock(scope: !1913, file: !100, line: 748, column: 5)
!1919 = !DILocation(line: 748, column: 5, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1918, file: !100, discriminator: 1)
!1921 = !DILocation(line: 749, column: 7, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1923, file: !100, discriminator: 1)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !100, line: 749, column: 7)
!1924 = distinct !DILexicalBlock(scope: !1917, file: !100, line: 749, column: 7)
!1925 = !DILocation(line: 749, column: 7, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1924, file: !100, discriminator: 1)
!1927 = !DILocation(line: 749, column: 7, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1923, file: !100, discriminator: 2)
!1929 = !DILocation(line: 749, column: 7, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1924, file: !100, discriminator: 3)
!1931 = !DILocation(line: 748, column: 39, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1917, file: !100, discriminator: 2)
!1933 = distinct !{!1933, !1934, !1935}
!1934 = !DILocation(line: 748, column: 5, scope: !1918)
!1935 = !DILocation(line: 749, column: 7, scope: !1918)
!1936 = !DILocation(line: 751, column: 11, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1155, file: !100, line: 751, column: 7)
!1938 = !DILocation(line: 751, column: 7, scope: !1155)
!1939 = !DILocation(line: 752, column: 5, scope: !1937)
!1940 = !DILocation(line: 752, column: 17, scope: !1937)
!1941 = !DILocation(line: 758, column: 21, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1155, file: !100, line: 758, column: 7)
!1943 = !DILocation(line: 758, column: 54, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1942, file: !100, discriminator: 1)
!1945 = !DILocation(line: 758, column: 51, scope: !1942)
!1946 = !DILocation(line: 762, column: 42, scope: !1155)
!1947 = !DILocation(line: 760, column: 10, scope: !1155)
!1948 = !DILocation(line: 760, column: 3, scope: !1155)
!1949 = !DILocation(line: 764, column: 1, scope: !1155)
!1950 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1951, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!6, !6, !58}
!1953 = !{!1954, !1955, !1956, !1957}
!1954 = !DILocalVariable(name: "msgid", arg: 1, scope: !1950, file: !100, line: 199, type: !6)
!1955 = !DILocalVariable(name: "s", arg: 2, scope: !1950, file: !100, line: 199, type: !58)
!1956 = !DILocalVariable(name: "translation", scope: !1950, file: !100, line: 201, type: !6)
!1957 = !DILocalVariable(name: "locale_code", scope: !1950, file: !100, line: 202, type: !6)
!1958 = !DILocation(line: 199, column: 28, scope: !1950)
!1959 = !DILocation(line: 199, column: 54, scope: !1950)
!1960 = !DILocation(line: 201, column: 29, scope: !1950)
!1961 = !DILocation(line: 201, column: 15, scope: !1950)
!1962 = !DILocation(line: 204, column: 19, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1950, file: !100, line: 204, column: 7)
!1964 = !DILocation(line: 204, column: 7, scope: !1950)
!1965 = !DILocation(line: 225, column: 17, scope: !1950)
!1966 = !DILocation(line: 202, column: 15, scope: !1950)
!1967 = !DILocalVariable(name: "s2", arg: 2, scope: !1968, file: !1969, line: 160, type: !6)
!1968 = distinct !DISubprogram(name: "strcaseeq0", scope: !1969, file: !1969, line: 160, type: !1970, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1972)
!1969 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1972 = !{!1973, !1967, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982}
!1973 = !DILocalVariable(name: "s1", arg: 1, scope: !1968, file: !1969, line: 160, type: !6)
!1974 = !DILocalVariable(name: "s20", arg: 3, scope: !1968, file: !1969, line: 160, type: !8)
!1975 = !DILocalVariable(name: "s21", arg: 4, scope: !1968, file: !1969, line: 160, type: !8)
!1976 = !DILocalVariable(name: "s22", arg: 5, scope: !1968, file: !1969, line: 160, type: !8)
!1977 = !DILocalVariable(name: "s23", arg: 6, scope: !1968, file: !1969, line: 160, type: !8)
!1978 = !DILocalVariable(name: "s24", arg: 7, scope: !1968, file: !1969, line: 160, type: !8)
!1979 = !DILocalVariable(name: "s25", arg: 8, scope: !1968, file: !1969, line: 160, type: !8)
!1980 = !DILocalVariable(name: "s26", arg: 9, scope: !1968, file: !1969, line: 160, type: !8)
!1981 = !DILocalVariable(name: "s27", arg: 10, scope: !1968, file: !1969, line: 160, type: !8)
!1982 = !DILocalVariable(name: "s28", arg: 11, scope: !1968, file: !1969, line: 160, type: !8)
!1983 = !DILocation(line: 160, column: 41, scope: !1968, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 226, column: 7, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1950, file: !100, line: 226, column: 7)
!1986 = !DILocation(line: 160, column: 120, scope: !1968, inlinedAt: !1984)
!1987 = !DILocation(line: 160, column: 130, scope: !1968, inlinedAt: !1984)
!1988 = !DILocation(line: 162, column: 7, scope: !1989, inlinedAt: !1984)
!1989 = !DILexicalBlockFile(scope: !1990, file: !1969, discriminator: 1)
!1990 = distinct !DILexicalBlock(scope: !1968, file: !1969, line: 162, column: 7)
!1991 = !DILocalVariable(name: "s2", arg: 2, scope: !1992, file: !1969, line: 146, type: !6)
!1992 = distinct !DISubprogram(name: "strcaseeq1", scope: !1969, file: !1969, line: 146, type: !1993, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1995 = !{!1996, !1991, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004}
!1996 = !DILocalVariable(name: "s1", arg: 1, scope: !1992, file: !1969, line: 146, type: !6)
!1997 = !DILocalVariable(name: "s21", arg: 3, scope: !1992, file: !1969, line: 146, type: !8)
!1998 = !DILocalVariable(name: "s22", arg: 4, scope: !1992, file: !1969, line: 146, type: !8)
!1999 = !DILocalVariable(name: "s23", arg: 5, scope: !1992, file: !1969, line: 146, type: !8)
!2000 = !DILocalVariable(name: "s24", arg: 6, scope: !1992, file: !1969, line: 146, type: !8)
!2001 = !DILocalVariable(name: "s25", arg: 7, scope: !1992, file: !1969, line: 146, type: !8)
!2002 = !DILocalVariable(name: "s26", arg: 8, scope: !1992, file: !1969, line: 146, type: !8)
!2003 = !DILocalVariable(name: "s27", arg: 9, scope: !1992, file: !1969, line: 146, type: !8)
!2004 = !DILocalVariable(name: "s28", arg: 10, scope: !1992, file: !1969, line: 146, type: !8)
!2005 = !DILocation(line: 146, column: 41, scope: !1992, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 167, column: 16, scope: !2007, inlinedAt: !1984)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !1969, line: 164, column: 11)
!2008 = distinct !DILexicalBlock(scope: !1990, file: !1969, line: 163, column: 5)
!2009 = !DILocation(line: 146, column: 110, scope: !1992, inlinedAt: !2006)
!2010 = !DILocation(line: 146, column: 120, scope: !1992, inlinedAt: !2006)
!2011 = !DILocation(line: 148, column: 7, scope: !2012, inlinedAt: !2006)
!2012 = !DILexicalBlockFile(scope: !2013, file: !1969, discriminator: 1)
!2013 = distinct !DILexicalBlock(scope: !1992, file: !1969, line: 148, column: 7)
!2014 = !DILocalVariable(name: "s2", arg: 2, scope: !2015, file: !1969, line: 132, type: !6)
!2015 = distinct !DISubprogram(name: "strcaseeq2", scope: !1969, file: !1969, line: 132, type: !2016, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2018 = !{!2019, !2014, !2020, !2021, !2022, !2023, !2024, !2025, !2026}
!2019 = !DILocalVariable(name: "s1", arg: 1, scope: !2015, file: !1969, line: 132, type: !6)
!2020 = !DILocalVariable(name: "s22", arg: 3, scope: !2015, file: !1969, line: 132, type: !8)
!2021 = !DILocalVariable(name: "s23", arg: 4, scope: !2015, file: !1969, line: 132, type: !8)
!2022 = !DILocalVariable(name: "s24", arg: 5, scope: !2015, file: !1969, line: 132, type: !8)
!2023 = !DILocalVariable(name: "s25", arg: 6, scope: !2015, file: !1969, line: 132, type: !8)
!2024 = !DILocalVariable(name: "s26", arg: 7, scope: !2015, file: !1969, line: 132, type: !8)
!2025 = !DILocalVariable(name: "s27", arg: 8, scope: !2015, file: !1969, line: 132, type: !8)
!2026 = !DILocalVariable(name: "s28", arg: 9, scope: !2015, file: !1969, line: 132, type: !8)
!2027 = !DILocation(line: 132, column: 41, scope: !2015, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 153, column: 16, scope: !2029, inlinedAt: !2006)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !1969, line: 150, column: 11)
!2030 = distinct !DILexicalBlock(scope: !2013, file: !1969, line: 149, column: 5)
!2031 = !DILocation(line: 132, column: 100, scope: !2015, inlinedAt: !2028)
!2032 = !DILocation(line: 132, column: 110, scope: !2015, inlinedAt: !2028)
!2033 = !DILocation(line: 134, column: 7, scope: !2034, inlinedAt: !2028)
!2034 = !DILexicalBlockFile(scope: !2035, file: !1969, discriminator: 1)
!2035 = distinct !DILexicalBlock(scope: !2015, file: !1969, line: 134, column: 7)
!2036 = !DILocalVariable(name: "s2", arg: 2, scope: !2037, file: !1969, line: 118, type: !6)
!2037 = distinct !DISubprogram(name: "strcaseeq3", scope: !1969, file: !1969, line: 118, type: !2038, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!2040 = !{!2041, !2036, !2042, !2043, !2044, !2045, !2046, !2047}
!2041 = !DILocalVariable(name: "s1", arg: 1, scope: !2037, file: !1969, line: 118, type: !6)
!2042 = !DILocalVariable(name: "s23", arg: 3, scope: !2037, file: !1969, line: 118, type: !8)
!2043 = !DILocalVariable(name: "s24", arg: 4, scope: !2037, file: !1969, line: 118, type: !8)
!2044 = !DILocalVariable(name: "s25", arg: 5, scope: !2037, file: !1969, line: 118, type: !8)
!2045 = !DILocalVariable(name: "s26", arg: 6, scope: !2037, file: !1969, line: 118, type: !8)
!2046 = !DILocalVariable(name: "s27", arg: 7, scope: !2037, file: !1969, line: 118, type: !8)
!2047 = !DILocalVariable(name: "s28", arg: 8, scope: !2037, file: !1969, line: 118, type: !8)
!2048 = !DILocation(line: 118, column: 41, scope: !2037, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 139, column: 16, scope: !2050, inlinedAt: !2028)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !1969, line: 136, column: 11)
!2051 = distinct !DILexicalBlock(scope: !2035, file: !1969, line: 135, column: 5)
!2052 = !DILocation(line: 118, column: 90, scope: !2037, inlinedAt: !2049)
!2053 = !DILocation(line: 118, column: 100, scope: !2037, inlinedAt: !2049)
!2054 = !DILocation(line: 120, column: 7, scope: !2055, inlinedAt: !2049)
!2055 = !DILexicalBlockFile(scope: !2056, file: !1969, discriminator: 2)
!2056 = distinct !DILexicalBlock(scope: !2037, file: !1969, line: 120, column: 7)
!2057 = !DILocation(line: 120, column: 7, scope: !2058, inlinedAt: !2049)
!2058 = !DILexicalBlockFile(scope: !2037, file: !1969, discriminator: 2)
!2059 = !DILocalVariable(name: "s2", arg: 2, scope: !2060, file: !1969, line: 104, type: !6)
!2060 = distinct !DISubprogram(name: "strcaseeq4", scope: !1969, file: !1969, line: 104, type: !2061, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!2063 = !{!2064, !2059, !2065, !2066, !2067, !2068, !2069}
!2064 = !DILocalVariable(name: "s1", arg: 1, scope: !2060, file: !1969, line: 104, type: !6)
!2065 = !DILocalVariable(name: "s24", arg: 3, scope: !2060, file: !1969, line: 104, type: !8)
!2066 = !DILocalVariable(name: "s25", arg: 4, scope: !2060, file: !1969, line: 104, type: !8)
!2067 = !DILocalVariable(name: "s26", arg: 5, scope: !2060, file: !1969, line: 104, type: !8)
!2068 = !DILocalVariable(name: "s27", arg: 6, scope: !2060, file: !1969, line: 104, type: !8)
!2069 = !DILocalVariable(name: "s28", arg: 7, scope: !2060, file: !1969, line: 104, type: !8)
!2070 = !DILocation(line: 104, column: 41, scope: !2060, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 125, column: 16, scope: !2072, inlinedAt: !2049)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !1969, line: 122, column: 11)
!2073 = distinct !DILexicalBlock(scope: !2056, file: !1969, line: 121, column: 5)
!2074 = !DILocation(line: 104, column: 80, scope: !2060, inlinedAt: !2071)
!2075 = !DILocation(line: 104, column: 90, scope: !2060, inlinedAt: !2071)
!2076 = !DILocation(line: 106, column: 7, scope: !2077, inlinedAt: !2071)
!2077 = !DILexicalBlockFile(scope: !2078, file: !1969, discriminator: 2)
!2078 = distinct !DILexicalBlock(scope: !2060, file: !1969, line: 106, column: 7)
!2079 = !DILocation(line: 106, column: 7, scope: !2080, inlinedAt: !2071)
!2080 = !DILexicalBlockFile(scope: !2060, file: !1969, discriminator: 2)
!2081 = !DILocalVariable(name: "s2", arg: 2, scope: !2082, file: !1969, line: 90, type: !6)
!2082 = distinct !DISubprogram(name: "strcaseeq5", scope: !1969, file: !1969, line: 90, type: !2083, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2085)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!25, !6, !6, !8, !8, !8, !8}
!2085 = !{!2086, !2081, !2087, !2088, !2089, !2090}
!2086 = !DILocalVariable(name: "s1", arg: 1, scope: !2082, file: !1969, line: 90, type: !6)
!2087 = !DILocalVariable(name: "s25", arg: 3, scope: !2082, file: !1969, line: 90, type: !8)
!2088 = !DILocalVariable(name: "s26", arg: 4, scope: !2082, file: !1969, line: 90, type: !8)
!2089 = !DILocalVariable(name: "s27", arg: 5, scope: !2082, file: !1969, line: 90, type: !8)
!2090 = !DILocalVariable(name: "s28", arg: 6, scope: !2082, file: !1969, line: 90, type: !8)
!2091 = !DILocation(line: 90, column: 41, scope: !2082, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 111, column: 16, scope: !2093, inlinedAt: !2071)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !1969, line: 108, column: 11)
!2094 = distinct !DILexicalBlock(scope: !2078, file: !1969, line: 107, column: 5)
!2095 = !DILocation(line: 90, column: 70, scope: !2082, inlinedAt: !2092)
!2096 = !DILocation(line: 90, column: 80, scope: !2082, inlinedAt: !2092)
!2097 = !DILocation(line: 92, column: 7, scope: !2098, inlinedAt: !2092)
!2098 = !DILexicalBlockFile(scope: !2099, file: !1969, discriminator: 2)
!2099 = distinct !DILexicalBlock(scope: !2082, file: !1969, line: 92, column: 7)
!2100 = !DILocation(line: 92, column: 7, scope: !2101, inlinedAt: !2092)
!2101 = !DILexicalBlockFile(scope: !2082, file: !1969, discriminator: 2)
!2102 = !DILocation(line: 227, column: 12, scope: !1985)
!2103 = !DILocation(line: 227, column: 21, scope: !1985)
!2104 = !DILocation(line: 227, column: 5, scope: !1985)
!2105 = !DILocation(line: 146, column: 41, scope: !1992, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 167, column: 16, scope: !2007, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 228, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1950, file: !100, line: 228, column: 7)
!2109 = !DILocation(line: 146, column: 110, scope: !1992, inlinedAt: !2106)
!2110 = !DILocation(line: 146, column: 120, scope: !1992, inlinedAt: !2106)
!2111 = !DILocation(line: 148, column: 7, scope: !2012, inlinedAt: !2106)
!2112 = !DILocation(line: 132, column: 41, scope: !2015, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 153, column: 16, scope: !2029, inlinedAt: !2106)
!2114 = !DILocation(line: 132, column: 100, scope: !2015, inlinedAt: !2113)
!2115 = !DILocation(line: 132, column: 110, scope: !2015, inlinedAt: !2113)
!2116 = !DILocation(line: 134, column: 7, scope: !2117, inlinedAt: !2113)
!2117 = !DILexicalBlockFile(scope: !2035, file: !1969, discriminator: 2)
!2118 = !DILocation(line: 134, column: 7, scope: !2119, inlinedAt: !2113)
!2119 = !DILexicalBlockFile(scope: !2015, file: !1969, discriminator: 2)
!2120 = !DILocation(line: 118, column: 41, scope: !2037, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 139, column: 16, scope: !2050, inlinedAt: !2113)
!2122 = !DILocation(line: 118, column: 90, scope: !2037, inlinedAt: !2121)
!2123 = !DILocation(line: 118, column: 100, scope: !2037, inlinedAt: !2121)
!2124 = !DILocation(line: 120, column: 7, scope: !2055, inlinedAt: !2121)
!2125 = !DILocation(line: 120, column: 7, scope: !2058, inlinedAt: !2121)
!2126 = !DILocation(line: 104, column: 41, scope: !2060, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 125, column: 16, scope: !2072, inlinedAt: !2121)
!2128 = !DILocation(line: 104, column: 80, scope: !2060, inlinedAt: !2127)
!2129 = !DILocation(line: 104, column: 90, scope: !2060, inlinedAt: !2127)
!2130 = !DILocation(line: 106, column: 7, scope: !2077, inlinedAt: !2127)
!2131 = !DILocation(line: 106, column: 7, scope: !2080, inlinedAt: !2127)
!2132 = !DILocation(line: 90, column: 41, scope: !2082, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 111, column: 16, scope: !2093, inlinedAt: !2127)
!2134 = !DILocation(line: 90, column: 70, scope: !2082, inlinedAt: !2133)
!2135 = !DILocation(line: 90, column: 80, scope: !2082, inlinedAt: !2133)
!2136 = !DILocation(line: 92, column: 7, scope: !2098, inlinedAt: !2133)
!2137 = !DILocation(line: 92, column: 7, scope: !2101, inlinedAt: !2133)
!2138 = !DILocalVariable(name: "s2", arg: 2, scope: !2139, file: !1969, line: 76, type: !6)
!2139 = distinct !DISubprogram(name: "strcaseeq6", scope: !1969, file: !1969, line: 76, type: !2140, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!25, !6, !6, !8, !8, !8}
!2142 = !{!2143, !2138, !2144, !2145, !2146}
!2143 = !DILocalVariable(name: "s1", arg: 1, scope: !2139, file: !1969, line: 76, type: !6)
!2144 = !DILocalVariable(name: "s26", arg: 3, scope: !2139, file: !1969, line: 76, type: !8)
!2145 = !DILocalVariable(name: "s27", arg: 4, scope: !2139, file: !1969, line: 76, type: !8)
!2146 = !DILocalVariable(name: "s28", arg: 5, scope: !2139, file: !1969, line: 76, type: !8)
!2147 = !DILocation(line: 76, column: 41, scope: !2139, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 97, column: 16, scope: !2149, inlinedAt: !2133)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !1969, line: 94, column: 11)
!2150 = distinct !DILexicalBlock(scope: !2099, file: !1969, line: 93, column: 5)
!2151 = !DILocation(line: 76, column: 60, scope: !2139, inlinedAt: !2148)
!2152 = !DILocation(line: 76, column: 70, scope: !2139, inlinedAt: !2148)
!2153 = !DILocation(line: 78, column: 7, scope: !2154, inlinedAt: !2148)
!2154 = !DILexicalBlockFile(scope: !2155, file: !1969, discriminator: 2)
!2155 = distinct !DILexicalBlock(scope: !2139, file: !1969, line: 78, column: 7)
!2156 = !DILocation(line: 78, column: 7, scope: !2157, inlinedAt: !2148)
!2157 = !DILexicalBlockFile(scope: !2139, file: !1969, discriminator: 2)
!2158 = !DILocalVariable(name: "s2", arg: 2, scope: !2159, file: !1969, line: 62, type: !6)
!2159 = distinct !DISubprogram(name: "strcaseeq7", scope: !1969, file: !1969, line: 62, type: !2160, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!25, !6, !6, !8, !8}
!2162 = !{!2163, !2158, !2164, !2165}
!2163 = !DILocalVariable(name: "s1", arg: 1, scope: !2159, file: !1969, line: 62, type: !6)
!2164 = !DILocalVariable(name: "s27", arg: 3, scope: !2159, file: !1969, line: 62, type: !8)
!2165 = !DILocalVariable(name: "s28", arg: 4, scope: !2159, file: !1969, line: 62, type: !8)
!2166 = !DILocation(line: 62, column: 41, scope: !2159, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 83, column: 16, scope: !2168, inlinedAt: !2148)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !1969, line: 80, column: 11)
!2169 = distinct !DILexicalBlock(scope: !2155, file: !1969, line: 79, column: 5)
!2170 = !DILocation(line: 62, column: 50, scope: !2159, inlinedAt: !2167)
!2171 = !DILocation(line: 62, column: 60, scope: !2159, inlinedAt: !2167)
!2172 = !DILocation(line: 64, column: 7, scope: !2173, inlinedAt: !2167)
!2173 = !DILexicalBlockFile(scope: !2174, file: !1969, discriminator: 2)
!2174 = distinct !DILexicalBlock(scope: !2159, file: !1969, line: 64, column: 7)
!2175 = !DILocation(line: 228, column: 7, scope: !1950)
!2176 = !DILocation(line: 229, column: 12, scope: !2108)
!2177 = !DILocation(line: 229, column: 21, scope: !2108)
!2178 = !DILocation(line: 229, column: 5, scope: !2108)
!2179 = !DILocation(line: 231, column: 13, scope: !1950)
!2180 = !DILocation(line: 231, column: 11, scope: !1950)
!2181 = !DILocation(line: 231, column: 3, scope: !1950)
!2182 = !DILocation(line: 232, column: 1, scope: !1950)
!2183 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !2184, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!50, !6, !94, !1023}
!2186 = !{!2187, !2188, !2189}
!2187 = !DILocalVariable(name: "arg", arg: 1, scope: !2183, file: !100, line: 791, type: !6)
!2188 = !DILocalVariable(name: "argsize", arg: 2, scope: !2183, file: !100, line: 791, type: !94)
!2189 = !DILocalVariable(name: "o", arg: 3, scope: !2183, file: !100, line: 792, type: !1023)
!2190 = !DILocation(line: 791, column: 29, scope: !2183)
!2191 = !DILocation(line: 791, column: 41, scope: !2183)
!2192 = !DILocation(line: 792, column: 47, scope: !2183)
!2193 = !DILocalVariable(name: "arg", arg: 1, scope: !2194, file: !100, line: 804, type: !6)
!2194 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !2195, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!50, !6, !94, !578, !1023}
!2197 = !{!2193, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205}
!2198 = !DILocalVariable(name: "argsize", arg: 2, scope: !2194, file: !100, line: 804, type: !94)
!2199 = !DILocalVariable(name: "size", arg: 3, scope: !2194, file: !100, line: 804, type: !578)
!2200 = !DILocalVariable(name: "o", arg: 4, scope: !2194, file: !100, line: 805, type: !1023)
!2201 = !DILocalVariable(name: "p", scope: !2194, file: !100, line: 807, type: !1023)
!2202 = !DILocalVariable(name: "e", scope: !2194, file: !100, line: 808, type: !25)
!2203 = !DILocalVariable(name: "flags", scope: !2194, file: !100, line: 810, type: !25)
!2204 = !DILocalVariable(name: "bufsize", scope: !2194, file: !100, line: 811, type: !94)
!2205 = !DILocalVariable(name: "buf", scope: !2194, file: !100, line: 815, type: !50)
!2206 = !DILocation(line: 804, column: 33, scope: !2194, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 794, column: 10, scope: !2183)
!2208 = !DILocation(line: 804, column: 45, scope: !2194, inlinedAt: !2207)
!2209 = !DILocation(line: 804, column: 62, scope: !2194, inlinedAt: !2207)
!2210 = !DILocation(line: 805, column: 51, scope: !2194, inlinedAt: !2207)
!2211 = !DILocation(line: 807, column: 37, scope: !2194, inlinedAt: !2207)
!2212 = !DILocation(line: 807, column: 33, scope: !2194, inlinedAt: !2207)
!2213 = !DILocation(line: 808, column: 11, scope: !2194, inlinedAt: !2207)
!2214 = !DILocation(line: 808, column: 7, scope: !2194, inlinedAt: !2207)
!2215 = !DILocation(line: 810, column: 18, scope: !2194, inlinedAt: !2207)
!2216 = !DILocation(line: 810, column: 24, scope: !2194, inlinedAt: !2207)
!2217 = !DILocation(line: 810, column: 7, scope: !2194, inlinedAt: !2207)
!2218 = !DILocation(line: 811, column: 69, scope: !2194, inlinedAt: !2207)
!2219 = !DILocation(line: 812, column: 53, scope: !2194, inlinedAt: !2207)
!2220 = !DILocation(line: 813, column: 49, scope: !2194, inlinedAt: !2207)
!2221 = !DILocation(line: 814, column: 49, scope: !2194, inlinedAt: !2207)
!2222 = !DILocation(line: 811, column: 20, scope: !2194, inlinedAt: !2207)
!2223 = !DILocation(line: 814, column: 62, scope: !2194, inlinedAt: !2207)
!2224 = !DILocation(line: 811, column: 10, scope: !2194, inlinedAt: !2207)
!2225 = !DILocalVariable(name: "n", arg: 1, scope: !2226, file: !574, line: 220, type: !94)
!2226 = distinct !DISubprogram(name: "xcharalloc", scope: !574, file: !574, line: 220, type: !2227, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2229)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!50, !94}
!2229 = !{!2225}
!2230 = !DILocation(line: 220, column: 20, scope: !2226, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 815, column: 15, scope: !2194, inlinedAt: !2207)
!2232 = !DILocation(line: 222, column: 10, scope: !2226, inlinedAt: !2231)
!2233 = !DILocation(line: 815, column: 9, scope: !2194, inlinedAt: !2207)
!2234 = !DILocation(line: 816, column: 60, scope: !2194, inlinedAt: !2207)
!2235 = !DILocation(line: 818, column: 32, scope: !2194, inlinedAt: !2207)
!2236 = !DILocation(line: 818, column: 47, scope: !2194, inlinedAt: !2207)
!2237 = !DILocation(line: 816, column: 3, scope: !2194, inlinedAt: !2207)
!2238 = !DILocation(line: 819, column: 9, scope: !2194, inlinedAt: !2207)
!2239 = !DILocation(line: 794, column: 3, scope: !2183)
!2240 = !DILocation(line: 804, column: 33, scope: !2194)
!2241 = !DILocation(line: 804, column: 45, scope: !2194)
!2242 = !DILocation(line: 804, column: 62, scope: !2194)
!2243 = !DILocation(line: 805, column: 51, scope: !2194)
!2244 = !DILocation(line: 807, column: 37, scope: !2194)
!2245 = !DILocation(line: 807, column: 33, scope: !2194)
!2246 = !DILocation(line: 808, column: 11, scope: !2194)
!2247 = !DILocation(line: 808, column: 7, scope: !2194)
!2248 = !DILocation(line: 810, column: 18, scope: !2194)
!2249 = !DILocation(line: 810, column: 27, scope: !2194)
!2250 = !DILocation(line: 810, column: 24, scope: !2194)
!2251 = !DILocation(line: 810, column: 7, scope: !2194)
!2252 = !DILocation(line: 811, column: 69, scope: !2194)
!2253 = !DILocation(line: 812, column: 53, scope: !2194)
!2254 = !DILocation(line: 813, column: 49, scope: !2194)
!2255 = !DILocation(line: 814, column: 49, scope: !2194)
!2256 = !DILocation(line: 811, column: 20, scope: !2194)
!2257 = !DILocation(line: 814, column: 62, scope: !2194)
!2258 = !DILocation(line: 811, column: 10, scope: !2194)
!2259 = !DILocation(line: 220, column: 20, scope: !2226, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 815, column: 15, scope: !2194)
!2261 = !DILocation(line: 222, column: 10, scope: !2226, inlinedAt: !2260)
!2262 = !DILocation(line: 815, column: 9, scope: !2194)
!2263 = !DILocation(line: 816, column: 60, scope: !2194)
!2264 = !DILocation(line: 818, column: 32, scope: !2194)
!2265 = !DILocation(line: 818, column: 47, scope: !2194)
!2266 = !DILocation(line: 816, column: 3, scope: !2194)
!2267 = !DILocation(line: 819, column: 9, scope: !2194)
!2268 = !DILocation(line: 820, column: 7, scope: !2194)
!2269 = !DILocation(line: 821, column: 11, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2194, file: !100, line: 820, column: 7)
!2271 = !{!2272, !2272, i64 0}
!2272 = !{!"long", !625, i64 0}
!2273 = !DILocation(line: 821, column: 5, scope: !2270)
!2274 = !DILocation(line: 822, column: 3, scope: !2194)
!2275 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !829, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2276)
!2276 = !{!2277, !2278}
!2277 = !DILocalVariable(name: "sv", scope: !2275, file: !100, line: 842, type: !127)
!2278 = !DILocalVariable(name: "i", scope: !2275, file: !100, line: 843, type: !25)
!2279 = !DILocation(line: 842, column: 24, scope: !2275)
!2280 = !DILocation(line: 842, column: 19, scope: !2275)
!2281 = !DILocation(line: 843, column: 7, scope: !2275)
!2282 = !DILocation(line: 844, column: 19, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2284, file: !100, discriminator: 1)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !100, line: 844, column: 3)
!2285 = distinct !DILexicalBlock(scope: !2275, file: !100, line: 844, column: 3)
!2286 = !DILocation(line: 844, column: 17, scope: !2283)
!2287 = !DILocation(line: 844, column: 3, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2285, file: !100, discriminator: 1)
!2289 = !DILocation(line: 845, column: 17, scope: !2284)
!2290 = !{!2291, !624, i64 8}
!2291 = !{!"slotvec", !2272, i64 0, !624, i64 8}
!2292 = !DILocation(line: 845, column: 5, scope: !2284)
!2293 = !DILocation(line: 844, column: 28, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2284, file: !100, discriminator: 2)
!2295 = distinct !{!2295, !2296, !2297}
!2296 = !DILocation(line: 844, column: 3, scope: !2285)
!2297 = !DILocation(line: 845, column: 20, scope: !2285)
!2298 = !DILocation(line: 846, column: 13, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2275, file: !100, line: 846, column: 7)
!2300 = !DILocation(line: 846, column: 17, scope: !2299)
!2301 = !DILocation(line: 846, column: 7, scope: !2275)
!2302 = !DILocation(line: 848, column: 7, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2299, file: !100, line: 847, column: 5)
!2304 = !DILocation(line: 849, column: 21, scope: !2303)
!2305 = !{!2291, !2272, i64 0}
!2306 = !DILocation(line: 850, column: 20, scope: !2303)
!2307 = !DILocation(line: 851, column: 5, scope: !2303)
!2308 = !DILocation(line: 852, column: 10, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2275, file: !100, line: 852, column: 7)
!2310 = !DILocation(line: 852, column: 7, scope: !2275)
!2311 = !DILocation(line: 854, column: 13, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2309, file: !100, line: 853, column: 5)
!2313 = !DILocation(line: 854, column: 7, scope: !2312)
!2314 = !DILocation(line: 855, column: 15, scope: !2312)
!2315 = !DILocation(line: 856, column: 5, scope: !2312)
!2316 = !DILocation(line: 857, column: 10, scope: !2275)
!2317 = !DILocation(line: 858, column: 1, scope: !2275)
!2318 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !2319, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!50, !25, !6}
!2321 = !{!2322, !2323}
!2322 = !DILocalVariable(name: "n", arg: 1, scope: !2318, file: !100, line: 922, type: !25)
!2323 = !DILocalVariable(name: "arg", arg: 2, scope: !2318, file: !100, line: 922, type: !6)
!2324 = !DILocation(line: 922, column: 17, scope: !2318)
!2325 = !DILocation(line: 922, column: 32, scope: !2318)
!2326 = !DILocation(line: 924, column: 10, scope: !2318)
!2327 = !DILocation(line: 924, column: 3, scope: !2318)
!2328 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !2329, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!50, !25, !6, !94, !1023}
!2331 = !{!2332, !2333, !2334, !2335, !2336, !2337, !2338, !2341, !2343, !2344, !2345}
!2332 = !DILocalVariable(name: "n", arg: 1, scope: !2328, file: !100, line: 869, type: !25)
!2333 = !DILocalVariable(name: "arg", arg: 2, scope: !2328, file: !100, line: 869, type: !6)
!2334 = !DILocalVariable(name: "argsize", arg: 3, scope: !2328, file: !100, line: 869, type: !94)
!2335 = !DILocalVariable(name: "options", arg: 4, scope: !2328, file: !100, line: 870, type: !1023)
!2336 = !DILocalVariable(name: "e", scope: !2328, file: !100, line: 872, type: !25)
!2337 = !DILocalVariable(name: "sv", scope: !2328, file: !100, line: 874, type: !127)
!2338 = !DILocalVariable(name: "preallocated", scope: !2339, file: !100, line: 881, type: !17)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !100, line: 880, column: 5)
!2340 = distinct !DILexicalBlock(scope: !2328, file: !100, line: 879, column: 7)
!2341 = !DILocalVariable(name: "size", scope: !2342, file: !100, line: 894, type: !94)
!2342 = distinct !DILexicalBlock(scope: !2328, file: !100, line: 893, column: 3)
!2343 = !DILocalVariable(name: "val", scope: !2342, file: !100, line: 895, type: !50)
!2344 = !DILocalVariable(name: "flags", scope: !2342, file: !100, line: 897, type: !25)
!2345 = !DILocalVariable(name: "qsize", scope: !2342, file: !100, line: 898, type: !94)
!2346 = !DILocation(line: 869, column: 25, scope: !2328)
!2347 = !DILocation(line: 869, column: 40, scope: !2328)
!2348 = !DILocation(line: 869, column: 52, scope: !2328)
!2349 = !DILocation(line: 870, column: 51, scope: !2328)
!2350 = !DILocation(line: 872, column: 11, scope: !2328)
!2351 = !DILocation(line: 872, column: 7, scope: !2328)
!2352 = !DILocation(line: 874, column: 24, scope: !2328)
!2353 = !DILocation(line: 874, column: 19, scope: !2328)
!2354 = !DILocation(line: 876, column: 9, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2328, file: !100, line: 876, column: 7)
!2356 = !DILocation(line: 876, column: 7, scope: !2328)
!2357 = !DILocation(line: 877, column: 5, scope: !2355)
!2358 = !DILocation(line: 879, column: 7, scope: !2340)
!2359 = !DILocation(line: 879, column: 14, scope: !2340)
!2360 = !DILocation(line: 879, column: 7, scope: !2328)
!2361 = !DILocation(line: 881, column: 31, scope: !2339)
!2362 = !DILocation(line: 883, column: 67, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2339, file: !100, line: 883, column: 11)
!2364 = !DILocation(line: 883, column: 11, scope: !2339)
!2365 = !DILocation(line: 884, column: 9, scope: !2363)
!2366 = !DILocation(line: 886, column: 32, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2339, file: !100, discriminator: 3)
!2368 = !DILocation(line: 886, column: 61, scope: !2367)
!2369 = !DILocation(line: 886, column: 58, scope: !2367)
!2370 = !DILocation(line: 886, column: 66, scope: !2367)
!2371 = !DILocation(line: 886, column: 22, scope: !2367)
!2372 = !DILocation(line: 886, column: 15, scope: !2367)
!2373 = !DILocation(line: 887, column: 11, scope: !2339)
!2374 = !DILocation(line: 888, column: 15, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2339, file: !100, line: 887, column: 11)
!2376 = !{i64 0, i64 8, !2271, i64 8, i64 8, !623}
!2377 = !DILocation(line: 888, column: 9, scope: !2375)
!2378 = !DILocation(line: 889, column: 20, scope: !2339)
!2379 = !DILocation(line: 889, column: 18, scope: !2339)
!2380 = !DILocation(line: 889, column: 7, scope: !2339)
!2381 = !DILocation(line: 889, column: 38, scope: !2339)
!2382 = !DILocation(line: 889, column: 31, scope: !2339)
!2383 = !DILocation(line: 889, column: 48, scope: !2339)
!2384 = !DILocation(line: 890, column: 14, scope: !2339)
!2385 = !DILocation(line: 891, column: 5, scope: !2339)
!2386 = !DILocation(line: 894, column: 19, scope: !2342)
!2387 = !DILocation(line: 894, column: 25, scope: !2342)
!2388 = !DILocation(line: 894, column: 12, scope: !2342)
!2389 = !DILocation(line: 895, column: 23, scope: !2342)
!2390 = !DILocation(line: 895, column: 11, scope: !2342)
!2391 = !DILocation(line: 897, column: 26, scope: !2342)
!2392 = !DILocation(line: 897, column: 32, scope: !2342)
!2393 = !DILocation(line: 897, column: 9, scope: !2342)
!2394 = !DILocation(line: 899, column: 55, scope: !2342)
!2395 = !DILocation(line: 900, column: 46, scope: !2342)
!2396 = !DILocation(line: 901, column: 55, scope: !2342)
!2397 = !DILocation(line: 902, column: 55, scope: !2342)
!2398 = !DILocation(line: 898, column: 20, scope: !2342)
!2399 = !DILocation(line: 898, column: 12, scope: !2342)
!2400 = !DILocation(line: 904, column: 14, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2342, file: !100, line: 904, column: 9)
!2402 = !DILocation(line: 904, column: 9, scope: !2342)
!2403 = !DILocation(line: 906, column: 35, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !100, line: 905, column: 7)
!2405 = !DILocation(line: 906, column: 20, scope: !2404)
!2406 = !DILocation(line: 907, column: 17, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !100, line: 907, column: 13)
!2408 = !DILocation(line: 907, column: 13, scope: !2404)
!2409 = !DILocation(line: 908, column: 11, scope: !2407)
!2410 = !DILocation(line: 220, column: 20, scope: !2226, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 909, column: 27, scope: !2404)
!2412 = !DILocation(line: 222, column: 10, scope: !2226, inlinedAt: !2411)
!2413 = !DILocation(line: 909, column: 19, scope: !2404)
!2414 = !DILocation(line: 910, column: 69, scope: !2404)
!2415 = !DILocation(line: 912, column: 44, scope: !2404)
!2416 = !DILocation(line: 913, column: 44, scope: !2404)
!2417 = !DILocation(line: 910, column: 9, scope: !2404)
!2418 = !DILocation(line: 914, column: 7, scope: !2404)
!2419 = !DILocation(line: 916, column: 11, scope: !2342)
!2420 = !DILocation(line: 917, column: 5, scope: !2342)
!2421 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !2422, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!50, !25, !6, !94}
!2424 = !{!2425, !2426, !2427}
!2425 = !DILocalVariable(name: "n", arg: 1, scope: !2421, file: !100, line: 928, type: !25)
!2426 = !DILocalVariable(name: "arg", arg: 2, scope: !2421, file: !100, line: 928, type: !6)
!2427 = !DILocalVariable(name: "argsize", arg: 3, scope: !2421, file: !100, line: 928, type: !94)
!2428 = !DILocation(line: 928, column: 21, scope: !2421)
!2429 = !DILocation(line: 928, column: 36, scope: !2421)
!2430 = !DILocation(line: 928, column: 48, scope: !2421)
!2431 = !DILocation(line: 930, column: 10, scope: !2421)
!2432 = !DILocation(line: 930, column: 3, scope: !2421)
!2433 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !2434, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!50, !6}
!2436 = !{!2437}
!2437 = !DILocalVariable(name: "arg", arg: 1, scope: !2433, file: !100, line: 934, type: !6)
!2438 = !DILocation(line: 934, column: 23, scope: !2433)
!2439 = !DILocation(line: 922, column: 17, scope: !2318, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 936, column: 10, scope: !2433)
!2441 = !DILocation(line: 922, column: 32, scope: !2318, inlinedAt: !2440)
!2442 = !DILocation(line: 924, column: 10, scope: !2318, inlinedAt: !2440)
!2443 = !DILocation(line: 936, column: 3, scope: !2433)
!2444 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !2445, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!50, !6, !94}
!2447 = !{!2448, !2449}
!2448 = !DILocalVariable(name: "arg", arg: 1, scope: !2444, file: !100, line: 940, type: !6)
!2449 = !DILocalVariable(name: "argsize", arg: 2, scope: !2444, file: !100, line: 940, type: !94)
!2450 = !DILocation(line: 940, column: 27, scope: !2444)
!2451 = !DILocation(line: 940, column: 39, scope: !2444)
!2452 = !DILocation(line: 928, column: 21, scope: !2421, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 942, column: 10, scope: !2444)
!2454 = !DILocation(line: 928, column: 36, scope: !2421, inlinedAt: !2453)
!2455 = !DILocation(line: 928, column: 48, scope: !2421, inlinedAt: !2453)
!2456 = !DILocation(line: 930, column: 10, scope: !2421, inlinedAt: !2453)
!2457 = !DILocation(line: 942, column: 3, scope: !2444)
!2458 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !2459, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!50, !25, !58, !6}
!2461 = !{!2462, !2463, !2464, !2465}
!2462 = !DILocalVariable(name: "n", arg: 1, scope: !2458, file: !100, line: 946, type: !25)
!2463 = !DILocalVariable(name: "s", arg: 2, scope: !2458, file: !100, line: 946, type: !58)
!2464 = !DILocalVariable(name: "arg", arg: 3, scope: !2458, file: !100, line: 946, type: !6)
!2465 = !DILocalVariable(name: "o", scope: !2458, file: !100, line: 948, type: !1024)
!2466 = !DILocalVariable(name: "o", scope: !2467, file: !100, line: 187, type: !107)
!2467 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2468, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!107, !58}
!2470 = !{!2471, !2466}
!2471 = !DILocalVariable(name: "style", arg: 1, scope: !2467, file: !100, line: 185, type: !58)
!2472 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2473 = !DILocation(line: 187, column: 26, scope: !2467, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 948, column: 36, scope: !2458)
!2475 = !DILocation(line: 946, column: 23, scope: !2458)
!2476 = !DILocation(line: 946, column: 45, scope: !2458)
!2477 = !DILocation(line: 946, column: 60, scope: !2458)
!2478 = !DILocation(line: 948, column: 3, scope: !2458)
!2479 = !DILocation(line: 948, column: 32, scope: !2458)
!2480 = !DILocation(line: 185, column: 48, scope: !2467, inlinedAt: !2474)
!2481 = !DILocation(line: 187, column: 3, scope: !2467, inlinedAt: !2474)
!2482 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2483 = !DILocation(line: 188, column: 13, scope: !2484, inlinedAt: !2474)
!2484 = distinct !DILexicalBlock(scope: !2467, file: !100, line: 188, column: 7)
!2485 = !DILocation(line: 188, column: 7, scope: !2467, inlinedAt: !2474)
!2486 = !DILocation(line: 189, column: 5, scope: !2484, inlinedAt: !2474)
!2487 = !{!2488}
!2488 = distinct !{!2488, !2489, !"quoting_options_from_style: argument 0"}
!2489 = distinct !{!2489, !"quoting_options_from_style"}
!2490 = !DILocation(line: 191, column: 10, scope: !2467, inlinedAt: !2474)
!2491 = !DILocation(line: 192, column: 1, scope: !2467, inlinedAt: !2474)
!2492 = !DILocation(line: 949, column: 10, scope: !2458)
!2493 = !DILocation(line: 950, column: 1, scope: !2458)
!2494 = !DILocation(line: 949, column: 3, scope: !2458)
!2495 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2496, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!50, !25, !58, !6, !94}
!2498 = !{!2499, !2500, !2501, !2502, !2503}
!2499 = !DILocalVariable(name: "n", arg: 1, scope: !2495, file: !100, line: 953, type: !25)
!2500 = !DILocalVariable(name: "s", arg: 2, scope: !2495, file: !100, line: 953, type: !58)
!2501 = !DILocalVariable(name: "arg", arg: 3, scope: !2495, file: !100, line: 954, type: !6)
!2502 = !DILocalVariable(name: "argsize", arg: 4, scope: !2495, file: !100, line: 954, type: !94)
!2503 = !DILocalVariable(name: "o", scope: !2495, file: !100, line: 956, type: !1024)
!2504 = !DILocation(line: 187, column: 26, scope: !2467, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 956, column: 36, scope: !2495)
!2506 = !DILocation(line: 953, column: 27, scope: !2495)
!2507 = !DILocation(line: 953, column: 49, scope: !2495)
!2508 = !DILocation(line: 954, column: 35, scope: !2495)
!2509 = !DILocation(line: 954, column: 47, scope: !2495)
!2510 = !DILocation(line: 956, column: 3, scope: !2495)
!2511 = !DILocation(line: 956, column: 32, scope: !2495)
!2512 = !DILocation(line: 185, column: 48, scope: !2467, inlinedAt: !2505)
!2513 = !DILocation(line: 187, column: 3, scope: !2467, inlinedAt: !2505)
!2514 = !DILocation(line: 188, column: 13, scope: !2484, inlinedAt: !2505)
!2515 = !DILocation(line: 188, column: 7, scope: !2467, inlinedAt: !2505)
!2516 = !DILocation(line: 189, column: 5, scope: !2484, inlinedAt: !2505)
!2517 = !{!2518}
!2518 = distinct !{!2518, !2519, !"quoting_options_from_style: argument 0"}
!2519 = distinct !{!2519, !"quoting_options_from_style"}
!2520 = !DILocation(line: 191, column: 10, scope: !2467, inlinedAt: !2505)
!2521 = !DILocation(line: 192, column: 1, scope: !2467, inlinedAt: !2505)
!2522 = !DILocation(line: 957, column: 10, scope: !2495)
!2523 = !DILocation(line: 958, column: 1, scope: !2495)
!2524 = !DILocation(line: 957, column: 3, scope: !2495)
!2525 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2526, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!50, !58, !6}
!2528 = !{!2529, !2530}
!2529 = !DILocalVariable(name: "s", arg: 1, scope: !2525, file: !100, line: 961, type: !58)
!2530 = !DILocalVariable(name: "arg", arg: 2, scope: !2525, file: !100, line: 961, type: !6)
!2531 = !DILocation(line: 187, column: 26, scope: !2467, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 948, column: 36, scope: !2458, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 963, column: 10, scope: !2525)
!2534 = !DILocation(line: 961, column: 36, scope: !2525)
!2535 = !DILocation(line: 961, column: 51, scope: !2525)
!2536 = !DILocation(line: 946, column: 23, scope: !2458, inlinedAt: !2533)
!2537 = !DILocation(line: 946, column: 45, scope: !2458, inlinedAt: !2533)
!2538 = !DILocation(line: 946, column: 60, scope: !2458, inlinedAt: !2533)
!2539 = !DILocation(line: 948, column: 3, scope: !2458, inlinedAt: !2533)
!2540 = !DILocation(line: 948, column: 32, scope: !2458, inlinedAt: !2533)
!2541 = !DILocation(line: 185, column: 48, scope: !2467, inlinedAt: !2532)
!2542 = !DILocation(line: 187, column: 3, scope: !2467, inlinedAt: !2532)
!2543 = !DILocation(line: 188, column: 13, scope: !2484, inlinedAt: !2532)
!2544 = !DILocation(line: 188, column: 7, scope: !2467, inlinedAt: !2532)
!2545 = !DILocation(line: 189, column: 5, scope: !2484, inlinedAt: !2532)
!2546 = !{!2547}
!2547 = distinct !{!2547, !2548, !"quoting_options_from_style: argument 0"}
!2548 = distinct !{!2548, !"quoting_options_from_style"}
!2549 = !DILocation(line: 191, column: 10, scope: !2467, inlinedAt: !2532)
!2550 = !DILocation(line: 192, column: 1, scope: !2467, inlinedAt: !2532)
!2551 = !DILocation(line: 949, column: 10, scope: !2458, inlinedAt: !2533)
!2552 = !DILocation(line: 950, column: 1, scope: !2458, inlinedAt: !2533)
!2553 = !DILocation(line: 963, column: 3, scope: !2525)
!2554 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2555, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!50, !58, !6, !94}
!2557 = !{!2558, !2559, !2560}
!2558 = !DILocalVariable(name: "s", arg: 1, scope: !2554, file: !100, line: 967, type: !58)
!2559 = !DILocalVariable(name: "arg", arg: 2, scope: !2554, file: !100, line: 967, type: !6)
!2560 = !DILocalVariable(name: "argsize", arg: 3, scope: !2554, file: !100, line: 967, type: !94)
!2561 = !DILocation(line: 187, column: 26, scope: !2467, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 956, column: 36, scope: !2495, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 969, column: 10, scope: !2554)
!2564 = !DILocation(line: 967, column: 40, scope: !2554)
!2565 = !DILocation(line: 967, column: 55, scope: !2554)
!2566 = !DILocation(line: 967, column: 67, scope: !2554)
!2567 = !DILocation(line: 953, column: 27, scope: !2495, inlinedAt: !2563)
!2568 = !DILocation(line: 953, column: 49, scope: !2495, inlinedAt: !2563)
!2569 = !DILocation(line: 954, column: 35, scope: !2495, inlinedAt: !2563)
!2570 = !DILocation(line: 954, column: 47, scope: !2495, inlinedAt: !2563)
!2571 = !DILocation(line: 956, column: 3, scope: !2495, inlinedAt: !2563)
!2572 = !DILocation(line: 956, column: 32, scope: !2495, inlinedAt: !2563)
!2573 = !DILocation(line: 185, column: 48, scope: !2467, inlinedAt: !2562)
!2574 = !DILocation(line: 187, column: 3, scope: !2467, inlinedAt: !2562)
!2575 = !DILocation(line: 188, column: 13, scope: !2484, inlinedAt: !2562)
!2576 = !DILocation(line: 188, column: 7, scope: !2467, inlinedAt: !2562)
!2577 = !DILocation(line: 189, column: 5, scope: !2484, inlinedAt: !2562)
!2578 = !{!2579}
!2579 = distinct !{!2579, !2580, !"quoting_options_from_style: argument 0"}
!2580 = distinct !{!2580, !"quoting_options_from_style"}
!2581 = !DILocation(line: 191, column: 10, scope: !2467, inlinedAt: !2562)
!2582 = !DILocation(line: 192, column: 1, scope: !2467, inlinedAt: !2562)
!2583 = !DILocation(line: 957, column: 10, scope: !2495, inlinedAt: !2563)
!2584 = !DILocation(line: 958, column: 1, scope: !2495, inlinedAt: !2563)
!2585 = !DILocation(line: 969, column: 3, scope: !2554)
!2586 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2587, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!50, !6, !94, !8}
!2589 = !{!2590, !2591, !2592, !2593}
!2590 = !DILocalVariable(name: "arg", arg: 1, scope: !2586, file: !100, line: 973, type: !6)
!2591 = !DILocalVariable(name: "argsize", arg: 2, scope: !2586, file: !100, line: 973, type: !94)
!2592 = !DILocalVariable(name: "ch", arg: 3, scope: !2586, file: !100, line: 973, type: !8)
!2593 = !DILocalVariable(name: "options", scope: !2586, file: !100, line: 975, type: !107)
!2594 = !DILocation(line: 973, column: 32, scope: !2586)
!2595 = !DILocation(line: 973, column: 44, scope: !2586)
!2596 = !DILocation(line: 973, column: 58, scope: !2586)
!2597 = !DILocation(line: 975, column: 3, scope: !2586)
!2598 = !DILocation(line: 976, column: 13, scope: !2586)
!2599 = !{i64 0, i64 4, !768, i64 4, i64 4, !706, i64 8, i64 32, !768, i64 40, i64 8, !623, i64 48, i64 8, !623}
!2600 = !DILocation(line: 975, column: 26, scope: !2586)
!2601 = !DILocation(line: 144, column: 43, scope: !1047, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 977, column: 3, scope: !2586)
!2603 = !DILocation(line: 144, column: 51, scope: !1047, inlinedAt: !2602)
!2604 = !DILocation(line: 144, column: 58, scope: !1047, inlinedAt: !2602)
!2605 = !DILocation(line: 146, column: 17, scope: !1047, inlinedAt: !2602)
!2606 = !DILocation(line: 148, column: 62, scope: !1065, inlinedAt: !2602)
!2607 = !DILocation(line: 148, column: 57, scope: !1065, inlinedAt: !2602)
!2608 = !DILocation(line: 147, column: 17, scope: !1047, inlinedAt: !2602)
!2609 = !DILocation(line: 149, column: 18, scope: !1047, inlinedAt: !2602)
!2610 = !DILocation(line: 149, column: 15, scope: !1047, inlinedAt: !2602)
!2611 = !DILocation(line: 149, column: 7, scope: !1047, inlinedAt: !2602)
!2612 = !DILocation(line: 150, column: 12, scope: !1047, inlinedAt: !2602)
!2613 = !DILocation(line: 150, column: 15, scope: !1047, inlinedAt: !2602)
!2614 = !DILocation(line: 150, column: 25, scope: !1047, inlinedAt: !2602)
!2615 = !DILocation(line: 150, column: 7, scope: !1047, inlinedAt: !2602)
!2616 = !DILocation(line: 151, column: 18, scope: !1047, inlinedAt: !2602)
!2617 = !DILocation(line: 151, column: 23, scope: !1047, inlinedAt: !2602)
!2618 = !DILocation(line: 151, column: 6, scope: !1047, inlinedAt: !2602)
!2619 = !DILocation(line: 978, column: 10, scope: !2586)
!2620 = !DILocation(line: 979, column: 1, scope: !2586)
!2621 = !DILocation(line: 978, column: 3, scope: !2586)
!2622 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2623, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!50, !6, !8}
!2625 = !{!2626, !2627}
!2626 = !DILocalVariable(name: "arg", arg: 1, scope: !2622, file: !100, line: 982, type: !6)
!2627 = !DILocalVariable(name: "ch", arg: 2, scope: !2622, file: !100, line: 982, type: !8)
!2628 = !DILocation(line: 982, column: 28, scope: !2622)
!2629 = !DILocation(line: 982, column: 38, scope: !2622)
!2630 = !DILocation(line: 973, column: 32, scope: !2586, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 984, column: 10, scope: !2622)
!2632 = !DILocation(line: 973, column: 44, scope: !2586, inlinedAt: !2631)
!2633 = !DILocation(line: 973, column: 58, scope: !2586, inlinedAt: !2631)
!2634 = !DILocation(line: 975, column: 3, scope: !2586, inlinedAt: !2631)
!2635 = !DILocation(line: 976, column: 13, scope: !2586, inlinedAt: !2631)
!2636 = !DILocation(line: 975, column: 26, scope: !2586, inlinedAt: !2631)
!2637 = !DILocation(line: 144, column: 43, scope: !1047, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 977, column: 3, scope: !2586, inlinedAt: !2631)
!2639 = !DILocation(line: 144, column: 51, scope: !1047, inlinedAt: !2638)
!2640 = !DILocation(line: 144, column: 58, scope: !1047, inlinedAt: !2638)
!2641 = !DILocation(line: 146, column: 17, scope: !1047, inlinedAt: !2638)
!2642 = !DILocation(line: 148, column: 62, scope: !1065, inlinedAt: !2638)
!2643 = !DILocation(line: 148, column: 57, scope: !1065, inlinedAt: !2638)
!2644 = !DILocation(line: 147, column: 17, scope: !1047, inlinedAt: !2638)
!2645 = !DILocation(line: 149, column: 18, scope: !1047, inlinedAt: !2638)
!2646 = !DILocation(line: 149, column: 15, scope: !1047, inlinedAt: !2638)
!2647 = !DILocation(line: 149, column: 7, scope: !1047, inlinedAt: !2638)
!2648 = !DILocation(line: 150, column: 12, scope: !1047, inlinedAt: !2638)
!2649 = !DILocation(line: 150, column: 15, scope: !1047, inlinedAt: !2638)
!2650 = !DILocation(line: 150, column: 25, scope: !1047, inlinedAt: !2638)
!2651 = !DILocation(line: 150, column: 7, scope: !1047, inlinedAt: !2638)
!2652 = !DILocation(line: 151, column: 18, scope: !1047, inlinedAt: !2638)
!2653 = !DILocation(line: 151, column: 23, scope: !1047, inlinedAt: !2638)
!2654 = !DILocation(line: 151, column: 6, scope: !1047, inlinedAt: !2638)
!2655 = !DILocation(line: 978, column: 10, scope: !2586, inlinedAt: !2631)
!2656 = !DILocation(line: 979, column: 1, scope: !2586, inlinedAt: !2631)
!2657 = !DILocation(line: 984, column: 3, scope: !2622)
!2658 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !2434, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2659)
!2659 = !{!2660}
!2660 = !DILocalVariable(name: "arg", arg: 1, scope: !2658, file: !100, line: 988, type: !6)
!2661 = !DILocation(line: 988, column: 29, scope: !2658)
!2662 = !DILocation(line: 982, column: 28, scope: !2622, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 990, column: 10, scope: !2658)
!2664 = !DILocation(line: 982, column: 38, scope: !2622, inlinedAt: !2663)
!2665 = !DILocation(line: 973, column: 32, scope: !2586, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 984, column: 10, scope: !2622, inlinedAt: !2663)
!2667 = !DILocation(line: 973, column: 44, scope: !2586, inlinedAt: !2666)
!2668 = !DILocation(line: 973, column: 58, scope: !2586, inlinedAt: !2666)
!2669 = !DILocation(line: 975, column: 3, scope: !2586, inlinedAt: !2666)
!2670 = !DILocation(line: 976, column: 13, scope: !2586, inlinedAt: !2666)
!2671 = !DILocation(line: 975, column: 26, scope: !2586, inlinedAt: !2666)
!2672 = !DILocation(line: 144, column: 43, scope: !1047, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 977, column: 3, scope: !2586, inlinedAt: !2666)
!2674 = !DILocation(line: 144, column: 51, scope: !1047, inlinedAt: !2673)
!2675 = !DILocation(line: 144, column: 58, scope: !1047, inlinedAt: !2673)
!2676 = !DILocation(line: 146, column: 17, scope: !1047, inlinedAt: !2673)
!2677 = !DILocation(line: 148, column: 57, scope: !1065, inlinedAt: !2673)
!2678 = !DILocation(line: 147, column: 17, scope: !1047, inlinedAt: !2673)
!2679 = !DILocation(line: 149, column: 7, scope: !1047, inlinedAt: !2673)
!2680 = !DILocation(line: 150, column: 12, scope: !1047, inlinedAt: !2673)
!2681 = !DILocation(line: 151, column: 6, scope: !1047, inlinedAt: !2673)
!2682 = !DILocation(line: 978, column: 10, scope: !2586, inlinedAt: !2666)
!2683 = !DILocation(line: 979, column: 1, scope: !2586, inlinedAt: !2666)
!2684 = !DILocation(line: 990, column: 3, scope: !2658)
!2685 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !2445, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2686)
!2686 = !{!2687, !2688}
!2687 = !DILocalVariable(name: "arg", arg: 1, scope: !2685, file: !100, line: 994, type: !6)
!2688 = !DILocalVariable(name: "argsize", arg: 2, scope: !2685, file: !100, line: 994, type: !94)
!2689 = !DILocation(line: 994, column: 33, scope: !2685)
!2690 = !DILocation(line: 994, column: 45, scope: !2685)
!2691 = !DILocation(line: 973, column: 32, scope: !2586, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 996, column: 10, scope: !2685)
!2693 = !DILocation(line: 973, column: 44, scope: !2586, inlinedAt: !2692)
!2694 = !DILocation(line: 973, column: 58, scope: !2586, inlinedAt: !2692)
!2695 = !DILocation(line: 975, column: 3, scope: !2586, inlinedAt: !2692)
!2696 = !DILocation(line: 976, column: 13, scope: !2586, inlinedAt: !2692)
!2697 = !DILocation(line: 975, column: 26, scope: !2586, inlinedAt: !2692)
!2698 = !DILocation(line: 144, column: 43, scope: !1047, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 977, column: 3, scope: !2586, inlinedAt: !2692)
!2700 = !DILocation(line: 144, column: 51, scope: !1047, inlinedAt: !2699)
!2701 = !DILocation(line: 144, column: 58, scope: !1047, inlinedAt: !2699)
!2702 = !DILocation(line: 146, column: 17, scope: !1047, inlinedAt: !2699)
!2703 = !DILocation(line: 148, column: 57, scope: !1065, inlinedAt: !2699)
!2704 = !DILocation(line: 147, column: 17, scope: !1047, inlinedAt: !2699)
!2705 = !DILocation(line: 149, column: 7, scope: !1047, inlinedAt: !2699)
!2706 = !DILocation(line: 150, column: 12, scope: !1047, inlinedAt: !2699)
!2707 = !DILocation(line: 151, column: 6, scope: !1047, inlinedAt: !2699)
!2708 = !DILocation(line: 978, column: 10, scope: !2586, inlinedAt: !2692)
!2709 = !DILocation(line: 979, column: 1, scope: !2586, inlinedAt: !2692)
!2710 = !DILocation(line: 996, column: 3, scope: !2685)
!2711 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !2459, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2712)
!2712 = !{!2713, !2714, !2715, !2716}
!2713 = !DILocalVariable(name: "n", arg: 1, scope: !2711, file: !100, line: 1000, type: !25)
!2714 = !DILocalVariable(name: "s", arg: 2, scope: !2711, file: !100, line: 1000, type: !58)
!2715 = !DILocalVariable(name: "arg", arg: 3, scope: !2711, file: !100, line: 1000, type: !6)
!2716 = !DILocalVariable(name: "options", scope: !2711, file: !100, line: 1002, type: !107)
!2717 = !DILocation(line: 187, column: 26, scope: !2467, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1003, column: 13, scope: !2711)
!2719 = !DILocation(line: 1000, column: 29, scope: !2711)
!2720 = !DILocation(line: 1000, column: 51, scope: !2711)
!2721 = !DILocation(line: 1000, column: 66, scope: !2711)
!2722 = !DILocation(line: 1002, column: 3, scope: !2711)
!2723 = !DILocation(line: 185, column: 48, scope: !2467, inlinedAt: !2718)
!2724 = !DILocation(line: 187, column: 3, scope: !2467, inlinedAt: !2718)
!2725 = !DILocation(line: 188, column: 13, scope: !2484, inlinedAt: !2718)
!2726 = !DILocation(line: 188, column: 7, scope: !2467, inlinedAt: !2718)
!2727 = !DILocation(line: 189, column: 5, scope: !2484, inlinedAt: !2718)
!2728 = !{!2729}
!2729 = distinct !{!2729, !2730, !"quoting_options_from_style: argument 0"}
!2730 = distinct !{!2730, !"quoting_options_from_style"}
!2731 = !DILocation(line: 191, column: 10, scope: !2467, inlinedAt: !2718)
!2732 = !DILocation(line: 192, column: 1, scope: !2467, inlinedAt: !2718)
!2733 = !DILocation(line: 1003, column: 13, scope: !2711)
!2734 = !DILocation(line: 1002, column: 26, scope: !2711)
!2735 = !DILocation(line: 144, column: 43, scope: !1047, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 1004, column: 3, scope: !2711)
!2737 = !DILocation(line: 144, column: 51, scope: !1047, inlinedAt: !2736)
!2738 = !DILocation(line: 144, column: 58, scope: !1047, inlinedAt: !2736)
!2739 = !DILocation(line: 146, column: 17, scope: !1047, inlinedAt: !2736)
!2740 = !DILocation(line: 148, column: 57, scope: !1065, inlinedAt: !2736)
!2741 = !DILocation(line: 147, column: 17, scope: !1047, inlinedAt: !2736)
!2742 = !DILocation(line: 149, column: 7, scope: !1047, inlinedAt: !2736)
!2743 = !DILocation(line: 150, column: 12, scope: !1047, inlinedAt: !2736)
!2744 = !DILocation(line: 151, column: 6, scope: !1047, inlinedAt: !2736)
!2745 = !DILocation(line: 1005, column: 10, scope: !2711)
!2746 = !DILocation(line: 1006, column: 1, scope: !2711)
!2747 = !DILocation(line: 1005, column: 3, scope: !2711)
!2748 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2749, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!50, !25, !6, !6, !6}
!2751 = !{!2752, !2753, !2754, !2755}
!2752 = !DILocalVariable(name: "n", arg: 1, scope: !2748, file: !100, line: 1009, type: !25)
!2753 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2748, file: !100, line: 1009, type: !6)
!2754 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2748, file: !100, line: 1010, type: !6)
!2755 = !DILocalVariable(name: "arg", arg: 4, scope: !2748, file: !100, line: 1010, type: !6)
!2756 = !DILocation(line: 1009, column: 24, scope: !2748)
!2757 = !DILocation(line: 1009, column: 39, scope: !2748)
!2758 = !DILocation(line: 1010, column: 32, scope: !2748)
!2759 = !DILocation(line: 1010, column: 57, scope: !2748)
!2760 = !DILocalVariable(name: "n", arg: 1, scope: !2761, file: !100, line: 1017, type: !25)
!2761 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2762, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!50, !25, !6, !6, !6, !94}
!2764 = !{!2760, !2765, !2766, !2767, !2768, !2769}
!2765 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2761, file: !100, line: 1017, type: !6)
!2766 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2761, file: !100, line: 1018, type: !6)
!2767 = !DILocalVariable(name: "arg", arg: 4, scope: !2761, file: !100, line: 1019, type: !6)
!2768 = !DILocalVariable(name: "argsize", arg: 5, scope: !2761, file: !100, line: 1019, type: !94)
!2769 = !DILocalVariable(name: "o", scope: !2761, file: !100, line: 1021, type: !107)
!2770 = !DILocation(line: 1017, column: 28, scope: !2761, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 1012, column: 10, scope: !2748)
!2772 = !DILocation(line: 1017, column: 43, scope: !2761, inlinedAt: !2771)
!2773 = !DILocation(line: 1018, column: 36, scope: !2761, inlinedAt: !2771)
!2774 = !DILocation(line: 1019, column: 36, scope: !2761, inlinedAt: !2771)
!2775 = !DILocation(line: 1019, column: 48, scope: !2761, inlinedAt: !2771)
!2776 = !DILocation(line: 1021, column: 3, scope: !2761, inlinedAt: !2771)
!2777 = !DILocation(line: 1021, column: 30, scope: !2761, inlinedAt: !2771)
!2778 = !DILocation(line: 1021, column: 26, scope: !2761, inlinedAt: !2771)
!2779 = !DILocation(line: 171, column: 45, scope: !1097, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1022, column: 3, scope: !2761, inlinedAt: !2771)
!2781 = !DILocation(line: 172, column: 33, scope: !1097, inlinedAt: !2780)
!2782 = !DILocation(line: 172, column: 57, scope: !1097, inlinedAt: !2780)
!2783 = !DILocation(line: 176, column: 6, scope: !1097, inlinedAt: !2780)
!2784 = !DILocation(line: 176, column: 12, scope: !1097, inlinedAt: !2780)
!2785 = !DILocation(line: 177, column: 8, scope: !1113, inlinedAt: !2780)
!2786 = !DILocation(line: 177, column: 23, scope: !1115, inlinedAt: !2780)
!2787 = !DILocation(line: 177, column: 19, scope: !1113, inlinedAt: !2780)
!2788 = !DILocation(line: 178, column: 5, scope: !1113, inlinedAt: !2780)
!2789 = !DILocation(line: 179, column: 6, scope: !1097, inlinedAt: !2780)
!2790 = !DILocation(line: 179, column: 17, scope: !1097, inlinedAt: !2780)
!2791 = !DILocation(line: 180, column: 6, scope: !1097, inlinedAt: !2780)
!2792 = !DILocation(line: 180, column: 18, scope: !1097, inlinedAt: !2780)
!2793 = !DILocation(line: 1023, column: 10, scope: !2761, inlinedAt: !2771)
!2794 = !DILocation(line: 1024, column: 1, scope: !2761, inlinedAt: !2771)
!2795 = !DILocation(line: 1012, column: 3, scope: !2748)
!2796 = !DILocation(line: 1017, column: 28, scope: !2761)
!2797 = !DILocation(line: 1017, column: 43, scope: !2761)
!2798 = !DILocation(line: 1018, column: 36, scope: !2761)
!2799 = !DILocation(line: 1019, column: 36, scope: !2761)
!2800 = !DILocation(line: 1019, column: 48, scope: !2761)
!2801 = !DILocation(line: 1021, column: 3, scope: !2761)
!2802 = !DILocation(line: 1021, column: 30, scope: !2761)
!2803 = !DILocation(line: 1021, column: 26, scope: !2761)
!2804 = !DILocation(line: 171, column: 45, scope: !1097, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 1022, column: 3, scope: !2761)
!2806 = !DILocation(line: 172, column: 33, scope: !1097, inlinedAt: !2805)
!2807 = !DILocation(line: 172, column: 57, scope: !1097, inlinedAt: !2805)
!2808 = !DILocation(line: 176, column: 6, scope: !1097, inlinedAt: !2805)
!2809 = !DILocation(line: 176, column: 12, scope: !1097, inlinedAt: !2805)
!2810 = !DILocation(line: 177, column: 8, scope: !1113, inlinedAt: !2805)
!2811 = !DILocation(line: 177, column: 23, scope: !1115, inlinedAt: !2805)
!2812 = !DILocation(line: 177, column: 19, scope: !1113, inlinedAt: !2805)
!2813 = !DILocation(line: 178, column: 5, scope: !1113, inlinedAt: !2805)
!2814 = !DILocation(line: 179, column: 6, scope: !1097, inlinedAt: !2805)
!2815 = !DILocation(line: 179, column: 17, scope: !1097, inlinedAt: !2805)
!2816 = !DILocation(line: 180, column: 6, scope: !1097, inlinedAt: !2805)
!2817 = !DILocation(line: 180, column: 18, scope: !1097, inlinedAt: !2805)
!2818 = !DILocation(line: 1023, column: 10, scope: !2761)
!2819 = !DILocation(line: 1024, column: 1, scope: !2761)
!2820 = !DILocation(line: 1023, column: 3, scope: !2761)
!2821 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2822, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!50, !6, !6, !6}
!2824 = !{!2825, !2826, !2827}
!2825 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2821, file: !100, line: 1027, type: !6)
!2826 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2821, file: !100, line: 1027, type: !6)
!2827 = !DILocalVariable(name: "arg", arg: 3, scope: !2821, file: !100, line: 1028, type: !6)
!2828 = !DILocation(line: 1027, column: 30, scope: !2821)
!2829 = !DILocation(line: 1027, column: 54, scope: !2821)
!2830 = !DILocation(line: 1028, column: 30, scope: !2821)
!2831 = !DILocation(line: 1009, column: 24, scope: !2748, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 1030, column: 10, scope: !2821)
!2833 = !DILocation(line: 1009, column: 39, scope: !2748, inlinedAt: !2832)
!2834 = !DILocation(line: 1010, column: 32, scope: !2748, inlinedAt: !2832)
!2835 = !DILocation(line: 1010, column: 57, scope: !2748, inlinedAt: !2832)
!2836 = !DILocation(line: 1017, column: 28, scope: !2761, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 1012, column: 10, scope: !2748, inlinedAt: !2832)
!2838 = !DILocation(line: 1017, column: 43, scope: !2761, inlinedAt: !2837)
!2839 = !DILocation(line: 1018, column: 36, scope: !2761, inlinedAt: !2837)
!2840 = !DILocation(line: 1019, column: 36, scope: !2761, inlinedAt: !2837)
!2841 = !DILocation(line: 1019, column: 48, scope: !2761, inlinedAt: !2837)
!2842 = !DILocation(line: 1021, column: 3, scope: !2761, inlinedAt: !2837)
!2843 = !DILocation(line: 1021, column: 30, scope: !2761, inlinedAt: !2837)
!2844 = !DILocation(line: 1021, column: 26, scope: !2761, inlinedAt: !2837)
!2845 = !DILocation(line: 171, column: 45, scope: !1097, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 1022, column: 3, scope: !2761, inlinedAt: !2837)
!2847 = !DILocation(line: 172, column: 33, scope: !1097, inlinedAt: !2846)
!2848 = !DILocation(line: 172, column: 57, scope: !1097, inlinedAt: !2846)
!2849 = !DILocation(line: 176, column: 6, scope: !1097, inlinedAt: !2846)
!2850 = !DILocation(line: 176, column: 12, scope: !1097, inlinedAt: !2846)
!2851 = !DILocation(line: 177, column: 8, scope: !1113, inlinedAt: !2846)
!2852 = !DILocation(line: 177, column: 23, scope: !1115, inlinedAt: !2846)
!2853 = !DILocation(line: 177, column: 19, scope: !1113, inlinedAt: !2846)
!2854 = !DILocation(line: 178, column: 5, scope: !1113, inlinedAt: !2846)
!2855 = !DILocation(line: 179, column: 6, scope: !1097, inlinedAt: !2846)
!2856 = !DILocation(line: 179, column: 17, scope: !1097, inlinedAt: !2846)
!2857 = !DILocation(line: 180, column: 6, scope: !1097, inlinedAt: !2846)
!2858 = !DILocation(line: 180, column: 18, scope: !1097, inlinedAt: !2846)
!2859 = !DILocation(line: 1023, column: 10, scope: !2761, inlinedAt: !2837)
!2860 = !DILocation(line: 1024, column: 1, scope: !2761, inlinedAt: !2837)
!2861 = !DILocation(line: 1030, column: 3, scope: !2821)
!2862 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2863, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!50, !6, !6, !6, !94}
!2865 = !{!2866, !2867, !2868, !2869}
!2866 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2862, file: !100, line: 1034, type: !6)
!2867 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2862, file: !100, line: 1034, type: !6)
!2868 = !DILocalVariable(name: "arg", arg: 3, scope: !2862, file: !100, line: 1035, type: !6)
!2869 = !DILocalVariable(name: "argsize", arg: 4, scope: !2862, file: !100, line: 1035, type: !94)
!2870 = !DILocation(line: 1034, column: 34, scope: !2862)
!2871 = !DILocation(line: 1034, column: 58, scope: !2862)
!2872 = !DILocation(line: 1035, column: 34, scope: !2862)
!2873 = !DILocation(line: 1035, column: 46, scope: !2862)
!2874 = !DILocation(line: 1017, column: 28, scope: !2761, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 1037, column: 10, scope: !2862)
!2876 = !DILocation(line: 1017, column: 43, scope: !2761, inlinedAt: !2875)
!2877 = !DILocation(line: 1018, column: 36, scope: !2761, inlinedAt: !2875)
!2878 = !DILocation(line: 1019, column: 36, scope: !2761, inlinedAt: !2875)
!2879 = !DILocation(line: 1019, column: 48, scope: !2761, inlinedAt: !2875)
!2880 = !DILocation(line: 1021, column: 3, scope: !2761, inlinedAt: !2875)
!2881 = !DILocation(line: 1021, column: 30, scope: !2761, inlinedAt: !2875)
!2882 = !DILocation(line: 1021, column: 26, scope: !2761, inlinedAt: !2875)
!2883 = !DILocation(line: 171, column: 45, scope: !1097, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 1022, column: 3, scope: !2761, inlinedAt: !2875)
!2885 = !DILocation(line: 172, column: 33, scope: !1097, inlinedAt: !2884)
!2886 = !DILocation(line: 172, column: 57, scope: !1097, inlinedAt: !2884)
!2887 = !DILocation(line: 176, column: 6, scope: !1097, inlinedAt: !2884)
!2888 = !DILocation(line: 176, column: 12, scope: !1097, inlinedAt: !2884)
!2889 = !DILocation(line: 177, column: 8, scope: !1113, inlinedAt: !2884)
!2890 = !DILocation(line: 177, column: 23, scope: !1115, inlinedAt: !2884)
!2891 = !DILocation(line: 177, column: 19, scope: !1113, inlinedAt: !2884)
!2892 = !DILocation(line: 178, column: 5, scope: !1113, inlinedAt: !2884)
!2893 = !DILocation(line: 179, column: 6, scope: !1097, inlinedAt: !2884)
!2894 = !DILocation(line: 179, column: 17, scope: !1097, inlinedAt: !2884)
!2895 = !DILocation(line: 180, column: 6, scope: !1097, inlinedAt: !2884)
!2896 = !DILocation(line: 180, column: 18, scope: !1097, inlinedAt: !2884)
!2897 = !DILocation(line: 1023, column: 10, scope: !2761, inlinedAt: !2875)
!2898 = !DILocation(line: 1024, column: 1, scope: !2761, inlinedAt: !2875)
!2899 = !DILocation(line: 1037, column: 3, scope: !2862)
!2900 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2901, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!6, !25, !6, !94}
!2903 = !{!2904, !2905, !2906}
!2904 = !DILocalVariable(name: "n", arg: 1, scope: !2900, file: !100, line: 1052, type: !25)
!2905 = !DILocalVariable(name: "arg", arg: 2, scope: !2900, file: !100, line: 1052, type: !6)
!2906 = !DILocalVariable(name: "argsize", arg: 3, scope: !2900, file: !100, line: 1052, type: !94)
!2907 = !DILocation(line: 1052, column: 18, scope: !2900)
!2908 = !DILocation(line: 1052, column: 33, scope: !2900)
!2909 = !DILocation(line: 1052, column: 45, scope: !2900)
!2910 = !DILocation(line: 1054, column: 10, scope: !2900)
!2911 = !DILocation(line: 1054, column: 3, scope: !2900)
!2912 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2913, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2915)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!6, !6, !94}
!2915 = !{!2916, !2917}
!2916 = !DILocalVariable(name: "arg", arg: 1, scope: !2912, file: !100, line: 1058, type: !6)
!2917 = !DILocalVariable(name: "argsize", arg: 2, scope: !2912, file: !100, line: 1058, type: !94)
!2918 = !DILocation(line: 1058, column: 24, scope: !2912)
!2919 = !DILocation(line: 1058, column: 36, scope: !2912)
!2920 = !DILocation(line: 1052, column: 18, scope: !2900, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 1060, column: 10, scope: !2912)
!2922 = !DILocation(line: 1052, column: 33, scope: !2900, inlinedAt: !2921)
!2923 = !DILocation(line: 1052, column: 45, scope: !2900, inlinedAt: !2921)
!2924 = !DILocation(line: 1054, column: 10, scope: !2900, inlinedAt: !2921)
!2925 = !DILocation(line: 1060, column: 3, scope: !2912)
!2926 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2927, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!6, !25, !6}
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "n", arg: 1, scope: !2926, file: !100, line: 1064, type: !25)
!2931 = !DILocalVariable(name: "arg", arg: 2, scope: !2926, file: !100, line: 1064, type: !6)
!2932 = !DILocation(line: 1064, column: 14, scope: !2926)
!2933 = !DILocation(line: 1064, column: 29, scope: !2926)
!2934 = !DILocation(line: 1052, column: 18, scope: !2900, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 1066, column: 10, scope: !2926)
!2936 = !DILocation(line: 1052, column: 33, scope: !2900, inlinedAt: !2935)
!2937 = !DILocation(line: 1052, column: 45, scope: !2900, inlinedAt: !2935)
!2938 = !DILocation(line: 1054, column: 10, scope: !2900, inlinedAt: !2935)
!2939 = !DILocation(line: 1066, column: 3, scope: !2926)
!2940 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2941, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!6, !6}
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "arg", arg: 1, scope: !2940, file: !100, line: 1070, type: !6)
!2945 = !DILocation(line: 1070, column: 20, scope: !2940)
!2946 = !DILocation(line: 1064, column: 14, scope: !2926, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 1072, column: 10, scope: !2940)
!2948 = !DILocation(line: 1064, column: 29, scope: !2926, inlinedAt: !2947)
!2949 = !DILocation(line: 1052, column: 18, scope: !2900, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 1066, column: 10, scope: !2926, inlinedAt: !2947)
!2951 = !DILocation(line: 1052, column: 33, scope: !2900, inlinedAt: !2950)
!2952 = !DILocation(line: 1052, column: 45, scope: !2900, inlinedAt: !2950)
!2953 = !DILocation(line: 1054, column: 10, scope: !2900, inlinedAt: !2950)
!2954 = !DILocation(line: 1072, column: 3, scope: !2940)
!2955 = !DILocation(line: 56, column: 14, scope: !544)
!2956 = !DILocation(line: 56, column: 30, scope: !544)
!2957 = !DILocation(line: 56, column: 42, scope: !544)
!2958 = !DILocation(line: 64, column: 3, scope: !544)
!2959 = !DILocation(line: 66, column: 24, scope: !552)
!2960 = !DILocation(line: 66, column: 15, scope: !552)
!2961 = !DILocation(line: 68, column: 13, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !552, file: !543, line: 68, column: 11)
!2963 = !DILocation(line: 68, column: 11, scope: !552)
!2964 = !DILocation(line: 70, column: 16, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !543, line: 70, column: 16)
!2966 = !DILocation(line: 70, column: 16, scope: !2962)
!2967 = distinct !{!2967, !2968, !2969}
!2968 = !DILocation(line: 64, column: 3, scope: !554)
!2969 = !DILocation(line: 76, column: 5, scope: !554)
!2970 = !DILocation(line: 72, column: 22, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2965, file: !543, line: 72, column: 16)
!2972 = !DILocation(line: 72, column: 54, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !2971, file: !543, discriminator: 1)
!2974 = !DILocation(line: 72, column: 32, scope: !2971)
!2975 = !DILocation(line: 77, column: 1, scope: !544)
!2976 = distinct !DISubprogram(name: "version_etc_arn", scope: !566, file: !566, line: 62, type: !2977, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3030)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null, !2979, !6, !6, !6, !3029, !94}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !922, line: 49, baseType: !2981)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2982, line: 241, size: 1728, elements: !2983)
!2982 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2983 = !{!2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !3004, !3005, !3006, !3007, !3009, !3010, !3012, !3014, !3017, !3019, !3020, !3021, !3022, !3023, !3024, !3025}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2981, file: !2982, line: 242, baseType: !25, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2981, file: !2982, line: 247, baseType: !50, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2981, file: !2982, line: 248, baseType: !50, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2981, file: !2982, line: 249, baseType: !50, size: 64, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2981, file: !2982, line: 250, baseType: !50, size: 64, offset: 256)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2981, file: !2982, line: 251, baseType: !50, size: 64, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2981, file: !2982, line: 252, baseType: !50, size: 64, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2981, file: !2982, line: 253, baseType: !50, size: 64, offset: 448)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2981, file: !2982, line: 254, baseType: !50, size: 64, offset: 512)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2981, file: !2982, line: 256, baseType: !50, size: 64, offset: 576)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2981, file: !2982, line: 257, baseType: !50, size: 64, offset: 640)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2981, file: !2982, line: 258, baseType: !50, size: 64, offset: 704)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2981, file: !2982, line: 260, baseType: !2997, size: 64, offset: 768)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2982, line: 156, size: 192, elements: !2999)
!2999 = !{!3000, !3001, !3003}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2998, file: !2982, line: 157, baseType: !2997, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2998, file: !2982, line: 158, baseType: !3002, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2998, file: !2982, line: 162, baseType: !25, size: 32, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2981, file: !2982, line: 262, baseType: !3002, size: 64, offset: 832)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2981, file: !2982, line: 264, baseType: !25, size: 32, offset: 896)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2981, file: !2982, line: 268, baseType: !25, size: 32, offset: 928)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2981, file: !2982, line: 270, baseType: !3008, size: 64, offset: 960)
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !558, line: 140, baseType: !559)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2981, file: !2982, line: 274, baseType: !93, size: 16, offset: 1024)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2981, file: !2982, line: 275, baseType: !3011, size: 8, offset: 1040)
!3011 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2981, file: !2982, line: 276, baseType: !3013, size: 8, offset: 1048)
!3013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !933)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2981, file: !2982, line: 280, baseType: !3015, size: 64, offset: 1088)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2982, line: 150, baseType: null)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2981, file: !2982, line: 289, baseType: !3018, size: 64, offset: 1152)
!3018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !558, line: 141, baseType: !559)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2981, file: !2982, line: 297, baseType: !49, size: 64, offset: 1216)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2981, file: !2982, line: 298, baseType: !49, size: 64, offset: 1280)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2981, file: !2982, line: 299, baseType: !49, size: 64, offset: 1344)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2981, file: !2982, line: 300, baseType: !49, size: 64, offset: 1408)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2981, file: !2982, line: 302, baseType: !94, size: 64, offset: 1472)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2981, file: !2982, line: 303, baseType: !25, size: 32, offset: 1536)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2981, file: !2982, line: 305, baseType: !3026, size: 160, offset: 1568)
!3026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !3027)
!3027 = !{!3028}
!3028 = !DISubrange(count: 20)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3036}
!3031 = !DILocalVariable(name: "stream", arg: 1, scope: !2976, file: !566, line: 62, type: !2979)
!3032 = !DILocalVariable(name: "command_name", arg: 2, scope: !2976, file: !566, line: 63, type: !6)
!3033 = !DILocalVariable(name: "package", arg: 3, scope: !2976, file: !566, line: 63, type: !6)
!3034 = !DILocalVariable(name: "version", arg: 4, scope: !2976, file: !566, line: 64, type: !6)
!3035 = !DILocalVariable(name: "authors", arg: 5, scope: !2976, file: !566, line: 65, type: !3029)
!3036 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2976, file: !566, line: 65, type: !94)
!3037 = !DILocation(line: 62, column: 24, scope: !2976)
!3038 = !DILocation(line: 63, column: 30, scope: !2976)
!3039 = !DILocation(line: 63, column: 56, scope: !2976)
!3040 = !DILocation(line: 64, column: 30, scope: !2976)
!3041 = !DILocation(line: 65, column: 39, scope: !2976)
!3042 = !DILocation(line: 65, column: 55, scope: !2976)
!3043 = !DILocation(line: 67, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2976, file: !566, line: 67, column: 7)
!3045 = !DILocation(line: 67, column: 7, scope: !2976)
!3046 = !DILocation(line: 68, column: 5, scope: !3044)
!3047 = !DILocation(line: 70, column: 5, scope: !3044)
!3048 = !DILocation(line: 84, column: 3, scope: !2976)
!3049 = !DILocation(line: 84, column: 3, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !2976, file: !566, discriminator: 1)
!3051 = !DILocation(line: 86, column: 3, scope: !2976)
!3052 = !DILocation(line: 86, column: 3, scope: !3050)
!3053 = !DILocation(line: 95, column: 3, scope: !2976)
!3054 = !DILocation(line: 99, column: 7, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2976, file: !566, line: 96, column: 5)
!3056 = !DILocation(line: 102, column: 7, scope: !3055)
!3057 = !DILocation(line: 102, column: 7, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !3055, file: !566, discriminator: 1)
!3059 = !DILocation(line: 103, column: 7, scope: !3055)
!3060 = !DILocation(line: 106, column: 7, scope: !3055)
!3061 = !DILocation(line: 106, column: 7, scope: !3058)
!3062 = !DILocation(line: 107, column: 7, scope: !3055)
!3063 = !DILocation(line: 110, column: 7, scope: !3055)
!3064 = !DILocation(line: 110, column: 7, scope: !3058)
!3065 = !DILocation(line: 112, column: 7, scope: !3055)
!3066 = !DILocation(line: 117, column: 7, scope: !3055)
!3067 = !DILocation(line: 117, column: 7, scope: !3058)
!3068 = !DILocation(line: 119, column: 7, scope: !3055)
!3069 = !DILocation(line: 124, column: 7, scope: !3055)
!3070 = !DILocation(line: 124, column: 7, scope: !3058)
!3071 = !DILocation(line: 126, column: 7, scope: !3055)
!3072 = !DILocation(line: 131, column: 7, scope: !3055)
!3073 = !DILocation(line: 131, column: 7, scope: !3058)
!3074 = !DILocation(line: 134, column: 7, scope: !3055)
!3075 = !DILocation(line: 139, column: 7, scope: !3055)
!3076 = !DILocation(line: 139, column: 7, scope: !3058)
!3077 = !DILocation(line: 142, column: 7, scope: !3055)
!3078 = !DILocation(line: 147, column: 7, scope: !3055)
!3079 = !DILocation(line: 147, column: 7, scope: !3058)
!3080 = !DILocation(line: 151, column: 7, scope: !3055)
!3081 = !DILocation(line: 156, column: 7, scope: !3055)
!3082 = !DILocation(line: 156, column: 7, scope: !3058)
!3083 = !DILocation(line: 160, column: 7, scope: !3055)
!3084 = !DILocation(line: 167, column: 7, scope: !3055)
!3085 = !DILocation(line: 167, column: 7, scope: !3058)
!3086 = !DILocation(line: 171, column: 7, scope: !3055)
!3087 = !DILocation(line: 173, column: 1, scope: !2976)
!3088 = distinct !DISubprogram(name: "version_etc_ar", scope: !566, file: !566, line: 180, type: !3089, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{null, !2979, !6, !6, !6, !3029}
!3091 = !{!3092, !3093, !3094, !3095, !3096, !3097}
!3092 = !DILocalVariable(name: "stream", arg: 1, scope: !3088, file: !566, line: 180, type: !2979)
!3093 = !DILocalVariable(name: "command_name", arg: 2, scope: !3088, file: !566, line: 181, type: !6)
!3094 = !DILocalVariable(name: "package", arg: 3, scope: !3088, file: !566, line: 181, type: !6)
!3095 = !DILocalVariable(name: "version", arg: 4, scope: !3088, file: !566, line: 182, type: !6)
!3096 = !DILocalVariable(name: "authors", arg: 5, scope: !3088, file: !566, line: 182, type: !3029)
!3097 = !DILocalVariable(name: "n_authors", scope: !3088, file: !566, line: 184, type: !94)
!3098 = !DILocation(line: 180, column: 23, scope: !3088)
!3099 = !DILocation(line: 181, column: 29, scope: !3088)
!3100 = !DILocation(line: 181, column: 55, scope: !3088)
!3101 = !DILocation(line: 182, column: 29, scope: !3088)
!3102 = !DILocation(line: 182, column: 59, scope: !3088)
!3103 = !DILocation(line: 184, column: 10, scope: !3088)
!3104 = !DILocation(line: 186, column: 8, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3088, file: !566, line: 186, column: 3)
!3106 = !DILocation(line: 186, column: 23, scope: !3107)
!3107 = !DILexicalBlockFile(scope: !3108, file: !566, discriminator: 1)
!3108 = distinct !DILexicalBlock(scope: !3105, file: !566, line: 186, column: 3)
!3109 = !DILocation(line: 186, column: 3, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !3105, file: !566, discriminator: 1)
!3111 = !DILocation(line: 186, column: 52, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !3108, file: !566, discriminator: 3)
!3113 = distinct !{!3113, !3114, !3115}
!3114 = !DILocation(line: 186, column: 3, scope: !3105)
!3115 = !DILocation(line: 187, column: 5, scope: !3105)
!3116 = !DILocation(line: 188, column: 3, scope: !3088)
!3117 = !DILocation(line: 189, column: 1, scope: !3088)
!3118 = distinct !DISubprogram(name: "version_etc_va", scope: !566, file: !566, line: 196, type: !3119, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3128)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !2979, !6, !6, !6, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !563, line: 189, size: 192, elements: !3123)
!3123 = !{!3124, !3125, !3126, !3127}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3122, file: !563, line: 189, baseType: !113, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3122, file: !563, line: 189, baseType: !113, size: 32, offset: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3122, file: !563, line: 189, baseType: !49, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3122, file: !563, line: 189, baseType: !49, size: 64, offset: 128)
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134, !3135}
!3129 = !DILocalVariable(name: "stream", arg: 1, scope: !3118, file: !566, line: 196, type: !2979)
!3130 = !DILocalVariable(name: "command_name", arg: 2, scope: !3118, file: !566, line: 197, type: !6)
!3131 = !DILocalVariable(name: "package", arg: 3, scope: !3118, file: !566, line: 197, type: !6)
!3132 = !DILocalVariable(name: "version", arg: 4, scope: !3118, file: !566, line: 198, type: !6)
!3133 = !DILocalVariable(name: "authors", arg: 5, scope: !3118, file: !566, line: 198, type: !3121)
!3134 = !DILocalVariable(name: "n_authors", scope: !3118, file: !566, line: 200, type: !94)
!3135 = !DILocalVariable(name: "authtab", scope: !3118, file: !566, line: 201, type: !3136)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!3137 = !DILocation(line: 196, column: 23, scope: !3118)
!3138 = !DILocation(line: 197, column: 29, scope: !3118)
!3139 = !DILocation(line: 197, column: 55, scope: !3118)
!3140 = !DILocation(line: 198, column: 29, scope: !3118)
!3141 = !DILocation(line: 198, column: 46, scope: !3118)
!3142 = !DILocation(line: 201, column: 3, scope: !3118)
!3143 = !DILocation(line: 201, column: 15, scope: !3118)
!3144 = !DILocation(line: 200, column: 10, scope: !3118)
!3145 = !DILocation(line: 205, column: 35, scope: !3146)
!3146 = !DILexicalBlockFile(scope: !3147, file: !566, discriminator: 1)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !566, line: 203, column: 3)
!3148 = distinct !DILexicalBlock(scope: !3118, file: !566, line: 203, column: 3)
!3149 = !DILocation(line: 205, column: 35, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !3147, file: !566, discriminator: 2)
!3151 = !DILocation(line: 205, column: 35, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !3147, file: !566, discriminator: 3)
!3153 = !DILocation(line: 205, column: 35, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !3147, file: !566, discriminator: 4)
!3155 = !DILocation(line: 205, column: 14, scope: !3154)
!3156 = !DILocation(line: 205, column: 33, scope: !3154)
!3157 = !DILocation(line: 205, column: 67, scope: !3154)
!3158 = !DILocation(line: 203, column: 3, scope: !3159)
!3159 = !DILexicalBlockFile(scope: !3148, file: !566, discriminator: 1)
!3160 = !DILocation(line: 208, column: 3, scope: !3118)
!3161 = !DILocation(line: 210, column: 1, scope: !3118)
!3162 = distinct !DISubprogram(name: "version_etc", scope: !566, file: !566, line: 227, type: !3163, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{null, !2979, !6, !6, !6, null}
!3165 = !{!3166, !3167, !3168, !3169, !3170}
!3166 = !DILocalVariable(name: "stream", arg: 1, scope: !3162, file: !566, line: 227, type: !2979)
!3167 = !DILocalVariable(name: "command_name", arg: 2, scope: !3162, file: !566, line: 228, type: !6)
!3168 = !DILocalVariable(name: "package", arg: 3, scope: !3162, file: !566, line: 228, type: !6)
!3169 = !DILocalVariable(name: "version", arg: 4, scope: !3162, file: !566, line: 229, type: !6)
!3170 = !DILocalVariable(name: "authors", scope: !3162, file: !566, line: 231, type: !3171)
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !922, line: 80, baseType: !3172)
!3172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !924, line: 50, baseType: !3173)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !563, line: 231, baseType: !3174)
!3174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3122, size: 192, elements: !933)
!3175 = !DILocation(line: 227, column: 20, scope: !3162)
!3176 = !DILocation(line: 228, column: 26, scope: !3162)
!3177 = !DILocation(line: 228, column: 52, scope: !3162)
!3178 = !DILocation(line: 229, column: 26, scope: !3162)
!3179 = !DILocation(line: 231, column: 3, scope: !3162)
!3180 = !DILocation(line: 231, column: 11, scope: !3162)
!3181 = !DILocation(line: 233, column: 3, scope: !3162)
!3182 = !DILocation(line: 234, column: 3, scope: !3162)
!3183 = !DILocation(line: 235, column: 3, scope: !3162)
!3184 = !DILocation(line: 236, column: 1, scope: !3162)
!3185 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !566, file: !566, line: 239, type: !829, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !4)
!3186 = !DILocation(line: 245, column: 3, scope: !3185)
!3187 = !DILocation(line: 245, column: 3, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !3185, file: !566, discriminator: 1)
!3189 = !DILocation(line: 251, column: 3, scope: !3185)
!3190 = !DILocation(line: 251, column: 3, scope: !3188)
!3191 = !DILocation(line: 256, column: 3, scope: !3185)
!3192 = !DILocation(line: 256, column: 3, scope: !3188)
!3193 = !DILocation(line: 258, column: 1, scope: !3185)
!3194 = distinct !DISubprogram(name: "xnmalloc", scope: !574, file: !574, line: 105, type: !3195, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!49, !94, !94}
!3197 = !{!3198, !3199}
!3198 = !DILocalVariable(name: "n", arg: 1, scope: !3194, file: !574, line: 105, type: !94)
!3199 = !DILocalVariable(name: "s", arg: 2, scope: !3194, file: !574, line: 105, type: !94)
!3200 = !DILocation(line: 105, column: 18, scope: !3194)
!3201 = !DILocation(line: 105, column: 28, scope: !3194)
!3202 = !DILocation(line: 107, column: 7, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3194, file: !574, line: 107, column: 7)
!3204 = !DILocation(line: 107, column: 7, scope: !3194)
!3205 = !DILocation(line: 108, column: 5, scope: !3203)
!3206 = !DILocation(line: 109, column: 21, scope: !3194)
!3207 = !DILocalVariable(name: "n", arg: 1, scope: !3208, file: !3209, line: 39, type: !94)
!3208 = distinct !DISubprogram(name: "xmalloc", scope: !3209, file: !3209, line: 39, type: !3210, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3212)
!3209 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!49, !94}
!3212 = !{!3207, !3213}
!3213 = !DILocalVariable(name: "p", scope: !3208, file: !3209, line: 41, type: !49)
!3214 = !DILocation(line: 39, column: 17, scope: !3208, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 109, column: 10, scope: !3194)
!3216 = !DILocation(line: 41, column: 13, scope: !3208, inlinedAt: !3215)
!3217 = !DILocation(line: 41, column: 9, scope: !3208, inlinedAt: !3215)
!3218 = !DILocation(line: 42, column: 8, scope: !3219, inlinedAt: !3215)
!3219 = distinct !DILexicalBlock(scope: !3208, file: !3209, line: 42, column: 7)
!3220 = !DILocation(line: 42, column: 15, scope: !3221, inlinedAt: !3215)
!3221 = !DILexicalBlockFile(scope: !3219, file: !3209, discriminator: 1)
!3222 = !DILocation(line: 42, column: 10, scope: !3219, inlinedAt: !3215)
!3223 = !DILocation(line: 43, column: 5, scope: !3219, inlinedAt: !3215)
!3224 = !DILocation(line: 109, column: 3, scope: !3194)
!3225 = !DILocation(line: 39, column: 17, scope: !3208)
!3226 = !DILocation(line: 41, column: 13, scope: !3208)
!3227 = !DILocation(line: 41, column: 9, scope: !3208)
!3228 = !DILocation(line: 42, column: 8, scope: !3219)
!3229 = !DILocation(line: 42, column: 15, scope: !3221)
!3230 = !DILocation(line: 42, column: 10, scope: !3219)
!3231 = !DILocation(line: 43, column: 5, scope: !3219)
!3232 = !DILocation(line: 44, column: 3, scope: !3208)
!3233 = distinct !DISubprogram(name: "xnrealloc", scope: !574, file: !574, line: 118, type: !3234, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3236)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!49, !49, !94, !94}
!3236 = !{!3237, !3238, !3239}
!3237 = !DILocalVariable(name: "p", arg: 1, scope: !3233, file: !574, line: 118, type: !49)
!3238 = !DILocalVariable(name: "n", arg: 2, scope: !3233, file: !574, line: 118, type: !94)
!3239 = !DILocalVariable(name: "s", arg: 3, scope: !3233, file: !574, line: 118, type: !94)
!3240 = !DILocation(line: 118, column: 18, scope: !3233)
!3241 = !DILocation(line: 118, column: 28, scope: !3233)
!3242 = !DILocation(line: 118, column: 38, scope: !3233)
!3243 = !DILocation(line: 120, column: 7, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3233, file: !574, line: 120, column: 7)
!3245 = !DILocation(line: 120, column: 7, scope: !3233)
!3246 = !DILocation(line: 121, column: 5, scope: !3244)
!3247 = !DILocation(line: 122, column: 25, scope: !3233)
!3248 = !DILocalVariable(name: "p", arg: 1, scope: !3249, file: !3209, line: 51, type: !49)
!3249 = distinct !DISubprogram(name: "xrealloc", scope: !3209, file: !3209, line: 51, type: !3250, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!49, !49, !94}
!3252 = !{!3248, !3253}
!3253 = !DILocalVariable(name: "n", arg: 2, scope: !3249, file: !3209, line: 51, type: !94)
!3254 = !DILocation(line: 51, column: 17, scope: !3249, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 122, column: 10, scope: !3233)
!3256 = !DILocation(line: 51, column: 27, scope: !3249, inlinedAt: !3255)
!3257 = !DILocation(line: 53, column: 8, scope: !3258, inlinedAt: !3255)
!3258 = distinct !DILexicalBlock(scope: !3249, file: !3209, line: 53, column: 7)
!3259 = !DILocation(line: 53, column: 13, scope: !3260, inlinedAt: !3255)
!3260 = !DILexicalBlockFile(scope: !3258, file: !3209, discriminator: 1)
!3261 = !DILocation(line: 53, column: 10, scope: !3258, inlinedAt: !3255)
!3262 = !DILocation(line: 57, column: 7, scope: !3263, inlinedAt: !3255)
!3263 = distinct !DILexicalBlock(scope: !3258, file: !3209, line: 54, column: 5)
!3264 = !DILocation(line: 58, column: 7, scope: !3263, inlinedAt: !3255)
!3265 = !DILocation(line: 61, column: 7, scope: !3249, inlinedAt: !3255)
!3266 = !DILocation(line: 62, column: 8, scope: !3267, inlinedAt: !3255)
!3267 = distinct !DILexicalBlock(scope: !3249, file: !3209, line: 62, column: 7)
!3268 = !DILocation(line: 62, column: 13, scope: !3269, inlinedAt: !3255)
!3269 = !DILexicalBlockFile(scope: !3267, file: !3209, discriminator: 1)
!3270 = !DILocation(line: 62, column: 10, scope: !3267, inlinedAt: !3255)
!3271 = !DILocation(line: 63, column: 5, scope: !3267, inlinedAt: !3255)
!3272 = !DILocation(line: 122, column: 3, scope: !3233)
!3273 = !DILocation(line: 51, column: 17, scope: !3249)
!3274 = !DILocation(line: 51, column: 27, scope: !3249)
!3275 = !DILocation(line: 53, column: 8, scope: !3258)
!3276 = !DILocation(line: 53, column: 13, scope: !3260)
!3277 = !DILocation(line: 53, column: 10, scope: !3258)
!3278 = !DILocation(line: 57, column: 7, scope: !3263)
!3279 = !DILocation(line: 58, column: 7, scope: !3263)
!3280 = !DILocation(line: 61, column: 7, scope: !3249)
!3281 = !DILocation(line: 62, column: 8, scope: !3267)
!3282 = !DILocation(line: 62, column: 13, scope: !3269)
!3283 = !DILocation(line: 62, column: 10, scope: !3267)
!3284 = !DILocation(line: 63, column: 5, scope: !3267)
!3285 = !DILocation(line: 65, column: 1, scope: !3249)
!3286 = !DILocation(line: 180, column: 19, scope: !575)
!3287 = !DILocation(line: 180, column: 30, scope: !575)
!3288 = !DILocation(line: 180, column: 41, scope: !575)
!3289 = !DILocation(line: 182, column: 14, scope: !575)
!3290 = !DILocation(line: 182, column: 10, scope: !575)
!3291 = !DILocation(line: 184, column: 9, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !575, file: !574, line: 184, column: 7)
!3293 = !DILocation(line: 184, column: 7, scope: !575)
!3294 = !DILocation(line: 186, column: 13, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !574, line: 186, column: 11)
!3296 = distinct !DILexicalBlock(scope: !3292, file: !574, line: 185, column: 5)
!3297 = !DILocation(line: 186, column: 11, scope: !3296)
!3298 = !DILocation(line: 194, column: 30, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3295, file: !574, line: 187, column: 9)
!3300 = !DILocation(line: 195, column: 16, scope: !3299)
!3301 = !DILocation(line: 195, column: 13, scope: !3299)
!3302 = !DILocation(line: 196, column: 9, scope: !3299)
!3303 = !DILocation(line: 204, column: 69, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !574, line: 204, column: 11)
!3305 = distinct !DILexicalBlock(scope: !3292, file: !574, line: 199, column: 5)
!3306 = !DILocation(line: 205, column: 11, scope: !3304)
!3307 = !DILocation(line: 204, column: 11, scope: !3305)
!3308 = !DILocation(line: 206, column: 9, scope: !3304)
!3309 = !DILocation(line: 210, column: 7, scope: !575)
!3310 = !DILocation(line: 211, column: 25, scope: !575)
!3311 = !DILocation(line: 51, column: 17, scope: !3249, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 211, column: 10, scope: !575)
!3313 = !DILocation(line: 51, column: 27, scope: !3249, inlinedAt: !3312)
!3314 = !DILocation(line: 53, column: 10, scope: !3258, inlinedAt: !3312)
!3315 = !DILocation(line: 207, column: 14, scope: !3305)
!3316 = !DILocation(line: 207, column: 18, scope: !3305)
!3317 = !DILocation(line: 207, column: 9, scope: !3305)
!3318 = !DILocation(line: 53, column: 8, scope: !3258, inlinedAt: !3312)
!3319 = !DILocation(line: 57, column: 7, scope: !3263, inlinedAt: !3312)
!3320 = !DILocation(line: 58, column: 7, scope: !3263, inlinedAt: !3312)
!3321 = !DILocation(line: 61, column: 7, scope: !3249, inlinedAt: !3312)
!3322 = !DILocation(line: 62, column: 8, scope: !3267, inlinedAt: !3312)
!3323 = !DILocation(line: 62, column: 13, scope: !3269, inlinedAt: !3312)
!3324 = !DILocation(line: 62, column: 10, scope: !3267, inlinedAt: !3312)
!3325 = !DILocation(line: 63, column: 5, scope: !3267, inlinedAt: !3312)
!3326 = !DILocation(line: 211, column: 3, scope: !575)
!3327 = distinct !DISubprogram(name: "xcharalloc", scope: !574, file: !574, line: 220, type: !2227, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3328)
!3328 = !{!3329}
!3329 = !DILocalVariable(name: "n", arg: 1, scope: !3327, file: !574, line: 220, type: !94)
!3330 = !DILocation(line: 220, column: 20, scope: !3327)
!3331 = !DILocation(line: 39, column: 17, scope: !3208, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 222, column: 10, scope: !3327)
!3333 = !DILocation(line: 41, column: 13, scope: !3208, inlinedAt: !3332)
!3334 = !DILocation(line: 41, column: 9, scope: !3208, inlinedAt: !3332)
!3335 = !DILocation(line: 42, column: 8, scope: !3219, inlinedAt: !3332)
!3336 = !DILocation(line: 42, column: 15, scope: !3221, inlinedAt: !3332)
!3337 = !DILocation(line: 42, column: 10, scope: !3219, inlinedAt: !3332)
!3338 = !DILocation(line: 43, column: 5, scope: !3219, inlinedAt: !3332)
!3339 = !DILocation(line: 222, column: 3, scope: !3327)
!3340 = distinct !DISubprogram(name: "x2realloc", scope: !3209, file: !3209, line: 74, type: !3341, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!49, !49, !578}
!3343 = !{!3344, !3345}
!3344 = !DILocalVariable(name: "p", arg: 1, scope: !3340, file: !3209, line: 74, type: !49)
!3345 = !DILocalVariable(name: "pn", arg: 2, scope: !3340, file: !3209, line: 74, type: !578)
!3346 = !DILocation(line: 74, column: 18, scope: !3340)
!3347 = !DILocation(line: 74, column: 29, scope: !3340)
!3348 = !DILocation(line: 180, column: 19, scope: !575, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 76, column: 10, scope: !3340)
!3350 = !DILocation(line: 180, column: 30, scope: !575, inlinedAt: !3349)
!3351 = !DILocation(line: 180, column: 41, scope: !575, inlinedAt: !3349)
!3352 = !DILocation(line: 182, column: 14, scope: !575, inlinedAt: !3349)
!3353 = !DILocation(line: 182, column: 10, scope: !575, inlinedAt: !3349)
!3354 = !DILocation(line: 184, column: 9, scope: !3292, inlinedAt: !3349)
!3355 = !DILocation(line: 184, column: 7, scope: !575, inlinedAt: !3349)
!3356 = !DILocation(line: 186, column: 13, scope: !3295, inlinedAt: !3349)
!3357 = !DILocation(line: 186, column: 11, scope: !3296, inlinedAt: !3349)
!3358 = !DILocation(line: 210, column: 7, scope: !575, inlinedAt: !3349)
!3359 = !DILocation(line: 51, column: 17, scope: !3249, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 211, column: 10, scope: !575, inlinedAt: !3349)
!3361 = !DILocation(line: 51, column: 27, scope: !3249, inlinedAt: !3360)
!3362 = !DILocation(line: 53, column: 10, scope: !3258, inlinedAt: !3360)
!3363 = !DILocation(line: 205, column: 11, scope: !3304, inlinedAt: !3349)
!3364 = !DILocation(line: 204, column: 11, scope: !3305, inlinedAt: !3349)
!3365 = !DILocation(line: 206, column: 9, scope: !3304, inlinedAt: !3349)
!3366 = !DILocation(line: 207, column: 14, scope: !3305, inlinedAt: !3349)
!3367 = !DILocation(line: 207, column: 18, scope: !3305, inlinedAt: !3349)
!3368 = !DILocation(line: 207, column: 9, scope: !3305, inlinedAt: !3349)
!3369 = !DILocation(line: 53, column: 8, scope: !3258, inlinedAt: !3360)
!3370 = !DILocation(line: 57, column: 7, scope: !3263, inlinedAt: !3360)
!3371 = !DILocation(line: 58, column: 7, scope: !3263, inlinedAt: !3360)
!3372 = !DILocation(line: 61, column: 7, scope: !3249, inlinedAt: !3360)
!3373 = !DILocation(line: 62, column: 8, scope: !3267, inlinedAt: !3360)
!3374 = !DILocation(line: 62, column: 13, scope: !3269, inlinedAt: !3360)
!3375 = !DILocation(line: 62, column: 10, scope: !3267, inlinedAt: !3360)
!3376 = !DILocation(line: 63, column: 5, scope: !3267, inlinedAt: !3360)
!3377 = !DILocation(line: 76, column: 3, scope: !3340)
!3378 = distinct !DISubprogram(name: "xzalloc", scope: !3209, file: !3209, line: 84, type: !3210, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3379)
!3379 = !{!3380}
!3380 = !DILocalVariable(name: "s", arg: 1, scope: !3378, file: !3209, line: 84, type: !94)
!3381 = !DILocation(line: 84, column: 17, scope: !3378)
!3382 = !DILocation(line: 39, column: 17, scope: !3208, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 86, column: 18, scope: !3378)
!3384 = !DILocation(line: 41, column: 13, scope: !3208, inlinedAt: !3383)
!3385 = !DILocation(line: 41, column: 9, scope: !3208, inlinedAt: !3383)
!3386 = !DILocation(line: 42, column: 8, scope: !3219, inlinedAt: !3383)
!3387 = !DILocation(line: 42, column: 15, scope: !3221, inlinedAt: !3383)
!3388 = !DILocation(line: 42, column: 10, scope: !3219, inlinedAt: !3383)
!3389 = !DILocation(line: 43, column: 5, scope: !3219, inlinedAt: !3383)
!3390 = !DILocation(line: 86, column: 10, scope: !3378)
!3391 = !DILocation(line: 86, column: 3, scope: !3378)
!3392 = distinct !DISubprogram(name: "xcalloc", scope: !3209, file: !3209, line: 93, type: !3195, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3393)
!3393 = !{!3394, !3395, !3396}
!3394 = !DILocalVariable(name: "n", arg: 1, scope: !3392, file: !3209, line: 93, type: !94)
!3395 = !DILocalVariable(name: "s", arg: 2, scope: !3392, file: !3209, line: 93, type: !94)
!3396 = !DILocalVariable(name: "p", scope: !3392, file: !3209, line: 95, type: !49)
!3397 = !DILocation(line: 93, column: 17, scope: !3392)
!3398 = !DILocation(line: 93, column: 27, scope: !3392)
!3399 = !DILocation(line: 100, column: 7, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3392, file: !3209, line: 100, column: 7)
!3401 = !DILocation(line: 101, column: 7, scope: !3400)
!3402 = !DILocation(line: 101, column: 18, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3400, file: !3209, discriminator: 1)
!3404 = !DILocation(line: 95, column: 9, scope: !3392)
!3405 = !DILocation(line: 101, column: 16, scope: !3403)
!3406 = !DILocation(line: 100, column: 7, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3392, file: !3209, discriminator: 1)
!3408 = !DILocation(line: 102, column: 5, scope: !3400)
!3409 = !DILocation(line: 103, column: 3, scope: !3392)
!3410 = distinct !DISubprogram(name: "xmemdup", scope: !3209, file: !3209, line: 111, type: !3411, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!49, !501, !94}
!3413 = !{!3414, !3415}
!3414 = !DILocalVariable(name: "p", arg: 1, scope: !3410, file: !3209, line: 111, type: !501)
!3415 = !DILocalVariable(name: "s", arg: 2, scope: !3410, file: !3209, line: 111, type: !94)
!3416 = !DILocation(line: 111, column: 22, scope: !3410)
!3417 = !DILocation(line: 111, column: 32, scope: !3410)
!3418 = !DILocation(line: 39, column: 17, scope: !3208, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 113, column: 18, scope: !3410)
!3420 = !DILocation(line: 41, column: 13, scope: !3208, inlinedAt: !3419)
!3421 = !DILocation(line: 41, column: 9, scope: !3208, inlinedAt: !3419)
!3422 = !DILocation(line: 42, column: 8, scope: !3219, inlinedAt: !3419)
!3423 = !DILocation(line: 42, column: 15, scope: !3221, inlinedAt: !3419)
!3424 = !DILocation(line: 42, column: 10, scope: !3219, inlinedAt: !3419)
!3425 = !DILocation(line: 43, column: 5, scope: !3219, inlinedAt: !3419)
!3426 = !DILocation(line: 113, column: 10, scope: !3410)
!3427 = !DILocation(line: 113, column: 3, scope: !3410)
!3428 = distinct !DISubprogram(name: "xstrdup", scope: !3209, file: !3209, line: 119, type: !2434, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !3429)
!3429 = !{!3430}
!3430 = !DILocalVariable(name: "string", arg: 1, scope: !3428, file: !3209, line: 119, type: !6)
!3431 = !DILocation(line: 119, column: 22, scope: !3428)
!3432 = !DILocation(line: 121, column: 27, scope: !3428)
!3433 = !DILocation(line: 121, column: 43, scope: !3428)
!3434 = !DILocation(line: 111, column: 22, scope: !3410, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 121, column: 10, scope: !3436)
!3436 = !DILexicalBlockFile(scope: !3428, file: !3209, discriminator: 1)
!3437 = !DILocation(line: 111, column: 32, scope: !3410, inlinedAt: !3435)
!3438 = !DILocation(line: 39, column: 17, scope: !3208, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 113, column: 18, scope: !3410, inlinedAt: !3435)
!3440 = !DILocation(line: 41, column: 13, scope: !3208, inlinedAt: !3439)
!3441 = !DILocation(line: 41, column: 9, scope: !3208, inlinedAt: !3439)
!3442 = !DILocation(line: 42, column: 8, scope: !3219, inlinedAt: !3439)
!3443 = !DILocation(line: 42, column: 15, scope: !3221, inlinedAt: !3439)
!3444 = !DILocation(line: 42, column: 10, scope: !3219, inlinedAt: !3439)
!3445 = !DILocation(line: 43, column: 5, scope: !3219, inlinedAt: !3439)
!3446 = !DILocation(line: 113, column: 10, scope: !3410, inlinedAt: !3435)
!3447 = !DILocation(line: 121, column: 3, scope: !3428)
!3448 = distinct !DISubprogram(name: "xalloc_die", scope: !3449, file: !3449, line: 32, type: !829, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !587, variables: !4)
!3449 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3450 = !DILocation(line: 34, column: 10, scope: !3448)
!3451 = !DILocation(line: 34, column: 33, scope: !3448)
!3452 = !DILocation(line: 34, column: 3, scope: !3453)
!3453 = !DILexicalBlockFile(scope: !3448, file: !3449, discriminator: 1)
!3454 = !DILocation(line: 40, column: 3, scope: !3448)
!3455 = distinct !DISubprogram(name: "rpl_calloc", scope: !3456, file: !3456, line: 42, type: !3195, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !589, variables: !3457)
!3456 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3457 = !{!3458, !3459, !3460, !3461}
!3458 = !DILocalVariable(name: "n", arg: 1, scope: !3455, file: !3456, line: 42, type: !94)
!3459 = !DILocalVariable(name: "s", arg: 2, scope: !3455, file: !3456, line: 42, type: !94)
!3460 = !DILocalVariable(name: "result", scope: !3455, file: !3456, line: 44, type: !49)
!3461 = !DILocalVariable(name: "bytes", scope: !3462, file: !3456, line: 56, type: !94)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !3456, line: 53, column: 5)
!3463 = distinct !DILexicalBlock(scope: !3455, file: !3456, line: 47, column: 7)
!3464 = !DILocation(line: 42, column: 20, scope: !3455)
!3465 = !DILocation(line: 42, column: 30, scope: !3455)
!3466 = !DILocation(line: 47, column: 9, scope: !3463)
!3467 = !DILocation(line: 47, column: 19, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !3463, file: !3456, discriminator: 1)
!3469 = !DILocation(line: 47, column: 14, scope: !3463)
!3470 = !DILocation(line: 56, column: 24, scope: !3462)
!3471 = !DILocation(line: 56, column: 14, scope: !3462)
!3472 = !DILocation(line: 57, column: 17, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3462, file: !3456, line: 57, column: 11)
!3474 = !DILocation(line: 57, column: 21, scope: !3473)
!3475 = !DILocation(line: 57, column: 11, scope: !3462)
!3476 = !DILocation(line: 59, column: 11, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3473, file: !3456, line: 58, column: 9)
!3478 = !DILocation(line: 59, column: 17, scope: !3477)
!3479 = !DILocation(line: 65, column: 12, scope: !3455)
!3480 = !DILocation(line: 44, column: 9, scope: !3455)
!3481 = !DILocation(line: 72, column: 3, scope: !3455)
!3482 = !DILocation(line: 73, column: 1, scope: !3455)
!3483 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3484, file: !3484, line: 334, type: !3485, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !591, variables: !3499)
!3484 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!94, !3487, !6, !94, !3488}
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1197, line: 107, baseType: !3490)
!3490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1197, line: 95, baseType: !3491)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1197, line: 83, size: 64, elements: !3492)
!3492 = !{!3493, !3494}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3491, file: !1197, line: 85, baseType: !25, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3491, file: !1197, line: 94, baseType: !3495, size: 32, offset: 32)
!3495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3491, file: !1197, line: 86, size: 32, elements: !3496)
!3496 = !{!3497, !3498}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3495, file: !1197, line: 89, baseType: !113, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3495, file: !1197, line: 93, baseType: !1207, size: 32)
!3499 = !{!3500, !3501, !3502, !3503, !3504, !3505, !3506}
!3500 = !DILocalVariable(name: "pwc", arg: 1, scope: !3483, file: !3484, line: 334, type: !3487)
!3501 = !DILocalVariable(name: "s", arg: 2, scope: !3483, file: !3484, line: 334, type: !6)
!3502 = !DILocalVariable(name: "n", arg: 3, scope: !3483, file: !3484, line: 334, type: !94)
!3503 = !DILocalVariable(name: "ps", arg: 4, scope: !3483, file: !3484, line: 334, type: !3488)
!3504 = !DILocalVariable(name: "ret", scope: !3483, file: !3484, line: 336, type: !94)
!3505 = !DILocalVariable(name: "wc", scope: !3483, file: !3484, line: 337, type: !1212)
!3506 = !DILocalVariable(name: "uc", scope: !3507, file: !3484, line: 398, type: !494)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3484, line: 397, column: 5)
!3508 = distinct !DILexicalBlock(scope: !3483, file: !3484, line: 396, column: 7)
!3509 = !DILocation(line: 334, column: 23, scope: !3483)
!3510 = !DILocation(line: 334, column: 40, scope: !3483)
!3511 = !DILocation(line: 334, column: 50, scope: !3483)
!3512 = !DILocation(line: 334, column: 64, scope: !3483)
!3513 = !DILocation(line: 337, column: 3, scope: !3483)
!3514 = !DILocation(line: 353, column: 9, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3483, file: !3484, line: 353, column: 7)
!3516 = !DILocation(line: 353, column: 7, scope: !3483)
!3517 = !DILocation(line: 388, column: 9, scope: !3483)
!3518 = !DILocation(line: 336, column: 10, scope: !3483)
!3519 = !DILocation(line: 396, column: 19, scope: !3508)
!3520 = !DILocation(line: 396, column: 31, scope: !3521)
!3521 = !DILexicalBlockFile(scope: !3508, file: !3484, discriminator: 1)
!3522 = !DILocation(line: 396, column: 26, scope: !3508)
!3523 = !DILocation(line: 396, column: 41, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3508, file: !3484, discriminator: 2)
!3525 = !DILocation(line: 396, column: 7, scope: !3526)
!3526 = !DILexicalBlockFile(scope: !3483, file: !3484, discriminator: 2)
!3527 = !DILocation(line: 398, column: 26, scope: !3507)
!3528 = !DILocation(line: 398, column: 21, scope: !3507)
!3529 = !DILocation(line: 399, column: 14, scope: !3507)
!3530 = !DILocation(line: 399, column: 12, scope: !3507)
!3531 = !DILocation(line: 405, column: 1, scope: !3483)
!3532 = distinct !DISubprogram(name: "close_stream", scope: !3533, file: !3533, line: 56, type: !3534, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3576)
!3533 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!25, !3536}
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !922, line: 49, baseType: !3538)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2982, line: 241, size: 1728, elements: !3539)
!3539 = !{!3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3538, file: !2982, line: 242, baseType: !25, size: 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3538, file: !2982, line: 247, baseType: !50, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3538, file: !2982, line: 248, baseType: !50, size: 64, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3538, file: !2982, line: 249, baseType: !50, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3538, file: !2982, line: 250, baseType: !50, size: 64, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3538, file: !2982, line: 251, baseType: !50, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3538, file: !2982, line: 252, baseType: !50, size: 64, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3538, file: !2982, line: 253, baseType: !50, size: 64, offset: 448)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3538, file: !2982, line: 254, baseType: !50, size: 64, offset: 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3538, file: !2982, line: 256, baseType: !50, size: 64, offset: 576)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3538, file: !2982, line: 257, baseType: !50, size: 64, offset: 640)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3538, file: !2982, line: 258, baseType: !50, size: 64, offset: 704)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3538, file: !2982, line: 260, baseType: !3553, size: 64, offset: 768)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2982, line: 156, size: 192, elements: !3555)
!3555 = !{!3556, !3557, !3559}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3554, file: !2982, line: 157, baseType: !3553, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3554, file: !2982, line: 158, baseType: !3558, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3554, file: !2982, line: 162, baseType: !25, size: 32, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3538, file: !2982, line: 262, baseType: !3558, size: 64, offset: 832)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3538, file: !2982, line: 264, baseType: !25, size: 32, offset: 896)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3538, file: !2982, line: 268, baseType: !25, size: 32, offset: 928)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3538, file: !2982, line: 270, baseType: !3008, size: 64, offset: 960)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3538, file: !2982, line: 274, baseType: !93, size: 16, offset: 1024)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3538, file: !2982, line: 275, baseType: !3011, size: 8, offset: 1040)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3538, file: !2982, line: 276, baseType: !3013, size: 8, offset: 1048)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3538, file: !2982, line: 280, baseType: !3015, size: 64, offset: 1088)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3538, file: !2982, line: 289, baseType: !3018, size: 64, offset: 1152)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3538, file: !2982, line: 297, baseType: !49, size: 64, offset: 1216)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3538, file: !2982, line: 298, baseType: !49, size: 64, offset: 1280)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3538, file: !2982, line: 299, baseType: !49, size: 64, offset: 1344)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3538, file: !2982, line: 300, baseType: !49, size: 64, offset: 1408)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3538, file: !2982, line: 302, baseType: !94, size: 64, offset: 1472)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3538, file: !2982, line: 303, baseType: !25, size: 32, offset: 1536)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3538, file: !2982, line: 305, baseType: !3026, size: 160, offset: 1568)
!3576 = !{!3577, !3578, !3580, !3581}
!3577 = !DILocalVariable(name: "stream", arg: 1, scope: !3532, file: !3533, line: 56, type: !3536)
!3578 = !DILocalVariable(name: "some_pending", scope: !3532, file: !3533, line: 58, type: !3579)
!3579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3580 = !DILocalVariable(name: "prev_fail", scope: !3532, file: !3533, line: 59, type: !3579)
!3581 = !DILocalVariable(name: "fclose_fail", scope: !3532, file: !3533, line: 60, type: !3579)
!3582 = !DILocation(line: 56, column: 21, scope: !3532)
!3583 = !DILocation(line: 58, column: 30, scope: !3532)
!3584 = !DILocalVariable(name: "__stream", arg: 1, scope: !3585, file: !3586, line: 132, type: !3536)
!3585 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3586, file: !3586, line: 132, type: !3534, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !3587)
!3586 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3587 = !{!3584}
!3588 = !DILocation(line: 132, column: 1, scope: !3585, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 59, column: 27, scope: !3532)
!3590 = !DILocation(line: 134, column: 10, scope: !3585, inlinedAt: !3589)
!3591 = !{!3592, !707, i64 0}
!3592 = !{!"_IO_FILE", !707, i64 0, !624, i64 8, !624, i64 16, !624, i64 24, !624, i64 32, !624, i64 40, !624, i64 48, !624, i64 56, !624, i64 64, !624, i64 72, !624, i64 80, !624, i64 88, !624, i64 96, !624, i64 104, !707, i64 112, !707, i64 116, !2272, i64 120, !1564, i64 128, !625, i64 130, !625, i64 131, !624, i64 136, !2272, i64 144, !624, i64 152, !624, i64 160, !624, i64 168, !624, i64 176, !2272, i64 184, !707, i64 192, !625, i64 196}
!3593 = !DILocation(line: 59, column: 43, scope: !3532)
!3594 = !DILocation(line: 60, column: 29, scope: !3532)
!3595 = !DILocation(line: 60, column: 45, scope: !3532)
!3596 = !DILocation(line: 70, column: 17, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3532, file: !3533, line: 70, column: 7)
!3598 = !DILocation(line: 70, column: 33, scope: !3599)
!3599 = !DILexicalBlockFile(scope: !3597, file: !3533, discriminator: 1)
!3600 = !DILocation(line: 70, column: 53, scope: !3601)
!3601 = !DILexicalBlockFile(scope: !3597, file: !3533, discriminator: 3)
!3602 = !DILocation(line: 70, column: 7, scope: !3603)
!3603 = !DILexicalBlockFile(scope: !3532, file: !3533, discriminator: 3)
!3604 = !DILocation(line: 72, column: 11, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3597, file: !3533, line: 71, column: 5)
!3606 = !DILocation(line: 73, column: 9, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3605, file: !3533, line: 72, column: 11)
!3608 = !DILocation(line: 73, column: 15, scope: !3607)
!3609 = !DILocation(line: 78, column: 1, scope: !3532)
!3610 = distinct !DISubprogram(name: "hard_locale", scope: !3611, file: !3611, line: 38, type: !3612, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !3614)
!3611 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!17, !25}
!3614 = !{!3615, !3616, !3617, !3618, !3625, !3626, !3628, !3629, !3631, !3632, !3634}
!3615 = !DILocalVariable(name: "category", arg: 1, scope: !3610, file: !3611, line: 38, type: !25)
!3616 = !DILocalVariable(name: "hard", scope: !3610, file: !3611, line: 40, type: !17)
!3617 = !DILocalVariable(name: "p", scope: !3610, file: !3611, line: 41, type: !6)
!3618 = !DILocalVariable(name: "__s1_len", scope: !3619, file: !3611, line: 47, type: !94)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !3611, line: 47, column: 15)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3611, line: 47, column: 15)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !3611, line: 46, column: 9)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !3611, line: 45, column: 11)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3611, line: 44, column: 5)
!3624 = distinct !DILexicalBlock(scope: !3610, file: !3611, line: 43, column: 7)
!3625 = !DILocalVariable(name: "__s2_len", scope: !3619, file: !3611, line: 47, type: !94)
!3626 = !DILocalVariable(name: "__s2", scope: !3627, file: !3611, line: 47, type: !503)
!3627 = distinct !DILexicalBlock(scope: !3619, file: !3611, line: 47, column: 15)
!3628 = !DILocalVariable(name: "__result", scope: !3627, file: !3611, line: 47, type: !25)
!3629 = !DILocalVariable(name: "__s1_len", scope: !3630, file: !3611, line: 47, type: !94)
!3630 = distinct !DILexicalBlock(scope: !3620, file: !3611, line: 47, column: 39)
!3631 = !DILocalVariable(name: "__s2_len", scope: !3630, file: !3611, line: 47, type: !94)
!3632 = !DILocalVariable(name: "__s2", scope: !3633, file: !3611, line: 47, type: !503)
!3633 = distinct !DILexicalBlock(scope: !3630, file: !3611, line: 47, column: 39)
!3634 = !DILocalVariable(name: "__result", scope: !3633, file: !3611, line: 47, type: !25)
!3635 = !DILocation(line: 38, column: 18, scope: !3610)
!3636 = !DILocation(line: 40, column: 8, scope: !3610)
!3637 = !DILocation(line: 41, column: 19, scope: !3610)
!3638 = !DILocation(line: 41, column: 15, scope: !3610)
!3639 = !DILocation(line: 43, column: 7, scope: !3624)
!3640 = !DILocation(line: 43, column: 7, scope: !3610)
!3641 = !DILocation(line: 47, column: 15, scope: !3619)
!3642 = !DILocation(line: 47, column: 15, scope: !3627)
!3643 = !DILocation(line: 47, column: 15, scope: !3644)
!3644 = !DILexicalBlockFile(scope: !3627, file: !3611, discriminator: 2)
!3645 = !DILocation(line: 47, column: 15, scope: !3646)
!3646 = !DILexicalBlockFile(scope: !3647, file: !3611, discriminator: 3)
!3647 = distinct !DILexicalBlock(scope: !3627, file: !3611, line: 47, column: 15)
!3648 = !DILocation(line: 47, column: 15, scope: !3649)
!3649 = !DILexicalBlockFile(scope: !3647, file: !3611, discriminator: 2)
!3650 = !DILocation(line: 47, column: 15, scope: !3651)
!3651 = !DILexicalBlockFile(scope: !3652, file: !3611, discriminator: 4)
!3652 = distinct !DILexicalBlock(scope: !3647, file: !3611, line: 47, column: 15)
!3653 = !DILocation(line: 47, column: 15, scope: !3654)
!3654 = !DILexicalBlockFile(scope: !3619, file: !3611, discriminator: 11)
!3655 = !DILocation(line: 47, column: 36, scope: !3656)
!3656 = !DILexicalBlockFile(scope: !3620, file: !3611, discriminator: 13)
!3657 = !DILocation(line: 47, column: 39, scope: !3630)
!3658 = !DILocation(line: 47, column: 39, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3630, file: !3611, discriminator: 26)
!3660 = !DILocation(line: 47, column: 59, scope: !3661)
!3661 = !DILexicalBlockFile(scope: !3620, file: !3611, discriminator: 27)
!3662 = !DILocation(line: 47, column: 15, scope: !3663)
!3663 = !DILexicalBlockFile(scope: !3621, file: !3611, discriminator: 27)
!3664 = !DILocation(line: 48, column: 13, scope: !3620)
!3665 = !DILocation(line: 71, column: 3, scope: !3610)
!3666 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3667, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!6}
!3669 = !{!3670, !3671, !3672, !3677}
!3670 = !DILocalVariable(name: "codeset", scope: !3666, file: !496, line: 395, type: !6)
!3671 = !DILocalVariable(name: "aliases", scope: !3666, file: !496, line: 396, type: !6)
!3672 = !DILocalVariable(name: "__s1_len", scope: !3673, file: !496, line: 592, type: !94)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !496, line: 592, column: 9)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !496, line: 592, column: 9)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !496, line: 589, column: 3)
!3676 = distinct !DILexicalBlock(scope: !3666, file: !496, line: 589, column: 3)
!3677 = !DILocalVariable(name: "__s2_len", scope: !3673, file: !496, line: 592, type: !94)
!3678 = !DILocalVariable(name: "buf1", scope: !3679, file: !496, line: 196, type: !3746)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !496, line: 194, column: 21)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !496, line: 193, column: 19)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !496, line: 193, column: 19)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !496, line: 188, column: 17)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !496, line: 181, column: 19)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !496, line: 177, column: 13)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !496, line: 173, column: 15)
!3686 = distinct !DILexicalBlock(scope: !3687, file: !496, line: 161, column: 9)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !496, line: 157, column: 11)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !496, line: 130, column: 5)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !496, line: 129, column: 7)
!3690 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3667, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3691)
!3691 = !{!3692, !3693, !3694, !3695, !3696, !3698, !3699, !3700, !3701, !3742, !3743, !3744, !3678, !3745, !3749, !3750, !3751}
!3692 = !DILocalVariable(name: "cp", scope: !3690, file: !496, line: 126, type: !6)
!3693 = !DILocalVariable(name: "dir", scope: !3688, file: !496, line: 132, type: !6)
!3694 = !DILocalVariable(name: "base", scope: !3688, file: !496, line: 133, type: !6)
!3695 = !DILocalVariable(name: "file_name", scope: !3688, file: !496, line: 134, type: !50)
!3696 = !DILocalVariable(name: "dir_len", scope: !3697, file: !496, line: 144, type: !94)
!3697 = distinct !DILexicalBlock(scope: !3688, file: !496, line: 143, column: 7)
!3698 = !DILocalVariable(name: "base_len", scope: !3697, file: !496, line: 145, type: !94)
!3699 = !DILocalVariable(name: "add_slash", scope: !3697, file: !496, line: 146, type: !25)
!3700 = !DILocalVariable(name: "fd", scope: !3686, file: !496, line: 162, type: !25)
!3701 = !DILocalVariable(name: "fp", scope: !3684, file: !496, line: 178, type: !3702)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !922, line: 49, baseType: !3704)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2982, line: 241, size: 1728, elements: !3705)
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3704, file: !2982, line: 242, baseType: !25, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3704, file: !2982, line: 247, baseType: !50, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3704, file: !2982, line: 248, baseType: !50, size: 64, offset: 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3704, file: !2982, line: 249, baseType: !50, size: 64, offset: 192)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3704, file: !2982, line: 250, baseType: !50, size: 64, offset: 256)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3704, file: !2982, line: 251, baseType: !50, size: 64, offset: 320)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3704, file: !2982, line: 252, baseType: !50, size: 64, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3704, file: !2982, line: 253, baseType: !50, size: 64, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3704, file: !2982, line: 254, baseType: !50, size: 64, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3704, file: !2982, line: 256, baseType: !50, size: 64, offset: 576)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3704, file: !2982, line: 257, baseType: !50, size: 64, offset: 640)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3704, file: !2982, line: 258, baseType: !50, size: 64, offset: 704)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3704, file: !2982, line: 260, baseType: !3719, size: 64, offset: 768)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2982, line: 156, size: 192, elements: !3721)
!3721 = !{!3722, !3723, !3725}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3720, file: !2982, line: 157, baseType: !3719, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3720, file: !2982, line: 158, baseType: !3724, size: 64, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3720, file: !2982, line: 162, baseType: !25, size: 32, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3704, file: !2982, line: 262, baseType: !3724, size: 64, offset: 832)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3704, file: !2982, line: 264, baseType: !25, size: 32, offset: 896)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3704, file: !2982, line: 268, baseType: !25, size: 32, offset: 928)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3704, file: !2982, line: 270, baseType: !3008, size: 64, offset: 960)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3704, file: !2982, line: 274, baseType: !93, size: 16, offset: 1024)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3704, file: !2982, line: 275, baseType: !3011, size: 8, offset: 1040)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3704, file: !2982, line: 276, baseType: !3013, size: 8, offset: 1048)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3704, file: !2982, line: 280, baseType: !3015, size: 64, offset: 1088)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3704, file: !2982, line: 289, baseType: !3018, size: 64, offset: 1152)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3704, file: !2982, line: 297, baseType: !49, size: 64, offset: 1216)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3704, file: !2982, line: 298, baseType: !49, size: 64, offset: 1280)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3704, file: !2982, line: 299, baseType: !49, size: 64, offset: 1344)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3704, file: !2982, line: 300, baseType: !49, size: 64, offset: 1408)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3704, file: !2982, line: 302, baseType: !94, size: 64, offset: 1472)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3704, file: !2982, line: 303, baseType: !25, size: 32, offset: 1536)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3704, file: !2982, line: 305, baseType: !3026, size: 160, offset: 1568)
!3742 = !DILocalVariable(name: "res_ptr", scope: !3682, file: !496, line: 190, type: !50)
!3743 = !DILocalVariable(name: "res_size", scope: !3682, file: !496, line: 191, type: !94)
!3744 = !DILocalVariable(name: "c", scope: !3679, file: !496, line: 195, type: !25)
!3745 = !DILocalVariable(name: "buf2", scope: !3679, file: !496, line: 197, type: !3746)
!3746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3747)
!3747 = !{!3748}
!3748 = !DISubrange(count: 51)
!3749 = !DILocalVariable(name: "l1", scope: !3679, file: !496, line: 198, type: !94)
!3750 = !DILocalVariable(name: "l2", scope: !3679, file: !496, line: 198, type: !94)
!3751 = !DILocalVariable(name: "old_res_ptr", scope: !3679, file: !496, line: 199, type: !50)
!3752 = !DILocation(line: 196, column: 28, scope: !3679, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 589, column: 18, scope: !3676)
!3754 = !DILocation(line: 197, column: 28, scope: !3679, inlinedAt: !3753)
!3755 = !DILocation(line: 403, column: 13, scope: !3666)
!3756 = !DILocation(line: 395, column: 15, scope: !3666)
!3757 = !DILocation(line: 584, column: 15, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3666, file: !496, line: 584, column: 7)
!3759 = !DILocation(line: 584, column: 7, scope: !3666)
!3760 = !DILocation(line: 128, column: 8, scope: !3690, inlinedAt: !3753)
!3761 = !DILocation(line: 126, column: 15, scope: !3690, inlinedAt: !3753)
!3762 = !DILocation(line: 129, column: 10, scope: !3689, inlinedAt: !3753)
!3763 = !DILocation(line: 129, column: 7, scope: !3690, inlinedAt: !3753)
!3764 = !DILocation(line: 138, column: 13, scope: !3688, inlinedAt: !3753)
!3765 = !DILocation(line: 132, column: 19, scope: !3688, inlinedAt: !3753)
!3766 = !DILocation(line: 139, column: 15, scope: !3767, inlinedAt: !3753)
!3767 = distinct !DILexicalBlock(scope: !3688, file: !496, line: 139, column: 11)
!3768 = !DILocation(line: 139, column: 23, scope: !3767, inlinedAt: !3753)
!3769 = !DILocation(line: 139, column: 26, scope: !3770, inlinedAt: !3753)
!3770 = !DILexicalBlockFile(scope: !3767, file: !496, discriminator: 1)
!3771 = !DILocation(line: 139, column: 33, scope: !3770, inlinedAt: !3753)
!3772 = !DILocation(line: 139, column: 11, scope: !3773, inlinedAt: !3753)
!3773 = !DILexicalBlockFile(scope: !3688, file: !496, discriminator: 1)
!3774 = !DILocation(line: 140, column: 9, scope: !3767, inlinedAt: !3753)
!3775 = !DILocation(line: 144, column: 26, scope: !3697, inlinedAt: !3753)
!3776 = !DILocation(line: 144, column: 16, scope: !3697, inlinedAt: !3753)
!3777 = !DILocation(line: 145, column: 16, scope: !3697, inlinedAt: !3753)
!3778 = !DILocation(line: 146, column: 34, scope: !3697, inlinedAt: !3753)
!3779 = !DILocation(line: 146, column: 38, scope: !3697, inlinedAt: !3753)
!3780 = !DILocation(line: 146, column: 42, scope: !3781, inlinedAt: !3753)
!3781 = !DILexicalBlockFile(scope: !3697, file: !496, discriminator: 1)
!3782 = !DILocation(line: 146, column: 41, scope: !3781, inlinedAt: !3753)
!3783 = !DILocation(line: 147, column: 48, scope: !3697, inlinedAt: !3753)
!3784 = !DILocation(line: 147, column: 46, scope: !3697, inlinedAt: !3753)
!3785 = !DILocation(line: 147, column: 69, scope: !3697, inlinedAt: !3753)
!3786 = !DILocation(line: 147, column: 30, scope: !3697, inlinedAt: !3753)
!3787 = !DILocation(line: 134, column: 13, scope: !3688, inlinedAt: !3753)
!3788 = !DILocation(line: 148, column: 13, scope: !3697, inlinedAt: !3753)
!3789 = !DILocation(line: 150, column: 13, scope: !3790, inlinedAt: !3753)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !496, line: 149, column: 11)
!3791 = distinct !DILexicalBlock(scope: !3697, file: !496, line: 148, column: 13)
!3792 = !DILocation(line: 151, column: 17, scope: !3790, inlinedAt: !3753)
!3793 = !DILocation(line: 152, column: 34, scope: !3794, inlinedAt: !3753)
!3794 = distinct !DILexicalBlock(scope: !3790, file: !496, line: 151, column: 17)
!3795 = !DILocation(line: 153, column: 41, scope: !3790, inlinedAt: !3753)
!3796 = !DILocation(line: 153, column: 13, scope: !3790, inlinedAt: !3753)
!3797 = !DILocation(line: 157, column: 11, scope: !3688, inlinedAt: !3753)
!3798 = !DILocation(line: 171, column: 16, scope: !3686, inlinedAt: !3753)
!3799 = !DILocation(line: 162, column: 15, scope: !3686, inlinedAt: !3753)
!3800 = !DILocation(line: 173, column: 18, scope: !3685, inlinedAt: !3753)
!3801 = !DILocation(line: 173, column: 15, scope: !3686, inlinedAt: !3753)
!3802 = !DILocation(line: 180, column: 20, scope: !3684, inlinedAt: !3753)
!3803 = !DILocation(line: 178, column: 21, scope: !3684, inlinedAt: !3753)
!3804 = !DILocation(line: 181, column: 22, scope: !3683, inlinedAt: !3753)
!3805 = !DILocation(line: 181, column: 19, scope: !3684, inlinedAt: !3753)
!3806 = !DILocation(line: 190, column: 25, scope: !3682, inlinedAt: !3753)
!3807 = !DILocation(line: 184, column: 19, scope: !3808, inlinedAt: !3753)
!3808 = distinct !DILexicalBlock(scope: !3683, file: !496, line: 182, column: 17)
!3809 = !DILocation(line: 186, column: 17, scope: !3808, inlinedAt: !3753)
!3810 = !DILocation(line: 191, column: 26, scope: !3682, inlinedAt: !3753)
!3811 = !DILocation(line: 196, column: 23, scope: !3679, inlinedAt: !3753)
!3812 = !DILocation(line: 197, column: 23, scope: !3679, inlinedAt: !3753)
!3813 = !DILocalVariable(name: "__fp", arg: 1, scope: !3814, file: !3586, line: 63, type: !3702)
!3814 = distinct !DISubprogram(name: "getc_unlocked", scope: !3586, file: !3586, line: 63, type: !3815, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3817)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!25, !3702}
!3817 = !{!3813}
!3818 = !DILocation(line: 63, column: 22, scope: !3814, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 201, column: 27, scope: !3679, inlinedAt: !3753)
!3820 = !DILocation(line: 65, column: 10, scope: !3814, inlinedAt: !3819)
!3821 = !{!3592, !624, i64 8}
!3822 = !{!3592, !624, i64 16}
!3823 = !{!"branch_weights", i32 2000, i32 1}
!3824 = !DILocation(line: 65, column: 10, scope: !3825, inlinedAt: !3819)
!3825 = !DILexicalBlockFile(scope: !3814, file: !3586, discriminator: 1)
!3826 = !DILocation(line: 65, column: 10, scope: !3827, inlinedAt: !3819)
!3827 = !DILexicalBlockFile(scope: !3814, file: !3586, discriminator: 2)
!3828 = !DILocation(line: 65, column: 10, scope: !3829, inlinedAt: !3819)
!3829 = !DILexicalBlockFile(scope: !3814, file: !3586, discriminator: 3)
!3830 = !DILocation(line: 195, column: 27, scope: !3679, inlinedAt: !3753)
!3831 = !DILocation(line: 202, column: 27, scope: !3679, inlinedAt: !3753)
!3832 = !DILocation(line: 63, column: 22, scope: !3814, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 210, column: 33, scope: !3834, inlinedAt: !3753)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !496, line: 207, column: 25)
!3835 = distinct !DILexicalBlock(scope: !3679, file: !496, line: 206, column: 27)
!3836 = !DILocation(line: 65, column: 10, scope: !3814, inlinedAt: !3833)
!3837 = !DILocation(line: 65, column: 10, scope: !3825, inlinedAt: !3833)
!3838 = !DILocation(line: 65, column: 10, scope: !3827, inlinedAt: !3833)
!3839 = !DILocation(line: 65, column: 10, scope: !3829, inlinedAt: !3833)
!3840 = !DILocation(line: 210, column: 29, scope: !3841, inlinedAt: !3753)
!3841 = !DILexicalBlockFile(scope: !3834, file: !496, discriminator: 1)
!3842 = distinct !{!3842, !3843, !3844}
!3843 = !DILocation(line: 193, column: 19, scope: !3681)
!3844 = !DILocation(line: 241, column: 21, scope: !3681)
!3845 = !DILocation(line: 216, column: 23, scope: !3679, inlinedAt: !3753)
!3846 = !DILocation(line: 217, column: 27, scope: !3847, inlinedAt: !3753)
!3847 = distinct !DILexicalBlock(scope: !3679, file: !496, line: 217, column: 27)
!3848 = !DILocation(line: 217, column: 64, scope: !3847, inlinedAt: !3753)
!3849 = !DILocation(line: 217, column: 27, scope: !3679, inlinedAt: !3753)
!3850 = !DILocation(line: 219, column: 28, scope: !3679, inlinedAt: !3753)
!3851 = !DILocation(line: 198, column: 30, scope: !3679, inlinedAt: !3753)
!3852 = !DILocation(line: 220, column: 28, scope: !3679, inlinedAt: !3753)
!3853 = !DILocation(line: 198, column: 34, scope: !3679, inlinedAt: !3753)
!3854 = !DILocation(line: 199, column: 29, scope: !3679, inlinedAt: !3753)
!3855 = !DILocation(line: 222, column: 36, scope: !3856, inlinedAt: !3753)
!3856 = distinct !DILexicalBlock(scope: !3679, file: !496, line: 222, column: 27)
!3857 = !DILocation(line: 222, column: 27, scope: !3679, inlinedAt: !3753)
!3858 = !DILocation(line: 225, column: 63, scope: !3859, inlinedAt: !3753)
!3859 = distinct !DILexicalBlock(scope: !3856, file: !496, line: 223, column: 25)
!3860 = !DILocation(line: 225, column: 46, scope: !3859, inlinedAt: !3753)
!3861 = !DILocation(line: 226, column: 25, scope: !3859, inlinedAt: !3753)
!3862 = !DILocation(line: 229, column: 36, scope: !3863, inlinedAt: !3753)
!3863 = distinct !DILexicalBlock(scope: !3856, file: !496, line: 228, column: 25)
!3864 = !DILocation(line: 230, column: 73, scope: !3863, inlinedAt: !3753)
!3865 = !DILocation(line: 230, column: 46, scope: !3863, inlinedAt: !3753)
!3866 = !DILocation(line: 232, column: 35, scope: !3867, inlinedAt: !3753)
!3867 = distinct !DILexicalBlock(scope: !3679, file: !496, line: 232, column: 27)
!3868 = !DILocation(line: 232, column: 27, scope: !3679, inlinedAt: !3753)
!3869 = !DILocation(line: 236, column: 27, scope: !3870, inlinedAt: !3753)
!3870 = distinct !DILexicalBlock(scope: !3867, file: !496, line: 233, column: 25)
!3871 = !DILocation(line: 237, column: 27, scope: !3870, inlinedAt: !3753)
!3872 = !DILocation(line: 239, column: 39, scope: !3679, inlinedAt: !3753)
!3873 = !DILocation(line: 239, column: 50, scope: !3679, inlinedAt: !3753)
!3874 = !DILocation(line: 239, column: 61, scope: !3679, inlinedAt: !3753)
!3875 = !DILocalVariable(name: "__dest", arg: 1, scope: !3876, file: !3877, line: 107, type: !3880)
!3876 = distinct !DISubprogram(name: "strcpy", scope: !3877, file: !3877, line: 107, type: !3878, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3882)
!3877 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!50, !3880, !3881}
!3880 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3881 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3882 = !{!3875, !3883}
!3883 = !DILocalVariable(name: "__src", arg: 2, scope: !3876, file: !3877, line: 107, type: !3881)
!3884 = !DILocation(line: 107, column: 1, scope: !3876, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 239, column: 23, scope: !3679, inlinedAt: !3753)
!3886 = !DILocation(line: 109, column: 49, scope: !3876, inlinedAt: !3885)
!3887 = !DILocation(line: 109, column: 10, scope: !3876, inlinedAt: !3885)
!3888 = !DILocation(line: 107, column: 1, scope: !3876, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 240, column: 23, scope: !3679, inlinedAt: !3753)
!3890 = !DILocation(line: 109, column: 49, scope: !3876, inlinedAt: !3889)
!3891 = !DILocation(line: 109, column: 10, scope: !3876, inlinedAt: !3889)
!3892 = !DILocation(line: 241, column: 21, scope: !3680, inlinedAt: !3753)
!3893 = !DILocation(line: 242, column: 19, scope: !3682, inlinedAt: !3753)
!3894 = !DILocation(line: 243, column: 32, scope: !3895, inlinedAt: !3753)
!3895 = distinct !DILexicalBlock(scope: !3682, file: !496, line: 243, column: 23)
!3896 = !DILocation(line: 243, column: 23, scope: !3682, inlinedAt: !3753)
!3897 = !DILocation(line: 247, column: 33, scope: !3898, inlinedAt: !3753)
!3898 = distinct !DILexicalBlock(scope: !3895, file: !496, line: 246, column: 21)
!3899 = !DILocation(line: 247, column: 45, scope: !3898, inlinedAt: !3753)
!3900 = !DILocation(line: 253, column: 11, scope: !3686, inlinedAt: !3753)
!3901 = !DILocation(line: 377, column: 23, scope: !3688, inlinedAt: !3753)
!3902 = !DILocation(line: 378, column: 5, scope: !3688, inlinedAt: !3753)
!3903 = !DILocation(line: 396, column: 15, scope: !3666)
!3904 = !DILocation(line: 590, column: 8, scope: !3675)
!3905 = !DILocation(line: 590, column: 17, scope: !3675)
!3906 = !DILocation(line: 589, column: 3, scope: !3907)
!3907 = !DILexicalBlockFile(scope: !3676, file: !496, discriminator: 1)
!3908 = !DILocation(line: 592, column: 9, scope: !3673)
!3909 = !DILocation(line: 592, column: 35, scope: !3674)
!3910 = !DILocation(line: 593, column: 9, scope: !3674)
!3911 = !DILocation(line: 593, column: 24, scope: !3912)
!3912 = !DILexicalBlockFile(scope: !3674, file: !496, discriminator: 1)
!3913 = !DILocation(line: 593, column: 31, scope: !3912)
!3914 = !DILocation(line: 593, column: 34, scope: !3915)
!3915 = !DILexicalBlockFile(scope: !3674, file: !496, discriminator: 2)
!3916 = !DILocation(line: 593, column: 45, scope: !3915)
!3917 = !DILocation(line: 592, column: 9, scope: !3918)
!3918 = !DILexicalBlockFile(scope: !3675, file: !496, discriminator: 1)
!3919 = !DILocation(line: 595, column: 29, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3674, file: !496, line: 594, column: 7)
!3921 = !DILocation(line: 595, column: 27, scope: !3920)
!3922 = !DILocation(line: 595, column: 46, scope: !3920)
!3923 = !DILocation(line: 596, column: 9, scope: !3920)
!3924 = !DILocation(line: 591, column: 19, scope: !3675)
!3925 = !DILocation(line: 591, column: 36, scope: !3675)
!3926 = !DILocation(line: 591, column: 16, scope: !3675)
!3927 = !DILocation(line: 591, column: 52, scope: !3918)
!3928 = !DILocation(line: 591, column: 69, scope: !3675)
!3929 = !DILocation(line: 591, column: 49, scope: !3675)
!3930 = distinct !{!3930, !3931, !3932}
!3931 = !DILocation(line: 589, column: 3, scope: !3676)
!3932 = !DILocation(line: 597, column: 7, scope: !3676)
!3933 = !DILocation(line: 602, column: 7, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3666, file: !496, line: 602, column: 7)
!3935 = !DILocation(line: 602, column: 18, scope: !3934)
!3936 = !DILocation(line: 602, column: 7, scope: !3666)
!3937 = !DILocation(line: 612, column: 3, scope: !3666)
!3938 = distinct !DISubprogram(name: "rpl_fclose", scope: !3939, file: !3939, line: 56, type: !3940, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !3982)
!3939 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!25, !3942}
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !922, line: 49, baseType: !3944)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2982, line: 241, size: 1728, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3944, file: !2982, line: 242, baseType: !25, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3944, file: !2982, line: 247, baseType: !50, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3944, file: !2982, line: 248, baseType: !50, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3944, file: !2982, line: 249, baseType: !50, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3944, file: !2982, line: 250, baseType: !50, size: 64, offset: 256)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3944, file: !2982, line: 251, baseType: !50, size: 64, offset: 320)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3944, file: !2982, line: 252, baseType: !50, size: 64, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3944, file: !2982, line: 253, baseType: !50, size: 64, offset: 448)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3944, file: !2982, line: 254, baseType: !50, size: 64, offset: 512)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3944, file: !2982, line: 256, baseType: !50, size: 64, offset: 576)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3944, file: !2982, line: 257, baseType: !50, size: 64, offset: 640)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3944, file: !2982, line: 258, baseType: !50, size: 64, offset: 704)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3944, file: !2982, line: 260, baseType: !3959, size: 64, offset: 768)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2982, line: 156, size: 192, elements: !3961)
!3961 = !{!3962, !3963, !3965}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3960, file: !2982, line: 157, baseType: !3959, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3960, file: !2982, line: 158, baseType: !3964, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3960, file: !2982, line: 162, baseType: !25, size: 32, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3944, file: !2982, line: 262, baseType: !3964, size: 64, offset: 832)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3944, file: !2982, line: 264, baseType: !25, size: 32, offset: 896)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3944, file: !2982, line: 268, baseType: !25, size: 32, offset: 928)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3944, file: !2982, line: 270, baseType: !3008, size: 64, offset: 960)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3944, file: !2982, line: 274, baseType: !93, size: 16, offset: 1024)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3944, file: !2982, line: 275, baseType: !3011, size: 8, offset: 1040)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3944, file: !2982, line: 276, baseType: !3013, size: 8, offset: 1048)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3944, file: !2982, line: 280, baseType: !3015, size: 64, offset: 1088)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3944, file: !2982, line: 289, baseType: !3018, size: 64, offset: 1152)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3944, file: !2982, line: 297, baseType: !49, size: 64, offset: 1216)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3944, file: !2982, line: 298, baseType: !49, size: 64, offset: 1280)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3944, file: !2982, line: 299, baseType: !49, size: 64, offset: 1344)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3944, file: !2982, line: 300, baseType: !49, size: 64, offset: 1408)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3944, file: !2982, line: 302, baseType: !94, size: 64, offset: 1472)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3944, file: !2982, line: 303, baseType: !25, size: 32, offset: 1536)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3944, file: !2982, line: 305, baseType: !3026, size: 160, offset: 1568)
!3982 = !{!3983, !3984, !3985, !3986}
!3983 = !DILocalVariable(name: "fp", arg: 1, scope: !3938, file: !3939, line: 56, type: !3942)
!3984 = !DILocalVariable(name: "saved_errno", scope: !3938, file: !3939, line: 58, type: !25)
!3985 = !DILocalVariable(name: "fd", scope: !3938, file: !3939, line: 59, type: !25)
!3986 = !DILocalVariable(name: "result", scope: !3938, file: !3939, line: 60, type: !25)
!3987 = !DILocation(line: 56, column: 19, scope: !3938)
!3988 = !DILocation(line: 58, column: 7, scope: !3938)
!3989 = !DILocation(line: 60, column: 7, scope: !3938)
!3990 = !DILocation(line: 63, column: 8, scope: !3938)
!3991 = !DILocation(line: 59, column: 7, scope: !3938)
!3992 = !DILocation(line: 64, column: 10, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3938, file: !3939, line: 64, column: 7)
!3994 = !DILocation(line: 64, column: 7, scope: !3938)
!3995 = !DILocation(line: 65, column: 12, scope: !3993)
!3996 = !DILocation(line: 65, column: 5, scope: !3993)
!3997 = !DILocation(line: 70, column: 9, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3938, file: !3939, line: 70, column: 7)
!3999 = !DILocation(line: 70, column: 23, scope: !3998)
!4000 = !DILocation(line: 70, column: 33, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !3998, file: !3939, discriminator: 1)
!4002 = !DILocation(line: 70, column: 26, scope: !4003)
!4003 = !DILexicalBlockFile(scope: !3998, file: !3939, discriminator: 3)
!4004 = !DILocation(line: 70, column: 59, scope: !4001)
!4005 = !DILocation(line: 71, column: 7, scope: !3998)
!4006 = !DILocation(line: 71, column: 10, scope: !4001)
!4007 = !DILocation(line: 70, column: 7, scope: !4008)
!4008 = !DILexicalBlockFile(scope: !3938, file: !3939, discriminator: 2)
!4009 = !DILocation(line: 98, column: 12, scope: !3938)
!4010 = !DILocation(line: 103, column: 7, scope: !3938)
!4011 = !DILocation(line: 72, column: 19, scope: !3998)
!4012 = !DILocation(line: 103, column: 19, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3938, file: !3939, line: 103, column: 7)
!4014 = !DILocation(line: 105, column: 13, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4013, file: !3939, line: 104, column: 5)
!4016 = !DILocation(line: 107, column: 5, scope: !4015)
!4017 = !DILocation(line: 110, column: 1, scope: !3938)
!4018 = distinct !DISubprogram(name: "rpl_fflush", scope: !4019, file: !4019, line: 127, type: !4020, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !4062)
!4019 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!25, !4022}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !922, line: 49, baseType: !4024)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2982, line: 241, size: 1728, elements: !4025)
!4025 = !{!4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4024, file: !2982, line: 242, baseType: !25, size: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4024, file: !2982, line: 247, baseType: !50, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4024, file: !2982, line: 248, baseType: !50, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4024, file: !2982, line: 249, baseType: !50, size: 64, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4024, file: !2982, line: 250, baseType: !50, size: 64, offset: 256)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4024, file: !2982, line: 251, baseType: !50, size: 64, offset: 320)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4024, file: !2982, line: 252, baseType: !50, size: 64, offset: 384)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4024, file: !2982, line: 253, baseType: !50, size: 64, offset: 448)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4024, file: !2982, line: 254, baseType: !50, size: 64, offset: 512)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4024, file: !2982, line: 256, baseType: !50, size: 64, offset: 576)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4024, file: !2982, line: 257, baseType: !50, size: 64, offset: 640)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4024, file: !2982, line: 258, baseType: !50, size: 64, offset: 704)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4024, file: !2982, line: 260, baseType: !4039, size: 64, offset: 768)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2982, line: 156, size: 192, elements: !4041)
!4041 = !{!4042, !4043, !4045}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4040, file: !2982, line: 157, baseType: !4039, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4040, file: !2982, line: 158, baseType: !4044, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4040, file: !2982, line: 162, baseType: !25, size: 32, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4024, file: !2982, line: 262, baseType: !4044, size: 64, offset: 832)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4024, file: !2982, line: 264, baseType: !25, size: 32, offset: 896)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4024, file: !2982, line: 268, baseType: !25, size: 32, offset: 928)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4024, file: !2982, line: 270, baseType: !3008, size: 64, offset: 960)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4024, file: !2982, line: 274, baseType: !93, size: 16, offset: 1024)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4024, file: !2982, line: 275, baseType: !3011, size: 8, offset: 1040)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4024, file: !2982, line: 276, baseType: !3013, size: 8, offset: 1048)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4024, file: !2982, line: 280, baseType: !3015, size: 64, offset: 1088)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4024, file: !2982, line: 289, baseType: !3018, size: 64, offset: 1152)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4024, file: !2982, line: 297, baseType: !49, size: 64, offset: 1216)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4024, file: !2982, line: 298, baseType: !49, size: 64, offset: 1280)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4024, file: !2982, line: 299, baseType: !49, size: 64, offset: 1344)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4024, file: !2982, line: 300, baseType: !49, size: 64, offset: 1408)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4024, file: !2982, line: 302, baseType: !94, size: 64, offset: 1472)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4024, file: !2982, line: 303, baseType: !25, size: 32, offset: 1536)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4024, file: !2982, line: 305, baseType: !3026, size: 160, offset: 1568)
!4062 = !{!4063}
!4063 = !DILocalVariable(name: "stream", arg: 1, scope: !4018, file: !4019, line: 127, type: !4022)
!4064 = !DILocation(line: 127, column: 19, scope: !4018)
!4065 = !DILocation(line: 148, column: 14, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4018, file: !4019, line: 148, column: 7)
!4067 = !DILocation(line: 148, column: 22, scope: !4066)
!4068 = !DILocation(line: 148, column: 27, scope: !4069)
!4069 = !DILexicalBlockFile(scope: !4066, file: !4019, discriminator: 1)
!4070 = !DILocation(line: 148, column: 7, scope: !4071)
!4071 = !DILexicalBlockFile(scope: !4018, file: !4019, discriminator: 1)
!4072 = !DILocation(line: 149, column: 12, scope: !4066)
!4073 = !DILocation(line: 149, column: 5, scope: !4066)
!4074 = !DILocalVariable(name: "fp", arg: 1, scope: !4075, file: !4019, line: 40, type: !4022)
!4075 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4019, file: !4019, line: 40, type: !4076, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !4078)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{null, !4022}
!4078 = !{!4074}
!4079 = !DILocation(line: 40, column: 48, scope: !4075, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 153, column: 3, scope: !4018)
!4081 = !DILocation(line: 42, column: 11, scope: !4082, inlinedAt: !4080)
!4082 = distinct !DILexicalBlock(scope: !4075, file: !4019, line: 42, column: 7)
!4083 = !DILocation(line: 42, column: 18, scope: !4082, inlinedAt: !4080)
!4084 = !DILocation(line: 42, column: 7, scope: !4075, inlinedAt: !4080)
!4085 = !DILocation(line: 44, column: 5, scope: !4082, inlinedAt: !4080)
!4086 = !DILocation(line: 155, column: 10, scope: !4018)
!4087 = !DILocation(line: 155, column: 3, scope: !4018)
!4088 = !DILocation(line: 229, column: 1, scope: !4018)
!4089 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4090, file: !4090, line: 28, type: !4091, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4134)
!4090 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!25, !4093, !4133, !25}
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !922, line: 49, baseType: !4095)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2982, line: 241, size: 1728, elements: !4096)
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4095, file: !2982, line: 242, baseType: !25, size: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4095, file: !2982, line: 247, baseType: !50, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4095, file: !2982, line: 248, baseType: !50, size: 64, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4095, file: !2982, line: 249, baseType: !50, size: 64, offset: 192)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4095, file: !2982, line: 250, baseType: !50, size: 64, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4095, file: !2982, line: 251, baseType: !50, size: 64, offset: 320)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4095, file: !2982, line: 252, baseType: !50, size: 64, offset: 384)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4095, file: !2982, line: 253, baseType: !50, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4095, file: !2982, line: 254, baseType: !50, size: 64, offset: 512)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4095, file: !2982, line: 256, baseType: !50, size: 64, offset: 576)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4095, file: !2982, line: 257, baseType: !50, size: 64, offset: 640)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4095, file: !2982, line: 258, baseType: !50, size: 64, offset: 704)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4095, file: !2982, line: 260, baseType: !4110, size: 64, offset: 768)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2982, line: 156, size: 192, elements: !4112)
!4112 = !{!4113, !4114, !4116}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4111, file: !2982, line: 157, baseType: !4110, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4111, file: !2982, line: 158, baseType: !4115, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4111, file: !2982, line: 162, baseType: !25, size: 32, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4095, file: !2982, line: 262, baseType: !4115, size: 64, offset: 832)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4095, file: !2982, line: 264, baseType: !25, size: 32, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4095, file: !2982, line: 268, baseType: !25, size: 32, offset: 928)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4095, file: !2982, line: 270, baseType: !3008, size: 64, offset: 960)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4095, file: !2982, line: 274, baseType: !93, size: 16, offset: 1024)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4095, file: !2982, line: 275, baseType: !3011, size: 8, offset: 1040)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4095, file: !2982, line: 276, baseType: !3013, size: 8, offset: 1048)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4095, file: !2982, line: 280, baseType: !3015, size: 64, offset: 1088)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4095, file: !2982, line: 289, baseType: !3018, size: 64, offset: 1152)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4095, file: !2982, line: 297, baseType: !49, size: 64, offset: 1216)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4095, file: !2982, line: 298, baseType: !49, size: 64, offset: 1280)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4095, file: !2982, line: 299, baseType: !49, size: 64, offset: 1344)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4095, file: !2982, line: 300, baseType: !49, size: 64, offset: 1408)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4095, file: !2982, line: 302, baseType: !94, size: 64, offset: 1472)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4095, file: !2982, line: 303, baseType: !25, size: 32, offset: 1536)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4095, file: !2982, line: 305, baseType: !3026, size: 160, offset: 1568)
!4133 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !922, line: 91, baseType: !3008)
!4134 = !{!4135, !4136, !4137, !4138}
!4135 = !DILocalVariable(name: "fp", arg: 1, scope: !4089, file: !4090, line: 28, type: !4093)
!4136 = !DILocalVariable(name: "offset", arg: 2, scope: !4089, file: !4090, line: 28, type: !4133)
!4137 = !DILocalVariable(name: "whence", arg: 3, scope: !4089, file: !4090, line: 28, type: !25)
!4138 = !DILocalVariable(name: "pos", scope: !4139, file: !4090, line: 116, type: !4133)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !4090, line: 112, column: 5)
!4140 = distinct !DILexicalBlock(scope: !4089, file: !4090, line: 51, column: 7)
!4141 = !DILocation(line: 28, column: 15, scope: !4089)
!4142 = !DILocation(line: 28, column: 25, scope: !4089)
!4143 = !DILocation(line: 28, column: 37, scope: !4089)
!4144 = !DILocation(line: 51, column: 11, scope: !4140)
!4145 = !DILocation(line: 51, column: 31, scope: !4140)
!4146 = !DILocation(line: 51, column: 24, scope: !4140)
!4147 = !DILocation(line: 52, column: 7, scope: !4140)
!4148 = !DILocation(line: 52, column: 14, scope: !4149)
!4149 = !DILexicalBlockFile(scope: !4140, file: !4090, discriminator: 1)
!4150 = !{!3592, !624, i64 40}
!4151 = !DILocation(line: 52, column: 35, scope: !4149)
!4152 = !{!3592, !624, i64 32}
!4153 = !DILocation(line: 52, column: 28, scope: !4149)
!4154 = !DILocation(line: 53, column: 7, scope: !4140)
!4155 = !DILocation(line: 53, column: 14, scope: !4149)
!4156 = !{!3592, !624, i64 72}
!4157 = !DILocation(line: 53, column: 28, scope: !4149)
!4158 = !DILocation(line: 51, column: 7, scope: !4159)
!4159 = !DILexicalBlockFile(scope: !4089, file: !4090, discriminator: 1)
!4160 = !DILocation(line: 116, column: 26, scope: !4139)
!4161 = !DILocation(line: 116, column: 19, scope: !4162)
!4162 = !DILexicalBlockFile(scope: !4139, file: !4090, discriminator: 1)
!4163 = !DILocation(line: 116, column: 13, scope: !4139)
!4164 = !DILocation(line: 117, column: 15, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4139, file: !4090, line: 117, column: 11)
!4166 = !DILocation(line: 117, column: 11, scope: !4139)
!4167 = !DILocation(line: 127, column: 11, scope: !4139)
!4168 = !DILocation(line: 127, column: 18, scope: !4139)
!4169 = !DILocation(line: 128, column: 11, scope: !4139)
!4170 = !DILocation(line: 128, column: 19, scope: !4139)
!4171 = !{!3592, !2272, i64 144}
!4172 = !DILocation(line: 159, column: 7, scope: !4139)
!4173 = !DILocation(line: 161, column: 10, scope: !4089)
!4174 = !DILocation(line: 161, column: 3, scope: !4089)
!4175 = !DILocation(line: 162, column: 1, scope: !4089)
