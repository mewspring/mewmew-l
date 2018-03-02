; ModuleID = 'coreutils-8.27/src/false.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [61 x i8] c"Usage: %s [ignored command line arguments]\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating failure.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), align 8, !dbg !0
@.str.14 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.17 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@exit_failure = global i32 1, align 4, !dbg !18
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !26
@.str.29 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.30 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.31 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.33, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.35, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.36, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.37, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.40, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.41, i32 0, i32 0), i8* null], align 16, !dbg !35
@.str.32 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.33 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.34 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.35 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.36 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.37 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.38 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.39 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.40 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.41 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !80
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !87
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !100
@.str.11.42 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.43 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.44 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.45 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.46 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !107
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !114
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !102
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !116
@.str.49 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.52 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.53 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.54 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.55 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.56 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.57 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.58 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.59 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.60 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.61 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.62 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.65 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.66 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.67 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.68 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !122
@.str.1.79 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.89 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.92 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !131
@.str.3.93 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.94 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.95 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.96 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.97 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.98 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !566 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !571, metadata !572), !dbg !573
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !574
  %3 = load i8*, i8** @program_name, align 8, !dbg !574, !tbaa !575
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %2, i8* %3, i8* %3) #9, !dbg !579
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !581
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5) #9, !dbg !582
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !583
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !583, !tbaa !575
  %9 = tail call i32 @fputs_unlocked(i8* %7, %struct._IO_FILE* %8) #9, !dbg !584
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !585
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !585, !tbaa !575
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11) #9, !dbg !586
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !587
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !588
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !496, metadata !572) #9, !dbg !589
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !496, metadata !572) #9, !dbg !589
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #9, !dbg !591
  %16 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !592
  %17 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !594
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !507, metadata !572) #9, !dbg !595
  %18 = icmp eq i8* %17, null, !dbg !596
  br i1 %18, label %25, label %19, !dbg !597

; <label>:19:                                     ; preds = %1
  %20 = tail call i32 @strncmp(i8* nonnull %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #13, !dbg !598
  %21 = icmp eq i32 %20, 0, !dbg !598
  br i1 %21, label %25, label %22, !dbg !600

; <label>:22:                                     ; preds = %19
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #9, !dbg !602
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !604
  br label %25, !dbg !606

; <label>:25:                                     ; preds = %1, %19, %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #9, !dbg !607
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !608
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #9, !dbg !609
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !610
  tail call void @exit(i32 %0) #14, !dbg !611
  unreachable, !dbg !611
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #6 !dbg !612 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !617, metadata !572), !dbg !635
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !618, metadata !572), !dbg !636
  %3 = icmp eq i32 %0, 2, !dbg !637
  br i1 %3, label %4, label %21, !dbg !638

; <label>:4:                                      ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !639, !tbaa !575
  tail call void @set_program_name(i8* %5) #9, !dbg !640
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !641
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !642
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !643
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !644
  tail call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !624, metadata !572), !dbg !645
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !646
  %11 = load i8*, i8** %10, align 8, !dbg !646, !tbaa !575
  %12 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !646
  %13 = icmp eq i32 %12, 0, !dbg !648
  br i1 %13, label %14, label %15, !dbg !650

; <label>:14:                                     ; preds = %4
  tail call void @usage(i32 1) #15, !dbg !652
  unreachable, !dbg !652

; <label>:15:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !631, metadata !572), !dbg !653
  %16 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !654
  %17 = icmp eq i32 %16, 0, !dbg !656
  br i1 %17, label %18, label %21, !dbg !658

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !659, !tbaa !575
  %20 = load i8*, i8** @Version, align 8, !dbg !660, !tbaa !575
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #9, !dbg !661
  br label %21, !dbg !661

; <label>:21:                                     ; preds = %15, %18, %2
  ret i32 1, !dbg !662
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !663 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !665, metadata !572), !dbg !666
  store i8* %0, i8** @file_name, align 8, !dbg !667, !tbaa !575
  ret void, !dbg !668
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !669 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !673, metadata !674), !dbg !675
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !676, !tbaa !677
  ret void, !dbg !679
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !680 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !575
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !688
  %3 = icmp eq i32 %2, 0, !dbg !689
  br i1 %3, label %21, label %4, !dbg !690

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !691, !tbaa !677, !range !693
  %6 = icmp eq i8 %5, 0, !dbg !691
  %7 = tail call i32* @__errno_location() #1, !dbg !694
  br i1 %6, label %11, label %8, !dbg !696

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !697, !tbaa !699
  %10 = icmp eq i32 %9, 32, !dbg !701
  br i1 %10, label %21, label %11, !dbg !702

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 5) #9, !dbg !704
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !684, metadata !572), !dbg !705
  %13 = load i8*, i8** @file_name, align 8, !dbg !706, !tbaa !575
  %14 = icmp eq i8* %13, null, !dbg !706
  %15 = load i32, i32* %7, align 4, !tbaa !699
  br i1 %14, label %18, label %16, !dbg !707

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !708
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.18, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !710
  br label %19, !dbg !712

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.19, i64 0, i64 0), i8* %12) #9, !dbg !713
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !714, !tbaa !699
  tail call void @_exit(i32 %20) #14, !dbg !715
  unreachable, !dbg !715

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !716, !tbaa !575
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !718
  %24 = icmp eq i32 %23, 0, !dbg !719
  br i1 %24, label %27, label %25, !dbg !720

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !721, !tbaa !699
  tail call void @_exit(i32 %26) #14, !dbg !722
  unreachable, !dbg !722

; <label>:27:                                     ; preds = %21
  ret void, !dbg !723
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !724 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !726, metadata !572), !dbg !729
  %2 = icmp eq i8* %0, null, !dbg !730
  br i1 %2, label %3, label %6, !dbg !732

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !733, !tbaa !575
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !735
  tail call void @abort() #14, !dbg !736
  unreachable, !dbg !736

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !737
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !727, metadata !572), !dbg !738
  %8 = icmp ne i8* %7, null, !dbg !739
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !740
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !742
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !728, metadata !572), !dbg !743
  %11 = ptrtoint i8* %10 to i64, !dbg !744
  %12 = ptrtoint i8* %0 to i64, !dbg !744
  %13 = sub i64 %11, %12, !dbg !744
  %14 = icmp sgt i64 %13, 6, !dbg !746
  br i1 %14, label %15, label %24, !dbg !747

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !748
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.30, i64 0, i64 0), i64 7) #13, !dbg !748
  %18 = icmp eq i32 %17, 0, !dbg !750
  br i1 %18, label %19, label %24, !dbg !751

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !726, metadata !572), !dbg !729
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.31, i64 0, i64 0), i64 3) #13, !dbg !752
  %21 = icmp eq i32 %20, 0, !dbg !755
  br i1 %21, label %22, label %24, !dbg !756

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !757
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !726, metadata !572), !dbg !729
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !759, !tbaa !575
  br label %24, !dbg !760

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !726, metadata !572), !dbg !729
  store i8* %25, i8** @program_name, align 8, !dbg !761, !tbaa !575
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !762, !tbaa !575
  ret void, !dbg !763
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !764 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !769, metadata !572), !dbg !772
  %2 = tail call i32* @__errno_location() #1, !dbg !773
  %3 = load i32, i32* %2, align 4, !dbg !773, !tbaa !699
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !770, metadata !572), !dbg !774
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !775
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !776
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !776
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !778
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !771, metadata !572), !dbg !779
  store i32 %3, i32* %2, align 4, !dbg !780, !tbaa !699
  ret %struct.quoting_options* %8, !dbg !781
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !782 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !788, metadata !572), !dbg !789
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !790
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !790
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !791
  %5 = load i32, i32* %4, align 8, !dbg !791, !tbaa !793
  ret i32 %5, !dbg !795
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !796 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !800, metadata !572), !dbg !802
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !801, metadata !572), !dbg !803
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !804
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !804
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !805
  store i32 %1, i32* %5, align 8, !dbg !807, !tbaa !793
  ret void, !dbg !808
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !809 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !813, metadata !572), !dbg !821
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !814, metadata !572), !dbg !822
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !815, metadata !572), !dbg !823
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !816, metadata !572), !dbg !824
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !825
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !825
  %6 = lshr i8 %1, 5, !dbg !826
  %7 = zext i8 %6 to i64, !dbg !826
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !828
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !817, metadata !572), !dbg !829
  %9 = and i8 %1, 31, !dbg !830
  %10 = zext i8 %9 to i32, !dbg !831
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !819, metadata !572), !dbg !832
  %11 = load i32, i32* %8, align 4, !dbg !833, !tbaa !699
  %12 = lshr i32 %11, %10, !dbg !834
  %13 = and i32 %12, 1, !dbg !835
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !820, metadata !572), !dbg !836
  %14 = and i32 %2, 1, !dbg !837
  %15 = xor i32 %13, %14, !dbg !838
  %16 = shl i32 %15, %10, !dbg !839
  %17 = xor i32 %16, %11, !dbg !840
  store i32 %17, i32* %8, align 4, !dbg !840, !tbaa !699
  ret i32 %13, !dbg !841
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !842 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !846, metadata !572), !dbg !849
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !847, metadata !572), !dbg !850
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !851
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !846, metadata !572), !dbg !849
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !853
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !846, metadata !572), !dbg !849
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !854
  %6 = load i32, i32* %5, align 4, !dbg !854, !tbaa !855
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !848, metadata !572), !dbg !856
  store i32 %1, i32* %5, align 4, !dbg !857, !tbaa !855
  ret i32 %6, !dbg !858
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !859 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !863, metadata !572), !dbg !866
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !864, metadata !572), !dbg !867
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !865, metadata !572), !dbg !868
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !869
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !863, metadata !572), !dbg !866
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !871
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !863, metadata !572), !dbg !866
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !872
  store i32 10, i32* %6, align 8, !dbg !873, !tbaa !793
  %7 = icmp ne i8* %1, null, !dbg !874
  %8 = icmp ne i8* %2, null, !dbg !876
  %9 = and i1 %7, %8, !dbg !878
  br i1 %9, label %11, label %10, !dbg !878

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !879
  unreachable, !dbg !879

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !880
  store i8* %1, i8** %12, align 8, !dbg !881, !tbaa !882
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !883
  store i8* %2, i8** %13, align 8, !dbg !884, !tbaa !885
  ret void, !dbg !886
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !887 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !891, metadata !572), !dbg !899
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !892, metadata !572), !dbg !900
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !893, metadata !572), !dbg !901
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !894, metadata !572), !dbg !902
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !895, metadata !572), !dbg !903
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !904
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !904
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !896, metadata !572), !dbg !905
  %8 = tail call i32* @__errno_location() #1, !dbg !906
  %9 = load i32, i32* %8, align 4, !dbg !906, !tbaa !699
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !897, metadata !572), !dbg !907
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !908
  %11 = load i32, i32* %10, align 8, !dbg !908, !tbaa !793
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !909
  %13 = load i32, i32* %12, align 4, !dbg !909, !tbaa !855
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !910
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !911
  %16 = load i8*, i8** %15, align 8, !dbg !911, !tbaa !882
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !912
  %18 = load i8*, i8** %17, align 8, !dbg !912, !tbaa !885
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !913
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !898, metadata !572), !dbg !914
  store i32 %9, i32* %8, align 4, !dbg !915, !tbaa !699
  ret i64 %19, !dbg !916
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !917 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !923, metadata !572), !dbg !986
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !924, metadata !572), !dbg !987
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !925, metadata !572), !dbg !988
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !926, metadata !572), !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !927, metadata !572), !dbg !990
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !928, metadata !572), !dbg !991
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !929, metadata !572), !dbg !992
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !930, metadata !572), !dbg !993
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !931, metadata !572), !dbg !994
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !933, metadata !572), !dbg !995
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !934, metadata !572), !dbg !996
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !935, metadata !572), !dbg !997
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !936, metadata !572), !dbg !998
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !937, metadata !572), !dbg !999
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1000
  %14 = icmp eq i64 %13, 1, !dbg !1001
  %15 = lshr i32 %5, 1, !dbg !1002
  %16 = trunc i32 %15 to i8, !dbg !1002
  %17 = and i8 %16, 1, !dbg !1002
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !939, metadata !572), !dbg !1002
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !940, metadata !572), !dbg !1003
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !941, metadata !572), !dbg !1004
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !942, metadata !572), !dbg !1005
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1006

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !924, metadata !572), !dbg !987
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !942, metadata !572), !dbg !1005
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !941, metadata !572), !dbg !1004
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !939, metadata !572), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !926, metadata !572), !dbg !989
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !937, metadata !572), !dbg !999
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !936, metadata !572), !dbg !998
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !935, metadata !572), !dbg !997
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !934, metadata !572), !dbg !996
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !931, metadata !572), !dbg !994
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !930, metadata !572), !dbg !993
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !927, metadata !572), !dbg !990
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
  ], !dbg !1007

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !927, metadata !572), !dbg !990
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !939, metadata !572), !dbg !1002
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !939, metadata !572), !dbg !1002
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !927, metadata !572), !dbg !990
  br label %95, !dbg !1008

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !939, metadata !572), !dbg !1002
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !927, metadata !572), !dbg !990
  %43 = and i8 %36, 1, !dbg !1010
  %44 = icmp eq i8 %43, 0, !dbg !1010
  br i1 %44, label %45, label %95, !dbg !1008

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1012
  br i1 %46, label %95, label %47, !dbg !1016

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1018, !tbaa !1020
  br label %95, !dbg !1018

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.42, i64 0, i64 0), i32 %28), !dbg !1021
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !930, metadata !572), !dbg !993
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), i32 %28), !dbg !1025
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !931, metadata !572), !dbg !994
  br label %51, !dbg !1026

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !931, metadata !572), !dbg !994
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !930, metadata !572), !dbg !993
  %54 = and i8 %36, 1, !dbg !1027
  %55 = icmp eq i8 %54, 0, !dbg !1027
  br i1 %55, label %56, label %73, !dbg !1029

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !935, metadata !572), !dbg !997
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !933, metadata !572), !dbg !995
  %57 = load i8, i8* %52, align 1, !dbg !1030, !tbaa !1020
  %58 = icmp eq i8 %57, 0, !dbg !1034
  br i1 %58, label %73, label %59, !dbg !1034

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1036

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1036
  br i1 %64, label %65, label %67, !dbg !1040

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1042
  store i8 %61, i8* %66, align 1, !dbg !1042, !tbaa !1020
  br label %67, !dbg !1042

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !933, metadata !572), !dbg !995
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1046
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !935, metadata !572), !dbg !997
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !935, metadata !572), !dbg !997
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !933, metadata !572), !dbg !995
  %70 = load i8, i8* %69, align 1, !dbg !1030, !tbaa !1020
  %71 = icmp eq i8 %70, 0, !dbg !1034
  br i1 %71, label %72, label %60, !dbg !1034, !llvm.loop !1048

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !995

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !937, metadata !572), !dbg !999
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !935, metadata !572), !dbg !997
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1051
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !936, metadata !572), !dbg !998
  br label %95, !dbg !1052

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !937, metadata !572), !dbg !999
  br label %77, !dbg !1053

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !937, metadata !572), !dbg !999
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !939, metadata !572), !dbg !1002
  br label %79, !dbg !1054

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !939, metadata !572), !dbg !1002
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !937, metadata !572), !dbg !999
  %82 = and i8 %81, 1, !dbg !1055
  %83 = icmp eq i8 %82, 0, !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !937, metadata !572), !dbg !999
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1057
  br label %85, !dbg !1057

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !939, metadata !572), !dbg !1002
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !937, metadata !572), !dbg !999
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !927, metadata !572), !dbg !990
  %88 = and i8 %87, 1, !dbg !1058
  %89 = icmp eq i8 %88, 0, !dbg !1058
  br i1 %89, label %90, label %95, !dbg !1060

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1061
  br i1 %91, label %95, label %92, !dbg !1065

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1067, !tbaa !1020
  br label %95, !dbg !1067

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !939, metadata !572), !dbg !1002
  br label %95, !dbg !1069

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1070
  unreachable, !dbg !1070

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !939, metadata !572), !dbg !1002
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !937, metadata !572), !dbg !999
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !936, metadata !572), !dbg !998
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !935, metadata !572), !dbg !997
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !931, metadata !572), !dbg !994
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !930, metadata !572), !dbg !993
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !927, metadata !572), !dbg !990
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !932, metadata !572), !dbg !1071
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
  br label %123, !dbg !1072

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !924, metadata !572), !dbg !987
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !942, metadata !572), !dbg !1005
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !941, metadata !572), !dbg !1004
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !926, metadata !572), !dbg !989
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !934, metadata !572), !dbg !996
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !932, metadata !572), !dbg !1071
  %132 = icmp eq i64 %127, -1, !dbg !1073
  br i1 %132, label %135, label %133, !dbg !1075

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1076
  br i1 %134, label %597, label %139, !dbg !1078

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1080
  %137 = load i8, i8* %136, align 1, !dbg !1080, !tbaa !1020
  %138 = icmp eq i8 %137, 0, !dbg !1082
  br i1 %138, label %597, label %139, !dbg !1078

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !948, metadata !572), !dbg !1083
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !949, metadata !572), !dbg !1084
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !950, metadata !572), !dbg !1085
  br i1 %109, label %140, label %155, !dbg !1086

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1088
  %142 = and i1 %110, %132, !dbg !1090
  br i1 %142, label %143, label %145, !dbg !1090

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !926, metadata !572), !dbg !989
  br label %145, !dbg !1092

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !926, metadata !572), !dbg !989
  %147 = icmp ugt i64 %141, %146, !dbg !1094
  br i1 %147, label %155, label %148, !dbg !1096

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1097
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1098
  %151 = icmp ne i32 %150, 0, !dbg !1099
  %152 = or i1 %151, %112, !dbg !1099
  %153 = xor i1 %151, true, !dbg !1099
  %154 = zext i1 %153 to i8, !dbg !1099
  br i1 %152, label %155, label %644, !dbg !1099

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !948, metadata !572), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !926, metadata !572), !dbg !989
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1101
  %159 = load i8, i8* %158, align 1, !dbg !1101, !tbaa !1020
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !943, metadata !572), !dbg !1102
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
  ], !dbg !1103

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1104

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1105

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !949, metadata !572), !dbg !1084
  %163 = and i8 %128, 1, !dbg !1110
  %164 = icmp eq i8 %163, 0, !dbg !1110
  %165 = and i1 %114, %164, !dbg !1113
  br i1 %165, label %166, label %182, !dbg !1113

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1115
  br i1 %167, label %168, label %170, !dbg !1120

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1122
  store i8 39, i8* %169, align 1, !dbg !1122, !tbaa !1020
  br label %170, !dbg !1122

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !933, metadata !572), !dbg !995
  %172 = icmp ult i64 %171, %131, !dbg !1126
  br i1 %172, label %173, label %175, !dbg !1130

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1132
  store i8 36, i8* %174, align 1, !dbg !1132, !tbaa !1020
  br label %175, !dbg !1132

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1134
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !933, metadata !572), !dbg !995
  %177 = icmp ult i64 %176, %131, !dbg !1136
  br i1 %177, label %178, label %180, !dbg !1140

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1142
  store i8 39, i8* %179, align 1, !dbg !1142, !tbaa !1020
  br label %180, !dbg !1142

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !940, metadata !572), !dbg !1003
  br label %182, !dbg !1146

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !933, metadata !572), !dbg !995
  %185 = icmp ult i64 %183, %131, !dbg !1148
  br i1 %185, label %186, label %188, !dbg !1152

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1154
  store i8 92, i8* %187, align 1, !dbg !1154, !tbaa !1020
  br label %188, !dbg !1154

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !933, metadata !572), !dbg !995
  br i1 %106, label %190, label %476, !dbg !1158

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1160
  %192 = icmp ult i64 %191, %156, !dbg !1162
  br i1 %192, label %193, label %476, !dbg !1163

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1164
  %195 = load i8, i8* %194, align 1, !dbg !1164, !tbaa !1020
  %196 = add i8 %195, -48, !dbg !1166
  %197 = icmp ult i8 %196, 10, !dbg !1166
  br i1 %197, label %198, label %476, !dbg !1166

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1167
  br i1 %199, label %200, label %202, !dbg !1172

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1174
  store i8 48, i8* %201, align 1, !dbg !1174, !tbaa !1020
  br label %202, !dbg !1174

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1176
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !933, metadata !572), !dbg !995
  %204 = icmp ult i64 %203, %131, !dbg !1178
  br i1 %204, label %205, label %207, !dbg !1182

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1184
  store i8 48, i8* %206, align 1, !dbg !1184, !tbaa !1020
  br label %207, !dbg !1184

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !933, metadata !572), !dbg !995
  br label %476, !dbg !1188

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1189

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1190

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1191

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1193

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1195
  %215 = icmp ult i64 %214, %156, !dbg !1197
  br i1 %215, label %216, label %476, !dbg !1198

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1199
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1201
  %219 = load i8, i8* %218, align 1, !dbg !1201, !tbaa !1020
  %220 = icmp eq i8 %219, 63, !dbg !1202
  br i1 %220, label %221, label %476, !dbg !1203

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1205
  %223 = load i8, i8* %222, align 1, !dbg !1205, !tbaa !1020
  %224 = sext i8 %223 to i32, !dbg !1205
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
  ], !dbg !1206

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1207

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !943, metadata !572), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !932, metadata !572), !dbg !1071
  %227 = icmp ult i64 %125, %131, !dbg !1209
  br i1 %227, label %228, label %230, !dbg !1213

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1215
  store i8 63, i8* %229, align 1, !dbg !1215, !tbaa !1020
  br label %230, !dbg !1215

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !933, metadata !572), !dbg !995
  %232 = icmp ult i64 %231, %131, !dbg !1219
  br i1 %232, label %233, label %235, !dbg !1223

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1225
  store i8 34, i8* %234, align 1, !dbg !1225, !tbaa !1020
  br label %235, !dbg !1225

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !933, metadata !572), !dbg !995
  %237 = icmp ult i64 %236, %131, !dbg !1229
  br i1 %237, label %238, label %240, !dbg !1233

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1235
  store i8 34, i8* %239, align 1, !dbg !1235, !tbaa !1020
  br label %240, !dbg !1235

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !933, metadata !572), !dbg !995
  %242 = icmp ult i64 %241, %131, !dbg !1239
  br i1 %242, label %243, label %245, !dbg !1243

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1245
  store i8 63, i8* %244, align 1, !dbg !1245, !tbaa !1020
  br label %245, !dbg !1245

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1247
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !933, metadata !572), !dbg !995
  br label %476, !dbg !1249

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !947, metadata !572), !dbg !1250
  br label %257, !dbg !1251

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !947, metadata !572), !dbg !1250
  br label %257, !dbg !1252

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !947, metadata !572), !dbg !1250
  br label %255, !dbg !1253

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !947, metadata !572), !dbg !1250
  br label %255, !dbg !1254

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !947, metadata !572), !dbg !1250
  br label %257, !dbg !1255

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !947, metadata !572), !dbg !1250
  br i1 %114, label %253, label %254, !dbg !1256

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1257

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1260

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !947, metadata !572), !dbg !1250
  br i1 %118, label %257, label %644, !dbg !1262

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !947, metadata !572), !dbg !1250
  br i1 %105, label %503, label %476, !dbg !1264

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1265
  br i1 %260, label %261, label %266, !dbg !1267

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1268, !tbaa !1020
  %263 = icmp ne i8 %262, 0, !dbg !1270
  %264 = icmp ne i64 %124, 0, !dbg !1271
  %265 = or i1 %264, %263, !dbg !1273
  br i1 %265, label %476, label %272, !dbg !1273

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1274
  %268 = icmp ne i64 %124, 0, !dbg !1271
  %269 = or i1 %268, %267, !dbg !1276
  br i1 %269, label %476, label %272, !dbg !1276

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1271
  br i1 %271, label %272, label %476, !dbg !1278

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !950, metadata !572), !dbg !1085
  br label %273, !dbg !1279

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !950, metadata !572), !dbg !1085
  br i1 %118, label %476, label %644, !dbg !1280

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !941, metadata !572), !dbg !1004
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !950, metadata !572), !dbg !1085
  br i1 %114, label %276, label %476, !dbg !1282

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1283

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1286
  %279 = icmp ne i64 %126, 0, !dbg !1288
  %280 = or i1 %279, %278, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !934, metadata !572), !dbg !996
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !924, metadata !572), !dbg !987
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1290
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !924, metadata !572), !dbg !987
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !934, metadata !572), !dbg !996
  %283 = icmp ult i64 %125, %282, !dbg !1291
  br i1 %283, label %284, label %286, !dbg !1295

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1297
  store i8 39, i8* %285, align 1, !dbg !1297, !tbaa !1020
  br label %286, !dbg !1297

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !933, metadata !572), !dbg !995
  %288 = icmp ult i64 %287, %282, !dbg !1301
  br i1 %288, label %289, label %291, !dbg !1305

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1307
  store i8 92, i8* %290, align 1, !dbg !1307, !tbaa !1020
  br label %291, !dbg !1307

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !933, metadata !572), !dbg !995
  %293 = icmp ult i64 %292, %282, !dbg !1311
  br i1 %293, label %294, label %296, !dbg !1315

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1317
  store i8 39, i8* %295, align 1, !dbg !1317, !tbaa !1020
  br label %296, !dbg !1317

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !940, metadata !572), !dbg !1003
  br label %476, !dbg !1321

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1322

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !951, metadata !572), !dbg !1323
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1324
  %301 = load i16*, i16** %300, align 8, !dbg !1324, !tbaa !575
  %302 = zext i8 %159 to i64, !dbg !1324
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1324
  %304 = load i16, i16* %303, align 2, !dbg !1324, !tbaa !1326
  %305 = lshr i16 %304, 14, !dbg !1328
  %306 = trunc i16 %305 to i8, !dbg !1328
  %307 = and i8 %306, 1, !dbg !1328
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !954, metadata !572), !dbg !1329
  br label %368, !dbg !1330

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9, !dbg !1331
  store i64 0, i64* %10, align 8, !dbg !1332
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !951, metadata !572), !dbg !1323
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !954, metadata !572), !dbg !1329
  %309 = icmp eq i64 %156, -1, !dbg !1333
  br i1 %309, label %310, label %312, !dbg !1335, !llvm.loop !1336

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !926, metadata !572), !dbg !989
  br label %312, !dbg !1340, !llvm.loop !1336

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1329

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !954, metadata !572), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !951, metadata !572), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !926, metadata !572), !dbg !989
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9, !dbg !1341
  %317 = add i64 %315, %124, !dbg !1342
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1343
  %319 = sub i64 %313, %317, !dbg !1344
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !955, metadata !1345), !dbg !1346
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !972, metadata !1345), !dbg !1347
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #9, !dbg !1348
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !975, metadata !572), !dbg !1349
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1350

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !951, metadata !572), !dbg !1323
  %322 = icmp ugt i64 %313, %317, !dbg !1351
  br i1 %322, label %323, label %351, !dbg !1354

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1355

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1355
  %328 = load i8, i8* %327, align 1, !dbg !1355, !tbaa !1020
  %329 = icmp eq i8 %328, 0, !dbg !1357
  br i1 %329, label %348, label %330, !dbg !1358

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !951, metadata !572), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !951, metadata !572), !dbg !1323
  %332 = add i64 %331, %124, !dbg !1361
  %333 = icmp ult i64 %332, %313, !dbg !1351
  br i1 %333, label %324, label %348, !dbg !1354, !llvm.loop !1362

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1364
  %336 = and i1 %116, %335, !dbg !1368
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !976, metadata !572), !dbg !1369
  br i1 %336, label %337, label %355, !dbg !1368

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1370

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1370
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1371
  %342 = load i8, i8* %341, align 1, !dbg !1371, !tbaa !1020
  %343 = sext i8 %342 to i32, !dbg !1371
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1372

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !976, metadata !572), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !976, metadata !572), !dbg !1369
  %346 = icmp ult i64 %345, %320, !dbg !1364
  br i1 %346, label %338, label %354, !dbg !1375, !llvm.loop !1377

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1329

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1329

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1329

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !954, metadata !572), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !951, metadata !572), !dbg !1323
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1380
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1381

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1381, !tbaa !699
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !972, metadata !572), !dbg !1347
  %357 = call i32 @iswprint(i32 %356) #9, !dbg !1383
  %358 = icmp eq i32 %357, 0, !dbg !1383
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !954, metadata !572), !dbg !1329
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1384
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !954, metadata !572), !dbg !1329
  %360 = add i64 %320, %315, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !951, metadata !572), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !954, metadata !572), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !951, metadata !572), !dbg !1323
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1380
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !955, metadata !1345), !dbg !1346
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1386
  %362 = icmp eq i32 %361, 0, !dbg !1387
  br i1 %362, label %314, label %363, !dbg !1388, !llvm.loop !1336

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1390

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1390
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !954, metadata !572), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !951, metadata !572), !dbg !1323
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1380
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1390
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !954, metadata !572), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !951, metadata !572), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !926, metadata !572), !dbg !989
  %372 = and i8 %371, 1, !dbg !1391
  %373 = icmp ne i8 %372, 0, !dbg !1391
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !950, metadata !572), !dbg !1085
  %374 = icmp ult i64 %370, 2, !dbg !1392
  %375 = or i1 %373, %113, !dbg !1393
  %376 = and i1 %374, %375, !dbg !1395
  br i1 %376, label %476, label %377, !dbg !1395

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !983, metadata !572), !dbg !1397
  br label %379, !dbg !1398

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !949, metadata !572), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !948, metadata !572), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !943, metadata !572), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !932, metadata !572), !dbg !1071
  br i1 %375, label %432, label %386, !dbg !1399

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1404

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !949, metadata !572), !dbg !1084
  %388 = and i8 %382, 1, !dbg !1408
  %389 = icmp eq i8 %388, 0, !dbg !1408
  %390 = and i1 %114, %389, !dbg !1411
  br i1 %390, label %391, label %407, !dbg !1411

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1413
  br i1 %392, label %393, label %395, !dbg !1418

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1420
  store i8 39, i8* %394, align 1, !dbg !1420, !tbaa !1020
  br label %395, !dbg !1420

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !933, metadata !572), !dbg !995
  %397 = icmp ult i64 %396, %131, !dbg !1424
  br i1 %397, label %398, label %400, !dbg !1428

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1430
  store i8 36, i8* %399, align 1, !dbg !1430, !tbaa !1020
  br label %400, !dbg !1430

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !933, metadata !572), !dbg !995
  %402 = icmp ult i64 %401, %131, !dbg !1434
  br i1 %402, label %403, label %405, !dbg !1438

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1440
  store i8 39, i8* %404, align 1, !dbg !1440, !tbaa !1020
  br label %405, !dbg !1440

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !940, metadata !572), !dbg !1003
  br label %407, !dbg !1444

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !933, metadata !572), !dbg !995
  %410 = icmp ult i64 %408, %131, !dbg !1446
  br i1 %410, label %411, label %413, !dbg !1450

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1452
  store i8 92, i8* %412, align 1, !dbg !1452, !tbaa !1020
  br label %413, !dbg !1452

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !933, metadata !572), !dbg !995
  %415 = icmp ult i64 %414, %131, !dbg !1456
  br i1 %415, label %416, label %420, !dbg !1460

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1462
  %418 = or i8 %417, 48, !dbg !1462
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1462
  store i8 %418, i8* %419, align 1, !dbg !1462, !tbaa !1020
  br label %420, !dbg !1462

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !933, metadata !572), !dbg !995
  %422 = icmp ult i64 %421, %131, !dbg !1466
  br i1 %422, label %423, label %428, !dbg !1470

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1472
  %425 = and i8 %424, 7, !dbg !1472
  %426 = or i8 %425, 48, !dbg !1472
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1472
  store i8 %426, i8* %427, align 1, !dbg !1472, !tbaa !1020
  br label %428, !dbg !1472

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !933, metadata !572), !dbg !995
  %430 = and i8 %383, 7, !dbg !1476
  %431 = or i8 %430, 48, !dbg !1477
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !943, metadata !572), !dbg !1102
  br label %441, !dbg !1478

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1479
  %434 = icmp eq i8 %433, 0, !dbg !1479
  br i1 %434, label %441, label %435, !dbg !1481

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1482
  br i1 %436, label %437, label %439, !dbg !1487

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1489
  store i8 92, i8* %438, align 1, !dbg !1489, !tbaa !1020
  br label %439, !dbg !1489

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !948, metadata !572), !dbg !1083
  br label %441, !dbg !1493

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !949, metadata !572), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !948, metadata !572), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !943, metadata !572), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !933, metadata !572), !dbg !995
  %447 = add i64 %380, 1, !dbg !1494
  %448 = icmp ugt i64 %378, %447, !dbg !1496
  br i1 %448, label %449, label %541, !dbg !1497

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1498
  %451 = icmp ne i8 %450, 0, !dbg !1498
  %452 = and i8 %446, 1, !dbg !1502
  %453 = icmp eq i8 %452, 0, !dbg !1502
  %454 = and i1 %451, %453, !dbg !1498
  br i1 %454, label %455, label %466, !dbg !1498

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1504
  br i1 %456, label %457, label %459, !dbg !1509

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1511
  store i8 39, i8* %458, align 1, !dbg !1511, !tbaa !1020
  br label %459, !dbg !1511

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !933, metadata !572), !dbg !995
  %461 = icmp ult i64 %460, %131, !dbg !1515
  br i1 %461, label %462, label %464, !dbg !1519

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1521
  store i8 39, i8* %463, align 1, !dbg !1521, !tbaa !1020
  br label %464, !dbg !1521

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !940, metadata !572), !dbg !1003
  br label %466, !dbg !1525

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !933, metadata !572), !dbg !995
  %469 = icmp ult i64 %467, %131, !dbg !1527
  br i1 %469, label %470, label %472, !dbg !1531

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1533
  store i8 %444, i8* %471, align 1, !dbg !1533, !tbaa !1020
  br label %472, !dbg !1533

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !932, metadata !572), !dbg !1071
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1537
  %475 = load i8, i8* %474, align 1, !dbg !1537, !tbaa !1020
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !943, metadata !572), !dbg !1102
  br label %379, !dbg !1538, !llvm.loop !1540

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !924, metadata !572), !dbg !987
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !950, metadata !572), !dbg !1085
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !949, metadata !572), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !948, metadata !572), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !943, metadata !572), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !941, metadata !572), !dbg !1004
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !926, metadata !572), !dbg !989
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !934, metadata !572), !dbg !996
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !932, metadata !572), !dbg !1071
  br i1 %107, label %488, label %487, !dbg !1543

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1545

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1546

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1547
  %491 = zext i8 %490 to i64, !dbg !1547
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1549
  %493 = load i32, i32* %492, align 4, !dbg !1549, !tbaa !699
  %494 = and i8 %483, 31, !dbg !1550
  %495 = zext i8 %494 to i32, !dbg !1551
  %496 = shl i32 1, %495, !dbg !1552
  %497 = and i32 %493, %496, !dbg !1552
  %498 = icmp eq i32 %497, 0, !dbg !1552
  %499 = icmp eq i8 %157, 0, !dbg !1553
  %500 = and i1 %499, %498, !dbg !1554
  br i1 %500, label %542, label %503, !dbg !1554

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1553
  br i1 %502, label %542, label %503, !dbg !1555

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !924, metadata !572), !dbg !987
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !950, metadata !572), !dbg !1085
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !943, metadata !572), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !941, metadata !572), !dbg !1004
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !926, metadata !572), !dbg !989
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !934, metadata !572), !dbg !996
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !932, metadata !572), !dbg !1071
  br i1 %112, label %513, label %644, !dbg !1557

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !949, metadata !572), !dbg !1084
  %514 = and i8 %508, 1, !dbg !1560
  %515 = icmp eq i8 %514, 0, !dbg !1560
  %516 = and i1 %114, %515, !dbg !1563
  br i1 %516, label %517, label %533, !dbg !1563

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1565
  br i1 %518, label %519, label %521, !dbg !1570

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1572
  store i8 39, i8* %520, align 1, !dbg !1572, !tbaa !1020
  br label %521, !dbg !1572

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !933, metadata !572), !dbg !995
  %523 = icmp ult i64 %522, %512, !dbg !1576
  br i1 %523, label %524, label %526, !dbg !1580

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1582
  store i8 36, i8* %525, align 1, !dbg !1582, !tbaa !1020
  br label %526, !dbg !1582

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !933, metadata !572), !dbg !995
  %528 = icmp ult i64 %527, %512, !dbg !1586
  br i1 %528, label %529, label %531, !dbg !1590

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1592
  store i8 39, i8* %530, align 1, !dbg !1592, !tbaa !1020
  br label %531, !dbg !1592

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !940, metadata !572), !dbg !1003
  br label %533, !dbg !1596

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !933, metadata !572), !dbg !995
  %536 = icmp ult i64 %534, %512, !dbg !1598
  br i1 %536, label %537, label %539, !dbg !1602

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1604
  store i8 92, i8* %538, align 1, !dbg !1604, !tbaa !1020
  br label %539, !dbg !1604

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !924, metadata !572), !dbg !987
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !950, metadata !572), !dbg !1085
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !949, metadata !572), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !943, metadata !572), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !941, metadata !572), !dbg !1004
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !926, metadata !572), !dbg !989
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !934, metadata !572), !dbg !996
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !932, metadata !572), !dbg !1071
  br label %569, !dbg !1608

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !987

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !924, metadata !572), !dbg !987
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !950, metadata !572), !dbg !1085
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !949, metadata !572), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !943, metadata !572), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !941, metadata !572), !dbg !1004
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !926, metadata !572), !dbg !989
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !934, metadata !572), !dbg !996
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !932, metadata !572), !dbg !1071
  %553 = and i8 %547, 1, !dbg !1608
  %554 = icmp ne i8 %553, 0, !dbg !1608
  %555 = and i8 %550, 1, !dbg !1612
  %556 = icmp eq i8 %555, 0, !dbg !1612
  %557 = and i1 %554, %556, !dbg !1608
  br i1 %557, label %558, label %569, !dbg !1608

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1614
  br i1 %559, label %560, label %562, !dbg !1619

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1621
  store i8 39, i8* %561, align 1, !dbg !1621, !tbaa !1020
  br label %562, !dbg !1621

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !933, metadata !572), !dbg !995
  %564 = icmp ult i64 %563, %552, !dbg !1625
  br i1 %564, label %565, label %567, !dbg !1629

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1631
  store i8 39, i8* %566, align 1, !dbg !1631, !tbaa !1020
  br label %567, !dbg !1631

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !933, metadata !572), !dbg !995
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !940, metadata !572), !dbg !1003
  br label %569, !dbg !1635

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !940, metadata !572), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !933, metadata !572), !dbg !995
  %579 = icmp ult i64 %577, %570, !dbg !1637
  br i1 %579, label %580, label %582, !dbg !1641

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1643
  store i8 %572, i8* %581, align 1, !dbg !1643, !tbaa !1020
  br label %582, !dbg !1643

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !933, metadata !572), !dbg !995
  %584 = and i8 %571, 1, !dbg !1647
  %585 = icmp eq i8 %584, 0, !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !942, metadata !572), !dbg !1005
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1649
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !942, metadata !572), !dbg !1005
  br label %587, !dbg !1650

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !932, metadata !572), !dbg !1071
  br label %123, !dbg !1653, !llvm.loop !1654

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1657
  %600 = and i1 %114, %599, !dbg !1659
  %601 = xor i1 %600, true, !dbg !1659
  %602 = or i1 %112, %601, !dbg !1659
  br i1 %602, label %603, label %648, !dbg !1659

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1660
  %605 = xor i1 %604, true, !dbg !1660
  %606 = and i8 %129, 1, !dbg !1662
  %607 = icmp eq i8 %606, 0, !dbg !1662
  %608 = or i1 %607, %605, !dbg !1660
  br i1 %608, label %618, label %609, !dbg !1660

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1664
  %611 = icmp eq i8 %610, 0, !dbg !1664
  br i1 %611, label %614, label %612, !dbg !1667

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1668
  br label %659, !dbg !1669

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1670
  %616 = icmp ne i64 %126, 0, !dbg !1672
  %617 = and i1 %616, %615, !dbg !1674
  br i1 %617, label %27, label %618, !dbg !1674

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1675
  %620 = and i1 %619, %112, !dbg !1677
  br i1 %620, label %621, label %638, !dbg !1677

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !935, metadata !572), !dbg !997
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !933, metadata !572), !dbg !995
  %622 = load i8, i8* %100, align 1, !dbg !1678, !tbaa !1020
  %623 = icmp eq i8 %622, 0, !dbg !1682
  br i1 %623, label %638, label %624, !dbg !1682

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1684

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1684
  br i1 %629, label %630, label %632, !dbg !1688

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1690
  store i8 %626, i8* %631, align 1, !dbg !1690, !tbaa !1020
  br label %632, !dbg !1690

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !933, metadata !572), !dbg !995
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1694
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !935, metadata !572), !dbg !997
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !935, metadata !572), !dbg !997
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !933, metadata !572), !dbg !995
  %635 = load i8, i8* %634, align 1, !dbg !1678, !tbaa !1020
  %636 = icmp eq i8 %635, 0, !dbg !1682
  br i1 %636, label %637, label %625, !dbg !1682, !llvm.loop !1696

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !995

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !933, metadata !572), !dbg !995
  %640 = icmp ult i64 %639, %131, !dbg !1699
  br i1 %640, label %641, label %659, !dbg !1701

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1702
  store i8 0, i8* %642, align 1, !dbg !1703, !tbaa !1020
  br label %659, !dbg !1702

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !987

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !987

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !987

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !924, metadata !572), !dbg !987
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !926, metadata !572), !dbg !989
  %653 = icmp ne i32 %650, 2, !dbg !1704
  %654 = icmp eq i8 %104, 0, !dbg !1706
  %655 = or i1 %653, %654, !dbg !1708
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !927, metadata !572), !dbg !990
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1708
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !927, metadata !572), !dbg !990
  %657 = and i32 %5, -3, !dbg !1709
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1710
  br label %659, !dbg !1711

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1712
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1713 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1717, metadata !572), !dbg !1721
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1718, metadata !572), !dbg !1722
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1723
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1719, metadata !572), !dbg !1724
  %4 = icmp eq i8* %3, %0, !dbg !1725
  br i1 %4, label %5, label %75, !dbg !1727

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1728
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1720, metadata !572), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1730, metadata !572), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !572), !dbg !1749
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1745, metadata !572), !dbg !1750
  %7 = load i8, i8* %6, align 1, !tbaa !1020
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1751
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1751

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1754, metadata !572), !dbg !1768
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1766, metadata !572), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1767, metadata !572), !dbg !1773
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1020
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1774
  %15 = icmp eq i32 %14, 84, !dbg !1774
  br i1 %15, label %16, label %72, !dbg !1774

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1777, metadata !572), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1788, metadata !572), !dbg !1794
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1789, metadata !572), !dbg !1795
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1020
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1796
  %21 = icmp eq i32 %20, 70, !dbg !1796
  br i1 %21, label %22, label %72, !dbg !1796

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1799, metadata !572), !dbg !1811
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1809, metadata !572), !dbg !1815
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1810, metadata !572), !dbg !1816
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1020
  %25 = icmp eq i8 %24, 45, !dbg !1817
  br i1 %25, label %26, label %72, !dbg !1820

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1822, metadata !572), !dbg !1833
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1831, metadata !572), !dbg !1837
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1832, metadata !572), !dbg !1838
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1020
  %29 = icmp eq i8 %28, 56, !dbg !1839
  br i1 %29, label %30, label %72, !dbg !1842

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1844, metadata !572), !dbg !1854
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1852, metadata !572), !dbg !1858
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1853, metadata !572), !dbg !1859
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1020
  %33 = icmp eq i8 %32, 0, !dbg !1860
  br i1 %33, label %34, label %72, !dbg !1863

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1865, !tbaa !1020
  %36 = icmp eq i8 %35, 96, !dbg !1866
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.45, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1865
  br label %75, !dbg !1867

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1754, metadata !572), !dbg !1868
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1766, metadata !572), !dbg !1872
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1767, metadata !572), !dbg !1873
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1020
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !1874
  %43 = icmp eq i32 %42, 66, !dbg !1874
  br i1 %43, label %44, label %72, !dbg !1874

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1777, metadata !572), !dbg !1875
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1788, metadata !572), !dbg !1877
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1789, metadata !572), !dbg !1878
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1020
  %47 = icmp eq i8 %46, 49, !dbg !1879
  br i1 %47, label %48, label %72, !dbg !1881

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1799, metadata !572), !dbg !1883
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1809, metadata !572), !dbg !1885
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1810, metadata !572), !dbg !1886
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1020
  %51 = icmp eq i8 %50, 56, !dbg !1887
  br i1 %51, label %52, label %72, !dbg !1888

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1822, metadata !572), !dbg !1889
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1831, metadata !572), !dbg !1891
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1832, metadata !572), !dbg !1892
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1020
  %55 = icmp eq i8 %54, 48, !dbg !1893
  br i1 %55, label %56, label %72, !dbg !1894

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1844, metadata !572), !dbg !1895
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1852, metadata !572), !dbg !1897
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1853, metadata !572), !dbg !1898
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1020
  %59 = icmp eq i8 %58, 51, !dbg !1899
  br i1 %59, label %60, label %72, !dbg !1900

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1901, metadata !572), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1908, metadata !572), !dbg !1914
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1909, metadata !572), !dbg !1915
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1020
  %63 = icmp eq i8 %62, 48, !dbg !1916
  br i1 %63, label %64, label %72, !dbg !1919

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1921, metadata !572), !dbg !1929
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1927, metadata !572), !dbg !1933
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1928, metadata !572), !dbg !1934
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1020
  %67 = icmp eq i8 %66, 0, !dbg !1935
  br i1 %67, label %68, label %72, !dbg !1938

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1939, !tbaa !1020
  %70 = icmp eq i8 %69, 96, !dbg !1940
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.46, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1939
  br label %75, !dbg !1941

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1942
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), !dbg !1943
  br label %75, !dbg !1944

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1945
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1946 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1950, metadata !572), !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1951, metadata !572), !dbg !1954
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1952, metadata !572), !dbg !1955
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1956, metadata !572) #9, !dbg !1969
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1961, metadata !572) #9, !dbg !1971
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1962, metadata !572) #9, !dbg !1972
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1963, metadata !572) #9, !dbg !1973
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !1974
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !1974
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1964, metadata !572) #9, !dbg !1975
  %6 = tail call i32* @__errno_location() #1, !dbg !1976
  %7 = load i32, i32* %6, align 4, !dbg !1976, !tbaa !699
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1965, metadata !572) #9, !dbg !1977
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1978
  %9 = load i32, i32* %8, align 4, !dbg !1978, !tbaa !855
  %10 = or i32 %9, 1, !dbg !1979
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1966, metadata !572) #9, !dbg !1980
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1981
  %12 = load i32, i32* %11, align 8, !dbg !1981, !tbaa !793
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1982
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1983
  %15 = load i8*, i8** %14, align 8, !dbg !1983, !tbaa !882
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1984
  %17 = load i8*, i8** %16, align 8, !dbg !1984, !tbaa !885
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !1985
  %19 = add i64 %18, 1, !dbg !1986
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1967, metadata !572) #9, !dbg !1987
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1988, metadata !572) #9, !dbg !1993
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !1995
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1968, metadata !572) #9, !dbg !1996
  %21 = load i32, i32* %11, align 8, !dbg !1997, !tbaa !793
  %22 = load i8*, i8** %14, align 8, !dbg !1998, !tbaa !882
  %23 = load i8*, i8** %16, align 8, !dbg !1999, !tbaa !885
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !2000
  store i32 %7, i32* %6, align 4, !dbg !2001, !tbaa !699
  ret i8* %20, !dbg !2002
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1957 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1956, metadata !572), !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1961, metadata !572), !dbg !2004
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1962, metadata !572), !dbg !2005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1963, metadata !572), !dbg !2006
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2007
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2007
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1964, metadata !572), !dbg !2008
  %7 = tail call i32* @__errno_location() #1, !dbg !2009
  %8 = load i32, i32* %7, align 4, !dbg !2009, !tbaa !699
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1965, metadata !572), !dbg !2010
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2011
  %10 = load i32, i32* %9, align 4, !dbg !2011, !tbaa !855
  %11 = icmp ne i64* %2, null, !dbg !2012
  %12 = xor i1 %11, true, !dbg !2012
  %13 = zext i1 %12 to i32, !dbg !2012
  %14 = or i32 %10, %13, !dbg !2013
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1966, metadata !572), !dbg !2014
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2015
  %16 = load i32, i32* %15, align 8, !dbg !2015, !tbaa !793
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2016
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2017
  %19 = load i8*, i8** %18, align 8, !dbg !2017, !tbaa !882
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2018
  %21 = load i8*, i8** %20, align 8, !dbg !2018, !tbaa !885
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2019
  %23 = add i64 %22, 1, !dbg !2020
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1967, metadata !572), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1988, metadata !572) #9, !dbg !2022
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2024
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1968, metadata !572), !dbg !2025
  %25 = load i32, i32* %15, align 8, !dbg !2026, !tbaa !793
  %26 = load i8*, i8** %18, align 8, !dbg !2027, !tbaa !882
  %27 = load i8*, i8** %20, align 8, !dbg !2028, !tbaa !885
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2029
  store i32 %8, i32* %7, align 4, !dbg !2030, !tbaa !699
  br i1 %11, label %29, label %30, !dbg !2031

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2032, !tbaa !2034
  br label %30, !dbg !2036

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2037
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2038 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2042, !tbaa !575
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2040, metadata !572), !dbg !2043
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2041, metadata !572), !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2041, metadata !572), !dbg !2044
  %2 = load i32, i32* @nslots, align 4, !dbg !2045, !tbaa !699
  %3 = icmp sgt i32 %2, 1, !dbg !2049
  br i1 %3, label %4, label %14, !dbg !2050

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2052

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2052
  %8 = load i8*, i8** %7, align 8, !dbg !2052, !tbaa !2053
  tail call void @free(i8* %8) #9, !dbg !2055
  %9 = add nuw i64 %6, 1, !dbg !2056
  %10 = load i32, i32* @nslots, align 4, !dbg !2045, !tbaa !699
  %11 = sext i32 %10 to i64, !dbg !2049
  %12 = icmp slt i64 %9, %11, !dbg !2049
  br i1 %12, label %5, label %13, !dbg !2050, !llvm.loop !2058

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2061

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2061
  %16 = load i8*, i8** %15, align 8, !dbg !2061, !tbaa !2053
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2063
  br i1 %17, label %19, label %18, !dbg !2064

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #9, !dbg !2065
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2067, !tbaa !2068
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2069, !tbaa !2053
  br label %19, !dbg !2070

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2071
  br i1 %20, label %23, label %21, !dbg !2073

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2074
  tail call void @free(i8* %22) #9, !dbg !2076
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2077, !tbaa !575
  br label %23, !dbg !2078

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2079, !tbaa !699
  ret void, !dbg !2080
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2081 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2085, metadata !572), !dbg !2087
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2086, metadata !572), !dbg !2088
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2089
  ret i8* %3, !dbg !2090
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2091 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2095, metadata !572), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2096, metadata !572), !dbg !2110
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2097, metadata !572), !dbg !2111
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2098, metadata !572), !dbg !2112
  %5 = tail call i32* @__errno_location() #1, !dbg !2113
  %6 = load i32, i32* %5, align 4, !dbg !2113, !tbaa !699
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2099, metadata !572), !dbg !2114
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2115, !tbaa !575
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2100, metadata !572), !dbg !2116
  %8 = icmp slt i32 %0, 0, !dbg !2117
  br i1 %8, label %9, label %10, !dbg !2119

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2120
  unreachable, !dbg !2120

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2121, !tbaa !699
  %12 = icmp sgt i32 %11, %0, !dbg !2122
  br i1 %12, label %34, label %13, !dbg !2123

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2124
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2125
  br i1 %15, label %16, label %17, !dbg !2127

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2128
  unreachable, !dbg !2128

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2129
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2129
  %20 = add nsw i32 %0, 1, !dbg !2131
  %21 = sext i32 %20 to i64, !dbg !2132
  %22 = shl nsw i64 %21, 4, !dbg !2133
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2134
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2134
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2100, metadata !572), !dbg !2116
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2135, !tbaa !575
  br i1 %14, label %25, label %26, !dbg !2136

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2137, !tbaa.struct !2139
  br label %26, !dbg !2140

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2141, !tbaa !699
  %28 = sext i32 %27 to i64, !dbg !2142
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2142
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2143
  %31 = sub nsw i32 %20, %27, !dbg !2144
  %32 = sext i32 %31 to i64, !dbg !2145
  %33 = shl nsw i64 %32, 4, !dbg !2146
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2143
  store i32 %20, i32* @nslots, align 4, !dbg !2147, !tbaa !699
  br label %34, !dbg !2148

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2100, metadata !572), !dbg !2116
  %36 = sext i32 %0 to i64, !dbg !2149
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2150
  %38 = load i64, i64* %37, align 8, !dbg !2150, !tbaa !2068
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2104, metadata !572), !dbg !2151
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2152
  %40 = load i8*, i8** %39, align 8, !dbg !2152, !tbaa !2053
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2106, metadata !572), !dbg !2153
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2154
  %42 = load i32, i32* %41, align 4, !dbg !2154, !tbaa !855
  %43 = or i32 %42, 1, !dbg !2155
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2107, metadata !572), !dbg !2156
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2157
  %45 = load i32, i32* %44, align 8, !dbg !2157, !tbaa !793
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2158
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2159
  %48 = load i8*, i8** %47, align 8, !dbg !2159, !tbaa !882
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2160
  %50 = load i8*, i8** %49, align 8, !dbg !2160, !tbaa !885
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2161
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2108, metadata !572), !dbg !2162
  %52 = icmp ugt i64 %38, %51, !dbg !2163
  br i1 %52, label %63, label %53, !dbg !2165

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2166
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2104, metadata !572), !dbg !2151
  store i64 %54, i64* %37, align 8, !dbg !2168, !tbaa !2068
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2169
  br i1 %55, label %57, label %56, !dbg !2171

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2172
  br label %57, !dbg !2172

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1988, metadata !572) #9, !dbg !2173
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2175
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2106, metadata !572), !dbg !2153
  store i8* %58, i8** %39, align 8, !dbg !2176, !tbaa !2053
  %59 = load i32, i32* %44, align 8, !dbg !2177, !tbaa !793
  %60 = load i8*, i8** %47, align 8, !dbg !2178, !tbaa !882
  %61 = load i8*, i8** %49, align 8, !dbg !2179, !tbaa !885
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2180
  br label %63, !dbg !2181

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2106, metadata !572), !dbg !2153
  store i32 %6, i32* %5, align 4, !dbg !2182, !tbaa !699
  ret i8* %64, !dbg !2183
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #11

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2184 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2188, metadata !572), !dbg !2191
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2189, metadata !572), !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2190, metadata !572), !dbg !2193
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2194
  ret i8* %4, !dbg !2195
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2196 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2200, metadata !572), !dbg !2201
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2085, metadata !572) #9, !dbg !2202
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2086, metadata !572) #9, !dbg !2204
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2205
  ret i8* %2, !dbg !2206
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2207 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2211, metadata !572), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2212, metadata !572), !dbg !2214
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2188, metadata !572) #9, !dbg !2215
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2189, metadata !572) #9, !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2190, metadata !572) #9, !dbg !2218
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2219
  ret i8* %3, !dbg !2220
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2221 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2229, metadata !2235), !dbg !2236
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2225, metadata !572), !dbg !2238
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2226, metadata !572), !dbg !2239
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2227, metadata !572), !dbg !2240
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2241
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2241
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2228, metadata !1345), !dbg !2242
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2234, metadata !572) #9, !dbg !2243
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2244
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2244
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2229, metadata !572) #9, !dbg !2236
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2229, metadata !2245) #9, !dbg !2236
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2236
  %8 = icmp eq i32 %1, 10, !dbg !2246
  br i1 %8, label %9, label %10, !dbg !2248

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2249, !noalias !2250
  unreachable, !dbg !2249

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2229, metadata !2245) #9, !dbg !2236
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2253
  store i32 %1, i32* %11, align 8, !dbg !2253, !alias.scope !2250
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2253
  %13 = bitcast i32* %12 to i8*, !dbg !2253
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2253
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2254
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2228, metadata !1345), !dbg !2242
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2255
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2256
  ret i8* %14, !dbg !2257
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2258 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2229, metadata !2235), !dbg !2267
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2262, metadata !572), !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2263, metadata !572), !dbg !2270
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2264, metadata !572), !dbg !2271
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2265, metadata !572), !dbg !2272
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2273
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2273
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2266, metadata !1345), !dbg !2274
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2234, metadata !572) #9, !dbg !2275
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2276
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2276
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2229, metadata !572) #9, !dbg !2267
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2229, metadata !2245) #9, !dbg !2267
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2267
  %9 = icmp eq i32 %1, 10, !dbg !2277
  br i1 %9, label %10, label %11, !dbg !2278

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2279, !noalias !2280
  unreachable, !dbg !2279

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2229, metadata !2245) #9, !dbg !2267
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2283
  store i32 %1, i32* %12, align 8, !dbg !2283, !alias.scope !2280
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2283
  %14 = bitcast i32* %13 to i8*, !dbg !2283
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2283
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2284
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2266, metadata !1345), !dbg !2274
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2285
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2286
  ret i8* %15, !dbg !2287
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2288 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2229, metadata !2235), !dbg !2294
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2292, metadata !572), !dbg !2297
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2293, metadata !572), !dbg !2298
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2225, metadata !572) #9, !dbg !2299
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2226, metadata !572) #9, !dbg !2300
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2227, metadata !572) #9, !dbg !2301
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2302
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2302
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2228, metadata !1345) #9, !dbg !2303
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2234, metadata !572) #9, !dbg !2304
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2305
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2305
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2229, metadata !572) #9, !dbg !2294
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2229, metadata !2245) #9, !dbg !2294
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2294
  %7 = icmp eq i32 %0, 10, !dbg !2306
  br i1 %7, label %8, label %9, !dbg !2307

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2308, !noalias !2309
  unreachable, !dbg !2308

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2229, metadata !2245) #9, !dbg !2294
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2312
  store i32 %0, i32* %10, align 8, !dbg !2312, !alias.scope !2309
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2312
  %12 = bitcast i32* %11 to i8*, !dbg !2312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2312
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2313
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2228, metadata !1345) #9, !dbg !2303
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2314
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2315
  ret i8* %13, !dbg !2316
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2317 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2229, metadata !2235), !dbg !2324
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2321, metadata !572), !dbg !2327
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2322, metadata !572), !dbg !2328
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2323, metadata !572), !dbg !2329
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2262, metadata !572) #9, !dbg !2330
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2263, metadata !572) #9, !dbg !2331
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2264, metadata !572) #9, !dbg !2332
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2265, metadata !572) #9, !dbg !2333
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2334
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2334
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2266, metadata !1345) #9, !dbg !2335
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2234, metadata !572) #9, !dbg !2336
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2337
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2337
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2229, metadata !572) #9, !dbg !2324
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2229, metadata !2245) #9, !dbg !2324
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2324
  %8 = icmp eq i32 %0, 10, !dbg !2338
  br i1 %8, label %9, label %10, !dbg !2339

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2340, !noalias !2341
  unreachable, !dbg !2340

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2229, metadata !2245) #9, !dbg !2324
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2344
  store i32 %0, i32* %11, align 8, !dbg !2344, !alias.scope !2341
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2344
  %13 = bitcast i32* %12 to i8*, !dbg !2344
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2344
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2345
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2266, metadata !1345) #9, !dbg !2335
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2346
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2347
  ret i8* %14, !dbg !2348
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2349 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2353, metadata !572), !dbg !2357
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2354, metadata !572), !dbg !2358
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2355, metadata !572), !dbg !2359
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2360
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2361, !tbaa.struct !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2356, metadata !1345), !dbg !2363
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !813, metadata !572), !dbg !2364
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !814, metadata !572), !dbg !2366
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !815, metadata !572), !dbg !2367
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !816, metadata !572), !dbg !2368
  %6 = lshr i8 %2, 5, !dbg !2369
  %7 = zext i8 %6 to i64, !dbg !2369
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2370
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !817, metadata !572), !dbg !2371
  %9 = and i8 %2, 31, !dbg !2372
  %10 = zext i8 %9 to i32, !dbg !2373
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !819, metadata !572), !dbg !2374
  %11 = load i32, i32* %8, align 4, !dbg !2375, !tbaa !699
  %12 = lshr i32 %11, %10, !dbg !2376
  %13 = and i32 %12, 1, !dbg !2377
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !820, metadata !572), !dbg !2378
  %14 = xor i32 %13, 1, !dbg !2379
  %15 = shl i32 %14, %10, !dbg !2380
  %16 = xor i32 %15, %11, !dbg !2381
  store i32 %16, i32* %8, align 4, !dbg !2381, !tbaa !699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2356, metadata !1345), !dbg !2363
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2382
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2383
  ret i8* %17, !dbg !2384
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2385 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2389, metadata !572), !dbg !2391
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2390, metadata !572), !dbg !2392
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2353, metadata !572) #9, !dbg !2393
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2354, metadata !572) #9, !dbg !2395
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2355, metadata !572) #9, !dbg !2396
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2397
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2397
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2398, !tbaa.struct !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2356, metadata !1345) #9, !dbg !2399
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !813, metadata !572) #9, !dbg !2400
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !814, metadata !572) #9, !dbg !2402
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !815, metadata !572) #9, !dbg !2403
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !816, metadata !572) #9, !dbg !2404
  %5 = lshr i8 %1, 5, !dbg !2405
  %6 = zext i8 %5 to i64, !dbg !2405
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2406
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !817, metadata !572) #9, !dbg !2407
  %8 = and i8 %1, 31, !dbg !2408
  %9 = zext i8 %8 to i32, !dbg !2409
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !819, metadata !572) #9, !dbg !2410
  %10 = load i32, i32* %7, align 4, !dbg !2411, !tbaa !699
  %11 = lshr i32 %10, %9, !dbg !2412
  %12 = and i32 %11, 1, !dbg !2413
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !820, metadata !572) #9, !dbg !2414
  %13 = xor i32 %12, 1, !dbg !2415
  %14 = shl i32 %13, %9, !dbg !2416
  %15 = xor i32 %14, %10, !dbg !2417
  store i32 %15, i32* %7, align 4, !dbg !2417, !tbaa !699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2356, metadata !1345) #9, !dbg !2399
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2418
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2419
  ret i8* %16, !dbg !2420
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2421 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2423, metadata !572), !dbg !2424
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2389, metadata !572) #9, !dbg !2425
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2390, metadata !572) #9, !dbg !2427
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2353, metadata !572) #9, !dbg !2428
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2354, metadata !572) #9, !dbg !2430
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2355, metadata !572) #9, !dbg !2431
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2432
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9, !dbg !2432
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2433, !tbaa.struct !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2356, metadata !1345) #9, !dbg !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !813, metadata !572) #9, !dbg !2435
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !814, metadata !572) #9, !dbg !2437
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !815, metadata !572) #9, !dbg !2438
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !816, metadata !572) #9, !dbg !2439
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2440
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !817, metadata !572) #9, !dbg !2441
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !819, metadata !572) #9, !dbg !2442
  %5 = load i32, i32* %4, align 4, !dbg !2443, !tbaa !699
  %6 = or i32 %5, 67108864, !dbg !2444
  store i32 %6, i32* %4, align 4, !dbg !2444, !tbaa !699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2356, metadata !1345) #9, !dbg !2434
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2445
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9, !dbg !2446
  ret i8* %7, !dbg !2447
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2448 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2450, metadata !572), !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2451, metadata !572), !dbg !2453
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2353, metadata !572) #9, !dbg !2454
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2354, metadata !572) #9, !dbg !2456
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2355, metadata !572) #9, !dbg !2457
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2458
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2458
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2459, !tbaa.struct !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2356, metadata !1345) #9, !dbg !2460
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !813, metadata !572) #9, !dbg !2461
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !814, metadata !572) #9, !dbg !2463
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !815, metadata !572) #9, !dbg !2464
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !816, metadata !572) #9, !dbg !2465
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2466
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !817, metadata !572) #9, !dbg !2467
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !819, metadata !572) #9, !dbg !2468
  %6 = load i32, i32* %5, align 4, !dbg !2469, !tbaa !699
  %7 = or i32 %6, 67108864, !dbg !2470
  store i32 %7, i32* %5, align 4, !dbg !2470, !tbaa !699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2356, metadata !1345) #9, !dbg !2460
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2471
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2472
  ret i8* %8, !dbg !2473
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2474 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2229, metadata !2235), !dbg !2480
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2476, metadata !572), !dbg !2482
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2477, metadata !572), !dbg !2483
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2478, metadata !572), !dbg !2484
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2485
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2485
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2234, metadata !572) #9, !dbg !2486
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2487
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2487
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2229, metadata !572) #9, !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2229, metadata !2245) #9, !dbg !2480
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2480
  %9 = icmp eq i32 %1, 10, !dbg !2488
  br i1 %9, label %10, label %11, !dbg !2489

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2490, !noalias !2491
  unreachable, !dbg !2490

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2229, metadata !2245) #9, !dbg !2480
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2494
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2495
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2496
  store i32 %1, i32* %13, align 8, !dbg !2496
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2496
  %15 = bitcast i32* %14 to i8*, !dbg !2496
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2479, metadata !1345), !dbg !2497
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !813, metadata !572), !dbg !2498
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !814, metadata !572), !dbg !2500
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !815, metadata !572), !dbg !2501
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !816, metadata !572), !dbg !2502
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2503
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !817, metadata !572), !dbg !2504
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !819, metadata !572), !dbg !2505
  %17 = load i32, i32* %16, align 4, !dbg !2506, !tbaa !699
  %18 = or i32 %17, 67108864, !dbg !2507
  store i32 %18, i32* %16, align 4, !dbg !2507, !tbaa !699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2479, metadata !1345), !dbg !2497
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2508
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2509
  ret i8* %19, !dbg !2510
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2511 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2515, metadata !572), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2516, metadata !572), !dbg !2520
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2517, metadata !572), !dbg !2521
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2518, metadata !572), !dbg !2522
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2523, metadata !572) #9, !dbg !2533
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2528, metadata !572) #9, !dbg !2535
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2529, metadata !572) #9, !dbg !2536
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2530, metadata !572) #9, !dbg !2537
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2531, metadata !572) #9, !dbg !2538
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2539
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2540, !tbaa.struct !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2532, metadata !1345) #9, !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !863, metadata !572) #9, !dbg !2542
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !864, metadata !572) #9, !dbg !2544
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !865, metadata !572) #9, !dbg !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !863, metadata !572) #9, !dbg !2542
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !863, metadata !572) #9, !dbg !2542
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2546
  store i32 10, i32* %7, align 8, !dbg !2547, !tbaa !793
  %8 = icmp ne i8* %1, null, !dbg !2548
  %9 = icmp ne i8* %2, null, !dbg !2549
  %10 = and i1 %8, %9, !dbg !2550
  br i1 %10, label %12, label %11, !dbg !2550

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2551
  unreachable, !dbg !2551

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2552
  store i8* %1, i8** %13, align 8, !dbg !2553, !tbaa !882
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2554
  store i8* %2, i8** %14, align 8, !dbg !2555, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2532, metadata !1345) #9, !dbg !2541
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2556
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2557
  ret i8* %15, !dbg !2558
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2524 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2523, metadata !572), !dbg !2559
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2528, metadata !572), !dbg !2560
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2529, metadata !572), !dbg !2561
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2530, metadata !572), !dbg !2562
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2531, metadata !572), !dbg !2563
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2564
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2565, !tbaa.struct !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2532, metadata !1345), !dbg !2566
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !863, metadata !572) #9, !dbg !2567
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !864, metadata !572) #9, !dbg !2569
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !865, metadata !572) #9, !dbg !2570
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !863, metadata !572) #9, !dbg !2567
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !863, metadata !572) #9, !dbg !2567
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2571
  store i32 10, i32* %8, align 8, !dbg !2572, !tbaa !793
  %9 = icmp ne i8* %1, null, !dbg !2573
  %10 = icmp ne i8* %2, null, !dbg !2574
  %11 = and i1 %9, %10, !dbg !2575
  br i1 %11, label %13, label %12, !dbg !2575

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2576
  unreachable, !dbg !2576

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2577
  store i8* %1, i8** %14, align 8, !dbg !2578, !tbaa !882
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2579
  store i8* %2, i8** %15, align 8, !dbg !2580, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2532, metadata !1345), !dbg !2566
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2581
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2582
  ret i8* %16, !dbg !2583
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2584 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2588, metadata !572), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2589, metadata !572), !dbg !2592
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2590, metadata !572), !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2515, metadata !572) #9, !dbg !2594
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2516, metadata !572) #9, !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2517, metadata !572) #9, !dbg !2597
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2518, metadata !572) #9, !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2523, metadata !572) #9, !dbg !2599
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !572) #9, !dbg !2601
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2529, metadata !572) #9, !dbg !2602
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2530, metadata !572) #9, !dbg !2603
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2531, metadata !572) #9, !dbg !2604
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2605
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2606, !tbaa.struct !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2532, metadata !1345) #9, !dbg !2607
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !863, metadata !572) #9, !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !864, metadata !572) #9, !dbg !2610
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !865, metadata !572) #9, !dbg !2611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !863, metadata !572) #9, !dbg !2608
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !863, metadata !572) #9, !dbg !2608
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2612
  store i32 10, i32* %6, align 8, !dbg !2613, !tbaa !793
  %7 = icmp ne i8* %0, null, !dbg !2614
  %8 = icmp ne i8* %1, null, !dbg !2615
  %9 = and i1 %7, %8, !dbg !2616
  br i1 %9, label %11, label %10, !dbg !2616

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2617
  unreachable, !dbg !2617

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2618
  store i8* %0, i8** %12, align 8, !dbg !2619, !tbaa !882
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2620
  store i8* %1, i8** %13, align 8, !dbg !2621, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2532, metadata !1345) #9, !dbg !2607
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2622
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2623
  ret i8* %14, !dbg !2624
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2625 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2629, metadata !572), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2630, metadata !572), !dbg !2634
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2631, metadata !572), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2632, metadata !572), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2523, metadata !572) #9, !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2528, metadata !572) #9, !dbg !2639
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2529, metadata !572) #9, !dbg !2640
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2530, metadata !572) #9, !dbg !2641
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2531, metadata !572) #9, !dbg !2642
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2643
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2643
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2644, !tbaa.struct !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2532, metadata !1345) #9, !dbg !2645
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !863, metadata !572) #9, !dbg !2646
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !864, metadata !572) #9, !dbg !2648
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !865, metadata !572) #9, !dbg !2649
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !863, metadata !572) #9, !dbg !2646
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !863, metadata !572) #9, !dbg !2646
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2650
  store i32 10, i32* %7, align 8, !dbg !2651, !tbaa !793
  %8 = icmp ne i8* %0, null, !dbg !2652
  %9 = icmp ne i8* %1, null, !dbg !2653
  %10 = and i1 %8, %9, !dbg !2654
  br i1 %10, label %12, label %11, !dbg !2654

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2655
  unreachable, !dbg !2655

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2656
  store i8* %0, i8** %13, align 8, !dbg !2657, !tbaa !882
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2658
  store i8* %1, i8** %14, align 8, !dbg !2659, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2532, metadata !1345) #9, !dbg !2645
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2660
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2661
  ret i8* %15, !dbg !2662
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2663 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2667, metadata !572), !dbg !2670
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2668, metadata !572), !dbg !2671
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2669, metadata !572), !dbg !2672
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2673
  ret i8* %4, !dbg !2674
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2675 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2679, metadata !572), !dbg !2681
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2680, metadata !572), !dbg !2682
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2667, metadata !572) #9, !dbg !2683
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2668, metadata !572) #9, !dbg !2685
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2669, metadata !572) #9, !dbg !2686
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2687
  ret i8* %3, !dbg !2688
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2689 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2693, metadata !572), !dbg !2695
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2694, metadata !572), !dbg !2696
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2667, metadata !572) #9, !dbg !2697
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2668, metadata !572) #9, !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2669, metadata !572) #9, !dbg !2700
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2701
  ret i8* %3, !dbg !2702
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2703 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2707, metadata !572), !dbg !2708
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2693, metadata !572) #9, !dbg !2709
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2694, metadata !572) #9, !dbg !2711
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2667, metadata !572) #9, !dbg !2712
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2668, metadata !572) #9, !dbg !2714
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2669, metadata !572) #9, !dbg !2715
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2716
  ret i8* %2, !dbg !2717
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2718 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2778, metadata !572), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2779, metadata !572), !dbg !2785
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2780, metadata !572), !dbg !2786
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2781, metadata !572), !dbg !2787
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2782, metadata !572), !dbg !2788
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2783, metadata !572), !dbg !2789
  %7 = icmp eq i8* %1, null, !dbg !2790
  br i1 %7, label %10, label %8, !dbg !2792

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2793
  br label %12, !dbg !2793

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.50, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2794
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i32 5) #9, !dbg !2795
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2796
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.52, i64 0, i64 0), i32 5) #9, !dbg !2798
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2799
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
  ], !dbg !2800

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2801
  unreachable, !dbg !2801

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.53, i64 0, i64 0), i32 5) #9, !dbg !2803
  %20 = load i8*, i8** %4, align 8, !dbg !2803, !tbaa !575
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2804
  br label %146, !dbg !2806

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.54, i64 0, i64 0), i32 5) #9, !dbg !2807
  %24 = load i8*, i8** %4, align 8, !dbg !2807, !tbaa !575
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2807
  %26 = load i8*, i8** %25, align 8, !dbg !2807, !tbaa !575
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2808
  br label %146, !dbg !2809

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.55, i64 0, i64 0), i32 5) #9, !dbg !2810
  %30 = load i8*, i8** %4, align 8, !dbg !2810, !tbaa !575
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2810
  %32 = load i8*, i8** %31, align 8, !dbg !2810, !tbaa !575
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2810
  %34 = load i8*, i8** %33, align 8, !dbg !2810, !tbaa !575
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2811
  br label %146, !dbg !2812

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.56, i64 0, i64 0), i32 5) #9, !dbg !2813
  %38 = load i8*, i8** %4, align 8, !dbg !2813, !tbaa !575
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2813
  %40 = load i8*, i8** %39, align 8, !dbg !2813, !tbaa !575
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2813
  %42 = load i8*, i8** %41, align 8, !dbg !2813, !tbaa !575
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2813
  %44 = load i8*, i8** %43, align 8, !dbg !2813, !tbaa !575
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2814
  br label %146, !dbg !2815

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.57, i64 0, i64 0), i32 5) #9, !dbg !2816
  %48 = load i8*, i8** %4, align 8, !dbg !2816, !tbaa !575
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2816
  %50 = load i8*, i8** %49, align 8, !dbg !2816, !tbaa !575
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2816
  %52 = load i8*, i8** %51, align 8, !dbg !2816, !tbaa !575
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2816
  %54 = load i8*, i8** %53, align 8, !dbg !2816, !tbaa !575
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2816
  %56 = load i8*, i8** %55, align 8, !dbg !2816, !tbaa !575
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2817
  br label %146, !dbg !2818

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.58, i64 0, i64 0), i32 5) #9, !dbg !2819
  %60 = load i8*, i8** %4, align 8, !dbg !2819, !tbaa !575
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2819
  %62 = load i8*, i8** %61, align 8, !dbg !2819, !tbaa !575
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2819
  %64 = load i8*, i8** %63, align 8, !dbg !2819, !tbaa !575
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2819
  %66 = load i8*, i8** %65, align 8, !dbg !2819, !tbaa !575
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2819
  %68 = load i8*, i8** %67, align 8, !dbg !2819, !tbaa !575
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2819
  %70 = load i8*, i8** %69, align 8, !dbg !2819, !tbaa !575
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2820
  br label %146, !dbg !2821

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.59, i64 0, i64 0), i32 5) #9, !dbg !2822
  %74 = load i8*, i8** %4, align 8, !dbg !2822, !tbaa !575
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2822
  %76 = load i8*, i8** %75, align 8, !dbg !2822, !tbaa !575
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2822
  %78 = load i8*, i8** %77, align 8, !dbg !2822, !tbaa !575
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2822
  %80 = load i8*, i8** %79, align 8, !dbg !2822, !tbaa !575
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2822
  %82 = load i8*, i8** %81, align 8, !dbg !2822, !tbaa !575
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2822
  %84 = load i8*, i8** %83, align 8, !dbg !2822, !tbaa !575
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2822
  %86 = load i8*, i8** %85, align 8, !dbg !2822, !tbaa !575
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2823
  br label %146, !dbg !2824

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.60, i64 0, i64 0), i32 5) #9, !dbg !2825
  %90 = load i8*, i8** %4, align 8, !dbg !2825, !tbaa !575
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2825
  %92 = load i8*, i8** %91, align 8, !dbg !2825, !tbaa !575
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2825
  %94 = load i8*, i8** %93, align 8, !dbg !2825, !tbaa !575
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2825
  %96 = load i8*, i8** %95, align 8, !dbg !2825, !tbaa !575
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2825
  %98 = load i8*, i8** %97, align 8, !dbg !2825, !tbaa !575
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2825
  %100 = load i8*, i8** %99, align 8, !dbg !2825, !tbaa !575
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2825
  %102 = load i8*, i8** %101, align 8, !dbg !2825, !tbaa !575
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2825
  %104 = load i8*, i8** %103, align 8, !dbg !2825, !tbaa !575
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2826
  br label %146, !dbg !2827

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.61, i64 0, i64 0), i32 5) #9, !dbg !2828
  %108 = load i8*, i8** %4, align 8, !dbg !2828, !tbaa !575
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2828
  %110 = load i8*, i8** %109, align 8, !dbg !2828, !tbaa !575
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2828
  %112 = load i8*, i8** %111, align 8, !dbg !2828, !tbaa !575
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2828
  %114 = load i8*, i8** %113, align 8, !dbg !2828, !tbaa !575
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2828
  %116 = load i8*, i8** %115, align 8, !dbg !2828, !tbaa !575
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2828
  %118 = load i8*, i8** %117, align 8, !dbg !2828, !tbaa !575
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2828
  %120 = load i8*, i8** %119, align 8, !dbg !2828, !tbaa !575
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2828
  %122 = load i8*, i8** %121, align 8, !dbg !2828, !tbaa !575
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2828
  %124 = load i8*, i8** %123, align 8, !dbg !2828, !tbaa !575
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2829
  br label %146, !dbg !2830

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.62, i64 0, i64 0), i32 5) #9, !dbg !2831
  %128 = load i8*, i8** %4, align 8, !dbg !2831, !tbaa !575
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2831
  %130 = load i8*, i8** %129, align 8, !dbg !2831, !tbaa !575
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2831
  %132 = load i8*, i8** %131, align 8, !dbg !2831, !tbaa !575
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2831
  %134 = load i8*, i8** %133, align 8, !dbg !2831, !tbaa !575
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2831
  %136 = load i8*, i8** %135, align 8, !dbg !2831, !tbaa !575
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2831
  %138 = load i8*, i8** %137, align 8, !dbg !2831, !tbaa !575
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2831
  %140 = load i8*, i8** %139, align 8, !dbg !2831, !tbaa !575
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2831
  %142 = load i8*, i8** %141, align 8, !dbg !2831, !tbaa !575
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2831
  %144 = load i8*, i8** %143, align 8, !dbg !2831, !tbaa !575
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2832
  br label %146, !dbg !2833

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2834
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2835 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2839, metadata !572), !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2840, metadata !572), !dbg !2846
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2841, metadata !572), !dbg !2847
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2842, metadata !572), !dbg !2848
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2843, metadata !572), !dbg !2849
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2844, metadata !572), !dbg !2850
  br label %6, !dbg !2851

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2844, metadata !572), !dbg !2850
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2853
  %9 = load i8*, i8** %8, align 8, !dbg !2853, !tbaa !575
  %10 = icmp eq i8* %9, null, !dbg !2856
  %11 = add i64 %7, 1, !dbg !2858
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2844, metadata !572), !dbg !2850
  br i1 %10, label %12, label %6, !dbg !2856, !llvm.loop !2860

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2863
  ret void, !dbg !2864
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2865 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2876, metadata !572), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2877, metadata !572), !dbg !2885
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2878, metadata !572), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2879, metadata !572), !dbg !2887
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2880, metadata !572), !dbg !2888
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2889
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9, !dbg !2889
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2882, metadata !572), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2881, metadata !572), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2881, metadata !572), !dbg !2891
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !2892
  %12 = icmp ult i32 %11, 41, !dbg !2892
  br i1 %12, label %13, label %18, !dbg !2892

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2896
  %15 = sext i32 %11 to i64, !dbg !2896
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2896
  %17 = add i32 %11, 8, !dbg !2896
  store i32 %17, i32* %8, align 8, !dbg !2896
  br label %21, !dbg !2896

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2898
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2898
  store i8* %20, i8** %10, align 8, !dbg !2898
  br label %21, !dbg !2898

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !2892
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2900
  %25 = load i8*, i8** %24, align 8, !dbg !2900
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2902
  store i8* %25, i8** %26, align 16, !dbg !2903, !tbaa !575
  %27 = icmp eq i8* %25, null, !dbg !2904
  br i1 %27, label %30, label %28, !dbg !2905

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  %29 = icmp ult i32 %22, 41, !dbg !2892
  br i1 %29, label %35, label %32, !dbg !2892

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2907
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9, !dbg !2908
  ret void, !dbg !2908

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2898
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2898
  store i8* %34, i8** %10, align 8, !dbg !2898
  br label %40, !dbg !2898

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2896
  %37 = sext i32 %22 to i64, !dbg !2896
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2896
  %39 = add i32 %22, 8, !dbg !2896
  store i32 %39, i32* %8, align 8, !dbg !2896
  br label %40, !dbg !2896

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !2892
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2900
  %44 = load i8*, i8** %43, align 8, !dbg !2900
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2902
  store i8* %44, i8** %45, align 8, !dbg !2903, !tbaa !575
  %46 = icmp eq i8* %44, null, !dbg !2904
  br i1 %46, label %30, label %47, !dbg !2905

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  %48 = icmp ult i32 %41, 41, !dbg !2892
  br i1 %48, label %52, label %49, !dbg !2892

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2898
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2898
  store i8* %51, i8** %10, align 8, !dbg !2898
  br label %57, !dbg !2898

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2896
  %54 = sext i32 %41 to i64, !dbg !2896
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2896
  %56 = add i32 %41, 8, !dbg !2896
  store i32 %56, i32* %8, align 8, !dbg !2896
  br label %57, !dbg !2896

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !2892
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2900
  %61 = load i8*, i8** %60, align 8, !dbg !2900
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2902
  store i8* %61, i8** %62, align 16, !dbg !2903, !tbaa !575
  %63 = icmp eq i8* %61, null, !dbg !2904
  br i1 %63, label %30, label %64, !dbg !2905

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  %65 = icmp ult i32 %58, 41, !dbg !2892
  br i1 %65, label %69, label %66, !dbg !2892

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2898
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2898
  store i8* %68, i8** %10, align 8, !dbg !2898
  br label %74, !dbg !2898

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2896
  %71 = sext i32 %58 to i64, !dbg !2896
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2896
  %73 = add i32 %58, 8, !dbg !2896
  store i32 %73, i32* %8, align 8, !dbg !2896
  br label %74, !dbg !2896

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !2892
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2900
  %78 = load i8*, i8** %77, align 8, !dbg !2900
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2902
  store i8* %78, i8** %79, align 8, !dbg !2903, !tbaa !575
  %80 = icmp eq i8* %78, null, !dbg !2904
  br i1 %80, label %30, label %81, !dbg !2905

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  %82 = icmp ult i32 %75, 41, !dbg !2892
  br i1 %82, label %86, label %83, !dbg !2892

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2898
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2898
  store i8* %85, i8** %10, align 8, !dbg !2898
  br label %91, !dbg !2898

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2896
  %88 = sext i32 %75 to i64, !dbg !2896
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2896
  %90 = add i32 %75, 8, !dbg !2896
  store i32 %90, i32* %8, align 8, !dbg !2896
  br label %91, !dbg !2896

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !2892
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2900
  %95 = load i8*, i8** %94, align 8, !dbg !2900
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2902
  store i8* %95, i8** %96, align 16, !dbg !2903, !tbaa !575
  %97 = icmp eq i8* %95, null, !dbg !2904
  br i1 %97, label %30, label %98, !dbg !2905

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  %99 = icmp ult i32 %92, 41, !dbg !2892
  br i1 %99, label %103, label %100, !dbg !2892

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2898
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2898
  store i8* %102, i8** %10, align 8, !dbg !2898
  br label %108, !dbg !2898

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2896
  %105 = sext i32 %92 to i64, !dbg !2896
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2896
  %107 = add i32 %92, 8, !dbg !2896
  store i32 %107, i32* %8, align 8, !dbg !2896
  br label %108, !dbg !2896

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2900
  %111 = load i8*, i8** %110, align 8, !dbg !2900
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2902
  store i8* %111, i8** %112, align 8, !dbg !2903, !tbaa !575
  %113 = icmp eq i8* %111, null, !dbg !2904
  br i1 %113, label %30, label %114, !dbg !2905

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  %115 = load i8*, i8** %10, align 8, !dbg !2898
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2898
  store i8* %116, i8** %10, align 8, !dbg !2898
  %117 = bitcast i8* %115 to i8**, !dbg !2900
  %118 = load i8*, i8** %117, align 8, !dbg !2900
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2902
  store i8* %118, i8** %119, align 16, !dbg !2903, !tbaa !575
  %120 = icmp eq i8* %118, null, !dbg !2904
  br i1 %120, label %30, label %121, !dbg !2905

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  %122 = load i8*, i8** %10, align 8, !dbg !2898
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2898
  store i8* %123, i8** %10, align 8, !dbg !2898
  %124 = bitcast i8* %122 to i8**, !dbg !2900
  %125 = load i8*, i8** %124, align 8, !dbg !2900
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2902
  store i8* %125, i8** %126, align 8, !dbg !2903, !tbaa !575
  %127 = icmp eq i8* %125, null, !dbg !2904
  br i1 %127, label %30, label %128, !dbg !2905

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  %129 = load i8*, i8** %10, align 8, !dbg !2898
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2898
  store i8* %130, i8** %10, align 8, !dbg !2898
  %131 = bitcast i8* %129 to i8**, !dbg !2900
  %132 = load i8*, i8** %131, align 8, !dbg !2900
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2902
  store i8* %132, i8** %133, align 16, !dbg !2903, !tbaa !575
  %134 = icmp eq i8* %132, null, !dbg !2904
  br i1 %134, label %30, label %135, !dbg !2905

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  %136 = load i8*, i8** %10, align 8, !dbg !2898
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2898
  store i8* %137, i8** %10, align 8, !dbg !2898
  %138 = bitcast i8* %136 to i8**, !dbg !2900
  %139 = load i8*, i8** %138, align 8, !dbg !2900
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2902
  store i8* %139, i8** %140, align 8, !dbg !2903, !tbaa !575
  %141 = icmp eq i8* %139, null, !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2881, metadata !572), !dbg !2891
  %142 = select i1 %141, i64 9, i64 10, !dbg !2905
  br label %30, !dbg !2905
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2909 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2913, metadata !572), !dbg !2923
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2914, metadata !572), !dbg !2924
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2915, metadata !572), !dbg !2925
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2916, metadata !572), !dbg !2926
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2927
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9, !dbg !2927
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2917, metadata !572), !dbg !2928
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2929
  call void @llvm.va_start(i8* nonnull %6), !dbg !2929
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2930
  call void @llvm.va_end(i8* nonnull %6), !dbg !2931
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9, !dbg !2932
  ret void, !dbg !2932
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2933 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.65, i64 0, i64 0), i32 5) #9, !dbg !2934
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.66, i64 0, i64 0)) #9, !dbg !2935
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !2937
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.68, i64 0, i64 0)) #9, !dbg !2938
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !2939
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2939, !tbaa !575
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !2940
  ret void, !dbg !2941
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !2942 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2946, metadata !572), !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2947, metadata !572), !dbg !2949
  %3 = udiv i64 9223372036854775807, %1, !dbg !2950
  %4 = icmp ult i64 %3, %0, !dbg !2950
  br i1 %4, label %5, label %6, !dbg !2952

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !2953
  unreachable, !dbg !2953

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2954
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2955, metadata !572) #9, !dbg !2962
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !2964
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2961, metadata !572) #9, !dbg !2965
  %9 = icmp eq i8* %8, null, !dbg !2966
  %10 = icmp ne i64 %7, 0, !dbg !2968
  %11 = and i1 %10, %9, !dbg !2970
  br i1 %11, label %12, label %13, !dbg !2970

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !2971
  unreachable, !dbg !2971

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2972
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2956 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2955, metadata !572), !dbg !2973
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2974
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2961, metadata !572), !dbg !2975
  %3 = icmp eq i8* %2, null, !dbg !2976
  %4 = icmp ne i64 %0, 0, !dbg !2977
  %5 = and i1 %4, %3, !dbg !2978
  br i1 %5, label %6, label %7, !dbg !2978

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !2979
  unreachable, !dbg !2979

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2980
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !2981 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2985, metadata !572), !dbg !2988
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2986, metadata !572), !dbg !2989
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2987, metadata !572), !dbg !2990
  %4 = udiv i64 9223372036854775807, %2, !dbg !2991
  %5 = icmp ult i64 %4, %1, !dbg !2991
  br i1 %5, label %6, label %7, !dbg !2993

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !2994
  unreachable, !dbg !2994

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2995
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2996, metadata !572) #9, !dbg !3002
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3001, metadata !572) #9, !dbg !3004
  %9 = icmp eq i64 %8, 0, !dbg !3005
  %10 = icmp ne i8* %0, null, !dbg !3007
  %11 = and i1 %10, %9, !dbg !3009
  br i1 %11, label %12, label %13, !dbg !3009

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !3010
  br label %19, !dbg !3012

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !3013
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2996, metadata !572) #9, !dbg !3002
  %15 = icmp eq i8* %14, null, !dbg !3014
  %16 = icmp ne i64 %8, 0, !dbg !3016
  %17 = and i1 %16, %15, !dbg !3018
  br i1 %17, label %18, label %19, !dbg !3018

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3019
  unreachable, !dbg !3019

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3020
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2997 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2996, metadata !572), !dbg !3021
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3001, metadata !572), !dbg !3022
  %3 = icmp eq i64 %1, 0, !dbg !3023
  %4 = icmp ne i8* %0, null, !dbg !3024
  %5 = and i1 %4, %3, !dbg !3025
  br i1 %5, label %6, label %7, !dbg !3025

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !3026
  br label %13, !dbg !3027

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !3028
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2996, metadata !572), !dbg !3021
  %9 = icmp eq i8* %8, null, !dbg !3029
  %10 = icmp ne i64 %1, 0, !dbg !3030
  %11 = and i1 %10, %9, !dbg !3031
  br i1 %11, label %12, label %13, !dbg !3031

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3032
  unreachable, !dbg !3032

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3033
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !531 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !536, metadata !572), !dbg !3034
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !537, metadata !572), !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !538, metadata !572), !dbg !3036
  %4 = load i64, i64* %1, align 8, !dbg !3037, !tbaa !2034
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !539, metadata !572), !dbg !3038
  %5 = icmp eq i8* %0, null, !dbg !3039
  br i1 %5, label %6, label %13, !dbg !3041

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3042
  br i1 %7, label %8, label %17, !dbg !3045

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !539, metadata !572), !dbg !3038
  %10 = icmp ugt i64 %2, 128, !dbg !3048
  %11 = zext i1 %10 to i64, !dbg !3048
  %12 = add nuw nsw i64 %9, %11, !dbg !3049
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !539, metadata !572), !dbg !3038
  br label %17, !dbg !3050

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3051
  %15 = icmp ugt i64 %14, %4, !dbg !3054
  br i1 %15, label %20, label %16, !dbg !3055

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3056
  unreachable, !dbg !3056

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !539, metadata !572), !dbg !3038
  store i64 %18, i64* %1, align 8, !dbg !3057, !tbaa !2034
  %19 = mul i64 %18, %2, !dbg !3058
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2996, metadata !572) #9, !dbg !3059
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3001, metadata !572) #9, !dbg !3061
  br label %27, !dbg !3062

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3063
  %22 = add i64 %4, 1, !dbg !3064
  %23 = add i64 %22, %21, !dbg !3065
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !539, metadata !572), !dbg !3038
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !539, metadata !572), !dbg !3038
  store i64 %23, i64* %1, align 8, !dbg !3057, !tbaa !2034
  %24 = mul i64 %23, %2, !dbg !3058
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2996, metadata !572) #9, !dbg !3059
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3001, metadata !572) #9, !dbg !3061
  %25 = icmp eq i64 %24, 0, !dbg !3066
  br i1 %25, label %26, label %27, !dbg !3062

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !3067
  br label %34, !dbg !3068

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !3069
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2996, metadata !572) #9, !dbg !3059
  %30 = icmp eq i8* %29, null, !dbg !3070
  %31 = icmp ne i64 %28, 0, !dbg !3071
  %32 = and i1 %31, %30, !dbg !3072
  br i1 %32, label %33, label %34, !dbg !3072

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3073
  unreachable, !dbg !3073

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3074
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3075 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3077, metadata !572), !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2955, metadata !572) #9, !dbg !3079
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2961, metadata !572) #9, !dbg !3082
  %3 = icmp eq i8* %2, null, !dbg !3083
  %4 = icmp ne i64 %0, 0, !dbg !3084
  %5 = and i1 %4, %3, !dbg !3085
  br i1 %5, label %6, label %7, !dbg !3085

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3086
  unreachable, !dbg !3086

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3087
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3088 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3092, metadata !572), !dbg !3094
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3093, metadata !572), !dbg !3095
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !536, metadata !572) #9, !dbg !3096
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !537, metadata !572) #9, !dbg !3098
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !538, metadata !572) #9, !dbg !3099
  %3 = load i64, i64* %1, align 8, !dbg !3100, !tbaa !2034
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !539, metadata !572) #9, !dbg !3101
  %4 = icmp eq i8* %0, null, !dbg !3102
  br i1 %4, label %5, label %8, !dbg !3103

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !539, metadata !572) #9, !dbg !3101
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !539, metadata !572) #9, !dbg !3101
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !539, metadata !572) #9, !dbg !3101
  store i64 %7, i64* %1, align 8, !dbg !3106, !tbaa !2034
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2996, metadata !572) #9, !dbg !3107
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3001, metadata !572) #9, !dbg !3109
  br label %17, !dbg !3110

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3111
  br i1 %9, label %11, label %10, !dbg !3112

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3113
  unreachable, !dbg !3113

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3114
  %13 = add i64 %3, 1, !dbg !3115
  %14 = add i64 %13, %12, !dbg !3116
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !539, metadata !572) #9, !dbg !3101
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !539, metadata !572) #9, !dbg !3101
  store i64 %14, i64* %1, align 8, !dbg !3106, !tbaa !2034
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2996, metadata !572) #9, !dbg !3107
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3001, metadata !572) #9, !dbg !3109
  %15 = icmp eq i64 %14, 0, !dbg !3117
  br i1 %15, label %16, label %17, !dbg !3110

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !3118
  br label %24, !dbg !3119

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !3120
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2996, metadata !572) #9, !dbg !3107
  %20 = icmp eq i8* %19, null, !dbg !3121
  %21 = icmp ne i64 %18, 0, !dbg !3122
  %22 = and i1 %21, %20, !dbg !3123
  br i1 %22, label %23, label %24, !dbg !3123

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3124
  unreachable, !dbg !3124

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3125
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3126 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3128, metadata !572), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2955, metadata !572) #9, !dbg !3130
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3132
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2961, metadata !572) #9, !dbg !3133
  %3 = icmp eq i8* %2, null, !dbg !3134
  %4 = icmp ne i64 %0, 0, !dbg !3135
  %5 = and i1 %4, %3, !dbg !3136
  br i1 %5, label %6, label %7, !dbg !3136

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3137
  unreachable, !dbg !3137

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3138
  ret i8* %2, !dbg !3139
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3140 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3142, metadata !572), !dbg !3145
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3143, metadata !572), !dbg !3146
  %3 = udiv i64 9223372036854775807, %1, !dbg !3147
  %4 = icmp ult i64 %3, %0, !dbg !3147
  br i1 %4, label %8, label %5, !dbg !3149

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3144, metadata !572), !dbg !3152
  %7 = icmp eq i8* %6, null, !dbg !3153
  br i1 %7, label %8, label %9, !dbg !3154

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3156
  unreachable, !dbg !3156

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3157
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3158 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3162, metadata !572), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3163, metadata !572), !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2955, metadata !572) #9, !dbg !3166
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3168
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2961, metadata !572) #9, !dbg !3169
  %4 = icmp eq i8* %3, null, !dbg !3170
  %5 = icmp ne i64 %1, 0, !dbg !3171
  %6 = and i1 %5, %4, !dbg !3172
  br i1 %6, label %7, label %8, !dbg !3172

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3173
  unreachable, !dbg !3173

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3174
  ret i8* %3, !dbg !3175
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3176 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3178, metadata !572), !dbg !3179
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3180
  %3 = add i64 %2, 1, !dbg !3181
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3162, metadata !572) #9, !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3163, metadata !572) #9, !dbg !3185
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2955, metadata !572) #9, !dbg !3186
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3188
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2961, metadata !572) #9, !dbg !3189
  %5 = icmp eq i8* %4, null, !dbg !3190
  %6 = icmp ne i64 %3, 0, !dbg !3191
  %7 = and i1 %6, %5, !dbg !3192
  br i1 %7, label %8, label %9, !dbg !3192

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3193
  unreachable, !dbg !3193

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3194
  ret i8* %4, !dbg !3195
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3196 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3198, !tbaa !699
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.79, i64 0, i64 0), i32 5) #9, !dbg !3199
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i8* %2) #9, !dbg !3200
  tail call void @abort() #14, !dbg !3202
  unreachable, !dbg !3202
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3203 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3206, metadata !572), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3207, metadata !572), !dbg !3213
  %3 = icmp eq i64 %0, 0, !dbg !3214
  %4 = icmp eq i64 %1, 0, !dbg !3215
  %5 = or i1 %3, %4, !dbg !3217
  br i1 %5, label %12, label %6, !dbg !3217

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3209, metadata !572), !dbg !3219
  %8 = udiv i64 %7, %1, !dbg !3220
  %9 = icmp eq i64 %8, %0, !dbg !3222
  br i1 %9, label %12, label %10, !dbg !3223

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3224
  store i32 12, i32* %11, align 4, !dbg !3226, !tbaa !699
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3206, metadata !572), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3207, metadata !572), !dbg !3213
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3227
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3208, metadata !572), !dbg !3228
  br label %16, !dbg !3229

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3230
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3231 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3248, metadata !572), !dbg !3257
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3249, metadata !572), !dbg !3258
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3250, metadata !572), !dbg !3259
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3251, metadata !572), !dbg !3260
  %6 = bitcast i32* %5 to i8*, !dbg !3261
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9, !dbg !3261
  %7 = icmp eq i32* %0, null, !dbg !3262
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3248, metadata !572), !dbg !3257
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3264
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3248, metadata !572), !dbg !3257
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3252, metadata !572), !dbg !3266
  %10 = icmp ugt i64 %9, -3, !dbg !3267
  %11 = icmp ne i64 %2, 0, !dbg !3268
  %12 = and i1 %11, %10, !dbg !3270
  br i1 %12, label %13, label %18, !dbg !3270

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3271
  br i1 %14, label %18, label %15, !dbg !3273

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3275, !tbaa !1020
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3254, metadata !572), !dbg !3276
  %17 = zext i8 %16 to i32, !dbg !3277
  store i32 %17, i32* %8, align 4, !dbg !3278, !tbaa !699
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9, !dbg !3279
  ret i64 %19, !dbg !3279
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3280 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3325, metadata !572), !dbg !3330
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3331
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3332, metadata !572), !dbg !3336
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3338
  %4 = load i32, i32* %3, align 8, !dbg !3338, !tbaa !3339
  %5 = and i32 %4, 32, !dbg !3338
  %6 = icmp eq i32 %5, 0, !dbg !3341
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3342
  %8 = icmp ne i32 %7, 0, !dbg !3343
  br i1 %6, label %9, label %19, !dbg !3344

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3346
  %11 = icmp ne i64 %2, 0, !dbg !3346
  %12 = or i1 %11, %10, !dbg !3346
  %13 = sext i1 %8 to i32, !dbg !3346
  br i1 %12, label %22, label %14, !dbg !3346

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3348
  %16 = load i32, i32* %15, align 4, !dbg !3348, !tbaa !699
  %17 = icmp ne i32 %16, 9, !dbg !3350
  %18 = sext i1 %17 to i32, !dbg !3350
  br label %22, !dbg !3350

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3352

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3354
  store i32 0, i32* %21, align 4, !dbg !3356, !tbaa !699
  br label %22, !dbg !3354

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3357
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3358 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3363, metadata !572), !dbg !3383
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3364, metadata !572), !dbg !3384
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3385
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3365, metadata !572), !dbg !3386
  %3 = icmp eq i8* %2, null, !dbg !3387
  br i1 %3, label %15, label %4, !dbg !3388

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3373, metadata !572), !dbg !3389
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3374, metadata !572), !dbg !3390
  %5 = load i8, i8* %2, align 1, !dbg !3391, !tbaa !1020
  %6 = icmp eq i8 %5, 67, !dbg !3393
  br i1 %6, label %7, label %11, !dbg !3396

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3398
  %9 = load i8, i8* %8, align 1, !dbg !3398, !tbaa !1020
  %10 = icmp eq i8 %9, 0, !dbg !3401
  br i1 %10, label %14, label %11, !dbg !3403

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3379, metadata !572), !dbg !3405
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.89, i64 0, i64 0)) #9, !dbg !3406
  %13 = icmp eq i32 %12, 0, !dbg !3408
  br i1 %13, label %14, label %15, !dbg !3410

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3364, metadata !572), !dbg !3384
  br label %15, !dbg !3412

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3413
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3414 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3426, metadata !572), !dbg !3500
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3493, metadata !572), !dbg !3502
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3503
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3418, metadata !572), !dbg !3504
  %4 = icmp eq i8* %3, null, !dbg !3505
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0), i8* %3, !dbg !3507
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3418, metadata !572), !dbg !3504
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3508, !tbaa !575
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3440, metadata !572) #9, !dbg !3509
  %7 = icmp eq i8* %6, null, !dbg !3510
  br i1 %7, label %8, label %127, !dbg !3511

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.93, i64 0, i64 0)) #9, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3441, metadata !572) #9, !dbg !3513
  %10 = icmp eq i8* %9, null, !dbg !3514
  br i1 %10, label %14, label %11, !dbg !3516

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3517, !tbaa !1020
  %13 = icmp eq i8 %12, 0, !dbg !3519
  br i1 %13, label %14, label %15, !dbg !3520

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3522

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.94, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3441, metadata !572) #9, !dbg !3513
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3444, metadata !572) #9, !dbg !3524
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3446, metadata !572) #9, !dbg !3525
  %18 = icmp eq i64 %17, 0, !dbg !3526
  br i1 %18, label %24, label %19, !dbg !3527

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3528
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3528
  %22 = load i8, i8* %21, align 1, !dbg !3528, !tbaa !1020
  %23 = icmp ne i8 %22, 47, !dbg !3530
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3531
  %27 = add i64 %17, 14, !dbg !3532
  %28 = add i64 %27, %26, !dbg !3533
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3534
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3443, metadata !572) #9, !dbg !3535
  %30 = icmp eq i8* %29, null, !dbg !3536
  br i1 %30, label %125, label %31, !dbg !3536

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3537
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3540

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3541, !tbaa !1020
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3543
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.95, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3544
  br label %37, !dbg !3545

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3543
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.95, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3544
  br label %37, !dbg !3545

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3546
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3448, metadata !572) #9, !dbg !3547
  %39 = icmp slt i32 %38, 0, !dbg !3548
  br i1 %39, label %123, label %40, !dbg !3549

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.96, i64 0, i64 0)) #9, !dbg !3550
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3449, metadata !572) #9, !dbg !3551
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3552
  br i1 %42, label %48, label %43, !dbg !3553

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3554

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9, !dbg !3555
  br label %123, !dbg !3557

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3490, metadata !572) #9, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3491, metadata !572) #9, !dbg !3558
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9, !dbg !3559
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9, !dbg !3560
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3561, metadata !572) #9, !dbg !3566
  %53 = load i8*, i8** %46, align 8, !dbg !3568, !tbaa !3569
  %54 = load i8*, i8** %47, align 8, !dbg !3568, !tbaa !3570
  %55 = icmp ult i8* %53, %54, !dbg !3568
  br i1 %55, label %58, label %56, !dbg !3568, !prof !3571

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3572
  br label %62, !dbg !3572

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3574
  store i8* %59, i8** %46, align 8, !dbg !3574, !tbaa !3569
  %60 = load i8, i8* %53, align 1, !dbg !3574, !tbaa !1020
  %61 = zext i8 %60 to i32, !dbg !3574
  br label %62, !dbg !3574

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3576
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3492, metadata !572) #9, !dbg !3578
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3579

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3580

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3561, metadata !572) #9, !dbg !3580
  %66 = load i8*, i8** %46, align 8, !dbg !3584, !tbaa !3569
  %67 = load i8*, i8** %47, align 8, !dbg !3584, !tbaa !3570
  %68 = icmp ult i8* %66, %67, !dbg !3584
  br i1 %68, label %71, label %69, !dbg !3584, !prof !3571

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3585
  br label %75, !dbg !3585

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3586
  store i8* %72, i8** %46, align 8, !dbg !3586, !tbaa !3569
  %73 = load i8, i8* %66, align 1, !dbg !3586, !tbaa !1020
  %74 = zext i8 %73 to i32, !dbg !3586
  br label %75, !dbg !3586

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3587
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3492, metadata !572) #9, !dbg !3578
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3588, !llvm.loop !3590

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9, !dbg !3593
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.97, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9, !dbg !3594
  %80 = icmp slt i32 %79, 2, !dbg !3596
  br i1 %80, label %115, label %81, !dbg !3597

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3598
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3497, metadata !572) #9, !dbg !3599
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3600
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3498, metadata !572) #9, !dbg !3601
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3499, metadata !572) #9, !dbg !3602
  %84 = icmp eq i64 %51, 0, !dbg !3603
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3605

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3491, metadata !572) #9, !dbg !3558
  %89 = add i64 %86, 2, !dbg !3606
  %90 = call noalias i8* @malloc(i64 %89) #9, !dbg !3608
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3490, metadata !572) #9, !dbg !3554
  br label %95, !dbg !3609

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3491, metadata !572) #9, !dbg !3558
  %93 = add i64 %92, 1, !dbg !3612
  %94 = call i8* @realloc(i8* %52, i64 %93) #9, !dbg !3613
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3490, metadata !572) #9, !dbg !3554
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3490, metadata !572) #9, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3491, metadata !572) #9, !dbg !3558
  %98 = icmp eq i8* %97, null, !dbg !3614
  br i1 %98, label %99, label %100, !dbg !3616

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3491, metadata !572) #9, !dbg !3558
  call void @free(i8* %52) #9, !dbg !3617
  br label %116, !dbg !3619

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3620
  %102 = xor i64 %83, -1, !dbg !3621
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3621
  %104 = xor i64 %82, -1, !dbg !3622
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3622
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3623, metadata !572) #9, !dbg !3632
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3631, metadata !572) #9, !dbg !3632
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9, !dbg !3634
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3623, metadata !572) #9, !dbg !3636
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3631, metadata !572) #9, !dbg !3636
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9, !dbg !3638
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9, !dbg !3639
  br label %111, !dbg !3640

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3554

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3490, metadata !572) #9, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3491, metadata !572) #9, !dbg !3558
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3640
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3640
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3554

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3554

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3490, metadata !572) #9, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3491, metadata !572) #9, !dbg !3558
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3640
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3640
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3641
  %120 = icmp eq i64 %117, 0, !dbg !3642
  br i1 %120, label %123, label %121, !dbg !3644

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3645
  store i8 0, i8* %122, align 1, !dbg !3647, !tbaa !1020
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3440, metadata !572) #9, !dbg !3509
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3440, metadata !572) #9, !dbg !3509
  call void @free(i8* %29) #9, !dbg !3648
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3440, metadata !572) #9, !dbg !3509
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3649, !tbaa !575
  br label %127, !dbg !3650

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3419, metadata !572), !dbg !3651
  %129 = load i8, i8* %128, align 1, !dbg !3652, !tbaa !1020
  %130 = icmp eq i8 %129, 0, !dbg !3653
  br i1 %130, label %157, label %131, !dbg !3654

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3656

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9, !dbg !3656
  %136 = icmp eq i32 %135, 0, !dbg !3657
  br i1 %136, label %143, label %137, !dbg !3658

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3659
  br i1 %138, label %139, label %147, !dbg !3661

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3662
  %141 = load i8, i8* %140, align 1, !dbg !3662, !tbaa !1020
  %142 = icmp eq i8 %141, 0, !dbg !3664
  br i1 %142, label %143, label %147, !dbg !3665

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3667
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3669
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3670
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3418, metadata !572), !dbg !3504
  br label %157, !dbg !3671

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3672
  %149 = add i64 %148, 1, !dbg !3673
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3419, metadata !572), !dbg !3651
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3675
  %152 = add i64 %151, 1, !dbg !3676
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3419, metadata !572), !dbg !3651
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3419, metadata !572), !dbg !3651
  %154 = load i8, i8* %153, align 1, !dbg !3652, !tbaa !1020
  %155 = icmp eq i8 %154, 0, !dbg !3653
  br i1 %155, label %156, label %132, !dbg !3654, !llvm.loop !3678

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3504

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3418, metadata !572), !dbg !3504
  %159 = load i8, i8* %158, align 1, !dbg !3681, !tbaa !1020
  %160 = icmp eq i8 %159, 0, !dbg !3683
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.98, i64 0, i64 0), i8* %158, !dbg !3684
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3418, metadata !572), !dbg !3504
  ret i8* %161, !dbg !3685
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3686 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3731, metadata !572), !dbg !3735
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3732, metadata !572), !dbg !3736
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3734, metadata !572), !dbg !3737
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3738
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3733, metadata !572), !dbg !3739
  %3 = icmp slt i32 %2, 0, !dbg !3740
  br i1 %3, label %4, label %6, !dbg !3742

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3743
  br label %24, !dbg !3744

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3745
  %8 = icmp eq i32 %7, 0, !dbg !3745
  br i1 %8, label %13, label %9, !dbg !3747

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3748
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3750
  %12 = icmp eq i64 %11, -1, !dbg !3752
  br i1 %12, label %16, label %13, !dbg !3753

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3754
  %15 = icmp eq i32 %14, 0, !dbg !3754
  br i1 %15, label %16, label %18, !dbg !3755

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3732, metadata !572), !dbg !3736
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3757
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3734, metadata !572), !dbg !3737
  br label %24, !dbg !3758

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3759
  %20 = load i32, i32* %19, align 4, !dbg !3759, !tbaa !699
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3732, metadata !572), !dbg !3736
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3732, metadata !572), !dbg !3736
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3757
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3734, metadata !572), !dbg !3737
  %22 = icmp eq i32 %20, 0, !dbg !3760
  br i1 %22, label %24, label %23, !dbg !3758

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3762, !tbaa !699
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3734, metadata !572), !dbg !3737
  br label %24, !dbg !3764

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3765
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3766 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3811, metadata !572), !dbg !3812
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3813
  br i1 %2, label %6, label %3, !dbg !3815

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3816
  %5 = icmp eq i32 %4, 0, !dbg !3816
  br i1 %5, label %6, label %8, !dbg !3818

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3820
  br label %17, !dbg !3821

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3822, metadata !572) #9, !dbg !3827
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3829
  %10 = load i32, i32* %9, align 8, !dbg !3829, !tbaa !3339
  %11 = and i32 %10, 256, !dbg !3831
  %12 = icmp eq i32 %11, 0, !dbg !3831
  br i1 %12, label %15, label %13, !dbg !3832

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3833
  br label %15, !dbg !3833

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3834
  br label %17, !dbg !3835

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3836
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3837 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3883, metadata !572), !dbg !3889
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3884, metadata !572), !dbg !3890
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3885, metadata !572), !dbg !3891
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3892
  %5 = load i8*, i8** %4, align 8, !dbg !3892, !tbaa !3570
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3893
  %7 = load i8*, i8** %6, align 8, !dbg !3893, !tbaa !3569
  %8 = icmp eq i8* %5, %7, !dbg !3894
  br i1 %8, label %9, label %28, !dbg !3895

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3896
  %11 = load i8*, i8** %10, align 8, !dbg !3896, !tbaa !3898
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3899
  %13 = load i8*, i8** %12, align 8, !dbg !3899, !tbaa !3900
  %14 = icmp eq i8* %11, %13, !dbg !3901
  br i1 %14, label %15, label %28, !dbg !3902

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3903
  %17 = load i8*, i8** %16, align 8, !dbg !3903, !tbaa !3904
  %18 = icmp eq i8* %17, null, !dbg !3905
  br i1 %18, label %19, label %28, !dbg !3906

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3908
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3909
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3886, metadata !572), !dbg !3911
  %22 = icmp eq i64 %21, -1, !dbg !3912
  br i1 %22, label %30, label %23, !dbg !3914

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3915
  %25 = load i32, i32* %24, align 8, !dbg !3916, !tbaa !3339
  %26 = and i32 %25, -17, !dbg !3916
  store i32 %26, i32* %24, align 8, !dbg !3916, !tbaa !3339
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3917
  store i64 %21, i64* %27, align 8, !dbg !3918, !tbaa !3919
  br label %30, !dbg !3920

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3921
  br label %30, !dbg !3922

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3923
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

!llvm.dbg.cu = !{!480, !2, !11, !20, !28, !37, !518, !124, !526, !543, !545, !547, !550, !552, !133, !555, !557, !559}
!llvm.ident = !{!561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561, !561}
!llvm.module.flags = !{!562, !563, !564, !565}

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
!27 = distinct !DIGlobalVariable(name: "program_name", scope: !28, file: !34, line: 33, type: !6, isLocal: false, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !33)
!29 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!33 = !{!26}
!34 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!35 = !DIGlobalVariableExpression(var: !36)
!36 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !37, file: !82, line: 77, type: !118, isLocal: false, isDefinition: true)
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !74, globals: !79)
!38 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!39 = !{!40, !54, !59}
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !41, line: 32, size: 32, elements: !42)
!41 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!43 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!44 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!45 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!46 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!47 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!48 = !DIEnumerator(name: "c_quoting_style", value: 5)
!49 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!50 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!51 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!52 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!53 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !41, line: 242, size: 32, elements: !55)
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!57 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!58 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 46, size: 32, elements: !61)
!60 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!62 = !DIEnumerator(name: "_ISupper", value: 256)
!63 = !DIEnumerator(name: "_ISlower", value: 512)
!64 = !DIEnumerator(name: "_ISalpha", value: 1024)
!65 = !DIEnumerator(name: "_ISdigit", value: 2048)
!66 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!67 = !DIEnumerator(name: "_ISspace", value: 8192)
!68 = !DIEnumerator(name: "_ISprint", value: 16384)
!69 = !DIEnumerator(name: "_ISgraph", value: 32768)
!70 = !DIEnumerator(name: "_ISblank", value: 1)
!71 = !DIEnumerator(name: "_IScntrl", value: 2)
!72 = !DIEnumerator(name: "_ISpunct", value: 4)
!73 = !DIEnumerator(name: "_ISalnum", value: 8)
!74 = !{!25, !75, !76, !32}
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 62, baseType: !78)
!77 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !{!35, !80, !87, !100, !102, !107, !114, !116}
!80 = !DIGlobalVariableExpression(var: !81)
!81 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !37, file: !82, line: 93, type: !83, isLocal: false, isDefinition: true)
!82 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 320, elements: !85)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!85 = !{!86}
!86 = !DISubrange(count: 10)
!87 = !DIGlobalVariableExpression(var: !88)
!88 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !37, file: !82, line: 1043, type: !89, isLocal: false, isDefinition: true)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !82, line: 57, size: 448, elements: !90)
!90 = !{!91, !92, !93, !98, !99}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !89, file: !82, line: 60, baseType: !40, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !82, line: 63, baseType: !25, size: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !89, file: !82, line: 67, baseType: !94, size: 256, offset: 64)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !96)
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !{!97}
!97 = !DISubrange(count: 8)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !89, file: !82, line: 70, baseType: !6, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !89, file: !82, line: 73, baseType: !6, size: 64, offset: 384)
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !37, file: !82, line: 108, type: !89, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "slot0", scope: !37, file: !82, line: 834, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 256)
!107 = !DIGlobalVariableExpression(var: !108)
!108 = distinct !DIGlobalVariable(name: "slotvec", scope: !37, file: !82, line: 837, type: !109, isLocal: true, isDefinition: true)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !82, line: 826, size: 128, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !110, file: !82, line: 828, baseType: !76, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !82, line: 829, baseType: !32, size: 64, offset: 64)
!114 = !DIGlobalVariableExpression(var: !115)
!115 = distinct !DIGlobalVariable(name: "nslots", scope: !37, file: !82, line: 835, type: !25, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117)
!117 = distinct !DIGlobalVariable(name: "slotvec0", scope: !37, file: !82, line: 836, type: !110, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 704, elements: !120)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!120 = !{!121}
!121 = !DISubrange(count: 11)
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !124, file: !127, line: 26, type: !128, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !126)
!125 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!122}
!127 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 47)
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !133, file: !478, line: 120, type: !479, isLocal: true, isDefinition: true)
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !135, retainedTypes: !474, globals: !477)
!134 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !{!136}
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !137, line: 41, size: 32, elements: !138)
!137 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473}
!139 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!140 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!141 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!142 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!143 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!144 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!145 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!146 = !DIEnumerator(name: "DAY_1", value: 131079)
!147 = !DIEnumerator(name: "DAY_2", value: 131080)
!148 = !DIEnumerator(name: "DAY_3", value: 131081)
!149 = !DIEnumerator(name: "DAY_4", value: 131082)
!150 = !DIEnumerator(name: "DAY_5", value: 131083)
!151 = !DIEnumerator(name: "DAY_6", value: 131084)
!152 = !DIEnumerator(name: "DAY_7", value: 131085)
!153 = !DIEnumerator(name: "ABMON_1", value: 131086)
!154 = !DIEnumerator(name: "ABMON_2", value: 131087)
!155 = !DIEnumerator(name: "ABMON_3", value: 131088)
!156 = !DIEnumerator(name: "ABMON_4", value: 131089)
!157 = !DIEnumerator(name: "ABMON_5", value: 131090)
!158 = !DIEnumerator(name: "ABMON_6", value: 131091)
!159 = !DIEnumerator(name: "ABMON_7", value: 131092)
!160 = !DIEnumerator(name: "ABMON_8", value: 131093)
!161 = !DIEnumerator(name: "ABMON_9", value: 131094)
!162 = !DIEnumerator(name: "ABMON_10", value: 131095)
!163 = !DIEnumerator(name: "ABMON_11", value: 131096)
!164 = !DIEnumerator(name: "ABMON_12", value: 131097)
!165 = !DIEnumerator(name: "MON_1", value: 131098)
!166 = !DIEnumerator(name: "MON_2", value: 131099)
!167 = !DIEnumerator(name: "MON_3", value: 131100)
!168 = !DIEnumerator(name: "MON_4", value: 131101)
!169 = !DIEnumerator(name: "MON_5", value: 131102)
!170 = !DIEnumerator(name: "MON_6", value: 131103)
!171 = !DIEnumerator(name: "MON_7", value: 131104)
!172 = !DIEnumerator(name: "MON_8", value: 131105)
!173 = !DIEnumerator(name: "MON_9", value: 131106)
!174 = !DIEnumerator(name: "MON_10", value: 131107)
!175 = !DIEnumerator(name: "MON_11", value: 131108)
!176 = !DIEnumerator(name: "MON_12", value: 131109)
!177 = !DIEnumerator(name: "AM_STR", value: 131110)
!178 = !DIEnumerator(name: "PM_STR", value: 131111)
!179 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!180 = !DIEnumerator(name: "D_FMT", value: 131113)
!181 = !DIEnumerator(name: "T_FMT", value: 131114)
!182 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!183 = !DIEnumerator(name: "ERA", value: 131116)
!184 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!185 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!186 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!187 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!188 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!189 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!190 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!191 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!192 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!193 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!194 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!195 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!196 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!197 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!198 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!199 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!200 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!201 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!202 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!203 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!204 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!205 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!206 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!207 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!208 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!209 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!210 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!211 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!212 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!213 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!214 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!215 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!216 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!217 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!218 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!219 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!220 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!221 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!222 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!223 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!224 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!225 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!226 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!227 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!228 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!229 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!230 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!231 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!232 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!233 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!234 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!235 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!236 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!237 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!238 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!239 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!240 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!241 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!242 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!243 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!244 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!245 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!246 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!247 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!248 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!249 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!250 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!251 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!252 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!253 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!254 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!255 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!256 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!257 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!258 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!259 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!260 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!261 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!262 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!263 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!264 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!265 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!266 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!267 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!268 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!269 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!270 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!271 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!272 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!273 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!274 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!275 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!276 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!277 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!278 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!279 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!280 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!281 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!282 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!283 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!284 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!285 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!286 = !DIEnumerator(name: "CODESET", value: 14)
!287 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!288 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!289 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!290 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!291 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!292 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!293 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!294 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!295 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!296 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!297 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!298 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!299 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!300 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!301 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!302 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!303 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!304 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!305 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!306 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!307 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!308 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!309 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!310 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!311 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!312 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!313 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!314 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!315 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!316 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!317 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!318 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!319 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!320 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!321 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!322 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!323 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!324 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!325 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!326 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!327 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!328 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!329 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!330 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!331 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!332 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!333 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!334 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!335 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!336 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!337 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!338 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!339 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!340 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!341 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!342 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!343 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!344 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!345 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!346 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!347 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!348 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!349 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!350 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!351 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!352 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!353 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!354 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!355 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!356 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!357 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!358 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!359 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!360 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!361 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!362 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!363 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!364 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!365 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!366 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!367 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!368 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!369 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!370 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!371 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!372 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!373 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!374 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!375 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!376 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!377 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!378 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!379 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!380 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!381 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!382 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!383 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!384 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!385 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!386 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!387 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!388 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!389 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!390 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!391 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!392 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!393 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!394 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!395 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!396 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!397 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!398 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!399 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!400 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!401 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!402 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!403 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!404 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!405 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!406 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!407 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!408 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!409 = !DIEnumerator(name: "THOUSEP", value: 65537)
!410 = !DIEnumerator(name: "__GROUPING", value: 65538)
!411 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!412 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!413 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!414 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!415 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!416 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!417 = !DIEnumerator(name: "__YESSTR", value: 327682)
!418 = !DIEnumerator(name: "__NOSTR", value: 327683)
!419 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!420 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!421 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!422 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!423 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!424 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!425 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!426 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!427 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!428 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!429 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!430 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!431 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!432 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!433 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!434 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!435 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!436 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!437 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!438 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!439 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!440 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!441 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!442 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!443 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!444 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!445 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!446 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!447 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!448 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!449 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!450 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!451 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!452 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!453 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!454 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!455 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!456 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!457 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!458 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!459 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!460 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!461 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!462 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!463 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!464 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!465 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!466 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!467 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!468 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!469 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!470 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!471 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!472 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!473 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!474 = !{!31, !32, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!477 = !{!131}
!478 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!479 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!480 = distinct !DICompileUnit(language: DW_LANG_C99, file: !481, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !482, globals: !487)
!481 = !DIFile(filename: "src/false.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!482 = !{!76, !483, !485, !6, !32, !31}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!487 = !{!488}
!488 = !DIGlobalVariableExpression(var: !489)
!489 = distinct !DIGlobalVariable(name: "infomap", scope: !490, file: !491, line: 632, type: !515, isLocal: true, isDefinition: true)
!490 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !491, file: !491, line: 630, type: !492, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !494)
!491 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!492 = !DISubroutineType(types: !493)
!493 = !{null, !6}
!494 = !{!495, !496, !497, !504, !506, !507, !508, !511, !512, !514}
!495 = !DILocalVariable(name: "program", arg: 1, scope: !490, file: !491, line: 630, type: !6)
!496 = !DILocalVariable(name: "node", scope: !490, file: !491, line: 642, type: !6)
!497 = !DILocalVariable(name: "map_prog", scope: !490, file: !491, line: 643, type: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !490, file: !491, line: 632, size: 128, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !500, file: !491, line: 632, baseType: !6, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !500, file: !491, line: 632, baseType: !6, size: 64, offset: 64)
!504 = !DILocalVariable(name: "__s1_len", scope: !505, file: !491, line: 645, type: !76)
!505 = distinct !DILexicalBlock(scope: !490, file: !491, line: 645, column: 33)
!506 = !DILocalVariable(name: "__s2_len", scope: !505, file: !491, line: 645, type: !76)
!507 = !DILocalVariable(name: "lc_messages", scope: !490, file: !491, line: 655, type: !6)
!508 = !DILocalVariable(name: "__s1_len", scope: !509, file: !491, line: 656, type: !76)
!509 = distinct !DILexicalBlock(scope: !510, file: !491, line: 656, column: 22)
!510 = distinct !DILexicalBlock(scope: !490, file: !491, line: 656, column: 7)
!511 = !DILocalVariable(name: "__s2_len", scope: !509, file: !491, line: 656, type: !76)
!512 = !DILocalVariable(name: "__s2", scope: !513, file: !491, line: 656, type: !485)
!513 = distinct !DILexicalBlock(scope: !509, file: !491, line: 656, column: 22)
!514 = !DILocalVariable(name: "__result", scope: !513, file: !491, line: 656, type: !25)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 896, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 7)
!518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !520, retainedTypes: !525)
!519 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!520 = !{!521}
!521 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !522, line: 41, size: 32, elements: !523)
!522 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!523 = !{!524}
!524 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!525 = !{!31}
!526 = distinct !DICompileUnit(language: DW_LANG_C99, file: !527, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !528, retainedTypes: !542)
!527 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!528 = !{!529}
!529 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !531, file: !530, line: 192, size: 32, elements: !540)
!530 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!531 = distinct !DISubprogram(name: "x2nrealloc", scope: !530, file: !530, line: 180, type: !532, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !535)
!532 = !DISubroutineType(types: !533)
!533 = !{!31, !31, !534, !76}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!535 = !{!536, !537, !538, !539}
!536 = !DILocalVariable(name: "p", arg: 1, scope: !531, file: !530, line: 180, type: !31)
!537 = !DILocalVariable(name: "pn", arg: 2, scope: !531, file: !530, line: 180, type: !534)
!538 = !DILocalVariable(name: "s", arg: 3, scope: !531, file: !530, line: 180, type: !76)
!539 = !DILocalVariable(name: "n", scope: !531, file: !530, line: 182, type: !76)
!540 = !{!541}
!541 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!542 = !{!76, !32, !31}
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!544 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !525)
!546 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !549)
!548 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = !{!76}
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!551 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !554)
!553 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !{!76, !483, !485, !6}
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!556 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !525)
!558 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !525)
!560 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!562 = !{i32 2, !"Dwarf Version", i32 4}
!563 = !{i32 2, !"Debug Info Version", i32 3}
!564 = !{i32 1, !"PIC Level", i32 2}
!565 = !{i32 1, !"PIE Level", i32 2}
!566 = distinct !DISubprogram(name: "usage", scope: !567, file: !567, line: 36, type: !568, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !480, variables: !570)
!567 = !DIFile(filename: "src/true.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !DISubroutineType(types: !569)
!569 = !{null, !25}
!570 = !{!571}
!571 = !DILocalVariable(name: "status", arg: 1, scope: !566, file: !567, line: 36, type: !25)
!572 = !DIExpression()
!573 = !DILocation(line: 36, column: 12, scope: !566)
!574 = !DILocation(line: 38, column: 3, scope: !566)
!575 = !{!576, !576, i64 0}
!576 = !{!"any pointer", !577, i64 0}
!577 = !{!"omnipotent char", !578, i64 0}
!578 = !{!"Simple C/C++ TBAA"}
!579 = !DILocation(line: 38, column: 3, scope: !580)
!580 = !DILexicalBlockFile(scope: !566, file: !567, discriminator: 1)
!581 = !DILocation(line: 43, column: 3, scope: !566)
!582 = !DILocation(line: 43, column: 3, scope: !580)
!583 = !DILocation(line: 47, column: 3, scope: !566)
!584 = !DILocation(line: 47, column: 3, scope: !580)
!585 = !DILocation(line: 48, column: 3, scope: !566)
!586 = !DILocation(line: 48, column: 3, scope: !580)
!587 = !DILocation(line: 49, column: 3, scope: !566)
!588 = !DILocation(line: 49, column: 3, scope: !580)
!589 = !DILocation(line: 642, column: 15, scope: !490, inlinedAt: !590)
!590 = distinct !DILocation(line: 50, column: 3, scope: !566)
!591 = !DILocation(line: 651, column: 3, scope: !490, inlinedAt: !590)
!592 = !DILocation(line: 651, column: 3, scope: !593, inlinedAt: !590)
!593 = !DILexicalBlockFile(scope: !490, file: !491, discriminator: 1)
!594 = !DILocation(line: 655, column: 29, scope: !490, inlinedAt: !590)
!595 = !DILocation(line: 655, column: 15, scope: !490, inlinedAt: !590)
!596 = !DILocation(line: 656, column: 7, scope: !510, inlinedAt: !590)
!597 = !DILocation(line: 656, column: 19, scope: !510, inlinedAt: !590)
!598 = !DILocation(line: 656, column: 22, scope: !599, inlinedAt: !590)
!599 = !DILexicalBlockFile(scope: !510, file: !491, discriminator: 16)
!600 = !DILocation(line: 656, column: 7, scope: !601, inlinedAt: !590)
!601 = !DILexicalBlockFile(scope: !490, file: !491, discriminator: 16)
!602 = !DILocation(line: 662, column: 7, scope: !603, inlinedAt: !590)
!603 = distinct !DILexicalBlock(scope: !510, file: !491, line: 657, column: 5)
!604 = !DILocation(line: 662, column: 7, scope: !605, inlinedAt: !590)
!605 = !DILexicalBlockFile(scope: !603, file: !491, discriminator: 1)
!606 = !DILocation(line: 664, column: 5, scope: !603, inlinedAt: !590)
!607 = !DILocation(line: 665, column: 3, scope: !490, inlinedAt: !590)
!608 = !DILocation(line: 665, column: 3, scope: !593, inlinedAt: !590)
!609 = !DILocation(line: 667, column: 3, scope: !490, inlinedAt: !590)
!610 = !DILocation(line: 667, column: 3, scope: !593, inlinedAt: !590)
!611 = !DILocation(line: 51, column: 3, scope: !566)
!612 = distinct !DISubprogram(name: "main", scope: !567, file: !567, line: 55, type: !613, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !616)
!613 = !DISubroutineType(types: !614)
!614 = !{!25, !25, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!616 = !{!617, !618, !619, !624, !625, !627, !628, !631, !632, !634}
!617 = !DILocalVariable(name: "argc", arg: 1, scope: !612, file: !567, line: 55, type: !25)
!618 = !DILocalVariable(name: "argv", arg: 2, scope: !612, file: !567, line: 55, type: !615)
!619 = !DILocalVariable(name: "__s1_len", scope: !620, file: !567, line: 71, type: !76)
!620 = distinct !DILexicalBlock(scope: !621, file: !567, line: 71, column: 11)
!621 = distinct !DILexicalBlock(scope: !622, file: !567, line: 71, column: 11)
!622 = distinct !DILexicalBlock(scope: !623, file: !567, line: 60, column: 5)
!623 = distinct !DILexicalBlock(scope: !612, file: !567, line: 59, column: 7)
!624 = !DILocalVariable(name: "__s2_len", scope: !620, file: !567, line: 71, type: !76)
!625 = !DILocalVariable(name: "__s2", scope: !626, file: !567, line: 71, type: !485)
!626 = distinct !DILexicalBlock(scope: !620, file: !567, line: 71, column: 11)
!627 = !DILocalVariable(name: "__result", scope: !626, file: !567, line: 71, type: !25)
!628 = !DILocalVariable(name: "__s1_len", scope: !629, file: !567, line: 74, type: !76)
!629 = distinct !DILexicalBlock(scope: !630, file: !567, line: 74, column: 11)
!630 = distinct !DILexicalBlock(scope: !622, file: !567, line: 74, column: 11)
!631 = !DILocalVariable(name: "__s2_len", scope: !629, file: !567, line: 74, type: !76)
!632 = !DILocalVariable(name: "__s2", scope: !633, file: !567, line: 74, type: !485)
!633 = distinct !DILexicalBlock(scope: !629, file: !567, line: 74, column: 11)
!634 = !DILocalVariable(name: "__result", scope: !633, file: !567, line: 74, type: !25)
!635 = !DILocation(line: 55, column: 11, scope: !612)
!636 = !DILocation(line: 55, column: 24, scope: !612)
!637 = !DILocation(line: 59, column: 12, scope: !623)
!638 = !DILocation(line: 59, column: 7, scope: !612)
!639 = !DILocation(line: 62, column: 25, scope: !622)
!640 = !DILocation(line: 62, column: 7, scope: !622)
!641 = !DILocation(line: 63, column: 7, scope: !622)
!642 = !DILocation(line: 64, column: 7, scope: !622)
!643 = !DILocation(line: 65, column: 7, scope: !622)
!644 = !DILocation(line: 69, column: 7, scope: !622)
!645 = !DILocation(line: 71, column: 11, scope: !620)
!646 = !DILocation(line: 71, column: 11, scope: !647)
!647 = !DILexicalBlockFile(scope: !620, file: !567, discriminator: 12)
!648 = !DILocation(line: 71, column: 11, scope: !649)
!649 = !DILexicalBlockFile(scope: !621, file: !567, discriminator: 13)
!650 = !DILocation(line: 71, column: 11, scope: !651)
!651 = !DILexicalBlockFile(scope: !622, file: !567, discriminator: 13)
!652 = !DILocation(line: 72, column: 9, scope: !621)
!653 = !DILocation(line: 74, column: 11, scope: !629)
!654 = !DILocation(line: 74, column: 11, scope: !655)
!655 = !DILexicalBlockFile(scope: !629, file: !567, discriminator: 12)
!656 = !DILocation(line: 74, column: 11, scope: !657)
!657 = !DILexicalBlockFile(scope: !630, file: !567, discriminator: 13)
!658 = !DILocation(line: 74, column: 11, scope: !651)
!659 = !DILocation(line: 75, column: 22, scope: !630)
!660 = !DILocation(line: 75, column: 58, scope: !630)
!661 = !DILocation(line: 75, column: 9, scope: !630)
!662 = !DILocation(line: 79, column: 3, scope: !612)
!663 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !492, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !664)
!664 = !{!665}
!665 = !DILocalVariable(name: "file", arg: 1, scope: !663, file: !16, line: 41, type: !6)
!666 = !DILocation(line: 41, column: 41, scope: !663)
!667 = !DILocation(line: 43, column: 13, scope: !663)
!668 = !DILocation(line: 44, column: 1, scope: !663)
!669 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !670, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !672)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !17}
!672 = !{!673}
!673 = !DILocalVariable(name: "ignore", arg: 1, scope: !669, file: !16, line: 78, type: !17)
!674 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!675 = !DILocation(line: 78, column: 37, scope: !669)
!676 = !DILocation(line: 80, column: 16, scope: !669)
!677 = !{!678, !678, i64 0}
!678 = !{!"_Bool", !577, i64 0}
!679 = !DILocation(line: 81, column: 1, scope: !669)
!680 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !681, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{null}
!683 = !{!684}
!684 = !DILocalVariable(name: "write_error", scope: !685, file: !16, line: 112, type: !6)
!685 = distinct !DILexicalBlock(scope: !686, file: !16, line: 111, column: 5)
!686 = distinct !DILexicalBlock(scope: !680, file: !16, line: 109, column: 7)
!687 = !DILocation(line: 109, column: 21, scope: !686)
!688 = !DILocation(line: 109, column: 7, scope: !686)
!689 = !DILocation(line: 109, column: 29, scope: !686)
!690 = !DILocation(line: 110, column: 7, scope: !686)
!691 = !DILocation(line: 110, column: 12, scope: !692)
!692 = !DILexicalBlockFile(scope: !686, file: !16, discriminator: 1)
!693 = !{i8 0, i8 2}
!694 = !DILocation(line: 114, column: 19, scope: !695)
!695 = distinct !DILexicalBlock(scope: !685, file: !16, line: 113, column: 11)
!696 = !DILocation(line: 110, column: 25, scope: !692)
!697 = !DILocation(line: 110, column: 28, scope: !698)
!698 = !DILexicalBlockFile(scope: !686, file: !16, discriminator: 2)
!699 = !{!700, !700, i64 0}
!700 = !{!"int", !577, i64 0}
!701 = !DILocation(line: 110, column: 34, scope: !698)
!702 = !DILocation(line: 109, column: 7, scope: !703)
!703 = !DILexicalBlockFile(scope: !680, file: !16, discriminator: 1)
!704 = !DILocation(line: 112, column: 33, scope: !685)
!705 = !DILocation(line: 112, column: 19, scope: !685)
!706 = !DILocation(line: 113, column: 11, scope: !695)
!707 = !DILocation(line: 113, column: 11, scope: !685)
!708 = !DILocation(line: 114, column: 36, scope: !709)
!709 = !DILexicalBlockFile(scope: !695, file: !16, discriminator: 1)
!710 = !DILocation(line: 114, column: 9, scope: !711)
!711 = !DILexicalBlockFile(scope: !695, file: !16, discriminator: 2)
!712 = !DILocation(line: 114, column: 9, scope: !695)
!713 = !DILocation(line: 117, column: 9, scope: !709)
!714 = !DILocation(line: 119, column: 14, scope: !685)
!715 = !DILocation(line: 119, column: 7, scope: !685)
!716 = !DILocation(line: 122, column: 22, scope: !717)
!717 = distinct !DILexicalBlock(scope: !680, file: !16, line: 122, column: 8)
!718 = !DILocation(line: 122, column: 8, scope: !717)
!719 = !DILocation(line: 122, column: 30, scope: !717)
!720 = !DILocation(line: 122, column: 8, scope: !680)
!721 = !DILocation(line: 123, column: 13, scope: !717)
!722 = !DILocation(line: 123, column: 6, scope: !717)
!723 = !DILocation(line: 124, column: 1, scope: !680)
!724 = distinct !DISubprogram(name: "set_program_name", scope: !34, file: !34, line: 39, type: !492, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !725)
!725 = !{!726, !727, !728}
!726 = !DILocalVariable(name: "argv0", arg: 1, scope: !724, file: !34, line: 39, type: !6)
!727 = !DILocalVariable(name: "slash", scope: !724, file: !34, line: 46, type: !6)
!728 = !DILocalVariable(name: "base", scope: !724, file: !34, line: 47, type: !6)
!729 = !DILocation(line: 39, column: 31, scope: !724)
!730 = !DILocation(line: 51, column: 13, scope: !731)
!731 = distinct !DILexicalBlock(scope: !724, file: !34, line: 51, column: 7)
!732 = !DILocation(line: 51, column: 7, scope: !724)
!733 = !DILocation(line: 55, column: 14, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !34, line: 52, column: 5)
!735 = !DILocation(line: 54, column: 7, scope: !734)
!736 = !DILocation(line: 56, column: 7, scope: !734)
!737 = !DILocation(line: 59, column: 11, scope: !724)
!738 = !DILocation(line: 46, column: 15, scope: !724)
!739 = !DILocation(line: 60, column: 17, scope: !724)
!740 = !DILocation(line: 60, column: 33, scope: !741)
!741 = !DILexicalBlockFile(scope: !724, file: !34, discriminator: 1)
!742 = !DILocation(line: 60, column: 11, scope: !724)
!743 = !DILocation(line: 47, column: 15, scope: !724)
!744 = !DILocation(line: 61, column: 12, scope: !745)
!745 = distinct !DILexicalBlock(scope: !724, file: !34, line: 61, column: 7)
!746 = !DILocation(line: 61, column: 20, scope: !745)
!747 = !DILocation(line: 61, column: 25, scope: !745)
!748 = !DILocation(line: 61, column: 28, scope: !749)
!749 = !DILexicalBlockFile(scope: !745, file: !34, discriminator: 1)
!750 = !DILocation(line: 61, column: 61, scope: !749)
!751 = !DILocation(line: 61, column: 7, scope: !741)
!752 = !DILocation(line: 64, column: 11, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !34, line: 64, column: 11)
!754 = distinct !DILexicalBlock(scope: !745, file: !34, line: 62, column: 5)
!755 = !DILocation(line: 64, column: 36, scope: !753)
!756 = !DILocation(line: 64, column: 11, scope: !754)
!757 = !DILocation(line: 66, column: 24, scope: !758)
!758 = distinct !DILexicalBlock(scope: !753, file: !34, line: 65, column: 9)
!759 = !DILocation(line: 70, column: 41, scope: !758)
!760 = !DILocation(line: 72, column: 9, scope: !758)
!761 = !DILocation(line: 84, column: 16, scope: !724)
!762 = !DILocation(line: 90, column: 27, scope: !724)
!763 = !DILocation(line: 92, column: 1, scope: !724)
!764 = distinct !DISubprogram(name: "clone_quoting_options", scope: !82, file: !82, line: 114, type: !765, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !768)
!765 = !DISubroutineType(types: !766)
!766 = !{!767, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!768 = !{!769, !770, !771}
!769 = !DILocalVariable(name: "o", arg: 1, scope: !764, file: !82, line: 114, type: !767)
!770 = !DILocalVariable(name: "e", scope: !764, file: !82, line: 116, type: !25)
!771 = !DILocalVariable(name: "p", scope: !764, file: !82, line: 117, type: !767)
!772 = !DILocation(line: 114, column: 48, scope: !764)
!773 = !DILocation(line: 116, column: 11, scope: !764)
!774 = !DILocation(line: 116, column: 7, scope: !764)
!775 = !DILocation(line: 117, column: 40, scope: !764)
!776 = !DILocation(line: 117, column: 40, scope: !777)
!777 = !DILexicalBlockFile(scope: !764, file: !82, discriminator: 3)
!778 = !DILocation(line: 117, column: 31, scope: !777)
!779 = !DILocation(line: 117, column: 27, scope: !764)
!780 = !DILocation(line: 119, column: 9, scope: !764)
!781 = !DILocation(line: 120, column: 3, scope: !764)
!782 = distinct !DISubprogram(name: "get_quoting_style", scope: !82, file: !82, line: 125, type: !783, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !787)
!783 = !DISubroutineType(types: !784)
!784 = !{!40, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!787 = !{!788}
!788 = !DILocalVariable(name: "o", arg: 1, scope: !782, file: !82, line: 125, type: !785)
!789 = !DILocation(line: 125, column: 50, scope: !782)
!790 = !DILocation(line: 127, column: 11, scope: !782)
!791 = !DILocation(line: 127, column: 46, scope: !792)
!792 = !DILexicalBlockFile(scope: !782, file: !82, discriminator: 3)
!793 = !{!794, !577, i64 0}
!794 = !{!"quoting_options", !577, i64 0, !700, i64 4, !577, i64 8, !576, i64 40, !576, i64 48}
!795 = !DILocation(line: 127, column: 3, scope: !792)
!796 = distinct !DISubprogram(name: "set_quoting_style", scope: !82, file: !82, line: 133, type: !797, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !767, !40}
!799 = !{!800, !801}
!800 = !DILocalVariable(name: "o", arg: 1, scope: !796, file: !82, line: 133, type: !767)
!801 = !DILocalVariable(name: "s", arg: 2, scope: !796, file: !82, line: 133, type: !40)
!802 = !DILocation(line: 133, column: 44, scope: !796)
!803 = !DILocation(line: 133, column: 66, scope: !796)
!804 = !DILocation(line: 135, column: 4, scope: !796)
!805 = !DILocation(line: 135, column: 39, scope: !806)
!806 = !DILexicalBlockFile(scope: !796, file: !82, discriminator: 3)
!807 = !DILocation(line: 135, column: 45, scope: !806)
!808 = !DILocation(line: 136, column: 1, scope: !796)
!809 = distinct !DISubprogram(name: "set_char_quoting", scope: !82, file: !82, line: 144, type: !810, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{!25, !767, !8, !25}
!812 = !{!813, !814, !815, !816, !817, !819, !820}
!813 = !DILocalVariable(name: "o", arg: 1, scope: !809, file: !82, line: 144, type: !767)
!814 = !DILocalVariable(name: "c", arg: 2, scope: !809, file: !82, line: 144, type: !8)
!815 = !DILocalVariable(name: "i", arg: 3, scope: !809, file: !82, line: 144, type: !25)
!816 = !DILocalVariable(name: "uc", scope: !809, file: !82, line: 146, type: !476)
!817 = !DILocalVariable(name: "p", scope: !809, file: !82, line: 147, type: !818)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!819 = !DILocalVariable(name: "shift", scope: !809, file: !82, line: 149, type: !25)
!820 = !DILocalVariable(name: "r", scope: !809, file: !82, line: 150, type: !25)
!821 = !DILocation(line: 144, column: 43, scope: !809)
!822 = !DILocation(line: 144, column: 51, scope: !809)
!823 = !DILocation(line: 144, column: 58, scope: !809)
!824 = !DILocation(line: 146, column: 17, scope: !809)
!825 = !DILocation(line: 148, column: 6, scope: !809)
!826 = !DILocation(line: 148, column: 62, scope: !827)
!827 = !DILexicalBlockFile(scope: !809, file: !82, discriminator: 3)
!828 = !DILocation(line: 148, column: 57, scope: !827)
!829 = !DILocation(line: 147, column: 17, scope: !809)
!830 = !DILocation(line: 149, column: 18, scope: !809)
!831 = !DILocation(line: 149, column: 15, scope: !809)
!832 = !DILocation(line: 149, column: 7, scope: !809)
!833 = !DILocation(line: 150, column: 12, scope: !809)
!834 = !DILocation(line: 150, column: 15, scope: !809)
!835 = !DILocation(line: 150, column: 25, scope: !809)
!836 = !DILocation(line: 150, column: 7, scope: !809)
!837 = !DILocation(line: 151, column: 13, scope: !809)
!838 = !DILocation(line: 151, column: 18, scope: !809)
!839 = !DILocation(line: 151, column: 23, scope: !809)
!840 = !DILocation(line: 151, column: 6, scope: !809)
!841 = !DILocation(line: 152, column: 3, scope: !809)
!842 = distinct !DISubprogram(name: "set_quoting_flags", scope: !82, file: !82, line: 160, type: !843, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !845)
!843 = !DISubroutineType(types: !844)
!844 = !{!25, !767, !25}
!845 = !{!846, !847, !848}
!846 = !DILocalVariable(name: "o", arg: 1, scope: !842, file: !82, line: 160, type: !767)
!847 = !DILocalVariable(name: "i", arg: 2, scope: !842, file: !82, line: 160, type: !25)
!848 = !DILocalVariable(name: "r", scope: !842, file: !82, line: 162, type: !25)
!849 = !DILocation(line: 160, column: 44, scope: !842)
!850 = !DILocation(line: 160, column: 51, scope: !842)
!851 = !DILocation(line: 163, column: 8, scope: !852)
!852 = distinct !DILexicalBlock(scope: !842, file: !82, line: 163, column: 7)
!853 = !DILocation(line: 163, column: 7, scope: !842)
!854 = !DILocation(line: 165, column: 10, scope: !842)
!855 = !{!794, !700, i64 4}
!856 = !DILocation(line: 162, column: 7, scope: !842)
!857 = !DILocation(line: 166, column: 12, scope: !842)
!858 = !DILocation(line: 167, column: 3, scope: !842)
!859 = distinct !DISubprogram(name: "set_custom_quoting", scope: !82, file: !82, line: 171, type: !860, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !862)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !767, !6, !6}
!862 = !{!863, !864, !865}
!863 = !DILocalVariable(name: "o", arg: 1, scope: !859, file: !82, line: 171, type: !767)
!864 = !DILocalVariable(name: "left_quote", arg: 2, scope: !859, file: !82, line: 172, type: !6)
!865 = !DILocalVariable(name: "right_quote", arg: 3, scope: !859, file: !82, line: 172, type: !6)
!866 = !DILocation(line: 171, column: 45, scope: !859)
!867 = !DILocation(line: 172, column: 33, scope: !859)
!868 = !DILocation(line: 172, column: 57, scope: !859)
!869 = !DILocation(line: 174, column: 8, scope: !870)
!870 = distinct !DILexicalBlock(scope: !859, file: !82, line: 174, column: 7)
!871 = !DILocation(line: 174, column: 7, scope: !859)
!872 = !DILocation(line: 176, column: 6, scope: !859)
!873 = !DILocation(line: 176, column: 12, scope: !859)
!874 = !DILocation(line: 177, column: 8, scope: !875)
!875 = distinct !DILexicalBlock(scope: !859, file: !82, line: 177, column: 7)
!876 = !DILocation(line: 177, column: 23, scope: !877)
!877 = !DILexicalBlockFile(scope: !875, file: !82, discriminator: 1)
!878 = !DILocation(line: 177, column: 19, scope: !875)
!879 = !DILocation(line: 178, column: 5, scope: !875)
!880 = !DILocation(line: 179, column: 6, scope: !859)
!881 = !DILocation(line: 179, column: 17, scope: !859)
!882 = !{!794, !576, i64 40}
!883 = !DILocation(line: 180, column: 6, scope: !859)
!884 = !DILocation(line: 180, column: 18, scope: !859)
!885 = !{!794, !576, i64 48}
!886 = !DILocation(line: 181, column: 1, scope: !859)
!887 = distinct !DISubprogram(name: "quotearg_buffer", scope: !82, file: !82, line: 776, type: !888, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{!76, !32, !76, !6, !76, !785}
!890 = !{!891, !892, !893, !894, !895, !896, !897, !898}
!891 = !DILocalVariable(name: "buffer", arg: 1, scope: !887, file: !82, line: 776, type: !32)
!892 = !DILocalVariable(name: "buffersize", arg: 2, scope: !887, file: !82, line: 776, type: !76)
!893 = !DILocalVariable(name: "arg", arg: 3, scope: !887, file: !82, line: 777, type: !6)
!894 = !DILocalVariable(name: "argsize", arg: 4, scope: !887, file: !82, line: 777, type: !76)
!895 = !DILocalVariable(name: "o", arg: 5, scope: !887, file: !82, line: 778, type: !785)
!896 = !DILocalVariable(name: "p", scope: !887, file: !82, line: 780, type: !785)
!897 = !DILocalVariable(name: "e", scope: !887, file: !82, line: 781, type: !25)
!898 = !DILocalVariable(name: "r", scope: !887, file: !82, line: 782, type: !76)
!899 = !DILocation(line: 776, column: 24, scope: !887)
!900 = !DILocation(line: 776, column: 39, scope: !887)
!901 = !DILocation(line: 777, column: 30, scope: !887)
!902 = !DILocation(line: 777, column: 42, scope: !887)
!903 = !DILocation(line: 778, column: 48, scope: !887)
!904 = !DILocation(line: 780, column: 37, scope: !887)
!905 = !DILocation(line: 780, column: 33, scope: !887)
!906 = !DILocation(line: 781, column: 11, scope: !887)
!907 = !DILocation(line: 781, column: 7, scope: !887)
!908 = !DILocation(line: 783, column: 43, scope: !887)
!909 = !DILocation(line: 783, column: 53, scope: !887)
!910 = !DILocation(line: 783, column: 60, scope: !887)
!911 = !DILocation(line: 784, column: 43, scope: !887)
!912 = !DILocation(line: 784, column: 58, scope: !887)
!913 = !DILocation(line: 782, column: 14, scope: !887)
!914 = !DILocation(line: 782, column: 10, scope: !887)
!915 = !DILocation(line: 785, column: 9, scope: !887)
!916 = !DILocation(line: 786, column: 3, scope: !887)
!917 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !82, file: !82, line: 248, type: !918, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !922)
!918 = !DISubroutineType(types: !919)
!919 = !{!76, !32, !76, !6, !76, !40, !25, !920, !6, !6}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!922 = !{!923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !947, !948, !949, !950, !951, !954, !955, !972, !975, !976, !983}
!923 = !DILocalVariable(name: "buffer", arg: 1, scope: !917, file: !82, line: 248, type: !32)
!924 = !DILocalVariable(name: "buffersize", arg: 2, scope: !917, file: !82, line: 248, type: !76)
!925 = !DILocalVariable(name: "arg", arg: 3, scope: !917, file: !82, line: 249, type: !6)
!926 = !DILocalVariable(name: "argsize", arg: 4, scope: !917, file: !82, line: 249, type: !76)
!927 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !917, file: !82, line: 250, type: !40)
!928 = !DILocalVariable(name: "flags", arg: 6, scope: !917, file: !82, line: 250, type: !25)
!929 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !917, file: !82, line: 251, type: !920)
!930 = !DILocalVariable(name: "left_quote", arg: 8, scope: !917, file: !82, line: 252, type: !6)
!931 = !DILocalVariable(name: "right_quote", arg: 9, scope: !917, file: !82, line: 253, type: !6)
!932 = !DILocalVariable(name: "i", scope: !917, file: !82, line: 255, type: !76)
!933 = !DILocalVariable(name: "len", scope: !917, file: !82, line: 256, type: !76)
!934 = !DILocalVariable(name: "orig_buffersize", scope: !917, file: !82, line: 257, type: !76)
!935 = !DILocalVariable(name: "quote_string", scope: !917, file: !82, line: 258, type: !6)
!936 = !DILocalVariable(name: "quote_string_len", scope: !917, file: !82, line: 259, type: !76)
!937 = !DILocalVariable(name: "backslash_escapes", scope: !917, file: !82, line: 260, type: !17)
!938 = !DILocalVariable(name: "unibyte_locale", scope: !917, file: !82, line: 261, type: !17)
!939 = !DILocalVariable(name: "elide_outer_quotes", scope: !917, file: !82, line: 262, type: !17)
!940 = !DILocalVariable(name: "pending_shell_escape_end", scope: !917, file: !82, line: 263, type: !17)
!941 = !DILocalVariable(name: "encountered_single_quote", scope: !917, file: !82, line: 264, type: !17)
!942 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !917, file: !82, line: 265, type: !17)
!943 = !DILocalVariable(name: "c", scope: !944, file: !82, line: 394, type: !476)
!944 = distinct !DILexicalBlock(scope: !945, file: !82, line: 393, column: 5)
!945 = distinct !DILexicalBlock(scope: !946, file: !82, line: 392, column: 3)
!946 = distinct !DILexicalBlock(scope: !917, file: !82, line: 392, column: 3)
!947 = !DILocalVariable(name: "esc", scope: !944, file: !82, line: 395, type: !476)
!948 = !DILocalVariable(name: "is_right_quote", scope: !944, file: !82, line: 396, type: !17)
!949 = !DILocalVariable(name: "escaping", scope: !944, file: !82, line: 397, type: !17)
!950 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !944, file: !82, line: 398, type: !17)
!951 = !DILocalVariable(name: "m", scope: !952, file: !82, line: 602, type: !76)
!952 = distinct !DILexicalBlock(scope: !953, file: !82, line: 600, column: 11)
!953 = distinct !DILexicalBlock(scope: !944, file: !82, line: 418, column: 9)
!954 = !DILocalVariable(name: "printable", scope: !952, file: !82, line: 604, type: !17)
!955 = !DILocalVariable(name: "mbstate", scope: !956, file: !82, line: 613, type: !958)
!956 = distinct !DILexicalBlock(scope: !957, file: !82, line: 612, column: 15)
!957 = distinct !DILexicalBlock(scope: !952, file: !82, line: 606, column: 17)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !959, line: 107, baseType: !960)
!959 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !959, line: 95, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !959, line: 83, size: 64, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !961, file: !959, line: 85, baseType: !25, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !961, file: !959, line: 94, baseType: !965, size: 32, offset: 32)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !959, line: 86, size: 32, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !965, file: !959, line: 89, baseType: !95, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !965, file: !959, line: 93, baseType: !969, size: 32)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !970)
!970 = !{!971}
!971 = !DISubrange(count: 4)
!972 = !DILocalVariable(name: "w", scope: !973, file: !82, line: 623, type: !974)
!973 = distinct !DILexicalBlock(scope: !956, file: !82, line: 622, column: 19)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 90, baseType: !25)
!975 = !DILocalVariable(name: "bytes", scope: !973, file: !82, line: 624, type: !76)
!976 = !DILocalVariable(name: "j", scope: !977, file: !82, line: 649, type: !76)
!977 = distinct !DILexicalBlock(scope: !978, file: !82, line: 648, column: 27)
!978 = distinct !DILexicalBlock(scope: !979, file: !82, line: 646, column: 29)
!979 = distinct !DILexicalBlock(scope: !980, file: !82, line: 641, column: 23)
!980 = distinct !DILexicalBlock(scope: !981, file: !82, line: 633, column: 30)
!981 = distinct !DILexicalBlock(scope: !982, file: !82, line: 628, column: 30)
!982 = distinct !DILexicalBlock(scope: !973, file: !82, line: 626, column: 25)
!983 = !DILocalVariable(name: "ilim", scope: !984, file: !82, line: 676, type: !76)
!984 = distinct !DILexicalBlock(scope: !985, file: !82, line: 673, column: 15)
!985 = distinct !DILexicalBlock(scope: !952, file: !82, line: 672, column: 17)
!986 = !DILocation(line: 248, column: 33, scope: !917)
!987 = !DILocation(line: 248, column: 48, scope: !917)
!988 = !DILocation(line: 249, column: 39, scope: !917)
!989 = !DILocation(line: 249, column: 51, scope: !917)
!990 = !DILocation(line: 250, column: 46, scope: !917)
!991 = !DILocation(line: 250, column: 65, scope: !917)
!992 = !DILocation(line: 251, column: 47, scope: !917)
!993 = !DILocation(line: 252, column: 39, scope: !917)
!994 = !DILocation(line: 253, column: 39, scope: !917)
!995 = !DILocation(line: 256, column: 10, scope: !917)
!996 = !DILocation(line: 257, column: 10, scope: !917)
!997 = !DILocation(line: 258, column: 15, scope: !917)
!998 = !DILocation(line: 259, column: 10, scope: !917)
!999 = !DILocation(line: 260, column: 8, scope: !917)
!1000 = !DILocation(line: 261, column: 25, scope: !917)
!1001 = !DILocation(line: 261, column: 36, scope: !917)
!1002 = !DILocation(line: 262, column: 8, scope: !917)
!1003 = !DILocation(line: 263, column: 8, scope: !917)
!1004 = !DILocation(line: 264, column: 8, scope: !917)
!1005 = !DILocation(line: 265, column: 8, scope: !917)
!1006 = !DILocation(line: 265, column: 3, scope: !917)
!1007 = !DILocation(line: 308, column: 3, scope: !917)
!1008 = !DILocation(line: 315, column: 11, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !917, file: !82, line: 309, column: 5)
!1010 = !DILocation(line: 315, column: 12, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1009, file: !82, line: 315, column: 11)
!1012 = !DILocation(line: 316, column: 9, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1014, file: !82, discriminator: 1)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !82, line: 316, column: 9)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !82, line: 316, column: 9)
!1016 = !DILocation(line: 316, column: 9, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1015, file: !82, discriminator: 1)
!1018 = !DILocation(line: 316, column: 9, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1014, file: !82, discriminator: 2)
!1020 = !{!577, !577, i64 0}
!1021 = !DILocation(line: 354, column: 26, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !82, line: 332, column: 11)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !82, line: 331, column: 13)
!1024 = distinct !DILexicalBlock(scope: !1009, file: !82, line: 330, column: 7)
!1025 = !DILocation(line: 355, column: 27, scope: !1022)
!1026 = !DILocation(line: 356, column: 11, scope: !1022)
!1027 = !DILocation(line: 357, column: 14, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !82, line: 357, column: 13)
!1029 = !DILocation(line: 357, column: 13, scope: !1024)
!1030 = !DILocation(line: 358, column: 43, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1032, file: !82, discriminator: 1)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !82, line: 358, column: 11)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !82, line: 358, column: 11)
!1034 = !DILocation(line: 358, column: 11, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1033, file: !82, discriminator: 1)
!1036 = !DILocation(line: 359, column: 13, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1038, file: !82, discriminator: 1)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !82, line: 359, column: 13)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !82, line: 359, column: 13)
!1040 = !DILocation(line: 359, column: 13, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1039, file: !82, discriminator: 1)
!1042 = !DILocation(line: 359, column: 13, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1038, file: !82, discriminator: 2)
!1044 = !DILocation(line: 359, column: 13, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1039, file: !82, discriminator: 3)
!1046 = !DILocation(line: 358, column: 70, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1032, file: !82, discriminator: 2)
!1048 = distinct !{!1048, !1049, !1050}
!1049 = !DILocation(line: 358, column: 11, scope: !1033)
!1050 = !DILocation(line: 359, column: 13, scope: !1033)
!1051 = !DILocation(line: 362, column: 28, scope: !1024)
!1052 = !DILocation(line: 364, column: 7, scope: !1009)
!1053 = !DILocation(line: 367, column: 7, scope: !1009)
!1054 = !DILocation(line: 370, column: 7, scope: !1009)
!1055 = !DILocation(line: 373, column: 12, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1009, file: !82, line: 373, column: 11)
!1057 = !DILocation(line: 373, column: 11, scope: !1009)
!1058 = !DILocation(line: 378, column: 12, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1009, file: !82, line: 378, column: 11)
!1060 = !DILocation(line: 378, column: 11, scope: !1009)
!1061 = !DILocation(line: 379, column: 9, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1063, file: !82, discriminator: 1)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !82, line: 379, column: 9)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !82, line: 379, column: 9)
!1065 = !DILocation(line: 379, column: 9, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1064, file: !82, discriminator: 1)
!1067 = !DILocation(line: 379, column: 9, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1063, file: !82, discriminator: 2)
!1069 = !DILocation(line: 386, column: 7, scope: !1009)
!1070 = !DILocation(line: 389, column: 7, scope: !1009)
!1071 = !DILocation(line: 255, column: 10, scope: !917)
!1072 = !DILocation(line: 392, column: 8, scope: !946)
!1073 = !DILocation(line: 392, column: 27, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !945, file: !82, discriminator: 1)
!1075 = !DILocation(line: 392, column: 19, scope: !1074)
!1076 = !DILocation(line: 392, column: 60, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !945, file: !82, discriminator: 3)
!1078 = !DILocation(line: 392, column: 3, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !946, file: !82, discriminator: 4)
!1080 = !DILocation(line: 392, column: 41, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !945, file: !82, discriminator: 2)
!1082 = !DILocation(line: 392, column: 48, scope: !1081)
!1083 = !DILocation(line: 396, column: 12, scope: !944)
!1084 = !DILocation(line: 397, column: 12, scope: !944)
!1085 = !DILocation(line: 398, column: 12, scope: !944)
!1086 = !DILocation(line: 401, column: 11, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !944, file: !82, line: 400, column: 11)
!1088 = !DILocation(line: 403, column: 17, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1087, file: !82, discriminator: 1)
!1090 = !DILocation(line: 404, column: 39, scope: !1087)
!1091 = !DILocation(line: 408, column: 32, scope: !1087)
!1092 = !DILocation(line: 404, column: 19, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1087, file: !82, discriminator: 2)
!1094 = !DILocation(line: 404, column: 15, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1087, file: !82, discriminator: 4)
!1096 = !DILocation(line: 409, column: 11, scope: !1087)
!1097 = !DILocation(line: 409, column: 26, scope: !1089)
!1098 = !DILocation(line: 409, column: 14, scope: !1089)
!1099 = !DILocation(line: 400, column: 11, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !944, file: !82, discriminator: 1)
!1101 = !DILocation(line: 416, column: 11, scope: !944)
!1102 = !DILocation(line: 394, column: 21, scope: !944)
!1103 = !DILocation(line: 417, column: 7, scope: !944)
!1104 = !DILocation(line: 420, column: 15, scope: !953)
!1105 = !DILocation(line: 422, column: 15, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1107, file: !82, discriminator: 1)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !82, line: 422, column: 15)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !82, line: 421, column: 13)
!1109 = distinct !DILexicalBlock(scope: !953, file: !82, line: 420, column: 15)
!1110 = !DILocation(line: 422, column: 15, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1112, file: !82, discriminator: 4)
!1112 = distinct !DILexicalBlock(scope: !1107, file: !82, line: 422, column: 15)
!1113 = !DILocation(line: 422, column: 15, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1112, file: !82, discriminator: 3)
!1115 = !DILocation(line: 422, column: 15, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1117, file: !82, discriminator: 6)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !82, line: 422, column: 15)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !82, line: 422, column: 15)
!1119 = distinct !DILexicalBlock(scope: !1112, file: !82, line: 422, column: 15)
!1120 = !DILocation(line: 422, column: 15, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1118, file: !82, discriminator: 6)
!1122 = !DILocation(line: 422, column: 15, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1117, file: !82, discriminator: 7)
!1124 = !DILocation(line: 422, column: 15, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1118, file: !82, discriminator: 8)
!1126 = !DILocation(line: 422, column: 15, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !82, discriminator: 11)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !82, line: 422, column: 15)
!1129 = distinct !DILexicalBlock(scope: !1119, file: !82, line: 422, column: 15)
!1130 = !DILocation(line: 422, column: 15, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1129, file: !82, discriminator: 11)
!1132 = !DILocation(line: 422, column: 15, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1128, file: !82, discriminator: 12)
!1134 = !DILocation(line: 422, column: 15, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1129, file: !82, discriminator: 13)
!1136 = !DILocation(line: 422, column: 15, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1138, file: !82, discriminator: 16)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !82, line: 422, column: 15)
!1139 = distinct !DILexicalBlock(scope: !1119, file: !82, line: 422, column: 15)
!1140 = !DILocation(line: 422, column: 15, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1139, file: !82, discriminator: 16)
!1142 = !DILocation(line: 422, column: 15, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1138, file: !82, discriminator: 17)
!1144 = !DILocation(line: 422, column: 15, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1139, file: !82, discriminator: 18)
!1146 = !DILocation(line: 422, column: 15, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1119, file: !82, discriminator: 20)
!1148 = !DILocation(line: 422, column: 15, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1150, file: !82, discriminator: 22)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !82, line: 422, column: 15)
!1151 = distinct !DILexicalBlock(scope: !1107, file: !82, line: 422, column: 15)
!1152 = !DILocation(line: 422, column: 15, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1151, file: !82, discriminator: 22)
!1154 = !DILocation(line: 422, column: 15, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1150, file: !82, discriminator: 23)
!1156 = !DILocation(line: 422, column: 15, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1151, file: !82, discriminator: 24)
!1158 = !DILocation(line: 430, column: 19, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1108, file: !82, line: 429, column: 19)
!1160 = !DILocation(line: 430, column: 24, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1159, file: !82, discriminator: 1)
!1162 = !DILocation(line: 430, column: 28, scope: !1161)
!1163 = !DILocation(line: 430, column: 38, scope: !1161)
!1164 = !DILocation(line: 430, column: 48, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1159, file: !82, discriminator: 2)
!1166 = !DILocation(line: 430, column: 59, scope: !1165)
!1167 = !DILocation(line: 432, column: 19, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1169, file: !82, discriminator: 1)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !82, line: 432, column: 19)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !82, line: 432, column: 19)
!1171 = distinct !DILexicalBlock(scope: !1159, file: !82, line: 431, column: 17)
!1172 = !DILocation(line: 432, column: 19, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1170, file: !82, discriminator: 1)
!1174 = !DILocation(line: 432, column: 19, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1169, file: !82, discriminator: 2)
!1176 = !DILocation(line: 432, column: 19, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1170, file: !82, discriminator: 3)
!1178 = !DILocation(line: 433, column: 19, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1180, file: !82, discriminator: 1)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !82, line: 433, column: 19)
!1181 = distinct !DILexicalBlock(scope: !1171, file: !82, line: 433, column: 19)
!1182 = !DILocation(line: 433, column: 19, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1181, file: !82, discriminator: 1)
!1184 = !DILocation(line: 433, column: 19, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1180, file: !82, discriminator: 2)
!1186 = !DILocation(line: 433, column: 19, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1181, file: !82, discriminator: 3)
!1188 = !DILocation(line: 434, column: 17, scope: !1171)
!1189 = !DILocation(line: 441, column: 20, scope: !1109)
!1190 = !DILocation(line: 446, column: 11, scope: !953)
!1191 = !DILocation(line: 449, column: 19, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !953, file: !82, line: 447, column: 13)
!1193 = !DILocation(line: 455, column: 19, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1192, file: !82, line: 454, column: 19)
!1195 = !DILocation(line: 455, column: 24, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1194, file: !82, discriminator: 1)
!1197 = !DILocation(line: 455, column: 28, scope: !1196)
!1198 = !DILocation(line: 455, column: 38, scope: !1196)
!1199 = !DILocation(line: 455, column: 47, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1194, file: !82, discriminator: 2)
!1201 = !DILocation(line: 455, column: 41, scope: !1200)
!1202 = !DILocation(line: 455, column: 52, scope: !1200)
!1203 = !DILocation(line: 454, column: 19, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1192, file: !82, discriminator: 1)
!1205 = !DILocation(line: 456, column: 25, scope: !1194)
!1206 = !DILocation(line: 456, column: 17, scope: !1194)
!1207 = !DILocation(line: 463, column: 25, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1194, file: !82, line: 457, column: 19)
!1209 = !DILocation(line: 467, column: 21, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1211, file: !82, discriminator: 1)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !82, line: 467, column: 21)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !82, line: 467, column: 21)
!1213 = !DILocation(line: 467, column: 21, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1212, file: !82, discriminator: 1)
!1215 = !DILocation(line: 467, column: 21, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1211, file: !82, discriminator: 2)
!1217 = !DILocation(line: 467, column: 21, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1212, file: !82, discriminator: 3)
!1219 = !DILocation(line: 468, column: 21, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !82, discriminator: 1)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !82, line: 468, column: 21)
!1222 = distinct !DILexicalBlock(scope: !1208, file: !82, line: 468, column: 21)
!1223 = !DILocation(line: 468, column: 21, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1222, file: !82, discriminator: 1)
!1225 = !DILocation(line: 468, column: 21, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1221, file: !82, discriminator: 2)
!1227 = !DILocation(line: 468, column: 21, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1222, file: !82, discriminator: 3)
!1229 = !DILocation(line: 469, column: 21, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1231, file: !82, discriminator: 1)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !82, line: 469, column: 21)
!1232 = distinct !DILexicalBlock(scope: !1208, file: !82, line: 469, column: 21)
!1233 = !DILocation(line: 469, column: 21, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1232, file: !82, discriminator: 1)
!1235 = !DILocation(line: 469, column: 21, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1231, file: !82, discriminator: 2)
!1237 = !DILocation(line: 469, column: 21, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1232, file: !82, discriminator: 3)
!1239 = !DILocation(line: 470, column: 21, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1241, file: !82, discriminator: 1)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !82, line: 470, column: 21)
!1242 = distinct !DILexicalBlock(scope: !1208, file: !82, line: 470, column: 21)
!1243 = !DILocation(line: 470, column: 21, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1242, file: !82, discriminator: 1)
!1245 = !DILocation(line: 470, column: 21, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1241, file: !82, discriminator: 2)
!1247 = !DILocation(line: 470, column: 21, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1242, file: !82, discriminator: 3)
!1249 = !DILocation(line: 471, column: 21, scope: !1208)
!1250 = !DILocation(line: 395, column: 21, scope: !944)
!1251 = !DILocation(line: 484, column: 31, scope: !953)
!1252 = !DILocation(line: 485, column: 31, scope: !953)
!1253 = !DILocation(line: 487, column: 31, scope: !953)
!1254 = !DILocation(line: 488, column: 31, scope: !953)
!1255 = !DILocation(line: 489, column: 31, scope: !953)
!1256 = !DILocation(line: 492, column: 15, scope: !953)
!1257 = !DILocation(line: 494, column: 19, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !82, line: 493, column: 13)
!1259 = distinct !DILexicalBlock(scope: !953, file: !82, line: 492, column: 15)
!1260 = !DILocation(line: 501, column: 33, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !953, file: !82, line: 501, column: 15)
!1262 = !DILocation(line: 506, column: 15, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !953, file: !82, line: 505, column: 15)
!1264 = !DILocation(line: 510, column: 15, scope: !953)
!1265 = !DILocation(line: 518, column: 26, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !953, file: !82, line: 518, column: 15)
!1267 = !DILocation(line: 518, column: 15, scope: !953)
!1268 = !DILocation(line: 518, column: 40, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1266, file: !82, discriminator: 1)
!1270 = !DILocation(line: 518, column: 47, scope: !1269)
!1271 = !DILocation(line: 522, column: 17, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !953, file: !82, line: 522, column: 15)
!1273 = !DILocation(line: 518, column: 18, scope: !1269)
!1274 = !DILocation(line: 518, column: 65, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1266, file: !82, discriminator: 2)
!1276 = !DILocation(line: 518, column: 15, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !953, file: !82, discriminator: 2)
!1278 = !DILocation(line: 522, column: 15, scope: !953)
!1279 = !DILocation(line: 526, column: 11, scope: !953)
!1280 = !DILocation(line: 541, column: 15, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !953, file: !82, line: 540, column: 15)
!1282 = !DILocation(line: 548, column: 15, scope: !953)
!1283 = !DILocation(line: 550, column: 19, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !82, line: 549, column: 13)
!1285 = distinct !DILexicalBlock(scope: !953, file: !82, line: 548, column: 15)
!1286 = !DILocation(line: 553, column: 19, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !82, line: 553, column: 19)
!1288 = !DILocation(line: 553, column: 35, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1287, file: !82, discriminator: 1)
!1290 = !DILocation(line: 553, column: 30, scope: !1287)
!1291 = !DILocation(line: 562, column: 15, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1293, file: !82, discriminator: 1)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !82, line: 562, column: 15)
!1294 = distinct !DILexicalBlock(scope: !1284, file: !82, line: 562, column: 15)
!1295 = !DILocation(line: 562, column: 15, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1294, file: !82, discriminator: 1)
!1297 = !DILocation(line: 562, column: 15, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1293, file: !82, discriminator: 2)
!1299 = !DILocation(line: 562, column: 15, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1294, file: !82, discriminator: 3)
!1301 = !DILocation(line: 563, column: 15, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1303, file: !82, discriminator: 1)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !82, line: 563, column: 15)
!1304 = distinct !DILexicalBlock(scope: !1284, file: !82, line: 563, column: 15)
!1305 = !DILocation(line: 563, column: 15, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1304, file: !82, discriminator: 1)
!1307 = !DILocation(line: 563, column: 15, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1303, file: !82, discriminator: 2)
!1309 = !DILocation(line: 563, column: 15, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1304, file: !82, discriminator: 3)
!1311 = !DILocation(line: 564, column: 15, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1313, file: !82, discriminator: 1)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !82, line: 564, column: 15)
!1314 = distinct !DILexicalBlock(scope: !1284, file: !82, line: 564, column: 15)
!1315 = !DILocation(line: 564, column: 15, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1314, file: !82, discriminator: 1)
!1317 = !DILocation(line: 564, column: 15, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1313, file: !82, discriminator: 2)
!1319 = !DILocation(line: 564, column: 15, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1314, file: !82, discriminator: 3)
!1321 = !DILocation(line: 566, column: 13, scope: !1284)
!1322 = !DILocation(line: 606, column: 17, scope: !952)
!1323 = !DILocation(line: 602, column: 20, scope: !952)
!1324 = !DILocation(line: 609, column: 29, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !957, file: !82, line: 607, column: 15)
!1326 = !{!1327, !1327, i64 0}
!1327 = !{!"short", !577, i64 0}
!1328 = !DILocation(line: 609, column: 27, scope: !1325)
!1329 = !DILocation(line: 604, column: 18, scope: !952)
!1330 = !DILocation(line: 610, column: 15, scope: !1325)
!1331 = !DILocation(line: 613, column: 17, scope: !956)
!1332 = !DILocation(line: 614, column: 17, scope: !956)
!1333 = !DILocation(line: 618, column: 29, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !956, file: !82, line: 618, column: 21)
!1335 = !DILocation(line: 618, column: 21, scope: !956)
!1336 = distinct !{!1336, !1337, !1338}
!1337 = !DILocation(line: 621, column: 17, scope: !956)
!1338 = !DILocation(line: 667, column: 44, scope: !956)
!1339 = !DILocation(line: 619, column: 29, scope: !1334)
!1340 = !DILocation(line: 619, column: 19, scope: !1334)
!1341 = !DILocation(line: 623, column: 21, scope: !973)
!1342 = !DILocation(line: 624, column: 56, scope: !973)
!1343 = !DILocation(line: 624, column: 50, scope: !973)
!1344 = !DILocation(line: 625, column: 53, scope: !973)
!1345 = !DIExpression(DW_OP_deref)
!1346 = !DILocation(line: 613, column: 27, scope: !956)
!1347 = !DILocation(line: 623, column: 29, scope: !973)
!1348 = !DILocation(line: 624, column: 36, scope: !973)
!1349 = !DILocation(line: 624, column: 28, scope: !973)
!1350 = !DILocation(line: 626, column: 25, scope: !973)
!1351 = !DILocation(line: 636, column: 38, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1353, file: !82, discriminator: 1)
!1353 = distinct !DILexicalBlock(scope: !980, file: !82, line: 634, column: 23)
!1354 = !DILocation(line: 636, column: 48, scope: !1352)
!1355 = !DILocation(line: 636, column: 51, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1353, file: !82, discriminator: 2)
!1357 = !DILocation(line: 636, column: 48, scope: !1356)
!1358 = !DILocation(line: 636, column: 25, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1353, file: !82, discriminator: 3)
!1360 = !DILocation(line: 637, column: 28, scope: !1353)
!1361 = !DILocation(line: 636, column: 34, scope: !1352)
!1362 = distinct !{!1362, !1363, !1360}
!1363 = !DILocation(line: 636, column: 25, scope: !1353)
!1364 = !DILocation(line: 650, column: 43, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1366, file: !82, discriminator: 1)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !82, line: 650, column: 29)
!1367 = distinct !DILexicalBlock(scope: !977, file: !82, line: 650, column: 29)
!1368 = !DILocation(line: 647, column: 29, scope: !978)
!1369 = !DILocation(line: 649, column: 36, scope: !977)
!1370 = !DILocation(line: 651, column: 49, scope: !1366)
!1371 = !DILocation(line: 651, column: 39, scope: !1366)
!1372 = !DILocation(line: 651, column: 31, scope: !1366)
!1373 = !DILocation(line: 650, column: 53, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1366, file: !82, discriminator: 2)
!1375 = !DILocation(line: 650, column: 29, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1367, file: !82, discriminator: 1)
!1377 = distinct !{!1377, !1378, !1379}
!1378 = !DILocation(line: 650, column: 29, scope: !1367)
!1379 = !DILocation(line: 659, column: 33, scope: !1367)
!1380 = !DILocation(line: 666, column: 19, scope: !956)
!1381 = !DILocation(line: 662, column: 41, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !979, file: !82, line: 662, column: 29)
!1383 = !DILocation(line: 662, column: 31, scope: !1382)
!1384 = !DILocation(line: 662, column: 29, scope: !979)
!1385 = !DILocation(line: 664, column: 27, scope: !979)
!1386 = !DILocation(line: 667, column: 26, scope: !956)
!1387 = !DILocation(line: 667, column: 24, scope: !956)
!1388 = !DILocation(line: 666, column: 19, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !973, file: !82, discriminator: 3)
!1390 = !DILocation(line: 668, column: 15, scope: !957)
!1391 = !DILocation(line: 670, column: 40, scope: !952)
!1392 = !DILocation(line: 672, column: 19, scope: !985)
!1393 = !DILocation(line: 672, column: 45, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !985, file: !82, discriminator: 1)
!1395 = !DILocation(line: 672, column: 23, scope: !985)
!1396 = !DILocation(line: 676, column: 33, scope: !984)
!1397 = !DILocation(line: 676, column: 24, scope: !984)
!1398 = !DILocation(line: 678, column: 17, scope: !984)
!1399 = !DILocation(line: 680, column: 43, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !82, line: 680, column: 25)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !82, line: 679, column: 19)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !82, line: 678, column: 17)
!1403 = distinct !DILexicalBlock(scope: !984, file: !82, line: 678, column: 17)
!1404 = !DILocation(line: 682, column: 25, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1406, file: !82, discriminator: 1)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !82, line: 682, column: 25)
!1407 = distinct !DILexicalBlock(scope: !1400, file: !82, line: 681, column: 23)
!1408 = !DILocation(line: 682, column: 25, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1410, file: !82, discriminator: 4)
!1410 = distinct !DILexicalBlock(scope: !1406, file: !82, line: 682, column: 25)
!1411 = !DILocation(line: 682, column: 25, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1410, file: !82, discriminator: 3)
!1413 = !DILocation(line: 682, column: 25, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1415, file: !82, discriminator: 6)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !82, line: 682, column: 25)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !82, line: 682, column: 25)
!1417 = distinct !DILexicalBlock(scope: !1410, file: !82, line: 682, column: 25)
!1418 = !DILocation(line: 682, column: 25, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1416, file: !82, discriminator: 6)
!1420 = !DILocation(line: 682, column: 25, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1415, file: !82, discriminator: 7)
!1422 = !DILocation(line: 682, column: 25, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1416, file: !82, discriminator: 8)
!1424 = !DILocation(line: 682, column: 25, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1426, file: !82, discriminator: 11)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !82, line: 682, column: 25)
!1427 = distinct !DILexicalBlock(scope: !1417, file: !82, line: 682, column: 25)
!1428 = !DILocation(line: 682, column: 25, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1427, file: !82, discriminator: 11)
!1430 = !DILocation(line: 682, column: 25, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1426, file: !82, discriminator: 12)
!1432 = !DILocation(line: 682, column: 25, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1427, file: !82, discriminator: 13)
!1434 = !DILocation(line: 682, column: 25, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1436, file: !82, discriminator: 16)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !82, line: 682, column: 25)
!1437 = distinct !DILexicalBlock(scope: !1417, file: !82, line: 682, column: 25)
!1438 = !DILocation(line: 682, column: 25, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1437, file: !82, discriminator: 16)
!1440 = !DILocation(line: 682, column: 25, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1436, file: !82, discriminator: 17)
!1442 = !DILocation(line: 682, column: 25, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1437, file: !82, discriminator: 18)
!1444 = !DILocation(line: 682, column: 25, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1417, file: !82, discriminator: 20)
!1446 = !DILocation(line: 682, column: 25, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1448, file: !82, discriminator: 22)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !82, line: 682, column: 25)
!1449 = distinct !DILexicalBlock(scope: !1406, file: !82, line: 682, column: 25)
!1450 = !DILocation(line: 682, column: 25, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1449, file: !82, discriminator: 22)
!1452 = !DILocation(line: 682, column: 25, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1448, file: !82, discriminator: 23)
!1454 = !DILocation(line: 682, column: 25, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1449, file: !82, discriminator: 24)
!1456 = !DILocation(line: 683, column: 25, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1458, file: !82, discriminator: 1)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !82, line: 683, column: 25)
!1459 = distinct !DILexicalBlock(scope: !1407, file: !82, line: 683, column: 25)
!1460 = !DILocation(line: 683, column: 25, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1459, file: !82, discriminator: 1)
!1462 = !DILocation(line: 683, column: 25, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1458, file: !82, discriminator: 2)
!1464 = !DILocation(line: 683, column: 25, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1459, file: !82, discriminator: 3)
!1466 = !DILocation(line: 684, column: 25, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1468, file: !82, discriminator: 1)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !82, line: 684, column: 25)
!1469 = distinct !DILexicalBlock(scope: !1407, file: !82, line: 684, column: 25)
!1470 = !DILocation(line: 684, column: 25, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1469, file: !82, discriminator: 1)
!1472 = !DILocation(line: 684, column: 25, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1468, file: !82, discriminator: 2)
!1474 = !DILocation(line: 684, column: 25, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1469, file: !82, discriminator: 3)
!1476 = !DILocation(line: 685, column: 38, scope: !1407)
!1477 = !DILocation(line: 685, column: 33, scope: !1407)
!1478 = !DILocation(line: 686, column: 23, scope: !1407)
!1479 = !DILocation(line: 687, column: 30, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1400, file: !82, line: 687, column: 30)
!1481 = !DILocation(line: 687, column: 30, scope: !1400)
!1482 = !DILocation(line: 689, column: 25, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1484, file: !82, discriminator: 1)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !82, line: 689, column: 25)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !82, line: 689, column: 25)
!1486 = distinct !DILexicalBlock(scope: !1480, file: !82, line: 688, column: 23)
!1487 = !DILocation(line: 689, column: 25, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1485, file: !82, discriminator: 1)
!1489 = !DILocation(line: 689, column: 25, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1484, file: !82, discriminator: 2)
!1491 = !DILocation(line: 689, column: 25, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1485, file: !82, discriminator: 3)
!1493 = !DILocation(line: 691, column: 23, scope: !1486)
!1494 = !DILocation(line: 692, column: 35, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1401, file: !82, line: 692, column: 25)
!1496 = !DILocation(line: 692, column: 30, scope: !1495)
!1497 = !DILocation(line: 692, column: 25, scope: !1401)
!1498 = !DILocation(line: 694, column: 21, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1500, file: !82, discriminator: 1)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !82, line: 694, column: 21)
!1501 = distinct !DILexicalBlock(scope: !1401, file: !82, line: 694, column: 21)
!1502 = !DILocation(line: 694, column: 21, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1500, file: !82, discriminator: 2)
!1504 = !DILocation(line: 694, column: 21, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1506, file: !82, discriminator: 4)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !82, line: 694, column: 21)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !82, line: 694, column: 21)
!1508 = distinct !DILexicalBlock(scope: !1500, file: !82, line: 694, column: 21)
!1509 = !DILocation(line: 694, column: 21, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1507, file: !82, discriminator: 4)
!1511 = !DILocation(line: 694, column: 21, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1506, file: !82, discriminator: 5)
!1513 = !DILocation(line: 694, column: 21, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1507, file: !82, discriminator: 6)
!1515 = !DILocation(line: 694, column: 21, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1517, file: !82, discriminator: 9)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !82, line: 694, column: 21)
!1518 = distinct !DILexicalBlock(scope: !1508, file: !82, line: 694, column: 21)
!1519 = !DILocation(line: 694, column: 21, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1518, file: !82, discriminator: 9)
!1521 = !DILocation(line: 694, column: 21, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1517, file: !82, discriminator: 10)
!1523 = !DILocation(line: 694, column: 21, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1518, file: !82, discriminator: 11)
!1525 = !DILocation(line: 694, column: 21, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1508, file: !82, discriminator: 13)
!1527 = !DILocation(line: 695, column: 21, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1529, file: !82, discriminator: 1)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !82, line: 695, column: 21)
!1530 = distinct !DILexicalBlock(scope: !1401, file: !82, line: 695, column: 21)
!1531 = !DILocation(line: 695, column: 21, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1530, file: !82, discriminator: 1)
!1533 = !DILocation(line: 695, column: 21, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1529, file: !82, discriminator: 2)
!1535 = !DILocation(line: 695, column: 21, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1530, file: !82, discriminator: 3)
!1537 = !DILocation(line: 696, column: 25, scope: !1401)
!1538 = !DILocation(line: 678, column: 17, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1402, file: !82, discriminator: 1)
!1540 = distinct !{!1540, !1541, !1542}
!1541 = !DILocation(line: 678, column: 17, scope: !1403)
!1542 = !DILocation(line: 697, column: 19, scope: !1403)
!1543 = !DILocation(line: 704, column: 34, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !944, file: !82, line: 704, column: 11)
!1545 = !DILocation(line: 706, column: 14, scope: !1544)
!1546 = !DILocation(line: 707, column: 14, scope: !1544)
!1547 = !DILocation(line: 707, column: 35, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1544, file: !82, discriminator: 1)
!1549 = !DILocation(line: 707, column: 17, scope: !1548)
!1550 = !DILocation(line: 707, column: 53, scope: !1548)
!1551 = !DILocation(line: 707, column: 47, scope: !1548)
!1552 = !DILocation(line: 707, column: 65, scope: !1548)
!1553 = !DILocation(line: 708, column: 15, scope: !1548)
!1554 = !DILocation(line: 708, column: 11, scope: !1544)
!1555 = !DILocation(line: 704, column: 11, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !944, file: !82, discriminator: 2)
!1557 = !DILocation(line: 712, column: 7, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1559, file: !82, discriminator: 1)
!1559 = distinct !DILexicalBlock(scope: !944, file: !82, line: 712, column: 7)
!1560 = !DILocation(line: 712, column: 7, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1562, file: !82, discriminator: 4)
!1562 = distinct !DILexicalBlock(scope: !1559, file: !82, line: 712, column: 7)
!1563 = !DILocation(line: 712, column: 7, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1562, file: !82, discriminator: 3)
!1565 = !DILocation(line: 712, column: 7, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1567, file: !82, discriminator: 6)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !82, line: 712, column: 7)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !82, line: 712, column: 7)
!1569 = distinct !DILexicalBlock(scope: !1562, file: !82, line: 712, column: 7)
!1570 = !DILocation(line: 712, column: 7, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1568, file: !82, discriminator: 6)
!1572 = !DILocation(line: 712, column: 7, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1567, file: !82, discriminator: 7)
!1574 = !DILocation(line: 712, column: 7, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1568, file: !82, discriminator: 8)
!1576 = !DILocation(line: 712, column: 7, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1578, file: !82, discriminator: 11)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !82, line: 712, column: 7)
!1579 = distinct !DILexicalBlock(scope: !1569, file: !82, line: 712, column: 7)
!1580 = !DILocation(line: 712, column: 7, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1579, file: !82, discriminator: 11)
!1582 = !DILocation(line: 712, column: 7, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1578, file: !82, discriminator: 12)
!1584 = !DILocation(line: 712, column: 7, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1579, file: !82, discriminator: 13)
!1586 = !DILocation(line: 712, column: 7, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1588, file: !82, discriminator: 16)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !82, line: 712, column: 7)
!1589 = distinct !DILexicalBlock(scope: !1569, file: !82, line: 712, column: 7)
!1590 = !DILocation(line: 712, column: 7, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1589, file: !82, discriminator: 16)
!1592 = !DILocation(line: 712, column: 7, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1588, file: !82, discriminator: 17)
!1594 = !DILocation(line: 712, column: 7, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1589, file: !82, discriminator: 18)
!1596 = !DILocation(line: 712, column: 7, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1569, file: !82, discriminator: 20)
!1598 = !DILocation(line: 712, column: 7, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1600, file: !82, discriminator: 22)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !82, line: 712, column: 7)
!1601 = distinct !DILexicalBlock(scope: !1559, file: !82, line: 712, column: 7)
!1602 = !DILocation(line: 712, column: 7, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1601, file: !82, discriminator: 22)
!1604 = !DILocation(line: 712, column: 7, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1600, file: !82, discriminator: 23)
!1606 = !DILocation(line: 712, column: 7, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1601, file: !82, discriminator: 24)
!1608 = !DILocation(line: 715, column: 7, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1610, file: !82, discriminator: 1)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !82, line: 715, column: 7)
!1611 = distinct !DILexicalBlock(scope: !944, file: !82, line: 715, column: 7)
!1612 = !DILocation(line: 715, column: 7, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1610, file: !82, discriminator: 2)
!1614 = !DILocation(line: 715, column: 7, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1616, file: !82, discriminator: 4)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !82, line: 715, column: 7)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !82, line: 715, column: 7)
!1618 = distinct !DILexicalBlock(scope: !1610, file: !82, line: 715, column: 7)
!1619 = !DILocation(line: 715, column: 7, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1617, file: !82, discriminator: 4)
!1621 = !DILocation(line: 715, column: 7, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1616, file: !82, discriminator: 5)
!1623 = !DILocation(line: 715, column: 7, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1617, file: !82, discriminator: 6)
!1625 = !DILocation(line: 715, column: 7, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1627, file: !82, discriminator: 9)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !82, line: 715, column: 7)
!1628 = distinct !DILexicalBlock(scope: !1618, file: !82, line: 715, column: 7)
!1629 = !DILocation(line: 715, column: 7, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1628, file: !82, discriminator: 9)
!1631 = !DILocation(line: 715, column: 7, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1627, file: !82, discriminator: 10)
!1633 = !DILocation(line: 715, column: 7, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1628, file: !82, discriminator: 11)
!1635 = !DILocation(line: 715, column: 7, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1618, file: !82, discriminator: 13)
!1637 = !DILocation(line: 716, column: 7, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1639, file: !82, discriminator: 1)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !82, line: 716, column: 7)
!1640 = distinct !DILexicalBlock(scope: !944, file: !82, line: 716, column: 7)
!1641 = !DILocation(line: 716, column: 7, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1640, file: !82, discriminator: 1)
!1643 = !DILocation(line: 716, column: 7, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1639, file: !82, discriminator: 2)
!1645 = !DILocation(line: 716, column: 7, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1640, file: !82, discriminator: 3)
!1647 = !DILocation(line: 718, column: 13, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !944, file: !82, line: 718, column: 11)
!1649 = !DILocation(line: 718, column: 11, scope: !944)
!1650 = !DILocation(line: 720, column: 5, scope: !945)
!1651 = !DILocation(line: 392, column: 75, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !945, file: !82, discriminator: 5)
!1653 = !DILocation(line: 392, column: 3, scope: !1652)
!1654 = distinct !{!1654, !1655, !1656}
!1655 = !DILocation(line: 392, column: 3, scope: !946)
!1656 = !DILocation(line: 720, column: 5, scope: !946)
!1657 = !DILocation(line: 722, column: 11, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !917, file: !82, line: 722, column: 7)
!1659 = !DILocation(line: 722, column: 16, scope: !1658)
!1660 = !DILocation(line: 730, column: 51, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !917, file: !82, line: 730, column: 7)
!1662 = !DILocation(line: 731, column: 10, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1661, file: !82, discriminator: 1)
!1664 = !DILocation(line: 733, column: 11, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !82, line: 733, column: 11)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !82, line: 732, column: 5)
!1667 = !DILocation(line: 733, column: 11, scope: !1666)
!1668 = !DILocation(line: 734, column: 16, scope: !1665)
!1669 = !DILocation(line: 734, column: 9, scope: !1665)
!1670 = !DILocation(line: 738, column: 18, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1665, file: !82, line: 738, column: 16)
!1672 = !DILocation(line: 738, column: 32, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1671, file: !82, discriminator: 1)
!1674 = !DILocation(line: 738, column: 29, scope: !1671)
!1675 = !DILocation(line: 747, column: 7, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !917, file: !82, line: 747, column: 7)
!1677 = !DILocation(line: 747, column: 20, scope: !1676)
!1678 = !DILocation(line: 748, column: 12, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1680, file: !82, discriminator: 1)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !82, line: 748, column: 5)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !82, line: 748, column: 5)
!1682 = !DILocation(line: 748, column: 5, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1681, file: !82, discriminator: 1)
!1684 = !DILocation(line: 749, column: 7, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1686, file: !82, discriminator: 1)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !82, line: 749, column: 7)
!1687 = distinct !DILexicalBlock(scope: !1680, file: !82, line: 749, column: 7)
!1688 = !DILocation(line: 749, column: 7, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1687, file: !82, discriminator: 1)
!1690 = !DILocation(line: 749, column: 7, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1686, file: !82, discriminator: 2)
!1692 = !DILocation(line: 749, column: 7, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1687, file: !82, discriminator: 3)
!1694 = !DILocation(line: 748, column: 39, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1680, file: !82, discriminator: 2)
!1696 = distinct !{!1696, !1697, !1698}
!1697 = !DILocation(line: 748, column: 5, scope: !1681)
!1698 = !DILocation(line: 749, column: 7, scope: !1681)
!1699 = !DILocation(line: 751, column: 11, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !917, file: !82, line: 751, column: 7)
!1701 = !DILocation(line: 751, column: 7, scope: !917)
!1702 = !DILocation(line: 752, column: 5, scope: !1700)
!1703 = !DILocation(line: 752, column: 17, scope: !1700)
!1704 = !DILocation(line: 758, column: 21, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !917, file: !82, line: 758, column: 7)
!1706 = !DILocation(line: 758, column: 54, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1705, file: !82, discriminator: 1)
!1708 = !DILocation(line: 758, column: 51, scope: !1705)
!1709 = !DILocation(line: 762, column: 42, scope: !917)
!1710 = !DILocation(line: 760, column: 10, scope: !917)
!1711 = !DILocation(line: 760, column: 3, scope: !917)
!1712 = !DILocation(line: 764, column: 1, scope: !917)
!1713 = distinct !DISubprogram(name: "gettext_quote", scope: !82, file: !82, line: 199, type: !1714, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1716)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!6, !6, !40}
!1716 = !{!1717, !1718, !1719, !1720}
!1717 = !DILocalVariable(name: "msgid", arg: 1, scope: !1713, file: !82, line: 199, type: !6)
!1718 = !DILocalVariable(name: "s", arg: 2, scope: !1713, file: !82, line: 199, type: !40)
!1719 = !DILocalVariable(name: "translation", scope: !1713, file: !82, line: 201, type: !6)
!1720 = !DILocalVariable(name: "locale_code", scope: !1713, file: !82, line: 202, type: !6)
!1721 = !DILocation(line: 199, column: 28, scope: !1713)
!1722 = !DILocation(line: 199, column: 54, scope: !1713)
!1723 = !DILocation(line: 201, column: 29, scope: !1713)
!1724 = !DILocation(line: 201, column: 15, scope: !1713)
!1725 = !DILocation(line: 204, column: 19, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1713, file: !82, line: 204, column: 7)
!1727 = !DILocation(line: 204, column: 7, scope: !1713)
!1728 = !DILocation(line: 225, column: 17, scope: !1713)
!1729 = !DILocation(line: 202, column: 15, scope: !1713)
!1730 = !DILocalVariable(name: "s2", arg: 2, scope: !1731, file: !1732, line: 160, type: !6)
!1731 = distinct !DISubprogram(name: "strcaseeq0", scope: !1732, file: !1732, line: 160, type: !1733, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1735)
!1732 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1735 = !{!1736, !1730, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745}
!1736 = !DILocalVariable(name: "s1", arg: 1, scope: !1731, file: !1732, line: 160, type: !6)
!1737 = !DILocalVariable(name: "s20", arg: 3, scope: !1731, file: !1732, line: 160, type: !8)
!1738 = !DILocalVariable(name: "s21", arg: 4, scope: !1731, file: !1732, line: 160, type: !8)
!1739 = !DILocalVariable(name: "s22", arg: 5, scope: !1731, file: !1732, line: 160, type: !8)
!1740 = !DILocalVariable(name: "s23", arg: 6, scope: !1731, file: !1732, line: 160, type: !8)
!1741 = !DILocalVariable(name: "s24", arg: 7, scope: !1731, file: !1732, line: 160, type: !8)
!1742 = !DILocalVariable(name: "s25", arg: 8, scope: !1731, file: !1732, line: 160, type: !8)
!1743 = !DILocalVariable(name: "s26", arg: 9, scope: !1731, file: !1732, line: 160, type: !8)
!1744 = !DILocalVariable(name: "s27", arg: 10, scope: !1731, file: !1732, line: 160, type: !8)
!1745 = !DILocalVariable(name: "s28", arg: 11, scope: !1731, file: !1732, line: 160, type: !8)
!1746 = !DILocation(line: 160, column: 41, scope: !1731, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 226, column: 7, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1713, file: !82, line: 226, column: 7)
!1749 = !DILocation(line: 160, column: 120, scope: !1731, inlinedAt: !1747)
!1750 = !DILocation(line: 160, column: 130, scope: !1731, inlinedAt: !1747)
!1751 = !DILocation(line: 162, column: 7, scope: !1752, inlinedAt: !1747)
!1752 = !DILexicalBlockFile(scope: !1753, file: !1732, discriminator: 1)
!1753 = distinct !DILexicalBlock(scope: !1731, file: !1732, line: 162, column: 7)
!1754 = !DILocalVariable(name: "s2", arg: 2, scope: !1755, file: !1732, line: 146, type: !6)
!1755 = distinct !DISubprogram(name: "strcaseeq1", scope: !1732, file: !1732, line: 146, type: !1756, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1758 = !{!1759, !1754, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767}
!1759 = !DILocalVariable(name: "s1", arg: 1, scope: !1755, file: !1732, line: 146, type: !6)
!1760 = !DILocalVariable(name: "s21", arg: 3, scope: !1755, file: !1732, line: 146, type: !8)
!1761 = !DILocalVariable(name: "s22", arg: 4, scope: !1755, file: !1732, line: 146, type: !8)
!1762 = !DILocalVariable(name: "s23", arg: 5, scope: !1755, file: !1732, line: 146, type: !8)
!1763 = !DILocalVariable(name: "s24", arg: 6, scope: !1755, file: !1732, line: 146, type: !8)
!1764 = !DILocalVariable(name: "s25", arg: 7, scope: !1755, file: !1732, line: 146, type: !8)
!1765 = !DILocalVariable(name: "s26", arg: 8, scope: !1755, file: !1732, line: 146, type: !8)
!1766 = !DILocalVariable(name: "s27", arg: 9, scope: !1755, file: !1732, line: 146, type: !8)
!1767 = !DILocalVariable(name: "s28", arg: 10, scope: !1755, file: !1732, line: 146, type: !8)
!1768 = !DILocation(line: 146, column: 41, scope: !1755, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 167, column: 16, scope: !1770, inlinedAt: !1747)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !1732, line: 164, column: 11)
!1771 = distinct !DILexicalBlock(scope: !1753, file: !1732, line: 163, column: 5)
!1772 = !DILocation(line: 146, column: 110, scope: !1755, inlinedAt: !1769)
!1773 = !DILocation(line: 146, column: 120, scope: !1755, inlinedAt: !1769)
!1774 = !DILocation(line: 148, column: 7, scope: !1775, inlinedAt: !1769)
!1775 = !DILexicalBlockFile(scope: !1776, file: !1732, discriminator: 1)
!1776 = distinct !DILexicalBlock(scope: !1755, file: !1732, line: 148, column: 7)
!1777 = !DILocalVariable(name: "s2", arg: 2, scope: !1778, file: !1732, line: 132, type: !6)
!1778 = distinct !DISubprogram(name: "strcaseeq2", scope: !1732, file: !1732, line: 132, type: !1779, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1781)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1781 = !{!1782, !1777, !1783, !1784, !1785, !1786, !1787, !1788, !1789}
!1782 = !DILocalVariable(name: "s1", arg: 1, scope: !1778, file: !1732, line: 132, type: !6)
!1783 = !DILocalVariable(name: "s22", arg: 3, scope: !1778, file: !1732, line: 132, type: !8)
!1784 = !DILocalVariable(name: "s23", arg: 4, scope: !1778, file: !1732, line: 132, type: !8)
!1785 = !DILocalVariable(name: "s24", arg: 5, scope: !1778, file: !1732, line: 132, type: !8)
!1786 = !DILocalVariable(name: "s25", arg: 6, scope: !1778, file: !1732, line: 132, type: !8)
!1787 = !DILocalVariable(name: "s26", arg: 7, scope: !1778, file: !1732, line: 132, type: !8)
!1788 = !DILocalVariable(name: "s27", arg: 8, scope: !1778, file: !1732, line: 132, type: !8)
!1789 = !DILocalVariable(name: "s28", arg: 9, scope: !1778, file: !1732, line: 132, type: !8)
!1790 = !DILocation(line: 132, column: 41, scope: !1778, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 153, column: 16, scope: !1792, inlinedAt: !1769)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !1732, line: 150, column: 11)
!1793 = distinct !DILexicalBlock(scope: !1776, file: !1732, line: 149, column: 5)
!1794 = !DILocation(line: 132, column: 100, scope: !1778, inlinedAt: !1791)
!1795 = !DILocation(line: 132, column: 110, scope: !1778, inlinedAt: !1791)
!1796 = !DILocation(line: 134, column: 7, scope: !1797, inlinedAt: !1791)
!1797 = !DILexicalBlockFile(scope: !1798, file: !1732, discriminator: 1)
!1798 = distinct !DILexicalBlock(scope: !1778, file: !1732, line: 134, column: 7)
!1799 = !DILocalVariable(name: "s2", arg: 2, scope: !1800, file: !1732, line: 118, type: !6)
!1800 = distinct !DISubprogram(name: "strcaseeq3", scope: !1732, file: !1732, line: 118, type: !1801, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1803)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1803 = !{!1804, !1799, !1805, !1806, !1807, !1808, !1809, !1810}
!1804 = !DILocalVariable(name: "s1", arg: 1, scope: !1800, file: !1732, line: 118, type: !6)
!1805 = !DILocalVariable(name: "s23", arg: 3, scope: !1800, file: !1732, line: 118, type: !8)
!1806 = !DILocalVariable(name: "s24", arg: 4, scope: !1800, file: !1732, line: 118, type: !8)
!1807 = !DILocalVariable(name: "s25", arg: 5, scope: !1800, file: !1732, line: 118, type: !8)
!1808 = !DILocalVariable(name: "s26", arg: 6, scope: !1800, file: !1732, line: 118, type: !8)
!1809 = !DILocalVariable(name: "s27", arg: 7, scope: !1800, file: !1732, line: 118, type: !8)
!1810 = !DILocalVariable(name: "s28", arg: 8, scope: !1800, file: !1732, line: 118, type: !8)
!1811 = !DILocation(line: 118, column: 41, scope: !1800, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 139, column: 16, scope: !1813, inlinedAt: !1791)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !1732, line: 136, column: 11)
!1814 = distinct !DILexicalBlock(scope: !1798, file: !1732, line: 135, column: 5)
!1815 = !DILocation(line: 118, column: 90, scope: !1800, inlinedAt: !1812)
!1816 = !DILocation(line: 118, column: 100, scope: !1800, inlinedAt: !1812)
!1817 = !DILocation(line: 120, column: 7, scope: !1818, inlinedAt: !1812)
!1818 = !DILexicalBlockFile(scope: !1819, file: !1732, discriminator: 2)
!1819 = distinct !DILexicalBlock(scope: !1800, file: !1732, line: 120, column: 7)
!1820 = !DILocation(line: 120, column: 7, scope: !1821, inlinedAt: !1812)
!1821 = !DILexicalBlockFile(scope: !1800, file: !1732, discriminator: 2)
!1822 = !DILocalVariable(name: "s2", arg: 2, scope: !1823, file: !1732, line: 104, type: !6)
!1823 = distinct !DISubprogram(name: "strcaseeq4", scope: !1732, file: !1732, line: 104, type: !1824, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1826 = !{!1827, !1822, !1828, !1829, !1830, !1831, !1832}
!1827 = !DILocalVariable(name: "s1", arg: 1, scope: !1823, file: !1732, line: 104, type: !6)
!1828 = !DILocalVariable(name: "s24", arg: 3, scope: !1823, file: !1732, line: 104, type: !8)
!1829 = !DILocalVariable(name: "s25", arg: 4, scope: !1823, file: !1732, line: 104, type: !8)
!1830 = !DILocalVariable(name: "s26", arg: 5, scope: !1823, file: !1732, line: 104, type: !8)
!1831 = !DILocalVariable(name: "s27", arg: 6, scope: !1823, file: !1732, line: 104, type: !8)
!1832 = !DILocalVariable(name: "s28", arg: 7, scope: !1823, file: !1732, line: 104, type: !8)
!1833 = !DILocation(line: 104, column: 41, scope: !1823, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 125, column: 16, scope: !1835, inlinedAt: !1812)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !1732, line: 122, column: 11)
!1836 = distinct !DILexicalBlock(scope: !1819, file: !1732, line: 121, column: 5)
!1837 = !DILocation(line: 104, column: 80, scope: !1823, inlinedAt: !1834)
!1838 = !DILocation(line: 104, column: 90, scope: !1823, inlinedAt: !1834)
!1839 = !DILocation(line: 106, column: 7, scope: !1840, inlinedAt: !1834)
!1840 = !DILexicalBlockFile(scope: !1841, file: !1732, discriminator: 2)
!1841 = distinct !DILexicalBlock(scope: !1823, file: !1732, line: 106, column: 7)
!1842 = !DILocation(line: 106, column: 7, scope: !1843, inlinedAt: !1834)
!1843 = !DILexicalBlockFile(scope: !1823, file: !1732, discriminator: 2)
!1844 = !DILocalVariable(name: "s2", arg: 2, scope: !1845, file: !1732, line: 90, type: !6)
!1845 = distinct !DISubprogram(name: "strcaseeq5", scope: !1732, file: !1732, line: 90, type: !1846, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1848)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!25, !6, !6, !8, !8, !8, !8}
!1848 = !{!1849, !1844, !1850, !1851, !1852, !1853}
!1849 = !DILocalVariable(name: "s1", arg: 1, scope: !1845, file: !1732, line: 90, type: !6)
!1850 = !DILocalVariable(name: "s25", arg: 3, scope: !1845, file: !1732, line: 90, type: !8)
!1851 = !DILocalVariable(name: "s26", arg: 4, scope: !1845, file: !1732, line: 90, type: !8)
!1852 = !DILocalVariable(name: "s27", arg: 5, scope: !1845, file: !1732, line: 90, type: !8)
!1853 = !DILocalVariable(name: "s28", arg: 6, scope: !1845, file: !1732, line: 90, type: !8)
!1854 = !DILocation(line: 90, column: 41, scope: !1845, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 111, column: 16, scope: !1856, inlinedAt: !1834)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !1732, line: 108, column: 11)
!1857 = distinct !DILexicalBlock(scope: !1841, file: !1732, line: 107, column: 5)
!1858 = !DILocation(line: 90, column: 70, scope: !1845, inlinedAt: !1855)
!1859 = !DILocation(line: 90, column: 80, scope: !1845, inlinedAt: !1855)
!1860 = !DILocation(line: 92, column: 7, scope: !1861, inlinedAt: !1855)
!1861 = !DILexicalBlockFile(scope: !1862, file: !1732, discriminator: 2)
!1862 = distinct !DILexicalBlock(scope: !1845, file: !1732, line: 92, column: 7)
!1863 = !DILocation(line: 92, column: 7, scope: !1864, inlinedAt: !1855)
!1864 = !DILexicalBlockFile(scope: !1845, file: !1732, discriminator: 2)
!1865 = !DILocation(line: 227, column: 12, scope: !1748)
!1866 = !DILocation(line: 227, column: 21, scope: !1748)
!1867 = !DILocation(line: 227, column: 5, scope: !1748)
!1868 = !DILocation(line: 146, column: 41, scope: !1755, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 167, column: 16, scope: !1770, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 228, column: 7, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1713, file: !82, line: 228, column: 7)
!1872 = !DILocation(line: 146, column: 110, scope: !1755, inlinedAt: !1869)
!1873 = !DILocation(line: 146, column: 120, scope: !1755, inlinedAt: !1869)
!1874 = !DILocation(line: 148, column: 7, scope: !1775, inlinedAt: !1869)
!1875 = !DILocation(line: 132, column: 41, scope: !1778, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 153, column: 16, scope: !1792, inlinedAt: !1869)
!1877 = !DILocation(line: 132, column: 100, scope: !1778, inlinedAt: !1876)
!1878 = !DILocation(line: 132, column: 110, scope: !1778, inlinedAt: !1876)
!1879 = !DILocation(line: 134, column: 7, scope: !1880, inlinedAt: !1876)
!1880 = !DILexicalBlockFile(scope: !1798, file: !1732, discriminator: 2)
!1881 = !DILocation(line: 134, column: 7, scope: !1882, inlinedAt: !1876)
!1882 = !DILexicalBlockFile(scope: !1778, file: !1732, discriminator: 2)
!1883 = !DILocation(line: 118, column: 41, scope: !1800, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 139, column: 16, scope: !1813, inlinedAt: !1876)
!1885 = !DILocation(line: 118, column: 90, scope: !1800, inlinedAt: !1884)
!1886 = !DILocation(line: 118, column: 100, scope: !1800, inlinedAt: !1884)
!1887 = !DILocation(line: 120, column: 7, scope: !1818, inlinedAt: !1884)
!1888 = !DILocation(line: 120, column: 7, scope: !1821, inlinedAt: !1884)
!1889 = !DILocation(line: 104, column: 41, scope: !1823, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 125, column: 16, scope: !1835, inlinedAt: !1884)
!1891 = !DILocation(line: 104, column: 80, scope: !1823, inlinedAt: !1890)
!1892 = !DILocation(line: 104, column: 90, scope: !1823, inlinedAt: !1890)
!1893 = !DILocation(line: 106, column: 7, scope: !1840, inlinedAt: !1890)
!1894 = !DILocation(line: 106, column: 7, scope: !1843, inlinedAt: !1890)
!1895 = !DILocation(line: 90, column: 41, scope: !1845, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 111, column: 16, scope: !1856, inlinedAt: !1890)
!1897 = !DILocation(line: 90, column: 70, scope: !1845, inlinedAt: !1896)
!1898 = !DILocation(line: 90, column: 80, scope: !1845, inlinedAt: !1896)
!1899 = !DILocation(line: 92, column: 7, scope: !1861, inlinedAt: !1896)
!1900 = !DILocation(line: 92, column: 7, scope: !1864, inlinedAt: !1896)
!1901 = !DILocalVariable(name: "s2", arg: 2, scope: !1902, file: !1732, line: 76, type: !6)
!1902 = distinct !DISubprogram(name: "strcaseeq6", scope: !1732, file: !1732, line: 76, type: !1903, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1905)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!25, !6, !6, !8, !8, !8}
!1905 = !{!1906, !1901, !1907, !1908, !1909}
!1906 = !DILocalVariable(name: "s1", arg: 1, scope: !1902, file: !1732, line: 76, type: !6)
!1907 = !DILocalVariable(name: "s26", arg: 3, scope: !1902, file: !1732, line: 76, type: !8)
!1908 = !DILocalVariable(name: "s27", arg: 4, scope: !1902, file: !1732, line: 76, type: !8)
!1909 = !DILocalVariable(name: "s28", arg: 5, scope: !1902, file: !1732, line: 76, type: !8)
!1910 = !DILocation(line: 76, column: 41, scope: !1902, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 97, column: 16, scope: !1912, inlinedAt: !1896)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !1732, line: 94, column: 11)
!1913 = distinct !DILexicalBlock(scope: !1862, file: !1732, line: 93, column: 5)
!1914 = !DILocation(line: 76, column: 60, scope: !1902, inlinedAt: !1911)
!1915 = !DILocation(line: 76, column: 70, scope: !1902, inlinedAt: !1911)
!1916 = !DILocation(line: 78, column: 7, scope: !1917, inlinedAt: !1911)
!1917 = !DILexicalBlockFile(scope: !1918, file: !1732, discriminator: 2)
!1918 = distinct !DILexicalBlock(scope: !1902, file: !1732, line: 78, column: 7)
!1919 = !DILocation(line: 78, column: 7, scope: !1920, inlinedAt: !1911)
!1920 = !DILexicalBlockFile(scope: !1902, file: !1732, discriminator: 2)
!1921 = !DILocalVariable(name: "s2", arg: 2, scope: !1922, file: !1732, line: 62, type: !6)
!1922 = distinct !DISubprogram(name: "strcaseeq7", scope: !1732, file: !1732, line: 62, type: !1923, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1925)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!25, !6, !6, !8, !8}
!1925 = !{!1926, !1921, !1927, !1928}
!1926 = !DILocalVariable(name: "s1", arg: 1, scope: !1922, file: !1732, line: 62, type: !6)
!1927 = !DILocalVariable(name: "s27", arg: 3, scope: !1922, file: !1732, line: 62, type: !8)
!1928 = !DILocalVariable(name: "s28", arg: 4, scope: !1922, file: !1732, line: 62, type: !8)
!1929 = !DILocation(line: 62, column: 41, scope: !1922, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 83, column: 16, scope: !1931, inlinedAt: !1911)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !1732, line: 80, column: 11)
!1932 = distinct !DILexicalBlock(scope: !1918, file: !1732, line: 79, column: 5)
!1933 = !DILocation(line: 62, column: 50, scope: !1922, inlinedAt: !1930)
!1934 = !DILocation(line: 62, column: 60, scope: !1922, inlinedAt: !1930)
!1935 = !DILocation(line: 64, column: 7, scope: !1936, inlinedAt: !1930)
!1936 = !DILexicalBlockFile(scope: !1937, file: !1732, discriminator: 2)
!1937 = distinct !DILexicalBlock(scope: !1922, file: !1732, line: 64, column: 7)
!1938 = !DILocation(line: 228, column: 7, scope: !1713)
!1939 = !DILocation(line: 229, column: 12, scope: !1871)
!1940 = !DILocation(line: 229, column: 21, scope: !1871)
!1941 = !DILocation(line: 229, column: 5, scope: !1871)
!1942 = !DILocation(line: 231, column: 13, scope: !1713)
!1943 = !DILocation(line: 231, column: 11, scope: !1713)
!1944 = !DILocation(line: 231, column: 3, scope: !1713)
!1945 = !DILocation(line: 232, column: 1, scope: !1713)
!1946 = distinct !DISubprogram(name: "quotearg_alloc", scope: !82, file: !82, line: 791, type: !1947, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!32, !6, !76, !785}
!1949 = !{!1950, !1951, !1952}
!1950 = !DILocalVariable(name: "arg", arg: 1, scope: !1946, file: !82, line: 791, type: !6)
!1951 = !DILocalVariable(name: "argsize", arg: 2, scope: !1946, file: !82, line: 791, type: !76)
!1952 = !DILocalVariable(name: "o", arg: 3, scope: !1946, file: !82, line: 792, type: !785)
!1953 = !DILocation(line: 791, column: 29, scope: !1946)
!1954 = !DILocation(line: 791, column: 41, scope: !1946)
!1955 = !DILocation(line: 792, column: 47, scope: !1946)
!1956 = !DILocalVariable(name: "arg", arg: 1, scope: !1957, file: !82, line: 804, type: !6)
!1957 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 804, type: !1958, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1960)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!32, !6, !76, !534, !785}
!1960 = !{!1956, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968}
!1961 = !DILocalVariable(name: "argsize", arg: 2, scope: !1957, file: !82, line: 804, type: !76)
!1962 = !DILocalVariable(name: "size", arg: 3, scope: !1957, file: !82, line: 804, type: !534)
!1963 = !DILocalVariable(name: "o", arg: 4, scope: !1957, file: !82, line: 805, type: !785)
!1964 = !DILocalVariable(name: "p", scope: !1957, file: !82, line: 807, type: !785)
!1965 = !DILocalVariable(name: "e", scope: !1957, file: !82, line: 808, type: !25)
!1966 = !DILocalVariable(name: "flags", scope: !1957, file: !82, line: 810, type: !25)
!1967 = !DILocalVariable(name: "bufsize", scope: !1957, file: !82, line: 811, type: !76)
!1968 = !DILocalVariable(name: "buf", scope: !1957, file: !82, line: 815, type: !32)
!1969 = !DILocation(line: 804, column: 33, scope: !1957, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 794, column: 10, scope: !1946)
!1971 = !DILocation(line: 804, column: 45, scope: !1957, inlinedAt: !1970)
!1972 = !DILocation(line: 804, column: 62, scope: !1957, inlinedAt: !1970)
!1973 = !DILocation(line: 805, column: 51, scope: !1957, inlinedAt: !1970)
!1974 = !DILocation(line: 807, column: 37, scope: !1957, inlinedAt: !1970)
!1975 = !DILocation(line: 807, column: 33, scope: !1957, inlinedAt: !1970)
!1976 = !DILocation(line: 808, column: 11, scope: !1957, inlinedAt: !1970)
!1977 = !DILocation(line: 808, column: 7, scope: !1957, inlinedAt: !1970)
!1978 = !DILocation(line: 810, column: 18, scope: !1957, inlinedAt: !1970)
!1979 = !DILocation(line: 810, column: 24, scope: !1957, inlinedAt: !1970)
!1980 = !DILocation(line: 810, column: 7, scope: !1957, inlinedAt: !1970)
!1981 = !DILocation(line: 811, column: 69, scope: !1957, inlinedAt: !1970)
!1982 = !DILocation(line: 812, column: 53, scope: !1957, inlinedAt: !1970)
!1983 = !DILocation(line: 813, column: 49, scope: !1957, inlinedAt: !1970)
!1984 = !DILocation(line: 814, column: 49, scope: !1957, inlinedAt: !1970)
!1985 = !DILocation(line: 811, column: 20, scope: !1957, inlinedAt: !1970)
!1986 = !DILocation(line: 814, column: 62, scope: !1957, inlinedAt: !1970)
!1987 = !DILocation(line: 811, column: 10, scope: !1957, inlinedAt: !1970)
!1988 = !DILocalVariable(name: "n", arg: 1, scope: !1989, file: !530, line: 220, type: !76)
!1989 = distinct !DISubprogram(name: "xcharalloc", scope: !530, file: !530, line: 220, type: !1990, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!32, !76}
!1992 = !{!1988}
!1993 = !DILocation(line: 220, column: 20, scope: !1989, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 815, column: 15, scope: !1957, inlinedAt: !1970)
!1995 = !DILocation(line: 222, column: 10, scope: !1989, inlinedAt: !1994)
!1996 = !DILocation(line: 815, column: 9, scope: !1957, inlinedAt: !1970)
!1997 = !DILocation(line: 816, column: 60, scope: !1957, inlinedAt: !1970)
!1998 = !DILocation(line: 818, column: 32, scope: !1957, inlinedAt: !1970)
!1999 = !DILocation(line: 818, column: 47, scope: !1957, inlinedAt: !1970)
!2000 = !DILocation(line: 816, column: 3, scope: !1957, inlinedAt: !1970)
!2001 = !DILocation(line: 819, column: 9, scope: !1957, inlinedAt: !1970)
!2002 = !DILocation(line: 794, column: 3, scope: !1946)
!2003 = !DILocation(line: 804, column: 33, scope: !1957)
!2004 = !DILocation(line: 804, column: 45, scope: !1957)
!2005 = !DILocation(line: 804, column: 62, scope: !1957)
!2006 = !DILocation(line: 805, column: 51, scope: !1957)
!2007 = !DILocation(line: 807, column: 37, scope: !1957)
!2008 = !DILocation(line: 807, column: 33, scope: !1957)
!2009 = !DILocation(line: 808, column: 11, scope: !1957)
!2010 = !DILocation(line: 808, column: 7, scope: !1957)
!2011 = !DILocation(line: 810, column: 18, scope: !1957)
!2012 = !DILocation(line: 810, column: 27, scope: !1957)
!2013 = !DILocation(line: 810, column: 24, scope: !1957)
!2014 = !DILocation(line: 810, column: 7, scope: !1957)
!2015 = !DILocation(line: 811, column: 69, scope: !1957)
!2016 = !DILocation(line: 812, column: 53, scope: !1957)
!2017 = !DILocation(line: 813, column: 49, scope: !1957)
!2018 = !DILocation(line: 814, column: 49, scope: !1957)
!2019 = !DILocation(line: 811, column: 20, scope: !1957)
!2020 = !DILocation(line: 814, column: 62, scope: !1957)
!2021 = !DILocation(line: 811, column: 10, scope: !1957)
!2022 = !DILocation(line: 220, column: 20, scope: !1989, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 815, column: 15, scope: !1957)
!2024 = !DILocation(line: 222, column: 10, scope: !1989, inlinedAt: !2023)
!2025 = !DILocation(line: 815, column: 9, scope: !1957)
!2026 = !DILocation(line: 816, column: 60, scope: !1957)
!2027 = !DILocation(line: 818, column: 32, scope: !1957)
!2028 = !DILocation(line: 818, column: 47, scope: !1957)
!2029 = !DILocation(line: 816, column: 3, scope: !1957)
!2030 = !DILocation(line: 819, column: 9, scope: !1957)
!2031 = !DILocation(line: 820, column: 7, scope: !1957)
!2032 = !DILocation(line: 821, column: 11, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1957, file: !82, line: 820, column: 7)
!2034 = !{!2035, !2035, i64 0}
!2035 = !{!"long", !577, i64 0}
!2036 = !DILocation(line: 821, column: 5, scope: !2033)
!2037 = !DILocation(line: 822, column: 3, scope: !1957)
!2038 = distinct !DISubprogram(name: "quotearg_free", scope: !82, file: !82, line: 840, type: !681, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2039)
!2039 = !{!2040, !2041}
!2040 = !DILocalVariable(name: "sv", scope: !2038, file: !82, line: 842, type: !109)
!2041 = !DILocalVariable(name: "i", scope: !2038, file: !82, line: 843, type: !25)
!2042 = !DILocation(line: 842, column: 24, scope: !2038)
!2043 = !DILocation(line: 842, column: 19, scope: !2038)
!2044 = !DILocation(line: 843, column: 7, scope: !2038)
!2045 = !DILocation(line: 844, column: 19, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2047, file: !82, discriminator: 1)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !82, line: 844, column: 3)
!2048 = distinct !DILexicalBlock(scope: !2038, file: !82, line: 844, column: 3)
!2049 = !DILocation(line: 844, column: 17, scope: !2046)
!2050 = !DILocation(line: 844, column: 3, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2048, file: !82, discriminator: 1)
!2052 = !DILocation(line: 845, column: 17, scope: !2047)
!2053 = !{!2054, !576, i64 8}
!2054 = !{!"slotvec", !2035, i64 0, !576, i64 8}
!2055 = !DILocation(line: 845, column: 5, scope: !2047)
!2056 = !DILocation(line: 844, column: 28, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !2047, file: !82, discriminator: 2)
!2058 = distinct !{!2058, !2059, !2060}
!2059 = !DILocation(line: 844, column: 3, scope: !2048)
!2060 = !DILocation(line: 845, column: 20, scope: !2048)
!2061 = !DILocation(line: 846, column: 13, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2038, file: !82, line: 846, column: 7)
!2063 = !DILocation(line: 846, column: 17, scope: !2062)
!2064 = !DILocation(line: 846, column: 7, scope: !2038)
!2065 = !DILocation(line: 848, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2062, file: !82, line: 847, column: 5)
!2067 = !DILocation(line: 849, column: 21, scope: !2066)
!2068 = !{!2054, !2035, i64 0}
!2069 = !DILocation(line: 850, column: 20, scope: !2066)
!2070 = !DILocation(line: 851, column: 5, scope: !2066)
!2071 = !DILocation(line: 852, column: 10, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2038, file: !82, line: 852, column: 7)
!2073 = !DILocation(line: 852, column: 7, scope: !2038)
!2074 = !DILocation(line: 854, column: 13, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !82, line: 853, column: 5)
!2076 = !DILocation(line: 854, column: 7, scope: !2075)
!2077 = !DILocation(line: 855, column: 15, scope: !2075)
!2078 = !DILocation(line: 856, column: 5, scope: !2075)
!2079 = !DILocation(line: 857, column: 10, scope: !2038)
!2080 = !DILocation(line: 858, column: 1, scope: !2038)
!2081 = distinct !DISubprogram(name: "quotearg_n", scope: !82, file: !82, line: 922, type: !2082, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2084)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!32, !25, !6}
!2084 = !{!2085, !2086}
!2085 = !DILocalVariable(name: "n", arg: 1, scope: !2081, file: !82, line: 922, type: !25)
!2086 = !DILocalVariable(name: "arg", arg: 2, scope: !2081, file: !82, line: 922, type: !6)
!2087 = !DILocation(line: 922, column: 17, scope: !2081)
!2088 = !DILocation(line: 922, column: 32, scope: !2081)
!2089 = !DILocation(line: 924, column: 10, scope: !2081)
!2090 = !DILocation(line: 924, column: 3, scope: !2081)
!2091 = distinct !DISubprogram(name: "quotearg_n_options", scope: !82, file: !82, line: 869, type: !2092, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!32, !25, !6, !76, !785}
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2104, !2106, !2107, !2108}
!2095 = !DILocalVariable(name: "n", arg: 1, scope: !2091, file: !82, line: 869, type: !25)
!2096 = !DILocalVariable(name: "arg", arg: 2, scope: !2091, file: !82, line: 869, type: !6)
!2097 = !DILocalVariable(name: "argsize", arg: 3, scope: !2091, file: !82, line: 869, type: !76)
!2098 = !DILocalVariable(name: "options", arg: 4, scope: !2091, file: !82, line: 870, type: !785)
!2099 = !DILocalVariable(name: "e", scope: !2091, file: !82, line: 872, type: !25)
!2100 = !DILocalVariable(name: "sv", scope: !2091, file: !82, line: 874, type: !109)
!2101 = !DILocalVariable(name: "preallocated", scope: !2102, file: !82, line: 881, type: !17)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !82, line: 880, column: 5)
!2103 = distinct !DILexicalBlock(scope: !2091, file: !82, line: 879, column: 7)
!2104 = !DILocalVariable(name: "size", scope: !2105, file: !82, line: 894, type: !76)
!2105 = distinct !DILexicalBlock(scope: !2091, file: !82, line: 893, column: 3)
!2106 = !DILocalVariable(name: "val", scope: !2105, file: !82, line: 895, type: !32)
!2107 = !DILocalVariable(name: "flags", scope: !2105, file: !82, line: 897, type: !25)
!2108 = !DILocalVariable(name: "qsize", scope: !2105, file: !82, line: 898, type: !76)
!2109 = !DILocation(line: 869, column: 25, scope: !2091)
!2110 = !DILocation(line: 869, column: 40, scope: !2091)
!2111 = !DILocation(line: 869, column: 52, scope: !2091)
!2112 = !DILocation(line: 870, column: 51, scope: !2091)
!2113 = !DILocation(line: 872, column: 11, scope: !2091)
!2114 = !DILocation(line: 872, column: 7, scope: !2091)
!2115 = !DILocation(line: 874, column: 24, scope: !2091)
!2116 = !DILocation(line: 874, column: 19, scope: !2091)
!2117 = !DILocation(line: 876, column: 9, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2091, file: !82, line: 876, column: 7)
!2119 = !DILocation(line: 876, column: 7, scope: !2091)
!2120 = !DILocation(line: 877, column: 5, scope: !2118)
!2121 = !DILocation(line: 879, column: 7, scope: !2103)
!2122 = !DILocation(line: 879, column: 14, scope: !2103)
!2123 = !DILocation(line: 879, column: 7, scope: !2091)
!2124 = !DILocation(line: 881, column: 31, scope: !2102)
!2125 = !DILocation(line: 883, column: 67, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2102, file: !82, line: 883, column: 11)
!2127 = !DILocation(line: 883, column: 11, scope: !2102)
!2128 = !DILocation(line: 884, column: 9, scope: !2126)
!2129 = !DILocation(line: 886, column: 32, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2102, file: !82, discriminator: 3)
!2131 = !DILocation(line: 886, column: 61, scope: !2130)
!2132 = !DILocation(line: 886, column: 58, scope: !2130)
!2133 = !DILocation(line: 886, column: 66, scope: !2130)
!2134 = !DILocation(line: 886, column: 22, scope: !2130)
!2135 = !DILocation(line: 886, column: 15, scope: !2130)
!2136 = !DILocation(line: 887, column: 11, scope: !2102)
!2137 = !DILocation(line: 888, column: 15, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2102, file: !82, line: 887, column: 11)
!2139 = !{i64 0, i64 8, !2034, i64 8, i64 8, !575}
!2140 = !DILocation(line: 888, column: 9, scope: !2138)
!2141 = !DILocation(line: 889, column: 20, scope: !2102)
!2142 = !DILocation(line: 889, column: 18, scope: !2102)
!2143 = !DILocation(line: 889, column: 7, scope: !2102)
!2144 = !DILocation(line: 889, column: 38, scope: !2102)
!2145 = !DILocation(line: 889, column: 31, scope: !2102)
!2146 = !DILocation(line: 889, column: 48, scope: !2102)
!2147 = !DILocation(line: 890, column: 14, scope: !2102)
!2148 = !DILocation(line: 891, column: 5, scope: !2102)
!2149 = !DILocation(line: 894, column: 19, scope: !2105)
!2150 = !DILocation(line: 894, column: 25, scope: !2105)
!2151 = !DILocation(line: 894, column: 12, scope: !2105)
!2152 = !DILocation(line: 895, column: 23, scope: !2105)
!2153 = !DILocation(line: 895, column: 11, scope: !2105)
!2154 = !DILocation(line: 897, column: 26, scope: !2105)
!2155 = !DILocation(line: 897, column: 32, scope: !2105)
!2156 = !DILocation(line: 897, column: 9, scope: !2105)
!2157 = !DILocation(line: 899, column: 55, scope: !2105)
!2158 = !DILocation(line: 900, column: 46, scope: !2105)
!2159 = !DILocation(line: 901, column: 55, scope: !2105)
!2160 = !DILocation(line: 902, column: 55, scope: !2105)
!2161 = !DILocation(line: 898, column: 20, scope: !2105)
!2162 = !DILocation(line: 898, column: 12, scope: !2105)
!2163 = !DILocation(line: 904, column: 14, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2105, file: !82, line: 904, column: 9)
!2165 = !DILocation(line: 904, column: 9, scope: !2105)
!2166 = !DILocation(line: 906, column: 35, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2164, file: !82, line: 905, column: 7)
!2168 = !DILocation(line: 906, column: 20, scope: !2167)
!2169 = !DILocation(line: 907, column: 17, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2167, file: !82, line: 907, column: 13)
!2171 = !DILocation(line: 907, column: 13, scope: !2167)
!2172 = !DILocation(line: 908, column: 11, scope: !2170)
!2173 = !DILocation(line: 220, column: 20, scope: !1989, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 909, column: 27, scope: !2167)
!2175 = !DILocation(line: 222, column: 10, scope: !1989, inlinedAt: !2174)
!2176 = !DILocation(line: 909, column: 19, scope: !2167)
!2177 = !DILocation(line: 910, column: 69, scope: !2167)
!2178 = !DILocation(line: 912, column: 44, scope: !2167)
!2179 = !DILocation(line: 913, column: 44, scope: !2167)
!2180 = !DILocation(line: 910, column: 9, scope: !2167)
!2181 = !DILocation(line: 914, column: 7, scope: !2167)
!2182 = !DILocation(line: 916, column: 11, scope: !2105)
!2183 = !DILocation(line: 917, column: 5, scope: !2105)
!2184 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !82, file: !82, line: 928, type: !2185, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!32, !25, !6, !76}
!2187 = !{!2188, !2189, !2190}
!2188 = !DILocalVariable(name: "n", arg: 1, scope: !2184, file: !82, line: 928, type: !25)
!2189 = !DILocalVariable(name: "arg", arg: 2, scope: !2184, file: !82, line: 928, type: !6)
!2190 = !DILocalVariable(name: "argsize", arg: 3, scope: !2184, file: !82, line: 928, type: !76)
!2191 = !DILocation(line: 928, column: 21, scope: !2184)
!2192 = !DILocation(line: 928, column: 36, scope: !2184)
!2193 = !DILocation(line: 928, column: 48, scope: !2184)
!2194 = !DILocation(line: 930, column: 10, scope: !2184)
!2195 = !DILocation(line: 930, column: 3, scope: !2184)
!2196 = distinct !DISubprogram(name: "quotearg", scope: !82, file: !82, line: 934, type: !2197, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!32, !6}
!2199 = !{!2200}
!2200 = !DILocalVariable(name: "arg", arg: 1, scope: !2196, file: !82, line: 934, type: !6)
!2201 = !DILocation(line: 934, column: 23, scope: !2196)
!2202 = !DILocation(line: 922, column: 17, scope: !2081, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 936, column: 10, scope: !2196)
!2204 = !DILocation(line: 922, column: 32, scope: !2081, inlinedAt: !2203)
!2205 = !DILocation(line: 924, column: 10, scope: !2081, inlinedAt: !2203)
!2206 = !DILocation(line: 936, column: 3, scope: !2196)
!2207 = distinct !DISubprogram(name: "quotearg_mem", scope: !82, file: !82, line: 940, type: !2208, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!32, !6, !76}
!2210 = !{!2211, !2212}
!2211 = !DILocalVariable(name: "arg", arg: 1, scope: !2207, file: !82, line: 940, type: !6)
!2212 = !DILocalVariable(name: "argsize", arg: 2, scope: !2207, file: !82, line: 940, type: !76)
!2213 = !DILocation(line: 940, column: 27, scope: !2207)
!2214 = !DILocation(line: 940, column: 39, scope: !2207)
!2215 = !DILocation(line: 928, column: 21, scope: !2184, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 942, column: 10, scope: !2207)
!2217 = !DILocation(line: 928, column: 36, scope: !2184, inlinedAt: !2216)
!2218 = !DILocation(line: 928, column: 48, scope: !2184, inlinedAt: !2216)
!2219 = !DILocation(line: 930, column: 10, scope: !2184, inlinedAt: !2216)
!2220 = !DILocation(line: 942, column: 3, scope: !2207)
!2221 = distinct !DISubprogram(name: "quotearg_n_style", scope: !82, file: !82, line: 946, type: !2222, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2224)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!32, !25, !40, !6}
!2224 = !{!2225, !2226, !2227, !2228}
!2225 = !DILocalVariable(name: "n", arg: 1, scope: !2221, file: !82, line: 946, type: !25)
!2226 = !DILocalVariable(name: "s", arg: 2, scope: !2221, file: !82, line: 946, type: !40)
!2227 = !DILocalVariable(name: "arg", arg: 3, scope: !2221, file: !82, line: 946, type: !6)
!2228 = !DILocalVariable(name: "o", scope: !2221, file: !82, line: 948, type: !786)
!2229 = !DILocalVariable(name: "o", scope: !2230, file: !82, line: 187, type: !89)
!2230 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !82, file: !82, line: 185, type: !2231, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!89, !40}
!2233 = !{!2234, !2229}
!2234 = !DILocalVariable(name: "style", arg: 1, scope: !2230, file: !82, line: 185, type: !40)
!2235 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2236 = !DILocation(line: 187, column: 26, scope: !2230, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 948, column: 36, scope: !2221)
!2238 = !DILocation(line: 946, column: 23, scope: !2221)
!2239 = !DILocation(line: 946, column: 45, scope: !2221)
!2240 = !DILocation(line: 946, column: 60, scope: !2221)
!2241 = !DILocation(line: 948, column: 3, scope: !2221)
!2242 = !DILocation(line: 948, column: 32, scope: !2221)
!2243 = !DILocation(line: 185, column: 48, scope: !2230, inlinedAt: !2237)
!2244 = !DILocation(line: 187, column: 3, scope: !2230, inlinedAt: !2237)
!2245 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2246 = !DILocation(line: 188, column: 13, scope: !2247, inlinedAt: !2237)
!2247 = distinct !DILexicalBlock(scope: !2230, file: !82, line: 188, column: 7)
!2248 = !DILocation(line: 188, column: 7, scope: !2230, inlinedAt: !2237)
!2249 = !DILocation(line: 189, column: 5, scope: !2247, inlinedAt: !2237)
!2250 = !{!2251}
!2251 = distinct !{!2251, !2252, !"quoting_options_from_style: argument 0"}
!2252 = distinct !{!2252, !"quoting_options_from_style"}
!2253 = !DILocation(line: 191, column: 10, scope: !2230, inlinedAt: !2237)
!2254 = !DILocation(line: 192, column: 1, scope: !2230, inlinedAt: !2237)
!2255 = !DILocation(line: 949, column: 10, scope: !2221)
!2256 = !DILocation(line: 950, column: 1, scope: !2221)
!2257 = !DILocation(line: 949, column: 3, scope: !2221)
!2258 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !82, file: !82, line: 953, type: !2259, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!32, !25, !40, !6, !76}
!2261 = !{!2262, !2263, !2264, !2265, !2266}
!2262 = !DILocalVariable(name: "n", arg: 1, scope: !2258, file: !82, line: 953, type: !25)
!2263 = !DILocalVariable(name: "s", arg: 2, scope: !2258, file: !82, line: 953, type: !40)
!2264 = !DILocalVariable(name: "arg", arg: 3, scope: !2258, file: !82, line: 954, type: !6)
!2265 = !DILocalVariable(name: "argsize", arg: 4, scope: !2258, file: !82, line: 954, type: !76)
!2266 = !DILocalVariable(name: "o", scope: !2258, file: !82, line: 956, type: !786)
!2267 = !DILocation(line: 187, column: 26, scope: !2230, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 956, column: 36, scope: !2258)
!2269 = !DILocation(line: 953, column: 27, scope: !2258)
!2270 = !DILocation(line: 953, column: 49, scope: !2258)
!2271 = !DILocation(line: 954, column: 35, scope: !2258)
!2272 = !DILocation(line: 954, column: 47, scope: !2258)
!2273 = !DILocation(line: 956, column: 3, scope: !2258)
!2274 = !DILocation(line: 956, column: 32, scope: !2258)
!2275 = !DILocation(line: 185, column: 48, scope: !2230, inlinedAt: !2268)
!2276 = !DILocation(line: 187, column: 3, scope: !2230, inlinedAt: !2268)
!2277 = !DILocation(line: 188, column: 13, scope: !2247, inlinedAt: !2268)
!2278 = !DILocation(line: 188, column: 7, scope: !2230, inlinedAt: !2268)
!2279 = !DILocation(line: 189, column: 5, scope: !2247, inlinedAt: !2268)
!2280 = !{!2281}
!2281 = distinct !{!2281, !2282, !"quoting_options_from_style: argument 0"}
!2282 = distinct !{!2282, !"quoting_options_from_style"}
!2283 = !DILocation(line: 191, column: 10, scope: !2230, inlinedAt: !2268)
!2284 = !DILocation(line: 192, column: 1, scope: !2230, inlinedAt: !2268)
!2285 = !DILocation(line: 957, column: 10, scope: !2258)
!2286 = !DILocation(line: 958, column: 1, scope: !2258)
!2287 = !DILocation(line: 957, column: 3, scope: !2258)
!2288 = distinct !DISubprogram(name: "quotearg_style", scope: !82, file: !82, line: 961, type: !2289, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2291)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!32, !40, !6}
!2291 = !{!2292, !2293}
!2292 = !DILocalVariable(name: "s", arg: 1, scope: !2288, file: !82, line: 961, type: !40)
!2293 = !DILocalVariable(name: "arg", arg: 2, scope: !2288, file: !82, line: 961, type: !6)
!2294 = !DILocation(line: 187, column: 26, scope: !2230, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 948, column: 36, scope: !2221, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 963, column: 10, scope: !2288)
!2297 = !DILocation(line: 961, column: 36, scope: !2288)
!2298 = !DILocation(line: 961, column: 51, scope: !2288)
!2299 = !DILocation(line: 946, column: 23, scope: !2221, inlinedAt: !2296)
!2300 = !DILocation(line: 946, column: 45, scope: !2221, inlinedAt: !2296)
!2301 = !DILocation(line: 946, column: 60, scope: !2221, inlinedAt: !2296)
!2302 = !DILocation(line: 948, column: 3, scope: !2221, inlinedAt: !2296)
!2303 = !DILocation(line: 948, column: 32, scope: !2221, inlinedAt: !2296)
!2304 = !DILocation(line: 185, column: 48, scope: !2230, inlinedAt: !2295)
!2305 = !DILocation(line: 187, column: 3, scope: !2230, inlinedAt: !2295)
!2306 = !DILocation(line: 188, column: 13, scope: !2247, inlinedAt: !2295)
!2307 = !DILocation(line: 188, column: 7, scope: !2230, inlinedAt: !2295)
!2308 = !DILocation(line: 189, column: 5, scope: !2247, inlinedAt: !2295)
!2309 = !{!2310}
!2310 = distinct !{!2310, !2311, !"quoting_options_from_style: argument 0"}
!2311 = distinct !{!2311, !"quoting_options_from_style"}
!2312 = !DILocation(line: 191, column: 10, scope: !2230, inlinedAt: !2295)
!2313 = !DILocation(line: 192, column: 1, scope: !2230, inlinedAt: !2295)
!2314 = !DILocation(line: 949, column: 10, scope: !2221, inlinedAt: !2296)
!2315 = !DILocation(line: 950, column: 1, scope: !2221, inlinedAt: !2296)
!2316 = !DILocation(line: 963, column: 3, scope: !2288)
!2317 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !82, file: !82, line: 967, type: !2318, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!32, !40, !6, !76}
!2320 = !{!2321, !2322, !2323}
!2321 = !DILocalVariable(name: "s", arg: 1, scope: !2317, file: !82, line: 967, type: !40)
!2322 = !DILocalVariable(name: "arg", arg: 2, scope: !2317, file: !82, line: 967, type: !6)
!2323 = !DILocalVariable(name: "argsize", arg: 3, scope: !2317, file: !82, line: 967, type: !76)
!2324 = !DILocation(line: 187, column: 26, scope: !2230, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 956, column: 36, scope: !2258, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 969, column: 10, scope: !2317)
!2327 = !DILocation(line: 967, column: 40, scope: !2317)
!2328 = !DILocation(line: 967, column: 55, scope: !2317)
!2329 = !DILocation(line: 967, column: 67, scope: !2317)
!2330 = !DILocation(line: 953, column: 27, scope: !2258, inlinedAt: !2326)
!2331 = !DILocation(line: 953, column: 49, scope: !2258, inlinedAt: !2326)
!2332 = !DILocation(line: 954, column: 35, scope: !2258, inlinedAt: !2326)
!2333 = !DILocation(line: 954, column: 47, scope: !2258, inlinedAt: !2326)
!2334 = !DILocation(line: 956, column: 3, scope: !2258, inlinedAt: !2326)
!2335 = !DILocation(line: 956, column: 32, scope: !2258, inlinedAt: !2326)
!2336 = !DILocation(line: 185, column: 48, scope: !2230, inlinedAt: !2325)
!2337 = !DILocation(line: 187, column: 3, scope: !2230, inlinedAt: !2325)
!2338 = !DILocation(line: 188, column: 13, scope: !2247, inlinedAt: !2325)
!2339 = !DILocation(line: 188, column: 7, scope: !2230, inlinedAt: !2325)
!2340 = !DILocation(line: 189, column: 5, scope: !2247, inlinedAt: !2325)
!2341 = !{!2342}
!2342 = distinct !{!2342, !2343, !"quoting_options_from_style: argument 0"}
!2343 = distinct !{!2343, !"quoting_options_from_style"}
!2344 = !DILocation(line: 191, column: 10, scope: !2230, inlinedAt: !2325)
!2345 = !DILocation(line: 192, column: 1, scope: !2230, inlinedAt: !2325)
!2346 = !DILocation(line: 957, column: 10, scope: !2258, inlinedAt: !2326)
!2347 = !DILocation(line: 958, column: 1, scope: !2258, inlinedAt: !2326)
!2348 = !DILocation(line: 969, column: 3, scope: !2317)
!2349 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !82, file: !82, line: 973, type: !2350, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!32, !6, !76, !8}
!2352 = !{!2353, !2354, !2355, !2356}
!2353 = !DILocalVariable(name: "arg", arg: 1, scope: !2349, file: !82, line: 973, type: !6)
!2354 = !DILocalVariable(name: "argsize", arg: 2, scope: !2349, file: !82, line: 973, type: !76)
!2355 = !DILocalVariable(name: "ch", arg: 3, scope: !2349, file: !82, line: 973, type: !8)
!2356 = !DILocalVariable(name: "options", scope: !2349, file: !82, line: 975, type: !89)
!2357 = !DILocation(line: 973, column: 32, scope: !2349)
!2358 = !DILocation(line: 973, column: 44, scope: !2349)
!2359 = !DILocation(line: 973, column: 58, scope: !2349)
!2360 = !DILocation(line: 975, column: 3, scope: !2349)
!2361 = !DILocation(line: 976, column: 13, scope: !2349)
!2362 = !{i64 0, i64 4, !1020, i64 4, i64 4, !699, i64 8, i64 32, !1020, i64 40, i64 8, !575, i64 48, i64 8, !575}
!2363 = !DILocation(line: 975, column: 26, scope: !2349)
!2364 = !DILocation(line: 144, column: 43, scope: !809, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 977, column: 3, scope: !2349)
!2366 = !DILocation(line: 144, column: 51, scope: !809, inlinedAt: !2365)
!2367 = !DILocation(line: 144, column: 58, scope: !809, inlinedAt: !2365)
!2368 = !DILocation(line: 146, column: 17, scope: !809, inlinedAt: !2365)
!2369 = !DILocation(line: 148, column: 62, scope: !827, inlinedAt: !2365)
!2370 = !DILocation(line: 148, column: 57, scope: !827, inlinedAt: !2365)
!2371 = !DILocation(line: 147, column: 17, scope: !809, inlinedAt: !2365)
!2372 = !DILocation(line: 149, column: 18, scope: !809, inlinedAt: !2365)
!2373 = !DILocation(line: 149, column: 15, scope: !809, inlinedAt: !2365)
!2374 = !DILocation(line: 149, column: 7, scope: !809, inlinedAt: !2365)
!2375 = !DILocation(line: 150, column: 12, scope: !809, inlinedAt: !2365)
!2376 = !DILocation(line: 150, column: 15, scope: !809, inlinedAt: !2365)
!2377 = !DILocation(line: 150, column: 25, scope: !809, inlinedAt: !2365)
!2378 = !DILocation(line: 150, column: 7, scope: !809, inlinedAt: !2365)
!2379 = !DILocation(line: 151, column: 18, scope: !809, inlinedAt: !2365)
!2380 = !DILocation(line: 151, column: 23, scope: !809, inlinedAt: !2365)
!2381 = !DILocation(line: 151, column: 6, scope: !809, inlinedAt: !2365)
!2382 = !DILocation(line: 978, column: 10, scope: !2349)
!2383 = !DILocation(line: 979, column: 1, scope: !2349)
!2384 = !DILocation(line: 978, column: 3, scope: !2349)
!2385 = distinct !DISubprogram(name: "quotearg_char", scope: !82, file: !82, line: 982, type: !2386, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!32, !6, !8}
!2388 = !{!2389, !2390}
!2389 = !DILocalVariable(name: "arg", arg: 1, scope: !2385, file: !82, line: 982, type: !6)
!2390 = !DILocalVariable(name: "ch", arg: 2, scope: !2385, file: !82, line: 982, type: !8)
!2391 = !DILocation(line: 982, column: 28, scope: !2385)
!2392 = !DILocation(line: 982, column: 38, scope: !2385)
!2393 = !DILocation(line: 973, column: 32, scope: !2349, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 984, column: 10, scope: !2385)
!2395 = !DILocation(line: 973, column: 44, scope: !2349, inlinedAt: !2394)
!2396 = !DILocation(line: 973, column: 58, scope: !2349, inlinedAt: !2394)
!2397 = !DILocation(line: 975, column: 3, scope: !2349, inlinedAt: !2394)
!2398 = !DILocation(line: 976, column: 13, scope: !2349, inlinedAt: !2394)
!2399 = !DILocation(line: 975, column: 26, scope: !2349, inlinedAt: !2394)
!2400 = !DILocation(line: 144, column: 43, scope: !809, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 977, column: 3, scope: !2349, inlinedAt: !2394)
!2402 = !DILocation(line: 144, column: 51, scope: !809, inlinedAt: !2401)
!2403 = !DILocation(line: 144, column: 58, scope: !809, inlinedAt: !2401)
!2404 = !DILocation(line: 146, column: 17, scope: !809, inlinedAt: !2401)
!2405 = !DILocation(line: 148, column: 62, scope: !827, inlinedAt: !2401)
!2406 = !DILocation(line: 148, column: 57, scope: !827, inlinedAt: !2401)
!2407 = !DILocation(line: 147, column: 17, scope: !809, inlinedAt: !2401)
!2408 = !DILocation(line: 149, column: 18, scope: !809, inlinedAt: !2401)
!2409 = !DILocation(line: 149, column: 15, scope: !809, inlinedAt: !2401)
!2410 = !DILocation(line: 149, column: 7, scope: !809, inlinedAt: !2401)
!2411 = !DILocation(line: 150, column: 12, scope: !809, inlinedAt: !2401)
!2412 = !DILocation(line: 150, column: 15, scope: !809, inlinedAt: !2401)
!2413 = !DILocation(line: 150, column: 25, scope: !809, inlinedAt: !2401)
!2414 = !DILocation(line: 150, column: 7, scope: !809, inlinedAt: !2401)
!2415 = !DILocation(line: 151, column: 18, scope: !809, inlinedAt: !2401)
!2416 = !DILocation(line: 151, column: 23, scope: !809, inlinedAt: !2401)
!2417 = !DILocation(line: 151, column: 6, scope: !809, inlinedAt: !2401)
!2418 = !DILocation(line: 978, column: 10, scope: !2349, inlinedAt: !2394)
!2419 = !DILocation(line: 979, column: 1, scope: !2349, inlinedAt: !2394)
!2420 = !DILocation(line: 984, column: 3, scope: !2385)
!2421 = distinct !DISubprogram(name: "quotearg_colon", scope: !82, file: !82, line: 988, type: !2197, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2422)
!2422 = !{!2423}
!2423 = !DILocalVariable(name: "arg", arg: 1, scope: !2421, file: !82, line: 988, type: !6)
!2424 = !DILocation(line: 988, column: 29, scope: !2421)
!2425 = !DILocation(line: 982, column: 28, scope: !2385, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 990, column: 10, scope: !2421)
!2427 = !DILocation(line: 982, column: 38, scope: !2385, inlinedAt: !2426)
!2428 = !DILocation(line: 973, column: 32, scope: !2349, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 984, column: 10, scope: !2385, inlinedAt: !2426)
!2430 = !DILocation(line: 973, column: 44, scope: !2349, inlinedAt: !2429)
!2431 = !DILocation(line: 973, column: 58, scope: !2349, inlinedAt: !2429)
!2432 = !DILocation(line: 975, column: 3, scope: !2349, inlinedAt: !2429)
!2433 = !DILocation(line: 976, column: 13, scope: !2349, inlinedAt: !2429)
!2434 = !DILocation(line: 975, column: 26, scope: !2349, inlinedAt: !2429)
!2435 = !DILocation(line: 144, column: 43, scope: !809, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 977, column: 3, scope: !2349, inlinedAt: !2429)
!2437 = !DILocation(line: 144, column: 51, scope: !809, inlinedAt: !2436)
!2438 = !DILocation(line: 144, column: 58, scope: !809, inlinedAt: !2436)
!2439 = !DILocation(line: 146, column: 17, scope: !809, inlinedAt: !2436)
!2440 = !DILocation(line: 148, column: 57, scope: !827, inlinedAt: !2436)
!2441 = !DILocation(line: 147, column: 17, scope: !809, inlinedAt: !2436)
!2442 = !DILocation(line: 149, column: 7, scope: !809, inlinedAt: !2436)
!2443 = !DILocation(line: 150, column: 12, scope: !809, inlinedAt: !2436)
!2444 = !DILocation(line: 151, column: 6, scope: !809, inlinedAt: !2436)
!2445 = !DILocation(line: 978, column: 10, scope: !2349, inlinedAt: !2429)
!2446 = !DILocation(line: 979, column: 1, scope: !2349, inlinedAt: !2429)
!2447 = !DILocation(line: 990, column: 3, scope: !2421)
!2448 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !82, file: !82, line: 994, type: !2208, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2449)
!2449 = !{!2450, !2451}
!2450 = !DILocalVariable(name: "arg", arg: 1, scope: !2448, file: !82, line: 994, type: !6)
!2451 = !DILocalVariable(name: "argsize", arg: 2, scope: !2448, file: !82, line: 994, type: !76)
!2452 = !DILocation(line: 994, column: 33, scope: !2448)
!2453 = !DILocation(line: 994, column: 45, scope: !2448)
!2454 = !DILocation(line: 973, column: 32, scope: !2349, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 996, column: 10, scope: !2448)
!2456 = !DILocation(line: 973, column: 44, scope: !2349, inlinedAt: !2455)
!2457 = !DILocation(line: 973, column: 58, scope: !2349, inlinedAt: !2455)
!2458 = !DILocation(line: 975, column: 3, scope: !2349, inlinedAt: !2455)
!2459 = !DILocation(line: 976, column: 13, scope: !2349, inlinedAt: !2455)
!2460 = !DILocation(line: 975, column: 26, scope: !2349, inlinedAt: !2455)
!2461 = !DILocation(line: 144, column: 43, scope: !809, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 977, column: 3, scope: !2349, inlinedAt: !2455)
!2463 = !DILocation(line: 144, column: 51, scope: !809, inlinedAt: !2462)
!2464 = !DILocation(line: 144, column: 58, scope: !809, inlinedAt: !2462)
!2465 = !DILocation(line: 146, column: 17, scope: !809, inlinedAt: !2462)
!2466 = !DILocation(line: 148, column: 57, scope: !827, inlinedAt: !2462)
!2467 = !DILocation(line: 147, column: 17, scope: !809, inlinedAt: !2462)
!2468 = !DILocation(line: 149, column: 7, scope: !809, inlinedAt: !2462)
!2469 = !DILocation(line: 150, column: 12, scope: !809, inlinedAt: !2462)
!2470 = !DILocation(line: 151, column: 6, scope: !809, inlinedAt: !2462)
!2471 = !DILocation(line: 978, column: 10, scope: !2349, inlinedAt: !2455)
!2472 = !DILocation(line: 979, column: 1, scope: !2349, inlinedAt: !2455)
!2473 = !DILocation(line: 996, column: 3, scope: !2448)
!2474 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !82, file: !82, line: 1000, type: !2222, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2475)
!2475 = !{!2476, !2477, !2478, !2479}
!2476 = !DILocalVariable(name: "n", arg: 1, scope: !2474, file: !82, line: 1000, type: !25)
!2477 = !DILocalVariable(name: "s", arg: 2, scope: !2474, file: !82, line: 1000, type: !40)
!2478 = !DILocalVariable(name: "arg", arg: 3, scope: !2474, file: !82, line: 1000, type: !6)
!2479 = !DILocalVariable(name: "options", scope: !2474, file: !82, line: 1002, type: !89)
!2480 = !DILocation(line: 187, column: 26, scope: !2230, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 1003, column: 13, scope: !2474)
!2482 = !DILocation(line: 1000, column: 29, scope: !2474)
!2483 = !DILocation(line: 1000, column: 51, scope: !2474)
!2484 = !DILocation(line: 1000, column: 66, scope: !2474)
!2485 = !DILocation(line: 1002, column: 3, scope: !2474)
!2486 = !DILocation(line: 185, column: 48, scope: !2230, inlinedAt: !2481)
!2487 = !DILocation(line: 187, column: 3, scope: !2230, inlinedAt: !2481)
!2488 = !DILocation(line: 188, column: 13, scope: !2247, inlinedAt: !2481)
!2489 = !DILocation(line: 188, column: 7, scope: !2230, inlinedAt: !2481)
!2490 = !DILocation(line: 189, column: 5, scope: !2247, inlinedAt: !2481)
!2491 = !{!2492}
!2492 = distinct !{!2492, !2493, !"quoting_options_from_style: argument 0"}
!2493 = distinct !{!2493, !"quoting_options_from_style"}
!2494 = !DILocation(line: 191, column: 10, scope: !2230, inlinedAt: !2481)
!2495 = !DILocation(line: 192, column: 1, scope: !2230, inlinedAt: !2481)
!2496 = !DILocation(line: 1003, column: 13, scope: !2474)
!2497 = !DILocation(line: 1002, column: 26, scope: !2474)
!2498 = !DILocation(line: 144, column: 43, scope: !809, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 1004, column: 3, scope: !2474)
!2500 = !DILocation(line: 144, column: 51, scope: !809, inlinedAt: !2499)
!2501 = !DILocation(line: 144, column: 58, scope: !809, inlinedAt: !2499)
!2502 = !DILocation(line: 146, column: 17, scope: !809, inlinedAt: !2499)
!2503 = !DILocation(line: 148, column: 57, scope: !827, inlinedAt: !2499)
!2504 = !DILocation(line: 147, column: 17, scope: !809, inlinedAt: !2499)
!2505 = !DILocation(line: 149, column: 7, scope: !809, inlinedAt: !2499)
!2506 = !DILocation(line: 150, column: 12, scope: !809, inlinedAt: !2499)
!2507 = !DILocation(line: 151, column: 6, scope: !809, inlinedAt: !2499)
!2508 = !DILocation(line: 1005, column: 10, scope: !2474)
!2509 = !DILocation(line: 1006, column: 1, scope: !2474)
!2510 = !DILocation(line: 1005, column: 3, scope: !2474)
!2511 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !82, file: !82, line: 1009, type: !2512, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!32, !25, !6, !6, !6}
!2514 = !{!2515, !2516, !2517, !2518}
!2515 = !DILocalVariable(name: "n", arg: 1, scope: !2511, file: !82, line: 1009, type: !25)
!2516 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2511, file: !82, line: 1009, type: !6)
!2517 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2511, file: !82, line: 1010, type: !6)
!2518 = !DILocalVariable(name: "arg", arg: 4, scope: !2511, file: !82, line: 1010, type: !6)
!2519 = !DILocation(line: 1009, column: 24, scope: !2511)
!2520 = !DILocation(line: 1009, column: 39, scope: !2511)
!2521 = !DILocation(line: 1010, column: 32, scope: !2511)
!2522 = !DILocation(line: 1010, column: 57, scope: !2511)
!2523 = !DILocalVariable(name: "n", arg: 1, scope: !2524, file: !82, line: 1017, type: !25)
!2524 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 1017, type: !2525, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!32, !25, !6, !6, !6, !76}
!2527 = !{!2523, !2528, !2529, !2530, !2531, !2532}
!2528 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2524, file: !82, line: 1017, type: !6)
!2529 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2524, file: !82, line: 1018, type: !6)
!2530 = !DILocalVariable(name: "arg", arg: 4, scope: !2524, file: !82, line: 1019, type: !6)
!2531 = !DILocalVariable(name: "argsize", arg: 5, scope: !2524, file: !82, line: 1019, type: !76)
!2532 = !DILocalVariable(name: "o", scope: !2524, file: !82, line: 1021, type: !89)
!2533 = !DILocation(line: 1017, column: 28, scope: !2524, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 1012, column: 10, scope: !2511)
!2535 = !DILocation(line: 1017, column: 43, scope: !2524, inlinedAt: !2534)
!2536 = !DILocation(line: 1018, column: 36, scope: !2524, inlinedAt: !2534)
!2537 = !DILocation(line: 1019, column: 36, scope: !2524, inlinedAt: !2534)
!2538 = !DILocation(line: 1019, column: 48, scope: !2524, inlinedAt: !2534)
!2539 = !DILocation(line: 1021, column: 3, scope: !2524, inlinedAt: !2534)
!2540 = !DILocation(line: 1021, column: 30, scope: !2524, inlinedAt: !2534)
!2541 = !DILocation(line: 1021, column: 26, scope: !2524, inlinedAt: !2534)
!2542 = !DILocation(line: 171, column: 45, scope: !859, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 1022, column: 3, scope: !2524, inlinedAt: !2534)
!2544 = !DILocation(line: 172, column: 33, scope: !859, inlinedAt: !2543)
!2545 = !DILocation(line: 172, column: 57, scope: !859, inlinedAt: !2543)
!2546 = !DILocation(line: 176, column: 6, scope: !859, inlinedAt: !2543)
!2547 = !DILocation(line: 176, column: 12, scope: !859, inlinedAt: !2543)
!2548 = !DILocation(line: 177, column: 8, scope: !875, inlinedAt: !2543)
!2549 = !DILocation(line: 177, column: 23, scope: !877, inlinedAt: !2543)
!2550 = !DILocation(line: 177, column: 19, scope: !875, inlinedAt: !2543)
!2551 = !DILocation(line: 178, column: 5, scope: !875, inlinedAt: !2543)
!2552 = !DILocation(line: 179, column: 6, scope: !859, inlinedAt: !2543)
!2553 = !DILocation(line: 179, column: 17, scope: !859, inlinedAt: !2543)
!2554 = !DILocation(line: 180, column: 6, scope: !859, inlinedAt: !2543)
!2555 = !DILocation(line: 180, column: 18, scope: !859, inlinedAt: !2543)
!2556 = !DILocation(line: 1023, column: 10, scope: !2524, inlinedAt: !2534)
!2557 = !DILocation(line: 1024, column: 1, scope: !2524, inlinedAt: !2534)
!2558 = !DILocation(line: 1012, column: 3, scope: !2511)
!2559 = !DILocation(line: 1017, column: 28, scope: !2524)
!2560 = !DILocation(line: 1017, column: 43, scope: !2524)
!2561 = !DILocation(line: 1018, column: 36, scope: !2524)
!2562 = !DILocation(line: 1019, column: 36, scope: !2524)
!2563 = !DILocation(line: 1019, column: 48, scope: !2524)
!2564 = !DILocation(line: 1021, column: 3, scope: !2524)
!2565 = !DILocation(line: 1021, column: 30, scope: !2524)
!2566 = !DILocation(line: 1021, column: 26, scope: !2524)
!2567 = !DILocation(line: 171, column: 45, scope: !859, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 1022, column: 3, scope: !2524)
!2569 = !DILocation(line: 172, column: 33, scope: !859, inlinedAt: !2568)
!2570 = !DILocation(line: 172, column: 57, scope: !859, inlinedAt: !2568)
!2571 = !DILocation(line: 176, column: 6, scope: !859, inlinedAt: !2568)
!2572 = !DILocation(line: 176, column: 12, scope: !859, inlinedAt: !2568)
!2573 = !DILocation(line: 177, column: 8, scope: !875, inlinedAt: !2568)
!2574 = !DILocation(line: 177, column: 23, scope: !877, inlinedAt: !2568)
!2575 = !DILocation(line: 177, column: 19, scope: !875, inlinedAt: !2568)
!2576 = !DILocation(line: 178, column: 5, scope: !875, inlinedAt: !2568)
!2577 = !DILocation(line: 179, column: 6, scope: !859, inlinedAt: !2568)
!2578 = !DILocation(line: 179, column: 17, scope: !859, inlinedAt: !2568)
!2579 = !DILocation(line: 180, column: 6, scope: !859, inlinedAt: !2568)
!2580 = !DILocation(line: 180, column: 18, scope: !859, inlinedAt: !2568)
!2581 = !DILocation(line: 1023, column: 10, scope: !2524)
!2582 = !DILocation(line: 1024, column: 1, scope: !2524)
!2583 = !DILocation(line: 1023, column: 3, scope: !2524)
!2584 = distinct !DISubprogram(name: "quotearg_custom", scope: !82, file: !82, line: 1027, type: !2585, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!32, !6, !6, !6}
!2587 = !{!2588, !2589, !2590}
!2588 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2584, file: !82, line: 1027, type: !6)
!2589 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2584, file: !82, line: 1027, type: !6)
!2590 = !DILocalVariable(name: "arg", arg: 3, scope: !2584, file: !82, line: 1028, type: !6)
!2591 = !DILocation(line: 1027, column: 30, scope: !2584)
!2592 = !DILocation(line: 1027, column: 54, scope: !2584)
!2593 = !DILocation(line: 1028, column: 30, scope: !2584)
!2594 = !DILocation(line: 1009, column: 24, scope: !2511, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 1030, column: 10, scope: !2584)
!2596 = !DILocation(line: 1009, column: 39, scope: !2511, inlinedAt: !2595)
!2597 = !DILocation(line: 1010, column: 32, scope: !2511, inlinedAt: !2595)
!2598 = !DILocation(line: 1010, column: 57, scope: !2511, inlinedAt: !2595)
!2599 = !DILocation(line: 1017, column: 28, scope: !2524, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 1012, column: 10, scope: !2511, inlinedAt: !2595)
!2601 = !DILocation(line: 1017, column: 43, scope: !2524, inlinedAt: !2600)
!2602 = !DILocation(line: 1018, column: 36, scope: !2524, inlinedAt: !2600)
!2603 = !DILocation(line: 1019, column: 36, scope: !2524, inlinedAt: !2600)
!2604 = !DILocation(line: 1019, column: 48, scope: !2524, inlinedAt: !2600)
!2605 = !DILocation(line: 1021, column: 3, scope: !2524, inlinedAt: !2600)
!2606 = !DILocation(line: 1021, column: 30, scope: !2524, inlinedAt: !2600)
!2607 = !DILocation(line: 1021, column: 26, scope: !2524, inlinedAt: !2600)
!2608 = !DILocation(line: 171, column: 45, scope: !859, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1022, column: 3, scope: !2524, inlinedAt: !2600)
!2610 = !DILocation(line: 172, column: 33, scope: !859, inlinedAt: !2609)
!2611 = !DILocation(line: 172, column: 57, scope: !859, inlinedAt: !2609)
!2612 = !DILocation(line: 176, column: 6, scope: !859, inlinedAt: !2609)
!2613 = !DILocation(line: 176, column: 12, scope: !859, inlinedAt: !2609)
!2614 = !DILocation(line: 177, column: 8, scope: !875, inlinedAt: !2609)
!2615 = !DILocation(line: 177, column: 23, scope: !877, inlinedAt: !2609)
!2616 = !DILocation(line: 177, column: 19, scope: !875, inlinedAt: !2609)
!2617 = !DILocation(line: 178, column: 5, scope: !875, inlinedAt: !2609)
!2618 = !DILocation(line: 179, column: 6, scope: !859, inlinedAt: !2609)
!2619 = !DILocation(line: 179, column: 17, scope: !859, inlinedAt: !2609)
!2620 = !DILocation(line: 180, column: 6, scope: !859, inlinedAt: !2609)
!2621 = !DILocation(line: 180, column: 18, scope: !859, inlinedAt: !2609)
!2622 = !DILocation(line: 1023, column: 10, scope: !2524, inlinedAt: !2600)
!2623 = !DILocation(line: 1024, column: 1, scope: !2524, inlinedAt: !2600)
!2624 = !DILocation(line: 1030, column: 3, scope: !2584)
!2625 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !82, file: !82, line: 1034, type: !2626, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!32, !6, !6, !6, !76}
!2628 = !{!2629, !2630, !2631, !2632}
!2629 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2625, file: !82, line: 1034, type: !6)
!2630 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2625, file: !82, line: 1034, type: !6)
!2631 = !DILocalVariable(name: "arg", arg: 3, scope: !2625, file: !82, line: 1035, type: !6)
!2632 = !DILocalVariable(name: "argsize", arg: 4, scope: !2625, file: !82, line: 1035, type: !76)
!2633 = !DILocation(line: 1034, column: 34, scope: !2625)
!2634 = !DILocation(line: 1034, column: 58, scope: !2625)
!2635 = !DILocation(line: 1035, column: 34, scope: !2625)
!2636 = !DILocation(line: 1035, column: 46, scope: !2625)
!2637 = !DILocation(line: 1017, column: 28, scope: !2524, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 1037, column: 10, scope: !2625)
!2639 = !DILocation(line: 1017, column: 43, scope: !2524, inlinedAt: !2638)
!2640 = !DILocation(line: 1018, column: 36, scope: !2524, inlinedAt: !2638)
!2641 = !DILocation(line: 1019, column: 36, scope: !2524, inlinedAt: !2638)
!2642 = !DILocation(line: 1019, column: 48, scope: !2524, inlinedAt: !2638)
!2643 = !DILocation(line: 1021, column: 3, scope: !2524, inlinedAt: !2638)
!2644 = !DILocation(line: 1021, column: 30, scope: !2524, inlinedAt: !2638)
!2645 = !DILocation(line: 1021, column: 26, scope: !2524, inlinedAt: !2638)
!2646 = !DILocation(line: 171, column: 45, scope: !859, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 1022, column: 3, scope: !2524, inlinedAt: !2638)
!2648 = !DILocation(line: 172, column: 33, scope: !859, inlinedAt: !2647)
!2649 = !DILocation(line: 172, column: 57, scope: !859, inlinedAt: !2647)
!2650 = !DILocation(line: 176, column: 6, scope: !859, inlinedAt: !2647)
!2651 = !DILocation(line: 176, column: 12, scope: !859, inlinedAt: !2647)
!2652 = !DILocation(line: 177, column: 8, scope: !875, inlinedAt: !2647)
!2653 = !DILocation(line: 177, column: 23, scope: !877, inlinedAt: !2647)
!2654 = !DILocation(line: 177, column: 19, scope: !875, inlinedAt: !2647)
!2655 = !DILocation(line: 178, column: 5, scope: !875, inlinedAt: !2647)
!2656 = !DILocation(line: 179, column: 6, scope: !859, inlinedAt: !2647)
!2657 = !DILocation(line: 179, column: 17, scope: !859, inlinedAt: !2647)
!2658 = !DILocation(line: 180, column: 6, scope: !859, inlinedAt: !2647)
!2659 = !DILocation(line: 180, column: 18, scope: !859, inlinedAt: !2647)
!2660 = !DILocation(line: 1023, column: 10, scope: !2524, inlinedAt: !2638)
!2661 = !DILocation(line: 1024, column: 1, scope: !2524, inlinedAt: !2638)
!2662 = !DILocation(line: 1037, column: 3, scope: !2625)
!2663 = distinct !DISubprogram(name: "quote_n_mem", scope: !82, file: !82, line: 1052, type: !2664, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!6, !25, !6, !76}
!2666 = !{!2667, !2668, !2669}
!2667 = !DILocalVariable(name: "n", arg: 1, scope: !2663, file: !82, line: 1052, type: !25)
!2668 = !DILocalVariable(name: "arg", arg: 2, scope: !2663, file: !82, line: 1052, type: !6)
!2669 = !DILocalVariable(name: "argsize", arg: 3, scope: !2663, file: !82, line: 1052, type: !76)
!2670 = !DILocation(line: 1052, column: 18, scope: !2663)
!2671 = !DILocation(line: 1052, column: 33, scope: !2663)
!2672 = !DILocation(line: 1052, column: 45, scope: !2663)
!2673 = !DILocation(line: 1054, column: 10, scope: !2663)
!2674 = !DILocation(line: 1054, column: 3, scope: !2663)
!2675 = distinct !DISubprogram(name: "quote_mem", scope: !82, file: !82, line: 1058, type: !2676, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!6, !6, !76}
!2678 = !{!2679, !2680}
!2679 = !DILocalVariable(name: "arg", arg: 1, scope: !2675, file: !82, line: 1058, type: !6)
!2680 = !DILocalVariable(name: "argsize", arg: 2, scope: !2675, file: !82, line: 1058, type: !76)
!2681 = !DILocation(line: 1058, column: 24, scope: !2675)
!2682 = !DILocation(line: 1058, column: 36, scope: !2675)
!2683 = !DILocation(line: 1052, column: 18, scope: !2663, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 1060, column: 10, scope: !2675)
!2685 = !DILocation(line: 1052, column: 33, scope: !2663, inlinedAt: !2684)
!2686 = !DILocation(line: 1052, column: 45, scope: !2663, inlinedAt: !2684)
!2687 = !DILocation(line: 1054, column: 10, scope: !2663, inlinedAt: !2684)
!2688 = !DILocation(line: 1060, column: 3, scope: !2675)
!2689 = distinct !DISubprogram(name: "quote_n", scope: !82, file: !82, line: 1064, type: !2690, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!6, !25, !6}
!2692 = !{!2693, !2694}
!2693 = !DILocalVariable(name: "n", arg: 1, scope: !2689, file: !82, line: 1064, type: !25)
!2694 = !DILocalVariable(name: "arg", arg: 2, scope: !2689, file: !82, line: 1064, type: !6)
!2695 = !DILocation(line: 1064, column: 14, scope: !2689)
!2696 = !DILocation(line: 1064, column: 29, scope: !2689)
!2697 = !DILocation(line: 1052, column: 18, scope: !2663, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1066, column: 10, scope: !2689)
!2699 = !DILocation(line: 1052, column: 33, scope: !2663, inlinedAt: !2698)
!2700 = !DILocation(line: 1052, column: 45, scope: !2663, inlinedAt: !2698)
!2701 = !DILocation(line: 1054, column: 10, scope: !2663, inlinedAt: !2698)
!2702 = !DILocation(line: 1066, column: 3, scope: !2689)
!2703 = distinct !DISubprogram(name: "quote", scope: !82, file: !82, line: 1070, type: !2704, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!6, !6}
!2706 = !{!2707}
!2707 = !DILocalVariable(name: "arg", arg: 1, scope: !2703, file: !82, line: 1070, type: !6)
!2708 = !DILocation(line: 1070, column: 20, scope: !2703)
!2709 = !DILocation(line: 1064, column: 14, scope: !2689, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 1072, column: 10, scope: !2703)
!2711 = !DILocation(line: 1064, column: 29, scope: !2689, inlinedAt: !2710)
!2712 = !DILocation(line: 1052, column: 18, scope: !2663, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 1066, column: 10, scope: !2689, inlinedAt: !2710)
!2714 = !DILocation(line: 1052, column: 33, scope: !2663, inlinedAt: !2713)
!2715 = !DILocation(line: 1052, column: 45, scope: !2663, inlinedAt: !2713)
!2716 = !DILocation(line: 1054, column: 10, scope: !2663, inlinedAt: !2713)
!2717 = !DILocation(line: 1072, column: 3, scope: !2703)
!2718 = distinct !DISubprogram(name: "version_etc_arn", scope: !522, file: !522, line: 62, type: !2719, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !2777)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !2721, !6, !6, !6, !2776, !76}
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2723, line: 49, baseType: !2724)
!2723 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2725, line: 241, size: 1728, elements: !2726)
!2725 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2747, !2748, !2749, !2750, !2754, !2755, !2757, !2761, !2764, !2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2724, file: !2725, line: 242, baseType: !25, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2724, file: !2725, line: 247, baseType: !32, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2724, file: !2725, line: 248, baseType: !32, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2724, file: !2725, line: 249, baseType: !32, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2724, file: !2725, line: 250, baseType: !32, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2724, file: !2725, line: 251, baseType: !32, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2724, file: !2725, line: 252, baseType: !32, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2724, file: !2725, line: 253, baseType: !32, size: 64, offset: 448)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2724, file: !2725, line: 254, baseType: !32, size: 64, offset: 512)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2724, file: !2725, line: 256, baseType: !32, size: 64, offset: 576)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2724, file: !2725, line: 257, baseType: !32, size: 64, offset: 640)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2724, file: !2725, line: 258, baseType: !32, size: 64, offset: 704)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2724, file: !2725, line: 260, baseType: !2740, size: 64, offset: 768)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2725, line: 156, size: 192, elements: !2742)
!2742 = !{!2743, !2744, !2746}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2741, file: !2725, line: 157, baseType: !2740, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2741, file: !2725, line: 158, baseType: !2745, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2741, file: !2725, line: 162, baseType: !25, size: 32, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2724, file: !2725, line: 262, baseType: !2745, size: 64, offset: 832)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2724, file: !2725, line: 264, baseType: !25, size: 32, offset: 896)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2724, file: !2725, line: 268, baseType: !25, size: 32, offset: 928)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2724, file: !2725, line: 270, baseType: !2751, size: 64, offset: 960)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2752, line: 140, baseType: !2753)
!2752 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2753 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2724, file: !2725, line: 274, baseType: !75, size: 16, offset: 1024)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2724, file: !2725, line: 275, baseType: !2756, size: 8, offset: 1040)
!2756 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2724, file: !2725, line: 276, baseType: !2758, size: 8, offset: 1048)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2759)
!2759 = !{!2760}
!2760 = !DISubrange(count: 1)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2724, file: !2725, line: 280, baseType: !2762, size: 64, offset: 1088)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2725, line: 150, baseType: null)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2724, file: !2725, line: 289, baseType: !2765, size: 64, offset: 1152)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2752, line: 141, baseType: !2753)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2724, file: !2725, line: 297, baseType: !31, size: 64, offset: 1216)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2724, file: !2725, line: 298, baseType: !31, size: 64, offset: 1280)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2724, file: !2725, line: 299, baseType: !31, size: 64, offset: 1344)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2724, file: !2725, line: 300, baseType: !31, size: 64, offset: 1408)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2724, file: !2725, line: 302, baseType: !76, size: 64, offset: 1472)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2724, file: !2725, line: 303, baseType: !25, size: 32, offset: 1536)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2724, file: !2725, line: 305, baseType: !2773, size: 160, offset: 1568)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2774)
!2774 = !{!2775}
!2775 = !DISubrange(count: 20)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783}
!2778 = !DILocalVariable(name: "stream", arg: 1, scope: !2718, file: !522, line: 62, type: !2721)
!2779 = !DILocalVariable(name: "command_name", arg: 2, scope: !2718, file: !522, line: 63, type: !6)
!2780 = !DILocalVariable(name: "package", arg: 3, scope: !2718, file: !522, line: 63, type: !6)
!2781 = !DILocalVariable(name: "version", arg: 4, scope: !2718, file: !522, line: 64, type: !6)
!2782 = !DILocalVariable(name: "authors", arg: 5, scope: !2718, file: !522, line: 65, type: !2776)
!2783 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2718, file: !522, line: 65, type: !76)
!2784 = !DILocation(line: 62, column: 24, scope: !2718)
!2785 = !DILocation(line: 63, column: 30, scope: !2718)
!2786 = !DILocation(line: 63, column: 56, scope: !2718)
!2787 = !DILocation(line: 64, column: 30, scope: !2718)
!2788 = !DILocation(line: 65, column: 39, scope: !2718)
!2789 = !DILocation(line: 65, column: 55, scope: !2718)
!2790 = !DILocation(line: 67, column: 7, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2718, file: !522, line: 67, column: 7)
!2792 = !DILocation(line: 67, column: 7, scope: !2718)
!2793 = !DILocation(line: 68, column: 5, scope: !2791)
!2794 = !DILocation(line: 70, column: 5, scope: !2791)
!2795 = !DILocation(line: 84, column: 3, scope: !2718)
!2796 = !DILocation(line: 84, column: 3, scope: !2797)
!2797 = !DILexicalBlockFile(scope: !2718, file: !522, discriminator: 1)
!2798 = !DILocation(line: 86, column: 3, scope: !2718)
!2799 = !DILocation(line: 86, column: 3, scope: !2797)
!2800 = !DILocation(line: 95, column: 3, scope: !2718)
!2801 = !DILocation(line: 99, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2718, file: !522, line: 96, column: 5)
!2803 = !DILocation(line: 102, column: 7, scope: !2802)
!2804 = !DILocation(line: 102, column: 7, scope: !2805)
!2805 = !DILexicalBlockFile(scope: !2802, file: !522, discriminator: 1)
!2806 = !DILocation(line: 103, column: 7, scope: !2802)
!2807 = !DILocation(line: 106, column: 7, scope: !2802)
!2808 = !DILocation(line: 106, column: 7, scope: !2805)
!2809 = !DILocation(line: 107, column: 7, scope: !2802)
!2810 = !DILocation(line: 110, column: 7, scope: !2802)
!2811 = !DILocation(line: 110, column: 7, scope: !2805)
!2812 = !DILocation(line: 112, column: 7, scope: !2802)
!2813 = !DILocation(line: 117, column: 7, scope: !2802)
!2814 = !DILocation(line: 117, column: 7, scope: !2805)
!2815 = !DILocation(line: 119, column: 7, scope: !2802)
!2816 = !DILocation(line: 124, column: 7, scope: !2802)
!2817 = !DILocation(line: 124, column: 7, scope: !2805)
!2818 = !DILocation(line: 126, column: 7, scope: !2802)
!2819 = !DILocation(line: 131, column: 7, scope: !2802)
!2820 = !DILocation(line: 131, column: 7, scope: !2805)
!2821 = !DILocation(line: 134, column: 7, scope: !2802)
!2822 = !DILocation(line: 139, column: 7, scope: !2802)
!2823 = !DILocation(line: 139, column: 7, scope: !2805)
!2824 = !DILocation(line: 142, column: 7, scope: !2802)
!2825 = !DILocation(line: 147, column: 7, scope: !2802)
!2826 = !DILocation(line: 147, column: 7, scope: !2805)
!2827 = !DILocation(line: 151, column: 7, scope: !2802)
!2828 = !DILocation(line: 156, column: 7, scope: !2802)
!2829 = !DILocation(line: 156, column: 7, scope: !2805)
!2830 = !DILocation(line: 160, column: 7, scope: !2802)
!2831 = !DILocation(line: 167, column: 7, scope: !2802)
!2832 = !DILocation(line: 167, column: 7, scope: !2805)
!2833 = !DILocation(line: 171, column: 7, scope: !2802)
!2834 = !DILocation(line: 173, column: 1, scope: !2718)
!2835 = distinct !DISubprogram(name: "version_etc_ar", scope: !522, file: !522, line: 180, type: !2836, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !2721, !6, !6, !6, !2776}
!2838 = !{!2839, !2840, !2841, !2842, !2843, !2844}
!2839 = !DILocalVariable(name: "stream", arg: 1, scope: !2835, file: !522, line: 180, type: !2721)
!2840 = !DILocalVariable(name: "command_name", arg: 2, scope: !2835, file: !522, line: 181, type: !6)
!2841 = !DILocalVariable(name: "package", arg: 3, scope: !2835, file: !522, line: 181, type: !6)
!2842 = !DILocalVariable(name: "version", arg: 4, scope: !2835, file: !522, line: 182, type: !6)
!2843 = !DILocalVariable(name: "authors", arg: 5, scope: !2835, file: !522, line: 182, type: !2776)
!2844 = !DILocalVariable(name: "n_authors", scope: !2835, file: !522, line: 184, type: !76)
!2845 = !DILocation(line: 180, column: 23, scope: !2835)
!2846 = !DILocation(line: 181, column: 29, scope: !2835)
!2847 = !DILocation(line: 181, column: 55, scope: !2835)
!2848 = !DILocation(line: 182, column: 29, scope: !2835)
!2849 = !DILocation(line: 182, column: 59, scope: !2835)
!2850 = !DILocation(line: 184, column: 10, scope: !2835)
!2851 = !DILocation(line: 186, column: 8, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2835, file: !522, line: 186, column: 3)
!2853 = !DILocation(line: 186, column: 23, scope: !2854)
!2854 = !DILexicalBlockFile(scope: !2855, file: !522, discriminator: 1)
!2855 = distinct !DILexicalBlock(scope: !2852, file: !522, line: 186, column: 3)
!2856 = !DILocation(line: 186, column: 3, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2852, file: !522, discriminator: 1)
!2858 = !DILocation(line: 186, column: 52, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2855, file: !522, discriminator: 3)
!2860 = distinct !{!2860, !2861, !2862}
!2861 = !DILocation(line: 186, column: 3, scope: !2852)
!2862 = !DILocation(line: 187, column: 5, scope: !2852)
!2863 = !DILocation(line: 188, column: 3, scope: !2835)
!2864 = !DILocation(line: 189, column: 1, scope: !2835)
!2865 = distinct !DISubprogram(name: "version_etc_va", scope: !522, file: !522, line: 196, type: !2866, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !2875)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2721, !6, !6, !6, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !519, line: 189, size: 192, elements: !2870)
!2870 = !{!2871, !2872, !2873, !2874}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2869, file: !519, line: 189, baseType: !95, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2869, file: !519, line: 189, baseType: !95, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2869, file: !519, line: 189, baseType: !31, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2869, file: !519, line: 189, baseType: !31, size: 64, offset: 128)
!2875 = !{!2876, !2877, !2878, !2879, !2880, !2881, !2882}
!2876 = !DILocalVariable(name: "stream", arg: 1, scope: !2865, file: !522, line: 196, type: !2721)
!2877 = !DILocalVariable(name: "command_name", arg: 2, scope: !2865, file: !522, line: 197, type: !6)
!2878 = !DILocalVariable(name: "package", arg: 3, scope: !2865, file: !522, line: 197, type: !6)
!2879 = !DILocalVariable(name: "version", arg: 4, scope: !2865, file: !522, line: 198, type: !6)
!2880 = !DILocalVariable(name: "authors", arg: 5, scope: !2865, file: !522, line: 198, type: !2868)
!2881 = !DILocalVariable(name: "n_authors", scope: !2865, file: !522, line: 200, type: !76)
!2882 = !DILocalVariable(name: "authtab", scope: !2865, file: !522, line: 201, type: !2883)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !85)
!2884 = !DILocation(line: 196, column: 23, scope: !2865)
!2885 = !DILocation(line: 197, column: 29, scope: !2865)
!2886 = !DILocation(line: 197, column: 55, scope: !2865)
!2887 = !DILocation(line: 198, column: 29, scope: !2865)
!2888 = !DILocation(line: 198, column: 46, scope: !2865)
!2889 = !DILocation(line: 201, column: 3, scope: !2865)
!2890 = !DILocation(line: 201, column: 15, scope: !2865)
!2891 = !DILocation(line: 200, column: 10, scope: !2865)
!2892 = !DILocation(line: 205, column: 35, scope: !2893)
!2893 = !DILexicalBlockFile(scope: !2894, file: !522, discriminator: 1)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !522, line: 203, column: 3)
!2895 = distinct !DILexicalBlock(scope: !2865, file: !522, line: 203, column: 3)
!2896 = !DILocation(line: 205, column: 35, scope: !2897)
!2897 = !DILexicalBlockFile(scope: !2894, file: !522, discriminator: 2)
!2898 = !DILocation(line: 205, column: 35, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2894, file: !522, discriminator: 3)
!2900 = !DILocation(line: 205, column: 35, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !2894, file: !522, discriminator: 4)
!2902 = !DILocation(line: 205, column: 14, scope: !2901)
!2903 = !DILocation(line: 205, column: 33, scope: !2901)
!2904 = !DILocation(line: 205, column: 67, scope: !2901)
!2905 = !DILocation(line: 203, column: 3, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2895, file: !522, discriminator: 1)
!2907 = !DILocation(line: 208, column: 3, scope: !2865)
!2908 = !DILocation(line: 210, column: 1, scope: !2865)
!2909 = distinct !DISubprogram(name: "version_etc", scope: !522, file: !522, line: 227, type: !2910, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !2721, !6, !6, !6, null}
!2912 = !{!2913, !2914, !2915, !2916, !2917}
!2913 = !DILocalVariable(name: "stream", arg: 1, scope: !2909, file: !522, line: 227, type: !2721)
!2914 = !DILocalVariable(name: "command_name", arg: 2, scope: !2909, file: !522, line: 228, type: !6)
!2915 = !DILocalVariable(name: "package", arg: 3, scope: !2909, file: !522, line: 228, type: !6)
!2916 = !DILocalVariable(name: "version", arg: 4, scope: !2909, file: !522, line: 229, type: !6)
!2917 = !DILocalVariable(name: "authors", scope: !2909, file: !522, line: 231, type: !2918)
!2918 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2723, line: 80, baseType: !2919)
!2919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2920, line: 50, baseType: !2921)
!2920 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !519, line: 231, baseType: !2922)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2869, size: 192, elements: !2759)
!2923 = !DILocation(line: 227, column: 20, scope: !2909)
!2924 = !DILocation(line: 228, column: 26, scope: !2909)
!2925 = !DILocation(line: 228, column: 52, scope: !2909)
!2926 = !DILocation(line: 229, column: 26, scope: !2909)
!2927 = !DILocation(line: 231, column: 3, scope: !2909)
!2928 = !DILocation(line: 231, column: 11, scope: !2909)
!2929 = !DILocation(line: 233, column: 3, scope: !2909)
!2930 = !DILocation(line: 234, column: 3, scope: !2909)
!2931 = !DILocation(line: 235, column: 3, scope: !2909)
!2932 = !DILocation(line: 236, column: 1, scope: !2909)
!2933 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !522, file: !522, line: 239, type: !681, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !4)
!2934 = !DILocation(line: 245, column: 3, scope: !2933)
!2935 = !DILocation(line: 245, column: 3, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !2933, file: !522, discriminator: 1)
!2937 = !DILocation(line: 251, column: 3, scope: !2933)
!2938 = !DILocation(line: 251, column: 3, scope: !2936)
!2939 = !DILocation(line: 256, column: 3, scope: !2933)
!2940 = !DILocation(line: 256, column: 3, scope: !2936)
!2941 = !DILocation(line: 258, column: 1, scope: !2933)
!2942 = distinct !DISubprogram(name: "xnmalloc", scope: !530, file: !530, line: 105, type: !2943, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!31, !76, !76}
!2945 = !{!2946, !2947}
!2946 = !DILocalVariable(name: "n", arg: 1, scope: !2942, file: !530, line: 105, type: !76)
!2947 = !DILocalVariable(name: "s", arg: 2, scope: !2942, file: !530, line: 105, type: !76)
!2948 = !DILocation(line: 105, column: 18, scope: !2942)
!2949 = !DILocation(line: 105, column: 28, scope: !2942)
!2950 = !DILocation(line: 107, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2942, file: !530, line: 107, column: 7)
!2952 = !DILocation(line: 107, column: 7, scope: !2942)
!2953 = !DILocation(line: 108, column: 5, scope: !2951)
!2954 = !DILocation(line: 109, column: 21, scope: !2942)
!2955 = !DILocalVariable(name: "n", arg: 1, scope: !2956, file: !2957, line: 39, type: !76)
!2956 = distinct !DISubprogram(name: "xmalloc", scope: !2957, file: !2957, line: 39, type: !2958, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !2960)
!2957 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!31, !76}
!2960 = !{!2955, !2961}
!2961 = !DILocalVariable(name: "p", scope: !2956, file: !2957, line: 41, type: !31)
!2962 = !DILocation(line: 39, column: 17, scope: !2956, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 109, column: 10, scope: !2942)
!2964 = !DILocation(line: 41, column: 13, scope: !2956, inlinedAt: !2963)
!2965 = !DILocation(line: 41, column: 9, scope: !2956, inlinedAt: !2963)
!2966 = !DILocation(line: 42, column: 8, scope: !2967, inlinedAt: !2963)
!2967 = distinct !DILexicalBlock(scope: !2956, file: !2957, line: 42, column: 7)
!2968 = !DILocation(line: 42, column: 15, scope: !2969, inlinedAt: !2963)
!2969 = !DILexicalBlockFile(scope: !2967, file: !2957, discriminator: 1)
!2970 = !DILocation(line: 42, column: 10, scope: !2967, inlinedAt: !2963)
!2971 = !DILocation(line: 43, column: 5, scope: !2967, inlinedAt: !2963)
!2972 = !DILocation(line: 109, column: 3, scope: !2942)
!2973 = !DILocation(line: 39, column: 17, scope: !2956)
!2974 = !DILocation(line: 41, column: 13, scope: !2956)
!2975 = !DILocation(line: 41, column: 9, scope: !2956)
!2976 = !DILocation(line: 42, column: 8, scope: !2967)
!2977 = !DILocation(line: 42, column: 15, scope: !2969)
!2978 = !DILocation(line: 42, column: 10, scope: !2967)
!2979 = !DILocation(line: 43, column: 5, scope: !2967)
!2980 = !DILocation(line: 44, column: 3, scope: !2956)
!2981 = distinct !DISubprogram(name: "xnrealloc", scope: !530, file: !530, line: 118, type: !2982, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!31, !31, !76, !76}
!2984 = !{!2985, !2986, !2987}
!2985 = !DILocalVariable(name: "p", arg: 1, scope: !2981, file: !530, line: 118, type: !31)
!2986 = !DILocalVariable(name: "n", arg: 2, scope: !2981, file: !530, line: 118, type: !76)
!2987 = !DILocalVariable(name: "s", arg: 3, scope: !2981, file: !530, line: 118, type: !76)
!2988 = !DILocation(line: 118, column: 18, scope: !2981)
!2989 = !DILocation(line: 118, column: 28, scope: !2981)
!2990 = !DILocation(line: 118, column: 38, scope: !2981)
!2991 = !DILocation(line: 120, column: 7, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2981, file: !530, line: 120, column: 7)
!2993 = !DILocation(line: 120, column: 7, scope: !2981)
!2994 = !DILocation(line: 121, column: 5, scope: !2992)
!2995 = !DILocation(line: 122, column: 25, scope: !2981)
!2996 = !DILocalVariable(name: "p", arg: 1, scope: !2997, file: !2957, line: 51, type: !31)
!2997 = distinct !DISubprogram(name: "xrealloc", scope: !2957, file: !2957, line: 51, type: !2998, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!31, !31, !76}
!3000 = !{!2996, !3001}
!3001 = !DILocalVariable(name: "n", arg: 2, scope: !2997, file: !2957, line: 51, type: !76)
!3002 = !DILocation(line: 51, column: 17, scope: !2997, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 122, column: 10, scope: !2981)
!3004 = !DILocation(line: 51, column: 27, scope: !2997, inlinedAt: !3003)
!3005 = !DILocation(line: 53, column: 8, scope: !3006, inlinedAt: !3003)
!3006 = distinct !DILexicalBlock(scope: !2997, file: !2957, line: 53, column: 7)
!3007 = !DILocation(line: 53, column: 13, scope: !3008, inlinedAt: !3003)
!3008 = !DILexicalBlockFile(scope: !3006, file: !2957, discriminator: 1)
!3009 = !DILocation(line: 53, column: 10, scope: !3006, inlinedAt: !3003)
!3010 = !DILocation(line: 57, column: 7, scope: !3011, inlinedAt: !3003)
!3011 = distinct !DILexicalBlock(scope: !3006, file: !2957, line: 54, column: 5)
!3012 = !DILocation(line: 58, column: 7, scope: !3011, inlinedAt: !3003)
!3013 = !DILocation(line: 61, column: 7, scope: !2997, inlinedAt: !3003)
!3014 = !DILocation(line: 62, column: 8, scope: !3015, inlinedAt: !3003)
!3015 = distinct !DILexicalBlock(scope: !2997, file: !2957, line: 62, column: 7)
!3016 = !DILocation(line: 62, column: 13, scope: !3017, inlinedAt: !3003)
!3017 = !DILexicalBlockFile(scope: !3015, file: !2957, discriminator: 1)
!3018 = !DILocation(line: 62, column: 10, scope: !3015, inlinedAt: !3003)
!3019 = !DILocation(line: 63, column: 5, scope: !3015, inlinedAt: !3003)
!3020 = !DILocation(line: 122, column: 3, scope: !2981)
!3021 = !DILocation(line: 51, column: 17, scope: !2997)
!3022 = !DILocation(line: 51, column: 27, scope: !2997)
!3023 = !DILocation(line: 53, column: 8, scope: !3006)
!3024 = !DILocation(line: 53, column: 13, scope: !3008)
!3025 = !DILocation(line: 53, column: 10, scope: !3006)
!3026 = !DILocation(line: 57, column: 7, scope: !3011)
!3027 = !DILocation(line: 58, column: 7, scope: !3011)
!3028 = !DILocation(line: 61, column: 7, scope: !2997)
!3029 = !DILocation(line: 62, column: 8, scope: !3015)
!3030 = !DILocation(line: 62, column: 13, scope: !3017)
!3031 = !DILocation(line: 62, column: 10, scope: !3015)
!3032 = !DILocation(line: 63, column: 5, scope: !3015)
!3033 = !DILocation(line: 65, column: 1, scope: !2997)
!3034 = !DILocation(line: 180, column: 19, scope: !531)
!3035 = !DILocation(line: 180, column: 30, scope: !531)
!3036 = !DILocation(line: 180, column: 41, scope: !531)
!3037 = !DILocation(line: 182, column: 14, scope: !531)
!3038 = !DILocation(line: 182, column: 10, scope: !531)
!3039 = !DILocation(line: 184, column: 9, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !531, file: !530, line: 184, column: 7)
!3041 = !DILocation(line: 184, column: 7, scope: !531)
!3042 = !DILocation(line: 186, column: 13, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !530, line: 186, column: 11)
!3044 = distinct !DILexicalBlock(scope: !3040, file: !530, line: 185, column: 5)
!3045 = !DILocation(line: 186, column: 11, scope: !3044)
!3046 = !DILocation(line: 194, column: 30, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3043, file: !530, line: 187, column: 9)
!3048 = !DILocation(line: 195, column: 16, scope: !3047)
!3049 = !DILocation(line: 195, column: 13, scope: !3047)
!3050 = !DILocation(line: 196, column: 9, scope: !3047)
!3051 = !DILocation(line: 204, column: 69, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !530, line: 204, column: 11)
!3053 = distinct !DILexicalBlock(scope: !3040, file: !530, line: 199, column: 5)
!3054 = !DILocation(line: 205, column: 11, scope: !3052)
!3055 = !DILocation(line: 204, column: 11, scope: !3053)
!3056 = !DILocation(line: 206, column: 9, scope: !3052)
!3057 = !DILocation(line: 210, column: 7, scope: !531)
!3058 = !DILocation(line: 211, column: 25, scope: !531)
!3059 = !DILocation(line: 51, column: 17, scope: !2997, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 211, column: 10, scope: !531)
!3061 = !DILocation(line: 51, column: 27, scope: !2997, inlinedAt: !3060)
!3062 = !DILocation(line: 53, column: 10, scope: !3006, inlinedAt: !3060)
!3063 = !DILocation(line: 207, column: 14, scope: !3053)
!3064 = !DILocation(line: 207, column: 18, scope: !3053)
!3065 = !DILocation(line: 207, column: 9, scope: !3053)
!3066 = !DILocation(line: 53, column: 8, scope: !3006, inlinedAt: !3060)
!3067 = !DILocation(line: 57, column: 7, scope: !3011, inlinedAt: !3060)
!3068 = !DILocation(line: 58, column: 7, scope: !3011, inlinedAt: !3060)
!3069 = !DILocation(line: 61, column: 7, scope: !2997, inlinedAt: !3060)
!3070 = !DILocation(line: 62, column: 8, scope: !3015, inlinedAt: !3060)
!3071 = !DILocation(line: 62, column: 13, scope: !3017, inlinedAt: !3060)
!3072 = !DILocation(line: 62, column: 10, scope: !3015, inlinedAt: !3060)
!3073 = !DILocation(line: 63, column: 5, scope: !3015, inlinedAt: !3060)
!3074 = !DILocation(line: 211, column: 3, scope: !531)
!3075 = distinct !DISubprogram(name: "xcharalloc", scope: !530, file: !530, line: 220, type: !1990, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3076)
!3076 = !{!3077}
!3077 = !DILocalVariable(name: "n", arg: 1, scope: !3075, file: !530, line: 220, type: !76)
!3078 = !DILocation(line: 220, column: 20, scope: !3075)
!3079 = !DILocation(line: 39, column: 17, scope: !2956, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 222, column: 10, scope: !3075)
!3081 = !DILocation(line: 41, column: 13, scope: !2956, inlinedAt: !3080)
!3082 = !DILocation(line: 41, column: 9, scope: !2956, inlinedAt: !3080)
!3083 = !DILocation(line: 42, column: 8, scope: !2967, inlinedAt: !3080)
!3084 = !DILocation(line: 42, column: 15, scope: !2969, inlinedAt: !3080)
!3085 = !DILocation(line: 42, column: 10, scope: !2967, inlinedAt: !3080)
!3086 = !DILocation(line: 43, column: 5, scope: !2967, inlinedAt: !3080)
!3087 = !DILocation(line: 222, column: 3, scope: !3075)
!3088 = distinct !DISubprogram(name: "x2realloc", scope: !2957, file: !2957, line: 74, type: !3089, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!31, !31, !534}
!3091 = !{!3092, !3093}
!3092 = !DILocalVariable(name: "p", arg: 1, scope: !3088, file: !2957, line: 74, type: !31)
!3093 = !DILocalVariable(name: "pn", arg: 2, scope: !3088, file: !2957, line: 74, type: !534)
!3094 = !DILocation(line: 74, column: 18, scope: !3088)
!3095 = !DILocation(line: 74, column: 29, scope: !3088)
!3096 = !DILocation(line: 180, column: 19, scope: !531, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 76, column: 10, scope: !3088)
!3098 = !DILocation(line: 180, column: 30, scope: !531, inlinedAt: !3097)
!3099 = !DILocation(line: 180, column: 41, scope: !531, inlinedAt: !3097)
!3100 = !DILocation(line: 182, column: 14, scope: !531, inlinedAt: !3097)
!3101 = !DILocation(line: 182, column: 10, scope: !531, inlinedAt: !3097)
!3102 = !DILocation(line: 184, column: 9, scope: !3040, inlinedAt: !3097)
!3103 = !DILocation(line: 184, column: 7, scope: !531, inlinedAt: !3097)
!3104 = !DILocation(line: 186, column: 13, scope: !3043, inlinedAt: !3097)
!3105 = !DILocation(line: 186, column: 11, scope: !3044, inlinedAt: !3097)
!3106 = !DILocation(line: 210, column: 7, scope: !531, inlinedAt: !3097)
!3107 = !DILocation(line: 51, column: 17, scope: !2997, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 211, column: 10, scope: !531, inlinedAt: !3097)
!3109 = !DILocation(line: 51, column: 27, scope: !2997, inlinedAt: !3108)
!3110 = !DILocation(line: 53, column: 10, scope: !3006, inlinedAt: !3108)
!3111 = !DILocation(line: 205, column: 11, scope: !3052, inlinedAt: !3097)
!3112 = !DILocation(line: 204, column: 11, scope: !3053, inlinedAt: !3097)
!3113 = !DILocation(line: 206, column: 9, scope: !3052, inlinedAt: !3097)
!3114 = !DILocation(line: 207, column: 14, scope: !3053, inlinedAt: !3097)
!3115 = !DILocation(line: 207, column: 18, scope: !3053, inlinedAt: !3097)
!3116 = !DILocation(line: 207, column: 9, scope: !3053, inlinedAt: !3097)
!3117 = !DILocation(line: 53, column: 8, scope: !3006, inlinedAt: !3108)
!3118 = !DILocation(line: 57, column: 7, scope: !3011, inlinedAt: !3108)
!3119 = !DILocation(line: 58, column: 7, scope: !3011, inlinedAt: !3108)
!3120 = !DILocation(line: 61, column: 7, scope: !2997, inlinedAt: !3108)
!3121 = !DILocation(line: 62, column: 8, scope: !3015, inlinedAt: !3108)
!3122 = !DILocation(line: 62, column: 13, scope: !3017, inlinedAt: !3108)
!3123 = !DILocation(line: 62, column: 10, scope: !3015, inlinedAt: !3108)
!3124 = !DILocation(line: 63, column: 5, scope: !3015, inlinedAt: !3108)
!3125 = !DILocation(line: 76, column: 3, scope: !3088)
!3126 = distinct !DISubprogram(name: "xzalloc", scope: !2957, file: !2957, line: 84, type: !2958, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3127)
!3127 = !{!3128}
!3128 = !DILocalVariable(name: "s", arg: 1, scope: !3126, file: !2957, line: 84, type: !76)
!3129 = !DILocation(line: 84, column: 17, scope: !3126)
!3130 = !DILocation(line: 39, column: 17, scope: !2956, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 86, column: 18, scope: !3126)
!3132 = !DILocation(line: 41, column: 13, scope: !2956, inlinedAt: !3131)
!3133 = !DILocation(line: 41, column: 9, scope: !2956, inlinedAt: !3131)
!3134 = !DILocation(line: 42, column: 8, scope: !2967, inlinedAt: !3131)
!3135 = !DILocation(line: 42, column: 15, scope: !2969, inlinedAt: !3131)
!3136 = !DILocation(line: 42, column: 10, scope: !2967, inlinedAt: !3131)
!3137 = !DILocation(line: 43, column: 5, scope: !2967, inlinedAt: !3131)
!3138 = !DILocation(line: 86, column: 10, scope: !3126)
!3139 = !DILocation(line: 86, column: 3, scope: !3126)
!3140 = distinct !DISubprogram(name: "xcalloc", scope: !2957, file: !2957, line: 93, type: !2943, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3141)
!3141 = !{!3142, !3143, !3144}
!3142 = !DILocalVariable(name: "n", arg: 1, scope: !3140, file: !2957, line: 93, type: !76)
!3143 = !DILocalVariable(name: "s", arg: 2, scope: !3140, file: !2957, line: 93, type: !76)
!3144 = !DILocalVariable(name: "p", scope: !3140, file: !2957, line: 95, type: !31)
!3145 = !DILocation(line: 93, column: 17, scope: !3140)
!3146 = !DILocation(line: 93, column: 27, scope: !3140)
!3147 = !DILocation(line: 100, column: 7, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3140, file: !2957, line: 100, column: 7)
!3149 = !DILocation(line: 101, column: 7, scope: !3148)
!3150 = !DILocation(line: 101, column: 18, scope: !3151)
!3151 = !DILexicalBlockFile(scope: !3148, file: !2957, discriminator: 1)
!3152 = !DILocation(line: 95, column: 9, scope: !3140)
!3153 = !DILocation(line: 101, column: 16, scope: !3151)
!3154 = !DILocation(line: 100, column: 7, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !3140, file: !2957, discriminator: 1)
!3156 = !DILocation(line: 102, column: 5, scope: !3148)
!3157 = !DILocation(line: 103, column: 3, scope: !3140)
!3158 = distinct !DISubprogram(name: "xmemdup", scope: !2957, file: !2957, line: 111, type: !3159, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!31, !483, !76}
!3161 = !{!3162, !3163}
!3162 = !DILocalVariable(name: "p", arg: 1, scope: !3158, file: !2957, line: 111, type: !483)
!3163 = !DILocalVariable(name: "s", arg: 2, scope: !3158, file: !2957, line: 111, type: !76)
!3164 = !DILocation(line: 111, column: 22, scope: !3158)
!3165 = !DILocation(line: 111, column: 32, scope: !3158)
!3166 = !DILocation(line: 39, column: 17, scope: !2956, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 113, column: 18, scope: !3158)
!3168 = !DILocation(line: 41, column: 13, scope: !2956, inlinedAt: !3167)
!3169 = !DILocation(line: 41, column: 9, scope: !2956, inlinedAt: !3167)
!3170 = !DILocation(line: 42, column: 8, scope: !2967, inlinedAt: !3167)
!3171 = !DILocation(line: 42, column: 15, scope: !2969, inlinedAt: !3167)
!3172 = !DILocation(line: 42, column: 10, scope: !2967, inlinedAt: !3167)
!3173 = !DILocation(line: 43, column: 5, scope: !2967, inlinedAt: !3167)
!3174 = !DILocation(line: 113, column: 10, scope: !3158)
!3175 = !DILocation(line: 113, column: 3, scope: !3158)
!3176 = distinct !DISubprogram(name: "xstrdup", scope: !2957, file: !2957, line: 119, type: !2197, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3177)
!3177 = !{!3178}
!3178 = !DILocalVariable(name: "string", arg: 1, scope: !3176, file: !2957, line: 119, type: !6)
!3179 = !DILocation(line: 119, column: 22, scope: !3176)
!3180 = !DILocation(line: 121, column: 27, scope: !3176)
!3181 = !DILocation(line: 121, column: 43, scope: !3176)
!3182 = !DILocation(line: 111, column: 22, scope: !3158, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 121, column: 10, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !3176, file: !2957, discriminator: 1)
!3185 = !DILocation(line: 111, column: 32, scope: !3158, inlinedAt: !3183)
!3186 = !DILocation(line: 39, column: 17, scope: !2956, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 113, column: 18, scope: !3158, inlinedAt: !3183)
!3188 = !DILocation(line: 41, column: 13, scope: !2956, inlinedAt: !3187)
!3189 = !DILocation(line: 41, column: 9, scope: !2956, inlinedAt: !3187)
!3190 = !DILocation(line: 42, column: 8, scope: !2967, inlinedAt: !3187)
!3191 = !DILocation(line: 42, column: 15, scope: !2969, inlinedAt: !3187)
!3192 = !DILocation(line: 42, column: 10, scope: !2967, inlinedAt: !3187)
!3193 = !DILocation(line: 43, column: 5, scope: !2967, inlinedAt: !3187)
!3194 = !DILocation(line: 113, column: 10, scope: !3158, inlinedAt: !3183)
!3195 = !DILocation(line: 121, column: 3, scope: !3176)
!3196 = distinct !DISubprogram(name: "xalloc_die", scope: !3197, file: !3197, line: 32, type: !681, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !543, variables: !4)
!3197 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3198 = !DILocation(line: 34, column: 10, scope: !3196)
!3199 = !DILocation(line: 34, column: 33, scope: !3196)
!3200 = !DILocation(line: 34, column: 3, scope: !3201)
!3201 = !DILexicalBlockFile(scope: !3196, file: !3197, discriminator: 1)
!3202 = !DILocation(line: 40, column: 3, scope: !3196)
!3203 = distinct !DISubprogram(name: "rpl_calloc", scope: !3204, file: !3204, line: 42, type: !2943, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3205)
!3204 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3205 = !{!3206, !3207, !3208, !3209}
!3206 = !DILocalVariable(name: "n", arg: 1, scope: !3203, file: !3204, line: 42, type: !76)
!3207 = !DILocalVariable(name: "s", arg: 2, scope: !3203, file: !3204, line: 42, type: !76)
!3208 = !DILocalVariable(name: "result", scope: !3203, file: !3204, line: 44, type: !31)
!3209 = !DILocalVariable(name: "bytes", scope: !3210, file: !3204, line: 56, type: !76)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !3204, line: 53, column: 5)
!3211 = distinct !DILexicalBlock(scope: !3203, file: !3204, line: 47, column: 7)
!3212 = !DILocation(line: 42, column: 20, scope: !3203)
!3213 = !DILocation(line: 42, column: 30, scope: !3203)
!3214 = !DILocation(line: 47, column: 9, scope: !3211)
!3215 = !DILocation(line: 47, column: 19, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3211, file: !3204, discriminator: 1)
!3217 = !DILocation(line: 47, column: 14, scope: !3211)
!3218 = !DILocation(line: 56, column: 24, scope: !3210)
!3219 = !DILocation(line: 56, column: 14, scope: !3210)
!3220 = !DILocation(line: 57, column: 17, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3210, file: !3204, line: 57, column: 11)
!3222 = !DILocation(line: 57, column: 21, scope: !3221)
!3223 = !DILocation(line: 57, column: 11, scope: !3210)
!3224 = !DILocation(line: 59, column: 11, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3221, file: !3204, line: 58, column: 9)
!3226 = !DILocation(line: 59, column: 17, scope: !3225)
!3227 = !DILocation(line: 65, column: 12, scope: !3203)
!3228 = !DILocation(line: 44, column: 9, scope: !3203)
!3229 = !DILocation(line: 72, column: 3, scope: !3203)
!3230 = !DILocation(line: 73, column: 1, scope: !3203)
!3231 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3232, file: !3232, line: 334, type: !3233, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3247)
!3232 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!76, !3235, !6, !76, !3236}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !959, line: 107, baseType: !3238)
!3238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !959, line: 95, baseType: !3239)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !959, line: 83, size: 64, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3239, file: !959, line: 85, baseType: !25, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3239, file: !959, line: 94, baseType: !3243, size: 32, offset: 32)
!3243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3239, file: !959, line: 86, size: 32, elements: !3244)
!3244 = !{!3245, !3246}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3243, file: !959, line: 89, baseType: !95, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3243, file: !959, line: 93, baseType: !969, size: 32)
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254}
!3248 = !DILocalVariable(name: "pwc", arg: 1, scope: !3231, file: !3232, line: 334, type: !3235)
!3249 = !DILocalVariable(name: "s", arg: 2, scope: !3231, file: !3232, line: 334, type: !6)
!3250 = !DILocalVariable(name: "n", arg: 3, scope: !3231, file: !3232, line: 334, type: !76)
!3251 = !DILocalVariable(name: "ps", arg: 4, scope: !3231, file: !3232, line: 334, type: !3236)
!3252 = !DILocalVariable(name: "ret", scope: !3231, file: !3232, line: 336, type: !76)
!3253 = !DILocalVariable(name: "wc", scope: !3231, file: !3232, line: 337, type: !974)
!3254 = !DILocalVariable(name: "uc", scope: !3255, file: !3232, line: 398, type: !476)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !3232, line: 397, column: 5)
!3256 = distinct !DILexicalBlock(scope: !3231, file: !3232, line: 396, column: 7)
!3257 = !DILocation(line: 334, column: 23, scope: !3231)
!3258 = !DILocation(line: 334, column: 40, scope: !3231)
!3259 = !DILocation(line: 334, column: 50, scope: !3231)
!3260 = !DILocation(line: 334, column: 64, scope: !3231)
!3261 = !DILocation(line: 337, column: 3, scope: !3231)
!3262 = !DILocation(line: 353, column: 9, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3231, file: !3232, line: 353, column: 7)
!3264 = !DILocation(line: 353, column: 7, scope: !3231)
!3265 = !DILocation(line: 388, column: 9, scope: !3231)
!3266 = !DILocation(line: 336, column: 10, scope: !3231)
!3267 = !DILocation(line: 396, column: 19, scope: !3256)
!3268 = !DILocation(line: 396, column: 31, scope: !3269)
!3269 = !DILexicalBlockFile(scope: !3256, file: !3232, discriminator: 1)
!3270 = !DILocation(line: 396, column: 26, scope: !3256)
!3271 = !DILocation(line: 396, column: 41, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3256, file: !3232, discriminator: 2)
!3273 = !DILocation(line: 396, column: 7, scope: !3274)
!3274 = !DILexicalBlockFile(scope: !3231, file: !3232, discriminator: 2)
!3275 = !DILocation(line: 398, column: 26, scope: !3255)
!3276 = !DILocation(line: 398, column: 21, scope: !3255)
!3277 = !DILocation(line: 399, column: 14, scope: !3255)
!3278 = !DILocation(line: 399, column: 12, scope: !3255)
!3279 = !DILocation(line: 405, column: 1, scope: !3231)
!3280 = distinct !DISubprogram(name: "close_stream", scope: !3281, file: !3281, line: 56, type: !3282, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3324)
!3281 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!25, !3284}
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2723, line: 49, baseType: !3286)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2725, line: 241, size: 1728, elements: !3287)
!3287 = !{!3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3286, file: !2725, line: 242, baseType: !25, size: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3286, file: !2725, line: 247, baseType: !32, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3286, file: !2725, line: 248, baseType: !32, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3286, file: !2725, line: 249, baseType: !32, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3286, file: !2725, line: 250, baseType: !32, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3286, file: !2725, line: 251, baseType: !32, size: 64, offset: 320)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3286, file: !2725, line: 252, baseType: !32, size: 64, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3286, file: !2725, line: 253, baseType: !32, size: 64, offset: 448)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3286, file: !2725, line: 254, baseType: !32, size: 64, offset: 512)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3286, file: !2725, line: 256, baseType: !32, size: 64, offset: 576)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3286, file: !2725, line: 257, baseType: !32, size: 64, offset: 640)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3286, file: !2725, line: 258, baseType: !32, size: 64, offset: 704)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3286, file: !2725, line: 260, baseType: !3301, size: 64, offset: 768)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2725, line: 156, size: 192, elements: !3303)
!3303 = !{!3304, !3305, !3307}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3302, file: !2725, line: 157, baseType: !3301, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3302, file: !2725, line: 158, baseType: !3306, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3302, file: !2725, line: 162, baseType: !25, size: 32, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3286, file: !2725, line: 262, baseType: !3306, size: 64, offset: 832)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3286, file: !2725, line: 264, baseType: !25, size: 32, offset: 896)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3286, file: !2725, line: 268, baseType: !25, size: 32, offset: 928)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3286, file: !2725, line: 270, baseType: !2751, size: 64, offset: 960)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3286, file: !2725, line: 274, baseType: !75, size: 16, offset: 1024)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3286, file: !2725, line: 275, baseType: !2756, size: 8, offset: 1040)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3286, file: !2725, line: 276, baseType: !2758, size: 8, offset: 1048)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3286, file: !2725, line: 280, baseType: !2762, size: 64, offset: 1088)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3286, file: !2725, line: 289, baseType: !2765, size: 64, offset: 1152)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3286, file: !2725, line: 297, baseType: !31, size: 64, offset: 1216)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3286, file: !2725, line: 298, baseType: !31, size: 64, offset: 1280)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3286, file: !2725, line: 299, baseType: !31, size: 64, offset: 1344)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3286, file: !2725, line: 300, baseType: !31, size: 64, offset: 1408)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3286, file: !2725, line: 302, baseType: !76, size: 64, offset: 1472)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3286, file: !2725, line: 303, baseType: !25, size: 32, offset: 1536)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3286, file: !2725, line: 305, baseType: !2773, size: 160, offset: 1568)
!3324 = !{!3325, !3326, !3328, !3329}
!3325 = !DILocalVariable(name: "stream", arg: 1, scope: !3280, file: !3281, line: 56, type: !3284)
!3326 = !DILocalVariable(name: "some_pending", scope: !3280, file: !3281, line: 58, type: !3327)
!3327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3328 = !DILocalVariable(name: "prev_fail", scope: !3280, file: !3281, line: 59, type: !3327)
!3329 = !DILocalVariable(name: "fclose_fail", scope: !3280, file: !3281, line: 60, type: !3327)
!3330 = !DILocation(line: 56, column: 21, scope: !3280)
!3331 = !DILocation(line: 58, column: 30, scope: !3280)
!3332 = !DILocalVariable(name: "__stream", arg: 1, scope: !3333, file: !3334, line: 132, type: !3284)
!3333 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3334, file: !3334, line: 132, type: !3282, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3335)
!3334 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3335 = !{!3332}
!3336 = !DILocation(line: 132, column: 1, scope: !3333, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 59, column: 27, scope: !3280)
!3338 = !DILocation(line: 134, column: 10, scope: !3333, inlinedAt: !3337)
!3339 = !{!3340, !700, i64 0}
!3340 = !{!"_IO_FILE", !700, i64 0, !576, i64 8, !576, i64 16, !576, i64 24, !576, i64 32, !576, i64 40, !576, i64 48, !576, i64 56, !576, i64 64, !576, i64 72, !576, i64 80, !576, i64 88, !576, i64 96, !576, i64 104, !700, i64 112, !700, i64 116, !2035, i64 120, !1327, i64 128, !577, i64 130, !577, i64 131, !576, i64 136, !2035, i64 144, !576, i64 152, !576, i64 160, !576, i64 168, !576, i64 176, !2035, i64 184, !700, i64 192, !577, i64 196}
!3341 = !DILocation(line: 59, column: 43, scope: !3280)
!3342 = !DILocation(line: 60, column: 29, scope: !3280)
!3343 = !DILocation(line: 60, column: 45, scope: !3280)
!3344 = !DILocation(line: 70, column: 17, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3280, file: !3281, line: 70, column: 7)
!3346 = !DILocation(line: 70, column: 33, scope: !3347)
!3347 = !DILexicalBlockFile(scope: !3345, file: !3281, discriminator: 1)
!3348 = !DILocation(line: 70, column: 53, scope: !3349)
!3349 = !DILexicalBlockFile(scope: !3345, file: !3281, discriminator: 3)
!3350 = !DILocation(line: 70, column: 7, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !3280, file: !3281, discriminator: 3)
!3352 = !DILocation(line: 72, column: 11, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3345, file: !3281, line: 71, column: 5)
!3354 = !DILocation(line: 73, column: 9, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3353, file: !3281, line: 72, column: 11)
!3356 = !DILocation(line: 73, column: 15, scope: !3355)
!3357 = !DILocation(line: 78, column: 1, scope: !3280)
!3358 = distinct !DISubprogram(name: "hard_locale", scope: !3359, file: !3359, line: 38, type: !3360, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3362)
!3359 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!17, !25}
!3362 = !{!3363, !3364, !3365, !3366, !3373, !3374, !3376, !3377, !3379, !3380, !3382}
!3363 = !DILocalVariable(name: "category", arg: 1, scope: !3358, file: !3359, line: 38, type: !25)
!3364 = !DILocalVariable(name: "hard", scope: !3358, file: !3359, line: 40, type: !17)
!3365 = !DILocalVariable(name: "p", scope: !3358, file: !3359, line: 41, type: !6)
!3366 = !DILocalVariable(name: "__s1_len", scope: !3367, file: !3359, line: 47, type: !76)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !3359, line: 47, column: 15)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !3359, line: 47, column: 15)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3359, line: 46, column: 9)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !3359, line: 45, column: 11)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !3359, line: 44, column: 5)
!3372 = distinct !DILexicalBlock(scope: !3358, file: !3359, line: 43, column: 7)
!3373 = !DILocalVariable(name: "__s2_len", scope: !3367, file: !3359, line: 47, type: !76)
!3374 = !DILocalVariable(name: "__s2", scope: !3375, file: !3359, line: 47, type: !485)
!3375 = distinct !DILexicalBlock(scope: !3367, file: !3359, line: 47, column: 15)
!3376 = !DILocalVariable(name: "__result", scope: !3375, file: !3359, line: 47, type: !25)
!3377 = !DILocalVariable(name: "__s1_len", scope: !3378, file: !3359, line: 47, type: !76)
!3378 = distinct !DILexicalBlock(scope: !3368, file: !3359, line: 47, column: 39)
!3379 = !DILocalVariable(name: "__s2_len", scope: !3378, file: !3359, line: 47, type: !76)
!3380 = !DILocalVariable(name: "__s2", scope: !3381, file: !3359, line: 47, type: !485)
!3381 = distinct !DILexicalBlock(scope: !3378, file: !3359, line: 47, column: 39)
!3382 = !DILocalVariable(name: "__result", scope: !3381, file: !3359, line: 47, type: !25)
!3383 = !DILocation(line: 38, column: 18, scope: !3358)
!3384 = !DILocation(line: 40, column: 8, scope: !3358)
!3385 = !DILocation(line: 41, column: 19, scope: !3358)
!3386 = !DILocation(line: 41, column: 15, scope: !3358)
!3387 = !DILocation(line: 43, column: 7, scope: !3372)
!3388 = !DILocation(line: 43, column: 7, scope: !3358)
!3389 = !DILocation(line: 47, column: 15, scope: !3367)
!3390 = !DILocation(line: 47, column: 15, scope: !3375)
!3391 = !DILocation(line: 47, column: 15, scope: !3392)
!3392 = !DILexicalBlockFile(scope: !3375, file: !3359, discriminator: 2)
!3393 = !DILocation(line: 47, column: 15, scope: !3394)
!3394 = !DILexicalBlockFile(scope: !3395, file: !3359, discriminator: 3)
!3395 = distinct !DILexicalBlock(scope: !3375, file: !3359, line: 47, column: 15)
!3396 = !DILocation(line: 47, column: 15, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !3395, file: !3359, discriminator: 2)
!3398 = !DILocation(line: 47, column: 15, scope: !3399)
!3399 = !DILexicalBlockFile(scope: !3400, file: !3359, discriminator: 4)
!3400 = distinct !DILexicalBlock(scope: !3395, file: !3359, line: 47, column: 15)
!3401 = !DILocation(line: 47, column: 15, scope: !3402)
!3402 = !DILexicalBlockFile(scope: !3367, file: !3359, discriminator: 11)
!3403 = !DILocation(line: 47, column: 36, scope: !3404)
!3404 = !DILexicalBlockFile(scope: !3368, file: !3359, discriminator: 13)
!3405 = !DILocation(line: 47, column: 39, scope: !3378)
!3406 = !DILocation(line: 47, column: 39, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3378, file: !3359, discriminator: 26)
!3408 = !DILocation(line: 47, column: 59, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !3368, file: !3359, discriminator: 27)
!3410 = !DILocation(line: 47, column: 15, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3369, file: !3359, discriminator: 27)
!3412 = !DILocation(line: 48, column: 13, scope: !3368)
!3413 = !DILocation(line: 71, column: 3, scope: !3358)
!3414 = distinct !DISubprogram(name: "locale_charset", scope: !478, file: !478, line: 393, type: !3415, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3417)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!6}
!3417 = !{!3418, !3419, !3420, !3425}
!3418 = !DILocalVariable(name: "codeset", scope: !3414, file: !478, line: 395, type: !6)
!3419 = !DILocalVariable(name: "aliases", scope: !3414, file: !478, line: 396, type: !6)
!3420 = !DILocalVariable(name: "__s1_len", scope: !3421, file: !478, line: 592, type: !76)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !478, line: 592, column: 9)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !478, line: 592, column: 9)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !478, line: 589, column: 3)
!3424 = distinct !DILexicalBlock(scope: !3414, file: !478, line: 589, column: 3)
!3425 = !DILocalVariable(name: "__s2_len", scope: !3421, file: !478, line: 592, type: !76)
!3426 = !DILocalVariable(name: "buf1", scope: !3427, file: !478, line: 196, type: !3494)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !478, line: 194, column: 21)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !478, line: 193, column: 19)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !478, line: 193, column: 19)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !478, line: 188, column: 17)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !478, line: 181, column: 19)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !478, line: 177, column: 13)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !478, line: 173, column: 15)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !478, line: 161, column: 9)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !478, line: 157, column: 11)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !478, line: 130, column: 5)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !478, line: 129, column: 7)
!3438 = distinct !DISubprogram(name: "get_charset_aliases", scope: !478, file: !478, line: 124, type: !3415, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3439)
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3446, !3447, !3448, !3449, !3490, !3491, !3492, !3426, !3493, !3497, !3498, !3499}
!3440 = !DILocalVariable(name: "cp", scope: !3438, file: !478, line: 126, type: !6)
!3441 = !DILocalVariable(name: "dir", scope: !3436, file: !478, line: 132, type: !6)
!3442 = !DILocalVariable(name: "base", scope: !3436, file: !478, line: 133, type: !6)
!3443 = !DILocalVariable(name: "file_name", scope: !3436, file: !478, line: 134, type: !32)
!3444 = !DILocalVariable(name: "dir_len", scope: !3445, file: !478, line: 144, type: !76)
!3445 = distinct !DILexicalBlock(scope: !3436, file: !478, line: 143, column: 7)
!3446 = !DILocalVariable(name: "base_len", scope: !3445, file: !478, line: 145, type: !76)
!3447 = !DILocalVariable(name: "add_slash", scope: !3445, file: !478, line: 146, type: !25)
!3448 = !DILocalVariable(name: "fd", scope: !3434, file: !478, line: 162, type: !25)
!3449 = !DILocalVariable(name: "fp", scope: !3432, file: !478, line: 178, type: !3450)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2723, line: 49, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2725, line: 241, size: 1728, elements: !3453)
!3453 = !{!3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3452, file: !2725, line: 242, baseType: !25, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3452, file: !2725, line: 247, baseType: !32, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3452, file: !2725, line: 248, baseType: !32, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3452, file: !2725, line: 249, baseType: !32, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3452, file: !2725, line: 250, baseType: !32, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3452, file: !2725, line: 251, baseType: !32, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3452, file: !2725, line: 252, baseType: !32, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3452, file: !2725, line: 253, baseType: !32, size: 64, offset: 448)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3452, file: !2725, line: 254, baseType: !32, size: 64, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3452, file: !2725, line: 256, baseType: !32, size: 64, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3452, file: !2725, line: 257, baseType: !32, size: 64, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3452, file: !2725, line: 258, baseType: !32, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3452, file: !2725, line: 260, baseType: !3467, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2725, line: 156, size: 192, elements: !3469)
!3469 = !{!3470, !3471, !3473}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3468, file: !2725, line: 157, baseType: !3467, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3468, file: !2725, line: 158, baseType: !3472, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3468, file: !2725, line: 162, baseType: !25, size: 32, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3452, file: !2725, line: 262, baseType: !3472, size: 64, offset: 832)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3452, file: !2725, line: 264, baseType: !25, size: 32, offset: 896)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3452, file: !2725, line: 268, baseType: !25, size: 32, offset: 928)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3452, file: !2725, line: 270, baseType: !2751, size: 64, offset: 960)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3452, file: !2725, line: 274, baseType: !75, size: 16, offset: 1024)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3452, file: !2725, line: 275, baseType: !2756, size: 8, offset: 1040)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3452, file: !2725, line: 276, baseType: !2758, size: 8, offset: 1048)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3452, file: !2725, line: 280, baseType: !2762, size: 64, offset: 1088)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3452, file: !2725, line: 289, baseType: !2765, size: 64, offset: 1152)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3452, file: !2725, line: 297, baseType: !31, size: 64, offset: 1216)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3452, file: !2725, line: 298, baseType: !31, size: 64, offset: 1280)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3452, file: !2725, line: 299, baseType: !31, size: 64, offset: 1344)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3452, file: !2725, line: 300, baseType: !31, size: 64, offset: 1408)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3452, file: !2725, line: 302, baseType: !76, size: 64, offset: 1472)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3452, file: !2725, line: 303, baseType: !25, size: 32, offset: 1536)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3452, file: !2725, line: 305, baseType: !2773, size: 160, offset: 1568)
!3490 = !DILocalVariable(name: "res_ptr", scope: !3430, file: !478, line: 190, type: !32)
!3491 = !DILocalVariable(name: "res_size", scope: !3430, file: !478, line: 191, type: !76)
!3492 = !DILocalVariable(name: "c", scope: !3427, file: !478, line: 195, type: !25)
!3493 = !DILocalVariable(name: "buf2", scope: !3427, file: !478, line: 197, type: !3494)
!3494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3495)
!3495 = !{!3496}
!3496 = !DISubrange(count: 51)
!3497 = !DILocalVariable(name: "l1", scope: !3427, file: !478, line: 198, type: !76)
!3498 = !DILocalVariable(name: "l2", scope: !3427, file: !478, line: 198, type: !76)
!3499 = !DILocalVariable(name: "old_res_ptr", scope: !3427, file: !478, line: 199, type: !32)
!3500 = !DILocation(line: 196, column: 28, scope: !3427, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 589, column: 18, scope: !3424)
!3502 = !DILocation(line: 197, column: 28, scope: !3427, inlinedAt: !3501)
!3503 = !DILocation(line: 403, column: 13, scope: !3414)
!3504 = !DILocation(line: 395, column: 15, scope: !3414)
!3505 = !DILocation(line: 584, column: 15, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3414, file: !478, line: 584, column: 7)
!3507 = !DILocation(line: 584, column: 7, scope: !3414)
!3508 = !DILocation(line: 128, column: 8, scope: !3438, inlinedAt: !3501)
!3509 = !DILocation(line: 126, column: 15, scope: !3438, inlinedAt: !3501)
!3510 = !DILocation(line: 129, column: 10, scope: !3437, inlinedAt: !3501)
!3511 = !DILocation(line: 129, column: 7, scope: !3438, inlinedAt: !3501)
!3512 = !DILocation(line: 138, column: 13, scope: !3436, inlinedAt: !3501)
!3513 = !DILocation(line: 132, column: 19, scope: !3436, inlinedAt: !3501)
!3514 = !DILocation(line: 139, column: 15, scope: !3515, inlinedAt: !3501)
!3515 = distinct !DILexicalBlock(scope: !3436, file: !478, line: 139, column: 11)
!3516 = !DILocation(line: 139, column: 23, scope: !3515, inlinedAt: !3501)
!3517 = !DILocation(line: 139, column: 26, scope: !3518, inlinedAt: !3501)
!3518 = !DILexicalBlockFile(scope: !3515, file: !478, discriminator: 1)
!3519 = !DILocation(line: 139, column: 33, scope: !3518, inlinedAt: !3501)
!3520 = !DILocation(line: 139, column: 11, scope: !3521, inlinedAt: !3501)
!3521 = !DILexicalBlockFile(scope: !3436, file: !478, discriminator: 1)
!3522 = !DILocation(line: 140, column: 9, scope: !3515, inlinedAt: !3501)
!3523 = !DILocation(line: 144, column: 26, scope: !3445, inlinedAt: !3501)
!3524 = !DILocation(line: 144, column: 16, scope: !3445, inlinedAt: !3501)
!3525 = !DILocation(line: 145, column: 16, scope: !3445, inlinedAt: !3501)
!3526 = !DILocation(line: 146, column: 34, scope: !3445, inlinedAt: !3501)
!3527 = !DILocation(line: 146, column: 38, scope: !3445, inlinedAt: !3501)
!3528 = !DILocation(line: 146, column: 42, scope: !3529, inlinedAt: !3501)
!3529 = !DILexicalBlockFile(scope: !3445, file: !478, discriminator: 1)
!3530 = !DILocation(line: 146, column: 41, scope: !3529, inlinedAt: !3501)
!3531 = !DILocation(line: 147, column: 48, scope: !3445, inlinedAt: !3501)
!3532 = !DILocation(line: 147, column: 46, scope: !3445, inlinedAt: !3501)
!3533 = !DILocation(line: 147, column: 69, scope: !3445, inlinedAt: !3501)
!3534 = !DILocation(line: 147, column: 30, scope: !3445, inlinedAt: !3501)
!3535 = !DILocation(line: 134, column: 13, scope: !3436, inlinedAt: !3501)
!3536 = !DILocation(line: 148, column: 13, scope: !3445, inlinedAt: !3501)
!3537 = !DILocation(line: 150, column: 13, scope: !3538, inlinedAt: !3501)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !478, line: 149, column: 11)
!3539 = distinct !DILexicalBlock(scope: !3445, file: !478, line: 148, column: 13)
!3540 = !DILocation(line: 151, column: 17, scope: !3538, inlinedAt: !3501)
!3541 = !DILocation(line: 152, column: 34, scope: !3542, inlinedAt: !3501)
!3542 = distinct !DILexicalBlock(scope: !3538, file: !478, line: 151, column: 17)
!3543 = !DILocation(line: 153, column: 41, scope: !3538, inlinedAt: !3501)
!3544 = !DILocation(line: 153, column: 13, scope: !3538, inlinedAt: !3501)
!3545 = !DILocation(line: 157, column: 11, scope: !3436, inlinedAt: !3501)
!3546 = !DILocation(line: 171, column: 16, scope: !3434, inlinedAt: !3501)
!3547 = !DILocation(line: 162, column: 15, scope: !3434, inlinedAt: !3501)
!3548 = !DILocation(line: 173, column: 18, scope: !3433, inlinedAt: !3501)
!3549 = !DILocation(line: 173, column: 15, scope: !3434, inlinedAt: !3501)
!3550 = !DILocation(line: 180, column: 20, scope: !3432, inlinedAt: !3501)
!3551 = !DILocation(line: 178, column: 21, scope: !3432, inlinedAt: !3501)
!3552 = !DILocation(line: 181, column: 22, scope: !3431, inlinedAt: !3501)
!3553 = !DILocation(line: 181, column: 19, scope: !3432, inlinedAt: !3501)
!3554 = !DILocation(line: 190, column: 25, scope: !3430, inlinedAt: !3501)
!3555 = !DILocation(line: 184, column: 19, scope: !3556, inlinedAt: !3501)
!3556 = distinct !DILexicalBlock(scope: !3431, file: !478, line: 182, column: 17)
!3557 = !DILocation(line: 186, column: 17, scope: !3556, inlinedAt: !3501)
!3558 = !DILocation(line: 191, column: 26, scope: !3430, inlinedAt: !3501)
!3559 = !DILocation(line: 196, column: 23, scope: !3427, inlinedAt: !3501)
!3560 = !DILocation(line: 197, column: 23, scope: !3427, inlinedAt: !3501)
!3561 = !DILocalVariable(name: "__fp", arg: 1, scope: !3562, file: !3334, line: 63, type: !3450)
!3562 = distinct !DISubprogram(name: "getc_unlocked", scope: !3334, file: !3334, line: 63, type: !3563, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3565)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!25, !3450}
!3565 = !{!3561}
!3566 = !DILocation(line: 63, column: 22, scope: !3562, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 201, column: 27, scope: !3427, inlinedAt: !3501)
!3568 = !DILocation(line: 65, column: 10, scope: !3562, inlinedAt: !3567)
!3569 = !{!3340, !576, i64 8}
!3570 = !{!3340, !576, i64 16}
!3571 = !{!"branch_weights", i32 2000, i32 1}
!3572 = !DILocation(line: 65, column: 10, scope: !3573, inlinedAt: !3567)
!3573 = !DILexicalBlockFile(scope: !3562, file: !3334, discriminator: 1)
!3574 = !DILocation(line: 65, column: 10, scope: !3575, inlinedAt: !3567)
!3575 = !DILexicalBlockFile(scope: !3562, file: !3334, discriminator: 2)
!3576 = !DILocation(line: 65, column: 10, scope: !3577, inlinedAt: !3567)
!3577 = !DILexicalBlockFile(scope: !3562, file: !3334, discriminator: 3)
!3578 = !DILocation(line: 195, column: 27, scope: !3427, inlinedAt: !3501)
!3579 = !DILocation(line: 202, column: 27, scope: !3427, inlinedAt: !3501)
!3580 = !DILocation(line: 63, column: 22, scope: !3562, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 210, column: 33, scope: !3582, inlinedAt: !3501)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !478, line: 207, column: 25)
!3583 = distinct !DILexicalBlock(scope: !3427, file: !478, line: 206, column: 27)
!3584 = !DILocation(line: 65, column: 10, scope: !3562, inlinedAt: !3581)
!3585 = !DILocation(line: 65, column: 10, scope: !3573, inlinedAt: !3581)
!3586 = !DILocation(line: 65, column: 10, scope: !3575, inlinedAt: !3581)
!3587 = !DILocation(line: 65, column: 10, scope: !3577, inlinedAt: !3581)
!3588 = !DILocation(line: 210, column: 29, scope: !3589, inlinedAt: !3501)
!3589 = !DILexicalBlockFile(scope: !3582, file: !478, discriminator: 1)
!3590 = distinct !{!3590, !3591, !3592}
!3591 = !DILocation(line: 193, column: 19, scope: !3429)
!3592 = !DILocation(line: 241, column: 21, scope: !3429)
!3593 = !DILocation(line: 216, column: 23, scope: !3427, inlinedAt: !3501)
!3594 = !DILocation(line: 217, column: 27, scope: !3595, inlinedAt: !3501)
!3595 = distinct !DILexicalBlock(scope: !3427, file: !478, line: 217, column: 27)
!3596 = !DILocation(line: 217, column: 64, scope: !3595, inlinedAt: !3501)
!3597 = !DILocation(line: 217, column: 27, scope: !3427, inlinedAt: !3501)
!3598 = !DILocation(line: 219, column: 28, scope: !3427, inlinedAt: !3501)
!3599 = !DILocation(line: 198, column: 30, scope: !3427, inlinedAt: !3501)
!3600 = !DILocation(line: 220, column: 28, scope: !3427, inlinedAt: !3501)
!3601 = !DILocation(line: 198, column: 34, scope: !3427, inlinedAt: !3501)
!3602 = !DILocation(line: 199, column: 29, scope: !3427, inlinedAt: !3501)
!3603 = !DILocation(line: 222, column: 36, scope: !3604, inlinedAt: !3501)
!3604 = distinct !DILexicalBlock(scope: !3427, file: !478, line: 222, column: 27)
!3605 = !DILocation(line: 222, column: 27, scope: !3427, inlinedAt: !3501)
!3606 = !DILocation(line: 225, column: 63, scope: !3607, inlinedAt: !3501)
!3607 = distinct !DILexicalBlock(scope: !3604, file: !478, line: 223, column: 25)
!3608 = !DILocation(line: 225, column: 46, scope: !3607, inlinedAt: !3501)
!3609 = !DILocation(line: 226, column: 25, scope: !3607, inlinedAt: !3501)
!3610 = !DILocation(line: 229, column: 36, scope: !3611, inlinedAt: !3501)
!3611 = distinct !DILexicalBlock(scope: !3604, file: !478, line: 228, column: 25)
!3612 = !DILocation(line: 230, column: 73, scope: !3611, inlinedAt: !3501)
!3613 = !DILocation(line: 230, column: 46, scope: !3611, inlinedAt: !3501)
!3614 = !DILocation(line: 232, column: 35, scope: !3615, inlinedAt: !3501)
!3615 = distinct !DILexicalBlock(scope: !3427, file: !478, line: 232, column: 27)
!3616 = !DILocation(line: 232, column: 27, scope: !3427, inlinedAt: !3501)
!3617 = !DILocation(line: 236, column: 27, scope: !3618, inlinedAt: !3501)
!3618 = distinct !DILexicalBlock(scope: !3615, file: !478, line: 233, column: 25)
!3619 = !DILocation(line: 237, column: 27, scope: !3618, inlinedAt: !3501)
!3620 = !DILocation(line: 239, column: 39, scope: !3427, inlinedAt: !3501)
!3621 = !DILocation(line: 239, column: 50, scope: !3427, inlinedAt: !3501)
!3622 = !DILocation(line: 239, column: 61, scope: !3427, inlinedAt: !3501)
!3623 = !DILocalVariable(name: "__dest", arg: 1, scope: !3624, file: !3625, line: 107, type: !3628)
!3624 = distinct !DISubprogram(name: "strcpy", scope: !3625, file: !3625, line: 107, type: !3626, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3630)
!3625 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!32, !3628, !3629}
!3628 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!3629 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3630 = !{!3623, !3631}
!3631 = !DILocalVariable(name: "__src", arg: 2, scope: !3624, file: !3625, line: 107, type: !3629)
!3632 = !DILocation(line: 107, column: 1, scope: !3624, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 239, column: 23, scope: !3427, inlinedAt: !3501)
!3634 = !DILocation(line: 109, column: 49, scope: !3624, inlinedAt: !3633)
!3635 = !DILocation(line: 109, column: 10, scope: !3624, inlinedAt: !3633)
!3636 = !DILocation(line: 107, column: 1, scope: !3624, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 240, column: 23, scope: !3427, inlinedAt: !3501)
!3638 = !DILocation(line: 109, column: 49, scope: !3624, inlinedAt: !3637)
!3639 = !DILocation(line: 109, column: 10, scope: !3624, inlinedAt: !3637)
!3640 = !DILocation(line: 241, column: 21, scope: !3428, inlinedAt: !3501)
!3641 = !DILocation(line: 242, column: 19, scope: !3430, inlinedAt: !3501)
!3642 = !DILocation(line: 243, column: 32, scope: !3643, inlinedAt: !3501)
!3643 = distinct !DILexicalBlock(scope: !3430, file: !478, line: 243, column: 23)
!3644 = !DILocation(line: 243, column: 23, scope: !3430, inlinedAt: !3501)
!3645 = !DILocation(line: 247, column: 33, scope: !3646, inlinedAt: !3501)
!3646 = distinct !DILexicalBlock(scope: !3643, file: !478, line: 246, column: 21)
!3647 = !DILocation(line: 247, column: 45, scope: !3646, inlinedAt: !3501)
!3648 = !DILocation(line: 253, column: 11, scope: !3434, inlinedAt: !3501)
!3649 = !DILocation(line: 377, column: 23, scope: !3436, inlinedAt: !3501)
!3650 = !DILocation(line: 378, column: 5, scope: !3436, inlinedAt: !3501)
!3651 = !DILocation(line: 396, column: 15, scope: !3414)
!3652 = !DILocation(line: 590, column: 8, scope: !3423)
!3653 = !DILocation(line: 590, column: 17, scope: !3423)
!3654 = !DILocation(line: 589, column: 3, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !3424, file: !478, discriminator: 1)
!3656 = !DILocation(line: 592, column: 9, scope: !3421)
!3657 = !DILocation(line: 592, column: 35, scope: !3422)
!3658 = !DILocation(line: 593, column: 9, scope: !3422)
!3659 = !DILocation(line: 593, column: 24, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !3422, file: !478, discriminator: 1)
!3661 = !DILocation(line: 593, column: 31, scope: !3660)
!3662 = !DILocation(line: 593, column: 34, scope: !3663)
!3663 = !DILexicalBlockFile(scope: !3422, file: !478, discriminator: 2)
!3664 = !DILocation(line: 593, column: 45, scope: !3663)
!3665 = !DILocation(line: 592, column: 9, scope: !3666)
!3666 = !DILexicalBlockFile(scope: !3423, file: !478, discriminator: 1)
!3667 = !DILocation(line: 595, column: 29, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3422, file: !478, line: 594, column: 7)
!3669 = !DILocation(line: 595, column: 27, scope: !3668)
!3670 = !DILocation(line: 595, column: 46, scope: !3668)
!3671 = !DILocation(line: 596, column: 9, scope: !3668)
!3672 = !DILocation(line: 591, column: 19, scope: !3423)
!3673 = !DILocation(line: 591, column: 36, scope: !3423)
!3674 = !DILocation(line: 591, column: 16, scope: !3423)
!3675 = !DILocation(line: 591, column: 52, scope: !3666)
!3676 = !DILocation(line: 591, column: 69, scope: !3423)
!3677 = !DILocation(line: 591, column: 49, scope: !3423)
!3678 = distinct !{!3678, !3679, !3680}
!3679 = !DILocation(line: 589, column: 3, scope: !3424)
!3680 = !DILocation(line: 597, column: 7, scope: !3424)
!3681 = !DILocation(line: 602, column: 7, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3414, file: !478, line: 602, column: 7)
!3683 = !DILocation(line: 602, column: 18, scope: !3682)
!3684 = !DILocation(line: 602, column: 7, scope: !3414)
!3685 = !DILocation(line: 612, column: 3, scope: !3414)
!3686 = distinct !DISubprogram(name: "rpl_fclose", scope: !3687, file: !3687, line: 56, type: !3688, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3730)
!3687 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!25, !3690}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2723, line: 49, baseType: !3692)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2725, line: 241, size: 1728, elements: !3693)
!3693 = !{!3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3692, file: !2725, line: 242, baseType: !25, size: 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3692, file: !2725, line: 247, baseType: !32, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3692, file: !2725, line: 248, baseType: !32, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3692, file: !2725, line: 249, baseType: !32, size: 64, offset: 192)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3692, file: !2725, line: 250, baseType: !32, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3692, file: !2725, line: 251, baseType: !32, size: 64, offset: 320)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3692, file: !2725, line: 252, baseType: !32, size: 64, offset: 384)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3692, file: !2725, line: 253, baseType: !32, size: 64, offset: 448)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3692, file: !2725, line: 254, baseType: !32, size: 64, offset: 512)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3692, file: !2725, line: 256, baseType: !32, size: 64, offset: 576)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3692, file: !2725, line: 257, baseType: !32, size: 64, offset: 640)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3692, file: !2725, line: 258, baseType: !32, size: 64, offset: 704)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3692, file: !2725, line: 260, baseType: !3707, size: 64, offset: 768)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2725, line: 156, size: 192, elements: !3709)
!3709 = !{!3710, !3711, !3713}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3708, file: !2725, line: 157, baseType: !3707, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3708, file: !2725, line: 158, baseType: !3712, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3708, file: !2725, line: 162, baseType: !25, size: 32, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3692, file: !2725, line: 262, baseType: !3712, size: 64, offset: 832)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3692, file: !2725, line: 264, baseType: !25, size: 32, offset: 896)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3692, file: !2725, line: 268, baseType: !25, size: 32, offset: 928)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3692, file: !2725, line: 270, baseType: !2751, size: 64, offset: 960)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3692, file: !2725, line: 274, baseType: !75, size: 16, offset: 1024)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3692, file: !2725, line: 275, baseType: !2756, size: 8, offset: 1040)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3692, file: !2725, line: 276, baseType: !2758, size: 8, offset: 1048)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3692, file: !2725, line: 280, baseType: !2762, size: 64, offset: 1088)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3692, file: !2725, line: 289, baseType: !2765, size: 64, offset: 1152)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3692, file: !2725, line: 297, baseType: !31, size: 64, offset: 1216)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3692, file: !2725, line: 298, baseType: !31, size: 64, offset: 1280)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3692, file: !2725, line: 299, baseType: !31, size: 64, offset: 1344)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3692, file: !2725, line: 300, baseType: !31, size: 64, offset: 1408)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3692, file: !2725, line: 302, baseType: !76, size: 64, offset: 1472)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3692, file: !2725, line: 303, baseType: !25, size: 32, offset: 1536)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3692, file: !2725, line: 305, baseType: !2773, size: 160, offset: 1568)
!3730 = !{!3731, !3732, !3733, !3734}
!3731 = !DILocalVariable(name: "fp", arg: 1, scope: !3686, file: !3687, line: 56, type: !3690)
!3732 = !DILocalVariable(name: "saved_errno", scope: !3686, file: !3687, line: 58, type: !25)
!3733 = !DILocalVariable(name: "fd", scope: !3686, file: !3687, line: 59, type: !25)
!3734 = !DILocalVariable(name: "result", scope: !3686, file: !3687, line: 60, type: !25)
!3735 = !DILocation(line: 56, column: 19, scope: !3686)
!3736 = !DILocation(line: 58, column: 7, scope: !3686)
!3737 = !DILocation(line: 60, column: 7, scope: !3686)
!3738 = !DILocation(line: 63, column: 8, scope: !3686)
!3739 = !DILocation(line: 59, column: 7, scope: !3686)
!3740 = !DILocation(line: 64, column: 10, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3686, file: !3687, line: 64, column: 7)
!3742 = !DILocation(line: 64, column: 7, scope: !3686)
!3743 = !DILocation(line: 65, column: 12, scope: !3741)
!3744 = !DILocation(line: 65, column: 5, scope: !3741)
!3745 = !DILocation(line: 70, column: 9, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3686, file: !3687, line: 70, column: 7)
!3747 = !DILocation(line: 70, column: 23, scope: !3746)
!3748 = !DILocation(line: 70, column: 33, scope: !3749)
!3749 = !DILexicalBlockFile(scope: !3746, file: !3687, discriminator: 1)
!3750 = !DILocation(line: 70, column: 26, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !3746, file: !3687, discriminator: 3)
!3752 = !DILocation(line: 70, column: 59, scope: !3749)
!3753 = !DILocation(line: 71, column: 7, scope: !3746)
!3754 = !DILocation(line: 71, column: 10, scope: !3749)
!3755 = !DILocation(line: 70, column: 7, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3686, file: !3687, discriminator: 2)
!3757 = !DILocation(line: 98, column: 12, scope: !3686)
!3758 = !DILocation(line: 103, column: 7, scope: !3686)
!3759 = !DILocation(line: 72, column: 19, scope: !3746)
!3760 = !DILocation(line: 103, column: 19, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3686, file: !3687, line: 103, column: 7)
!3762 = !DILocation(line: 105, column: 13, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3761, file: !3687, line: 104, column: 5)
!3764 = !DILocation(line: 107, column: 5, scope: !3763)
!3765 = !DILocation(line: 110, column: 1, scope: !3686)
!3766 = distinct !DISubprogram(name: "rpl_fflush", scope: !3767, file: !3767, line: 127, type: !3768, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3810)
!3767 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!25, !3770}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2723, line: 49, baseType: !3772)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2725, line: 241, size: 1728, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3772, file: !2725, line: 242, baseType: !25, size: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3772, file: !2725, line: 247, baseType: !32, size: 64, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3772, file: !2725, line: 248, baseType: !32, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3772, file: !2725, line: 249, baseType: !32, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3772, file: !2725, line: 250, baseType: !32, size: 64, offset: 256)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3772, file: !2725, line: 251, baseType: !32, size: 64, offset: 320)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3772, file: !2725, line: 252, baseType: !32, size: 64, offset: 384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3772, file: !2725, line: 253, baseType: !32, size: 64, offset: 448)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3772, file: !2725, line: 254, baseType: !32, size: 64, offset: 512)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3772, file: !2725, line: 256, baseType: !32, size: 64, offset: 576)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3772, file: !2725, line: 257, baseType: !32, size: 64, offset: 640)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3772, file: !2725, line: 258, baseType: !32, size: 64, offset: 704)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3772, file: !2725, line: 260, baseType: !3787, size: 64, offset: 768)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2725, line: 156, size: 192, elements: !3789)
!3789 = !{!3790, !3791, !3793}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3788, file: !2725, line: 157, baseType: !3787, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3788, file: !2725, line: 158, baseType: !3792, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3788, file: !2725, line: 162, baseType: !25, size: 32, offset: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3772, file: !2725, line: 262, baseType: !3792, size: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3772, file: !2725, line: 264, baseType: !25, size: 32, offset: 896)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3772, file: !2725, line: 268, baseType: !25, size: 32, offset: 928)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3772, file: !2725, line: 270, baseType: !2751, size: 64, offset: 960)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3772, file: !2725, line: 274, baseType: !75, size: 16, offset: 1024)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3772, file: !2725, line: 275, baseType: !2756, size: 8, offset: 1040)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3772, file: !2725, line: 276, baseType: !2758, size: 8, offset: 1048)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3772, file: !2725, line: 280, baseType: !2762, size: 64, offset: 1088)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3772, file: !2725, line: 289, baseType: !2765, size: 64, offset: 1152)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3772, file: !2725, line: 297, baseType: !31, size: 64, offset: 1216)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3772, file: !2725, line: 298, baseType: !31, size: 64, offset: 1280)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3772, file: !2725, line: 299, baseType: !31, size: 64, offset: 1344)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3772, file: !2725, line: 300, baseType: !31, size: 64, offset: 1408)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3772, file: !2725, line: 302, baseType: !76, size: 64, offset: 1472)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3772, file: !2725, line: 303, baseType: !25, size: 32, offset: 1536)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3772, file: !2725, line: 305, baseType: !2773, size: 160, offset: 1568)
!3810 = !{!3811}
!3811 = !DILocalVariable(name: "stream", arg: 1, scope: !3766, file: !3767, line: 127, type: !3770)
!3812 = !DILocation(line: 127, column: 19, scope: !3766)
!3813 = !DILocation(line: 148, column: 14, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3766, file: !3767, line: 148, column: 7)
!3815 = !DILocation(line: 148, column: 22, scope: !3814)
!3816 = !DILocation(line: 148, column: 27, scope: !3817)
!3817 = !DILexicalBlockFile(scope: !3814, file: !3767, discriminator: 1)
!3818 = !DILocation(line: 148, column: 7, scope: !3819)
!3819 = !DILexicalBlockFile(scope: !3766, file: !3767, discriminator: 1)
!3820 = !DILocation(line: 149, column: 12, scope: !3814)
!3821 = !DILocation(line: 149, column: 5, scope: !3814)
!3822 = !DILocalVariable(name: "fp", arg: 1, scope: !3823, file: !3767, line: 40, type: !3770)
!3823 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3767, file: !3767, line: 40, type: !3824, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3826)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !3770}
!3826 = !{!3822}
!3827 = !DILocation(line: 40, column: 48, scope: !3823, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 153, column: 3, scope: !3766)
!3829 = !DILocation(line: 42, column: 11, scope: !3830, inlinedAt: !3828)
!3830 = distinct !DILexicalBlock(scope: !3823, file: !3767, line: 42, column: 7)
!3831 = !DILocation(line: 42, column: 18, scope: !3830, inlinedAt: !3828)
!3832 = !DILocation(line: 42, column: 7, scope: !3823, inlinedAt: !3828)
!3833 = !DILocation(line: 44, column: 5, scope: !3830, inlinedAt: !3828)
!3834 = !DILocation(line: 155, column: 10, scope: !3766)
!3835 = !DILocation(line: 155, column: 3, scope: !3766)
!3836 = !DILocation(line: 229, column: 1, scope: !3766)
!3837 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3838, file: !3838, line: 28, type: !3839, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3882)
!3838 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!25, !3841, !3881, !25}
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2723, line: 49, baseType: !3843)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2725, line: 241, size: 1728, elements: !3844)
!3844 = !{!3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3843, file: !2725, line: 242, baseType: !25, size: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3843, file: !2725, line: 247, baseType: !32, size: 64, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3843, file: !2725, line: 248, baseType: !32, size: 64, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3843, file: !2725, line: 249, baseType: !32, size: 64, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3843, file: !2725, line: 250, baseType: !32, size: 64, offset: 256)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3843, file: !2725, line: 251, baseType: !32, size: 64, offset: 320)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3843, file: !2725, line: 252, baseType: !32, size: 64, offset: 384)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3843, file: !2725, line: 253, baseType: !32, size: 64, offset: 448)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3843, file: !2725, line: 254, baseType: !32, size: 64, offset: 512)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3843, file: !2725, line: 256, baseType: !32, size: 64, offset: 576)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3843, file: !2725, line: 257, baseType: !32, size: 64, offset: 640)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3843, file: !2725, line: 258, baseType: !32, size: 64, offset: 704)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3843, file: !2725, line: 260, baseType: !3858, size: 64, offset: 768)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2725, line: 156, size: 192, elements: !3860)
!3860 = !{!3861, !3862, !3864}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3859, file: !2725, line: 157, baseType: !3858, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3859, file: !2725, line: 158, baseType: !3863, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3859, file: !2725, line: 162, baseType: !25, size: 32, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3843, file: !2725, line: 262, baseType: !3863, size: 64, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3843, file: !2725, line: 264, baseType: !25, size: 32, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3843, file: !2725, line: 268, baseType: !25, size: 32, offset: 928)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3843, file: !2725, line: 270, baseType: !2751, size: 64, offset: 960)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3843, file: !2725, line: 274, baseType: !75, size: 16, offset: 1024)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3843, file: !2725, line: 275, baseType: !2756, size: 8, offset: 1040)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3843, file: !2725, line: 276, baseType: !2758, size: 8, offset: 1048)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3843, file: !2725, line: 280, baseType: !2762, size: 64, offset: 1088)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3843, file: !2725, line: 289, baseType: !2765, size: 64, offset: 1152)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3843, file: !2725, line: 297, baseType: !31, size: 64, offset: 1216)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3843, file: !2725, line: 298, baseType: !31, size: 64, offset: 1280)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3843, file: !2725, line: 299, baseType: !31, size: 64, offset: 1344)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3843, file: !2725, line: 300, baseType: !31, size: 64, offset: 1408)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3843, file: !2725, line: 302, baseType: !76, size: 64, offset: 1472)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3843, file: !2725, line: 303, baseType: !25, size: 32, offset: 1536)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3843, file: !2725, line: 305, baseType: !2773, size: 160, offset: 1568)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2723, line: 91, baseType: !2751)
!3882 = !{!3883, !3884, !3885, !3886}
!3883 = !DILocalVariable(name: "fp", arg: 1, scope: !3837, file: !3838, line: 28, type: !3841)
!3884 = !DILocalVariable(name: "offset", arg: 2, scope: !3837, file: !3838, line: 28, type: !3881)
!3885 = !DILocalVariable(name: "whence", arg: 3, scope: !3837, file: !3838, line: 28, type: !25)
!3886 = !DILocalVariable(name: "pos", scope: !3887, file: !3838, line: 116, type: !3881)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !3838, line: 112, column: 5)
!3888 = distinct !DILexicalBlock(scope: !3837, file: !3838, line: 51, column: 7)
!3889 = !DILocation(line: 28, column: 15, scope: !3837)
!3890 = !DILocation(line: 28, column: 25, scope: !3837)
!3891 = !DILocation(line: 28, column: 37, scope: !3837)
!3892 = !DILocation(line: 51, column: 11, scope: !3888)
!3893 = !DILocation(line: 51, column: 31, scope: !3888)
!3894 = !DILocation(line: 51, column: 24, scope: !3888)
!3895 = !DILocation(line: 52, column: 7, scope: !3888)
!3896 = !DILocation(line: 52, column: 14, scope: !3897)
!3897 = !DILexicalBlockFile(scope: !3888, file: !3838, discriminator: 1)
!3898 = !{!3340, !576, i64 40}
!3899 = !DILocation(line: 52, column: 35, scope: !3897)
!3900 = !{!3340, !576, i64 32}
!3901 = !DILocation(line: 52, column: 28, scope: !3897)
!3902 = !DILocation(line: 53, column: 7, scope: !3888)
!3903 = !DILocation(line: 53, column: 14, scope: !3897)
!3904 = !{!3340, !576, i64 72}
!3905 = !DILocation(line: 53, column: 28, scope: !3897)
!3906 = !DILocation(line: 51, column: 7, scope: !3907)
!3907 = !DILexicalBlockFile(scope: !3837, file: !3838, discriminator: 1)
!3908 = !DILocation(line: 116, column: 26, scope: !3887)
!3909 = !DILocation(line: 116, column: 19, scope: !3910)
!3910 = !DILexicalBlockFile(scope: !3887, file: !3838, discriminator: 1)
!3911 = !DILocation(line: 116, column: 13, scope: !3887)
!3912 = !DILocation(line: 117, column: 15, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3887, file: !3838, line: 117, column: 11)
!3914 = !DILocation(line: 117, column: 11, scope: !3887)
!3915 = !DILocation(line: 127, column: 11, scope: !3887)
!3916 = !DILocation(line: 127, column: 18, scope: !3887)
!3917 = !DILocation(line: 128, column: 11, scope: !3887)
!3918 = !DILocation(line: 128, column: 19, scope: !3887)
!3919 = !{!3340, !2035, i64 144}
!3920 = !DILocation(line: 159, column: 7, scope: !3887)
!3921 = !DILocation(line: 161, column: 10, scope: !3837)
!3922 = !DILocation(line: 161, column: 3, scope: !3837)
!3923 = !DILocation(line: 162, column: 1, scope: !3837)
