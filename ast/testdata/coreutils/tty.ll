; ModuleID = 'coreutils-8.27/src/tty.bc'
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
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [135 x i8] c"Print the file name of the terminal connected to standard input.\0A\0A  -s, --silent, --quiet   print nothing, only return an exit status\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@silent = internal unnamed_addr global i8 0, align 1, !dbg !0
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !55
@.str.11 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"not a tty\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), align 8, !dbg !70
@.str.14 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !76
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !81
@.str.17 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !84
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !91
@.str.33 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.34 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.35 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.39, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.41, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.45, i32 0, i32 0), i8* null], align 16, !dbg !98
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !140
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !147
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !160
@.str.11.46 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.47 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.48 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.49 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.50 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !167
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !174
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !162
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !176
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
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.73 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.74 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !182
@.str.1.85 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.95 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.98 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !191
@.str.3.99 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.100 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.101 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.102 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.103 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.104 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !587 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !591, metadata !592), !dbg !593
  %2 = icmp eq i32 %0, 0, !dbg !594
  br i1 %2, label %8, label %3, !dbg !596

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !597, !tbaa !600
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !597
  %6 = load i8*, i8** @program_name, align 8, !dbg !597, !tbaa !600
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !604
  br label %36, !dbg !606

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !608
  %10 = load i8*, i8** @program_name, align 8, !dbg !608, !tbaa !600
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !610
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !612
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !612, !tbaa !600
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !613
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !614
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !600
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !615
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !616
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !600
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !617
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !32, metadata !592) #9, !dbg !618
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !32, metadata !592) #9, !dbg !618
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #9, !dbg !620
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !621
  %23 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !623
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !43, metadata !592) #9, !dbg !624
  %24 = icmp eq i8* %23, null, !dbg !625
  br i1 %24, label %31, label %25, !dbg !626

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #13, !dbg !627
  %27 = icmp eq i32 %26, 0, !dbg !627
  br i1 %27, label %31, label %28, !dbg !629

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #9, !dbg !631
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !633
  br label %31, !dbg !635

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #9, !dbg !636
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !637
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #9, !dbg !638
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !639
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #14, !dbg !640
  unreachable, !dbg !640
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !641 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !646, metadata !592), !dbg !650
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !647, metadata !592), !dbg !651
  %3 = load i8*, i8** %1, align 8, !dbg !652, !tbaa !600
  tail call void @set_program_name(i8* %3) #9, !dbg !653
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !654
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !655
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !656
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !657, metadata !592), !dbg !660
  store volatile i32 3, i32* @exit_failure, align 4, !dbg !662, !tbaa !664
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !666
  br label %8, !dbg !667

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %8 ]
  store i8 %9, i8* @silent, align 1, !tbaa !668
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !670
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !649, metadata !592), !dbg !672
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 115, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !673

; <label>:11:                                     ; preds = %8
  tail call void @usage(i32 0) #15, !dbg !674
  unreachable, !dbg !674

; <label>:12:                                     ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !677, !tbaa !600
  %14 = load i8*, i8** @Version, align 8, !dbg !677, !tbaa !600
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* null) #9, !dbg !677
  tail call void @exit(i32 0) #14, !dbg !678
  unreachable, !dbg !677

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 2) #15, !dbg !680
  unreachable, !dbg !680

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* @optind, align 4, !dbg !681, !tbaa !664
  %18 = icmp slt i32 %17, %0, !dbg !683
  br i1 %18, label %19, label %26, !dbg !684

; <label>:19:                                     ; preds = %16
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 5) #9, !dbg !685
  %21 = load i32, i32* @optind, align 4, !dbg !686, !tbaa !664
  %22 = sext i32 %21 to i64, !dbg !687
  %23 = getelementptr inbounds i8*, i8** %1, i64 %22, !dbg !687
  %24 = load i8*, i8** %23, align 8, !dbg !687, !tbaa !600
  %25 = tail call i8* @quote(i8* %24) #9, !dbg !688
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %20, i8* %25) #9, !dbg !690
  br label %26, !dbg !692

; <label>:26:                                     ; preds = %19, %16
  %27 = tail call i8* @ttyname(i32 0) #9, !dbg !693
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !648, metadata !592), !dbg !694
  %28 = load i8, i8* @silent, align 1, !dbg !695, !tbaa !668, !range !697
  %29 = icmp eq i8 %28, 0, !dbg !695
  br i1 %29, label %30, label %37, !dbg !698

; <label>:30:                                     ; preds = %26
  %31 = icmp eq i8* %27, null, !dbg !699
  br i1 %31, label %34, label %32, !dbg !702

; <label>:32:                                     ; preds = %30
  %33 = tail call i32 @puts(i8* nonnull %27), !dbg !703
  br label %37, !dbg !703

; <label>:34:                                     ; preds = %30
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 5) #9, !dbg !704
  %36 = tail call i32 @puts(i8* %35), !dbg !705
  br label %37

; <label>:37:                                     ; preds = %26, %32, %34
  %38 = tail call i32 @isatty(i32 0) #9, !dbg !707
  %39 = icmp eq i32 %38, 0, !dbg !707
  %40 = zext i1 %39 to i32, !dbg !707
  ret i32 %40, !dbg !708
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

; Function Attrs: nounwind
declare i8* @ttyname(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !709 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !711, metadata !592), !dbg !712
  store i8* %0, i8** @file_name, align 8, !dbg !713, !tbaa !600
  ret void, !dbg !714
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !715 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !719, metadata !720), !dbg !721
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !722, !tbaa !668
  ret void, !dbg !723
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !724 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !731, !tbaa !600
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !732
  %3 = icmp eq i32 %2, 0, !dbg !733
  br i1 %3, label %21, label %4, !dbg !734

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !735, !tbaa !668, !range !697
  %6 = icmp eq i8 %5, 0, !dbg !735
  %7 = tail call i32* @__errno_location() #1, !dbg !737
  br i1 %6, label %11, label %8, !dbg !739

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !740, !tbaa !664
  %10 = icmp eq i32 %9, 32, !dbg !742
  br i1 %10, label %21, label %11, !dbg !743

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 5) #9, !dbg !745
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !728, metadata !592), !dbg !746
  %13 = load i8*, i8** @file_name, align 8, !dbg !747, !tbaa !600
  %14 = icmp eq i8* %13, null, !dbg !747
  %15 = load i32, i32* %7, align 4, !tbaa !664
  br i1 %14, label %18, label %16, !dbg !748

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !749
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.18, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !751
  br label %19, !dbg !753

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.19, i64 0, i64 0), i8* %12) #9, !dbg !754
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !755, !tbaa !664
  tail call void @_exit(i32 %20) #14, !dbg !756
  unreachable, !dbg !756

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !757, !tbaa !600
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !759
  %24 = icmp eq i32 %23, 0, !dbg !760
  br i1 %24, label %27, label %25, !dbg !761

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !762, !tbaa !664
  tail call void @_exit(i32 %26) #14, !dbg !763
  unreachable, !dbg !763

; <label>:27:                                     ; preds = %21
  ret void, !dbg !764
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !765 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !767, metadata !592), !dbg !770
  %2 = icmp eq i8* %0, null, !dbg !771
  br i1 %2, label %3, label %6, !dbg !773

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !774, !tbaa !600
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !776
  tail call void @abort() #14, !dbg !777
  unreachable, !dbg !777

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !778
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !768, metadata !592), !dbg !779
  %8 = icmp ne i8* %7, null, !dbg !780
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !781
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !783
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !769, metadata !592), !dbg !784
  %11 = ptrtoint i8* %10 to i64, !dbg !785
  %12 = ptrtoint i8* %0 to i64, !dbg !785
  %13 = sub i64 %11, %12, !dbg !785
  %14 = icmp sgt i64 %13, 6, !dbg !787
  br i1 %14, label %15, label %24, !dbg !788

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !789
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.34, i64 0, i64 0), i64 7) #13, !dbg !789
  %18 = icmp eq i32 %17, 0, !dbg !791
  br i1 %18, label %19, label %24, !dbg !792

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !767, metadata !592), !dbg !770
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.35, i64 0, i64 0), i64 3) #13, !dbg !793
  %21 = icmp eq i32 %20, 0, !dbg !796
  br i1 %21, label %22, label %24, !dbg !797

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !798
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !767, metadata !592), !dbg !770
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !800, !tbaa !600
  br label %24, !dbg !801

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !767, metadata !592), !dbg !770
  store i8* %25, i8** @program_name, align 8, !dbg !802, !tbaa !600
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !803, !tbaa !600
  ret void, !dbg !804
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !805 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !810, metadata !592), !dbg !813
  %2 = tail call i32* @__errno_location() #1, !dbg !814
  %3 = load i32, i32* %2, align 4, !dbg !814, !tbaa !664
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !811, metadata !592), !dbg !815
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !816
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !817
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !817
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !819
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !819
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !812, metadata !592), !dbg !820
  store i32 %3, i32* %2, align 4, !dbg !821, !tbaa !664
  ret %struct.quoting_options* %8, !dbg !822
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !823 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !829, metadata !592), !dbg !830
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !831
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !831
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !832
  %5 = load i32, i32* %4, align 8, !dbg !832, !tbaa !834
  ret i32 %5, !dbg !836
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !837 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !841, metadata !592), !dbg !843
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !842, metadata !592), !dbg !844
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !845
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !845
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !846
  store i32 %1, i32* %5, align 8, !dbg !848, !tbaa !834
  ret void, !dbg !849
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !850 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !854, metadata !592), !dbg !862
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !855, metadata !592), !dbg !863
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !856, metadata !592), !dbg !864
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !857, metadata !592), !dbg !865
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !866
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !866
  %6 = lshr i8 %1, 5, !dbg !867
  %7 = zext i8 %6 to i64, !dbg !867
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !869
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !858, metadata !592), !dbg !870
  %9 = and i8 %1, 31, !dbg !871
  %10 = zext i8 %9 to i32, !dbg !872
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !860, metadata !592), !dbg !873
  %11 = load i32, i32* %8, align 4, !dbg !874, !tbaa !664
  %12 = lshr i32 %11, %10, !dbg !875
  %13 = and i32 %12, 1, !dbg !876
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !861, metadata !592), !dbg !877
  %14 = and i32 %2, 1, !dbg !878
  %15 = xor i32 %13, %14, !dbg !879
  %16 = shl i32 %15, %10, !dbg !880
  %17 = xor i32 %16, %11, !dbg !881
  store i32 %17, i32* %8, align 4, !dbg !881, !tbaa !664
  ret i32 %13, !dbg !882
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !883 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !887, metadata !592), !dbg !890
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !888, metadata !592), !dbg !891
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !892
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !887, metadata !592), !dbg !890
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !894
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !887, metadata !592), !dbg !890
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !895
  %6 = load i32, i32* %5, align 4, !dbg !895, !tbaa !896
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !889, metadata !592), !dbg !897
  store i32 %1, i32* %5, align 4, !dbg !898, !tbaa !896
  ret i32 %6, !dbg !899
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !900 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !904, metadata !592), !dbg !907
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !905, metadata !592), !dbg !908
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !906, metadata !592), !dbg !909
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !910
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !904, metadata !592), !dbg !907
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !912
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !904, metadata !592), !dbg !907
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !913
  store i32 10, i32* %6, align 8, !dbg !914, !tbaa !834
  %7 = icmp ne i8* %1, null, !dbg !915
  %8 = icmp ne i8* %2, null, !dbg !917
  %9 = and i1 %7, %8, !dbg !919
  br i1 %9, label %11, label %10, !dbg !919

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !920
  unreachable, !dbg !920

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !921
  store i8* %1, i8** %12, align 8, !dbg !922, !tbaa !923
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !924
  store i8* %2, i8** %13, align 8, !dbg !925, !tbaa !926
  ret void, !dbg !927
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !928 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !932, metadata !592), !dbg !940
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !933, metadata !592), !dbg !941
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !934, metadata !592), !dbg !942
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !935, metadata !592), !dbg !943
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !936, metadata !592), !dbg !944
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !945
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !945
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !937, metadata !592), !dbg !946
  %8 = tail call i32* @__errno_location() #1, !dbg !947
  %9 = load i32, i32* %8, align 4, !dbg !947, !tbaa !664
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !938, metadata !592), !dbg !948
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !949
  %11 = load i32, i32* %10, align 8, !dbg !949, !tbaa !834
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !950
  %13 = load i32, i32* %12, align 4, !dbg !950, !tbaa !896
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !951
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !952
  %16 = load i8*, i8** %15, align 8, !dbg !952, !tbaa !923
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !953
  %18 = load i8*, i8** %17, align 8, !dbg !953, !tbaa !926
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !954
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !939, metadata !592), !dbg !955
  store i32 %9, i32* %8, align 4, !dbg !956, !tbaa !664
  ret i64 %19, !dbg !957
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !958 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !964, metadata !592), !dbg !1027
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !965, metadata !592), !dbg !1028
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !966, metadata !592), !dbg !1029
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !967, metadata !592), !dbg !1030
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !968, metadata !592), !dbg !1031
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !969, metadata !592), !dbg !1032
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !970, metadata !592), !dbg !1033
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !971, metadata !592), !dbg !1034
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !972, metadata !592), !dbg !1035
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !974, metadata !592), !dbg !1036
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !975, metadata !592), !dbg !1037
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !976, metadata !592), !dbg !1038
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !977, metadata !592), !dbg !1039
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !978, metadata !592), !dbg !1040
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1041
  %14 = icmp eq i64 %13, 1, !dbg !1042
  %15 = lshr i32 %5, 1, !dbg !1043
  %16 = trunc i32 %15 to i8, !dbg !1043
  %17 = and i8 %16, 1, !dbg !1043
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !980, metadata !592), !dbg !1043
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !981, metadata !592), !dbg !1044
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !982, metadata !592), !dbg !1045
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !983, metadata !592), !dbg !1046
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1047

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !965, metadata !592), !dbg !1028
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !983, metadata !592), !dbg !1046
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !982, metadata !592), !dbg !1045
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !980, metadata !592), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !967, metadata !592), !dbg !1030
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !978, metadata !592), !dbg !1040
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !977, metadata !592), !dbg !1039
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !976, metadata !592), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !975, metadata !592), !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !972, metadata !592), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !971, metadata !592), !dbg !1034
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !968, metadata !592), !dbg !1031
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
  ], !dbg !1048

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !968, metadata !592), !dbg !1031
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !980, metadata !592), !dbg !1043
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !980, metadata !592), !dbg !1043
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !968, metadata !592), !dbg !1031
  br label %95, !dbg !1049

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !980, metadata !592), !dbg !1043
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !968, metadata !592), !dbg !1031
  %43 = and i8 %36, 1, !dbg !1051
  %44 = icmp eq i8 %43, 0, !dbg !1051
  br i1 %44, label %45, label %95, !dbg !1049

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1053
  br i1 %46, label %95, label %47, !dbg !1057

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1059, !tbaa !1061
  br label %95, !dbg !1059

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.46, i64 0, i64 0), i32 %28), !dbg !1062
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !971, metadata !592), !dbg !1034
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), i32 %28), !dbg !1066
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !972, metadata !592), !dbg !1035
  br label %51, !dbg !1067

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !972, metadata !592), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !971, metadata !592), !dbg !1034
  %54 = and i8 %36, 1, !dbg !1068
  %55 = icmp eq i8 %54, 0, !dbg !1068
  br i1 %55, label %56, label %73, !dbg !1070

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !976, metadata !592), !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !974, metadata !592), !dbg !1036
  %57 = load i8, i8* %52, align 1, !dbg !1071, !tbaa !1061
  %58 = icmp eq i8 %57, 0, !dbg !1075
  br i1 %58, label %73, label %59, !dbg !1075

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1077

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1077
  br i1 %64, label %65, label %67, !dbg !1081

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1083
  store i8 %61, i8* %66, align 1, !dbg !1083, !tbaa !1061
  br label %67, !dbg !1083

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !974, metadata !592), !dbg !1036
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1087
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !976, metadata !592), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !976, metadata !592), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !974, metadata !592), !dbg !1036
  %70 = load i8, i8* %69, align 1, !dbg !1071, !tbaa !1061
  %71 = icmp eq i8 %70, 0, !dbg !1075
  br i1 %71, label %72, label %60, !dbg !1075, !llvm.loop !1089

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1036

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !978, metadata !592), !dbg !1040
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !976, metadata !592), !dbg !1038
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !977, metadata !592), !dbg !1039
  br label %95, !dbg !1093

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !978, metadata !592), !dbg !1040
  br label %77, !dbg !1094

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !978, metadata !592), !dbg !1040
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !980, metadata !592), !dbg !1043
  br label %79, !dbg !1095

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !980, metadata !592), !dbg !1043
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !978, metadata !592), !dbg !1040
  %82 = and i8 %81, 1, !dbg !1096
  %83 = icmp eq i8 %82, 0, !dbg !1096
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !978, metadata !592), !dbg !1040
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1098
  br label %85, !dbg !1098

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !980, metadata !592), !dbg !1043
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !978, metadata !592), !dbg !1040
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !968, metadata !592), !dbg !1031
  %88 = and i8 %87, 1, !dbg !1099
  %89 = icmp eq i8 %88, 0, !dbg !1099
  br i1 %89, label %90, label %95, !dbg !1101

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1102
  br i1 %91, label %95, label %92, !dbg !1106

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1108, !tbaa !1061
  br label %95, !dbg !1108

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !980, metadata !592), !dbg !1043
  br label %95, !dbg !1110

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1111
  unreachable, !dbg !1111

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !980, metadata !592), !dbg !1043
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !978, metadata !592), !dbg !1040
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !977, metadata !592), !dbg !1039
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !976, metadata !592), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !972, metadata !592), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !971, metadata !592), !dbg !1034
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !968, metadata !592), !dbg !1031
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !973, metadata !592), !dbg !1112
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
  br label %123, !dbg !1113

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !965, metadata !592), !dbg !1028
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !983, metadata !592), !dbg !1046
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !982, metadata !592), !dbg !1045
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !967, metadata !592), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !975, metadata !592), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !973, metadata !592), !dbg !1112
  %132 = icmp eq i64 %127, -1, !dbg !1114
  br i1 %132, label %135, label %133, !dbg !1116

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1117
  br i1 %134, label %597, label %139, !dbg !1119

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1121
  %137 = load i8, i8* %136, align 1, !dbg !1121, !tbaa !1061
  %138 = icmp eq i8 %137, 0, !dbg !1123
  br i1 %138, label %597, label %139, !dbg !1119

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !989, metadata !592), !dbg !1124
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !990, metadata !592), !dbg !1125
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !991, metadata !592), !dbg !1126
  br i1 %109, label %140, label %155, !dbg !1127

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1129
  %142 = and i1 %110, %132, !dbg !1131
  br i1 %142, label %143, label %145, !dbg !1131

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !967, metadata !592), !dbg !1030
  br label %145, !dbg !1133

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !967, metadata !592), !dbg !1030
  %147 = icmp ugt i64 %141, %146, !dbg !1135
  br i1 %147, label %155, label %148, !dbg !1137

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1138
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1139
  %151 = icmp ne i32 %150, 0, !dbg !1140
  %152 = or i1 %151, %112, !dbg !1140
  %153 = xor i1 %151, true, !dbg !1140
  %154 = zext i1 %153 to i8, !dbg !1140
  br i1 %152, label %155, label %644, !dbg !1140

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !989, metadata !592), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !967, metadata !592), !dbg !1030
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1142
  %159 = load i8, i8* %158, align 1, !dbg !1142, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !984, metadata !592), !dbg !1143
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
  ], !dbg !1144

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1145

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1146

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !990, metadata !592), !dbg !1125
  %163 = and i8 %128, 1, !dbg !1151
  %164 = icmp eq i8 %163, 0, !dbg !1151
  %165 = and i1 %114, %164, !dbg !1154
  br i1 %165, label %166, label %182, !dbg !1154

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1156
  br i1 %167, label %168, label %170, !dbg !1161

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1163
  store i8 39, i8* %169, align 1, !dbg !1163, !tbaa !1061
  br label %170, !dbg !1163

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1165
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !974, metadata !592), !dbg !1036
  %172 = icmp ult i64 %171, %131, !dbg !1167
  br i1 %172, label %173, label %175, !dbg !1171

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1173
  store i8 36, i8* %174, align 1, !dbg !1173, !tbaa !1061
  br label %175, !dbg !1173

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !974, metadata !592), !dbg !1036
  %177 = icmp ult i64 %176, %131, !dbg !1177
  br i1 %177, label %178, label %180, !dbg !1181

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1183
  store i8 39, i8* %179, align 1, !dbg !1183, !tbaa !1061
  br label %180, !dbg !1183

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !981, metadata !592), !dbg !1044
  br label %182, !dbg !1187

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !974, metadata !592), !dbg !1036
  %185 = icmp ult i64 %183, %131, !dbg !1189
  br i1 %185, label %186, label %188, !dbg !1193

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1195
  store i8 92, i8* %187, align 1, !dbg !1195, !tbaa !1061
  br label %188, !dbg !1195

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1197
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !974, metadata !592), !dbg !1036
  br i1 %106, label %190, label %476, !dbg !1199

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1201
  %192 = icmp ult i64 %191, %156, !dbg !1203
  br i1 %192, label %193, label %476, !dbg !1204

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1205
  %195 = load i8, i8* %194, align 1, !dbg !1205, !tbaa !1061
  %196 = add i8 %195, -48, !dbg !1207
  %197 = icmp ult i8 %196, 10, !dbg !1207
  br i1 %197, label %198, label %476, !dbg !1207

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1208
  br i1 %199, label %200, label %202, !dbg !1213

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1215
  store i8 48, i8* %201, align 1, !dbg !1215, !tbaa !1061
  br label %202, !dbg !1215

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !974, metadata !592), !dbg !1036
  %204 = icmp ult i64 %203, %131, !dbg !1219
  br i1 %204, label %205, label %207, !dbg !1223

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1225
  store i8 48, i8* %206, align 1, !dbg !1225, !tbaa !1061
  br label %207, !dbg !1225

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !974, metadata !592), !dbg !1036
  br label %476, !dbg !1229

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1230

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1231

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1232

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1234

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1236
  %215 = icmp ult i64 %214, %156, !dbg !1238
  br i1 %215, label %216, label %476, !dbg !1239

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1240
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1242
  %219 = load i8, i8* %218, align 1, !dbg !1242, !tbaa !1061
  %220 = icmp eq i8 %219, 63, !dbg !1243
  br i1 %220, label %221, label %476, !dbg !1244

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1246
  %223 = load i8, i8* %222, align 1, !dbg !1246, !tbaa !1061
  %224 = sext i8 %223 to i32, !dbg !1246
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
  ], !dbg !1247

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1248

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !984, metadata !592), !dbg !1143
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !973, metadata !592), !dbg !1112
  %227 = icmp ult i64 %125, %131, !dbg !1250
  br i1 %227, label %228, label %230, !dbg !1254

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1256
  store i8 63, i8* %229, align 1, !dbg !1256, !tbaa !1061
  br label %230, !dbg !1256

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !974, metadata !592), !dbg !1036
  %232 = icmp ult i64 %231, %131, !dbg !1260
  br i1 %232, label %233, label %235, !dbg !1264

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1266
  store i8 34, i8* %234, align 1, !dbg !1266, !tbaa !1061
  br label %235, !dbg !1266

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1268
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !974, metadata !592), !dbg !1036
  %237 = icmp ult i64 %236, %131, !dbg !1270
  br i1 %237, label %238, label %240, !dbg !1274

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1276
  store i8 34, i8* %239, align 1, !dbg !1276, !tbaa !1061
  br label %240, !dbg !1276

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !974, metadata !592), !dbg !1036
  %242 = icmp ult i64 %241, %131, !dbg !1280
  br i1 %242, label %243, label %245, !dbg !1284

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1286
  store i8 63, i8* %244, align 1, !dbg !1286, !tbaa !1061
  br label %245, !dbg !1286

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !974, metadata !592), !dbg !1036
  br label %476, !dbg !1290

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !988, metadata !592), !dbg !1291
  br label %257, !dbg !1292

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !988, metadata !592), !dbg !1291
  br label %257, !dbg !1293

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !988, metadata !592), !dbg !1291
  br label %255, !dbg !1294

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !988, metadata !592), !dbg !1291
  br label %255, !dbg !1295

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !988, metadata !592), !dbg !1291
  br label %257, !dbg !1296

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !988, metadata !592), !dbg !1291
  br i1 %114, label %253, label %254, !dbg !1297

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1298

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1301

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !988, metadata !592), !dbg !1291
  br i1 %118, label %257, label %644, !dbg !1303

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !988, metadata !592), !dbg !1291
  br i1 %105, label %503, label %476, !dbg !1305

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1306
  br i1 %260, label %261, label %266, !dbg !1308

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1309, !tbaa !1061
  %263 = icmp ne i8 %262, 0, !dbg !1311
  %264 = icmp ne i64 %124, 0, !dbg !1312
  %265 = or i1 %264, %263, !dbg !1314
  br i1 %265, label %476, label %272, !dbg !1314

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1315
  %268 = icmp ne i64 %124, 0, !dbg !1312
  %269 = or i1 %268, %267, !dbg !1317
  br i1 %269, label %476, label %272, !dbg !1317

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1312
  br i1 %271, label %272, label %476, !dbg !1319

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !991, metadata !592), !dbg !1126
  br label %273, !dbg !1320

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !991, metadata !592), !dbg !1126
  br i1 %118, label %476, label %644, !dbg !1321

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !982, metadata !592), !dbg !1045
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !991, metadata !592), !dbg !1126
  br i1 %114, label %276, label %476, !dbg !1323

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1324

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1327
  %279 = icmp ne i64 %126, 0, !dbg !1329
  %280 = or i1 %279, %278, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !975, metadata !592), !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !965, metadata !592), !dbg !1028
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1331
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !965, metadata !592), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !975, metadata !592), !dbg !1037
  %283 = icmp ult i64 %125, %282, !dbg !1332
  br i1 %283, label %284, label %286, !dbg !1336

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1338
  store i8 39, i8* %285, align 1, !dbg !1338, !tbaa !1061
  br label %286, !dbg !1338

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !974, metadata !592), !dbg !1036
  %288 = icmp ult i64 %287, %282, !dbg !1342
  br i1 %288, label %289, label %291, !dbg !1346

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1348
  store i8 92, i8* %290, align 1, !dbg !1348, !tbaa !1061
  br label %291, !dbg !1348

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !974, metadata !592), !dbg !1036
  %293 = icmp ult i64 %292, %282, !dbg !1352
  br i1 %293, label %294, label %296, !dbg !1356

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1358
  store i8 39, i8* %295, align 1, !dbg !1358, !tbaa !1061
  br label %296, !dbg !1358

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !981, metadata !592), !dbg !1044
  br label %476, !dbg !1362

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1363

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !992, metadata !592), !dbg !1364
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1365
  %301 = load i16*, i16** %300, align 8, !dbg !1365, !tbaa !600
  %302 = zext i8 %159 to i64, !dbg !1365
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1365
  %304 = load i16, i16* %303, align 2, !dbg !1365, !tbaa !1367
  %305 = lshr i16 %304, 14, !dbg !1369
  %306 = trunc i16 %305 to i8, !dbg !1369
  %307 = and i8 %306, 1, !dbg !1369
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !995, metadata !592), !dbg !1370
  br label %368, !dbg !1371

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9, !dbg !1372
  store i64 0, i64* %10, align 8, !dbg !1373
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !992, metadata !592), !dbg !1364
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !995, metadata !592), !dbg !1370
  %309 = icmp eq i64 %156, -1, !dbg !1374
  br i1 %309, label %310, label %312, !dbg !1376, !llvm.loop !1377

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !967, metadata !592), !dbg !1030
  br label %312, !dbg !1381, !llvm.loop !1377

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1370

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !995, metadata !592), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !992, metadata !592), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !967, metadata !592), !dbg !1030
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9, !dbg !1382
  %317 = add i64 %315, %124, !dbg !1383
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1384
  %319 = sub i64 %313, %317, !dbg !1385
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !996, metadata !1386), !dbg !1387
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1013, metadata !1386), !dbg !1388
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #9, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1016, metadata !592), !dbg !1390
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1391

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !992, metadata !592), !dbg !1364
  %322 = icmp ugt i64 %313, %317, !dbg !1392
  br i1 %322, label %323, label %351, !dbg !1395

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1396

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1396
  %328 = load i8, i8* %327, align 1, !dbg !1396, !tbaa !1061
  %329 = icmp eq i8 %328, 0, !dbg !1398
  br i1 %329, label %348, label %330, !dbg !1399

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !992, metadata !592), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !992, metadata !592), !dbg !1364
  %332 = add i64 %331, %124, !dbg !1402
  %333 = icmp ult i64 %332, %313, !dbg !1392
  br i1 %333, label %324, label %348, !dbg !1395, !llvm.loop !1403

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1405
  %336 = and i1 %116, %335, !dbg !1409
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1017, metadata !592), !dbg !1410
  br i1 %336, label %337, label %355, !dbg !1409

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1411

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1411
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1412
  %342 = load i8, i8* %341, align 1, !dbg !1412, !tbaa !1061
  %343 = sext i8 %342 to i32, !dbg !1412
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1413

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1017, metadata !592), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1017, metadata !592), !dbg !1410
  %346 = icmp ult i64 %345, %320, !dbg !1405
  br i1 %346, label %338, label %354, !dbg !1416, !llvm.loop !1418

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1370

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1370

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1370

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !995, metadata !592), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !992, metadata !592), !dbg !1364
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1421
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1422

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1422, !tbaa !664
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1013, metadata !592), !dbg !1388
  %357 = call i32 @iswprint(i32 %356) #9, !dbg !1424
  %358 = icmp eq i32 %357, 0, !dbg !1424
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !995, metadata !592), !dbg !1370
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1425
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !995, metadata !592), !dbg !1370
  %360 = add i64 %320, %315, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !992, metadata !592), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !995, metadata !592), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !992, metadata !592), !dbg !1364
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1421
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !996, metadata !1386), !dbg !1387
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1427
  %362 = icmp eq i32 %361, 0, !dbg !1428
  br i1 %362, label %314, label %363, !dbg !1429, !llvm.loop !1377

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1431

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1431
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !995, metadata !592), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !992, metadata !592), !dbg !1364
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1421
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1431
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !995, metadata !592), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !992, metadata !592), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !967, metadata !592), !dbg !1030
  %372 = and i8 %371, 1, !dbg !1432
  %373 = icmp ne i8 %372, 0, !dbg !1432
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !991, metadata !592), !dbg !1126
  %374 = icmp ult i64 %370, 2, !dbg !1433
  %375 = or i1 %373, %113, !dbg !1434
  %376 = and i1 %374, %375, !dbg !1436
  br i1 %376, label %476, label %377, !dbg !1436

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1024, metadata !592), !dbg !1438
  br label %379, !dbg !1439

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !990, metadata !592), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !989, metadata !592), !dbg !1124
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !984, metadata !592), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !973, metadata !592), !dbg !1112
  br i1 %375, label %432, label %386, !dbg !1440

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1445

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !990, metadata !592), !dbg !1125
  %388 = and i8 %382, 1, !dbg !1449
  %389 = icmp eq i8 %388, 0, !dbg !1449
  %390 = and i1 %114, %389, !dbg !1452
  br i1 %390, label %391, label %407, !dbg !1452

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1454
  br i1 %392, label %393, label %395, !dbg !1459

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1461
  store i8 39, i8* %394, align 1, !dbg !1461, !tbaa !1061
  br label %395, !dbg !1461

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !974, metadata !592), !dbg !1036
  %397 = icmp ult i64 %396, %131, !dbg !1465
  br i1 %397, label %398, label %400, !dbg !1469

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1471
  store i8 36, i8* %399, align 1, !dbg !1471, !tbaa !1061
  br label %400, !dbg !1471

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !974, metadata !592), !dbg !1036
  %402 = icmp ult i64 %401, %131, !dbg !1475
  br i1 %402, label %403, label %405, !dbg !1479

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1481
  store i8 39, i8* %404, align 1, !dbg !1481, !tbaa !1061
  br label %405, !dbg !1481

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !981, metadata !592), !dbg !1044
  br label %407, !dbg !1485

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !974, metadata !592), !dbg !1036
  %410 = icmp ult i64 %408, %131, !dbg !1487
  br i1 %410, label %411, label %413, !dbg !1491

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1493
  store i8 92, i8* %412, align 1, !dbg !1493, !tbaa !1061
  br label %413, !dbg !1493

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !974, metadata !592), !dbg !1036
  %415 = icmp ult i64 %414, %131, !dbg !1497
  br i1 %415, label %416, label %420, !dbg !1501

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1503
  %418 = or i8 %417, 48, !dbg !1503
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1503
  store i8 %418, i8* %419, align 1, !dbg !1503, !tbaa !1061
  br label %420, !dbg !1503

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !974, metadata !592), !dbg !1036
  %422 = icmp ult i64 %421, %131, !dbg !1507
  br i1 %422, label %423, label %428, !dbg !1511

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1513
  %425 = and i8 %424, 7, !dbg !1513
  %426 = or i8 %425, 48, !dbg !1513
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1513
  store i8 %426, i8* %427, align 1, !dbg !1513, !tbaa !1061
  br label %428, !dbg !1513

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !974, metadata !592), !dbg !1036
  %430 = and i8 %383, 7, !dbg !1517
  %431 = or i8 %430, 48, !dbg !1518
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !984, metadata !592), !dbg !1143
  br label %441, !dbg !1519

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1520
  %434 = icmp eq i8 %433, 0, !dbg !1520
  br i1 %434, label %441, label %435, !dbg !1522

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1523
  br i1 %436, label %437, label %439, !dbg !1528

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1530
  store i8 92, i8* %438, align 1, !dbg !1530, !tbaa !1061
  br label %439, !dbg !1530

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !989, metadata !592), !dbg !1124
  br label %441, !dbg !1534

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !990, metadata !592), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !989, metadata !592), !dbg !1124
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !984, metadata !592), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !974, metadata !592), !dbg !1036
  %447 = add i64 %380, 1, !dbg !1535
  %448 = icmp ugt i64 %378, %447, !dbg !1537
  br i1 %448, label %449, label %541, !dbg !1538

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1539
  %451 = icmp ne i8 %450, 0, !dbg !1539
  %452 = and i8 %446, 1, !dbg !1543
  %453 = icmp eq i8 %452, 0, !dbg !1543
  %454 = and i1 %451, %453, !dbg !1539
  br i1 %454, label %455, label %466, !dbg !1539

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1545
  br i1 %456, label %457, label %459, !dbg !1550

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1552
  store i8 39, i8* %458, align 1, !dbg !1552, !tbaa !1061
  br label %459, !dbg !1552

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !974, metadata !592), !dbg !1036
  %461 = icmp ult i64 %460, %131, !dbg !1556
  br i1 %461, label %462, label %464, !dbg !1560

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1562
  store i8 39, i8* %463, align 1, !dbg !1562, !tbaa !1061
  br label %464, !dbg !1562

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1564
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !981, metadata !592), !dbg !1044
  br label %466, !dbg !1566

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !974, metadata !592), !dbg !1036
  %469 = icmp ult i64 %467, %131, !dbg !1568
  br i1 %469, label %470, label %472, !dbg !1572

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1574
  store i8 %444, i8* %471, align 1, !dbg !1574, !tbaa !1061
  br label %472, !dbg !1574

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !973, metadata !592), !dbg !1112
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1578
  %475 = load i8, i8* %474, align 1, !dbg !1578, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !984, metadata !592), !dbg !1143
  br label %379, !dbg !1579, !llvm.loop !1581

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !965, metadata !592), !dbg !1028
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !991, metadata !592), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !990, metadata !592), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !989, metadata !592), !dbg !1124
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !984, metadata !592), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !982, metadata !592), !dbg !1045
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !967, metadata !592), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !975, metadata !592), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !973, metadata !592), !dbg !1112
  br i1 %107, label %488, label %487, !dbg !1584

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1586

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1587

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1588
  %491 = zext i8 %490 to i64, !dbg !1588
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1590
  %493 = load i32, i32* %492, align 4, !dbg !1590, !tbaa !664
  %494 = and i8 %483, 31, !dbg !1591
  %495 = zext i8 %494 to i32, !dbg !1592
  %496 = shl i32 1, %495, !dbg !1593
  %497 = and i32 %493, %496, !dbg !1593
  %498 = icmp eq i32 %497, 0, !dbg !1593
  %499 = icmp eq i8 %157, 0, !dbg !1594
  %500 = and i1 %499, %498, !dbg !1595
  br i1 %500, label %542, label %503, !dbg !1595

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1594
  br i1 %502, label %542, label %503, !dbg !1596

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !965, metadata !592), !dbg !1028
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !991, metadata !592), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !984, metadata !592), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !982, metadata !592), !dbg !1045
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !967, metadata !592), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !975, metadata !592), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !973, metadata !592), !dbg !1112
  br i1 %112, label %513, label %644, !dbg !1598

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !990, metadata !592), !dbg !1125
  %514 = and i8 %508, 1, !dbg !1601
  %515 = icmp eq i8 %514, 0, !dbg !1601
  %516 = and i1 %114, %515, !dbg !1604
  br i1 %516, label %517, label %533, !dbg !1604

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1606
  br i1 %518, label %519, label %521, !dbg !1611

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1613
  store i8 39, i8* %520, align 1, !dbg !1613, !tbaa !1061
  br label %521, !dbg !1613

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !974, metadata !592), !dbg !1036
  %523 = icmp ult i64 %522, %512, !dbg !1617
  br i1 %523, label %524, label %526, !dbg !1621

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1623
  store i8 36, i8* %525, align 1, !dbg !1623, !tbaa !1061
  br label %526, !dbg !1623

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !974, metadata !592), !dbg !1036
  %528 = icmp ult i64 %527, %512, !dbg !1627
  br i1 %528, label %529, label %531, !dbg !1631

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1633
  store i8 39, i8* %530, align 1, !dbg !1633, !tbaa !1061
  br label %531, !dbg !1633

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !981, metadata !592), !dbg !1044
  br label %533, !dbg !1637

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !974, metadata !592), !dbg !1036
  %536 = icmp ult i64 %534, %512, !dbg !1639
  br i1 %536, label %537, label %539, !dbg !1643

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1645
  store i8 92, i8* %538, align 1, !dbg !1645, !tbaa !1061
  br label %539, !dbg !1645

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !965, metadata !592), !dbg !1028
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !991, metadata !592), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !990, metadata !592), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !984, metadata !592), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !982, metadata !592), !dbg !1045
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !967, metadata !592), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !975, metadata !592), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !973, metadata !592), !dbg !1112
  br label %569, !dbg !1649

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1028

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !965, metadata !592), !dbg !1028
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !991, metadata !592), !dbg !1126
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !990, metadata !592), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !984, metadata !592), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !982, metadata !592), !dbg !1045
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !967, metadata !592), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !975, metadata !592), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !973, metadata !592), !dbg !1112
  %553 = and i8 %547, 1, !dbg !1649
  %554 = icmp ne i8 %553, 0, !dbg !1649
  %555 = and i8 %550, 1, !dbg !1653
  %556 = icmp eq i8 %555, 0, !dbg !1653
  %557 = and i1 %554, %556, !dbg !1649
  br i1 %557, label %558, label %569, !dbg !1649

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1655
  br i1 %559, label %560, label %562, !dbg !1660

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1662
  store i8 39, i8* %561, align 1, !dbg !1662, !tbaa !1061
  br label %562, !dbg !1662

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !974, metadata !592), !dbg !1036
  %564 = icmp ult i64 %563, %552, !dbg !1666
  br i1 %564, label %565, label %567, !dbg !1670

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1672
  store i8 39, i8* %566, align 1, !dbg !1672, !tbaa !1061
  br label %567, !dbg !1672

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !974, metadata !592), !dbg !1036
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !981, metadata !592), !dbg !1044
  br label %569, !dbg !1676

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !981, metadata !592), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !974, metadata !592), !dbg !1036
  %579 = icmp ult i64 %577, %570, !dbg !1678
  br i1 %579, label %580, label %582, !dbg !1682

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1684
  store i8 %572, i8* %581, align 1, !dbg !1684, !tbaa !1061
  br label %582, !dbg !1684

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !974, metadata !592), !dbg !1036
  %584 = and i8 %571, 1, !dbg !1688
  %585 = icmp eq i8 %584, 0, !dbg !1688
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !983, metadata !592), !dbg !1046
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1690
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !983, metadata !592), !dbg !1046
  br label %587, !dbg !1691

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !973, metadata !592), !dbg !1112
  br label %123, !dbg !1694, !llvm.loop !1695

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1698
  %600 = and i1 %114, %599, !dbg !1700
  %601 = xor i1 %600, true, !dbg !1700
  %602 = or i1 %112, %601, !dbg !1700
  br i1 %602, label %603, label %648, !dbg !1700

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1701
  %605 = xor i1 %604, true, !dbg !1701
  %606 = and i8 %129, 1, !dbg !1703
  %607 = icmp eq i8 %606, 0, !dbg !1703
  %608 = or i1 %607, %605, !dbg !1701
  br i1 %608, label %618, label %609, !dbg !1701

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1705
  %611 = icmp eq i8 %610, 0, !dbg !1705
  br i1 %611, label %614, label %612, !dbg !1708

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1709
  br label %659, !dbg !1710

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1711
  %616 = icmp ne i64 %126, 0, !dbg !1713
  %617 = and i1 %616, %615, !dbg !1715
  br i1 %617, label %27, label %618, !dbg !1715

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1716
  %620 = and i1 %619, %112, !dbg !1718
  br i1 %620, label %621, label %638, !dbg !1718

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !976, metadata !592), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !974, metadata !592), !dbg !1036
  %622 = load i8, i8* %100, align 1, !dbg !1719, !tbaa !1061
  %623 = icmp eq i8 %622, 0, !dbg !1723
  br i1 %623, label %638, label %624, !dbg !1723

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1725

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1725
  br i1 %629, label %630, label %632, !dbg !1729

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1731
  store i8 %626, i8* %631, align 1, !dbg !1731, !tbaa !1061
  br label %632, !dbg !1731

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !974, metadata !592), !dbg !1036
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1735
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !976, metadata !592), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !976, metadata !592), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !974, metadata !592), !dbg !1036
  %635 = load i8, i8* %634, align 1, !dbg !1719, !tbaa !1061
  %636 = icmp eq i8 %635, 0, !dbg !1723
  br i1 %636, label %637, label %625, !dbg !1723, !llvm.loop !1737

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1036

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !974, metadata !592), !dbg !1036
  %640 = icmp ult i64 %639, %131, !dbg !1740
  br i1 %640, label %641, label %659, !dbg !1742

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1743
  store i8 0, i8* %642, align 1, !dbg !1744, !tbaa !1061
  br label %659, !dbg !1743

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1028

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1028

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1028

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !965, metadata !592), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !967, metadata !592), !dbg !1030
  %653 = icmp ne i32 %650, 2, !dbg !1745
  %654 = icmp eq i8 %104, 0, !dbg !1747
  %655 = or i1 %653, %654, !dbg !1749
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !968, metadata !592), !dbg !1031
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1749
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !968, metadata !592), !dbg !1031
  %657 = and i32 %5, -3, !dbg !1750
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1751
  br label %659, !dbg !1752

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1753
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1754 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1758, metadata !592), !dbg !1762
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1759, metadata !592), !dbg !1763
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1764
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1760, metadata !592), !dbg !1765
  %4 = icmp eq i8* %3, %0, !dbg !1766
  br i1 %4, label %5, label %75, !dbg !1768

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1769
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1761, metadata !592), !dbg !1770
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1771, metadata !592), !dbg !1787
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1785, metadata !592), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1786, metadata !592), !dbg !1791
  %7 = load i8, i8* %6, align 1, !tbaa !1061
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1792
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1792

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1795, metadata !592), !dbg !1809
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1807, metadata !592), !dbg !1813
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1808, metadata !592), !dbg !1814
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1061
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1815
  %15 = icmp eq i32 %14, 84, !dbg !1815
  br i1 %15, label %16, label %72, !dbg !1815

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1818, metadata !592), !dbg !1831
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1829, metadata !592), !dbg !1835
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1830, metadata !592), !dbg !1836
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1061
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1837
  %21 = icmp eq i32 %20, 70, !dbg !1837
  br i1 %21, label %22, label %72, !dbg !1837

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1840, metadata !592), !dbg !1852
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1850, metadata !592), !dbg !1856
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1851, metadata !592), !dbg !1857
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1061
  %25 = icmp eq i8 %24, 45, !dbg !1858
  br i1 %25, label %26, label %72, !dbg !1861

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1863, metadata !592), !dbg !1874
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1872, metadata !592), !dbg !1878
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1873, metadata !592), !dbg !1879
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1061
  %29 = icmp eq i8 %28, 56, !dbg !1880
  br i1 %29, label %30, label %72, !dbg !1883

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1885, metadata !592), !dbg !1895
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1893, metadata !592), !dbg !1899
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1894, metadata !592), !dbg !1900
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1061
  %33 = icmp eq i8 %32, 0, !dbg !1901
  br i1 %33, label %34, label %72, !dbg !1904

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1906, !tbaa !1061
  %36 = icmp eq i8 %35, 96, !dbg !1907
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.49, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1906
  br label %75, !dbg !1908

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1795, metadata !592), !dbg !1909
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1807, metadata !592), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1808, metadata !592), !dbg !1914
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1061
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !1915
  %43 = icmp eq i32 %42, 66, !dbg !1915
  br i1 %43, label %44, label %72, !dbg !1915

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1818, metadata !592), !dbg !1916
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1829, metadata !592), !dbg !1918
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1830, metadata !592), !dbg !1919
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1061
  %47 = icmp eq i8 %46, 49, !dbg !1920
  br i1 %47, label %48, label %72, !dbg !1922

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1840, metadata !592), !dbg !1924
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1850, metadata !592), !dbg !1926
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1851, metadata !592), !dbg !1927
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1061
  %51 = icmp eq i8 %50, 56, !dbg !1928
  br i1 %51, label %52, label %72, !dbg !1929

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1863, metadata !592), !dbg !1930
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1872, metadata !592), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1873, metadata !592), !dbg !1933
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1061
  %55 = icmp eq i8 %54, 48, !dbg !1934
  br i1 %55, label %56, label %72, !dbg !1935

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1885, metadata !592), !dbg !1936
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1893, metadata !592), !dbg !1938
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1894, metadata !592), !dbg !1939
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1061
  %59 = icmp eq i8 %58, 51, !dbg !1940
  br i1 %59, label %60, label %72, !dbg !1941

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1942, metadata !592), !dbg !1951
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1949, metadata !592), !dbg !1955
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1950, metadata !592), !dbg !1956
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1061
  %63 = icmp eq i8 %62, 48, !dbg !1957
  br i1 %63, label %64, label %72, !dbg !1960

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1962, metadata !592), !dbg !1970
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1968, metadata !592), !dbg !1974
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1969, metadata !592), !dbg !1975
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1061
  %67 = icmp eq i8 %66, 0, !dbg !1976
  br i1 %67, label %68, label %72, !dbg !1979

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1980, !tbaa !1061
  %70 = icmp eq i8 %69, 96, !dbg !1981
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1980
  br label %75, !dbg !1982

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1983
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), !dbg !1984
  br label %75, !dbg !1985

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1986
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1987 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1991, metadata !592), !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1992, metadata !592), !dbg !1995
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1993, metadata !592), !dbg !1996
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1997, metadata !592) #9, !dbg !2010
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2002, metadata !592) #9, !dbg !2012
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2003, metadata !592) #9, !dbg !2013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2004, metadata !592) #9, !dbg !2014
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2015
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2005, metadata !592) #9, !dbg !2016
  %6 = tail call i32* @__errno_location() #1, !dbg !2017
  %7 = load i32, i32* %6, align 4, !dbg !2017, !tbaa !664
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2006, metadata !592) #9, !dbg !2018
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2019
  %9 = load i32, i32* %8, align 4, !dbg !2019, !tbaa !896
  %10 = or i32 %9, 1, !dbg !2020
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2007, metadata !592) #9, !dbg !2021
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2022
  %12 = load i32, i32* %11, align 8, !dbg !2022, !tbaa !834
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2023
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2024
  %15 = load i8*, i8** %14, align 8, !dbg !2024, !tbaa !923
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2025
  %17 = load i8*, i8** %16, align 8, !dbg !2025, !tbaa !926
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !2026
  %19 = add i64 %18, 1, !dbg !2027
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2008, metadata !592) #9, !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2029, metadata !592) #9, !dbg !2034
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2036
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2009, metadata !592) #9, !dbg !2037
  %21 = load i32, i32* %11, align 8, !dbg !2038, !tbaa !834
  %22 = load i8*, i8** %14, align 8, !dbg !2039, !tbaa !923
  %23 = load i8*, i8** %16, align 8, !dbg !2040, !tbaa !926
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !2041
  store i32 %7, i32* %6, align 4, !dbg !2042, !tbaa !664
  ret i8* %20, !dbg !2043
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1998 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1997, metadata !592), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2002, metadata !592), !dbg !2045
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2003, metadata !592), !dbg !2046
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2004, metadata !592), !dbg !2047
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2048
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2048
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2005, metadata !592), !dbg !2049
  %7 = tail call i32* @__errno_location() #1, !dbg !2050
  %8 = load i32, i32* %7, align 4, !dbg !2050, !tbaa !664
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2006, metadata !592), !dbg !2051
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2052
  %10 = load i32, i32* %9, align 4, !dbg !2052, !tbaa !896
  %11 = icmp ne i64* %2, null, !dbg !2053
  %12 = xor i1 %11, true, !dbg !2053
  %13 = zext i1 %12 to i32, !dbg !2053
  %14 = or i32 %10, %13, !dbg !2054
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2007, metadata !592), !dbg !2055
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2056
  %16 = load i32, i32* %15, align 8, !dbg !2056, !tbaa !834
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2057
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2058
  %19 = load i8*, i8** %18, align 8, !dbg !2058, !tbaa !923
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2059
  %21 = load i8*, i8** %20, align 8, !dbg !2059, !tbaa !926
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2060
  %23 = add i64 %22, 1, !dbg !2061
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2008, metadata !592), !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2029, metadata !592) #9, !dbg !2063
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2065
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2009, metadata !592), !dbg !2066
  %25 = load i32, i32* %15, align 8, !dbg !2067, !tbaa !834
  %26 = load i8*, i8** %18, align 8, !dbg !2068, !tbaa !923
  %27 = load i8*, i8** %20, align 8, !dbg !2069, !tbaa !926
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2070
  store i32 %8, i32* %7, align 4, !dbg !2071, !tbaa !664
  br i1 %11, label %29, label %30, !dbg !2072

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2073, !tbaa !2075
  br label %30, !dbg !2077

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2078
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2079 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2083, !tbaa !600
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2081, metadata !592), !dbg !2084
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2082, metadata !592), !dbg !2085
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2082, metadata !592), !dbg !2085
  %2 = load i32, i32* @nslots, align 4, !dbg !2086, !tbaa !664
  %3 = icmp sgt i32 %2, 1, !dbg !2090
  br i1 %3, label %4, label %14, !dbg !2091

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2093

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2093
  %8 = load i8*, i8** %7, align 8, !dbg !2093, !tbaa !2094
  tail call void @free(i8* %8) #9, !dbg !2096
  %9 = add nuw i64 %6, 1, !dbg !2097
  %10 = load i32, i32* @nslots, align 4, !dbg !2086, !tbaa !664
  %11 = sext i32 %10 to i64, !dbg !2090
  %12 = icmp slt i64 %9, %11, !dbg !2090
  br i1 %12, label %5, label %13, !dbg !2091, !llvm.loop !2099

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2102

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2102
  %16 = load i8*, i8** %15, align 8, !dbg !2102, !tbaa !2094
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2104
  br i1 %17, label %19, label %18, !dbg !2105

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #9, !dbg !2106
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2108, !tbaa !2109
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2110, !tbaa !2094
  br label %19, !dbg !2111

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2112
  br i1 %20, label %23, label %21, !dbg !2114

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2115
  tail call void @free(i8* %22) #9, !dbg !2117
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2118, !tbaa !600
  br label %23, !dbg !2119

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2120, !tbaa !664
  ret void, !dbg !2121
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2122 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2126, metadata !592), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2127, metadata !592), !dbg !2129
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2130
  ret i8* %3, !dbg !2131
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2132 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2136, metadata !592), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2137, metadata !592), !dbg !2151
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2138, metadata !592), !dbg !2152
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2139, metadata !592), !dbg !2153
  %5 = tail call i32* @__errno_location() #1, !dbg !2154
  %6 = load i32, i32* %5, align 4, !dbg !2154, !tbaa !664
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2140, metadata !592), !dbg !2155
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2156, !tbaa !600
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2141, metadata !592), !dbg !2157
  %8 = icmp slt i32 %0, 0, !dbg !2158
  br i1 %8, label %9, label %10, !dbg !2160

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2161
  unreachable, !dbg !2161

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2162, !tbaa !664
  %12 = icmp sgt i32 %11, %0, !dbg !2163
  br i1 %12, label %34, label %13, !dbg !2164

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2165
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2166
  br i1 %15, label %16, label %17, !dbg !2168

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2169
  unreachable, !dbg !2169

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2170
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2170
  %20 = add nsw i32 %0, 1, !dbg !2172
  %21 = sext i32 %20 to i64, !dbg !2173
  %22 = shl nsw i64 %21, 4, !dbg !2174
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2175
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2175
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2141, metadata !592), !dbg !2157
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2176, !tbaa !600
  br i1 %14, label %25, label %26, !dbg !2177

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2178, !tbaa.struct !2180
  br label %26, !dbg !2181

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2182, !tbaa !664
  %28 = sext i32 %27 to i64, !dbg !2183
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2183
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2184
  %31 = sub nsw i32 %20, %27, !dbg !2185
  %32 = sext i32 %31 to i64, !dbg !2186
  %33 = shl nsw i64 %32, 4, !dbg !2187
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2184
  store i32 %20, i32* @nslots, align 4, !dbg !2188, !tbaa !664
  br label %34, !dbg !2189

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2141, metadata !592), !dbg !2157
  %36 = sext i32 %0 to i64, !dbg !2190
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2191
  %38 = load i64, i64* %37, align 8, !dbg !2191, !tbaa !2109
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2145, metadata !592), !dbg !2192
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2193
  %40 = load i8*, i8** %39, align 8, !dbg !2193, !tbaa !2094
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2147, metadata !592), !dbg !2194
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2195
  %42 = load i32, i32* %41, align 4, !dbg !2195, !tbaa !896
  %43 = or i32 %42, 1, !dbg !2196
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2148, metadata !592), !dbg !2197
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2198
  %45 = load i32, i32* %44, align 8, !dbg !2198, !tbaa !834
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2199
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2200
  %48 = load i8*, i8** %47, align 8, !dbg !2200, !tbaa !923
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2201
  %50 = load i8*, i8** %49, align 8, !dbg !2201, !tbaa !926
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2149, metadata !592), !dbg !2203
  %52 = icmp ugt i64 %38, %51, !dbg !2204
  br i1 %52, label %63, label %53, !dbg !2206

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2207
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2145, metadata !592), !dbg !2192
  store i64 %54, i64* %37, align 8, !dbg !2209, !tbaa !2109
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2210
  br i1 %55, label %57, label %56, !dbg !2212

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2213
  br label %57, !dbg !2213

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2029, metadata !592) #9, !dbg !2214
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2216
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2147, metadata !592), !dbg !2194
  store i8* %58, i8** %39, align 8, !dbg !2217, !tbaa !2094
  %59 = load i32, i32* %44, align 8, !dbg !2218, !tbaa !834
  %60 = load i8*, i8** %47, align 8, !dbg !2219, !tbaa !923
  %61 = load i8*, i8** %49, align 8, !dbg !2220, !tbaa !926
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2221
  br label %63, !dbg !2222

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2147, metadata !592), !dbg !2194
  store i32 %6, i32* %5, align 4, !dbg !2223, !tbaa !664
  ret i8* %64, !dbg !2224
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #11

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2225 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2229, metadata !592), !dbg !2232
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2230, metadata !592), !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2231, metadata !592), !dbg !2234
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2235
  ret i8* %4, !dbg !2236
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2237 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2241, metadata !592), !dbg !2242
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2126, metadata !592) #9, !dbg !2243
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2127, metadata !592) #9, !dbg !2245
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2246
  ret i8* %2, !dbg !2247
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2248 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2252, metadata !592), !dbg !2254
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2253, metadata !592), !dbg !2255
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2229, metadata !592) #9, !dbg !2256
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2230, metadata !592) #9, !dbg !2258
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2231, metadata !592) #9, !dbg !2259
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2260
  ret i8* %3, !dbg !2261
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2262 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2270, metadata !2276), !dbg !2277
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2266, metadata !592), !dbg !2279
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2267, metadata !592), !dbg !2280
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2268, metadata !592), !dbg !2281
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2282
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2282
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2269, metadata !1386), !dbg !2283
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2275, metadata !592) #9, !dbg !2284
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2285
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2285
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2270, metadata !592) #9, !dbg !2277
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2270, metadata !2286) #9, !dbg !2277
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2277
  %8 = icmp eq i32 %1, 10, !dbg !2287
  br i1 %8, label %9, label %10, !dbg !2289

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2290, !noalias !2291
  unreachable, !dbg !2290

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2270, metadata !2286) #9, !dbg !2277
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2294
  store i32 %1, i32* %11, align 8, !dbg !2294, !alias.scope !2291
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2294
  %13 = bitcast i32* %12 to i8*, !dbg !2294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2294
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2295
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2269, metadata !1386), !dbg !2283
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2296
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2297
  ret i8* %14, !dbg !2298
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2299 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2270, metadata !2276), !dbg !2308
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2303, metadata !592), !dbg !2310
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2304, metadata !592), !dbg !2311
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2305, metadata !592), !dbg !2312
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2306, metadata !592), !dbg !2313
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2314
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2314
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2307, metadata !1386), !dbg !2315
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2275, metadata !592) #9, !dbg !2316
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2317
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2317
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2270, metadata !592) #9, !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2270, metadata !2286) #9, !dbg !2308
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2308
  %9 = icmp eq i32 %1, 10, !dbg !2318
  br i1 %9, label %10, label %11, !dbg !2319

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2320, !noalias !2321
  unreachable, !dbg !2320

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2270, metadata !2286) #9, !dbg !2308
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2324
  store i32 %1, i32* %12, align 8, !dbg !2324, !alias.scope !2321
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2324
  %14 = bitcast i32* %13 to i8*, !dbg !2324
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2324
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2325
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2307, metadata !1386), !dbg !2315
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2326
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2327
  ret i8* %15, !dbg !2328
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2329 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2270, metadata !2276), !dbg !2335
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2333, metadata !592), !dbg !2338
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2334, metadata !592), !dbg !2339
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2266, metadata !592) #9, !dbg !2340
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2267, metadata !592) #9, !dbg !2341
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2268, metadata !592) #9, !dbg !2342
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2343
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2343
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2269, metadata !1386) #9, !dbg !2344
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2275, metadata !592) #9, !dbg !2345
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2346
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2346
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2270, metadata !592) #9, !dbg !2335
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2270, metadata !2286) #9, !dbg !2335
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2335
  %7 = icmp eq i32 %0, 10, !dbg !2347
  br i1 %7, label %8, label %9, !dbg !2348

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2349, !noalias !2350
  unreachable, !dbg !2349

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2270, metadata !2286) #9, !dbg !2335
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2353
  store i32 %0, i32* %10, align 8, !dbg !2353, !alias.scope !2350
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2353
  %12 = bitcast i32* %11 to i8*, !dbg !2353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2353
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2354
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2269, metadata !1386) #9, !dbg !2344
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2355
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2356
  ret i8* %13, !dbg !2357
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2358 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2270, metadata !2276), !dbg !2365
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2362, metadata !592), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2363, metadata !592), !dbg !2369
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2364, metadata !592), !dbg !2370
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2303, metadata !592) #9, !dbg !2371
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2304, metadata !592) #9, !dbg !2372
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2305, metadata !592) #9, !dbg !2373
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2306, metadata !592) #9, !dbg !2374
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2375
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2375
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2307, metadata !1386) #9, !dbg !2376
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2275, metadata !592) #9, !dbg !2377
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2378
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2378
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2270, metadata !592) #9, !dbg !2365
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2270, metadata !2286) #9, !dbg !2365
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2365
  %8 = icmp eq i32 %0, 10, !dbg !2379
  br i1 %8, label %9, label %10, !dbg !2380

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2381, !noalias !2382
  unreachable, !dbg !2381

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2270, metadata !2286) #9, !dbg !2365
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2385
  store i32 %0, i32* %11, align 8, !dbg !2385, !alias.scope !2382
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2385
  %13 = bitcast i32* %12 to i8*, !dbg !2385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2385
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2386
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2307, metadata !1386) #9, !dbg !2376
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2387
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2388
  ret i8* %14, !dbg !2389
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2390 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2394, metadata !592), !dbg !2398
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2395, metadata !592), !dbg !2399
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2396, metadata !592), !dbg !2400
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2401
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2402, !tbaa.struct !2403
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2397, metadata !1386), !dbg !2404
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !854, metadata !592), !dbg !2405
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !855, metadata !592), !dbg !2407
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !856, metadata !592), !dbg !2408
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !857, metadata !592), !dbg !2409
  %6 = lshr i8 %2, 5, !dbg !2410
  %7 = zext i8 %6 to i64, !dbg !2410
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2411
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !858, metadata !592), !dbg !2412
  %9 = and i8 %2, 31, !dbg !2413
  %10 = zext i8 %9 to i32, !dbg !2414
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !860, metadata !592), !dbg !2415
  %11 = load i32, i32* %8, align 4, !dbg !2416, !tbaa !664
  %12 = lshr i32 %11, %10, !dbg !2417
  %13 = and i32 %12, 1, !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !861, metadata !592), !dbg !2419
  %14 = xor i32 %13, 1, !dbg !2420
  %15 = shl i32 %14, %10, !dbg !2421
  %16 = xor i32 %15, %11, !dbg !2422
  store i32 %16, i32* %8, align 4, !dbg !2422, !tbaa !664
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2397, metadata !1386), !dbg !2404
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2423
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2424
  ret i8* %17, !dbg !2425
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2426 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2430, metadata !592), !dbg !2432
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2431, metadata !592), !dbg !2433
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2394, metadata !592) #9, !dbg !2434
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2395, metadata !592) #9, !dbg !2436
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2396, metadata !592) #9, !dbg !2437
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2438
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2438
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2439, !tbaa.struct !2403
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2397, metadata !1386) #9, !dbg !2440
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !854, metadata !592) #9, !dbg !2441
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !855, metadata !592) #9, !dbg !2443
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !856, metadata !592) #9, !dbg !2444
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !857, metadata !592) #9, !dbg !2445
  %5 = lshr i8 %1, 5, !dbg !2446
  %6 = zext i8 %5 to i64, !dbg !2446
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2447
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !858, metadata !592) #9, !dbg !2448
  %8 = and i8 %1, 31, !dbg !2449
  %9 = zext i8 %8 to i32, !dbg !2450
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !860, metadata !592) #9, !dbg !2451
  %10 = load i32, i32* %7, align 4, !dbg !2452, !tbaa !664
  %11 = lshr i32 %10, %9, !dbg !2453
  %12 = and i32 %11, 1, !dbg !2454
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !861, metadata !592) #9, !dbg !2455
  %13 = xor i32 %12, 1, !dbg !2456
  %14 = shl i32 %13, %9, !dbg !2457
  %15 = xor i32 %14, %10, !dbg !2458
  store i32 %15, i32* %7, align 4, !dbg !2458, !tbaa !664
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2397, metadata !1386) #9, !dbg !2440
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2459
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2460
  ret i8* %16, !dbg !2461
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2462 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2464, metadata !592), !dbg !2465
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2430, metadata !592) #9, !dbg !2466
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2431, metadata !592) #9, !dbg !2468
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2394, metadata !592) #9, !dbg !2469
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2395, metadata !592) #9, !dbg !2471
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2396, metadata !592) #9, !dbg !2472
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2473
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9, !dbg !2473
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2474, !tbaa.struct !2403
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2397, metadata !1386) #9, !dbg !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !854, metadata !592) #9, !dbg !2476
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !855, metadata !592) #9, !dbg !2478
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !856, metadata !592) #9, !dbg !2479
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !857, metadata !592) #9, !dbg !2480
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2481
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !858, metadata !592) #9, !dbg !2482
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !860, metadata !592) #9, !dbg !2483
  %5 = load i32, i32* %4, align 4, !dbg !2484, !tbaa !664
  %6 = or i32 %5, 67108864, !dbg !2485
  store i32 %6, i32* %4, align 4, !dbg !2485, !tbaa !664
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2397, metadata !1386) #9, !dbg !2475
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2486
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9, !dbg !2487
  ret i8* %7, !dbg !2488
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2489 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2491, metadata !592), !dbg !2493
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2492, metadata !592), !dbg !2494
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2394, metadata !592) #9, !dbg !2495
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2395, metadata !592) #9, !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2396, metadata !592) #9, !dbg !2498
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2499
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2499
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2500, !tbaa.struct !2403
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2397, metadata !1386) #9, !dbg !2501
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !854, metadata !592) #9, !dbg !2502
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !855, metadata !592) #9, !dbg !2504
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !856, metadata !592) #9, !dbg !2505
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !857, metadata !592) #9, !dbg !2506
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2507
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !858, metadata !592) #9, !dbg !2508
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !860, metadata !592) #9, !dbg !2509
  %6 = load i32, i32* %5, align 4, !dbg !2510, !tbaa !664
  %7 = or i32 %6, 67108864, !dbg !2511
  store i32 %7, i32* %5, align 4, !dbg !2511, !tbaa !664
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2397, metadata !1386) #9, !dbg !2501
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2512
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2513
  ret i8* %8, !dbg !2514
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2515 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2270, metadata !2276), !dbg !2521
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2517, metadata !592), !dbg !2523
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2518, metadata !592), !dbg !2524
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2519, metadata !592), !dbg !2525
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2526
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2526
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2275, metadata !592) #9, !dbg !2527
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2528
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2528
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2270, metadata !592) #9, !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2270, metadata !2286) #9, !dbg !2521
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2521
  %9 = icmp eq i32 %1, 10, !dbg !2529
  br i1 %9, label %10, label %11, !dbg !2530

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2531, !noalias !2532
  unreachable, !dbg !2531

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2270, metadata !2286) #9, !dbg !2521
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2535
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2536
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2537
  store i32 %1, i32* %13, align 8, !dbg !2537
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2537
  %15 = bitcast i32* %14 to i8*, !dbg !2537
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2537
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2520, metadata !1386), !dbg !2538
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !854, metadata !592), !dbg !2539
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !855, metadata !592), !dbg !2541
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !856, metadata !592), !dbg !2542
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !857, metadata !592), !dbg !2543
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2544
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !858, metadata !592), !dbg !2545
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !860, metadata !592), !dbg !2546
  %17 = load i32, i32* %16, align 4, !dbg !2547, !tbaa !664
  %18 = or i32 %17, 67108864, !dbg !2548
  store i32 %18, i32* %16, align 4, !dbg !2548, !tbaa !664
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2520, metadata !1386), !dbg !2538
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2549
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2550
  ret i8* %19, !dbg !2551
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2552 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2556, metadata !592), !dbg !2560
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2557, metadata !592), !dbg !2561
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2558, metadata !592), !dbg !2562
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2559, metadata !592), !dbg !2563
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2564, metadata !592) #9, !dbg !2574
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2569, metadata !592) #9, !dbg !2576
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2570, metadata !592) #9, !dbg !2577
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2571, metadata !592) #9, !dbg !2578
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2572, metadata !592) #9, !dbg !2579
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2580
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2581, !tbaa.struct !2403
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2573, metadata !1386) #9, !dbg !2582
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !904, metadata !592) #9, !dbg !2583
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !905, metadata !592) #9, !dbg !2585
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !906, metadata !592) #9, !dbg !2586
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !904, metadata !592) #9, !dbg !2583
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !904, metadata !592) #9, !dbg !2583
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2587
  store i32 10, i32* %7, align 8, !dbg !2588, !tbaa !834
  %8 = icmp ne i8* %1, null, !dbg !2589
  %9 = icmp ne i8* %2, null, !dbg !2590
  %10 = and i1 %8, %9, !dbg !2591
  br i1 %10, label %12, label %11, !dbg !2591

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2592
  unreachable, !dbg !2592

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2593
  store i8* %1, i8** %13, align 8, !dbg !2594, !tbaa !923
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2595
  store i8* %2, i8** %14, align 8, !dbg !2596, !tbaa !926
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2573, metadata !1386) #9, !dbg !2582
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2597
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2598
  ret i8* %15, !dbg !2599
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2565 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2564, metadata !592), !dbg !2600
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2569, metadata !592), !dbg !2601
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2570, metadata !592), !dbg !2602
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2571, metadata !592), !dbg !2603
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2572, metadata !592), !dbg !2604
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2605
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2606, !tbaa.struct !2403
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2573, metadata !1386), !dbg !2607
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !904, metadata !592) #9, !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !905, metadata !592) #9, !dbg !2610
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !906, metadata !592) #9, !dbg !2611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !904, metadata !592) #9, !dbg !2608
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !904, metadata !592) #9, !dbg !2608
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2612
  store i32 10, i32* %8, align 8, !dbg !2613, !tbaa !834
  %9 = icmp ne i8* %1, null, !dbg !2614
  %10 = icmp ne i8* %2, null, !dbg !2615
  %11 = and i1 %9, %10, !dbg !2616
  br i1 %11, label %13, label %12, !dbg !2616

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2617
  unreachable, !dbg !2617

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2618
  store i8* %1, i8** %14, align 8, !dbg !2619, !tbaa !923
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2620
  store i8* %2, i8** %15, align 8, !dbg !2621, !tbaa !926
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2573, metadata !1386), !dbg !2607
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2622
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2623
  ret i8* %16, !dbg !2624
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2625 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2629, metadata !592), !dbg !2632
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2630, metadata !592), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2631, metadata !592), !dbg !2634
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2556, metadata !592) #9, !dbg !2635
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2557, metadata !592) #9, !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2558, metadata !592) #9, !dbg !2638
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2559, metadata !592) #9, !dbg !2639
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2564, metadata !592) #9, !dbg !2640
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2569, metadata !592) #9, !dbg !2642
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2570, metadata !592) #9, !dbg !2643
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2571, metadata !592) #9, !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2572, metadata !592) #9, !dbg !2645
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2646
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2647, !tbaa.struct !2403
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2573, metadata !1386) #9, !dbg !2648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !904, metadata !592) #9, !dbg !2649
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !905, metadata !592) #9, !dbg !2651
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !906, metadata !592) #9, !dbg !2652
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !904, metadata !592) #9, !dbg !2649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !904, metadata !592) #9, !dbg !2649
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2653
  store i32 10, i32* %6, align 8, !dbg !2654, !tbaa !834
  %7 = icmp ne i8* %0, null, !dbg !2655
  %8 = icmp ne i8* %1, null, !dbg !2656
  %9 = and i1 %7, %8, !dbg !2657
  br i1 %9, label %11, label %10, !dbg !2657

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2658
  unreachable, !dbg !2658

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2659
  store i8* %0, i8** %12, align 8, !dbg !2660, !tbaa !923
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2661
  store i8* %1, i8** %13, align 8, !dbg !2662, !tbaa !926
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2573, metadata !1386) #9, !dbg !2648
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2663
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2664
  ret i8* %14, !dbg !2665
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2666 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2670, metadata !592), !dbg !2674
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2671, metadata !592), !dbg !2675
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2672, metadata !592), !dbg !2676
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2673, metadata !592), !dbg !2677
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2564, metadata !592) #9, !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2569, metadata !592) #9, !dbg !2680
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2570, metadata !592) #9, !dbg !2681
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2571, metadata !592) #9, !dbg !2682
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2572, metadata !592) #9, !dbg !2683
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2684
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2684
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2685, !tbaa.struct !2403
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2573, metadata !1386) #9, !dbg !2686
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !904, metadata !592) #9, !dbg !2687
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !905, metadata !592) #9, !dbg !2689
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !906, metadata !592) #9, !dbg !2690
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !904, metadata !592) #9, !dbg !2687
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !904, metadata !592) #9, !dbg !2687
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2691
  store i32 10, i32* %7, align 8, !dbg !2692, !tbaa !834
  %8 = icmp ne i8* %0, null, !dbg !2693
  %9 = icmp ne i8* %1, null, !dbg !2694
  %10 = and i1 %8, %9, !dbg !2695
  br i1 %10, label %12, label %11, !dbg !2695

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2696
  unreachable, !dbg !2696

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2697
  store i8* %0, i8** %13, align 8, !dbg !2698, !tbaa !923
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2699
  store i8* %1, i8** %14, align 8, !dbg !2700, !tbaa !926
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2573, metadata !1386) #9, !dbg !2686
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2701
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2702
  ret i8* %15, !dbg !2703
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2704 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2708, metadata !592), !dbg !2711
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2709, metadata !592), !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2710, metadata !592), !dbg !2713
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2714
  ret i8* %4, !dbg !2715
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2716 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2720, metadata !592), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2721, metadata !592), !dbg !2723
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2708, metadata !592) #9, !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2709, metadata !592) #9, !dbg !2726
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2710, metadata !592) #9, !dbg !2727
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2728
  ret i8* %3, !dbg !2729
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2730 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2734, metadata !592), !dbg !2736
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2735, metadata !592), !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2708, metadata !592) #9, !dbg !2738
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2709, metadata !592) #9, !dbg !2740
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2710, metadata !592) #9, !dbg !2741
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2742
  ret i8* %3, !dbg !2743
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2744 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2748, metadata !592), !dbg !2749
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2734, metadata !592) #9, !dbg !2750
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2735, metadata !592) #9, !dbg !2752
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2708, metadata !592) #9, !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2709, metadata !592) #9, !dbg !2755
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2710, metadata !592) #9, !dbg !2756
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2757
  ret i8* %2, !dbg !2758
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2759 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2819, metadata !592), !dbg !2825
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2820, metadata !592), !dbg !2826
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2821, metadata !592), !dbg !2827
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2822, metadata !592), !dbg !2828
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2823, metadata !592), !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2824, metadata !592), !dbg !2830
  %7 = icmp eq i8* %1, null, !dbg !2831
  br i1 %7, label %10, label %8, !dbg !2833

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2834
  br label %12, !dbg !2834

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2835
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i32 5) #9, !dbg !2836
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2837
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.58, i64 0, i64 0), i32 5) #9, !dbg !2839
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2840
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
  ], !dbg !2841

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2842
  unreachable, !dbg !2842

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.59, i64 0, i64 0), i32 5) #9, !dbg !2844
  %20 = load i8*, i8** %4, align 8, !dbg !2844, !tbaa !600
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2845
  br label %146, !dbg !2847

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.60, i64 0, i64 0), i32 5) #9, !dbg !2848
  %24 = load i8*, i8** %4, align 8, !dbg !2848, !tbaa !600
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2848
  %26 = load i8*, i8** %25, align 8, !dbg !2848, !tbaa !600
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2849
  br label %146, !dbg !2850

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.61, i64 0, i64 0), i32 5) #9, !dbg !2851
  %30 = load i8*, i8** %4, align 8, !dbg !2851, !tbaa !600
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2851
  %32 = load i8*, i8** %31, align 8, !dbg !2851, !tbaa !600
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2851
  %34 = load i8*, i8** %33, align 8, !dbg !2851, !tbaa !600
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2852
  br label %146, !dbg !2853

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.62, i64 0, i64 0), i32 5) #9, !dbg !2854
  %38 = load i8*, i8** %4, align 8, !dbg !2854, !tbaa !600
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2854
  %40 = load i8*, i8** %39, align 8, !dbg !2854, !tbaa !600
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2854
  %42 = load i8*, i8** %41, align 8, !dbg !2854, !tbaa !600
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2854
  %44 = load i8*, i8** %43, align 8, !dbg !2854, !tbaa !600
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2855
  br label %146, !dbg !2856

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.63, i64 0, i64 0), i32 5) #9, !dbg !2857
  %48 = load i8*, i8** %4, align 8, !dbg !2857, !tbaa !600
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2857
  %50 = load i8*, i8** %49, align 8, !dbg !2857, !tbaa !600
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2857
  %52 = load i8*, i8** %51, align 8, !dbg !2857, !tbaa !600
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2857
  %54 = load i8*, i8** %53, align 8, !dbg !2857, !tbaa !600
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2857
  %56 = load i8*, i8** %55, align 8, !dbg !2857, !tbaa !600
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2858
  br label %146, !dbg !2859

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.64, i64 0, i64 0), i32 5) #9, !dbg !2860
  %60 = load i8*, i8** %4, align 8, !dbg !2860, !tbaa !600
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2860
  %62 = load i8*, i8** %61, align 8, !dbg !2860, !tbaa !600
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2860
  %64 = load i8*, i8** %63, align 8, !dbg !2860, !tbaa !600
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2860
  %66 = load i8*, i8** %65, align 8, !dbg !2860, !tbaa !600
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2860
  %68 = load i8*, i8** %67, align 8, !dbg !2860, !tbaa !600
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2860
  %70 = load i8*, i8** %69, align 8, !dbg !2860, !tbaa !600
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2861
  br label %146, !dbg !2862

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.65, i64 0, i64 0), i32 5) #9, !dbg !2863
  %74 = load i8*, i8** %4, align 8, !dbg !2863, !tbaa !600
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2863
  %76 = load i8*, i8** %75, align 8, !dbg !2863, !tbaa !600
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2863
  %78 = load i8*, i8** %77, align 8, !dbg !2863, !tbaa !600
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2863
  %80 = load i8*, i8** %79, align 8, !dbg !2863, !tbaa !600
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2863
  %82 = load i8*, i8** %81, align 8, !dbg !2863, !tbaa !600
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2863
  %84 = load i8*, i8** %83, align 8, !dbg !2863, !tbaa !600
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2863
  %86 = load i8*, i8** %85, align 8, !dbg !2863, !tbaa !600
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2864
  br label %146, !dbg !2865

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.66, i64 0, i64 0), i32 5) #9, !dbg !2866
  %90 = load i8*, i8** %4, align 8, !dbg !2866, !tbaa !600
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2866
  %92 = load i8*, i8** %91, align 8, !dbg !2866, !tbaa !600
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2866
  %94 = load i8*, i8** %93, align 8, !dbg !2866, !tbaa !600
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2866
  %96 = load i8*, i8** %95, align 8, !dbg !2866, !tbaa !600
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2866
  %98 = load i8*, i8** %97, align 8, !dbg !2866, !tbaa !600
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2866
  %100 = load i8*, i8** %99, align 8, !dbg !2866, !tbaa !600
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2866
  %102 = load i8*, i8** %101, align 8, !dbg !2866, !tbaa !600
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2866
  %104 = load i8*, i8** %103, align 8, !dbg !2866, !tbaa !600
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2867
  br label %146, !dbg !2868

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.67, i64 0, i64 0), i32 5) #9, !dbg !2869
  %108 = load i8*, i8** %4, align 8, !dbg !2869, !tbaa !600
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2869
  %110 = load i8*, i8** %109, align 8, !dbg !2869, !tbaa !600
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2869
  %112 = load i8*, i8** %111, align 8, !dbg !2869, !tbaa !600
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2869
  %114 = load i8*, i8** %113, align 8, !dbg !2869, !tbaa !600
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2869
  %116 = load i8*, i8** %115, align 8, !dbg !2869, !tbaa !600
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2869
  %118 = load i8*, i8** %117, align 8, !dbg !2869, !tbaa !600
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2869
  %120 = load i8*, i8** %119, align 8, !dbg !2869, !tbaa !600
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2869
  %122 = load i8*, i8** %121, align 8, !dbg !2869, !tbaa !600
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2869
  %124 = load i8*, i8** %123, align 8, !dbg !2869, !tbaa !600
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2870
  br label %146, !dbg !2871

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.68, i64 0, i64 0), i32 5) #9, !dbg !2872
  %128 = load i8*, i8** %4, align 8, !dbg !2872, !tbaa !600
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2872
  %130 = load i8*, i8** %129, align 8, !dbg !2872, !tbaa !600
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2872
  %132 = load i8*, i8** %131, align 8, !dbg !2872, !tbaa !600
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2872
  %134 = load i8*, i8** %133, align 8, !dbg !2872, !tbaa !600
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2872
  %136 = load i8*, i8** %135, align 8, !dbg !2872, !tbaa !600
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2872
  %138 = load i8*, i8** %137, align 8, !dbg !2872, !tbaa !600
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2872
  %140 = load i8*, i8** %139, align 8, !dbg !2872, !tbaa !600
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2872
  %142 = load i8*, i8** %141, align 8, !dbg !2872, !tbaa !600
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2872
  %144 = load i8*, i8** %143, align 8, !dbg !2872, !tbaa !600
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2873
  br label %146, !dbg !2874

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2875
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2876 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2880, metadata !592), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2881, metadata !592), !dbg !2887
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2882, metadata !592), !dbg !2888
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2883, metadata !592), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2884, metadata !592), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2885, metadata !592), !dbg !2891
  br label %6, !dbg !2892

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2885, metadata !592), !dbg !2891
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2894
  %9 = load i8*, i8** %8, align 8, !dbg !2894, !tbaa !600
  %10 = icmp eq i8* %9, null, !dbg !2897
  %11 = add i64 %7, 1, !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2885, metadata !592), !dbg !2891
  br i1 %10, label %12, label %6, !dbg !2897, !llvm.loop !2901

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2904
  ret void, !dbg !2905
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2906 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2917, metadata !592), !dbg !2925
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2918, metadata !592), !dbg !2926
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2919, metadata !592), !dbg !2927
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2920, metadata !592), !dbg !2928
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2921, metadata !592), !dbg !2929
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2930
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9, !dbg !2930
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2923, metadata !592), !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2922, metadata !592), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2922, metadata !592), !dbg !2932
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !2933
  %12 = icmp ult i32 %11, 41, !dbg !2933
  br i1 %12, label %13, label %18, !dbg !2933

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2937
  %15 = sext i32 %11 to i64, !dbg !2937
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2937
  %17 = add i32 %11, 8, !dbg !2937
  store i32 %17, i32* %8, align 8, !dbg !2937
  br label %21, !dbg !2937

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2939
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2939
  store i8* %20, i8** %10, align 8, !dbg !2939
  br label %21, !dbg !2939

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !2933
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2941
  %25 = load i8*, i8** %24, align 8, !dbg !2941
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2943
  store i8* %25, i8** %26, align 16, !dbg !2944, !tbaa !600
  %27 = icmp eq i8* %25, null, !dbg !2945
  br i1 %27, label %30, label %28, !dbg !2946

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  %29 = icmp ult i32 %22, 41, !dbg !2933
  br i1 %29, label %35, label %32, !dbg !2933

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2948
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9, !dbg !2949
  ret void, !dbg !2949

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2939
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2939
  store i8* %34, i8** %10, align 8, !dbg !2939
  br label %40, !dbg !2939

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2937
  %37 = sext i32 %22 to i64, !dbg !2937
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2937
  %39 = add i32 %22, 8, !dbg !2937
  store i32 %39, i32* %8, align 8, !dbg !2937
  br label %40, !dbg !2937

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !2933
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2941
  %44 = load i8*, i8** %43, align 8, !dbg !2941
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2943
  store i8* %44, i8** %45, align 8, !dbg !2944, !tbaa !600
  %46 = icmp eq i8* %44, null, !dbg !2945
  br i1 %46, label %30, label %47, !dbg !2946

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  %48 = icmp ult i32 %41, 41, !dbg !2933
  br i1 %48, label %52, label %49, !dbg !2933

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2939
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2939
  store i8* %51, i8** %10, align 8, !dbg !2939
  br label %57, !dbg !2939

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2937
  %54 = sext i32 %41 to i64, !dbg !2937
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2937
  %56 = add i32 %41, 8, !dbg !2937
  store i32 %56, i32* %8, align 8, !dbg !2937
  br label %57, !dbg !2937

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !2933
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2941
  %61 = load i8*, i8** %60, align 8, !dbg !2941
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2943
  store i8* %61, i8** %62, align 16, !dbg !2944, !tbaa !600
  %63 = icmp eq i8* %61, null, !dbg !2945
  br i1 %63, label %30, label %64, !dbg !2946

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  %65 = icmp ult i32 %58, 41, !dbg !2933
  br i1 %65, label %69, label %66, !dbg !2933

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2939
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2939
  store i8* %68, i8** %10, align 8, !dbg !2939
  br label %74, !dbg !2939

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2937
  %71 = sext i32 %58 to i64, !dbg !2937
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2937
  %73 = add i32 %58, 8, !dbg !2937
  store i32 %73, i32* %8, align 8, !dbg !2937
  br label %74, !dbg !2937

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !2933
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2941
  %78 = load i8*, i8** %77, align 8, !dbg !2941
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2943
  store i8* %78, i8** %79, align 8, !dbg !2944, !tbaa !600
  %80 = icmp eq i8* %78, null, !dbg !2945
  br i1 %80, label %30, label %81, !dbg !2946

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  %82 = icmp ult i32 %75, 41, !dbg !2933
  br i1 %82, label %86, label %83, !dbg !2933

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2939
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2939
  store i8* %85, i8** %10, align 8, !dbg !2939
  br label %91, !dbg !2939

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2937
  %88 = sext i32 %75 to i64, !dbg !2937
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2937
  %90 = add i32 %75, 8, !dbg !2937
  store i32 %90, i32* %8, align 8, !dbg !2937
  br label %91, !dbg !2937

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !2933
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2941
  %95 = load i8*, i8** %94, align 8, !dbg !2941
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2943
  store i8* %95, i8** %96, align 16, !dbg !2944, !tbaa !600
  %97 = icmp eq i8* %95, null, !dbg !2945
  br i1 %97, label %30, label %98, !dbg !2946

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  %99 = icmp ult i32 %92, 41, !dbg !2933
  br i1 %99, label %103, label %100, !dbg !2933

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2939
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2939
  store i8* %102, i8** %10, align 8, !dbg !2939
  br label %108, !dbg !2939

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2937
  %105 = sext i32 %92 to i64, !dbg !2937
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2937
  %107 = add i32 %92, 8, !dbg !2937
  store i32 %107, i32* %8, align 8, !dbg !2937
  br label %108, !dbg !2937

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2941
  %111 = load i8*, i8** %110, align 8, !dbg !2941
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2943
  store i8* %111, i8** %112, align 8, !dbg !2944, !tbaa !600
  %113 = icmp eq i8* %111, null, !dbg !2945
  br i1 %113, label %30, label %114, !dbg !2946

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  %115 = load i8*, i8** %10, align 8, !dbg !2939
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2939
  store i8* %116, i8** %10, align 8, !dbg !2939
  %117 = bitcast i8* %115 to i8**, !dbg !2941
  %118 = load i8*, i8** %117, align 8, !dbg !2941
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2943
  store i8* %118, i8** %119, align 16, !dbg !2944, !tbaa !600
  %120 = icmp eq i8* %118, null, !dbg !2945
  br i1 %120, label %30, label %121, !dbg !2946

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  %122 = load i8*, i8** %10, align 8, !dbg !2939
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2939
  store i8* %123, i8** %10, align 8, !dbg !2939
  %124 = bitcast i8* %122 to i8**, !dbg !2941
  %125 = load i8*, i8** %124, align 8, !dbg !2941
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2943
  store i8* %125, i8** %126, align 8, !dbg !2944, !tbaa !600
  %127 = icmp eq i8* %125, null, !dbg !2945
  br i1 %127, label %30, label %128, !dbg !2946

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  %129 = load i8*, i8** %10, align 8, !dbg !2939
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2939
  store i8* %130, i8** %10, align 8, !dbg !2939
  %131 = bitcast i8* %129 to i8**, !dbg !2941
  %132 = load i8*, i8** %131, align 8, !dbg !2941
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2943
  store i8* %132, i8** %133, align 16, !dbg !2944, !tbaa !600
  %134 = icmp eq i8* %132, null, !dbg !2945
  br i1 %134, label %30, label %135, !dbg !2946

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  %136 = load i8*, i8** %10, align 8, !dbg !2939
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2939
  store i8* %137, i8** %10, align 8, !dbg !2939
  %138 = bitcast i8* %136 to i8**, !dbg !2941
  %139 = load i8*, i8** %138, align 8, !dbg !2941
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2943
  store i8* %139, i8** %140, align 8, !dbg !2944, !tbaa !600
  %141 = icmp eq i8* %139, null, !dbg !2945
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2922, metadata !592), !dbg !2932
  %142 = select i1 %141, i64 9, i64 10, !dbg !2946
  br label %30, !dbg !2946
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2950 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2954, metadata !592), !dbg !2964
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2955, metadata !592), !dbg !2965
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2956, metadata !592), !dbg !2966
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2957, metadata !592), !dbg !2967
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2968
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9, !dbg !2968
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2958, metadata !592), !dbg !2969
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2970
  call void @llvm.va_start(i8* nonnull %6), !dbg !2970
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2971
  call void @llvm.va_end(i8* nonnull %6), !dbg !2972
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9, !dbg !2973
  ret void, !dbg !2973
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2974 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.71, i64 0, i64 0), i32 5) #9, !dbg !2975
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.72, i64 0, i64 0)) #9, !dbg !2976
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !2978
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.74, i64 0, i64 0)) #9, !dbg !2979
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !2980
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2980, !tbaa !600
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !2981
  ret void, !dbg !2982
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !2983 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2987, metadata !592), !dbg !2989
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2988, metadata !592), !dbg !2990
  %3 = udiv i64 9223372036854775807, %1, !dbg !2991
  %4 = icmp ult i64 %3, %0, !dbg !2991
  br i1 %4, label %5, label %6, !dbg !2993

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !2994
  unreachable, !dbg !2994

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2996, metadata !592) #9, !dbg !3003
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !3005
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3002, metadata !592) #9, !dbg !3006
  %9 = icmp eq i8* %8, null, !dbg !3007
  %10 = icmp ne i64 %7, 0, !dbg !3009
  %11 = and i1 %10, %9, !dbg !3011
  br i1 %11, label %12, label %13, !dbg !3011

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3012
  unreachable, !dbg !3012

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3013
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2997 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2996, metadata !592), !dbg !3014
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3015
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3002, metadata !592), !dbg !3016
  %3 = icmp eq i8* %2, null, !dbg !3017
  %4 = icmp ne i64 %0, 0, !dbg !3018
  %5 = and i1 %4, %3, !dbg !3019
  br i1 %5, label %6, label %7, !dbg !3019

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3020
  unreachable, !dbg !3020

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3021
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3022 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3026, metadata !592), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3027, metadata !592), !dbg !3030
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3028, metadata !592), !dbg !3031
  %4 = udiv i64 9223372036854775807, %2, !dbg !3032
  %5 = icmp ult i64 %4, %1, !dbg !3032
  br i1 %5, label %6, label %7, !dbg !3034

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3035
  unreachable, !dbg !3035

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3036
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3037, metadata !592) #9, !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3042, metadata !592) #9, !dbg !3045
  %9 = icmp eq i64 %8, 0, !dbg !3046
  %10 = icmp ne i8* %0, null, !dbg !3048
  %11 = and i1 %10, %9, !dbg !3050
  br i1 %11, label %12, label %13, !dbg !3050

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !3051
  br label %19, !dbg !3053

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !3054
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3037, metadata !592) #9, !dbg !3043
  %15 = icmp eq i8* %14, null, !dbg !3055
  %16 = icmp ne i64 %8, 0, !dbg !3057
  %17 = and i1 %16, %15, !dbg !3059
  br i1 %17, label %18, label %19, !dbg !3059

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3060
  unreachable, !dbg !3060

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3061
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3038 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3037, metadata !592), !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3042, metadata !592), !dbg !3063
  %3 = icmp eq i64 %1, 0, !dbg !3064
  %4 = icmp ne i8* %0, null, !dbg !3065
  %5 = and i1 %4, %3, !dbg !3066
  br i1 %5, label %6, label %7, !dbg !3066

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !3067
  br label %13, !dbg !3068

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !3069
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3037, metadata !592), !dbg !3062
  %9 = icmp eq i8* %8, null, !dbg !3070
  %10 = icmp ne i64 %1, 0, !dbg !3071
  %11 = and i1 %10, %9, !dbg !3072
  br i1 %11, label %12, label %13, !dbg !3072

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3073
  unreachable, !dbg !3073

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3074
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !552 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !557, metadata !592), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !558, metadata !592), !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !559, metadata !592), !dbg !3077
  %4 = load i64, i64* %1, align 8, !dbg !3078, !tbaa !2075
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !560, metadata !592), !dbg !3079
  %5 = icmp eq i8* %0, null, !dbg !3080
  br i1 %5, label %6, label %13, !dbg !3082

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3083
  br i1 %7, label %8, label %17, !dbg !3086

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !560, metadata !592), !dbg !3079
  %10 = icmp ugt i64 %2, 128, !dbg !3089
  %11 = zext i1 %10 to i64, !dbg !3089
  %12 = add nuw nsw i64 %9, %11, !dbg !3090
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !560, metadata !592), !dbg !3079
  br label %17, !dbg !3091

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3092
  %15 = icmp ugt i64 %14, %4, !dbg !3095
  br i1 %15, label %20, label %16, !dbg !3096

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3097
  unreachable, !dbg !3097

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !560, metadata !592), !dbg !3079
  store i64 %18, i64* %1, align 8, !dbg !3098, !tbaa !2075
  %19 = mul i64 %18, %2, !dbg !3099
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3037, metadata !592) #9, !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3042, metadata !592) #9, !dbg !3102
  br label %27, !dbg !3103

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3104
  %22 = add i64 %4, 1, !dbg !3105
  %23 = add i64 %22, %21, !dbg !3106
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !560, metadata !592), !dbg !3079
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !560, metadata !592), !dbg !3079
  store i64 %23, i64* %1, align 8, !dbg !3098, !tbaa !2075
  %24 = mul i64 %23, %2, !dbg !3099
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3037, metadata !592) #9, !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3042, metadata !592) #9, !dbg !3102
  %25 = icmp eq i64 %24, 0, !dbg !3107
  br i1 %25, label %26, label %27, !dbg !3103

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !3108
  br label %34, !dbg !3109

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !3110
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3037, metadata !592) #9, !dbg !3100
  %30 = icmp eq i8* %29, null, !dbg !3111
  %31 = icmp ne i64 %28, 0, !dbg !3112
  %32 = and i1 %31, %30, !dbg !3113
  br i1 %32, label %33, label %34, !dbg !3113

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3114
  unreachable, !dbg !3114

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3115
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3116 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3118, metadata !592), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2996, metadata !592) #9, !dbg !3120
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3122
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3002, metadata !592) #9, !dbg !3123
  %3 = icmp eq i8* %2, null, !dbg !3124
  %4 = icmp ne i64 %0, 0, !dbg !3125
  %5 = and i1 %4, %3, !dbg !3126
  br i1 %5, label %6, label %7, !dbg !3126

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3127
  unreachable, !dbg !3127

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3128
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3129 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3133, metadata !592), !dbg !3135
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3134, metadata !592), !dbg !3136
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !557, metadata !592) #9, !dbg !3137
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !558, metadata !592) #9, !dbg !3139
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !559, metadata !592) #9, !dbg !3140
  %3 = load i64, i64* %1, align 8, !dbg !3141, !tbaa !2075
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !560, metadata !592) #9, !dbg !3142
  %4 = icmp eq i8* %0, null, !dbg !3143
  br i1 %4, label %5, label %8, !dbg !3144

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3145
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !560, metadata !592) #9, !dbg !3142
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !560, metadata !592) #9, !dbg !3142
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3146
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !560, metadata !592) #9, !dbg !3142
  store i64 %7, i64* %1, align 8, !dbg !3147, !tbaa !2075
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3037, metadata !592) #9, !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3042, metadata !592) #9, !dbg !3150
  br label %17, !dbg !3151

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3152
  br i1 %9, label %11, label %10, !dbg !3153

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3154
  unreachable, !dbg !3154

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3155
  %13 = add i64 %3, 1, !dbg !3156
  %14 = add i64 %13, %12, !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !560, metadata !592) #9, !dbg !3142
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !560, metadata !592) #9, !dbg !3142
  store i64 %14, i64* %1, align 8, !dbg !3147, !tbaa !2075
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3037, metadata !592) #9, !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3042, metadata !592) #9, !dbg !3150
  %15 = icmp eq i64 %14, 0, !dbg !3158
  br i1 %15, label %16, label %17, !dbg !3151

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !3159
  br label %24, !dbg !3160

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !3161
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3037, metadata !592) #9, !dbg !3148
  %20 = icmp eq i8* %19, null, !dbg !3162
  %21 = icmp ne i64 %18, 0, !dbg !3163
  %22 = and i1 %21, %20, !dbg !3164
  br i1 %22, label %23, label %24, !dbg !3164

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3165
  unreachable, !dbg !3165

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3166
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3167 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3169, metadata !592), !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2996, metadata !592) #9, !dbg !3171
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3173
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3002, metadata !592) #9, !dbg !3174
  %3 = icmp eq i8* %2, null, !dbg !3175
  %4 = icmp ne i64 %0, 0, !dbg !3176
  %5 = and i1 %4, %3, !dbg !3177
  br i1 %5, label %6, label %7, !dbg !3177

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3178
  unreachable, !dbg !3178

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3179
  ret i8* %2, !dbg !3180
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3181 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3183, metadata !592), !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3184, metadata !592), !dbg !3187
  %3 = udiv i64 9223372036854775807, %1, !dbg !3188
  %4 = icmp ult i64 %3, %0, !dbg !3188
  br i1 %4, label %8, label %5, !dbg !3190

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3191
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3185, metadata !592), !dbg !3193
  %7 = icmp eq i8* %6, null, !dbg !3194
  br i1 %7, label %8, label %9, !dbg !3195

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3197
  unreachable, !dbg !3197

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3198
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3199 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3203, metadata !592), !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3204, metadata !592), !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2996, metadata !592) #9, !dbg !3207
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3209
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3002, metadata !592) #9, !dbg !3210
  %4 = icmp eq i8* %3, null, !dbg !3211
  %5 = icmp ne i64 %1, 0, !dbg !3212
  %6 = and i1 %5, %4, !dbg !3213
  br i1 %6, label %7, label %8, !dbg !3213

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3214
  unreachable, !dbg !3214

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3215
  ret i8* %3, !dbg !3216
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3217 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3219, metadata !592), !dbg !3220
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3221
  %3 = add i64 %2, 1, !dbg !3222
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3203, metadata !592) #9, !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3204, metadata !592) #9, !dbg !3226
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2996, metadata !592) #9, !dbg !3227
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3229
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3002, metadata !592) #9, !dbg !3230
  %5 = icmp eq i8* %4, null, !dbg !3231
  %6 = icmp ne i64 %3, 0, !dbg !3232
  %7 = and i1 %6, %5, !dbg !3233
  br i1 %7, label %8, label %9, !dbg !3233

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3234
  unreachable, !dbg !3234

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3235
  ret i8* %4, !dbg !3236
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3237 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3239, !tbaa !664
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.85, i64 0, i64 0), i32 5) #9, !dbg !3240
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i8* %2) #9, !dbg !3241
  tail call void @abort() #14, !dbg !3243
  unreachable, !dbg !3243
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3244 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3247, metadata !592), !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3248, metadata !592), !dbg !3254
  %3 = icmp eq i64 %0, 0, !dbg !3255
  %4 = icmp eq i64 %1, 0, !dbg !3256
  %5 = or i1 %3, %4, !dbg !3258
  br i1 %5, label %12, label %6, !dbg !3258

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3250, metadata !592), !dbg !3260
  %8 = udiv i64 %7, %1, !dbg !3261
  %9 = icmp eq i64 %8, %0, !dbg !3263
  br i1 %9, label %12, label %10, !dbg !3264

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3265
  store i32 12, i32* %11, align 4, !dbg !3267, !tbaa !664
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3247, metadata !592), !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3248, metadata !592), !dbg !3254
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3268
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3249, metadata !592), !dbg !3269
  br label %16, !dbg !3270

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3271
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3272 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3289, metadata !592), !dbg !3298
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3290, metadata !592), !dbg !3299
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3291, metadata !592), !dbg !3300
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3292, metadata !592), !dbg !3301
  %6 = bitcast i32* %5 to i8*, !dbg !3302
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9, !dbg !3302
  %7 = icmp eq i32* %0, null, !dbg !3303
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3289, metadata !592), !dbg !3298
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3305
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3289, metadata !592), !dbg !3298
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3293, metadata !592), !dbg !3307
  %10 = icmp ugt i64 %9, -3, !dbg !3308
  %11 = icmp ne i64 %2, 0, !dbg !3309
  %12 = and i1 %11, %10, !dbg !3311
  br i1 %12, label %13, label %18, !dbg !3311

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3312
  br i1 %14, label %18, label %15, !dbg !3314

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3316, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3295, metadata !592), !dbg !3317
  %17 = zext i8 %16 to i32, !dbg !3318
  store i32 %17, i32* %8, align 4, !dbg !3319, !tbaa !664
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9, !dbg !3320
  ret i64 %19, !dbg !3320
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3321 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3366, metadata !592), !dbg !3371
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3372
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3373, metadata !592), !dbg !3377
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3379
  %4 = load i32, i32* %3, align 8, !dbg !3379, !tbaa !3380
  %5 = and i32 %4, 32, !dbg !3379
  %6 = icmp eq i32 %5, 0, !dbg !3382
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3383
  %8 = icmp ne i32 %7, 0, !dbg !3384
  br i1 %6, label %9, label %19, !dbg !3385

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3387
  %11 = icmp ne i64 %2, 0, !dbg !3387
  %12 = or i1 %11, %10, !dbg !3387
  %13 = sext i1 %8 to i32, !dbg !3387
  br i1 %12, label %22, label %14, !dbg !3387

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3389
  %16 = load i32, i32* %15, align 4, !dbg !3389, !tbaa !664
  %17 = icmp ne i32 %16, 9, !dbg !3391
  %18 = sext i1 %17 to i32, !dbg !3391
  br label %22, !dbg !3391

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3393

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3395
  store i32 0, i32* %21, align 4, !dbg !3397, !tbaa !664
  br label %22, !dbg !3395

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3398
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3399 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3404, metadata !592), !dbg !3424
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3405, metadata !592), !dbg !3425
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3426
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3406, metadata !592), !dbg !3427
  %3 = icmp eq i8* %2, null, !dbg !3428
  br i1 %3, label %15, label %4, !dbg !3429

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3414, metadata !592), !dbg !3430
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3415, metadata !592), !dbg !3431
  %5 = load i8, i8* %2, align 1, !dbg !3432, !tbaa !1061
  %6 = icmp eq i8 %5, 67, !dbg !3434
  br i1 %6, label %7, label %11, !dbg !3437

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3439
  %9 = load i8, i8* %8, align 1, !dbg !3439, !tbaa !1061
  %10 = icmp eq i8 %9, 0, !dbg !3442
  br i1 %10, label %14, label %11, !dbg !3444

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3420, metadata !592), !dbg !3446
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.95, i64 0, i64 0)) #9, !dbg !3447
  %13 = icmp eq i32 %12, 0, !dbg !3449
  br i1 %13, label %14, label %15, !dbg !3451

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3405, metadata !592), !dbg !3425
  br label %15, !dbg !3453

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3454
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3455 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3467, metadata !592), !dbg !3541
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3534, metadata !592), !dbg !3543
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3544
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3459, metadata !592), !dbg !3545
  %4 = icmp eq i8* %3, null, !dbg !3546
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), i8* %3, !dbg !3548
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3459, metadata !592), !dbg !3545
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3549, !tbaa !600
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3481, metadata !592) #9, !dbg !3550
  %7 = icmp eq i8* %6, null, !dbg !3551
  br i1 %7, label %8, label %127, !dbg !3552

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.99, i64 0, i64 0)) #9, !dbg !3553
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3482, metadata !592) #9, !dbg !3554
  %10 = icmp eq i8* %9, null, !dbg !3555
  br i1 %10, label %14, label %11, !dbg !3557

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3558, !tbaa !1061
  %13 = icmp eq i8 %12, 0, !dbg !3560
  br i1 %13, label %14, label %15, !dbg !3561

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3563

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.100, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3482, metadata !592) #9, !dbg !3554
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3485, metadata !592) #9, !dbg !3565
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3487, metadata !592) #9, !dbg !3566
  %18 = icmp eq i64 %17, 0, !dbg !3567
  br i1 %18, label %24, label %19, !dbg !3568

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3569
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3569
  %22 = load i8, i8* %21, align 1, !dbg !3569, !tbaa !1061
  %23 = icmp ne i8 %22, 47, !dbg !3571
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3572
  %27 = add i64 %17, 14, !dbg !3573
  %28 = add i64 %27, %26, !dbg !3574
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3575
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3484, metadata !592) #9, !dbg !3576
  %30 = icmp eq i8* %29, null, !dbg !3577
  br i1 %30, label %125, label %31, !dbg !3577

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3578
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3581

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3582, !tbaa !1061
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3584
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.101, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3585
  br label %37, !dbg !3586

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3584
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.101, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3585
  br label %37, !dbg !3586

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3587
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3489, metadata !592) #9, !dbg !3588
  %39 = icmp slt i32 %38, 0, !dbg !3589
  br i1 %39, label %123, label %40, !dbg !3590

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i64 0, i64 0)) #9, !dbg !3591
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3490, metadata !592) #9, !dbg !3592
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3593
  br i1 %42, label %48, label %43, !dbg !3594

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3595

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9, !dbg !3596
  br label %123, !dbg !3598

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3531, metadata !592) #9, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3532, metadata !592) #9, !dbg !3599
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9, !dbg !3600
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9, !dbg !3601
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3602, metadata !592) #9, !dbg !3607
  %53 = load i8*, i8** %46, align 8, !dbg !3609, !tbaa !3610
  %54 = load i8*, i8** %47, align 8, !dbg !3609, !tbaa !3611
  %55 = icmp ult i8* %53, %54, !dbg !3609
  br i1 %55, label %58, label %56, !dbg !3609, !prof !3612

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3613
  br label %62, !dbg !3613

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3615
  store i8* %59, i8** %46, align 8, !dbg !3615, !tbaa !3610
  %60 = load i8, i8* %53, align 1, !dbg !3615, !tbaa !1061
  %61 = zext i8 %60 to i32, !dbg !3615
  br label %62, !dbg !3615

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3617
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3533, metadata !592) #9, !dbg !3619
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3620

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3621

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3602, metadata !592) #9, !dbg !3621
  %66 = load i8*, i8** %46, align 8, !dbg !3625, !tbaa !3610
  %67 = load i8*, i8** %47, align 8, !dbg !3625, !tbaa !3611
  %68 = icmp ult i8* %66, %67, !dbg !3625
  br i1 %68, label %71, label %69, !dbg !3625, !prof !3612

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3626
  br label %75, !dbg !3626

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3627
  store i8* %72, i8** %46, align 8, !dbg !3627, !tbaa !3610
  %73 = load i8, i8* %66, align 1, !dbg !3627, !tbaa !1061
  %74 = zext i8 %73 to i32, !dbg !3627
  br label %75, !dbg !3627

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3628
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3533, metadata !592) #9, !dbg !3619
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3629, !llvm.loop !3631

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9, !dbg !3634
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.103, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9, !dbg !3635
  %80 = icmp slt i32 %79, 2, !dbg !3637
  br i1 %80, label %115, label %81, !dbg !3638

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3538, metadata !592) #9, !dbg !3640
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3641
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3539, metadata !592) #9, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3540, metadata !592) #9, !dbg !3643
  %84 = icmp eq i64 %51, 0, !dbg !3644
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3646

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3532, metadata !592) #9, !dbg !3599
  %89 = add i64 %86, 2, !dbg !3647
  %90 = call noalias i8* @malloc(i64 %89) #9, !dbg !3649
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3531, metadata !592) #9, !dbg !3595
  br label %95, !dbg !3650

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3651
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3532, metadata !592) #9, !dbg !3599
  %93 = add i64 %92, 1, !dbg !3653
  %94 = call i8* @realloc(i8* %52, i64 %93) #9, !dbg !3654
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3531, metadata !592) #9, !dbg !3595
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3531, metadata !592) #9, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3532, metadata !592) #9, !dbg !3599
  %98 = icmp eq i8* %97, null, !dbg !3655
  br i1 %98, label %99, label %100, !dbg !3657

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3532, metadata !592) #9, !dbg !3599
  call void @free(i8* %52) #9, !dbg !3658
  br label %116, !dbg !3660

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3661
  %102 = xor i64 %83, -1, !dbg !3662
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3662
  %104 = xor i64 %82, -1, !dbg !3663
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3663
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3664, metadata !592) #9, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3672, metadata !592) #9, !dbg !3673
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9, !dbg !3675
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3664, metadata !592) #9, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3672, metadata !592) #9, !dbg !3677
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9, !dbg !3679
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9, !dbg !3680
  br label %111, !dbg !3681

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3595

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3531, metadata !592) #9, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3532, metadata !592) #9, !dbg !3599
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3681
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3681
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3595

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3595

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3531, metadata !592) #9, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3532, metadata !592) #9, !dbg !3599
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3681
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3681
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3682
  %120 = icmp eq i64 %117, 0, !dbg !3683
  br i1 %120, label %123, label %121, !dbg !3685

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3686
  store i8 0, i8* %122, align 1, !dbg !3688, !tbaa !1061
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3481, metadata !592) #9, !dbg !3550
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3481, metadata !592) #9, !dbg !3550
  call void @free(i8* %29) #9, !dbg !3689
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3481, metadata !592) #9, !dbg !3550
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3690, !tbaa !600
  br label %127, !dbg !3691

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3460, metadata !592), !dbg !3692
  %129 = load i8, i8* %128, align 1, !dbg !3693, !tbaa !1061
  %130 = icmp eq i8 %129, 0, !dbg !3694
  br i1 %130, label %157, label %131, !dbg !3695

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3697

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9, !dbg !3697
  %136 = icmp eq i32 %135, 0, !dbg !3698
  br i1 %136, label %143, label %137, !dbg !3699

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3700
  br i1 %138, label %139, label %147, !dbg !3702

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3703
  %141 = load i8, i8* %140, align 1, !dbg !3703, !tbaa !1061
  %142 = icmp eq i8 %141, 0, !dbg !3705
  br i1 %142, label %143, label %147, !dbg !3706

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3708
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3710
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3711
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3459, metadata !592), !dbg !3545
  br label %157, !dbg !3712

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3713
  %149 = add i64 %148, 1, !dbg !3714
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3715
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3460, metadata !592), !dbg !3692
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3716
  %152 = add i64 %151, 1, !dbg !3717
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3718
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3460, metadata !592), !dbg !3692
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3460, metadata !592), !dbg !3692
  %154 = load i8, i8* %153, align 1, !dbg !3693, !tbaa !1061
  %155 = icmp eq i8 %154, 0, !dbg !3694
  br i1 %155, label %156, label %132, !dbg !3695, !llvm.loop !3719

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3545

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3459, metadata !592), !dbg !3545
  %159 = load i8, i8* %158, align 1, !dbg !3722, !tbaa !1061
  %160 = icmp eq i8 %159, 0, !dbg !3724
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.104, i64 0, i64 0), i8* %158, !dbg !3725
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3459, metadata !592), !dbg !3545
  ret i8* %161, !dbg !3726
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3727 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3772, metadata !592), !dbg !3776
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3773, metadata !592), !dbg !3777
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3775, metadata !592), !dbg !3778
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3779
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3774, metadata !592), !dbg !3780
  %3 = icmp slt i32 %2, 0, !dbg !3781
  br i1 %3, label %4, label %6, !dbg !3783

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3784
  br label %24, !dbg !3785

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3786
  %8 = icmp eq i32 %7, 0, !dbg !3786
  br i1 %8, label %13, label %9, !dbg !3788

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3789
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3791
  %12 = icmp eq i64 %11, -1, !dbg !3793
  br i1 %12, label %16, label %13, !dbg !3794

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3795
  %15 = icmp eq i32 %14, 0, !dbg !3795
  br i1 %15, label %16, label %18, !dbg !3796

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3773, metadata !592), !dbg !3777
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3798
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3775, metadata !592), !dbg !3778
  br label %24, !dbg !3799

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3800
  %20 = load i32, i32* %19, align 4, !dbg !3800, !tbaa !664
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3773, metadata !592), !dbg !3777
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3773, metadata !592), !dbg !3777
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3798
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3775, metadata !592), !dbg !3778
  %22 = icmp eq i32 %20, 0, !dbg !3801
  br i1 %22, label %24, label %23, !dbg !3799

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3803, !tbaa !664
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3775, metadata !592), !dbg !3778
  br label %24, !dbg !3805

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3806
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3807 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3852, metadata !592), !dbg !3853
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3854
  br i1 %2, label %6, label %3, !dbg !3856

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3857
  %5 = icmp eq i32 %4, 0, !dbg !3857
  br i1 %5, label %6, label %8, !dbg !3859

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3861
  br label %17, !dbg !3862

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3863, metadata !592) #9, !dbg !3868
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3870
  %10 = load i32, i32* %9, align 8, !dbg !3870, !tbaa !3380
  %11 = and i32 %10, 256, !dbg !3872
  %12 = icmp eq i32 %11, 0, !dbg !3872
  br i1 %12, label %15, label %13, !dbg !3873

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3874
  br label %15, !dbg !3874

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3875
  br label %17, !dbg !3876

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3877
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3878 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3924, metadata !592), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3925, metadata !592), !dbg !3931
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3926, metadata !592), !dbg !3932
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3933
  %5 = load i8*, i8** %4, align 8, !dbg !3933, !tbaa !3611
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3934
  %7 = load i8*, i8** %6, align 8, !dbg !3934, !tbaa !3610
  %8 = icmp eq i8* %5, %7, !dbg !3935
  br i1 %8, label %9, label %28, !dbg !3936

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3937
  %11 = load i8*, i8** %10, align 8, !dbg !3937, !tbaa !3939
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3940
  %13 = load i8*, i8** %12, align 8, !dbg !3940, !tbaa !3941
  %14 = icmp eq i8* %11, %13, !dbg !3942
  br i1 %14, label %15, label %28, !dbg !3943

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3944
  %17 = load i8*, i8** %16, align 8, !dbg !3944, !tbaa !3945
  %18 = icmp eq i8* %17, null, !dbg !3946
  br i1 %18, label %19, label %28, !dbg !3947

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3949
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3950
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3927, metadata !592), !dbg !3952
  %22 = icmp eq i64 %21, -1, !dbg !3953
  br i1 %22, label %30, label %23, !dbg !3955

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3956
  %25 = load i32, i32* %24, align 8, !dbg !3957, !tbaa !3380
  %26 = and i32 %25, -17, !dbg !3957
  store i32 %26, i32* %24, align 8, !dbg !3957, !tbaa !3380
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3958
  store i64 %21, i64* %27, align 8, !dbg !3959, !tbaa !3960
  br label %30, !dbg !3961

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3962
  br label %30, !dbg !3963

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3964
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

!llvm.dbg.cu = !{!2, !72, !78, !86, !93, !100, !539, !184, !547, !564, !566, !568, !571, !573, !193, !576, !578, !580}
!llvm.ident = !{!582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582, !582}
!llvm.module.flags = !{!583, !584, !585, !586}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "silent", scope: !2, file: !3, line: 46, type: !69, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !9, globals: !23)
!3 = !DIFile(filename: "src/tty.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 34, size: 32, elements: !6)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "TTY_FAILURE", value: 2)
!8 = !DIEnumerator(name: "TTY_WRITE_ERROR", value: 3)
!9 = !{!10, !12, !13, !16, !18, !21}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 62, baseType: !15)
!14 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!15 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!23 = !{!0, !24, !55}
!24 = !DIGlobalVariableExpression(var: !25)
!25 = distinct !DIGlobalVariable(name: "infomap", scope: !26, file: !27, line: 632, type: !52, isLocal: true, isDefinition: true)
!26 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !27, file: !27, line: 630, type: !28, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !30)
!27 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!28 = !DISubroutineType(types: !29)
!29 = !{null, !21}
!30 = !{!31, !32, !33, !40, !42, !43, !44, !47, !48, !50}
!31 = !DILocalVariable(name: "program", arg: 1, scope: !26, file: !27, line: 630, type: !21)
!32 = !DILocalVariable(name: "node", scope: !26, file: !27, line: 642, type: !21)
!33 = !DILocalVariable(name: "map_prog", scope: !26, file: !27, line: 643, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !26, file: !27, line: 632, size: 128, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !36, file: !27, line: 632, baseType: !21, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !36, file: !27, line: 632, baseType: !21, size: 64, offset: 64)
!40 = !DILocalVariable(name: "__s1_len", scope: !41, file: !27, line: 645, type: !13)
!41 = distinct !DILexicalBlock(scope: !26, file: !27, line: 645, column: 33)
!42 = !DILocalVariable(name: "__s2_len", scope: !41, file: !27, line: 645, type: !13)
!43 = !DILocalVariable(name: "lc_messages", scope: !26, file: !27, line: 655, type: !21)
!44 = !DILocalVariable(name: "__s1_len", scope: !45, file: !27, line: 656, type: !13)
!45 = distinct !DILexicalBlock(scope: !46, file: !27, line: 656, column: 22)
!46 = distinct !DILexicalBlock(scope: !26, file: !27, line: 656, column: 7)
!47 = !DILocalVariable(name: "__s2_len", scope: !45, file: !27, line: 656, type: !13)
!48 = !DILocalVariable(name: "__s2", scope: !49, file: !27, line: 656, type: !18)
!49 = distinct !DILexicalBlock(scope: !45, file: !27, line: 656, column: 22)
!50 = !DILocalVariable(name: "__result", scope: !49, file: !27, line: 656, type: !51)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 896, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 7)
!55 = !DIGlobalVariableExpression(var: !56)
!56 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 48, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1280, elements: !67)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !60, line: 104, size: 256, elements: !61)
!60 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!61 = !{!62, !63, !64, !66}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !60, line: 106, baseType: !21, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !59, file: !60, line: 109, baseType: !51, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !59, file: !60, line: 110, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !59, file: !60, line: 111, baseType: !51, size: 32, offset: 192)
!67 = !{!68}
!68 = !DISubrange(count: 5)
!69 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!70 = !DIGlobalVariableExpression(var: !71)
!71 = distinct !DIGlobalVariable(name: "Version", scope: !72, file: !73, line: 2, type: !21, isLocal: false, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, globals: !75)
!73 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !{}
!75 = !{!70}
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "file_name", scope: !78, file: !83, line: 36, type: !21, isLocal: true, isDefinition: true)
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, globals: !80)
!79 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!80 = !{!76, !81}
!81 = !DIGlobalVariableExpression(var: !82)
!82 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !78, file: !83, line: 46, type: !69, isLocal: true, isDefinition: true)
!83 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !DIGlobalVariableExpression(var: !85)
!85 = distinct !DIGlobalVariable(name: "exit_failure", scope: !86, file: !89, line: 24, type: !90, isLocal: false, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, globals: !88)
!87 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{!84}
!89 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!90 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "program_name", scope: !93, file: !97, line: 33, type: !21, isLocal: false, isDefinition: true)
!93 = distinct !DICompileUnit(language: DW_LANG_C99, file: !94, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !95, globals: !96)
!94 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !{!12, !10}
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
!137 = !{!51, !138, !13, !10}
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
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !142, line: 63, baseType: !51, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !149, file: !142, line: 67, baseType: !154, size: 256, offset: 64)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !156)
!155 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!156 = !{!157}
!157 = !DISubrange(count: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !149, file: !142, line: 70, baseType: !21, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !149, file: !142, line: 73, baseType: !21, size: 64, offset: 384)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !100, file: !142, line: 108, type: !149, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "slot0", scope: !100, file: !142, line: 834, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 256)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "slotvec", scope: !100, file: !142, line: 837, type: !169, isLocal: true, isDefinition: true)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !142, line: 826, size: 128, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !170, file: !142, line: 828, baseType: !13, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !170, file: !142, line: 829, baseType: !10, size: 64, offset: 64)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "nslots", scope: !100, file: !142, line: 835, type: !51, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "slotvec0", scope: !100, file: !142, line: 836, type: !170, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 704, elements: !180)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!180 = !{!181}
!181 = !DISubrange(count: 11)
!182 = !DIGlobalVariableExpression(var: !183)
!183 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !184, file: !187, line: 26, type: !188, isLocal: false, isDefinition: true)
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, globals: !186)
!185 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !{!182}
!187 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 376, elements: !189)
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
!534 = !{!12, !10, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!536 = !{!191}
!537 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!538 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!539 = distinct !DICompileUnit(language: DW_LANG_C99, file: !540, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !541, retainedTypes: !546)
!540 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!541 = !{!542}
!542 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !543, line: 41, size: 32, elements: !544)
!543 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = !{!545}
!545 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!546 = !{!12}
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !549, retainedTypes: !563)
!548 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = !{!550}
!550 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !552, file: !551, line: 192, size: 32, elements: !561)
!551 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = distinct !DISubprogram(name: "x2nrealloc", scope: !551, file: !551, line: 180, type: !553, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !556)
!553 = !DISubroutineType(types: !554)
!554 = !{!12, !12, !555, !13}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!556 = !{!557, !558, !559, !560}
!557 = !DILocalVariable(name: "p", arg: 1, scope: !552, file: !551, line: 180, type: !12)
!558 = !DILocalVariable(name: "pn", arg: 2, scope: !552, file: !551, line: 180, type: !555)
!559 = !DILocalVariable(name: "s", arg: 3, scope: !552, file: !551, line: 180, type: !13)
!560 = !DILocalVariable(name: "n", scope: !552, file: !551, line: 182, type: !13)
!561 = !{!562}
!562 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!563 = !{!13, !10, !12}
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74)
!565 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !546)
!567 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !570)
!569 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = !{!13}
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74)
!572 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !575)
!574 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = !{!13, !16, !18, !21}
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74)
!577 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !546)
!579 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !546)
!581 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!583 = !{i32 2, !"Dwarf Version", i32 4}
!584 = !{i32 2, !"Debug Info Version", i32 3}
!585 = !{i32 1, !"PIC Level", i32 2}
!586 = !{i32 1, !"PIE Level", i32 2}
!587 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 58, type: !588, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !590)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !51}
!590 = !{!591}
!591 = !DILocalVariable(name: "status", arg: 1, scope: !587, file: !3, line: 58, type: !51)
!592 = !DIExpression()
!593 = !DILocation(line: 58, column: 12, scope: !587)
!594 = !DILocation(line: 60, column: 14, scope: !595)
!595 = distinct !DILexicalBlock(scope: !587, file: !3, line: 60, column: 7)
!596 = !DILocation(line: 60, column: 7, scope: !587)
!597 = !DILocation(line: 61, column: 5, scope: !598)
!598 = !DILexicalBlockFile(scope: !599, file: !3, discriminator: 1)
!599 = distinct !DILexicalBlock(scope: !595, file: !3, line: 61, column: 5)
!600 = !{!601, !601, i64 0}
!601 = !{!"any pointer", !602, i64 0}
!602 = !{!"omnipotent char", !603, i64 0}
!603 = !{!"Simple C/C++ TBAA"}
!604 = !DILocation(line: 61, column: 5, scope: !605)
!605 = !DILexicalBlockFile(scope: !599, file: !3, discriminator: 3)
!606 = !DILocation(line: 61, column: 5, scope: !607)
!607 = !DILexicalBlockFile(scope: !599, file: !3, discriminator: 2)
!608 = !DILocation(line: 64, column: 7, scope: !609)
!609 = distinct !DILexicalBlock(scope: !595, file: !3, line: 63, column: 5)
!610 = !DILocation(line: 64, column: 7, scope: !611)
!611 = !DILexicalBlockFile(scope: !609, file: !3, discriminator: 1)
!612 = !DILocation(line: 65, column: 7, scope: !609)
!613 = !DILocation(line: 65, column: 7, scope: !611)
!614 = !DILocation(line: 70, column: 7, scope: !609)
!615 = !DILocation(line: 70, column: 7, scope: !611)
!616 = !DILocation(line: 71, column: 7, scope: !609)
!617 = !DILocation(line: 71, column: 7, scope: !611)
!618 = !DILocation(line: 642, column: 15, scope: !26, inlinedAt: !619)
!619 = distinct !DILocation(line: 72, column: 7, scope: !609)
!620 = !DILocation(line: 651, column: 3, scope: !26, inlinedAt: !619)
!621 = !DILocation(line: 651, column: 3, scope: !622, inlinedAt: !619)
!622 = !DILexicalBlockFile(scope: !26, file: !27, discriminator: 1)
!623 = !DILocation(line: 655, column: 29, scope: !26, inlinedAt: !619)
!624 = !DILocation(line: 655, column: 15, scope: !26, inlinedAt: !619)
!625 = !DILocation(line: 656, column: 7, scope: !46, inlinedAt: !619)
!626 = !DILocation(line: 656, column: 19, scope: !46, inlinedAt: !619)
!627 = !DILocation(line: 656, column: 22, scope: !628, inlinedAt: !619)
!628 = !DILexicalBlockFile(scope: !46, file: !27, discriminator: 16)
!629 = !DILocation(line: 656, column: 7, scope: !630, inlinedAt: !619)
!630 = !DILexicalBlockFile(scope: !26, file: !27, discriminator: 16)
!631 = !DILocation(line: 662, column: 7, scope: !632, inlinedAt: !619)
!632 = distinct !DILexicalBlock(scope: !46, file: !27, line: 657, column: 5)
!633 = !DILocation(line: 662, column: 7, scope: !634, inlinedAt: !619)
!634 = !DILexicalBlockFile(scope: !632, file: !27, discriminator: 1)
!635 = !DILocation(line: 664, column: 5, scope: !632, inlinedAt: !619)
!636 = !DILocation(line: 665, column: 3, scope: !26, inlinedAt: !619)
!637 = !DILocation(line: 665, column: 3, scope: !622, inlinedAt: !619)
!638 = !DILocation(line: 667, column: 3, scope: !26, inlinedAt: !619)
!639 = !DILocation(line: 667, column: 3, scope: !622, inlinedAt: !619)
!640 = !DILocation(line: 74, column: 3, scope: !587)
!641 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 78, type: !642, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !645)
!642 = !DISubroutineType(types: !643)
!643 = !{!51, !51, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!645 = !{!646, !647, !648, !649}
!646 = !DILocalVariable(name: "argc", arg: 1, scope: !641, file: !3, line: 78, type: !51)
!647 = !DILocalVariable(name: "argv", arg: 2, scope: !641, file: !3, line: 78, type: !644)
!648 = !DILocalVariable(name: "tty", scope: !641, file: !3, line: 80, type: !10)
!649 = !DILocalVariable(name: "optc", scope: !641, file: !3, line: 81, type: !51)
!650 = !DILocation(line: 78, column: 11, scope: !641)
!651 = !DILocation(line: 78, column: 24, scope: !641)
!652 = !DILocation(line: 84, column: 21, scope: !641)
!653 = !DILocation(line: 84, column: 3, scope: !641)
!654 = !DILocation(line: 85, column: 3, scope: !641)
!655 = !DILocation(line: 86, column: 3, scope: !641)
!656 = !DILocation(line: 87, column: 3, scope: !641)
!657 = !DILocalVariable(name: "status", arg: 1, scope: !658, file: !27, line: 99, type: !51)
!658 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !27, file: !27, line: 99, type: !588, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !659)
!659 = !{!657}
!660 = !DILocation(line: 99, column: 30, scope: !658, inlinedAt: !661)
!661 = distinct !DILocation(line: 89, column: 3, scope: !641)
!662 = !DILocation(line: 102, column: 18, scope: !663, inlinedAt: !661)
!663 = distinct !DILexicalBlock(scope: !658, file: !27, line: 101, column: 7)
!664 = !{!665, !665, i64 0}
!665 = !{!"int", !602, i64 0}
!666 = !DILocation(line: 90, column: 3, scope: !641)
!667 = !DILocation(line: 94, column: 3, scope: !641)
!668 = !{!669, !669, i64 0}
!669 = !{!"_Bool", !602, i64 0}
!670 = !DILocation(line: 94, column: 18, scope: !671)
!671 = !DILexicalBlockFile(scope: !641, file: !3, discriminator: 1)
!672 = !DILocation(line: 81, column: 7, scope: !641)
!673 = !DILocation(line: 94, column: 3, scope: !671)
!674 = !DILocation(line: 102, column: 9, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 97, column: 9)
!676 = distinct !DILexicalBlock(scope: !641, file: !3, line: 95, column: 5)
!677 = !DILocation(line: 104, column: 9, scope: !675)
!678 = !DILocation(line: 104, column: 9, scope: !679)
!679 = !DILexicalBlockFile(scope: !675, file: !3, discriminator: 1)
!680 = !DILocation(line: 107, column: 11, scope: !675)
!681 = !DILocation(line: 111, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !641, file: !3, line: 111, column: 7)
!683 = !DILocation(line: 111, column: 14, scope: !682)
!684 = !DILocation(line: 111, column: 7, scope: !641)
!685 = !DILocation(line: 112, column: 18, scope: !682)
!686 = !DILocation(line: 112, column: 53, scope: !682)
!687 = !DILocation(line: 112, column: 48, scope: !682)
!688 = !DILocation(line: 112, column: 41, scope: !689)
!689 = !DILexicalBlockFile(scope: !682, file: !3, discriminator: 1)
!690 = !DILocation(line: 112, column: 5, scope: !691)
!691 = !DILexicalBlockFile(scope: !682, file: !3, discriminator: 2)
!692 = !DILocation(line: 112, column: 5, scope: !682)
!693 = !DILocation(line: 114, column: 9, scope: !641)
!694 = !DILocation(line: 80, column: 9, scope: !641)
!695 = !DILocation(line: 115, column: 8, scope: !696)
!696 = distinct !DILexicalBlock(scope: !641, file: !3, line: 115, column: 7)
!697 = !{i8 0, i8 2}
!698 = !DILocation(line: 115, column: 7, scope: !641)
!699 = !DILocation(line: 117, column: 11, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 117, column: 11)
!701 = distinct !DILexicalBlock(scope: !696, file: !3, line: 116, column: 5)
!702 = !DILocation(line: 117, column: 11, scope: !701)
!703 = !DILocation(line: 118, column: 9, scope: !700)
!704 = !DILocation(line: 120, column: 15, scope: !700)
!705 = !DILocation(line: 120, column: 9, scope: !706)
!706 = !DILexicalBlockFile(scope: !700, file: !3, discriminator: 1)
!707 = !DILocation(line: 123, column: 10, scope: !641)
!708 = !DILocation(line: 123, column: 3, scope: !641)
!709 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !83, file: !83, line: 41, type: !28, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !78, variables: !710)
!710 = !{!711}
!711 = !DILocalVariable(name: "file", arg: 1, scope: !709, file: !83, line: 41, type: !21)
!712 = !DILocation(line: 41, column: 41, scope: !709)
!713 = !DILocation(line: 43, column: 13, scope: !709)
!714 = !DILocation(line: 44, column: 1, scope: !709)
!715 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !83, file: !83, line: 78, type: !716, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !78, variables: !718)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !69}
!718 = !{!719}
!719 = !DILocalVariable(name: "ignore", arg: 1, scope: !715, file: !83, line: 78, type: !69)
!720 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!721 = !DILocation(line: 78, column: 37, scope: !715)
!722 = !DILocation(line: 80, column: 16, scope: !715)
!723 = !DILocation(line: 81, column: 1, scope: !715)
!724 = distinct !DISubprogram(name: "close_stdout", scope: !83, file: !83, line: 107, type: !725, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !78, variables: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{null}
!727 = !{!728}
!728 = !DILocalVariable(name: "write_error", scope: !729, file: !83, line: 112, type: !21)
!729 = distinct !DILexicalBlock(scope: !730, file: !83, line: 111, column: 5)
!730 = distinct !DILexicalBlock(scope: !724, file: !83, line: 109, column: 7)
!731 = !DILocation(line: 109, column: 21, scope: !730)
!732 = !DILocation(line: 109, column: 7, scope: !730)
!733 = !DILocation(line: 109, column: 29, scope: !730)
!734 = !DILocation(line: 110, column: 7, scope: !730)
!735 = !DILocation(line: 110, column: 12, scope: !736)
!736 = !DILexicalBlockFile(scope: !730, file: !83, discriminator: 1)
!737 = !DILocation(line: 114, column: 19, scope: !738)
!738 = distinct !DILexicalBlock(scope: !729, file: !83, line: 113, column: 11)
!739 = !DILocation(line: 110, column: 25, scope: !736)
!740 = !DILocation(line: 110, column: 28, scope: !741)
!741 = !DILexicalBlockFile(scope: !730, file: !83, discriminator: 2)
!742 = !DILocation(line: 110, column: 34, scope: !741)
!743 = !DILocation(line: 109, column: 7, scope: !744)
!744 = !DILexicalBlockFile(scope: !724, file: !83, discriminator: 1)
!745 = !DILocation(line: 112, column: 33, scope: !729)
!746 = !DILocation(line: 112, column: 19, scope: !729)
!747 = !DILocation(line: 113, column: 11, scope: !738)
!748 = !DILocation(line: 113, column: 11, scope: !729)
!749 = !DILocation(line: 114, column: 36, scope: !750)
!750 = !DILexicalBlockFile(scope: !738, file: !83, discriminator: 1)
!751 = !DILocation(line: 114, column: 9, scope: !752)
!752 = !DILexicalBlockFile(scope: !738, file: !83, discriminator: 2)
!753 = !DILocation(line: 114, column: 9, scope: !738)
!754 = !DILocation(line: 117, column: 9, scope: !750)
!755 = !DILocation(line: 119, column: 14, scope: !729)
!756 = !DILocation(line: 119, column: 7, scope: !729)
!757 = !DILocation(line: 122, column: 22, scope: !758)
!758 = distinct !DILexicalBlock(scope: !724, file: !83, line: 122, column: 8)
!759 = !DILocation(line: 122, column: 8, scope: !758)
!760 = !DILocation(line: 122, column: 30, scope: !758)
!761 = !DILocation(line: 122, column: 8, scope: !724)
!762 = !DILocation(line: 123, column: 13, scope: !758)
!763 = !DILocation(line: 123, column: 6, scope: !758)
!764 = !DILocation(line: 124, column: 1, scope: !724)
!765 = distinct !DISubprogram(name: "set_program_name", scope: !97, file: !97, line: 39, type: !28, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !93, variables: !766)
!766 = !{!767, !768, !769}
!767 = !DILocalVariable(name: "argv0", arg: 1, scope: !765, file: !97, line: 39, type: !21)
!768 = !DILocalVariable(name: "slash", scope: !765, file: !97, line: 46, type: !21)
!769 = !DILocalVariable(name: "base", scope: !765, file: !97, line: 47, type: !21)
!770 = !DILocation(line: 39, column: 31, scope: !765)
!771 = !DILocation(line: 51, column: 13, scope: !772)
!772 = distinct !DILexicalBlock(scope: !765, file: !97, line: 51, column: 7)
!773 = !DILocation(line: 51, column: 7, scope: !765)
!774 = !DILocation(line: 55, column: 14, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !97, line: 52, column: 5)
!776 = !DILocation(line: 54, column: 7, scope: !775)
!777 = !DILocation(line: 56, column: 7, scope: !775)
!778 = !DILocation(line: 59, column: 11, scope: !765)
!779 = !DILocation(line: 46, column: 15, scope: !765)
!780 = !DILocation(line: 60, column: 17, scope: !765)
!781 = !DILocation(line: 60, column: 33, scope: !782)
!782 = !DILexicalBlockFile(scope: !765, file: !97, discriminator: 1)
!783 = !DILocation(line: 60, column: 11, scope: !765)
!784 = !DILocation(line: 47, column: 15, scope: !765)
!785 = !DILocation(line: 61, column: 12, scope: !786)
!786 = distinct !DILexicalBlock(scope: !765, file: !97, line: 61, column: 7)
!787 = !DILocation(line: 61, column: 20, scope: !786)
!788 = !DILocation(line: 61, column: 25, scope: !786)
!789 = !DILocation(line: 61, column: 28, scope: !790)
!790 = !DILexicalBlockFile(scope: !786, file: !97, discriminator: 1)
!791 = !DILocation(line: 61, column: 61, scope: !790)
!792 = !DILocation(line: 61, column: 7, scope: !782)
!793 = !DILocation(line: 64, column: 11, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !97, line: 64, column: 11)
!795 = distinct !DILexicalBlock(scope: !786, file: !97, line: 62, column: 5)
!796 = !DILocation(line: 64, column: 36, scope: !794)
!797 = !DILocation(line: 64, column: 11, scope: !795)
!798 = !DILocation(line: 66, column: 24, scope: !799)
!799 = distinct !DILexicalBlock(scope: !794, file: !97, line: 65, column: 9)
!800 = !DILocation(line: 70, column: 41, scope: !799)
!801 = !DILocation(line: 72, column: 9, scope: !799)
!802 = !DILocation(line: 84, column: 16, scope: !765)
!803 = !DILocation(line: 90, column: 27, scope: !765)
!804 = !DILocation(line: 92, column: 1, scope: !765)
!805 = distinct !DISubprogram(name: "clone_quoting_options", scope: !142, file: !142, line: 114, type: !806, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !809)
!806 = !DISubroutineType(types: !807)
!807 = !{!808, !808}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!809 = !{!810, !811, !812}
!810 = !DILocalVariable(name: "o", arg: 1, scope: !805, file: !142, line: 114, type: !808)
!811 = !DILocalVariable(name: "e", scope: !805, file: !142, line: 116, type: !51)
!812 = !DILocalVariable(name: "p", scope: !805, file: !142, line: 117, type: !808)
!813 = !DILocation(line: 114, column: 48, scope: !805)
!814 = !DILocation(line: 116, column: 11, scope: !805)
!815 = !DILocation(line: 116, column: 7, scope: !805)
!816 = !DILocation(line: 117, column: 40, scope: !805)
!817 = !DILocation(line: 117, column: 40, scope: !818)
!818 = !DILexicalBlockFile(scope: !805, file: !142, discriminator: 3)
!819 = !DILocation(line: 117, column: 31, scope: !818)
!820 = !DILocation(line: 117, column: 27, scope: !805)
!821 = !DILocation(line: 119, column: 9, scope: !805)
!822 = !DILocation(line: 120, column: 3, scope: !805)
!823 = distinct !DISubprogram(name: "get_quoting_style", scope: !142, file: !142, line: 125, type: !824, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !828)
!824 = !DISubroutineType(types: !825)
!825 = !{!103, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!828 = !{!829}
!829 = !DILocalVariable(name: "o", arg: 1, scope: !823, file: !142, line: 125, type: !826)
!830 = !DILocation(line: 125, column: 50, scope: !823)
!831 = !DILocation(line: 127, column: 11, scope: !823)
!832 = !DILocation(line: 127, column: 46, scope: !833)
!833 = !DILexicalBlockFile(scope: !823, file: !142, discriminator: 3)
!834 = !{!835, !602, i64 0}
!835 = !{!"quoting_options", !602, i64 0, !665, i64 4, !602, i64 8, !601, i64 40, !601, i64 48}
!836 = !DILocation(line: 127, column: 3, scope: !833)
!837 = distinct !DISubprogram(name: "set_quoting_style", scope: !142, file: !142, line: 133, type: !838, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !808, !103}
!840 = !{!841, !842}
!841 = !DILocalVariable(name: "o", arg: 1, scope: !837, file: !142, line: 133, type: !808)
!842 = !DILocalVariable(name: "s", arg: 2, scope: !837, file: !142, line: 133, type: !103)
!843 = !DILocation(line: 133, column: 44, scope: !837)
!844 = !DILocation(line: 133, column: 66, scope: !837)
!845 = !DILocation(line: 135, column: 4, scope: !837)
!846 = !DILocation(line: 135, column: 39, scope: !847)
!847 = !DILexicalBlockFile(scope: !837, file: !142, discriminator: 3)
!848 = !DILocation(line: 135, column: 45, scope: !847)
!849 = !DILocation(line: 136, column: 1, scope: !837)
!850 = distinct !DISubprogram(name: "set_char_quoting", scope: !142, file: !142, line: 144, type: !851, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{!51, !808, !11, !51}
!853 = !{!854, !855, !856, !857, !858, !860, !861}
!854 = !DILocalVariable(name: "o", arg: 1, scope: !850, file: !142, line: 144, type: !808)
!855 = !DILocalVariable(name: "c", arg: 2, scope: !850, file: !142, line: 144, type: !11)
!856 = !DILocalVariable(name: "i", arg: 3, scope: !850, file: !142, line: 144, type: !51)
!857 = !DILocalVariable(name: "uc", scope: !850, file: !142, line: 146, type: !20)
!858 = !DILocalVariable(name: "p", scope: !850, file: !142, line: 147, type: !859)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!860 = !DILocalVariable(name: "shift", scope: !850, file: !142, line: 149, type: !51)
!861 = !DILocalVariable(name: "r", scope: !850, file: !142, line: 150, type: !51)
!862 = !DILocation(line: 144, column: 43, scope: !850)
!863 = !DILocation(line: 144, column: 51, scope: !850)
!864 = !DILocation(line: 144, column: 58, scope: !850)
!865 = !DILocation(line: 146, column: 17, scope: !850)
!866 = !DILocation(line: 148, column: 6, scope: !850)
!867 = !DILocation(line: 148, column: 62, scope: !868)
!868 = !DILexicalBlockFile(scope: !850, file: !142, discriminator: 3)
!869 = !DILocation(line: 148, column: 57, scope: !868)
!870 = !DILocation(line: 147, column: 17, scope: !850)
!871 = !DILocation(line: 149, column: 18, scope: !850)
!872 = !DILocation(line: 149, column: 15, scope: !850)
!873 = !DILocation(line: 149, column: 7, scope: !850)
!874 = !DILocation(line: 150, column: 12, scope: !850)
!875 = !DILocation(line: 150, column: 15, scope: !850)
!876 = !DILocation(line: 150, column: 25, scope: !850)
!877 = !DILocation(line: 150, column: 7, scope: !850)
!878 = !DILocation(line: 151, column: 13, scope: !850)
!879 = !DILocation(line: 151, column: 18, scope: !850)
!880 = !DILocation(line: 151, column: 23, scope: !850)
!881 = !DILocation(line: 151, column: 6, scope: !850)
!882 = !DILocation(line: 152, column: 3, scope: !850)
!883 = distinct !DISubprogram(name: "set_quoting_flags", scope: !142, file: !142, line: 160, type: !884, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !886)
!884 = !DISubroutineType(types: !885)
!885 = !{!51, !808, !51}
!886 = !{!887, !888, !889}
!887 = !DILocalVariable(name: "o", arg: 1, scope: !883, file: !142, line: 160, type: !808)
!888 = !DILocalVariable(name: "i", arg: 2, scope: !883, file: !142, line: 160, type: !51)
!889 = !DILocalVariable(name: "r", scope: !883, file: !142, line: 162, type: !51)
!890 = !DILocation(line: 160, column: 44, scope: !883)
!891 = !DILocation(line: 160, column: 51, scope: !883)
!892 = !DILocation(line: 163, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !883, file: !142, line: 163, column: 7)
!894 = !DILocation(line: 163, column: 7, scope: !883)
!895 = !DILocation(line: 165, column: 10, scope: !883)
!896 = !{!835, !665, i64 4}
!897 = !DILocation(line: 162, column: 7, scope: !883)
!898 = !DILocation(line: 166, column: 12, scope: !883)
!899 = !DILocation(line: 167, column: 3, scope: !883)
!900 = distinct !DISubprogram(name: "set_custom_quoting", scope: !142, file: !142, line: 171, type: !901, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !808, !21, !21}
!903 = !{!904, !905, !906}
!904 = !DILocalVariable(name: "o", arg: 1, scope: !900, file: !142, line: 171, type: !808)
!905 = !DILocalVariable(name: "left_quote", arg: 2, scope: !900, file: !142, line: 172, type: !21)
!906 = !DILocalVariable(name: "right_quote", arg: 3, scope: !900, file: !142, line: 172, type: !21)
!907 = !DILocation(line: 171, column: 45, scope: !900)
!908 = !DILocation(line: 172, column: 33, scope: !900)
!909 = !DILocation(line: 172, column: 57, scope: !900)
!910 = !DILocation(line: 174, column: 8, scope: !911)
!911 = distinct !DILexicalBlock(scope: !900, file: !142, line: 174, column: 7)
!912 = !DILocation(line: 174, column: 7, scope: !900)
!913 = !DILocation(line: 176, column: 6, scope: !900)
!914 = !DILocation(line: 176, column: 12, scope: !900)
!915 = !DILocation(line: 177, column: 8, scope: !916)
!916 = distinct !DILexicalBlock(scope: !900, file: !142, line: 177, column: 7)
!917 = !DILocation(line: 177, column: 23, scope: !918)
!918 = !DILexicalBlockFile(scope: !916, file: !142, discriminator: 1)
!919 = !DILocation(line: 177, column: 19, scope: !916)
!920 = !DILocation(line: 178, column: 5, scope: !916)
!921 = !DILocation(line: 179, column: 6, scope: !900)
!922 = !DILocation(line: 179, column: 17, scope: !900)
!923 = !{!835, !601, i64 40}
!924 = !DILocation(line: 180, column: 6, scope: !900)
!925 = !DILocation(line: 180, column: 18, scope: !900)
!926 = !{!835, !601, i64 48}
!927 = !DILocation(line: 181, column: 1, scope: !900)
!928 = distinct !DISubprogram(name: "quotearg_buffer", scope: !142, file: !142, line: 776, type: !929, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{!13, !10, !13, !21, !13, !826}
!931 = !{!932, !933, !934, !935, !936, !937, !938, !939}
!932 = !DILocalVariable(name: "buffer", arg: 1, scope: !928, file: !142, line: 776, type: !10)
!933 = !DILocalVariable(name: "buffersize", arg: 2, scope: !928, file: !142, line: 776, type: !13)
!934 = !DILocalVariable(name: "arg", arg: 3, scope: !928, file: !142, line: 777, type: !21)
!935 = !DILocalVariable(name: "argsize", arg: 4, scope: !928, file: !142, line: 777, type: !13)
!936 = !DILocalVariable(name: "o", arg: 5, scope: !928, file: !142, line: 778, type: !826)
!937 = !DILocalVariable(name: "p", scope: !928, file: !142, line: 780, type: !826)
!938 = !DILocalVariable(name: "e", scope: !928, file: !142, line: 781, type: !51)
!939 = !DILocalVariable(name: "r", scope: !928, file: !142, line: 782, type: !13)
!940 = !DILocation(line: 776, column: 24, scope: !928)
!941 = !DILocation(line: 776, column: 39, scope: !928)
!942 = !DILocation(line: 777, column: 30, scope: !928)
!943 = !DILocation(line: 777, column: 42, scope: !928)
!944 = !DILocation(line: 778, column: 48, scope: !928)
!945 = !DILocation(line: 780, column: 37, scope: !928)
!946 = !DILocation(line: 780, column: 33, scope: !928)
!947 = !DILocation(line: 781, column: 11, scope: !928)
!948 = !DILocation(line: 781, column: 7, scope: !928)
!949 = !DILocation(line: 783, column: 43, scope: !928)
!950 = !DILocation(line: 783, column: 53, scope: !928)
!951 = !DILocation(line: 783, column: 60, scope: !928)
!952 = !DILocation(line: 784, column: 43, scope: !928)
!953 = !DILocation(line: 784, column: 58, scope: !928)
!954 = !DILocation(line: 782, column: 14, scope: !928)
!955 = !DILocation(line: 782, column: 10, scope: !928)
!956 = !DILocation(line: 785, column: 9, scope: !928)
!957 = !DILocation(line: 786, column: 3, scope: !928)
!958 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !142, file: !142, line: 248, type: !959, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !963)
!959 = !DISubroutineType(types: !960)
!960 = !{!13, !10, !13, !21, !13, !103, !51, !961, !21, !21}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!963 = !{!964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !988, !989, !990, !991, !992, !995, !996, !1013, !1016, !1017, !1024}
!964 = !DILocalVariable(name: "buffer", arg: 1, scope: !958, file: !142, line: 248, type: !10)
!965 = !DILocalVariable(name: "buffersize", arg: 2, scope: !958, file: !142, line: 248, type: !13)
!966 = !DILocalVariable(name: "arg", arg: 3, scope: !958, file: !142, line: 249, type: !21)
!967 = !DILocalVariable(name: "argsize", arg: 4, scope: !958, file: !142, line: 249, type: !13)
!968 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !958, file: !142, line: 250, type: !103)
!969 = !DILocalVariable(name: "flags", arg: 6, scope: !958, file: !142, line: 250, type: !51)
!970 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !958, file: !142, line: 251, type: !961)
!971 = !DILocalVariable(name: "left_quote", arg: 8, scope: !958, file: !142, line: 252, type: !21)
!972 = !DILocalVariable(name: "right_quote", arg: 9, scope: !958, file: !142, line: 253, type: !21)
!973 = !DILocalVariable(name: "i", scope: !958, file: !142, line: 255, type: !13)
!974 = !DILocalVariable(name: "len", scope: !958, file: !142, line: 256, type: !13)
!975 = !DILocalVariable(name: "orig_buffersize", scope: !958, file: !142, line: 257, type: !13)
!976 = !DILocalVariable(name: "quote_string", scope: !958, file: !142, line: 258, type: !21)
!977 = !DILocalVariable(name: "quote_string_len", scope: !958, file: !142, line: 259, type: !13)
!978 = !DILocalVariable(name: "backslash_escapes", scope: !958, file: !142, line: 260, type: !69)
!979 = !DILocalVariable(name: "unibyte_locale", scope: !958, file: !142, line: 261, type: !69)
!980 = !DILocalVariable(name: "elide_outer_quotes", scope: !958, file: !142, line: 262, type: !69)
!981 = !DILocalVariable(name: "pending_shell_escape_end", scope: !958, file: !142, line: 263, type: !69)
!982 = !DILocalVariable(name: "encountered_single_quote", scope: !958, file: !142, line: 264, type: !69)
!983 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !958, file: !142, line: 265, type: !69)
!984 = !DILocalVariable(name: "c", scope: !985, file: !142, line: 394, type: !20)
!985 = distinct !DILexicalBlock(scope: !986, file: !142, line: 393, column: 5)
!986 = distinct !DILexicalBlock(scope: !987, file: !142, line: 392, column: 3)
!987 = distinct !DILexicalBlock(scope: !958, file: !142, line: 392, column: 3)
!988 = !DILocalVariable(name: "esc", scope: !985, file: !142, line: 395, type: !20)
!989 = !DILocalVariable(name: "is_right_quote", scope: !985, file: !142, line: 396, type: !69)
!990 = !DILocalVariable(name: "escaping", scope: !985, file: !142, line: 397, type: !69)
!991 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !985, file: !142, line: 398, type: !69)
!992 = !DILocalVariable(name: "m", scope: !993, file: !142, line: 602, type: !13)
!993 = distinct !DILexicalBlock(scope: !994, file: !142, line: 600, column: 11)
!994 = distinct !DILexicalBlock(scope: !985, file: !142, line: 418, column: 9)
!995 = !DILocalVariable(name: "printable", scope: !993, file: !142, line: 604, type: !69)
!996 = !DILocalVariable(name: "mbstate", scope: !997, file: !142, line: 613, type: !999)
!997 = distinct !DILexicalBlock(scope: !998, file: !142, line: 612, column: 15)
!998 = distinct !DILexicalBlock(scope: !993, file: !142, line: 606, column: 17)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1000, line: 107, baseType: !1001)
!1000 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1000, line: 95, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1000, line: 83, size: 64, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1002, file: !1000, line: 85, baseType: !51, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1002, file: !1000, line: 94, baseType: !1006, size: 32, offset: 32)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !1000, line: 86, size: 32, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1006, file: !1000, line: 89, baseType: !155, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1006, file: !1000, line: 93, baseType: !1010, size: 32)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 4)
!1013 = !DILocalVariable(name: "w", scope: !1014, file: !142, line: 623, type: !1015)
!1014 = distinct !DILexicalBlock(scope: !997, file: !142, line: 622, column: 19)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !14, line: 90, baseType: !51)
!1016 = !DILocalVariable(name: "bytes", scope: !1014, file: !142, line: 624, type: !13)
!1017 = !DILocalVariable(name: "j", scope: !1018, file: !142, line: 649, type: !13)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !142, line: 648, column: 27)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !142, line: 646, column: 29)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !142, line: 641, column: 23)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !142, line: 633, column: 30)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !142, line: 628, column: 30)
!1023 = distinct !DILexicalBlock(scope: !1014, file: !142, line: 626, column: 25)
!1024 = !DILocalVariable(name: "ilim", scope: !1025, file: !142, line: 676, type: !13)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !142, line: 673, column: 15)
!1026 = distinct !DILexicalBlock(scope: !993, file: !142, line: 672, column: 17)
!1027 = !DILocation(line: 248, column: 33, scope: !958)
!1028 = !DILocation(line: 248, column: 48, scope: !958)
!1029 = !DILocation(line: 249, column: 39, scope: !958)
!1030 = !DILocation(line: 249, column: 51, scope: !958)
!1031 = !DILocation(line: 250, column: 46, scope: !958)
!1032 = !DILocation(line: 250, column: 65, scope: !958)
!1033 = !DILocation(line: 251, column: 47, scope: !958)
!1034 = !DILocation(line: 252, column: 39, scope: !958)
!1035 = !DILocation(line: 253, column: 39, scope: !958)
!1036 = !DILocation(line: 256, column: 10, scope: !958)
!1037 = !DILocation(line: 257, column: 10, scope: !958)
!1038 = !DILocation(line: 258, column: 15, scope: !958)
!1039 = !DILocation(line: 259, column: 10, scope: !958)
!1040 = !DILocation(line: 260, column: 8, scope: !958)
!1041 = !DILocation(line: 261, column: 25, scope: !958)
!1042 = !DILocation(line: 261, column: 36, scope: !958)
!1043 = !DILocation(line: 262, column: 8, scope: !958)
!1044 = !DILocation(line: 263, column: 8, scope: !958)
!1045 = !DILocation(line: 264, column: 8, scope: !958)
!1046 = !DILocation(line: 265, column: 8, scope: !958)
!1047 = !DILocation(line: 265, column: 3, scope: !958)
!1048 = !DILocation(line: 308, column: 3, scope: !958)
!1049 = !DILocation(line: 315, column: 11, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !958, file: !142, line: 309, column: 5)
!1051 = !DILocation(line: 315, column: 12, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1050, file: !142, line: 315, column: 11)
!1053 = !DILocation(line: 316, column: 9, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1055, file: !142, discriminator: 1)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !142, line: 316, column: 9)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !142, line: 316, column: 9)
!1057 = !DILocation(line: 316, column: 9, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1056, file: !142, discriminator: 1)
!1059 = !DILocation(line: 316, column: 9, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1055, file: !142, discriminator: 2)
!1061 = !{!602, !602, i64 0}
!1062 = !DILocation(line: 354, column: 26, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !142, line: 332, column: 11)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !142, line: 331, column: 13)
!1065 = distinct !DILexicalBlock(scope: !1050, file: !142, line: 330, column: 7)
!1066 = !DILocation(line: 355, column: 27, scope: !1063)
!1067 = !DILocation(line: 356, column: 11, scope: !1063)
!1068 = !DILocation(line: 357, column: 14, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !142, line: 357, column: 13)
!1070 = !DILocation(line: 357, column: 13, scope: !1065)
!1071 = !DILocation(line: 358, column: 43, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1073, file: !142, discriminator: 1)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !142, line: 358, column: 11)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !142, line: 358, column: 11)
!1075 = !DILocation(line: 358, column: 11, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1074, file: !142, discriminator: 1)
!1077 = !DILocation(line: 359, column: 13, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1079, file: !142, discriminator: 1)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !142, line: 359, column: 13)
!1080 = distinct !DILexicalBlock(scope: !1073, file: !142, line: 359, column: 13)
!1081 = !DILocation(line: 359, column: 13, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1080, file: !142, discriminator: 1)
!1083 = !DILocation(line: 359, column: 13, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1079, file: !142, discriminator: 2)
!1085 = !DILocation(line: 359, column: 13, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1080, file: !142, discriminator: 3)
!1087 = !DILocation(line: 358, column: 70, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1073, file: !142, discriminator: 2)
!1089 = distinct !{!1089, !1090, !1091}
!1090 = !DILocation(line: 358, column: 11, scope: !1074)
!1091 = !DILocation(line: 359, column: 13, scope: !1074)
!1092 = !DILocation(line: 362, column: 28, scope: !1065)
!1093 = !DILocation(line: 364, column: 7, scope: !1050)
!1094 = !DILocation(line: 367, column: 7, scope: !1050)
!1095 = !DILocation(line: 370, column: 7, scope: !1050)
!1096 = !DILocation(line: 373, column: 12, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1050, file: !142, line: 373, column: 11)
!1098 = !DILocation(line: 373, column: 11, scope: !1050)
!1099 = !DILocation(line: 378, column: 12, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1050, file: !142, line: 378, column: 11)
!1101 = !DILocation(line: 378, column: 11, scope: !1050)
!1102 = !DILocation(line: 379, column: 9, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1104, file: !142, discriminator: 1)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !142, line: 379, column: 9)
!1105 = distinct !DILexicalBlock(scope: !1100, file: !142, line: 379, column: 9)
!1106 = !DILocation(line: 379, column: 9, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1105, file: !142, discriminator: 1)
!1108 = !DILocation(line: 379, column: 9, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1104, file: !142, discriminator: 2)
!1110 = !DILocation(line: 386, column: 7, scope: !1050)
!1111 = !DILocation(line: 389, column: 7, scope: !1050)
!1112 = !DILocation(line: 255, column: 10, scope: !958)
!1113 = !DILocation(line: 392, column: 8, scope: !987)
!1114 = !DILocation(line: 392, column: 27, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !986, file: !142, discriminator: 1)
!1116 = !DILocation(line: 392, column: 19, scope: !1115)
!1117 = !DILocation(line: 392, column: 60, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !986, file: !142, discriminator: 3)
!1119 = !DILocation(line: 392, column: 3, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !987, file: !142, discriminator: 4)
!1121 = !DILocation(line: 392, column: 41, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !986, file: !142, discriminator: 2)
!1123 = !DILocation(line: 392, column: 48, scope: !1122)
!1124 = !DILocation(line: 396, column: 12, scope: !985)
!1125 = !DILocation(line: 397, column: 12, scope: !985)
!1126 = !DILocation(line: 398, column: 12, scope: !985)
!1127 = !DILocation(line: 401, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !985, file: !142, line: 400, column: 11)
!1129 = !DILocation(line: 403, column: 17, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1128, file: !142, discriminator: 1)
!1131 = !DILocation(line: 404, column: 39, scope: !1128)
!1132 = !DILocation(line: 408, column: 32, scope: !1128)
!1133 = !DILocation(line: 404, column: 19, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1128, file: !142, discriminator: 2)
!1135 = !DILocation(line: 404, column: 15, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1128, file: !142, discriminator: 4)
!1137 = !DILocation(line: 409, column: 11, scope: !1128)
!1138 = !DILocation(line: 409, column: 26, scope: !1130)
!1139 = !DILocation(line: 409, column: 14, scope: !1130)
!1140 = !DILocation(line: 400, column: 11, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !985, file: !142, discriminator: 1)
!1142 = !DILocation(line: 416, column: 11, scope: !985)
!1143 = !DILocation(line: 394, column: 21, scope: !985)
!1144 = !DILocation(line: 417, column: 7, scope: !985)
!1145 = !DILocation(line: 420, column: 15, scope: !994)
!1146 = !DILocation(line: 422, column: 15, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1148, file: !142, discriminator: 1)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !142, line: 422, column: 15)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !142, line: 421, column: 13)
!1150 = distinct !DILexicalBlock(scope: !994, file: !142, line: 420, column: 15)
!1151 = !DILocation(line: 422, column: 15, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1153, file: !142, discriminator: 4)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !142, line: 422, column: 15)
!1154 = !DILocation(line: 422, column: 15, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1153, file: !142, discriminator: 3)
!1156 = !DILocation(line: 422, column: 15, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1158, file: !142, discriminator: 6)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !142, line: 422, column: 15)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !142, line: 422, column: 15)
!1160 = distinct !DILexicalBlock(scope: !1153, file: !142, line: 422, column: 15)
!1161 = !DILocation(line: 422, column: 15, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1159, file: !142, discriminator: 6)
!1163 = !DILocation(line: 422, column: 15, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1158, file: !142, discriminator: 7)
!1165 = !DILocation(line: 422, column: 15, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1159, file: !142, discriminator: 8)
!1167 = !DILocation(line: 422, column: 15, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1169, file: !142, discriminator: 11)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !142, line: 422, column: 15)
!1170 = distinct !DILexicalBlock(scope: !1160, file: !142, line: 422, column: 15)
!1171 = !DILocation(line: 422, column: 15, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1170, file: !142, discriminator: 11)
!1173 = !DILocation(line: 422, column: 15, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1169, file: !142, discriminator: 12)
!1175 = !DILocation(line: 422, column: 15, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1170, file: !142, discriminator: 13)
!1177 = !DILocation(line: 422, column: 15, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !142, discriminator: 16)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !142, line: 422, column: 15)
!1180 = distinct !DILexicalBlock(scope: !1160, file: !142, line: 422, column: 15)
!1181 = !DILocation(line: 422, column: 15, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1180, file: !142, discriminator: 16)
!1183 = !DILocation(line: 422, column: 15, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1179, file: !142, discriminator: 17)
!1185 = !DILocation(line: 422, column: 15, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1180, file: !142, discriminator: 18)
!1187 = !DILocation(line: 422, column: 15, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1160, file: !142, discriminator: 20)
!1189 = !DILocation(line: 422, column: 15, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1191, file: !142, discriminator: 22)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !142, line: 422, column: 15)
!1192 = distinct !DILexicalBlock(scope: !1148, file: !142, line: 422, column: 15)
!1193 = !DILocation(line: 422, column: 15, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1192, file: !142, discriminator: 22)
!1195 = !DILocation(line: 422, column: 15, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1191, file: !142, discriminator: 23)
!1197 = !DILocation(line: 422, column: 15, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1192, file: !142, discriminator: 24)
!1199 = !DILocation(line: 430, column: 19, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1149, file: !142, line: 429, column: 19)
!1201 = !DILocation(line: 430, column: 24, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1200, file: !142, discriminator: 1)
!1203 = !DILocation(line: 430, column: 28, scope: !1202)
!1204 = !DILocation(line: 430, column: 38, scope: !1202)
!1205 = !DILocation(line: 430, column: 48, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1200, file: !142, discriminator: 2)
!1207 = !DILocation(line: 430, column: 59, scope: !1206)
!1208 = !DILocation(line: 432, column: 19, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1210, file: !142, discriminator: 1)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !142, line: 432, column: 19)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !142, line: 432, column: 19)
!1212 = distinct !DILexicalBlock(scope: !1200, file: !142, line: 431, column: 17)
!1213 = !DILocation(line: 432, column: 19, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1211, file: !142, discriminator: 1)
!1215 = !DILocation(line: 432, column: 19, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1210, file: !142, discriminator: 2)
!1217 = !DILocation(line: 432, column: 19, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1211, file: !142, discriminator: 3)
!1219 = !DILocation(line: 433, column: 19, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !142, discriminator: 1)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !142, line: 433, column: 19)
!1222 = distinct !DILexicalBlock(scope: !1212, file: !142, line: 433, column: 19)
!1223 = !DILocation(line: 433, column: 19, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1222, file: !142, discriminator: 1)
!1225 = !DILocation(line: 433, column: 19, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1221, file: !142, discriminator: 2)
!1227 = !DILocation(line: 433, column: 19, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1222, file: !142, discriminator: 3)
!1229 = !DILocation(line: 434, column: 17, scope: !1212)
!1230 = !DILocation(line: 441, column: 20, scope: !1150)
!1231 = !DILocation(line: 446, column: 11, scope: !994)
!1232 = !DILocation(line: 449, column: 19, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !994, file: !142, line: 447, column: 13)
!1234 = !DILocation(line: 455, column: 19, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1233, file: !142, line: 454, column: 19)
!1236 = !DILocation(line: 455, column: 24, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1235, file: !142, discriminator: 1)
!1238 = !DILocation(line: 455, column: 28, scope: !1237)
!1239 = !DILocation(line: 455, column: 38, scope: !1237)
!1240 = !DILocation(line: 455, column: 47, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1235, file: !142, discriminator: 2)
!1242 = !DILocation(line: 455, column: 41, scope: !1241)
!1243 = !DILocation(line: 455, column: 52, scope: !1241)
!1244 = !DILocation(line: 454, column: 19, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1233, file: !142, discriminator: 1)
!1246 = !DILocation(line: 456, column: 25, scope: !1235)
!1247 = !DILocation(line: 456, column: 17, scope: !1235)
!1248 = !DILocation(line: 463, column: 25, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1235, file: !142, line: 457, column: 19)
!1250 = !DILocation(line: 467, column: 21, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1252, file: !142, discriminator: 1)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !142, line: 467, column: 21)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !142, line: 467, column: 21)
!1254 = !DILocation(line: 467, column: 21, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1253, file: !142, discriminator: 1)
!1256 = !DILocation(line: 467, column: 21, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1252, file: !142, discriminator: 2)
!1258 = !DILocation(line: 467, column: 21, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1253, file: !142, discriminator: 3)
!1260 = !DILocation(line: 468, column: 21, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1262, file: !142, discriminator: 1)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !142, line: 468, column: 21)
!1263 = distinct !DILexicalBlock(scope: !1249, file: !142, line: 468, column: 21)
!1264 = !DILocation(line: 468, column: 21, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1263, file: !142, discriminator: 1)
!1266 = !DILocation(line: 468, column: 21, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1262, file: !142, discriminator: 2)
!1268 = !DILocation(line: 468, column: 21, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1263, file: !142, discriminator: 3)
!1270 = !DILocation(line: 469, column: 21, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1272, file: !142, discriminator: 1)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !142, line: 469, column: 21)
!1273 = distinct !DILexicalBlock(scope: !1249, file: !142, line: 469, column: 21)
!1274 = !DILocation(line: 469, column: 21, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1273, file: !142, discriminator: 1)
!1276 = !DILocation(line: 469, column: 21, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1272, file: !142, discriminator: 2)
!1278 = !DILocation(line: 469, column: 21, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1273, file: !142, discriminator: 3)
!1280 = !DILocation(line: 470, column: 21, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1282, file: !142, discriminator: 1)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !142, line: 470, column: 21)
!1283 = distinct !DILexicalBlock(scope: !1249, file: !142, line: 470, column: 21)
!1284 = !DILocation(line: 470, column: 21, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1283, file: !142, discriminator: 1)
!1286 = !DILocation(line: 470, column: 21, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1282, file: !142, discriminator: 2)
!1288 = !DILocation(line: 470, column: 21, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1283, file: !142, discriminator: 3)
!1290 = !DILocation(line: 471, column: 21, scope: !1249)
!1291 = !DILocation(line: 395, column: 21, scope: !985)
!1292 = !DILocation(line: 484, column: 31, scope: !994)
!1293 = !DILocation(line: 485, column: 31, scope: !994)
!1294 = !DILocation(line: 487, column: 31, scope: !994)
!1295 = !DILocation(line: 488, column: 31, scope: !994)
!1296 = !DILocation(line: 489, column: 31, scope: !994)
!1297 = !DILocation(line: 492, column: 15, scope: !994)
!1298 = !DILocation(line: 494, column: 19, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !142, line: 493, column: 13)
!1300 = distinct !DILexicalBlock(scope: !994, file: !142, line: 492, column: 15)
!1301 = !DILocation(line: 501, column: 33, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !994, file: !142, line: 501, column: 15)
!1303 = !DILocation(line: 506, column: 15, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !994, file: !142, line: 505, column: 15)
!1305 = !DILocation(line: 510, column: 15, scope: !994)
!1306 = !DILocation(line: 518, column: 26, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !994, file: !142, line: 518, column: 15)
!1308 = !DILocation(line: 518, column: 15, scope: !994)
!1309 = !DILocation(line: 518, column: 40, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1307, file: !142, discriminator: 1)
!1311 = !DILocation(line: 518, column: 47, scope: !1310)
!1312 = !DILocation(line: 522, column: 17, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !994, file: !142, line: 522, column: 15)
!1314 = !DILocation(line: 518, column: 18, scope: !1310)
!1315 = !DILocation(line: 518, column: 65, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1307, file: !142, discriminator: 2)
!1317 = !DILocation(line: 518, column: 15, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !994, file: !142, discriminator: 2)
!1319 = !DILocation(line: 522, column: 15, scope: !994)
!1320 = !DILocation(line: 526, column: 11, scope: !994)
!1321 = !DILocation(line: 541, column: 15, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !994, file: !142, line: 540, column: 15)
!1323 = !DILocation(line: 548, column: 15, scope: !994)
!1324 = !DILocation(line: 550, column: 19, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !142, line: 549, column: 13)
!1326 = distinct !DILexicalBlock(scope: !994, file: !142, line: 548, column: 15)
!1327 = !DILocation(line: 553, column: 19, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !142, line: 553, column: 19)
!1329 = !DILocation(line: 553, column: 35, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1328, file: !142, discriminator: 1)
!1331 = !DILocation(line: 553, column: 30, scope: !1328)
!1332 = !DILocation(line: 562, column: 15, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1334, file: !142, discriminator: 1)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !142, line: 562, column: 15)
!1335 = distinct !DILexicalBlock(scope: !1325, file: !142, line: 562, column: 15)
!1336 = !DILocation(line: 562, column: 15, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1335, file: !142, discriminator: 1)
!1338 = !DILocation(line: 562, column: 15, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1334, file: !142, discriminator: 2)
!1340 = !DILocation(line: 562, column: 15, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1335, file: !142, discriminator: 3)
!1342 = !DILocation(line: 563, column: 15, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1344, file: !142, discriminator: 1)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !142, line: 563, column: 15)
!1345 = distinct !DILexicalBlock(scope: !1325, file: !142, line: 563, column: 15)
!1346 = !DILocation(line: 563, column: 15, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1345, file: !142, discriminator: 1)
!1348 = !DILocation(line: 563, column: 15, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1344, file: !142, discriminator: 2)
!1350 = !DILocation(line: 563, column: 15, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1345, file: !142, discriminator: 3)
!1352 = !DILocation(line: 564, column: 15, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !142, discriminator: 1)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !142, line: 564, column: 15)
!1355 = distinct !DILexicalBlock(scope: !1325, file: !142, line: 564, column: 15)
!1356 = !DILocation(line: 564, column: 15, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1355, file: !142, discriminator: 1)
!1358 = !DILocation(line: 564, column: 15, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1354, file: !142, discriminator: 2)
!1360 = !DILocation(line: 564, column: 15, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1355, file: !142, discriminator: 3)
!1362 = !DILocation(line: 566, column: 13, scope: !1325)
!1363 = !DILocation(line: 606, column: 17, scope: !993)
!1364 = !DILocation(line: 602, column: 20, scope: !993)
!1365 = !DILocation(line: 609, column: 29, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !998, file: !142, line: 607, column: 15)
!1367 = !{!1368, !1368, i64 0}
!1368 = !{!"short", !602, i64 0}
!1369 = !DILocation(line: 609, column: 27, scope: !1366)
!1370 = !DILocation(line: 604, column: 18, scope: !993)
!1371 = !DILocation(line: 610, column: 15, scope: !1366)
!1372 = !DILocation(line: 613, column: 17, scope: !997)
!1373 = !DILocation(line: 614, column: 17, scope: !997)
!1374 = !DILocation(line: 618, column: 29, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !997, file: !142, line: 618, column: 21)
!1376 = !DILocation(line: 618, column: 21, scope: !997)
!1377 = distinct !{!1377, !1378, !1379}
!1378 = !DILocation(line: 621, column: 17, scope: !997)
!1379 = !DILocation(line: 667, column: 44, scope: !997)
!1380 = !DILocation(line: 619, column: 29, scope: !1375)
!1381 = !DILocation(line: 619, column: 19, scope: !1375)
!1382 = !DILocation(line: 623, column: 21, scope: !1014)
!1383 = !DILocation(line: 624, column: 56, scope: !1014)
!1384 = !DILocation(line: 624, column: 50, scope: !1014)
!1385 = !DILocation(line: 625, column: 53, scope: !1014)
!1386 = !DIExpression(DW_OP_deref)
!1387 = !DILocation(line: 613, column: 27, scope: !997)
!1388 = !DILocation(line: 623, column: 29, scope: !1014)
!1389 = !DILocation(line: 624, column: 36, scope: !1014)
!1390 = !DILocation(line: 624, column: 28, scope: !1014)
!1391 = !DILocation(line: 626, column: 25, scope: !1014)
!1392 = !DILocation(line: 636, column: 38, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1394, file: !142, discriminator: 1)
!1394 = distinct !DILexicalBlock(scope: !1021, file: !142, line: 634, column: 23)
!1395 = !DILocation(line: 636, column: 48, scope: !1393)
!1396 = !DILocation(line: 636, column: 51, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1394, file: !142, discriminator: 2)
!1398 = !DILocation(line: 636, column: 48, scope: !1397)
!1399 = !DILocation(line: 636, column: 25, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1394, file: !142, discriminator: 3)
!1401 = !DILocation(line: 637, column: 28, scope: !1394)
!1402 = !DILocation(line: 636, column: 34, scope: !1393)
!1403 = distinct !{!1403, !1404, !1401}
!1404 = !DILocation(line: 636, column: 25, scope: !1394)
!1405 = !DILocation(line: 650, column: 43, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1407, file: !142, discriminator: 1)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !142, line: 650, column: 29)
!1408 = distinct !DILexicalBlock(scope: !1018, file: !142, line: 650, column: 29)
!1409 = !DILocation(line: 647, column: 29, scope: !1019)
!1410 = !DILocation(line: 649, column: 36, scope: !1018)
!1411 = !DILocation(line: 651, column: 49, scope: !1407)
!1412 = !DILocation(line: 651, column: 39, scope: !1407)
!1413 = !DILocation(line: 651, column: 31, scope: !1407)
!1414 = !DILocation(line: 650, column: 53, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1407, file: !142, discriminator: 2)
!1416 = !DILocation(line: 650, column: 29, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1408, file: !142, discriminator: 1)
!1418 = distinct !{!1418, !1419, !1420}
!1419 = !DILocation(line: 650, column: 29, scope: !1408)
!1420 = !DILocation(line: 659, column: 33, scope: !1408)
!1421 = !DILocation(line: 666, column: 19, scope: !997)
!1422 = !DILocation(line: 662, column: 41, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1020, file: !142, line: 662, column: 29)
!1424 = !DILocation(line: 662, column: 31, scope: !1423)
!1425 = !DILocation(line: 662, column: 29, scope: !1020)
!1426 = !DILocation(line: 664, column: 27, scope: !1020)
!1427 = !DILocation(line: 667, column: 26, scope: !997)
!1428 = !DILocation(line: 667, column: 24, scope: !997)
!1429 = !DILocation(line: 666, column: 19, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1014, file: !142, discriminator: 3)
!1431 = !DILocation(line: 668, column: 15, scope: !998)
!1432 = !DILocation(line: 670, column: 40, scope: !993)
!1433 = !DILocation(line: 672, column: 19, scope: !1026)
!1434 = !DILocation(line: 672, column: 45, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1026, file: !142, discriminator: 1)
!1436 = !DILocation(line: 672, column: 23, scope: !1026)
!1437 = !DILocation(line: 676, column: 33, scope: !1025)
!1438 = !DILocation(line: 676, column: 24, scope: !1025)
!1439 = !DILocation(line: 678, column: 17, scope: !1025)
!1440 = !DILocation(line: 680, column: 43, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !142, line: 680, column: 25)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !142, line: 679, column: 19)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !142, line: 678, column: 17)
!1444 = distinct !DILexicalBlock(scope: !1025, file: !142, line: 678, column: 17)
!1445 = !DILocation(line: 682, column: 25, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1447, file: !142, discriminator: 1)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !142, line: 682, column: 25)
!1448 = distinct !DILexicalBlock(scope: !1441, file: !142, line: 681, column: 23)
!1449 = !DILocation(line: 682, column: 25, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1451, file: !142, discriminator: 4)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !142, line: 682, column: 25)
!1452 = !DILocation(line: 682, column: 25, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1451, file: !142, discriminator: 3)
!1454 = !DILocation(line: 682, column: 25, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1456, file: !142, discriminator: 6)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !142, line: 682, column: 25)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !142, line: 682, column: 25)
!1458 = distinct !DILexicalBlock(scope: !1451, file: !142, line: 682, column: 25)
!1459 = !DILocation(line: 682, column: 25, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1457, file: !142, discriminator: 6)
!1461 = !DILocation(line: 682, column: 25, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1456, file: !142, discriminator: 7)
!1463 = !DILocation(line: 682, column: 25, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1457, file: !142, discriminator: 8)
!1465 = !DILocation(line: 682, column: 25, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1467, file: !142, discriminator: 11)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !142, line: 682, column: 25)
!1468 = distinct !DILexicalBlock(scope: !1458, file: !142, line: 682, column: 25)
!1469 = !DILocation(line: 682, column: 25, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1468, file: !142, discriminator: 11)
!1471 = !DILocation(line: 682, column: 25, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1467, file: !142, discriminator: 12)
!1473 = !DILocation(line: 682, column: 25, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1468, file: !142, discriminator: 13)
!1475 = !DILocation(line: 682, column: 25, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1477, file: !142, discriminator: 16)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !142, line: 682, column: 25)
!1478 = distinct !DILexicalBlock(scope: !1458, file: !142, line: 682, column: 25)
!1479 = !DILocation(line: 682, column: 25, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1478, file: !142, discriminator: 16)
!1481 = !DILocation(line: 682, column: 25, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1477, file: !142, discriminator: 17)
!1483 = !DILocation(line: 682, column: 25, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1478, file: !142, discriminator: 18)
!1485 = !DILocation(line: 682, column: 25, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1458, file: !142, discriminator: 20)
!1487 = !DILocation(line: 682, column: 25, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1489, file: !142, discriminator: 22)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !142, line: 682, column: 25)
!1490 = distinct !DILexicalBlock(scope: !1447, file: !142, line: 682, column: 25)
!1491 = !DILocation(line: 682, column: 25, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1490, file: !142, discriminator: 22)
!1493 = !DILocation(line: 682, column: 25, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1489, file: !142, discriminator: 23)
!1495 = !DILocation(line: 682, column: 25, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1490, file: !142, discriminator: 24)
!1497 = !DILocation(line: 683, column: 25, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1499, file: !142, discriminator: 1)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !142, line: 683, column: 25)
!1500 = distinct !DILexicalBlock(scope: !1448, file: !142, line: 683, column: 25)
!1501 = !DILocation(line: 683, column: 25, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1500, file: !142, discriminator: 1)
!1503 = !DILocation(line: 683, column: 25, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1499, file: !142, discriminator: 2)
!1505 = !DILocation(line: 683, column: 25, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1500, file: !142, discriminator: 3)
!1507 = !DILocation(line: 684, column: 25, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1509, file: !142, discriminator: 1)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !142, line: 684, column: 25)
!1510 = distinct !DILexicalBlock(scope: !1448, file: !142, line: 684, column: 25)
!1511 = !DILocation(line: 684, column: 25, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1510, file: !142, discriminator: 1)
!1513 = !DILocation(line: 684, column: 25, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1509, file: !142, discriminator: 2)
!1515 = !DILocation(line: 684, column: 25, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1510, file: !142, discriminator: 3)
!1517 = !DILocation(line: 685, column: 38, scope: !1448)
!1518 = !DILocation(line: 685, column: 33, scope: !1448)
!1519 = !DILocation(line: 686, column: 23, scope: !1448)
!1520 = !DILocation(line: 687, column: 30, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1441, file: !142, line: 687, column: 30)
!1522 = !DILocation(line: 687, column: 30, scope: !1441)
!1523 = !DILocation(line: 689, column: 25, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1525, file: !142, discriminator: 1)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !142, line: 689, column: 25)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !142, line: 689, column: 25)
!1527 = distinct !DILexicalBlock(scope: !1521, file: !142, line: 688, column: 23)
!1528 = !DILocation(line: 689, column: 25, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1526, file: !142, discriminator: 1)
!1530 = !DILocation(line: 689, column: 25, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1525, file: !142, discriminator: 2)
!1532 = !DILocation(line: 689, column: 25, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1526, file: !142, discriminator: 3)
!1534 = !DILocation(line: 691, column: 23, scope: !1527)
!1535 = !DILocation(line: 692, column: 35, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1442, file: !142, line: 692, column: 25)
!1537 = !DILocation(line: 692, column: 30, scope: !1536)
!1538 = !DILocation(line: 692, column: 25, scope: !1442)
!1539 = !DILocation(line: 694, column: 21, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1541, file: !142, discriminator: 1)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !142, line: 694, column: 21)
!1542 = distinct !DILexicalBlock(scope: !1442, file: !142, line: 694, column: 21)
!1543 = !DILocation(line: 694, column: 21, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1541, file: !142, discriminator: 2)
!1545 = !DILocation(line: 694, column: 21, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1547, file: !142, discriminator: 4)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !142, line: 694, column: 21)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !142, line: 694, column: 21)
!1549 = distinct !DILexicalBlock(scope: !1541, file: !142, line: 694, column: 21)
!1550 = !DILocation(line: 694, column: 21, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1548, file: !142, discriminator: 4)
!1552 = !DILocation(line: 694, column: 21, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1547, file: !142, discriminator: 5)
!1554 = !DILocation(line: 694, column: 21, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1548, file: !142, discriminator: 6)
!1556 = !DILocation(line: 694, column: 21, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1558, file: !142, discriminator: 9)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !142, line: 694, column: 21)
!1559 = distinct !DILexicalBlock(scope: !1549, file: !142, line: 694, column: 21)
!1560 = !DILocation(line: 694, column: 21, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1559, file: !142, discriminator: 9)
!1562 = !DILocation(line: 694, column: 21, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1558, file: !142, discriminator: 10)
!1564 = !DILocation(line: 694, column: 21, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1559, file: !142, discriminator: 11)
!1566 = !DILocation(line: 694, column: 21, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1549, file: !142, discriminator: 13)
!1568 = !DILocation(line: 695, column: 21, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1570, file: !142, discriminator: 1)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !142, line: 695, column: 21)
!1571 = distinct !DILexicalBlock(scope: !1442, file: !142, line: 695, column: 21)
!1572 = !DILocation(line: 695, column: 21, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1571, file: !142, discriminator: 1)
!1574 = !DILocation(line: 695, column: 21, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1570, file: !142, discriminator: 2)
!1576 = !DILocation(line: 695, column: 21, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1571, file: !142, discriminator: 3)
!1578 = !DILocation(line: 696, column: 25, scope: !1442)
!1579 = !DILocation(line: 678, column: 17, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1443, file: !142, discriminator: 1)
!1581 = distinct !{!1581, !1582, !1583}
!1582 = !DILocation(line: 678, column: 17, scope: !1444)
!1583 = !DILocation(line: 697, column: 19, scope: !1444)
!1584 = !DILocation(line: 704, column: 34, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !985, file: !142, line: 704, column: 11)
!1586 = !DILocation(line: 706, column: 14, scope: !1585)
!1587 = !DILocation(line: 707, column: 14, scope: !1585)
!1588 = !DILocation(line: 707, column: 35, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1585, file: !142, discriminator: 1)
!1590 = !DILocation(line: 707, column: 17, scope: !1589)
!1591 = !DILocation(line: 707, column: 53, scope: !1589)
!1592 = !DILocation(line: 707, column: 47, scope: !1589)
!1593 = !DILocation(line: 707, column: 65, scope: !1589)
!1594 = !DILocation(line: 708, column: 15, scope: !1589)
!1595 = !DILocation(line: 708, column: 11, scope: !1585)
!1596 = !DILocation(line: 704, column: 11, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !985, file: !142, discriminator: 2)
!1598 = !DILocation(line: 712, column: 7, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1600, file: !142, discriminator: 1)
!1600 = distinct !DILexicalBlock(scope: !985, file: !142, line: 712, column: 7)
!1601 = !DILocation(line: 712, column: 7, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1603, file: !142, discriminator: 4)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !142, line: 712, column: 7)
!1604 = !DILocation(line: 712, column: 7, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1603, file: !142, discriminator: 3)
!1606 = !DILocation(line: 712, column: 7, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1608, file: !142, discriminator: 6)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !142, line: 712, column: 7)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !142, line: 712, column: 7)
!1610 = distinct !DILexicalBlock(scope: !1603, file: !142, line: 712, column: 7)
!1611 = !DILocation(line: 712, column: 7, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1609, file: !142, discriminator: 6)
!1613 = !DILocation(line: 712, column: 7, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1608, file: !142, discriminator: 7)
!1615 = !DILocation(line: 712, column: 7, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1609, file: !142, discriminator: 8)
!1617 = !DILocation(line: 712, column: 7, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1619, file: !142, discriminator: 11)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !142, line: 712, column: 7)
!1620 = distinct !DILexicalBlock(scope: !1610, file: !142, line: 712, column: 7)
!1621 = !DILocation(line: 712, column: 7, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1620, file: !142, discriminator: 11)
!1623 = !DILocation(line: 712, column: 7, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1619, file: !142, discriminator: 12)
!1625 = !DILocation(line: 712, column: 7, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1620, file: !142, discriminator: 13)
!1627 = !DILocation(line: 712, column: 7, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1629, file: !142, discriminator: 16)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !142, line: 712, column: 7)
!1630 = distinct !DILexicalBlock(scope: !1610, file: !142, line: 712, column: 7)
!1631 = !DILocation(line: 712, column: 7, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1630, file: !142, discriminator: 16)
!1633 = !DILocation(line: 712, column: 7, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1629, file: !142, discriminator: 17)
!1635 = !DILocation(line: 712, column: 7, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1630, file: !142, discriminator: 18)
!1637 = !DILocation(line: 712, column: 7, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1610, file: !142, discriminator: 20)
!1639 = !DILocation(line: 712, column: 7, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1641, file: !142, discriminator: 22)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !142, line: 712, column: 7)
!1642 = distinct !DILexicalBlock(scope: !1600, file: !142, line: 712, column: 7)
!1643 = !DILocation(line: 712, column: 7, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1642, file: !142, discriminator: 22)
!1645 = !DILocation(line: 712, column: 7, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1641, file: !142, discriminator: 23)
!1647 = !DILocation(line: 712, column: 7, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1642, file: !142, discriminator: 24)
!1649 = !DILocation(line: 715, column: 7, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1651, file: !142, discriminator: 1)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !142, line: 715, column: 7)
!1652 = distinct !DILexicalBlock(scope: !985, file: !142, line: 715, column: 7)
!1653 = !DILocation(line: 715, column: 7, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1651, file: !142, discriminator: 2)
!1655 = !DILocation(line: 715, column: 7, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1657, file: !142, discriminator: 4)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !142, line: 715, column: 7)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !142, line: 715, column: 7)
!1659 = distinct !DILexicalBlock(scope: !1651, file: !142, line: 715, column: 7)
!1660 = !DILocation(line: 715, column: 7, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1658, file: !142, discriminator: 4)
!1662 = !DILocation(line: 715, column: 7, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1657, file: !142, discriminator: 5)
!1664 = !DILocation(line: 715, column: 7, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1658, file: !142, discriminator: 6)
!1666 = !DILocation(line: 715, column: 7, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1668, file: !142, discriminator: 9)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !142, line: 715, column: 7)
!1669 = distinct !DILexicalBlock(scope: !1659, file: !142, line: 715, column: 7)
!1670 = !DILocation(line: 715, column: 7, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1669, file: !142, discriminator: 9)
!1672 = !DILocation(line: 715, column: 7, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1668, file: !142, discriminator: 10)
!1674 = !DILocation(line: 715, column: 7, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1669, file: !142, discriminator: 11)
!1676 = !DILocation(line: 715, column: 7, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1659, file: !142, discriminator: 13)
!1678 = !DILocation(line: 716, column: 7, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1680, file: !142, discriminator: 1)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !142, line: 716, column: 7)
!1681 = distinct !DILexicalBlock(scope: !985, file: !142, line: 716, column: 7)
!1682 = !DILocation(line: 716, column: 7, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1681, file: !142, discriminator: 1)
!1684 = !DILocation(line: 716, column: 7, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1680, file: !142, discriminator: 2)
!1686 = !DILocation(line: 716, column: 7, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1681, file: !142, discriminator: 3)
!1688 = !DILocation(line: 718, column: 13, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !985, file: !142, line: 718, column: 11)
!1690 = !DILocation(line: 718, column: 11, scope: !985)
!1691 = !DILocation(line: 720, column: 5, scope: !986)
!1692 = !DILocation(line: 392, column: 75, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !986, file: !142, discriminator: 5)
!1694 = !DILocation(line: 392, column: 3, scope: !1693)
!1695 = distinct !{!1695, !1696, !1697}
!1696 = !DILocation(line: 392, column: 3, scope: !987)
!1697 = !DILocation(line: 720, column: 5, scope: !987)
!1698 = !DILocation(line: 722, column: 11, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !958, file: !142, line: 722, column: 7)
!1700 = !DILocation(line: 722, column: 16, scope: !1699)
!1701 = !DILocation(line: 730, column: 51, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !958, file: !142, line: 730, column: 7)
!1703 = !DILocation(line: 731, column: 10, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1702, file: !142, discriminator: 1)
!1705 = !DILocation(line: 733, column: 11, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !142, line: 733, column: 11)
!1707 = distinct !DILexicalBlock(scope: !1702, file: !142, line: 732, column: 5)
!1708 = !DILocation(line: 733, column: 11, scope: !1707)
!1709 = !DILocation(line: 734, column: 16, scope: !1706)
!1710 = !DILocation(line: 734, column: 9, scope: !1706)
!1711 = !DILocation(line: 738, column: 18, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1706, file: !142, line: 738, column: 16)
!1713 = !DILocation(line: 738, column: 32, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1712, file: !142, discriminator: 1)
!1715 = !DILocation(line: 738, column: 29, scope: !1712)
!1716 = !DILocation(line: 747, column: 7, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !958, file: !142, line: 747, column: 7)
!1718 = !DILocation(line: 747, column: 20, scope: !1717)
!1719 = !DILocation(line: 748, column: 12, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1721, file: !142, discriminator: 1)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !142, line: 748, column: 5)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !142, line: 748, column: 5)
!1723 = !DILocation(line: 748, column: 5, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1722, file: !142, discriminator: 1)
!1725 = !DILocation(line: 749, column: 7, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1727, file: !142, discriminator: 1)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !142, line: 749, column: 7)
!1728 = distinct !DILexicalBlock(scope: !1721, file: !142, line: 749, column: 7)
!1729 = !DILocation(line: 749, column: 7, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1728, file: !142, discriminator: 1)
!1731 = !DILocation(line: 749, column: 7, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1727, file: !142, discriminator: 2)
!1733 = !DILocation(line: 749, column: 7, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1728, file: !142, discriminator: 3)
!1735 = !DILocation(line: 748, column: 39, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1721, file: !142, discriminator: 2)
!1737 = distinct !{!1737, !1738, !1739}
!1738 = !DILocation(line: 748, column: 5, scope: !1722)
!1739 = !DILocation(line: 749, column: 7, scope: !1722)
!1740 = !DILocation(line: 751, column: 11, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !958, file: !142, line: 751, column: 7)
!1742 = !DILocation(line: 751, column: 7, scope: !958)
!1743 = !DILocation(line: 752, column: 5, scope: !1741)
!1744 = !DILocation(line: 752, column: 17, scope: !1741)
!1745 = !DILocation(line: 758, column: 21, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !958, file: !142, line: 758, column: 7)
!1747 = !DILocation(line: 758, column: 54, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1746, file: !142, discriminator: 1)
!1749 = !DILocation(line: 758, column: 51, scope: !1746)
!1750 = !DILocation(line: 762, column: 42, scope: !958)
!1751 = !DILocation(line: 760, column: 10, scope: !958)
!1752 = !DILocation(line: 760, column: 3, scope: !958)
!1753 = !DILocation(line: 764, column: 1, scope: !958)
!1754 = distinct !DISubprogram(name: "gettext_quote", scope: !142, file: !142, line: 199, type: !1755, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!21, !21, !103}
!1757 = !{!1758, !1759, !1760, !1761}
!1758 = !DILocalVariable(name: "msgid", arg: 1, scope: !1754, file: !142, line: 199, type: !21)
!1759 = !DILocalVariable(name: "s", arg: 2, scope: !1754, file: !142, line: 199, type: !103)
!1760 = !DILocalVariable(name: "translation", scope: !1754, file: !142, line: 201, type: !21)
!1761 = !DILocalVariable(name: "locale_code", scope: !1754, file: !142, line: 202, type: !21)
!1762 = !DILocation(line: 199, column: 28, scope: !1754)
!1763 = !DILocation(line: 199, column: 54, scope: !1754)
!1764 = !DILocation(line: 201, column: 29, scope: !1754)
!1765 = !DILocation(line: 201, column: 15, scope: !1754)
!1766 = !DILocation(line: 204, column: 19, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1754, file: !142, line: 204, column: 7)
!1768 = !DILocation(line: 204, column: 7, scope: !1754)
!1769 = !DILocation(line: 225, column: 17, scope: !1754)
!1770 = !DILocation(line: 202, column: 15, scope: !1754)
!1771 = !DILocalVariable(name: "s2", arg: 2, scope: !1772, file: !1773, line: 160, type: !21)
!1772 = distinct !DISubprogram(name: "strcaseeq0", scope: !1773, file: !1773, line: 160, type: !1774, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1776)
!1773 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!51, !21, !21, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!1776 = !{!1777, !1771, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786}
!1777 = !DILocalVariable(name: "s1", arg: 1, scope: !1772, file: !1773, line: 160, type: !21)
!1778 = !DILocalVariable(name: "s20", arg: 3, scope: !1772, file: !1773, line: 160, type: !11)
!1779 = !DILocalVariable(name: "s21", arg: 4, scope: !1772, file: !1773, line: 160, type: !11)
!1780 = !DILocalVariable(name: "s22", arg: 5, scope: !1772, file: !1773, line: 160, type: !11)
!1781 = !DILocalVariable(name: "s23", arg: 6, scope: !1772, file: !1773, line: 160, type: !11)
!1782 = !DILocalVariable(name: "s24", arg: 7, scope: !1772, file: !1773, line: 160, type: !11)
!1783 = !DILocalVariable(name: "s25", arg: 8, scope: !1772, file: !1773, line: 160, type: !11)
!1784 = !DILocalVariable(name: "s26", arg: 9, scope: !1772, file: !1773, line: 160, type: !11)
!1785 = !DILocalVariable(name: "s27", arg: 10, scope: !1772, file: !1773, line: 160, type: !11)
!1786 = !DILocalVariable(name: "s28", arg: 11, scope: !1772, file: !1773, line: 160, type: !11)
!1787 = !DILocation(line: 160, column: 41, scope: !1772, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 226, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1754, file: !142, line: 226, column: 7)
!1790 = !DILocation(line: 160, column: 120, scope: !1772, inlinedAt: !1788)
!1791 = !DILocation(line: 160, column: 130, scope: !1772, inlinedAt: !1788)
!1792 = !DILocation(line: 162, column: 7, scope: !1793, inlinedAt: !1788)
!1793 = !DILexicalBlockFile(scope: !1794, file: !1773, discriminator: 1)
!1794 = distinct !DILexicalBlock(scope: !1772, file: !1773, line: 162, column: 7)
!1795 = !DILocalVariable(name: "s2", arg: 2, scope: !1796, file: !1773, line: 146, type: !21)
!1796 = distinct !DISubprogram(name: "strcaseeq1", scope: !1773, file: !1773, line: 146, type: !1797, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!51, !21, !21, !11, !11, !11, !11, !11, !11, !11, !11}
!1799 = !{!1800, !1795, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808}
!1800 = !DILocalVariable(name: "s1", arg: 1, scope: !1796, file: !1773, line: 146, type: !21)
!1801 = !DILocalVariable(name: "s21", arg: 3, scope: !1796, file: !1773, line: 146, type: !11)
!1802 = !DILocalVariable(name: "s22", arg: 4, scope: !1796, file: !1773, line: 146, type: !11)
!1803 = !DILocalVariable(name: "s23", arg: 5, scope: !1796, file: !1773, line: 146, type: !11)
!1804 = !DILocalVariable(name: "s24", arg: 6, scope: !1796, file: !1773, line: 146, type: !11)
!1805 = !DILocalVariable(name: "s25", arg: 7, scope: !1796, file: !1773, line: 146, type: !11)
!1806 = !DILocalVariable(name: "s26", arg: 8, scope: !1796, file: !1773, line: 146, type: !11)
!1807 = !DILocalVariable(name: "s27", arg: 9, scope: !1796, file: !1773, line: 146, type: !11)
!1808 = !DILocalVariable(name: "s28", arg: 10, scope: !1796, file: !1773, line: 146, type: !11)
!1809 = !DILocation(line: 146, column: 41, scope: !1796, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 167, column: 16, scope: !1811, inlinedAt: !1788)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !1773, line: 164, column: 11)
!1812 = distinct !DILexicalBlock(scope: !1794, file: !1773, line: 163, column: 5)
!1813 = !DILocation(line: 146, column: 110, scope: !1796, inlinedAt: !1810)
!1814 = !DILocation(line: 146, column: 120, scope: !1796, inlinedAt: !1810)
!1815 = !DILocation(line: 148, column: 7, scope: !1816, inlinedAt: !1810)
!1816 = !DILexicalBlockFile(scope: !1817, file: !1773, discriminator: 1)
!1817 = distinct !DILexicalBlock(scope: !1796, file: !1773, line: 148, column: 7)
!1818 = !DILocalVariable(name: "s2", arg: 2, scope: !1819, file: !1773, line: 132, type: !21)
!1819 = distinct !DISubprogram(name: "strcaseeq2", scope: !1773, file: !1773, line: 132, type: !1820, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!51, !21, !21, !11, !11, !11, !11, !11, !11, !11}
!1822 = !{!1823, !1818, !1824, !1825, !1826, !1827, !1828, !1829, !1830}
!1823 = !DILocalVariable(name: "s1", arg: 1, scope: !1819, file: !1773, line: 132, type: !21)
!1824 = !DILocalVariable(name: "s22", arg: 3, scope: !1819, file: !1773, line: 132, type: !11)
!1825 = !DILocalVariable(name: "s23", arg: 4, scope: !1819, file: !1773, line: 132, type: !11)
!1826 = !DILocalVariable(name: "s24", arg: 5, scope: !1819, file: !1773, line: 132, type: !11)
!1827 = !DILocalVariable(name: "s25", arg: 6, scope: !1819, file: !1773, line: 132, type: !11)
!1828 = !DILocalVariable(name: "s26", arg: 7, scope: !1819, file: !1773, line: 132, type: !11)
!1829 = !DILocalVariable(name: "s27", arg: 8, scope: !1819, file: !1773, line: 132, type: !11)
!1830 = !DILocalVariable(name: "s28", arg: 9, scope: !1819, file: !1773, line: 132, type: !11)
!1831 = !DILocation(line: 132, column: 41, scope: !1819, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 153, column: 16, scope: !1833, inlinedAt: !1810)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !1773, line: 150, column: 11)
!1834 = distinct !DILexicalBlock(scope: !1817, file: !1773, line: 149, column: 5)
!1835 = !DILocation(line: 132, column: 100, scope: !1819, inlinedAt: !1832)
!1836 = !DILocation(line: 132, column: 110, scope: !1819, inlinedAt: !1832)
!1837 = !DILocation(line: 134, column: 7, scope: !1838, inlinedAt: !1832)
!1838 = !DILexicalBlockFile(scope: !1839, file: !1773, discriminator: 1)
!1839 = distinct !DILexicalBlock(scope: !1819, file: !1773, line: 134, column: 7)
!1840 = !DILocalVariable(name: "s2", arg: 2, scope: !1841, file: !1773, line: 118, type: !21)
!1841 = distinct !DISubprogram(name: "strcaseeq3", scope: !1773, file: !1773, line: 118, type: !1842, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1844)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!51, !21, !21, !11, !11, !11, !11, !11, !11}
!1844 = !{!1845, !1840, !1846, !1847, !1848, !1849, !1850, !1851}
!1845 = !DILocalVariable(name: "s1", arg: 1, scope: !1841, file: !1773, line: 118, type: !21)
!1846 = !DILocalVariable(name: "s23", arg: 3, scope: !1841, file: !1773, line: 118, type: !11)
!1847 = !DILocalVariable(name: "s24", arg: 4, scope: !1841, file: !1773, line: 118, type: !11)
!1848 = !DILocalVariable(name: "s25", arg: 5, scope: !1841, file: !1773, line: 118, type: !11)
!1849 = !DILocalVariable(name: "s26", arg: 6, scope: !1841, file: !1773, line: 118, type: !11)
!1850 = !DILocalVariable(name: "s27", arg: 7, scope: !1841, file: !1773, line: 118, type: !11)
!1851 = !DILocalVariable(name: "s28", arg: 8, scope: !1841, file: !1773, line: 118, type: !11)
!1852 = !DILocation(line: 118, column: 41, scope: !1841, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 139, column: 16, scope: !1854, inlinedAt: !1832)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !1773, line: 136, column: 11)
!1855 = distinct !DILexicalBlock(scope: !1839, file: !1773, line: 135, column: 5)
!1856 = !DILocation(line: 118, column: 90, scope: !1841, inlinedAt: !1853)
!1857 = !DILocation(line: 118, column: 100, scope: !1841, inlinedAt: !1853)
!1858 = !DILocation(line: 120, column: 7, scope: !1859, inlinedAt: !1853)
!1859 = !DILexicalBlockFile(scope: !1860, file: !1773, discriminator: 2)
!1860 = distinct !DILexicalBlock(scope: !1841, file: !1773, line: 120, column: 7)
!1861 = !DILocation(line: 120, column: 7, scope: !1862, inlinedAt: !1853)
!1862 = !DILexicalBlockFile(scope: !1841, file: !1773, discriminator: 2)
!1863 = !DILocalVariable(name: "s2", arg: 2, scope: !1864, file: !1773, line: 104, type: !21)
!1864 = distinct !DISubprogram(name: "strcaseeq4", scope: !1773, file: !1773, line: 104, type: !1865, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1867)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!51, !21, !21, !11, !11, !11, !11, !11}
!1867 = !{!1868, !1863, !1869, !1870, !1871, !1872, !1873}
!1868 = !DILocalVariable(name: "s1", arg: 1, scope: !1864, file: !1773, line: 104, type: !21)
!1869 = !DILocalVariable(name: "s24", arg: 3, scope: !1864, file: !1773, line: 104, type: !11)
!1870 = !DILocalVariable(name: "s25", arg: 4, scope: !1864, file: !1773, line: 104, type: !11)
!1871 = !DILocalVariable(name: "s26", arg: 5, scope: !1864, file: !1773, line: 104, type: !11)
!1872 = !DILocalVariable(name: "s27", arg: 6, scope: !1864, file: !1773, line: 104, type: !11)
!1873 = !DILocalVariable(name: "s28", arg: 7, scope: !1864, file: !1773, line: 104, type: !11)
!1874 = !DILocation(line: 104, column: 41, scope: !1864, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 125, column: 16, scope: !1876, inlinedAt: !1853)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !1773, line: 122, column: 11)
!1877 = distinct !DILexicalBlock(scope: !1860, file: !1773, line: 121, column: 5)
!1878 = !DILocation(line: 104, column: 80, scope: !1864, inlinedAt: !1875)
!1879 = !DILocation(line: 104, column: 90, scope: !1864, inlinedAt: !1875)
!1880 = !DILocation(line: 106, column: 7, scope: !1881, inlinedAt: !1875)
!1881 = !DILexicalBlockFile(scope: !1882, file: !1773, discriminator: 2)
!1882 = distinct !DILexicalBlock(scope: !1864, file: !1773, line: 106, column: 7)
!1883 = !DILocation(line: 106, column: 7, scope: !1884, inlinedAt: !1875)
!1884 = !DILexicalBlockFile(scope: !1864, file: !1773, discriminator: 2)
!1885 = !DILocalVariable(name: "s2", arg: 2, scope: !1886, file: !1773, line: 90, type: !21)
!1886 = distinct !DISubprogram(name: "strcaseeq5", scope: !1773, file: !1773, line: 90, type: !1887, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!51, !21, !21, !11, !11, !11, !11}
!1889 = !{!1890, !1885, !1891, !1892, !1893, !1894}
!1890 = !DILocalVariable(name: "s1", arg: 1, scope: !1886, file: !1773, line: 90, type: !21)
!1891 = !DILocalVariable(name: "s25", arg: 3, scope: !1886, file: !1773, line: 90, type: !11)
!1892 = !DILocalVariable(name: "s26", arg: 4, scope: !1886, file: !1773, line: 90, type: !11)
!1893 = !DILocalVariable(name: "s27", arg: 5, scope: !1886, file: !1773, line: 90, type: !11)
!1894 = !DILocalVariable(name: "s28", arg: 6, scope: !1886, file: !1773, line: 90, type: !11)
!1895 = !DILocation(line: 90, column: 41, scope: !1886, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 111, column: 16, scope: !1897, inlinedAt: !1875)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !1773, line: 108, column: 11)
!1898 = distinct !DILexicalBlock(scope: !1882, file: !1773, line: 107, column: 5)
!1899 = !DILocation(line: 90, column: 70, scope: !1886, inlinedAt: !1896)
!1900 = !DILocation(line: 90, column: 80, scope: !1886, inlinedAt: !1896)
!1901 = !DILocation(line: 92, column: 7, scope: !1902, inlinedAt: !1896)
!1902 = !DILexicalBlockFile(scope: !1903, file: !1773, discriminator: 2)
!1903 = distinct !DILexicalBlock(scope: !1886, file: !1773, line: 92, column: 7)
!1904 = !DILocation(line: 92, column: 7, scope: !1905, inlinedAt: !1896)
!1905 = !DILexicalBlockFile(scope: !1886, file: !1773, discriminator: 2)
!1906 = !DILocation(line: 227, column: 12, scope: !1789)
!1907 = !DILocation(line: 227, column: 21, scope: !1789)
!1908 = !DILocation(line: 227, column: 5, scope: !1789)
!1909 = !DILocation(line: 146, column: 41, scope: !1796, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 167, column: 16, scope: !1811, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 228, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1754, file: !142, line: 228, column: 7)
!1913 = !DILocation(line: 146, column: 110, scope: !1796, inlinedAt: !1910)
!1914 = !DILocation(line: 146, column: 120, scope: !1796, inlinedAt: !1910)
!1915 = !DILocation(line: 148, column: 7, scope: !1816, inlinedAt: !1910)
!1916 = !DILocation(line: 132, column: 41, scope: !1819, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 153, column: 16, scope: !1833, inlinedAt: !1910)
!1918 = !DILocation(line: 132, column: 100, scope: !1819, inlinedAt: !1917)
!1919 = !DILocation(line: 132, column: 110, scope: !1819, inlinedAt: !1917)
!1920 = !DILocation(line: 134, column: 7, scope: !1921, inlinedAt: !1917)
!1921 = !DILexicalBlockFile(scope: !1839, file: !1773, discriminator: 2)
!1922 = !DILocation(line: 134, column: 7, scope: !1923, inlinedAt: !1917)
!1923 = !DILexicalBlockFile(scope: !1819, file: !1773, discriminator: 2)
!1924 = !DILocation(line: 118, column: 41, scope: !1841, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 139, column: 16, scope: !1854, inlinedAt: !1917)
!1926 = !DILocation(line: 118, column: 90, scope: !1841, inlinedAt: !1925)
!1927 = !DILocation(line: 118, column: 100, scope: !1841, inlinedAt: !1925)
!1928 = !DILocation(line: 120, column: 7, scope: !1859, inlinedAt: !1925)
!1929 = !DILocation(line: 120, column: 7, scope: !1862, inlinedAt: !1925)
!1930 = !DILocation(line: 104, column: 41, scope: !1864, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 125, column: 16, scope: !1876, inlinedAt: !1925)
!1932 = !DILocation(line: 104, column: 80, scope: !1864, inlinedAt: !1931)
!1933 = !DILocation(line: 104, column: 90, scope: !1864, inlinedAt: !1931)
!1934 = !DILocation(line: 106, column: 7, scope: !1881, inlinedAt: !1931)
!1935 = !DILocation(line: 106, column: 7, scope: !1884, inlinedAt: !1931)
!1936 = !DILocation(line: 90, column: 41, scope: !1886, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 111, column: 16, scope: !1897, inlinedAt: !1931)
!1938 = !DILocation(line: 90, column: 70, scope: !1886, inlinedAt: !1937)
!1939 = !DILocation(line: 90, column: 80, scope: !1886, inlinedAt: !1937)
!1940 = !DILocation(line: 92, column: 7, scope: !1902, inlinedAt: !1937)
!1941 = !DILocation(line: 92, column: 7, scope: !1905, inlinedAt: !1937)
!1942 = !DILocalVariable(name: "s2", arg: 2, scope: !1943, file: !1773, line: 76, type: !21)
!1943 = distinct !DISubprogram(name: "strcaseeq6", scope: !1773, file: !1773, line: 76, type: !1944, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!51, !21, !21, !11, !11, !11}
!1946 = !{!1947, !1942, !1948, !1949, !1950}
!1947 = !DILocalVariable(name: "s1", arg: 1, scope: !1943, file: !1773, line: 76, type: !21)
!1948 = !DILocalVariable(name: "s26", arg: 3, scope: !1943, file: !1773, line: 76, type: !11)
!1949 = !DILocalVariable(name: "s27", arg: 4, scope: !1943, file: !1773, line: 76, type: !11)
!1950 = !DILocalVariable(name: "s28", arg: 5, scope: !1943, file: !1773, line: 76, type: !11)
!1951 = !DILocation(line: 76, column: 41, scope: !1943, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 97, column: 16, scope: !1953, inlinedAt: !1937)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !1773, line: 94, column: 11)
!1954 = distinct !DILexicalBlock(scope: !1903, file: !1773, line: 93, column: 5)
!1955 = !DILocation(line: 76, column: 60, scope: !1943, inlinedAt: !1952)
!1956 = !DILocation(line: 76, column: 70, scope: !1943, inlinedAt: !1952)
!1957 = !DILocation(line: 78, column: 7, scope: !1958, inlinedAt: !1952)
!1958 = !DILexicalBlockFile(scope: !1959, file: !1773, discriminator: 2)
!1959 = distinct !DILexicalBlock(scope: !1943, file: !1773, line: 78, column: 7)
!1960 = !DILocation(line: 78, column: 7, scope: !1961, inlinedAt: !1952)
!1961 = !DILexicalBlockFile(scope: !1943, file: !1773, discriminator: 2)
!1962 = !DILocalVariable(name: "s2", arg: 2, scope: !1963, file: !1773, line: 62, type: !21)
!1963 = distinct !DISubprogram(name: "strcaseeq7", scope: !1773, file: !1773, line: 62, type: !1964, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!51, !21, !21, !11, !11}
!1966 = !{!1967, !1962, !1968, !1969}
!1967 = !DILocalVariable(name: "s1", arg: 1, scope: !1963, file: !1773, line: 62, type: !21)
!1968 = !DILocalVariable(name: "s27", arg: 3, scope: !1963, file: !1773, line: 62, type: !11)
!1969 = !DILocalVariable(name: "s28", arg: 4, scope: !1963, file: !1773, line: 62, type: !11)
!1970 = !DILocation(line: 62, column: 41, scope: !1963, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 83, column: 16, scope: !1972, inlinedAt: !1952)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !1773, line: 80, column: 11)
!1973 = distinct !DILexicalBlock(scope: !1959, file: !1773, line: 79, column: 5)
!1974 = !DILocation(line: 62, column: 50, scope: !1963, inlinedAt: !1971)
!1975 = !DILocation(line: 62, column: 60, scope: !1963, inlinedAt: !1971)
!1976 = !DILocation(line: 64, column: 7, scope: !1977, inlinedAt: !1971)
!1977 = !DILexicalBlockFile(scope: !1978, file: !1773, discriminator: 2)
!1978 = distinct !DILexicalBlock(scope: !1963, file: !1773, line: 64, column: 7)
!1979 = !DILocation(line: 228, column: 7, scope: !1754)
!1980 = !DILocation(line: 229, column: 12, scope: !1912)
!1981 = !DILocation(line: 229, column: 21, scope: !1912)
!1982 = !DILocation(line: 229, column: 5, scope: !1912)
!1983 = !DILocation(line: 231, column: 13, scope: !1754)
!1984 = !DILocation(line: 231, column: 11, scope: !1754)
!1985 = !DILocation(line: 231, column: 3, scope: !1754)
!1986 = !DILocation(line: 232, column: 1, scope: !1754)
!1987 = distinct !DISubprogram(name: "quotearg_alloc", scope: !142, file: !142, line: 791, type: !1988, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!10, !21, !13, !826}
!1990 = !{!1991, !1992, !1993}
!1991 = !DILocalVariable(name: "arg", arg: 1, scope: !1987, file: !142, line: 791, type: !21)
!1992 = !DILocalVariable(name: "argsize", arg: 2, scope: !1987, file: !142, line: 791, type: !13)
!1993 = !DILocalVariable(name: "o", arg: 3, scope: !1987, file: !142, line: 792, type: !826)
!1994 = !DILocation(line: 791, column: 29, scope: !1987)
!1995 = !DILocation(line: 791, column: 41, scope: !1987)
!1996 = !DILocation(line: 792, column: 47, scope: !1987)
!1997 = !DILocalVariable(name: "arg", arg: 1, scope: !1998, file: !142, line: 804, type: !21)
!1998 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !142, file: !142, line: 804, type: !1999, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2001)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!10, !21, !13, !555, !826}
!2001 = !{!1997, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009}
!2002 = !DILocalVariable(name: "argsize", arg: 2, scope: !1998, file: !142, line: 804, type: !13)
!2003 = !DILocalVariable(name: "size", arg: 3, scope: !1998, file: !142, line: 804, type: !555)
!2004 = !DILocalVariable(name: "o", arg: 4, scope: !1998, file: !142, line: 805, type: !826)
!2005 = !DILocalVariable(name: "p", scope: !1998, file: !142, line: 807, type: !826)
!2006 = !DILocalVariable(name: "e", scope: !1998, file: !142, line: 808, type: !51)
!2007 = !DILocalVariable(name: "flags", scope: !1998, file: !142, line: 810, type: !51)
!2008 = !DILocalVariable(name: "bufsize", scope: !1998, file: !142, line: 811, type: !13)
!2009 = !DILocalVariable(name: "buf", scope: !1998, file: !142, line: 815, type: !10)
!2010 = !DILocation(line: 804, column: 33, scope: !1998, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 794, column: 10, scope: !1987)
!2012 = !DILocation(line: 804, column: 45, scope: !1998, inlinedAt: !2011)
!2013 = !DILocation(line: 804, column: 62, scope: !1998, inlinedAt: !2011)
!2014 = !DILocation(line: 805, column: 51, scope: !1998, inlinedAt: !2011)
!2015 = !DILocation(line: 807, column: 37, scope: !1998, inlinedAt: !2011)
!2016 = !DILocation(line: 807, column: 33, scope: !1998, inlinedAt: !2011)
!2017 = !DILocation(line: 808, column: 11, scope: !1998, inlinedAt: !2011)
!2018 = !DILocation(line: 808, column: 7, scope: !1998, inlinedAt: !2011)
!2019 = !DILocation(line: 810, column: 18, scope: !1998, inlinedAt: !2011)
!2020 = !DILocation(line: 810, column: 24, scope: !1998, inlinedAt: !2011)
!2021 = !DILocation(line: 810, column: 7, scope: !1998, inlinedAt: !2011)
!2022 = !DILocation(line: 811, column: 69, scope: !1998, inlinedAt: !2011)
!2023 = !DILocation(line: 812, column: 53, scope: !1998, inlinedAt: !2011)
!2024 = !DILocation(line: 813, column: 49, scope: !1998, inlinedAt: !2011)
!2025 = !DILocation(line: 814, column: 49, scope: !1998, inlinedAt: !2011)
!2026 = !DILocation(line: 811, column: 20, scope: !1998, inlinedAt: !2011)
!2027 = !DILocation(line: 814, column: 62, scope: !1998, inlinedAt: !2011)
!2028 = !DILocation(line: 811, column: 10, scope: !1998, inlinedAt: !2011)
!2029 = !DILocalVariable(name: "n", arg: 1, scope: !2030, file: !551, line: 220, type: !13)
!2030 = distinct !DISubprogram(name: "xcharalloc", scope: !551, file: !551, line: 220, type: !2031, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2033)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!10, !13}
!2033 = !{!2029}
!2034 = !DILocation(line: 220, column: 20, scope: !2030, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 815, column: 15, scope: !1998, inlinedAt: !2011)
!2036 = !DILocation(line: 222, column: 10, scope: !2030, inlinedAt: !2035)
!2037 = !DILocation(line: 815, column: 9, scope: !1998, inlinedAt: !2011)
!2038 = !DILocation(line: 816, column: 60, scope: !1998, inlinedAt: !2011)
!2039 = !DILocation(line: 818, column: 32, scope: !1998, inlinedAt: !2011)
!2040 = !DILocation(line: 818, column: 47, scope: !1998, inlinedAt: !2011)
!2041 = !DILocation(line: 816, column: 3, scope: !1998, inlinedAt: !2011)
!2042 = !DILocation(line: 819, column: 9, scope: !1998, inlinedAt: !2011)
!2043 = !DILocation(line: 794, column: 3, scope: !1987)
!2044 = !DILocation(line: 804, column: 33, scope: !1998)
!2045 = !DILocation(line: 804, column: 45, scope: !1998)
!2046 = !DILocation(line: 804, column: 62, scope: !1998)
!2047 = !DILocation(line: 805, column: 51, scope: !1998)
!2048 = !DILocation(line: 807, column: 37, scope: !1998)
!2049 = !DILocation(line: 807, column: 33, scope: !1998)
!2050 = !DILocation(line: 808, column: 11, scope: !1998)
!2051 = !DILocation(line: 808, column: 7, scope: !1998)
!2052 = !DILocation(line: 810, column: 18, scope: !1998)
!2053 = !DILocation(line: 810, column: 27, scope: !1998)
!2054 = !DILocation(line: 810, column: 24, scope: !1998)
!2055 = !DILocation(line: 810, column: 7, scope: !1998)
!2056 = !DILocation(line: 811, column: 69, scope: !1998)
!2057 = !DILocation(line: 812, column: 53, scope: !1998)
!2058 = !DILocation(line: 813, column: 49, scope: !1998)
!2059 = !DILocation(line: 814, column: 49, scope: !1998)
!2060 = !DILocation(line: 811, column: 20, scope: !1998)
!2061 = !DILocation(line: 814, column: 62, scope: !1998)
!2062 = !DILocation(line: 811, column: 10, scope: !1998)
!2063 = !DILocation(line: 220, column: 20, scope: !2030, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 815, column: 15, scope: !1998)
!2065 = !DILocation(line: 222, column: 10, scope: !2030, inlinedAt: !2064)
!2066 = !DILocation(line: 815, column: 9, scope: !1998)
!2067 = !DILocation(line: 816, column: 60, scope: !1998)
!2068 = !DILocation(line: 818, column: 32, scope: !1998)
!2069 = !DILocation(line: 818, column: 47, scope: !1998)
!2070 = !DILocation(line: 816, column: 3, scope: !1998)
!2071 = !DILocation(line: 819, column: 9, scope: !1998)
!2072 = !DILocation(line: 820, column: 7, scope: !1998)
!2073 = !DILocation(line: 821, column: 11, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1998, file: !142, line: 820, column: 7)
!2075 = !{!2076, !2076, i64 0}
!2076 = !{!"long", !602, i64 0}
!2077 = !DILocation(line: 821, column: 5, scope: !2074)
!2078 = !DILocation(line: 822, column: 3, scope: !1998)
!2079 = distinct !DISubprogram(name: "quotearg_free", scope: !142, file: !142, line: 840, type: !725, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2080)
!2080 = !{!2081, !2082}
!2081 = !DILocalVariable(name: "sv", scope: !2079, file: !142, line: 842, type: !169)
!2082 = !DILocalVariable(name: "i", scope: !2079, file: !142, line: 843, type: !51)
!2083 = !DILocation(line: 842, column: 24, scope: !2079)
!2084 = !DILocation(line: 842, column: 19, scope: !2079)
!2085 = !DILocation(line: 843, column: 7, scope: !2079)
!2086 = !DILocation(line: 844, column: 19, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2088, file: !142, discriminator: 1)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !142, line: 844, column: 3)
!2089 = distinct !DILexicalBlock(scope: !2079, file: !142, line: 844, column: 3)
!2090 = !DILocation(line: 844, column: 17, scope: !2087)
!2091 = !DILocation(line: 844, column: 3, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2089, file: !142, discriminator: 1)
!2093 = !DILocation(line: 845, column: 17, scope: !2088)
!2094 = !{!2095, !601, i64 8}
!2095 = !{!"slotvec", !2076, i64 0, !601, i64 8}
!2096 = !DILocation(line: 845, column: 5, scope: !2088)
!2097 = !DILocation(line: 844, column: 28, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2088, file: !142, discriminator: 2)
!2099 = distinct !{!2099, !2100, !2101}
!2100 = !DILocation(line: 844, column: 3, scope: !2089)
!2101 = !DILocation(line: 845, column: 20, scope: !2089)
!2102 = !DILocation(line: 846, column: 13, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2079, file: !142, line: 846, column: 7)
!2104 = !DILocation(line: 846, column: 17, scope: !2103)
!2105 = !DILocation(line: 846, column: 7, scope: !2079)
!2106 = !DILocation(line: 848, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !142, line: 847, column: 5)
!2108 = !DILocation(line: 849, column: 21, scope: !2107)
!2109 = !{!2095, !2076, i64 0}
!2110 = !DILocation(line: 850, column: 20, scope: !2107)
!2111 = !DILocation(line: 851, column: 5, scope: !2107)
!2112 = !DILocation(line: 852, column: 10, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2079, file: !142, line: 852, column: 7)
!2114 = !DILocation(line: 852, column: 7, scope: !2079)
!2115 = !DILocation(line: 854, column: 13, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !142, line: 853, column: 5)
!2117 = !DILocation(line: 854, column: 7, scope: !2116)
!2118 = !DILocation(line: 855, column: 15, scope: !2116)
!2119 = !DILocation(line: 856, column: 5, scope: !2116)
!2120 = !DILocation(line: 857, column: 10, scope: !2079)
!2121 = !DILocation(line: 858, column: 1, scope: !2079)
!2122 = distinct !DISubprogram(name: "quotearg_n", scope: !142, file: !142, line: 922, type: !2123, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!10, !51, !21}
!2125 = !{!2126, !2127}
!2126 = !DILocalVariable(name: "n", arg: 1, scope: !2122, file: !142, line: 922, type: !51)
!2127 = !DILocalVariable(name: "arg", arg: 2, scope: !2122, file: !142, line: 922, type: !21)
!2128 = !DILocation(line: 922, column: 17, scope: !2122)
!2129 = !DILocation(line: 922, column: 32, scope: !2122)
!2130 = !DILocation(line: 924, column: 10, scope: !2122)
!2131 = !DILocation(line: 924, column: 3, scope: !2122)
!2132 = distinct !DISubprogram(name: "quotearg_n_options", scope: !142, file: !142, line: 869, type: !2133, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!10, !51, !21, !13, !826}
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2145, !2147, !2148, !2149}
!2136 = !DILocalVariable(name: "n", arg: 1, scope: !2132, file: !142, line: 869, type: !51)
!2137 = !DILocalVariable(name: "arg", arg: 2, scope: !2132, file: !142, line: 869, type: !21)
!2138 = !DILocalVariable(name: "argsize", arg: 3, scope: !2132, file: !142, line: 869, type: !13)
!2139 = !DILocalVariable(name: "options", arg: 4, scope: !2132, file: !142, line: 870, type: !826)
!2140 = !DILocalVariable(name: "e", scope: !2132, file: !142, line: 872, type: !51)
!2141 = !DILocalVariable(name: "sv", scope: !2132, file: !142, line: 874, type: !169)
!2142 = !DILocalVariable(name: "preallocated", scope: !2143, file: !142, line: 881, type: !69)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !142, line: 880, column: 5)
!2144 = distinct !DILexicalBlock(scope: !2132, file: !142, line: 879, column: 7)
!2145 = !DILocalVariable(name: "size", scope: !2146, file: !142, line: 894, type: !13)
!2146 = distinct !DILexicalBlock(scope: !2132, file: !142, line: 893, column: 3)
!2147 = !DILocalVariable(name: "val", scope: !2146, file: !142, line: 895, type: !10)
!2148 = !DILocalVariable(name: "flags", scope: !2146, file: !142, line: 897, type: !51)
!2149 = !DILocalVariable(name: "qsize", scope: !2146, file: !142, line: 898, type: !13)
!2150 = !DILocation(line: 869, column: 25, scope: !2132)
!2151 = !DILocation(line: 869, column: 40, scope: !2132)
!2152 = !DILocation(line: 869, column: 52, scope: !2132)
!2153 = !DILocation(line: 870, column: 51, scope: !2132)
!2154 = !DILocation(line: 872, column: 11, scope: !2132)
!2155 = !DILocation(line: 872, column: 7, scope: !2132)
!2156 = !DILocation(line: 874, column: 24, scope: !2132)
!2157 = !DILocation(line: 874, column: 19, scope: !2132)
!2158 = !DILocation(line: 876, column: 9, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2132, file: !142, line: 876, column: 7)
!2160 = !DILocation(line: 876, column: 7, scope: !2132)
!2161 = !DILocation(line: 877, column: 5, scope: !2159)
!2162 = !DILocation(line: 879, column: 7, scope: !2144)
!2163 = !DILocation(line: 879, column: 14, scope: !2144)
!2164 = !DILocation(line: 879, column: 7, scope: !2132)
!2165 = !DILocation(line: 881, column: 31, scope: !2143)
!2166 = !DILocation(line: 883, column: 67, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2143, file: !142, line: 883, column: 11)
!2168 = !DILocation(line: 883, column: 11, scope: !2143)
!2169 = !DILocation(line: 884, column: 9, scope: !2167)
!2170 = !DILocation(line: 886, column: 32, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2143, file: !142, discriminator: 3)
!2172 = !DILocation(line: 886, column: 61, scope: !2171)
!2173 = !DILocation(line: 886, column: 58, scope: !2171)
!2174 = !DILocation(line: 886, column: 66, scope: !2171)
!2175 = !DILocation(line: 886, column: 22, scope: !2171)
!2176 = !DILocation(line: 886, column: 15, scope: !2171)
!2177 = !DILocation(line: 887, column: 11, scope: !2143)
!2178 = !DILocation(line: 888, column: 15, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2143, file: !142, line: 887, column: 11)
!2180 = !{i64 0, i64 8, !2075, i64 8, i64 8, !600}
!2181 = !DILocation(line: 888, column: 9, scope: !2179)
!2182 = !DILocation(line: 889, column: 20, scope: !2143)
!2183 = !DILocation(line: 889, column: 18, scope: !2143)
!2184 = !DILocation(line: 889, column: 7, scope: !2143)
!2185 = !DILocation(line: 889, column: 38, scope: !2143)
!2186 = !DILocation(line: 889, column: 31, scope: !2143)
!2187 = !DILocation(line: 889, column: 48, scope: !2143)
!2188 = !DILocation(line: 890, column: 14, scope: !2143)
!2189 = !DILocation(line: 891, column: 5, scope: !2143)
!2190 = !DILocation(line: 894, column: 19, scope: !2146)
!2191 = !DILocation(line: 894, column: 25, scope: !2146)
!2192 = !DILocation(line: 894, column: 12, scope: !2146)
!2193 = !DILocation(line: 895, column: 23, scope: !2146)
!2194 = !DILocation(line: 895, column: 11, scope: !2146)
!2195 = !DILocation(line: 897, column: 26, scope: !2146)
!2196 = !DILocation(line: 897, column: 32, scope: !2146)
!2197 = !DILocation(line: 897, column: 9, scope: !2146)
!2198 = !DILocation(line: 899, column: 55, scope: !2146)
!2199 = !DILocation(line: 900, column: 46, scope: !2146)
!2200 = !DILocation(line: 901, column: 55, scope: !2146)
!2201 = !DILocation(line: 902, column: 55, scope: !2146)
!2202 = !DILocation(line: 898, column: 20, scope: !2146)
!2203 = !DILocation(line: 898, column: 12, scope: !2146)
!2204 = !DILocation(line: 904, column: 14, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2146, file: !142, line: 904, column: 9)
!2206 = !DILocation(line: 904, column: 9, scope: !2146)
!2207 = !DILocation(line: 906, column: 35, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2205, file: !142, line: 905, column: 7)
!2209 = !DILocation(line: 906, column: 20, scope: !2208)
!2210 = !DILocation(line: 907, column: 17, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !142, line: 907, column: 13)
!2212 = !DILocation(line: 907, column: 13, scope: !2208)
!2213 = !DILocation(line: 908, column: 11, scope: !2211)
!2214 = !DILocation(line: 220, column: 20, scope: !2030, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 909, column: 27, scope: !2208)
!2216 = !DILocation(line: 222, column: 10, scope: !2030, inlinedAt: !2215)
!2217 = !DILocation(line: 909, column: 19, scope: !2208)
!2218 = !DILocation(line: 910, column: 69, scope: !2208)
!2219 = !DILocation(line: 912, column: 44, scope: !2208)
!2220 = !DILocation(line: 913, column: 44, scope: !2208)
!2221 = !DILocation(line: 910, column: 9, scope: !2208)
!2222 = !DILocation(line: 914, column: 7, scope: !2208)
!2223 = !DILocation(line: 916, column: 11, scope: !2146)
!2224 = !DILocation(line: 917, column: 5, scope: !2146)
!2225 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !142, file: !142, line: 928, type: !2226, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!10, !51, !21, !13}
!2228 = !{!2229, !2230, !2231}
!2229 = !DILocalVariable(name: "n", arg: 1, scope: !2225, file: !142, line: 928, type: !51)
!2230 = !DILocalVariable(name: "arg", arg: 2, scope: !2225, file: !142, line: 928, type: !21)
!2231 = !DILocalVariable(name: "argsize", arg: 3, scope: !2225, file: !142, line: 928, type: !13)
!2232 = !DILocation(line: 928, column: 21, scope: !2225)
!2233 = !DILocation(line: 928, column: 36, scope: !2225)
!2234 = !DILocation(line: 928, column: 48, scope: !2225)
!2235 = !DILocation(line: 930, column: 10, scope: !2225)
!2236 = !DILocation(line: 930, column: 3, scope: !2225)
!2237 = distinct !DISubprogram(name: "quotearg", scope: !142, file: !142, line: 934, type: !2238, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!10, !21}
!2240 = !{!2241}
!2241 = !DILocalVariable(name: "arg", arg: 1, scope: !2237, file: !142, line: 934, type: !21)
!2242 = !DILocation(line: 934, column: 23, scope: !2237)
!2243 = !DILocation(line: 922, column: 17, scope: !2122, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 936, column: 10, scope: !2237)
!2245 = !DILocation(line: 922, column: 32, scope: !2122, inlinedAt: !2244)
!2246 = !DILocation(line: 924, column: 10, scope: !2122, inlinedAt: !2244)
!2247 = !DILocation(line: 936, column: 3, scope: !2237)
!2248 = distinct !DISubprogram(name: "quotearg_mem", scope: !142, file: !142, line: 940, type: !2249, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!10, !21, !13}
!2251 = !{!2252, !2253}
!2252 = !DILocalVariable(name: "arg", arg: 1, scope: !2248, file: !142, line: 940, type: !21)
!2253 = !DILocalVariable(name: "argsize", arg: 2, scope: !2248, file: !142, line: 940, type: !13)
!2254 = !DILocation(line: 940, column: 27, scope: !2248)
!2255 = !DILocation(line: 940, column: 39, scope: !2248)
!2256 = !DILocation(line: 928, column: 21, scope: !2225, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 942, column: 10, scope: !2248)
!2258 = !DILocation(line: 928, column: 36, scope: !2225, inlinedAt: !2257)
!2259 = !DILocation(line: 928, column: 48, scope: !2225, inlinedAt: !2257)
!2260 = !DILocation(line: 930, column: 10, scope: !2225, inlinedAt: !2257)
!2261 = !DILocation(line: 942, column: 3, scope: !2248)
!2262 = distinct !DISubprogram(name: "quotearg_n_style", scope: !142, file: !142, line: 946, type: !2263, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!10, !51, !103, !21}
!2265 = !{!2266, !2267, !2268, !2269}
!2266 = !DILocalVariable(name: "n", arg: 1, scope: !2262, file: !142, line: 946, type: !51)
!2267 = !DILocalVariable(name: "s", arg: 2, scope: !2262, file: !142, line: 946, type: !103)
!2268 = !DILocalVariable(name: "arg", arg: 3, scope: !2262, file: !142, line: 946, type: !21)
!2269 = !DILocalVariable(name: "o", scope: !2262, file: !142, line: 948, type: !827)
!2270 = !DILocalVariable(name: "o", scope: !2271, file: !142, line: 187, type: !149)
!2271 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !142, file: !142, line: 185, type: !2272, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!149, !103}
!2274 = !{!2275, !2270}
!2275 = !DILocalVariable(name: "style", arg: 1, scope: !2271, file: !142, line: 185, type: !103)
!2276 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2277 = !DILocation(line: 187, column: 26, scope: !2271, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 948, column: 36, scope: !2262)
!2279 = !DILocation(line: 946, column: 23, scope: !2262)
!2280 = !DILocation(line: 946, column: 45, scope: !2262)
!2281 = !DILocation(line: 946, column: 60, scope: !2262)
!2282 = !DILocation(line: 948, column: 3, scope: !2262)
!2283 = !DILocation(line: 948, column: 32, scope: !2262)
!2284 = !DILocation(line: 185, column: 48, scope: !2271, inlinedAt: !2278)
!2285 = !DILocation(line: 187, column: 3, scope: !2271, inlinedAt: !2278)
!2286 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2287 = !DILocation(line: 188, column: 13, scope: !2288, inlinedAt: !2278)
!2288 = distinct !DILexicalBlock(scope: !2271, file: !142, line: 188, column: 7)
!2289 = !DILocation(line: 188, column: 7, scope: !2271, inlinedAt: !2278)
!2290 = !DILocation(line: 189, column: 5, scope: !2288, inlinedAt: !2278)
!2291 = !{!2292}
!2292 = distinct !{!2292, !2293, !"quoting_options_from_style: argument 0"}
!2293 = distinct !{!2293, !"quoting_options_from_style"}
!2294 = !DILocation(line: 191, column: 10, scope: !2271, inlinedAt: !2278)
!2295 = !DILocation(line: 192, column: 1, scope: !2271, inlinedAt: !2278)
!2296 = !DILocation(line: 949, column: 10, scope: !2262)
!2297 = !DILocation(line: 950, column: 1, scope: !2262)
!2298 = !DILocation(line: 949, column: 3, scope: !2262)
!2299 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !142, file: !142, line: 953, type: !2300, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!10, !51, !103, !21, !13}
!2302 = !{!2303, !2304, !2305, !2306, !2307}
!2303 = !DILocalVariable(name: "n", arg: 1, scope: !2299, file: !142, line: 953, type: !51)
!2304 = !DILocalVariable(name: "s", arg: 2, scope: !2299, file: !142, line: 953, type: !103)
!2305 = !DILocalVariable(name: "arg", arg: 3, scope: !2299, file: !142, line: 954, type: !21)
!2306 = !DILocalVariable(name: "argsize", arg: 4, scope: !2299, file: !142, line: 954, type: !13)
!2307 = !DILocalVariable(name: "o", scope: !2299, file: !142, line: 956, type: !827)
!2308 = !DILocation(line: 187, column: 26, scope: !2271, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 956, column: 36, scope: !2299)
!2310 = !DILocation(line: 953, column: 27, scope: !2299)
!2311 = !DILocation(line: 953, column: 49, scope: !2299)
!2312 = !DILocation(line: 954, column: 35, scope: !2299)
!2313 = !DILocation(line: 954, column: 47, scope: !2299)
!2314 = !DILocation(line: 956, column: 3, scope: !2299)
!2315 = !DILocation(line: 956, column: 32, scope: !2299)
!2316 = !DILocation(line: 185, column: 48, scope: !2271, inlinedAt: !2309)
!2317 = !DILocation(line: 187, column: 3, scope: !2271, inlinedAt: !2309)
!2318 = !DILocation(line: 188, column: 13, scope: !2288, inlinedAt: !2309)
!2319 = !DILocation(line: 188, column: 7, scope: !2271, inlinedAt: !2309)
!2320 = !DILocation(line: 189, column: 5, scope: !2288, inlinedAt: !2309)
!2321 = !{!2322}
!2322 = distinct !{!2322, !2323, !"quoting_options_from_style: argument 0"}
!2323 = distinct !{!2323, !"quoting_options_from_style"}
!2324 = !DILocation(line: 191, column: 10, scope: !2271, inlinedAt: !2309)
!2325 = !DILocation(line: 192, column: 1, scope: !2271, inlinedAt: !2309)
!2326 = !DILocation(line: 957, column: 10, scope: !2299)
!2327 = !DILocation(line: 958, column: 1, scope: !2299)
!2328 = !DILocation(line: 957, column: 3, scope: !2299)
!2329 = distinct !DISubprogram(name: "quotearg_style", scope: !142, file: !142, line: 961, type: !2330, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!10, !103, !21}
!2332 = !{!2333, !2334}
!2333 = !DILocalVariable(name: "s", arg: 1, scope: !2329, file: !142, line: 961, type: !103)
!2334 = !DILocalVariable(name: "arg", arg: 2, scope: !2329, file: !142, line: 961, type: !21)
!2335 = !DILocation(line: 187, column: 26, scope: !2271, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 948, column: 36, scope: !2262, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 963, column: 10, scope: !2329)
!2338 = !DILocation(line: 961, column: 36, scope: !2329)
!2339 = !DILocation(line: 961, column: 51, scope: !2329)
!2340 = !DILocation(line: 946, column: 23, scope: !2262, inlinedAt: !2337)
!2341 = !DILocation(line: 946, column: 45, scope: !2262, inlinedAt: !2337)
!2342 = !DILocation(line: 946, column: 60, scope: !2262, inlinedAt: !2337)
!2343 = !DILocation(line: 948, column: 3, scope: !2262, inlinedAt: !2337)
!2344 = !DILocation(line: 948, column: 32, scope: !2262, inlinedAt: !2337)
!2345 = !DILocation(line: 185, column: 48, scope: !2271, inlinedAt: !2336)
!2346 = !DILocation(line: 187, column: 3, scope: !2271, inlinedAt: !2336)
!2347 = !DILocation(line: 188, column: 13, scope: !2288, inlinedAt: !2336)
!2348 = !DILocation(line: 188, column: 7, scope: !2271, inlinedAt: !2336)
!2349 = !DILocation(line: 189, column: 5, scope: !2288, inlinedAt: !2336)
!2350 = !{!2351}
!2351 = distinct !{!2351, !2352, !"quoting_options_from_style: argument 0"}
!2352 = distinct !{!2352, !"quoting_options_from_style"}
!2353 = !DILocation(line: 191, column: 10, scope: !2271, inlinedAt: !2336)
!2354 = !DILocation(line: 192, column: 1, scope: !2271, inlinedAt: !2336)
!2355 = !DILocation(line: 949, column: 10, scope: !2262, inlinedAt: !2337)
!2356 = !DILocation(line: 950, column: 1, scope: !2262, inlinedAt: !2337)
!2357 = !DILocation(line: 963, column: 3, scope: !2329)
!2358 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !142, file: !142, line: 967, type: !2359, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!10, !103, !21, !13}
!2361 = !{!2362, !2363, !2364}
!2362 = !DILocalVariable(name: "s", arg: 1, scope: !2358, file: !142, line: 967, type: !103)
!2363 = !DILocalVariable(name: "arg", arg: 2, scope: !2358, file: !142, line: 967, type: !21)
!2364 = !DILocalVariable(name: "argsize", arg: 3, scope: !2358, file: !142, line: 967, type: !13)
!2365 = !DILocation(line: 187, column: 26, scope: !2271, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 956, column: 36, scope: !2299, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 969, column: 10, scope: !2358)
!2368 = !DILocation(line: 967, column: 40, scope: !2358)
!2369 = !DILocation(line: 967, column: 55, scope: !2358)
!2370 = !DILocation(line: 967, column: 67, scope: !2358)
!2371 = !DILocation(line: 953, column: 27, scope: !2299, inlinedAt: !2367)
!2372 = !DILocation(line: 953, column: 49, scope: !2299, inlinedAt: !2367)
!2373 = !DILocation(line: 954, column: 35, scope: !2299, inlinedAt: !2367)
!2374 = !DILocation(line: 954, column: 47, scope: !2299, inlinedAt: !2367)
!2375 = !DILocation(line: 956, column: 3, scope: !2299, inlinedAt: !2367)
!2376 = !DILocation(line: 956, column: 32, scope: !2299, inlinedAt: !2367)
!2377 = !DILocation(line: 185, column: 48, scope: !2271, inlinedAt: !2366)
!2378 = !DILocation(line: 187, column: 3, scope: !2271, inlinedAt: !2366)
!2379 = !DILocation(line: 188, column: 13, scope: !2288, inlinedAt: !2366)
!2380 = !DILocation(line: 188, column: 7, scope: !2271, inlinedAt: !2366)
!2381 = !DILocation(line: 189, column: 5, scope: !2288, inlinedAt: !2366)
!2382 = !{!2383}
!2383 = distinct !{!2383, !2384, !"quoting_options_from_style: argument 0"}
!2384 = distinct !{!2384, !"quoting_options_from_style"}
!2385 = !DILocation(line: 191, column: 10, scope: !2271, inlinedAt: !2366)
!2386 = !DILocation(line: 192, column: 1, scope: !2271, inlinedAt: !2366)
!2387 = !DILocation(line: 957, column: 10, scope: !2299, inlinedAt: !2367)
!2388 = !DILocation(line: 958, column: 1, scope: !2299, inlinedAt: !2367)
!2389 = !DILocation(line: 969, column: 3, scope: !2358)
!2390 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !142, file: !142, line: 973, type: !2391, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!10, !21, !13, !11}
!2393 = !{!2394, !2395, !2396, !2397}
!2394 = !DILocalVariable(name: "arg", arg: 1, scope: !2390, file: !142, line: 973, type: !21)
!2395 = !DILocalVariable(name: "argsize", arg: 2, scope: !2390, file: !142, line: 973, type: !13)
!2396 = !DILocalVariable(name: "ch", arg: 3, scope: !2390, file: !142, line: 973, type: !11)
!2397 = !DILocalVariable(name: "options", scope: !2390, file: !142, line: 975, type: !149)
!2398 = !DILocation(line: 973, column: 32, scope: !2390)
!2399 = !DILocation(line: 973, column: 44, scope: !2390)
!2400 = !DILocation(line: 973, column: 58, scope: !2390)
!2401 = !DILocation(line: 975, column: 3, scope: !2390)
!2402 = !DILocation(line: 976, column: 13, scope: !2390)
!2403 = !{i64 0, i64 4, !1061, i64 4, i64 4, !664, i64 8, i64 32, !1061, i64 40, i64 8, !600, i64 48, i64 8, !600}
!2404 = !DILocation(line: 975, column: 26, scope: !2390)
!2405 = !DILocation(line: 144, column: 43, scope: !850, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 977, column: 3, scope: !2390)
!2407 = !DILocation(line: 144, column: 51, scope: !850, inlinedAt: !2406)
!2408 = !DILocation(line: 144, column: 58, scope: !850, inlinedAt: !2406)
!2409 = !DILocation(line: 146, column: 17, scope: !850, inlinedAt: !2406)
!2410 = !DILocation(line: 148, column: 62, scope: !868, inlinedAt: !2406)
!2411 = !DILocation(line: 148, column: 57, scope: !868, inlinedAt: !2406)
!2412 = !DILocation(line: 147, column: 17, scope: !850, inlinedAt: !2406)
!2413 = !DILocation(line: 149, column: 18, scope: !850, inlinedAt: !2406)
!2414 = !DILocation(line: 149, column: 15, scope: !850, inlinedAt: !2406)
!2415 = !DILocation(line: 149, column: 7, scope: !850, inlinedAt: !2406)
!2416 = !DILocation(line: 150, column: 12, scope: !850, inlinedAt: !2406)
!2417 = !DILocation(line: 150, column: 15, scope: !850, inlinedAt: !2406)
!2418 = !DILocation(line: 150, column: 25, scope: !850, inlinedAt: !2406)
!2419 = !DILocation(line: 150, column: 7, scope: !850, inlinedAt: !2406)
!2420 = !DILocation(line: 151, column: 18, scope: !850, inlinedAt: !2406)
!2421 = !DILocation(line: 151, column: 23, scope: !850, inlinedAt: !2406)
!2422 = !DILocation(line: 151, column: 6, scope: !850, inlinedAt: !2406)
!2423 = !DILocation(line: 978, column: 10, scope: !2390)
!2424 = !DILocation(line: 979, column: 1, scope: !2390)
!2425 = !DILocation(line: 978, column: 3, scope: !2390)
!2426 = distinct !DISubprogram(name: "quotearg_char", scope: !142, file: !142, line: 982, type: !2427, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!10, !21, !11}
!2429 = !{!2430, !2431}
!2430 = !DILocalVariable(name: "arg", arg: 1, scope: !2426, file: !142, line: 982, type: !21)
!2431 = !DILocalVariable(name: "ch", arg: 2, scope: !2426, file: !142, line: 982, type: !11)
!2432 = !DILocation(line: 982, column: 28, scope: !2426)
!2433 = !DILocation(line: 982, column: 38, scope: !2426)
!2434 = !DILocation(line: 973, column: 32, scope: !2390, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 984, column: 10, scope: !2426)
!2436 = !DILocation(line: 973, column: 44, scope: !2390, inlinedAt: !2435)
!2437 = !DILocation(line: 973, column: 58, scope: !2390, inlinedAt: !2435)
!2438 = !DILocation(line: 975, column: 3, scope: !2390, inlinedAt: !2435)
!2439 = !DILocation(line: 976, column: 13, scope: !2390, inlinedAt: !2435)
!2440 = !DILocation(line: 975, column: 26, scope: !2390, inlinedAt: !2435)
!2441 = !DILocation(line: 144, column: 43, scope: !850, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 977, column: 3, scope: !2390, inlinedAt: !2435)
!2443 = !DILocation(line: 144, column: 51, scope: !850, inlinedAt: !2442)
!2444 = !DILocation(line: 144, column: 58, scope: !850, inlinedAt: !2442)
!2445 = !DILocation(line: 146, column: 17, scope: !850, inlinedAt: !2442)
!2446 = !DILocation(line: 148, column: 62, scope: !868, inlinedAt: !2442)
!2447 = !DILocation(line: 148, column: 57, scope: !868, inlinedAt: !2442)
!2448 = !DILocation(line: 147, column: 17, scope: !850, inlinedAt: !2442)
!2449 = !DILocation(line: 149, column: 18, scope: !850, inlinedAt: !2442)
!2450 = !DILocation(line: 149, column: 15, scope: !850, inlinedAt: !2442)
!2451 = !DILocation(line: 149, column: 7, scope: !850, inlinedAt: !2442)
!2452 = !DILocation(line: 150, column: 12, scope: !850, inlinedAt: !2442)
!2453 = !DILocation(line: 150, column: 15, scope: !850, inlinedAt: !2442)
!2454 = !DILocation(line: 150, column: 25, scope: !850, inlinedAt: !2442)
!2455 = !DILocation(line: 150, column: 7, scope: !850, inlinedAt: !2442)
!2456 = !DILocation(line: 151, column: 18, scope: !850, inlinedAt: !2442)
!2457 = !DILocation(line: 151, column: 23, scope: !850, inlinedAt: !2442)
!2458 = !DILocation(line: 151, column: 6, scope: !850, inlinedAt: !2442)
!2459 = !DILocation(line: 978, column: 10, scope: !2390, inlinedAt: !2435)
!2460 = !DILocation(line: 979, column: 1, scope: !2390, inlinedAt: !2435)
!2461 = !DILocation(line: 984, column: 3, scope: !2426)
!2462 = distinct !DISubprogram(name: "quotearg_colon", scope: !142, file: !142, line: 988, type: !2238, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2463)
!2463 = !{!2464}
!2464 = !DILocalVariable(name: "arg", arg: 1, scope: !2462, file: !142, line: 988, type: !21)
!2465 = !DILocation(line: 988, column: 29, scope: !2462)
!2466 = !DILocation(line: 982, column: 28, scope: !2426, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 990, column: 10, scope: !2462)
!2468 = !DILocation(line: 982, column: 38, scope: !2426, inlinedAt: !2467)
!2469 = !DILocation(line: 973, column: 32, scope: !2390, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 984, column: 10, scope: !2426, inlinedAt: !2467)
!2471 = !DILocation(line: 973, column: 44, scope: !2390, inlinedAt: !2470)
!2472 = !DILocation(line: 973, column: 58, scope: !2390, inlinedAt: !2470)
!2473 = !DILocation(line: 975, column: 3, scope: !2390, inlinedAt: !2470)
!2474 = !DILocation(line: 976, column: 13, scope: !2390, inlinedAt: !2470)
!2475 = !DILocation(line: 975, column: 26, scope: !2390, inlinedAt: !2470)
!2476 = !DILocation(line: 144, column: 43, scope: !850, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 977, column: 3, scope: !2390, inlinedAt: !2470)
!2478 = !DILocation(line: 144, column: 51, scope: !850, inlinedAt: !2477)
!2479 = !DILocation(line: 144, column: 58, scope: !850, inlinedAt: !2477)
!2480 = !DILocation(line: 146, column: 17, scope: !850, inlinedAt: !2477)
!2481 = !DILocation(line: 148, column: 57, scope: !868, inlinedAt: !2477)
!2482 = !DILocation(line: 147, column: 17, scope: !850, inlinedAt: !2477)
!2483 = !DILocation(line: 149, column: 7, scope: !850, inlinedAt: !2477)
!2484 = !DILocation(line: 150, column: 12, scope: !850, inlinedAt: !2477)
!2485 = !DILocation(line: 151, column: 6, scope: !850, inlinedAt: !2477)
!2486 = !DILocation(line: 978, column: 10, scope: !2390, inlinedAt: !2470)
!2487 = !DILocation(line: 979, column: 1, scope: !2390, inlinedAt: !2470)
!2488 = !DILocation(line: 990, column: 3, scope: !2462)
!2489 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !142, file: !142, line: 994, type: !2249, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2490)
!2490 = !{!2491, !2492}
!2491 = !DILocalVariable(name: "arg", arg: 1, scope: !2489, file: !142, line: 994, type: !21)
!2492 = !DILocalVariable(name: "argsize", arg: 2, scope: !2489, file: !142, line: 994, type: !13)
!2493 = !DILocation(line: 994, column: 33, scope: !2489)
!2494 = !DILocation(line: 994, column: 45, scope: !2489)
!2495 = !DILocation(line: 973, column: 32, scope: !2390, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 996, column: 10, scope: !2489)
!2497 = !DILocation(line: 973, column: 44, scope: !2390, inlinedAt: !2496)
!2498 = !DILocation(line: 973, column: 58, scope: !2390, inlinedAt: !2496)
!2499 = !DILocation(line: 975, column: 3, scope: !2390, inlinedAt: !2496)
!2500 = !DILocation(line: 976, column: 13, scope: !2390, inlinedAt: !2496)
!2501 = !DILocation(line: 975, column: 26, scope: !2390, inlinedAt: !2496)
!2502 = !DILocation(line: 144, column: 43, scope: !850, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 977, column: 3, scope: !2390, inlinedAt: !2496)
!2504 = !DILocation(line: 144, column: 51, scope: !850, inlinedAt: !2503)
!2505 = !DILocation(line: 144, column: 58, scope: !850, inlinedAt: !2503)
!2506 = !DILocation(line: 146, column: 17, scope: !850, inlinedAt: !2503)
!2507 = !DILocation(line: 148, column: 57, scope: !868, inlinedAt: !2503)
!2508 = !DILocation(line: 147, column: 17, scope: !850, inlinedAt: !2503)
!2509 = !DILocation(line: 149, column: 7, scope: !850, inlinedAt: !2503)
!2510 = !DILocation(line: 150, column: 12, scope: !850, inlinedAt: !2503)
!2511 = !DILocation(line: 151, column: 6, scope: !850, inlinedAt: !2503)
!2512 = !DILocation(line: 978, column: 10, scope: !2390, inlinedAt: !2496)
!2513 = !DILocation(line: 979, column: 1, scope: !2390, inlinedAt: !2496)
!2514 = !DILocation(line: 996, column: 3, scope: !2489)
!2515 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !142, file: !142, line: 1000, type: !2263, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2516)
!2516 = !{!2517, !2518, !2519, !2520}
!2517 = !DILocalVariable(name: "n", arg: 1, scope: !2515, file: !142, line: 1000, type: !51)
!2518 = !DILocalVariable(name: "s", arg: 2, scope: !2515, file: !142, line: 1000, type: !103)
!2519 = !DILocalVariable(name: "arg", arg: 3, scope: !2515, file: !142, line: 1000, type: !21)
!2520 = !DILocalVariable(name: "options", scope: !2515, file: !142, line: 1002, type: !149)
!2521 = !DILocation(line: 187, column: 26, scope: !2271, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 1003, column: 13, scope: !2515)
!2523 = !DILocation(line: 1000, column: 29, scope: !2515)
!2524 = !DILocation(line: 1000, column: 51, scope: !2515)
!2525 = !DILocation(line: 1000, column: 66, scope: !2515)
!2526 = !DILocation(line: 1002, column: 3, scope: !2515)
!2527 = !DILocation(line: 185, column: 48, scope: !2271, inlinedAt: !2522)
!2528 = !DILocation(line: 187, column: 3, scope: !2271, inlinedAt: !2522)
!2529 = !DILocation(line: 188, column: 13, scope: !2288, inlinedAt: !2522)
!2530 = !DILocation(line: 188, column: 7, scope: !2271, inlinedAt: !2522)
!2531 = !DILocation(line: 189, column: 5, scope: !2288, inlinedAt: !2522)
!2532 = !{!2533}
!2533 = distinct !{!2533, !2534, !"quoting_options_from_style: argument 0"}
!2534 = distinct !{!2534, !"quoting_options_from_style"}
!2535 = !DILocation(line: 191, column: 10, scope: !2271, inlinedAt: !2522)
!2536 = !DILocation(line: 192, column: 1, scope: !2271, inlinedAt: !2522)
!2537 = !DILocation(line: 1003, column: 13, scope: !2515)
!2538 = !DILocation(line: 1002, column: 26, scope: !2515)
!2539 = !DILocation(line: 144, column: 43, scope: !850, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 1004, column: 3, scope: !2515)
!2541 = !DILocation(line: 144, column: 51, scope: !850, inlinedAt: !2540)
!2542 = !DILocation(line: 144, column: 58, scope: !850, inlinedAt: !2540)
!2543 = !DILocation(line: 146, column: 17, scope: !850, inlinedAt: !2540)
!2544 = !DILocation(line: 148, column: 57, scope: !868, inlinedAt: !2540)
!2545 = !DILocation(line: 147, column: 17, scope: !850, inlinedAt: !2540)
!2546 = !DILocation(line: 149, column: 7, scope: !850, inlinedAt: !2540)
!2547 = !DILocation(line: 150, column: 12, scope: !850, inlinedAt: !2540)
!2548 = !DILocation(line: 151, column: 6, scope: !850, inlinedAt: !2540)
!2549 = !DILocation(line: 1005, column: 10, scope: !2515)
!2550 = !DILocation(line: 1006, column: 1, scope: !2515)
!2551 = !DILocation(line: 1005, column: 3, scope: !2515)
!2552 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !142, file: !142, line: 1009, type: !2553, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!10, !51, !21, !21, !21}
!2555 = !{!2556, !2557, !2558, !2559}
!2556 = !DILocalVariable(name: "n", arg: 1, scope: !2552, file: !142, line: 1009, type: !51)
!2557 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2552, file: !142, line: 1009, type: !21)
!2558 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2552, file: !142, line: 1010, type: !21)
!2559 = !DILocalVariable(name: "arg", arg: 4, scope: !2552, file: !142, line: 1010, type: !21)
!2560 = !DILocation(line: 1009, column: 24, scope: !2552)
!2561 = !DILocation(line: 1009, column: 39, scope: !2552)
!2562 = !DILocation(line: 1010, column: 32, scope: !2552)
!2563 = !DILocation(line: 1010, column: 57, scope: !2552)
!2564 = !DILocalVariable(name: "n", arg: 1, scope: !2565, file: !142, line: 1017, type: !51)
!2565 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !142, file: !142, line: 1017, type: !2566, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!10, !51, !21, !21, !21, !13}
!2568 = !{!2564, !2569, !2570, !2571, !2572, !2573}
!2569 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2565, file: !142, line: 1017, type: !21)
!2570 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2565, file: !142, line: 1018, type: !21)
!2571 = !DILocalVariable(name: "arg", arg: 4, scope: !2565, file: !142, line: 1019, type: !21)
!2572 = !DILocalVariable(name: "argsize", arg: 5, scope: !2565, file: !142, line: 1019, type: !13)
!2573 = !DILocalVariable(name: "o", scope: !2565, file: !142, line: 1021, type: !149)
!2574 = !DILocation(line: 1017, column: 28, scope: !2565, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 1012, column: 10, scope: !2552)
!2576 = !DILocation(line: 1017, column: 43, scope: !2565, inlinedAt: !2575)
!2577 = !DILocation(line: 1018, column: 36, scope: !2565, inlinedAt: !2575)
!2578 = !DILocation(line: 1019, column: 36, scope: !2565, inlinedAt: !2575)
!2579 = !DILocation(line: 1019, column: 48, scope: !2565, inlinedAt: !2575)
!2580 = !DILocation(line: 1021, column: 3, scope: !2565, inlinedAt: !2575)
!2581 = !DILocation(line: 1021, column: 30, scope: !2565, inlinedAt: !2575)
!2582 = !DILocation(line: 1021, column: 26, scope: !2565, inlinedAt: !2575)
!2583 = !DILocation(line: 171, column: 45, scope: !900, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 1022, column: 3, scope: !2565, inlinedAt: !2575)
!2585 = !DILocation(line: 172, column: 33, scope: !900, inlinedAt: !2584)
!2586 = !DILocation(line: 172, column: 57, scope: !900, inlinedAt: !2584)
!2587 = !DILocation(line: 176, column: 6, scope: !900, inlinedAt: !2584)
!2588 = !DILocation(line: 176, column: 12, scope: !900, inlinedAt: !2584)
!2589 = !DILocation(line: 177, column: 8, scope: !916, inlinedAt: !2584)
!2590 = !DILocation(line: 177, column: 23, scope: !918, inlinedAt: !2584)
!2591 = !DILocation(line: 177, column: 19, scope: !916, inlinedAt: !2584)
!2592 = !DILocation(line: 178, column: 5, scope: !916, inlinedAt: !2584)
!2593 = !DILocation(line: 179, column: 6, scope: !900, inlinedAt: !2584)
!2594 = !DILocation(line: 179, column: 17, scope: !900, inlinedAt: !2584)
!2595 = !DILocation(line: 180, column: 6, scope: !900, inlinedAt: !2584)
!2596 = !DILocation(line: 180, column: 18, scope: !900, inlinedAt: !2584)
!2597 = !DILocation(line: 1023, column: 10, scope: !2565, inlinedAt: !2575)
!2598 = !DILocation(line: 1024, column: 1, scope: !2565, inlinedAt: !2575)
!2599 = !DILocation(line: 1012, column: 3, scope: !2552)
!2600 = !DILocation(line: 1017, column: 28, scope: !2565)
!2601 = !DILocation(line: 1017, column: 43, scope: !2565)
!2602 = !DILocation(line: 1018, column: 36, scope: !2565)
!2603 = !DILocation(line: 1019, column: 36, scope: !2565)
!2604 = !DILocation(line: 1019, column: 48, scope: !2565)
!2605 = !DILocation(line: 1021, column: 3, scope: !2565)
!2606 = !DILocation(line: 1021, column: 30, scope: !2565)
!2607 = !DILocation(line: 1021, column: 26, scope: !2565)
!2608 = !DILocation(line: 171, column: 45, scope: !900, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1022, column: 3, scope: !2565)
!2610 = !DILocation(line: 172, column: 33, scope: !900, inlinedAt: !2609)
!2611 = !DILocation(line: 172, column: 57, scope: !900, inlinedAt: !2609)
!2612 = !DILocation(line: 176, column: 6, scope: !900, inlinedAt: !2609)
!2613 = !DILocation(line: 176, column: 12, scope: !900, inlinedAt: !2609)
!2614 = !DILocation(line: 177, column: 8, scope: !916, inlinedAt: !2609)
!2615 = !DILocation(line: 177, column: 23, scope: !918, inlinedAt: !2609)
!2616 = !DILocation(line: 177, column: 19, scope: !916, inlinedAt: !2609)
!2617 = !DILocation(line: 178, column: 5, scope: !916, inlinedAt: !2609)
!2618 = !DILocation(line: 179, column: 6, scope: !900, inlinedAt: !2609)
!2619 = !DILocation(line: 179, column: 17, scope: !900, inlinedAt: !2609)
!2620 = !DILocation(line: 180, column: 6, scope: !900, inlinedAt: !2609)
!2621 = !DILocation(line: 180, column: 18, scope: !900, inlinedAt: !2609)
!2622 = !DILocation(line: 1023, column: 10, scope: !2565)
!2623 = !DILocation(line: 1024, column: 1, scope: !2565)
!2624 = !DILocation(line: 1023, column: 3, scope: !2565)
!2625 = distinct !DISubprogram(name: "quotearg_custom", scope: !142, file: !142, line: 1027, type: !2626, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!10, !21, !21, !21}
!2628 = !{!2629, !2630, !2631}
!2629 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2625, file: !142, line: 1027, type: !21)
!2630 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2625, file: !142, line: 1027, type: !21)
!2631 = !DILocalVariable(name: "arg", arg: 3, scope: !2625, file: !142, line: 1028, type: !21)
!2632 = !DILocation(line: 1027, column: 30, scope: !2625)
!2633 = !DILocation(line: 1027, column: 54, scope: !2625)
!2634 = !DILocation(line: 1028, column: 30, scope: !2625)
!2635 = !DILocation(line: 1009, column: 24, scope: !2552, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 1030, column: 10, scope: !2625)
!2637 = !DILocation(line: 1009, column: 39, scope: !2552, inlinedAt: !2636)
!2638 = !DILocation(line: 1010, column: 32, scope: !2552, inlinedAt: !2636)
!2639 = !DILocation(line: 1010, column: 57, scope: !2552, inlinedAt: !2636)
!2640 = !DILocation(line: 1017, column: 28, scope: !2565, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 1012, column: 10, scope: !2552, inlinedAt: !2636)
!2642 = !DILocation(line: 1017, column: 43, scope: !2565, inlinedAt: !2641)
!2643 = !DILocation(line: 1018, column: 36, scope: !2565, inlinedAt: !2641)
!2644 = !DILocation(line: 1019, column: 36, scope: !2565, inlinedAt: !2641)
!2645 = !DILocation(line: 1019, column: 48, scope: !2565, inlinedAt: !2641)
!2646 = !DILocation(line: 1021, column: 3, scope: !2565, inlinedAt: !2641)
!2647 = !DILocation(line: 1021, column: 30, scope: !2565, inlinedAt: !2641)
!2648 = !DILocation(line: 1021, column: 26, scope: !2565, inlinedAt: !2641)
!2649 = !DILocation(line: 171, column: 45, scope: !900, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 1022, column: 3, scope: !2565, inlinedAt: !2641)
!2651 = !DILocation(line: 172, column: 33, scope: !900, inlinedAt: !2650)
!2652 = !DILocation(line: 172, column: 57, scope: !900, inlinedAt: !2650)
!2653 = !DILocation(line: 176, column: 6, scope: !900, inlinedAt: !2650)
!2654 = !DILocation(line: 176, column: 12, scope: !900, inlinedAt: !2650)
!2655 = !DILocation(line: 177, column: 8, scope: !916, inlinedAt: !2650)
!2656 = !DILocation(line: 177, column: 23, scope: !918, inlinedAt: !2650)
!2657 = !DILocation(line: 177, column: 19, scope: !916, inlinedAt: !2650)
!2658 = !DILocation(line: 178, column: 5, scope: !916, inlinedAt: !2650)
!2659 = !DILocation(line: 179, column: 6, scope: !900, inlinedAt: !2650)
!2660 = !DILocation(line: 179, column: 17, scope: !900, inlinedAt: !2650)
!2661 = !DILocation(line: 180, column: 6, scope: !900, inlinedAt: !2650)
!2662 = !DILocation(line: 180, column: 18, scope: !900, inlinedAt: !2650)
!2663 = !DILocation(line: 1023, column: 10, scope: !2565, inlinedAt: !2641)
!2664 = !DILocation(line: 1024, column: 1, scope: !2565, inlinedAt: !2641)
!2665 = !DILocation(line: 1030, column: 3, scope: !2625)
!2666 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !142, file: !142, line: 1034, type: !2667, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!10, !21, !21, !21, !13}
!2669 = !{!2670, !2671, !2672, !2673}
!2670 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2666, file: !142, line: 1034, type: !21)
!2671 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2666, file: !142, line: 1034, type: !21)
!2672 = !DILocalVariable(name: "arg", arg: 3, scope: !2666, file: !142, line: 1035, type: !21)
!2673 = !DILocalVariable(name: "argsize", arg: 4, scope: !2666, file: !142, line: 1035, type: !13)
!2674 = !DILocation(line: 1034, column: 34, scope: !2666)
!2675 = !DILocation(line: 1034, column: 58, scope: !2666)
!2676 = !DILocation(line: 1035, column: 34, scope: !2666)
!2677 = !DILocation(line: 1035, column: 46, scope: !2666)
!2678 = !DILocation(line: 1017, column: 28, scope: !2565, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 1037, column: 10, scope: !2666)
!2680 = !DILocation(line: 1017, column: 43, scope: !2565, inlinedAt: !2679)
!2681 = !DILocation(line: 1018, column: 36, scope: !2565, inlinedAt: !2679)
!2682 = !DILocation(line: 1019, column: 36, scope: !2565, inlinedAt: !2679)
!2683 = !DILocation(line: 1019, column: 48, scope: !2565, inlinedAt: !2679)
!2684 = !DILocation(line: 1021, column: 3, scope: !2565, inlinedAt: !2679)
!2685 = !DILocation(line: 1021, column: 30, scope: !2565, inlinedAt: !2679)
!2686 = !DILocation(line: 1021, column: 26, scope: !2565, inlinedAt: !2679)
!2687 = !DILocation(line: 171, column: 45, scope: !900, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 1022, column: 3, scope: !2565, inlinedAt: !2679)
!2689 = !DILocation(line: 172, column: 33, scope: !900, inlinedAt: !2688)
!2690 = !DILocation(line: 172, column: 57, scope: !900, inlinedAt: !2688)
!2691 = !DILocation(line: 176, column: 6, scope: !900, inlinedAt: !2688)
!2692 = !DILocation(line: 176, column: 12, scope: !900, inlinedAt: !2688)
!2693 = !DILocation(line: 177, column: 8, scope: !916, inlinedAt: !2688)
!2694 = !DILocation(line: 177, column: 23, scope: !918, inlinedAt: !2688)
!2695 = !DILocation(line: 177, column: 19, scope: !916, inlinedAt: !2688)
!2696 = !DILocation(line: 178, column: 5, scope: !916, inlinedAt: !2688)
!2697 = !DILocation(line: 179, column: 6, scope: !900, inlinedAt: !2688)
!2698 = !DILocation(line: 179, column: 17, scope: !900, inlinedAt: !2688)
!2699 = !DILocation(line: 180, column: 6, scope: !900, inlinedAt: !2688)
!2700 = !DILocation(line: 180, column: 18, scope: !900, inlinedAt: !2688)
!2701 = !DILocation(line: 1023, column: 10, scope: !2565, inlinedAt: !2679)
!2702 = !DILocation(line: 1024, column: 1, scope: !2565, inlinedAt: !2679)
!2703 = !DILocation(line: 1037, column: 3, scope: !2666)
!2704 = distinct !DISubprogram(name: "quote_n_mem", scope: !142, file: !142, line: 1052, type: !2705, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!21, !51, !21, !13}
!2707 = !{!2708, !2709, !2710}
!2708 = !DILocalVariable(name: "n", arg: 1, scope: !2704, file: !142, line: 1052, type: !51)
!2709 = !DILocalVariable(name: "arg", arg: 2, scope: !2704, file: !142, line: 1052, type: !21)
!2710 = !DILocalVariable(name: "argsize", arg: 3, scope: !2704, file: !142, line: 1052, type: !13)
!2711 = !DILocation(line: 1052, column: 18, scope: !2704)
!2712 = !DILocation(line: 1052, column: 33, scope: !2704)
!2713 = !DILocation(line: 1052, column: 45, scope: !2704)
!2714 = !DILocation(line: 1054, column: 10, scope: !2704)
!2715 = !DILocation(line: 1054, column: 3, scope: !2704)
!2716 = distinct !DISubprogram(name: "quote_mem", scope: !142, file: !142, line: 1058, type: !2717, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2719)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!21, !21, !13}
!2719 = !{!2720, !2721}
!2720 = !DILocalVariable(name: "arg", arg: 1, scope: !2716, file: !142, line: 1058, type: !21)
!2721 = !DILocalVariable(name: "argsize", arg: 2, scope: !2716, file: !142, line: 1058, type: !13)
!2722 = !DILocation(line: 1058, column: 24, scope: !2716)
!2723 = !DILocation(line: 1058, column: 36, scope: !2716)
!2724 = !DILocation(line: 1052, column: 18, scope: !2704, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 1060, column: 10, scope: !2716)
!2726 = !DILocation(line: 1052, column: 33, scope: !2704, inlinedAt: !2725)
!2727 = !DILocation(line: 1052, column: 45, scope: !2704, inlinedAt: !2725)
!2728 = !DILocation(line: 1054, column: 10, scope: !2704, inlinedAt: !2725)
!2729 = !DILocation(line: 1060, column: 3, scope: !2716)
!2730 = distinct !DISubprogram(name: "quote_n", scope: !142, file: !142, line: 1064, type: !2731, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!21, !51, !21}
!2733 = !{!2734, !2735}
!2734 = !DILocalVariable(name: "n", arg: 1, scope: !2730, file: !142, line: 1064, type: !51)
!2735 = !DILocalVariable(name: "arg", arg: 2, scope: !2730, file: !142, line: 1064, type: !21)
!2736 = !DILocation(line: 1064, column: 14, scope: !2730)
!2737 = !DILocation(line: 1064, column: 29, scope: !2730)
!2738 = !DILocation(line: 1052, column: 18, scope: !2704, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 1066, column: 10, scope: !2730)
!2740 = !DILocation(line: 1052, column: 33, scope: !2704, inlinedAt: !2739)
!2741 = !DILocation(line: 1052, column: 45, scope: !2704, inlinedAt: !2739)
!2742 = !DILocation(line: 1054, column: 10, scope: !2704, inlinedAt: !2739)
!2743 = !DILocation(line: 1066, column: 3, scope: !2730)
!2744 = distinct !DISubprogram(name: "quote", scope: !142, file: !142, line: 1070, type: !2745, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !2747)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!21, !21}
!2747 = !{!2748}
!2748 = !DILocalVariable(name: "arg", arg: 1, scope: !2744, file: !142, line: 1070, type: !21)
!2749 = !DILocation(line: 1070, column: 20, scope: !2744)
!2750 = !DILocation(line: 1064, column: 14, scope: !2730, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 1072, column: 10, scope: !2744)
!2752 = !DILocation(line: 1064, column: 29, scope: !2730, inlinedAt: !2751)
!2753 = !DILocation(line: 1052, column: 18, scope: !2704, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 1066, column: 10, scope: !2730, inlinedAt: !2751)
!2755 = !DILocation(line: 1052, column: 33, scope: !2704, inlinedAt: !2754)
!2756 = !DILocation(line: 1052, column: 45, scope: !2704, inlinedAt: !2754)
!2757 = !DILocation(line: 1054, column: 10, scope: !2704, inlinedAt: !2754)
!2758 = !DILocation(line: 1072, column: 3, scope: !2744)
!2759 = distinct !DISubprogram(name: "version_etc_arn", scope: !543, file: !543, line: 62, type: !2760, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !2818)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{null, !2762, !21, !21, !21, !2817, !13}
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2764, line: 49, baseType: !2765)
!2764 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2766, line: 241, size: 1728, elements: !2767)
!2766 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2767 = !{!2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2788, !2789, !2790, !2791, !2795, !2796, !2798, !2802, !2805, !2807, !2808, !2809, !2810, !2811, !2812, !2813}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2765, file: !2766, line: 242, baseType: !51, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2765, file: !2766, line: 247, baseType: !10, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2765, file: !2766, line: 248, baseType: !10, size: 64, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2765, file: !2766, line: 249, baseType: !10, size: 64, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2765, file: !2766, line: 250, baseType: !10, size: 64, offset: 256)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2765, file: !2766, line: 251, baseType: !10, size: 64, offset: 320)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2765, file: !2766, line: 252, baseType: !10, size: 64, offset: 384)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2765, file: !2766, line: 253, baseType: !10, size: 64, offset: 448)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2765, file: !2766, line: 254, baseType: !10, size: 64, offset: 512)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2765, file: !2766, line: 256, baseType: !10, size: 64, offset: 576)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2765, file: !2766, line: 257, baseType: !10, size: 64, offset: 640)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2765, file: !2766, line: 258, baseType: !10, size: 64, offset: 704)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2765, file: !2766, line: 260, baseType: !2781, size: 64, offset: 768)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2766, line: 156, size: 192, elements: !2783)
!2783 = !{!2784, !2785, !2787}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2782, file: !2766, line: 157, baseType: !2781, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2782, file: !2766, line: 158, baseType: !2786, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2782, file: !2766, line: 162, baseType: !51, size: 32, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2765, file: !2766, line: 262, baseType: !2786, size: 64, offset: 832)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2765, file: !2766, line: 264, baseType: !51, size: 32, offset: 896)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2765, file: !2766, line: 268, baseType: !51, size: 32, offset: 928)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2765, file: !2766, line: 270, baseType: !2792, size: 64, offset: 960)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2793, line: 140, baseType: !2794)
!2793 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2794 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2765, file: !2766, line: 274, baseType: !138, size: 16, offset: 1024)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2765, file: !2766, line: 275, baseType: !2797, size: 8, offset: 1040)
!2797 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2765, file: !2766, line: 276, baseType: !2799, size: 8, offset: 1048)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !2800)
!2800 = !{!2801}
!2801 = !DISubrange(count: 1)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2765, file: !2766, line: 280, baseType: !2803, size: 64, offset: 1088)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2766, line: 150, baseType: null)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2765, file: !2766, line: 289, baseType: !2806, size: 64, offset: 1152)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2793, line: 141, baseType: !2794)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2765, file: !2766, line: 297, baseType: !12, size: 64, offset: 1216)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2765, file: !2766, line: 298, baseType: !12, size: 64, offset: 1280)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2765, file: !2766, line: 299, baseType: !12, size: 64, offset: 1344)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2765, file: !2766, line: 300, baseType: !12, size: 64, offset: 1408)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2765, file: !2766, line: 302, baseType: !13, size: 64, offset: 1472)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2765, file: !2766, line: 303, baseType: !51, size: 32, offset: 1536)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2765, file: !2766, line: 305, baseType: !2814, size: 160, offset: 1568)
!2814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !2815)
!2815 = !{!2816}
!2816 = !DISubrange(count: 20)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!2818 = !{!2819, !2820, !2821, !2822, !2823, !2824}
!2819 = !DILocalVariable(name: "stream", arg: 1, scope: !2759, file: !543, line: 62, type: !2762)
!2820 = !DILocalVariable(name: "command_name", arg: 2, scope: !2759, file: !543, line: 63, type: !21)
!2821 = !DILocalVariable(name: "package", arg: 3, scope: !2759, file: !543, line: 63, type: !21)
!2822 = !DILocalVariable(name: "version", arg: 4, scope: !2759, file: !543, line: 64, type: !21)
!2823 = !DILocalVariable(name: "authors", arg: 5, scope: !2759, file: !543, line: 65, type: !2817)
!2824 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2759, file: !543, line: 65, type: !13)
!2825 = !DILocation(line: 62, column: 24, scope: !2759)
!2826 = !DILocation(line: 63, column: 30, scope: !2759)
!2827 = !DILocation(line: 63, column: 56, scope: !2759)
!2828 = !DILocation(line: 64, column: 30, scope: !2759)
!2829 = !DILocation(line: 65, column: 39, scope: !2759)
!2830 = !DILocation(line: 65, column: 55, scope: !2759)
!2831 = !DILocation(line: 67, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2759, file: !543, line: 67, column: 7)
!2833 = !DILocation(line: 67, column: 7, scope: !2759)
!2834 = !DILocation(line: 68, column: 5, scope: !2832)
!2835 = !DILocation(line: 70, column: 5, scope: !2832)
!2836 = !DILocation(line: 84, column: 3, scope: !2759)
!2837 = !DILocation(line: 84, column: 3, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !2759, file: !543, discriminator: 1)
!2839 = !DILocation(line: 86, column: 3, scope: !2759)
!2840 = !DILocation(line: 86, column: 3, scope: !2838)
!2841 = !DILocation(line: 95, column: 3, scope: !2759)
!2842 = !DILocation(line: 99, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2759, file: !543, line: 96, column: 5)
!2844 = !DILocation(line: 102, column: 7, scope: !2843)
!2845 = !DILocation(line: 102, column: 7, scope: !2846)
!2846 = !DILexicalBlockFile(scope: !2843, file: !543, discriminator: 1)
!2847 = !DILocation(line: 103, column: 7, scope: !2843)
!2848 = !DILocation(line: 106, column: 7, scope: !2843)
!2849 = !DILocation(line: 106, column: 7, scope: !2846)
!2850 = !DILocation(line: 107, column: 7, scope: !2843)
!2851 = !DILocation(line: 110, column: 7, scope: !2843)
!2852 = !DILocation(line: 110, column: 7, scope: !2846)
!2853 = !DILocation(line: 112, column: 7, scope: !2843)
!2854 = !DILocation(line: 117, column: 7, scope: !2843)
!2855 = !DILocation(line: 117, column: 7, scope: !2846)
!2856 = !DILocation(line: 119, column: 7, scope: !2843)
!2857 = !DILocation(line: 124, column: 7, scope: !2843)
!2858 = !DILocation(line: 124, column: 7, scope: !2846)
!2859 = !DILocation(line: 126, column: 7, scope: !2843)
!2860 = !DILocation(line: 131, column: 7, scope: !2843)
!2861 = !DILocation(line: 131, column: 7, scope: !2846)
!2862 = !DILocation(line: 134, column: 7, scope: !2843)
!2863 = !DILocation(line: 139, column: 7, scope: !2843)
!2864 = !DILocation(line: 139, column: 7, scope: !2846)
!2865 = !DILocation(line: 142, column: 7, scope: !2843)
!2866 = !DILocation(line: 147, column: 7, scope: !2843)
!2867 = !DILocation(line: 147, column: 7, scope: !2846)
!2868 = !DILocation(line: 151, column: 7, scope: !2843)
!2869 = !DILocation(line: 156, column: 7, scope: !2843)
!2870 = !DILocation(line: 156, column: 7, scope: !2846)
!2871 = !DILocation(line: 160, column: 7, scope: !2843)
!2872 = !DILocation(line: 167, column: 7, scope: !2843)
!2873 = !DILocation(line: 167, column: 7, scope: !2846)
!2874 = !DILocation(line: 171, column: 7, scope: !2843)
!2875 = !DILocation(line: 173, column: 1, scope: !2759)
!2876 = distinct !DISubprogram(name: "version_etc_ar", scope: !543, file: !543, line: 180, type: !2877, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{null, !2762, !21, !21, !21, !2817}
!2879 = !{!2880, !2881, !2882, !2883, !2884, !2885}
!2880 = !DILocalVariable(name: "stream", arg: 1, scope: !2876, file: !543, line: 180, type: !2762)
!2881 = !DILocalVariable(name: "command_name", arg: 2, scope: !2876, file: !543, line: 181, type: !21)
!2882 = !DILocalVariable(name: "package", arg: 3, scope: !2876, file: !543, line: 181, type: !21)
!2883 = !DILocalVariable(name: "version", arg: 4, scope: !2876, file: !543, line: 182, type: !21)
!2884 = !DILocalVariable(name: "authors", arg: 5, scope: !2876, file: !543, line: 182, type: !2817)
!2885 = !DILocalVariable(name: "n_authors", scope: !2876, file: !543, line: 184, type: !13)
!2886 = !DILocation(line: 180, column: 23, scope: !2876)
!2887 = !DILocation(line: 181, column: 29, scope: !2876)
!2888 = !DILocation(line: 181, column: 55, scope: !2876)
!2889 = !DILocation(line: 182, column: 29, scope: !2876)
!2890 = !DILocation(line: 182, column: 59, scope: !2876)
!2891 = !DILocation(line: 184, column: 10, scope: !2876)
!2892 = !DILocation(line: 186, column: 8, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2876, file: !543, line: 186, column: 3)
!2894 = !DILocation(line: 186, column: 23, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2896, file: !543, discriminator: 1)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !543, line: 186, column: 3)
!2897 = !DILocation(line: 186, column: 3, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2893, file: !543, discriminator: 1)
!2899 = !DILocation(line: 186, column: 52, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2896, file: !543, discriminator: 3)
!2901 = distinct !{!2901, !2902, !2903}
!2902 = !DILocation(line: 186, column: 3, scope: !2893)
!2903 = !DILocation(line: 187, column: 5, scope: !2893)
!2904 = !DILocation(line: 188, column: 3, scope: !2876)
!2905 = !DILocation(line: 189, column: 1, scope: !2876)
!2906 = distinct !DISubprogram(name: "version_etc_va", scope: !543, file: !543, line: 196, type: !2907, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !2916)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{null, !2762, !21, !21, !21, !2909}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !540, line: 189, size: 192, elements: !2911)
!2911 = !{!2912, !2913, !2914, !2915}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2910, file: !540, line: 189, baseType: !155, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2910, file: !540, line: 189, baseType: !155, size: 32, offset: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2910, file: !540, line: 189, baseType: !12, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2910, file: !540, line: 189, baseType: !12, size: 64, offset: 128)
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2923}
!2917 = !DILocalVariable(name: "stream", arg: 1, scope: !2906, file: !543, line: 196, type: !2762)
!2918 = !DILocalVariable(name: "command_name", arg: 2, scope: !2906, file: !543, line: 197, type: !21)
!2919 = !DILocalVariable(name: "package", arg: 3, scope: !2906, file: !543, line: 197, type: !21)
!2920 = !DILocalVariable(name: "version", arg: 4, scope: !2906, file: !543, line: 198, type: !21)
!2921 = !DILocalVariable(name: "authors", arg: 5, scope: !2906, file: !543, line: 198, type: !2909)
!2922 = !DILocalVariable(name: "n_authors", scope: !2906, file: !543, line: 200, type: !13)
!2923 = !DILocalVariable(name: "authtab", scope: !2906, file: !543, line: 201, type: !2924)
!2924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 640, elements: !145)
!2925 = !DILocation(line: 196, column: 23, scope: !2906)
!2926 = !DILocation(line: 197, column: 29, scope: !2906)
!2927 = !DILocation(line: 197, column: 55, scope: !2906)
!2928 = !DILocation(line: 198, column: 29, scope: !2906)
!2929 = !DILocation(line: 198, column: 46, scope: !2906)
!2930 = !DILocation(line: 201, column: 3, scope: !2906)
!2931 = !DILocation(line: 201, column: 15, scope: !2906)
!2932 = !DILocation(line: 200, column: 10, scope: !2906)
!2933 = !DILocation(line: 205, column: 35, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !2935, file: !543, discriminator: 1)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !543, line: 203, column: 3)
!2936 = distinct !DILexicalBlock(scope: !2906, file: !543, line: 203, column: 3)
!2937 = !DILocation(line: 205, column: 35, scope: !2938)
!2938 = !DILexicalBlockFile(scope: !2935, file: !543, discriminator: 2)
!2939 = !DILocation(line: 205, column: 35, scope: !2940)
!2940 = !DILexicalBlockFile(scope: !2935, file: !543, discriminator: 3)
!2941 = !DILocation(line: 205, column: 35, scope: !2942)
!2942 = !DILexicalBlockFile(scope: !2935, file: !543, discriminator: 4)
!2943 = !DILocation(line: 205, column: 14, scope: !2942)
!2944 = !DILocation(line: 205, column: 33, scope: !2942)
!2945 = !DILocation(line: 205, column: 67, scope: !2942)
!2946 = !DILocation(line: 203, column: 3, scope: !2947)
!2947 = !DILexicalBlockFile(scope: !2936, file: !543, discriminator: 1)
!2948 = !DILocation(line: 208, column: 3, scope: !2906)
!2949 = !DILocation(line: 210, column: 1, scope: !2906)
!2950 = distinct !DISubprogram(name: "version_etc", scope: !543, file: !543, line: 227, type: !2951, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{null, !2762, !21, !21, !21, null}
!2953 = !{!2954, !2955, !2956, !2957, !2958}
!2954 = !DILocalVariable(name: "stream", arg: 1, scope: !2950, file: !543, line: 227, type: !2762)
!2955 = !DILocalVariable(name: "command_name", arg: 2, scope: !2950, file: !543, line: 228, type: !21)
!2956 = !DILocalVariable(name: "package", arg: 3, scope: !2950, file: !543, line: 228, type: !21)
!2957 = !DILocalVariable(name: "version", arg: 4, scope: !2950, file: !543, line: 229, type: !21)
!2958 = !DILocalVariable(name: "authors", scope: !2950, file: !543, line: 231, type: !2959)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2764, line: 80, baseType: !2960)
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2961, line: 50, baseType: !2962)
!2961 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !540, line: 231, baseType: !2963)
!2963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2910, size: 192, elements: !2800)
!2964 = !DILocation(line: 227, column: 20, scope: !2950)
!2965 = !DILocation(line: 228, column: 26, scope: !2950)
!2966 = !DILocation(line: 228, column: 52, scope: !2950)
!2967 = !DILocation(line: 229, column: 26, scope: !2950)
!2968 = !DILocation(line: 231, column: 3, scope: !2950)
!2969 = !DILocation(line: 231, column: 11, scope: !2950)
!2970 = !DILocation(line: 233, column: 3, scope: !2950)
!2971 = !DILocation(line: 234, column: 3, scope: !2950)
!2972 = !DILocation(line: 235, column: 3, scope: !2950)
!2973 = !DILocation(line: 236, column: 1, scope: !2950)
!2974 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !543, file: !543, line: 239, type: !725, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !539, variables: !74)
!2975 = !DILocation(line: 245, column: 3, scope: !2974)
!2976 = !DILocation(line: 245, column: 3, scope: !2977)
!2977 = !DILexicalBlockFile(scope: !2974, file: !543, discriminator: 1)
!2978 = !DILocation(line: 251, column: 3, scope: !2974)
!2979 = !DILocation(line: 251, column: 3, scope: !2977)
!2980 = !DILocation(line: 256, column: 3, scope: !2974)
!2981 = !DILocation(line: 256, column: 3, scope: !2977)
!2982 = !DILocation(line: 258, column: 1, scope: !2974)
!2983 = distinct !DISubprogram(name: "xnmalloc", scope: !551, file: !551, line: 105, type: !2984, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!12, !13, !13}
!2986 = !{!2987, !2988}
!2987 = !DILocalVariable(name: "n", arg: 1, scope: !2983, file: !551, line: 105, type: !13)
!2988 = !DILocalVariable(name: "s", arg: 2, scope: !2983, file: !551, line: 105, type: !13)
!2989 = !DILocation(line: 105, column: 18, scope: !2983)
!2990 = !DILocation(line: 105, column: 28, scope: !2983)
!2991 = !DILocation(line: 107, column: 7, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2983, file: !551, line: 107, column: 7)
!2993 = !DILocation(line: 107, column: 7, scope: !2983)
!2994 = !DILocation(line: 108, column: 5, scope: !2992)
!2995 = !DILocation(line: 109, column: 21, scope: !2983)
!2996 = !DILocalVariable(name: "n", arg: 1, scope: !2997, file: !2998, line: 39, type: !13)
!2997 = distinct !DISubprogram(name: "xmalloc", scope: !2998, file: !2998, line: 39, type: !2999, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3001)
!2998 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!12, !13}
!3001 = !{!2996, !3002}
!3002 = !DILocalVariable(name: "p", scope: !2997, file: !2998, line: 41, type: !12)
!3003 = !DILocation(line: 39, column: 17, scope: !2997, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 109, column: 10, scope: !2983)
!3005 = !DILocation(line: 41, column: 13, scope: !2997, inlinedAt: !3004)
!3006 = !DILocation(line: 41, column: 9, scope: !2997, inlinedAt: !3004)
!3007 = !DILocation(line: 42, column: 8, scope: !3008, inlinedAt: !3004)
!3008 = distinct !DILexicalBlock(scope: !2997, file: !2998, line: 42, column: 7)
!3009 = !DILocation(line: 42, column: 15, scope: !3010, inlinedAt: !3004)
!3010 = !DILexicalBlockFile(scope: !3008, file: !2998, discriminator: 1)
!3011 = !DILocation(line: 42, column: 10, scope: !3008, inlinedAt: !3004)
!3012 = !DILocation(line: 43, column: 5, scope: !3008, inlinedAt: !3004)
!3013 = !DILocation(line: 109, column: 3, scope: !2983)
!3014 = !DILocation(line: 39, column: 17, scope: !2997)
!3015 = !DILocation(line: 41, column: 13, scope: !2997)
!3016 = !DILocation(line: 41, column: 9, scope: !2997)
!3017 = !DILocation(line: 42, column: 8, scope: !3008)
!3018 = !DILocation(line: 42, column: 15, scope: !3010)
!3019 = !DILocation(line: 42, column: 10, scope: !3008)
!3020 = !DILocation(line: 43, column: 5, scope: !3008)
!3021 = !DILocation(line: 44, column: 3, scope: !2997)
!3022 = distinct !DISubprogram(name: "xnrealloc", scope: !551, file: !551, line: 118, type: !3023, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!12, !12, !13, !13}
!3025 = !{!3026, !3027, !3028}
!3026 = !DILocalVariable(name: "p", arg: 1, scope: !3022, file: !551, line: 118, type: !12)
!3027 = !DILocalVariable(name: "n", arg: 2, scope: !3022, file: !551, line: 118, type: !13)
!3028 = !DILocalVariable(name: "s", arg: 3, scope: !3022, file: !551, line: 118, type: !13)
!3029 = !DILocation(line: 118, column: 18, scope: !3022)
!3030 = !DILocation(line: 118, column: 28, scope: !3022)
!3031 = !DILocation(line: 118, column: 38, scope: !3022)
!3032 = !DILocation(line: 120, column: 7, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3022, file: !551, line: 120, column: 7)
!3034 = !DILocation(line: 120, column: 7, scope: !3022)
!3035 = !DILocation(line: 121, column: 5, scope: !3033)
!3036 = !DILocation(line: 122, column: 25, scope: !3022)
!3037 = !DILocalVariable(name: "p", arg: 1, scope: !3038, file: !2998, line: 51, type: !12)
!3038 = distinct !DISubprogram(name: "xrealloc", scope: !2998, file: !2998, line: 51, type: !3039, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!12, !12, !13}
!3041 = !{!3037, !3042}
!3042 = !DILocalVariable(name: "n", arg: 2, scope: !3038, file: !2998, line: 51, type: !13)
!3043 = !DILocation(line: 51, column: 17, scope: !3038, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 122, column: 10, scope: !3022)
!3045 = !DILocation(line: 51, column: 27, scope: !3038, inlinedAt: !3044)
!3046 = !DILocation(line: 53, column: 8, scope: !3047, inlinedAt: !3044)
!3047 = distinct !DILexicalBlock(scope: !3038, file: !2998, line: 53, column: 7)
!3048 = !DILocation(line: 53, column: 13, scope: !3049, inlinedAt: !3044)
!3049 = !DILexicalBlockFile(scope: !3047, file: !2998, discriminator: 1)
!3050 = !DILocation(line: 53, column: 10, scope: !3047, inlinedAt: !3044)
!3051 = !DILocation(line: 57, column: 7, scope: !3052, inlinedAt: !3044)
!3052 = distinct !DILexicalBlock(scope: !3047, file: !2998, line: 54, column: 5)
!3053 = !DILocation(line: 58, column: 7, scope: !3052, inlinedAt: !3044)
!3054 = !DILocation(line: 61, column: 7, scope: !3038, inlinedAt: !3044)
!3055 = !DILocation(line: 62, column: 8, scope: !3056, inlinedAt: !3044)
!3056 = distinct !DILexicalBlock(scope: !3038, file: !2998, line: 62, column: 7)
!3057 = !DILocation(line: 62, column: 13, scope: !3058, inlinedAt: !3044)
!3058 = !DILexicalBlockFile(scope: !3056, file: !2998, discriminator: 1)
!3059 = !DILocation(line: 62, column: 10, scope: !3056, inlinedAt: !3044)
!3060 = !DILocation(line: 63, column: 5, scope: !3056, inlinedAt: !3044)
!3061 = !DILocation(line: 122, column: 3, scope: !3022)
!3062 = !DILocation(line: 51, column: 17, scope: !3038)
!3063 = !DILocation(line: 51, column: 27, scope: !3038)
!3064 = !DILocation(line: 53, column: 8, scope: !3047)
!3065 = !DILocation(line: 53, column: 13, scope: !3049)
!3066 = !DILocation(line: 53, column: 10, scope: !3047)
!3067 = !DILocation(line: 57, column: 7, scope: !3052)
!3068 = !DILocation(line: 58, column: 7, scope: !3052)
!3069 = !DILocation(line: 61, column: 7, scope: !3038)
!3070 = !DILocation(line: 62, column: 8, scope: !3056)
!3071 = !DILocation(line: 62, column: 13, scope: !3058)
!3072 = !DILocation(line: 62, column: 10, scope: !3056)
!3073 = !DILocation(line: 63, column: 5, scope: !3056)
!3074 = !DILocation(line: 65, column: 1, scope: !3038)
!3075 = !DILocation(line: 180, column: 19, scope: !552)
!3076 = !DILocation(line: 180, column: 30, scope: !552)
!3077 = !DILocation(line: 180, column: 41, scope: !552)
!3078 = !DILocation(line: 182, column: 14, scope: !552)
!3079 = !DILocation(line: 182, column: 10, scope: !552)
!3080 = !DILocation(line: 184, column: 9, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !552, file: !551, line: 184, column: 7)
!3082 = !DILocation(line: 184, column: 7, scope: !552)
!3083 = !DILocation(line: 186, column: 13, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !551, line: 186, column: 11)
!3085 = distinct !DILexicalBlock(scope: !3081, file: !551, line: 185, column: 5)
!3086 = !DILocation(line: 186, column: 11, scope: !3085)
!3087 = !DILocation(line: 194, column: 30, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !551, line: 187, column: 9)
!3089 = !DILocation(line: 195, column: 16, scope: !3088)
!3090 = !DILocation(line: 195, column: 13, scope: !3088)
!3091 = !DILocation(line: 196, column: 9, scope: !3088)
!3092 = !DILocation(line: 204, column: 69, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !551, line: 204, column: 11)
!3094 = distinct !DILexicalBlock(scope: !3081, file: !551, line: 199, column: 5)
!3095 = !DILocation(line: 205, column: 11, scope: !3093)
!3096 = !DILocation(line: 204, column: 11, scope: !3094)
!3097 = !DILocation(line: 206, column: 9, scope: !3093)
!3098 = !DILocation(line: 210, column: 7, scope: !552)
!3099 = !DILocation(line: 211, column: 25, scope: !552)
!3100 = !DILocation(line: 51, column: 17, scope: !3038, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 211, column: 10, scope: !552)
!3102 = !DILocation(line: 51, column: 27, scope: !3038, inlinedAt: !3101)
!3103 = !DILocation(line: 53, column: 10, scope: !3047, inlinedAt: !3101)
!3104 = !DILocation(line: 207, column: 14, scope: !3094)
!3105 = !DILocation(line: 207, column: 18, scope: !3094)
!3106 = !DILocation(line: 207, column: 9, scope: !3094)
!3107 = !DILocation(line: 53, column: 8, scope: !3047, inlinedAt: !3101)
!3108 = !DILocation(line: 57, column: 7, scope: !3052, inlinedAt: !3101)
!3109 = !DILocation(line: 58, column: 7, scope: !3052, inlinedAt: !3101)
!3110 = !DILocation(line: 61, column: 7, scope: !3038, inlinedAt: !3101)
!3111 = !DILocation(line: 62, column: 8, scope: !3056, inlinedAt: !3101)
!3112 = !DILocation(line: 62, column: 13, scope: !3058, inlinedAt: !3101)
!3113 = !DILocation(line: 62, column: 10, scope: !3056, inlinedAt: !3101)
!3114 = !DILocation(line: 63, column: 5, scope: !3056, inlinedAt: !3101)
!3115 = !DILocation(line: 211, column: 3, scope: !552)
!3116 = distinct !DISubprogram(name: "xcharalloc", scope: !551, file: !551, line: 220, type: !2031, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3117)
!3117 = !{!3118}
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3116, file: !551, line: 220, type: !13)
!3119 = !DILocation(line: 220, column: 20, scope: !3116)
!3120 = !DILocation(line: 39, column: 17, scope: !2997, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 222, column: 10, scope: !3116)
!3122 = !DILocation(line: 41, column: 13, scope: !2997, inlinedAt: !3121)
!3123 = !DILocation(line: 41, column: 9, scope: !2997, inlinedAt: !3121)
!3124 = !DILocation(line: 42, column: 8, scope: !3008, inlinedAt: !3121)
!3125 = !DILocation(line: 42, column: 15, scope: !3010, inlinedAt: !3121)
!3126 = !DILocation(line: 42, column: 10, scope: !3008, inlinedAt: !3121)
!3127 = !DILocation(line: 43, column: 5, scope: !3008, inlinedAt: !3121)
!3128 = !DILocation(line: 222, column: 3, scope: !3116)
!3129 = distinct !DISubprogram(name: "x2realloc", scope: !2998, file: !2998, line: 74, type: !3130, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!12, !12, !555}
!3132 = !{!3133, !3134}
!3133 = !DILocalVariable(name: "p", arg: 1, scope: !3129, file: !2998, line: 74, type: !12)
!3134 = !DILocalVariable(name: "pn", arg: 2, scope: !3129, file: !2998, line: 74, type: !555)
!3135 = !DILocation(line: 74, column: 18, scope: !3129)
!3136 = !DILocation(line: 74, column: 29, scope: !3129)
!3137 = !DILocation(line: 180, column: 19, scope: !552, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 76, column: 10, scope: !3129)
!3139 = !DILocation(line: 180, column: 30, scope: !552, inlinedAt: !3138)
!3140 = !DILocation(line: 180, column: 41, scope: !552, inlinedAt: !3138)
!3141 = !DILocation(line: 182, column: 14, scope: !552, inlinedAt: !3138)
!3142 = !DILocation(line: 182, column: 10, scope: !552, inlinedAt: !3138)
!3143 = !DILocation(line: 184, column: 9, scope: !3081, inlinedAt: !3138)
!3144 = !DILocation(line: 184, column: 7, scope: !552, inlinedAt: !3138)
!3145 = !DILocation(line: 186, column: 13, scope: !3084, inlinedAt: !3138)
!3146 = !DILocation(line: 186, column: 11, scope: !3085, inlinedAt: !3138)
!3147 = !DILocation(line: 210, column: 7, scope: !552, inlinedAt: !3138)
!3148 = !DILocation(line: 51, column: 17, scope: !3038, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 211, column: 10, scope: !552, inlinedAt: !3138)
!3150 = !DILocation(line: 51, column: 27, scope: !3038, inlinedAt: !3149)
!3151 = !DILocation(line: 53, column: 10, scope: !3047, inlinedAt: !3149)
!3152 = !DILocation(line: 205, column: 11, scope: !3093, inlinedAt: !3138)
!3153 = !DILocation(line: 204, column: 11, scope: !3094, inlinedAt: !3138)
!3154 = !DILocation(line: 206, column: 9, scope: !3093, inlinedAt: !3138)
!3155 = !DILocation(line: 207, column: 14, scope: !3094, inlinedAt: !3138)
!3156 = !DILocation(line: 207, column: 18, scope: !3094, inlinedAt: !3138)
!3157 = !DILocation(line: 207, column: 9, scope: !3094, inlinedAt: !3138)
!3158 = !DILocation(line: 53, column: 8, scope: !3047, inlinedAt: !3149)
!3159 = !DILocation(line: 57, column: 7, scope: !3052, inlinedAt: !3149)
!3160 = !DILocation(line: 58, column: 7, scope: !3052, inlinedAt: !3149)
!3161 = !DILocation(line: 61, column: 7, scope: !3038, inlinedAt: !3149)
!3162 = !DILocation(line: 62, column: 8, scope: !3056, inlinedAt: !3149)
!3163 = !DILocation(line: 62, column: 13, scope: !3058, inlinedAt: !3149)
!3164 = !DILocation(line: 62, column: 10, scope: !3056, inlinedAt: !3149)
!3165 = !DILocation(line: 63, column: 5, scope: !3056, inlinedAt: !3149)
!3166 = !DILocation(line: 76, column: 3, scope: !3129)
!3167 = distinct !DISubprogram(name: "xzalloc", scope: !2998, file: !2998, line: 84, type: !2999, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3168)
!3168 = !{!3169}
!3169 = !DILocalVariable(name: "s", arg: 1, scope: !3167, file: !2998, line: 84, type: !13)
!3170 = !DILocation(line: 84, column: 17, scope: !3167)
!3171 = !DILocation(line: 39, column: 17, scope: !2997, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 86, column: 18, scope: !3167)
!3173 = !DILocation(line: 41, column: 13, scope: !2997, inlinedAt: !3172)
!3174 = !DILocation(line: 41, column: 9, scope: !2997, inlinedAt: !3172)
!3175 = !DILocation(line: 42, column: 8, scope: !3008, inlinedAt: !3172)
!3176 = !DILocation(line: 42, column: 15, scope: !3010, inlinedAt: !3172)
!3177 = !DILocation(line: 42, column: 10, scope: !3008, inlinedAt: !3172)
!3178 = !DILocation(line: 43, column: 5, scope: !3008, inlinedAt: !3172)
!3179 = !DILocation(line: 86, column: 10, scope: !3167)
!3180 = !DILocation(line: 86, column: 3, scope: !3167)
!3181 = distinct !DISubprogram(name: "xcalloc", scope: !2998, file: !2998, line: 93, type: !2984, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3182)
!3182 = !{!3183, !3184, !3185}
!3183 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !2998, line: 93, type: !13)
!3184 = !DILocalVariable(name: "s", arg: 2, scope: !3181, file: !2998, line: 93, type: !13)
!3185 = !DILocalVariable(name: "p", scope: !3181, file: !2998, line: 95, type: !12)
!3186 = !DILocation(line: 93, column: 17, scope: !3181)
!3187 = !DILocation(line: 93, column: 27, scope: !3181)
!3188 = !DILocation(line: 100, column: 7, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3181, file: !2998, line: 100, column: 7)
!3190 = !DILocation(line: 101, column: 7, scope: !3189)
!3191 = !DILocation(line: 101, column: 18, scope: !3192)
!3192 = !DILexicalBlockFile(scope: !3189, file: !2998, discriminator: 1)
!3193 = !DILocation(line: 95, column: 9, scope: !3181)
!3194 = !DILocation(line: 101, column: 16, scope: !3192)
!3195 = !DILocation(line: 100, column: 7, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3181, file: !2998, discriminator: 1)
!3197 = !DILocation(line: 102, column: 5, scope: !3189)
!3198 = !DILocation(line: 103, column: 3, scope: !3181)
!3199 = distinct !DISubprogram(name: "xmemdup", scope: !2998, file: !2998, line: 111, type: !3200, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!12, !16, !13}
!3202 = !{!3203, !3204}
!3203 = !DILocalVariable(name: "p", arg: 1, scope: !3199, file: !2998, line: 111, type: !16)
!3204 = !DILocalVariable(name: "s", arg: 2, scope: !3199, file: !2998, line: 111, type: !13)
!3205 = !DILocation(line: 111, column: 22, scope: !3199)
!3206 = !DILocation(line: 111, column: 32, scope: !3199)
!3207 = !DILocation(line: 39, column: 17, scope: !2997, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 113, column: 18, scope: !3199)
!3209 = !DILocation(line: 41, column: 13, scope: !2997, inlinedAt: !3208)
!3210 = !DILocation(line: 41, column: 9, scope: !2997, inlinedAt: !3208)
!3211 = !DILocation(line: 42, column: 8, scope: !3008, inlinedAt: !3208)
!3212 = !DILocation(line: 42, column: 15, scope: !3010, inlinedAt: !3208)
!3213 = !DILocation(line: 42, column: 10, scope: !3008, inlinedAt: !3208)
!3214 = !DILocation(line: 43, column: 5, scope: !3008, inlinedAt: !3208)
!3215 = !DILocation(line: 113, column: 10, scope: !3199)
!3216 = !DILocation(line: 113, column: 3, scope: !3199)
!3217 = distinct !DISubprogram(name: "xstrdup", scope: !2998, file: !2998, line: 119, type: !2238, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3218)
!3218 = !{!3219}
!3219 = !DILocalVariable(name: "string", arg: 1, scope: !3217, file: !2998, line: 119, type: !21)
!3220 = !DILocation(line: 119, column: 22, scope: !3217)
!3221 = !DILocation(line: 121, column: 27, scope: !3217)
!3222 = !DILocation(line: 121, column: 43, scope: !3217)
!3223 = !DILocation(line: 111, column: 22, scope: !3199, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 121, column: 10, scope: !3225)
!3225 = !DILexicalBlockFile(scope: !3217, file: !2998, discriminator: 1)
!3226 = !DILocation(line: 111, column: 32, scope: !3199, inlinedAt: !3224)
!3227 = !DILocation(line: 39, column: 17, scope: !2997, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 113, column: 18, scope: !3199, inlinedAt: !3224)
!3229 = !DILocation(line: 41, column: 13, scope: !2997, inlinedAt: !3228)
!3230 = !DILocation(line: 41, column: 9, scope: !2997, inlinedAt: !3228)
!3231 = !DILocation(line: 42, column: 8, scope: !3008, inlinedAt: !3228)
!3232 = !DILocation(line: 42, column: 15, scope: !3010, inlinedAt: !3228)
!3233 = !DILocation(line: 42, column: 10, scope: !3008, inlinedAt: !3228)
!3234 = !DILocation(line: 43, column: 5, scope: !3008, inlinedAt: !3228)
!3235 = !DILocation(line: 113, column: 10, scope: !3199, inlinedAt: !3224)
!3236 = !DILocation(line: 121, column: 3, scope: !3217)
!3237 = distinct !DISubprogram(name: "xalloc_die", scope: !3238, file: !3238, line: 32, type: !725, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !564, variables: !74)
!3238 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3239 = !DILocation(line: 34, column: 10, scope: !3237)
!3240 = !DILocation(line: 34, column: 33, scope: !3237)
!3241 = !DILocation(line: 34, column: 3, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3237, file: !3238, discriminator: 1)
!3243 = !DILocation(line: 40, column: 3, scope: !3237)
!3244 = distinct !DISubprogram(name: "rpl_calloc", scope: !3245, file: !3245, line: 42, type: !2984, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !3246)
!3245 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3246 = !{!3247, !3248, !3249, !3250}
!3247 = !DILocalVariable(name: "n", arg: 1, scope: !3244, file: !3245, line: 42, type: !13)
!3248 = !DILocalVariable(name: "s", arg: 2, scope: !3244, file: !3245, line: 42, type: !13)
!3249 = !DILocalVariable(name: "result", scope: !3244, file: !3245, line: 44, type: !12)
!3250 = !DILocalVariable(name: "bytes", scope: !3251, file: !3245, line: 56, type: !13)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !3245, line: 53, column: 5)
!3252 = distinct !DILexicalBlock(scope: !3244, file: !3245, line: 47, column: 7)
!3253 = !DILocation(line: 42, column: 20, scope: !3244)
!3254 = !DILocation(line: 42, column: 30, scope: !3244)
!3255 = !DILocation(line: 47, column: 9, scope: !3252)
!3256 = !DILocation(line: 47, column: 19, scope: !3257)
!3257 = !DILexicalBlockFile(scope: !3252, file: !3245, discriminator: 1)
!3258 = !DILocation(line: 47, column: 14, scope: !3252)
!3259 = !DILocation(line: 56, column: 24, scope: !3251)
!3260 = !DILocation(line: 56, column: 14, scope: !3251)
!3261 = !DILocation(line: 57, column: 17, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3251, file: !3245, line: 57, column: 11)
!3263 = !DILocation(line: 57, column: 21, scope: !3262)
!3264 = !DILocation(line: 57, column: 11, scope: !3251)
!3265 = !DILocation(line: 59, column: 11, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3262, file: !3245, line: 58, column: 9)
!3267 = !DILocation(line: 59, column: 17, scope: !3266)
!3268 = !DILocation(line: 65, column: 12, scope: !3244)
!3269 = !DILocation(line: 44, column: 9, scope: !3244)
!3270 = !DILocation(line: 72, column: 3, scope: !3244)
!3271 = !DILocation(line: 73, column: 1, scope: !3244)
!3272 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3273, file: !3273, line: 334, type: !3274, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3288)
!3273 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!13, !3276, !21, !13, !3277}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1000, line: 107, baseType: !3279)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1000, line: 95, baseType: !3280)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1000, line: 83, size: 64, elements: !3281)
!3281 = !{!3282, !3283}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3280, file: !1000, line: 85, baseType: !51, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3280, file: !1000, line: 94, baseType: !3284, size: 32, offset: 32)
!3284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !1000, line: 86, size: 32, elements: !3285)
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3284, file: !1000, line: 89, baseType: !155, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3284, file: !1000, line: 93, baseType: !1010, size: 32)
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295}
!3289 = !DILocalVariable(name: "pwc", arg: 1, scope: !3272, file: !3273, line: 334, type: !3276)
!3290 = !DILocalVariable(name: "s", arg: 2, scope: !3272, file: !3273, line: 334, type: !21)
!3291 = !DILocalVariable(name: "n", arg: 3, scope: !3272, file: !3273, line: 334, type: !13)
!3292 = !DILocalVariable(name: "ps", arg: 4, scope: !3272, file: !3273, line: 334, type: !3277)
!3293 = !DILocalVariable(name: "ret", scope: !3272, file: !3273, line: 336, type: !13)
!3294 = !DILocalVariable(name: "wc", scope: !3272, file: !3273, line: 337, type: !1015)
!3295 = !DILocalVariable(name: "uc", scope: !3296, file: !3273, line: 398, type: !20)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !3273, line: 397, column: 5)
!3297 = distinct !DILexicalBlock(scope: !3272, file: !3273, line: 396, column: 7)
!3298 = !DILocation(line: 334, column: 23, scope: !3272)
!3299 = !DILocation(line: 334, column: 40, scope: !3272)
!3300 = !DILocation(line: 334, column: 50, scope: !3272)
!3301 = !DILocation(line: 334, column: 64, scope: !3272)
!3302 = !DILocation(line: 337, column: 3, scope: !3272)
!3303 = !DILocation(line: 353, column: 9, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3272, file: !3273, line: 353, column: 7)
!3305 = !DILocation(line: 353, column: 7, scope: !3272)
!3306 = !DILocation(line: 388, column: 9, scope: !3272)
!3307 = !DILocation(line: 336, column: 10, scope: !3272)
!3308 = !DILocation(line: 396, column: 19, scope: !3297)
!3309 = !DILocation(line: 396, column: 31, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3297, file: !3273, discriminator: 1)
!3311 = !DILocation(line: 396, column: 26, scope: !3297)
!3312 = !DILocation(line: 396, column: 41, scope: !3313)
!3313 = !DILexicalBlockFile(scope: !3297, file: !3273, discriminator: 2)
!3314 = !DILocation(line: 396, column: 7, scope: !3315)
!3315 = !DILexicalBlockFile(scope: !3272, file: !3273, discriminator: 2)
!3316 = !DILocation(line: 398, column: 26, scope: !3296)
!3317 = !DILocation(line: 398, column: 21, scope: !3296)
!3318 = !DILocation(line: 399, column: 14, scope: !3296)
!3319 = !DILocation(line: 399, column: 12, scope: !3296)
!3320 = !DILocation(line: 405, column: 1, scope: !3272)
!3321 = distinct !DISubprogram(name: "close_stream", scope: !3322, file: !3322, line: 56, type: !3323, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3365)
!3322 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!51, !3325}
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2764, line: 49, baseType: !3327)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2766, line: 241, size: 1728, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3327, file: !2766, line: 242, baseType: !51, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3327, file: !2766, line: 247, baseType: !10, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3327, file: !2766, line: 248, baseType: !10, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3327, file: !2766, line: 249, baseType: !10, size: 64, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3327, file: !2766, line: 250, baseType: !10, size: 64, offset: 256)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3327, file: !2766, line: 251, baseType: !10, size: 64, offset: 320)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3327, file: !2766, line: 252, baseType: !10, size: 64, offset: 384)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3327, file: !2766, line: 253, baseType: !10, size: 64, offset: 448)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3327, file: !2766, line: 254, baseType: !10, size: 64, offset: 512)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3327, file: !2766, line: 256, baseType: !10, size: 64, offset: 576)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3327, file: !2766, line: 257, baseType: !10, size: 64, offset: 640)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3327, file: !2766, line: 258, baseType: !10, size: 64, offset: 704)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3327, file: !2766, line: 260, baseType: !3342, size: 64, offset: 768)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2766, line: 156, size: 192, elements: !3344)
!3344 = !{!3345, !3346, !3348}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3343, file: !2766, line: 157, baseType: !3342, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3343, file: !2766, line: 158, baseType: !3347, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3343, file: !2766, line: 162, baseType: !51, size: 32, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3327, file: !2766, line: 262, baseType: !3347, size: 64, offset: 832)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3327, file: !2766, line: 264, baseType: !51, size: 32, offset: 896)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3327, file: !2766, line: 268, baseType: !51, size: 32, offset: 928)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3327, file: !2766, line: 270, baseType: !2792, size: 64, offset: 960)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3327, file: !2766, line: 274, baseType: !138, size: 16, offset: 1024)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3327, file: !2766, line: 275, baseType: !2797, size: 8, offset: 1040)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3327, file: !2766, line: 276, baseType: !2799, size: 8, offset: 1048)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3327, file: !2766, line: 280, baseType: !2803, size: 64, offset: 1088)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3327, file: !2766, line: 289, baseType: !2806, size: 64, offset: 1152)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3327, file: !2766, line: 297, baseType: !12, size: 64, offset: 1216)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3327, file: !2766, line: 298, baseType: !12, size: 64, offset: 1280)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3327, file: !2766, line: 299, baseType: !12, size: 64, offset: 1344)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3327, file: !2766, line: 300, baseType: !12, size: 64, offset: 1408)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3327, file: !2766, line: 302, baseType: !13, size: 64, offset: 1472)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3327, file: !2766, line: 303, baseType: !51, size: 32, offset: 1536)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3327, file: !2766, line: 305, baseType: !2814, size: 160, offset: 1568)
!3365 = !{!3366, !3367, !3369, !3370}
!3366 = !DILocalVariable(name: "stream", arg: 1, scope: !3321, file: !3322, line: 56, type: !3325)
!3367 = !DILocalVariable(name: "some_pending", scope: !3321, file: !3322, line: 58, type: !3368)
!3368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!3369 = !DILocalVariable(name: "prev_fail", scope: !3321, file: !3322, line: 59, type: !3368)
!3370 = !DILocalVariable(name: "fclose_fail", scope: !3321, file: !3322, line: 60, type: !3368)
!3371 = !DILocation(line: 56, column: 21, scope: !3321)
!3372 = !DILocation(line: 58, column: 30, scope: !3321)
!3373 = !DILocalVariable(name: "__stream", arg: 1, scope: !3374, file: !3375, line: 132, type: !3325)
!3374 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3375, file: !3375, line: 132, type: !3323, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3376)
!3375 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3376 = !{!3373}
!3377 = !DILocation(line: 132, column: 1, scope: !3374, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 59, column: 27, scope: !3321)
!3379 = !DILocation(line: 134, column: 10, scope: !3374, inlinedAt: !3378)
!3380 = !{!3381, !665, i64 0}
!3381 = !{!"_IO_FILE", !665, i64 0, !601, i64 8, !601, i64 16, !601, i64 24, !601, i64 32, !601, i64 40, !601, i64 48, !601, i64 56, !601, i64 64, !601, i64 72, !601, i64 80, !601, i64 88, !601, i64 96, !601, i64 104, !665, i64 112, !665, i64 116, !2076, i64 120, !1368, i64 128, !602, i64 130, !602, i64 131, !601, i64 136, !2076, i64 144, !601, i64 152, !601, i64 160, !601, i64 168, !601, i64 176, !2076, i64 184, !665, i64 192, !602, i64 196}
!3382 = !DILocation(line: 59, column: 43, scope: !3321)
!3383 = !DILocation(line: 60, column: 29, scope: !3321)
!3384 = !DILocation(line: 60, column: 45, scope: !3321)
!3385 = !DILocation(line: 70, column: 17, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3321, file: !3322, line: 70, column: 7)
!3387 = !DILocation(line: 70, column: 33, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !3386, file: !3322, discriminator: 1)
!3389 = !DILocation(line: 70, column: 53, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !3386, file: !3322, discriminator: 3)
!3391 = !DILocation(line: 70, column: 7, scope: !3392)
!3392 = !DILexicalBlockFile(scope: !3321, file: !3322, discriminator: 3)
!3393 = !DILocation(line: 72, column: 11, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3386, file: !3322, line: 71, column: 5)
!3395 = !DILocation(line: 73, column: 9, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3394, file: !3322, line: 72, column: 11)
!3397 = !DILocation(line: 73, column: 15, scope: !3396)
!3398 = !DILocation(line: 78, column: 1, scope: !3321)
!3399 = distinct !DISubprogram(name: "hard_locale", scope: !3400, file: !3400, line: 38, type: !3401, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3403)
!3400 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!69, !51}
!3403 = !{!3404, !3405, !3406, !3407, !3414, !3415, !3417, !3418, !3420, !3421, !3423}
!3404 = !DILocalVariable(name: "category", arg: 1, scope: !3399, file: !3400, line: 38, type: !51)
!3405 = !DILocalVariable(name: "hard", scope: !3399, file: !3400, line: 40, type: !69)
!3406 = !DILocalVariable(name: "p", scope: !3399, file: !3400, line: 41, type: !21)
!3407 = !DILocalVariable(name: "__s1_len", scope: !3408, file: !3400, line: 47, type: !13)
!3408 = distinct !DILexicalBlock(scope: !3409, file: !3400, line: 47, column: 15)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !3400, line: 47, column: 15)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !3400, line: 46, column: 9)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !3400, line: 45, column: 11)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !3400, line: 44, column: 5)
!3413 = distinct !DILexicalBlock(scope: !3399, file: !3400, line: 43, column: 7)
!3414 = !DILocalVariable(name: "__s2_len", scope: !3408, file: !3400, line: 47, type: !13)
!3415 = !DILocalVariable(name: "__s2", scope: !3416, file: !3400, line: 47, type: !18)
!3416 = distinct !DILexicalBlock(scope: !3408, file: !3400, line: 47, column: 15)
!3417 = !DILocalVariable(name: "__result", scope: !3416, file: !3400, line: 47, type: !51)
!3418 = !DILocalVariable(name: "__s1_len", scope: !3419, file: !3400, line: 47, type: !13)
!3419 = distinct !DILexicalBlock(scope: !3409, file: !3400, line: 47, column: 39)
!3420 = !DILocalVariable(name: "__s2_len", scope: !3419, file: !3400, line: 47, type: !13)
!3421 = !DILocalVariable(name: "__s2", scope: !3422, file: !3400, line: 47, type: !18)
!3422 = distinct !DILexicalBlock(scope: !3419, file: !3400, line: 47, column: 39)
!3423 = !DILocalVariable(name: "__result", scope: !3422, file: !3400, line: 47, type: !51)
!3424 = !DILocation(line: 38, column: 18, scope: !3399)
!3425 = !DILocation(line: 40, column: 8, scope: !3399)
!3426 = !DILocation(line: 41, column: 19, scope: !3399)
!3427 = !DILocation(line: 41, column: 15, scope: !3399)
!3428 = !DILocation(line: 43, column: 7, scope: !3413)
!3429 = !DILocation(line: 43, column: 7, scope: !3399)
!3430 = !DILocation(line: 47, column: 15, scope: !3408)
!3431 = !DILocation(line: 47, column: 15, scope: !3416)
!3432 = !DILocation(line: 47, column: 15, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3416, file: !3400, discriminator: 2)
!3434 = !DILocation(line: 47, column: 15, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !3436, file: !3400, discriminator: 3)
!3436 = distinct !DILexicalBlock(scope: !3416, file: !3400, line: 47, column: 15)
!3437 = !DILocation(line: 47, column: 15, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !3436, file: !3400, discriminator: 2)
!3439 = !DILocation(line: 47, column: 15, scope: !3440)
!3440 = !DILexicalBlockFile(scope: !3441, file: !3400, discriminator: 4)
!3441 = distinct !DILexicalBlock(scope: !3436, file: !3400, line: 47, column: 15)
!3442 = !DILocation(line: 47, column: 15, scope: !3443)
!3443 = !DILexicalBlockFile(scope: !3408, file: !3400, discriminator: 11)
!3444 = !DILocation(line: 47, column: 36, scope: !3445)
!3445 = !DILexicalBlockFile(scope: !3409, file: !3400, discriminator: 13)
!3446 = !DILocation(line: 47, column: 39, scope: !3419)
!3447 = !DILocation(line: 47, column: 39, scope: !3448)
!3448 = !DILexicalBlockFile(scope: !3419, file: !3400, discriminator: 26)
!3449 = !DILocation(line: 47, column: 59, scope: !3450)
!3450 = !DILexicalBlockFile(scope: !3409, file: !3400, discriminator: 27)
!3451 = !DILocation(line: 47, column: 15, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !3410, file: !3400, discriminator: 27)
!3453 = !DILocation(line: 48, column: 13, scope: !3409)
!3454 = !DILocation(line: 71, column: 3, scope: !3399)
!3455 = distinct !DISubprogram(name: "locale_charset", scope: !537, file: !537, line: 393, type: !3456, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!21}
!3458 = !{!3459, !3460, !3461, !3466}
!3459 = !DILocalVariable(name: "codeset", scope: !3455, file: !537, line: 395, type: !21)
!3460 = !DILocalVariable(name: "aliases", scope: !3455, file: !537, line: 396, type: !21)
!3461 = !DILocalVariable(name: "__s1_len", scope: !3462, file: !537, line: 592, type: !13)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !537, line: 592, column: 9)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !537, line: 592, column: 9)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !537, line: 589, column: 3)
!3465 = distinct !DILexicalBlock(scope: !3455, file: !537, line: 589, column: 3)
!3466 = !DILocalVariable(name: "__s2_len", scope: !3462, file: !537, line: 592, type: !13)
!3467 = !DILocalVariable(name: "buf1", scope: !3468, file: !537, line: 196, type: !3535)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !537, line: 194, column: 21)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !537, line: 193, column: 19)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !537, line: 193, column: 19)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !537, line: 188, column: 17)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !537, line: 181, column: 19)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !537, line: 177, column: 13)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !537, line: 173, column: 15)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !537, line: 161, column: 9)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !537, line: 157, column: 11)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !537, line: 130, column: 5)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !537, line: 129, column: 7)
!3479 = distinct !DISubprogram(name: "get_charset_aliases", scope: !537, file: !537, line: 124, type: !3456, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3480)
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3487, !3488, !3489, !3490, !3531, !3532, !3533, !3467, !3534, !3538, !3539, !3540}
!3481 = !DILocalVariable(name: "cp", scope: !3479, file: !537, line: 126, type: !21)
!3482 = !DILocalVariable(name: "dir", scope: !3477, file: !537, line: 132, type: !21)
!3483 = !DILocalVariable(name: "base", scope: !3477, file: !537, line: 133, type: !21)
!3484 = !DILocalVariable(name: "file_name", scope: !3477, file: !537, line: 134, type: !10)
!3485 = !DILocalVariable(name: "dir_len", scope: !3486, file: !537, line: 144, type: !13)
!3486 = distinct !DILexicalBlock(scope: !3477, file: !537, line: 143, column: 7)
!3487 = !DILocalVariable(name: "base_len", scope: !3486, file: !537, line: 145, type: !13)
!3488 = !DILocalVariable(name: "add_slash", scope: !3486, file: !537, line: 146, type: !51)
!3489 = !DILocalVariable(name: "fd", scope: !3475, file: !537, line: 162, type: !51)
!3490 = !DILocalVariable(name: "fp", scope: !3473, file: !537, line: 178, type: !3491)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2764, line: 49, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2766, line: 241, size: 1728, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3493, file: !2766, line: 242, baseType: !51, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3493, file: !2766, line: 247, baseType: !10, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3493, file: !2766, line: 248, baseType: !10, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3493, file: !2766, line: 249, baseType: !10, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3493, file: !2766, line: 250, baseType: !10, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3493, file: !2766, line: 251, baseType: !10, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3493, file: !2766, line: 252, baseType: !10, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3493, file: !2766, line: 253, baseType: !10, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3493, file: !2766, line: 254, baseType: !10, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3493, file: !2766, line: 256, baseType: !10, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3493, file: !2766, line: 257, baseType: !10, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3493, file: !2766, line: 258, baseType: !10, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3493, file: !2766, line: 260, baseType: !3508, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2766, line: 156, size: 192, elements: !3510)
!3510 = !{!3511, !3512, !3514}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3509, file: !2766, line: 157, baseType: !3508, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3509, file: !2766, line: 158, baseType: !3513, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3509, file: !2766, line: 162, baseType: !51, size: 32, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3493, file: !2766, line: 262, baseType: !3513, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3493, file: !2766, line: 264, baseType: !51, size: 32, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3493, file: !2766, line: 268, baseType: !51, size: 32, offset: 928)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3493, file: !2766, line: 270, baseType: !2792, size: 64, offset: 960)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3493, file: !2766, line: 274, baseType: !138, size: 16, offset: 1024)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3493, file: !2766, line: 275, baseType: !2797, size: 8, offset: 1040)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3493, file: !2766, line: 276, baseType: !2799, size: 8, offset: 1048)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3493, file: !2766, line: 280, baseType: !2803, size: 64, offset: 1088)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3493, file: !2766, line: 289, baseType: !2806, size: 64, offset: 1152)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3493, file: !2766, line: 297, baseType: !12, size: 64, offset: 1216)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3493, file: !2766, line: 298, baseType: !12, size: 64, offset: 1280)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3493, file: !2766, line: 299, baseType: !12, size: 64, offset: 1344)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3493, file: !2766, line: 300, baseType: !12, size: 64, offset: 1408)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3493, file: !2766, line: 302, baseType: !13, size: 64, offset: 1472)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3493, file: !2766, line: 303, baseType: !51, size: 32, offset: 1536)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3493, file: !2766, line: 305, baseType: !2814, size: 160, offset: 1568)
!3531 = !DILocalVariable(name: "res_ptr", scope: !3471, file: !537, line: 190, type: !10)
!3532 = !DILocalVariable(name: "res_size", scope: !3471, file: !537, line: 191, type: !13)
!3533 = !DILocalVariable(name: "c", scope: !3468, file: !537, line: 195, type: !51)
!3534 = !DILocalVariable(name: "buf2", scope: !3468, file: !537, line: 197, type: !3535)
!3535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 408, elements: !3536)
!3536 = !{!3537}
!3537 = !DISubrange(count: 51)
!3538 = !DILocalVariable(name: "l1", scope: !3468, file: !537, line: 198, type: !13)
!3539 = !DILocalVariable(name: "l2", scope: !3468, file: !537, line: 198, type: !13)
!3540 = !DILocalVariable(name: "old_res_ptr", scope: !3468, file: !537, line: 199, type: !10)
!3541 = !DILocation(line: 196, column: 28, scope: !3468, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 589, column: 18, scope: !3465)
!3543 = !DILocation(line: 197, column: 28, scope: !3468, inlinedAt: !3542)
!3544 = !DILocation(line: 403, column: 13, scope: !3455)
!3545 = !DILocation(line: 395, column: 15, scope: !3455)
!3546 = !DILocation(line: 584, column: 15, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3455, file: !537, line: 584, column: 7)
!3548 = !DILocation(line: 584, column: 7, scope: !3455)
!3549 = !DILocation(line: 128, column: 8, scope: !3479, inlinedAt: !3542)
!3550 = !DILocation(line: 126, column: 15, scope: !3479, inlinedAt: !3542)
!3551 = !DILocation(line: 129, column: 10, scope: !3478, inlinedAt: !3542)
!3552 = !DILocation(line: 129, column: 7, scope: !3479, inlinedAt: !3542)
!3553 = !DILocation(line: 138, column: 13, scope: !3477, inlinedAt: !3542)
!3554 = !DILocation(line: 132, column: 19, scope: !3477, inlinedAt: !3542)
!3555 = !DILocation(line: 139, column: 15, scope: !3556, inlinedAt: !3542)
!3556 = distinct !DILexicalBlock(scope: !3477, file: !537, line: 139, column: 11)
!3557 = !DILocation(line: 139, column: 23, scope: !3556, inlinedAt: !3542)
!3558 = !DILocation(line: 139, column: 26, scope: !3559, inlinedAt: !3542)
!3559 = !DILexicalBlockFile(scope: !3556, file: !537, discriminator: 1)
!3560 = !DILocation(line: 139, column: 33, scope: !3559, inlinedAt: !3542)
!3561 = !DILocation(line: 139, column: 11, scope: !3562, inlinedAt: !3542)
!3562 = !DILexicalBlockFile(scope: !3477, file: !537, discriminator: 1)
!3563 = !DILocation(line: 140, column: 9, scope: !3556, inlinedAt: !3542)
!3564 = !DILocation(line: 144, column: 26, scope: !3486, inlinedAt: !3542)
!3565 = !DILocation(line: 144, column: 16, scope: !3486, inlinedAt: !3542)
!3566 = !DILocation(line: 145, column: 16, scope: !3486, inlinedAt: !3542)
!3567 = !DILocation(line: 146, column: 34, scope: !3486, inlinedAt: !3542)
!3568 = !DILocation(line: 146, column: 38, scope: !3486, inlinedAt: !3542)
!3569 = !DILocation(line: 146, column: 42, scope: !3570, inlinedAt: !3542)
!3570 = !DILexicalBlockFile(scope: !3486, file: !537, discriminator: 1)
!3571 = !DILocation(line: 146, column: 41, scope: !3570, inlinedAt: !3542)
!3572 = !DILocation(line: 147, column: 48, scope: !3486, inlinedAt: !3542)
!3573 = !DILocation(line: 147, column: 46, scope: !3486, inlinedAt: !3542)
!3574 = !DILocation(line: 147, column: 69, scope: !3486, inlinedAt: !3542)
!3575 = !DILocation(line: 147, column: 30, scope: !3486, inlinedAt: !3542)
!3576 = !DILocation(line: 134, column: 13, scope: !3477, inlinedAt: !3542)
!3577 = !DILocation(line: 148, column: 13, scope: !3486, inlinedAt: !3542)
!3578 = !DILocation(line: 150, column: 13, scope: !3579, inlinedAt: !3542)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !537, line: 149, column: 11)
!3580 = distinct !DILexicalBlock(scope: !3486, file: !537, line: 148, column: 13)
!3581 = !DILocation(line: 151, column: 17, scope: !3579, inlinedAt: !3542)
!3582 = !DILocation(line: 152, column: 34, scope: !3583, inlinedAt: !3542)
!3583 = distinct !DILexicalBlock(scope: !3579, file: !537, line: 151, column: 17)
!3584 = !DILocation(line: 153, column: 41, scope: !3579, inlinedAt: !3542)
!3585 = !DILocation(line: 153, column: 13, scope: !3579, inlinedAt: !3542)
!3586 = !DILocation(line: 157, column: 11, scope: !3477, inlinedAt: !3542)
!3587 = !DILocation(line: 171, column: 16, scope: !3475, inlinedAt: !3542)
!3588 = !DILocation(line: 162, column: 15, scope: !3475, inlinedAt: !3542)
!3589 = !DILocation(line: 173, column: 18, scope: !3474, inlinedAt: !3542)
!3590 = !DILocation(line: 173, column: 15, scope: !3475, inlinedAt: !3542)
!3591 = !DILocation(line: 180, column: 20, scope: !3473, inlinedAt: !3542)
!3592 = !DILocation(line: 178, column: 21, scope: !3473, inlinedAt: !3542)
!3593 = !DILocation(line: 181, column: 22, scope: !3472, inlinedAt: !3542)
!3594 = !DILocation(line: 181, column: 19, scope: !3473, inlinedAt: !3542)
!3595 = !DILocation(line: 190, column: 25, scope: !3471, inlinedAt: !3542)
!3596 = !DILocation(line: 184, column: 19, scope: !3597, inlinedAt: !3542)
!3597 = distinct !DILexicalBlock(scope: !3472, file: !537, line: 182, column: 17)
!3598 = !DILocation(line: 186, column: 17, scope: !3597, inlinedAt: !3542)
!3599 = !DILocation(line: 191, column: 26, scope: !3471, inlinedAt: !3542)
!3600 = !DILocation(line: 196, column: 23, scope: !3468, inlinedAt: !3542)
!3601 = !DILocation(line: 197, column: 23, scope: !3468, inlinedAt: !3542)
!3602 = !DILocalVariable(name: "__fp", arg: 1, scope: !3603, file: !3375, line: 63, type: !3491)
!3603 = distinct !DISubprogram(name: "getc_unlocked", scope: !3375, file: !3375, line: 63, type: !3604, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3606)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!51, !3491}
!3606 = !{!3602}
!3607 = !DILocation(line: 63, column: 22, scope: !3603, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 201, column: 27, scope: !3468, inlinedAt: !3542)
!3609 = !DILocation(line: 65, column: 10, scope: !3603, inlinedAt: !3608)
!3610 = !{!3381, !601, i64 8}
!3611 = !{!3381, !601, i64 16}
!3612 = !{!"branch_weights", i32 2000, i32 1}
!3613 = !DILocation(line: 65, column: 10, scope: !3614, inlinedAt: !3608)
!3614 = !DILexicalBlockFile(scope: !3603, file: !3375, discriminator: 1)
!3615 = !DILocation(line: 65, column: 10, scope: !3616, inlinedAt: !3608)
!3616 = !DILexicalBlockFile(scope: !3603, file: !3375, discriminator: 2)
!3617 = !DILocation(line: 65, column: 10, scope: !3618, inlinedAt: !3608)
!3618 = !DILexicalBlockFile(scope: !3603, file: !3375, discriminator: 3)
!3619 = !DILocation(line: 195, column: 27, scope: !3468, inlinedAt: !3542)
!3620 = !DILocation(line: 202, column: 27, scope: !3468, inlinedAt: !3542)
!3621 = !DILocation(line: 63, column: 22, scope: !3603, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 210, column: 33, scope: !3623, inlinedAt: !3542)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !537, line: 207, column: 25)
!3624 = distinct !DILexicalBlock(scope: !3468, file: !537, line: 206, column: 27)
!3625 = !DILocation(line: 65, column: 10, scope: !3603, inlinedAt: !3622)
!3626 = !DILocation(line: 65, column: 10, scope: !3614, inlinedAt: !3622)
!3627 = !DILocation(line: 65, column: 10, scope: !3616, inlinedAt: !3622)
!3628 = !DILocation(line: 65, column: 10, scope: !3618, inlinedAt: !3622)
!3629 = !DILocation(line: 210, column: 29, scope: !3630, inlinedAt: !3542)
!3630 = !DILexicalBlockFile(scope: !3623, file: !537, discriminator: 1)
!3631 = distinct !{!3631, !3632, !3633}
!3632 = !DILocation(line: 193, column: 19, scope: !3470)
!3633 = !DILocation(line: 241, column: 21, scope: !3470)
!3634 = !DILocation(line: 216, column: 23, scope: !3468, inlinedAt: !3542)
!3635 = !DILocation(line: 217, column: 27, scope: !3636, inlinedAt: !3542)
!3636 = distinct !DILexicalBlock(scope: !3468, file: !537, line: 217, column: 27)
!3637 = !DILocation(line: 217, column: 64, scope: !3636, inlinedAt: !3542)
!3638 = !DILocation(line: 217, column: 27, scope: !3468, inlinedAt: !3542)
!3639 = !DILocation(line: 219, column: 28, scope: !3468, inlinedAt: !3542)
!3640 = !DILocation(line: 198, column: 30, scope: !3468, inlinedAt: !3542)
!3641 = !DILocation(line: 220, column: 28, scope: !3468, inlinedAt: !3542)
!3642 = !DILocation(line: 198, column: 34, scope: !3468, inlinedAt: !3542)
!3643 = !DILocation(line: 199, column: 29, scope: !3468, inlinedAt: !3542)
!3644 = !DILocation(line: 222, column: 36, scope: !3645, inlinedAt: !3542)
!3645 = distinct !DILexicalBlock(scope: !3468, file: !537, line: 222, column: 27)
!3646 = !DILocation(line: 222, column: 27, scope: !3468, inlinedAt: !3542)
!3647 = !DILocation(line: 225, column: 63, scope: !3648, inlinedAt: !3542)
!3648 = distinct !DILexicalBlock(scope: !3645, file: !537, line: 223, column: 25)
!3649 = !DILocation(line: 225, column: 46, scope: !3648, inlinedAt: !3542)
!3650 = !DILocation(line: 226, column: 25, scope: !3648, inlinedAt: !3542)
!3651 = !DILocation(line: 229, column: 36, scope: !3652, inlinedAt: !3542)
!3652 = distinct !DILexicalBlock(scope: !3645, file: !537, line: 228, column: 25)
!3653 = !DILocation(line: 230, column: 73, scope: !3652, inlinedAt: !3542)
!3654 = !DILocation(line: 230, column: 46, scope: !3652, inlinedAt: !3542)
!3655 = !DILocation(line: 232, column: 35, scope: !3656, inlinedAt: !3542)
!3656 = distinct !DILexicalBlock(scope: !3468, file: !537, line: 232, column: 27)
!3657 = !DILocation(line: 232, column: 27, scope: !3468, inlinedAt: !3542)
!3658 = !DILocation(line: 236, column: 27, scope: !3659, inlinedAt: !3542)
!3659 = distinct !DILexicalBlock(scope: !3656, file: !537, line: 233, column: 25)
!3660 = !DILocation(line: 237, column: 27, scope: !3659, inlinedAt: !3542)
!3661 = !DILocation(line: 239, column: 39, scope: !3468, inlinedAt: !3542)
!3662 = !DILocation(line: 239, column: 50, scope: !3468, inlinedAt: !3542)
!3663 = !DILocation(line: 239, column: 61, scope: !3468, inlinedAt: !3542)
!3664 = !DILocalVariable(name: "__dest", arg: 1, scope: !3665, file: !3666, line: 107, type: !3669)
!3665 = distinct !DISubprogram(name: "strcpy", scope: !3666, file: !3666, line: 107, type: !3667, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !193, variables: !3671)
!3666 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!10, !3669, !3670}
!3669 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!3670 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!3671 = !{!3664, !3672}
!3672 = !DILocalVariable(name: "__src", arg: 2, scope: !3665, file: !3666, line: 107, type: !3670)
!3673 = !DILocation(line: 107, column: 1, scope: !3665, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 239, column: 23, scope: !3468, inlinedAt: !3542)
!3675 = !DILocation(line: 109, column: 49, scope: !3665, inlinedAt: !3674)
!3676 = !DILocation(line: 109, column: 10, scope: !3665, inlinedAt: !3674)
!3677 = !DILocation(line: 107, column: 1, scope: !3665, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 240, column: 23, scope: !3468, inlinedAt: !3542)
!3679 = !DILocation(line: 109, column: 49, scope: !3665, inlinedAt: !3678)
!3680 = !DILocation(line: 109, column: 10, scope: !3665, inlinedAt: !3678)
!3681 = !DILocation(line: 241, column: 21, scope: !3469, inlinedAt: !3542)
!3682 = !DILocation(line: 242, column: 19, scope: !3471, inlinedAt: !3542)
!3683 = !DILocation(line: 243, column: 32, scope: !3684, inlinedAt: !3542)
!3684 = distinct !DILexicalBlock(scope: !3471, file: !537, line: 243, column: 23)
!3685 = !DILocation(line: 243, column: 23, scope: !3471, inlinedAt: !3542)
!3686 = !DILocation(line: 247, column: 33, scope: !3687, inlinedAt: !3542)
!3687 = distinct !DILexicalBlock(scope: !3684, file: !537, line: 246, column: 21)
!3688 = !DILocation(line: 247, column: 45, scope: !3687, inlinedAt: !3542)
!3689 = !DILocation(line: 253, column: 11, scope: !3475, inlinedAt: !3542)
!3690 = !DILocation(line: 377, column: 23, scope: !3477, inlinedAt: !3542)
!3691 = !DILocation(line: 378, column: 5, scope: !3477, inlinedAt: !3542)
!3692 = !DILocation(line: 396, column: 15, scope: !3455)
!3693 = !DILocation(line: 590, column: 8, scope: !3464)
!3694 = !DILocation(line: 590, column: 17, scope: !3464)
!3695 = !DILocation(line: 589, column: 3, scope: !3696)
!3696 = !DILexicalBlockFile(scope: !3465, file: !537, discriminator: 1)
!3697 = !DILocation(line: 592, column: 9, scope: !3462)
!3698 = !DILocation(line: 592, column: 35, scope: !3463)
!3699 = !DILocation(line: 593, column: 9, scope: !3463)
!3700 = !DILocation(line: 593, column: 24, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !3463, file: !537, discriminator: 1)
!3702 = !DILocation(line: 593, column: 31, scope: !3701)
!3703 = !DILocation(line: 593, column: 34, scope: !3704)
!3704 = !DILexicalBlockFile(scope: !3463, file: !537, discriminator: 2)
!3705 = !DILocation(line: 593, column: 45, scope: !3704)
!3706 = !DILocation(line: 592, column: 9, scope: !3707)
!3707 = !DILexicalBlockFile(scope: !3464, file: !537, discriminator: 1)
!3708 = !DILocation(line: 595, column: 29, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3463, file: !537, line: 594, column: 7)
!3710 = !DILocation(line: 595, column: 27, scope: !3709)
!3711 = !DILocation(line: 595, column: 46, scope: !3709)
!3712 = !DILocation(line: 596, column: 9, scope: !3709)
!3713 = !DILocation(line: 591, column: 19, scope: !3464)
!3714 = !DILocation(line: 591, column: 36, scope: !3464)
!3715 = !DILocation(line: 591, column: 16, scope: !3464)
!3716 = !DILocation(line: 591, column: 52, scope: !3707)
!3717 = !DILocation(line: 591, column: 69, scope: !3464)
!3718 = !DILocation(line: 591, column: 49, scope: !3464)
!3719 = distinct !{!3719, !3720, !3721}
!3720 = !DILocation(line: 589, column: 3, scope: !3465)
!3721 = !DILocation(line: 597, column: 7, scope: !3465)
!3722 = !DILocation(line: 602, column: 7, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3455, file: !537, line: 602, column: 7)
!3724 = !DILocation(line: 602, column: 18, scope: !3723)
!3725 = !DILocation(line: 602, column: 7, scope: !3455)
!3726 = !DILocation(line: 612, column: 3, scope: !3455)
!3727 = distinct !DISubprogram(name: "rpl_fclose", scope: !3728, file: !3728, line: 56, type: !3729, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !3771)
!3728 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!51, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2764, line: 49, baseType: !3733)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2766, line: 241, size: 1728, elements: !3734)
!3734 = !{!3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3733, file: !2766, line: 242, baseType: !51, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3733, file: !2766, line: 247, baseType: !10, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3733, file: !2766, line: 248, baseType: !10, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3733, file: !2766, line: 249, baseType: !10, size: 64, offset: 192)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3733, file: !2766, line: 250, baseType: !10, size: 64, offset: 256)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3733, file: !2766, line: 251, baseType: !10, size: 64, offset: 320)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3733, file: !2766, line: 252, baseType: !10, size: 64, offset: 384)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3733, file: !2766, line: 253, baseType: !10, size: 64, offset: 448)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3733, file: !2766, line: 254, baseType: !10, size: 64, offset: 512)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3733, file: !2766, line: 256, baseType: !10, size: 64, offset: 576)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3733, file: !2766, line: 257, baseType: !10, size: 64, offset: 640)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3733, file: !2766, line: 258, baseType: !10, size: 64, offset: 704)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3733, file: !2766, line: 260, baseType: !3748, size: 64, offset: 768)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2766, line: 156, size: 192, elements: !3750)
!3750 = !{!3751, !3752, !3754}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3749, file: !2766, line: 157, baseType: !3748, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3749, file: !2766, line: 158, baseType: !3753, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3749, file: !2766, line: 162, baseType: !51, size: 32, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3733, file: !2766, line: 262, baseType: !3753, size: 64, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3733, file: !2766, line: 264, baseType: !51, size: 32, offset: 896)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3733, file: !2766, line: 268, baseType: !51, size: 32, offset: 928)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3733, file: !2766, line: 270, baseType: !2792, size: 64, offset: 960)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3733, file: !2766, line: 274, baseType: !138, size: 16, offset: 1024)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3733, file: !2766, line: 275, baseType: !2797, size: 8, offset: 1040)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3733, file: !2766, line: 276, baseType: !2799, size: 8, offset: 1048)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3733, file: !2766, line: 280, baseType: !2803, size: 64, offset: 1088)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3733, file: !2766, line: 289, baseType: !2806, size: 64, offset: 1152)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3733, file: !2766, line: 297, baseType: !12, size: 64, offset: 1216)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3733, file: !2766, line: 298, baseType: !12, size: 64, offset: 1280)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3733, file: !2766, line: 299, baseType: !12, size: 64, offset: 1344)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3733, file: !2766, line: 300, baseType: !12, size: 64, offset: 1408)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3733, file: !2766, line: 302, baseType: !13, size: 64, offset: 1472)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3733, file: !2766, line: 303, baseType: !51, size: 32, offset: 1536)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3733, file: !2766, line: 305, baseType: !2814, size: 160, offset: 1568)
!3771 = !{!3772, !3773, !3774, !3775}
!3772 = !DILocalVariable(name: "fp", arg: 1, scope: !3727, file: !3728, line: 56, type: !3731)
!3773 = !DILocalVariable(name: "saved_errno", scope: !3727, file: !3728, line: 58, type: !51)
!3774 = !DILocalVariable(name: "fd", scope: !3727, file: !3728, line: 59, type: !51)
!3775 = !DILocalVariable(name: "result", scope: !3727, file: !3728, line: 60, type: !51)
!3776 = !DILocation(line: 56, column: 19, scope: !3727)
!3777 = !DILocation(line: 58, column: 7, scope: !3727)
!3778 = !DILocation(line: 60, column: 7, scope: !3727)
!3779 = !DILocation(line: 63, column: 8, scope: !3727)
!3780 = !DILocation(line: 59, column: 7, scope: !3727)
!3781 = !DILocation(line: 64, column: 10, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3727, file: !3728, line: 64, column: 7)
!3783 = !DILocation(line: 64, column: 7, scope: !3727)
!3784 = !DILocation(line: 65, column: 12, scope: !3782)
!3785 = !DILocation(line: 65, column: 5, scope: !3782)
!3786 = !DILocation(line: 70, column: 9, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3727, file: !3728, line: 70, column: 7)
!3788 = !DILocation(line: 70, column: 23, scope: !3787)
!3789 = !DILocation(line: 70, column: 33, scope: !3790)
!3790 = !DILexicalBlockFile(scope: !3787, file: !3728, discriminator: 1)
!3791 = !DILocation(line: 70, column: 26, scope: !3792)
!3792 = !DILexicalBlockFile(scope: !3787, file: !3728, discriminator: 3)
!3793 = !DILocation(line: 70, column: 59, scope: !3790)
!3794 = !DILocation(line: 71, column: 7, scope: !3787)
!3795 = !DILocation(line: 71, column: 10, scope: !3790)
!3796 = !DILocation(line: 70, column: 7, scope: !3797)
!3797 = !DILexicalBlockFile(scope: !3727, file: !3728, discriminator: 2)
!3798 = !DILocation(line: 98, column: 12, scope: !3727)
!3799 = !DILocation(line: 103, column: 7, scope: !3727)
!3800 = !DILocation(line: 72, column: 19, scope: !3787)
!3801 = !DILocation(line: 103, column: 19, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3727, file: !3728, line: 103, column: 7)
!3803 = !DILocation(line: 105, column: 13, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3802, file: !3728, line: 104, column: 5)
!3805 = !DILocation(line: 107, column: 5, scope: !3804)
!3806 = !DILocation(line: 110, column: 1, scope: !3727)
!3807 = distinct !DISubprogram(name: "rpl_fflush", scope: !3808, file: !3808, line: 127, type: !3809, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !3851)
!3808 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!51, !3811}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2764, line: 49, baseType: !3813)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2766, line: 241, size: 1728, elements: !3814)
!3814 = !{!3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3813, file: !2766, line: 242, baseType: !51, size: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3813, file: !2766, line: 247, baseType: !10, size: 64, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3813, file: !2766, line: 248, baseType: !10, size: 64, offset: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3813, file: !2766, line: 249, baseType: !10, size: 64, offset: 192)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3813, file: !2766, line: 250, baseType: !10, size: 64, offset: 256)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3813, file: !2766, line: 251, baseType: !10, size: 64, offset: 320)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3813, file: !2766, line: 252, baseType: !10, size: 64, offset: 384)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3813, file: !2766, line: 253, baseType: !10, size: 64, offset: 448)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3813, file: !2766, line: 254, baseType: !10, size: 64, offset: 512)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3813, file: !2766, line: 256, baseType: !10, size: 64, offset: 576)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3813, file: !2766, line: 257, baseType: !10, size: 64, offset: 640)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3813, file: !2766, line: 258, baseType: !10, size: 64, offset: 704)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3813, file: !2766, line: 260, baseType: !3828, size: 64, offset: 768)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2766, line: 156, size: 192, elements: !3830)
!3830 = !{!3831, !3832, !3834}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3829, file: !2766, line: 157, baseType: !3828, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3829, file: !2766, line: 158, baseType: !3833, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3829, file: !2766, line: 162, baseType: !51, size: 32, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3813, file: !2766, line: 262, baseType: !3833, size: 64, offset: 832)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3813, file: !2766, line: 264, baseType: !51, size: 32, offset: 896)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3813, file: !2766, line: 268, baseType: !51, size: 32, offset: 928)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3813, file: !2766, line: 270, baseType: !2792, size: 64, offset: 960)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3813, file: !2766, line: 274, baseType: !138, size: 16, offset: 1024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3813, file: !2766, line: 275, baseType: !2797, size: 8, offset: 1040)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3813, file: !2766, line: 276, baseType: !2799, size: 8, offset: 1048)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3813, file: !2766, line: 280, baseType: !2803, size: 64, offset: 1088)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3813, file: !2766, line: 289, baseType: !2806, size: 64, offset: 1152)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3813, file: !2766, line: 297, baseType: !12, size: 64, offset: 1216)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3813, file: !2766, line: 298, baseType: !12, size: 64, offset: 1280)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3813, file: !2766, line: 299, baseType: !12, size: 64, offset: 1344)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3813, file: !2766, line: 300, baseType: !12, size: 64, offset: 1408)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3813, file: !2766, line: 302, baseType: !13, size: 64, offset: 1472)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3813, file: !2766, line: 303, baseType: !51, size: 32, offset: 1536)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3813, file: !2766, line: 305, baseType: !2814, size: 160, offset: 1568)
!3851 = !{!3852}
!3852 = !DILocalVariable(name: "stream", arg: 1, scope: !3807, file: !3808, line: 127, type: !3811)
!3853 = !DILocation(line: 127, column: 19, scope: !3807)
!3854 = !DILocation(line: 148, column: 14, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3807, file: !3808, line: 148, column: 7)
!3856 = !DILocation(line: 148, column: 22, scope: !3855)
!3857 = !DILocation(line: 148, column: 27, scope: !3858)
!3858 = !DILexicalBlockFile(scope: !3855, file: !3808, discriminator: 1)
!3859 = !DILocation(line: 148, column: 7, scope: !3860)
!3860 = !DILexicalBlockFile(scope: !3807, file: !3808, discriminator: 1)
!3861 = !DILocation(line: 149, column: 12, scope: !3855)
!3862 = !DILocation(line: 149, column: 5, scope: !3855)
!3863 = !DILocalVariable(name: "fp", arg: 1, scope: !3864, file: !3808, line: 40, type: !3811)
!3864 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3808, file: !3808, line: 40, type: !3865, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !3867)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{null, !3811}
!3867 = !{!3863}
!3868 = !DILocation(line: 40, column: 48, scope: !3864, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 153, column: 3, scope: !3807)
!3870 = !DILocation(line: 42, column: 11, scope: !3871, inlinedAt: !3869)
!3871 = distinct !DILexicalBlock(scope: !3864, file: !3808, line: 42, column: 7)
!3872 = !DILocation(line: 42, column: 18, scope: !3871, inlinedAt: !3869)
!3873 = !DILocation(line: 42, column: 7, scope: !3864, inlinedAt: !3869)
!3874 = !DILocation(line: 44, column: 5, scope: !3871, inlinedAt: !3869)
!3875 = !DILocation(line: 155, column: 10, scope: !3807)
!3876 = !DILocation(line: 155, column: 3, scope: !3807)
!3877 = !DILocation(line: 229, column: 1, scope: !3807)
!3878 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3879, file: !3879, line: 28, type: !3880, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !3923)
!3879 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!51, !3882, !3922, !51}
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2764, line: 49, baseType: !3884)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2766, line: 241, size: 1728, elements: !3885)
!3885 = !{!3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3884, file: !2766, line: 242, baseType: !51, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3884, file: !2766, line: 247, baseType: !10, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3884, file: !2766, line: 248, baseType: !10, size: 64, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3884, file: !2766, line: 249, baseType: !10, size: 64, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3884, file: !2766, line: 250, baseType: !10, size: 64, offset: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3884, file: !2766, line: 251, baseType: !10, size: 64, offset: 320)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3884, file: !2766, line: 252, baseType: !10, size: 64, offset: 384)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3884, file: !2766, line: 253, baseType: !10, size: 64, offset: 448)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3884, file: !2766, line: 254, baseType: !10, size: 64, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3884, file: !2766, line: 256, baseType: !10, size: 64, offset: 576)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3884, file: !2766, line: 257, baseType: !10, size: 64, offset: 640)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3884, file: !2766, line: 258, baseType: !10, size: 64, offset: 704)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3884, file: !2766, line: 260, baseType: !3899, size: 64, offset: 768)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2766, line: 156, size: 192, elements: !3901)
!3901 = !{!3902, !3903, !3905}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3900, file: !2766, line: 157, baseType: !3899, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3900, file: !2766, line: 158, baseType: !3904, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3900, file: !2766, line: 162, baseType: !51, size: 32, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3884, file: !2766, line: 262, baseType: !3904, size: 64, offset: 832)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3884, file: !2766, line: 264, baseType: !51, size: 32, offset: 896)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3884, file: !2766, line: 268, baseType: !51, size: 32, offset: 928)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3884, file: !2766, line: 270, baseType: !2792, size: 64, offset: 960)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3884, file: !2766, line: 274, baseType: !138, size: 16, offset: 1024)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3884, file: !2766, line: 275, baseType: !2797, size: 8, offset: 1040)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3884, file: !2766, line: 276, baseType: !2799, size: 8, offset: 1048)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3884, file: !2766, line: 280, baseType: !2803, size: 64, offset: 1088)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3884, file: !2766, line: 289, baseType: !2806, size: 64, offset: 1152)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3884, file: !2766, line: 297, baseType: !12, size: 64, offset: 1216)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3884, file: !2766, line: 298, baseType: !12, size: 64, offset: 1280)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3884, file: !2766, line: 299, baseType: !12, size: 64, offset: 1344)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3884, file: !2766, line: 300, baseType: !12, size: 64, offset: 1408)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3884, file: !2766, line: 302, baseType: !13, size: 64, offset: 1472)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3884, file: !2766, line: 303, baseType: !51, size: 32, offset: 1536)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3884, file: !2766, line: 305, baseType: !2814, size: 160, offset: 1568)
!3922 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2764, line: 91, baseType: !2792)
!3923 = !{!3924, !3925, !3926, !3927}
!3924 = !DILocalVariable(name: "fp", arg: 1, scope: !3878, file: !3879, line: 28, type: !3882)
!3925 = !DILocalVariable(name: "offset", arg: 2, scope: !3878, file: !3879, line: 28, type: !3922)
!3926 = !DILocalVariable(name: "whence", arg: 3, scope: !3878, file: !3879, line: 28, type: !51)
!3927 = !DILocalVariable(name: "pos", scope: !3928, file: !3879, line: 116, type: !3922)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !3879, line: 112, column: 5)
!3929 = distinct !DILexicalBlock(scope: !3878, file: !3879, line: 51, column: 7)
!3930 = !DILocation(line: 28, column: 15, scope: !3878)
!3931 = !DILocation(line: 28, column: 25, scope: !3878)
!3932 = !DILocation(line: 28, column: 37, scope: !3878)
!3933 = !DILocation(line: 51, column: 11, scope: !3929)
!3934 = !DILocation(line: 51, column: 31, scope: !3929)
!3935 = !DILocation(line: 51, column: 24, scope: !3929)
!3936 = !DILocation(line: 52, column: 7, scope: !3929)
!3937 = !DILocation(line: 52, column: 14, scope: !3938)
!3938 = !DILexicalBlockFile(scope: !3929, file: !3879, discriminator: 1)
!3939 = !{!3381, !601, i64 40}
!3940 = !DILocation(line: 52, column: 35, scope: !3938)
!3941 = !{!3381, !601, i64 32}
!3942 = !DILocation(line: 52, column: 28, scope: !3938)
!3943 = !DILocation(line: 53, column: 7, scope: !3929)
!3944 = !DILocation(line: 53, column: 14, scope: !3938)
!3945 = !{!3381, !601, i64 72}
!3946 = !DILocation(line: 53, column: 28, scope: !3938)
!3947 = !DILocation(line: 51, column: 7, scope: !3948)
!3948 = !DILexicalBlockFile(scope: !3878, file: !3879, discriminator: 1)
!3949 = !DILocation(line: 116, column: 26, scope: !3928)
!3950 = !DILocation(line: 116, column: 19, scope: !3951)
!3951 = !DILexicalBlockFile(scope: !3928, file: !3879, discriminator: 1)
!3952 = !DILocation(line: 116, column: 13, scope: !3928)
!3953 = !DILocation(line: 117, column: 15, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3928, file: !3879, line: 117, column: 11)
!3955 = !DILocation(line: 117, column: 11, scope: !3928)
!3956 = !DILocation(line: 127, column: 11, scope: !3928)
!3957 = !DILocation(line: 127, column: 18, scope: !3928)
!3958 = !DILocation(line: 128, column: 11, scope: !3928)
!3959 = !DILocation(line: 128, column: 19, scope: !3928)
!3960 = !{!3381, !2076, i64 144}
!3961 = !DILocation(line: 159, column: 7, scope: !3928)
!3962 = !DILocation(line: 161, column: 10, scope: !3878)
!3963 = !DILocation(line: 161, column: 3, scope: !3878)
!3964 = !DILocation(line: 162, column: 1, scope: !3878)
