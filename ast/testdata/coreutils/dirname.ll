; ModuleID = 'coreutils-8.27/src/dirname.bc'
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
@.str.1 = private unnamed_addr constant [28 x i8] c"Usage: %s [OPTION] NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [152 x i8] c"Output each NAME with its last non-slash component and trailing slashes\0Aremoved; if NAME contains no /'s, output '.' (meaning the current directory).\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"  -z, --zero     end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [130 x i8] c"\0AExamples:\0A  %s /usr/bin/          -> \22/usr\22\0A  %s dir1/str dir2/str  -> \22dir1\22 followed by \22dir2\22\0A  %s stdio.h            -> \22.\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@main.dot = internal constant i8 46, align 1, !dbg !20
@.str.31 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), align 8, !dbg !78
@.str.16 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !83
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !88
@.str.19 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.20 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !91
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !98
@.str.34 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.35 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.36 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.40, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.46, i32 0, i32 0), i8* null], align 16, !dbg !105
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !147
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !154
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !167
@.str.11.47 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.48 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.49 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.50 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.51 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !174
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !181
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !169
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !183
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
@.str.16.72 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.73 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.74 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.75 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !189
@.str.1.86 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.96 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.99 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !198
@.str.3.100 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.101 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.102 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.103 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.104 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.105 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !599 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !603, metadata !604), !dbg !605
  %2 = icmp eq i32 %0, 0, !dbg !606
  br i1 %2, label %8, label %3, !dbg !608

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !609, !tbaa !612
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !609
  %6 = load i8*, i8** @program_name, align 8, !dbg !609, !tbaa !612
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !616
  br label %42, !dbg !618

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !620
  %10 = load i8*, i8** @program_name, align 8, !dbg !620, !tbaa !612
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !622
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !624
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !612
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !625
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !626
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626, !tbaa !612
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !627
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !628
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !612
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !629
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !630
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !612
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !631
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !632
  %25 = load i8*, i8** @program_name, align 8, !dbg !632, !tbaa !612
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* %25, i8* %25, i8* %25) #11, !dbg !633
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !44, metadata !604) #11, !dbg !634
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !44, metadata !604) #11, !dbg !634
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #11, !dbg !636
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #11, !dbg !637
  %29 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !639
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !55, metadata !604) #11, !dbg !640
  %30 = icmp eq i8* %29, null, !dbg !641
  br i1 %30, label %37, label %31, !dbg !642

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #13, !dbg !643
  %33 = icmp eq i32 %32, 0, !dbg !643
  br i1 %33, label %37, label %34, !dbg !645

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !647
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !649
  br label %37, !dbg !651

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !652
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !653
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !654
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #11, !dbg !655
  br label %42

; <label>:42:                                     ; preds = %37, %3
  tail call void @exit(i32 %0) #14, !dbg !656
  unreachable, !dbg !656
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !22 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !28, metadata !604), !dbg !657
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !29, metadata !604), !dbg !658
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !30, metadata !604), !dbg !659
  %3 = load i8*, i8** %1, align 8, !dbg !660, !tbaa !612
  tail call void @set_program_name(i8* %3) #11, !dbg !661
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !662
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !663
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !664
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !665
  br label %8, !dbg !666

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %8 ]
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !30, metadata !604), !dbg !659
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !667
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !34, metadata !604), !dbg !668
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 122, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !669

; <label>:11:                                     ; preds = %8
  tail call void @usage(i32 0) #15, !dbg !670
  unreachable, !dbg !670

; <label>:12:                                     ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !612
  %14 = load i8*, i8** @Version, align 8, !dbg !672, !tbaa !612
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* null) #11, !dbg !672
  tail call void @exit(i32 0) #14, !dbg !673
  unreachable, !dbg !672

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 1) #15, !dbg !675
  unreachable, !dbg !675

; <label>:16:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !30, metadata !604), !dbg !659
  %17 = load i32, i32* @optind, align 4, !dbg !676, !tbaa !678
  %18 = icmp slt i32 %17, %0, !dbg !680
  br i1 %18, label %19, label %23, !dbg !681

; <label>:19:                                     ; preds = %16
  %20 = icmp ne i8 %9, 0
  %21 = select i1 %20, i32 0, i32 10
  %22 = trunc i32 %21 to i8
  br label %25, !dbg !682

; <label>:23:                                     ; preds = %16
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #11, !dbg !685
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %24) #11, !dbg !687
  tail call void @usage(i32 1) #15, !dbg !689
  unreachable, !dbg !689

; <label>:25:                                     ; preds = %19, %46
  %26 = phi i32 [ %17, %19 ], [ %48, %46 ]
  %27 = sext i32 %26 to i64, !dbg !690
  %28 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !690
  %29 = load i8*, i8** %28, align 8, !dbg !690, !tbaa !612
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !32, metadata !604), !dbg !693
  %30 = tail call i64 @dir_len(i8* %29) #13, !dbg !694
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !33, metadata !604), !dbg !695
  %31 = icmp eq i64 %30, 0, !dbg !696
  tail call void @llvm.dbg.value(metadata i8* @main.dot, i64 0, metadata !32, metadata !604), !dbg !693
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !33, metadata !604), !dbg !695
  %32 = select i1 %31, i8* @main.dot, i8* %29, !dbg !698
  %33 = select i1 %31, i64 1, i64 %30, !dbg !698
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !33, metadata !604), !dbg !695
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !32, metadata !604), !dbg !693
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !699, !tbaa !612
  %35 = tail call i64 @fwrite_unlocked(i8* %32, i64 1, i64 %33, %struct._IO_FILE* %34) #11, !dbg !699
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !700, metadata !604) #11, !dbg !706
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !612
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !708
  %38 = load i8*, i8** %37, align 8, !dbg !708, !tbaa !709
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !708
  %40 = load i8*, i8** %39, align 8, !dbg !708, !tbaa !713
  %41 = icmp ult i8* %38, %40, !dbg !708
  br i1 %41, label %44, label %42, !dbg !708, !prof !714

; <label>:42:                                     ; preds = %25
  %43 = tail call i32 @__overflow(%struct._IO_FILE* %36, i32 %21) #11, !dbg !715
  br label %46, !dbg !715

; <label>:44:                                     ; preds = %25
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !717
  store i8* %45, i8** %37, align 8, !dbg !717, !tbaa !709
  store i8 %22, i8* %38, align 1, !dbg !717, !tbaa !719
  br label %46, !dbg !717

; <label>:46:                                     ; preds = %42, %44
  %47 = load i32, i32* @optind, align 4, !dbg !720, !tbaa !678
  %48 = add nsw i32 %47, 1, !dbg !720
  store i32 %48, i32* @optind, align 4, !dbg !720, !tbaa !678
  %49 = icmp slt i32 %48, %0, !dbg !722
  br i1 %49, label %25, label %50, !dbg !682, !llvm.loop !724

; <label>:50:                                     ; preds = %46
  ret i32 0, !dbg !727
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

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !728 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !730, metadata !604), !dbg !731
  store i8* %0, i8** @file_name, align 8, !dbg !732, !tbaa !612
  ret void, !dbg !733
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !734 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !738, metadata !739), !dbg !740
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !741, !tbaa !742
  ret void, !dbg !744
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !745 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !612
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !753
  %3 = icmp eq i32 %2, 0, !dbg !754
  br i1 %3, label %21, label %4, !dbg !755

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !756, !tbaa !742, !range !758
  %6 = icmp eq i8 %5, 0, !dbg !756
  %7 = tail call i32* @__errno_location() #1, !dbg !759
  br i1 %6, label %11, label %8, !dbg !761

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !762, !tbaa !678
  %10 = icmp eq i32 %9, 32, !dbg !764
  br i1 %10, label %21, label %11, !dbg !765

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !767
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !749, metadata !604), !dbg !768
  %13 = load i8*, i8** @file_name, align 8, !dbg !769, !tbaa !612
  %14 = icmp eq i8* %13, null, !dbg !769
  %15 = load i32, i32* %7, align 4, !tbaa !678
  br i1 %14, label %18, label %16, !dbg !770

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !771
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.20, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !773
  br label %19, !dbg !775

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.21, i64 0, i64 0), i8* %12) #11, !dbg !776
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !777, !tbaa !678
  tail call void @_exit(i32 %20) #14, !dbg !778
  unreachable, !dbg !778

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !779, !tbaa !612
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !781
  %24 = icmp eq i32 %23, 0, !dbg !782
  br i1 %24, label %27, label %25, !dbg !783

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !784, !tbaa !678
  tail call void @_exit(i32 %26) #14, !dbg !785
  unreachable, !dbg !785

; <label>:27:                                     ; preds = %21
  ret void, !dbg !786
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @dir_len(i8*) local_unnamed_addr #9 !dbg !787 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !792, metadata !604), !dbg !795
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !793, metadata !604), !dbg !796
  %2 = load i8, i8* %0, align 1, !dbg !797, !tbaa !719
  %3 = icmp eq i8 %2, 47, !dbg !797
  %4 = zext i1 %3 to i64, !dbg !798
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !793, metadata !604), !dbg !796
  %5 = tail call i8* @last_component(i8* %0) #13, !dbg !800
  %6 = ptrtoint i8* %5 to i64, !dbg !802
  %7 = ptrtoint i8* %0 to i64, !dbg !802
  %8 = sub i64 %6, %7, !dbg !802
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !794, metadata !604), !dbg !803
  br label %9, !dbg !804

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ]
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !794, metadata !604), !dbg !803
  %11 = icmp ult i64 %4, %10, !dbg !805
  br i1 %11, label %12, label %17, !dbg !807

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1, !dbg !809
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !809
  %15 = load i8, i8* %14, align 1, !dbg !809, !tbaa !719
  %16 = icmp eq i8 %15, 47, !dbg !809
  br i1 %16, label %9, label %17, !dbg !811, !llvm.loop !812

; <label>:17:                                     ; preds = %12, %9
  ret i64 %10, !dbg !815
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @mdir_name(i8*) local_unnamed_addr #6 !dbg !816 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !820, metadata !604), !dbg !824
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !792, metadata !604) #11, !dbg !825
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !793, metadata !604) #11, !dbg !827
  %2 = load i8, i8* %0, align 1, !dbg !828, !tbaa !719
  %3 = icmp eq i8 %2, 47, !dbg !828
  %4 = zext i1 %3 to i64, !dbg !829
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !793, metadata !604) #11, !dbg !827
  %5 = tail call i8* @last_component(i8* %0) #13, !dbg !830
  %6 = ptrtoint i8* %5 to i64, !dbg !831
  %7 = ptrtoint i8* %0 to i64, !dbg !831
  %8 = sub i64 %6, %7, !dbg !831
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !794, metadata !604) #11, !dbg !832
  br label %9, !dbg !833

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ]
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !794, metadata !604) #11, !dbg !832
  %11 = icmp ult i64 %4, %10, !dbg !834
  br i1 %11, label %12, label %17, !dbg !835

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1, !dbg !836
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !836
  %15 = load i8, i8* %14, align 1, !dbg !836, !tbaa !719
  %16 = icmp eq i8 %15, 47, !dbg !836
  br i1 %16, label %9, label %17, !dbg !837, !llvm.loop !812

; <label>:17:                                     ; preds = %9, %12
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !821, metadata !604), !dbg !838
  %18 = icmp eq i64 %10, 0, !dbg !839
  %19 = zext i1 %18 to i64, !dbg !840
  %20 = add i64 %10, 1, !dbg !841
  %21 = add i64 %20, %19, !dbg !842
  %22 = tail call noalias i8* @malloc(i64 %21) #11, !dbg !843
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !823, metadata !604), !dbg !844
  %23 = icmp eq i8* %22, null, !dbg !845
  br i1 %23, label %29, label %24, !dbg !847

; <label>:24:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %22, i8* nonnull %0, i64 %10, i32 1, i1 false), !dbg !848
  br i1 %18, label %25, label %26, !dbg !849

; <label>:25:                                     ; preds = %24
  store i8 46, i8* %22, align 1, !dbg !850, !tbaa !719
  br label %26, !dbg !852

; <label>:26:                                     ; preds = %25, %24
  %27 = phi i64 [ 1, %25 ], [ %10, %24 ]
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !821, metadata !604), !dbg !838
  %28 = getelementptr inbounds i8, i8* %22, i64 %27, !dbg !853
  store i8 0, i8* %28, align 1, !dbg !854, !tbaa !719
  br label %29, !dbg !855

; <label>:29:                                     ; preds = %17, %26
  %30 = phi i8* [ %22, %26 ], [ null, %17 ]
  ret i8* %30, !dbg !856
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #9 !dbg !857 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !860, metadata !604), !dbg !864
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !861, metadata !604), !dbg !865
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !863, metadata !604), !dbg !866
  br label %2, !dbg !867

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !861, metadata !604), !dbg !865
  %4 = load i8, i8* %3, align 1, !dbg !868, !tbaa !719
  %5 = icmp eq i8 %4, 47, !dbg !868
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !870
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !861, metadata !604), !dbg !865
  br i1 %5, label %2, label %7, !dbg !871, !llvm.loop !872

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !866

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !873
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !863, metadata !604), !dbg !866
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !862, metadata !604), !dbg !877
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !861, metadata !604), !dbg !865
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !878

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !880
  %15 = icmp eq i8 %14, 0, !dbg !880
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !861, metadata !604), !dbg !865
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !863, metadata !604), !dbg !866
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !884
  %17 = select i1 %15, i8 %12, i8 0, !dbg !884
  br label %18, !dbg !884

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !863, metadata !604), !dbg !866
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !861, metadata !604), !dbg !865
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !885
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !862, metadata !604), !dbg !877
  %22 = load i8, i8* %21, align 1, !tbaa !719
  br label %8, !dbg !887, !llvm.loop !888

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !891
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #9 !dbg !892 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !894, metadata !604), !dbg !897
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !896, metadata !604), !dbg !898
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !899
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !895, metadata !604), !dbg !901
  br label %3, !dbg !902

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !895, metadata !604), !dbg !901
  %5 = icmp ugt i64 %4, 1, !dbg !903
  br i1 %5, label %6, label %11, !dbg !906

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !907
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !907
  %9 = load i8, i8* %8, align 1, !dbg !907, !tbaa !719
  %10 = icmp eq i8 %9, 47, !dbg !907
  br i1 %10, label %3, label %11, !dbg !909, !llvm.loop !911

; <label>:11:                                     ; preds = %3, %6
  ret i64 %4, !dbg !914
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !915 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !917, metadata !604), !dbg !920
  %2 = icmp eq i8* %0, null, !dbg !921
  br i1 %2, label %3, label %6, !dbg !923

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !924, !tbaa !612
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !926
  tail call void @abort() #14, !dbg !927
  unreachable, !dbg !927

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !928
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !918, metadata !604), !dbg !929
  %8 = icmp ne i8* %7, null, !dbg !930
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !931
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !933
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !919, metadata !604), !dbg !934
  %11 = ptrtoint i8* %10 to i64, !dbg !935
  %12 = ptrtoint i8* %0 to i64, !dbg !935
  %13 = sub i64 %11, %12, !dbg !935
  %14 = icmp sgt i64 %13, 6, !dbg !937
  br i1 %14, label %15, label %24, !dbg !938

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !939
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.35, i64 0, i64 0), i64 7) #13, !dbg !939
  %18 = icmp eq i32 %17, 0, !dbg !941
  br i1 %18, label %19, label %24, !dbg !942

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !917, metadata !604), !dbg !920
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.36, i64 0, i64 0), i64 3) #13, !dbg !943
  %21 = icmp eq i32 %20, 0, !dbg !946
  br i1 %21, label %22, label %24, !dbg !947

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !948
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !917, metadata !604), !dbg !920
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !950, !tbaa !612
  br label %24, !dbg !951

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !917, metadata !604), !dbg !920
  store i8* %25, i8** @program_name, align 8, !dbg !952, !tbaa !612
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !953, !tbaa !612
  ret void, !dbg !954
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !955 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !960, metadata !604), !dbg !963
  %2 = tail call i32* @__errno_location() #1, !dbg !964
  %3 = load i32, i32* %2, align 4, !dbg !964, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !961, metadata !604), !dbg !965
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !966
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !967
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !967
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !969
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !969
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !962, metadata !604), !dbg !970
  store i32 %3, i32* %2, align 4, !dbg !971, !tbaa !678
  ret %struct.quoting_options* %8, !dbg !972
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !973 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !979, metadata !604), !dbg !980
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !981
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !981
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !982
  %5 = load i32, i32* %4, align 8, !dbg !982, !tbaa !984
  ret i32 %5, !dbg !986
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !987 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !991, metadata !604), !dbg !993
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !992, metadata !604), !dbg !994
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !995
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !995
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !996
  store i32 %1, i32* %5, align 8, !dbg !998, !tbaa !984
  ret void, !dbg !999
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1000 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1004, metadata !604), !dbg !1012
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1005, metadata !604), !dbg !1013
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1006, metadata !604), !dbg !1014
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1007, metadata !604), !dbg !1015
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1016
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1016
  %6 = lshr i8 %1, 5, !dbg !1017
  %7 = zext i8 %6 to i64, !dbg !1017
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1019
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1008, metadata !604), !dbg !1020
  %9 = and i8 %1, 31, !dbg !1021
  %10 = zext i8 %9 to i32, !dbg !1022
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1010, metadata !604), !dbg !1023
  %11 = load i32, i32* %8, align 4, !dbg !1024, !tbaa !678
  %12 = lshr i32 %11, %10, !dbg !1025
  %13 = and i32 %12, 1, !dbg !1026
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1011, metadata !604), !dbg !1027
  %14 = and i32 %2, 1, !dbg !1028
  %15 = xor i32 %13, %14, !dbg !1029
  %16 = shl i32 %15, %10, !dbg !1030
  %17 = xor i32 %16, %11, !dbg !1031
  store i32 %17, i32* %8, align 4, !dbg !1031, !tbaa !678
  ret i32 %13, !dbg !1032
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1033 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1037, metadata !604), !dbg !1040
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1038, metadata !604), !dbg !1041
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1042
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1037, metadata !604), !dbg !1040
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1044
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1037, metadata !604), !dbg !1040
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1045
  %6 = load i32, i32* %5, align 4, !dbg !1045, !tbaa !1046
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1039, metadata !604), !dbg !1047
  store i32 %1, i32* %5, align 4, !dbg !1048, !tbaa !1046
  ret i32 %6, !dbg !1049
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1050 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1054, metadata !604), !dbg !1057
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1055, metadata !604), !dbg !1058
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1056, metadata !604), !dbg !1059
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1060
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1054, metadata !604), !dbg !1057
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1062
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1054, metadata !604), !dbg !1057
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1063
  store i32 10, i32* %6, align 8, !dbg !1064, !tbaa !984
  %7 = icmp ne i8* %1, null, !dbg !1065
  %8 = icmp ne i8* %2, null, !dbg !1067
  %9 = and i1 %7, %8, !dbg !1069
  br i1 %9, label %11, label %10, !dbg !1069

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1070
  unreachable, !dbg !1070

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1071
  store i8* %1, i8** %12, align 8, !dbg !1072, !tbaa !1073
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1074
  store i8* %2, i8** %13, align 8, !dbg !1075, !tbaa !1076
  ret void, !dbg !1077
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1078 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1082, metadata !604), !dbg !1090
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1083, metadata !604), !dbg !1091
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1084, metadata !604), !dbg !1092
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1085, metadata !604), !dbg !1093
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1086, metadata !604), !dbg !1094
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1095
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1095
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1087, metadata !604), !dbg !1096
  %8 = tail call i32* @__errno_location() #1, !dbg !1097
  %9 = load i32, i32* %8, align 4, !dbg !1097, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1088, metadata !604), !dbg !1098
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1099
  %11 = load i32, i32* %10, align 8, !dbg !1099, !tbaa !984
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1100
  %13 = load i32, i32* %12, align 4, !dbg !1100, !tbaa !1046
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1101
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1102
  %16 = load i8*, i8** %15, align 8, !dbg !1102, !tbaa !1073
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1103
  %18 = load i8*, i8** %17, align 8, !dbg !1103, !tbaa !1076
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1104
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1089, metadata !604), !dbg !1105
  store i32 %9, i32* %8, align 4, !dbg !1106, !tbaa !678
  ret i64 %19, !dbg !1107
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1108 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1114, metadata !604), !dbg !1175
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1115, metadata !604), !dbg !1176
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1116, metadata !604), !dbg !1177
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1117, metadata !604), !dbg !1178
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1118, metadata !604), !dbg !1179
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1119, metadata !604), !dbg !1180
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1120, metadata !604), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1121, metadata !604), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1122, metadata !604), !dbg !1183
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1124, metadata !604), !dbg !1184
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1125, metadata !604), !dbg !1185
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1126, metadata !604), !dbg !1186
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1127, metadata !604), !dbg !1187
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1128, metadata !604), !dbg !1188
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1189
  %14 = icmp eq i64 %13, 1, !dbg !1190
  %15 = lshr i32 %5, 1, !dbg !1191
  %16 = trunc i32 %15 to i8, !dbg !1191
  %17 = and i8 %16, 1, !dbg !1191
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1130, metadata !604), !dbg !1191
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1131, metadata !604), !dbg !1192
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1132, metadata !604), !dbg !1193
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1133, metadata !604), !dbg !1194
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1195

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1115, metadata !604), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1133, metadata !604), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1132, metadata !604), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1130, metadata !604), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1117, metadata !604), !dbg !1178
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1128, metadata !604), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1127, metadata !604), !dbg !1187
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1126, metadata !604), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1125, metadata !604), !dbg !1185
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1122, metadata !604), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1121, metadata !604), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1118, metadata !604), !dbg !1179
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
  ], !dbg !1196

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1118, metadata !604), !dbg !1179
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1130, metadata !604), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1130, metadata !604), !dbg !1191
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1118, metadata !604), !dbg !1179
  br label %95, !dbg !1197

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1130, metadata !604), !dbg !1191
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1118, metadata !604), !dbg !1179
  %43 = and i8 %36, 1, !dbg !1199
  %44 = icmp eq i8 %43, 0, !dbg !1199
  br i1 %44, label %45, label %95, !dbg !1197

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1201
  br i1 %46, label %95, label %47, !dbg !1205

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1207, !tbaa !719
  br label %95, !dbg !1207

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.47, i64 0, i64 0), i32 %28), !dbg !1209
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1121, metadata !604), !dbg !1182
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), i32 %28), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1122, metadata !604), !dbg !1183
  br label %51, !dbg !1214

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1122, metadata !604), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1121, metadata !604), !dbg !1182
  %54 = and i8 %36, 1, !dbg !1215
  %55 = icmp eq i8 %54, 0, !dbg !1215
  br i1 %55, label %56, label %73, !dbg !1217

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1126, metadata !604), !dbg !1186
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1124, metadata !604), !dbg !1184
  %57 = load i8, i8* %52, align 1, !dbg !1218, !tbaa !719
  %58 = icmp eq i8 %57, 0, !dbg !1222
  br i1 %58, label %73, label %59, !dbg !1222

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1224

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1224
  br i1 %64, label %65, label %67, !dbg !1228

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1230
  store i8 %61, i8* %66, align 1, !dbg !1230, !tbaa !719
  br label %67, !dbg !1230

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1124, metadata !604), !dbg !1184
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1234
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1126, metadata !604), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1126, metadata !604), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1124, metadata !604), !dbg !1184
  %70 = load i8, i8* %69, align 1, !dbg !1218, !tbaa !719
  %71 = icmp eq i8 %70, 0, !dbg !1222
  br i1 %71, label %72, label %60, !dbg !1222, !llvm.loop !1236

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1184

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1128, metadata !604), !dbg !1188
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1126, metadata !604), !dbg !1186
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1127, metadata !604), !dbg !1187
  br label %95, !dbg !1240

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1128, metadata !604), !dbg !1188
  br label %77, !dbg !1241

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1128, metadata !604), !dbg !1188
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1130, metadata !604), !dbg !1191
  br label %79, !dbg !1242

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1130, metadata !604), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1128, metadata !604), !dbg !1188
  %82 = and i8 %81, 1, !dbg !1243
  %83 = icmp eq i8 %82, 0, !dbg !1243
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1128, metadata !604), !dbg !1188
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1245
  br label %85, !dbg !1245

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1130, metadata !604), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1128, metadata !604), !dbg !1188
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1118, metadata !604), !dbg !1179
  %88 = and i8 %87, 1, !dbg !1246
  %89 = icmp eq i8 %88, 0, !dbg !1246
  br i1 %89, label %90, label %95, !dbg !1248

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1249
  br i1 %91, label %95, label %92, !dbg !1253

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1255, !tbaa !719
  br label %95, !dbg !1255

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1130, metadata !604), !dbg !1191
  br label %95, !dbg !1257

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1258
  unreachable, !dbg !1258

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1130, metadata !604), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1128, metadata !604), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1127, metadata !604), !dbg !1187
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1126, metadata !604), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1122, metadata !604), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1121, metadata !604), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1118, metadata !604), !dbg !1179
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1123, metadata !604), !dbg !1259
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
  br label %123, !dbg !1260

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1115, metadata !604), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1133, metadata !604), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1132, metadata !604), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1117, metadata !604), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1125, metadata !604), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1123, metadata !604), !dbg !1259
  %132 = icmp eq i64 %127, -1, !dbg !1261
  br i1 %132, label %135, label %133, !dbg !1263

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1264
  br i1 %134, label %597, label %139, !dbg !1266

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1268
  %137 = load i8, i8* %136, align 1, !dbg !1268, !tbaa !719
  %138 = icmp eq i8 %137, 0, !dbg !1270
  br i1 %138, label %597, label %139, !dbg !1266

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1139, metadata !604), !dbg !1271
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1140, metadata !604), !dbg !1272
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1141, metadata !604), !dbg !1273
  br i1 %109, label %140, label %155, !dbg !1274

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1276
  %142 = and i1 %110, %132, !dbg !1278
  br i1 %142, label %143, label %145, !dbg !1278

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1117, metadata !604), !dbg !1178
  br label %145, !dbg !1280

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1117, metadata !604), !dbg !1178
  %147 = icmp ugt i64 %141, %146, !dbg !1282
  br i1 %147, label %155, label %148, !dbg !1284

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1285
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1286
  %151 = icmp ne i32 %150, 0, !dbg !1287
  %152 = or i1 %151, %112, !dbg !1287
  %153 = xor i1 %151, true, !dbg !1287
  %154 = zext i1 %153 to i8, !dbg !1287
  br i1 %152, label %155, label %644, !dbg !1287

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1139, metadata !604), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1117, metadata !604), !dbg !1178
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1289
  %159 = load i8, i8* %158, align 1, !dbg !1289, !tbaa !719
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1134, metadata !604), !dbg !1290
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
  ], !dbg !1291

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1292

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1293

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1140, metadata !604), !dbg !1272
  %163 = and i8 %128, 1, !dbg !1298
  %164 = icmp eq i8 %163, 0, !dbg !1298
  %165 = and i1 %114, %164, !dbg !1301
  br i1 %165, label %166, label %182, !dbg !1301

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1303
  br i1 %167, label %168, label %170, !dbg !1308

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1310
  store i8 39, i8* %169, align 1, !dbg !1310, !tbaa !719
  br label %170, !dbg !1310

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1124, metadata !604), !dbg !1184
  %172 = icmp ult i64 %171, %131, !dbg !1314
  br i1 %172, label %173, label %175, !dbg !1318

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1320
  store i8 36, i8* %174, align 1, !dbg !1320, !tbaa !719
  br label %175, !dbg !1320

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1124, metadata !604), !dbg !1184
  %177 = icmp ult i64 %176, %131, !dbg !1324
  br i1 %177, label %178, label %180, !dbg !1328

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1330
  store i8 39, i8* %179, align 1, !dbg !1330, !tbaa !719
  br label %180, !dbg !1330

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1131, metadata !604), !dbg !1192
  br label %182, !dbg !1334

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1124, metadata !604), !dbg !1184
  %185 = icmp ult i64 %183, %131, !dbg !1336
  br i1 %185, label %186, label %188, !dbg !1340

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1342
  store i8 92, i8* %187, align 1, !dbg !1342, !tbaa !719
  br label %188, !dbg !1342

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1124, metadata !604), !dbg !1184
  br i1 %106, label %190, label %476, !dbg !1346

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1348
  %192 = icmp ult i64 %191, %156, !dbg !1350
  br i1 %192, label %193, label %476, !dbg !1351

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1352
  %195 = load i8, i8* %194, align 1, !dbg !1352, !tbaa !719
  %196 = add i8 %195, -48, !dbg !1354
  %197 = icmp ult i8 %196, 10, !dbg !1354
  br i1 %197, label %198, label %476, !dbg !1354

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1355
  br i1 %199, label %200, label %202, !dbg !1360

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1362
  store i8 48, i8* %201, align 1, !dbg !1362, !tbaa !719
  br label %202, !dbg !1362

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1124, metadata !604), !dbg !1184
  %204 = icmp ult i64 %203, %131, !dbg !1366
  br i1 %204, label %205, label %207, !dbg !1370

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1372
  store i8 48, i8* %206, align 1, !dbg !1372, !tbaa !719
  br label %207, !dbg !1372

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1124, metadata !604), !dbg !1184
  br label %476, !dbg !1376

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1377

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1378

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1379

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1381

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1383
  %215 = icmp ult i64 %214, %156, !dbg !1385
  br i1 %215, label %216, label %476, !dbg !1386

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1387
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1389
  %219 = load i8, i8* %218, align 1, !dbg !1389, !tbaa !719
  %220 = icmp eq i8 %219, 63, !dbg !1390
  br i1 %220, label %221, label %476, !dbg !1391

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1393
  %223 = load i8, i8* %222, align 1, !dbg !1393, !tbaa !719
  %224 = sext i8 %223 to i32, !dbg !1393
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
  ], !dbg !1394

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1395

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1134, metadata !604), !dbg !1290
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1123, metadata !604), !dbg !1259
  %227 = icmp ult i64 %125, %131, !dbg !1397
  br i1 %227, label %228, label %230, !dbg !1401

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1403
  store i8 63, i8* %229, align 1, !dbg !1403, !tbaa !719
  br label %230, !dbg !1403

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1124, metadata !604), !dbg !1184
  %232 = icmp ult i64 %231, %131, !dbg !1407
  br i1 %232, label %233, label %235, !dbg !1411

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1413
  store i8 34, i8* %234, align 1, !dbg !1413, !tbaa !719
  br label %235, !dbg !1413

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1124, metadata !604), !dbg !1184
  %237 = icmp ult i64 %236, %131, !dbg !1417
  br i1 %237, label %238, label %240, !dbg !1421

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1423
  store i8 34, i8* %239, align 1, !dbg !1423, !tbaa !719
  br label %240, !dbg !1423

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1425
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1124, metadata !604), !dbg !1184
  %242 = icmp ult i64 %241, %131, !dbg !1427
  br i1 %242, label %243, label %245, !dbg !1431

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1433
  store i8 63, i8* %244, align 1, !dbg !1433, !tbaa !719
  br label %245, !dbg !1433

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1124, metadata !604), !dbg !1184
  br label %476, !dbg !1437

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1138, metadata !604), !dbg !1438
  br label %257, !dbg !1439

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1138, metadata !604), !dbg !1438
  br label %257, !dbg !1440

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1138, metadata !604), !dbg !1438
  br label %255, !dbg !1441

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1138, metadata !604), !dbg !1438
  br label %255, !dbg !1442

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1138, metadata !604), !dbg !1438
  br label %257, !dbg !1443

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1138, metadata !604), !dbg !1438
  br i1 %114, label %253, label %254, !dbg !1444

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1445

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1448

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1138, metadata !604), !dbg !1438
  br i1 %118, label %257, label %644, !dbg !1450

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1138, metadata !604), !dbg !1438
  br i1 %105, label %503, label %476, !dbg !1452

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1453
  br i1 %260, label %261, label %266, !dbg !1455

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1456, !tbaa !719
  %263 = icmp ne i8 %262, 0, !dbg !1458
  %264 = icmp ne i64 %124, 0, !dbg !1459
  %265 = or i1 %264, %263, !dbg !1461
  br i1 %265, label %476, label %272, !dbg !1461

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1462
  %268 = icmp ne i64 %124, 0, !dbg !1459
  %269 = or i1 %268, %267, !dbg !1464
  br i1 %269, label %476, label %272, !dbg !1464

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1459
  br i1 %271, label %272, label %476, !dbg !1466

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1141, metadata !604), !dbg !1273
  br label %273, !dbg !1467

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1141, metadata !604), !dbg !1273
  br i1 %118, label %476, label %644, !dbg !1468

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1132, metadata !604), !dbg !1193
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1141, metadata !604), !dbg !1273
  br i1 %114, label %276, label %476, !dbg !1470

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1471

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1474
  %279 = icmp ne i64 %126, 0, !dbg !1476
  %280 = or i1 %279, %278, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1125, metadata !604), !dbg !1185
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1115, metadata !604), !dbg !1176
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1478
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1115, metadata !604), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1125, metadata !604), !dbg !1185
  %283 = icmp ult i64 %125, %282, !dbg !1479
  br i1 %283, label %284, label %286, !dbg !1483

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1485
  store i8 39, i8* %285, align 1, !dbg !1485, !tbaa !719
  br label %286, !dbg !1485

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1124, metadata !604), !dbg !1184
  %288 = icmp ult i64 %287, %282, !dbg !1489
  br i1 %288, label %289, label %291, !dbg !1493

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1495
  store i8 92, i8* %290, align 1, !dbg !1495, !tbaa !719
  br label %291, !dbg !1495

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1124, metadata !604), !dbg !1184
  %293 = icmp ult i64 %292, %282, !dbg !1499
  br i1 %293, label %294, label %296, !dbg !1503

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1505
  store i8 39, i8* %295, align 1, !dbg !1505, !tbaa !719
  br label %296, !dbg !1505

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1131, metadata !604), !dbg !1192
  br label %476, !dbg !1509

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1510

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1142, metadata !604), !dbg !1511
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1512
  %301 = load i16*, i16** %300, align 8, !dbg !1512, !tbaa !612
  %302 = zext i8 %159 to i64, !dbg !1512
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1512
  %304 = load i16, i16* %303, align 2, !dbg !1512, !tbaa !1514
  %305 = lshr i16 %304, 14, !dbg !1515
  %306 = trunc i16 %305 to i8, !dbg !1515
  %307 = and i8 %306, 1, !dbg !1515
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1145, metadata !604), !dbg !1516
  br label %368, !dbg !1517

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !1518
  store i64 0, i64* %10, align 8, !dbg !1519
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1142, metadata !604), !dbg !1511
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1145, metadata !604), !dbg !1516
  %309 = icmp eq i64 %156, -1, !dbg !1520
  br i1 %309, label %310, label %312, !dbg !1522, !llvm.loop !1523

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1117, metadata !604), !dbg !1178
  br label %312, !dbg !1527, !llvm.loop !1523

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1516

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1145, metadata !604), !dbg !1516
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1142, metadata !604), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1117, metadata !604), !dbg !1178
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !1528
  %317 = add i64 %315, %124, !dbg !1529
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1530
  %319 = sub i64 %313, %317, !dbg !1531
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1146, metadata !1532), !dbg !1533
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1161, metadata !1532), !dbg !1534
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1164, metadata !604), !dbg !1536
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1537

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1142, metadata !604), !dbg !1511
  %322 = icmp ugt i64 %313, %317, !dbg !1538
  br i1 %322, label %323, label %351, !dbg !1541

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1542

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1542
  %328 = load i8, i8* %327, align 1, !dbg !1542, !tbaa !719
  %329 = icmp eq i8 %328, 0, !dbg !1544
  br i1 %329, label %348, label %330, !dbg !1545

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1142, metadata !604), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1142, metadata !604), !dbg !1511
  %332 = add i64 %331, %124, !dbg !1548
  %333 = icmp ult i64 %332, %313, !dbg !1538
  br i1 %333, label %324, label %348, !dbg !1541, !llvm.loop !1549

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1551
  %336 = and i1 %116, %335, !dbg !1555
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1165, metadata !604), !dbg !1556
  br i1 %336, label %337, label %355, !dbg !1555

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1557

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1557
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1558
  %342 = load i8, i8* %341, align 1, !dbg !1558, !tbaa !719
  %343 = sext i8 %342 to i32, !dbg !1558
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1559

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1165, metadata !604), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1165, metadata !604), !dbg !1556
  %346 = icmp ult i64 %345, %320, !dbg !1551
  br i1 %346, label %338, label %354, !dbg !1562, !llvm.loop !1564

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1516

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1516

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1516

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1145, metadata !604), !dbg !1516
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1142, metadata !604), !dbg !1511
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !1567
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1568

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1568, !tbaa !678
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1161, metadata !604), !dbg !1534
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !1570
  %358 = icmp eq i32 %357, 0, !dbg !1570
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1145, metadata !604), !dbg !1516
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1571
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1145, metadata !604), !dbg !1516
  %360 = add i64 %320, %315, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1142, metadata !604), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1145, metadata !604), !dbg !1516
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1142, metadata !604), !dbg !1511
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !1567
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1146, metadata !1532), !dbg !1533
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1573
  %362 = icmp eq i32 %361, 0, !dbg !1574
  br i1 %362, label %314, label %363, !dbg !1575, !llvm.loop !1523

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1577

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !1577
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1145, metadata !604), !dbg !1516
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1142, metadata !604), !dbg !1511
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !1567
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !1577
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1145, metadata !604), !dbg !1516
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1142, metadata !604), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1117, metadata !604), !dbg !1178
  %372 = and i8 %371, 1, !dbg !1578
  %373 = icmp ne i8 %372, 0, !dbg !1578
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1141, metadata !604), !dbg !1273
  %374 = icmp ult i64 %370, 2, !dbg !1579
  %375 = or i1 %373, %113, !dbg !1580
  %376 = and i1 %374, %375, !dbg !1582
  br i1 %376, label %476, label %377, !dbg !1582

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1172, metadata !604), !dbg !1584
  br label %379, !dbg !1585

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1140, metadata !604), !dbg !1272
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1139, metadata !604), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1134, metadata !604), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1123, metadata !604), !dbg !1259
  br i1 %375, label %432, label %386, !dbg !1586

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1591

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1140, metadata !604), !dbg !1272
  %388 = and i8 %382, 1, !dbg !1595
  %389 = icmp eq i8 %388, 0, !dbg !1595
  %390 = and i1 %114, %389, !dbg !1598
  br i1 %390, label %391, label %407, !dbg !1598

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1600
  br i1 %392, label %393, label %395, !dbg !1605

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1607
  store i8 39, i8* %394, align 1, !dbg !1607, !tbaa !719
  br label %395, !dbg !1607

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1124, metadata !604), !dbg !1184
  %397 = icmp ult i64 %396, %131, !dbg !1611
  br i1 %397, label %398, label %400, !dbg !1615

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1617
  store i8 36, i8* %399, align 1, !dbg !1617, !tbaa !719
  br label %400, !dbg !1617

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1124, metadata !604), !dbg !1184
  %402 = icmp ult i64 %401, %131, !dbg !1621
  br i1 %402, label %403, label %405, !dbg !1625

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1627
  store i8 39, i8* %404, align 1, !dbg !1627, !tbaa !719
  br label %405, !dbg !1627

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1131, metadata !604), !dbg !1192
  br label %407, !dbg !1631

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1124, metadata !604), !dbg !1184
  %410 = icmp ult i64 %408, %131, !dbg !1633
  br i1 %410, label %411, label %413, !dbg !1637

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1639
  store i8 92, i8* %412, align 1, !dbg !1639, !tbaa !719
  br label %413, !dbg !1639

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1124, metadata !604), !dbg !1184
  %415 = icmp ult i64 %414, %131, !dbg !1643
  br i1 %415, label %416, label %420, !dbg !1647

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1649
  %418 = or i8 %417, 48, !dbg !1649
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1649
  store i8 %418, i8* %419, align 1, !dbg !1649, !tbaa !719
  br label %420, !dbg !1649

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1124, metadata !604), !dbg !1184
  %422 = icmp ult i64 %421, %131, !dbg !1653
  br i1 %422, label %423, label %428, !dbg !1657

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1659
  %425 = and i8 %424, 7, !dbg !1659
  %426 = or i8 %425, 48, !dbg !1659
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1659
  store i8 %426, i8* %427, align 1, !dbg !1659, !tbaa !719
  br label %428, !dbg !1659

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1124, metadata !604), !dbg !1184
  %430 = and i8 %383, 7, !dbg !1663
  %431 = or i8 %430, 48, !dbg !1664
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1134, metadata !604), !dbg !1290
  br label %441, !dbg !1665

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1666
  %434 = icmp eq i8 %433, 0, !dbg !1666
  br i1 %434, label %441, label %435, !dbg !1668

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1669
  br i1 %436, label %437, label %439, !dbg !1674

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1676
  store i8 92, i8* %438, align 1, !dbg !1676, !tbaa !719
  br label %439, !dbg !1676

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1139, metadata !604), !dbg !1271
  br label %441, !dbg !1680

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1140, metadata !604), !dbg !1272
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1139, metadata !604), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1134, metadata !604), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1124, metadata !604), !dbg !1184
  %447 = add i64 %380, 1, !dbg !1681
  %448 = icmp ugt i64 %378, %447, !dbg !1683
  br i1 %448, label %449, label %541, !dbg !1684

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1685
  %451 = icmp ne i8 %450, 0, !dbg !1685
  %452 = and i8 %446, 1, !dbg !1689
  %453 = icmp eq i8 %452, 0, !dbg !1689
  %454 = and i1 %451, %453, !dbg !1685
  br i1 %454, label %455, label %466, !dbg !1685

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1691
  br i1 %456, label %457, label %459, !dbg !1696

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1698
  store i8 39, i8* %458, align 1, !dbg !1698, !tbaa !719
  br label %459, !dbg !1698

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1700
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1124, metadata !604), !dbg !1184
  %461 = icmp ult i64 %460, %131, !dbg !1702
  br i1 %461, label %462, label %464, !dbg !1706

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1708
  store i8 39, i8* %463, align 1, !dbg !1708, !tbaa !719
  br label %464, !dbg !1708

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1131, metadata !604), !dbg !1192
  br label %466, !dbg !1712

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1124, metadata !604), !dbg !1184
  %469 = icmp ult i64 %467, %131, !dbg !1714
  br i1 %469, label %470, label %472, !dbg !1718

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1720
  store i8 %444, i8* %471, align 1, !dbg !1720, !tbaa !719
  br label %472, !dbg !1720

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1123, metadata !604), !dbg !1259
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1724
  %475 = load i8, i8* %474, align 1, !dbg !1724, !tbaa !719
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1134, metadata !604), !dbg !1290
  br label %379, !dbg !1725, !llvm.loop !1727

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1115, metadata !604), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1141, metadata !604), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1140, metadata !604), !dbg !1272
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1139, metadata !604), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1134, metadata !604), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1132, metadata !604), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1117, metadata !604), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1125, metadata !604), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1123, metadata !604), !dbg !1259
  br i1 %107, label %488, label %487, !dbg !1730

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1732

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1733

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1734
  %491 = zext i8 %490 to i64, !dbg !1734
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1736
  %493 = load i32, i32* %492, align 4, !dbg !1736, !tbaa !678
  %494 = and i8 %483, 31, !dbg !1737
  %495 = zext i8 %494 to i32, !dbg !1738
  %496 = shl i32 1, %495, !dbg !1739
  %497 = and i32 %493, %496, !dbg !1739
  %498 = icmp eq i32 %497, 0, !dbg !1739
  %499 = icmp eq i8 %157, 0, !dbg !1740
  %500 = and i1 %499, %498, !dbg !1741
  br i1 %500, label %542, label %503, !dbg !1741

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1740
  br i1 %502, label %542, label %503, !dbg !1742

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1115, metadata !604), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1141, metadata !604), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1134, metadata !604), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1132, metadata !604), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1117, metadata !604), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1125, metadata !604), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1123, metadata !604), !dbg !1259
  br i1 %112, label %513, label %644, !dbg !1744

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1140, metadata !604), !dbg !1272
  %514 = and i8 %508, 1, !dbg !1747
  %515 = icmp eq i8 %514, 0, !dbg !1747
  %516 = and i1 %114, %515, !dbg !1750
  br i1 %516, label %517, label %533, !dbg !1750

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1752
  br i1 %518, label %519, label %521, !dbg !1757

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1759
  store i8 39, i8* %520, align 1, !dbg !1759, !tbaa !719
  br label %521, !dbg !1759

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1124, metadata !604), !dbg !1184
  %523 = icmp ult i64 %522, %512, !dbg !1763
  br i1 %523, label %524, label %526, !dbg !1767

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1769
  store i8 36, i8* %525, align 1, !dbg !1769, !tbaa !719
  br label %526, !dbg !1769

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1124, metadata !604), !dbg !1184
  %528 = icmp ult i64 %527, %512, !dbg !1773
  br i1 %528, label %529, label %531, !dbg !1777

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1779
  store i8 39, i8* %530, align 1, !dbg !1779, !tbaa !719
  br label %531, !dbg !1779

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1131, metadata !604), !dbg !1192
  br label %533, !dbg !1783

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1124, metadata !604), !dbg !1184
  %536 = icmp ult i64 %534, %512, !dbg !1785
  br i1 %536, label %537, label %539, !dbg !1789

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1791
  store i8 92, i8* %538, align 1, !dbg !1791, !tbaa !719
  br label %539, !dbg !1791

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1115, metadata !604), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1141, metadata !604), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1140, metadata !604), !dbg !1272
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1134, metadata !604), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1132, metadata !604), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1117, metadata !604), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1125, metadata !604), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1123, metadata !604), !dbg !1259
  br label %569, !dbg !1795

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1176

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1115, metadata !604), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1141, metadata !604), !dbg !1273
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1140, metadata !604), !dbg !1272
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1134, metadata !604), !dbg !1290
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1132, metadata !604), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1117, metadata !604), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1125, metadata !604), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1123, metadata !604), !dbg !1259
  %553 = and i8 %547, 1, !dbg !1795
  %554 = icmp ne i8 %553, 0, !dbg !1795
  %555 = and i8 %550, 1, !dbg !1799
  %556 = icmp eq i8 %555, 0, !dbg !1799
  %557 = and i1 %554, %556, !dbg !1795
  br i1 %557, label %558, label %569, !dbg !1795

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1801
  br i1 %559, label %560, label %562, !dbg !1806

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1808
  store i8 39, i8* %561, align 1, !dbg !1808, !tbaa !719
  br label %562, !dbg !1808

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1124, metadata !604), !dbg !1184
  %564 = icmp ult i64 %563, %552, !dbg !1812
  br i1 %564, label %565, label %567, !dbg !1816

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1818
  store i8 39, i8* %566, align 1, !dbg !1818, !tbaa !719
  br label %567, !dbg !1818

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1124, metadata !604), !dbg !1184
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1131, metadata !604), !dbg !1192
  br label %569, !dbg !1822

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1131, metadata !604), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1124, metadata !604), !dbg !1184
  %579 = icmp ult i64 %577, %570, !dbg !1824
  br i1 %579, label %580, label %582, !dbg !1828

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1830
  store i8 %572, i8* %581, align 1, !dbg !1830, !tbaa !719
  br label %582, !dbg !1830

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1124, metadata !604), !dbg !1184
  %584 = and i8 %571, 1, !dbg !1834
  %585 = icmp eq i8 %584, 0, !dbg !1834
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1133, metadata !604), !dbg !1194
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1836
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1133, metadata !604), !dbg !1194
  br label %587, !dbg !1837

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1123, metadata !604), !dbg !1259
  br label %123, !dbg !1840, !llvm.loop !1841

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1844
  %600 = and i1 %114, %599, !dbg !1846
  %601 = xor i1 %600, true, !dbg !1846
  %602 = or i1 %112, %601, !dbg !1846
  br i1 %602, label %603, label %648, !dbg !1846

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1847
  %605 = xor i1 %604, true, !dbg !1847
  %606 = and i8 %129, 1, !dbg !1849
  %607 = icmp eq i8 %606, 0, !dbg !1849
  %608 = or i1 %607, %605, !dbg !1847
  br i1 %608, label %618, label %609, !dbg !1847

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1851
  %611 = icmp eq i8 %610, 0, !dbg !1851
  br i1 %611, label %614, label %612, !dbg !1854

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1855
  br label %659, !dbg !1856

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1857
  %616 = icmp ne i64 %126, 0, !dbg !1859
  %617 = and i1 %616, %615, !dbg !1861
  br i1 %617, label %27, label %618, !dbg !1861

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1862
  %620 = and i1 %619, %112, !dbg !1864
  br i1 %620, label %621, label %638, !dbg !1864

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1126, metadata !604), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1124, metadata !604), !dbg !1184
  %622 = load i8, i8* %100, align 1, !dbg !1865, !tbaa !719
  %623 = icmp eq i8 %622, 0, !dbg !1869
  br i1 %623, label %638, label %624, !dbg !1869

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1871

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1871
  br i1 %629, label %630, label %632, !dbg !1875

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1877
  store i8 %626, i8* %631, align 1, !dbg !1877, !tbaa !719
  br label %632, !dbg !1877

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1124, metadata !604), !dbg !1184
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1881
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1126, metadata !604), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1126, metadata !604), !dbg !1186
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1124, metadata !604), !dbg !1184
  %635 = load i8, i8* %634, align 1, !dbg !1865, !tbaa !719
  %636 = icmp eq i8 %635, 0, !dbg !1869
  br i1 %636, label %637, label %625, !dbg !1869, !llvm.loop !1883

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1184

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1124, metadata !604), !dbg !1184
  %640 = icmp ult i64 %639, %131, !dbg !1886
  br i1 %640, label %641, label %659, !dbg !1888

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1889
  store i8 0, i8* %642, align 1, !dbg !1890, !tbaa !719
  br label %659, !dbg !1889

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1176

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1176

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1176

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1115, metadata !604), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1117, metadata !604), !dbg !1178
  %653 = icmp ne i32 %650, 2, !dbg !1891
  %654 = icmp eq i8 %104, 0, !dbg !1893
  %655 = or i1 %653, %654, !dbg !1895
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1118, metadata !604), !dbg !1179
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1118, metadata !604), !dbg !1179
  %657 = and i32 %5, -3, !dbg !1896
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1897
  br label %659, !dbg !1898

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1899
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1900 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1904, metadata !604), !dbg !1908
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1905, metadata !604), !dbg !1909
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1910
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1906, metadata !604), !dbg !1911
  %4 = icmp eq i8* %3, %0, !dbg !1912
  br i1 %4, label %5, label %75, !dbg !1914

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1915
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1907, metadata !604), !dbg !1916
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1917, metadata !604), !dbg !1933
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1931, metadata !604), !dbg !1936
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1932, metadata !604), !dbg !1937
  %7 = load i8, i8* %6, align 1, !tbaa !719
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1938
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1938

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1941, metadata !604), !dbg !1955
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1953, metadata !604), !dbg !1959
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1954, metadata !604), !dbg !1960
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !719
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1961
  %15 = icmp eq i32 %14, 84, !dbg !1961
  br i1 %15, label %16, label %72, !dbg !1961

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1964, metadata !604), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1975, metadata !604), !dbg !1981
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1976, metadata !604), !dbg !1982
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !719
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1983
  %21 = icmp eq i32 %20, 70, !dbg !1983
  br i1 %21, label %22, label %72, !dbg !1983

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1986, metadata !604), !dbg !1998
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1996, metadata !604), !dbg !2002
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1997, metadata !604), !dbg !2003
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !719
  %25 = icmp eq i8 %24, 45, !dbg !2004
  br i1 %25, label %26, label %72, !dbg !2007

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2009, metadata !604), !dbg !2020
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2018, metadata !604), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2019, metadata !604), !dbg !2025
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !719
  %29 = icmp eq i8 %28, 56, !dbg !2026
  br i1 %29, label %30, label %72, !dbg !2029

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2031, metadata !604), !dbg !2041
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2039, metadata !604), !dbg !2045
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2040, metadata !604), !dbg !2046
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !719
  %33 = icmp eq i8 %32, 0, !dbg !2047
  br i1 %33, label %34, label %72, !dbg !2050

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2052, !tbaa !719
  %36 = icmp eq i8 %35, 96, !dbg !2053
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.50, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.51, i64 0, i64 0), !dbg !2052
  br label %75, !dbg !2054

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1941, metadata !604), !dbg !2055
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1953, metadata !604), !dbg !2059
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1954, metadata !604), !dbg !2060
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !719
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2061
  %43 = icmp eq i32 %42, 66, !dbg !2061
  br i1 %43, label %44, label %72, !dbg !2061

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1964, metadata !604), !dbg !2062
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1975, metadata !604), !dbg !2064
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1976, metadata !604), !dbg !2065
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !719
  %47 = icmp eq i8 %46, 49, !dbg !2066
  br i1 %47, label %48, label %72, !dbg !2068

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1986, metadata !604), !dbg !2070
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1996, metadata !604), !dbg !2072
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1997, metadata !604), !dbg !2073
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !719
  %51 = icmp eq i8 %50, 56, !dbg !2074
  br i1 %51, label %52, label %72, !dbg !2075

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2009, metadata !604), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2018, metadata !604), !dbg !2078
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2019, metadata !604), !dbg !2079
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !719
  %55 = icmp eq i8 %54, 48, !dbg !2080
  br i1 %55, label %56, label %72, !dbg !2081

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2031, metadata !604), !dbg !2082
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2039, metadata !604), !dbg !2084
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2040, metadata !604), !dbg !2085
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !719
  %59 = icmp eq i8 %58, 51, !dbg !2086
  br i1 %59, label %60, label %72, !dbg !2087

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2088, metadata !604), !dbg !2097
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2095, metadata !604), !dbg !2101
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2096, metadata !604), !dbg !2102
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !719
  %63 = icmp eq i8 %62, 48, !dbg !2103
  br i1 %63, label %64, label %72, !dbg !2106

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2108, metadata !604), !dbg !2116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2114, metadata !604), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2115, metadata !604), !dbg !2121
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !719
  %67 = icmp eq i8 %66, 0, !dbg !2122
  br i1 %67, label %68, label %72, !dbg !2125

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2126, !tbaa !719
  %70 = icmp eq i8 %69, 96, !dbg !2127
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !2126
  br label %75, !dbg !2128

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2129
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), !dbg !2130
  br label %75, !dbg !2131

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2132
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #10

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #10

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2133 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2137, metadata !604), !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2138, metadata !604), !dbg !2141
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2139, metadata !604), !dbg !2142
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2143, metadata !604) #11, !dbg !2156
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2148, metadata !604) #11, !dbg !2158
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2149, metadata !604) #11, !dbg !2159
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2150, metadata !604) #11, !dbg !2160
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2161
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2151, metadata !604) #11, !dbg !2162
  %6 = tail call i32* @__errno_location() #1, !dbg !2163
  %7 = load i32, i32* %6, align 4, !dbg !2163, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2152, metadata !604) #11, !dbg !2164
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2165
  %9 = load i32, i32* %8, align 4, !dbg !2165, !tbaa !1046
  %10 = or i32 %9, 1, !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2153, metadata !604) #11, !dbg !2167
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2168
  %12 = load i32, i32* %11, align 8, !dbg !2168, !tbaa !984
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2169
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2170
  %15 = load i8*, i8** %14, align 8, !dbg !2170, !tbaa !1073
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2171
  %17 = load i8*, i8** %16, align 8, !dbg !2171, !tbaa !1076
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2172
  %19 = add i64 %18, 1, !dbg !2173
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2154, metadata !604) #11, !dbg !2174
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2175, metadata !604) #11, !dbg !2180
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2182
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2155, metadata !604) #11, !dbg !2183
  %21 = load i32, i32* %11, align 8, !dbg !2184, !tbaa !984
  %22 = load i8*, i8** %14, align 8, !dbg !2185, !tbaa !1073
  %23 = load i8*, i8** %16, align 8, !dbg !2186, !tbaa !1076
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2187
  store i32 %7, i32* %6, align 4, !dbg !2188, !tbaa !678
  ret i8* %20, !dbg !2189
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2144 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2143, metadata !604), !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2148, metadata !604), !dbg !2191
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2149, metadata !604), !dbg !2192
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2150, metadata !604), !dbg !2193
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2194
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2194
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2151, metadata !604), !dbg !2195
  %7 = tail call i32* @__errno_location() #1, !dbg !2196
  %8 = load i32, i32* %7, align 4, !dbg !2196, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2152, metadata !604), !dbg !2197
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2198
  %10 = load i32, i32* %9, align 4, !dbg !2198, !tbaa !1046
  %11 = icmp ne i64* %2, null, !dbg !2199
  %12 = xor i1 %11, true, !dbg !2199
  %13 = zext i1 %12 to i32, !dbg !2199
  %14 = or i32 %10, %13, !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2153, metadata !604), !dbg !2201
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2202
  %16 = load i32, i32* %15, align 8, !dbg !2202, !tbaa !984
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2203
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2204
  %19 = load i8*, i8** %18, align 8, !dbg !2204, !tbaa !1073
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2205
  %21 = load i8*, i8** %20, align 8, !dbg !2205, !tbaa !1076
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2206
  %23 = add i64 %22, 1, !dbg !2207
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2154, metadata !604), !dbg !2208
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2175, metadata !604) #11, !dbg !2209
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2211
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2155, metadata !604), !dbg !2212
  %25 = load i32, i32* %15, align 8, !dbg !2213, !tbaa !984
  %26 = load i8*, i8** %18, align 8, !dbg !2214, !tbaa !1073
  %27 = load i8*, i8** %20, align 8, !dbg !2215, !tbaa !1076
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2216
  store i32 %8, i32* %7, align 4, !dbg !2217, !tbaa !678
  br i1 %11, label %29, label %30, !dbg !2218

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2219, !tbaa !2221
  br label %30, !dbg !2222

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2223
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2224 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2228, !tbaa !612
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2226, metadata !604), !dbg !2229
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2227, metadata !604), !dbg !2230
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2227, metadata !604), !dbg !2230
  %2 = load i32, i32* @nslots, align 4, !dbg !2231, !tbaa !678
  %3 = icmp sgt i32 %2, 1, !dbg !2235
  br i1 %3, label %4, label %14, !dbg !2236

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2238

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2238
  %8 = load i8*, i8** %7, align 8, !dbg !2238, !tbaa !2239
  tail call void @free(i8* %8) #11, !dbg !2241
  %9 = add nuw i64 %6, 1, !dbg !2242
  %10 = load i32, i32* @nslots, align 4, !dbg !2231, !tbaa !678
  %11 = sext i32 %10 to i64, !dbg !2235
  %12 = icmp slt i64 %9, %11, !dbg !2235
  br i1 %12, label %5, label %13, !dbg !2236, !llvm.loop !2244

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2247

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2247
  %16 = load i8*, i8** %15, align 8, !dbg !2247, !tbaa !2239
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2249
  br i1 %17, label %19, label %18, !dbg !2250

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !2251
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2253, !tbaa !2254
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2255, !tbaa !2239
  br label %19, !dbg !2256

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2257
  br i1 %20, label %23, label %21, !dbg !2259

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2260
  tail call void @free(i8* %22) #11, !dbg !2262
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2263, !tbaa !612
  br label %23, !dbg !2264

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2265, !tbaa !678
  ret void, !dbg !2266
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2267 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2271, metadata !604), !dbg !2273
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2272, metadata !604), !dbg !2274
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2275
  ret i8* %3, !dbg !2276
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2277 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2281, metadata !604), !dbg !2295
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2282, metadata !604), !dbg !2296
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2283, metadata !604), !dbg !2297
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2284, metadata !604), !dbg !2298
  %5 = tail call i32* @__errno_location() #1, !dbg !2299
  %6 = load i32, i32* %5, align 4, !dbg !2299, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2285, metadata !604), !dbg !2300
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2301, !tbaa !612
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2286, metadata !604), !dbg !2302
  %8 = icmp slt i32 %0, 0, !dbg !2303
  br i1 %8, label %9, label %10, !dbg !2305

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2306
  unreachable, !dbg !2306

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2307, !tbaa !678
  %12 = icmp sgt i32 %11, %0, !dbg !2308
  br i1 %12, label %34, label %13, !dbg !2309

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2310
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2311
  br i1 %15, label %16, label %17, !dbg !2313

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2314
  unreachable, !dbg !2314

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2315
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2315
  %20 = add nsw i32 %0, 1, !dbg !2317
  %21 = sext i32 %20 to i64, !dbg !2318
  %22 = shl nsw i64 %21, 4, !dbg !2319
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2320
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2320
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2286, metadata !604), !dbg !2302
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2321, !tbaa !612
  br i1 %14, label %25, label %26, !dbg !2322

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2323, !tbaa.struct !2325
  br label %26, !dbg !2326

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2327, !tbaa !678
  %28 = sext i32 %27 to i64, !dbg !2328
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2328
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2329
  %31 = sub nsw i32 %20, %27, !dbg !2330
  %32 = sext i32 %31 to i64, !dbg !2331
  %33 = shl nsw i64 %32, 4, !dbg !2332
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2329
  store i32 %20, i32* @nslots, align 4, !dbg !2333, !tbaa !678
  br label %34, !dbg !2334

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2286, metadata !604), !dbg !2302
  %36 = sext i32 %0 to i64, !dbg !2335
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2336
  %38 = load i64, i64* %37, align 8, !dbg !2336, !tbaa !2254
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2290, metadata !604), !dbg !2337
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2338
  %40 = load i8*, i8** %39, align 8, !dbg !2338, !tbaa !2239
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2292, metadata !604), !dbg !2339
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2340
  %42 = load i32, i32* %41, align 4, !dbg !2340, !tbaa !1046
  %43 = or i32 %42, 1, !dbg !2341
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2293, metadata !604), !dbg !2342
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2343
  %45 = load i32, i32* %44, align 8, !dbg !2343, !tbaa !984
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2344
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2345
  %48 = load i8*, i8** %47, align 8, !dbg !2345, !tbaa !1073
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2346
  %50 = load i8*, i8** %49, align 8, !dbg !2346, !tbaa !1076
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2347
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2294, metadata !604), !dbg !2348
  %52 = icmp ugt i64 %38, %51, !dbg !2349
  br i1 %52, label %63, label %53, !dbg !2351

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2352
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2290, metadata !604), !dbg !2337
  store i64 %54, i64* %37, align 8, !dbg !2354, !tbaa !2254
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2355
  br i1 %55, label %57, label %56, !dbg !2357

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2358
  br label %57, !dbg !2358

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2175, metadata !604) #11, !dbg !2359
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2361
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2292, metadata !604), !dbg !2339
  store i8* %58, i8** %39, align 8, !dbg !2362, !tbaa !2239
  %59 = load i32, i32* %44, align 8, !dbg !2363, !tbaa !984
  %60 = load i8*, i8** %47, align 8, !dbg !2364, !tbaa !1073
  %61 = load i8*, i8** %49, align 8, !dbg !2365, !tbaa !1076
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2366
  br label %63, !dbg !2367

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2292, metadata !604), !dbg !2339
  store i32 %6, i32* %5, align 4, !dbg !2368, !tbaa !678
  ret i8* %64, !dbg !2369
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #10

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2370 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2374, metadata !604), !dbg !2377
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2375, metadata !604), !dbg !2378
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2376, metadata !604), !dbg !2379
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2380
  ret i8* %4, !dbg !2381
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2382 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2384, metadata !604), !dbg !2385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2271, metadata !604) #11, !dbg !2386
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2272, metadata !604) #11, !dbg !2388
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2389
  ret i8* %2, !dbg !2390
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2391 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2395, metadata !604), !dbg !2397
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2396, metadata !604), !dbg !2398
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2374, metadata !604) #11, !dbg !2399
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2375, metadata !604) #11, !dbg !2401
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2376, metadata !604) #11, !dbg !2402
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2403
  ret i8* %3, !dbg !2404
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2405 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2413, metadata !2419), !dbg !2420
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2409, metadata !604), !dbg !2422
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2410, metadata !604), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2411, metadata !604), !dbg !2424
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2425
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2425
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2412, metadata !1532), !dbg !2426
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2418, metadata !604) #11, !dbg !2427
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2428
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2428
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2413, metadata !604) #11, !dbg !2420
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2413, metadata !2429) #11, !dbg !2420
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2420
  %8 = icmp eq i32 %1, 10, !dbg !2430
  br i1 %8, label %9, label %10, !dbg !2432

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2433, !noalias !2434
  unreachable, !dbg !2433

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2413, metadata !2429) #11, !dbg !2420
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2437
  store i32 %1, i32* %11, align 8, !dbg !2437, !alias.scope !2434
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2437
  %13 = bitcast i32* %12 to i8*, !dbg !2437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2437
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2412, metadata !1532), !dbg !2426
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2439
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !2440
  ret i8* %14, !dbg !2441
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2442 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2413, metadata !2419), !dbg !2451
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2446, metadata !604), !dbg !2453
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2447, metadata !604), !dbg !2454
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2448, metadata !604), !dbg !2455
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2449, metadata !604), !dbg !2456
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2457
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !2457
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2450, metadata !1532), !dbg !2458
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2418, metadata !604) #11, !dbg !2459
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2460
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2460
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2413, metadata !604) #11, !dbg !2451
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2413, metadata !2429) #11, !dbg !2451
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2451
  %9 = icmp eq i32 %1, 10, !dbg !2461
  br i1 %9, label %10, label %11, !dbg !2462

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2463, !noalias !2464
  unreachable, !dbg !2463

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2413, metadata !2429) #11, !dbg !2451
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2467
  store i32 %1, i32* %12, align 8, !dbg !2467, !alias.scope !2464
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2467
  %14 = bitcast i32* %13 to i8*, !dbg !2467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2467
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2468
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2450, metadata !1532), !dbg !2458
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2469
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !2470
  ret i8* %15, !dbg !2471
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2472 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2413, metadata !2419), !dbg !2478
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2476, metadata !604), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2477, metadata !604), !dbg !2482
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2409, metadata !604) #11, !dbg !2483
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2410, metadata !604) #11, !dbg !2484
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2411, metadata !604) #11, !dbg !2485
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2486
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !2486
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2412, metadata !1532) #11, !dbg !2487
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2418, metadata !604) #11, !dbg !2488
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2489
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2489
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2413, metadata !604) #11, !dbg !2478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2413, metadata !2429) #11, !dbg !2478
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2478
  %7 = icmp eq i32 %0, 10, !dbg !2490
  br i1 %7, label %8, label %9, !dbg !2491

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2492, !noalias !2493
  unreachable, !dbg !2492

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2413, metadata !2429) #11, !dbg !2478
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2496
  store i32 %0, i32* %10, align 8, !dbg !2496, !alias.scope !2493
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2496
  %12 = bitcast i32* %11 to i8*, !dbg !2496
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2496
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2497
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2412, metadata !1532) #11, !dbg !2487
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2498
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !2499
  ret i8* %13, !dbg !2500
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2501 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2413, metadata !2419), !dbg !2508
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2505, metadata !604), !dbg !2511
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2506, metadata !604), !dbg !2512
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2507, metadata !604), !dbg !2513
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2446, metadata !604) #11, !dbg !2514
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2447, metadata !604) #11, !dbg !2515
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2448, metadata !604) #11, !dbg !2516
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2449, metadata !604) #11, !dbg !2517
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2518
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2518
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2450, metadata !1532) #11, !dbg !2519
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2418, metadata !604) #11, !dbg !2520
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2521
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2521
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2413, metadata !604) #11, !dbg !2508
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2413, metadata !2429) #11, !dbg !2508
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2508
  %8 = icmp eq i32 %0, 10, !dbg !2522
  br i1 %8, label %9, label %10, !dbg !2523

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2524, !noalias !2525
  unreachable, !dbg !2524

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2413, metadata !2429) #11, !dbg !2508
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2528
  store i32 %0, i32* %11, align 8, !dbg !2528, !alias.scope !2525
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2528
  %13 = bitcast i32* %12 to i8*, !dbg !2528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2528
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2529
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2450, metadata !1532) #11, !dbg !2519
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2530
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !2531
  ret i8* %14, !dbg !2532
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2533 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2537, metadata !604), !dbg !2541
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2538, metadata !604), !dbg !2542
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2539, metadata !604), !dbg !2543
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2544
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !2544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2545, !tbaa.struct !2546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2540, metadata !1532), !dbg !2547
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1004, metadata !604), !dbg !2548
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1005, metadata !604), !dbg !2550
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1006, metadata !604), !dbg !2551
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1007, metadata !604), !dbg !2552
  %6 = lshr i8 %2, 5, !dbg !2553
  %7 = zext i8 %6 to i64, !dbg !2553
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2554
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1008, metadata !604), !dbg !2555
  %9 = and i8 %2, 31, !dbg !2556
  %10 = zext i8 %9 to i32, !dbg !2557
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1010, metadata !604), !dbg !2558
  %11 = load i32, i32* %8, align 4, !dbg !2559, !tbaa !678
  %12 = lshr i32 %11, %10, !dbg !2560
  %13 = and i32 %12, 1, !dbg !2561
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1011, metadata !604), !dbg !2562
  %14 = xor i32 %13, 1, !dbg !2563
  %15 = shl i32 %14, %10, !dbg !2564
  %16 = xor i32 %15, %11, !dbg !2565
  store i32 %16, i32* %8, align 4, !dbg !2565, !tbaa !678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2540, metadata !1532), !dbg !2547
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2566
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !2567
  ret i8* %17, !dbg !2568
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2569 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2573, metadata !604), !dbg !2575
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2574, metadata !604), !dbg !2576
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2537, metadata !604) #11, !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2538, metadata !604) #11, !dbg !2579
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2539, metadata !604) #11, !dbg !2580
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2581
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !2581
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2582, !tbaa.struct !2546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2540, metadata !1532) #11, !dbg !2583
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1004, metadata !604) #11, !dbg !2584
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1005, metadata !604) #11, !dbg !2586
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1006, metadata !604) #11, !dbg !2587
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1007, metadata !604) #11, !dbg !2588
  %5 = lshr i8 %1, 5, !dbg !2589
  %6 = zext i8 %5 to i64, !dbg !2589
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2590
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1008, metadata !604) #11, !dbg !2591
  %8 = and i8 %1, 31, !dbg !2592
  %9 = zext i8 %8 to i32, !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1010, metadata !604) #11, !dbg !2594
  %10 = load i32, i32* %7, align 4, !dbg !2595, !tbaa !678
  %11 = lshr i32 %10, %9, !dbg !2596
  %12 = and i32 %11, 1, !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1011, metadata !604) #11, !dbg !2598
  %13 = xor i32 %12, 1, !dbg !2599
  %14 = shl i32 %13, %9, !dbg !2600
  %15 = xor i32 %14, %10, !dbg !2601
  store i32 %15, i32* %7, align 4, !dbg !2601, !tbaa !678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2540, metadata !1532) #11, !dbg !2583
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2602
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !2603
  ret i8* %16, !dbg !2604
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2605 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2607, metadata !604), !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2573, metadata !604) #11, !dbg !2609
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2574, metadata !604) #11, !dbg !2611
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2537, metadata !604) #11, !dbg !2612
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2538, metadata !604) #11, !dbg !2614
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2539, metadata !604) #11, !dbg !2615
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2616
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !2616
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2617, !tbaa.struct !2546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2540, metadata !1532) #11, !dbg !2618
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1004, metadata !604) #11, !dbg !2619
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1005, metadata !604) #11, !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1006, metadata !604) #11, !dbg !2622
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1007, metadata !604) #11, !dbg !2623
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2624
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1008, metadata !604) #11, !dbg !2625
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1010, metadata !604) #11, !dbg !2626
  %5 = load i32, i32* %4, align 4, !dbg !2627, !tbaa !678
  %6 = or i32 %5, 67108864, !dbg !2628
  store i32 %6, i32* %4, align 4, !dbg !2628, !tbaa !678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2540, metadata !1532) #11, !dbg !2618
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2629
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !2630
  ret i8* %7, !dbg !2631
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2632 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2634, metadata !604), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2635, metadata !604), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2537, metadata !604) #11, !dbg !2638
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2538, metadata !604) #11, !dbg !2640
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2539, metadata !604) #11, !dbg !2641
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2642
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2643, !tbaa.struct !2546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2540, metadata !1532) #11, !dbg !2644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1004, metadata !604) #11, !dbg !2645
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1005, metadata !604) #11, !dbg !2647
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1006, metadata !604) #11, !dbg !2648
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1007, metadata !604) #11, !dbg !2649
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2650
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1008, metadata !604) #11, !dbg !2651
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1010, metadata !604) #11, !dbg !2652
  %6 = load i32, i32* %5, align 4, !dbg !2653, !tbaa !678
  %7 = or i32 %6, 67108864, !dbg !2654
  store i32 %7, i32* %5, align 4, !dbg !2654, !tbaa !678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2540, metadata !1532) #11, !dbg !2644
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2655
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !2656
  ret i8* %8, !dbg !2657
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2658 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2413, metadata !2419), !dbg !2664
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2660, metadata !604), !dbg !2666
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2661, metadata !604), !dbg !2667
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2662, metadata !604), !dbg !2668
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2669
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !2669
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2418, metadata !604) #11, !dbg !2670
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2671
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2671
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2413, metadata !604) #11, !dbg !2664
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2413, metadata !2429) #11, !dbg !2664
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2664
  %9 = icmp eq i32 %1, 10, !dbg !2672
  br i1 %9, label %10, label %11, !dbg !2673

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2674, !noalias !2675
  unreachable, !dbg !2674

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2413, metadata !2429) #11, !dbg !2664
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2678
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2679
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2680
  store i32 %1, i32* %13, align 8, !dbg !2680
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2680
  %15 = bitcast i32* %14 to i8*, !dbg !2680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2680
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2663, metadata !1532), !dbg !2681
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1004, metadata !604), !dbg !2682
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1005, metadata !604), !dbg !2684
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1006, metadata !604), !dbg !2685
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1007, metadata !604), !dbg !2686
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2687
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1008, metadata !604), !dbg !2688
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1010, metadata !604), !dbg !2689
  %17 = load i32, i32* %16, align 4, !dbg !2690, !tbaa !678
  %18 = or i32 %17, 67108864, !dbg !2691
  store i32 %18, i32* %16, align 4, !dbg !2691, !tbaa !678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2663, metadata !1532), !dbg !2681
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2692
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !2693
  ret i8* %19, !dbg !2694
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2695 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2699, metadata !604), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2700, metadata !604), !dbg !2704
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2701, metadata !604), !dbg !2705
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2702, metadata !604), !dbg !2706
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2707, metadata !604) #11, !dbg !2717
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2712, metadata !604) #11, !dbg !2719
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2713, metadata !604) #11, !dbg !2720
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2714, metadata !604) #11, !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2715, metadata !604) #11, !dbg !2722
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2723
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2723
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2724, !tbaa.struct !2546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2716, metadata !1532) #11, !dbg !2725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1054, metadata !604) #11, !dbg !2726
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1055, metadata !604) #11, !dbg !2728
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1056, metadata !604) #11, !dbg !2729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1054, metadata !604) #11, !dbg !2726
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1054, metadata !604) #11, !dbg !2726
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2730
  store i32 10, i32* %7, align 8, !dbg !2731, !tbaa !984
  %8 = icmp ne i8* %1, null, !dbg !2732
  %9 = icmp ne i8* %2, null, !dbg !2733
  %10 = and i1 %8, %9, !dbg !2734
  br i1 %10, label %12, label %11, !dbg !2734

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2735
  unreachable, !dbg !2735

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2736
  store i8* %1, i8** %13, align 8, !dbg !2737, !tbaa !1073
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2738
  store i8* %2, i8** %14, align 8, !dbg !2739, !tbaa !1076
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2716, metadata !1532) #11, !dbg !2725
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2740
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !2741
  ret i8* %15, !dbg !2742
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2708 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2707, metadata !604), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2712, metadata !604), !dbg !2744
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2713, metadata !604), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2714, metadata !604), !dbg !2746
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2715, metadata !604), !dbg !2747
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2748
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !2748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2749, !tbaa.struct !2546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2716, metadata !1532), !dbg !2750
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1054, metadata !604) #11, !dbg !2751
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1055, metadata !604) #11, !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1056, metadata !604) #11, !dbg !2754
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1054, metadata !604) #11, !dbg !2751
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1054, metadata !604) #11, !dbg !2751
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2755
  store i32 10, i32* %8, align 8, !dbg !2756, !tbaa !984
  %9 = icmp ne i8* %1, null, !dbg !2757
  %10 = icmp ne i8* %2, null, !dbg !2758
  %11 = and i1 %9, %10, !dbg !2759
  br i1 %11, label %13, label %12, !dbg !2759

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2760
  unreachable, !dbg !2760

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2761
  store i8* %1, i8** %14, align 8, !dbg !2762, !tbaa !1073
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2763
  store i8* %2, i8** %15, align 8, !dbg !2764, !tbaa !1076
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2716, metadata !1532), !dbg !2750
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2765
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !2766
  ret i8* %16, !dbg !2767
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2768 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2772, metadata !604), !dbg !2775
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2773, metadata !604), !dbg !2776
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2774, metadata !604), !dbg !2777
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2699, metadata !604) #11, !dbg !2778
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2700, metadata !604) #11, !dbg !2780
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2701, metadata !604) #11, !dbg !2781
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2702, metadata !604) #11, !dbg !2782
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2707, metadata !604) #11, !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2712, metadata !604) #11, !dbg !2785
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2713, metadata !604) #11, !dbg !2786
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2714, metadata !604) #11, !dbg !2787
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2715, metadata !604) #11, !dbg !2788
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2789
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !2789
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2790, !tbaa.struct !2546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2716, metadata !1532) #11, !dbg !2791
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1054, metadata !604) #11, !dbg !2792
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1055, metadata !604) #11, !dbg !2794
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1056, metadata !604) #11, !dbg !2795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1054, metadata !604) #11, !dbg !2792
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1054, metadata !604) #11, !dbg !2792
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2796
  store i32 10, i32* %6, align 8, !dbg !2797, !tbaa !984
  %7 = icmp ne i8* %0, null, !dbg !2798
  %8 = icmp ne i8* %1, null, !dbg !2799
  %9 = and i1 %7, %8, !dbg !2800
  br i1 %9, label %11, label %10, !dbg !2800

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2801
  unreachable, !dbg !2801

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2802
  store i8* %0, i8** %12, align 8, !dbg !2803, !tbaa !1073
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2804
  store i8* %1, i8** %13, align 8, !dbg !2805, !tbaa !1076
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2716, metadata !1532) #11, !dbg !2791
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2806
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !2807
  ret i8* %14, !dbg !2808
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2809 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2813, metadata !604), !dbg !2817
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2814, metadata !604), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2815, metadata !604), !dbg !2819
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2816, metadata !604), !dbg !2820
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2707, metadata !604) #11, !dbg !2821
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2712, metadata !604) #11, !dbg !2823
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2713, metadata !604) #11, !dbg !2824
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2714, metadata !604) #11, !dbg !2825
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2715, metadata !604) #11, !dbg !2826
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2827
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2827
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2828, !tbaa.struct !2546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2716, metadata !1532) #11, !dbg !2829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1054, metadata !604) #11, !dbg !2830
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1055, metadata !604) #11, !dbg !2832
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1056, metadata !604) #11, !dbg !2833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1054, metadata !604) #11, !dbg !2830
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1054, metadata !604) #11, !dbg !2830
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2834
  store i32 10, i32* %7, align 8, !dbg !2835, !tbaa !984
  %8 = icmp ne i8* %0, null, !dbg !2836
  %9 = icmp ne i8* %1, null, !dbg !2837
  %10 = and i1 %8, %9, !dbg !2838
  br i1 %10, label %12, label %11, !dbg !2838

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2839
  unreachable, !dbg !2839

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2840
  store i8* %0, i8** %13, align 8, !dbg !2841, !tbaa !1073
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2842
  store i8* %1, i8** %14, align 8, !dbg !2843, !tbaa !1076
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2716, metadata !1532) #11, !dbg !2829
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2844
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !2845
  ret i8* %15, !dbg !2846
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2847 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2851, metadata !604), !dbg !2854
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2852, metadata !604), !dbg !2855
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2853, metadata !604), !dbg !2856
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2857
  ret i8* %4, !dbg !2858
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2859 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2863, metadata !604), !dbg !2865
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2864, metadata !604), !dbg !2866
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2851, metadata !604) #11, !dbg !2867
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2852, metadata !604) #11, !dbg !2869
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2853, metadata !604) #11, !dbg !2870
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2871
  ret i8* %3, !dbg !2872
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2873 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2877, metadata !604), !dbg !2879
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2878, metadata !604), !dbg !2880
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2851, metadata !604) #11, !dbg !2881
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2852, metadata !604) #11, !dbg !2883
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2853, metadata !604) #11, !dbg !2884
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2885
  ret i8* %3, !dbg !2886
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2887 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2891, metadata !604), !dbg !2892
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2877, metadata !604) #11, !dbg !2893
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2878, metadata !604) #11, !dbg !2895
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2851, metadata !604) #11, !dbg !2896
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2852, metadata !604) #11, !dbg !2898
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2853, metadata !604) #11, !dbg !2899
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2900
  ret i8* %2, !dbg !2901
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2902 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2962, metadata !604), !dbg !2968
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2963, metadata !604), !dbg !2969
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2964, metadata !604), !dbg !2970
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2965, metadata !604), !dbg !2971
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2966, metadata !604), !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2967, metadata !604), !dbg !2973
  %7 = icmp eq i8* %1, null, !dbg !2974
  br i1 %7, label %10, label %8, !dbg !2976

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !2977
  br label %12, !dbg !2977

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !2978
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i32 5) #11, !dbg !2979
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !2980
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.57, i64 0, i64 0), i32 5) #11, !dbg !2982
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !2983
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
  ], !dbg !2984

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2985
  unreachable, !dbg !2985

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.58, i64 0, i64 0), i32 5) #11, !dbg !2987
  %20 = load i8*, i8** %4, align 8, !dbg !2987, !tbaa !612
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !2988
  br label %146, !dbg !2990

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.59, i64 0, i64 0), i32 5) #11, !dbg !2991
  %24 = load i8*, i8** %4, align 8, !dbg !2991, !tbaa !612
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2991
  %26 = load i8*, i8** %25, align 8, !dbg !2991, !tbaa !612
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !2992
  br label %146, !dbg !2993

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.60, i64 0, i64 0), i32 5) #11, !dbg !2994
  %30 = load i8*, i8** %4, align 8, !dbg !2994, !tbaa !612
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2994
  %32 = load i8*, i8** %31, align 8, !dbg !2994, !tbaa !612
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2994
  %34 = load i8*, i8** %33, align 8, !dbg !2994, !tbaa !612
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !2995
  br label %146, !dbg !2996

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.61, i64 0, i64 0), i32 5) #11, !dbg !2997
  %38 = load i8*, i8** %4, align 8, !dbg !2997, !tbaa !612
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2997
  %40 = load i8*, i8** %39, align 8, !dbg !2997, !tbaa !612
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2997
  %42 = load i8*, i8** %41, align 8, !dbg !2997, !tbaa !612
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2997
  %44 = load i8*, i8** %43, align 8, !dbg !2997, !tbaa !612
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !2998
  br label %146, !dbg !2999

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.62, i64 0, i64 0), i32 5) #11, !dbg !3000
  %48 = load i8*, i8** %4, align 8, !dbg !3000, !tbaa !612
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3000
  %50 = load i8*, i8** %49, align 8, !dbg !3000, !tbaa !612
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3000
  %52 = load i8*, i8** %51, align 8, !dbg !3000, !tbaa !612
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3000
  %54 = load i8*, i8** %53, align 8, !dbg !3000, !tbaa !612
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3000
  %56 = load i8*, i8** %55, align 8, !dbg !3000, !tbaa !612
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3001
  br label %146, !dbg !3002

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.63, i64 0, i64 0), i32 5) #11, !dbg !3003
  %60 = load i8*, i8** %4, align 8, !dbg !3003, !tbaa !612
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3003
  %62 = load i8*, i8** %61, align 8, !dbg !3003, !tbaa !612
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3003
  %64 = load i8*, i8** %63, align 8, !dbg !3003, !tbaa !612
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3003
  %66 = load i8*, i8** %65, align 8, !dbg !3003, !tbaa !612
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3003
  %68 = load i8*, i8** %67, align 8, !dbg !3003, !tbaa !612
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3003
  %70 = load i8*, i8** %69, align 8, !dbg !3003, !tbaa !612
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3004
  br label %146, !dbg !3005

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.64, i64 0, i64 0), i32 5) #11, !dbg !3006
  %74 = load i8*, i8** %4, align 8, !dbg !3006, !tbaa !612
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3006
  %76 = load i8*, i8** %75, align 8, !dbg !3006, !tbaa !612
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3006
  %78 = load i8*, i8** %77, align 8, !dbg !3006, !tbaa !612
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3006
  %80 = load i8*, i8** %79, align 8, !dbg !3006, !tbaa !612
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3006
  %82 = load i8*, i8** %81, align 8, !dbg !3006, !tbaa !612
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3006
  %84 = load i8*, i8** %83, align 8, !dbg !3006, !tbaa !612
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3006
  %86 = load i8*, i8** %85, align 8, !dbg !3006, !tbaa !612
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3007
  br label %146, !dbg !3008

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.65, i64 0, i64 0), i32 5) #11, !dbg !3009
  %90 = load i8*, i8** %4, align 8, !dbg !3009, !tbaa !612
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3009
  %92 = load i8*, i8** %91, align 8, !dbg !3009, !tbaa !612
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3009
  %94 = load i8*, i8** %93, align 8, !dbg !3009, !tbaa !612
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3009
  %96 = load i8*, i8** %95, align 8, !dbg !3009, !tbaa !612
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3009
  %98 = load i8*, i8** %97, align 8, !dbg !3009, !tbaa !612
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3009
  %100 = load i8*, i8** %99, align 8, !dbg !3009, !tbaa !612
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3009
  %102 = load i8*, i8** %101, align 8, !dbg !3009, !tbaa !612
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3009
  %104 = load i8*, i8** %103, align 8, !dbg !3009, !tbaa !612
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3010
  br label %146, !dbg !3011

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.66, i64 0, i64 0), i32 5) #11, !dbg !3012
  %108 = load i8*, i8** %4, align 8, !dbg !3012, !tbaa !612
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3012
  %110 = load i8*, i8** %109, align 8, !dbg !3012, !tbaa !612
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3012
  %112 = load i8*, i8** %111, align 8, !dbg !3012, !tbaa !612
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3012
  %114 = load i8*, i8** %113, align 8, !dbg !3012, !tbaa !612
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3012
  %116 = load i8*, i8** %115, align 8, !dbg !3012, !tbaa !612
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3012
  %118 = load i8*, i8** %117, align 8, !dbg !3012, !tbaa !612
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3012
  %120 = load i8*, i8** %119, align 8, !dbg !3012, !tbaa !612
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3012
  %122 = load i8*, i8** %121, align 8, !dbg !3012, !tbaa !612
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3012
  %124 = load i8*, i8** %123, align 8, !dbg !3012, !tbaa !612
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3013
  br label %146, !dbg !3014

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.67, i64 0, i64 0), i32 5) #11, !dbg !3015
  %128 = load i8*, i8** %4, align 8, !dbg !3015, !tbaa !612
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3015
  %130 = load i8*, i8** %129, align 8, !dbg !3015, !tbaa !612
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3015
  %132 = load i8*, i8** %131, align 8, !dbg !3015, !tbaa !612
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3015
  %134 = load i8*, i8** %133, align 8, !dbg !3015, !tbaa !612
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3015
  %136 = load i8*, i8** %135, align 8, !dbg !3015, !tbaa !612
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3015
  %138 = load i8*, i8** %137, align 8, !dbg !3015, !tbaa !612
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3015
  %140 = load i8*, i8** %139, align 8, !dbg !3015, !tbaa !612
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3015
  %142 = load i8*, i8** %141, align 8, !dbg !3015, !tbaa !612
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3015
  %144 = load i8*, i8** %143, align 8, !dbg !3015, !tbaa !612
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3016
  br label %146, !dbg !3017

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3019 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3023, metadata !604), !dbg !3029
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3024, metadata !604), !dbg !3030
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3025, metadata !604), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3026, metadata !604), !dbg !3032
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3027, metadata !604), !dbg !3033
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3028, metadata !604), !dbg !3034
  br label %6, !dbg !3035

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3028, metadata !604), !dbg !3034
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3037
  %9 = load i8*, i8** %8, align 8, !dbg !3037, !tbaa !612
  %10 = icmp eq i8* %9, null, !dbg !3040
  %11 = add i64 %7, 1, !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3028, metadata !604), !dbg !3034
  br i1 %10, label %12, label %6, !dbg !3040, !llvm.loop !3044

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3047
  ret void, !dbg !3048
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3049 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3060, metadata !604), !dbg !3068
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3061, metadata !604), !dbg !3069
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3062, metadata !604), !dbg !3070
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3063, metadata !604), !dbg !3071
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3064, metadata !604), !dbg !3072
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3073
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !3073
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3066, metadata !604), !dbg !3074
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3065, metadata !604), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3065, metadata !604), !dbg !3075
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3076
  %12 = icmp ult i32 %11, 41, !dbg !3076
  br i1 %12, label %13, label %18, !dbg !3076

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3080
  %15 = sext i32 %11 to i64, !dbg !3080
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3080
  %17 = add i32 %11, 8, !dbg !3080
  store i32 %17, i32* %8, align 8, !dbg !3080
  br label %21, !dbg !3080

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3082
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3082
  store i8* %20, i8** %10, align 8, !dbg !3082
  br label %21, !dbg !3082

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3076
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3084
  %25 = load i8*, i8** %24, align 8, !dbg !3084
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3086
  store i8* %25, i8** %26, align 16, !dbg !3087, !tbaa !612
  %27 = icmp eq i8* %25, null, !dbg !3088
  br i1 %27, label %30, label %28, !dbg !3089

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  %29 = icmp ult i32 %22, 41, !dbg !3076
  br i1 %29, label %35, label %32, !dbg !3076

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3091
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !3092
  ret void, !dbg !3092

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3082
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3082
  store i8* %34, i8** %10, align 8, !dbg !3082
  br label %40, !dbg !3082

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3080
  %37 = sext i32 %22 to i64, !dbg !3080
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3080
  %39 = add i32 %22, 8, !dbg !3080
  store i32 %39, i32* %8, align 8, !dbg !3080
  br label %40, !dbg !3080

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3076
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3084
  %44 = load i8*, i8** %43, align 8, !dbg !3084
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3086
  store i8* %44, i8** %45, align 8, !dbg !3087, !tbaa !612
  %46 = icmp eq i8* %44, null, !dbg !3088
  br i1 %46, label %30, label %47, !dbg !3089

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  %48 = icmp ult i32 %41, 41, !dbg !3076
  br i1 %48, label %52, label %49, !dbg !3076

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3082
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3082
  store i8* %51, i8** %10, align 8, !dbg !3082
  br label %57, !dbg !3082

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3080
  %54 = sext i32 %41 to i64, !dbg !3080
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3080
  %56 = add i32 %41, 8, !dbg !3080
  store i32 %56, i32* %8, align 8, !dbg !3080
  br label %57, !dbg !3080

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3076
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3084
  %61 = load i8*, i8** %60, align 8, !dbg !3084
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3086
  store i8* %61, i8** %62, align 16, !dbg !3087, !tbaa !612
  %63 = icmp eq i8* %61, null, !dbg !3088
  br i1 %63, label %30, label %64, !dbg !3089

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  %65 = icmp ult i32 %58, 41, !dbg !3076
  br i1 %65, label %69, label %66, !dbg !3076

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3082
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3082
  store i8* %68, i8** %10, align 8, !dbg !3082
  br label %74, !dbg !3082

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3080
  %71 = sext i32 %58 to i64, !dbg !3080
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3080
  %73 = add i32 %58, 8, !dbg !3080
  store i32 %73, i32* %8, align 8, !dbg !3080
  br label %74, !dbg !3080

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3076
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3084
  %78 = load i8*, i8** %77, align 8, !dbg !3084
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3086
  store i8* %78, i8** %79, align 8, !dbg !3087, !tbaa !612
  %80 = icmp eq i8* %78, null, !dbg !3088
  br i1 %80, label %30, label %81, !dbg !3089

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  %82 = icmp ult i32 %75, 41, !dbg !3076
  br i1 %82, label %86, label %83, !dbg !3076

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3082
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3082
  store i8* %85, i8** %10, align 8, !dbg !3082
  br label %91, !dbg !3082

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3080
  %88 = sext i32 %75 to i64, !dbg !3080
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3080
  %90 = add i32 %75, 8, !dbg !3080
  store i32 %90, i32* %8, align 8, !dbg !3080
  br label %91, !dbg !3080

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3076
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3084
  %95 = load i8*, i8** %94, align 8, !dbg !3084
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3086
  store i8* %95, i8** %96, align 16, !dbg !3087, !tbaa !612
  %97 = icmp eq i8* %95, null, !dbg !3088
  br i1 %97, label %30, label %98, !dbg !3089

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  %99 = icmp ult i32 %92, 41, !dbg !3076
  br i1 %99, label %103, label %100, !dbg !3076

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3082
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3082
  store i8* %102, i8** %10, align 8, !dbg !3082
  br label %108, !dbg !3082

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3080
  %105 = sext i32 %92 to i64, !dbg !3080
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3080
  %107 = add i32 %92, 8, !dbg !3080
  store i32 %107, i32* %8, align 8, !dbg !3080
  br label %108, !dbg !3080

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3084
  %111 = load i8*, i8** %110, align 8, !dbg !3084
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3086
  store i8* %111, i8** %112, align 8, !dbg !3087, !tbaa !612
  %113 = icmp eq i8* %111, null, !dbg !3088
  br i1 %113, label %30, label %114, !dbg !3089

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  %115 = load i8*, i8** %10, align 8, !dbg !3082
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3082
  store i8* %116, i8** %10, align 8, !dbg !3082
  %117 = bitcast i8* %115 to i8**, !dbg !3084
  %118 = load i8*, i8** %117, align 8, !dbg !3084
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3086
  store i8* %118, i8** %119, align 16, !dbg !3087, !tbaa !612
  %120 = icmp eq i8* %118, null, !dbg !3088
  br i1 %120, label %30, label %121, !dbg !3089

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  %122 = load i8*, i8** %10, align 8, !dbg !3082
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3082
  store i8* %123, i8** %10, align 8, !dbg !3082
  %124 = bitcast i8* %122 to i8**, !dbg !3084
  %125 = load i8*, i8** %124, align 8, !dbg !3084
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3086
  store i8* %125, i8** %126, align 8, !dbg !3087, !tbaa !612
  %127 = icmp eq i8* %125, null, !dbg !3088
  br i1 %127, label %30, label %128, !dbg !3089

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  %129 = load i8*, i8** %10, align 8, !dbg !3082
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3082
  store i8* %130, i8** %10, align 8, !dbg !3082
  %131 = bitcast i8* %129 to i8**, !dbg !3084
  %132 = load i8*, i8** %131, align 8, !dbg !3084
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3086
  store i8* %132, i8** %133, align 16, !dbg !3087, !tbaa !612
  %134 = icmp eq i8* %132, null, !dbg !3088
  br i1 %134, label %30, label %135, !dbg !3089

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  %136 = load i8*, i8** %10, align 8, !dbg !3082
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3082
  store i8* %137, i8** %10, align 8, !dbg !3082
  %138 = bitcast i8* %136 to i8**, !dbg !3084
  %139 = load i8*, i8** %138, align 8, !dbg !3084
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3086
  store i8* %139, i8** %140, align 8, !dbg !3087, !tbaa !612
  %141 = icmp eq i8* %139, null, !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3065, metadata !604), !dbg !3075
  %142 = select i1 %141, i64 9, i64 10, !dbg !3089
  br label %30, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3093 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3097, metadata !604), !dbg !3107
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3098, metadata !604), !dbg !3108
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3099, metadata !604), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3100, metadata !604), !dbg !3110
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3111
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !3111
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3101, metadata !604), !dbg !3112
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3113
  call void @llvm.va_start(i8* nonnull %6), !dbg !3113
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3114
  call void @llvm.va_end(i8* nonnull %6), !dbg !3115
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !3116
  ret void, !dbg !3116
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3117 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.70, i64 0, i64 0), i32 5) #11, !dbg !3118
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.71, i64 0, i64 0)) #11, !dbg !3119
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.72, i64 0, i64 0), i32 5) #11, !dbg !3121
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.74, i64 0, i64 0)) #11, !dbg !3122
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.75, i64 0, i64 0), i32 5) #11, !dbg !3123
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3123, !tbaa !612
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3124
  ret void, !dbg !3125
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3126 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3130, metadata !604), !dbg !3132
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3131, metadata !604), !dbg !3133
  %3 = udiv i64 9223372036854775807, %1, !dbg !3134
  %4 = icmp ult i64 %3, %0, !dbg !3134
  br i1 %4, label %5, label %6, !dbg !3136

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3137
  unreachable, !dbg !3137

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3139, metadata !604) #11, !dbg !3146
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3145, metadata !604) #11, !dbg !3149
  %9 = icmp eq i8* %8, null, !dbg !3150
  %10 = icmp ne i64 %7, 0, !dbg !3152
  %11 = and i1 %10, %9, !dbg !3154
  br i1 %11, label %12, label %13, !dbg !3154

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3155
  unreachable, !dbg !3155

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3156
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3140 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3139, metadata !604), !dbg !3157
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3158
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3145, metadata !604), !dbg !3159
  %3 = icmp eq i8* %2, null, !dbg !3160
  %4 = icmp ne i64 %0, 0, !dbg !3161
  %5 = and i1 %4, %3, !dbg !3162
  br i1 %5, label %6, label %7, !dbg !3162

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3163
  unreachable, !dbg !3163

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3164
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3165 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3169, metadata !604), !dbg !3172
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3170, metadata !604), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3171, metadata !604), !dbg !3174
  %4 = udiv i64 9223372036854775807, %2, !dbg !3175
  %5 = icmp ult i64 %4, %1, !dbg !3175
  br i1 %5, label %6, label %7, !dbg !3177

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3178
  unreachable, !dbg !3178

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3180, metadata !604) #11, !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3185, metadata !604) #11, !dbg !3188
  %9 = icmp eq i64 %8, 0, !dbg !3189
  %10 = icmp ne i8* %0, null, !dbg !3191
  %11 = and i1 %10, %9, !dbg !3193
  br i1 %11, label %12, label %13, !dbg !3193

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3194
  br label %19, !dbg !3196

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3197
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3180, metadata !604) #11, !dbg !3186
  %15 = icmp eq i8* %14, null, !dbg !3198
  %16 = icmp ne i64 %8, 0, !dbg !3200
  %17 = and i1 %16, %15, !dbg !3202
  br i1 %17, label %18, label %19, !dbg !3202

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3203
  unreachable, !dbg !3203

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3204
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3181 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3180, metadata !604), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3185, metadata !604), !dbg !3206
  %3 = icmp eq i64 %1, 0, !dbg !3207
  %4 = icmp ne i8* %0, null, !dbg !3208
  %5 = and i1 %4, %3, !dbg !3209
  br i1 %5, label %6, label %7, !dbg !3209

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3210
  br label %13, !dbg !3211

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3212
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3180, metadata !604), !dbg !3205
  %9 = icmp eq i8* %8, null, !dbg !3213
  %10 = icmp ne i64 %1, 0, !dbg !3214
  %11 = and i1 %10, %9, !dbg !3215
  br i1 %11, label %12, label %13, !dbg !3215

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3216
  unreachable, !dbg !3216

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3217
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !564 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !569, metadata !604), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !570, metadata !604), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !571, metadata !604), !dbg !3220
  %4 = load i64, i64* %1, align 8, !dbg !3221, !tbaa !2221
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !572, metadata !604), !dbg !3222
  %5 = icmp eq i8* %0, null, !dbg !3223
  br i1 %5, label %6, label %13, !dbg !3225

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3226
  br i1 %7, label %8, label %17, !dbg !3229

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !572, metadata !604), !dbg !3222
  %10 = icmp ugt i64 %2, 128, !dbg !3232
  %11 = zext i1 %10 to i64, !dbg !3232
  %12 = add nuw nsw i64 %9, %11, !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !572, metadata !604), !dbg !3222
  br label %17, !dbg !3234

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3235
  %15 = icmp ugt i64 %14, %4, !dbg !3238
  br i1 %15, label %20, label %16, !dbg !3239

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3240
  unreachable, !dbg !3240

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !572, metadata !604), !dbg !3222
  store i64 %18, i64* %1, align 8, !dbg !3241, !tbaa !2221
  %19 = mul i64 %18, %2, !dbg !3242
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3180, metadata !604) #11, !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3185, metadata !604) #11, !dbg !3245
  br label %27, !dbg !3246

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3247
  %22 = add i64 %4, 1, !dbg !3248
  %23 = add i64 %22, %21, !dbg !3249
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !572, metadata !604), !dbg !3222
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !572, metadata !604), !dbg !3222
  store i64 %23, i64* %1, align 8, !dbg !3241, !tbaa !2221
  %24 = mul i64 %23, %2, !dbg !3242
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3180, metadata !604) #11, !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3185, metadata !604) #11, !dbg !3245
  %25 = icmp eq i64 %24, 0, !dbg !3250
  br i1 %25, label %26, label %27, !dbg !3246

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !3251
  br label %34, !dbg !3252

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !3253
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3180, metadata !604) #11, !dbg !3243
  %30 = icmp eq i8* %29, null, !dbg !3254
  %31 = icmp ne i64 %28, 0, !dbg !3255
  %32 = and i1 %31, %30, !dbg !3256
  br i1 %32, label %33, label %34, !dbg !3256

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3257
  unreachable, !dbg !3257

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3258
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3259 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3261, metadata !604), !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3139, metadata !604) #11, !dbg !3263
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3265
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3145, metadata !604) #11, !dbg !3266
  %3 = icmp eq i8* %2, null, !dbg !3267
  %4 = icmp ne i64 %0, 0, !dbg !3268
  %5 = and i1 %4, %3, !dbg !3269
  br i1 %5, label %6, label %7, !dbg !3269

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3270
  unreachable, !dbg !3270

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3271
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3272 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3276, metadata !604), !dbg !3278
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3277, metadata !604), !dbg !3279
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !569, metadata !604) #11, !dbg !3280
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !570, metadata !604) #11, !dbg !3282
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !571, metadata !604) #11, !dbg !3283
  %3 = load i64, i64* %1, align 8, !dbg !3284, !tbaa !2221
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !572, metadata !604) #11, !dbg !3285
  %4 = icmp eq i8* %0, null, !dbg !3286
  br i1 %4, label %5, label %8, !dbg !3287

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !572, metadata !604) #11, !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !572, metadata !604) #11, !dbg !3285
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3289
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !572, metadata !604) #11, !dbg !3285
  store i64 %7, i64* %1, align 8, !dbg !3290, !tbaa !2221
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3180, metadata !604) #11, !dbg !3291
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3185, metadata !604) #11, !dbg !3293
  br label %17, !dbg !3294

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3295
  br i1 %9, label %11, label %10, !dbg !3296

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3297
  unreachable, !dbg !3297

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3298
  %13 = add i64 %3, 1, !dbg !3299
  %14 = add i64 %13, %12, !dbg !3300
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !572, metadata !604) #11, !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !572, metadata !604) #11, !dbg !3285
  store i64 %14, i64* %1, align 8, !dbg !3290, !tbaa !2221
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3180, metadata !604) #11, !dbg !3291
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3185, metadata !604) #11, !dbg !3293
  %15 = icmp eq i64 %14, 0, !dbg !3301
  br i1 %15, label %16, label %17, !dbg !3294

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !3302
  br label %24, !dbg !3303

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !3304
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3180, metadata !604) #11, !dbg !3291
  %20 = icmp eq i8* %19, null, !dbg !3305
  %21 = icmp ne i64 %18, 0, !dbg !3306
  %22 = and i1 %21, %20, !dbg !3307
  br i1 %22, label %23, label %24, !dbg !3307

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3308
  unreachable, !dbg !3308

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3309
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3310 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3312, metadata !604), !dbg !3313
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3139, metadata !604) #11, !dbg !3314
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3316
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3145, metadata !604) #11, !dbg !3317
  %3 = icmp eq i8* %2, null, !dbg !3318
  %4 = icmp ne i64 %0, 0, !dbg !3319
  %5 = and i1 %4, %3, !dbg !3320
  br i1 %5, label %6, label %7, !dbg !3320

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3321
  unreachable, !dbg !3321

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3322
  ret i8* %2, !dbg !3323
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3324 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3326, metadata !604), !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3327, metadata !604), !dbg !3330
  %3 = udiv i64 9223372036854775807, %1, !dbg !3331
  %4 = icmp ult i64 %3, %0, !dbg !3331
  br i1 %4, label %8, label %5, !dbg !3333

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3334
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3328, metadata !604), !dbg !3336
  %7 = icmp eq i8* %6, null, !dbg !3337
  br i1 %7, label %8, label %9, !dbg !3338

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3340
  unreachable, !dbg !3340

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3342 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3346, metadata !604), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3347, metadata !604), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3139, metadata !604) #11, !dbg !3350
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3352
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3145, metadata !604) #11, !dbg !3353
  %4 = icmp eq i8* %3, null, !dbg !3354
  %5 = icmp ne i64 %1, 0, !dbg !3355
  %6 = and i1 %5, %4, !dbg !3356
  br i1 %6, label %7, label %8, !dbg !3356

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3357
  unreachable, !dbg !3357

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3358
  ret i8* %3, !dbg !3359
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3360 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3362, metadata !604), !dbg !3363
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3364
  %3 = add i64 %2, 1, !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3346, metadata !604) #11, !dbg !3366
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3347, metadata !604) #11, !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3139, metadata !604) #11, !dbg !3370
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3372
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3145, metadata !604) #11, !dbg !3373
  %5 = icmp eq i8* %4, null, !dbg !3374
  %6 = icmp ne i64 %3, 0, !dbg !3375
  %7 = and i1 %6, %5, !dbg !3376
  br i1 %7, label %8, label %9, !dbg !3376

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3377
  unreachable, !dbg !3377

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3378
  ret i8* %4, !dbg !3379
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3380 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3382, !tbaa !678
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.86, i64 0, i64 0), i32 5) #11, !dbg !3383
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i8* %2) #11, !dbg !3384
  tail call void @abort() #14, !dbg !3386
  unreachable, !dbg !3386
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3387 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3390, metadata !604), !dbg !3396
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3391, metadata !604), !dbg !3397
  %3 = icmp eq i64 %0, 0, !dbg !3398
  %4 = icmp eq i64 %1, 0, !dbg !3399
  %5 = or i1 %3, %4, !dbg !3401
  br i1 %5, label %12, label %6, !dbg !3401

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3402
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3393, metadata !604), !dbg !3403
  %8 = udiv i64 %7, %1, !dbg !3404
  %9 = icmp eq i64 %8, %0, !dbg !3406
  br i1 %9, label %12, label %10, !dbg !3407

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3408
  store i32 12, i32* %11, align 4, !dbg !3410, !tbaa !678
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3390, metadata !604), !dbg !3396
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3391, metadata !604), !dbg !3397
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3392, metadata !604), !dbg !3412
  br label %16, !dbg !3413

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3414
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3415 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3432, metadata !604), !dbg !3441
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3433, metadata !604), !dbg !3442
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3434, metadata !604), !dbg !3443
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3435, metadata !604), !dbg !3444
  %6 = bitcast i32* %5 to i8*, !dbg !3445
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !3445
  %7 = icmp eq i32* %0, null, !dbg !3446
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3432, metadata !604), !dbg !3441
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3448
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3432, metadata !604), !dbg !3441
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3436, metadata !604), !dbg !3450
  %10 = icmp ugt i64 %9, -3, !dbg !3451
  %11 = icmp ne i64 %2, 0, !dbg !3452
  %12 = and i1 %11, %10, !dbg !3454
  br i1 %12, label %13, label %18, !dbg !3454

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3455
  br i1 %14, label %18, label %15, !dbg !3457

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3459, !tbaa !719
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3438, metadata !604), !dbg !3460
  %17 = zext i8 %16 to i32, !dbg !3461
  store i32 %17, i32* %8, align 4, !dbg !3462, !tbaa !678
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !3463
  ret i64 %19, !dbg !3463
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3464 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3509, metadata !604), !dbg !3514
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3515
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3516, metadata !604), !dbg !3519
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3521
  %4 = load i32, i32* %3, align 8, !dbg !3521, !tbaa !3522
  %5 = and i32 %4, 32, !dbg !3521
  %6 = icmp eq i32 %5, 0, !dbg !3523
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3524
  %8 = icmp ne i32 %7, 0, !dbg !3525
  br i1 %6, label %9, label %19, !dbg !3526

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3528
  %11 = icmp ne i64 %2, 0, !dbg !3528
  %12 = or i1 %11, %10, !dbg !3528
  %13 = sext i1 %8 to i32, !dbg !3528
  br i1 %12, label %22, label %14, !dbg !3528

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3530
  %16 = load i32, i32* %15, align 4, !dbg !3530, !tbaa !678
  %17 = icmp ne i32 %16, 9, !dbg !3532
  %18 = sext i1 %17 to i32, !dbg !3532
  br label %22, !dbg !3532

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3534

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3536
  store i32 0, i32* %21, align 4, !dbg !3538, !tbaa !678
  br label %22, !dbg !3536

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3539
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3540 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3545, metadata !604), !dbg !3565
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3546, metadata !604), !dbg !3566
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3567
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3547, metadata !604), !dbg !3568
  %3 = icmp eq i8* %2, null, !dbg !3569
  br i1 %3, label %15, label %4, !dbg !3570

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3555, metadata !604), !dbg !3571
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3556, metadata !604), !dbg !3572
  %5 = load i8, i8* %2, align 1, !dbg !3573, !tbaa !719
  %6 = icmp eq i8 %5, 67, !dbg !3575
  br i1 %6, label %7, label %11, !dbg !3578

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3580
  %9 = load i8, i8* %8, align 1, !dbg !3580, !tbaa !719
  %10 = icmp eq i8 %9, 0, !dbg !3583
  br i1 %10, label %14, label %11, !dbg !3585

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3561, metadata !604), !dbg !3587
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.96, i64 0, i64 0)) #11, !dbg !3588
  %13 = icmp eq i32 %12, 0, !dbg !3590
  br i1 %13, label %14, label %15, !dbg !3592

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3546, metadata !604), !dbg !3566
  br label %15, !dbg !3594

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3595
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3596 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3608, metadata !604), !dbg !3682
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3675, metadata !604), !dbg !3684
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3685
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3600, metadata !604), !dbg !3686
  %4 = icmp eq i8* %3, null, !dbg !3687
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), i8* %3, !dbg !3689
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3600, metadata !604), !dbg !3686
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3690, !tbaa !612
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3622, metadata !604) #11, !dbg !3691
  %7 = icmp eq i8* %6, null, !dbg !3692
  br i1 %7, label %8, label %127, !dbg !3693

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.100, i64 0, i64 0)) #11, !dbg !3694
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3623, metadata !604) #11, !dbg !3695
  %10 = icmp eq i8* %9, null, !dbg !3696
  br i1 %10, label %14, label %11, !dbg !3698

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3699, !tbaa !719
  %13 = icmp eq i8 %12, 0, !dbg !3701
  br i1 %13, label %14, label %15, !dbg !3702

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3704

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.101, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3623, metadata !604) #11, !dbg !3695
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3705
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3626, metadata !604) #11, !dbg !3706
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3628, metadata !604) #11, !dbg !3707
  %18 = icmp eq i64 %17, 0, !dbg !3708
  br i1 %18, label %24, label %19, !dbg !3709

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3710
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3710
  %22 = load i8, i8* %21, align 1, !dbg !3710, !tbaa !719
  %23 = icmp ne i8 %22, 47, !dbg !3712
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3713
  %27 = add i64 %17, 14, !dbg !3714
  %28 = add i64 %27, %26, !dbg !3715
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !3716
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3625, metadata !604) #11, !dbg !3717
  %30 = icmp eq i8* %29, null, !dbg !3718
  br i1 %30, label %125, label %31, !dbg !3718

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !3719
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3722

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3723, !tbaa !719
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3725
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.102, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3726
  br label %37, !dbg !3727

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3725
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.102, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3726
  br label %37, !dbg !3727

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !3728
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3630, metadata !604) #11, !dbg !3729
  %39 = icmp slt i32 %38, 0, !dbg !3730
  br i1 %39, label %123, label %40, !dbg !3731

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.103, i64 0, i64 0)) #11, !dbg !3732
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3631, metadata !604) #11, !dbg !3733
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3734
  br i1 %42, label %48, label %43, !dbg !3735

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3736

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !3737
  br label %123, !dbg !3739

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3672, metadata !604) #11, !dbg !3736
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3673, metadata !604) #11, !dbg !3740
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !3741
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !3742
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3743, metadata !604) #11, !dbg !3748
  %53 = load i8*, i8** %46, align 8, !dbg !3750, !tbaa !3751
  %54 = load i8*, i8** %47, align 8, !dbg !3750, !tbaa !3752
  %55 = icmp ult i8* %53, %54, !dbg !3750
  br i1 %55, label %58, label %56, !dbg !3750, !prof !714

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3753
  br label %62, !dbg !3753

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3755
  store i8* %59, i8** %46, align 8, !dbg !3755, !tbaa !3751
  %60 = load i8, i8* %53, align 1, !dbg !3755, !tbaa !719
  %61 = zext i8 %60 to i32, !dbg !3755
  br label %62, !dbg !3755

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3757
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3674, metadata !604) #11, !dbg !3759
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3760

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3761

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3743, metadata !604) #11, !dbg !3761
  %66 = load i8*, i8** %46, align 8, !dbg !3765, !tbaa !3751
  %67 = load i8*, i8** %47, align 8, !dbg !3765, !tbaa !3752
  %68 = icmp ult i8* %66, %67, !dbg !3765
  br i1 %68, label %71, label %69, !dbg !3765, !prof !714

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3766
  br label %75, !dbg !3766

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3767
  store i8* %72, i8** %46, align 8, !dbg !3767, !tbaa !3751
  %73 = load i8, i8* %66, align 1, !dbg !3767, !tbaa !719
  %74 = zext i8 %73 to i32, !dbg !3767
  br label %75, !dbg !3767

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3768
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3674, metadata !604) #11, !dbg !3759
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3769, !llvm.loop !3771

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !3774
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.104, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !3775
  %80 = icmp slt i32 %79, 2, !dbg !3777
  br i1 %80, label %115, label %81, !dbg !3778

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3779
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3679, metadata !604) #11, !dbg !3780
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3781
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3680, metadata !604) #11, !dbg !3782
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3681, metadata !604) #11, !dbg !3783
  %84 = icmp eq i64 %51, 0, !dbg !3784
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3786

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3673, metadata !604) #11, !dbg !3740
  %89 = add i64 %86, 2, !dbg !3787
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !3789
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3672, metadata !604) #11, !dbg !3736
  br label %95, !dbg !3790

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3791
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3673, metadata !604) #11, !dbg !3740
  %93 = add i64 %92, 1, !dbg !3793
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3672, metadata !604) #11, !dbg !3736
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3672, metadata !604) #11, !dbg !3736
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3673, metadata !604) #11, !dbg !3740
  %98 = icmp eq i8* %97, null, !dbg !3795
  br i1 %98, label %99, label %100, !dbg !3797

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3673, metadata !604) #11, !dbg !3740
  call void @free(i8* %52) #11, !dbg !3798
  br label %116, !dbg !3800

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3801
  %102 = xor i64 %83, -1, !dbg !3802
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3802
  %104 = xor i64 %82, -1, !dbg !3803
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3803
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3804, metadata !604) #11, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3812, metadata !604) #11, !dbg !3813
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !3815
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !3816
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3804, metadata !604) #11, !dbg !3817
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3812, metadata !604) #11, !dbg !3817
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !3819
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !3820
  br label %111, !dbg !3821

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3736

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3672, metadata !604) #11, !dbg !3736
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3673, metadata !604) #11, !dbg !3740
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !3821
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !3821
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3736

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3736

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3672, metadata !604) #11, !dbg !3736
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3673, metadata !604) #11, !dbg !3740
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !3821
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !3821
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !3822
  %120 = icmp eq i64 %117, 0, !dbg !3823
  br i1 %120, label %123, label %121, !dbg !3825

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3826
  store i8 0, i8* %122, align 1, !dbg !3828, !tbaa !719
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3622, metadata !604) #11, !dbg !3691
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3622, metadata !604) #11, !dbg !3691
  call void @free(i8* %29) #11, !dbg !3829
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.99, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3622, metadata !604) #11, !dbg !3691
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3830, !tbaa !612
  br label %127, !dbg !3831

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3601, metadata !604), !dbg !3832
  %129 = load i8, i8* %128, align 1, !dbg !3833, !tbaa !719
  %130 = icmp eq i8 %129, 0, !dbg !3834
  br i1 %130, label %157, label %131, !dbg !3835

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3837

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !3837
  %136 = icmp eq i32 %135, 0, !dbg !3838
  br i1 %136, label %143, label %137, !dbg !3839

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3840
  br i1 %138, label %139, label %147, !dbg !3842

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3843
  %141 = load i8, i8* %140, align 1, !dbg !3843, !tbaa !719
  %142 = icmp eq i8 %141, 0, !dbg !3845
  br i1 %142, label %143, label %147, !dbg !3846

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3848
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3850
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3851
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3600, metadata !604), !dbg !3686
  br label %157, !dbg !3852

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3853
  %149 = add i64 %148, 1, !dbg !3854
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3855
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3601, metadata !604), !dbg !3832
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3856
  %152 = add i64 %151, 1, !dbg !3857
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3858
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3601, metadata !604), !dbg !3832
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3601, metadata !604), !dbg !3832
  %154 = load i8, i8* %153, align 1, !dbg !3833, !tbaa !719
  %155 = icmp eq i8 %154, 0, !dbg !3834
  br i1 %155, label %156, label %132, !dbg !3835, !llvm.loop !3859

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3686

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3600, metadata !604), !dbg !3686
  %159 = load i8, i8* %158, align 1, !dbg !3862, !tbaa !719
  %160 = icmp eq i8 %159, 0, !dbg !3864
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i64 0, i64 0), i8* %158, !dbg !3865
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3600, metadata !604), !dbg !3686
  ret i8* %161, !dbg !3866
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3867 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3912, metadata !604), !dbg !3916
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3913, metadata !604), !dbg !3917
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3915, metadata !604), !dbg !3918
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3919
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3914, metadata !604), !dbg !3920
  %3 = icmp slt i32 %2, 0, !dbg !3921
  br i1 %3, label %4, label %6, !dbg !3923

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3924
  br label %24, !dbg !3925

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3926
  %8 = icmp eq i32 %7, 0, !dbg !3926
  br i1 %8, label %13, label %9, !dbg !3928

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3929
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3931
  %12 = icmp eq i64 %11, -1, !dbg !3933
  br i1 %12, label %16, label %13, !dbg !3934

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3935
  %15 = icmp eq i32 %14, 0, !dbg !3935
  br i1 %15, label %16, label %18, !dbg !3936

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3913, metadata !604), !dbg !3917
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3938
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3915, metadata !604), !dbg !3918
  br label %24, !dbg !3939

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3940
  %20 = load i32, i32* %19, align 4, !dbg !3940, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3913, metadata !604), !dbg !3917
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3913, metadata !604), !dbg !3917
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3938
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3915, metadata !604), !dbg !3918
  %22 = icmp eq i32 %20, 0, !dbg !3941
  br i1 %22, label %24, label %23, !dbg !3939

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3943, !tbaa !678
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3915, metadata !604), !dbg !3918
  br label %24, !dbg !3945

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3946
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3947 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3992, metadata !604), !dbg !3993
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3994
  br i1 %2, label %6, label %3, !dbg !3996

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3997
  %5 = icmp eq i32 %4, 0, !dbg !3997
  br i1 %5, label %6, label %8, !dbg !3999

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4001
  br label %17, !dbg !4002

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4003, metadata !604) #11, !dbg !4008
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4010
  %10 = load i32, i32* %9, align 8, !dbg !4010, !tbaa !3522
  %11 = and i32 %10, 256, !dbg !4012
  %12 = icmp eq i32 %11, 0, !dbg !4012
  br i1 %12, label %15, label %13, !dbg !4013

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4014
  br label %15, !dbg !4014

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4015
  br label %17, !dbg !4016

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4017
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4018 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4064, metadata !604), !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4065, metadata !604), !dbg !4071
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4066, metadata !604), !dbg !4072
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4073
  %5 = load i8*, i8** %4, align 8, !dbg !4073, !tbaa !3752
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4074
  %7 = load i8*, i8** %6, align 8, !dbg !4074, !tbaa !3751
  %8 = icmp eq i8* %5, %7, !dbg !4075
  br i1 %8, label %9, label %28, !dbg !4076

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4077
  %11 = load i8*, i8** %10, align 8, !dbg !4077, !tbaa !709
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4079
  %13 = load i8*, i8** %12, align 8, !dbg !4079, !tbaa !4080
  %14 = icmp eq i8* %11, %13, !dbg !4081
  br i1 %14, label %15, label %28, !dbg !4082

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4083
  %17 = load i8*, i8** %16, align 8, !dbg !4083, !tbaa !4084
  %18 = icmp eq i8* %17, null, !dbg !4085
  br i1 %18, label %19, label %28, !dbg !4086

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4088
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4067, metadata !604), !dbg !4091
  %22 = icmp eq i64 %21, -1, !dbg !4092
  br i1 %22, label %30, label %23, !dbg !4094

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4095
  %25 = load i32, i32* %24, align 8, !dbg !4096, !tbaa !3522
  %26 = and i32 %25, -17, !dbg !4096
  store i32 %26, i32* %24, align 8, !dbg !4096, !tbaa !3522
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4097
  store i64 %21, i64* %27, align 8, !dbg !4098, !tbaa !4099
  br label %30, !dbg !4100

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4101
  br label %30, !dbg !4102

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4103
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
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !80, !85, !546, !548, !93, !100, !107, !551, !191, !559, !576, !578, !580, !583, !585, !200, !588, !590, !592}
!llvm.ident = !{!594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594, !594}
!llvm.module.flags = !{!595, !596, !597, !598}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 35, type: !66, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !19)
!3 = !DIFile(filename: "src/dirname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!6, !8, !9, !12, !14, !17, !16}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 62, baseType: !11)
!10 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!11 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !{!20, !36, !0}
!20 = !DIGlobalVariableExpression(var: !21)
!21 = distinct !DIGlobalVariable(name: "dot", scope: !22, file: !3, line: 80, type: !18, isLocal: true, isDefinition: true)
!22 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 78, type: !23, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !27)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !25, !26}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!27 = !{!28, !29, !30, !32, !33, !34}
!28 = !DILocalVariable(name: "argc", arg: 1, scope: !22, file: !3, line: 78, type: !25)
!29 = !DILocalVariable(name: "argv", arg: 2, scope: !22, file: !3, line: 78, type: !26)
!30 = !DILocalVariable(name: "use_nuls", scope: !22, file: !3, line: 81, type: !31)
!31 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!32 = !DILocalVariable(name: "result", scope: !22, file: !3, line: 82, type: !17)
!33 = !DILocalVariable(name: "len", scope: !22, file: !3, line: 83, type: !9)
!34 = !DILocalVariable(name: "c", scope: !35, file: !3, line: 95, type: !25)
!35 = distinct !DILexicalBlock(scope: !22, file: !3, line: 94, column: 5)
!36 = !DIGlobalVariableExpression(var: !37)
!37 = distinct !DIGlobalVariable(name: "infomap", scope: !38, file: !39, line: 632, type: !63, isLocal: true, isDefinition: true)
!38 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !39, file: !39, line: 630, type: !40, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !42)
!39 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!40 = !DISubroutineType(types: !41)
!41 = !{null, !17}
!42 = !{!43, !44, !45, !52, !54, !55, !56, !59, !60, !62}
!43 = !DILocalVariable(name: "program", arg: 1, scope: !38, file: !39, line: 630, type: !17)
!44 = !DILocalVariable(name: "node", scope: !38, file: !39, line: 642, type: !17)
!45 = !DILocalVariable(name: "map_prog", scope: !38, file: !39, line: 643, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !38, file: !39, line: 632, size: 128, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !48, file: !39, line: 632, baseType: !17, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !48, file: !39, line: 632, baseType: !17, size: 64, offset: 64)
!52 = !DILocalVariable(name: "__s1_len", scope: !53, file: !39, line: 645, type: !9)
!53 = distinct !DILexicalBlock(scope: !38, file: !39, line: 645, column: 33)
!54 = !DILocalVariable(name: "__s2_len", scope: !53, file: !39, line: 645, type: !9)
!55 = !DILocalVariable(name: "lc_messages", scope: !38, file: !39, line: 655, type: !17)
!56 = !DILocalVariable(name: "__s1_len", scope: !57, file: !39, line: 656, type: !9)
!57 = distinct !DILexicalBlock(scope: !58, file: !39, line: 656, column: 22)
!58 = distinct !DILexicalBlock(scope: !38, file: !39, line: 656, column: 7)
!59 = !DILocalVariable(name: "__s2_len", scope: !57, file: !39, line: 656, type: !9)
!60 = !DILocalVariable(name: "__s2", scope: !61, file: !39, line: 656, type: !14)
!61 = distinct !DILexicalBlock(scope: !57, file: !39, line: 656, column: 22)
!62 = !DILocalVariable(name: "__result", scope: !61, file: !39, line: 656, type: !25)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 896, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 7)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1024, elements: !76)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !69, line: 104, size: 256, elements: !70)
!69 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!70 = !{!71, !72, !73, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !68, file: !69, line: 106, baseType: !17, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !68, file: !69, line: 109, baseType: !25, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !68, file: !69, line: 110, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !68, file: !69, line: 111, baseType: !25, size: 32, offset: 192)
!76 = !{!77}
!77 = !DISubrange(count: 4)
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "Version", scope: !80, file: !81, line: 2, type: !17, isLocal: false, isDefinition: true)
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !82)
!81 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!82 = !{!78}
!83 = !DIGlobalVariableExpression(var: !84)
!84 = distinct !DIGlobalVariable(name: "file_name", scope: !85, file: !90, line: 36, type: !17, isLocal: true, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !87)
!86 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !{!83, !88}
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !85, file: !90, line: 46, type: !31, isLocal: true, isDefinition: true)
!90 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "exit_failure", scope: !93, file: !96, line: 24, type: !97, isLocal: false, isDefinition: true)
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !95)
!94 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !{!91}
!96 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!97 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "program_name", scope: !100, file: !104, line: 33, type: !17, isLocal: false, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !103)
!101 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !{!8, !6}
!103 = !{!98}
!104 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !107, file: !149, line: 77, type: !185, isLocal: false, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !108, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !109, retainedTypes: !144, globals: !146)
!108 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!110, !124, !129}
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !111, line: 32, size: 32, elements: !112)
!111 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!113 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!114 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!115 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!116 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!117 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!118 = !DIEnumerator(name: "c_quoting_style", value: 5)
!119 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!120 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!121 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!122 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!123 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !111, line: 242, size: 32, elements: !125)
!125 = !{!126, !127, !128}
!126 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!127 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!128 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 46, size: 32, elements: !131)
!130 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!132 = !DIEnumerator(name: "_ISupper", value: 256)
!133 = !DIEnumerator(name: "_ISlower", value: 512)
!134 = !DIEnumerator(name: "_ISalpha", value: 1024)
!135 = !DIEnumerator(name: "_ISdigit", value: 2048)
!136 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!137 = !DIEnumerator(name: "_ISspace", value: 8192)
!138 = !DIEnumerator(name: "_ISprint", value: 16384)
!139 = !DIEnumerator(name: "_ISgraph", value: 32768)
!140 = !DIEnumerator(name: "_ISblank", value: 1)
!141 = !DIEnumerator(name: "_IScntrl", value: 2)
!142 = !DIEnumerator(name: "_ISpunct", value: 4)
!143 = !DIEnumerator(name: "_ISalnum", value: 8)
!144 = !{!25, !145, !9, !6}
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !{!105, !147, !154, !167, !169, !174, !181, !183}
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !107, file: !149, line: 93, type: !150, isLocal: false, isDefinition: true)
!149 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 320, elements: !152)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!152 = !{!153}
!153 = !DISubrange(count: 10)
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !107, file: !149, line: 1043, type: !156, isLocal: false, isDefinition: true)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !149, line: 57, size: 448, elements: !157)
!157 = !{!158, !159, !160, !165, !166}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !156, file: !149, line: 60, baseType: !110, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !149, line: 63, baseType: !25, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !156, file: !149, line: 67, baseType: !161, size: 256, offset: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !163)
!162 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!163 = !{!164}
!164 = !DISubrange(count: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !156, file: !149, line: 70, baseType: !17, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !156, file: !149, line: 73, baseType: !17, size: 64, offset: 384)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !107, file: !149, line: 108, type: !156, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "slot0", scope: !107, file: !149, line: 834, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 256)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "slotvec", scope: !107, file: !149, line: 837, type: !176, isLocal: true, isDefinition: true)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !149, line: 826, size: 128, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !177, file: !149, line: 828, baseType: !9, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !177, file: !149, line: 829, baseType: !6, size: 64, offset: 64)
!181 = !DIGlobalVariableExpression(var: !182)
!182 = distinct !DIGlobalVariable(name: "nslots", scope: !107, file: !149, line: 835, type: !25, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "slotvec0", scope: !107, file: !149, line: 836, type: !177, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 704, elements: !187)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!187 = !{!188}
!188 = !DISubrange(count: 11)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !191, file: !194, line: 26, type: !195, isLocal: false, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !193)
!192 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !{!189}
!194 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 47)
!198 = !DIGlobalVariableExpression(var: !199)
!199 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !200, file: !544, line: 120, type: !545, isLocal: true, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !202, retainedTypes: !541, globals: !543)
!201 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!202 = !{!203}
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !204, line: 41, size: 32, elements: !205)
!204 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!206 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!207 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!208 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!209 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!210 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!211 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!212 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!213 = !DIEnumerator(name: "DAY_1", value: 131079)
!214 = !DIEnumerator(name: "DAY_2", value: 131080)
!215 = !DIEnumerator(name: "DAY_3", value: 131081)
!216 = !DIEnumerator(name: "DAY_4", value: 131082)
!217 = !DIEnumerator(name: "DAY_5", value: 131083)
!218 = !DIEnumerator(name: "DAY_6", value: 131084)
!219 = !DIEnumerator(name: "DAY_7", value: 131085)
!220 = !DIEnumerator(name: "ABMON_1", value: 131086)
!221 = !DIEnumerator(name: "ABMON_2", value: 131087)
!222 = !DIEnumerator(name: "ABMON_3", value: 131088)
!223 = !DIEnumerator(name: "ABMON_4", value: 131089)
!224 = !DIEnumerator(name: "ABMON_5", value: 131090)
!225 = !DIEnumerator(name: "ABMON_6", value: 131091)
!226 = !DIEnumerator(name: "ABMON_7", value: 131092)
!227 = !DIEnumerator(name: "ABMON_8", value: 131093)
!228 = !DIEnumerator(name: "ABMON_9", value: 131094)
!229 = !DIEnumerator(name: "ABMON_10", value: 131095)
!230 = !DIEnumerator(name: "ABMON_11", value: 131096)
!231 = !DIEnumerator(name: "ABMON_12", value: 131097)
!232 = !DIEnumerator(name: "MON_1", value: 131098)
!233 = !DIEnumerator(name: "MON_2", value: 131099)
!234 = !DIEnumerator(name: "MON_3", value: 131100)
!235 = !DIEnumerator(name: "MON_4", value: 131101)
!236 = !DIEnumerator(name: "MON_5", value: 131102)
!237 = !DIEnumerator(name: "MON_6", value: 131103)
!238 = !DIEnumerator(name: "MON_7", value: 131104)
!239 = !DIEnumerator(name: "MON_8", value: 131105)
!240 = !DIEnumerator(name: "MON_9", value: 131106)
!241 = !DIEnumerator(name: "MON_10", value: 131107)
!242 = !DIEnumerator(name: "MON_11", value: 131108)
!243 = !DIEnumerator(name: "MON_12", value: 131109)
!244 = !DIEnumerator(name: "AM_STR", value: 131110)
!245 = !DIEnumerator(name: "PM_STR", value: 131111)
!246 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!247 = !DIEnumerator(name: "D_FMT", value: 131113)
!248 = !DIEnumerator(name: "T_FMT", value: 131114)
!249 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!250 = !DIEnumerator(name: "ERA", value: 131116)
!251 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!252 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!253 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!254 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!255 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!256 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!257 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!258 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!259 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!260 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!261 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!262 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!263 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!264 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!265 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!266 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!267 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!268 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!269 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!270 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!271 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!272 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!273 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!274 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!275 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!276 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!277 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!278 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!279 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!280 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!281 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!282 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!283 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!284 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!285 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!286 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!287 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!288 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!289 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!290 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!291 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!292 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!293 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!294 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!295 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!296 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!297 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!298 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!299 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!300 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!301 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!302 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!303 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!304 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!305 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!306 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!307 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!308 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!309 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!310 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!311 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!312 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!313 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!314 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!315 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!316 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!317 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!318 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!319 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!320 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!321 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!322 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!323 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!324 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!325 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!326 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!327 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!328 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!329 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!330 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!331 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!332 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!333 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!334 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!335 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!336 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!337 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!338 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!339 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!340 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!341 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!342 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!343 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!344 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!345 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!346 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!347 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!348 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!349 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!350 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!351 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!352 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!353 = !DIEnumerator(name: "CODESET", value: 14)
!354 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!355 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!356 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!357 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!401 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!402 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!403 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!404 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!405 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!406 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!407 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!408 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!409 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!410 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!425 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!426 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!427 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!428 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!429 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!430 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!431 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!432 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!433 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!434 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!435 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!436 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!437 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!438 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!439 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!440 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!441 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!442 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!443 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!444 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!445 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!446 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!447 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!464 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!465 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!468 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!469 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!470 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!471 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!472 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!473 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!474 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!475 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!476 = !DIEnumerator(name: "THOUSEP", value: 65537)
!477 = !DIEnumerator(name: "__GROUPING", value: 65538)
!478 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!479 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!480 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!481 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!482 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!483 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!484 = !DIEnumerator(name: "__YESSTR", value: 327682)
!485 = !DIEnumerator(name: "__NOSTR", value: 327683)
!486 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!487 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!488 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!489 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!490 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!491 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!492 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!493 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!494 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!495 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!496 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!497 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!498 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!499 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!500 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!501 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!502 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!503 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!504 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!505 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!506 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!507 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!508 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!509 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!510 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!511 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!512 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!513 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!514 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!515 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!516 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!517 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!518 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!519 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!520 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!521 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!522 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!539 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!540 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!541 = !{!8, !6, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!543 = !{!198}
!544 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!545 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!546 = distinct !DICompileUnit(language: DW_LANG_C99, file: !547, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!547 = !DIFile(filename: "./lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!548 = distinct !DICompileUnit(language: DW_LANG_C99, file: !549, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !550)
!549 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!550 = !{!6}
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !553, retainedTypes: !558)
!552 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!553 = !{!554}
!554 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !555, line: 41, size: 32, elements: !556)
!555 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = !{!557}
!557 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!558 = !{!8}
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !561, retainedTypes: !575)
!560 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = !{!562}
!562 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !564, file: !563, line: 192, size: 32, elements: !573)
!563 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = distinct !DISubprogram(name: "x2nrealloc", scope: !563, file: !563, line: 180, type: !565, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !568)
!565 = !DISubroutineType(types: !566)
!566 = !{!8, !8, !567, !9}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!568 = !{!569, !570, !571, !572}
!569 = !DILocalVariable(name: "p", arg: 1, scope: !564, file: !563, line: 180, type: !8)
!570 = !DILocalVariable(name: "pn", arg: 2, scope: !564, file: !563, line: 180, type: !567)
!571 = !DILocalVariable(name: "s", arg: 3, scope: !564, file: !563, line: 180, type: !9)
!572 = !DILocalVariable(name: "n", scope: !564, file: !563, line: 182, type: !9)
!573 = !{!574}
!574 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!575 = !{!9, !6, !8}
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!577 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !558)
!579 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !582)
!581 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = !{!9}
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!584 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !587)
!586 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = !{!9, !12, !14, !17}
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!589 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !558)
!591 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !558)
!593 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!595 = !{i32 2, !"Dwarf Version", i32 4}
!596 = !{i32 2, !"Debug Info Version", i32 3}
!597 = !{i32 1, !"PIC Level", i32 2}
!598 = !{i32 1, !"PIE Level", i32 2}
!599 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 44, type: !600, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !25}
!602 = !{!603}
!603 = !DILocalVariable(name: "status", arg: 1, scope: !599, file: !3, line: 44, type: !25)
!604 = !DIExpression()
!605 = !DILocation(line: 44, column: 12, scope: !599)
!606 = !DILocation(line: 46, column: 14, scope: !607)
!607 = distinct !DILexicalBlock(scope: !599, file: !3, line: 46, column: 7)
!608 = !DILocation(line: 46, column: 7, scope: !599)
!609 = !DILocation(line: 47, column: 5, scope: !610)
!610 = !DILexicalBlockFile(scope: !611, file: !3, discriminator: 1)
!611 = distinct !DILexicalBlock(scope: !607, file: !3, line: 47, column: 5)
!612 = !{!613, !613, i64 0}
!613 = !{!"any pointer", !614, i64 0}
!614 = !{!"omnipotent char", !615, i64 0}
!615 = !{!"Simple C/C++ TBAA"}
!616 = !DILocation(line: 47, column: 5, scope: !617)
!617 = !DILexicalBlockFile(scope: !611, file: !3, discriminator: 3)
!618 = !DILocation(line: 47, column: 5, scope: !619)
!619 = !DILexicalBlockFile(scope: !611, file: !3, discriminator: 2)
!620 = !DILocation(line: 50, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !607, file: !3, line: 49, column: 5)
!622 = !DILocation(line: 50, column: 7, scope: !623)
!623 = !DILexicalBlockFile(scope: !621, file: !3, discriminator: 1)
!624 = !DILocation(line: 54, column: 7, scope: !621)
!625 = !DILocation(line: 54, column: 7, scope: !623)
!626 = !DILocation(line: 59, column: 7, scope: !621)
!627 = !DILocation(line: 59, column: 7, scope: !623)
!628 = !DILocation(line: 62, column: 7, scope: !621)
!629 = !DILocation(line: 62, column: 7, scope: !623)
!630 = !DILocation(line: 63, column: 7, scope: !621)
!631 = !DILocation(line: 63, column: 7, scope: !623)
!632 = !DILocation(line: 64, column: 7, scope: !621)
!633 = !DILocation(line: 64, column: 7, scope: !623)
!634 = !DILocation(line: 642, column: 15, scope: !38, inlinedAt: !635)
!635 = distinct !DILocation(line: 72, column: 7, scope: !621)
!636 = !DILocation(line: 651, column: 3, scope: !38, inlinedAt: !635)
!637 = !DILocation(line: 651, column: 3, scope: !638, inlinedAt: !635)
!638 = !DILexicalBlockFile(scope: !38, file: !39, discriminator: 1)
!639 = !DILocation(line: 655, column: 29, scope: !38, inlinedAt: !635)
!640 = !DILocation(line: 655, column: 15, scope: !38, inlinedAt: !635)
!641 = !DILocation(line: 656, column: 7, scope: !58, inlinedAt: !635)
!642 = !DILocation(line: 656, column: 19, scope: !58, inlinedAt: !635)
!643 = !DILocation(line: 656, column: 22, scope: !644, inlinedAt: !635)
!644 = !DILexicalBlockFile(scope: !58, file: !39, discriminator: 16)
!645 = !DILocation(line: 656, column: 7, scope: !646, inlinedAt: !635)
!646 = !DILexicalBlockFile(scope: !38, file: !39, discriminator: 16)
!647 = !DILocation(line: 662, column: 7, scope: !648, inlinedAt: !635)
!648 = distinct !DILexicalBlock(scope: !58, file: !39, line: 657, column: 5)
!649 = !DILocation(line: 662, column: 7, scope: !650, inlinedAt: !635)
!650 = !DILexicalBlockFile(scope: !648, file: !39, discriminator: 1)
!651 = !DILocation(line: 664, column: 5, scope: !648, inlinedAt: !635)
!652 = !DILocation(line: 665, column: 3, scope: !38, inlinedAt: !635)
!653 = !DILocation(line: 665, column: 3, scope: !638, inlinedAt: !635)
!654 = !DILocation(line: 667, column: 3, scope: !38, inlinedAt: !635)
!655 = !DILocation(line: 667, column: 3, scope: !638, inlinedAt: !635)
!656 = !DILocation(line: 74, column: 3, scope: !599)
!657 = !DILocation(line: 78, column: 11, scope: !22)
!658 = !DILocation(line: 78, column: 24, scope: !22)
!659 = !DILocation(line: 81, column: 8, scope: !22)
!660 = !DILocation(line: 86, column: 21, scope: !22)
!661 = !DILocation(line: 86, column: 3, scope: !22)
!662 = !DILocation(line: 87, column: 3, scope: !22)
!663 = !DILocation(line: 88, column: 3, scope: !22)
!664 = !DILocation(line: 89, column: 3, scope: !22)
!665 = !DILocation(line: 91, column: 3, scope: !22)
!666 = !DILocation(line: 93, column: 3, scope: !22)
!667 = !DILocation(line: 95, column: 15, scope: !35)
!668 = !DILocation(line: 95, column: 11, scope: !35)
!669 = !DILocation(line: 97, column: 11, scope: !35)
!670 = !DILocation(line: 106, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !35, file: !3, line: 101, column: 9)
!672 = !DILocation(line: 107, column: 9, scope: !671)
!673 = !DILocation(line: 107, column: 9, scope: !674)
!674 = !DILexicalBlockFile(scope: !671, file: !3, discriminator: 1)
!675 = !DILocation(line: 110, column: 11, scope: !671)
!676 = !DILocation(line: 114, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !22, file: !3, line: 114, column: 7)
!678 = !{!679, !679, i64 0}
!679 = !{!"int", !614, i64 0}
!680 = !DILocation(line: 114, column: 12, scope: !677)
!681 = !DILocation(line: 114, column: 7, scope: !22)
!682 = !DILocation(line: 120, column: 3, scope: !683)
!683 = !DILexicalBlockFile(scope: !684, file: !3, discriminator: 1)
!684 = distinct !DILexicalBlock(scope: !22, file: !3, line: 120, column: 3)
!685 = !DILocation(line: 116, column: 20, scope: !686)
!686 = distinct !DILexicalBlock(scope: !677, file: !3, line: 115, column: 5)
!687 = !DILocation(line: 116, column: 7, scope: !688)
!688 = !DILexicalBlockFile(scope: !686, file: !3, discriminator: 1)
!689 = !DILocation(line: 117, column: 7, scope: !686)
!690 = !DILocation(line: 122, column: 16, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 121, column: 5)
!692 = distinct !DILexicalBlock(scope: !684, file: !3, line: 120, column: 3)
!693 = !DILocation(line: 82, column: 15, scope: !22)
!694 = !DILocation(line: 123, column: 13, scope: !691)
!695 = !DILocation(line: 83, column: 10, scope: !22)
!696 = !DILocation(line: 125, column: 13, scope: !697)
!697 = distinct !DILexicalBlock(scope: !691, file: !3, line: 125, column: 11)
!698 = !DILocation(line: 125, column: 11, scope: !691)
!699 = !DILocation(line: 131, column: 7, scope: !691)
!700 = !DILocalVariable(name: "__c", arg: 1, scope: !701, file: !702, line: 105, type: !25)
!701 = distinct !DISubprogram(name: "putchar_unlocked", scope: !702, file: !702, line: 105, type: !703, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !705)
!702 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!703 = !DISubroutineType(types: !704)
!704 = !{!25, !25}
!705 = !{!700}
!706 = !DILocation(line: 105, column: 23, scope: !701, inlinedAt: !707)
!707 = distinct !DILocation(line: 132, column: 7, scope: !691)
!708 = !DILocation(line: 107, column: 10, scope: !701, inlinedAt: !707)
!709 = !{!710, !613, i64 40}
!710 = !{!"_IO_FILE", !679, i64 0, !613, i64 8, !613, i64 16, !613, i64 24, !613, i64 32, !613, i64 40, !613, i64 48, !613, i64 56, !613, i64 64, !613, i64 72, !613, i64 80, !613, i64 88, !613, i64 96, !613, i64 104, !679, i64 112, !679, i64 116, !711, i64 120, !712, i64 128, !614, i64 130, !614, i64 131, !613, i64 136, !711, i64 144, !613, i64 152, !613, i64 160, !613, i64 168, !613, i64 176, !711, i64 184, !679, i64 192, !614, i64 196}
!711 = !{!"long", !614, i64 0}
!712 = !{!"short", !614, i64 0}
!713 = !{!710, !613, i64 48}
!714 = !{!"branch_weights", i32 2000, i32 1}
!715 = !DILocation(line: 107, column: 10, scope: !716, inlinedAt: !707)
!716 = !DILexicalBlockFile(scope: !701, file: !702, discriminator: 1)
!717 = !DILocation(line: 107, column: 10, scope: !718, inlinedAt: !707)
!718 = !DILexicalBlockFile(scope: !701, file: !702, discriminator: 2)
!719 = !{!614, !614, i64 0}
!720 = !DILocation(line: 120, column: 31, scope: !721)
!721 = !DILexicalBlockFile(scope: !692, file: !3, discriminator: 2)
!722 = !DILocation(line: 120, column: 17, scope: !723)
!723 = !DILexicalBlockFile(scope: !692, file: !3, discriminator: 1)
!724 = distinct !{!724, !725, !726}
!725 = !DILocation(line: 120, column: 3, scope: !684)
!726 = !DILocation(line: 133, column: 5, scope: !684)
!727 = !DILocation(line: 136, column: 1, scope: !22)
!728 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !90, file: !90, line: 41, type: !40, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !729)
!729 = !{!730}
!730 = !DILocalVariable(name: "file", arg: 1, scope: !728, file: !90, line: 41, type: !17)
!731 = !DILocation(line: 41, column: 41, scope: !728)
!732 = !DILocation(line: 43, column: 13, scope: !728)
!733 = !DILocation(line: 44, column: 1, scope: !728)
!734 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !90, file: !90, line: 78, type: !735, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !31}
!737 = !{!738}
!738 = !DILocalVariable(name: "ignore", arg: 1, scope: !734, file: !90, line: 78, type: !31)
!739 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!740 = !DILocation(line: 78, column: 37, scope: !734)
!741 = !DILocation(line: 80, column: 16, scope: !734)
!742 = !{!743, !743, i64 0}
!743 = !{!"_Bool", !614, i64 0}
!744 = !DILocation(line: 81, column: 1, scope: !734)
!745 = distinct !DISubprogram(name: "close_stdout", scope: !90, file: !90, line: 107, type: !746, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !85, variables: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{null}
!748 = !{!749}
!749 = !DILocalVariable(name: "write_error", scope: !750, file: !90, line: 112, type: !17)
!750 = distinct !DILexicalBlock(scope: !751, file: !90, line: 111, column: 5)
!751 = distinct !DILexicalBlock(scope: !745, file: !90, line: 109, column: 7)
!752 = !DILocation(line: 109, column: 21, scope: !751)
!753 = !DILocation(line: 109, column: 7, scope: !751)
!754 = !DILocation(line: 109, column: 29, scope: !751)
!755 = !DILocation(line: 110, column: 7, scope: !751)
!756 = !DILocation(line: 110, column: 12, scope: !757)
!757 = !DILexicalBlockFile(scope: !751, file: !90, discriminator: 1)
!758 = !{i8 0, i8 2}
!759 = !DILocation(line: 114, column: 19, scope: !760)
!760 = distinct !DILexicalBlock(scope: !750, file: !90, line: 113, column: 11)
!761 = !DILocation(line: 110, column: 25, scope: !757)
!762 = !DILocation(line: 110, column: 28, scope: !763)
!763 = !DILexicalBlockFile(scope: !751, file: !90, discriminator: 2)
!764 = !DILocation(line: 110, column: 34, scope: !763)
!765 = !DILocation(line: 109, column: 7, scope: !766)
!766 = !DILexicalBlockFile(scope: !745, file: !90, discriminator: 1)
!767 = !DILocation(line: 112, column: 33, scope: !750)
!768 = !DILocation(line: 112, column: 19, scope: !750)
!769 = !DILocation(line: 113, column: 11, scope: !760)
!770 = !DILocation(line: 113, column: 11, scope: !750)
!771 = !DILocation(line: 114, column: 36, scope: !772)
!772 = !DILexicalBlockFile(scope: !760, file: !90, discriminator: 1)
!773 = !DILocation(line: 114, column: 9, scope: !774)
!774 = !DILexicalBlockFile(scope: !760, file: !90, discriminator: 2)
!775 = !DILocation(line: 114, column: 9, scope: !760)
!776 = !DILocation(line: 117, column: 9, scope: !772)
!777 = !DILocation(line: 119, column: 14, scope: !750)
!778 = !DILocation(line: 119, column: 7, scope: !750)
!779 = !DILocation(line: 122, column: 22, scope: !780)
!780 = distinct !DILexicalBlock(scope: !745, file: !90, line: 122, column: 8)
!781 = !DILocation(line: 122, column: 8, scope: !780)
!782 = !DILocation(line: 122, column: 30, scope: !780)
!783 = !DILocation(line: 122, column: 8, scope: !745)
!784 = !DILocation(line: 123, column: 13, scope: !780)
!785 = !DILocation(line: 123, column: 6, scope: !780)
!786 = !DILocation(line: 124, column: 1, scope: !745)
!787 = distinct !DISubprogram(name: "dir_len", scope: !788, file: !788, line: 32, type: !789, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !791)
!788 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!789 = !DISubroutineType(types: !790)
!790 = !{!9, !17}
!791 = !{!792, !793, !794}
!792 = !DILocalVariable(name: "file", arg: 1, scope: !787, file: !788, line: 32, type: !17)
!793 = !DILocalVariable(name: "prefix_length", scope: !787, file: !788, line: 34, type: !9)
!794 = !DILocalVariable(name: "length", scope: !787, file: !788, line: 35, type: !9)
!795 = !DILocation(line: 32, column: 22, scope: !787)
!796 = !DILocation(line: 34, column: 10, scope: !787)
!797 = !DILocation(line: 41, column: 24, scope: !787)
!798 = !DILocation(line: 38, column: 21, scope: !799)
!799 = !DILexicalBlockFile(scope: !787, file: !788, discriminator: 2)
!800 = !DILocation(line: 48, column: 17, scope: !801)
!801 = distinct !DILexicalBlock(scope: !787, file: !788, line: 48, column: 3)
!802 = !DILocation(line: 48, column: 39, scope: !801)
!803 = !DILocation(line: 35, column: 10, scope: !787)
!804 = !DILocation(line: 48, column: 8, scope: !801)
!805 = !DILocation(line: 49, column: 22, scope: !806)
!806 = distinct !DILexicalBlock(scope: !801, file: !788, line: 48, column: 3)
!807 = !DILocation(line: 48, column: 3, scope: !808)
!808 = !DILexicalBlockFile(scope: !801, file: !788, discriminator: 1)
!809 = !DILocation(line: 50, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !806, file: !788, line: 50, column: 9)
!811 = !DILocation(line: 50, column: 9, scope: !806)
!812 = distinct !{!812, !813, !814}
!813 = !DILocation(line: 48, column: 3, scope: !801)
!814 = !DILocation(line: 51, column: 7, scope: !801)
!815 = !DILocation(line: 52, column: 3, scope: !787)
!816 = distinct !DISubprogram(name: "mdir_name", scope: !788, file: !788, line: 71, type: !817, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!6, !17}
!819 = !{!820, !821, !822, !823}
!820 = !DILocalVariable(name: "file", arg: 1, scope: !816, file: !788, line: 71, type: !17)
!821 = !DILocalVariable(name: "length", scope: !816, file: !788, line: 73, type: !9)
!822 = !DILocalVariable(name: "append_dot", scope: !816, file: !788, line: 74, type: !31)
!823 = !DILocalVariable(name: "dir", scope: !816, file: !788, line: 78, type: !6)
!824 = !DILocation(line: 71, column: 24, scope: !816)
!825 = !DILocation(line: 32, column: 22, scope: !787, inlinedAt: !826)
!826 = distinct !DILocation(line: 73, column: 19, scope: !816)
!827 = !DILocation(line: 34, column: 10, scope: !787, inlinedAt: !826)
!828 = !DILocation(line: 41, column: 24, scope: !787, inlinedAt: !826)
!829 = !DILocation(line: 38, column: 21, scope: !799, inlinedAt: !826)
!830 = !DILocation(line: 48, column: 17, scope: !801, inlinedAt: !826)
!831 = !DILocation(line: 48, column: 39, scope: !801, inlinedAt: !826)
!832 = !DILocation(line: 35, column: 10, scope: !787, inlinedAt: !826)
!833 = !DILocation(line: 48, column: 8, scope: !801, inlinedAt: !826)
!834 = !DILocation(line: 49, column: 22, scope: !806, inlinedAt: !826)
!835 = !DILocation(line: 48, column: 3, scope: !808, inlinedAt: !826)
!836 = !DILocation(line: 50, column: 11, scope: !810, inlinedAt: !826)
!837 = !DILocation(line: 50, column: 9, scope: !806, inlinedAt: !826)
!838 = !DILocation(line: 73, column: 10, scope: !816)
!839 = !DILocation(line: 74, column: 29, scope: !816)
!840 = !DILocation(line: 78, column: 32, scope: !816)
!841 = !DILocation(line: 78, column: 30, scope: !816)
!842 = !DILocation(line: 78, column: 43, scope: !816)
!843 = !DILocation(line: 78, column: 15, scope: !816)
!844 = !DILocation(line: 78, column: 9, scope: !816)
!845 = !DILocation(line: 79, column: 8, scope: !846)
!846 = distinct !DILexicalBlock(scope: !816, file: !788, line: 79, column: 7)
!847 = !DILocation(line: 79, column: 7, scope: !816)
!848 = !DILocation(line: 81, column: 3, scope: !816)
!849 = !DILocation(line: 82, column: 7, scope: !816)
!850 = !DILocation(line: 83, column: 19, scope: !851)
!851 = distinct !DILexicalBlock(scope: !816, file: !788, line: 82, column: 7)
!852 = !DILocation(line: 83, column: 5, scope: !851)
!853 = !DILocation(line: 84, column: 3, scope: !816)
!854 = !DILocation(line: 84, column: 15, scope: !816)
!855 = !DILocation(line: 85, column: 3, scope: !816)
!856 = !DILocation(line: 86, column: 1, scope: !816)
!857 = distinct !DISubprogram(name: "last_component", scope: !858, file: !858, line: 30, type: !817, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !548, variables: !859)
!858 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!859 = !{!860, !861, !862, !863}
!860 = !DILocalVariable(name: "name", arg: 1, scope: !857, file: !858, line: 30, type: !17)
!861 = !DILocalVariable(name: "base", scope: !857, file: !858, line: 32, type: !17)
!862 = !DILocalVariable(name: "p", scope: !857, file: !858, line: 33, type: !17)
!863 = !DILocalVariable(name: "saw_slash", scope: !857, file: !858, line: 34, type: !31)
!864 = !DILocation(line: 30, column: 29, scope: !857)
!865 = !DILocation(line: 32, column: 15, scope: !857)
!866 = !DILocation(line: 34, column: 8, scope: !857)
!867 = !DILocation(line: 36, column: 3, scope: !857)
!868 = !DILocation(line: 36, column: 10, scope: !869)
!869 = !DILexicalBlockFile(scope: !857, file: !858, discriminator: 1)
!870 = !DILocation(line: 37, column: 9, scope: !857)
!871 = !DILocation(line: 36, column: 3, scope: !869)
!872 = distinct !{!872, !867, !870}
!873 = !DILocation(line: 39, column: 18, scope: !874)
!874 = !DILexicalBlockFile(scope: !875, file: !858, discriminator: 1)
!875 = distinct !DILexicalBlock(scope: !876, file: !858, line: 39, column: 3)
!876 = distinct !DILexicalBlock(scope: !857, file: !858, line: 39, column: 3)
!877 = !DILocation(line: 33, column: 15, scope: !857)
!878 = !DILocation(line: 39, column: 3, scope: !879)
!879 = !DILexicalBlockFile(scope: !876, file: !858, discriminator: 1)
!880 = !DILocation(line: 43, column: 16, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !858, line: 43, column: 16)
!882 = distinct !DILexicalBlock(scope: !883, file: !858, line: 41, column: 11)
!883 = distinct !DILexicalBlock(scope: !875, file: !858, line: 40, column: 5)
!884 = !DILocation(line: 43, column: 16, scope: !882)
!885 = !DILocation(line: 39, column: 23, scope: !886)
!886 = !DILexicalBlockFile(scope: !875, file: !858, discriminator: 2)
!887 = !DILocation(line: 39, column: 3, scope: !886)
!888 = distinct !{!888, !889, !890}
!889 = !DILocation(line: 39, column: 3, scope: !876)
!890 = !DILocation(line: 48, column: 5, scope: !876)
!891 = !DILocation(line: 50, column: 3, scope: !857)
!892 = distinct !DISubprogram(name: "base_len", scope: !858, file: !858, line: 58, type: !789, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !548, variables: !893)
!893 = !{!894, !895, !896}
!894 = !DILocalVariable(name: "name", arg: 1, scope: !892, file: !858, line: 58, type: !17)
!895 = !DILocalVariable(name: "len", scope: !892, file: !858, line: 60, type: !9)
!896 = !DILocalVariable(name: "prefix_len", scope: !892, file: !858, line: 61, type: !9)
!897 = !DILocation(line: 58, column: 23, scope: !892)
!898 = !DILocation(line: 61, column: 10, scope: !892)
!899 = !DILocation(line: 63, column: 14, scope: !900)
!900 = distinct !DILexicalBlock(scope: !892, file: !858, line: 63, column: 3)
!901 = !DILocation(line: 60, column: 10, scope: !892)
!902 = !DILocation(line: 63, column: 8, scope: !900)
!903 = !DILocation(line: 63, column: 32, scope: !904)
!904 = !DILexicalBlockFile(scope: !905, file: !858, discriminator: 1)
!905 = distinct !DILexicalBlock(scope: !900, file: !858, line: 63, column: 3)
!906 = !DILocation(line: 63, column: 38, scope: !904)
!907 = !DILocation(line: 63, column: 41, scope: !908)
!908 = !DILexicalBlockFile(scope: !905, file: !858, discriminator: 2)
!909 = !DILocation(line: 63, column: 3, scope: !910)
!910 = !DILexicalBlockFile(scope: !900, file: !858, discriminator: 3)
!911 = distinct !{!911, !912, !913}
!912 = !DILocation(line: 63, column: 3, scope: !900)
!913 = !DILocation(line: 64, column: 5, scope: !900)
!914 = !DILocation(line: 74, column: 3, scope: !892)
!915 = distinct !DISubprogram(name: "set_program_name", scope: !104, file: !104, line: 39, type: !40, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !916)
!916 = !{!917, !918, !919}
!917 = !DILocalVariable(name: "argv0", arg: 1, scope: !915, file: !104, line: 39, type: !17)
!918 = !DILocalVariable(name: "slash", scope: !915, file: !104, line: 46, type: !17)
!919 = !DILocalVariable(name: "base", scope: !915, file: !104, line: 47, type: !17)
!920 = !DILocation(line: 39, column: 31, scope: !915)
!921 = !DILocation(line: 51, column: 13, scope: !922)
!922 = distinct !DILexicalBlock(scope: !915, file: !104, line: 51, column: 7)
!923 = !DILocation(line: 51, column: 7, scope: !915)
!924 = !DILocation(line: 55, column: 14, scope: !925)
!925 = distinct !DILexicalBlock(scope: !922, file: !104, line: 52, column: 5)
!926 = !DILocation(line: 54, column: 7, scope: !925)
!927 = !DILocation(line: 56, column: 7, scope: !925)
!928 = !DILocation(line: 59, column: 11, scope: !915)
!929 = !DILocation(line: 46, column: 15, scope: !915)
!930 = !DILocation(line: 60, column: 17, scope: !915)
!931 = !DILocation(line: 60, column: 33, scope: !932)
!932 = !DILexicalBlockFile(scope: !915, file: !104, discriminator: 1)
!933 = !DILocation(line: 60, column: 11, scope: !915)
!934 = !DILocation(line: 47, column: 15, scope: !915)
!935 = !DILocation(line: 61, column: 12, scope: !936)
!936 = distinct !DILexicalBlock(scope: !915, file: !104, line: 61, column: 7)
!937 = !DILocation(line: 61, column: 20, scope: !936)
!938 = !DILocation(line: 61, column: 25, scope: !936)
!939 = !DILocation(line: 61, column: 28, scope: !940)
!940 = !DILexicalBlockFile(scope: !936, file: !104, discriminator: 1)
!941 = !DILocation(line: 61, column: 61, scope: !940)
!942 = !DILocation(line: 61, column: 7, scope: !932)
!943 = !DILocation(line: 64, column: 11, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !104, line: 64, column: 11)
!945 = distinct !DILexicalBlock(scope: !936, file: !104, line: 62, column: 5)
!946 = !DILocation(line: 64, column: 36, scope: !944)
!947 = !DILocation(line: 64, column: 11, scope: !945)
!948 = !DILocation(line: 66, column: 24, scope: !949)
!949 = distinct !DILexicalBlock(scope: !944, file: !104, line: 65, column: 9)
!950 = !DILocation(line: 70, column: 41, scope: !949)
!951 = !DILocation(line: 72, column: 9, scope: !949)
!952 = !DILocation(line: 84, column: 16, scope: !915)
!953 = !DILocation(line: 90, column: 27, scope: !915)
!954 = !DILocation(line: 92, column: 1, scope: !915)
!955 = distinct !DISubprogram(name: "clone_quoting_options", scope: !149, file: !149, line: 114, type: !956, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !959)
!956 = !DISubroutineType(types: !957)
!957 = !{!958, !958}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!959 = !{!960, !961, !962}
!960 = !DILocalVariable(name: "o", arg: 1, scope: !955, file: !149, line: 114, type: !958)
!961 = !DILocalVariable(name: "e", scope: !955, file: !149, line: 116, type: !25)
!962 = !DILocalVariable(name: "p", scope: !955, file: !149, line: 117, type: !958)
!963 = !DILocation(line: 114, column: 48, scope: !955)
!964 = !DILocation(line: 116, column: 11, scope: !955)
!965 = !DILocation(line: 116, column: 7, scope: !955)
!966 = !DILocation(line: 117, column: 40, scope: !955)
!967 = !DILocation(line: 117, column: 40, scope: !968)
!968 = !DILexicalBlockFile(scope: !955, file: !149, discriminator: 3)
!969 = !DILocation(line: 117, column: 31, scope: !968)
!970 = !DILocation(line: 117, column: 27, scope: !955)
!971 = !DILocation(line: 119, column: 9, scope: !955)
!972 = !DILocation(line: 120, column: 3, scope: !955)
!973 = distinct !DISubprogram(name: "get_quoting_style", scope: !149, file: !149, line: 125, type: !974, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !978)
!974 = !DISubroutineType(types: !975)
!975 = !{!110, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!978 = !{!979}
!979 = !DILocalVariable(name: "o", arg: 1, scope: !973, file: !149, line: 125, type: !976)
!980 = !DILocation(line: 125, column: 50, scope: !973)
!981 = !DILocation(line: 127, column: 11, scope: !973)
!982 = !DILocation(line: 127, column: 46, scope: !983)
!983 = !DILexicalBlockFile(scope: !973, file: !149, discriminator: 3)
!984 = !{!985, !614, i64 0}
!985 = !{!"quoting_options", !614, i64 0, !679, i64 4, !614, i64 8, !613, i64 40, !613, i64 48}
!986 = !DILocation(line: 127, column: 3, scope: !983)
!987 = distinct !DISubprogram(name: "set_quoting_style", scope: !149, file: !149, line: 133, type: !988, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !990)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !958, !110}
!990 = !{!991, !992}
!991 = !DILocalVariable(name: "o", arg: 1, scope: !987, file: !149, line: 133, type: !958)
!992 = !DILocalVariable(name: "s", arg: 2, scope: !987, file: !149, line: 133, type: !110)
!993 = !DILocation(line: 133, column: 44, scope: !987)
!994 = !DILocation(line: 133, column: 66, scope: !987)
!995 = !DILocation(line: 135, column: 4, scope: !987)
!996 = !DILocation(line: 135, column: 39, scope: !997)
!997 = !DILexicalBlockFile(scope: !987, file: !149, discriminator: 3)
!998 = !DILocation(line: 135, column: 45, scope: !997)
!999 = !DILocation(line: 136, column: 1, scope: !987)
!1000 = distinct !DISubprogram(name: "set_char_quoting", scope: !149, file: !149, line: 144, type: !1001, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!25, !958, !7, !25}
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1010, !1011}
!1004 = !DILocalVariable(name: "o", arg: 1, scope: !1000, file: !149, line: 144, type: !958)
!1005 = !DILocalVariable(name: "c", arg: 2, scope: !1000, file: !149, line: 144, type: !7)
!1006 = !DILocalVariable(name: "i", arg: 3, scope: !1000, file: !149, line: 144, type: !25)
!1007 = !DILocalVariable(name: "uc", scope: !1000, file: !149, line: 146, type: !16)
!1008 = !DILocalVariable(name: "p", scope: !1000, file: !149, line: 147, type: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!1010 = !DILocalVariable(name: "shift", scope: !1000, file: !149, line: 149, type: !25)
!1011 = !DILocalVariable(name: "r", scope: !1000, file: !149, line: 150, type: !25)
!1012 = !DILocation(line: 144, column: 43, scope: !1000)
!1013 = !DILocation(line: 144, column: 51, scope: !1000)
!1014 = !DILocation(line: 144, column: 58, scope: !1000)
!1015 = !DILocation(line: 146, column: 17, scope: !1000)
!1016 = !DILocation(line: 148, column: 6, scope: !1000)
!1017 = !DILocation(line: 148, column: 62, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1000, file: !149, discriminator: 3)
!1019 = !DILocation(line: 148, column: 57, scope: !1018)
!1020 = !DILocation(line: 147, column: 17, scope: !1000)
!1021 = !DILocation(line: 149, column: 18, scope: !1000)
!1022 = !DILocation(line: 149, column: 15, scope: !1000)
!1023 = !DILocation(line: 149, column: 7, scope: !1000)
!1024 = !DILocation(line: 150, column: 12, scope: !1000)
!1025 = !DILocation(line: 150, column: 15, scope: !1000)
!1026 = !DILocation(line: 150, column: 25, scope: !1000)
!1027 = !DILocation(line: 150, column: 7, scope: !1000)
!1028 = !DILocation(line: 151, column: 13, scope: !1000)
!1029 = !DILocation(line: 151, column: 18, scope: !1000)
!1030 = !DILocation(line: 151, column: 23, scope: !1000)
!1031 = !DILocation(line: 151, column: 6, scope: !1000)
!1032 = !DILocation(line: 152, column: 3, scope: !1000)
!1033 = distinct !DISubprogram(name: "set_quoting_flags", scope: !149, file: !149, line: 160, type: !1034, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!25, !958, !25}
!1036 = !{!1037, !1038, !1039}
!1037 = !DILocalVariable(name: "o", arg: 1, scope: !1033, file: !149, line: 160, type: !958)
!1038 = !DILocalVariable(name: "i", arg: 2, scope: !1033, file: !149, line: 160, type: !25)
!1039 = !DILocalVariable(name: "r", scope: !1033, file: !149, line: 162, type: !25)
!1040 = !DILocation(line: 160, column: 44, scope: !1033)
!1041 = !DILocation(line: 160, column: 51, scope: !1033)
!1042 = !DILocation(line: 163, column: 8, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1033, file: !149, line: 163, column: 7)
!1044 = !DILocation(line: 163, column: 7, scope: !1033)
!1045 = !DILocation(line: 165, column: 10, scope: !1033)
!1046 = !{!985, !679, i64 4}
!1047 = !DILocation(line: 162, column: 7, scope: !1033)
!1048 = !DILocation(line: 166, column: 12, scope: !1033)
!1049 = !DILocation(line: 167, column: 3, scope: !1033)
!1050 = distinct !DISubprogram(name: "set_custom_quoting", scope: !149, file: !149, line: 171, type: !1051, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !958, !17, !17}
!1053 = !{!1054, !1055, !1056}
!1054 = !DILocalVariable(name: "o", arg: 1, scope: !1050, file: !149, line: 171, type: !958)
!1055 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1050, file: !149, line: 172, type: !17)
!1056 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1050, file: !149, line: 172, type: !17)
!1057 = !DILocation(line: 171, column: 45, scope: !1050)
!1058 = !DILocation(line: 172, column: 33, scope: !1050)
!1059 = !DILocation(line: 172, column: 57, scope: !1050)
!1060 = !DILocation(line: 174, column: 8, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1050, file: !149, line: 174, column: 7)
!1062 = !DILocation(line: 174, column: 7, scope: !1050)
!1063 = !DILocation(line: 176, column: 6, scope: !1050)
!1064 = !DILocation(line: 176, column: 12, scope: !1050)
!1065 = !DILocation(line: 177, column: 8, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1050, file: !149, line: 177, column: 7)
!1067 = !DILocation(line: 177, column: 23, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1066, file: !149, discriminator: 1)
!1069 = !DILocation(line: 177, column: 19, scope: !1066)
!1070 = !DILocation(line: 178, column: 5, scope: !1066)
!1071 = !DILocation(line: 179, column: 6, scope: !1050)
!1072 = !DILocation(line: 179, column: 17, scope: !1050)
!1073 = !{!985, !613, i64 40}
!1074 = !DILocation(line: 180, column: 6, scope: !1050)
!1075 = !DILocation(line: 180, column: 18, scope: !1050)
!1076 = !{!985, !613, i64 48}
!1077 = !DILocation(line: 181, column: 1, scope: !1050)
!1078 = distinct !DISubprogram(name: "quotearg_buffer", scope: !149, file: !149, line: 776, type: !1079, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!9, !6, !9, !17, !9, !976}
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089}
!1082 = !DILocalVariable(name: "buffer", arg: 1, scope: !1078, file: !149, line: 776, type: !6)
!1083 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1078, file: !149, line: 776, type: !9)
!1084 = !DILocalVariable(name: "arg", arg: 3, scope: !1078, file: !149, line: 777, type: !17)
!1085 = !DILocalVariable(name: "argsize", arg: 4, scope: !1078, file: !149, line: 777, type: !9)
!1086 = !DILocalVariable(name: "o", arg: 5, scope: !1078, file: !149, line: 778, type: !976)
!1087 = !DILocalVariable(name: "p", scope: !1078, file: !149, line: 780, type: !976)
!1088 = !DILocalVariable(name: "e", scope: !1078, file: !149, line: 781, type: !25)
!1089 = !DILocalVariable(name: "r", scope: !1078, file: !149, line: 782, type: !9)
!1090 = !DILocation(line: 776, column: 24, scope: !1078)
!1091 = !DILocation(line: 776, column: 39, scope: !1078)
!1092 = !DILocation(line: 777, column: 30, scope: !1078)
!1093 = !DILocation(line: 777, column: 42, scope: !1078)
!1094 = !DILocation(line: 778, column: 48, scope: !1078)
!1095 = !DILocation(line: 780, column: 37, scope: !1078)
!1096 = !DILocation(line: 780, column: 33, scope: !1078)
!1097 = !DILocation(line: 781, column: 11, scope: !1078)
!1098 = !DILocation(line: 781, column: 7, scope: !1078)
!1099 = !DILocation(line: 783, column: 43, scope: !1078)
!1100 = !DILocation(line: 783, column: 53, scope: !1078)
!1101 = !DILocation(line: 783, column: 60, scope: !1078)
!1102 = !DILocation(line: 784, column: 43, scope: !1078)
!1103 = !DILocation(line: 784, column: 58, scope: !1078)
!1104 = !DILocation(line: 782, column: 14, scope: !1078)
!1105 = !DILocation(line: 782, column: 10, scope: !1078)
!1106 = !DILocation(line: 785, column: 9, scope: !1078)
!1107 = !DILocation(line: 786, column: 3, scope: !1078)
!1108 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !149, file: !149, line: 248, type: !1109, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1113)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!9, !6, !9, !17, !9, !110, !25, !1111, !17, !17}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1138, !1139, !1140, !1141, !1142, !1145, !1146, !1161, !1164, !1165, !1172}
!1114 = !DILocalVariable(name: "buffer", arg: 1, scope: !1108, file: !149, line: 248, type: !6)
!1115 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1108, file: !149, line: 248, type: !9)
!1116 = !DILocalVariable(name: "arg", arg: 3, scope: !1108, file: !149, line: 249, type: !17)
!1117 = !DILocalVariable(name: "argsize", arg: 4, scope: !1108, file: !149, line: 249, type: !9)
!1118 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1108, file: !149, line: 250, type: !110)
!1119 = !DILocalVariable(name: "flags", arg: 6, scope: !1108, file: !149, line: 250, type: !25)
!1120 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1108, file: !149, line: 251, type: !1111)
!1121 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1108, file: !149, line: 252, type: !17)
!1122 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1108, file: !149, line: 253, type: !17)
!1123 = !DILocalVariable(name: "i", scope: !1108, file: !149, line: 255, type: !9)
!1124 = !DILocalVariable(name: "len", scope: !1108, file: !149, line: 256, type: !9)
!1125 = !DILocalVariable(name: "orig_buffersize", scope: !1108, file: !149, line: 257, type: !9)
!1126 = !DILocalVariable(name: "quote_string", scope: !1108, file: !149, line: 258, type: !17)
!1127 = !DILocalVariable(name: "quote_string_len", scope: !1108, file: !149, line: 259, type: !9)
!1128 = !DILocalVariable(name: "backslash_escapes", scope: !1108, file: !149, line: 260, type: !31)
!1129 = !DILocalVariable(name: "unibyte_locale", scope: !1108, file: !149, line: 261, type: !31)
!1130 = !DILocalVariable(name: "elide_outer_quotes", scope: !1108, file: !149, line: 262, type: !31)
!1131 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1108, file: !149, line: 263, type: !31)
!1132 = !DILocalVariable(name: "encountered_single_quote", scope: !1108, file: !149, line: 264, type: !31)
!1133 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1108, file: !149, line: 265, type: !31)
!1134 = !DILocalVariable(name: "c", scope: !1135, file: !149, line: 394, type: !16)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !149, line: 393, column: 5)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !149, line: 392, column: 3)
!1137 = distinct !DILexicalBlock(scope: !1108, file: !149, line: 392, column: 3)
!1138 = !DILocalVariable(name: "esc", scope: !1135, file: !149, line: 395, type: !16)
!1139 = !DILocalVariable(name: "is_right_quote", scope: !1135, file: !149, line: 396, type: !31)
!1140 = !DILocalVariable(name: "escaping", scope: !1135, file: !149, line: 397, type: !31)
!1141 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1135, file: !149, line: 398, type: !31)
!1142 = !DILocalVariable(name: "m", scope: !1143, file: !149, line: 602, type: !9)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !149, line: 600, column: 11)
!1144 = distinct !DILexicalBlock(scope: !1135, file: !149, line: 418, column: 9)
!1145 = !DILocalVariable(name: "printable", scope: !1143, file: !149, line: 604, type: !31)
!1146 = !DILocalVariable(name: "mbstate", scope: !1147, file: !149, line: 613, type: !1149)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !149, line: 612, column: 15)
!1148 = distinct !DILexicalBlock(scope: !1143, file: !149, line: 606, column: 17)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1150, line: 107, baseType: !1151)
!1150 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1150, line: 95, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 83, size: 64, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1152, file: !1150, line: 85, baseType: !25, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1152, file: !1150, line: 94, baseType: !1156, size: 32, offset: 32)
!1156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !1150, line: 86, size: 32, elements: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1156, file: !1150, line: 89, baseType: !162, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1156, file: !1150, line: 93, baseType: !1160, size: 32)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !76)
!1161 = !DILocalVariable(name: "w", scope: !1162, file: !149, line: 623, type: !1163)
!1162 = distinct !DILexicalBlock(scope: !1147, file: !149, line: 622, column: 19)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !10, line: 90, baseType: !25)
!1164 = !DILocalVariable(name: "bytes", scope: !1162, file: !149, line: 624, type: !9)
!1165 = !DILocalVariable(name: "j", scope: !1166, file: !149, line: 649, type: !9)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !149, line: 648, column: 27)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !149, line: 646, column: 29)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !149, line: 641, column: 23)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !149, line: 633, column: 30)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !149, line: 628, column: 30)
!1171 = distinct !DILexicalBlock(scope: !1162, file: !149, line: 626, column: 25)
!1172 = !DILocalVariable(name: "ilim", scope: !1173, file: !149, line: 676, type: !9)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !149, line: 673, column: 15)
!1174 = distinct !DILexicalBlock(scope: !1143, file: !149, line: 672, column: 17)
!1175 = !DILocation(line: 248, column: 33, scope: !1108)
!1176 = !DILocation(line: 248, column: 48, scope: !1108)
!1177 = !DILocation(line: 249, column: 39, scope: !1108)
!1178 = !DILocation(line: 249, column: 51, scope: !1108)
!1179 = !DILocation(line: 250, column: 46, scope: !1108)
!1180 = !DILocation(line: 250, column: 65, scope: !1108)
!1181 = !DILocation(line: 251, column: 47, scope: !1108)
!1182 = !DILocation(line: 252, column: 39, scope: !1108)
!1183 = !DILocation(line: 253, column: 39, scope: !1108)
!1184 = !DILocation(line: 256, column: 10, scope: !1108)
!1185 = !DILocation(line: 257, column: 10, scope: !1108)
!1186 = !DILocation(line: 258, column: 15, scope: !1108)
!1187 = !DILocation(line: 259, column: 10, scope: !1108)
!1188 = !DILocation(line: 260, column: 8, scope: !1108)
!1189 = !DILocation(line: 261, column: 25, scope: !1108)
!1190 = !DILocation(line: 261, column: 36, scope: !1108)
!1191 = !DILocation(line: 262, column: 8, scope: !1108)
!1192 = !DILocation(line: 263, column: 8, scope: !1108)
!1193 = !DILocation(line: 264, column: 8, scope: !1108)
!1194 = !DILocation(line: 265, column: 8, scope: !1108)
!1195 = !DILocation(line: 265, column: 3, scope: !1108)
!1196 = !DILocation(line: 308, column: 3, scope: !1108)
!1197 = !DILocation(line: 315, column: 11, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1108, file: !149, line: 309, column: 5)
!1199 = !DILocation(line: 315, column: 12, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1198, file: !149, line: 315, column: 11)
!1201 = !DILocation(line: 316, column: 9, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1203, file: !149, discriminator: 1)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !149, line: 316, column: 9)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !149, line: 316, column: 9)
!1205 = !DILocation(line: 316, column: 9, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1204, file: !149, discriminator: 1)
!1207 = !DILocation(line: 316, column: 9, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1203, file: !149, discriminator: 2)
!1209 = !DILocation(line: 354, column: 26, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !149, line: 332, column: 11)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !149, line: 331, column: 13)
!1212 = distinct !DILexicalBlock(scope: !1198, file: !149, line: 330, column: 7)
!1213 = !DILocation(line: 355, column: 27, scope: !1210)
!1214 = !DILocation(line: 356, column: 11, scope: !1210)
!1215 = !DILocation(line: 357, column: 14, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !149, line: 357, column: 13)
!1217 = !DILocation(line: 357, column: 13, scope: !1212)
!1218 = !DILocation(line: 358, column: 43, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1220, file: !149, discriminator: 1)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !149, line: 358, column: 11)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !149, line: 358, column: 11)
!1222 = !DILocation(line: 358, column: 11, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1221, file: !149, discriminator: 1)
!1224 = !DILocation(line: 359, column: 13, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1226, file: !149, discriminator: 1)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !149, line: 359, column: 13)
!1227 = distinct !DILexicalBlock(scope: !1220, file: !149, line: 359, column: 13)
!1228 = !DILocation(line: 359, column: 13, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1227, file: !149, discriminator: 1)
!1230 = !DILocation(line: 359, column: 13, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1226, file: !149, discriminator: 2)
!1232 = !DILocation(line: 359, column: 13, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1227, file: !149, discriminator: 3)
!1234 = !DILocation(line: 358, column: 70, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1220, file: !149, discriminator: 2)
!1236 = distinct !{!1236, !1237, !1238}
!1237 = !DILocation(line: 358, column: 11, scope: !1221)
!1238 = !DILocation(line: 359, column: 13, scope: !1221)
!1239 = !DILocation(line: 362, column: 28, scope: !1212)
!1240 = !DILocation(line: 364, column: 7, scope: !1198)
!1241 = !DILocation(line: 367, column: 7, scope: !1198)
!1242 = !DILocation(line: 370, column: 7, scope: !1198)
!1243 = !DILocation(line: 373, column: 12, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1198, file: !149, line: 373, column: 11)
!1245 = !DILocation(line: 373, column: 11, scope: !1198)
!1246 = !DILocation(line: 378, column: 12, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1198, file: !149, line: 378, column: 11)
!1248 = !DILocation(line: 378, column: 11, scope: !1198)
!1249 = !DILocation(line: 379, column: 9, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1251, file: !149, discriminator: 1)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !149, line: 379, column: 9)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !149, line: 379, column: 9)
!1253 = !DILocation(line: 379, column: 9, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1252, file: !149, discriminator: 1)
!1255 = !DILocation(line: 379, column: 9, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1251, file: !149, discriminator: 2)
!1257 = !DILocation(line: 386, column: 7, scope: !1198)
!1258 = !DILocation(line: 389, column: 7, scope: !1198)
!1259 = !DILocation(line: 255, column: 10, scope: !1108)
!1260 = !DILocation(line: 392, column: 8, scope: !1137)
!1261 = !DILocation(line: 392, column: 27, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1136, file: !149, discriminator: 1)
!1263 = !DILocation(line: 392, column: 19, scope: !1262)
!1264 = !DILocation(line: 392, column: 60, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1136, file: !149, discriminator: 3)
!1266 = !DILocation(line: 392, column: 3, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1137, file: !149, discriminator: 4)
!1268 = !DILocation(line: 392, column: 41, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1136, file: !149, discriminator: 2)
!1270 = !DILocation(line: 392, column: 48, scope: !1269)
!1271 = !DILocation(line: 396, column: 12, scope: !1135)
!1272 = !DILocation(line: 397, column: 12, scope: !1135)
!1273 = !DILocation(line: 398, column: 12, scope: !1135)
!1274 = !DILocation(line: 401, column: 11, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1135, file: !149, line: 400, column: 11)
!1276 = !DILocation(line: 403, column: 17, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1275, file: !149, discriminator: 1)
!1278 = !DILocation(line: 404, column: 39, scope: !1275)
!1279 = !DILocation(line: 408, column: 32, scope: !1275)
!1280 = !DILocation(line: 404, column: 19, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1275, file: !149, discriminator: 2)
!1282 = !DILocation(line: 404, column: 15, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1275, file: !149, discriminator: 4)
!1284 = !DILocation(line: 409, column: 11, scope: !1275)
!1285 = !DILocation(line: 409, column: 26, scope: !1277)
!1286 = !DILocation(line: 409, column: 14, scope: !1277)
!1287 = !DILocation(line: 400, column: 11, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1135, file: !149, discriminator: 1)
!1289 = !DILocation(line: 416, column: 11, scope: !1135)
!1290 = !DILocation(line: 394, column: 21, scope: !1135)
!1291 = !DILocation(line: 417, column: 7, scope: !1135)
!1292 = !DILocation(line: 420, column: 15, scope: !1144)
!1293 = !DILocation(line: 422, column: 15, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1295, file: !149, discriminator: 1)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !149, line: 422, column: 15)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !149, line: 421, column: 13)
!1297 = distinct !DILexicalBlock(scope: !1144, file: !149, line: 420, column: 15)
!1298 = !DILocation(line: 422, column: 15, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1300, file: !149, discriminator: 4)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !149, line: 422, column: 15)
!1301 = !DILocation(line: 422, column: 15, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1300, file: !149, discriminator: 3)
!1303 = !DILocation(line: 422, column: 15, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1305, file: !149, discriminator: 6)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !149, line: 422, column: 15)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !149, line: 422, column: 15)
!1307 = distinct !DILexicalBlock(scope: !1300, file: !149, line: 422, column: 15)
!1308 = !DILocation(line: 422, column: 15, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1306, file: !149, discriminator: 6)
!1310 = !DILocation(line: 422, column: 15, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1305, file: !149, discriminator: 7)
!1312 = !DILocation(line: 422, column: 15, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1306, file: !149, discriminator: 8)
!1314 = !DILocation(line: 422, column: 15, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1316, file: !149, discriminator: 11)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !149, line: 422, column: 15)
!1317 = distinct !DILexicalBlock(scope: !1307, file: !149, line: 422, column: 15)
!1318 = !DILocation(line: 422, column: 15, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1317, file: !149, discriminator: 11)
!1320 = !DILocation(line: 422, column: 15, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1316, file: !149, discriminator: 12)
!1322 = !DILocation(line: 422, column: 15, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1317, file: !149, discriminator: 13)
!1324 = !DILocation(line: 422, column: 15, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1326, file: !149, discriminator: 16)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !149, line: 422, column: 15)
!1327 = distinct !DILexicalBlock(scope: !1307, file: !149, line: 422, column: 15)
!1328 = !DILocation(line: 422, column: 15, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1327, file: !149, discriminator: 16)
!1330 = !DILocation(line: 422, column: 15, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1326, file: !149, discriminator: 17)
!1332 = !DILocation(line: 422, column: 15, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1327, file: !149, discriminator: 18)
!1334 = !DILocation(line: 422, column: 15, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1307, file: !149, discriminator: 20)
!1336 = !DILocation(line: 422, column: 15, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1338, file: !149, discriminator: 22)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !149, line: 422, column: 15)
!1339 = distinct !DILexicalBlock(scope: !1295, file: !149, line: 422, column: 15)
!1340 = !DILocation(line: 422, column: 15, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1339, file: !149, discriminator: 22)
!1342 = !DILocation(line: 422, column: 15, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1338, file: !149, discriminator: 23)
!1344 = !DILocation(line: 422, column: 15, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1339, file: !149, discriminator: 24)
!1346 = !DILocation(line: 430, column: 19, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1296, file: !149, line: 429, column: 19)
!1348 = !DILocation(line: 430, column: 24, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1347, file: !149, discriminator: 1)
!1350 = !DILocation(line: 430, column: 28, scope: !1349)
!1351 = !DILocation(line: 430, column: 38, scope: !1349)
!1352 = !DILocation(line: 430, column: 48, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1347, file: !149, discriminator: 2)
!1354 = !DILocation(line: 430, column: 59, scope: !1353)
!1355 = !DILocation(line: 432, column: 19, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1357, file: !149, discriminator: 1)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !149, line: 432, column: 19)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !149, line: 432, column: 19)
!1359 = distinct !DILexicalBlock(scope: !1347, file: !149, line: 431, column: 17)
!1360 = !DILocation(line: 432, column: 19, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1358, file: !149, discriminator: 1)
!1362 = !DILocation(line: 432, column: 19, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1357, file: !149, discriminator: 2)
!1364 = !DILocation(line: 432, column: 19, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1358, file: !149, discriminator: 3)
!1366 = !DILocation(line: 433, column: 19, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1368, file: !149, discriminator: 1)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !149, line: 433, column: 19)
!1369 = distinct !DILexicalBlock(scope: !1359, file: !149, line: 433, column: 19)
!1370 = !DILocation(line: 433, column: 19, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1369, file: !149, discriminator: 1)
!1372 = !DILocation(line: 433, column: 19, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1368, file: !149, discriminator: 2)
!1374 = !DILocation(line: 433, column: 19, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1369, file: !149, discriminator: 3)
!1376 = !DILocation(line: 434, column: 17, scope: !1359)
!1377 = !DILocation(line: 441, column: 20, scope: !1297)
!1378 = !DILocation(line: 446, column: 11, scope: !1144)
!1379 = !DILocation(line: 449, column: 19, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1144, file: !149, line: 447, column: 13)
!1381 = !DILocation(line: 455, column: 19, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1380, file: !149, line: 454, column: 19)
!1383 = !DILocation(line: 455, column: 24, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1382, file: !149, discriminator: 1)
!1385 = !DILocation(line: 455, column: 28, scope: !1384)
!1386 = !DILocation(line: 455, column: 38, scope: !1384)
!1387 = !DILocation(line: 455, column: 47, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1382, file: !149, discriminator: 2)
!1389 = !DILocation(line: 455, column: 41, scope: !1388)
!1390 = !DILocation(line: 455, column: 52, scope: !1388)
!1391 = !DILocation(line: 454, column: 19, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1380, file: !149, discriminator: 1)
!1393 = !DILocation(line: 456, column: 25, scope: !1382)
!1394 = !DILocation(line: 456, column: 17, scope: !1382)
!1395 = !DILocation(line: 463, column: 25, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1382, file: !149, line: 457, column: 19)
!1397 = !DILocation(line: 467, column: 21, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1399, file: !149, discriminator: 1)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !149, line: 467, column: 21)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !149, line: 467, column: 21)
!1401 = !DILocation(line: 467, column: 21, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1400, file: !149, discriminator: 1)
!1403 = !DILocation(line: 467, column: 21, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1399, file: !149, discriminator: 2)
!1405 = !DILocation(line: 467, column: 21, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1400, file: !149, discriminator: 3)
!1407 = !DILocation(line: 468, column: 21, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1409, file: !149, discriminator: 1)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !149, line: 468, column: 21)
!1410 = distinct !DILexicalBlock(scope: !1396, file: !149, line: 468, column: 21)
!1411 = !DILocation(line: 468, column: 21, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1410, file: !149, discriminator: 1)
!1413 = !DILocation(line: 468, column: 21, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1409, file: !149, discriminator: 2)
!1415 = !DILocation(line: 468, column: 21, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1410, file: !149, discriminator: 3)
!1417 = !DILocation(line: 469, column: 21, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1419, file: !149, discriminator: 1)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !149, line: 469, column: 21)
!1420 = distinct !DILexicalBlock(scope: !1396, file: !149, line: 469, column: 21)
!1421 = !DILocation(line: 469, column: 21, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1420, file: !149, discriminator: 1)
!1423 = !DILocation(line: 469, column: 21, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1419, file: !149, discriminator: 2)
!1425 = !DILocation(line: 469, column: 21, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1420, file: !149, discriminator: 3)
!1427 = !DILocation(line: 470, column: 21, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1429, file: !149, discriminator: 1)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !149, line: 470, column: 21)
!1430 = distinct !DILexicalBlock(scope: !1396, file: !149, line: 470, column: 21)
!1431 = !DILocation(line: 470, column: 21, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1430, file: !149, discriminator: 1)
!1433 = !DILocation(line: 470, column: 21, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1429, file: !149, discriminator: 2)
!1435 = !DILocation(line: 470, column: 21, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1430, file: !149, discriminator: 3)
!1437 = !DILocation(line: 471, column: 21, scope: !1396)
!1438 = !DILocation(line: 395, column: 21, scope: !1135)
!1439 = !DILocation(line: 484, column: 31, scope: !1144)
!1440 = !DILocation(line: 485, column: 31, scope: !1144)
!1441 = !DILocation(line: 487, column: 31, scope: !1144)
!1442 = !DILocation(line: 488, column: 31, scope: !1144)
!1443 = !DILocation(line: 489, column: 31, scope: !1144)
!1444 = !DILocation(line: 492, column: 15, scope: !1144)
!1445 = !DILocation(line: 494, column: 19, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !149, line: 493, column: 13)
!1447 = distinct !DILexicalBlock(scope: !1144, file: !149, line: 492, column: 15)
!1448 = !DILocation(line: 501, column: 33, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1144, file: !149, line: 501, column: 15)
!1450 = !DILocation(line: 506, column: 15, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1144, file: !149, line: 505, column: 15)
!1452 = !DILocation(line: 510, column: 15, scope: !1144)
!1453 = !DILocation(line: 518, column: 26, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1144, file: !149, line: 518, column: 15)
!1455 = !DILocation(line: 518, column: 15, scope: !1144)
!1456 = !DILocation(line: 518, column: 40, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1454, file: !149, discriminator: 1)
!1458 = !DILocation(line: 518, column: 47, scope: !1457)
!1459 = !DILocation(line: 522, column: 17, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1144, file: !149, line: 522, column: 15)
!1461 = !DILocation(line: 518, column: 18, scope: !1457)
!1462 = !DILocation(line: 518, column: 65, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1454, file: !149, discriminator: 2)
!1464 = !DILocation(line: 518, column: 15, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1144, file: !149, discriminator: 2)
!1466 = !DILocation(line: 522, column: 15, scope: !1144)
!1467 = !DILocation(line: 526, column: 11, scope: !1144)
!1468 = !DILocation(line: 541, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1144, file: !149, line: 540, column: 15)
!1470 = !DILocation(line: 548, column: 15, scope: !1144)
!1471 = !DILocation(line: 550, column: 19, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !149, line: 549, column: 13)
!1473 = distinct !DILexicalBlock(scope: !1144, file: !149, line: 548, column: 15)
!1474 = !DILocation(line: 553, column: 19, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !149, line: 553, column: 19)
!1476 = !DILocation(line: 553, column: 35, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1475, file: !149, discriminator: 1)
!1478 = !DILocation(line: 553, column: 30, scope: !1475)
!1479 = !DILocation(line: 562, column: 15, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1481, file: !149, discriminator: 1)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !149, line: 562, column: 15)
!1482 = distinct !DILexicalBlock(scope: !1472, file: !149, line: 562, column: 15)
!1483 = !DILocation(line: 562, column: 15, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1482, file: !149, discriminator: 1)
!1485 = !DILocation(line: 562, column: 15, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1481, file: !149, discriminator: 2)
!1487 = !DILocation(line: 562, column: 15, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1482, file: !149, discriminator: 3)
!1489 = !DILocation(line: 563, column: 15, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1491, file: !149, discriminator: 1)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !149, line: 563, column: 15)
!1492 = distinct !DILexicalBlock(scope: !1472, file: !149, line: 563, column: 15)
!1493 = !DILocation(line: 563, column: 15, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1492, file: !149, discriminator: 1)
!1495 = !DILocation(line: 563, column: 15, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1491, file: !149, discriminator: 2)
!1497 = !DILocation(line: 563, column: 15, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1492, file: !149, discriminator: 3)
!1499 = !DILocation(line: 564, column: 15, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1501, file: !149, discriminator: 1)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !149, line: 564, column: 15)
!1502 = distinct !DILexicalBlock(scope: !1472, file: !149, line: 564, column: 15)
!1503 = !DILocation(line: 564, column: 15, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1502, file: !149, discriminator: 1)
!1505 = !DILocation(line: 564, column: 15, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1501, file: !149, discriminator: 2)
!1507 = !DILocation(line: 564, column: 15, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1502, file: !149, discriminator: 3)
!1509 = !DILocation(line: 566, column: 13, scope: !1472)
!1510 = !DILocation(line: 606, column: 17, scope: !1143)
!1511 = !DILocation(line: 602, column: 20, scope: !1143)
!1512 = !DILocation(line: 609, column: 29, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1148, file: !149, line: 607, column: 15)
!1514 = !{!712, !712, i64 0}
!1515 = !DILocation(line: 609, column: 27, scope: !1513)
!1516 = !DILocation(line: 604, column: 18, scope: !1143)
!1517 = !DILocation(line: 610, column: 15, scope: !1513)
!1518 = !DILocation(line: 613, column: 17, scope: !1147)
!1519 = !DILocation(line: 614, column: 17, scope: !1147)
!1520 = !DILocation(line: 618, column: 29, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1147, file: !149, line: 618, column: 21)
!1522 = !DILocation(line: 618, column: 21, scope: !1147)
!1523 = distinct !{!1523, !1524, !1525}
!1524 = !DILocation(line: 621, column: 17, scope: !1147)
!1525 = !DILocation(line: 667, column: 44, scope: !1147)
!1526 = !DILocation(line: 619, column: 29, scope: !1521)
!1527 = !DILocation(line: 619, column: 19, scope: !1521)
!1528 = !DILocation(line: 623, column: 21, scope: !1162)
!1529 = !DILocation(line: 624, column: 56, scope: !1162)
!1530 = !DILocation(line: 624, column: 50, scope: !1162)
!1531 = !DILocation(line: 625, column: 53, scope: !1162)
!1532 = !DIExpression(DW_OP_deref)
!1533 = !DILocation(line: 613, column: 27, scope: !1147)
!1534 = !DILocation(line: 623, column: 29, scope: !1162)
!1535 = !DILocation(line: 624, column: 36, scope: !1162)
!1536 = !DILocation(line: 624, column: 28, scope: !1162)
!1537 = !DILocation(line: 626, column: 25, scope: !1162)
!1538 = !DILocation(line: 636, column: 38, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1540, file: !149, discriminator: 1)
!1540 = distinct !DILexicalBlock(scope: !1169, file: !149, line: 634, column: 23)
!1541 = !DILocation(line: 636, column: 48, scope: !1539)
!1542 = !DILocation(line: 636, column: 51, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1540, file: !149, discriminator: 2)
!1544 = !DILocation(line: 636, column: 48, scope: !1543)
!1545 = !DILocation(line: 636, column: 25, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1540, file: !149, discriminator: 3)
!1547 = !DILocation(line: 637, column: 28, scope: !1540)
!1548 = !DILocation(line: 636, column: 34, scope: !1539)
!1549 = distinct !{!1549, !1550, !1547}
!1550 = !DILocation(line: 636, column: 25, scope: !1540)
!1551 = !DILocation(line: 650, column: 43, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !149, discriminator: 1)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !149, line: 650, column: 29)
!1554 = distinct !DILexicalBlock(scope: !1166, file: !149, line: 650, column: 29)
!1555 = !DILocation(line: 647, column: 29, scope: !1167)
!1556 = !DILocation(line: 649, column: 36, scope: !1166)
!1557 = !DILocation(line: 651, column: 49, scope: !1553)
!1558 = !DILocation(line: 651, column: 39, scope: !1553)
!1559 = !DILocation(line: 651, column: 31, scope: !1553)
!1560 = !DILocation(line: 650, column: 53, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1553, file: !149, discriminator: 2)
!1562 = !DILocation(line: 650, column: 29, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1554, file: !149, discriminator: 1)
!1564 = distinct !{!1564, !1565, !1566}
!1565 = !DILocation(line: 650, column: 29, scope: !1554)
!1566 = !DILocation(line: 659, column: 33, scope: !1554)
!1567 = !DILocation(line: 666, column: 19, scope: !1147)
!1568 = !DILocation(line: 662, column: 41, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1168, file: !149, line: 662, column: 29)
!1570 = !DILocation(line: 662, column: 31, scope: !1569)
!1571 = !DILocation(line: 662, column: 29, scope: !1168)
!1572 = !DILocation(line: 664, column: 27, scope: !1168)
!1573 = !DILocation(line: 667, column: 26, scope: !1147)
!1574 = !DILocation(line: 667, column: 24, scope: !1147)
!1575 = !DILocation(line: 666, column: 19, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1162, file: !149, discriminator: 3)
!1577 = !DILocation(line: 668, column: 15, scope: !1148)
!1578 = !DILocation(line: 670, column: 40, scope: !1143)
!1579 = !DILocation(line: 672, column: 19, scope: !1174)
!1580 = !DILocation(line: 672, column: 45, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1174, file: !149, discriminator: 1)
!1582 = !DILocation(line: 672, column: 23, scope: !1174)
!1583 = !DILocation(line: 676, column: 33, scope: !1173)
!1584 = !DILocation(line: 676, column: 24, scope: !1173)
!1585 = !DILocation(line: 678, column: 17, scope: !1173)
!1586 = !DILocation(line: 680, column: 43, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !149, line: 680, column: 25)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !149, line: 679, column: 19)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !149, line: 678, column: 17)
!1590 = distinct !DILexicalBlock(scope: !1173, file: !149, line: 678, column: 17)
!1591 = !DILocation(line: 682, column: 25, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1593, file: !149, discriminator: 1)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !149, line: 682, column: 25)
!1594 = distinct !DILexicalBlock(scope: !1587, file: !149, line: 681, column: 23)
!1595 = !DILocation(line: 682, column: 25, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1597, file: !149, discriminator: 4)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !149, line: 682, column: 25)
!1598 = !DILocation(line: 682, column: 25, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1597, file: !149, discriminator: 3)
!1600 = !DILocation(line: 682, column: 25, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1602, file: !149, discriminator: 6)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !149, line: 682, column: 25)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !149, line: 682, column: 25)
!1604 = distinct !DILexicalBlock(scope: !1597, file: !149, line: 682, column: 25)
!1605 = !DILocation(line: 682, column: 25, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1603, file: !149, discriminator: 6)
!1607 = !DILocation(line: 682, column: 25, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1602, file: !149, discriminator: 7)
!1609 = !DILocation(line: 682, column: 25, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1603, file: !149, discriminator: 8)
!1611 = !DILocation(line: 682, column: 25, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1613, file: !149, discriminator: 11)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !149, line: 682, column: 25)
!1614 = distinct !DILexicalBlock(scope: !1604, file: !149, line: 682, column: 25)
!1615 = !DILocation(line: 682, column: 25, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1614, file: !149, discriminator: 11)
!1617 = !DILocation(line: 682, column: 25, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1613, file: !149, discriminator: 12)
!1619 = !DILocation(line: 682, column: 25, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1614, file: !149, discriminator: 13)
!1621 = !DILocation(line: 682, column: 25, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1623, file: !149, discriminator: 16)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !149, line: 682, column: 25)
!1624 = distinct !DILexicalBlock(scope: !1604, file: !149, line: 682, column: 25)
!1625 = !DILocation(line: 682, column: 25, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1624, file: !149, discriminator: 16)
!1627 = !DILocation(line: 682, column: 25, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1623, file: !149, discriminator: 17)
!1629 = !DILocation(line: 682, column: 25, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1624, file: !149, discriminator: 18)
!1631 = !DILocation(line: 682, column: 25, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1604, file: !149, discriminator: 20)
!1633 = !DILocation(line: 682, column: 25, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1635, file: !149, discriminator: 22)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !149, line: 682, column: 25)
!1636 = distinct !DILexicalBlock(scope: !1593, file: !149, line: 682, column: 25)
!1637 = !DILocation(line: 682, column: 25, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1636, file: !149, discriminator: 22)
!1639 = !DILocation(line: 682, column: 25, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1635, file: !149, discriminator: 23)
!1641 = !DILocation(line: 682, column: 25, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1636, file: !149, discriminator: 24)
!1643 = !DILocation(line: 683, column: 25, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1645, file: !149, discriminator: 1)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !149, line: 683, column: 25)
!1646 = distinct !DILexicalBlock(scope: !1594, file: !149, line: 683, column: 25)
!1647 = !DILocation(line: 683, column: 25, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1646, file: !149, discriminator: 1)
!1649 = !DILocation(line: 683, column: 25, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1645, file: !149, discriminator: 2)
!1651 = !DILocation(line: 683, column: 25, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1646, file: !149, discriminator: 3)
!1653 = !DILocation(line: 684, column: 25, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1655, file: !149, discriminator: 1)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !149, line: 684, column: 25)
!1656 = distinct !DILexicalBlock(scope: !1594, file: !149, line: 684, column: 25)
!1657 = !DILocation(line: 684, column: 25, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1656, file: !149, discriminator: 1)
!1659 = !DILocation(line: 684, column: 25, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1655, file: !149, discriminator: 2)
!1661 = !DILocation(line: 684, column: 25, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1656, file: !149, discriminator: 3)
!1663 = !DILocation(line: 685, column: 38, scope: !1594)
!1664 = !DILocation(line: 685, column: 33, scope: !1594)
!1665 = !DILocation(line: 686, column: 23, scope: !1594)
!1666 = !DILocation(line: 687, column: 30, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1587, file: !149, line: 687, column: 30)
!1668 = !DILocation(line: 687, column: 30, scope: !1587)
!1669 = !DILocation(line: 689, column: 25, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1671, file: !149, discriminator: 1)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !149, line: 689, column: 25)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !149, line: 689, column: 25)
!1673 = distinct !DILexicalBlock(scope: !1667, file: !149, line: 688, column: 23)
!1674 = !DILocation(line: 689, column: 25, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1672, file: !149, discriminator: 1)
!1676 = !DILocation(line: 689, column: 25, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1671, file: !149, discriminator: 2)
!1678 = !DILocation(line: 689, column: 25, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1672, file: !149, discriminator: 3)
!1680 = !DILocation(line: 691, column: 23, scope: !1673)
!1681 = !DILocation(line: 692, column: 35, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1588, file: !149, line: 692, column: 25)
!1683 = !DILocation(line: 692, column: 30, scope: !1682)
!1684 = !DILocation(line: 692, column: 25, scope: !1588)
!1685 = !DILocation(line: 694, column: 21, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1687, file: !149, discriminator: 1)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !149, line: 694, column: 21)
!1688 = distinct !DILexicalBlock(scope: !1588, file: !149, line: 694, column: 21)
!1689 = !DILocation(line: 694, column: 21, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1687, file: !149, discriminator: 2)
!1691 = !DILocation(line: 694, column: 21, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1693, file: !149, discriminator: 4)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !149, line: 694, column: 21)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !149, line: 694, column: 21)
!1695 = distinct !DILexicalBlock(scope: !1687, file: !149, line: 694, column: 21)
!1696 = !DILocation(line: 694, column: 21, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1694, file: !149, discriminator: 4)
!1698 = !DILocation(line: 694, column: 21, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1693, file: !149, discriminator: 5)
!1700 = !DILocation(line: 694, column: 21, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1694, file: !149, discriminator: 6)
!1702 = !DILocation(line: 694, column: 21, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1704, file: !149, discriminator: 9)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !149, line: 694, column: 21)
!1705 = distinct !DILexicalBlock(scope: !1695, file: !149, line: 694, column: 21)
!1706 = !DILocation(line: 694, column: 21, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1705, file: !149, discriminator: 9)
!1708 = !DILocation(line: 694, column: 21, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1704, file: !149, discriminator: 10)
!1710 = !DILocation(line: 694, column: 21, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1705, file: !149, discriminator: 11)
!1712 = !DILocation(line: 694, column: 21, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1695, file: !149, discriminator: 13)
!1714 = !DILocation(line: 695, column: 21, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1716, file: !149, discriminator: 1)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !149, line: 695, column: 21)
!1717 = distinct !DILexicalBlock(scope: !1588, file: !149, line: 695, column: 21)
!1718 = !DILocation(line: 695, column: 21, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1717, file: !149, discriminator: 1)
!1720 = !DILocation(line: 695, column: 21, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1716, file: !149, discriminator: 2)
!1722 = !DILocation(line: 695, column: 21, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1717, file: !149, discriminator: 3)
!1724 = !DILocation(line: 696, column: 25, scope: !1588)
!1725 = !DILocation(line: 678, column: 17, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1589, file: !149, discriminator: 1)
!1727 = distinct !{!1727, !1728, !1729}
!1728 = !DILocation(line: 678, column: 17, scope: !1590)
!1729 = !DILocation(line: 697, column: 19, scope: !1590)
!1730 = !DILocation(line: 704, column: 34, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1135, file: !149, line: 704, column: 11)
!1732 = !DILocation(line: 706, column: 14, scope: !1731)
!1733 = !DILocation(line: 707, column: 14, scope: !1731)
!1734 = !DILocation(line: 707, column: 35, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1731, file: !149, discriminator: 1)
!1736 = !DILocation(line: 707, column: 17, scope: !1735)
!1737 = !DILocation(line: 707, column: 53, scope: !1735)
!1738 = !DILocation(line: 707, column: 47, scope: !1735)
!1739 = !DILocation(line: 707, column: 65, scope: !1735)
!1740 = !DILocation(line: 708, column: 15, scope: !1735)
!1741 = !DILocation(line: 708, column: 11, scope: !1731)
!1742 = !DILocation(line: 704, column: 11, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1135, file: !149, discriminator: 2)
!1744 = !DILocation(line: 712, column: 7, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1746, file: !149, discriminator: 1)
!1746 = distinct !DILexicalBlock(scope: !1135, file: !149, line: 712, column: 7)
!1747 = !DILocation(line: 712, column: 7, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1749, file: !149, discriminator: 4)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !149, line: 712, column: 7)
!1750 = !DILocation(line: 712, column: 7, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1749, file: !149, discriminator: 3)
!1752 = !DILocation(line: 712, column: 7, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1754, file: !149, discriminator: 6)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !149, line: 712, column: 7)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !149, line: 712, column: 7)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !149, line: 712, column: 7)
!1757 = !DILocation(line: 712, column: 7, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1755, file: !149, discriminator: 6)
!1759 = !DILocation(line: 712, column: 7, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1754, file: !149, discriminator: 7)
!1761 = !DILocation(line: 712, column: 7, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1755, file: !149, discriminator: 8)
!1763 = !DILocation(line: 712, column: 7, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1765, file: !149, discriminator: 11)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !149, line: 712, column: 7)
!1766 = distinct !DILexicalBlock(scope: !1756, file: !149, line: 712, column: 7)
!1767 = !DILocation(line: 712, column: 7, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1766, file: !149, discriminator: 11)
!1769 = !DILocation(line: 712, column: 7, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1765, file: !149, discriminator: 12)
!1771 = !DILocation(line: 712, column: 7, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1766, file: !149, discriminator: 13)
!1773 = !DILocation(line: 712, column: 7, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1775, file: !149, discriminator: 16)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !149, line: 712, column: 7)
!1776 = distinct !DILexicalBlock(scope: !1756, file: !149, line: 712, column: 7)
!1777 = !DILocation(line: 712, column: 7, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1776, file: !149, discriminator: 16)
!1779 = !DILocation(line: 712, column: 7, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1775, file: !149, discriminator: 17)
!1781 = !DILocation(line: 712, column: 7, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1776, file: !149, discriminator: 18)
!1783 = !DILocation(line: 712, column: 7, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1756, file: !149, discriminator: 20)
!1785 = !DILocation(line: 712, column: 7, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1787, file: !149, discriminator: 22)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !149, line: 712, column: 7)
!1788 = distinct !DILexicalBlock(scope: !1746, file: !149, line: 712, column: 7)
!1789 = !DILocation(line: 712, column: 7, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1788, file: !149, discriminator: 22)
!1791 = !DILocation(line: 712, column: 7, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1787, file: !149, discriminator: 23)
!1793 = !DILocation(line: 712, column: 7, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1788, file: !149, discriminator: 24)
!1795 = !DILocation(line: 715, column: 7, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1797, file: !149, discriminator: 1)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !149, line: 715, column: 7)
!1798 = distinct !DILexicalBlock(scope: !1135, file: !149, line: 715, column: 7)
!1799 = !DILocation(line: 715, column: 7, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1797, file: !149, discriminator: 2)
!1801 = !DILocation(line: 715, column: 7, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1803, file: !149, discriminator: 4)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !149, line: 715, column: 7)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !149, line: 715, column: 7)
!1805 = distinct !DILexicalBlock(scope: !1797, file: !149, line: 715, column: 7)
!1806 = !DILocation(line: 715, column: 7, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1804, file: !149, discriminator: 4)
!1808 = !DILocation(line: 715, column: 7, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1803, file: !149, discriminator: 5)
!1810 = !DILocation(line: 715, column: 7, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1804, file: !149, discriminator: 6)
!1812 = !DILocation(line: 715, column: 7, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1814, file: !149, discriminator: 9)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !149, line: 715, column: 7)
!1815 = distinct !DILexicalBlock(scope: !1805, file: !149, line: 715, column: 7)
!1816 = !DILocation(line: 715, column: 7, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1815, file: !149, discriminator: 9)
!1818 = !DILocation(line: 715, column: 7, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1814, file: !149, discriminator: 10)
!1820 = !DILocation(line: 715, column: 7, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1815, file: !149, discriminator: 11)
!1822 = !DILocation(line: 715, column: 7, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1805, file: !149, discriminator: 13)
!1824 = !DILocation(line: 716, column: 7, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1826, file: !149, discriminator: 1)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !149, line: 716, column: 7)
!1827 = distinct !DILexicalBlock(scope: !1135, file: !149, line: 716, column: 7)
!1828 = !DILocation(line: 716, column: 7, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1827, file: !149, discriminator: 1)
!1830 = !DILocation(line: 716, column: 7, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1826, file: !149, discriminator: 2)
!1832 = !DILocation(line: 716, column: 7, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1827, file: !149, discriminator: 3)
!1834 = !DILocation(line: 718, column: 13, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1135, file: !149, line: 718, column: 11)
!1836 = !DILocation(line: 718, column: 11, scope: !1135)
!1837 = !DILocation(line: 720, column: 5, scope: !1136)
!1838 = !DILocation(line: 392, column: 75, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1136, file: !149, discriminator: 5)
!1840 = !DILocation(line: 392, column: 3, scope: !1839)
!1841 = distinct !{!1841, !1842, !1843}
!1842 = !DILocation(line: 392, column: 3, scope: !1137)
!1843 = !DILocation(line: 720, column: 5, scope: !1137)
!1844 = !DILocation(line: 722, column: 11, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1108, file: !149, line: 722, column: 7)
!1846 = !DILocation(line: 722, column: 16, scope: !1845)
!1847 = !DILocation(line: 730, column: 51, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1108, file: !149, line: 730, column: 7)
!1849 = !DILocation(line: 731, column: 10, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1848, file: !149, discriminator: 1)
!1851 = !DILocation(line: 733, column: 11, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !149, line: 733, column: 11)
!1853 = distinct !DILexicalBlock(scope: !1848, file: !149, line: 732, column: 5)
!1854 = !DILocation(line: 733, column: 11, scope: !1853)
!1855 = !DILocation(line: 734, column: 16, scope: !1852)
!1856 = !DILocation(line: 734, column: 9, scope: !1852)
!1857 = !DILocation(line: 738, column: 18, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1852, file: !149, line: 738, column: 16)
!1859 = !DILocation(line: 738, column: 32, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1858, file: !149, discriminator: 1)
!1861 = !DILocation(line: 738, column: 29, scope: !1858)
!1862 = !DILocation(line: 747, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1108, file: !149, line: 747, column: 7)
!1864 = !DILocation(line: 747, column: 20, scope: !1863)
!1865 = !DILocation(line: 748, column: 12, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1867, file: !149, discriminator: 1)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !149, line: 748, column: 5)
!1868 = distinct !DILexicalBlock(scope: !1863, file: !149, line: 748, column: 5)
!1869 = !DILocation(line: 748, column: 5, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1868, file: !149, discriminator: 1)
!1871 = !DILocation(line: 749, column: 7, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1873, file: !149, discriminator: 1)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !149, line: 749, column: 7)
!1874 = distinct !DILexicalBlock(scope: !1867, file: !149, line: 749, column: 7)
!1875 = !DILocation(line: 749, column: 7, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1874, file: !149, discriminator: 1)
!1877 = !DILocation(line: 749, column: 7, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1873, file: !149, discriminator: 2)
!1879 = !DILocation(line: 749, column: 7, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1874, file: !149, discriminator: 3)
!1881 = !DILocation(line: 748, column: 39, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1867, file: !149, discriminator: 2)
!1883 = distinct !{!1883, !1884, !1885}
!1884 = !DILocation(line: 748, column: 5, scope: !1868)
!1885 = !DILocation(line: 749, column: 7, scope: !1868)
!1886 = !DILocation(line: 751, column: 11, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1108, file: !149, line: 751, column: 7)
!1888 = !DILocation(line: 751, column: 7, scope: !1108)
!1889 = !DILocation(line: 752, column: 5, scope: !1887)
!1890 = !DILocation(line: 752, column: 17, scope: !1887)
!1891 = !DILocation(line: 758, column: 21, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1108, file: !149, line: 758, column: 7)
!1893 = !DILocation(line: 758, column: 54, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1892, file: !149, discriminator: 1)
!1895 = !DILocation(line: 758, column: 51, scope: !1892)
!1896 = !DILocation(line: 762, column: 42, scope: !1108)
!1897 = !DILocation(line: 760, column: 10, scope: !1108)
!1898 = !DILocation(line: 760, column: 3, scope: !1108)
!1899 = !DILocation(line: 764, column: 1, scope: !1108)
!1900 = distinct !DISubprogram(name: "gettext_quote", scope: !149, file: !149, line: 199, type: !1901, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1903)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!17, !17, !110}
!1903 = !{!1904, !1905, !1906, !1907}
!1904 = !DILocalVariable(name: "msgid", arg: 1, scope: !1900, file: !149, line: 199, type: !17)
!1905 = !DILocalVariable(name: "s", arg: 2, scope: !1900, file: !149, line: 199, type: !110)
!1906 = !DILocalVariable(name: "translation", scope: !1900, file: !149, line: 201, type: !17)
!1907 = !DILocalVariable(name: "locale_code", scope: !1900, file: !149, line: 202, type: !17)
!1908 = !DILocation(line: 199, column: 28, scope: !1900)
!1909 = !DILocation(line: 199, column: 54, scope: !1900)
!1910 = !DILocation(line: 201, column: 29, scope: !1900)
!1911 = !DILocation(line: 201, column: 15, scope: !1900)
!1912 = !DILocation(line: 204, column: 19, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1900, file: !149, line: 204, column: 7)
!1914 = !DILocation(line: 204, column: 7, scope: !1900)
!1915 = !DILocation(line: 225, column: 17, scope: !1900)
!1916 = !DILocation(line: 202, column: 15, scope: !1900)
!1917 = !DILocalVariable(name: "s2", arg: 2, scope: !1918, file: !1919, line: 160, type: !17)
!1918 = distinct !DISubprogram(name: "strcaseeq0", scope: !1919, file: !1919, line: 160, type: !1920, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1922)
!1919 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!25, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1922 = !{!1923, !1917, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932}
!1923 = !DILocalVariable(name: "s1", arg: 1, scope: !1918, file: !1919, line: 160, type: !17)
!1924 = !DILocalVariable(name: "s20", arg: 3, scope: !1918, file: !1919, line: 160, type: !7)
!1925 = !DILocalVariable(name: "s21", arg: 4, scope: !1918, file: !1919, line: 160, type: !7)
!1926 = !DILocalVariable(name: "s22", arg: 5, scope: !1918, file: !1919, line: 160, type: !7)
!1927 = !DILocalVariable(name: "s23", arg: 6, scope: !1918, file: !1919, line: 160, type: !7)
!1928 = !DILocalVariable(name: "s24", arg: 7, scope: !1918, file: !1919, line: 160, type: !7)
!1929 = !DILocalVariable(name: "s25", arg: 8, scope: !1918, file: !1919, line: 160, type: !7)
!1930 = !DILocalVariable(name: "s26", arg: 9, scope: !1918, file: !1919, line: 160, type: !7)
!1931 = !DILocalVariable(name: "s27", arg: 10, scope: !1918, file: !1919, line: 160, type: !7)
!1932 = !DILocalVariable(name: "s28", arg: 11, scope: !1918, file: !1919, line: 160, type: !7)
!1933 = !DILocation(line: 160, column: 41, scope: !1918, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 226, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1900, file: !149, line: 226, column: 7)
!1936 = !DILocation(line: 160, column: 120, scope: !1918, inlinedAt: !1934)
!1937 = !DILocation(line: 160, column: 130, scope: !1918, inlinedAt: !1934)
!1938 = !DILocation(line: 162, column: 7, scope: !1939, inlinedAt: !1934)
!1939 = !DILexicalBlockFile(scope: !1940, file: !1919, discriminator: 1)
!1940 = distinct !DILexicalBlock(scope: !1918, file: !1919, line: 162, column: 7)
!1941 = !DILocalVariable(name: "s2", arg: 2, scope: !1942, file: !1919, line: 146, type: !17)
!1942 = distinct !DISubprogram(name: "strcaseeq1", scope: !1919, file: !1919, line: 146, type: !1943, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1945)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!25, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1945 = !{!1946, !1941, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954}
!1946 = !DILocalVariable(name: "s1", arg: 1, scope: !1942, file: !1919, line: 146, type: !17)
!1947 = !DILocalVariable(name: "s21", arg: 3, scope: !1942, file: !1919, line: 146, type: !7)
!1948 = !DILocalVariable(name: "s22", arg: 4, scope: !1942, file: !1919, line: 146, type: !7)
!1949 = !DILocalVariable(name: "s23", arg: 5, scope: !1942, file: !1919, line: 146, type: !7)
!1950 = !DILocalVariable(name: "s24", arg: 6, scope: !1942, file: !1919, line: 146, type: !7)
!1951 = !DILocalVariable(name: "s25", arg: 7, scope: !1942, file: !1919, line: 146, type: !7)
!1952 = !DILocalVariable(name: "s26", arg: 8, scope: !1942, file: !1919, line: 146, type: !7)
!1953 = !DILocalVariable(name: "s27", arg: 9, scope: !1942, file: !1919, line: 146, type: !7)
!1954 = !DILocalVariable(name: "s28", arg: 10, scope: !1942, file: !1919, line: 146, type: !7)
!1955 = !DILocation(line: 146, column: 41, scope: !1942, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 167, column: 16, scope: !1957, inlinedAt: !1934)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !1919, line: 164, column: 11)
!1958 = distinct !DILexicalBlock(scope: !1940, file: !1919, line: 163, column: 5)
!1959 = !DILocation(line: 146, column: 110, scope: !1942, inlinedAt: !1956)
!1960 = !DILocation(line: 146, column: 120, scope: !1942, inlinedAt: !1956)
!1961 = !DILocation(line: 148, column: 7, scope: !1962, inlinedAt: !1956)
!1962 = !DILexicalBlockFile(scope: !1963, file: !1919, discriminator: 1)
!1963 = distinct !DILexicalBlock(scope: !1942, file: !1919, line: 148, column: 7)
!1964 = !DILocalVariable(name: "s2", arg: 2, scope: !1965, file: !1919, line: 132, type: !17)
!1965 = distinct !DISubprogram(name: "strcaseeq2", scope: !1919, file: !1919, line: 132, type: !1966, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1968)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!25, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1968 = !{!1969, !1964, !1970, !1971, !1972, !1973, !1974, !1975, !1976}
!1969 = !DILocalVariable(name: "s1", arg: 1, scope: !1965, file: !1919, line: 132, type: !17)
!1970 = !DILocalVariable(name: "s22", arg: 3, scope: !1965, file: !1919, line: 132, type: !7)
!1971 = !DILocalVariable(name: "s23", arg: 4, scope: !1965, file: !1919, line: 132, type: !7)
!1972 = !DILocalVariable(name: "s24", arg: 5, scope: !1965, file: !1919, line: 132, type: !7)
!1973 = !DILocalVariable(name: "s25", arg: 6, scope: !1965, file: !1919, line: 132, type: !7)
!1974 = !DILocalVariable(name: "s26", arg: 7, scope: !1965, file: !1919, line: 132, type: !7)
!1975 = !DILocalVariable(name: "s27", arg: 8, scope: !1965, file: !1919, line: 132, type: !7)
!1976 = !DILocalVariable(name: "s28", arg: 9, scope: !1965, file: !1919, line: 132, type: !7)
!1977 = !DILocation(line: 132, column: 41, scope: !1965, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 153, column: 16, scope: !1979, inlinedAt: !1956)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !1919, line: 150, column: 11)
!1980 = distinct !DILexicalBlock(scope: !1963, file: !1919, line: 149, column: 5)
!1981 = !DILocation(line: 132, column: 100, scope: !1965, inlinedAt: !1978)
!1982 = !DILocation(line: 132, column: 110, scope: !1965, inlinedAt: !1978)
!1983 = !DILocation(line: 134, column: 7, scope: !1984, inlinedAt: !1978)
!1984 = !DILexicalBlockFile(scope: !1985, file: !1919, discriminator: 1)
!1985 = distinct !DILexicalBlock(scope: !1965, file: !1919, line: 134, column: 7)
!1986 = !DILocalVariable(name: "s2", arg: 2, scope: !1987, file: !1919, line: 118, type: !17)
!1987 = distinct !DISubprogram(name: "strcaseeq3", scope: !1919, file: !1919, line: 118, type: !1988, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!25, !17, !17, !7, !7, !7, !7, !7, !7}
!1990 = !{!1991, !1986, !1992, !1993, !1994, !1995, !1996, !1997}
!1991 = !DILocalVariable(name: "s1", arg: 1, scope: !1987, file: !1919, line: 118, type: !17)
!1992 = !DILocalVariable(name: "s23", arg: 3, scope: !1987, file: !1919, line: 118, type: !7)
!1993 = !DILocalVariable(name: "s24", arg: 4, scope: !1987, file: !1919, line: 118, type: !7)
!1994 = !DILocalVariable(name: "s25", arg: 5, scope: !1987, file: !1919, line: 118, type: !7)
!1995 = !DILocalVariable(name: "s26", arg: 6, scope: !1987, file: !1919, line: 118, type: !7)
!1996 = !DILocalVariable(name: "s27", arg: 7, scope: !1987, file: !1919, line: 118, type: !7)
!1997 = !DILocalVariable(name: "s28", arg: 8, scope: !1987, file: !1919, line: 118, type: !7)
!1998 = !DILocation(line: 118, column: 41, scope: !1987, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 139, column: 16, scope: !2000, inlinedAt: !1978)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !1919, line: 136, column: 11)
!2001 = distinct !DILexicalBlock(scope: !1985, file: !1919, line: 135, column: 5)
!2002 = !DILocation(line: 118, column: 90, scope: !1987, inlinedAt: !1999)
!2003 = !DILocation(line: 118, column: 100, scope: !1987, inlinedAt: !1999)
!2004 = !DILocation(line: 120, column: 7, scope: !2005, inlinedAt: !1999)
!2005 = !DILexicalBlockFile(scope: !2006, file: !1919, discriminator: 2)
!2006 = distinct !DILexicalBlock(scope: !1987, file: !1919, line: 120, column: 7)
!2007 = !DILocation(line: 120, column: 7, scope: !2008, inlinedAt: !1999)
!2008 = !DILexicalBlockFile(scope: !1987, file: !1919, discriminator: 2)
!2009 = !DILocalVariable(name: "s2", arg: 2, scope: !2010, file: !1919, line: 104, type: !17)
!2010 = distinct !DISubprogram(name: "strcaseeq4", scope: !1919, file: !1919, line: 104, type: !2011, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!25, !17, !17, !7, !7, !7, !7, !7}
!2013 = !{!2014, !2009, !2015, !2016, !2017, !2018, !2019}
!2014 = !DILocalVariable(name: "s1", arg: 1, scope: !2010, file: !1919, line: 104, type: !17)
!2015 = !DILocalVariable(name: "s24", arg: 3, scope: !2010, file: !1919, line: 104, type: !7)
!2016 = !DILocalVariable(name: "s25", arg: 4, scope: !2010, file: !1919, line: 104, type: !7)
!2017 = !DILocalVariable(name: "s26", arg: 5, scope: !2010, file: !1919, line: 104, type: !7)
!2018 = !DILocalVariable(name: "s27", arg: 6, scope: !2010, file: !1919, line: 104, type: !7)
!2019 = !DILocalVariable(name: "s28", arg: 7, scope: !2010, file: !1919, line: 104, type: !7)
!2020 = !DILocation(line: 104, column: 41, scope: !2010, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 125, column: 16, scope: !2022, inlinedAt: !1999)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !1919, line: 122, column: 11)
!2023 = distinct !DILexicalBlock(scope: !2006, file: !1919, line: 121, column: 5)
!2024 = !DILocation(line: 104, column: 80, scope: !2010, inlinedAt: !2021)
!2025 = !DILocation(line: 104, column: 90, scope: !2010, inlinedAt: !2021)
!2026 = !DILocation(line: 106, column: 7, scope: !2027, inlinedAt: !2021)
!2027 = !DILexicalBlockFile(scope: !2028, file: !1919, discriminator: 2)
!2028 = distinct !DILexicalBlock(scope: !2010, file: !1919, line: 106, column: 7)
!2029 = !DILocation(line: 106, column: 7, scope: !2030, inlinedAt: !2021)
!2030 = !DILexicalBlockFile(scope: !2010, file: !1919, discriminator: 2)
!2031 = !DILocalVariable(name: "s2", arg: 2, scope: !2032, file: !1919, line: 90, type: !17)
!2032 = distinct !DISubprogram(name: "strcaseeq5", scope: !1919, file: !1919, line: 90, type: !2033, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!25, !17, !17, !7, !7, !7, !7}
!2035 = !{!2036, !2031, !2037, !2038, !2039, !2040}
!2036 = !DILocalVariable(name: "s1", arg: 1, scope: !2032, file: !1919, line: 90, type: !17)
!2037 = !DILocalVariable(name: "s25", arg: 3, scope: !2032, file: !1919, line: 90, type: !7)
!2038 = !DILocalVariable(name: "s26", arg: 4, scope: !2032, file: !1919, line: 90, type: !7)
!2039 = !DILocalVariable(name: "s27", arg: 5, scope: !2032, file: !1919, line: 90, type: !7)
!2040 = !DILocalVariable(name: "s28", arg: 6, scope: !2032, file: !1919, line: 90, type: !7)
!2041 = !DILocation(line: 90, column: 41, scope: !2032, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 111, column: 16, scope: !2043, inlinedAt: !2021)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !1919, line: 108, column: 11)
!2044 = distinct !DILexicalBlock(scope: !2028, file: !1919, line: 107, column: 5)
!2045 = !DILocation(line: 90, column: 70, scope: !2032, inlinedAt: !2042)
!2046 = !DILocation(line: 90, column: 80, scope: !2032, inlinedAt: !2042)
!2047 = !DILocation(line: 92, column: 7, scope: !2048, inlinedAt: !2042)
!2048 = !DILexicalBlockFile(scope: !2049, file: !1919, discriminator: 2)
!2049 = distinct !DILexicalBlock(scope: !2032, file: !1919, line: 92, column: 7)
!2050 = !DILocation(line: 92, column: 7, scope: !2051, inlinedAt: !2042)
!2051 = !DILexicalBlockFile(scope: !2032, file: !1919, discriminator: 2)
!2052 = !DILocation(line: 227, column: 12, scope: !1935)
!2053 = !DILocation(line: 227, column: 21, scope: !1935)
!2054 = !DILocation(line: 227, column: 5, scope: !1935)
!2055 = !DILocation(line: 146, column: 41, scope: !1942, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 167, column: 16, scope: !1957, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 228, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1900, file: !149, line: 228, column: 7)
!2059 = !DILocation(line: 146, column: 110, scope: !1942, inlinedAt: !2056)
!2060 = !DILocation(line: 146, column: 120, scope: !1942, inlinedAt: !2056)
!2061 = !DILocation(line: 148, column: 7, scope: !1962, inlinedAt: !2056)
!2062 = !DILocation(line: 132, column: 41, scope: !1965, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 153, column: 16, scope: !1979, inlinedAt: !2056)
!2064 = !DILocation(line: 132, column: 100, scope: !1965, inlinedAt: !2063)
!2065 = !DILocation(line: 132, column: 110, scope: !1965, inlinedAt: !2063)
!2066 = !DILocation(line: 134, column: 7, scope: !2067, inlinedAt: !2063)
!2067 = !DILexicalBlockFile(scope: !1985, file: !1919, discriminator: 2)
!2068 = !DILocation(line: 134, column: 7, scope: !2069, inlinedAt: !2063)
!2069 = !DILexicalBlockFile(scope: !1965, file: !1919, discriminator: 2)
!2070 = !DILocation(line: 118, column: 41, scope: !1987, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 139, column: 16, scope: !2000, inlinedAt: !2063)
!2072 = !DILocation(line: 118, column: 90, scope: !1987, inlinedAt: !2071)
!2073 = !DILocation(line: 118, column: 100, scope: !1987, inlinedAt: !2071)
!2074 = !DILocation(line: 120, column: 7, scope: !2005, inlinedAt: !2071)
!2075 = !DILocation(line: 120, column: 7, scope: !2008, inlinedAt: !2071)
!2076 = !DILocation(line: 104, column: 41, scope: !2010, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 125, column: 16, scope: !2022, inlinedAt: !2071)
!2078 = !DILocation(line: 104, column: 80, scope: !2010, inlinedAt: !2077)
!2079 = !DILocation(line: 104, column: 90, scope: !2010, inlinedAt: !2077)
!2080 = !DILocation(line: 106, column: 7, scope: !2027, inlinedAt: !2077)
!2081 = !DILocation(line: 106, column: 7, scope: !2030, inlinedAt: !2077)
!2082 = !DILocation(line: 90, column: 41, scope: !2032, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 111, column: 16, scope: !2043, inlinedAt: !2077)
!2084 = !DILocation(line: 90, column: 70, scope: !2032, inlinedAt: !2083)
!2085 = !DILocation(line: 90, column: 80, scope: !2032, inlinedAt: !2083)
!2086 = !DILocation(line: 92, column: 7, scope: !2048, inlinedAt: !2083)
!2087 = !DILocation(line: 92, column: 7, scope: !2051, inlinedAt: !2083)
!2088 = !DILocalVariable(name: "s2", arg: 2, scope: !2089, file: !1919, line: 76, type: !17)
!2089 = distinct !DISubprogram(name: "strcaseeq6", scope: !1919, file: !1919, line: 76, type: !2090, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!25, !17, !17, !7, !7, !7}
!2092 = !{!2093, !2088, !2094, !2095, !2096}
!2093 = !DILocalVariable(name: "s1", arg: 1, scope: !2089, file: !1919, line: 76, type: !17)
!2094 = !DILocalVariable(name: "s26", arg: 3, scope: !2089, file: !1919, line: 76, type: !7)
!2095 = !DILocalVariable(name: "s27", arg: 4, scope: !2089, file: !1919, line: 76, type: !7)
!2096 = !DILocalVariable(name: "s28", arg: 5, scope: !2089, file: !1919, line: 76, type: !7)
!2097 = !DILocation(line: 76, column: 41, scope: !2089, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 97, column: 16, scope: !2099, inlinedAt: !2083)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !1919, line: 94, column: 11)
!2100 = distinct !DILexicalBlock(scope: !2049, file: !1919, line: 93, column: 5)
!2101 = !DILocation(line: 76, column: 60, scope: !2089, inlinedAt: !2098)
!2102 = !DILocation(line: 76, column: 70, scope: !2089, inlinedAt: !2098)
!2103 = !DILocation(line: 78, column: 7, scope: !2104, inlinedAt: !2098)
!2104 = !DILexicalBlockFile(scope: !2105, file: !1919, discriminator: 2)
!2105 = distinct !DILexicalBlock(scope: !2089, file: !1919, line: 78, column: 7)
!2106 = !DILocation(line: 78, column: 7, scope: !2107, inlinedAt: !2098)
!2107 = !DILexicalBlockFile(scope: !2089, file: !1919, discriminator: 2)
!2108 = !DILocalVariable(name: "s2", arg: 2, scope: !2109, file: !1919, line: 62, type: !17)
!2109 = distinct !DISubprogram(name: "strcaseeq7", scope: !1919, file: !1919, line: 62, type: !2110, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2112)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!25, !17, !17, !7, !7}
!2112 = !{!2113, !2108, !2114, !2115}
!2113 = !DILocalVariable(name: "s1", arg: 1, scope: !2109, file: !1919, line: 62, type: !17)
!2114 = !DILocalVariable(name: "s27", arg: 3, scope: !2109, file: !1919, line: 62, type: !7)
!2115 = !DILocalVariable(name: "s28", arg: 4, scope: !2109, file: !1919, line: 62, type: !7)
!2116 = !DILocation(line: 62, column: 41, scope: !2109, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 83, column: 16, scope: !2118, inlinedAt: !2098)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !1919, line: 80, column: 11)
!2119 = distinct !DILexicalBlock(scope: !2105, file: !1919, line: 79, column: 5)
!2120 = !DILocation(line: 62, column: 50, scope: !2109, inlinedAt: !2117)
!2121 = !DILocation(line: 62, column: 60, scope: !2109, inlinedAt: !2117)
!2122 = !DILocation(line: 64, column: 7, scope: !2123, inlinedAt: !2117)
!2123 = !DILexicalBlockFile(scope: !2124, file: !1919, discriminator: 2)
!2124 = distinct !DILexicalBlock(scope: !2109, file: !1919, line: 64, column: 7)
!2125 = !DILocation(line: 228, column: 7, scope: !1900)
!2126 = !DILocation(line: 229, column: 12, scope: !2058)
!2127 = !DILocation(line: 229, column: 21, scope: !2058)
!2128 = !DILocation(line: 229, column: 5, scope: !2058)
!2129 = !DILocation(line: 231, column: 13, scope: !1900)
!2130 = !DILocation(line: 231, column: 11, scope: !1900)
!2131 = !DILocation(line: 231, column: 3, scope: !1900)
!2132 = !DILocation(line: 232, column: 1, scope: !1900)
!2133 = distinct !DISubprogram(name: "quotearg_alloc", scope: !149, file: !149, line: 791, type: !2134, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!6, !17, !9, !976}
!2136 = !{!2137, !2138, !2139}
!2137 = !DILocalVariable(name: "arg", arg: 1, scope: !2133, file: !149, line: 791, type: !17)
!2138 = !DILocalVariable(name: "argsize", arg: 2, scope: !2133, file: !149, line: 791, type: !9)
!2139 = !DILocalVariable(name: "o", arg: 3, scope: !2133, file: !149, line: 792, type: !976)
!2140 = !DILocation(line: 791, column: 29, scope: !2133)
!2141 = !DILocation(line: 791, column: 41, scope: !2133)
!2142 = !DILocation(line: 792, column: 47, scope: !2133)
!2143 = !DILocalVariable(name: "arg", arg: 1, scope: !2144, file: !149, line: 804, type: !17)
!2144 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !149, file: !149, line: 804, type: !2145, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!6, !17, !9, !567, !976}
!2147 = !{!2143, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155}
!2148 = !DILocalVariable(name: "argsize", arg: 2, scope: !2144, file: !149, line: 804, type: !9)
!2149 = !DILocalVariable(name: "size", arg: 3, scope: !2144, file: !149, line: 804, type: !567)
!2150 = !DILocalVariable(name: "o", arg: 4, scope: !2144, file: !149, line: 805, type: !976)
!2151 = !DILocalVariable(name: "p", scope: !2144, file: !149, line: 807, type: !976)
!2152 = !DILocalVariable(name: "e", scope: !2144, file: !149, line: 808, type: !25)
!2153 = !DILocalVariable(name: "flags", scope: !2144, file: !149, line: 810, type: !25)
!2154 = !DILocalVariable(name: "bufsize", scope: !2144, file: !149, line: 811, type: !9)
!2155 = !DILocalVariable(name: "buf", scope: !2144, file: !149, line: 815, type: !6)
!2156 = !DILocation(line: 804, column: 33, scope: !2144, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 794, column: 10, scope: !2133)
!2158 = !DILocation(line: 804, column: 45, scope: !2144, inlinedAt: !2157)
!2159 = !DILocation(line: 804, column: 62, scope: !2144, inlinedAt: !2157)
!2160 = !DILocation(line: 805, column: 51, scope: !2144, inlinedAt: !2157)
!2161 = !DILocation(line: 807, column: 37, scope: !2144, inlinedAt: !2157)
!2162 = !DILocation(line: 807, column: 33, scope: !2144, inlinedAt: !2157)
!2163 = !DILocation(line: 808, column: 11, scope: !2144, inlinedAt: !2157)
!2164 = !DILocation(line: 808, column: 7, scope: !2144, inlinedAt: !2157)
!2165 = !DILocation(line: 810, column: 18, scope: !2144, inlinedAt: !2157)
!2166 = !DILocation(line: 810, column: 24, scope: !2144, inlinedAt: !2157)
!2167 = !DILocation(line: 810, column: 7, scope: !2144, inlinedAt: !2157)
!2168 = !DILocation(line: 811, column: 69, scope: !2144, inlinedAt: !2157)
!2169 = !DILocation(line: 812, column: 53, scope: !2144, inlinedAt: !2157)
!2170 = !DILocation(line: 813, column: 49, scope: !2144, inlinedAt: !2157)
!2171 = !DILocation(line: 814, column: 49, scope: !2144, inlinedAt: !2157)
!2172 = !DILocation(line: 811, column: 20, scope: !2144, inlinedAt: !2157)
!2173 = !DILocation(line: 814, column: 62, scope: !2144, inlinedAt: !2157)
!2174 = !DILocation(line: 811, column: 10, scope: !2144, inlinedAt: !2157)
!2175 = !DILocalVariable(name: "n", arg: 1, scope: !2176, file: !563, line: 220, type: !9)
!2176 = distinct !DISubprogram(name: "xcharalloc", scope: !563, file: !563, line: 220, type: !2177, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2179)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!6, !9}
!2179 = !{!2175}
!2180 = !DILocation(line: 220, column: 20, scope: !2176, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 815, column: 15, scope: !2144, inlinedAt: !2157)
!2182 = !DILocation(line: 222, column: 10, scope: !2176, inlinedAt: !2181)
!2183 = !DILocation(line: 815, column: 9, scope: !2144, inlinedAt: !2157)
!2184 = !DILocation(line: 816, column: 60, scope: !2144, inlinedAt: !2157)
!2185 = !DILocation(line: 818, column: 32, scope: !2144, inlinedAt: !2157)
!2186 = !DILocation(line: 818, column: 47, scope: !2144, inlinedAt: !2157)
!2187 = !DILocation(line: 816, column: 3, scope: !2144, inlinedAt: !2157)
!2188 = !DILocation(line: 819, column: 9, scope: !2144, inlinedAt: !2157)
!2189 = !DILocation(line: 794, column: 3, scope: !2133)
!2190 = !DILocation(line: 804, column: 33, scope: !2144)
!2191 = !DILocation(line: 804, column: 45, scope: !2144)
!2192 = !DILocation(line: 804, column: 62, scope: !2144)
!2193 = !DILocation(line: 805, column: 51, scope: !2144)
!2194 = !DILocation(line: 807, column: 37, scope: !2144)
!2195 = !DILocation(line: 807, column: 33, scope: !2144)
!2196 = !DILocation(line: 808, column: 11, scope: !2144)
!2197 = !DILocation(line: 808, column: 7, scope: !2144)
!2198 = !DILocation(line: 810, column: 18, scope: !2144)
!2199 = !DILocation(line: 810, column: 27, scope: !2144)
!2200 = !DILocation(line: 810, column: 24, scope: !2144)
!2201 = !DILocation(line: 810, column: 7, scope: !2144)
!2202 = !DILocation(line: 811, column: 69, scope: !2144)
!2203 = !DILocation(line: 812, column: 53, scope: !2144)
!2204 = !DILocation(line: 813, column: 49, scope: !2144)
!2205 = !DILocation(line: 814, column: 49, scope: !2144)
!2206 = !DILocation(line: 811, column: 20, scope: !2144)
!2207 = !DILocation(line: 814, column: 62, scope: !2144)
!2208 = !DILocation(line: 811, column: 10, scope: !2144)
!2209 = !DILocation(line: 220, column: 20, scope: !2176, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 815, column: 15, scope: !2144)
!2211 = !DILocation(line: 222, column: 10, scope: !2176, inlinedAt: !2210)
!2212 = !DILocation(line: 815, column: 9, scope: !2144)
!2213 = !DILocation(line: 816, column: 60, scope: !2144)
!2214 = !DILocation(line: 818, column: 32, scope: !2144)
!2215 = !DILocation(line: 818, column: 47, scope: !2144)
!2216 = !DILocation(line: 816, column: 3, scope: !2144)
!2217 = !DILocation(line: 819, column: 9, scope: !2144)
!2218 = !DILocation(line: 820, column: 7, scope: !2144)
!2219 = !DILocation(line: 821, column: 11, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2144, file: !149, line: 820, column: 7)
!2221 = !{!711, !711, i64 0}
!2222 = !DILocation(line: 821, column: 5, scope: !2220)
!2223 = !DILocation(line: 822, column: 3, scope: !2144)
!2224 = distinct !DISubprogram(name: "quotearg_free", scope: !149, file: !149, line: 840, type: !746, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2225)
!2225 = !{!2226, !2227}
!2226 = !DILocalVariable(name: "sv", scope: !2224, file: !149, line: 842, type: !176)
!2227 = !DILocalVariable(name: "i", scope: !2224, file: !149, line: 843, type: !25)
!2228 = !DILocation(line: 842, column: 24, scope: !2224)
!2229 = !DILocation(line: 842, column: 19, scope: !2224)
!2230 = !DILocation(line: 843, column: 7, scope: !2224)
!2231 = !DILocation(line: 844, column: 19, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2233, file: !149, discriminator: 1)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !149, line: 844, column: 3)
!2234 = distinct !DILexicalBlock(scope: !2224, file: !149, line: 844, column: 3)
!2235 = !DILocation(line: 844, column: 17, scope: !2232)
!2236 = !DILocation(line: 844, column: 3, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2234, file: !149, discriminator: 1)
!2238 = !DILocation(line: 845, column: 17, scope: !2233)
!2239 = !{!2240, !613, i64 8}
!2240 = !{!"slotvec", !711, i64 0, !613, i64 8}
!2241 = !DILocation(line: 845, column: 5, scope: !2233)
!2242 = !DILocation(line: 844, column: 28, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2233, file: !149, discriminator: 2)
!2244 = distinct !{!2244, !2245, !2246}
!2245 = !DILocation(line: 844, column: 3, scope: !2234)
!2246 = !DILocation(line: 845, column: 20, scope: !2234)
!2247 = !DILocation(line: 846, column: 13, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2224, file: !149, line: 846, column: 7)
!2249 = !DILocation(line: 846, column: 17, scope: !2248)
!2250 = !DILocation(line: 846, column: 7, scope: !2224)
!2251 = !DILocation(line: 848, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2248, file: !149, line: 847, column: 5)
!2253 = !DILocation(line: 849, column: 21, scope: !2252)
!2254 = !{!2240, !711, i64 0}
!2255 = !DILocation(line: 850, column: 20, scope: !2252)
!2256 = !DILocation(line: 851, column: 5, scope: !2252)
!2257 = !DILocation(line: 852, column: 10, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2224, file: !149, line: 852, column: 7)
!2259 = !DILocation(line: 852, column: 7, scope: !2224)
!2260 = !DILocation(line: 854, column: 13, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !149, line: 853, column: 5)
!2262 = !DILocation(line: 854, column: 7, scope: !2261)
!2263 = !DILocation(line: 855, column: 15, scope: !2261)
!2264 = !DILocation(line: 856, column: 5, scope: !2261)
!2265 = !DILocation(line: 857, column: 10, scope: !2224)
!2266 = !DILocation(line: 858, column: 1, scope: !2224)
!2267 = distinct !DISubprogram(name: "quotearg_n", scope: !149, file: !149, line: 922, type: !2268, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!6, !25, !17}
!2270 = !{!2271, !2272}
!2271 = !DILocalVariable(name: "n", arg: 1, scope: !2267, file: !149, line: 922, type: !25)
!2272 = !DILocalVariable(name: "arg", arg: 2, scope: !2267, file: !149, line: 922, type: !17)
!2273 = !DILocation(line: 922, column: 17, scope: !2267)
!2274 = !DILocation(line: 922, column: 32, scope: !2267)
!2275 = !DILocation(line: 924, column: 10, scope: !2267)
!2276 = !DILocation(line: 924, column: 3, scope: !2267)
!2277 = distinct !DISubprogram(name: "quotearg_n_options", scope: !149, file: !149, line: 869, type: !2278, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!6, !25, !17, !9, !976}
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287, !2290, !2292, !2293, !2294}
!2281 = !DILocalVariable(name: "n", arg: 1, scope: !2277, file: !149, line: 869, type: !25)
!2282 = !DILocalVariable(name: "arg", arg: 2, scope: !2277, file: !149, line: 869, type: !17)
!2283 = !DILocalVariable(name: "argsize", arg: 3, scope: !2277, file: !149, line: 869, type: !9)
!2284 = !DILocalVariable(name: "options", arg: 4, scope: !2277, file: !149, line: 870, type: !976)
!2285 = !DILocalVariable(name: "e", scope: !2277, file: !149, line: 872, type: !25)
!2286 = !DILocalVariable(name: "sv", scope: !2277, file: !149, line: 874, type: !176)
!2287 = !DILocalVariable(name: "preallocated", scope: !2288, file: !149, line: 881, type: !31)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !149, line: 880, column: 5)
!2289 = distinct !DILexicalBlock(scope: !2277, file: !149, line: 879, column: 7)
!2290 = !DILocalVariable(name: "size", scope: !2291, file: !149, line: 894, type: !9)
!2291 = distinct !DILexicalBlock(scope: !2277, file: !149, line: 893, column: 3)
!2292 = !DILocalVariable(name: "val", scope: !2291, file: !149, line: 895, type: !6)
!2293 = !DILocalVariable(name: "flags", scope: !2291, file: !149, line: 897, type: !25)
!2294 = !DILocalVariable(name: "qsize", scope: !2291, file: !149, line: 898, type: !9)
!2295 = !DILocation(line: 869, column: 25, scope: !2277)
!2296 = !DILocation(line: 869, column: 40, scope: !2277)
!2297 = !DILocation(line: 869, column: 52, scope: !2277)
!2298 = !DILocation(line: 870, column: 51, scope: !2277)
!2299 = !DILocation(line: 872, column: 11, scope: !2277)
!2300 = !DILocation(line: 872, column: 7, scope: !2277)
!2301 = !DILocation(line: 874, column: 24, scope: !2277)
!2302 = !DILocation(line: 874, column: 19, scope: !2277)
!2303 = !DILocation(line: 876, column: 9, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2277, file: !149, line: 876, column: 7)
!2305 = !DILocation(line: 876, column: 7, scope: !2277)
!2306 = !DILocation(line: 877, column: 5, scope: !2304)
!2307 = !DILocation(line: 879, column: 7, scope: !2289)
!2308 = !DILocation(line: 879, column: 14, scope: !2289)
!2309 = !DILocation(line: 879, column: 7, scope: !2277)
!2310 = !DILocation(line: 881, column: 31, scope: !2288)
!2311 = !DILocation(line: 883, column: 67, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2288, file: !149, line: 883, column: 11)
!2313 = !DILocation(line: 883, column: 11, scope: !2288)
!2314 = !DILocation(line: 884, column: 9, scope: !2312)
!2315 = !DILocation(line: 886, column: 32, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2288, file: !149, discriminator: 3)
!2317 = !DILocation(line: 886, column: 61, scope: !2316)
!2318 = !DILocation(line: 886, column: 58, scope: !2316)
!2319 = !DILocation(line: 886, column: 66, scope: !2316)
!2320 = !DILocation(line: 886, column: 22, scope: !2316)
!2321 = !DILocation(line: 886, column: 15, scope: !2316)
!2322 = !DILocation(line: 887, column: 11, scope: !2288)
!2323 = !DILocation(line: 888, column: 15, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2288, file: !149, line: 887, column: 11)
!2325 = !{i64 0, i64 8, !2221, i64 8, i64 8, !612}
!2326 = !DILocation(line: 888, column: 9, scope: !2324)
!2327 = !DILocation(line: 889, column: 20, scope: !2288)
!2328 = !DILocation(line: 889, column: 18, scope: !2288)
!2329 = !DILocation(line: 889, column: 7, scope: !2288)
!2330 = !DILocation(line: 889, column: 38, scope: !2288)
!2331 = !DILocation(line: 889, column: 31, scope: !2288)
!2332 = !DILocation(line: 889, column: 48, scope: !2288)
!2333 = !DILocation(line: 890, column: 14, scope: !2288)
!2334 = !DILocation(line: 891, column: 5, scope: !2288)
!2335 = !DILocation(line: 894, column: 19, scope: !2291)
!2336 = !DILocation(line: 894, column: 25, scope: !2291)
!2337 = !DILocation(line: 894, column: 12, scope: !2291)
!2338 = !DILocation(line: 895, column: 23, scope: !2291)
!2339 = !DILocation(line: 895, column: 11, scope: !2291)
!2340 = !DILocation(line: 897, column: 26, scope: !2291)
!2341 = !DILocation(line: 897, column: 32, scope: !2291)
!2342 = !DILocation(line: 897, column: 9, scope: !2291)
!2343 = !DILocation(line: 899, column: 55, scope: !2291)
!2344 = !DILocation(line: 900, column: 46, scope: !2291)
!2345 = !DILocation(line: 901, column: 55, scope: !2291)
!2346 = !DILocation(line: 902, column: 55, scope: !2291)
!2347 = !DILocation(line: 898, column: 20, scope: !2291)
!2348 = !DILocation(line: 898, column: 12, scope: !2291)
!2349 = !DILocation(line: 904, column: 14, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2291, file: !149, line: 904, column: 9)
!2351 = !DILocation(line: 904, column: 9, scope: !2291)
!2352 = !DILocation(line: 906, column: 35, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !149, line: 905, column: 7)
!2354 = !DILocation(line: 906, column: 20, scope: !2353)
!2355 = !DILocation(line: 907, column: 17, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2353, file: !149, line: 907, column: 13)
!2357 = !DILocation(line: 907, column: 13, scope: !2353)
!2358 = !DILocation(line: 908, column: 11, scope: !2356)
!2359 = !DILocation(line: 220, column: 20, scope: !2176, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 909, column: 27, scope: !2353)
!2361 = !DILocation(line: 222, column: 10, scope: !2176, inlinedAt: !2360)
!2362 = !DILocation(line: 909, column: 19, scope: !2353)
!2363 = !DILocation(line: 910, column: 69, scope: !2353)
!2364 = !DILocation(line: 912, column: 44, scope: !2353)
!2365 = !DILocation(line: 913, column: 44, scope: !2353)
!2366 = !DILocation(line: 910, column: 9, scope: !2353)
!2367 = !DILocation(line: 914, column: 7, scope: !2353)
!2368 = !DILocation(line: 916, column: 11, scope: !2291)
!2369 = !DILocation(line: 917, column: 5, scope: !2291)
!2370 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !149, file: !149, line: 928, type: !2371, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!6, !25, !17, !9}
!2373 = !{!2374, !2375, !2376}
!2374 = !DILocalVariable(name: "n", arg: 1, scope: !2370, file: !149, line: 928, type: !25)
!2375 = !DILocalVariable(name: "arg", arg: 2, scope: !2370, file: !149, line: 928, type: !17)
!2376 = !DILocalVariable(name: "argsize", arg: 3, scope: !2370, file: !149, line: 928, type: !9)
!2377 = !DILocation(line: 928, column: 21, scope: !2370)
!2378 = !DILocation(line: 928, column: 36, scope: !2370)
!2379 = !DILocation(line: 928, column: 48, scope: !2370)
!2380 = !DILocation(line: 930, column: 10, scope: !2370)
!2381 = !DILocation(line: 930, column: 3, scope: !2370)
!2382 = distinct !DISubprogram(name: "quotearg", scope: !149, file: !149, line: 934, type: !817, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2383)
!2383 = !{!2384}
!2384 = !DILocalVariable(name: "arg", arg: 1, scope: !2382, file: !149, line: 934, type: !17)
!2385 = !DILocation(line: 934, column: 23, scope: !2382)
!2386 = !DILocation(line: 922, column: 17, scope: !2267, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 936, column: 10, scope: !2382)
!2388 = !DILocation(line: 922, column: 32, scope: !2267, inlinedAt: !2387)
!2389 = !DILocation(line: 924, column: 10, scope: !2267, inlinedAt: !2387)
!2390 = !DILocation(line: 936, column: 3, scope: !2382)
!2391 = distinct !DISubprogram(name: "quotearg_mem", scope: !149, file: !149, line: 940, type: !2392, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!6, !17, !9}
!2394 = !{!2395, !2396}
!2395 = !DILocalVariable(name: "arg", arg: 1, scope: !2391, file: !149, line: 940, type: !17)
!2396 = !DILocalVariable(name: "argsize", arg: 2, scope: !2391, file: !149, line: 940, type: !9)
!2397 = !DILocation(line: 940, column: 27, scope: !2391)
!2398 = !DILocation(line: 940, column: 39, scope: !2391)
!2399 = !DILocation(line: 928, column: 21, scope: !2370, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 942, column: 10, scope: !2391)
!2401 = !DILocation(line: 928, column: 36, scope: !2370, inlinedAt: !2400)
!2402 = !DILocation(line: 928, column: 48, scope: !2370, inlinedAt: !2400)
!2403 = !DILocation(line: 930, column: 10, scope: !2370, inlinedAt: !2400)
!2404 = !DILocation(line: 942, column: 3, scope: !2391)
!2405 = distinct !DISubprogram(name: "quotearg_n_style", scope: !149, file: !149, line: 946, type: !2406, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!6, !25, !110, !17}
!2408 = !{!2409, !2410, !2411, !2412}
!2409 = !DILocalVariable(name: "n", arg: 1, scope: !2405, file: !149, line: 946, type: !25)
!2410 = !DILocalVariable(name: "s", arg: 2, scope: !2405, file: !149, line: 946, type: !110)
!2411 = !DILocalVariable(name: "arg", arg: 3, scope: !2405, file: !149, line: 946, type: !17)
!2412 = !DILocalVariable(name: "o", scope: !2405, file: !149, line: 948, type: !977)
!2413 = !DILocalVariable(name: "o", scope: !2414, file: !149, line: 187, type: !156)
!2414 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !149, file: !149, line: 185, type: !2415, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!156, !110}
!2417 = !{!2418, !2413}
!2418 = !DILocalVariable(name: "style", arg: 1, scope: !2414, file: !149, line: 185, type: !110)
!2419 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2420 = !DILocation(line: 187, column: 26, scope: !2414, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 948, column: 36, scope: !2405)
!2422 = !DILocation(line: 946, column: 23, scope: !2405)
!2423 = !DILocation(line: 946, column: 45, scope: !2405)
!2424 = !DILocation(line: 946, column: 60, scope: !2405)
!2425 = !DILocation(line: 948, column: 3, scope: !2405)
!2426 = !DILocation(line: 948, column: 32, scope: !2405)
!2427 = !DILocation(line: 185, column: 48, scope: !2414, inlinedAt: !2421)
!2428 = !DILocation(line: 187, column: 3, scope: !2414, inlinedAt: !2421)
!2429 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2430 = !DILocation(line: 188, column: 13, scope: !2431, inlinedAt: !2421)
!2431 = distinct !DILexicalBlock(scope: !2414, file: !149, line: 188, column: 7)
!2432 = !DILocation(line: 188, column: 7, scope: !2414, inlinedAt: !2421)
!2433 = !DILocation(line: 189, column: 5, scope: !2431, inlinedAt: !2421)
!2434 = !{!2435}
!2435 = distinct !{!2435, !2436, !"quoting_options_from_style: argument 0"}
!2436 = distinct !{!2436, !"quoting_options_from_style"}
!2437 = !DILocation(line: 191, column: 10, scope: !2414, inlinedAt: !2421)
!2438 = !DILocation(line: 192, column: 1, scope: !2414, inlinedAt: !2421)
!2439 = !DILocation(line: 949, column: 10, scope: !2405)
!2440 = !DILocation(line: 950, column: 1, scope: !2405)
!2441 = !DILocation(line: 949, column: 3, scope: !2405)
!2442 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !149, file: !149, line: 953, type: !2443, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!6, !25, !110, !17, !9}
!2445 = !{!2446, !2447, !2448, !2449, !2450}
!2446 = !DILocalVariable(name: "n", arg: 1, scope: !2442, file: !149, line: 953, type: !25)
!2447 = !DILocalVariable(name: "s", arg: 2, scope: !2442, file: !149, line: 953, type: !110)
!2448 = !DILocalVariable(name: "arg", arg: 3, scope: !2442, file: !149, line: 954, type: !17)
!2449 = !DILocalVariable(name: "argsize", arg: 4, scope: !2442, file: !149, line: 954, type: !9)
!2450 = !DILocalVariable(name: "o", scope: !2442, file: !149, line: 956, type: !977)
!2451 = !DILocation(line: 187, column: 26, scope: !2414, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 956, column: 36, scope: !2442)
!2453 = !DILocation(line: 953, column: 27, scope: !2442)
!2454 = !DILocation(line: 953, column: 49, scope: !2442)
!2455 = !DILocation(line: 954, column: 35, scope: !2442)
!2456 = !DILocation(line: 954, column: 47, scope: !2442)
!2457 = !DILocation(line: 956, column: 3, scope: !2442)
!2458 = !DILocation(line: 956, column: 32, scope: !2442)
!2459 = !DILocation(line: 185, column: 48, scope: !2414, inlinedAt: !2452)
!2460 = !DILocation(line: 187, column: 3, scope: !2414, inlinedAt: !2452)
!2461 = !DILocation(line: 188, column: 13, scope: !2431, inlinedAt: !2452)
!2462 = !DILocation(line: 188, column: 7, scope: !2414, inlinedAt: !2452)
!2463 = !DILocation(line: 189, column: 5, scope: !2431, inlinedAt: !2452)
!2464 = !{!2465}
!2465 = distinct !{!2465, !2466, !"quoting_options_from_style: argument 0"}
!2466 = distinct !{!2466, !"quoting_options_from_style"}
!2467 = !DILocation(line: 191, column: 10, scope: !2414, inlinedAt: !2452)
!2468 = !DILocation(line: 192, column: 1, scope: !2414, inlinedAt: !2452)
!2469 = !DILocation(line: 957, column: 10, scope: !2442)
!2470 = !DILocation(line: 958, column: 1, scope: !2442)
!2471 = !DILocation(line: 957, column: 3, scope: !2442)
!2472 = distinct !DISubprogram(name: "quotearg_style", scope: !149, file: !149, line: 961, type: !2473, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!6, !110, !17}
!2475 = !{!2476, !2477}
!2476 = !DILocalVariable(name: "s", arg: 1, scope: !2472, file: !149, line: 961, type: !110)
!2477 = !DILocalVariable(name: "arg", arg: 2, scope: !2472, file: !149, line: 961, type: !17)
!2478 = !DILocation(line: 187, column: 26, scope: !2414, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 948, column: 36, scope: !2405, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 963, column: 10, scope: !2472)
!2481 = !DILocation(line: 961, column: 36, scope: !2472)
!2482 = !DILocation(line: 961, column: 51, scope: !2472)
!2483 = !DILocation(line: 946, column: 23, scope: !2405, inlinedAt: !2480)
!2484 = !DILocation(line: 946, column: 45, scope: !2405, inlinedAt: !2480)
!2485 = !DILocation(line: 946, column: 60, scope: !2405, inlinedAt: !2480)
!2486 = !DILocation(line: 948, column: 3, scope: !2405, inlinedAt: !2480)
!2487 = !DILocation(line: 948, column: 32, scope: !2405, inlinedAt: !2480)
!2488 = !DILocation(line: 185, column: 48, scope: !2414, inlinedAt: !2479)
!2489 = !DILocation(line: 187, column: 3, scope: !2414, inlinedAt: !2479)
!2490 = !DILocation(line: 188, column: 13, scope: !2431, inlinedAt: !2479)
!2491 = !DILocation(line: 188, column: 7, scope: !2414, inlinedAt: !2479)
!2492 = !DILocation(line: 189, column: 5, scope: !2431, inlinedAt: !2479)
!2493 = !{!2494}
!2494 = distinct !{!2494, !2495, !"quoting_options_from_style: argument 0"}
!2495 = distinct !{!2495, !"quoting_options_from_style"}
!2496 = !DILocation(line: 191, column: 10, scope: !2414, inlinedAt: !2479)
!2497 = !DILocation(line: 192, column: 1, scope: !2414, inlinedAt: !2479)
!2498 = !DILocation(line: 949, column: 10, scope: !2405, inlinedAt: !2480)
!2499 = !DILocation(line: 950, column: 1, scope: !2405, inlinedAt: !2480)
!2500 = !DILocation(line: 963, column: 3, scope: !2472)
!2501 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !149, file: !149, line: 967, type: !2502, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!6, !110, !17, !9}
!2504 = !{!2505, !2506, !2507}
!2505 = !DILocalVariable(name: "s", arg: 1, scope: !2501, file: !149, line: 967, type: !110)
!2506 = !DILocalVariable(name: "arg", arg: 2, scope: !2501, file: !149, line: 967, type: !17)
!2507 = !DILocalVariable(name: "argsize", arg: 3, scope: !2501, file: !149, line: 967, type: !9)
!2508 = !DILocation(line: 187, column: 26, scope: !2414, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 956, column: 36, scope: !2442, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 969, column: 10, scope: !2501)
!2511 = !DILocation(line: 967, column: 40, scope: !2501)
!2512 = !DILocation(line: 967, column: 55, scope: !2501)
!2513 = !DILocation(line: 967, column: 67, scope: !2501)
!2514 = !DILocation(line: 953, column: 27, scope: !2442, inlinedAt: !2510)
!2515 = !DILocation(line: 953, column: 49, scope: !2442, inlinedAt: !2510)
!2516 = !DILocation(line: 954, column: 35, scope: !2442, inlinedAt: !2510)
!2517 = !DILocation(line: 954, column: 47, scope: !2442, inlinedAt: !2510)
!2518 = !DILocation(line: 956, column: 3, scope: !2442, inlinedAt: !2510)
!2519 = !DILocation(line: 956, column: 32, scope: !2442, inlinedAt: !2510)
!2520 = !DILocation(line: 185, column: 48, scope: !2414, inlinedAt: !2509)
!2521 = !DILocation(line: 187, column: 3, scope: !2414, inlinedAt: !2509)
!2522 = !DILocation(line: 188, column: 13, scope: !2431, inlinedAt: !2509)
!2523 = !DILocation(line: 188, column: 7, scope: !2414, inlinedAt: !2509)
!2524 = !DILocation(line: 189, column: 5, scope: !2431, inlinedAt: !2509)
!2525 = !{!2526}
!2526 = distinct !{!2526, !2527, !"quoting_options_from_style: argument 0"}
!2527 = distinct !{!2527, !"quoting_options_from_style"}
!2528 = !DILocation(line: 191, column: 10, scope: !2414, inlinedAt: !2509)
!2529 = !DILocation(line: 192, column: 1, scope: !2414, inlinedAt: !2509)
!2530 = !DILocation(line: 957, column: 10, scope: !2442, inlinedAt: !2510)
!2531 = !DILocation(line: 958, column: 1, scope: !2442, inlinedAt: !2510)
!2532 = !DILocation(line: 969, column: 3, scope: !2501)
!2533 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !149, file: !149, line: 973, type: !2534, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!6, !17, !9, !7}
!2536 = !{!2537, !2538, !2539, !2540}
!2537 = !DILocalVariable(name: "arg", arg: 1, scope: !2533, file: !149, line: 973, type: !17)
!2538 = !DILocalVariable(name: "argsize", arg: 2, scope: !2533, file: !149, line: 973, type: !9)
!2539 = !DILocalVariable(name: "ch", arg: 3, scope: !2533, file: !149, line: 973, type: !7)
!2540 = !DILocalVariable(name: "options", scope: !2533, file: !149, line: 975, type: !156)
!2541 = !DILocation(line: 973, column: 32, scope: !2533)
!2542 = !DILocation(line: 973, column: 44, scope: !2533)
!2543 = !DILocation(line: 973, column: 58, scope: !2533)
!2544 = !DILocation(line: 975, column: 3, scope: !2533)
!2545 = !DILocation(line: 976, column: 13, scope: !2533)
!2546 = !{i64 0, i64 4, !719, i64 4, i64 4, !678, i64 8, i64 32, !719, i64 40, i64 8, !612, i64 48, i64 8, !612}
!2547 = !DILocation(line: 975, column: 26, scope: !2533)
!2548 = !DILocation(line: 144, column: 43, scope: !1000, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 977, column: 3, scope: !2533)
!2550 = !DILocation(line: 144, column: 51, scope: !1000, inlinedAt: !2549)
!2551 = !DILocation(line: 144, column: 58, scope: !1000, inlinedAt: !2549)
!2552 = !DILocation(line: 146, column: 17, scope: !1000, inlinedAt: !2549)
!2553 = !DILocation(line: 148, column: 62, scope: !1018, inlinedAt: !2549)
!2554 = !DILocation(line: 148, column: 57, scope: !1018, inlinedAt: !2549)
!2555 = !DILocation(line: 147, column: 17, scope: !1000, inlinedAt: !2549)
!2556 = !DILocation(line: 149, column: 18, scope: !1000, inlinedAt: !2549)
!2557 = !DILocation(line: 149, column: 15, scope: !1000, inlinedAt: !2549)
!2558 = !DILocation(line: 149, column: 7, scope: !1000, inlinedAt: !2549)
!2559 = !DILocation(line: 150, column: 12, scope: !1000, inlinedAt: !2549)
!2560 = !DILocation(line: 150, column: 15, scope: !1000, inlinedAt: !2549)
!2561 = !DILocation(line: 150, column: 25, scope: !1000, inlinedAt: !2549)
!2562 = !DILocation(line: 150, column: 7, scope: !1000, inlinedAt: !2549)
!2563 = !DILocation(line: 151, column: 18, scope: !1000, inlinedAt: !2549)
!2564 = !DILocation(line: 151, column: 23, scope: !1000, inlinedAt: !2549)
!2565 = !DILocation(line: 151, column: 6, scope: !1000, inlinedAt: !2549)
!2566 = !DILocation(line: 978, column: 10, scope: !2533)
!2567 = !DILocation(line: 979, column: 1, scope: !2533)
!2568 = !DILocation(line: 978, column: 3, scope: !2533)
!2569 = distinct !DISubprogram(name: "quotearg_char", scope: !149, file: !149, line: 982, type: !2570, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!6, !17, !7}
!2572 = !{!2573, !2574}
!2573 = !DILocalVariable(name: "arg", arg: 1, scope: !2569, file: !149, line: 982, type: !17)
!2574 = !DILocalVariable(name: "ch", arg: 2, scope: !2569, file: !149, line: 982, type: !7)
!2575 = !DILocation(line: 982, column: 28, scope: !2569)
!2576 = !DILocation(line: 982, column: 38, scope: !2569)
!2577 = !DILocation(line: 973, column: 32, scope: !2533, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 984, column: 10, scope: !2569)
!2579 = !DILocation(line: 973, column: 44, scope: !2533, inlinedAt: !2578)
!2580 = !DILocation(line: 973, column: 58, scope: !2533, inlinedAt: !2578)
!2581 = !DILocation(line: 975, column: 3, scope: !2533, inlinedAt: !2578)
!2582 = !DILocation(line: 976, column: 13, scope: !2533, inlinedAt: !2578)
!2583 = !DILocation(line: 975, column: 26, scope: !2533, inlinedAt: !2578)
!2584 = !DILocation(line: 144, column: 43, scope: !1000, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 977, column: 3, scope: !2533, inlinedAt: !2578)
!2586 = !DILocation(line: 144, column: 51, scope: !1000, inlinedAt: !2585)
!2587 = !DILocation(line: 144, column: 58, scope: !1000, inlinedAt: !2585)
!2588 = !DILocation(line: 146, column: 17, scope: !1000, inlinedAt: !2585)
!2589 = !DILocation(line: 148, column: 62, scope: !1018, inlinedAt: !2585)
!2590 = !DILocation(line: 148, column: 57, scope: !1018, inlinedAt: !2585)
!2591 = !DILocation(line: 147, column: 17, scope: !1000, inlinedAt: !2585)
!2592 = !DILocation(line: 149, column: 18, scope: !1000, inlinedAt: !2585)
!2593 = !DILocation(line: 149, column: 15, scope: !1000, inlinedAt: !2585)
!2594 = !DILocation(line: 149, column: 7, scope: !1000, inlinedAt: !2585)
!2595 = !DILocation(line: 150, column: 12, scope: !1000, inlinedAt: !2585)
!2596 = !DILocation(line: 150, column: 15, scope: !1000, inlinedAt: !2585)
!2597 = !DILocation(line: 150, column: 25, scope: !1000, inlinedAt: !2585)
!2598 = !DILocation(line: 150, column: 7, scope: !1000, inlinedAt: !2585)
!2599 = !DILocation(line: 151, column: 18, scope: !1000, inlinedAt: !2585)
!2600 = !DILocation(line: 151, column: 23, scope: !1000, inlinedAt: !2585)
!2601 = !DILocation(line: 151, column: 6, scope: !1000, inlinedAt: !2585)
!2602 = !DILocation(line: 978, column: 10, scope: !2533, inlinedAt: !2578)
!2603 = !DILocation(line: 979, column: 1, scope: !2533, inlinedAt: !2578)
!2604 = !DILocation(line: 984, column: 3, scope: !2569)
!2605 = distinct !DISubprogram(name: "quotearg_colon", scope: !149, file: !149, line: 988, type: !817, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2606)
!2606 = !{!2607}
!2607 = !DILocalVariable(name: "arg", arg: 1, scope: !2605, file: !149, line: 988, type: !17)
!2608 = !DILocation(line: 988, column: 29, scope: !2605)
!2609 = !DILocation(line: 982, column: 28, scope: !2569, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 990, column: 10, scope: !2605)
!2611 = !DILocation(line: 982, column: 38, scope: !2569, inlinedAt: !2610)
!2612 = !DILocation(line: 973, column: 32, scope: !2533, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 984, column: 10, scope: !2569, inlinedAt: !2610)
!2614 = !DILocation(line: 973, column: 44, scope: !2533, inlinedAt: !2613)
!2615 = !DILocation(line: 973, column: 58, scope: !2533, inlinedAt: !2613)
!2616 = !DILocation(line: 975, column: 3, scope: !2533, inlinedAt: !2613)
!2617 = !DILocation(line: 976, column: 13, scope: !2533, inlinedAt: !2613)
!2618 = !DILocation(line: 975, column: 26, scope: !2533, inlinedAt: !2613)
!2619 = !DILocation(line: 144, column: 43, scope: !1000, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 977, column: 3, scope: !2533, inlinedAt: !2613)
!2621 = !DILocation(line: 144, column: 51, scope: !1000, inlinedAt: !2620)
!2622 = !DILocation(line: 144, column: 58, scope: !1000, inlinedAt: !2620)
!2623 = !DILocation(line: 146, column: 17, scope: !1000, inlinedAt: !2620)
!2624 = !DILocation(line: 148, column: 57, scope: !1018, inlinedAt: !2620)
!2625 = !DILocation(line: 147, column: 17, scope: !1000, inlinedAt: !2620)
!2626 = !DILocation(line: 149, column: 7, scope: !1000, inlinedAt: !2620)
!2627 = !DILocation(line: 150, column: 12, scope: !1000, inlinedAt: !2620)
!2628 = !DILocation(line: 151, column: 6, scope: !1000, inlinedAt: !2620)
!2629 = !DILocation(line: 978, column: 10, scope: !2533, inlinedAt: !2613)
!2630 = !DILocation(line: 979, column: 1, scope: !2533, inlinedAt: !2613)
!2631 = !DILocation(line: 990, column: 3, scope: !2605)
!2632 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !149, file: !149, line: 994, type: !2392, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2633)
!2633 = !{!2634, !2635}
!2634 = !DILocalVariable(name: "arg", arg: 1, scope: !2632, file: !149, line: 994, type: !17)
!2635 = !DILocalVariable(name: "argsize", arg: 2, scope: !2632, file: !149, line: 994, type: !9)
!2636 = !DILocation(line: 994, column: 33, scope: !2632)
!2637 = !DILocation(line: 994, column: 45, scope: !2632)
!2638 = !DILocation(line: 973, column: 32, scope: !2533, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 996, column: 10, scope: !2632)
!2640 = !DILocation(line: 973, column: 44, scope: !2533, inlinedAt: !2639)
!2641 = !DILocation(line: 973, column: 58, scope: !2533, inlinedAt: !2639)
!2642 = !DILocation(line: 975, column: 3, scope: !2533, inlinedAt: !2639)
!2643 = !DILocation(line: 976, column: 13, scope: !2533, inlinedAt: !2639)
!2644 = !DILocation(line: 975, column: 26, scope: !2533, inlinedAt: !2639)
!2645 = !DILocation(line: 144, column: 43, scope: !1000, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 977, column: 3, scope: !2533, inlinedAt: !2639)
!2647 = !DILocation(line: 144, column: 51, scope: !1000, inlinedAt: !2646)
!2648 = !DILocation(line: 144, column: 58, scope: !1000, inlinedAt: !2646)
!2649 = !DILocation(line: 146, column: 17, scope: !1000, inlinedAt: !2646)
!2650 = !DILocation(line: 148, column: 57, scope: !1018, inlinedAt: !2646)
!2651 = !DILocation(line: 147, column: 17, scope: !1000, inlinedAt: !2646)
!2652 = !DILocation(line: 149, column: 7, scope: !1000, inlinedAt: !2646)
!2653 = !DILocation(line: 150, column: 12, scope: !1000, inlinedAt: !2646)
!2654 = !DILocation(line: 151, column: 6, scope: !1000, inlinedAt: !2646)
!2655 = !DILocation(line: 978, column: 10, scope: !2533, inlinedAt: !2639)
!2656 = !DILocation(line: 979, column: 1, scope: !2533, inlinedAt: !2639)
!2657 = !DILocation(line: 996, column: 3, scope: !2632)
!2658 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !149, file: !149, line: 1000, type: !2406, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2659)
!2659 = !{!2660, !2661, !2662, !2663}
!2660 = !DILocalVariable(name: "n", arg: 1, scope: !2658, file: !149, line: 1000, type: !25)
!2661 = !DILocalVariable(name: "s", arg: 2, scope: !2658, file: !149, line: 1000, type: !110)
!2662 = !DILocalVariable(name: "arg", arg: 3, scope: !2658, file: !149, line: 1000, type: !17)
!2663 = !DILocalVariable(name: "options", scope: !2658, file: !149, line: 1002, type: !156)
!2664 = !DILocation(line: 187, column: 26, scope: !2414, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 1003, column: 13, scope: !2658)
!2666 = !DILocation(line: 1000, column: 29, scope: !2658)
!2667 = !DILocation(line: 1000, column: 51, scope: !2658)
!2668 = !DILocation(line: 1000, column: 66, scope: !2658)
!2669 = !DILocation(line: 1002, column: 3, scope: !2658)
!2670 = !DILocation(line: 185, column: 48, scope: !2414, inlinedAt: !2665)
!2671 = !DILocation(line: 187, column: 3, scope: !2414, inlinedAt: !2665)
!2672 = !DILocation(line: 188, column: 13, scope: !2431, inlinedAt: !2665)
!2673 = !DILocation(line: 188, column: 7, scope: !2414, inlinedAt: !2665)
!2674 = !DILocation(line: 189, column: 5, scope: !2431, inlinedAt: !2665)
!2675 = !{!2676}
!2676 = distinct !{!2676, !2677, !"quoting_options_from_style: argument 0"}
!2677 = distinct !{!2677, !"quoting_options_from_style"}
!2678 = !DILocation(line: 191, column: 10, scope: !2414, inlinedAt: !2665)
!2679 = !DILocation(line: 192, column: 1, scope: !2414, inlinedAt: !2665)
!2680 = !DILocation(line: 1003, column: 13, scope: !2658)
!2681 = !DILocation(line: 1002, column: 26, scope: !2658)
!2682 = !DILocation(line: 144, column: 43, scope: !1000, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 1004, column: 3, scope: !2658)
!2684 = !DILocation(line: 144, column: 51, scope: !1000, inlinedAt: !2683)
!2685 = !DILocation(line: 144, column: 58, scope: !1000, inlinedAt: !2683)
!2686 = !DILocation(line: 146, column: 17, scope: !1000, inlinedAt: !2683)
!2687 = !DILocation(line: 148, column: 57, scope: !1018, inlinedAt: !2683)
!2688 = !DILocation(line: 147, column: 17, scope: !1000, inlinedAt: !2683)
!2689 = !DILocation(line: 149, column: 7, scope: !1000, inlinedAt: !2683)
!2690 = !DILocation(line: 150, column: 12, scope: !1000, inlinedAt: !2683)
!2691 = !DILocation(line: 151, column: 6, scope: !1000, inlinedAt: !2683)
!2692 = !DILocation(line: 1005, column: 10, scope: !2658)
!2693 = !DILocation(line: 1006, column: 1, scope: !2658)
!2694 = !DILocation(line: 1005, column: 3, scope: !2658)
!2695 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !149, file: !149, line: 1009, type: !2696, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!6, !25, !17, !17, !17}
!2698 = !{!2699, !2700, !2701, !2702}
!2699 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !149, line: 1009, type: !25)
!2700 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2695, file: !149, line: 1009, type: !17)
!2701 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2695, file: !149, line: 1010, type: !17)
!2702 = !DILocalVariable(name: "arg", arg: 4, scope: !2695, file: !149, line: 1010, type: !17)
!2703 = !DILocation(line: 1009, column: 24, scope: !2695)
!2704 = !DILocation(line: 1009, column: 39, scope: !2695)
!2705 = !DILocation(line: 1010, column: 32, scope: !2695)
!2706 = !DILocation(line: 1010, column: 57, scope: !2695)
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2708, file: !149, line: 1017, type: !25)
!2708 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !149, file: !149, line: 1017, type: !2709, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!6, !25, !17, !17, !17, !9}
!2711 = !{!2707, !2712, !2713, !2714, !2715, !2716}
!2712 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2708, file: !149, line: 1017, type: !17)
!2713 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2708, file: !149, line: 1018, type: !17)
!2714 = !DILocalVariable(name: "arg", arg: 4, scope: !2708, file: !149, line: 1019, type: !17)
!2715 = !DILocalVariable(name: "argsize", arg: 5, scope: !2708, file: !149, line: 1019, type: !9)
!2716 = !DILocalVariable(name: "o", scope: !2708, file: !149, line: 1021, type: !156)
!2717 = !DILocation(line: 1017, column: 28, scope: !2708, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1012, column: 10, scope: !2695)
!2719 = !DILocation(line: 1017, column: 43, scope: !2708, inlinedAt: !2718)
!2720 = !DILocation(line: 1018, column: 36, scope: !2708, inlinedAt: !2718)
!2721 = !DILocation(line: 1019, column: 36, scope: !2708, inlinedAt: !2718)
!2722 = !DILocation(line: 1019, column: 48, scope: !2708, inlinedAt: !2718)
!2723 = !DILocation(line: 1021, column: 3, scope: !2708, inlinedAt: !2718)
!2724 = !DILocation(line: 1021, column: 30, scope: !2708, inlinedAt: !2718)
!2725 = !DILocation(line: 1021, column: 26, scope: !2708, inlinedAt: !2718)
!2726 = !DILocation(line: 171, column: 45, scope: !1050, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1022, column: 3, scope: !2708, inlinedAt: !2718)
!2728 = !DILocation(line: 172, column: 33, scope: !1050, inlinedAt: !2727)
!2729 = !DILocation(line: 172, column: 57, scope: !1050, inlinedAt: !2727)
!2730 = !DILocation(line: 176, column: 6, scope: !1050, inlinedAt: !2727)
!2731 = !DILocation(line: 176, column: 12, scope: !1050, inlinedAt: !2727)
!2732 = !DILocation(line: 177, column: 8, scope: !1066, inlinedAt: !2727)
!2733 = !DILocation(line: 177, column: 23, scope: !1068, inlinedAt: !2727)
!2734 = !DILocation(line: 177, column: 19, scope: !1066, inlinedAt: !2727)
!2735 = !DILocation(line: 178, column: 5, scope: !1066, inlinedAt: !2727)
!2736 = !DILocation(line: 179, column: 6, scope: !1050, inlinedAt: !2727)
!2737 = !DILocation(line: 179, column: 17, scope: !1050, inlinedAt: !2727)
!2738 = !DILocation(line: 180, column: 6, scope: !1050, inlinedAt: !2727)
!2739 = !DILocation(line: 180, column: 18, scope: !1050, inlinedAt: !2727)
!2740 = !DILocation(line: 1023, column: 10, scope: !2708, inlinedAt: !2718)
!2741 = !DILocation(line: 1024, column: 1, scope: !2708, inlinedAt: !2718)
!2742 = !DILocation(line: 1012, column: 3, scope: !2695)
!2743 = !DILocation(line: 1017, column: 28, scope: !2708)
!2744 = !DILocation(line: 1017, column: 43, scope: !2708)
!2745 = !DILocation(line: 1018, column: 36, scope: !2708)
!2746 = !DILocation(line: 1019, column: 36, scope: !2708)
!2747 = !DILocation(line: 1019, column: 48, scope: !2708)
!2748 = !DILocation(line: 1021, column: 3, scope: !2708)
!2749 = !DILocation(line: 1021, column: 30, scope: !2708)
!2750 = !DILocation(line: 1021, column: 26, scope: !2708)
!2751 = !DILocation(line: 171, column: 45, scope: !1050, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 1022, column: 3, scope: !2708)
!2753 = !DILocation(line: 172, column: 33, scope: !1050, inlinedAt: !2752)
!2754 = !DILocation(line: 172, column: 57, scope: !1050, inlinedAt: !2752)
!2755 = !DILocation(line: 176, column: 6, scope: !1050, inlinedAt: !2752)
!2756 = !DILocation(line: 176, column: 12, scope: !1050, inlinedAt: !2752)
!2757 = !DILocation(line: 177, column: 8, scope: !1066, inlinedAt: !2752)
!2758 = !DILocation(line: 177, column: 23, scope: !1068, inlinedAt: !2752)
!2759 = !DILocation(line: 177, column: 19, scope: !1066, inlinedAt: !2752)
!2760 = !DILocation(line: 178, column: 5, scope: !1066, inlinedAt: !2752)
!2761 = !DILocation(line: 179, column: 6, scope: !1050, inlinedAt: !2752)
!2762 = !DILocation(line: 179, column: 17, scope: !1050, inlinedAt: !2752)
!2763 = !DILocation(line: 180, column: 6, scope: !1050, inlinedAt: !2752)
!2764 = !DILocation(line: 180, column: 18, scope: !1050, inlinedAt: !2752)
!2765 = !DILocation(line: 1023, column: 10, scope: !2708)
!2766 = !DILocation(line: 1024, column: 1, scope: !2708)
!2767 = !DILocation(line: 1023, column: 3, scope: !2708)
!2768 = distinct !DISubprogram(name: "quotearg_custom", scope: !149, file: !149, line: 1027, type: !2769, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!6, !17, !17, !17}
!2771 = !{!2772, !2773, !2774}
!2772 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2768, file: !149, line: 1027, type: !17)
!2773 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2768, file: !149, line: 1027, type: !17)
!2774 = !DILocalVariable(name: "arg", arg: 3, scope: !2768, file: !149, line: 1028, type: !17)
!2775 = !DILocation(line: 1027, column: 30, scope: !2768)
!2776 = !DILocation(line: 1027, column: 54, scope: !2768)
!2777 = !DILocation(line: 1028, column: 30, scope: !2768)
!2778 = !DILocation(line: 1009, column: 24, scope: !2695, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 1030, column: 10, scope: !2768)
!2780 = !DILocation(line: 1009, column: 39, scope: !2695, inlinedAt: !2779)
!2781 = !DILocation(line: 1010, column: 32, scope: !2695, inlinedAt: !2779)
!2782 = !DILocation(line: 1010, column: 57, scope: !2695, inlinedAt: !2779)
!2783 = !DILocation(line: 1017, column: 28, scope: !2708, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 1012, column: 10, scope: !2695, inlinedAt: !2779)
!2785 = !DILocation(line: 1017, column: 43, scope: !2708, inlinedAt: !2784)
!2786 = !DILocation(line: 1018, column: 36, scope: !2708, inlinedAt: !2784)
!2787 = !DILocation(line: 1019, column: 36, scope: !2708, inlinedAt: !2784)
!2788 = !DILocation(line: 1019, column: 48, scope: !2708, inlinedAt: !2784)
!2789 = !DILocation(line: 1021, column: 3, scope: !2708, inlinedAt: !2784)
!2790 = !DILocation(line: 1021, column: 30, scope: !2708, inlinedAt: !2784)
!2791 = !DILocation(line: 1021, column: 26, scope: !2708, inlinedAt: !2784)
!2792 = !DILocation(line: 171, column: 45, scope: !1050, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 1022, column: 3, scope: !2708, inlinedAt: !2784)
!2794 = !DILocation(line: 172, column: 33, scope: !1050, inlinedAt: !2793)
!2795 = !DILocation(line: 172, column: 57, scope: !1050, inlinedAt: !2793)
!2796 = !DILocation(line: 176, column: 6, scope: !1050, inlinedAt: !2793)
!2797 = !DILocation(line: 176, column: 12, scope: !1050, inlinedAt: !2793)
!2798 = !DILocation(line: 177, column: 8, scope: !1066, inlinedAt: !2793)
!2799 = !DILocation(line: 177, column: 23, scope: !1068, inlinedAt: !2793)
!2800 = !DILocation(line: 177, column: 19, scope: !1066, inlinedAt: !2793)
!2801 = !DILocation(line: 178, column: 5, scope: !1066, inlinedAt: !2793)
!2802 = !DILocation(line: 179, column: 6, scope: !1050, inlinedAt: !2793)
!2803 = !DILocation(line: 179, column: 17, scope: !1050, inlinedAt: !2793)
!2804 = !DILocation(line: 180, column: 6, scope: !1050, inlinedAt: !2793)
!2805 = !DILocation(line: 180, column: 18, scope: !1050, inlinedAt: !2793)
!2806 = !DILocation(line: 1023, column: 10, scope: !2708, inlinedAt: !2784)
!2807 = !DILocation(line: 1024, column: 1, scope: !2708, inlinedAt: !2784)
!2808 = !DILocation(line: 1030, column: 3, scope: !2768)
!2809 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !149, file: !149, line: 1034, type: !2810, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!6, !17, !17, !17, !9}
!2812 = !{!2813, !2814, !2815, !2816}
!2813 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2809, file: !149, line: 1034, type: !17)
!2814 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2809, file: !149, line: 1034, type: !17)
!2815 = !DILocalVariable(name: "arg", arg: 3, scope: !2809, file: !149, line: 1035, type: !17)
!2816 = !DILocalVariable(name: "argsize", arg: 4, scope: !2809, file: !149, line: 1035, type: !9)
!2817 = !DILocation(line: 1034, column: 34, scope: !2809)
!2818 = !DILocation(line: 1034, column: 58, scope: !2809)
!2819 = !DILocation(line: 1035, column: 34, scope: !2809)
!2820 = !DILocation(line: 1035, column: 46, scope: !2809)
!2821 = !DILocation(line: 1017, column: 28, scope: !2708, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 1037, column: 10, scope: !2809)
!2823 = !DILocation(line: 1017, column: 43, scope: !2708, inlinedAt: !2822)
!2824 = !DILocation(line: 1018, column: 36, scope: !2708, inlinedAt: !2822)
!2825 = !DILocation(line: 1019, column: 36, scope: !2708, inlinedAt: !2822)
!2826 = !DILocation(line: 1019, column: 48, scope: !2708, inlinedAt: !2822)
!2827 = !DILocation(line: 1021, column: 3, scope: !2708, inlinedAt: !2822)
!2828 = !DILocation(line: 1021, column: 30, scope: !2708, inlinedAt: !2822)
!2829 = !DILocation(line: 1021, column: 26, scope: !2708, inlinedAt: !2822)
!2830 = !DILocation(line: 171, column: 45, scope: !1050, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 1022, column: 3, scope: !2708, inlinedAt: !2822)
!2832 = !DILocation(line: 172, column: 33, scope: !1050, inlinedAt: !2831)
!2833 = !DILocation(line: 172, column: 57, scope: !1050, inlinedAt: !2831)
!2834 = !DILocation(line: 176, column: 6, scope: !1050, inlinedAt: !2831)
!2835 = !DILocation(line: 176, column: 12, scope: !1050, inlinedAt: !2831)
!2836 = !DILocation(line: 177, column: 8, scope: !1066, inlinedAt: !2831)
!2837 = !DILocation(line: 177, column: 23, scope: !1068, inlinedAt: !2831)
!2838 = !DILocation(line: 177, column: 19, scope: !1066, inlinedAt: !2831)
!2839 = !DILocation(line: 178, column: 5, scope: !1066, inlinedAt: !2831)
!2840 = !DILocation(line: 179, column: 6, scope: !1050, inlinedAt: !2831)
!2841 = !DILocation(line: 179, column: 17, scope: !1050, inlinedAt: !2831)
!2842 = !DILocation(line: 180, column: 6, scope: !1050, inlinedAt: !2831)
!2843 = !DILocation(line: 180, column: 18, scope: !1050, inlinedAt: !2831)
!2844 = !DILocation(line: 1023, column: 10, scope: !2708, inlinedAt: !2822)
!2845 = !DILocation(line: 1024, column: 1, scope: !2708, inlinedAt: !2822)
!2846 = !DILocation(line: 1037, column: 3, scope: !2809)
!2847 = distinct !DISubprogram(name: "quote_n_mem", scope: !149, file: !149, line: 1052, type: !2848, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!17, !25, !17, !9}
!2850 = !{!2851, !2852, !2853}
!2851 = !DILocalVariable(name: "n", arg: 1, scope: !2847, file: !149, line: 1052, type: !25)
!2852 = !DILocalVariable(name: "arg", arg: 2, scope: !2847, file: !149, line: 1052, type: !17)
!2853 = !DILocalVariable(name: "argsize", arg: 3, scope: !2847, file: !149, line: 1052, type: !9)
!2854 = !DILocation(line: 1052, column: 18, scope: !2847)
!2855 = !DILocation(line: 1052, column: 33, scope: !2847)
!2856 = !DILocation(line: 1052, column: 45, scope: !2847)
!2857 = !DILocation(line: 1054, column: 10, scope: !2847)
!2858 = !DILocation(line: 1054, column: 3, scope: !2847)
!2859 = distinct !DISubprogram(name: "quote_mem", scope: !149, file: !149, line: 1058, type: !2860, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!17, !17, !9}
!2862 = !{!2863, !2864}
!2863 = !DILocalVariable(name: "arg", arg: 1, scope: !2859, file: !149, line: 1058, type: !17)
!2864 = !DILocalVariable(name: "argsize", arg: 2, scope: !2859, file: !149, line: 1058, type: !9)
!2865 = !DILocation(line: 1058, column: 24, scope: !2859)
!2866 = !DILocation(line: 1058, column: 36, scope: !2859)
!2867 = !DILocation(line: 1052, column: 18, scope: !2847, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 1060, column: 10, scope: !2859)
!2869 = !DILocation(line: 1052, column: 33, scope: !2847, inlinedAt: !2868)
!2870 = !DILocation(line: 1052, column: 45, scope: !2847, inlinedAt: !2868)
!2871 = !DILocation(line: 1054, column: 10, scope: !2847, inlinedAt: !2868)
!2872 = !DILocation(line: 1060, column: 3, scope: !2859)
!2873 = distinct !DISubprogram(name: "quote_n", scope: !149, file: !149, line: 1064, type: !2874, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!17, !25, !17}
!2876 = !{!2877, !2878}
!2877 = !DILocalVariable(name: "n", arg: 1, scope: !2873, file: !149, line: 1064, type: !25)
!2878 = !DILocalVariable(name: "arg", arg: 2, scope: !2873, file: !149, line: 1064, type: !17)
!2879 = !DILocation(line: 1064, column: 14, scope: !2873)
!2880 = !DILocation(line: 1064, column: 29, scope: !2873)
!2881 = !DILocation(line: 1052, column: 18, scope: !2847, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 1066, column: 10, scope: !2873)
!2883 = !DILocation(line: 1052, column: 33, scope: !2847, inlinedAt: !2882)
!2884 = !DILocation(line: 1052, column: 45, scope: !2847, inlinedAt: !2882)
!2885 = !DILocation(line: 1054, column: 10, scope: !2847, inlinedAt: !2882)
!2886 = !DILocation(line: 1066, column: 3, scope: !2873)
!2887 = distinct !DISubprogram(name: "quote", scope: !149, file: !149, line: 1070, type: !2888, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !107, variables: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!17, !17}
!2890 = !{!2891}
!2891 = !DILocalVariable(name: "arg", arg: 1, scope: !2887, file: !149, line: 1070, type: !17)
!2892 = !DILocation(line: 1070, column: 20, scope: !2887)
!2893 = !DILocation(line: 1064, column: 14, scope: !2873, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 1072, column: 10, scope: !2887)
!2895 = !DILocation(line: 1064, column: 29, scope: !2873, inlinedAt: !2894)
!2896 = !DILocation(line: 1052, column: 18, scope: !2847, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 1066, column: 10, scope: !2873, inlinedAt: !2894)
!2898 = !DILocation(line: 1052, column: 33, scope: !2847, inlinedAt: !2897)
!2899 = !DILocation(line: 1052, column: 45, scope: !2847, inlinedAt: !2897)
!2900 = !DILocation(line: 1054, column: 10, scope: !2847, inlinedAt: !2897)
!2901 = !DILocation(line: 1072, column: 3, scope: !2887)
!2902 = distinct !DISubprogram(name: "version_etc_arn", scope: !555, file: !555, line: 62, type: !2903, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !2961)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !2905, !17, !17, !17, !2960, !9}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2907, line: 49, baseType: !2908)
!2907 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2909, line: 241, size: 1728, elements: !2910)
!2909 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2910 = !{!2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2931, !2932, !2933, !2934, !2938, !2939, !2941, !2945, !2948, !2950, !2951, !2952, !2953, !2954, !2955, !2956}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2908, file: !2909, line: 242, baseType: !25, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2908, file: !2909, line: 247, baseType: !6, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2908, file: !2909, line: 248, baseType: !6, size: 64, offset: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2908, file: !2909, line: 249, baseType: !6, size: 64, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2908, file: !2909, line: 250, baseType: !6, size: 64, offset: 256)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2908, file: !2909, line: 251, baseType: !6, size: 64, offset: 320)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2908, file: !2909, line: 252, baseType: !6, size: 64, offset: 384)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2908, file: !2909, line: 253, baseType: !6, size: 64, offset: 448)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2908, file: !2909, line: 254, baseType: !6, size: 64, offset: 512)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2908, file: !2909, line: 256, baseType: !6, size: 64, offset: 576)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2908, file: !2909, line: 257, baseType: !6, size: 64, offset: 640)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2908, file: !2909, line: 258, baseType: !6, size: 64, offset: 704)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2908, file: !2909, line: 260, baseType: !2924, size: 64, offset: 768)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2909, line: 156, size: 192, elements: !2926)
!2926 = !{!2927, !2928, !2930}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2925, file: !2909, line: 157, baseType: !2924, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2925, file: !2909, line: 158, baseType: !2929, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2925, file: !2909, line: 162, baseType: !25, size: 32, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2908, file: !2909, line: 262, baseType: !2929, size: 64, offset: 832)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2908, file: !2909, line: 264, baseType: !25, size: 32, offset: 896)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2908, file: !2909, line: 268, baseType: !25, size: 32, offset: 928)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2908, file: !2909, line: 270, baseType: !2935, size: 64, offset: 960)
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2936, line: 140, baseType: !2937)
!2936 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2937 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2908, file: !2909, line: 274, baseType: !145, size: 16, offset: 1024)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2908, file: !2909, line: 275, baseType: !2940, size: 8, offset: 1040)
!2940 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2908, file: !2909, line: 276, baseType: !2942, size: 8, offset: 1048)
!2942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2943)
!2943 = !{!2944}
!2944 = !DISubrange(count: 1)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2908, file: !2909, line: 280, baseType: !2946, size: 64, offset: 1088)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2909, line: 150, baseType: null)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2908, file: !2909, line: 289, baseType: !2949, size: 64, offset: 1152)
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2936, line: 141, baseType: !2937)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2908, file: !2909, line: 297, baseType: !8, size: 64, offset: 1216)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2908, file: !2909, line: 298, baseType: !8, size: 64, offset: 1280)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2908, file: !2909, line: 299, baseType: !8, size: 64, offset: 1344)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2908, file: !2909, line: 300, baseType: !8, size: 64, offset: 1408)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2908, file: !2909, line: 302, baseType: !9, size: 64, offset: 1472)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2908, file: !2909, line: 303, baseType: !25, size: 32, offset: 1536)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2908, file: !2909, line: 305, baseType: !2957, size: 160, offset: 1568)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2958)
!2958 = !{!2959}
!2959 = !DISubrange(count: 20)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967}
!2962 = !DILocalVariable(name: "stream", arg: 1, scope: !2902, file: !555, line: 62, type: !2905)
!2963 = !DILocalVariable(name: "command_name", arg: 2, scope: !2902, file: !555, line: 63, type: !17)
!2964 = !DILocalVariable(name: "package", arg: 3, scope: !2902, file: !555, line: 63, type: !17)
!2965 = !DILocalVariable(name: "version", arg: 4, scope: !2902, file: !555, line: 64, type: !17)
!2966 = !DILocalVariable(name: "authors", arg: 5, scope: !2902, file: !555, line: 65, type: !2960)
!2967 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2902, file: !555, line: 65, type: !9)
!2968 = !DILocation(line: 62, column: 24, scope: !2902)
!2969 = !DILocation(line: 63, column: 30, scope: !2902)
!2970 = !DILocation(line: 63, column: 56, scope: !2902)
!2971 = !DILocation(line: 64, column: 30, scope: !2902)
!2972 = !DILocation(line: 65, column: 39, scope: !2902)
!2973 = !DILocation(line: 65, column: 55, scope: !2902)
!2974 = !DILocation(line: 67, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2902, file: !555, line: 67, column: 7)
!2976 = !DILocation(line: 67, column: 7, scope: !2902)
!2977 = !DILocation(line: 68, column: 5, scope: !2975)
!2978 = !DILocation(line: 70, column: 5, scope: !2975)
!2979 = !DILocation(line: 84, column: 3, scope: !2902)
!2980 = !DILocation(line: 84, column: 3, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !2902, file: !555, discriminator: 1)
!2982 = !DILocation(line: 86, column: 3, scope: !2902)
!2983 = !DILocation(line: 86, column: 3, scope: !2981)
!2984 = !DILocation(line: 95, column: 3, scope: !2902)
!2985 = !DILocation(line: 99, column: 7, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2902, file: !555, line: 96, column: 5)
!2987 = !DILocation(line: 102, column: 7, scope: !2986)
!2988 = !DILocation(line: 102, column: 7, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !2986, file: !555, discriminator: 1)
!2990 = !DILocation(line: 103, column: 7, scope: !2986)
!2991 = !DILocation(line: 106, column: 7, scope: !2986)
!2992 = !DILocation(line: 106, column: 7, scope: !2989)
!2993 = !DILocation(line: 107, column: 7, scope: !2986)
!2994 = !DILocation(line: 110, column: 7, scope: !2986)
!2995 = !DILocation(line: 110, column: 7, scope: !2989)
!2996 = !DILocation(line: 112, column: 7, scope: !2986)
!2997 = !DILocation(line: 117, column: 7, scope: !2986)
!2998 = !DILocation(line: 117, column: 7, scope: !2989)
!2999 = !DILocation(line: 119, column: 7, scope: !2986)
!3000 = !DILocation(line: 124, column: 7, scope: !2986)
!3001 = !DILocation(line: 124, column: 7, scope: !2989)
!3002 = !DILocation(line: 126, column: 7, scope: !2986)
!3003 = !DILocation(line: 131, column: 7, scope: !2986)
!3004 = !DILocation(line: 131, column: 7, scope: !2989)
!3005 = !DILocation(line: 134, column: 7, scope: !2986)
!3006 = !DILocation(line: 139, column: 7, scope: !2986)
!3007 = !DILocation(line: 139, column: 7, scope: !2989)
!3008 = !DILocation(line: 142, column: 7, scope: !2986)
!3009 = !DILocation(line: 147, column: 7, scope: !2986)
!3010 = !DILocation(line: 147, column: 7, scope: !2989)
!3011 = !DILocation(line: 151, column: 7, scope: !2986)
!3012 = !DILocation(line: 156, column: 7, scope: !2986)
!3013 = !DILocation(line: 156, column: 7, scope: !2989)
!3014 = !DILocation(line: 160, column: 7, scope: !2986)
!3015 = !DILocation(line: 167, column: 7, scope: !2986)
!3016 = !DILocation(line: 167, column: 7, scope: !2989)
!3017 = !DILocation(line: 171, column: 7, scope: !2986)
!3018 = !DILocation(line: 173, column: 1, scope: !2902)
!3019 = distinct !DISubprogram(name: "version_etc_ar", scope: !555, file: !555, line: 180, type: !3020, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{null, !2905, !17, !17, !17, !2960}
!3022 = !{!3023, !3024, !3025, !3026, !3027, !3028}
!3023 = !DILocalVariable(name: "stream", arg: 1, scope: !3019, file: !555, line: 180, type: !2905)
!3024 = !DILocalVariable(name: "command_name", arg: 2, scope: !3019, file: !555, line: 181, type: !17)
!3025 = !DILocalVariable(name: "package", arg: 3, scope: !3019, file: !555, line: 181, type: !17)
!3026 = !DILocalVariable(name: "version", arg: 4, scope: !3019, file: !555, line: 182, type: !17)
!3027 = !DILocalVariable(name: "authors", arg: 5, scope: !3019, file: !555, line: 182, type: !2960)
!3028 = !DILocalVariable(name: "n_authors", scope: !3019, file: !555, line: 184, type: !9)
!3029 = !DILocation(line: 180, column: 23, scope: !3019)
!3030 = !DILocation(line: 181, column: 29, scope: !3019)
!3031 = !DILocation(line: 181, column: 55, scope: !3019)
!3032 = !DILocation(line: 182, column: 29, scope: !3019)
!3033 = !DILocation(line: 182, column: 59, scope: !3019)
!3034 = !DILocation(line: 184, column: 10, scope: !3019)
!3035 = !DILocation(line: 186, column: 8, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3019, file: !555, line: 186, column: 3)
!3037 = !DILocation(line: 186, column: 23, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !3039, file: !555, discriminator: 1)
!3039 = distinct !DILexicalBlock(scope: !3036, file: !555, line: 186, column: 3)
!3040 = !DILocation(line: 186, column: 3, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3036, file: !555, discriminator: 1)
!3042 = !DILocation(line: 186, column: 52, scope: !3043)
!3043 = !DILexicalBlockFile(scope: !3039, file: !555, discriminator: 3)
!3044 = distinct !{!3044, !3045, !3046}
!3045 = !DILocation(line: 186, column: 3, scope: !3036)
!3046 = !DILocation(line: 187, column: 5, scope: !3036)
!3047 = !DILocation(line: 188, column: 3, scope: !3019)
!3048 = !DILocation(line: 189, column: 1, scope: !3019)
!3049 = distinct !DISubprogram(name: "version_etc_va", scope: !555, file: !555, line: 196, type: !3050, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3059)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !2905, !17, !17, !17, !3052}
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !552, line: 189, size: 192, elements: !3054)
!3054 = !{!3055, !3056, !3057, !3058}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3053, file: !552, line: 189, baseType: !162, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3053, file: !552, line: 189, baseType: !162, size: 32, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3053, file: !552, line: 189, baseType: !8, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3053, file: !552, line: 189, baseType: !8, size: 64, offset: 128)
!3059 = !{!3060, !3061, !3062, !3063, !3064, !3065, !3066}
!3060 = !DILocalVariable(name: "stream", arg: 1, scope: !3049, file: !555, line: 196, type: !2905)
!3061 = !DILocalVariable(name: "command_name", arg: 2, scope: !3049, file: !555, line: 197, type: !17)
!3062 = !DILocalVariable(name: "package", arg: 3, scope: !3049, file: !555, line: 197, type: !17)
!3063 = !DILocalVariable(name: "version", arg: 4, scope: !3049, file: !555, line: 198, type: !17)
!3064 = !DILocalVariable(name: "authors", arg: 5, scope: !3049, file: !555, line: 198, type: !3052)
!3065 = !DILocalVariable(name: "n_authors", scope: !3049, file: !555, line: 200, type: !9)
!3066 = !DILocalVariable(name: "authtab", scope: !3049, file: !555, line: 201, type: !3067)
!3067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !152)
!3068 = !DILocation(line: 196, column: 23, scope: !3049)
!3069 = !DILocation(line: 197, column: 29, scope: !3049)
!3070 = !DILocation(line: 197, column: 55, scope: !3049)
!3071 = !DILocation(line: 198, column: 29, scope: !3049)
!3072 = !DILocation(line: 198, column: 46, scope: !3049)
!3073 = !DILocation(line: 201, column: 3, scope: !3049)
!3074 = !DILocation(line: 201, column: 15, scope: !3049)
!3075 = !DILocation(line: 200, column: 10, scope: !3049)
!3076 = !DILocation(line: 205, column: 35, scope: !3077)
!3077 = !DILexicalBlockFile(scope: !3078, file: !555, discriminator: 1)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !555, line: 203, column: 3)
!3079 = distinct !DILexicalBlock(scope: !3049, file: !555, line: 203, column: 3)
!3080 = !DILocation(line: 205, column: 35, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !3078, file: !555, discriminator: 2)
!3082 = !DILocation(line: 205, column: 35, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3078, file: !555, discriminator: 3)
!3084 = !DILocation(line: 205, column: 35, scope: !3085)
!3085 = !DILexicalBlockFile(scope: !3078, file: !555, discriminator: 4)
!3086 = !DILocation(line: 205, column: 14, scope: !3085)
!3087 = !DILocation(line: 205, column: 33, scope: !3085)
!3088 = !DILocation(line: 205, column: 67, scope: !3085)
!3089 = !DILocation(line: 203, column: 3, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3079, file: !555, discriminator: 1)
!3091 = !DILocation(line: 208, column: 3, scope: !3049)
!3092 = !DILocation(line: 210, column: 1, scope: !3049)
!3093 = distinct !DISubprogram(name: "version_etc", scope: !555, file: !555, line: 227, type: !3094, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{null, !2905, !17, !17, !17, null}
!3096 = !{!3097, !3098, !3099, !3100, !3101}
!3097 = !DILocalVariable(name: "stream", arg: 1, scope: !3093, file: !555, line: 227, type: !2905)
!3098 = !DILocalVariable(name: "command_name", arg: 2, scope: !3093, file: !555, line: 228, type: !17)
!3099 = !DILocalVariable(name: "package", arg: 3, scope: !3093, file: !555, line: 228, type: !17)
!3100 = !DILocalVariable(name: "version", arg: 4, scope: !3093, file: !555, line: 229, type: !17)
!3101 = !DILocalVariable(name: "authors", scope: !3093, file: !555, line: 231, type: !3102)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2907, line: 80, baseType: !3103)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3104, line: 50, baseType: !3105)
!3104 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !552, line: 231, baseType: !3106)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3053, size: 192, elements: !2943)
!3107 = !DILocation(line: 227, column: 20, scope: !3093)
!3108 = !DILocation(line: 228, column: 26, scope: !3093)
!3109 = !DILocation(line: 228, column: 52, scope: !3093)
!3110 = !DILocation(line: 229, column: 26, scope: !3093)
!3111 = !DILocation(line: 231, column: 3, scope: !3093)
!3112 = !DILocation(line: 231, column: 11, scope: !3093)
!3113 = !DILocation(line: 233, column: 3, scope: !3093)
!3114 = !DILocation(line: 234, column: 3, scope: !3093)
!3115 = !DILocation(line: 235, column: 3, scope: !3093)
!3116 = !DILocation(line: 236, column: 1, scope: !3093)
!3117 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !555, file: !555, line: 239, type: !746, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !4)
!3118 = !DILocation(line: 245, column: 3, scope: !3117)
!3119 = !DILocation(line: 245, column: 3, scope: !3120)
!3120 = !DILexicalBlockFile(scope: !3117, file: !555, discriminator: 1)
!3121 = !DILocation(line: 251, column: 3, scope: !3117)
!3122 = !DILocation(line: 251, column: 3, scope: !3120)
!3123 = !DILocation(line: 256, column: 3, scope: !3117)
!3124 = !DILocation(line: 256, column: 3, scope: !3120)
!3125 = !DILocation(line: 258, column: 1, scope: !3117)
!3126 = distinct !DISubprogram(name: "xnmalloc", scope: !563, file: !563, line: 105, type: !3127, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!8, !9, !9}
!3129 = !{!3130, !3131}
!3130 = !DILocalVariable(name: "n", arg: 1, scope: !3126, file: !563, line: 105, type: !9)
!3131 = !DILocalVariable(name: "s", arg: 2, scope: !3126, file: !563, line: 105, type: !9)
!3132 = !DILocation(line: 105, column: 18, scope: !3126)
!3133 = !DILocation(line: 105, column: 28, scope: !3126)
!3134 = !DILocation(line: 107, column: 7, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3126, file: !563, line: 107, column: 7)
!3136 = !DILocation(line: 107, column: 7, scope: !3126)
!3137 = !DILocation(line: 108, column: 5, scope: !3135)
!3138 = !DILocation(line: 109, column: 21, scope: !3126)
!3139 = !DILocalVariable(name: "n", arg: 1, scope: !3140, file: !3141, line: 39, type: !9)
!3140 = distinct !DISubprogram(name: "xmalloc", scope: !3141, file: !3141, line: 39, type: !3142, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3144)
!3141 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!8, !9}
!3144 = !{!3139, !3145}
!3145 = !DILocalVariable(name: "p", scope: !3140, file: !3141, line: 41, type: !8)
!3146 = !DILocation(line: 39, column: 17, scope: !3140, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 109, column: 10, scope: !3126)
!3148 = !DILocation(line: 41, column: 13, scope: !3140, inlinedAt: !3147)
!3149 = !DILocation(line: 41, column: 9, scope: !3140, inlinedAt: !3147)
!3150 = !DILocation(line: 42, column: 8, scope: !3151, inlinedAt: !3147)
!3151 = distinct !DILexicalBlock(scope: !3140, file: !3141, line: 42, column: 7)
!3152 = !DILocation(line: 42, column: 15, scope: !3153, inlinedAt: !3147)
!3153 = !DILexicalBlockFile(scope: !3151, file: !3141, discriminator: 1)
!3154 = !DILocation(line: 42, column: 10, scope: !3151, inlinedAt: !3147)
!3155 = !DILocation(line: 43, column: 5, scope: !3151, inlinedAt: !3147)
!3156 = !DILocation(line: 109, column: 3, scope: !3126)
!3157 = !DILocation(line: 39, column: 17, scope: !3140)
!3158 = !DILocation(line: 41, column: 13, scope: !3140)
!3159 = !DILocation(line: 41, column: 9, scope: !3140)
!3160 = !DILocation(line: 42, column: 8, scope: !3151)
!3161 = !DILocation(line: 42, column: 15, scope: !3153)
!3162 = !DILocation(line: 42, column: 10, scope: !3151)
!3163 = !DILocation(line: 43, column: 5, scope: !3151)
!3164 = !DILocation(line: 44, column: 3, scope: !3140)
!3165 = distinct !DISubprogram(name: "xnrealloc", scope: !563, file: !563, line: 118, type: !3166, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!8, !8, !9, !9}
!3168 = !{!3169, !3170, !3171}
!3169 = !DILocalVariable(name: "p", arg: 1, scope: !3165, file: !563, line: 118, type: !8)
!3170 = !DILocalVariable(name: "n", arg: 2, scope: !3165, file: !563, line: 118, type: !9)
!3171 = !DILocalVariable(name: "s", arg: 3, scope: !3165, file: !563, line: 118, type: !9)
!3172 = !DILocation(line: 118, column: 18, scope: !3165)
!3173 = !DILocation(line: 118, column: 28, scope: !3165)
!3174 = !DILocation(line: 118, column: 38, scope: !3165)
!3175 = !DILocation(line: 120, column: 7, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3165, file: !563, line: 120, column: 7)
!3177 = !DILocation(line: 120, column: 7, scope: !3165)
!3178 = !DILocation(line: 121, column: 5, scope: !3176)
!3179 = !DILocation(line: 122, column: 25, scope: !3165)
!3180 = !DILocalVariable(name: "p", arg: 1, scope: !3181, file: !3141, line: 51, type: !8)
!3181 = distinct !DISubprogram(name: "xrealloc", scope: !3141, file: !3141, line: 51, type: !3182, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!8, !8, !9}
!3184 = !{!3180, !3185}
!3185 = !DILocalVariable(name: "n", arg: 2, scope: !3181, file: !3141, line: 51, type: !9)
!3186 = !DILocation(line: 51, column: 17, scope: !3181, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 122, column: 10, scope: !3165)
!3188 = !DILocation(line: 51, column: 27, scope: !3181, inlinedAt: !3187)
!3189 = !DILocation(line: 53, column: 8, scope: !3190, inlinedAt: !3187)
!3190 = distinct !DILexicalBlock(scope: !3181, file: !3141, line: 53, column: 7)
!3191 = !DILocation(line: 53, column: 13, scope: !3192, inlinedAt: !3187)
!3192 = !DILexicalBlockFile(scope: !3190, file: !3141, discriminator: 1)
!3193 = !DILocation(line: 53, column: 10, scope: !3190, inlinedAt: !3187)
!3194 = !DILocation(line: 57, column: 7, scope: !3195, inlinedAt: !3187)
!3195 = distinct !DILexicalBlock(scope: !3190, file: !3141, line: 54, column: 5)
!3196 = !DILocation(line: 58, column: 7, scope: !3195, inlinedAt: !3187)
!3197 = !DILocation(line: 61, column: 7, scope: !3181, inlinedAt: !3187)
!3198 = !DILocation(line: 62, column: 8, scope: !3199, inlinedAt: !3187)
!3199 = distinct !DILexicalBlock(scope: !3181, file: !3141, line: 62, column: 7)
!3200 = !DILocation(line: 62, column: 13, scope: !3201, inlinedAt: !3187)
!3201 = !DILexicalBlockFile(scope: !3199, file: !3141, discriminator: 1)
!3202 = !DILocation(line: 62, column: 10, scope: !3199, inlinedAt: !3187)
!3203 = !DILocation(line: 63, column: 5, scope: !3199, inlinedAt: !3187)
!3204 = !DILocation(line: 122, column: 3, scope: !3165)
!3205 = !DILocation(line: 51, column: 17, scope: !3181)
!3206 = !DILocation(line: 51, column: 27, scope: !3181)
!3207 = !DILocation(line: 53, column: 8, scope: !3190)
!3208 = !DILocation(line: 53, column: 13, scope: !3192)
!3209 = !DILocation(line: 53, column: 10, scope: !3190)
!3210 = !DILocation(line: 57, column: 7, scope: !3195)
!3211 = !DILocation(line: 58, column: 7, scope: !3195)
!3212 = !DILocation(line: 61, column: 7, scope: !3181)
!3213 = !DILocation(line: 62, column: 8, scope: !3199)
!3214 = !DILocation(line: 62, column: 13, scope: !3201)
!3215 = !DILocation(line: 62, column: 10, scope: !3199)
!3216 = !DILocation(line: 63, column: 5, scope: !3199)
!3217 = !DILocation(line: 65, column: 1, scope: !3181)
!3218 = !DILocation(line: 180, column: 19, scope: !564)
!3219 = !DILocation(line: 180, column: 30, scope: !564)
!3220 = !DILocation(line: 180, column: 41, scope: !564)
!3221 = !DILocation(line: 182, column: 14, scope: !564)
!3222 = !DILocation(line: 182, column: 10, scope: !564)
!3223 = !DILocation(line: 184, column: 9, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !564, file: !563, line: 184, column: 7)
!3225 = !DILocation(line: 184, column: 7, scope: !564)
!3226 = !DILocation(line: 186, column: 13, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !563, line: 186, column: 11)
!3228 = distinct !DILexicalBlock(scope: !3224, file: !563, line: 185, column: 5)
!3229 = !DILocation(line: 186, column: 11, scope: !3228)
!3230 = !DILocation(line: 194, column: 30, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3227, file: !563, line: 187, column: 9)
!3232 = !DILocation(line: 195, column: 16, scope: !3231)
!3233 = !DILocation(line: 195, column: 13, scope: !3231)
!3234 = !DILocation(line: 196, column: 9, scope: !3231)
!3235 = !DILocation(line: 204, column: 69, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !563, line: 204, column: 11)
!3237 = distinct !DILexicalBlock(scope: !3224, file: !563, line: 199, column: 5)
!3238 = !DILocation(line: 205, column: 11, scope: !3236)
!3239 = !DILocation(line: 204, column: 11, scope: !3237)
!3240 = !DILocation(line: 206, column: 9, scope: !3236)
!3241 = !DILocation(line: 210, column: 7, scope: !564)
!3242 = !DILocation(line: 211, column: 25, scope: !564)
!3243 = !DILocation(line: 51, column: 17, scope: !3181, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 211, column: 10, scope: !564)
!3245 = !DILocation(line: 51, column: 27, scope: !3181, inlinedAt: !3244)
!3246 = !DILocation(line: 53, column: 10, scope: !3190, inlinedAt: !3244)
!3247 = !DILocation(line: 207, column: 14, scope: !3237)
!3248 = !DILocation(line: 207, column: 18, scope: !3237)
!3249 = !DILocation(line: 207, column: 9, scope: !3237)
!3250 = !DILocation(line: 53, column: 8, scope: !3190, inlinedAt: !3244)
!3251 = !DILocation(line: 57, column: 7, scope: !3195, inlinedAt: !3244)
!3252 = !DILocation(line: 58, column: 7, scope: !3195, inlinedAt: !3244)
!3253 = !DILocation(line: 61, column: 7, scope: !3181, inlinedAt: !3244)
!3254 = !DILocation(line: 62, column: 8, scope: !3199, inlinedAt: !3244)
!3255 = !DILocation(line: 62, column: 13, scope: !3201, inlinedAt: !3244)
!3256 = !DILocation(line: 62, column: 10, scope: !3199, inlinedAt: !3244)
!3257 = !DILocation(line: 63, column: 5, scope: !3199, inlinedAt: !3244)
!3258 = !DILocation(line: 211, column: 3, scope: !564)
!3259 = distinct !DISubprogram(name: "xcharalloc", scope: !563, file: !563, line: 220, type: !2177, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3260)
!3260 = !{!3261}
!3261 = !DILocalVariable(name: "n", arg: 1, scope: !3259, file: !563, line: 220, type: !9)
!3262 = !DILocation(line: 220, column: 20, scope: !3259)
!3263 = !DILocation(line: 39, column: 17, scope: !3140, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 222, column: 10, scope: !3259)
!3265 = !DILocation(line: 41, column: 13, scope: !3140, inlinedAt: !3264)
!3266 = !DILocation(line: 41, column: 9, scope: !3140, inlinedAt: !3264)
!3267 = !DILocation(line: 42, column: 8, scope: !3151, inlinedAt: !3264)
!3268 = !DILocation(line: 42, column: 15, scope: !3153, inlinedAt: !3264)
!3269 = !DILocation(line: 42, column: 10, scope: !3151, inlinedAt: !3264)
!3270 = !DILocation(line: 43, column: 5, scope: !3151, inlinedAt: !3264)
!3271 = !DILocation(line: 222, column: 3, scope: !3259)
!3272 = distinct !DISubprogram(name: "x2realloc", scope: !3141, file: !3141, line: 74, type: !3273, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!8, !8, !567}
!3275 = !{!3276, !3277}
!3276 = !DILocalVariable(name: "p", arg: 1, scope: !3272, file: !3141, line: 74, type: !8)
!3277 = !DILocalVariable(name: "pn", arg: 2, scope: !3272, file: !3141, line: 74, type: !567)
!3278 = !DILocation(line: 74, column: 18, scope: !3272)
!3279 = !DILocation(line: 74, column: 29, scope: !3272)
!3280 = !DILocation(line: 180, column: 19, scope: !564, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 76, column: 10, scope: !3272)
!3282 = !DILocation(line: 180, column: 30, scope: !564, inlinedAt: !3281)
!3283 = !DILocation(line: 180, column: 41, scope: !564, inlinedAt: !3281)
!3284 = !DILocation(line: 182, column: 14, scope: !564, inlinedAt: !3281)
!3285 = !DILocation(line: 182, column: 10, scope: !564, inlinedAt: !3281)
!3286 = !DILocation(line: 184, column: 9, scope: !3224, inlinedAt: !3281)
!3287 = !DILocation(line: 184, column: 7, scope: !564, inlinedAt: !3281)
!3288 = !DILocation(line: 186, column: 13, scope: !3227, inlinedAt: !3281)
!3289 = !DILocation(line: 186, column: 11, scope: !3228, inlinedAt: !3281)
!3290 = !DILocation(line: 210, column: 7, scope: !564, inlinedAt: !3281)
!3291 = !DILocation(line: 51, column: 17, scope: !3181, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 211, column: 10, scope: !564, inlinedAt: !3281)
!3293 = !DILocation(line: 51, column: 27, scope: !3181, inlinedAt: !3292)
!3294 = !DILocation(line: 53, column: 10, scope: !3190, inlinedAt: !3292)
!3295 = !DILocation(line: 205, column: 11, scope: !3236, inlinedAt: !3281)
!3296 = !DILocation(line: 204, column: 11, scope: !3237, inlinedAt: !3281)
!3297 = !DILocation(line: 206, column: 9, scope: !3236, inlinedAt: !3281)
!3298 = !DILocation(line: 207, column: 14, scope: !3237, inlinedAt: !3281)
!3299 = !DILocation(line: 207, column: 18, scope: !3237, inlinedAt: !3281)
!3300 = !DILocation(line: 207, column: 9, scope: !3237, inlinedAt: !3281)
!3301 = !DILocation(line: 53, column: 8, scope: !3190, inlinedAt: !3292)
!3302 = !DILocation(line: 57, column: 7, scope: !3195, inlinedAt: !3292)
!3303 = !DILocation(line: 58, column: 7, scope: !3195, inlinedAt: !3292)
!3304 = !DILocation(line: 61, column: 7, scope: !3181, inlinedAt: !3292)
!3305 = !DILocation(line: 62, column: 8, scope: !3199, inlinedAt: !3292)
!3306 = !DILocation(line: 62, column: 13, scope: !3201, inlinedAt: !3292)
!3307 = !DILocation(line: 62, column: 10, scope: !3199, inlinedAt: !3292)
!3308 = !DILocation(line: 63, column: 5, scope: !3199, inlinedAt: !3292)
!3309 = !DILocation(line: 76, column: 3, scope: !3272)
!3310 = distinct !DISubprogram(name: "xzalloc", scope: !3141, file: !3141, line: 84, type: !3142, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3311)
!3311 = !{!3312}
!3312 = !DILocalVariable(name: "s", arg: 1, scope: !3310, file: !3141, line: 84, type: !9)
!3313 = !DILocation(line: 84, column: 17, scope: !3310)
!3314 = !DILocation(line: 39, column: 17, scope: !3140, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 86, column: 18, scope: !3310)
!3316 = !DILocation(line: 41, column: 13, scope: !3140, inlinedAt: !3315)
!3317 = !DILocation(line: 41, column: 9, scope: !3140, inlinedAt: !3315)
!3318 = !DILocation(line: 42, column: 8, scope: !3151, inlinedAt: !3315)
!3319 = !DILocation(line: 42, column: 15, scope: !3153, inlinedAt: !3315)
!3320 = !DILocation(line: 42, column: 10, scope: !3151, inlinedAt: !3315)
!3321 = !DILocation(line: 43, column: 5, scope: !3151, inlinedAt: !3315)
!3322 = !DILocation(line: 86, column: 10, scope: !3310)
!3323 = !DILocation(line: 86, column: 3, scope: !3310)
!3324 = distinct !DISubprogram(name: "xcalloc", scope: !3141, file: !3141, line: 93, type: !3127, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3325)
!3325 = !{!3326, !3327, !3328}
!3326 = !DILocalVariable(name: "n", arg: 1, scope: !3324, file: !3141, line: 93, type: !9)
!3327 = !DILocalVariable(name: "s", arg: 2, scope: !3324, file: !3141, line: 93, type: !9)
!3328 = !DILocalVariable(name: "p", scope: !3324, file: !3141, line: 95, type: !8)
!3329 = !DILocation(line: 93, column: 17, scope: !3324)
!3330 = !DILocation(line: 93, column: 27, scope: !3324)
!3331 = !DILocation(line: 100, column: 7, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3324, file: !3141, line: 100, column: 7)
!3333 = !DILocation(line: 101, column: 7, scope: !3332)
!3334 = !DILocation(line: 101, column: 18, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3332, file: !3141, discriminator: 1)
!3336 = !DILocation(line: 95, column: 9, scope: !3324)
!3337 = !DILocation(line: 101, column: 16, scope: !3335)
!3338 = !DILocation(line: 100, column: 7, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3324, file: !3141, discriminator: 1)
!3340 = !DILocation(line: 102, column: 5, scope: !3332)
!3341 = !DILocation(line: 103, column: 3, scope: !3324)
!3342 = distinct !DISubprogram(name: "xmemdup", scope: !3141, file: !3141, line: 111, type: !3343, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!8, !12, !9}
!3345 = !{!3346, !3347}
!3346 = !DILocalVariable(name: "p", arg: 1, scope: !3342, file: !3141, line: 111, type: !12)
!3347 = !DILocalVariable(name: "s", arg: 2, scope: !3342, file: !3141, line: 111, type: !9)
!3348 = !DILocation(line: 111, column: 22, scope: !3342)
!3349 = !DILocation(line: 111, column: 32, scope: !3342)
!3350 = !DILocation(line: 39, column: 17, scope: !3140, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 113, column: 18, scope: !3342)
!3352 = !DILocation(line: 41, column: 13, scope: !3140, inlinedAt: !3351)
!3353 = !DILocation(line: 41, column: 9, scope: !3140, inlinedAt: !3351)
!3354 = !DILocation(line: 42, column: 8, scope: !3151, inlinedAt: !3351)
!3355 = !DILocation(line: 42, column: 15, scope: !3153, inlinedAt: !3351)
!3356 = !DILocation(line: 42, column: 10, scope: !3151, inlinedAt: !3351)
!3357 = !DILocation(line: 43, column: 5, scope: !3151, inlinedAt: !3351)
!3358 = !DILocation(line: 113, column: 10, scope: !3342)
!3359 = !DILocation(line: 113, column: 3, scope: !3342)
!3360 = distinct !DISubprogram(name: "xstrdup", scope: !3141, file: !3141, line: 119, type: !817, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3361)
!3361 = !{!3362}
!3362 = !DILocalVariable(name: "string", arg: 1, scope: !3360, file: !3141, line: 119, type: !17)
!3363 = !DILocation(line: 119, column: 22, scope: !3360)
!3364 = !DILocation(line: 121, column: 27, scope: !3360)
!3365 = !DILocation(line: 121, column: 43, scope: !3360)
!3366 = !DILocation(line: 111, column: 22, scope: !3342, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 121, column: 10, scope: !3368)
!3368 = !DILexicalBlockFile(scope: !3360, file: !3141, discriminator: 1)
!3369 = !DILocation(line: 111, column: 32, scope: !3342, inlinedAt: !3367)
!3370 = !DILocation(line: 39, column: 17, scope: !3140, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 113, column: 18, scope: !3342, inlinedAt: !3367)
!3372 = !DILocation(line: 41, column: 13, scope: !3140, inlinedAt: !3371)
!3373 = !DILocation(line: 41, column: 9, scope: !3140, inlinedAt: !3371)
!3374 = !DILocation(line: 42, column: 8, scope: !3151, inlinedAt: !3371)
!3375 = !DILocation(line: 42, column: 15, scope: !3153, inlinedAt: !3371)
!3376 = !DILocation(line: 42, column: 10, scope: !3151, inlinedAt: !3371)
!3377 = !DILocation(line: 43, column: 5, scope: !3151, inlinedAt: !3371)
!3378 = !DILocation(line: 113, column: 10, scope: !3342, inlinedAt: !3367)
!3379 = !DILocation(line: 121, column: 3, scope: !3360)
!3380 = distinct !DISubprogram(name: "xalloc_die", scope: !3381, file: !3381, line: 32, type: !746, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !576, variables: !4)
!3381 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3382 = !DILocation(line: 34, column: 10, scope: !3380)
!3383 = !DILocation(line: 34, column: 33, scope: !3380)
!3384 = !DILocation(line: 34, column: 3, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !3380, file: !3381, discriminator: 1)
!3386 = !DILocation(line: 40, column: 3, scope: !3380)
!3387 = distinct !DISubprogram(name: "rpl_calloc", scope: !3388, file: !3388, line: 42, type: !3127, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !3389)
!3388 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DILocalVariable(name: "n", arg: 1, scope: !3387, file: !3388, line: 42, type: !9)
!3391 = !DILocalVariable(name: "s", arg: 2, scope: !3387, file: !3388, line: 42, type: !9)
!3392 = !DILocalVariable(name: "result", scope: !3387, file: !3388, line: 44, type: !8)
!3393 = !DILocalVariable(name: "bytes", scope: !3394, file: !3388, line: 56, type: !9)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !3388, line: 53, column: 5)
!3395 = distinct !DILexicalBlock(scope: !3387, file: !3388, line: 47, column: 7)
!3396 = !DILocation(line: 42, column: 20, scope: !3387)
!3397 = !DILocation(line: 42, column: 30, scope: !3387)
!3398 = !DILocation(line: 47, column: 9, scope: !3395)
!3399 = !DILocation(line: 47, column: 19, scope: !3400)
!3400 = !DILexicalBlockFile(scope: !3395, file: !3388, discriminator: 1)
!3401 = !DILocation(line: 47, column: 14, scope: !3395)
!3402 = !DILocation(line: 56, column: 24, scope: !3394)
!3403 = !DILocation(line: 56, column: 14, scope: !3394)
!3404 = !DILocation(line: 57, column: 17, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3394, file: !3388, line: 57, column: 11)
!3406 = !DILocation(line: 57, column: 21, scope: !3405)
!3407 = !DILocation(line: 57, column: 11, scope: !3394)
!3408 = !DILocation(line: 59, column: 11, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3405, file: !3388, line: 58, column: 9)
!3410 = !DILocation(line: 59, column: 17, scope: !3409)
!3411 = !DILocation(line: 65, column: 12, scope: !3387)
!3412 = !DILocation(line: 44, column: 9, scope: !3387)
!3413 = !DILocation(line: 72, column: 3, scope: !3387)
!3414 = !DILocation(line: 73, column: 1, scope: !3387)
!3415 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3416, file: !3416, line: 334, type: !3417, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !3431)
!3416 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!9, !3419, !17, !9, !3420}
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1150, line: 107, baseType: !3422)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1150, line: 95, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 83, size: 64, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3423, file: !1150, line: 85, baseType: !25, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3423, file: !1150, line: 94, baseType: !3427, size: 32, offset: 32)
!3427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3423, file: !1150, line: 86, size: 32, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3427, file: !1150, line: 89, baseType: !162, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3427, file: !1150, line: 93, baseType: !1160, size: 32)
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437, !3438}
!3432 = !DILocalVariable(name: "pwc", arg: 1, scope: !3415, file: !3416, line: 334, type: !3419)
!3433 = !DILocalVariable(name: "s", arg: 2, scope: !3415, file: !3416, line: 334, type: !17)
!3434 = !DILocalVariable(name: "n", arg: 3, scope: !3415, file: !3416, line: 334, type: !9)
!3435 = !DILocalVariable(name: "ps", arg: 4, scope: !3415, file: !3416, line: 334, type: !3420)
!3436 = !DILocalVariable(name: "ret", scope: !3415, file: !3416, line: 336, type: !9)
!3437 = !DILocalVariable(name: "wc", scope: !3415, file: !3416, line: 337, type: !1163)
!3438 = !DILocalVariable(name: "uc", scope: !3439, file: !3416, line: 398, type: !16)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !3416, line: 397, column: 5)
!3440 = distinct !DILexicalBlock(scope: !3415, file: !3416, line: 396, column: 7)
!3441 = !DILocation(line: 334, column: 23, scope: !3415)
!3442 = !DILocation(line: 334, column: 40, scope: !3415)
!3443 = !DILocation(line: 334, column: 50, scope: !3415)
!3444 = !DILocation(line: 334, column: 64, scope: !3415)
!3445 = !DILocation(line: 337, column: 3, scope: !3415)
!3446 = !DILocation(line: 353, column: 9, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3415, file: !3416, line: 353, column: 7)
!3448 = !DILocation(line: 353, column: 7, scope: !3415)
!3449 = !DILocation(line: 388, column: 9, scope: !3415)
!3450 = !DILocation(line: 336, column: 10, scope: !3415)
!3451 = !DILocation(line: 396, column: 19, scope: !3440)
!3452 = !DILocation(line: 396, column: 31, scope: !3453)
!3453 = !DILexicalBlockFile(scope: !3440, file: !3416, discriminator: 1)
!3454 = !DILocation(line: 396, column: 26, scope: !3440)
!3455 = !DILocation(line: 396, column: 41, scope: !3456)
!3456 = !DILexicalBlockFile(scope: !3440, file: !3416, discriminator: 2)
!3457 = !DILocation(line: 396, column: 7, scope: !3458)
!3458 = !DILexicalBlockFile(scope: !3415, file: !3416, discriminator: 2)
!3459 = !DILocation(line: 398, column: 26, scope: !3439)
!3460 = !DILocation(line: 398, column: 21, scope: !3439)
!3461 = !DILocation(line: 399, column: 14, scope: !3439)
!3462 = !DILocation(line: 399, column: 12, scope: !3439)
!3463 = !DILocation(line: 405, column: 1, scope: !3415)
!3464 = distinct !DISubprogram(name: "close_stream", scope: !3465, file: !3465, line: 56, type: !3466, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3508)
!3465 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!25, !3468}
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2907, line: 49, baseType: !3470)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2909, line: 241, size: 1728, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3470, file: !2909, line: 242, baseType: !25, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3470, file: !2909, line: 247, baseType: !6, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3470, file: !2909, line: 248, baseType: !6, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3470, file: !2909, line: 249, baseType: !6, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3470, file: !2909, line: 250, baseType: !6, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3470, file: !2909, line: 251, baseType: !6, size: 64, offset: 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3470, file: !2909, line: 252, baseType: !6, size: 64, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3470, file: !2909, line: 253, baseType: !6, size: 64, offset: 448)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3470, file: !2909, line: 254, baseType: !6, size: 64, offset: 512)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3470, file: !2909, line: 256, baseType: !6, size: 64, offset: 576)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3470, file: !2909, line: 257, baseType: !6, size: 64, offset: 640)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3470, file: !2909, line: 258, baseType: !6, size: 64, offset: 704)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3470, file: !2909, line: 260, baseType: !3485, size: 64, offset: 768)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2909, line: 156, size: 192, elements: !3487)
!3487 = !{!3488, !3489, !3491}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3486, file: !2909, line: 157, baseType: !3485, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3486, file: !2909, line: 158, baseType: !3490, size: 64, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3486, file: !2909, line: 162, baseType: !25, size: 32, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3470, file: !2909, line: 262, baseType: !3490, size: 64, offset: 832)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3470, file: !2909, line: 264, baseType: !25, size: 32, offset: 896)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3470, file: !2909, line: 268, baseType: !25, size: 32, offset: 928)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3470, file: !2909, line: 270, baseType: !2935, size: 64, offset: 960)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3470, file: !2909, line: 274, baseType: !145, size: 16, offset: 1024)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3470, file: !2909, line: 275, baseType: !2940, size: 8, offset: 1040)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3470, file: !2909, line: 276, baseType: !2942, size: 8, offset: 1048)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3470, file: !2909, line: 280, baseType: !2946, size: 64, offset: 1088)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3470, file: !2909, line: 289, baseType: !2949, size: 64, offset: 1152)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3470, file: !2909, line: 297, baseType: !8, size: 64, offset: 1216)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3470, file: !2909, line: 298, baseType: !8, size: 64, offset: 1280)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3470, file: !2909, line: 299, baseType: !8, size: 64, offset: 1344)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3470, file: !2909, line: 300, baseType: !8, size: 64, offset: 1408)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3470, file: !2909, line: 302, baseType: !9, size: 64, offset: 1472)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3470, file: !2909, line: 303, baseType: !25, size: 32, offset: 1536)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3470, file: !2909, line: 305, baseType: !2957, size: 160, offset: 1568)
!3508 = !{!3509, !3510, !3512, !3513}
!3509 = !DILocalVariable(name: "stream", arg: 1, scope: !3464, file: !3465, line: 56, type: !3468)
!3510 = !DILocalVariable(name: "some_pending", scope: !3464, file: !3465, line: 58, type: !3511)
!3511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!3512 = !DILocalVariable(name: "prev_fail", scope: !3464, file: !3465, line: 59, type: !3511)
!3513 = !DILocalVariable(name: "fclose_fail", scope: !3464, file: !3465, line: 60, type: !3511)
!3514 = !DILocation(line: 56, column: 21, scope: !3464)
!3515 = !DILocation(line: 58, column: 30, scope: !3464)
!3516 = !DILocalVariable(name: "__stream", arg: 1, scope: !3517, file: !702, line: 132, type: !3468)
!3517 = distinct !DISubprogram(name: "ferror_unlocked", scope: !702, file: !702, line: 132, type: !3466, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3518)
!3518 = !{!3516}
!3519 = !DILocation(line: 132, column: 1, scope: !3517, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 59, column: 27, scope: !3464)
!3521 = !DILocation(line: 134, column: 10, scope: !3517, inlinedAt: !3520)
!3522 = !{!710, !679, i64 0}
!3523 = !DILocation(line: 59, column: 43, scope: !3464)
!3524 = !DILocation(line: 60, column: 29, scope: !3464)
!3525 = !DILocation(line: 60, column: 45, scope: !3464)
!3526 = !DILocation(line: 70, column: 17, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3464, file: !3465, line: 70, column: 7)
!3528 = !DILocation(line: 70, column: 33, scope: !3529)
!3529 = !DILexicalBlockFile(scope: !3527, file: !3465, discriminator: 1)
!3530 = !DILocation(line: 70, column: 53, scope: !3531)
!3531 = !DILexicalBlockFile(scope: !3527, file: !3465, discriminator: 3)
!3532 = !DILocation(line: 70, column: 7, scope: !3533)
!3533 = !DILexicalBlockFile(scope: !3464, file: !3465, discriminator: 3)
!3534 = !DILocation(line: 72, column: 11, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3527, file: !3465, line: 71, column: 5)
!3536 = !DILocation(line: 73, column: 9, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3535, file: !3465, line: 72, column: 11)
!3538 = !DILocation(line: 73, column: 15, scope: !3537)
!3539 = !DILocation(line: 78, column: 1, scope: !3464)
!3540 = distinct !DISubprogram(name: "hard_locale", scope: !3541, file: !3541, line: 38, type: !3542, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !3544)
!3541 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!31, !25}
!3544 = !{!3545, !3546, !3547, !3548, !3555, !3556, !3558, !3559, !3561, !3562, !3564}
!3545 = !DILocalVariable(name: "category", arg: 1, scope: !3540, file: !3541, line: 38, type: !25)
!3546 = !DILocalVariable(name: "hard", scope: !3540, file: !3541, line: 40, type: !31)
!3547 = !DILocalVariable(name: "p", scope: !3540, file: !3541, line: 41, type: !17)
!3548 = !DILocalVariable(name: "__s1_len", scope: !3549, file: !3541, line: 47, type: !9)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !3541, line: 47, column: 15)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !3541, line: 47, column: 15)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !3541, line: 46, column: 9)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !3541, line: 45, column: 11)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !3541, line: 44, column: 5)
!3554 = distinct !DILexicalBlock(scope: !3540, file: !3541, line: 43, column: 7)
!3555 = !DILocalVariable(name: "__s2_len", scope: !3549, file: !3541, line: 47, type: !9)
!3556 = !DILocalVariable(name: "__s2", scope: !3557, file: !3541, line: 47, type: !14)
!3557 = distinct !DILexicalBlock(scope: !3549, file: !3541, line: 47, column: 15)
!3558 = !DILocalVariable(name: "__result", scope: !3557, file: !3541, line: 47, type: !25)
!3559 = !DILocalVariable(name: "__s1_len", scope: !3560, file: !3541, line: 47, type: !9)
!3560 = distinct !DILexicalBlock(scope: !3550, file: !3541, line: 47, column: 39)
!3561 = !DILocalVariable(name: "__s2_len", scope: !3560, file: !3541, line: 47, type: !9)
!3562 = !DILocalVariable(name: "__s2", scope: !3563, file: !3541, line: 47, type: !14)
!3563 = distinct !DILexicalBlock(scope: !3560, file: !3541, line: 47, column: 39)
!3564 = !DILocalVariable(name: "__result", scope: !3563, file: !3541, line: 47, type: !25)
!3565 = !DILocation(line: 38, column: 18, scope: !3540)
!3566 = !DILocation(line: 40, column: 8, scope: !3540)
!3567 = !DILocation(line: 41, column: 19, scope: !3540)
!3568 = !DILocation(line: 41, column: 15, scope: !3540)
!3569 = !DILocation(line: 43, column: 7, scope: !3554)
!3570 = !DILocation(line: 43, column: 7, scope: !3540)
!3571 = !DILocation(line: 47, column: 15, scope: !3549)
!3572 = !DILocation(line: 47, column: 15, scope: !3557)
!3573 = !DILocation(line: 47, column: 15, scope: !3574)
!3574 = !DILexicalBlockFile(scope: !3557, file: !3541, discriminator: 2)
!3575 = !DILocation(line: 47, column: 15, scope: !3576)
!3576 = !DILexicalBlockFile(scope: !3577, file: !3541, discriminator: 3)
!3577 = distinct !DILexicalBlock(scope: !3557, file: !3541, line: 47, column: 15)
!3578 = !DILocation(line: 47, column: 15, scope: !3579)
!3579 = !DILexicalBlockFile(scope: !3577, file: !3541, discriminator: 2)
!3580 = !DILocation(line: 47, column: 15, scope: !3581)
!3581 = !DILexicalBlockFile(scope: !3582, file: !3541, discriminator: 4)
!3582 = distinct !DILexicalBlock(scope: !3577, file: !3541, line: 47, column: 15)
!3583 = !DILocation(line: 47, column: 15, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !3549, file: !3541, discriminator: 11)
!3585 = !DILocation(line: 47, column: 36, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3550, file: !3541, discriminator: 13)
!3587 = !DILocation(line: 47, column: 39, scope: !3560)
!3588 = !DILocation(line: 47, column: 39, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !3560, file: !3541, discriminator: 26)
!3590 = !DILocation(line: 47, column: 59, scope: !3591)
!3591 = !DILexicalBlockFile(scope: !3550, file: !3541, discriminator: 27)
!3592 = !DILocation(line: 47, column: 15, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !3551, file: !3541, discriminator: 27)
!3594 = !DILocation(line: 48, column: 13, scope: !3550)
!3595 = !DILocation(line: 71, column: 3, scope: !3540)
!3596 = distinct !DISubprogram(name: "locale_charset", scope: !544, file: !544, line: 393, type: !3597, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!17}
!3599 = !{!3600, !3601, !3602, !3607}
!3600 = !DILocalVariable(name: "codeset", scope: !3596, file: !544, line: 395, type: !17)
!3601 = !DILocalVariable(name: "aliases", scope: !3596, file: !544, line: 396, type: !17)
!3602 = !DILocalVariable(name: "__s1_len", scope: !3603, file: !544, line: 592, type: !9)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !544, line: 592, column: 9)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !544, line: 592, column: 9)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !544, line: 589, column: 3)
!3606 = distinct !DILexicalBlock(scope: !3596, file: !544, line: 589, column: 3)
!3607 = !DILocalVariable(name: "__s2_len", scope: !3603, file: !544, line: 592, type: !9)
!3608 = !DILocalVariable(name: "buf1", scope: !3609, file: !544, line: 196, type: !3676)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !544, line: 194, column: 21)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !544, line: 193, column: 19)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !544, line: 193, column: 19)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !544, line: 188, column: 17)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !544, line: 181, column: 19)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !544, line: 177, column: 13)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !544, line: 173, column: 15)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !544, line: 161, column: 9)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !544, line: 157, column: 11)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !544, line: 130, column: 5)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !544, line: 129, column: 7)
!3620 = distinct !DISubprogram(name: "get_charset_aliases", scope: !544, file: !544, line: 124, type: !3597, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !3621)
!3621 = !{!3622, !3623, !3624, !3625, !3626, !3628, !3629, !3630, !3631, !3672, !3673, !3674, !3608, !3675, !3679, !3680, !3681}
!3622 = !DILocalVariable(name: "cp", scope: !3620, file: !544, line: 126, type: !17)
!3623 = !DILocalVariable(name: "dir", scope: !3618, file: !544, line: 132, type: !17)
!3624 = !DILocalVariable(name: "base", scope: !3618, file: !544, line: 133, type: !17)
!3625 = !DILocalVariable(name: "file_name", scope: !3618, file: !544, line: 134, type: !6)
!3626 = !DILocalVariable(name: "dir_len", scope: !3627, file: !544, line: 144, type: !9)
!3627 = distinct !DILexicalBlock(scope: !3618, file: !544, line: 143, column: 7)
!3628 = !DILocalVariable(name: "base_len", scope: !3627, file: !544, line: 145, type: !9)
!3629 = !DILocalVariable(name: "add_slash", scope: !3627, file: !544, line: 146, type: !25)
!3630 = !DILocalVariable(name: "fd", scope: !3616, file: !544, line: 162, type: !25)
!3631 = !DILocalVariable(name: "fp", scope: !3614, file: !544, line: 178, type: !3632)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2907, line: 49, baseType: !3634)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2909, line: 241, size: 1728, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3634, file: !2909, line: 242, baseType: !25, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3634, file: !2909, line: 247, baseType: !6, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3634, file: !2909, line: 248, baseType: !6, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3634, file: !2909, line: 249, baseType: !6, size: 64, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3634, file: !2909, line: 250, baseType: !6, size: 64, offset: 256)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3634, file: !2909, line: 251, baseType: !6, size: 64, offset: 320)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3634, file: !2909, line: 252, baseType: !6, size: 64, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3634, file: !2909, line: 253, baseType: !6, size: 64, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3634, file: !2909, line: 254, baseType: !6, size: 64, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3634, file: !2909, line: 256, baseType: !6, size: 64, offset: 576)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3634, file: !2909, line: 257, baseType: !6, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3634, file: !2909, line: 258, baseType: !6, size: 64, offset: 704)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3634, file: !2909, line: 260, baseType: !3649, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2909, line: 156, size: 192, elements: !3651)
!3651 = !{!3652, !3653, !3655}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3650, file: !2909, line: 157, baseType: !3649, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3650, file: !2909, line: 158, baseType: !3654, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3650, file: !2909, line: 162, baseType: !25, size: 32, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3634, file: !2909, line: 262, baseType: !3654, size: 64, offset: 832)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3634, file: !2909, line: 264, baseType: !25, size: 32, offset: 896)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3634, file: !2909, line: 268, baseType: !25, size: 32, offset: 928)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3634, file: !2909, line: 270, baseType: !2935, size: 64, offset: 960)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3634, file: !2909, line: 274, baseType: !145, size: 16, offset: 1024)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3634, file: !2909, line: 275, baseType: !2940, size: 8, offset: 1040)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3634, file: !2909, line: 276, baseType: !2942, size: 8, offset: 1048)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3634, file: !2909, line: 280, baseType: !2946, size: 64, offset: 1088)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3634, file: !2909, line: 289, baseType: !2949, size: 64, offset: 1152)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3634, file: !2909, line: 297, baseType: !8, size: 64, offset: 1216)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3634, file: !2909, line: 298, baseType: !8, size: 64, offset: 1280)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3634, file: !2909, line: 299, baseType: !8, size: 64, offset: 1344)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3634, file: !2909, line: 300, baseType: !8, size: 64, offset: 1408)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3634, file: !2909, line: 302, baseType: !9, size: 64, offset: 1472)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3634, file: !2909, line: 303, baseType: !25, size: 32, offset: 1536)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3634, file: !2909, line: 305, baseType: !2957, size: 160, offset: 1568)
!3672 = !DILocalVariable(name: "res_ptr", scope: !3612, file: !544, line: 190, type: !6)
!3673 = !DILocalVariable(name: "res_size", scope: !3612, file: !544, line: 191, type: !9)
!3674 = !DILocalVariable(name: "c", scope: !3609, file: !544, line: 195, type: !25)
!3675 = !DILocalVariable(name: "buf2", scope: !3609, file: !544, line: 197, type: !3676)
!3676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !3677)
!3677 = !{!3678}
!3678 = !DISubrange(count: 51)
!3679 = !DILocalVariable(name: "l1", scope: !3609, file: !544, line: 198, type: !9)
!3680 = !DILocalVariable(name: "l2", scope: !3609, file: !544, line: 198, type: !9)
!3681 = !DILocalVariable(name: "old_res_ptr", scope: !3609, file: !544, line: 199, type: !6)
!3682 = !DILocation(line: 196, column: 28, scope: !3609, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 589, column: 18, scope: !3606)
!3684 = !DILocation(line: 197, column: 28, scope: !3609, inlinedAt: !3683)
!3685 = !DILocation(line: 403, column: 13, scope: !3596)
!3686 = !DILocation(line: 395, column: 15, scope: !3596)
!3687 = !DILocation(line: 584, column: 15, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3596, file: !544, line: 584, column: 7)
!3689 = !DILocation(line: 584, column: 7, scope: !3596)
!3690 = !DILocation(line: 128, column: 8, scope: !3620, inlinedAt: !3683)
!3691 = !DILocation(line: 126, column: 15, scope: !3620, inlinedAt: !3683)
!3692 = !DILocation(line: 129, column: 10, scope: !3619, inlinedAt: !3683)
!3693 = !DILocation(line: 129, column: 7, scope: !3620, inlinedAt: !3683)
!3694 = !DILocation(line: 138, column: 13, scope: !3618, inlinedAt: !3683)
!3695 = !DILocation(line: 132, column: 19, scope: !3618, inlinedAt: !3683)
!3696 = !DILocation(line: 139, column: 15, scope: !3697, inlinedAt: !3683)
!3697 = distinct !DILexicalBlock(scope: !3618, file: !544, line: 139, column: 11)
!3698 = !DILocation(line: 139, column: 23, scope: !3697, inlinedAt: !3683)
!3699 = !DILocation(line: 139, column: 26, scope: !3700, inlinedAt: !3683)
!3700 = !DILexicalBlockFile(scope: !3697, file: !544, discriminator: 1)
!3701 = !DILocation(line: 139, column: 33, scope: !3700, inlinedAt: !3683)
!3702 = !DILocation(line: 139, column: 11, scope: !3703, inlinedAt: !3683)
!3703 = !DILexicalBlockFile(scope: !3618, file: !544, discriminator: 1)
!3704 = !DILocation(line: 140, column: 9, scope: !3697, inlinedAt: !3683)
!3705 = !DILocation(line: 144, column: 26, scope: !3627, inlinedAt: !3683)
!3706 = !DILocation(line: 144, column: 16, scope: !3627, inlinedAt: !3683)
!3707 = !DILocation(line: 145, column: 16, scope: !3627, inlinedAt: !3683)
!3708 = !DILocation(line: 146, column: 34, scope: !3627, inlinedAt: !3683)
!3709 = !DILocation(line: 146, column: 38, scope: !3627, inlinedAt: !3683)
!3710 = !DILocation(line: 146, column: 42, scope: !3711, inlinedAt: !3683)
!3711 = !DILexicalBlockFile(scope: !3627, file: !544, discriminator: 1)
!3712 = !DILocation(line: 146, column: 41, scope: !3711, inlinedAt: !3683)
!3713 = !DILocation(line: 147, column: 48, scope: !3627, inlinedAt: !3683)
!3714 = !DILocation(line: 147, column: 46, scope: !3627, inlinedAt: !3683)
!3715 = !DILocation(line: 147, column: 69, scope: !3627, inlinedAt: !3683)
!3716 = !DILocation(line: 147, column: 30, scope: !3627, inlinedAt: !3683)
!3717 = !DILocation(line: 134, column: 13, scope: !3618, inlinedAt: !3683)
!3718 = !DILocation(line: 148, column: 13, scope: !3627, inlinedAt: !3683)
!3719 = !DILocation(line: 150, column: 13, scope: !3720, inlinedAt: !3683)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !544, line: 149, column: 11)
!3721 = distinct !DILexicalBlock(scope: !3627, file: !544, line: 148, column: 13)
!3722 = !DILocation(line: 151, column: 17, scope: !3720, inlinedAt: !3683)
!3723 = !DILocation(line: 152, column: 34, scope: !3724, inlinedAt: !3683)
!3724 = distinct !DILexicalBlock(scope: !3720, file: !544, line: 151, column: 17)
!3725 = !DILocation(line: 153, column: 41, scope: !3720, inlinedAt: !3683)
!3726 = !DILocation(line: 153, column: 13, scope: !3720, inlinedAt: !3683)
!3727 = !DILocation(line: 157, column: 11, scope: !3618, inlinedAt: !3683)
!3728 = !DILocation(line: 171, column: 16, scope: !3616, inlinedAt: !3683)
!3729 = !DILocation(line: 162, column: 15, scope: !3616, inlinedAt: !3683)
!3730 = !DILocation(line: 173, column: 18, scope: !3615, inlinedAt: !3683)
!3731 = !DILocation(line: 173, column: 15, scope: !3616, inlinedAt: !3683)
!3732 = !DILocation(line: 180, column: 20, scope: !3614, inlinedAt: !3683)
!3733 = !DILocation(line: 178, column: 21, scope: !3614, inlinedAt: !3683)
!3734 = !DILocation(line: 181, column: 22, scope: !3613, inlinedAt: !3683)
!3735 = !DILocation(line: 181, column: 19, scope: !3614, inlinedAt: !3683)
!3736 = !DILocation(line: 190, column: 25, scope: !3612, inlinedAt: !3683)
!3737 = !DILocation(line: 184, column: 19, scope: !3738, inlinedAt: !3683)
!3738 = distinct !DILexicalBlock(scope: !3613, file: !544, line: 182, column: 17)
!3739 = !DILocation(line: 186, column: 17, scope: !3738, inlinedAt: !3683)
!3740 = !DILocation(line: 191, column: 26, scope: !3612, inlinedAt: !3683)
!3741 = !DILocation(line: 196, column: 23, scope: !3609, inlinedAt: !3683)
!3742 = !DILocation(line: 197, column: 23, scope: !3609, inlinedAt: !3683)
!3743 = !DILocalVariable(name: "__fp", arg: 1, scope: !3744, file: !702, line: 63, type: !3632)
!3744 = distinct !DISubprogram(name: "getc_unlocked", scope: !702, file: !702, line: 63, type: !3745, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!25, !3632}
!3747 = !{!3743}
!3748 = !DILocation(line: 63, column: 22, scope: !3744, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 201, column: 27, scope: !3609, inlinedAt: !3683)
!3750 = !DILocation(line: 65, column: 10, scope: !3744, inlinedAt: !3749)
!3751 = !{!710, !613, i64 8}
!3752 = !{!710, !613, i64 16}
!3753 = !DILocation(line: 65, column: 10, scope: !3754, inlinedAt: !3749)
!3754 = !DILexicalBlockFile(scope: !3744, file: !702, discriminator: 1)
!3755 = !DILocation(line: 65, column: 10, scope: !3756, inlinedAt: !3749)
!3756 = !DILexicalBlockFile(scope: !3744, file: !702, discriminator: 2)
!3757 = !DILocation(line: 65, column: 10, scope: !3758, inlinedAt: !3749)
!3758 = !DILexicalBlockFile(scope: !3744, file: !702, discriminator: 3)
!3759 = !DILocation(line: 195, column: 27, scope: !3609, inlinedAt: !3683)
!3760 = !DILocation(line: 202, column: 27, scope: !3609, inlinedAt: !3683)
!3761 = !DILocation(line: 63, column: 22, scope: !3744, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 210, column: 33, scope: !3763, inlinedAt: !3683)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !544, line: 207, column: 25)
!3764 = distinct !DILexicalBlock(scope: !3609, file: !544, line: 206, column: 27)
!3765 = !DILocation(line: 65, column: 10, scope: !3744, inlinedAt: !3762)
!3766 = !DILocation(line: 65, column: 10, scope: !3754, inlinedAt: !3762)
!3767 = !DILocation(line: 65, column: 10, scope: !3756, inlinedAt: !3762)
!3768 = !DILocation(line: 65, column: 10, scope: !3758, inlinedAt: !3762)
!3769 = !DILocation(line: 210, column: 29, scope: !3770, inlinedAt: !3683)
!3770 = !DILexicalBlockFile(scope: !3763, file: !544, discriminator: 1)
!3771 = distinct !{!3771, !3772, !3773}
!3772 = !DILocation(line: 193, column: 19, scope: !3611)
!3773 = !DILocation(line: 241, column: 21, scope: !3611)
!3774 = !DILocation(line: 216, column: 23, scope: !3609, inlinedAt: !3683)
!3775 = !DILocation(line: 217, column: 27, scope: !3776, inlinedAt: !3683)
!3776 = distinct !DILexicalBlock(scope: !3609, file: !544, line: 217, column: 27)
!3777 = !DILocation(line: 217, column: 64, scope: !3776, inlinedAt: !3683)
!3778 = !DILocation(line: 217, column: 27, scope: !3609, inlinedAt: !3683)
!3779 = !DILocation(line: 219, column: 28, scope: !3609, inlinedAt: !3683)
!3780 = !DILocation(line: 198, column: 30, scope: !3609, inlinedAt: !3683)
!3781 = !DILocation(line: 220, column: 28, scope: !3609, inlinedAt: !3683)
!3782 = !DILocation(line: 198, column: 34, scope: !3609, inlinedAt: !3683)
!3783 = !DILocation(line: 199, column: 29, scope: !3609, inlinedAt: !3683)
!3784 = !DILocation(line: 222, column: 36, scope: !3785, inlinedAt: !3683)
!3785 = distinct !DILexicalBlock(scope: !3609, file: !544, line: 222, column: 27)
!3786 = !DILocation(line: 222, column: 27, scope: !3609, inlinedAt: !3683)
!3787 = !DILocation(line: 225, column: 63, scope: !3788, inlinedAt: !3683)
!3788 = distinct !DILexicalBlock(scope: !3785, file: !544, line: 223, column: 25)
!3789 = !DILocation(line: 225, column: 46, scope: !3788, inlinedAt: !3683)
!3790 = !DILocation(line: 226, column: 25, scope: !3788, inlinedAt: !3683)
!3791 = !DILocation(line: 229, column: 36, scope: !3792, inlinedAt: !3683)
!3792 = distinct !DILexicalBlock(scope: !3785, file: !544, line: 228, column: 25)
!3793 = !DILocation(line: 230, column: 73, scope: !3792, inlinedAt: !3683)
!3794 = !DILocation(line: 230, column: 46, scope: !3792, inlinedAt: !3683)
!3795 = !DILocation(line: 232, column: 35, scope: !3796, inlinedAt: !3683)
!3796 = distinct !DILexicalBlock(scope: !3609, file: !544, line: 232, column: 27)
!3797 = !DILocation(line: 232, column: 27, scope: !3609, inlinedAt: !3683)
!3798 = !DILocation(line: 236, column: 27, scope: !3799, inlinedAt: !3683)
!3799 = distinct !DILexicalBlock(scope: !3796, file: !544, line: 233, column: 25)
!3800 = !DILocation(line: 237, column: 27, scope: !3799, inlinedAt: !3683)
!3801 = !DILocation(line: 239, column: 39, scope: !3609, inlinedAt: !3683)
!3802 = !DILocation(line: 239, column: 50, scope: !3609, inlinedAt: !3683)
!3803 = !DILocation(line: 239, column: 61, scope: !3609, inlinedAt: !3683)
!3804 = !DILocalVariable(name: "__dest", arg: 1, scope: !3805, file: !3806, line: 107, type: !3809)
!3805 = distinct !DISubprogram(name: "strcpy", scope: !3806, file: !3806, line: 107, type: !3807, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !3811)
!3806 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!6, !3809, !3810}
!3809 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!3811 = !{!3804, !3812}
!3812 = !DILocalVariable(name: "__src", arg: 2, scope: !3805, file: !3806, line: 107, type: !3810)
!3813 = !DILocation(line: 107, column: 1, scope: !3805, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 239, column: 23, scope: !3609, inlinedAt: !3683)
!3815 = !DILocation(line: 109, column: 49, scope: !3805, inlinedAt: !3814)
!3816 = !DILocation(line: 109, column: 10, scope: !3805, inlinedAt: !3814)
!3817 = !DILocation(line: 107, column: 1, scope: !3805, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 240, column: 23, scope: !3609, inlinedAt: !3683)
!3819 = !DILocation(line: 109, column: 49, scope: !3805, inlinedAt: !3818)
!3820 = !DILocation(line: 109, column: 10, scope: !3805, inlinedAt: !3818)
!3821 = !DILocation(line: 241, column: 21, scope: !3610, inlinedAt: !3683)
!3822 = !DILocation(line: 242, column: 19, scope: !3612, inlinedAt: !3683)
!3823 = !DILocation(line: 243, column: 32, scope: !3824, inlinedAt: !3683)
!3824 = distinct !DILexicalBlock(scope: !3612, file: !544, line: 243, column: 23)
!3825 = !DILocation(line: 243, column: 23, scope: !3612, inlinedAt: !3683)
!3826 = !DILocation(line: 247, column: 33, scope: !3827, inlinedAt: !3683)
!3827 = distinct !DILexicalBlock(scope: !3824, file: !544, line: 246, column: 21)
!3828 = !DILocation(line: 247, column: 45, scope: !3827, inlinedAt: !3683)
!3829 = !DILocation(line: 253, column: 11, scope: !3616, inlinedAt: !3683)
!3830 = !DILocation(line: 377, column: 23, scope: !3618, inlinedAt: !3683)
!3831 = !DILocation(line: 378, column: 5, scope: !3618, inlinedAt: !3683)
!3832 = !DILocation(line: 396, column: 15, scope: !3596)
!3833 = !DILocation(line: 590, column: 8, scope: !3605)
!3834 = !DILocation(line: 590, column: 17, scope: !3605)
!3835 = !DILocation(line: 589, column: 3, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3606, file: !544, discriminator: 1)
!3837 = !DILocation(line: 592, column: 9, scope: !3603)
!3838 = !DILocation(line: 592, column: 35, scope: !3604)
!3839 = !DILocation(line: 593, column: 9, scope: !3604)
!3840 = !DILocation(line: 593, column: 24, scope: !3841)
!3841 = !DILexicalBlockFile(scope: !3604, file: !544, discriminator: 1)
!3842 = !DILocation(line: 593, column: 31, scope: !3841)
!3843 = !DILocation(line: 593, column: 34, scope: !3844)
!3844 = !DILexicalBlockFile(scope: !3604, file: !544, discriminator: 2)
!3845 = !DILocation(line: 593, column: 45, scope: !3844)
!3846 = !DILocation(line: 592, column: 9, scope: !3847)
!3847 = !DILexicalBlockFile(scope: !3605, file: !544, discriminator: 1)
!3848 = !DILocation(line: 595, column: 29, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3604, file: !544, line: 594, column: 7)
!3850 = !DILocation(line: 595, column: 27, scope: !3849)
!3851 = !DILocation(line: 595, column: 46, scope: !3849)
!3852 = !DILocation(line: 596, column: 9, scope: !3849)
!3853 = !DILocation(line: 591, column: 19, scope: !3605)
!3854 = !DILocation(line: 591, column: 36, scope: !3605)
!3855 = !DILocation(line: 591, column: 16, scope: !3605)
!3856 = !DILocation(line: 591, column: 52, scope: !3847)
!3857 = !DILocation(line: 591, column: 69, scope: !3605)
!3858 = !DILocation(line: 591, column: 49, scope: !3605)
!3859 = distinct !{!3859, !3860, !3861}
!3860 = !DILocation(line: 589, column: 3, scope: !3606)
!3861 = !DILocation(line: 597, column: 7, scope: !3606)
!3862 = !DILocation(line: 602, column: 7, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3596, file: !544, line: 602, column: 7)
!3864 = !DILocation(line: 602, column: 18, scope: !3863)
!3865 = !DILocation(line: 602, column: 7, scope: !3596)
!3866 = !DILocation(line: 612, column: 3, scope: !3596)
!3867 = distinct !DISubprogram(name: "rpl_fclose", scope: !3868, file: !3868, line: 56, type: !3869, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3911)
!3868 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!25, !3871}
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2907, line: 49, baseType: !3873)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2909, line: 241, size: 1728, elements: !3874)
!3874 = !{!3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3873, file: !2909, line: 242, baseType: !25, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3873, file: !2909, line: 247, baseType: !6, size: 64, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3873, file: !2909, line: 248, baseType: !6, size: 64, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3873, file: !2909, line: 249, baseType: !6, size: 64, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3873, file: !2909, line: 250, baseType: !6, size: 64, offset: 256)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3873, file: !2909, line: 251, baseType: !6, size: 64, offset: 320)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3873, file: !2909, line: 252, baseType: !6, size: 64, offset: 384)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3873, file: !2909, line: 253, baseType: !6, size: 64, offset: 448)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3873, file: !2909, line: 254, baseType: !6, size: 64, offset: 512)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3873, file: !2909, line: 256, baseType: !6, size: 64, offset: 576)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3873, file: !2909, line: 257, baseType: !6, size: 64, offset: 640)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3873, file: !2909, line: 258, baseType: !6, size: 64, offset: 704)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3873, file: !2909, line: 260, baseType: !3888, size: 64, offset: 768)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2909, line: 156, size: 192, elements: !3890)
!3890 = !{!3891, !3892, !3894}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3889, file: !2909, line: 157, baseType: !3888, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3889, file: !2909, line: 158, baseType: !3893, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3889, file: !2909, line: 162, baseType: !25, size: 32, offset: 128)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3873, file: !2909, line: 262, baseType: !3893, size: 64, offset: 832)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3873, file: !2909, line: 264, baseType: !25, size: 32, offset: 896)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3873, file: !2909, line: 268, baseType: !25, size: 32, offset: 928)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3873, file: !2909, line: 270, baseType: !2935, size: 64, offset: 960)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3873, file: !2909, line: 274, baseType: !145, size: 16, offset: 1024)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3873, file: !2909, line: 275, baseType: !2940, size: 8, offset: 1040)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3873, file: !2909, line: 276, baseType: !2942, size: 8, offset: 1048)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3873, file: !2909, line: 280, baseType: !2946, size: 64, offset: 1088)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3873, file: !2909, line: 289, baseType: !2949, size: 64, offset: 1152)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3873, file: !2909, line: 297, baseType: !8, size: 64, offset: 1216)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3873, file: !2909, line: 298, baseType: !8, size: 64, offset: 1280)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3873, file: !2909, line: 299, baseType: !8, size: 64, offset: 1344)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3873, file: !2909, line: 300, baseType: !8, size: 64, offset: 1408)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3873, file: !2909, line: 302, baseType: !9, size: 64, offset: 1472)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3873, file: !2909, line: 303, baseType: !25, size: 32, offset: 1536)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3873, file: !2909, line: 305, baseType: !2957, size: 160, offset: 1568)
!3911 = !{!3912, !3913, !3914, !3915}
!3912 = !DILocalVariable(name: "fp", arg: 1, scope: !3867, file: !3868, line: 56, type: !3871)
!3913 = !DILocalVariable(name: "saved_errno", scope: !3867, file: !3868, line: 58, type: !25)
!3914 = !DILocalVariable(name: "fd", scope: !3867, file: !3868, line: 59, type: !25)
!3915 = !DILocalVariable(name: "result", scope: !3867, file: !3868, line: 60, type: !25)
!3916 = !DILocation(line: 56, column: 19, scope: !3867)
!3917 = !DILocation(line: 58, column: 7, scope: !3867)
!3918 = !DILocation(line: 60, column: 7, scope: !3867)
!3919 = !DILocation(line: 63, column: 8, scope: !3867)
!3920 = !DILocation(line: 59, column: 7, scope: !3867)
!3921 = !DILocation(line: 64, column: 10, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3867, file: !3868, line: 64, column: 7)
!3923 = !DILocation(line: 64, column: 7, scope: !3867)
!3924 = !DILocation(line: 65, column: 12, scope: !3922)
!3925 = !DILocation(line: 65, column: 5, scope: !3922)
!3926 = !DILocation(line: 70, column: 9, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3867, file: !3868, line: 70, column: 7)
!3928 = !DILocation(line: 70, column: 23, scope: !3927)
!3929 = !DILocation(line: 70, column: 33, scope: !3930)
!3930 = !DILexicalBlockFile(scope: !3927, file: !3868, discriminator: 1)
!3931 = !DILocation(line: 70, column: 26, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !3927, file: !3868, discriminator: 3)
!3933 = !DILocation(line: 70, column: 59, scope: !3930)
!3934 = !DILocation(line: 71, column: 7, scope: !3927)
!3935 = !DILocation(line: 71, column: 10, scope: !3930)
!3936 = !DILocation(line: 70, column: 7, scope: !3937)
!3937 = !DILexicalBlockFile(scope: !3867, file: !3868, discriminator: 2)
!3938 = !DILocation(line: 98, column: 12, scope: !3867)
!3939 = !DILocation(line: 103, column: 7, scope: !3867)
!3940 = !DILocation(line: 72, column: 19, scope: !3927)
!3941 = !DILocation(line: 103, column: 19, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3867, file: !3868, line: 103, column: 7)
!3943 = !DILocation(line: 105, column: 13, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3942, file: !3868, line: 104, column: 5)
!3945 = !DILocation(line: 107, column: 5, scope: !3944)
!3946 = !DILocation(line: 110, column: 1, scope: !3867)
!3947 = distinct !DISubprogram(name: "rpl_fflush", scope: !3948, file: !3948, line: 127, type: !3949, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !3991)
!3948 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!25, !3951}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2907, line: 49, baseType: !3953)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2909, line: 241, size: 1728, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3953, file: !2909, line: 242, baseType: !25, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3953, file: !2909, line: 247, baseType: !6, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3953, file: !2909, line: 248, baseType: !6, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3953, file: !2909, line: 249, baseType: !6, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3953, file: !2909, line: 250, baseType: !6, size: 64, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3953, file: !2909, line: 251, baseType: !6, size: 64, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3953, file: !2909, line: 252, baseType: !6, size: 64, offset: 384)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3953, file: !2909, line: 253, baseType: !6, size: 64, offset: 448)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3953, file: !2909, line: 254, baseType: !6, size: 64, offset: 512)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3953, file: !2909, line: 256, baseType: !6, size: 64, offset: 576)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3953, file: !2909, line: 257, baseType: !6, size: 64, offset: 640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3953, file: !2909, line: 258, baseType: !6, size: 64, offset: 704)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3953, file: !2909, line: 260, baseType: !3968, size: 64, offset: 768)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2909, line: 156, size: 192, elements: !3970)
!3970 = !{!3971, !3972, !3974}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3969, file: !2909, line: 157, baseType: !3968, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3969, file: !2909, line: 158, baseType: !3973, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3969, file: !2909, line: 162, baseType: !25, size: 32, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3953, file: !2909, line: 262, baseType: !3973, size: 64, offset: 832)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3953, file: !2909, line: 264, baseType: !25, size: 32, offset: 896)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3953, file: !2909, line: 268, baseType: !25, size: 32, offset: 928)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3953, file: !2909, line: 270, baseType: !2935, size: 64, offset: 960)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3953, file: !2909, line: 274, baseType: !145, size: 16, offset: 1024)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3953, file: !2909, line: 275, baseType: !2940, size: 8, offset: 1040)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3953, file: !2909, line: 276, baseType: !2942, size: 8, offset: 1048)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3953, file: !2909, line: 280, baseType: !2946, size: 64, offset: 1088)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3953, file: !2909, line: 289, baseType: !2949, size: 64, offset: 1152)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3953, file: !2909, line: 297, baseType: !8, size: 64, offset: 1216)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3953, file: !2909, line: 298, baseType: !8, size: 64, offset: 1280)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3953, file: !2909, line: 299, baseType: !8, size: 64, offset: 1344)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3953, file: !2909, line: 300, baseType: !8, size: 64, offset: 1408)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3953, file: !2909, line: 302, baseType: !9, size: 64, offset: 1472)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3953, file: !2909, line: 303, baseType: !25, size: 32, offset: 1536)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3953, file: !2909, line: 305, baseType: !2957, size: 160, offset: 1568)
!3991 = !{!3992}
!3992 = !DILocalVariable(name: "stream", arg: 1, scope: !3947, file: !3948, line: 127, type: !3951)
!3993 = !DILocation(line: 127, column: 19, scope: !3947)
!3994 = !DILocation(line: 148, column: 14, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3947, file: !3948, line: 148, column: 7)
!3996 = !DILocation(line: 148, column: 22, scope: !3995)
!3997 = !DILocation(line: 148, column: 27, scope: !3998)
!3998 = !DILexicalBlockFile(scope: !3995, file: !3948, discriminator: 1)
!3999 = !DILocation(line: 148, column: 7, scope: !4000)
!4000 = !DILexicalBlockFile(scope: !3947, file: !3948, discriminator: 1)
!4001 = !DILocation(line: 149, column: 12, scope: !3995)
!4002 = !DILocation(line: 149, column: 5, scope: !3995)
!4003 = !DILocalVariable(name: "fp", arg: 1, scope: !4004, file: !3948, line: 40, type: !3951)
!4004 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3948, file: !3948, line: 40, type: !4005, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{null, !3951}
!4007 = !{!4003}
!4008 = !DILocation(line: 40, column: 48, scope: !4004, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 153, column: 3, scope: !3947)
!4010 = !DILocation(line: 42, column: 11, scope: !4011, inlinedAt: !4009)
!4011 = distinct !DILexicalBlock(scope: !4004, file: !3948, line: 42, column: 7)
!4012 = !DILocation(line: 42, column: 18, scope: !4011, inlinedAt: !4009)
!4013 = !DILocation(line: 42, column: 7, scope: !4004, inlinedAt: !4009)
!4014 = !DILocation(line: 44, column: 5, scope: !4011, inlinedAt: !4009)
!4015 = !DILocation(line: 155, column: 10, scope: !3947)
!4016 = !DILocation(line: 155, column: 3, scope: !3947)
!4017 = !DILocation(line: 229, column: 1, scope: !3947)
!4018 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4019, file: !4019, line: 28, type: !4020, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !4063)
!4019 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!25, !4022, !4062, !25}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2907, line: 49, baseType: !4024)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2909, line: 241, size: 1728, elements: !4025)
!4025 = !{!4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4024, file: !2909, line: 242, baseType: !25, size: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4024, file: !2909, line: 247, baseType: !6, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4024, file: !2909, line: 248, baseType: !6, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4024, file: !2909, line: 249, baseType: !6, size: 64, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4024, file: !2909, line: 250, baseType: !6, size: 64, offset: 256)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4024, file: !2909, line: 251, baseType: !6, size: 64, offset: 320)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4024, file: !2909, line: 252, baseType: !6, size: 64, offset: 384)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4024, file: !2909, line: 253, baseType: !6, size: 64, offset: 448)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4024, file: !2909, line: 254, baseType: !6, size: 64, offset: 512)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4024, file: !2909, line: 256, baseType: !6, size: 64, offset: 576)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4024, file: !2909, line: 257, baseType: !6, size: 64, offset: 640)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4024, file: !2909, line: 258, baseType: !6, size: 64, offset: 704)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4024, file: !2909, line: 260, baseType: !4039, size: 64, offset: 768)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2909, line: 156, size: 192, elements: !4041)
!4041 = !{!4042, !4043, !4045}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4040, file: !2909, line: 157, baseType: !4039, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4040, file: !2909, line: 158, baseType: !4044, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4040, file: !2909, line: 162, baseType: !25, size: 32, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4024, file: !2909, line: 262, baseType: !4044, size: 64, offset: 832)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4024, file: !2909, line: 264, baseType: !25, size: 32, offset: 896)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4024, file: !2909, line: 268, baseType: !25, size: 32, offset: 928)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4024, file: !2909, line: 270, baseType: !2935, size: 64, offset: 960)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4024, file: !2909, line: 274, baseType: !145, size: 16, offset: 1024)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4024, file: !2909, line: 275, baseType: !2940, size: 8, offset: 1040)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4024, file: !2909, line: 276, baseType: !2942, size: 8, offset: 1048)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4024, file: !2909, line: 280, baseType: !2946, size: 64, offset: 1088)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4024, file: !2909, line: 289, baseType: !2949, size: 64, offset: 1152)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4024, file: !2909, line: 297, baseType: !8, size: 64, offset: 1216)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4024, file: !2909, line: 298, baseType: !8, size: 64, offset: 1280)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4024, file: !2909, line: 299, baseType: !8, size: 64, offset: 1344)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4024, file: !2909, line: 300, baseType: !8, size: 64, offset: 1408)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4024, file: !2909, line: 302, baseType: !9, size: 64, offset: 1472)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4024, file: !2909, line: 303, baseType: !25, size: 32, offset: 1536)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4024, file: !2909, line: 305, baseType: !2957, size: 160, offset: 1568)
!4062 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2907, line: 91, baseType: !2935)
!4063 = !{!4064, !4065, !4066, !4067}
!4064 = !DILocalVariable(name: "fp", arg: 1, scope: !4018, file: !4019, line: 28, type: !4022)
!4065 = !DILocalVariable(name: "offset", arg: 2, scope: !4018, file: !4019, line: 28, type: !4062)
!4066 = !DILocalVariable(name: "whence", arg: 3, scope: !4018, file: !4019, line: 28, type: !25)
!4067 = !DILocalVariable(name: "pos", scope: !4068, file: !4019, line: 116, type: !4062)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !4019, line: 112, column: 5)
!4069 = distinct !DILexicalBlock(scope: !4018, file: !4019, line: 51, column: 7)
!4070 = !DILocation(line: 28, column: 15, scope: !4018)
!4071 = !DILocation(line: 28, column: 25, scope: !4018)
!4072 = !DILocation(line: 28, column: 37, scope: !4018)
!4073 = !DILocation(line: 51, column: 11, scope: !4069)
!4074 = !DILocation(line: 51, column: 31, scope: !4069)
!4075 = !DILocation(line: 51, column: 24, scope: !4069)
!4076 = !DILocation(line: 52, column: 7, scope: !4069)
!4077 = !DILocation(line: 52, column: 14, scope: !4078)
!4078 = !DILexicalBlockFile(scope: !4069, file: !4019, discriminator: 1)
!4079 = !DILocation(line: 52, column: 35, scope: !4078)
!4080 = !{!710, !613, i64 32}
!4081 = !DILocation(line: 52, column: 28, scope: !4078)
!4082 = !DILocation(line: 53, column: 7, scope: !4069)
!4083 = !DILocation(line: 53, column: 14, scope: !4078)
!4084 = !{!710, !613, i64 72}
!4085 = !DILocation(line: 53, column: 28, scope: !4078)
!4086 = !DILocation(line: 51, column: 7, scope: !4087)
!4087 = !DILexicalBlockFile(scope: !4018, file: !4019, discriminator: 1)
!4088 = !DILocation(line: 116, column: 26, scope: !4068)
!4089 = !DILocation(line: 116, column: 19, scope: !4090)
!4090 = !DILexicalBlockFile(scope: !4068, file: !4019, discriminator: 1)
!4091 = !DILocation(line: 116, column: 13, scope: !4068)
!4092 = !DILocation(line: 117, column: 15, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4068, file: !4019, line: 117, column: 11)
!4094 = !DILocation(line: 117, column: 11, scope: !4068)
!4095 = !DILocation(line: 127, column: 11, scope: !4068)
!4096 = !DILocation(line: 127, column: 18, scope: !4068)
!4097 = !DILocation(line: 128, column: 11, scope: !4068)
!4098 = !DILocation(line: 128, column: 19, scope: !4068)
!4099 = !{!710, !711, i64 144}
!4100 = !DILocation(line: 159, column: 7, scope: !4068)
!4101 = !DILocation(line: 161, column: 10, scope: !4018)
!4102 = !DILocation(line: 161, column: 3, scope: !4018)
!4103 = !DILocation(line: 162, column: 1, scope: !4018)
