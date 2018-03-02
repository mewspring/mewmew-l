; ModuleID = 'coreutils-8.27/src/true.bc'
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
@.str.2 = private unnamed_addr constant [44 x i8] c"Exit with a status code indicating success.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
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
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !570, metadata !571), !dbg !572
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !573
  %3 = load i8*, i8** @program_name, align 8, !dbg !573, !tbaa !574
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %2, i8* %3, i8* %3) #9, !dbg !578
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !580
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5) #9, !dbg !581
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !582
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !582, !tbaa !574
  %9 = tail call i32 @fputs_unlocked(i8* %7, %struct._IO_FILE* %8) #9, !dbg !583
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !584
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !584, !tbaa !574
  %12 = tail call i32 @fputs_unlocked(i8* %10, %struct._IO_FILE* %11) #9, !dbg !585
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !586
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !587
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !496, metadata !571) #9, !dbg !588
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !496, metadata !571) #9, !dbg !588
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #9, !dbg !590
  %16 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !591
  %17 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !593
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !507, metadata !571) #9, !dbg !594
  %18 = icmp eq i8* %17, null, !dbg !595
  br i1 %18, label %25, label %19, !dbg !596

; <label>:19:                                     ; preds = %1
  %20 = tail call i32 @strncmp(i8* nonnull %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #13, !dbg !597
  %21 = icmp eq i32 %20, 0, !dbg !597
  br i1 %21, label %25, label %22, !dbg !599

; <label>:22:                                     ; preds = %19
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #9, !dbg !601
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !603
  br label %25, !dbg !605

; <label>:25:                                     ; preds = %1, %19, %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #9, !dbg !606
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !607
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #9, !dbg !608
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !609
  tail call void @exit(i32 %0) #14, !dbg !610
  unreachable, !dbg !610
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
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #6 !dbg !611 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !616, metadata !571), !dbg !634
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !617, metadata !571), !dbg !635
  %3 = icmp eq i32 %0, 2, !dbg !636
  br i1 %3, label %4, label %21, !dbg !637

; <label>:4:                                      ; preds = %2
  %5 = load i8*, i8** %1, align 8, !dbg !638, !tbaa !574
  tail call void @set_program_name(i8* %5) #9, !dbg !639
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !640
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !641
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !642
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !643
  tail call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !623, metadata !571), !dbg !644
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !645
  %11 = load i8*, i8** %10, align 8, !dbg !645, !tbaa !574
  %12 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !645
  %13 = icmp eq i32 %12, 0, !dbg !647
  br i1 %13, label %14, label %15, !dbg !649

; <label>:14:                                     ; preds = %4
  tail call void @usage(i32 0) #15, !dbg !651
  unreachable, !dbg !651

; <label>:15:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !630, metadata !571), !dbg !652
  %16 = tail call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !653
  %17 = icmp eq i32 %16, 0, !dbg !655
  br i1 %17, label %18, label %21, !dbg !657

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !658, !tbaa !574
  %20 = load i8*, i8** @Version, align 8, !dbg !659, !tbaa !574
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #9, !dbg !660
  br label %21, !dbg !660

; <label>:21:                                     ; preds = %15, %18, %2
  ret i32 0, !dbg !661
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
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !662 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !664, metadata !571), !dbg !665
  store i8* %0, i8** @file_name, align 8, !dbg !666, !tbaa !574
  ret void, !dbg !667
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !668 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !672, metadata !673), !dbg !674
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !675, !tbaa !676
  ret void, !dbg !678
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !679 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !574
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !687
  %3 = icmp eq i32 %2, 0, !dbg !688
  br i1 %3, label %21, label %4, !dbg !689

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !690, !tbaa !676, !range !692
  %6 = icmp eq i8 %5, 0, !dbg !690
  %7 = tail call i32* @__errno_location() #1, !dbg !693
  br i1 %6, label %11, label %8, !dbg !695

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !696, !tbaa !698
  %10 = icmp eq i32 %9, 32, !dbg !700
  br i1 %10, label %21, label %11, !dbg !701

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 5) #9, !dbg !703
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !683, metadata !571), !dbg !704
  %13 = load i8*, i8** @file_name, align 8, !dbg !705, !tbaa !574
  %14 = icmp eq i8* %13, null, !dbg !705
  %15 = load i32, i32* %7, align 4, !tbaa !698
  br i1 %14, label %18, label %16, !dbg !706

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !707
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.18, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !709
  br label %19, !dbg !711

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.19, i64 0, i64 0), i8* %12) #9, !dbg !712
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !713, !tbaa !698
  tail call void @_exit(i32 %20) #14, !dbg !714
  unreachable, !dbg !714

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !715, !tbaa !574
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !717
  %24 = icmp eq i32 %23, 0, !dbg !718
  br i1 %24, label %27, label %25, !dbg !719

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !720, !tbaa !698
  tail call void @_exit(i32 %26) #14, !dbg !721
  unreachable, !dbg !721

; <label>:27:                                     ; preds = %21
  ret void, !dbg !722
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !723 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !725, metadata !571), !dbg !728
  %2 = icmp eq i8* %0, null, !dbg !729
  br i1 %2, label %3, label %6, !dbg !731

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !732, !tbaa !574
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.29, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !734
  tail call void @abort() #14, !dbg !735
  unreachable, !dbg !735

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !736
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !726, metadata !571), !dbg !737
  %8 = icmp ne i8* %7, null, !dbg !738
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !739
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !741
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !727, metadata !571), !dbg !742
  %11 = ptrtoint i8* %10 to i64, !dbg !743
  %12 = ptrtoint i8* %0 to i64, !dbg !743
  %13 = sub i64 %11, %12, !dbg !743
  %14 = icmp sgt i64 %13, 6, !dbg !745
  br i1 %14, label %15, label %24, !dbg !746

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !747
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.30, i64 0, i64 0), i64 7) #13, !dbg !747
  %18 = icmp eq i32 %17, 0, !dbg !749
  br i1 %18, label %19, label %24, !dbg !750

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !725, metadata !571), !dbg !728
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.31, i64 0, i64 0), i64 3) #13, !dbg !751
  %21 = icmp eq i32 %20, 0, !dbg !754
  br i1 %21, label %22, label %24, !dbg !755

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !756
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !725, metadata !571), !dbg !728
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !758, !tbaa !574
  br label %24, !dbg !759

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !725, metadata !571), !dbg !728
  store i8* %25, i8** @program_name, align 8, !dbg !760, !tbaa !574
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !761, !tbaa !574
  ret void, !dbg !762
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !763 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !768, metadata !571), !dbg !771
  %2 = tail call i32* @__errno_location() #1, !dbg !772
  %3 = load i32, i32* %2, align 4, !dbg !772, !tbaa !698
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !769, metadata !571), !dbg !773
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !774
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !775
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !775
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !777
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !777
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !770, metadata !571), !dbg !778
  store i32 %3, i32* %2, align 4, !dbg !779, !tbaa !698
  ret %struct.quoting_options* %8, !dbg !780
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !781 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !787, metadata !571), !dbg !788
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !789
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !789
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !790
  %5 = load i32, i32* %4, align 8, !dbg !790, !tbaa !792
  ret i32 %5, !dbg !794
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !795 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !799, metadata !571), !dbg !801
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !800, metadata !571), !dbg !802
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !803
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !803
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !804
  store i32 %1, i32* %5, align 8, !dbg !806, !tbaa !792
  ret void, !dbg !807
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !808 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !812, metadata !571), !dbg !820
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !813, metadata !571), !dbg !821
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !814, metadata !571), !dbg !822
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !815, metadata !571), !dbg !823
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !824
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !824
  %6 = lshr i8 %1, 5, !dbg !825
  %7 = zext i8 %6 to i64, !dbg !825
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !827
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !816, metadata !571), !dbg !828
  %9 = and i8 %1, 31, !dbg !829
  %10 = zext i8 %9 to i32, !dbg !830
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !818, metadata !571), !dbg !831
  %11 = load i32, i32* %8, align 4, !dbg !832, !tbaa !698
  %12 = lshr i32 %11, %10, !dbg !833
  %13 = and i32 %12, 1, !dbg !834
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !819, metadata !571), !dbg !835
  %14 = and i32 %2, 1, !dbg !836
  %15 = xor i32 %13, %14, !dbg !837
  %16 = shl i32 %15, %10, !dbg !838
  %17 = xor i32 %16, %11, !dbg !839
  store i32 %17, i32* %8, align 4, !dbg !839, !tbaa !698
  ret i32 %13, !dbg !840
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !841 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !845, metadata !571), !dbg !848
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !846, metadata !571), !dbg !849
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !850
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !845, metadata !571), !dbg !848
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !852
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !845, metadata !571), !dbg !848
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !853
  %6 = load i32, i32* %5, align 4, !dbg !853, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !847, metadata !571), !dbg !855
  store i32 %1, i32* %5, align 4, !dbg !856, !tbaa !854
  ret i32 %6, !dbg !857
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !858 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !862, metadata !571), !dbg !865
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !863, metadata !571), !dbg !866
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !864, metadata !571), !dbg !867
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !862, metadata !571), !dbg !865
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !862, metadata !571), !dbg !865
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !871
  store i32 10, i32* %6, align 8, !dbg !872, !tbaa !792
  %7 = icmp ne i8* %1, null, !dbg !873
  %8 = icmp ne i8* %2, null, !dbg !875
  %9 = and i1 %7, %8, !dbg !877
  br i1 %9, label %11, label %10, !dbg !877

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !878
  unreachable, !dbg !878

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !879
  store i8* %1, i8** %12, align 8, !dbg !880, !tbaa !881
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !882
  store i8* %2, i8** %13, align 8, !dbg !883, !tbaa !884
  ret void, !dbg !885
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !886 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !890, metadata !571), !dbg !898
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !891, metadata !571), !dbg !899
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !892, metadata !571), !dbg !900
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !893, metadata !571), !dbg !901
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !894, metadata !571), !dbg !902
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !903
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !895, metadata !571), !dbg !904
  %8 = tail call i32* @__errno_location() #1, !dbg !905
  %9 = load i32, i32* %8, align 4, !dbg !905, !tbaa !698
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !896, metadata !571), !dbg !906
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !907
  %11 = load i32, i32* %10, align 8, !dbg !907, !tbaa !792
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !908
  %13 = load i32, i32* %12, align 4, !dbg !908, !tbaa !854
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !909
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !910
  %16 = load i8*, i8** %15, align 8, !dbg !910, !tbaa !881
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !911
  %18 = load i8*, i8** %17, align 8, !dbg !911, !tbaa !884
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !912
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !897, metadata !571), !dbg !913
  store i32 %9, i32* %8, align 4, !dbg !914, !tbaa !698
  ret i64 %19, !dbg !915
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !916 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !922, metadata !571), !dbg !985
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !923, metadata !571), !dbg !986
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !924, metadata !571), !dbg !987
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !925, metadata !571), !dbg !988
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !926, metadata !571), !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !927, metadata !571), !dbg !990
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !928, metadata !571), !dbg !991
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !929, metadata !571), !dbg !992
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !930, metadata !571), !dbg !993
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !932, metadata !571), !dbg !994
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !933, metadata !571), !dbg !995
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !934, metadata !571), !dbg !996
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !935, metadata !571), !dbg !997
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !936, metadata !571), !dbg !998
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !999
  %14 = icmp eq i64 %13, 1, !dbg !1000
  %15 = lshr i32 %5, 1, !dbg !1001
  %16 = trunc i32 %15 to i8, !dbg !1001
  %17 = and i8 %16, 1, !dbg !1001
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !938, metadata !571), !dbg !1001
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !939, metadata !571), !dbg !1002
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !940, metadata !571), !dbg !1003
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !941, metadata !571), !dbg !1004
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1005

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !923, metadata !571), !dbg !986
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !941, metadata !571), !dbg !1004
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !940, metadata !571), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !938, metadata !571), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !925, metadata !571), !dbg !988
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !936, metadata !571), !dbg !998
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !935, metadata !571), !dbg !997
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !934, metadata !571), !dbg !996
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !933, metadata !571), !dbg !995
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !930, metadata !571), !dbg !993
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !929, metadata !571), !dbg !992
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !926, metadata !571), !dbg !989
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
  ], !dbg !1006

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !926, metadata !571), !dbg !989
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !938, metadata !571), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !938, metadata !571), !dbg !1001
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !926, metadata !571), !dbg !989
  br label %95, !dbg !1007

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !938, metadata !571), !dbg !1001
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !926, metadata !571), !dbg !989
  %43 = and i8 %36, 1, !dbg !1009
  %44 = icmp eq i8 %43, 0, !dbg !1009
  br i1 %44, label %45, label %95, !dbg !1007

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1011
  br i1 %46, label %95, label %47, !dbg !1015

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1017, !tbaa !1019
  br label %95, !dbg !1017

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.42, i64 0, i64 0), i32 %28), !dbg !1020
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !929, metadata !571), !dbg !992
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), i32 %28), !dbg !1024
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !930, metadata !571), !dbg !993
  br label %51, !dbg !1025

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !930, metadata !571), !dbg !993
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !929, metadata !571), !dbg !992
  %54 = and i8 %36, 1, !dbg !1026
  %55 = icmp eq i8 %54, 0, !dbg !1026
  br i1 %55, label %56, label %73, !dbg !1028

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !934, metadata !571), !dbg !996
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !932, metadata !571), !dbg !994
  %57 = load i8, i8* %52, align 1, !dbg !1029, !tbaa !1019
  %58 = icmp eq i8 %57, 0, !dbg !1033
  br i1 %58, label %73, label %59, !dbg !1033

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1035

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1035
  br i1 %64, label %65, label %67, !dbg !1039

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1041
  store i8 %61, i8* %66, align 1, !dbg !1041, !tbaa !1019
  br label %67, !dbg !1041

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !932, metadata !571), !dbg !994
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1045
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !934, metadata !571), !dbg !996
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !934, metadata !571), !dbg !996
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !932, metadata !571), !dbg !994
  %70 = load i8, i8* %69, align 1, !dbg !1029, !tbaa !1019
  %71 = icmp eq i8 %70, 0, !dbg !1033
  br i1 %71, label %72, label %60, !dbg !1033, !llvm.loop !1047

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !994

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !936, metadata !571), !dbg !998
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !934, metadata !571), !dbg !996
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1050
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !935, metadata !571), !dbg !997
  br label %95, !dbg !1051

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !936, metadata !571), !dbg !998
  br label %77, !dbg !1052

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !936, metadata !571), !dbg !998
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !938, metadata !571), !dbg !1001
  br label %79, !dbg !1053

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !938, metadata !571), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !936, metadata !571), !dbg !998
  %82 = and i8 %81, 1, !dbg !1054
  %83 = icmp eq i8 %82, 0, !dbg !1054
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !936, metadata !571), !dbg !998
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1056
  br label %85, !dbg !1056

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !938, metadata !571), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !936, metadata !571), !dbg !998
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !926, metadata !571), !dbg !989
  %88 = and i8 %87, 1, !dbg !1057
  %89 = icmp eq i8 %88, 0, !dbg !1057
  br i1 %89, label %90, label %95, !dbg !1059

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1060
  br i1 %91, label %95, label %92, !dbg !1064

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1066, !tbaa !1019
  br label %95, !dbg !1066

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !938, metadata !571), !dbg !1001
  br label %95, !dbg !1068

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1069
  unreachable, !dbg !1069

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !938, metadata !571), !dbg !1001
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !936, metadata !571), !dbg !998
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !935, metadata !571), !dbg !997
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !934, metadata !571), !dbg !996
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !930, metadata !571), !dbg !993
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !929, metadata !571), !dbg !992
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !926, metadata !571), !dbg !989
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !931, metadata !571), !dbg !1070
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
  br label %123, !dbg !1071

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !923, metadata !571), !dbg !986
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !941, metadata !571), !dbg !1004
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !940, metadata !571), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !925, metadata !571), !dbg !988
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !933, metadata !571), !dbg !995
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !931, metadata !571), !dbg !1070
  %132 = icmp eq i64 %127, -1, !dbg !1072
  br i1 %132, label %135, label %133, !dbg !1074

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1075
  br i1 %134, label %597, label %139, !dbg !1077

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1079
  %137 = load i8, i8* %136, align 1, !dbg !1079, !tbaa !1019
  %138 = icmp eq i8 %137, 0, !dbg !1081
  br i1 %138, label %597, label %139, !dbg !1077

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !947, metadata !571), !dbg !1082
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !948, metadata !571), !dbg !1083
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !949, metadata !571), !dbg !1084
  br i1 %109, label %140, label %155, !dbg !1085

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1087
  %142 = and i1 %110, %132, !dbg !1089
  br i1 %142, label %143, label %145, !dbg !1089

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1090
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !925, metadata !571), !dbg !988
  br label %145, !dbg !1091

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !925, metadata !571), !dbg !988
  %147 = icmp ugt i64 %141, %146, !dbg !1093
  br i1 %147, label %155, label %148, !dbg !1095

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1096
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1097
  %151 = icmp ne i32 %150, 0, !dbg !1098
  %152 = or i1 %151, %112, !dbg !1098
  %153 = xor i1 %151, true, !dbg !1098
  %154 = zext i1 %153 to i8, !dbg !1098
  br i1 %152, label %155, label %644, !dbg !1098

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !947, metadata !571), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !925, metadata !571), !dbg !988
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1100
  %159 = load i8, i8* %158, align 1, !dbg !1100, !tbaa !1019
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !942, metadata !571), !dbg !1101
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
  ], !dbg !1102

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1103

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1104

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !948, metadata !571), !dbg !1083
  %163 = and i8 %128, 1, !dbg !1109
  %164 = icmp eq i8 %163, 0, !dbg !1109
  %165 = and i1 %114, %164, !dbg !1112
  br i1 %165, label %166, label %182, !dbg !1112

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1114
  br i1 %167, label %168, label %170, !dbg !1119

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1121
  store i8 39, i8* %169, align 1, !dbg !1121, !tbaa !1019
  br label %170, !dbg !1121

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !932, metadata !571), !dbg !994
  %172 = icmp ult i64 %171, %131, !dbg !1125
  br i1 %172, label %173, label %175, !dbg !1129

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1131
  store i8 36, i8* %174, align 1, !dbg !1131, !tbaa !1019
  br label %175, !dbg !1131

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !932, metadata !571), !dbg !994
  %177 = icmp ult i64 %176, %131, !dbg !1135
  br i1 %177, label %178, label %180, !dbg !1139

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1141
  store i8 39, i8* %179, align 1, !dbg !1141, !tbaa !1019
  br label %180, !dbg !1141

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1143
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !939, metadata !571), !dbg !1002
  br label %182, !dbg !1145

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !932, metadata !571), !dbg !994
  %185 = icmp ult i64 %183, %131, !dbg !1147
  br i1 %185, label %186, label %188, !dbg !1151

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1153
  store i8 92, i8* %187, align 1, !dbg !1153, !tbaa !1019
  br label %188, !dbg !1153

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !932, metadata !571), !dbg !994
  br i1 %106, label %190, label %476, !dbg !1157

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1159
  %192 = icmp ult i64 %191, %156, !dbg !1161
  br i1 %192, label %193, label %476, !dbg !1162

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1163
  %195 = load i8, i8* %194, align 1, !dbg !1163, !tbaa !1019
  %196 = add i8 %195, -48, !dbg !1165
  %197 = icmp ult i8 %196, 10, !dbg !1165
  br i1 %197, label %198, label %476, !dbg !1165

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1166
  br i1 %199, label %200, label %202, !dbg !1171

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1173
  store i8 48, i8* %201, align 1, !dbg !1173, !tbaa !1019
  br label %202, !dbg !1173

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !932, metadata !571), !dbg !994
  %204 = icmp ult i64 %203, %131, !dbg !1177
  br i1 %204, label %205, label %207, !dbg !1181

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1183
  store i8 48, i8* %206, align 1, !dbg !1183, !tbaa !1019
  br label %207, !dbg !1183

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !932, metadata !571), !dbg !994
  br label %476, !dbg !1187

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1188

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1189

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1190

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1192

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1194
  %215 = icmp ult i64 %214, %156, !dbg !1196
  br i1 %215, label %216, label %476, !dbg !1197

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1198
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1200
  %219 = load i8, i8* %218, align 1, !dbg !1200, !tbaa !1019
  %220 = icmp eq i8 %219, 63, !dbg !1201
  br i1 %220, label %221, label %476, !dbg !1202

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1204
  %223 = load i8, i8* %222, align 1, !dbg !1204, !tbaa !1019
  %224 = sext i8 %223 to i32, !dbg !1204
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
  ], !dbg !1205

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1206

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !942, metadata !571), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !931, metadata !571), !dbg !1070
  %227 = icmp ult i64 %125, %131, !dbg !1208
  br i1 %227, label %228, label %230, !dbg !1212

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1214
  store i8 63, i8* %229, align 1, !dbg !1214, !tbaa !1019
  br label %230, !dbg !1214

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !932, metadata !571), !dbg !994
  %232 = icmp ult i64 %231, %131, !dbg !1218
  br i1 %232, label %233, label %235, !dbg !1222

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1224
  store i8 34, i8* %234, align 1, !dbg !1224, !tbaa !1019
  br label %235, !dbg !1224

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !932, metadata !571), !dbg !994
  %237 = icmp ult i64 %236, %131, !dbg !1228
  br i1 %237, label %238, label %240, !dbg !1232

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1234
  store i8 34, i8* %239, align 1, !dbg !1234, !tbaa !1019
  br label %240, !dbg !1234

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !932, metadata !571), !dbg !994
  %242 = icmp ult i64 %241, %131, !dbg !1238
  br i1 %242, label %243, label %245, !dbg !1242

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1244
  store i8 63, i8* %244, align 1, !dbg !1244, !tbaa !1019
  br label %245, !dbg !1244

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !932, metadata !571), !dbg !994
  br label %476, !dbg !1248

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !946, metadata !571), !dbg !1249
  br label %257, !dbg !1250

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !946, metadata !571), !dbg !1249
  br label %257, !dbg !1251

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !946, metadata !571), !dbg !1249
  br label %255, !dbg !1252

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !946, metadata !571), !dbg !1249
  br label %255, !dbg !1253

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !946, metadata !571), !dbg !1249
  br label %257, !dbg !1254

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !946, metadata !571), !dbg !1249
  br i1 %114, label %253, label %254, !dbg !1255

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1256

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1259

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !946, metadata !571), !dbg !1249
  br i1 %118, label %257, label %644, !dbg !1261

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !946, metadata !571), !dbg !1249
  br i1 %105, label %503, label %476, !dbg !1263

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1264
  br i1 %260, label %261, label %266, !dbg !1266

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1267, !tbaa !1019
  %263 = icmp ne i8 %262, 0, !dbg !1269
  %264 = icmp ne i64 %124, 0, !dbg !1270
  %265 = or i1 %264, %263, !dbg !1272
  br i1 %265, label %476, label %272, !dbg !1272

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1273
  %268 = icmp ne i64 %124, 0, !dbg !1270
  %269 = or i1 %268, %267, !dbg !1275
  br i1 %269, label %476, label %272, !dbg !1275

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1270
  br i1 %271, label %272, label %476, !dbg !1277

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !949, metadata !571), !dbg !1084
  br label %273, !dbg !1278

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !949, metadata !571), !dbg !1084
  br i1 %118, label %476, label %644, !dbg !1279

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !940, metadata !571), !dbg !1003
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !949, metadata !571), !dbg !1084
  br i1 %114, label %276, label %476, !dbg !1281

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1282

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1285
  %279 = icmp ne i64 %126, 0, !dbg !1287
  %280 = or i1 %279, %278, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !933, metadata !571), !dbg !995
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !923, metadata !571), !dbg !986
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1289
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !923, metadata !571), !dbg !986
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !933, metadata !571), !dbg !995
  %283 = icmp ult i64 %125, %282, !dbg !1290
  br i1 %283, label %284, label %286, !dbg !1294

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1296
  store i8 39, i8* %285, align 1, !dbg !1296, !tbaa !1019
  br label %286, !dbg !1296

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !932, metadata !571), !dbg !994
  %288 = icmp ult i64 %287, %282, !dbg !1300
  br i1 %288, label %289, label %291, !dbg !1304

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1306
  store i8 92, i8* %290, align 1, !dbg !1306, !tbaa !1019
  br label %291, !dbg !1306

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !932, metadata !571), !dbg !994
  %293 = icmp ult i64 %292, %282, !dbg !1310
  br i1 %293, label %294, label %296, !dbg !1314

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1316
  store i8 39, i8* %295, align 1, !dbg !1316, !tbaa !1019
  br label %296, !dbg !1316

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !939, metadata !571), !dbg !1002
  br label %476, !dbg !1320

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1321

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !950, metadata !571), !dbg !1322
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1323
  %301 = load i16*, i16** %300, align 8, !dbg !1323, !tbaa !574
  %302 = zext i8 %159 to i64, !dbg !1323
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1323
  %304 = load i16, i16* %303, align 2, !dbg !1323, !tbaa !1325
  %305 = lshr i16 %304, 14, !dbg !1327
  %306 = trunc i16 %305 to i8, !dbg !1327
  %307 = and i8 %306, 1, !dbg !1327
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !953, metadata !571), !dbg !1328
  br label %368, !dbg !1329

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9, !dbg !1330
  store i64 0, i64* %10, align 8, !dbg !1331
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !950, metadata !571), !dbg !1322
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !953, metadata !571), !dbg !1328
  %309 = icmp eq i64 %156, -1, !dbg !1332
  br i1 %309, label %310, label %312, !dbg !1334, !llvm.loop !1335

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !925, metadata !571), !dbg !988
  br label %312, !dbg !1339, !llvm.loop !1335

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1328

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !953, metadata !571), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !950, metadata !571), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !925, metadata !571), !dbg !988
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9, !dbg !1340
  %317 = add i64 %315, %124, !dbg !1341
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1342
  %319 = sub i64 %313, %317, !dbg !1343
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !954, metadata !1344), !dbg !1345
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !971, metadata !1344), !dbg !1346
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #9, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !974, metadata !571), !dbg !1348
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1349

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !950, metadata !571), !dbg !1322
  %322 = icmp ugt i64 %313, %317, !dbg !1350
  br i1 %322, label %323, label %351, !dbg !1353

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1354

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1354
  %328 = load i8, i8* %327, align 1, !dbg !1354, !tbaa !1019
  %329 = icmp eq i8 %328, 0, !dbg !1356
  br i1 %329, label %348, label %330, !dbg !1357

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !950, metadata !571), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !950, metadata !571), !dbg !1322
  %332 = add i64 %331, %124, !dbg !1360
  %333 = icmp ult i64 %332, %313, !dbg !1350
  br i1 %333, label %324, label %348, !dbg !1353, !llvm.loop !1361

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1363
  %336 = and i1 %116, %335, !dbg !1367
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !975, metadata !571), !dbg !1368
  br i1 %336, label %337, label %355, !dbg !1367

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1369

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1369
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1370
  %342 = load i8, i8* %341, align 1, !dbg !1370, !tbaa !1019
  %343 = sext i8 %342 to i32, !dbg !1370
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1371

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !975, metadata !571), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !975, metadata !571), !dbg !1368
  %346 = icmp ult i64 %345, %320, !dbg !1363
  br i1 %346, label %338, label %354, !dbg !1374, !llvm.loop !1376

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1328

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1328

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1328

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !953, metadata !571), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !950, metadata !571), !dbg !1322
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1379
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1380

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1380, !tbaa !698
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !971, metadata !571), !dbg !1346
  %357 = call i32 @iswprint(i32 %356) #9, !dbg !1382
  %358 = icmp eq i32 %357, 0, !dbg !1382
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !953, metadata !571), !dbg !1328
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1383
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !953, metadata !571), !dbg !1328
  %360 = add i64 %320, %315, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !950, metadata !571), !dbg !1322
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !953, metadata !571), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !950, metadata !571), !dbg !1322
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1379
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !954, metadata !1344), !dbg !1345
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1385
  %362 = icmp eq i32 %361, 0, !dbg !1386
  br i1 %362, label %314, label %363, !dbg !1387, !llvm.loop !1335

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1389

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1389
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !953, metadata !571), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !950, metadata !571), !dbg !1322
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1379
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1389
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !953, metadata !571), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !950, metadata !571), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !925, metadata !571), !dbg !988
  %372 = and i8 %371, 1, !dbg !1390
  %373 = icmp ne i8 %372, 0, !dbg !1390
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !949, metadata !571), !dbg !1084
  %374 = icmp ult i64 %370, 2, !dbg !1391
  %375 = or i1 %373, %113, !dbg !1392
  %376 = and i1 %374, %375, !dbg !1394
  br i1 %376, label %476, label %377, !dbg !1394

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !982, metadata !571), !dbg !1396
  br label %379, !dbg !1397

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !948, metadata !571), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !947, metadata !571), !dbg !1082
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !942, metadata !571), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !931, metadata !571), !dbg !1070
  br i1 %375, label %432, label %386, !dbg !1398

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1403

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !948, metadata !571), !dbg !1083
  %388 = and i8 %382, 1, !dbg !1407
  %389 = icmp eq i8 %388, 0, !dbg !1407
  %390 = and i1 %114, %389, !dbg !1410
  br i1 %390, label %391, label %407, !dbg !1410

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1412
  br i1 %392, label %393, label %395, !dbg !1417

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1419
  store i8 39, i8* %394, align 1, !dbg !1419, !tbaa !1019
  br label %395, !dbg !1419

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !932, metadata !571), !dbg !994
  %397 = icmp ult i64 %396, %131, !dbg !1423
  br i1 %397, label %398, label %400, !dbg !1427

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1429
  store i8 36, i8* %399, align 1, !dbg !1429, !tbaa !1019
  br label %400, !dbg !1429

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !932, metadata !571), !dbg !994
  %402 = icmp ult i64 %401, %131, !dbg !1433
  br i1 %402, label %403, label %405, !dbg !1437

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1439
  store i8 39, i8* %404, align 1, !dbg !1439, !tbaa !1019
  br label %405, !dbg !1439

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !939, metadata !571), !dbg !1002
  br label %407, !dbg !1443

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !932, metadata !571), !dbg !994
  %410 = icmp ult i64 %408, %131, !dbg !1445
  br i1 %410, label %411, label %413, !dbg !1449

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1451
  store i8 92, i8* %412, align 1, !dbg !1451, !tbaa !1019
  br label %413, !dbg !1451

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !932, metadata !571), !dbg !994
  %415 = icmp ult i64 %414, %131, !dbg !1455
  br i1 %415, label %416, label %420, !dbg !1459

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1461
  %418 = or i8 %417, 48, !dbg !1461
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1461
  store i8 %418, i8* %419, align 1, !dbg !1461, !tbaa !1019
  br label %420, !dbg !1461

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !932, metadata !571), !dbg !994
  %422 = icmp ult i64 %421, %131, !dbg !1465
  br i1 %422, label %423, label %428, !dbg !1469

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1471
  %425 = and i8 %424, 7, !dbg !1471
  %426 = or i8 %425, 48, !dbg !1471
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1471
  store i8 %426, i8* %427, align 1, !dbg !1471, !tbaa !1019
  br label %428, !dbg !1471

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !932, metadata !571), !dbg !994
  %430 = and i8 %383, 7, !dbg !1475
  %431 = or i8 %430, 48, !dbg !1476
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !942, metadata !571), !dbg !1101
  br label %441, !dbg !1477

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1478
  %434 = icmp eq i8 %433, 0, !dbg !1478
  br i1 %434, label %441, label %435, !dbg !1480

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1481
  br i1 %436, label %437, label %439, !dbg !1486

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1488
  store i8 92, i8* %438, align 1, !dbg !1488, !tbaa !1019
  br label %439, !dbg !1488

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !947, metadata !571), !dbg !1082
  br label %441, !dbg !1492

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !948, metadata !571), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !947, metadata !571), !dbg !1082
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !942, metadata !571), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !932, metadata !571), !dbg !994
  %447 = add i64 %380, 1, !dbg !1493
  %448 = icmp ugt i64 %378, %447, !dbg !1495
  br i1 %448, label %449, label %541, !dbg !1496

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1497
  %451 = icmp ne i8 %450, 0, !dbg !1497
  %452 = and i8 %446, 1, !dbg !1501
  %453 = icmp eq i8 %452, 0, !dbg !1501
  %454 = and i1 %451, %453, !dbg !1497
  br i1 %454, label %455, label %466, !dbg !1497

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1503
  br i1 %456, label %457, label %459, !dbg !1508

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1510
  store i8 39, i8* %458, align 1, !dbg !1510, !tbaa !1019
  br label %459, !dbg !1510

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !932, metadata !571), !dbg !994
  %461 = icmp ult i64 %460, %131, !dbg !1514
  br i1 %461, label %462, label %464, !dbg !1518

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1520
  store i8 39, i8* %463, align 1, !dbg !1520, !tbaa !1019
  br label %464, !dbg !1520

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !939, metadata !571), !dbg !1002
  br label %466, !dbg !1524

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !932, metadata !571), !dbg !994
  %469 = icmp ult i64 %467, %131, !dbg !1526
  br i1 %469, label %470, label %472, !dbg !1530

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1532
  store i8 %444, i8* %471, align 1, !dbg !1532, !tbaa !1019
  br label %472, !dbg !1532

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !931, metadata !571), !dbg !1070
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1536
  %475 = load i8, i8* %474, align 1, !dbg !1536, !tbaa !1019
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !942, metadata !571), !dbg !1101
  br label %379, !dbg !1537, !llvm.loop !1539

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !923, metadata !571), !dbg !986
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !949, metadata !571), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !948, metadata !571), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !947, metadata !571), !dbg !1082
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !942, metadata !571), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !940, metadata !571), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !925, metadata !571), !dbg !988
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !933, metadata !571), !dbg !995
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !931, metadata !571), !dbg !1070
  br i1 %107, label %488, label %487, !dbg !1542

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1544

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1545

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1546
  %491 = zext i8 %490 to i64, !dbg !1546
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1548
  %493 = load i32, i32* %492, align 4, !dbg !1548, !tbaa !698
  %494 = and i8 %483, 31, !dbg !1549
  %495 = zext i8 %494 to i32, !dbg !1550
  %496 = shl i32 1, %495, !dbg !1551
  %497 = and i32 %493, %496, !dbg !1551
  %498 = icmp eq i32 %497, 0, !dbg !1551
  %499 = icmp eq i8 %157, 0, !dbg !1552
  %500 = and i1 %499, %498, !dbg !1553
  br i1 %500, label %542, label %503, !dbg !1553

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1552
  br i1 %502, label %542, label %503, !dbg !1554

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !923, metadata !571), !dbg !986
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !949, metadata !571), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !942, metadata !571), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !940, metadata !571), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !925, metadata !571), !dbg !988
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !933, metadata !571), !dbg !995
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !931, metadata !571), !dbg !1070
  br i1 %112, label %513, label %644, !dbg !1556

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !948, metadata !571), !dbg !1083
  %514 = and i8 %508, 1, !dbg !1559
  %515 = icmp eq i8 %514, 0, !dbg !1559
  %516 = and i1 %114, %515, !dbg !1562
  br i1 %516, label %517, label %533, !dbg !1562

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1564
  br i1 %518, label %519, label %521, !dbg !1569

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1571
  store i8 39, i8* %520, align 1, !dbg !1571, !tbaa !1019
  br label %521, !dbg !1571

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !932, metadata !571), !dbg !994
  %523 = icmp ult i64 %522, %512, !dbg !1575
  br i1 %523, label %524, label %526, !dbg !1579

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1581
  store i8 36, i8* %525, align 1, !dbg !1581, !tbaa !1019
  br label %526, !dbg !1581

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !932, metadata !571), !dbg !994
  %528 = icmp ult i64 %527, %512, !dbg !1585
  br i1 %528, label %529, label %531, !dbg !1589

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1591
  store i8 39, i8* %530, align 1, !dbg !1591, !tbaa !1019
  br label %531, !dbg !1591

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1593
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !939, metadata !571), !dbg !1002
  br label %533, !dbg !1595

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !932, metadata !571), !dbg !994
  %536 = icmp ult i64 %534, %512, !dbg !1597
  br i1 %536, label %537, label %539, !dbg !1601

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1603
  store i8 92, i8* %538, align 1, !dbg !1603, !tbaa !1019
  br label %539, !dbg !1603

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !923, metadata !571), !dbg !986
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !949, metadata !571), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !948, metadata !571), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !942, metadata !571), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !940, metadata !571), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !925, metadata !571), !dbg !988
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !933, metadata !571), !dbg !995
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !931, metadata !571), !dbg !1070
  br label %569, !dbg !1607

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !986

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !923, metadata !571), !dbg !986
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !949, metadata !571), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !948, metadata !571), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !942, metadata !571), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !940, metadata !571), !dbg !1003
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !925, metadata !571), !dbg !988
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !933, metadata !571), !dbg !995
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !931, metadata !571), !dbg !1070
  %553 = and i8 %547, 1, !dbg !1607
  %554 = icmp ne i8 %553, 0, !dbg !1607
  %555 = and i8 %550, 1, !dbg !1611
  %556 = icmp eq i8 %555, 0, !dbg !1611
  %557 = and i1 %554, %556, !dbg !1607
  br i1 %557, label %558, label %569, !dbg !1607

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1613
  br i1 %559, label %560, label %562, !dbg !1618

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1620
  store i8 39, i8* %561, align 1, !dbg !1620, !tbaa !1019
  br label %562, !dbg !1620

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !932, metadata !571), !dbg !994
  %564 = icmp ult i64 %563, %552, !dbg !1624
  br i1 %564, label %565, label %567, !dbg !1628

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1630
  store i8 39, i8* %566, align 1, !dbg !1630, !tbaa !1019
  br label %567, !dbg !1630

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !932, metadata !571), !dbg !994
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !939, metadata !571), !dbg !1002
  br label %569, !dbg !1634

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !939, metadata !571), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !932, metadata !571), !dbg !994
  %579 = icmp ult i64 %577, %570, !dbg !1636
  br i1 %579, label %580, label %582, !dbg !1640

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1642
  store i8 %572, i8* %581, align 1, !dbg !1642, !tbaa !1019
  br label %582, !dbg !1642

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !932, metadata !571), !dbg !994
  %584 = and i8 %571, 1, !dbg !1646
  %585 = icmp eq i8 %584, 0, !dbg !1646
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !941, metadata !571), !dbg !1004
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1648
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !941, metadata !571), !dbg !1004
  br label %587, !dbg !1649

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !931, metadata !571), !dbg !1070
  br label %123, !dbg !1652, !llvm.loop !1653

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1656
  %600 = and i1 %114, %599, !dbg !1658
  %601 = xor i1 %600, true, !dbg !1658
  %602 = or i1 %112, %601, !dbg !1658
  br i1 %602, label %603, label %648, !dbg !1658

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1659
  %605 = xor i1 %604, true, !dbg !1659
  %606 = and i8 %129, 1, !dbg !1661
  %607 = icmp eq i8 %606, 0, !dbg !1661
  %608 = or i1 %607, %605, !dbg !1659
  br i1 %608, label %618, label %609, !dbg !1659

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1663
  %611 = icmp eq i8 %610, 0, !dbg !1663
  br i1 %611, label %614, label %612, !dbg !1666

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1667
  br label %659, !dbg !1668

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1669
  %616 = icmp ne i64 %126, 0, !dbg !1671
  %617 = and i1 %616, %615, !dbg !1673
  br i1 %617, label %27, label %618, !dbg !1673

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1674
  %620 = and i1 %619, %112, !dbg !1676
  br i1 %620, label %621, label %638, !dbg !1676

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !934, metadata !571), !dbg !996
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !932, metadata !571), !dbg !994
  %622 = load i8, i8* %100, align 1, !dbg !1677, !tbaa !1019
  %623 = icmp eq i8 %622, 0, !dbg !1681
  br i1 %623, label %638, label %624, !dbg !1681

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1683

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1683
  br i1 %629, label %630, label %632, !dbg !1687

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1689
  store i8 %626, i8* %631, align 1, !dbg !1689, !tbaa !1019
  br label %632, !dbg !1689

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !932, metadata !571), !dbg !994
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !934, metadata !571), !dbg !996
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !934, metadata !571), !dbg !996
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !932, metadata !571), !dbg !994
  %635 = load i8, i8* %634, align 1, !dbg !1677, !tbaa !1019
  %636 = icmp eq i8 %635, 0, !dbg !1681
  br i1 %636, label %637, label %625, !dbg !1681, !llvm.loop !1695

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !994

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !932, metadata !571), !dbg !994
  %640 = icmp ult i64 %639, %131, !dbg !1698
  br i1 %640, label %641, label %659, !dbg !1700

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1701
  store i8 0, i8* %642, align 1, !dbg !1702, !tbaa !1019
  br label %659, !dbg !1701

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !986

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !986

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !986

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !923, metadata !571), !dbg !986
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !925, metadata !571), !dbg !988
  %653 = icmp ne i32 %650, 2, !dbg !1703
  %654 = icmp eq i8 %104, 0, !dbg !1705
  %655 = or i1 %653, %654, !dbg !1707
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !926, metadata !571), !dbg !989
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !926, metadata !571), !dbg !989
  %657 = and i32 %5, -3, !dbg !1708
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1709
  br label %659, !dbg !1710

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1711
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1712 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1716, metadata !571), !dbg !1720
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1717, metadata !571), !dbg !1721
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1722
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1718, metadata !571), !dbg !1723
  %4 = icmp eq i8* %3, %0, !dbg !1724
  br i1 %4, label %5, label %75, !dbg !1726

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1727
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1719, metadata !571), !dbg !1728
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1729, metadata !571), !dbg !1745
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1743, metadata !571), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !571), !dbg !1749
  %7 = load i8, i8* %6, align 1, !tbaa !1019
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !1750
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1750

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1753, metadata !571), !dbg !1767
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1765, metadata !571), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1766, metadata !571), !dbg !1772
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1019
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !1773
  %15 = icmp eq i32 %14, 84, !dbg !1773
  br i1 %15, label %16, label %72, !dbg !1773

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1776, metadata !571), !dbg !1789
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1787, metadata !571), !dbg !1793
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1788, metadata !571), !dbg !1794
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1019
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !1795
  %21 = icmp eq i32 %20, 70, !dbg !1795
  br i1 %21, label %22, label %72, !dbg !1795

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1798, metadata !571), !dbg !1810
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1808, metadata !571), !dbg !1814
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1809, metadata !571), !dbg !1815
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1019
  %25 = icmp eq i8 %24, 45, !dbg !1816
  br i1 %25, label %26, label %72, !dbg !1819

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1821, metadata !571), !dbg !1832
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1830, metadata !571), !dbg !1836
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1831, metadata !571), !dbg !1837
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1019
  %29 = icmp eq i8 %28, 56, !dbg !1838
  br i1 %29, label %30, label %72, !dbg !1841

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1843, metadata !571), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1851, metadata !571), !dbg !1857
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1852, metadata !571), !dbg !1858
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1019
  %33 = icmp eq i8 %32, 0, !dbg !1859
  br i1 %33, label %34, label %72, !dbg !1862

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1864, !tbaa !1019
  %36 = icmp eq i8 %35, 96, !dbg !1865
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.45, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1864
  br label %75, !dbg !1866

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1753, metadata !571), !dbg !1867
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1765, metadata !571), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1766, metadata !571), !dbg !1872
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1019
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !1873
  %43 = icmp eq i32 %42, 66, !dbg !1873
  br i1 %43, label %44, label %72, !dbg !1873

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1776, metadata !571), !dbg !1874
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1787, metadata !571), !dbg !1876
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1788, metadata !571), !dbg !1877
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1019
  %47 = icmp eq i8 %46, 49, !dbg !1878
  br i1 %47, label %48, label %72, !dbg !1880

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1798, metadata !571), !dbg !1882
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1808, metadata !571), !dbg !1884
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1809, metadata !571), !dbg !1885
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1019
  %51 = icmp eq i8 %50, 56, !dbg !1886
  br i1 %51, label %52, label %72, !dbg !1887

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1821, metadata !571), !dbg !1888
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1830, metadata !571), !dbg !1890
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1831, metadata !571), !dbg !1891
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1019
  %55 = icmp eq i8 %54, 48, !dbg !1892
  br i1 %55, label %56, label %72, !dbg !1893

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1843, metadata !571), !dbg !1894
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1851, metadata !571), !dbg !1896
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1852, metadata !571), !dbg !1897
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1019
  %59 = icmp eq i8 %58, 51, !dbg !1898
  br i1 %59, label %60, label %72, !dbg !1899

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1900, metadata !571), !dbg !1909
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1907, metadata !571), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1908, metadata !571), !dbg !1914
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1019
  %63 = icmp eq i8 %62, 48, !dbg !1915
  br i1 %63, label %64, label %72, !dbg !1918

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1920, metadata !571), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1926, metadata !571), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1927, metadata !571), !dbg !1933
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1019
  %67 = icmp eq i8 %66, 0, !dbg !1934
  br i1 %67, label %68, label %72, !dbg !1937

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1938, !tbaa !1019
  %70 = icmp eq i8 %69, 96, !dbg !1939
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.46, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1938
  br label %75, !dbg !1940

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1941
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.43, i64 0, i64 0), !dbg !1942
  br label %75, !dbg !1943

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1944
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1945 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1949, metadata !571), !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1950, metadata !571), !dbg !1953
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1951, metadata !571), !dbg !1954
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1955, metadata !571) #9, !dbg !1968
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1960, metadata !571) #9, !dbg !1970
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1961, metadata !571) #9, !dbg !1971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1962, metadata !571) #9, !dbg !1972
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !1973
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !1973
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1963, metadata !571) #9, !dbg !1974
  %6 = tail call i32* @__errno_location() #1, !dbg !1975
  %7 = load i32, i32* %6, align 4, !dbg !1975, !tbaa !698
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1964, metadata !571) #9, !dbg !1976
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1977
  %9 = load i32, i32* %8, align 4, !dbg !1977, !tbaa !854
  %10 = or i32 %9, 1, !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1965, metadata !571) #9, !dbg !1979
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1980
  %12 = load i32, i32* %11, align 8, !dbg !1980, !tbaa !792
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1981
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1982
  %15 = load i8*, i8** %14, align 8, !dbg !1982, !tbaa !881
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1983
  %17 = load i8*, i8** %16, align 8, !dbg !1983, !tbaa !884
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !1984
  %19 = add i64 %18, 1, !dbg !1985
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1966, metadata !571) #9, !dbg !1986
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1987, metadata !571) #9, !dbg !1992
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !1994
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1967, metadata !571) #9, !dbg !1995
  %21 = load i32, i32* %11, align 8, !dbg !1996, !tbaa !792
  %22 = load i8*, i8** %14, align 8, !dbg !1997, !tbaa !881
  %23 = load i8*, i8** %16, align 8, !dbg !1998, !tbaa !884
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !1999
  store i32 %7, i32* %6, align 4, !dbg !2000, !tbaa !698
  ret i8* %20, !dbg !2001
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1956 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1955, metadata !571), !dbg !2002
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1960, metadata !571), !dbg !2003
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1961, metadata !571), !dbg !2004
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1962, metadata !571), !dbg !2005
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2006
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2006
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1963, metadata !571), !dbg !2007
  %7 = tail call i32* @__errno_location() #1, !dbg !2008
  %8 = load i32, i32* %7, align 4, !dbg !2008, !tbaa !698
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1964, metadata !571), !dbg !2009
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2010
  %10 = load i32, i32* %9, align 4, !dbg !2010, !tbaa !854
  %11 = icmp ne i64* %2, null, !dbg !2011
  %12 = xor i1 %11, true, !dbg !2011
  %13 = zext i1 %12 to i32, !dbg !2011
  %14 = or i32 %10, %13, !dbg !2012
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1965, metadata !571), !dbg !2013
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2014
  %16 = load i32, i32* %15, align 8, !dbg !2014, !tbaa !792
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2015
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2016
  %19 = load i8*, i8** %18, align 8, !dbg !2016, !tbaa !881
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2017
  %21 = load i8*, i8** %20, align 8, !dbg !2017, !tbaa !884
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2018
  %23 = add i64 %22, 1, !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1966, metadata !571), !dbg !2020
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1987, metadata !571) #9, !dbg !2021
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2023
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1967, metadata !571), !dbg !2024
  %25 = load i32, i32* %15, align 8, !dbg !2025, !tbaa !792
  %26 = load i8*, i8** %18, align 8, !dbg !2026, !tbaa !881
  %27 = load i8*, i8** %20, align 8, !dbg !2027, !tbaa !884
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2028
  store i32 %8, i32* %7, align 4, !dbg !2029, !tbaa !698
  br i1 %11, label %29, label %30, !dbg !2030

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2031, !tbaa !2033
  br label %30, !dbg !2035

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2036
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2037 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2041, !tbaa !574
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2039, metadata !571), !dbg !2042
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2040, metadata !571), !dbg !2043
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2040, metadata !571), !dbg !2043
  %2 = load i32, i32* @nslots, align 4, !dbg !2044, !tbaa !698
  %3 = icmp sgt i32 %2, 1, !dbg !2048
  br i1 %3, label %4, label %14, !dbg !2049

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2051

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2051
  %8 = load i8*, i8** %7, align 8, !dbg !2051, !tbaa !2052
  tail call void @free(i8* %8) #9, !dbg !2054
  %9 = add nuw i64 %6, 1, !dbg !2055
  %10 = load i32, i32* @nslots, align 4, !dbg !2044, !tbaa !698
  %11 = sext i32 %10 to i64, !dbg !2048
  %12 = icmp slt i64 %9, %11, !dbg !2048
  br i1 %12, label %5, label %13, !dbg !2049, !llvm.loop !2057

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2060

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2060
  %16 = load i8*, i8** %15, align 8, !dbg !2060, !tbaa !2052
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2062
  br i1 %17, label %19, label %18, !dbg !2063

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #9, !dbg !2064
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2066, !tbaa !2067
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2068, !tbaa !2052
  br label %19, !dbg !2069

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2070
  br i1 %20, label %23, label %21, !dbg !2072

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2073
  tail call void @free(i8* %22) #9, !dbg !2075
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2076, !tbaa !574
  br label %23, !dbg !2077

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2078, !tbaa !698
  ret void, !dbg !2079
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2080 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2084, metadata !571), !dbg !2086
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2085, metadata !571), !dbg !2087
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2088
  ret i8* %3, !dbg !2089
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2090 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2094, metadata !571), !dbg !2108
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2095, metadata !571), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2096, metadata !571), !dbg !2110
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2097, metadata !571), !dbg !2111
  %5 = tail call i32* @__errno_location() #1, !dbg !2112
  %6 = load i32, i32* %5, align 4, !dbg !2112, !tbaa !698
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2098, metadata !571), !dbg !2113
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2114, !tbaa !574
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2099, metadata !571), !dbg !2115
  %8 = icmp slt i32 %0, 0, !dbg !2116
  br i1 %8, label %9, label %10, !dbg !2118

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2119
  unreachable, !dbg !2119

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2120, !tbaa !698
  %12 = icmp sgt i32 %11, %0, !dbg !2121
  br i1 %12, label %34, label %13, !dbg !2122

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2123
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2124
  br i1 %15, label %16, label %17, !dbg !2126

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2127
  unreachable, !dbg !2127

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2128
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2128
  %20 = add nsw i32 %0, 1, !dbg !2130
  %21 = sext i32 %20 to i64, !dbg !2131
  %22 = shl nsw i64 %21, 4, !dbg !2132
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2133
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2133
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2099, metadata !571), !dbg !2115
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2134, !tbaa !574
  br i1 %14, label %25, label %26, !dbg !2135

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2136, !tbaa.struct !2138
  br label %26, !dbg !2139

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2140, !tbaa !698
  %28 = sext i32 %27 to i64, !dbg !2141
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2141
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2142
  %31 = sub nsw i32 %20, %27, !dbg !2143
  %32 = sext i32 %31 to i64, !dbg !2144
  %33 = shl nsw i64 %32, 4, !dbg !2145
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2142
  store i32 %20, i32* @nslots, align 4, !dbg !2146, !tbaa !698
  br label %34, !dbg !2147

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2099, metadata !571), !dbg !2115
  %36 = sext i32 %0 to i64, !dbg !2148
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2149
  %38 = load i64, i64* %37, align 8, !dbg !2149, !tbaa !2067
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2103, metadata !571), !dbg !2150
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2151
  %40 = load i8*, i8** %39, align 8, !dbg !2151, !tbaa !2052
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2105, metadata !571), !dbg !2152
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2153
  %42 = load i32, i32* %41, align 4, !dbg !2153, !tbaa !854
  %43 = or i32 %42, 1, !dbg !2154
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2106, metadata !571), !dbg !2155
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2156
  %45 = load i32, i32* %44, align 8, !dbg !2156, !tbaa !792
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2157
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2158
  %48 = load i8*, i8** %47, align 8, !dbg !2158, !tbaa !881
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2159
  %50 = load i8*, i8** %49, align 8, !dbg !2159, !tbaa !884
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2107, metadata !571), !dbg !2161
  %52 = icmp ugt i64 %38, %51, !dbg !2162
  br i1 %52, label %63, label %53, !dbg !2164

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2165
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2103, metadata !571), !dbg !2150
  store i64 %54, i64* %37, align 8, !dbg !2167, !tbaa !2067
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2168
  br i1 %55, label %57, label %56, !dbg !2170

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2171
  br label %57, !dbg !2171

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1987, metadata !571) #9, !dbg !2172
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2174
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2105, metadata !571), !dbg !2152
  store i8* %58, i8** %39, align 8, !dbg !2175, !tbaa !2052
  %59 = load i32, i32* %44, align 8, !dbg !2176, !tbaa !792
  %60 = load i8*, i8** %47, align 8, !dbg !2177, !tbaa !881
  %61 = load i8*, i8** %49, align 8, !dbg !2178, !tbaa !884
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2179
  br label %63, !dbg !2180

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2105, metadata !571), !dbg !2152
  store i32 %6, i32* %5, align 4, !dbg !2181, !tbaa !698
  ret i8* %64, !dbg !2182
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #11

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2183 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2187, metadata !571), !dbg !2190
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2188, metadata !571), !dbg !2191
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2189, metadata !571), !dbg !2192
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2193
  ret i8* %4, !dbg !2194
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2195 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2199, metadata !571), !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2084, metadata !571) #9, !dbg !2201
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2085, metadata !571) #9, !dbg !2203
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2204
  ret i8* %2, !dbg !2205
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2206 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2210, metadata !571), !dbg !2212
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2211, metadata !571), !dbg !2213
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2187, metadata !571) #9, !dbg !2214
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2188, metadata !571) #9, !dbg !2216
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2189, metadata !571) #9, !dbg !2217
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2218
  ret i8* %3, !dbg !2219
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2220 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2228, metadata !2234), !dbg !2235
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2224, metadata !571), !dbg !2237
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2225, metadata !571), !dbg !2238
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2226, metadata !571), !dbg !2239
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2240
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2240
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2227, metadata !1344), !dbg !2241
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2233, metadata !571) #9, !dbg !2242
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2243
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2243
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2228, metadata !571) #9, !dbg !2235
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2228, metadata !2244) #9, !dbg !2235
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2235
  %8 = icmp eq i32 %1, 10, !dbg !2245
  br i1 %8, label %9, label %10, !dbg !2247

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2248, !noalias !2249
  unreachable, !dbg !2248

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2228, metadata !2244) #9, !dbg !2235
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2252
  store i32 %1, i32* %11, align 8, !dbg !2252, !alias.scope !2249
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2252
  %13 = bitcast i32* %12 to i8*, !dbg !2252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2252
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2253
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2227, metadata !1344), !dbg !2241
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2254
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2255
  ret i8* %14, !dbg !2256
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2257 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2228, metadata !2234), !dbg !2266
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2261, metadata !571), !dbg !2268
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2262, metadata !571), !dbg !2269
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2263, metadata !571), !dbg !2270
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2264, metadata !571), !dbg !2271
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2272
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2272
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2265, metadata !1344), !dbg !2273
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2233, metadata !571) #9, !dbg !2274
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2275
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2275
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2228, metadata !571) #9, !dbg !2266
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2228, metadata !2244) #9, !dbg !2266
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2266
  %9 = icmp eq i32 %1, 10, !dbg !2276
  br i1 %9, label %10, label %11, !dbg !2277

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2278, !noalias !2279
  unreachable, !dbg !2278

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2228, metadata !2244) #9, !dbg !2266
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2282
  store i32 %1, i32* %12, align 8, !dbg !2282, !alias.scope !2279
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2282
  %14 = bitcast i32* %13 to i8*, !dbg !2282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2282
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2265, metadata !1344), !dbg !2273
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2284
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2285
  ret i8* %15, !dbg !2286
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2287 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2228, metadata !2234), !dbg !2293
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2291, metadata !571), !dbg !2296
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2292, metadata !571), !dbg !2297
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2224, metadata !571) #9, !dbg !2298
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2225, metadata !571) #9, !dbg !2299
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2226, metadata !571) #9, !dbg !2300
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2301
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2301
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2227, metadata !1344) #9, !dbg !2302
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2233, metadata !571) #9, !dbg !2303
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2304
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2304
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2228, metadata !571) #9, !dbg !2293
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2228, metadata !2244) #9, !dbg !2293
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2293
  %7 = icmp eq i32 %0, 10, !dbg !2305
  br i1 %7, label %8, label %9, !dbg !2306

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2307, !noalias !2308
  unreachable, !dbg !2307

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2228, metadata !2244) #9, !dbg !2293
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2311
  store i32 %0, i32* %10, align 8, !dbg !2311, !alias.scope !2308
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2311
  %12 = bitcast i32* %11 to i8*, !dbg !2311
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2311
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2312
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2227, metadata !1344) #9, !dbg !2302
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2313
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2314
  ret i8* %13, !dbg !2315
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2316 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2228, metadata !2234), !dbg !2323
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2320, metadata !571), !dbg !2326
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2321, metadata !571), !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2322, metadata !571), !dbg !2328
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2261, metadata !571) #9, !dbg !2329
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2262, metadata !571) #9, !dbg !2330
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2263, metadata !571) #9, !dbg !2331
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2264, metadata !571) #9, !dbg !2332
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2333
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2333
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2265, metadata !1344) #9, !dbg !2334
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2233, metadata !571) #9, !dbg !2335
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2336
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2336
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2228, metadata !571) #9, !dbg !2323
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2228, metadata !2244) #9, !dbg !2323
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2323
  %8 = icmp eq i32 %0, 10, !dbg !2337
  br i1 %8, label %9, label %10, !dbg !2338

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2339, !noalias !2340
  unreachable, !dbg !2339

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2228, metadata !2244) #9, !dbg !2323
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2343
  store i32 %0, i32* %11, align 8, !dbg !2343, !alias.scope !2340
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2343
  %13 = bitcast i32* %12 to i8*, !dbg !2343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2343
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2344
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2265, metadata !1344) #9, !dbg !2334
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2345
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2346
  ret i8* %14, !dbg !2347
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2348 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2352, metadata !571), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2353, metadata !571), !dbg !2357
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2354, metadata !571), !dbg !2358
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2359
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2360, !tbaa.struct !2361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2355, metadata !1344), !dbg !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !812, metadata !571), !dbg !2363
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !813, metadata !571), !dbg !2365
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !814, metadata !571), !dbg !2366
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !815, metadata !571), !dbg !2367
  %6 = lshr i8 %2, 5, !dbg !2368
  %7 = zext i8 %6 to i64, !dbg !2368
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2369
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !816, metadata !571), !dbg !2370
  %9 = and i8 %2, 31, !dbg !2371
  %10 = zext i8 %9 to i32, !dbg !2372
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !818, metadata !571), !dbg !2373
  %11 = load i32, i32* %8, align 4, !dbg !2374, !tbaa !698
  %12 = lshr i32 %11, %10, !dbg !2375
  %13 = and i32 %12, 1, !dbg !2376
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !819, metadata !571), !dbg !2377
  %14 = xor i32 %13, 1, !dbg !2378
  %15 = shl i32 %14, %10, !dbg !2379
  %16 = xor i32 %15, %11, !dbg !2380
  store i32 %16, i32* %8, align 4, !dbg !2380, !tbaa !698
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2355, metadata !1344), !dbg !2362
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2381
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2382
  ret i8* %17, !dbg !2383
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2384 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2388, metadata !571), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2389, metadata !571), !dbg !2391
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2352, metadata !571) #9, !dbg !2392
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2353, metadata !571) #9, !dbg !2394
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2354, metadata !571) #9, !dbg !2395
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2396
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2397, !tbaa.struct !2361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2355, metadata !1344) #9, !dbg !2398
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !812, metadata !571) #9, !dbg !2399
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !813, metadata !571) #9, !dbg !2401
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !814, metadata !571) #9, !dbg !2402
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !815, metadata !571) #9, !dbg !2403
  %5 = lshr i8 %1, 5, !dbg !2404
  %6 = zext i8 %5 to i64, !dbg !2404
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2405
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !816, metadata !571) #9, !dbg !2406
  %8 = and i8 %1, 31, !dbg !2407
  %9 = zext i8 %8 to i32, !dbg !2408
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !818, metadata !571) #9, !dbg !2409
  %10 = load i32, i32* %7, align 4, !dbg !2410, !tbaa !698
  %11 = lshr i32 %10, %9, !dbg !2411
  %12 = and i32 %11, 1, !dbg !2412
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !819, metadata !571) #9, !dbg !2413
  %13 = xor i32 %12, 1, !dbg !2414
  %14 = shl i32 %13, %9, !dbg !2415
  %15 = xor i32 %14, %10, !dbg !2416
  store i32 %15, i32* %7, align 4, !dbg !2416, !tbaa !698
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2355, metadata !1344) #9, !dbg !2398
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2417
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2418
  ret i8* %16, !dbg !2419
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2420 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2422, metadata !571), !dbg !2423
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2388, metadata !571) #9, !dbg !2424
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2389, metadata !571) #9, !dbg !2426
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2352, metadata !571) #9, !dbg !2427
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2353, metadata !571) #9, !dbg !2429
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2354, metadata !571) #9, !dbg !2430
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2431
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9, !dbg !2431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2432, !tbaa.struct !2361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2355, metadata !1344) #9, !dbg !2433
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !812, metadata !571) #9, !dbg !2434
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !813, metadata !571) #9, !dbg !2436
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !814, metadata !571) #9, !dbg !2437
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !815, metadata !571) #9, !dbg !2438
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2439
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !816, metadata !571) #9, !dbg !2440
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !818, metadata !571) #9, !dbg !2441
  %5 = load i32, i32* %4, align 4, !dbg !2442, !tbaa !698
  %6 = or i32 %5, 67108864, !dbg !2443
  store i32 %6, i32* %4, align 4, !dbg !2443, !tbaa !698
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2355, metadata !1344) #9, !dbg !2433
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2444
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9, !dbg !2445
  ret i8* %7, !dbg !2446
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2447 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2449, metadata !571), !dbg !2451
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2450, metadata !571), !dbg !2452
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2352, metadata !571) #9, !dbg !2453
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2353, metadata !571) #9, !dbg !2455
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2354, metadata !571) #9, !dbg !2456
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2457
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2458, !tbaa.struct !2361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2355, metadata !1344) #9, !dbg !2459
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !812, metadata !571) #9, !dbg !2460
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !813, metadata !571) #9, !dbg !2462
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !814, metadata !571) #9, !dbg !2463
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !815, metadata !571) #9, !dbg !2464
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2465
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !816, metadata !571) #9, !dbg !2466
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !818, metadata !571) #9, !dbg !2467
  %6 = load i32, i32* %5, align 4, !dbg !2468, !tbaa !698
  %7 = or i32 %6, 67108864, !dbg !2469
  store i32 %7, i32* %5, align 4, !dbg !2469, !tbaa !698
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2355, metadata !1344) #9, !dbg !2459
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2470
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2471
  ret i8* %8, !dbg !2472
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2473 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2228, metadata !2234), !dbg !2479
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2475, metadata !571), !dbg !2481
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2476, metadata !571), !dbg !2482
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2477, metadata !571), !dbg !2483
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2484
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2484
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2233, metadata !571) #9, !dbg !2485
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2486
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2486
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2228, metadata !571) #9, !dbg !2479
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2228, metadata !2244) #9, !dbg !2479
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2479
  %9 = icmp eq i32 %1, 10, !dbg !2487
  br i1 %9, label %10, label %11, !dbg !2488

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2489, !noalias !2490
  unreachable, !dbg !2489

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2228, metadata !2244) #9, !dbg !2479
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2493
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2494
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2495
  store i32 %1, i32* %13, align 8, !dbg !2495
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2495
  %15 = bitcast i32* %14 to i8*, !dbg !2495
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2495
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2478, metadata !1344), !dbg !2496
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !812, metadata !571), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !813, metadata !571), !dbg !2499
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !814, metadata !571), !dbg !2500
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !815, metadata !571), !dbg !2501
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2502
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !816, metadata !571), !dbg !2503
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !818, metadata !571), !dbg !2504
  %17 = load i32, i32* %16, align 4, !dbg !2505, !tbaa !698
  %18 = or i32 %17, 67108864, !dbg !2506
  store i32 %18, i32* %16, align 4, !dbg !2506, !tbaa !698
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2478, metadata !1344), !dbg !2496
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2507
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2508
  ret i8* %19, !dbg !2509
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2510 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2514, metadata !571), !dbg !2518
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2515, metadata !571), !dbg !2519
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2516, metadata !571), !dbg !2520
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2517, metadata !571), !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2522, metadata !571) #9, !dbg !2532
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2527, metadata !571) #9, !dbg !2534
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2528, metadata !571) #9, !dbg !2535
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2529, metadata !571) #9, !dbg !2536
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2530, metadata !571) #9, !dbg !2537
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2538
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2538
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2539, !tbaa.struct !2361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2531, metadata !1344) #9, !dbg !2540
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !862, metadata !571) #9, !dbg !2541
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !863, metadata !571) #9, !dbg !2543
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !864, metadata !571) #9, !dbg !2544
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !862, metadata !571) #9, !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !862, metadata !571) #9, !dbg !2541
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2545
  store i32 10, i32* %7, align 8, !dbg !2546, !tbaa !792
  %8 = icmp ne i8* %1, null, !dbg !2547
  %9 = icmp ne i8* %2, null, !dbg !2548
  %10 = and i1 %8, %9, !dbg !2549
  br i1 %10, label %12, label %11, !dbg !2549

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2550
  unreachable, !dbg !2550

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2551
  store i8* %1, i8** %13, align 8, !dbg !2552, !tbaa !881
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2553
  store i8* %2, i8** %14, align 8, !dbg !2554, !tbaa !884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2531, metadata !1344) #9, !dbg !2540
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2555
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2556
  ret i8* %15, !dbg !2557
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2523 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2522, metadata !571), !dbg !2558
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2527, metadata !571), !dbg !2559
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2528, metadata !571), !dbg !2560
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2529, metadata !571), !dbg !2561
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2530, metadata !571), !dbg !2562
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2563
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2564, !tbaa.struct !2361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2531, metadata !1344), !dbg !2565
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !862, metadata !571) #9, !dbg !2566
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !863, metadata !571) #9, !dbg !2568
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !864, metadata !571) #9, !dbg !2569
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !862, metadata !571) #9, !dbg !2566
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !862, metadata !571) #9, !dbg !2566
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2570
  store i32 10, i32* %8, align 8, !dbg !2571, !tbaa !792
  %9 = icmp ne i8* %1, null, !dbg !2572
  %10 = icmp ne i8* %2, null, !dbg !2573
  %11 = and i1 %9, %10, !dbg !2574
  br i1 %11, label %13, label %12, !dbg !2574

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2575
  unreachable, !dbg !2575

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2576
  store i8* %1, i8** %14, align 8, !dbg !2577, !tbaa !881
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2578
  store i8* %2, i8** %15, align 8, !dbg !2579, !tbaa !884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2531, metadata !1344), !dbg !2565
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2580
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2581
  ret i8* %16, !dbg !2582
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2583 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2587, metadata !571), !dbg !2590
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2588, metadata !571), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2589, metadata !571), !dbg !2592
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2514, metadata !571) #9, !dbg !2593
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2515, metadata !571) #9, !dbg !2595
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2516, metadata !571) #9, !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2517, metadata !571) #9, !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2522, metadata !571) #9, !dbg !2598
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2527, metadata !571) #9, !dbg !2600
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2528, metadata !571) #9, !dbg !2601
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2529, metadata !571) #9, !dbg !2602
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2530, metadata !571) #9, !dbg !2603
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2604
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2605, !tbaa.struct !2361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2531, metadata !1344) #9, !dbg !2606
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !862, metadata !571) #9, !dbg !2607
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !863, metadata !571) #9, !dbg !2609
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !864, metadata !571) #9, !dbg !2610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !862, metadata !571) #9, !dbg !2607
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !862, metadata !571) #9, !dbg !2607
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2611
  store i32 10, i32* %6, align 8, !dbg !2612, !tbaa !792
  %7 = icmp ne i8* %0, null, !dbg !2613
  %8 = icmp ne i8* %1, null, !dbg !2614
  %9 = and i1 %7, %8, !dbg !2615
  br i1 %9, label %11, label %10, !dbg !2615

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2616
  unreachable, !dbg !2616

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2617
  store i8* %0, i8** %12, align 8, !dbg !2618, !tbaa !881
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2619
  store i8* %1, i8** %13, align 8, !dbg !2620, !tbaa !884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2531, metadata !1344) #9, !dbg !2606
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2621
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2622
  ret i8* %14, !dbg !2623
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2624 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2628, metadata !571), !dbg !2632
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2629, metadata !571), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2630, metadata !571), !dbg !2634
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2631, metadata !571), !dbg !2635
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2522, metadata !571) #9, !dbg !2636
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2527, metadata !571) #9, !dbg !2638
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2528, metadata !571) #9, !dbg !2639
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2529, metadata !571) #9, !dbg !2640
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2530, metadata !571) #9, !dbg !2641
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2642
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2643, !tbaa.struct !2361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2531, metadata !1344) #9, !dbg !2644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !862, metadata !571) #9, !dbg !2645
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !863, metadata !571) #9, !dbg !2647
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !864, metadata !571) #9, !dbg !2648
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !862, metadata !571) #9, !dbg !2645
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !862, metadata !571) #9, !dbg !2645
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2649
  store i32 10, i32* %7, align 8, !dbg !2650, !tbaa !792
  %8 = icmp ne i8* %0, null, !dbg !2651
  %9 = icmp ne i8* %1, null, !dbg !2652
  %10 = and i1 %8, %9, !dbg !2653
  br i1 %10, label %12, label %11, !dbg !2653

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2654
  unreachable, !dbg !2654

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2655
  store i8* %0, i8** %13, align 8, !dbg !2656, !tbaa !881
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2657
  store i8* %1, i8** %14, align 8, !dbg !2658, !tbaa !884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2531, metadata !1344) #9, !dbg !2644
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2659
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2660
  ret i8* %15, !dbg !2661
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2662 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2666, metadata !571), !dbg !2669
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2667, metadata !571), !dbg !2670
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2668, metadata !571), !dbg !2671
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2672
  ret i8* %4, !dbg !2673
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2674 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2678, metadata !571), !dbg !2680
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2679, metadata !571), !dbg !2681
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2666, metadata !571) #9, !dbg !2682
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2667, metadata !571) #9, !dbg !2684
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2668, metadata !571) #9, !dbg !2685
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2686
  ret i8* %3, !dbg !2687
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2688 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2692, metadata !571), !dbg !2694
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2693, metadata !571), !dbg !2695
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2666, metadata !571) #9, !dbg !2696
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2667, metadata !571) #9, !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2668, metadata !571) #9, !dbg !2699
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2700
  ret i8* %3, !dbg !2701
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2702 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2706, metadata !571), !dbg !2707
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2692, metadata !571) #9, !dbg !2708
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2693, metadata !571) #9, !dbg !2710
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2666, metadata !571) #9, !dbg !2711
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2667, metadata !571) #9, !dbg !2713
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2668, metadata !571) #9, !dbg !2714
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2715
  ret i8* %2, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2717 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2777, metadata !571), !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2778, metadata !571), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2779, metadata !571), !dbg !2785
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2780, metadata !571), !dbg !2786
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2781, metadata !571), !dbg !2787
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2782, metadata !571), !dbg !2788
  %7 = icmp eq i8* %1, null, !dbg !2789
  br i1 %7, label %10, label %8, !dbg !2791

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2792
  br label %12, !dbg !2792

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.50, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2793
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i32 5) #9, !dbg !2794
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2795
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.52, i64 0, i64 0), i32 5) #9, !dbg !2797
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2798
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
  ], !dbg !2799

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !2800
  unreachable, !dbg !2800

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.53, i64 0, i64 0), i32 5) #9, !dbg !2802
  %20 = load i8*, i8** %4, align 8, !dbg !2802, !tbaa !574
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2803
  br label %146, !dbg !2805

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.54, i64 0, i64 0), i32 5) #9, !dbg !2806
  %24 = load i8*, i8** %4, align 8, !dbg !2806, !tbaa !574
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2806
  %26 = load i8*, i8** %25, align 8, !dbg !2806, !tbaa !574
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2807
  br label %146, !dbg !2808

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.55, i64 0, i64 0), i32 5) #9, !dbg !2809
  %30 = load i8*, i8** %4, align 8, !dbg !2809, !tbaa !574
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2809
  %32 = load i8*, i8** %31, align 8, !dbg !2809, !tbaa !574
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2809
  %34 = load i8*, i8** %33, align 8, !dbg !2809, !tbaa !574
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2810
  br label %146, !dbg !2811

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.56, i64 0, i64 0), i32 5) #9, !dbg !2812
  %38 = load i8*, i8** %4, align 8, !dbg !2812, !tbaa !574
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2812
  %40 = load i8*, i8** %39, align 8, !dbg !2812, !tbaa !574
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2812
  %42 = load i8*, i8** %41, align 8, !dbg !2812, !tbaa !574
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2812
  %44 = load i8*, i8** %43, align 8, !dbg !2812, !tbaa !574
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2813
  br label %146, !dbg !2814

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.57, i64 0, i64 0), i32 5) #9, !dbg !2815
  %48 = load i8*, i8** %4, align 8, !dbg !2815, !tbaa !574
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2815
  %50 = load i8*, i8** %49, align 8, !dbg !2815, !tbaa !574
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2815
  %52 = load i8*, i8** %51, align 8, !dbg !2815, !tbaa !574
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2815
  %54 = load i8*, i8** %53, align 8, !dbg !2815, !tbaa !574
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2815
  %56 = load i8*, i8** %55, align 8, !dbg !2815, !tbaa !574
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2816
  br label %146, !dbg !2817

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.58, i64 0, i64 0), i32 5) #9, !dbg !2818
  %60 = load i8*, i8** %4, align 8, !dbg !2818, !tbaa !574
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2818
  %62 = load i8*, i8** %61, align 8, !dbg !2818, !tbaa !574
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2818
  %64 = load i8*, i8** %63, align 8, !dbg !2818, !tbaa !574
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2818
  %66 = load i8*, i8** %65, align 8, !dbg !2818, !tbaa !574
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2818
  %68 = load i8*, i8** %67, align 8, !dbg !2818, !tbaa !574
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2818
  %70 = load i8*, i8** %69, align 8, !dbg !2818, !tbaa !574
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2819
  br label %146, !dbg !2820

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.59, i64 0, i64 0), i32 5) #9, !dbg !2821
  %74 = load i8*, i8** %4, align 8, !dbg !2821, !tbaa !574
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2821
  %76 = load i8*, i8** %75, align 8, !dbg !2821, !tbaa !574
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2821
  %78 = load i8*, i8** %77, align 8, !dbg !2821, !tbaa !574
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2821
  %80 = load i8*, i8** %79, align 8, !dbg !2821, !tbaa !574
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2821
  %82 = load i8*, i8** %81, align 8, !dbg !2821, !tbaa !574
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2821
  %84 = load i8*, i8** %83, align 8, !dbg !2821, !tbaa !574
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2821
  %86 = load i8*, i8** %85, align 8, !dbg !2821, !tbaa !574
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2822
  br label %146, !dbg !2823

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.60, i64 0, i64 0), i32 5) #9, !dbg !2824
  %90 = load i8*, i8** %4, align 8, !dbg !2824, !tbaa !574
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2824
  %92 = load i8*, i8** %91, align 8, !dbg !2824, !tbaa !574
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2824
  %94 = load i8*, i8** %93, align 8, !dbg !2824, !tbaa !574
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2824
  %96 = load i8*, i8** %95, align 8, !dbg !2824, !tbaa !574
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2824
  %98 = load i8*, i8** %97, align 8, !dbg !2824, !tbaa !574
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2824
  %100 = load i8*, i8** %99, align 8, !dbg !2824, !tbaa !574
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2824
  %102 = load i8*, i8** %101, align 8, !dbg !2824, !tbaa !574
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2824
  %104 = load i8*, i8** %103, align 8, !dbg !2824, !tbaa !574
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2825
  br label %146, !dbg !2826

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.61, i64 0, i64 0), i32 5) #9, !dbg !2827
  %108 = load i8*, i8** %4, align 8, !dbg !2827, !tbaa !574
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2827
  %110 = load i8*, i8** %109, align 8, !dbg !2827, !tbaa !574
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2827
  %112 = load i8*, i8** %111, align 8, !dbg !2827, !tbaa !574
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2827
  %114 = load i8*, i8** %113, align 8, !dbg !2827, !tbaa !574
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2827
  %116 = load i8*, i8** %115, align 8, !dbg !2827, !tbaa !574
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2827
  %118 = load i8*, i8** %117, align 8, !dbg !2827, !tbaa !574
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2827
  %120 = load i8*, i8** %119, align 8, !dbg !2827, !tbaa !574
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2827
  %122 = load i8*, i8** %121, align 8, !dbg !2827, !tbaa !574
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2827
  %124 = load i8*, i8** %123, align 8, !dbg !2827, !tbaa !574
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2828
  br label %146, !dbg !2829

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.62, i64 0, i64 0), i32 5) #9, !dbg !2830
  %128 = load i8*, i8** %4, align 8, !dbg !2830, !tbaa !574
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2830
  %130 = load i8*, i8** %129, align 8, !dbg !2830, !tbaa !574
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2830
  %132 = load i8*, i8** %131, align 8, !dbg !2830, !tbaa !574
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2830
  %134 = load i8*, i8** %133, align 8, !dbg !2830, !tbaa !574
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2830
  %136 = load i8*, i8** %135, align 8, !dbg !2830, !tbaa !574
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2830
  %138 = load i8*, i8** %137, align 8, !dbg !2830, !tbaa !574
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2830
  %140 = load i8*, i8** %139, align 8, !dbg !2830, !tbaa !574
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2830
  %142 = load i8*, i8** %141, align 8, !dbg !2830, !tbaa !574
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2830
  %144 = load i8*, i8** %143, align 8, !dbg !2830, !tbaa !574
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2831
  br label %146, !dbg !2832

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2833
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2834 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2838, metadata !571), !dbg !2844
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2839, metadata !571), !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2840, metadata !571), !dbg !2846
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2841, metadata !571), !dbg !2847
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2842, metadata !571), !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2843, metadata !571), !dbg !2849
  br label %6, !dbg !2850

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2843, metadata !571), !dbg !2849
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2852
  %9 = load i8*, i8** %8, align 8, !dbg !2852, !tbaa !574
  %10 = icmp eq i8* %9, null, !dbg !2855
  %11 = add i64 %7, 1, !dbg !2857
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2843, metadata !571), !dbg !2849
  br i1 %10, label %12, label %6, !dbg !2855, !llvm.loop !2859

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2862
  ret void, !dbg !2863
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2864 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2875, metadata !571), !dbg !2883
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2876, metadata !571), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2877, metadata !571), !dbg !2885
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2878, metadata !571), !dbg !2886
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2879, metadata !571), !dbg !2887
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2888
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9, !dbg !2888
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2881, metadata !571), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2880, metadata !571), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2880, metadata !571), !dbg !2890
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !2891
  %12 = icmp ult i32 %11, 41, !dbg !2891
  br i1 %12, label %13, label %18, !dbg !2891

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2895
  %15 = sext i32 %11 to i64, !dbg !2895
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2895
  %17 = add i32 %11, 8, !dbg !2895
  store i32 %17, i32* %8, align 8, !dbg !2895
  br label %21, !dbg !2895

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2897
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2897
  store i8* %20, i8** %10, align 8, !dbg !2897
  br label %21, !dbg !2897

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !2891
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2899
  %25 = load i8*, i8** %24, align 8, !dbg !2899
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2901
  store i8* %25, i8** %26, align 16, !dbg !2902, !tbaa !574
  %27 = icmp eq i8* %25, null, !dbg !2903
  br i1 %27, label %30, label %28, !dbg !2904

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  %29 = icmp ult i32 %22, 41, !dbg !2891
  br i1 %29, label %35, label %32, !dbg !2891

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2906
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9, !dbg !2907
  ret void, !dbg !2907

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2897
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2897
  store i8* %34, i8** %10, align 8, !dbg !2897
  br label %40, !dbg !2897

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2895
  %37 = sext i32 %22 to i64, !dbg !2895
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2895
  %39 = add i32 %22, 8, !dbg !2895
  store i32 %39, i32* %8, align 8, !dbg !2895
  br label %40, !dbg !2895

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !2891
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2899
  %44 = load i8*, i8** %43, align 8, !dbg !2899
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2901
  store i8* %44, i8** %45, align 8, !dbg !2902, !tbaa !574
  %46 = icmp eq i8* %44, null, !dbg !2903
  br i1 %46, label %30, label %47, !dbg !2904

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  %48 = icmp ult i32 %41, 41, !dbg !2891
  br i1 %48, label %52, label %49, !dbg !2891

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2897
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2897
  store i8* %51, i8** %10, align 8, !dbg !2897
  br label %57, !dbg !2897

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2895
  %54 = sext i32 %41 to i64, !dbg !2895
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2895
  %56 = add i32 %41, 8, !dbg !2895
  store i32 %56, i32* %8, align 8, !dbg !2895
  br label %57, !dbg !2895

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !2891
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2899
  %61 = load i8*, i8** %60, align 8, !dbg !2899
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2901
  store i8* %61, i8** %62, align 16, !dbg !2902, !tbaa !574
  %63 = icmp eq i8* %61, null, !dbg !2903
  br i1 %63, label %30, label %64, !dbg !2904

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  %65 = icmp ult i32 %58, 41, !dbg !2891
  br i1 %65, label %69, label %66, !dbg !2891

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2897
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2897
  store i8* %68, i8** %10, align 8, !dbg !2897
  br label %74, !dbg !2897

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2895
  %71 = sext i32 %58 to i64, !dbg !2895
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2895
  %73 = add i32 %58, 8, !dbg !2895
  store i32 %73, i32* %8, align 8, !dbg !2895
  br label %74, !dbg !2895

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !2891
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2899
  %78 = load i8*, i8** %77, align 8, !dbg !2899
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2901
  store i8* %78, i8** %79, align 8, !dbg !2902, !tbaa !574
  %80 = icmp eq i8* %78, null, !dbg !2903
  br i1 %80, label %30, label %81, !dbg !2904

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  %82 = icmp ult i32 %75, 41, !dbg !2891
  br i1 %82, label %86, label %83, !dbg !2891

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2897
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2897
  store i8* %85, i8** %10, align 8, !dbg !2897
  br label %91, !dbg !2897

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2895
  %88 = sext i32 %75 to i64, !dbg !2895
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2895
  %90 = add i32 %75, 8, !dbg !2895
  store i32 %90, i32* %8, align 8, !dbg !2895
  br label %91, !dbg !2895

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !2891
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2899
  %95 = load i8*, i8** %94, align 8, !dbg !2899
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2901
  store i8* %95, i8** %96, align 16, !dbg !2902, !tbaa !574
  %97 = icmp eq i8* %95, null, !dbg !2903
  br i1 %97, label %30, label %98, !dbg !2904

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  %99 = icmp ult i32 %92, 41, !dbg !2891
  br i1 %99, label %103, label %100, !dbg !2891

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2897
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2897
  store i8* %102, i8** %10, align 8, !dbg !2897
  br label %108, !dbg !2897

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2895
  %105 = sext i32 %92 to i64, !dbg !2895
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2895
  %107 = add i32 %92, 8, !dbg !2895
  store i32 %107, i32* %8, align 8, !dbg !2895
  br label %108, !dbg !2895

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2899
  %111 = load i8*, i8** %110, align 8, !dbg !2899
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2901
  store i8* %111, i8** %112, align 8, !dbg !2902, !tbaa !574
  %113 = icmp eq i8* %111, null, !dbg !2903
  br i1 %113, label %30, label %114, !dbg !2904

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  %115 = load i8*, i8** %10, align 8, !dbg !2897
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2897
  store i8* %116, i8** %10, align 8, !dbg !2897
  %117 = bitcast i8* %115 to i8**, !dbg !2899
  %118 = load i8*, i8** %117, align 8, !dbg !2899
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2901
  store i8* %118, i8** %119, align 16, !dbg !2902, !tbaa !574
  %120 = icmp eq i8* %118, null, !dbg !2903
  br i1 %120, label %30, label %121, !dbg !2904

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  %122 = load i8*, i8** %10, align 8, !dbg !2897
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2897
  store i8* %123, i8** %10, align 8, !dbg !2897
  %124 = bitcast i8* %122 to i8**, !dbg !2899
  %125 = load i8*, i8** %124, align 8, !dbg !2899
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2901
  store i8* %125, i8** %126, align 8, !dbg !2902, !tbaa !574
  %127 = icmp eq i8* %125, null, !dbg !2903
  br i1 %127, label %30, label %128, !dbg !2904

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  %129 = load i8*, i8** %10, align 8, !dbg !2897
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2897
  store i8* %130, i8** %10, align 8, !dbg !2897
  %131 = bitcast i8* %129 to i8**, !dbg !2899
  %132 = load i8*, i8** %131, align 8, !dbg !2899
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2901
  store i8* %132, i8** %133, align 16, !dbg !2902, !tbaa !574
  %134 = icmp eq i8* %132, null, !dbg !2903
  br i1 %134, label %30, label %135, !dbg !2904

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  %136 = load i8*, i8** %10, align 8, !dbg !2897
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2897
  store i8* %137, i8** %10, align 8, !dbg !2897
  %138 = bitcast i8* %136 to i8**, !dbg !2899
  %139 = load i8*, i8** %138, align 8, !dbg !2899
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2901
  store i8* %139, i8** %140, align 8, !dbg !2902, !tbaa !574
  %141 = icmp eq i8* %139, null, !dbg !2903
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2880, metadata !571), !dbg !2890
  %142 = select i1 %141, i64 9, i64 10, !dbg !2904
  br label %30, !dbg !2904
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2908 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2912, metadata !571), !dbg !2922
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2913, metadata !571), !dbg !2923
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2914, metadata !571), !dbg !2924
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2915, metadata !571), !dbg !2925
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2926
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9, !dbg !2926
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2916, metadata !571), !dbg !2927
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2928
  call void @llvm.va_start(i8* nonnull %6), !dbg !2928
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2929
  call void @llvm.va_end(i8* nonnull %6), !dbg !2930
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9, !dbg !2931
  ret void, !dbg !2931
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2932 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.65, i64 0, i64 0), i32 5) #9, !dbg !2933
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.66, i64 0, i64 0)) #9, !dbg !2934
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !2936
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.68, i64 0, i64 0)) #9, !dbg !2937
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !2938
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2938, !tbaa !574
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !2939
  ret void, !dbg !2940
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !2941 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2945, metadata !571), !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2946, metadata !571), !dbg !2948
  %3 = udiv i64 9223372036854775807, %1, !dbg !2949
  %4 = icmp ult i64 %3, %0, !dbg !2949
  br i1 %4, label %5, label %6, !dbg !2951

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !2952
  unreachable, !dbg !2952

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2953
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2954, metadata !571) #9, !dbg !2961
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !2963
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2960, metadata !571) #9, !dbg !2964
  %9 = icmp eq i8* %8, null, !dbg !2965
  %10 = icmp ne i64 %7, 0, !dbg !2967
  %11 = and i1 %10, %9, !dbg !2969
  br i1 %11, label %12, label %13, !dbg !2969

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !2970
  unreachable, !dbg !2970

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2971
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2955 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2954, metadata !571), !dbg !2972
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2973
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2960, metadata !571), !dbg !2974
  %3 = icmp eq i8* %2, null, !dbg !2975
  %4 = icmp ne i64 %0, 0, !dbg !2976
  %5 = and i1 %4, %3, !dbg !2977
  br i1 %5, label %6, label %7, !dbg !2977

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !2978
  unreachable, !dbg !2978

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2979
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !2980 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2984, metadata !571), !dbg !2987
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2985, metadata !571), !dbg !2988
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2986, metadata !571), !dbg !2989
  %4 = udiv i64 9223372036854775807, %2, !dbg !2990
  %5 = icmp ult i64 %4, %1, !dbg !2990
  br i1 %5, label %6, label %7, !dbg !2992

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !2993
  unreachable, !dbg !2993

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2994
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2995, metadata !571) #9, !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3000, metadata !571) #9, !dbg !3003
  %9 = icmp eq i64 %8, 0, !dbg !3004
  %10 = icmp ne i8* %0, null, !dbg !3006
  %11 = and i1 %10, %9, !dbg !3008
  br i1 %11, label %12, label %13, !dbg !3008

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !3009
  br label %19, !dbg !3011

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !3012
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2995, metadata !571) #9, !dbg !3001
  %15 = icmp eq i8* %14, null, !dbg !3013
  %16 = icmp ne i64 %8, 0, !dbg !3015
  %17 = and i1 %16, %15, !dbg !3017
  br i1 %17, label %18, label %19, !dbg !3017

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3018
  unreachable, !dbg !3018

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3019
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2996 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2995, metadata !571), !dbg !3020
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3000, metadata !571), !dbg !3021
  %3 = icmp eq i64 %1, 0, !dbg !3022
  %4 = icmp ne i8* %0, null, !dbg !3023
  %5 = and i1 %4, %3, !dbg !3024
  br i1 %5, label %6, label %7, !dbg !3024

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !3025
  br label %13, !dbg !3026

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !3027
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2995, metadata !571), !dbg !3020
  %9 = icmp eq i8* %8, null, !dbg !3028
  %10 = icmp ne i64 %1, 0, !dbg !3029
  %11 = and i1 %10, %9, !dbg !3030
  br i1 %11, label %12, label %13, !dbg !3030

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3031
  unreachable, !dbg !3031

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3032
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !531 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !536, metadata !571), !dbg !3033
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !537, metadata !571), !dbg !3034
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !538, metadata !571), !dbg !3035
  %4 = load i64, i64* %1, align 8, !dbg !3036, !tbaa !2033
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !539, metadata !571), !dbg !3037
  %5 = icmp eq i8* %0, null, !dbg !3038
  br i1 %5, label %6, label %13, !dbg !3040

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3041
  br i1 %7, label %8, label %17, !dbg !3044

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !539, metadata !571), !dbg !3037
  %10 = icmp ugt i64 %2, 128, !dbg !3047
  %11 = zext i1 %10 to i64, !dbg !3047
  %12 = add nuw nsw i64 %9, %11, !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !539, metadata !571), !dbg !3037
  br label %17, !dbg !3049

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3050
  %15 = icmp ugt i64 %14, %4, !dbg !3053
  br i1 %15, label %20, label %16, !dbg !3054

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3055
  unreachable, !dbg !3055

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !539, metadata !571), !dbg !3037
  store i64 %18, i64* %1, align 8, !dbg !3056, !tbaa !2033
  %19 = mul i64 %18, %2, !dbg !3057
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2995, metadata !571) #9, !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3000, metadata !571) #9, !dbg !3060
  br label %27, !dbg !3061

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3062
  %22 = add i64 %4, 1, !dbg !3063
  %23 = add i64 %22, %21, !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !539, metadata !571), !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !539, metadata !571), !dbg !3037
  store i64 %23, i64* %1, align 8, !dbg !3056, !tbaa !2033
  %24 = mul i64 %23, %2, !dbg !3057
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2995, metadata !571) #9, !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3000, metadata !571) #9, !dbg !3060
  %25 = icmp eq i64 %24, 0, !dbg !3065
  br i1 %25, label %26, label %27, !dbg !3061

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !3066
  br label %34, !dbg !3067

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !3068
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2995, metadata !571) #9, !dbg !3058
  %30 = icmp eq i8* %29, null, !dbg !3069
  %31 = icmp ne i64 %28, 0, !dbg !3070
  %32 = and i1 %31, %30, !dbg !3071
  br i1 %32, label %33, label %34, !dbg !3071

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3072
  unreachable, !dbg !3072

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3073
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3074 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3076, metadata !571), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2954, metadata !571) #9, !dbg !3078
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3080
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2960, metadata !571) #9, !dbg !3081
  %3 = icmp eq i8* %2, null, !dbg !3082
  %4 = icmp ne i64 %0, 0, !dbg !3083
  %5 = and i1 %4, %3, !dbg !3084
  br i1 %5, label %6, label %7, !dbg !3084

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3085
  unreachable, !dbg !3085

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3087 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3091, metadata !571), !dbg !3093
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3092, metadata !571), !dbg !3094
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !536, metadata !571) #9, !dbg !3095
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !537, metadata !571) #9, !dbg !3097
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !538, metadata !571) #9, !dbg !3098
  %3 = load i64, i64* %1, align 8, !dbg !3099, !tbaa !2033
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !539, metadata !571) #9, !dbg !3100
  %4 = icmp eq i8* %0, null, !dbg !3101
  br i1 %4, label %5, label %8, !dbg !3102

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3103
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !539, metadata !571) #9, !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !539, metadata !571) #9, !dbg !3100
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !539, metadata !571) #9, !dbg !3100
  store i64 %7, i64* %1, align 8, !dbg !3105, !tbaa !2033
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2995, metadata !571) #9, !dbg !3106
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3000, metadata !571) #9, !dbg !3108
  br label %17, !dbg !3109

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3110
  br i1 %9, label %11, label %10, !dbg !3111

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3112
  unreachable, !dbg !3112

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3113
  %13 = add i64 %3, 1, !dbg !3114
  %14 = add i64 %13, %12, !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !539, metadata !571) #9, !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !539, metadata !571) #9, !dbg !3100
  store i64 %14, i64* %1, align 8, !dbg !3105, !tbaa !2033
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2995, metadata !571) #9, !dbg !3106
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3000, metadata !571) #9, !dbg !3108
  %15 = icmp eq i64 %14, 0, !dbg !3116
  br i1 %15, label %16, label %17, !dbg !3109

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !3117
  br label %24, !dbg !3118

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !3119
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2995, metadata !571) #9, !dbg !3106
  %20 = icmp eq i8* %19, null, !dbg !3120
  %21 = icmp ne i64 %18, 0, !dbg !3121
  %22 = and i1 %21, %20, !dbg !3122
  br i1 %22, label %23, label %24, !dbg !3122

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3123
  unreachable, !dbg !3123

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3124
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3125 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3127, metadata !571), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2954, metadata !571) #9, !dbg !3129
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3131
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2960, metadata !571) #9, !dbg !3132
  %3 = icmp eq i8* %2, null, !dbg !3133
  %4 = icmp ne i64 %0, 0, !dbg !3134
  %5 = and i1 %4, %3, !dbg !3135
  br i1 %5, label %6, label %7, !dbg !3135

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3136
  unreachable, !dbg !3136

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3137
  ret i8* %2, !dbg !3138
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3139 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3141, metadata !571), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3142, metadata !571), !dbg !3145
  %3 = udiv i64 9223372036854775807, %1, !dbg !3146
  %4 = icmp ult i64 %3, %0, !dbg !3146
  br i1 %4, label %8, label %5, !dbg !3148

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3149
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3143, metadata !571), !dbg !3151
  %7 = icmp eq i8* %6, null, !dbg !3152
  br i1 %7, label %8, label %9, !dbg !3153

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3155
  unreachable, !dbg !3155

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3156
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3157 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3161, metadata !571), !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3162, metadata !571), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2954, metadata !571) #9, !dbg !3165
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3167
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2960, metadata !571) #9, !dbg !3168
  %4 = icmp eq i8* %3, null, !dbg !3169
  %5 = icmp ne i64 %1, 0, !dbg !3170
  %6 = and i1 %5, %4, !dbg !3171
  br i1 %6, label %7, label %8, !dbg !3171

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3172
  unreachable, !dbg !3172

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3173
  ret i8* %3, !dbg !3174
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3175 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3177, metadata !571), !dbg !3178
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3179
  %3 = add i64 %2, 1, !dbg !3180
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3161, metadata !571) #9, !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3162, metadata !571) #9, !dbg !3184
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2954, metadata !571) #9, !dbg !3185
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3187
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2960, metadata !571) #9, !dbg !3188
  %5 = icmp eq i8* %4, null, !dbg !3189
  %6 = icmp ne i64 %3, 0, !dbg !3190
  %7 = and i1 %6, %5, !dbg !3191
  br i1 %7, label %8, label %9, !dbg !3191

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3192
  unreachable, !dbg !3192

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3193
  ret i8* %4, !dbg !3194
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3195 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3197, !tbaa !698
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.79, i64 0, i64 0), i32 5) #9, !dbg !3198
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i8* %2) #9, !dbg !3199
  tail call void @abort() #14, !dbg !3201
  unreachable, !dbg !3201
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3202 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3205, metadata !571), !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3206, metadata !571), !dbg !3212
  %3 = icmp eq i64 %0, 0, !dbg !3213
  %4 = icmp eq i64 %1, 0, !dbg !3214
  %5 = or i1 %3, %4, !dbg !3216
  br i1 %5, label %12, label %6, !dbg !3216

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3217
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3208, metadata !571), !dbg !3218
  %8 = udiv i64 %7, %1, !dbg !3219
  %9 = icmp eq i64 %8, %0, !dbg !3221
  br i1 %9, label %12, label %10, !dbg !3222

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3223
  store i32 12, i32* %11, align 4, !dbg !3225, !tbaa !698
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3205, metadata !571), !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3206, metadata !571), !dbg !3212
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3207, metadata !571), !dbg !3227
  br label %16, !dbg !3228

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3229
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3230 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3247, metadata !571), !dbg !3256
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3248, metadata !571), !dbg !3257
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3249, metadata !571), !dbg !3258
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3250, metadata !571), !dbg !3259
  %6 = bitcast i32* %5 to i8*, !dbg !3260
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9, !dbg !3260
  %7 = icmp eq i32* %0, null, !dbg !3261
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3247, metadata !571), !dbg !3256
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3263
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3247, metadata !571), !dbg !3256
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3264
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3251, metadata !571), !dbg !3265
  %10 = icmp ugt i64 %9, -3, !dbg !3266
  %11 = icmp ne i64 %2, 0, !dbg !3267
  %12 = and i1 %11, %10, !dbg !3269
  br i1 %12, label %13, label %18, !dbg !3269

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3270
  br i1 %14, label %18, label %15, !dbg !3272

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3274, !tbaa !1019
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3253, metadata !571), !dbg !3275
  %17 = zext i8 %16 to i32, !dbg !3276
  store i32 %17, i32* %8, align 4, !dbg !3277, !tbaa !698
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9, !dbg !3278
  ret i64 %19, !dbg !3278
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3279 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3324, metadata !571), !dbg !3329
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3330
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3331, metadata !571), !dbg !3335
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3337
  %4 = load i32, i32* %3, align 8, !dbg !3337, !tbaa !3338
  %5 = and i32 %4, 32, !dbg !3337
  %6 = icmp eq i32 %5, 0, !dbg !3340
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3341
  %8 = icmp ne i32 %7, 0, !dbg !3342
  br i1 %6, label %9, label %19, !dbg !3343

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3345
  %11 = icmp ne i64 %2, 0, !dbg !3345
  %12 = or i1 %11, %10, !dbg !3345
  %13 = sext i1 %8 to i32, !dbg !3345
  br i1 %12, label %22, label %14, !dbg !3345

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3347
  %16 = load i32, i32* %15, align 4, !dbg !3347, !tbaa !698
  %17 = icmp ne i32 %16, 9, !dbg !3349
  %18 = sext i1 %17 to i32, !dbg !3349
  br label %22, !dbg !3349

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3351

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3353
  store i32 0, i32* %21, align 4, !dbg !3355, !tbaa !698
  br label %22, !dbg !3353

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3356
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3357 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3362, metadata !571), !dbg !3382
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3363, metadata !571), !dbg !3383
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3384
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3364, metadata !571), !dbg !3385
  %3 = icmp eq i8* %2, null, !dbg !3386
  br i1 %3, label %15, label %4, !dbg !3387

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3372, metadata !571), !dbg !3388
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3373, metadata !571), !dbg !3389
  %5 = load i8, i8* %2, align 1, !dbg !3390, !tbaa !1019
  %6 = icmp eq i8 %5, 67, !dbg !3392
  br i1 %6, label %7, label %11, !dbg !3395

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3397
  %9 = load i8, i8* %8, align 1, !dbg !3397, !tbaa !1019
  %10 = icmp eq i8 %9, 0, !dbg !3400
  br i1 %10, label %14, label %11, !dbg !3402

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3378, metadata !571), !dbg !3404
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.89, i64 0, i64 0)) #9, !dbg !3405
  %13 = icmp eq i32 %12, 0, !dbg !3407
  br i1 %13, label %14, label %15, !dbg !3409

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3363, metadata !571), !dbg !3383
  br label %15, !dbg !3411

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3412
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3413 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3425, metadata !571), !dbg !3499
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3492, metadata !571), !dbg !3501
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3502
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3417, metadata !571), !dbg !3503
  %4 = icmp eq i8* %3, null, !dbg !3504
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0), i8* %3, !dbg !3506
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3417, metadata !571), !dbg !3503
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3507, !tbaa !574
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3439, metadata !571) #9, !dbg !3508
  %7 = icmp eq i8* %6, null, !dbg !3509
  br i1 %7, label %8, label %127, !dbg !3510

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.93, i64 0, i64 0)) #9, !dbg !3511
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3440, metadata !571) #9, !dbg !3512
  %10 = icmp eq i8* %9, null, !dbg !3513
  br i1 %10, label %14, label %11, !dbg !3515

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3516, !tbaa !1019
  %13 = icmp eq i8 %12, 0, !dbg !3518
  br i1 %13, label %14, label %15, !dbg !3519

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3521

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.94, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3440, metadata !571) #9, !dbg !3512
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3443, metadata !571) #9, !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3445, metadata !571) #9, !dbg !3524
  %18 = icmp eq i64 %17, 0, !dbg !3525
  br i1 %18, label %24, label %19, !dbg !3526

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3527
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3527
  %22 = load i8, i8* %21, align 1, !dbg !3527, !tbaa !1019
  %23 = icmp ne i8 %22, 47, !dbg !3529
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3530
  %27 = add i64 %17, 14, !dbg !3531
  %28 = add i64 %27, %26, !dbg !3532
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3533
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3442, metadata !571) #9, !dbg !3534
  %30 = icmp eq i8* %29, null, !dbg !3535
  br i1 %30, label %125, label %31, !dbg !3535

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3536
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3539

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3540, !tbaa !1019
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3542
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.95, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3543
  br label %37, !dbg !3544

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3542
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.95, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3543
  br label %37, !dbg !3544

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3545
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3447, metadata !571) #9, !dbg !3546
  %39 = icmp slt i32 %38, 0, !dbg !3547
  br i1 %39, label %123, label %40, !dbg !3548

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.96, i64 0, i64 0)) #9, !dbg !3549
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3448, metadata !571) #9, !dbg !3550
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3551
  br i1 %42, label %48, label %43, !dbg !3552

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3553

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9, !dbg !3554
  br label %123, !dbg !3556

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3489, metadata !571) #9, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3490, metadata !571) #9, !dbg !3557
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9, !dbg !3558
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9, !dbg !3559
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3560, metadata !571) #9, !dbg !3565
  %53 = load i8*, i8** %46, align 8, !dbg !3567, !tbaa !3568
  %54 = load i8*, i8** %47, align 8, !dbg !3567, !tbaa !3569
  %55 = icmp ult i8* %53, %54, !dbg !3567
  br i1 %55, label %58, label %56, !dbg !3567, !prof !3570

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3571
  br label %62, !dbg !3571

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3573
  store i8* %59, i8** %46, align 8, !dbg !3573, !tbaa !3568
  %60 = load i8, i8* %53, align 1, !dbg !3573, !tbaa !1019
  %61 = zext i8 %60 to i32, !dbg !3573
  br label %62, !dbg !3573

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3575
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3491, metadata !571) #9, !dbg !3577
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3578

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3579

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3560, metadata !571) #9, !dbg !3579
  %66 = load i8*, i8** %46, align 8, !dbg !3583, !tbaa !3568
  %67 = load i8*, i8** %47, align 8, !dbg !3583, !tbaa !3569
  %68 = icmp ult i8* %66, %67, !dbg !3583
  br i1 %68, label %71, label %69, !dbg !3583, !prof !3570

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3584
  br label %75, !dbg !3584

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3585
  store i8* %72, i8** %46, align 8, !dbg !3585, !tbaa !3568
  %73 = load i8, i8* %66, align 1, !dbg !3585, !tbaa !1019
  %74 = zext i8 %73 to i32, !dbg !3585
  br label %75, !dbg !3585

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3586
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3491, metadata !571) #9, !dbg !3577
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3587, !llvm.loop !3589

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9, !dbg !3592
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.97, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9, !dbg !3593
  %80 = icmp slt i32 %79, 2, !dbg !3595
  br i1 %80, label %115, label %81, !dbg !3596

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3496, metadata !571) #9, !dbg !3598
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3599
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3497, metadata !571) #9, !dbg !3600
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3498, metadata !571) #9, !dbg !3601
  %84 = icmp eq i64 %51, 0, !dbg !3602
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3604

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3490, metadata !571) #9, !dbg !3557
  %89 = add i64 %86, 2, !dbg !3605
  %90 = call noalias i8* @malloc(i64 %89) #9, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3489, metadata !571) #9, !dbg !3553
  br label %95, !dbg !3608

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3609
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3490, metadata !571) #9, !dbg !3557
  %93 = add i64 %92, 1, !dbg !3611
  %94 = call i8* @realloc(i8* %52, i64 %93) #9, !dbg !3612
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3489, metadata !571) #9, !dbg !3553
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3489, metadata !571) #9, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3490, metadata !571) #9, !dbg !3557
  %98 = icmp eq i8* %97, null, !dbg !3613
  br i1 %98, label %99, label %100, !dbg !3615

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3490, metadata !571) #9, !dbg !3557
  call void @free(i8* %52) #9, !dbg !3616
  br label %116, !dbg !3618

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3619
  %102 = xor i64 %83, -1, !dbg !3620
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3620
  %104 = xor i64 %82, -1, !dbg !3621
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3622, metadata !571) #9, !dbg !3631
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3630, metadata !571) #9, !dbg !3631
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9, !dbg !3633
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9, !dbg !3634
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3622, metadata !571) #9, !dbg !3635
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3630, metadata !571) #9, !dbg !3635
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9, !dbg !3637
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9, !dbg !3638
  br label %111, !dbg !3639

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3553

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3489, metadata !571) #9, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3490, metadata !571) #9, !dbg !3557
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3639
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3639
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3553

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3553

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3489, metadata !571) #9, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3490, metadata !571) #9, !dbg !3557
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3639
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3639
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3640
  %120 = icmp eq i64 %117, 0, !dbg !3641
  br i1 %120, label %123, label %121, !dbg !3643

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3644
  store i8 0, i8* %122, align 1, !dbg !3646, !tbaa !1019
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3439, metadata !571) #9, !dbg !3508
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3439, metadata !571) #9, !dbg !3508
  call void @free(i8* %29) #9, !dbg !3647
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.92, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3439, metadata !571) #9, !dbg !3508
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3648, !tbaa !574
  br label %127, !dbg !3649

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3418, metadata !571), !dbg !3650
  %129 = load i8, i8* %128, align 1, !dbg !3651, !tbaa !1019
  %130 = icmp eq i8 %129, 0, !dbg !3652
  br i1 %130, label %157, label %131, !dbg !3653

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3655

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9, !dbg !3655
  %136 = icmp eq i32 %135, 0, !dbg !3656
  br i1 %136, label %143, label %137, !dbg !3657

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3658
  br i1 %138, label %139, label %147, !dbg !3660

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3661
  %141 = load i8, i8* %140, align 1, !dbg !3661, !tbaa !1019
  %142 = icmp eq i8 %141, 0, !dbg !3663
  br i1 %142, label %143, label %147, !dbg !3664

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3666
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3668
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3417, metadata !571), !dbg !3503
  br label %157, !dbg !3670

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3671
  %149 = add i64 %148, 1, !dbg !3672
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3418, metadata !571), !dbg !3650
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3674
  %152 = add i64 %151, 1, !dbg !3675
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3418, metadata !571), !dbg !3650
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3418, metadata !571), !dbg !3650
  %154 = load i8, i8* %153, align 1, !dbg !3651, !tbaa !1019
  %155 = icmp eq i8 %154, 0, !dbg !3652
  br i1 %155, label %156, label %132, !dbg !3653, !llvm.loop !3677

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3503

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3417, metadata !571), !dbg !3503
  %159 = load i8, i8* %158, align 1, !dbg !3680, !tbaa !1019
  %160 = icmp eq i8 %159, 0, !dbg !3682
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.98, i64 0, i64 0), i8* %158, !dbg !3683
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3417, metadata !571), !dbg !3503
  ret i8* %161, !dbg !3684
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3685 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3730, metadata !571), !dbg !3734
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3731, metadata !571), !dbg !3735
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3733, metadata !571), !dbg !3736
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3737
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3732, metadata !571), !dbg !3738
  %3 = icmp slt i32 %2, 0, !dbg !3739
  br i1 %3, label %4, label %6, !dbg !3741

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3742
  br label %24, !dbg !3743

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3744
  %8 = icmp eq i32 %7, 0, !dbg !3744
  br i1 %8, label %13, label %9, !dbg !3746

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3747
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3749
  %12 = icmp eq i64 %11, -1, !dbg !3751
  br i1 %12, label %16, label %13, !dbg !3752

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3753
  %15 = icmp eq i32 %14, 0, !dbg !3753
  br i1 %15, label %16, label %18, !dbg !3754

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3731, metadata !571), !dbg !3735
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3756
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3733, metadata !571), !dbg !3736
  br label %24, !dbg !3757

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !3758
  %20 = load i32, i32* %19, align 4, !dbg !3758, !tbaa !698
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3731, metadata !571), !dbg !3735
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3731, metadata !571), !dbg !3735
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3756
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3733, metadata !571), !dbg !3736
  %22 = icmp eq i32 %20, 0, !dbg !3759
  br i1 %22, label %24, label %23, !dbg !3757

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3761, !tbaa !698
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3733, metadata !571), !dbg !3736
  br label %24, !dbg !3763

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3764
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3765 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3810, metadata !571), !dbg !3811
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3812
  br i1 %2, label %6, label %3, !dbg !3814

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3815
  %5 = icmp eq i32 %4, 0, !dbg !3815
  br i1 %5, label %6, label %8, !dbg !3817

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3819
  br label %17, !dbg !3820

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3821, metadata !571) #9, !dbg !3826
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3828
  %10 = load i32, i32* %9, align 8, !dbg !3828, !tbaa !3338
  %11 = and i32 %10, 256, !dbg !3830
  %12 = icmp eq i32 %11, 0, !dbg !3830
  br i1 %12, label %15, label %13, !dbg !3831

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3832
  br label %15, !dbg !3832

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3833
  br label %17, !dbg !3834

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3835
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3836 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3882, metadata !571), !dbg !3888
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3883, metadata !571), !dbg !3889
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3884, metadata !571), !dbg !3890
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3891
  %5 = load i8*, i8** %4, align 8, !dbg !3891, !tbaa !3569
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3892
  %7 = load i8*, i8** %6, align 8, !dbg !3892, !tbaa !3568
  %8 = icmp eq i8* %5, %7, !dbg !3893
  br i1 %8, label %9, label %28, !dbg !3894

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3895
  %11 = load i8*, i8** %10, align 8, !dbg !3895, !tbaa !3897
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3898
  %13 = load i8*, i8** %12, align 8, !dbg !3898, !tbaa !3899
  %14 = icmp eq i8* %11, %13, !dbg !3900
  br i1 %14, label %15, label %28, !dbg !3901

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3902
  %17 = load i8*, i8** %16, align 8, !dbg !3902, !tbaa !3903
  %18 = icmp eq i8* %17, null, !dbg !3904
  br i1 %18, label %19, label %28, !dbg !3905

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3907
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3908
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3885, metadata !571), !dbg !3910
  %22 = icmp eq i64 %21, -1, !dbg !3911
  br i1 %22, label %30, label %23, !dbg !3913

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3914
  %25 = load i32, i32* %24, align 8, !dbg !3915, !tbaa !3338
  %26 = and i32 %25, -17, !dbg !3915
  store i32 %26, i32* %24, align 8, !dbg !3915, !tbaa !3338
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3916
  store i64 %21, i64* %27, align 8, !dbg !3917, !tbaa !3918
  br label %30, !dbg !3919

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3920
  br label %30, !dbg !3921

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3922
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
!481 = !DIFile(filename: "src/true.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!566 = distinct !DISubprogram(name: "usage", scope: !481, file: !481, line: 36, type: !567, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !480, variables: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !25}
!569 = !{!570}
!570 = !DILocalVariable(name: "status", arg: 1, scope: !566, file: !481, line: 36, type: !25)
!571 = !DIExpression()
!572 = !DILocation(line: 36, column: 12, scope: !566)
!573 = !DILocation(line: 38, column: 3, scope: !566)
!574 = !{!575, !575, i64 0}
!575 = !{!"any pointer", !576, i64 0}
!576 = !{!"omnipotent char", !577, i64 0}
!577 = !{!"Simple C/C++ TBAA"}
!578 = !DILocation(line: 38, column: 3, scope: !579)
!579 = !DILexicalBlockFile(scope: !566, file: !481, discriminator: 1)
!580 = !DILocation(line: 43, column: 3, scope: !566)
!581 = !DILocation(line: 43, column: 3, scope: !579)
!582 = !DILocation(line: 47, column: 3, scope: !566)
!583 = !DILocation(line: 47, column: 3, scope: !579)
!584 = !DILocation(line: 48, column: 3, scope: !566)
!585 = !DILocation(line: 48, column: 3, scope: !579)
!586 = !DILocation(line: 49, column: 3, scope: !566)
!587 = !DILocation(line: 49, column: 3, scope: !579)
!588 = !DILocation(line: 642, column: 15, scope: !490, inlinedAt: !589)
!589 = distinct !DILocation(line: 50, column: 3, scope: !566)
!590 = !DILocation(line: 651, column: 3, scope: !490, inlinedAt: !589)
!591 = !DILocation(line: 651, column: 3, scope: !592, inlinedAt: !589)
!592 = !DILexicalBlockFile(scope: !490, file: !491, discriminator: 1)
!593 = !DILocation(line: 655, column: 29, scope: !490, inlinedAt: !589)
!594 = !DILocation(line: 655, column: 15, scope: !490, inlinedAt: !589)
!595 = !DILocation(line: 656, column: 7, scope: !510, inlinedAt: !589)
!596 = !DILocation(line: 656, column: 19, scope: !510, inlinedAt: !589)
!597 = !DILocation(line: 656, column: 22, scope: !598, inlinedAt: !589)
!598 = !DILexicalBlockFile(scope: !510, file: !491, discriminator: 16)
!599 = !DILocation(line: 656, column: 7, scope: !600, inlinedAt: !589)
!600 = !DILexicalBlockFile(scope: !490, file: !491, discriminator: 16)
!601 = !DILocation(line: 662, column: 7, scope: !602, inlinedAt: !589)
!602 = distinct !DILexicalBlock(scope: !510, file: !491, line: 657, column: 5)
!603 = !DILocation(line: 662, column: 7, scope: !604, inlinedAt: !589)
!604 = !DILexicalBlockFile(scope: !602, file: !491, discriminator: 1)
!605 = !DILocation(line: 664, column: 5, scope: !602, inlinedAt: !589)
!606 = !DILocation(line: 665, column: 3, scope: !490, inlinedAt: !589)
!607 = !DILocation(line: 665, column: 3, scope: !592, inlinedAt: !589)
!608 = !DILocation(line: 667, column: 3, scope: !490, inlinedAt: !589)
!609 = !DILocation(line: 667, column: 3, scope: !592, inlinedAt: !589)
!610 = !DILocation(line: 51, column: 3, scope: !566)
!611 = distinct !DISubprogram(name: "main", scope: !481, file: !481, line: 55, type: !612, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !615)
!612 = !DISubroutineType(types: !613)
!613 = !{!25, !25, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!615 = !{!616, !617, !618, !623, !624, !626, !627, !630, !631, !633}
!616 = !DILocalVariable(name: "argc", arg: 1, scope: !611, file: !481, line: 55, type: !25)
!617 = !DILocalVariable(name: "argv", arg: 2, scope: !611, file: !481, line: 55, type: !614)
!618 = !DILocalVariable(name: "__s1_len", scope: !619, file: !481, line: 71, type: !76)
!619 = distinct !DILexicalBlock(scope: !620, file: !481, line: 71, column: 11)
!620 = distinct !DILexicalBlock(scope: !621, file: !481, line: 71, column: 11)
!621 = distinct !DILexicalBlock(scope: !622, file: !481, line: 60, column: 5)
!622 = distinct !DILexicalBlock(scope: !611, file: !481, line: 59, column: 7)
!623 = !DILocalVariable(name: "__s2_len", scope: !619, file: !481, line: 71, type: !76)
!624 = !DILocalVariable(name: "__s2", scope: !625, file: !481, line: 71, type: !485)
!625 = distinct !DILexicalBlock(scope: !619, file: !481, line: 71, column: 11)
!626 = !DILocalVariable(name: "__result", scope: !625, file: !481, line: 71, type: !25)
!627 = !DILocalVariable(name: "__s1_len", scope: !628, file: !481, line: 74, type: !76)
!628 = distinct !DILexicalBlock(scope: !629, file: !481, line: 74, column: 11)
!629 = distinct !DILexicalBlock(scope: !621, file: !481, line: 74, column: 11)
!630 = !DILocalVariable(name: "__s2_len", scope: !628, file: !481, line: 74, type: !76)
!631 = !DILocalVariable(name: "__s2", scope: !632, file: !481, line: 74, type: !485)
!632 = distinct !DILexicalBlock(scope: !628, file: !481, line: 74, column: 11)
!633 = !DILocalVariable(name: "__result", scope: !632, file: !481, line: 74, type: !25)
!634 = !DILocation(line: 55, column: 11, scope: !611)
!635 = !DILocation(line: 55, column: 24, scope: !611)
!636 = !DILocation(line: 59, column: 12, scope: !622)
!637 = !DILocation(line: 59, column: 7, scope: !611)
!638 = !DILocation(line: 62, column: 25, scope: !621)
!639 = !DILocation(line: 62, column: 7, scope: !621)
!640 = !DILocation(line: 63, column: 7, scope: !621)
!641 = !DILocation(line: 64, column: 7, scope: !621)
!642 = !DILocation(line: 65, column: 7, scope: !621)
!643 = !DILocation(line: 69, column: 7, scope: !621)
!644 = !DILocation(line: 71, column: 11, scope: !619)
!645 = !DILocation(line: 71, column: 11, scope: !646)
!646 = !DILexicalBlockFile(scope: !619, file: !481, discriminator: 12)
!647 = !DILocation(line: 71, column: 11, scope: !648)
!648 = !DILexicalBlockFile(scope: !620, file: !481, discriminator: 13)
!649 = !DILocation(line: 71, column: 11, scope: !650)
!650 = !DILexicalBlockFile(scope: !621, file: !481, discriminator: 13)
!651 = !DILocation(line: 72, column: 9, scope: !620)
!652 = !DILocation(line: 74, column: 11, scope: !628)
!653 = !DILocation(line: 74, column: 11, scope: !654)
!654 = !DILexicalBlockFile(scope: !628, file: !481, discriminator: 12)
!655 = !DILocation(line: 74, column: 11, scope: !656)
!656 = !DILexicalBlockFile(scope: !629, file: !481, discriminator: 13)
!657 = !DILocation(line: 74, column: 11, scope: !650)
!658 = !DILocation(line: 75, column: 22, scope: !629)
!659 = !DILocation(line: 75, column: 58, scope: !629)
!660 = !DILocation(line: 75, column: 9, scope: !629)
!661 = !DILocation(line: 79, column: 3, scope: !611)
!662 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !492, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !663)
!663 = !{!664}
!664 = !DILocalVariable(name: "file", arg: 1, scope: !662, file: !16, line: 41, type: !6)
!665 = !DILocation(line: 41, column: 41, scope: !662)
!666 = !DILocation(line: 43, column: 13, scope: !662)
!667 = !DILocation(line: 44, column: 1, scope: !662)
!668 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !669, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !17}
!671 = !{!672}
!672 = !DILocalVariable(name: "ignore", arg: 1, scope: !668, file: !16, line: 78, type: !17)
!673 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!674 = !DILocation(line: 78, column: 37, scope: !668)
!675 = !DILocation(line: 80, column: 16, scope: !668)
!676 = !{!677, !677, i64 0}
!677 = !{!"_Bool", !576, i64 0}
!678 = !DILocation(line: 81, column: 1, scope: !668)
!679 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !680, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{null}
!682 = !{!683}
!683 = !DILocalVariable(name: "write_error", scope: !684, file: !16, line: 112, type: !6)
!684 = distinct !DILexicalBlock(scope: !685, file: !16, line: 111, column: 5)
!685 = distinct !DILexicalBlock(scope: !679, file: !16, line: 109, column: 7)
!686 = !DILocation(line: 109, column: 21, scope: !685)
!687 = !DILocation(line: 109, column: 7, scope: !685)
!688 = !DILocation(line: 109, column: 29, scope: !685)
!689 = !DILocation(line: 110, column: 7, scope: !685)
!690 = !DILocation(line: 110, column: 12, scope: !691)
!691 = !DILexicalBlockFile(scope: !685, file: !16, discriminator: 1)
!692 = !{i8 0, i8 2}
!693 = !DILocation(line: 114, column: 19, scope: !694)
!694 = distinct !DILexicalBlock(scope: !684, file: !16, line: 113, column: 11)
!695 = !DILocation(line: 110, column: 25, scope: !691)
!696 = !DILocation(line: 110, column: 28, scope: !697)
!697 = !DILexicalBlockFile(scope: !685, file: !16, discriminator: 2)
!698 = !{!699, !699, i64 0}
!699 = !{!"int", !576, i64 0}
!700 = !DILocation(line: 110, column: 34, scope: !697)
!701 = !DILocation(line: 109, column: 7, scope: !702)
!702 = !DILexicalBlockFile(scope: !679, file: !16, discriminator: 1)
!703 = !DILocation(line: 112, column: 33, scope: !684)
!704 = !DILocation(line: 112, column: 19, scope: !684)
!705 = !DILocation(line: 113, column: 11, scope: !694)
!706 = !DILocation(line: 113, column: 11, scope: !684)
!707 = !DILocation(line: 114, column: 36, scope: !708)
!708 = !DILexicalBlockFile(scope: !694, file: !16, discriminator: 1)
!709 = !DILocation(line: 114, column: 9, scope: !710)
!710 = !DILexicalBlockFile(scope: !694, file: !16, discriminator: 2)
!711 = !DILocation(line: 114, column: 9, scope: !694)
!712 = !DILocation(line: 117, column: 9, scope: !708)
!713 = !DILocation(line: 119, column: 14, scope: !684)
!714 = !DILocation(line: 119, column: 7, scope: !684)
!715 = !DILocation(line: 122, column: 22, scope: !716)
!716 = distinct !DILexicalBlock(scope: !679, file: !16, line: 122, column: 8)
!717 = !DILocation(line: 122, column: 8, scope: !716)
!718 = !DILocation(line: 122, column: 30, scope: !716)
!719 = !DILocation(line: 122, column: 8, scope: !679)
!720 = !DILocation(line: 123, column: 13, scope: !716)
!721 = !DILocation(line: 123, column: 6, scope: !716)
!722 = !DILocation(line: 124, column: 1, scope: !679)
!723 = distinct !DISubprogram(name: "set_program_name", scope: !34, file: !34, line: 39, type: !492, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !724)
!724 = !{!725, !726, !727}
!725 = !DILocalVariable(name: "argv0", arg: 1, scope: !723, file: !34, line: 39, type: !6)
!726 = !DILocalVariable(name: "slash", scope: !723, file: !34, line: 46, type: !6)
!727 = !DILocalVariable(name: "base", scope: !723, file: !34, line: 47, type: !6)
!728 = !DILocation(line: 39, column: 31, scope: !723)
!729 = !DILocation(line: 51, column: 13, scope: !730)
!730 = distinct !DILexicalBlock(scope: !723, file: !34, line: 51, column: 7)
!731 = !DILocation(line: 51, column: 7, scope: !723)
!732 = !DILocation(line: 55, column: 14, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !34, line: 52, column: 5)
!734 = !DILocation(line: 54, column: 7, scope: !733)
!735 = !DILocation(line: 56, column: 7, scope: !733)
!736 = !DILocation(line: 59, column: 11, scope: !723)
!737 = !DILocation(line: 46, column: 15, scope: !723)
!738 = !DILocation(line: 60, column: 17, scope: !723)
!739 = !DILocation(line: 60, column: 33, scope: !740)
!740 = !DILexicalBlockFile(scope: !723, file: !34, discriminator: 1)
!741 = !DILocation(line: 60, column: 11, scope: !723)
!742 = !DILocation(line: 47, column: 15, scope: !723)
!743 = !DILocation(line: 61, column: 12, scope: !744)
!744 = distinct !DILexicalBlock(scope: !723, file: !34, line: 61, column: 7)
!745 = !DILocation(line: 61, column: 20, scope: !744)
!746 = !DILocation(line: 61, column: 25, scope: !744)
!747 = !DILocation(line: 61, column: 28, scope: !748)
!748 = !DILexicalBlockFile(scope: !744, file: !34, discriminator: 1)
!749 = !DILocation(line: 61, column: 61, scope: !748)
!750 = !DILocation(line: 61, column: 7, scope: !740)
!751 = !DILocation(line: 64, column: 11, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !34, line: 64, column: 11)
!753 = distinct !DILexicalBlock(scope: !744, file: !34, line: 62, column: 5)
!754 = !DILocation(line: 64, column: 36, scope: !752)
!755 = !DILocation(line: 64, column: 11, scope: !753)
!756 = !DILocation(line: 66, column: 24, scope: !757)
!757 = distinct !DILexicalBlock(scope: !752, file: !34, line: 65, column: 9)
!758 = !DILocation(line: 70, column: 41, scope: !757)
!759 = !DILocation(line: 72, column: 9, scope: !757)
!760 = !DILocation(line: 84, column: 16, scope: !723)
!761 = !DILocation(line: 90, column: 27, scope: !723)
!762 = !DILocation(line: 92, column: 1, scope: !723)
!763 = distinct !DISubprogram(name: "clone_quoting_options", scope: !82, file: !82, line: 114, type: !764, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !767)
!764 = !DISubroutineType(types: !765)
!765 = !{!766, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!767 = !{!768, !769, !770}
!768 = !DILocalVariable(name: "o", arg: 1, scope: !763, file: !82, line: 114, type: !766)
!769 = !DILocalVariable(name: "e", scope: !763, file: !82, line: 116, type: !25)
!770 = !DILocalVariable(name: "p", scope: !763, file: !82, line: 117, type: !766)
!771 = !DILocation(line: 114, column: 48, scope: !763)
!772 = !DILocation(line: 116, column: 11, scope: !763)
!773 = !DILocation(line: 116, column: 7, scope: !763)
!774 = !DILocation(line: 117, column: 40, scope: !763)
!775 = !DILocation(line: 117, column: 40, scope: !776)
!776 = !DILexicalBlockFile(scope: !763, file: !82, discriminator: 3)
!777 = !DILocation(line: 117, column: 31, scope: !776)
!778 = !DILocation(line: 117, column: 27, scope: !763)
!779 = !DILocation(line: 119, column: 9, scope: !763)
!780 = !DILocation(line: 120, column: 3, scope: !763)
!781 = distinct !DISubprogram(name: "get_quoting_style", scope: !82, file: !82, line: 125, type: !782, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !786)
!782 = !DISubroutineType(types: !783)
!783 = !{!40, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!786 = !{!787}
!787 = !DILocalVariable(name: "o", arg: 1, scope: !781, file: !82, line: 125, type: !784)
!788 = !DILocation(line: 125, column: 50, scope: !781)
!789 = !DILocation(line: 127, column: 11, scope: !781)
!790 = !DILocation(line: 127, column: 46, scope: !791)
!791 = !DILexicalBlockFile(scope: !781, file: !82, discriminator: 3)
!792 = !{!793, !576, i64 0}
!793 = !{!"quoting_options", !576, i64 0, !699, i64 4, !576, i64 8, !575, i64 40, !575, i64 48}
!794 = !DILocation(line: 127, column: 3, scope: !791)
!795 = distinct !DISubprogram(name: "set_quoting_style", scope: !82, file: !82, line: 133, type: !796, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !766, !40}
!798 = !{!799, !800}
!799 = !DILocalVariable(name: "o", arg: 1, scope: !795, file: !82, line: 133, type: !766)
!800 = !DILocalVariable(name: "s", arg: 2, scope: !795, file: !82, line: 133, type: !40)
!801 = !DILocation(line: 133, column: 44, scope: !795)
!802 = !DILocation(line: 133, column: 66, scope: !795)
!803 = !DILocation(line: 135, column: 4, scope: !795)
!804 = !DILocation(line: 135, column: 39, scope: !805)
!805 = !DILexicalBlockFile(scope: !795, file: !82, discriminator: 3)
!806 = !DILocation(line: 135, column: 45, scope: !805)
!807 = !DILocation(line: 136, column: 1, scope: !795)
!808 = distinct !DISubprogram(name: "set_char_quoting", scope: !82, file: !82, line: 144, type: !809, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{!25, !766, !8, !25}
!811 = !{!812, !813, !814, !815, !816, !818, !819}
!812 = !DILocalVariable(name: "o", arg: 1, scope: !808, file: !82, line: 144, type: !766)
!813 = !DILocalVariable(name: "c", arg: 2, scope: !808, file: !82, line: 144, type: !8)
!814 = !DILocalVariable(name: "i", arg: 3, scope: !808, file: !82, line: 144, type: !25)
!815 = !DILocalVariable(name: "uc", scope: !808, file: !82, line: 146, type: !476)
!816 = !DILocalVariable(name: "p", scope: !808, file: !82, line: 147, type: !817)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!818 = !DILocalVariable(name: "shift", scope: !808, file: !82, line: 149, type: !25)
!819 = !DILocalVariable(name: "r", scope: !808, file: !82, line: 150, type: !25)
!820 = !DILocation(line: 144, column: 43, scope: !808)
!821 = !DILocation(line: 144, column: 51, scope: !808)
!822 = !DILocation(line: 144, column: 58, scope: !808)
!823 = !DILocation(line: 146, column: 17, scope: !808)
!824 = !DILocation(line: 148, column: 6, scope: !808)
!825 = !DILocation(line: 148, column: 62, scope: !826)
!826 = !DILexicalBlockFile(scope: !808, file: !82, discriminator: 3)
!827 = !DILocation(line: 148, column: 57, scope: !826)
!828 = !DILocation(line: 147, column: 17, scope: !808)
!829 = !DILocation(line: 149, column: 18, scope: !808)
!830 = !DILocation(line: 149, column: 15, scope: !808)
!831 = !DILocation(line: 149, column: 7, scope: !808)
!832 = !DILocation(line: 150, column: 12, scope: !808)
!833 = !DILocation(line: 150, column: 15, scope: !808)
!834 = !DILocation(line: 150, column: 25, scope: !808)
!835 = !DILocation(line: 150, column: 7, scope: !808)
!836 = !DILocation(line: 151, column: 13, scope: !808)
!837 = !DILocation(line: 151, column: 18, scope: !808)
!838 = !DILocation(line: 151, column: 23, scope: !808)
!839 = !DILocation(line: 151, column: 6, scope: !808)
!840 = !DILocation(line: 152, column: 3, scope: !808)
!841 = distinct !DISubprogram(name: "set_quoting_flags", scope: !82, file: !82, line: 160, type: !842, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!25, !766, !25}
!844 = !{!845, !846, !847}
!845 = !DILocalVariable(name: "o", arg: 1, scope: !841, file: !82, line: 160, type: !766)
!846 = !DILocalVariable(name: "i", arg: 2, scope: !841, file: !82, line: 160, type: !25)
!847 = !DILocalVariable(name: "r", scope: !841, file: !82, line: 162, type: !25)
!848 = !DILocation(line: 160, column: 44, scope: !841)
!849 = !DILocation(line: 160, column: 51, scope: !841)
!850 = !DILocation(line: 163, column: 8, scope: !851)
!851 = distinct !DILexicalBlock(scope: !841, file: !82, line: 163, column: 7)
!852 = !DILocation(line: 163, column: 7, scope: !841)
!853 = !DILocation(line: 165, column: 10, scope: !841)
!854 = !{!793, !699, i64 4}
!855 = !DILocation(line: 162, column: 7, scope: !841)
!856 = !DILocation(line: 166, column: 12, scope: !841)
!857 = !DILocation(line: 167, column: 3, scope: !841)
!858 = distinct !DISubprogram(name: "set_custom_quoting", scope: !82, file: !82, line: 171, type: !859, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !766, !6, !6}
!861 = !{!862, !863, !864}
!862 = !DILocalVariable(name: "o", arg: 1, scope: !858, file: !82, line: 171, type: !766)
!863 = !DILocalVariable(name: "left_quote", arg: 2, scope: !858, file: !82, line: 172, type: !6)
!864 = !DILocalVariable(name: "right_quote", arg: 3, scope: !858, file: !82, line: 172, type: !6)
!865 = !DILocation(line: 171, column: 45, scope: !858)
!866 = !DILocation(line: 172, column: 33, scope: !858)
!867 = !DILocation(line: 172, column: 57, scope: !858)
!868 = !DILocation(line: 174, column: 8, scope: !869)
!869 = distinct !DILexicalBlock(scope: !858, file: !82, line: 174, column: 7)
!870 = !DILocation(line: 174, column: 7, scope: !858)
!871 = !DILocation(line: 176, column: 6, scope: !858)
!872 = !DILocation(line: 176, column: 12, scope: !858)
!873 = !DILocation(line: 177, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !858, file: !82, line: 177, column: 7)
!875 = !DILocation(line: 177, column: 23, scope: !876)
!876 = !DILexicalBlockFile(scope: !874, file: !82, discriminator: 1)
!877 = !DILocation(line: 177, column: 19, scope: !874)
!878 = !DILocation(line: 178, column: 5, scope: !874)
!879 = !DILocation(line: 179, column: 6, scope: !858)
!880 = !DILocation(line: 179, column: 17, scope: !858)
!881 = !{!793, !575, i64 40}
!882 = !DILocation(line: 180, column: 6, scope: !858)
!883 = !DILocation(line: 180, column: 18, scope: !858)
!884 = !{!793, !575, i64 48}
!885 = !DILocation(line: 181, column: 1, scope: !858)
!886 = distinct !DISubprogram(name: "quotearg_buffer", scope: !82, file: !82, line: 776, type: !887, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!76, !32, !76, !6, !76, !784}
!889 = !{!890, !891, !892, !893, !894, !895, !896, !897}
!890 = !DILocalVariable(name: "buffer", arg: 1, scope: !886, file: !82, line: 776, type: !32)
!891 = !DILocalVariable(name: "buffersize", arg: 2, scope: !886, file: !82, line: 776, type: !76)
!892 = !DILocalVariable(name: "arg", arg: 3, scope: !886, file: !82, line: 777, type: !6)
!893 = !DILocalVariable(name: "argsize", arg: 4, scope: !886, file: !82, line: 777, type: !76)
!894 = !DILocalVariable(name: "o", arg: 5, scope: !886, file: !82, line: 778, type: !784)
!895 = !DILocalVariable(name: "p", scope: !886, file: !82, line: 780, type: !784)
!896 = !DILocalVariable(name: "e", scope: !886, file: !82, line: 781, type: !25)
!897 = !DILocalVariable(name: "r", scope: !886, file: !82, line: 782, type: !76)
!898 = !DILocation(line: 776, column: 24, scope: !886)
!899 = !DILocation(line: 776, column: 39, scope: !886)
!900 = !DILocation(line: 777, column: 30, scope: !886)
!901 = !DILocation(line: 777, column: 42, scope: !886)
!902 = !DILocation(line: 778, column: 48, scope: !886)
!903 = !DILocation(line: 780, column: 37, scope: !886)
!904 = !DILocation(line: 780, column: 33, scope: !886)
!905 = !DILocation(line: 781, column: 11, scope: !886)
!906 = !DILocation(line: 781, column: 7, scope: !886)
!907 = !DILocation(line: 783, column: 43, scope: !886)
!908 = !DILocation(line: 783, column: 53, scope: !886)
!909 = !DILocation(line: 783, column: 60, scope: !886)
!910 = !DILocation(line: 784, column: 43, scope: !886)
!911 = !DILocation(line: 784, column: 58, scope: !886)
!912 = !DILocation(line: 782, column: 14, scope: !886)
!913 = !DILocation(line: 782, column: 10, scope: !886)
!914 = !DILocation(line: 785, column: 9, scope: !886)
!915 = !DILocation(line: 786, column: 3, scope: !886)
!916 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !82, file: !82, line: 248, type: !917, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !921)
!917 = !DISubroutineType(types: !918)
!918 = !{!76, !32, !76, !6, !76, !40, !25, !919, !6, !6}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!921 = !{!922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !946, !947, !948, !949, !950, !953, !954, !971, !974, !975, !982}
!922 = !DILocalVariable(name: "buffer", arg: 1, scope: !916, file: !82, line: 248, type: !32)
!923 = !DILocalVariable(name: "buffersize", arg: 2, scope: !916, file: !82, line: 248, type: !76)
!924 = !DILocalVariable(name: "arg", arg: 3, scope: !916, file: !82, line: 249, type: !6)
!925 = !DILocalVariable(name: "argsize", arg: 4, scope: !916, file: !82, line: 249, type: !76)
!926 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !916, file: !82, line: 250, type: !40)
!927 = !DILocalVariable(name: "flags", arg: 6, scope: !916, file: !82, line: 250, type: !25)
!928 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !916, file: !82, line: 251, type: !919)
!929 = !DILocalVariable(name: "left_quote", arg: 8, scope: !916, file: !82, line: 252, type: !6)
!930 = !DILocalVariable(name: "right_quote", arg: 9, scope: !916, file: !82, line: 253, type: !6)
!931 = !DILocalVariable(name: "i", scope: !916, file: !82, line: 255, type: !76)
!932 = !DILocalVariable(name: "len", scope: !916, file: !82, line: 256, type: !76)
!933 = !DILocalVariable(name: "orig_buffersize", scope: !916, file: !82, line: 257, type: !76)
!934 = !DILocalVariable(name: "quote_string", scope: !916, file: !82, line: 258, type: !6)
!935 = !DILocalVariable(name: "quote_string_len", scope: !916, file: !82, line: 259, type: !76)
!936 = !DILocalVariable(name: "backslash_escapes", scope: !916, file: !82, line: 260, type: !17)
!937 = !DILocalVariable(name: "unibyte_locale", scope: !916, file: !82, line: 261, type: !17)
!938 = !DILocalVariable(name: "elide_outer_quotes", scope: !916, file: !82, line: 262, type: !17)
!939 = !DILocalVariable(name: "pending_shell_escape_end", scope: !916, file: !82, line: 263, type: !17)
!940 = !DILocalVariable(name: "encountered_single_quote", scope: !916, file: !82, line: 264, type: !17)
!941 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !916, file: !82, line: 265, type: !17)
!942 = !DILocalVariable(name: "c", scope: !943, file: !82, line: 394, type: !476)
!943 = distinct !DILexicalBlock(scope: !944, file: !82, line: 393, column: 5)
!944 = distinct !DILexicalBlock(scope: !945, file: !82, line: 392, column: 3)
!945 = distinct !DILexicalBlock(scope: !916, file: !82, line: 392, column: 3)
!946 = !DILocalVariable(name: "esc", scope: !943, file: !82, line: 395, type: !476)
!947 = !DILocalVariable(name: "is_right_quote", scope: !943, file: !82, line: 396, type: !17)
!948 = !DILocalVariable(name: "escaping", scope: !943, file: !82, line: 397, type: !17)
!949 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !943, file: !82, line: 398, type: !17)
!950 = !DILocalVariable(name: "m", scope: !951, file: !82, line: 602, type: !76)
!951 = distinct !DILexicalBlock(scope: !952, file: !82, line: 600, column: 11)
!952 = distinct !DILexicalBlock(scope: !943, file: !82, line: 418, column: 9)
!953 = !DILocalVariable(name: "printable", scope: !951, file: !82, line: 604, type: !17)
!954 = !DILocalVariable(name: "mbstate", scope: !955, file: !82, line: 613, type: !957)
!955 = distinct !DILexicalBlock(scope: !956, file: !82, line: 612, column: 15)
!956 = distinct !DILexicalBlock(scope: !951, file: !82, line: 606, column: 17)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !958, line: 107, baseType: !959)
!958 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !958, line: 95, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !958, line: 83, size: 64, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !960, file: !958, line: 85, baseType: !25, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !960, file: !958, line: 94, baseType: !964, size: 32, offset: 32)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !958, line: 86, size: 32, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !964, file: !958, line: 89, baseType: !95, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !964, file: !958, line: 93, baseType: !968, size: 32)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 4)
!971 = !DILocalVariable(name: "w", scope: !972, file: !82, line: 623, type: !973)
!972 = distinct !DILexicalBlock(scope: !955, file: !82, line: 622, column: 19)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 90, baseType: !25)
!974 = !DILocalVariable(name: "bytes", scope: !972, file: !82, line: 624, type: !76)
!975 = !DILocalVariable(name: "j", scope: !976, file: !82, line: 649, type: !76)
!976 = distinct !DILexicalBlock(scope: !977, file: !82, line: 648, column: 27)
!977 = distinct !DILexicalBlock(scope: !978, file: !82, line: 646, column: 29)
!978 = distinct !DILexicalBlock(scope: !979, file: !82, line: 641, column: 23)
!979 = distinct !DILexicalBlock(scope: !980, file: !82, line: 633, column: 30)
!980 = distinct !DILexicalBlock(scope: !981, file: !82, line: 628, column: 30)
!981 = distinct !DILexicalBlock(scope: !972, file: !82, line: 626, column: 25)
!982 = !DILocalVariable(name: "ilim", scope: !983, file: !82, line: 676, type: !76)
!983 = distinct !DILexicalBlock(scope: !984, file: !82, line: 673, column: 15)
!984 = distinct !DILexicalBlock(scope: !951, file: !82, line: 672, column: 17)
!985 = !DILocation(line: 248, column: 33, scope: !916)
!986 = !DILocation(line: 248, column: 48, scope: !916)
!987 = !DILocation(line: 249, column: 39, scope: !916)
!988 = !DILocation(line: 249, column: 51, scope: !916)
!989 = !DILocation(line: 250, column: 46, scope: !916)
!990 = !DILocation(line: 250, column: 65, scope: !916)
!991 = !DILocation(line: 251, column: 47, scope: !916)
!992 = !DILocation(line: 252, column: 39, scope: !916)
!993 = !DILocation(line: 253, column: 39, scope: !916)
!994 = !DILocation(line: 256, column: 10, scope: !916)
!995 = !DILocation(line: 257, column: 10, scope: !916)
!996 = !DILocation(line: 258, column: 15, scope: !916)
!997 = !DILocation(line: 259, column: 10, scope: !916)
!998 = !DILocation(line: 260, column: 8, scope: !916)
!999 = !DILocation(line: 261, column: 25, scope: !916)
!1000 = !DILocation(line: 261, column: 36, scope: !916)
!1001 = !DILocation(line: 262, column: 8, scope: !916)
!1002 = !DILocation(line: 263, column: 8, scope: !916)
!1003 = !DILocation(line: 264, column: 8, scope: !916)
!1004 = !DILocation(line: 265, column: 8, scope: !916)
!1005 = !DILocation(line: 265, column: 3, scope: !916)
!1006 = !DILocation(line: 308, column: 3, scope: !916)
!1007 = !DILocation(line: 315, column: 11, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !916, file: !82, line: 309, column: 5)
!1009 = !DILocation(line: 315, column: 12, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1008, file: !82, line: 315, column: 11)
!1011 = !DILocation(line: 316, column: 9, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1013, file: !82, discriminator: 1)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !82, line: 316, column: 9)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !82, line: 316, column: 9)
!1015 = !DILocation(line: 316, column: 9, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1014, file: !82, discriminator: 1)
!1017 = !DILocation(line: 316, column: 9, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1013, file: !82, discriminator: 2)
!1019 = !{!576, !576, i64 0}
!1020 = !DILocation(line: 354, column: 26, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !82, line: 332, column: 11)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !82, line: 331, column: 13)
!1023 = distinct !DILexicalBlock(scope: !1008, file: !82, line: 330, column: 7)
!1024 = !DILocation(line: 355, column: 27, scope: !1021)
!1025 = !DILocation(line: 356, column: 11, scope: !1021)
!1026 = !DILocation(line: 357, column: 14, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !82, line: 357, column: 13)
!1028 = !DILocation(line: 357, column: 13, scope: !1023)
!1029 = !DILocation(line: 358, column: 43, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1031, file: !82, discriminator: 1)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !82, line: 358, column: 11)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !82, line: 358, column: 11)
!1033 = !DILocation(line: 358, column: 11, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1032, file: !82, discriminator: 1)
!1035 = !DILocation(line: 359, column: 13, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1037, file: !82, discriminator: 1)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !82, line: 359, column: 13)
!1038 = distinct !DILexicalBlock(scope: !1031, file: !82, line: 359, column: 13)
!1039 = !DILocation(line: 359, column: 13, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1038, file: !82, discriminator: 1)
!1041 = !DILocation(line: 359, column: 13, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1037, file: !82, discriminator: 2)
!1043 = !DILocation(line: 359, column: 13, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1038, file: !82, discriminator: 3)
!1045 = !DILocation(line: 358, column: 70, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1031, file: !82, discriminator: 2)
!1047 = distinct !{!1047, !1048, !1049}
!1048 = !DILocation(line: 358, column: 11, scope: !1032)
!1049 = !DILocation(line: 359, column: 13, scope: !1032)
!1050 = !DILocation(line: 362, column: 28, scope: !1023)
!1051 = !DILocation(line: 364, column: 7, scope: !1008)
!1052 = !DILocation(line: 367, column: 7, scope: !1008)
!1053 = !DILocation(line: 370, column: 7, scope: !1008)
!1054 = !DILocation(line: 373, column: 12, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1008, file: !82, line: 373, column: 11)
!1056 = !DILocation(line: 373, column: 11, scope: !1008)
!1057 = !DILocation(line: 378, column: 12, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1008, file: !82, line: 378, column: 11)
!1059 = !DILocation(line: 378, column: 11, scope: !1008)
!1060 = !DILocation(line: 379, column: 9, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1062, file: !82, discriminator: 1)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !82, line: 379, column: 9)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !82, line: 379, column: 9)
!1064 = !DILocation(line: 379, column: 9, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1063, file: !82, discriminator: 1)
!1066 = !DILocation(line: 379, column: 9, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1062, file: !82, discriminator: 2)
!1068 = !DILocation(line: 386, column: 7, scope: !1008)
!1069 = !DILocation(line: 389, column: 7, scope: !1008)
!1070 = !DILocation(line: 255, column: 10, scope: !916)
!1071 = !DILocation(line: 392, column: 8, scope: !945)
!1072 = !DILocation(line: 392, column: 27, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !944, file: !82, discriminator: 1)
!1074 = !DILocation(line: 392, column: 19, scope: !1073)
!1075 = !DILocation(line: 392, column: 60, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !944, file: !82, discriminator: 3)
!1077 = !DILocation(line: 392, column: 3, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !945, file: !82, discriminator: 4)
!1079 = !DILocation(line: 392, column: 41, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !944, file: !82, discriminator: 2)
!1081 = !DILocation(line: 392, column: 48, scope: !1080)
!1082 = !DILocation(line: 396, column: 12, scope: !943)
!1083 = !DILocation(line: 397, column: 12, scope: !943)
!1084 = !DILocation(line: 398, column: 12, scope: !943)
!1085 = !DILocation(line: 401, column: 11, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !943, file: !82, line: 400, column: 11)
!1087 = !DILocation(line: 403, column: 17, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1086, file: !82, discriminator: 1)
!1089 = !DILocation(line: 404, column: 39, scope: !1086)
!1090 = !DILocation(line: 408, column: 32, scope: !1086)
!1091 = !DILocation(line: 404, column: 19, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1086, file: !82, discriminator: 2)
!1093 = !DILocation(line: 404, column: 15, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1086, file: !82, discriminator: 4)
!1095 = !DILocation(line: 409, column: 11, scope: !1086)
!1096 = !DILocation(line: 409, column: 26, scope: !1088)
!1097 = !DILocation(line: 409, column: 14, scope: !1088)
!1098 = !DILocation(line: 400, column: 11, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !943, file: !82, discriminator: 1)
!1100 = !DILocation(line: 416, column: 11, scope: !943)
!1101 = !DILocation(line: 394, column: 21, scope: !943)
!1102 = !DILocation(line: 417, column: 7, scope: !943)
!1103 = !DILocation(line: 420, column: 15, scope: !952)
!1104 = !DILocation(line: 422, column: 15, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1106, file: !82, discriminator: 1)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !82, line: 422, column: 15)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !82, line: 421, column: 13)
!1108 = distinct !DILexicalBlock(scope: !952, file: !82, line: 420, column: 15)
!1109 = !DILocation(line: 422, column: 15, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1111, file: !82, discriminator: 4)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !82, line: 422, column: 15)
!1112 = !DILocation(line: 422, column: 15, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1111, file: !82, discriminator: 3)
!1114 = !DILocation(line: 422, column: 15, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1116, file: !82, discriminator: 6)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !82, line: 422, column: 15)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !82, line: 422, column: 15)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 422, column: 15)
!1119 = !DILocation(line: 422, column: 15, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1117, file: !82, discriminator: 6)
!1121 = !DILocation(line: 422, column: 15, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1116, file: !82, discriminator: 7)
!1123 = !DILocation(line: 422, column: 15, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1117, file: !82, discriminator: 8)
!1125 = !DILocation(line: 422, column: 15, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1127, file: !82, discriminator: 11)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !82, line: 422, column: 15)
!1128 = distinct !DILexicalBlock(scope: !1118, file: !82, line: 422, column: 15)
!1129 = !DILocation(line: 422, column: 15, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1128, file: !82, discriminator: 11)
!1131 = !DILocation(line: 422, column: 15, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1127, file: !82, discriminator: 12)
!1133 = !DILocation(line: 422, column: 15, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1128, file: !82, discriminator: 13)
!1135 = !DILocation(line: 422, column: 15, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1137, file: !82, discriminator: 16)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !82, line: 422, column: 15)
!1138 = distinct !DILexicalBlock(scope: !1118, file: !82, line: 422, column: 15)
!1139 = !DILocation(line: 422, column: 15, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1138, file: !82, discriminator: 16)
!1141 = !DILocation(line: 422, column: 15, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1137, file: !82, discriminator: 17)
!1143 = !DILocation(line: 422, column: 15, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1138, file: !82, discriminator: 18)
!1145 = !DILocation(line: 422, column: 15, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1118, file: !82, discriminator: 20)
!1147 = !DILocation(line: 422, column: 15, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1149, file: !82, discriminator: 22)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !82, line: 422, column: 15)
!1150 = distinct !DILexicalBlock(scope: !1106, file: !82, line: 422, column: 15)
!1151 = !DILocation(line: 422, column: 15, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1150, file: !82, discriminator: 22)
!1153 = !DILocation(line: 422, column: 15, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1149, file: !82, discriminator: 23)
!1155 = !DILocation(line: 422, column: 15, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1150, file: !82, discriminator: 24)
!1157 = !DILocation(line: 430, column: 19, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1107, file: !82, line: 429, column: 19)
!1159 = !DILocation(line: 430, column: 24, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1158, file: !82, discriminator: 1)
!1161 = !DILocation(line: 430, column: 28, scope: !1160)
!1162 = !DILocation(line: 430, column: 38, scope: !1160)
!1163 = !DILocation(line: 430, column: 48, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1158, file: !82, discriminator: 2)
!1165 = !DILocation(line: 430, column: 59, scope: !1164)
!1166 = !DILocation(line: 432, column: 19, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1168, file: !82, discriminator: 1)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !82, line: 432, column: 19)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !82, line: 432, column: 19)
!1170 = distinct !DILexicalBlock(scope: !1158, file: !82, line: 431, column: 17)
!1171 = !DILocation(line: 432, column: 19, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1169, file: !82, discriminator: 1)
!1173 = !DILocation(line: 432, column: 19, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1168, file: !82, discriminator: 2)
!1175 = !DILocation(line: 432, column: 19, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1169, file: !82, discriminator: 3)
!1177 = !DILocation(line: 433, column: 19, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !82, discriminator: 1)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !82, line: 433, column: 19)
!1180 = distinct !DILexicalBlock(scope: !1170, file: !82, line: 433, column: 19)
!1181 = !DILocation(line: 433, column: 19, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1180, file: !82, discriminator: 1)
!1183 = !DILocation(line: 433, column: 19, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1179, file: !82, discriminator: 2)
!1185 = !DILocation(line: 433, column: 19, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1180, file: !82, discriminator: 3)
!1187 = !DILocation(line: 434, column: 17, scope: !1170)
!1188 = !DILocation(line: 441, column: 20, scope: !1108)
!1189 = !DILocation(line: 446, column: 11, scope: !952)
!1190 = !DILocation(line: 449, column: 19, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !952, file: !82, line: 447, column: 13)
!1192 = !DILocation(line: 455, column: 19, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1191, file: !82, line: 454, column: 19)
!1194 = !DILocation(line: 455, column: 24, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1193, file: !82, discriminator: 1)
!1196 = !DILocation(line: 455, column: 28, scope: !1195)
!1197 = !DILocation(line: 455, column: 38, scope: !1195)
!1198 = !DILocation(line: 455, column: 47, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1193, file: !82, discriminator: 2)
!1200 = !DILocation(line: 455, column: 41, scope: !1199)
!1201 = !DILocation(line: 455, column: 52, scope: !1199)
!1202 = !DILocation(line: 454, column: 19, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1191, file: !82, discriminator: 1)
!1204 = !DILocation(line: 456, column: 25, scope: !1193)
!1205 = !DILocation(line: 456, column: 17, scope: !1193)
!1206 = !DILocation(line: 463, column: 25, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1193, file: !82, line: 457, column: 19)
!1208 = !DILocation(line: 467, column: 21, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1210, file: !82, discriminator: 1)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !82, line: 467, column: 21)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !82, line: 467, column: 21)
!1212 = !DILocation(line: 467, column: 21, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1211, file: !82, discriminator: 1)
!1214 = !DILocation(line: 467, column: 21, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1210, file: !82, discriminator: 2)
!1216 = !DILocation(line: 467, column: 21, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1211, file: !82, discriminator: 3)
!1218 = !DILocation(line: 468, column: 21, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1220, file: !82, discriminator: 1)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !82, line: 468, column: 21)
!1221 = distinct !DILexicalBlock(scope: !1207, file: !82, line: 468, column: 21)
!1222 = !DILocation(line: 468, column: 21, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1221, file: !82, discriminator: 1)
!1224 = !DILocation(line: 468, column: 21, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1220, file: !82, discriminator: 2)
!1226 = !DILocation(line: 468, column: 21, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1221, file: !82, discriminator: 3)
!1228 = !DILocation(line: 469, column: 21, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1230, file: !82, discriminator: 1)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !82, line: 469, column: 21)
!1231 = distinct !DILexicalBlock(scope: !1207, file: !82, line: 469, column: 21)
!1232 = !DILocation(line: 469, column: 21, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1231, file: !82, discriminator: 1)
!1234 = !DILocation(line: 469, column: 21, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1230, file: !82, discriminator: 2)
!1236 = !DILocation(line: 469, column: 21, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1231, file: !82, discriminator: 3)
!1238 = !DILocation(line: 470, column: 21, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1240, file: !82, discriminator: 1)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !82, line: 470, column: 21)
!1241 = distinct !DILexicalBlock(scope: !1207, file: !82, line: 470, column: 21)
!1242 = !DILocation(line: 470, column: 21, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1241, file: !82, discriminator: 1)
!1244 = !DILocation(line: 470, column: 21, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1240, file: !82, discriminator: 2)
!1246 = !DILocation(line: 470, column: 21, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1241, file: !82, discriminator: 3)
!1248 = !DILocation(line: 471, column: 21, scope: !1207)
!1249 = !DILocation(line: 395, column: 21, scope: !943)
!1250 = !DILocation(line: 484, column: 31, scope: !952)
!1251 = !DILocation(line: 485, column: 31, scope: !952)
!1252 = !DILocation(line: 487, column: 31, scope: !952)
!1253 = !DILocation(line: 488, column: 31, scope: !952)
!1254 = !DILocation(line: 489, column: 31, scope: !952)
!1255 = !DILocation(line: 492, column: 15, scope: !952)
!1256 = !DILocation(line: 494, column: 19, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !82, line: 493, column: 13)
!1258 = distinct !DILexicalBlock(scope: !952, file: !82, line: 492, column: 15)
!1259 = !DILocation(line: 501, column: 33, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !952, file: !82, line: 501, column: 15)
!1261 = !DILocation(line: 506, column: 15, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !952, file: !82, line: 505, column: 15)
!1263 = !DILocation(line: 510, column: 15, scope: !952)
!1264 = !DILocation(line: 518, column: 26, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !952, file: !82, line: 518, column: 15)
!1266 = !DILocation(line: 518, column: 15, scope: !952)
!1267 = !DILocation(line: 518, column: 40, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1265, file: !82, discriminator: 1)
!1269 = !DILocation(line: 518, column: 47, scope: !1268)
!1270 = !DILocation(line: 522, column: 17, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !952, file: !82, line: 522, column: 15)
!1272 = !DILocation(line: 518, column: 18, scope: !1268)
!1273 = !DILocation(line: 518, column: 65, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1265, file: !82, discriminator: 2)
!1275 = !DILocation(line: 518, column: 15, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !952, file: !82, discriminator: 2)
!1277 = !DILocation(line: 522, column: 15, scope: !952)
!1278 = !DILocation(line: 526, column: 11, scope: !952)
!1279 = !DILocation(line: 541, column: 15, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !952, file: !82, line: 540, column: 15)
!1281 = !DILocation(line: 548, column: 15, scope: !952)
!1282 = !DILocation(line: 550, column: 19, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !82, line: 549, column: 13)
!1284 = distinct !DILexicalBlock(scope: !952, file: !82, line: 548, column: 15)
!1285 = !DILocation(line: 553, column: 19, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1283, file: !82, line: 553, column: 19)
!1287 = !DILocation(line: 553, column: 35, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1286, file: !82, discriminator: 1)
!1289 = !DILocation(line: 553, column: 30, scope: !1286)
!1290 = !DILocation(line: 562, column: 15, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1292, file: !82, discriminator: 1)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !82, line: 562, column: 15)
!1293 = distinct !DILexicalBlock(scope: !1283, file: !82, line: 562, column: 15)
!1294 = !DILocation(line: 562, column: 15, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1293, file: !82, discriminator: 1)
!1296 = !DILocation(line: 562, column: 15, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1292, file: !82, discriminator: 2)
!1298 = !DILocation(line: 562, column: 15, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1293, file: !82, discriminator: 3)
!1300 = !DILocation(line: 563, column: 15, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1302, file: !82, discriminator: 1)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !82, line: 563, column: 15)
!1303 = distinct !DILexicalBlock(scope: !1283, file: !82, line: 563, column: 15)
!1304 = !DILocation(line: 563, column: 15, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1303, file: !82, discriminator: 1)
!1306 = !DILocation(line: 563, column: 15, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1302, file: !82, discriminator: 2)
!1308 = !DILocation(line: 563, column: 15, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1303, file: !82, discriminator: 3)
!1310 = !DILocation(line: 564, column: 15, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1312, file: !82, discriminator: 1)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !82, line: 564, column: 15)
!1313 = distinct !DILexicalBlock(scope: !1283, file: !82, line: 564, column: 15)
!1314 = !DILocation(line: 564, column: 15, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1313, file: !82, discriminator: 1)
!1316 = !DILocation(line: 564, column: 15, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1312, file: !82, discriminator: 2)
!1318 = !DILocation(line: 564, column: 15, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1313, file: !82, discriminator: 3)
!1320 = !DILocation(line: 566, column: 13, scope: !1283)
!1321 = !DILocation(line: 606, column: 17, scope: !951)
!1322 = !DILocation(line: 602, column: 20, scope: !951)
!1323 = !DILocation(line: 609, column: 29, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !956, file: !82, line: 607, column: 15)
!1325 = !{!1326, !1326, i64 0}
!1326 = !{!"short", !576, i64 0}
!1327 = !DILocation(line: 609, column: 27, scope: !1324)
!1328 = !DILocation(line: 604, column: 18, scope: !951)
!1329 = !DILocation(line: 610, column: 15, scope: !1324)
!1330 = !DILocation(line: 613, column: 17, scope: !955)
!1331 = !DILocation(line: 614, column: 17, scope: !955)
!1332 = !DILocation(line: 618, column: 29, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !955, file: !82, line: 618, column: 21)
!1334 = !DILocation(line: 618, column: 21, scope: !955)
!1335 = distinct !{!1335, !1336, !1337}
!1336 = !DILocation(line: 621, column: 17, scope: !955)
!1337 = !DILocation(line: 667, column: 44, scope: !955)
!1338 = !DILocation(line: 619, column: 29, scope: !1333)
!1339 = !DILocation(line: 619, column: 19, scope: !1333)
!1340 = !DILocation(line: 623, column: 21, scope: !972)
!1341 = !DILocation(line: 624, column: 56, scope: !972)
!1342 = !DILocation(line: 624, column: 50, scope: !972)
!1343 = !DILocation(line: 625, column: 53, scope: !972)
!1344 = !DIExpression(DW_OP_deref)
!1345 = !DILocation(line: 613, column: 27, scope: !955)
!1346 = !DILocation(line: 623, column: 29, scope: !972)
!1347 = !DILocation(line: 624, column: 36, scope: !972)
!1348 = !DILocation(line: 624, column: 28, scope: !972)
!1349 = !DILocation(line: 626, column: 25, scope: !972)
!1350 = !DILocation(line: 636, column: 38, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1352, file: !82, discriminator: 1)
!1352 = distinct !DILexicalBlock(scope: !979, file: !82, line: 634, column: 23)
!1353 = !DILocation(line: 636, column: 48, scope: !1351)
!1354 = !DILocation(line: 636, column: 51, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1352, file: !82, discriminator: 2)
!1356 = !DILocation(line: 636, column: 48, scope: !1355)
!1357 = !DILocation(line: 636, column: 25, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1352, file: !82, discriminator: 3)
!1359 = !DILocation(line: 637, column: 28, scope: !1352)
!1360 = !DILocation(line: 636, column: 34, scope: !1351)
!1361 = distinct !{!1361, !1362, !1359}
!1362 = !DILocation(line: 636, column: 25, scope: !1352)
!1363 = !DILocation(line: 650, column: 43, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !82, discriminator: 1)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !82, line: 650, column: 29)
!1366 = distinct !DILexicalBlock(scope: !976, file: !82, line: 650, column: 29)
!1367 = !DILocation(line: 647, column: 29, scope: !977)
!1368 = !DILocation(line: 649, column: 36, scope: !976)
!1369 = !DILocation(line: 651, column: 49, scope: !1365)
!1370 = !DILocation(line: 651, column: 39, scope: !1365)
!1371 = !DILocation(line: 651, column: 31, scope: !1365)
!1372 = !DILocation(line: 650, column: 53, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1365, file: !82, discriminator: 2)
!1374 = !DILocation(line: 650, column: 29, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1366, file: !82, discriminator: 1)
!1376 = distinct !{!1376, !1377, !1378}
!1377 = !DILocation(line: 650, column: 29, scope: !1366)
!1378 = !DILocation(line: 659, column: 33, scope: !1366)
!1379 = !DILocation(line: 666, column: 19, scope: !955)
!1380 = !DILocation(line: 662, column: 41, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !978, file: !82, line: 662, column: 29)
!1382 = !DILocation(line: 662, column: 31, scope: !1381)
!1383 = !DILocation(line: 662, column: 29, scope: !978)
!1384 = !DILocation(line: 664, column: 27, scope: !978)
!1385 = !DILocation(line: 667, column: 26, scope: !955)
!1386 = !DILocation(line: 667, column: 24, scope: !955)
!1387 = !DILocation(line: 666, column: 19, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !972, file: !82, discriminator: 3)
!1389 = !DILocation(line: 668, column: 15, scope: !956)
!1390 = !DILocation(line: 670, column: 40, scope: !951)
!1391 = !DILocation(line: 672, column: 19, scope: !984)
!1392 = !DILocation(line: 672, column: 45, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !984, file: !82, discriminator: 1)
!1394 = !DILocation(line: 672, column: 23, scope: !984)
!1395 = !DILocation(line: 676, column: 33, scope: !983)
!1396 = !DILocation(line: 676, column: 24, scope: !983)
!1397 = !DILocation(line: 678, column: 17, scope: !983)
!1398 = !DILocation(line: 680, column: 43, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !82, line: 680, column: 25)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !82, line: 679, column: 19)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !82, line: 678, column: 17)
!1402 = distinct !DILexicalBlock(scope: !983, file: !82, line: 678, column: 17)
!1403 = !DILocation(line: 682, column: 25, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1405, file: !82, discriminator: 1)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !82, line: 682, column: 25)
!1406 = distinct !DILexicalBlock(scope: !1399, file: !82, line: 681, column: 23)
!1407 = !DILocation(line: 682, column: 25, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1409, file: !82, discriminator: 4)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !82, line: 682, column: 25)
!1410 = !DILocation(line: 682, column: 25, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1409, file: !82, discriminator: 3)
!1412 = !DILocation(line: 682, column: 25, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1414, file: !82, discriminator: 6)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !82, line: 682, column: 25)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !82, line: 682, column: 25)
!1416 = distinct !DILexicalBlock(scope: !1409, file: !82, line: 682, column: 25)
!1417 = !DILocation(line: 682, column: 25, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1415, file: !82, discriminator: 6)
!1419 = !DILocation(line: 682, column: 25, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1414, file: !82, discriminator: 7)
!1421 = !DILocation(line: 682, column: 25, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1415, file: !82, discriminator: 8)
!1423 = !DILocation(line: 682, column: 25, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1425, file: !82, discriminator: 11)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !82, line: 682, column: 25)
!1426 = distinct !DILexicalBlock(scope: !1416, file: !82, line: 682, column: 25)
!1427 = !DILocation(line: 682, column: 25, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1426, file: !82, discriminator: 11)
!1429 = !DILocation(line: 682, column: 25, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1425, file: !82, discriminator: 12)
!1431 = !DILocation(line: 682, column: 25, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1426, file: !82, discriminator: 13)
!1433 = !DILocation(line: 682, column: 25, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1435, file: !82, discriminator: 16)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !82, line: 682, column: 25)
!1436 = distinct !DILexicalBlock(scope: !1416, file: !82, line: 682, column: 25)
!1437 = !DILocation(line: 682, column: 25, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1436, file: !82, discriminator: 16)
!1439 = !DILocation(line: 682, column: 25, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1435, file: !82, discriminator: 17)
!1441 = !DILocation(line: 682, column: 25, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1436, file: !82, discriminator: 18)
!1443 = !DILocation(line: 682, column: 25, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1416, file: !82, discriminator: 20)
!1445 = !DILocation(line: 682, column: 25, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1447, file: !82, discriminator: 22)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !82, line: 682, column: 25)
!1448 = distinct !DILexicalBlock(scope: !1405, file: !82, line: 682, column: 25)
!1449 = !DILocation(line: 682, column: 25, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1448, file: !82, discriminator: 22)
!1451 = !DILocation(line: 682, column: 25, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1447, file: !82, discriminator: 23)
!1453 = !DILocation(line: 682, column: 25, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1448, file: !82, discriminator: 24)
!1455 = !DILocation(line: 683, column: 25, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1457, file: !82, discriminator: 1)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !82, line: 683, column: 25)
!1458 = distinct !DILexicalBlock(scope: !1406, file: !82, line: 683, column: 25)
!1459 = !DILocation(line: 683, column: 25, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1458, file: !82, discriminator: 1)
!1461 = !DILocation(line: 683, column: 25, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1457, file: !82, discriminator: 2)
!1463 = !DILocation(line: 683, column: 25, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1458, file: !82, discriminator: 3)
!1465 = !DILocation(line: 684, column: 25, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1467, file: !82, discriminator: 1)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !82, line: 684, column: 25)
!1468 = distinct !DILexicalBlock(scope: !1406, file: !82, line: 684, column: 25)
!1469 = !DILocation(line: 684, column: 25, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1468, file: !82, discriminator: 1)
!1471 = !DILocation(line: 684, column: 25, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1467, file: !82, discriminator: 2)
!1473 = !DILocation(line: 684, column: 25, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1468, file: !82, discriminator: 3)
!1475 = !DILocation(line: 685, column: 38, scope: !1406)
!1476 = !DILocation(line: 685, column: 33, scope: !1406)
!1477 = !DILocation(line: 686, column: 23, scope: !1406)
!1478 = !DILocation(line: 687, column: 30, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1399, file: !82, line: 687, column: 30)
!1480 = !DILocation(line: 687, column: 30, scope: !1399)
!1481 = !DILocation(line: 689, column: 25, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1483, file: !82, discriminator: 1)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !82, line: 689, column: 25)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !82, line: 689, column: 25)
!1485 = distinct !DILexicalBlock(scope: !1479, file: !82, line: 688, column: 23)
!1486 = !DILocation(line: 689, column: 25, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1484, file: !82, discriminator: 1)
!1488 = !DILocation(line: 689, column: 25, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1483, file: !82, discriminator: 2)
!1490 = !DILocation(line: 689, column: 25, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1484, file: !82, discriminator: 3)
!1492 = !DILocation(line: 691, column: 23, scope: !1485)
!1493 = !DILocation(line: 692, column: 35, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1400, file: !82, line: 692, column: 25)
!1495 = !DILocation(line: 692, column: 30, scope: !1494)
!1496 = !DILocation(line: 692, column: 25, scope: !1400)
!1497 = !DILocation(line: 694, column: 21, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1499, file: !82, discriminator: 1)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !82, line: 694, column: 21)
!1500 = distinct !DILexicalBlock(scope: !1400, file: !82, line: 694, column: 21)
!1501 = !DILocation(line: 694, column: 21, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1499, file: !82, discriminator: 2)
!1503 = !DILocation(line: 694, column: 21, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1505, file: !82, discriminator: 4)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !82, line: 694, column: 21)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !82, line: 694, column: 21)
!1507 = distinct !DILexicalBlock(scope: !1499, file: !82, line: 694, column: 21)
!1508 = !DILocation(line: 694, column: 21, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1506, file: !82, discriminator: 4)
!1510 = !DILocation(line: 694, column: 21, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1505, file: !82, discriminator: 5)
!1512 = !DILocation(line: 694, column: 21, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1506, file: !82, discriminator: 6)
!1514 = !DILocation(line: 694, column: 21, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1516, file: !82, discriminator: 9)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !82, line: 694, column: 21)
!1517 = distinct !DILexicalBlock(scope: !1507, file: !82, line: 694, column: 21)
!1518 = !DILocation(line: 694, column: 21, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1517, file: !82, discriminator: 9)
!1520 = !DILocation(line: 694, column: 21, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1516, file: !82, discriminator: 10)
!1522 = !DILocation(line: 694, column: 21, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1517, file: !82, discriminator: 11)
!1524 = !DILocation(line: 694, column: 21, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1507, file: !82, discriminator: 13)
!1526 = !DILocation(line: 695, column: 21, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1528, file: !82, discriminator: 1)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !82, line: 695, column: 21)
!1529 = distinct !DILexicalBlock(scope: !1400, file: !82, line: 695, column: 21)
!1530 = !DILocation(line: 695, column: 21, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1529, file: !82, discriminator: 1)
!1532 = !DILocation(line: 695, column: 21, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1528, file: !82, discriminator: 2)
!1534 = !DILocation(line: 695, column: 21, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1529, file: !82, discriminator: 3)
!1536 = !DILocation(line: 696, column: 25, scope: !1400)
!1537 = !DILocation(line: 678, column: 17, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1401, file: !82, discriminator: 1)
!1539 = distinct !{!1539, !1540, !1541}
!1540 = !DILocation(line: 678, column: 17, scope: !1402)
!1541 = !DILocation(line: 697, column: 19, scope: !1402)
!1542 = !DILocation(line: 704, column: 34, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !943, file: !82, line: 704, column: 11)
!1544 = !DILocation(line: 706, column: 14, scope: !1543)
!1545 = !DILocation(line: 707, column: 14, scope: !1543)
!1546 = !DILocation(line: 707, column: 35, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1543, file: !82, discriminator: 1)
!1548 = !DILocation(line: 707, column: 17, scope: !1547)
!1549 = !DILocation(line: 707, column: 53, scope: !1547)
!1550 = !DILocation(line: 707, column: 47, scope: !1547)
!1551 = !DILocation(line: 707, column: 65, scope: !1547)
!1552 = !DILocation(line: 708, column: 15, scope: !1547)
!1553 = !DILocation(line: 708, column: 11, scope: !1543)
!1554 = !DILocation(line: 704, column: 11, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !943, file: !82, discriminator: 2)
!1556 = !DILocation(line: 712, column: 7, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1558, file: !82, discriminator: 1)
!1558 = distinct !DILexicalBlock(scope: !943, file: !82, line: 712, column: 7)
!1559 = !DILocation(line: 712, column: 7, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1561, file: !82, discriminator: 4)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !82, line: 712, column: 7)
!1562 = !DILocation(line: 712, column: 7, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1561, file: !82, discriminator: 3)
!1564 = !DILocation(line: 712, column: 7, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1566, file: !82, discriminator: 6)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !82, line: 712, column: 7)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !82, line: 712, column: 7)
!1568 = distinct !DILexicalBlock(scope: !1561, file: !82, line: 712, column: 7)
!1569 = !DILocation(line: 712, column: 7, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1567, file: !82, discriminator: 6)
!1571 = !DILocation(line: 712, column: 7, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1566, file: !82, discriminator: 7)
!1573 = !DILocation(line: 712, column: 7, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1567, file: !82, discriminator: 8)
!1575 = !DILocation(line: 712, column: 7, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1577, file: !82, discriminator: 11)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !82, line: 712, column: 7)
!1578 = distinct !DILexicalBlock(scope: !1568, file: !82, line: 712, column: 7)
!1579 = !DILocation(line: 712, column: 7, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1578, file: !82, discriminator: 11)
!1581 = !DILocation(line: 712, column: 7, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1577, file: !82, discriminator: 12)
!1583 = !DILocation(line: 712, column: 7, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1578, file: !82, discriminator: 13)
!1585 = !DILocation(line: 712, column: 7, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1587, file: !82, discriminator: 16)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !82, line: 712, column: 7)
!1588 = distinct !DILexicalBlock(scope: !1568, file: !82, line: 712, column: 7)
!1589 = !DILocation(line: 712, column: 7, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1588, file: !82, discriminator: 16)
!1591 = !DILocation(line: 712, column: 7, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1587, file: !82, discriminator: 17)
!1593 = !DILocation(line: 712, column: 7, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1588, file: !82, discriminator: 18)
!1595 = !DILocation(line: 712, column: 7, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1568, file: !82, discriminator: 20)
!1597 = !DILocation(line: 712, column: 7, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1599, file: !82, discriminator: 22)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !82, line: 712, column: 7)
!1600 = distinct !DILexicalBlock(scope: !1558, file: !82, line: 712, column: 7)
!1601 = !DILocation(line: 712, column: 7, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1600, file: !82, discriminator: 22)
!1603 = !DILocation(line: 712, column: 7, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1599, file: !82, discriminator: 23)
!1605 = !DILocation(line: 712, column: 7, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1600, file: !82, discriminator: 24)
!1607 = !DILocation(line: 715, column: 7, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1609, file: !82, discriminator: 1)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !82, line: 715, column: 7)
!1610 = distinct !DILexicalBlock(scope: !943, file: !82, line: 715, column: 7)
!1611 = !DILocation(line: 715, column: 7, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !1609, file: !82, discriminator: 2)
!1613 = !DILocation(line: 715, column: 7, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1615, file: !82, discriminator: 4)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !82, line: 715, column: 7)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !82, line: 715, column: 7)
!1617 = distinct !DILexicalBlock(scope: !1609, file: !82, line: 715, column: 7)
!1618 = !DILocation(line: 715, column: 7, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1616, file: !82, discriminator: 4)
!1620 = !DILocation(line: 715, column: 7, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1615, file: !82, discriminator: 5)
!1622 = !DILocation(line: 715, column: 7, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1616, file: !82, discriminator: 6)
!1624 = !DILocation(line: 715, column: 7, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1626, file: !82, discriminator: 9)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !82, line: 715, column: 7)
!1627 = distinct !DILexicalBlock(scope: !1617, file: !82, line: 715, column: 7)
!1628 = !DILocation(line: 715, column: 7, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1627, file: !82, discriminator: 9)
!1630 = !DILocation(line: 715, column: 7, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1626, file: !82, discriminator: 10)
!1632 = !DILocation(line: 715, column: 7, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1627, file: !82, discriminator: 11)
!1634 = !DILocation(line: 715, column: 7, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1617, file: !82, discriminator: 13)
!1636 = !DILocation(line: 716, column: 7, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1638, file: !82, discriminator: 1)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !82, line: 716, column: 7)
!1639 = distinct !DILexicalBlock(scope: !943, file: !82, line: 716, column: 7)
!1640 = !DILocation(line: 716, column: 7, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1639, file: !82, discriminator: 1)
!1642 = !DILocation(line: 716, column: 7, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1638, file: !82, discriminator: 2)
!1644 = !DILocation(line: 716, column: 7, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1639, file: !82, discriminator: 3)
!1646 = !DILocation(line: 718, column: 13, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !943, file: !82, line: 718, column: 11)
!1648 = !DILocation(line: 718, column: 11, scope: !943)
!1649 = !DILocation(line: 720, column: 5, scope: !944)
!1650 = !DILocation(line: 392, column: 75, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !944, file: !82, discriminator: 5)
!1652 = !DILocation(line: 392, column: 3, scope: !1651)
!1653 = distinct !{!1653, !1654, !1655}
!1654 = !DILocation(line: 392, column: 3, scope: !945)
!1655 = !DILocation(line: 720, column: 5, scope: !945)
!1656 = !DILocation(line: 722, column: 11, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !916, file: !82, line: 722, column: 7)
!1658 = !DILocation(line: 722, column: 16, scope: !1657)
!1659 = !DILocation(line: 730, column: 51, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !916, file: !82, line: 730, column: 7)
!1661 = !DILocation(line: 731, column: 10, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1660, file: !82, discriminator: 1)
!1663 = !DILocation(line: 733, column: 11, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !82, line: 733, column: 11)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !82, line: 732, column: 5)
!1666 = !DILocation(line: 733, column: 11, scope: !1665)
!1667 = !DILocation(line: 734, column: 16, scope: !1664)
!1668 = !DILocation(line: 734, column: 9, scope: !1664)
!1669 = !DILocation(line: 738, column: 18, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !82, line: 738, column: 16)
!1671 = !DILocation(line: 738, column: 32, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1670, file: !82, discriminator: 1)
!1673 = !DILocation(line: 738, column: 29, scope: !1670)
!1674 = !DILocation(line: 747, column: 7, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !916, file: !82, line: 747, column: 7)
!1676 = !DILocation(line: 747, column: 20, scope: !1675)
!1677 = !DILocation(line: 748, column: 12, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1679, file: !82, discriminator: 1)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !82, line: 748, column: 5)
!1680 = distinct !DILexicalBlock(scope: !1675, file: !82, line: 748, column: 5)
!1681 = !DILocation(line: 748, column: 5, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1680, file: !82, discriminator: 1)
!1683 = !DILocation(line: 749, column: 7, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1685, file: !82, discriminator: 1)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !82, line: 749, column: 7)
!1686 = distinct !DILexicalBlock(scope: !1679, file: !82, line: 749, column: 7)
!1687 = !DILocation(line: 749, column: 7, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1686, file: !82, discriminator: 1)
!1689 = !DILocation(line: 749, column: 7, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1685, file: !82, discriminator: 2)
!1691 = !DILocation(line: 749, column: 7, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1686, file: !82, discriminator: 3)
!1693 = !DILocation(line: 748, column: 39, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1679, file: !82, discriminator: 2)
!1695 = distinct !{!1695, !1696, !1697}
!1696 = !DILocation(line: 748, column: 5, scope: !1680)
!1697 = !DILocation(line: 749, column: 7, scope: !1680)
!1698 = !DILocation(line: 751, column: 11, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !916, file: !82, line: 751, column: 7)
!1700 = !DILocation(line: 751, column: 7, scope: !916)
!1701 = !DILocation(line: 752, column: 5, scope: !1699)
!1702 = !DILocation(line: 752, column: 17, scope: !1699)
!1703 = !DILocation(line: 758, column: 21, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !916, file: !82, line: 758, column: 7)
!1705 = !DILocation(line: 758, column: 54, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1704, file: !82, discriminator: 1)
!1707 = !DILocation(line: 758, column: 51, scope: !1704)
!1708 = !DILocation(line: 762, column: 42, scope: !916)
!1709 = !DILocation(line: 760, column: 10, scope: !916)
!1710 = !DILocation(line: 760, column: 3, scope: !916)
!1711 = !DILocation(line: 764, column: 1, scope: !916)
!1712 = distinct !DISubprogram(name: "gettext_quote", scope: !82, file: !82, line: 199, type: !1713, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!6, !6, !40}
!1715 = !{!1716, !1717, !1718, !1719}
!1716 = !DILocalVariable(name: "msgid", arg: 1, scope: !1712, file: !82, line: 199, type: !6)
!1717 = !DILocalVariable(name: "s", arg: 2, scope: !1712, file: !82, line: 199, type: !40)
!1718 = !DILocalVariable(name: "translation", scope: !1712, file: !82, line: 201, type: !6)
!1719 = !DILocalVariable(name: "locale_code", scope: !1712, file: !82, line: 202, type: !6)
!1720 = !DILocation(line: 199, column: 28, scope: !1712)
!1721 = !DILocation(line: 199, column: 54, scope: !1712)
!1722 = !DILocation(line: 201, column: 29, scope: !1712)
!1723 = !DILocation(line: 201, column: 15, scope: !1712)
!1724 = !DILocation(line: 204, column: 19, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1712, file: !82, line: 204, column: 7)
!1726 = !DILocation(line: 204, column: 7, scope: !1712)
!1727 = !DILocation(line: 225, column: 17, scope: !1712)
!1728 = !DILocation(line: 202, column: 15, scope: !1712)
!1729 = !DILocalVariable(name: "s2", arg: 2, scope: !1730, file: !1731, line: 160, type: !6)
!1730 = distinct !DISubprogram(name: "strcaseeq0", scope: !1731, file: !1731, line: 160, type: !1732, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1734)
!1731 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1734 = !{!1735, !1729, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744}
!1735 = !DILocalVariable(name: "s1", arg: 1, scope: !1730, file: !1731, line: 160, type: !6)
!1736 = !DILocalVariable(name: "s20", arg: 3, scope: !1730, file: !1731, line: 160, type: !8)
!1737 = !DILocalVariable(name: "s21", arg: 4, scope: !1730, file: !1731, line: 160, type: !8)
!1738 = !DILocalVariable(name: "s22", arg: 5, scope: !1730, file: !1731, line: 160, type: !8)
!1739 = !DILocalVariable(name: "s23", arg: 6, scope: !1730, file: !1731, line: 160, type: !8)
!1740 = !DILocalVariable(name: "s24", arg: 7, scope: !1730, file: !1731, line: 160, type: !8)
!1741 = !DILocalVariable(name: "s25", arg: 8, scope: !1730, file: !1731, line: 160, type: !8)
!1742 = !DILocalVariable(name: "s26", arg: 9, scope: !1730, file: !1731, line: 160, type: !8)
!1743 = !DILocalVariable(name: "s27", arg: 10, scope: !1730, file: !1731, line: 160, type: !8)
!1744 = !DILocalVariable(name: "s28", arg: 11, scope: !1730, file: !1731, line: 160, type: !8)
!1745 = !DILocation(line: 160, column: 41, scope: !1730, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 226, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1712, file: !82, line: 226, column: 7)
!1748 = !DILocation(line: 160, column: 120, scope: !1730, inlinedAt: !1746)
!1749 = !DILocation(line: 160, column: 130, scope: !1730, inlinedAt: !1746)
!1750 = !DILocation(line: 162, column: 7, scope: !1751, inlinedAt: !1746)
!1751 = !DILexicalBlockFile(scope: !1752, file: !1731, discriminator: 1)
!1752 = distinct !DILexicalBlock(scope: !1730, file: !1731, line: 162, column: 7)
!1753 = !DILocalVariable(name: "s2", arg: 2, scope: !1754, file: !1731, line: 146, type: !6)
!1754 = distinct !DISubprogram(name: "strcaseeq1", scope: !1731, file: !1731, line: 146, type: !1755, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1757 = !{!1758, !1753, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1758 = !DILocalVariable(name: "s1", arg: 1, scope: !1754, file: !1731, line: 146, type: !6)
!1759 = !DILocalVariable(name: "s21", arg: 3, scope: !1754, file: !1731, line: 146, type: !8)
!1760 = !DILocalVariable(name: "s22", arg: 4, scope: !1754, file: !1731, line: 146, type: !8)
!1761 = !DILocalVariable(name: "s23", arg: 5, scope: !1754, file: !1731, line: 146, type: !8)
!1762 = !DILocalVariable(name: "s24", arg: 6, scope: !1754, file: !1731, line: 146, type: !8)
!1763 = !DILocalVariable(name: "s25", arg: 7, scope: !1754, file: !1731, line: 146, type: !8)
!1764 = !DILocalVariable(name: "s26", arg: 8, scope: !1754, file: !1731, line: 146, type: !8)
!1765 = !DILocalVariable(name: "s27", arg: 9, scope: !1754, file: !1731, line: 146, type: !8)
!1766 = !DILocalVariable(name: "s28", arg: 10, scope: !1754, file: !1731, line: 146, type: !8)
!1767 = !DILocation(line: 146, column: 41, scope: !1754, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 167, column: 16, scope: !1769, inlinedAt: !1746)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !1731, line: 164, column: 11)
!1770 = distinct !DILexicalBlock(scope: !1752, file: !1731, line: 163, column: 5)
!1771 = !DILocation(line: 146, column: 110, scope: !1754, inlinedAt: !1768)
!1772 = !DILocation(line: 146, column: 120, scope: !1754, inlinedAt: !1768)
!1773 = !DILocation(line: 148, column: 7, scope: !1774, inlinedAt: !1768)
!1774 = !DILexicalBlockFile(scope: !1775, file: !1731, discriminator: 1)
!1775 = distinct !DILexicalBlock(scope: !1754, file: !1731, line: 148, column: 7)
!1776 = !DILocalVariable(name: "s2", arg: 2, scope: !1777, file: !1731, line: 132, type: !6)
!1777 = distinct !DISubprogram(name: "strcaseeq2", scope: !1731, file: !1731, line: 132, type: !1778, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1780)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1780 = !{!1781, !1776, !1782, !1783, !1784, !1785, !1786, !1787, !1788}
!1781 = !DILocalVariable(name: "s1", arg: 1, scope: !1777, file: !1731, line: 132, type: !6)
!1782 = !DILocalVariable(name: "s22", arg: 3, scope: !1777, file: !1731, line: 132, type: !8)
!1783 = !DILocalVariable(name: "s23", arg: 4, scope: !1777, file: !1731, line: 132, type: !8)
!1784 = !DILocalVariable(name: "s24", arg: 5, scope: !1777, file: !1731, line: 132, type: !8)
!1785 = !DILocalVariable(name: "s25", arg: 6, scope: !1777, file: !1731, line: 132, type: !8)
!1786 = !DILocalVariable(name: "s26", arg: 7, scope: !1777, file: !1731, line: 132, type: !8)
!1787 = !DILocalVariable(name: "s27", arg: 8, scope: !1777, file: !1731, line: 132, type: !8)
!1788 = !DILocalVariable(name: "s28", arg: 9, scope: !1777, file: !1731, line: 132, type: !8)
!1789 = !DILocation(line: 132, column: 41, scope: !1777, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 153, column: 16, scope: !1791, inlinedAt: !1768)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !1731, line: 150, column: 11)
!1792 = distinct !DILexicalBlock(scope: !1775, file: !1731, line: 149, column: 5)
!1793 = !DILocation(line: 132, column: 100, scope: !1777, inlinedAt: !1790)
!1794 = !DILocation(line: 132, column: 110, scope: !1777, inlinedAt: !1790)
!1795 = !DILocation(line: 134, column: 7, scope: !1796, inlinedAt: !1790)
!1796 = !DILexicalBlockFile(scope: !1797, file: !1731, discriminator: 1)
!1797 = distinct !DILexicalBlock(scope: !1777, file: !1731, line: 134, column: 7)
!1798 = !DILocalVariable(name: "s2", arg: 2, scope: !1799, file: !1731, line: 118, type: !6)
!1799 = distinct !DISubprogram(name: "strcaseeq3", scope: !1731, file: !1731, line: 118, type: !1800, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1802)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1802 = !{!1803, !1798, !1804, !1805, !1806, !1807, !1808, !1809}
!1803 = !DILocalVariable(name: "s1", arg: 1, scope: !1799, file: !1731, line: 118, type: !6)
!1804 = !DILocalVariable(name: "s23", arg: 3, scope: !1799, file: !1731, line: 118, type: !8)
!1805 = !DILocalVariable(name: "s24", arg: 4, scope: !1799, file: !1731, line: 118, type: !8)
!1806 = !DILocalVariable(name: "s25", arg: 5, scope: !1799, file: !1731, line: 118, type: !8)
!1807 = !DILocalVariable(name: "s26", arg: 6, scope: !1799, file: !1731, line: 118, type: !8)
!1808 = !DILocalVariable(name: "s27", arg: 7, scope: !1799, file: !1731, line: 118, type: !8)
!1809 = !DILocalVariable(name: "s28", arg: 8, scope: !1799, file: !1731, line: 118, type: !8)
!1810 = !DILocation(line: 118, column: 41, scope: !1799, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 139, column: 16, scope: !1812, inlinedAt: !1790)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !1731, line: 136, column: 11)
!1813 = distinct !DILexicalBlock(scope: !1797, file: !1731, line: 135, column: 5)
!1814 = !DILocation(line: 118, column: 90, scope: !1799, inlinedAt: !1811)
!1815 = !DILocation(line: 118, column: 100, scope: !1799, inlinedAt: !1811)
!1816 = !DILocation(line: 120, column: 7, scope: !1817, inlinedAt: !1811)
!1817 = !DILexicalBlockFile(scope: !1818, file: !1731, discriminator: 2)
!1818 = distinct !DILexicalBlock(scope: !1799, file: !1731, line: 120, column: 7)
!1819 = !DILocation(line: 120, column: 7, scope: !1820, inlinedAt: !1811)
!1820 = !DILexicalBlockFile(scope: !1799, file: !1731, discriminator: 2)
!1821 = !DILocalVariable(name: "s2", arg: 2, scope: !1822, file: !1731, line: 104, type: !6)
!1822 = distinct !DISubprogram(name: "strcaseeq4", scope: !1731, file: !1731, line: 104, type: !1823, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1825)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1825 = !{!1826, !1821, !1827, !1828, !1829, !1830, !1831}
!1826 = !DILocalVariable(name: "s1", arg: 1, scope: !1822, file: !1731, line: 104, type: !6)
!1827 = !DILocalVariable(name: "s24", arg: 3, scope: !1822, file: !1731, line: 104, type: !8)
!1828 = !DILocalVariable(name: "s25", arg: 4, scope: !1822, file: !1731, line: 104, type: !8)
!1829 = !DILocalVariable(name: "s26", arg: 5, scope: !1822, file: !1731, line: 104, type: !8)
!1830 = !DILocalVariable(name: "s27", arg: 6, scope: !1822, file: !1731, line: 104, type: !8)
!1831 = !DILocalVariable(name: "s28", arg: 7, scope: !1822, file: !1731, line: 104, type: !8)
!1832 = !DILocation(line: 104, column: 41, scope: !1822, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 125, column: 16, scope: !1834, inlinedAt: !1811)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !1731, line: 122, column: 11)
!1835 = distinct !DILexicalBlock(scope: !1818, file: !1731, line: 121, column: 5)
!1836 = !DILocation(line: 104, column: 80, scope: !1822, inlinedAt: !1833)
!1837 = !DILocation(line: 104, column: 90, scope: !1822, inlinedAt: !1833)
!1838 = !DILocation(line: 106, column: 7, scope: !1839, inlinedAt: !1833)
!1839 = !DILexicalBlockFile(scope: !1840, file: !1731, discriminator: 2)
!1840 = distinct !DILexicalBlock(scope: !1822, file: !1731, line: 106, column: 7)
!1841 = !DILocation(line: 106, column: 7, scope: !1842, inlinedAt: !1833)
!1842 = !DILexicalBlockFile(scope: !1822, file: !1731, discriminator: 2)
!1843 = !DILocalVariable(name: "s2", arg: 2, scope: !1844, file: !1731, line: 90, type: !6)
!1844 = distinct !DISubprogram(name: "strcaseeq5", scope: !1731, file: !1731, line: 90, type: !1845, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!25, !6, !6, !8, !8, !8, !8}
!1847 = !{!1848, !1843, !1849, !1850, !1851, !1852}
!1848 = !DILocalVariable(name: "s1", arg: 1, scope: !1844, file: !1731, line: 90, type: !6)
!1849 = !DILocalVariable(name: "s25", arg: 3, scope: !1844, file: !1731, line: 90, type: !8)
!1850 = !DILocalVariable(name: "s26", arg: 4, scope: !1844, file: !1731, line: 90, type: !8)
!1851 = !DILocalVariable(name: "s27", arg: 5, scope: !1844, file: !1731, line: 90, type: !8)
!1852 = !DILocalVariable(name: "s28", arg: 6, scope: !1844, file: !1731, line: 90, type: !8)
!1853 = !DILocation(line: 90, column: 41, scope: !1844, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 111, column: 16, scope: !1855, inlinedAt: !1833)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !1731, line: 108, column: 11)
!1856 = distinct !DILexicalBlock(scope: !1840, file: !1731, line: 107, column: 5)
!1857 = !DILocation(line: 90, column: 70, scope: !1844, inlinedAt: !1854)
!1858 = !DILocation(line: 90, column: 80, scope: !1844, inlinedAt: !1854)
!1859 = !DILocation(line: 92, column: 7, scope: !1860, inlinedAt: !1854)
!1860 = !DILexicalBlockFile(scope: !1861, file: !1731, discriminator: 2)
!1861 = distinct !DILexicalBlock(scope: !1844, file: !1731, line: 92, column: 7)
!1862 = !DILocation(line: 92, column: 7, scope: !1863, inlinedAt: !1854)
!1863 = !DILexicalBlockFile(scope: !1844, file: !1731, discriminator: 2)
!1864 = !DILocation(line: 227, column: 12, scope: !1747)
!1865 = !DILocation(line: 227, column: 21, scope: !1747)
!1866 = !DILocation(line: 227, column: 5, scope: !1747)
!1867 = !DILocation(line: 146, column: 41, scope: !1754, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 167, column: 16, scope: !1769, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 228, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1712, file: !82, line: 228, column: 7)
!1871 = !DILocation(line: 146, column: 110, scope: !1754, inlinedAt: !1868)
!1872 = !DILocation(line: 146, column: 120, scope: !1754, inlinedAt: !1868)
!1873 = !DILocation(line: 148, column: 7, scope: !1774, inlinedAt: !1868)
!1874 = !DILocation(line: 132, column: 41, scope: !1777, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 153, column: 16, scope: !1791, inlinedAt: !1868)
!1876 = !DILocation(line: 132, column: 100, scope: !1777, inlinedAt: !1875)
!1877 = !DILocation(line: 132, column: 110, scope: !1777, inlinedAt: !1875)
!1878 = !DILocation(line: 134, column: 7, scope: !1879, inlinedAt: !1875)
!1879 = !DILexicalBlockFile(scope: !1797, file: !1731, discriminator: 2)
!1880 = !DILocation(line: 134, column: 7, scope: !1881, inlinedAt: !1875)
!1881 = !DILexicalBlockFile(scope: !1777, file: !1731, discriminator: 2)
!1882 = !DILocation(line: 118, column: 41, scope: !1799, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 139, column: 16, scope: !1812, inlinedAt: !1875)
!1884 = !DILocation(line: 118, column: 90, scope: !1799, inlinedAt: !1883)
!1885 = !DILocation(line: 118, column: 100, scope: !1799, inlinedAt: !1883)
!1886 = !DILocation(line: 120, column: 7, scope: !1817, inlinedAt: !1883)
!1887 = !DILocation(line: 120, column: 7, scope: !1820, inlinedAt: !1883)
!1888 = !DILocation(line: 104, column: 41, scope: !1822, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 125, column: 16, scope: !1834, inlinedAt: !1883)
!1890 = !DILocation(line: 104, column: 80, scope: !1822, inlinedAt: !1889)
!1891 = !DILocation(line: 104, column: 90, scope: !1822, inlinedAt: !1889)
!1892 = !DILocation(line: 106, column: 7, scope: !1839, inlinedAt: !1889)
!1893 = !DILocation(line: 106, column: 7, scope: !1842, inlinedAt: !1889)
!1894 = !DILocation(line: 90, column: 41, scope: !1844, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 111, column: 16, scope: !1855, inlinedAt: !1889)
!1896 = !DILocation(line: 90, column: 70, scope: !1844, inlinedAt: !1895)
!1897 = !DILocation(line: 90, column: 80, scope: !1844, inlinedAt: !1895)
!1898 = !DILocation(line: 92, column: 7, scope: !1860, inlinedAt: !1895)
!1899 = !DILocation(line: 92, column: 7, scope: !1863, inlinedAt: !1895)
!1900 = !DILocalVariable(name: "s2", arg: 2, scope: !1901, file: !1731, line: 76, type: !6)
!1901 = distinct !DISubprogram(name: "strcaseeq6", scope: !1731, file: !1731, line: 76, type: !1902, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!25, !6, !6, !8, !8, !8}
!1904 = !{!1905, !1900, !1906, !1907, !1908}
!1905 = !DILocalVariable(name: "s1", arg: 1, scope: !1901, file: !1731, line: 76, type: !6)
!1906 = !DILocalVariable(name: "s26", arg: 3, scope: !1901, file: !1731, line: 76, type: !8)
!1907 = !DILocalVariable(name: "s27", arg: 4, scope: !1901, file: !1731, line: 76, type: !8)
!1908 = !DILocalVariable(name: "s28", arg: 5, scope: !1901, file: !1731, line: 76, type: !8)
!1909 = !DILocation(line: 76, column: 41, scope: !1901, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 97, column: 16, scope: !1911, inlinedAt: !1895)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !1731, line: 94, column: 11)
!1912 = distinct !DILexicalBlock(scope: !1861, file: !1731, line: 93, column: 5)
!1913 = !DILocation(line: 76, column: 60, scope: !1901, inlinedAt: !1910)
!1914 = !DILocation(line: 76, column: 70, scope: !1901, inlinedAt: !1910)
!1915 = !DILocation(line: 78, column: 7, scope: !1916, inlinedAt: !1910)
!1916 = !DILexicalBlockFile(scope: !1917, file: !1731, discriminator: 2)
!1917 = distinct !DILexicalBlock(scope: !1901, file: !1731, line: 78, column: 7)
!1918 = !DILocation(line: 78, column: 7, scope: !1919, inlinedAt: !1910)
!1919 = !DILexicalBlockFile(scope: !1901, file: !1731, discriminator: 2)
!1920 = !DILocalVariable(name: "s2", arg: 2, scope: !1921, file: !1731, line: 62, type: !6)
!1921 = distinct !DISubprogram(name: "strcaseeq7", scope: !1731, file: !1731, line: 62, type: !1922, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!25, !6, !6, !8, !8}
!1924 = !{!1925, !1920, !1926, !1927}
!1925 = !DILocalVariable(name: "s1", arg: 1, scope: !1921, file: !1731, line: 62, type: !6)
!1926 = !DILocalVariable(name: "s27", arg: 3, scope: !1921, file: !1731, line: 62, type: !8)
!1927 = !DILocalVariable(name: "s28", arg: 4, scope: !1921, file: !1731, line: 62, type: !8)
!1928 = !DILocation(line: 62, column: 41, scope: !1921, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 83, column: 16, scope: !1930, inlinedAt: !1910)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !1731, line: 80, column: 11)
!1931 = distinct !DILexicalBlock(scope: !1917, file: !1731, line: 79, column: 5)
!1932 = !DILocation(line: 62, column: 50, scope: !1921, inlinedAt: !1929)
!1933 = !DILocation(line: 62, column: 60, scope: !1921, inlinedAt: !1929)
!1934 = !DILocation(line: 64, column: 7, scope: !1935, inlinedAt: !1929)
!1935 = !DILexicalBlockFile(scope: !1936, file: !1731, discriminator: 2)
!1936 = distinct !DILexicalBlock(scope: !1921, file: !1731, line: 64, column: 7)
!1937 = !DILocation(line: 228, column: 7, scope: !1712)
!1938 = !DILocation(line: 229, column: 12, scope: !1870)
!1939 = !DILocation(line: 229, column: 21, scope: !1870)
!1940 = !DILocation(line: 229, column: 5, scope: !1870)
!1941 = !DILocation(line: 231, column: 13, scope: !1712)
!1942 = !DILocation(line: 231, column: 11, scope: !1712)
!1943 = !DILocation(line: 231, column: 3, scope: !1712)
!1944 = !DILocation(line: 232, column: 1, scope: !1712)
!1945 = distinct !DISubprogram(name: "quotearg_alloc", scope: !82, file: !82, line: 791, type: !1946, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1948)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!32, !6, !76, !784}
!1948 = !{!1949, !1950, !1951}
!1949 = !DILocalVariable(name: "arg", arg: 1, scope: !1945, file: !82, line: 791, type: !6)
!1950 = !DILocalVariable(name: "argsize", arg: 2, scope: !1945, file: !82, line: 791, type: !76)
!1951 = !DILocalVariable(name: "o", arg: 3, scope: !1945, file: !82, line: 792, type: !784)
!1952 = !DILocation(line: 791, column: 29, scope: !1945)
!1953 = !DILocation(line: 791, column: 41, scope: !1945)
!1954 = !DILocation(line: 792, column: 47, scope: !1945)
!1955 = !DILocalVariable(name: "arg", arg: 1, scope: !1956, file: !82, line: 804, type: !6)
!1956 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 804, type: !1957, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!32, !6, !76, !534, !784}
!1959 = !{!1955, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967}
!1960 = !DILocalVariable(name: "argsize", arg: 2, scope: !1956, file: !82, line: 804, type: !76)
!1961 = !DILocalVariable(name: "size", arg: 3, scope: !1956, file: !82, line: 804, type: !534)
!1962 = !DILocalVariable(name: "o", arg: 4, scope: !1956, file: !82, line: 805, type: !784)
!1963 = !DILocalVariable(name: "p", scope: !1956, file: !82, line: 807, type: !784)
!1964 = !DILocalVariable(name: "e", scope: !1956, file: !82, line: 808, type: !25)
!1965 = !DILocalVariable(name: "flags", scope: !1956, file: !82, line: 810, type: !25)
!1966 = !DILocalVariable(name: "bufsize", scope: !1956, file: !82, line: 811, type: !76)
!1967 = !DILocalVariable(name: "buf", scope: !1956, file: !82, line: 815, type: !32)
!1968 = !DILocation(line: 804, column: 33, scope: !1956, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 794, column: 10, scope: !1945)
!1970 = !DILocation(line: 804, column: 45, scope: !1956, inlinedAt: !1969)
!1971 = !DILocation(line: 804, column: 62, scope: !1956, inlinedAt: !1969)
!1972 = !DILocation(line: 805, column: 51, scope: !1956, inlinedAt: !1969)
!1973 = !DILocation(line: 807, column: 37, scope: !1956, inlinedAt: !1969)
!1974 = !DILocation(line: 807, column: 33, scope: !1956, inlinedAt: !1969)
!1975 = !DILocation(line: 808, column: 11, scope: !1956, inlinedAt: !1969)
!1976 = !DILocation(line: 808, column: 7, scope: !1956, inlinedAt: !1969)
!1977 = !DILocation(line: 810, column: 18, scope: !1956, inlinedAt: !1969)
!1978 = !DILocation(line: 810, column: 24, scope: !1956, inlinedAt: !1969)
!1979 = !DILocation(line: 810, column: 7, scope: !1956, inlinedAt: !1969)
!1980 = !DILocation(line: 811, column: 69, scope: !1956, inlinedAt: !1969)
!1981 = !DILocation(line: 812, column: 53, scope: !1956, inlinedAt: !1969)
!1982 = !DILocation(line: 813, column: 49, scope: !1956, inlinedAt: !1969)
!1983 = !DILocation(line: 814, column: 49, scope: !1956, inlinedAt: !1969)
!1984 = !DILocation(line: 811, column: 20, scope: !1956, inlinedAt: !1969)
!1985 = !DILocation(line: 814, column: 62, scope: !1956, inlinedAt: !1969)
!1986 = !DILocation(line: 811, column: 10, scope: !1956, inlinedAt: !1969)
!1987 = !DILocalVariable(name: "n", arg: 1, scope: !1988, file: !530, line: 220, type: !76)
!1988 = distinct !DISubprogram(name: "xcharalloc", scope: !530, file: !530, line: 220, type: !1989, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1991)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!32, !76}
!1991 = !{!1987}
!1992 = !DILocation(line: 220, column: 20, scope: !1988, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 815, column: 15, scope: !1956, inlinedAt: !1969)
!1994 = !DILocation(line: 222, column: 10, scope: !1988, inlinedAt: !1993)
!1995 = !DILocation(line: 815, column: 9, scope: !1956, inlinedAt: !1969)
!1996 = !DILocation(line: 816, column: 60, scope: !1956, inlinedAt: !1969)
!1997 = !DILocation(line: 818, column: 32, scope: !1956, inlinedAt: !1969)
!1998 = !DILocation(line: 818, column: 47, scope: !1956, inlinedAt: !1969)
!1999 = !DILocation(line: 816, column: 3, scope: !1956, inlinedAt: !1969)
!2000 = !DILocation(line: 819, column: 9, scope: !1956, inlinedAt: !1969)
!2001 = !DILocation(line: 794, column: 3, scope: !1945)
!2002 = !DILocation(line: 804, column: 33, scope: !1956)
!2003 = !DILocation(line: 804, column: 45, scope: !1956)
!2004 = !DILocation(line: 804, column: 62, scope: !1956)
!2005 = !DILocation(line: 805, column: 51, scope: !1956)
!2006 = !DILocation(line: 807, column: 37, scope: !1956)
!2007 = !DILocation(line: 807, column: 33, scope: !1956)
!2008 = !DILocation(line: 808, column: 11, scope: !1956)
!2009 = !DILocation(line: 808, column: 7, scope: !1956)
!2010 = !DILocation(line: 810, column: 18, scope: !1956)
!2011 = !DILocation(line: 810, column: 27, scope: !1956)
!2012 = !DILocation(line: 810, column: 24, scope: !1956)
!2013 = !DILocation(line: 810, column: 7, scope: !1956)
!2014 = !DILocation(line: 811, column: 69, scope: !1956)
!2015 = !DILocation(line: 812, column: 53, scope: !1956)
!2016 = !DILocation(line: 813, column: 49, scope: !1956)
!2017 = !DILocation(line: 814, column: 49, scope: !1956)
!2018 = !DILocation(line: 811, column: 20, scope: !1956)
!2019 = !DILocation(line: 814, column: 62, scope: !1956)
!2020 = !DILocation(line: 811, column: 10, scope: !1956)
!2021 = !DILocation(line: 220, column: 20, scope: !1988, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 815, column: 15, scope: !1956)
!2023 = !DILocation(line: 222, column: 10, scope: !1988, inlinedAt: !2022)
!2024 = !DILocation(line: 815, column: 9, scope: !1956)
!2025 = !DILocation(line: 816, column: 60, scope: !1956)
!2026 = !DILocation(line: 818, column: 32, scope: !1956)
!2027 = !DILocation(line: 818, column: 47, scope: !1956)
!2028 = !DILocation(line: 816, column: 3, scope: !1956)
!2029 = !DILocation(line: 819, column: 9, scope: !1956)
!2030 = !DILocation(line: 820, column: 7, scope: !1956)
!2031 = !DILocation(line: 821, column: 11, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1956, file: !82, line: 820, column: 7)
!2033 = !{!2034, !2034, i64 0}
!2034 = !{!"long", !576, i64 0}
!2035 = !DILocation(line: 821, column: 5, scope: !2032)
!2036 = !DILocation(line: 822, column: 3, scope: !1956)
!2037 = distinct !DISubprogram(name: "quotearg_free", scope: !82, file: !82, line: 840, type: !680, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2038)
!2038 = !{!2039, !2040}
!2039 = !DILocalVariable(name: "sv", scope: !2037, file: !82, line: 842, type: !109)
!2040 = !DILocalVariable(name: "i", scope: !2037, file: !82, line: 843, type: !25)
!2041 = !DILocation(line: 842, column: 24, scope: !2037)
!2042 = !DILocation(line: 842, column: 19, scope: !2037)
!2043 = !DILocation(line: 843, column: 7, scope: !2037)
!2044 = !DILocation(line: 844, column: 19, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2046, file: !82, discriminator: 1)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !82, line: 844, column: 3)
!2047 = distinct !DILexicalBlock(scope: !2037, file: !82, line: 844, column: 3)
!2048 = !DILocation(line: 844, column: 17, scope: !2045)
!2049 = !DILocation(line: 844, column: 3, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2047, file: !82, discriminator: 1)
!2051 = !DILocation(line: 845, column: 17, scope: !2046)
!2052 = !{!2053, !575, i64 8}
!2053 = !{!"slotvec", !2034, i64 0, !575, i64 8}
!2054 = !DILocation(line: 845, column: 5, scope: !2046)
!2055 = !DILocation(line: 844, column: 28, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2046, file: !82, discriminator: 2)
!2057 = distinct !{!2057, !2058, !2059}
!2058 = !DILocation(line: 844, column: 3, scope: !2047)
!2059 = !DILocation(line: 845, column: 20, scope: !2047)
!2060 = !DILocation(line: 846, column: 13, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2037, file: !82, line: 846, column: 7)
!2062 = !DILocation(line: 846, column: 17, scope: !2061)
!2063 = !DILocation(line: 846, column: 7, scope: !2037)
!2064 = !DILocation(line: 848, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !82, line: 847, column: 5)
!2066 = !DILocation(line: 849, column: 21, scope: !2065)
!2067 = !{!2053, !2034, i64 0}
!2068 = !DILocation(line: 850, column: 20, scope: !2065)
!2069 = !DILocation(line: 851, column: 5, scope: !2065)
!2070 = !DILocation(line: 852, column: 10, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2037, file: !82, line: 852, column: 7)
!2072 = !DILocation(line: 852, column: 7, scope: !2037)
!2073 = !DILocation(line: 854, column: 13, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !82, line: 853, column: 5)
!2075 = !DILocation(line: 854, column: 7, scope: !2074)
!2076 = !DILocation(line: 855, column: 15, scope: !2074)
!2077 = !DILocation(line: 856, column: 5, scope: !2074)
!2078 = !DILocation(line: 857, column: 10, scope: !2037)
!2079 = !DILocation(line: 858, column: 1, scope: !2037)
!2080 = distinct !DISubprogram(name: "quotearg_n", scope: !82, file: !82, line: 922, type: !2081, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!32, !25, !6}
!2083 = !{!2084, !2085}
!2084 = !DILocalVariable(name: "n", arg: 1, scope: !2080, file: !82, line: 922, type: !25)
!2085 = !DILocalVariable(name: "arg", arg: 2, scope: !2080, file: !82, line: 922, type: !6)
!2086 = !DILocation(line: 922, column: 17, scope: !2080)
!2087 = !DILocation(line: 922, column: 32, scope: !2080)
!2088 = !DILocation(line: 924, column: 10, scope: !2080)
!2089 = !DILocation(line: 924, column: 3, scope: !2080)
!2090 = distinct !DISubprogram(name: "quotearg_n_options", scope: !82, file: !82, line: 869, type: !2091, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!32, !25, !6, !76, !784}
!2093 = !{!2094, !2095, !2096, !2097, !2098, !2099, !2100, !2103, !2105, !2106, !2107}
!2094 = !DILocalVariable(name: "n", arg: 1, scope: !2090, file: !82, line: 869, type: !25)
!2095 = !DILocalVariable(name: "arg", arg: 2, scope: !2090, file: !82, line: 869, type: !6)
!2096 = !DILocalVariable(name: "argsize", arg: 3, scope: !2090, file: !82, line: 869, type: !76)
!2097 = !DILocalVariable(name: "options", arg: 4, scope: !2090, file: !82, line: 870, type: !784)
!2098 = !DILocalVariable(name: "e", scope: !2090, file: !82, line: 872, type: !25)
!2099 = !DILocalVariable(name: "sv", scope: !2090, file: !82, line: 874, type: !109)
!2100 = !DILocalVariable(name: "preallocated", scope: !2101, file: !82, line: 881, type: !17)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !82, line: 880, column: 5)
!2102 = distinct !DILexicalBlock(scope: !2090, file: !82, line: 879, column: 7)
!2103 = !DILocalVariable(name: "size", scope: !2104, file: !82, line: 894, type: !76)
!2104 = distinct !DILexicalBlock(scope: !2090, file: !82, line: 893, column: 3)
!2105 = !DILocalVariable(name: "val", scope: !2104, file: !82, line: 895, type: !32)
!2106 = !DILocalVariable(name: "flags", scope: !2104, file: !82, line: 897, type: !25)
!2107 = !DILocalVariable(name: "qsize", scope: !2104, file: !82, line: 898, type: !76)
!2108 = !DILocation(line: 869, column: 25, scope: !2090)
!2109 = !DILocation(line: 869, column: 40, scope: !2090)
!2110 = !DILocation(line: 869, column: 52, scope: !2090)
!2111 = !DILocation(line: 870, column: 51, scope: !2090)
!2112 = !DILocation(line: 872, column: 11, scope: !2090)
!2113 = !DILocation(line: 872, column: 7, scope: !2090)
!2114 = !DILocation(line: 874, column: 24, scope: !2090)
!2115 = !DILocation(line: 874, column: 19, scope: !2090)
!2116 = !DILocation(line: 876, column: 9, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2090, file: !82, line: 876, column: 7)
!2118 = !DILocation(line: 876, column: 7, scope: !2090)
!2119 = !DILocation(line: 877, column: 5, scope: !2117)
!2120 = !DILocation(line: 879, column: 7, scope: !2102)
!2121 = !DILocation(line: 879, column: 14, scope: !2102)
!2122 = !DILocation(line: 879, column: 7, scope: !2090)
!2123 = !DILocation(line: 881, column: 31, scope: !2101)
!2124 = !DILocation(line: 883, column: 67, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2101, file: !82, line: 883, column: 11)
!2126 = !DILocation(line: 883, column: 11, scope: !2101)
!2127 = !DILocation(line: 884, column: 9, scope: !2125)
!2128 = !DILocation(line: 886, column: 32, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2101, file: !82, discriminator: 3)
!2130 = !DILocation(line: 886, column: 61, scope: !2129)
!2131 = !DILocation(line: 886, column: 58, scope: !2129)
!2132 = !DILocation(line: 886, column: 66, scope: !2129)
!2133 = !DILocation(line: 886, column: 22, scope: !2129)
!2134 = !DILocation(line: 886, column: 15, scope: !2129)
!2135 = !DILocation(line: 887, column: 11, scope: !2101)
!2136 = !DILocation(line: 888, column: 15, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2101, file: !82, line: 887, column: 11)
!2138 = !{i64 0, i64 8, !2033, i64 8, i64 8, !574}
!2139 = !DILocation(line: 888, column: 9, scope: !2137)
!2140 = !DILocation(line: 889, column: 20, scope: !2101)
!2141 = !DILocation(line: 889, column: 18, scope: !2101)
!2142 = !DILocation(line: 889, column: 7, scope: !2101)
!2143 = !DILocation(line: 889, column: 38, scope: !2101)
!2144 = !DILocation(line: 889, column: 31, scope: !2101)
!2145 = !DILocation(line: 889, column: 48, scope: !2101)
!2146 = !DILocation(line: 890, column: 14, scope: !2101)
!2147 = !DILocation(line: 891, column: 5, scope: !2101)
!2148 = !DILocation(line: 894, column: 19, scope: !2104)
!2149 = !DILocation(line: 894, column: 25, scope: !2104)
!2150 = !DILocation(line: 894, column: 12, scope: !2104)
!2151 = !DILocation(line: 895, column: 23, scope: !2104)
!2152 = !DILocation(line: 895, column: 11, scope: !2104)
!2153 = !DILocation(line: 897, column: 26, scope: !2104)
!2154 = !DILocation(line: 897, column: 32, scope: !2104)
!2155 = !DILocation(line: 897, column: 9, scope: !2104)
!2156 = !DILocation(line: 899, column: 55, scope: !2104)
!2157 = !DILocation(line: 900, column: 46, scope: !2104)
!2158 = !DILocation(line: 901, column: 55, scope: !2104)
!2159 = !DILocation(line: 902, column: 55, scope: !2104)
!2160 = !DILocation(line: 898, column: 20, scope: !2104)
!2161 = !DILocation(line: 898, column: 12, scope: !2104)
!2162 = !DILocation(line: 904, column: 14, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2104, file: !82, line: 904, column: 9)
!2164 = !DILocation(line: 904, column: 9, scope: !2104)
!2165 = !DILocation(line: 906, column: 35, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !82, line: 905, column: 7)
!2167 = !DILocation(line: 906, column: 20, scope: !2166)
!2168 = !DILocation(line: 907, column: 17, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2166, file: !82, line: 907, column: 13)
!2170 = !DILocation(line: 907, column: 13, scope: !2166)
!2171 = !DILocation(line: 908, column: 11, scope: !2169)
!2172 = !DILocation(line: 220, column: 20, scope: !1988, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 909, column: 27, scope: !2166)
!2174 = !DILocation(line: 222, column: 10, scope: !1988, inlinedAt: !2173)
!2175 = !DILocation(line: 909, column: 19, scope: !2166)
!2176 = !DILocation(line: 910, column: 69, scope: !2166)
!2177 = !DILocation(line: 912, column: 44, scope: !2166)
!2178 = !DILocation(line: 913, column: 44, scope: !2166)
!2179 = !DILocation(line: 910, column: 9, scope: !2166)
!2180 = !DILocation(line: 914, column: 7, scope: !2166)
!2181 = !DILocation(line: 916, column: 11, scope: !2104)
!2182 = !DILocation(line: 917, column: 5, scope: !2104)
!2183 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !82, file: !82, line: 928, type: !2184, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!32, !25, !6, !76}
!2186 = !{!2187, !2188, !2189}
!2187 = !DILocalVariable(name: "n", arg: 1, scope: !2183, file: !82, line: 928, type: !25)
!2188 = !DILocalVariable(name: "arg", arg: 2, scope: !2183, file: !82, line: 928, type: !6)
!2189 = !DILocalVariable(name: "argsize", arg: 3, scope: !2183, file: !82, line: 928, type: !76)
!2190 = !DILocation(line: 928, column: 21, scope: !2183)
!2191 = !DILocation(line: 928, column: 36, scope: !2183)
!2192 = !DILocation(line: 928, column: 48, scope: !2183)
!2193 = !DILocation(line: 930, column: 10, scope: !2183)
!2194 = !DILocation(line: 930, column: 3, scope: !2183)
!2195 = distinct !DISubprogram(name: "quotearg", scope: !82, file: !82, line: 934, type: !2196, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!32, !6}
!2198 = !{!2199}
!2199 = !DILocalVariable(name: "arg", arg: 1, scope: !2195, file: !82, line: 934, type: !6)
!2200 = !DILocation(line: 934, column: 23, scope: !2195)
!2201 = !DILocation(line: 922, column: 17, scope: !2080, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 936, column: 10, scope: !2195)
!2203 = !DILocation(line: 922, column: 32, scope: !2080, inlinedAt: !2202)
!2204 = !DILocation(line: 924, column: 10, scope: !2080, inlinedAt: !2202)
!2205 = !DILocation(line: 936, column: 3, scope: !2195)
!2206 = distinct !DISubprogram(name: "quotearg_mem", scope: !82, file: !82, line: 940, type: !2207, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!32, !6, !76}
!2209 = !{!2210, !2211}
!2210 = !DILocalVariable(name: "arg", arg: 1, scope: !2206, file: !82, line: 940, type: !6)
!2211 = !DILocalVariable(name: "argsize", arg: 2, scope: !2206, file: !82, line: 940, type: !76)
!2212 = !DILocation(line: 940, column: 27, scope: !2206)
!2213 = !DILocation(line: 940, column: 39, scope: !2206)
!2214 = !DILocation(line: 928, column: 21, scope: !2183, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 942, column: 10, scope: !2206)
!2216 = !DILocation(line: 928, column: 36, scope: !2183, inlinedAt: !2215)
!2217 = !DILocation(line: 928, column: 48, scope: !2183, inlinedAt: !2215)
!2218 = !DILocation(line: 930, column: 10, scope: !2183, inlinedAt: !2215)
!2219 = !DILocation(line: 942, column: 3, scope: !2206)
!2220 = distinct !DISubprogram(name: "quotearg_n_style", scope: !82, file: !82, line: 946, type: !2221, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!32, !25, !40, !6}
!2223 = !{!2224, !2225, !2226, !2227}
!2224 = !DILocalVariable(name: "n", arg: 1, scope: !2220, file: !82, line: 946, type: !25)
!2225 = !DILocalVariable(name: "s", arg: 2, scope: !2220, file: !82, line: 946, type: !40)
!2226 = !DILocalVariable(name: "arg", arg: 3, scope: !2220, file: !82, line: 946, type: !6)
!2227 = !DILocalVariable(name: "o", scope: !2220, file: !82, line: 948, type: !785)
!2228 = !DILocalVariable(name: "o", scope: !2229, file: !82, line: 187, type: !89)
!2229 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !82, file: !82, line: 185, type: !2230, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!89, !40}
!2232 = !{!2233, !2228}
!2233 = !DILocalVariable(name: "style", arg: 1, scope: !2229, file: !82, line: 185, type: !40)
!2234 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2235 = !DILocation(line: 187, column: 26, scope: !2229, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 948, column: 36, scope: !2220)
!2237 = !DILocation(line: 946, column: 23, scope: !2220)
!2238 = !DILocation(line: 946, column: 45, scope: !2220)
!2239 = !DILocation(line: 946, column: 60, scope: !2220)
!2240 = !DILocation(line: 948, column: 3, scope: !2220)
!2241 = !DILocation(line: 948, column: 32, scope: !2220)
!2242 = !DILocation(line: 185, column: 48, scope: !2229, inlinedAt: !2236)
!2243 = !DILocation(line: 187, column: 3, scope: !2229, inlinedAt: !2236)
!2244 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2245 = !DILocation(line: 188, column: 13, scope: !2246, inlinedAt: !2236)
!2246 = distinct !DILexicalBlock(scope: !2229, file: !82, line: 188, column: 7)
!2247 = !DILocation(line: 188, column: 7, scope: !2229, inlinedAt: !2236)
!2248 = !DILocation(line: 189, column: 5, scope: !2246, inlinedAt: !2236)
!2249 = !{!2250}
!2250 = distinct !{!2250, !2251, !"quoting_options_from_style: argument 0"}
!2251 = distinct !{!2251, !"quoting_options_from_style"}
!2252 = !DILocation(line: 191, column: 10, scope: !2229, inlinedAt: !2236)
!2253 = !DILocation(line: 192, column: 1, scope: !2229, inlinedAt: !2236)
!2254 = !DILocation(line: 949, column: 10, scope: !2220)
!2255 = !DILocation(line: 950, column: 1, scope: !2220)
!2256 = !DILocation(line: 949, column: 3, scope: !2220)
!2257 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !82, file: !82, line: 953, type: !2258, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!32, !25, !40, !6, !76}
!2260 = !{!2261, !2262, !2263, !2264, !2265}
!2261 = !DILocalVariable(name: "n", arg: 1, scope: !2257, file: !82, line: 953, type: !25)
!2262 = !DILocalVariable(name: "s", arg: 2, scope: !2257, file: !82, line: 953, type: !40)
!2263 = !DILocalVariable(name: "arg", arg: 3, scope: !2257, file: !82, line: 954, type: !6)
!2264 = !DILocalVariable(name: "argsize", arg: 4, scope: !2257, file: !82, line: 954, type: !76)
!2265 = !DILocalVariable(name: "o", scope: !2257, file: !82, line: 956, type: !785)
!2266 = !DILocation(line: 187, column: 26, scope: !2229, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 956, column: 36, scope: !2257)
!2268 = !DILocation(line: 953, column: 27, scope: !2257)
!2269 = !DILocation(line: 953, column: 49, scope: !2257)
!2270 = !DILocation(line: 954, column: 35, scope: !2257)
!2271 = !DILocation(line: 954, column: 47, scope: !2257)
!2272 = !DILocation(line: 956, column: 3, scope: !2257)
!2273 = !DILocation(line: 956, column: 32, scope: !2257)
!2274 = !DILocation(line: 185, column: 48, scope: !2229, inlinedAt: !2267)
!2275 = !DILocation(line: 187, column: 3, scope: !2229, inlinedAt: !2267)
!2276 = !DILocation(line: 188, column: 13, scope: !2246, inlinedAt: !2267)
!2277 = !DILocation(line: 188, column: 7, scope: !2229, inlinedAt: !2267)
!2278 = !DILocation(line: 189, column: 5, scope: !2246, inlinedAt: !2267)
!2279 = !{!2280}
!2280 = distinct !{!2280, !2281, !"quoting_options_from_style: argument 0"}
!2281 = distinct !{!2281, !"quoting_options_from_style"}
!2282 = !DILocation(line: 191, column: 10, scope: !2229, inlinedAt: !2267)
!2283 = !DILocation(line: 192, column: 1, scope: !2229, inlinedAt: !2267)
!2284 = !DILocation(line: 957, column: 10, scope: !2257)
!2285 = !DILocation(line: 958, column: 1, scope: !2257)
!2286 = !DILocation(line: 957, column: 3, scope: !2257)
!2287 = distinct !DISubprogram(name: "quotearg_style", scope: !82, file: !82, line: 961, type: !2288, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!32, !40, !6}
!2290 = !{!2291, !2292}
!2291 = !DILocalVariable(name: "s", arg: 1, scope: !2287, file: !82, line: 961, type: !40)
!2292 = !DILocalVariable(name: "arg", arg: 2, scope: !2287, file: !82, line: 961, type: !6)
!2293 = !DILocation(line: 187, column: 26, scope: !2229, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 948, column: 36, scope: !2220, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 963, column: 10, scope: !2287)
!2296 = !DILocation(line: 961, column: 36, scope: !2287)
!2297 = !DILocation(line: 961, column: 51, scope: !2287)
!2298 = !DILocation(line: 946, column: 23, scope: !2220, inlinedAt: !2295)
!2299 = !DILocation(line: 946, column: 45, scope: !2220, inlinedAt: !2295)
!2300 = !DILocation(line: 946, column: 60, scope: !2220, inlinedAt: !2295)
!2301 = !DILocation(line: 948, column: 3, scope: !2220, inlinedAt: !2295)
!2302 = !DILocation(line: 948, column: 32, scope: !2220, inlinedAt: !2295)
!2303 = !DILocation(line: 185, column: 48, scope: !2229, inlinedAt: !2294)
!2304 = !DILocation(line: 187, column: 3, scope: !2229, inlinedAt: !2294)
!2305 = !DILocation(line: 188, column: 13, scope: !2246, inlinedAt: !2294)
!2306 = !DILocation(line: 188, column: 7, scope: !2229, inlinedAt: !2294)
!2307 = !DILocation(line: 189, column: 5, scope: !2246, inlinedAt: !2294)
!2308 = !{!2309}
!2309 = distinct !{!2309, !2310, !"quoting_options_from_style: argument 0"}
!2310 = distinct !{!2310, !"quoting_options_from_style"}
!2311 = !DILocation(line: 191, column: 10, scope: !2229, inlinedAt: !2294)
!2312 = !DILocation(line: 192, column: 1, scope: !2229, inlinedAt: !2294)
!2313 = !DILocation(line: 949, column: 10, scope: !2220, inlinedAt: !2295)
!2314 = !DILocation(line: 950, column: 1, scope: !2220, inlinedAt: !2295)
!2315 = !DILocation(line: 963, column: 3, scope: !2287)
!2316 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !82, file: !82, line: 967, type: !2317, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!32, !40, !6, !76}
!2319 = !{!2320, !2321, !2322}
!2320 = !DILocalVariable(name: "s", arg: 1, scope: !2316, file: !82, line: 967, type: !40)
!2321 = !DILocalVariable(name: "arg", arg: 2, scope: !2316, file: !82, line: 967, type: !6)
!2322 = !DILocalVariable(name: "argsize", arg: 3, scope: !2316, file: !82, line: 967, type: !76)
!2323 = !DILocation(line: 187, column: 26, scope: !2229, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 956, column: 36, scope: !2257, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 969, column: 10, scope: !2316)
!2326 = !DILocation(line: 967, column: 40, scope: !2316)
!2327 = !DILocation(line: 967, column: 55, scope: !2316)
!2328 = !DILocation(line: 967, column: 67, scope: !2316)
!2329 = !DILocation(line: 953, column: 27, scope: !2257, inlinedAt: !2325)
!2330 = !DILocation(line: 953, column: 49, scope: !2257, inlinedAt: !2325)
!2331 = !DILocation(line: 954, column: 35, scope: !2257, inlinedAt: !2325)
!2332 = !DILocation(line: 954, column: 47, scope: !2257, inlinedAt: !2325)
!2333 = !DILocation(line: 956, column: 3, scope: !2257, inlinedAt: !2325)
!2334 = !DILocation(line: 956, column: 32, scope: !2257, inlinedAt: !2325)
!2335 = !DILocation(line: 185, column: 48, scope: !2229, inlinedAt: !2324)
!2336 = !DILocation(line: 187, column: 3, scope: !2229, inlinedAt: !2324)
!2337 = !DILocation(line: 188, column: 13, scope: !2246, inlinedAt: !2324)
!2338 = !DILocation(line: 188, column: 7, scope: !2229, inlinedAt: !2324)
!2339 = !DILocation(line: 189, column: 5, scope: !2246, inlinedAt: !2324)
!2340 = !{!2341}
!2341 = distinct !{!2341, !2342, !"quoting_options_from_style: argument 0"}
!2342 = distinct !{!2342, !"quoting_options_from_style"}
!2343 = !DILocation(line: 191, column: 10, scope: !2229, inlinedAt: !2324)
!2344 = !DILocation(line: 192, column: 1, scope: !2229, inlinedAt: !2324)
!2345 = !DILocation(line: 957, column: 10, scope: !2257, inlinedAt: !2325)
!2346 = !DILocation(line: 958, column: 1, scope: !2257, inlinedAt: !2325)
!2347 = !DILocation(line: 969, column: 3, scope: !2316)
!2348 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !82, file: !82, line: 973, type: !2349, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!32, !6, !76, !8}
!2351 = !{!2352, !2353, !2354, !2355}
!2352 = !DILocalVariable(name: "arg", arg: 1, scope: !2348, file: !82, line: 973, type: !6)
!2353 = !DILocalVariable(name: "argsize", arg: 2, scope: !2348, file: !82, line: 973, type: !76)
!2354 = !DILocalVariable(name: "ch", arg: 3, scope: !2348, file: !82, line: 973, type: !8)
!2355 = !DILocalVariable(name: "options", scope: !2348, file: !82, line: 975, type: !89)
!2356 = !DILocation(line: 973, column: 32, scope: !2348)
!2357 = !DILocation(line: 973, column: 44, scope: !2348)
!2358 = !DILocation(line: 973, column: 58, scope: !2348)
!2359 = !DILocation(line: 975, column: 3, scope: !2348)
!2360 = !DILocation(line: 976, column: 13, scope: !2348)
!2361 = !{i64 0, i64 4, !1019, i64 4, i64 4, !698, i64 8, i64 32, !1019, i64 40, i64 8, !574, i64 48, i64 8, !574}
!2362 = !DILocation(line: 975, column: 26, scope: !2348)
!2363 = !DILocation(line: 144, column: 43, scope: !808, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 977, column: 3, scope: !2348)
!2365 = !DILocation(line: 144, column: 51, scope: !808, inlinedAt: !2364)
!2366 = !DILocation(line: 144, column: 58, scope: !808, inlinedAt: !2364)
!2367 = !DILocation(line: 146, column: 17, scope: !808, inlinedAt: !2364)
!2368 = !DILocation(line: 148, column: 62, scope: !826, inlinedAt: !2364)
!2369 = !DILocation(line: 148, column: 57, scope: !826, inlinedAt: !2364)
!2370 = !DILocation(line: 147, column: 17, scope: !808, inlinedAt: !2364)
!2371 = !DILocation(line: 149, column: 18, scope: !808, inlinedAt: !2364)
!2372 = !DILocation(line: 149, column: 15, scope: !808, inlinedAt: !2364)
!2373 = !DILocation(line: 149, column: 7, scope: !808, inlinedAt: !2364)
!2374 = !DILocation(line: 150, column: 12, scope: !808, inlinedAt: !2364)
!2375 = !DILocation(line: 150, column: 15, scope: !808, inlinedAt: !2364)
!2376 = !DILocation(line: 150, column: 25, scope: !808, inlinedAt: !2364)
!2377 = !DILocation(line: 150, column: 7, scope: !808, inlinedAt: !2364)
!2378 = !DILocation(line: 151, column: 18, scope: !808, inlinedAt: !2364)
!2379 = !DILocation(line: 151, column: 23, scope: !808, inlinedAt: !2364)
!2380 = !DILocation(line: 151, column: 6, scope: !808, inlinedAt: !2364)
!2381 = !DILocation(line: 978, column: 10, scope: !2348)
!2382 = !DILocation(line: 979, column: 1, scope: !2348)
!2383 = !DILocation(line: 978, column: 3, scope: !2348)
!2384 = distinct !DISubprogram(name: "quotearg_char", scope: !82, file: !82, line: 982, type: !2385, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!32, !6, !8}
!2387 = !{!2388, !2389}
!2388 = !DILocalVariable(name: "arg", arg: 1, scope: !2384, file: !82, line: 982, type: !6)
!2389 = !DILocalVariable(name: "ch", arg: 2, scope: !2384, file: !82, line: 982, type: !8)
!2390 = !DILocation(line: 982, column: 28, scope: !2384)
!2391 = !DILocation(line: 982, column: 38, scope: !2384)
!2392 = !DILocation(line: 973, column: 32, scope: !2348, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 984, column: 10, scope: !2384)
!2394 = !DILocation(line: 973, column: 44, scope: !2348, inlinedAt: !2393)
!2395 = !DILocation(line: 973, column: 58, scope: !2348, inlinedAt: !2393)
!2396 = !DILocation(line: 975, column: 3, scope: !2348, inlinedAt: !2393)
!2397 = !DILocation(line: 976, column: 13, scope: !2348, inlinedAt: !2393)
!2398 = !DILocation(line: 975, column: 26, scope: !2348, inlinedAt: !2393)
!2399 = !DILocation(line: 144, column: 43, scope: !808, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 977, column: 3, scope: !2348, inlinedAt: !2393)
!2401 = !DILocation(line: 144, column: 51, scope: !808, inlinedAt: !2400)
!2402 = !DILocation(line: 144, column: 58, scope: !808, inlinedAt: !2400)
!2403 = !DILocation(line: 146, column: 17, scope: !808, inlinedAt: !2400)
!2404 = !DILocation(line: 148, column: 62, scope: !826, inlinedAt: !2400)
!2405 = !DILocation(line: 148, column: 57, scope: !826, inlinedAt: !2400)
!2406 = !DILocation(line: 147, column: 17, scope: !808, inlinedAt: !2400)
!2407 = !DILocation(line: 149, column: 18, scope: !808, inlinedAt: !2400)
!2408 = !DILocation(line: 149, column: 15, scope: !808, inlinedAt: !2400)
!2409 = !DILocation(line: 149, column: 7, scope: !808, inlinedAt: !2400)
!2410 = !DILocation(line: 150, column: 12, scope: !808, inlinedAt: !2400)
!2411 = !DILocation(line: 150, column: 15, scope: !808, inlinedAt: !2400)
!2412 = !DILocation(line: 150, column: 25, scope: !808, inlinedAt: !2400)
!2413 = !DILocation(line: 150, column: 7, scope: !808, inlinedAt: !2400)
!2414 = !DILocation(line: 151, column: 18, scope: !808, inlinedAt: !2400)
!2415 = !DILocation(line: 151, column: 23, scope: !808, inlinedAt: !2400)
!2416 = !DILocation(line: 151, column: 6, scope: !808, inlinedAt: !2400)
!2417 = !DILocation(line: 978, column: 10, scope: !2348, inlinedAt: !2393)
!2418 = !DILocation(line: 979, column: 1, scope: !2348, inlinedAt: !2393)
!2419 = !DILocation(line: 984, column: 3, scope: !2384)
!2420 = distinct !DISubprogram(name: "quotearg_colon", scope: !82, file: !82, line: 988, type: !2196, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2421)
!2421 = !{!2422}
!2422 = !DILocalVariable(name: "arg", arg: 1, scope: !2420, file: !82, line: 988, type: !6)
!2423 = !DILocation(line: 988, column: 29, scope: !2420)
!2424 = !DILocation(line: 982, column: 28, scope: !2384, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 990, column: 10, scope: !2420)
!2426 = !DILocation(line: 982, column: 38, scope: !2384, inlinedAt: !2425)
!2427 = !DILocation(line: 973, column: 32, scope: !2348, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 984, column: 10, scope: !2384, inlinedAt: !2425)
!2429 = !DILocation(line: 973, column: 44, scope: !2348, inlinedAt: !2428)
!2430 = !DILocation(line: 973, column: 58, scope: !2348, inlinedAt: !2428)
!2431 = !DILocation(line: 975, column: 3, scope: !2348, inlinedAt: !2428)
!2432 = !DILocation(line: 976, column: 13, scope: !2348, inlinedAt: !2428)
!2433 = !DILocation(line: 975, column: 26, scope: !2348, inlinedAt: !2428)
!2434 = !DILocation(line: 144, column: 43, scope: !808, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 977, column: 3, scope: !2348, inlinedAt: !2428)
!2436 = !DILocation(line: 144, column: 51, scope: !808, inlinedAt: !2435)
!2437 = !DILocation(line: 144, column: 58, scope: !808, inlinedAt: !2435)
!2438 = !DILocation(line: 146, column: 17, scope: !808, inlinedAt: !2435)
!2439 = !DILocation(line: 148, column: 57, scope: !826, inlinedAt: !2435)
!2440 = !DILocation(line: 147, column: 17, scope: !808, inlinedAt: !2435)
!2441 = !DILocation(line: 149, column: 7, scope: !808, inlinedAt: !2435)
!2442 = !DILocation(line: 150, column: 12, scope: !808, inlinedAt: !2435)
!2443 = !DILocation(line: 151, column: 6, scope: !808, inlinedAt: !2435)
!2444 = !DILocation(line: 978, column: 10, scope: !2348, inlinedAt: !2428)
!2445 = !DILocation(line: 979, column: 1, scope: !2348, inlinedAt: !2428)
!2446 = !DILocation(line: 990, column: 3, scope: !2420)
!2447 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !82, file: !82, line: 994, type: !2207, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2448)
!2448 = !{!2449, !2450}
!2449 = !DILocalVariable(name: "arg", arg: 1, scope: !2447, file: !82, line: 994, type: !6)
!2450 = !DILocalVariable(name: "argsize", arg: 2, scope: !2447, file: !82, line: 994, type: !76)
!2451 = !DILocation(line: 994, column: 33, scope: !2447)
!2452 = !DILocation(line: 994, column: 45, scope: !2447)
!2453 = !DILocation(line: 973, column: 32, scope: !2348, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 996, column: 10, scope: !2447)
!2455 = !DILocation(line: 973, column: 44, scope: !2348, inlinedAt: !2454)
!2456 = !DILocation(line: 973, column: 58, scope: !2348, inlinedAt: !2454)
!2457 = !DILocation(line: 975, column: 3, scope: !2348, inlinedAt: !2454)
!2458 = !DILocation(line: 976, column: 13, scope: !2348, inlinedAt: !2454)
!2459 = !DILocation(line: 975, column: 26, scope: !2348, inlinedAt: !2454)
!2460 = !DILocation(line: 144, column: 43, scope: !808, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 977, column: 3, scope: !2348, inlinedAt: !2454)
!2462 = !DILocation(line: 144, column: 51, scope: !808, inlinedAt: !2461)
!2463 = !DILocation(line: 144, column: 58, scope: !808, inlinedAt: !2461)
!2464 = !DILocation(line: 146, column: 17, scope: !808, inlinedAt: !2461)
!2465 = !DILocation(line: 148, column: 57, scope: !826, inlinedAt: !2461)
!2466 = !DILocation(line: 147, column: 17, scope: !808, inlinedAt: !2461)
!2467 = !DILocation(line: 149, column: 7, scope: !808, inlinedAt: !2461)
!2468 = !DILocation(line: 150, column: 12, scope: !808, inlinedAt: !2461)
!2469 = !DILocation(line: 151, column: 6, scope: !808, inlinedAt: !2461)
!2470 = !DILocation(line: 978, column: 10, scope: !2348, inlinedAt: !2454)
!2471 = !DILocation(line: 979, column: 1, scope: !2348, inlinedAt: !2454)
!2472 = !DILocation(line: 996, column: 3, scope: !2447)
!2473 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !82, file: !82, line: 1000, type: !2221, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2474)
!2474 = !{!2475, !2476, !2477, !2478}
!2475 = !DILocalVariable(name: "n", arg: 1, scope: !2473, file: !82, line: 1000, type: !25)
!2476 = !DILocalVariable(name: "s", arg: 2, scope: !2473, file: !82, line: 1000, type: !40)
!2477 = !DILocalVariable(name: "arg", arg: 3, scope: !2473, file: !82, line: 1000, type: !6)
!2478 = !DILocalVariable(name: "options", scope: !2473, file: !82, line: 1002, type: !89)
!2479 = !DILocation(line: 187, column: 26, scope: !2229, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 1003, column: 13, scope: !2473)
!2481 = !DILocation(line: 1000, column: 29, scope: !2473)
!2482 = !DILocation(line: 1000, column: 51, scope: !2473)
!2483 = !DILocation(line: 1000, column: 66, scope: !2473)
!2484 = !DILocation(line: 1002, column: 3, scope: !2473)
!2485 = !DILocation(line: 185, column: 48, scope: !2229, inlinedAt: !2480)
!2486 = !DILocation(line: 187, column: 3, scope: !2229, inlinedAt: !2480)
!2487 = !DILocation(line: 188, column: 13, scope: !2246, inlinedAt: !2480)
!2488 = !DILocation(line: 188, column: 7, scope: !2229, inlinedAt: !2480)
!2489 = !DILocation(line: 189, column: 5, scope: !2246, inlinedAt: !2480)
!2490 = !{!2491}
!2491 = distinct !{!2491, !2492, !"quoting_options_from_style: argument 0"}
!2492 = distinct !{!2492, !"quoting_options_from_style"}
!2493 = !DILocation(line: 191, column: 10, scope: !2229, inlinedAt: !2480)
!2494 = !DILocation(line: 192, column: 1, scope: !2229, inlinedAt: !2480)
!2495 = !DILocation(line: 1003, column: 13, scope: !2473)
!2496 = !DILocation(line: 1002, column: 26, scope: !2473)
!2497 = !DILocation(line: 144, column: 43, scope: !808, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 1004, column: 3, scope: !2473)
!2499 = !DILocation(line: 144, column: 51, scope: !808, inlinedAt: !2498)
!2500 = !DILocation(line: 144, column: 58, scope: !808, inlinedAt: !2498)
!2501 = !DILocation(line: 146, column: 17, scope: !808, inlinedAt: !2498)
!2502 = !DILocation(line: 148, column: 57, scope: !826, inlinedAt: !2498)
!2503 = !DILocation(line: 147, column: 17, scope: !808, inlinedAt: !2498)
!2504 = !DILocation(line: 149, column: 7, scope: !808, inlinedAt: !2498)
!2505 = !DILocation(line: 150, column: 12, scope: !808, inlinedAt: !2498)
!2506 = !DILocation(line: 151, column: 6, scope: !808, inlinedAt: !2498)
!2507 = !DILocation(line: 1005, column: 10, scope: !2473)
!2508 = !DILocation(line: 1006, column: 1, scope: !2473)
!2509 = !DILocation(line: 1005, column: 3, scope: !2473)
!2510 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !82, file: !82, line: 1009, type: !2511, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2513)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!32, !25, !6, !6, !6}
!2513 = !{!2514, !2515, !2516, !2517}
!2514 = !DILocalVariable(name: "n", arg: 1, scope: !2510, file: !82, line: 1009, type: !25)
!2515 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2510, file: !82, line: 1009, type: !6)
!2516 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2510, file: !82, line: 1010, type: !6)
!2517 = !DILocalVariable(name: "arg", arg: 4, scope: !2510, file: !82, line: 1010, type: !6)
!2518 = !DILocation(line: 1009, column: 24, scope: !2510)
!2519 = !DILocation(line: 1009, column: 39, scope: !2510)
!2520 = !DILocation(line: 1010, column: 32, scope: !2510)
!2521 = !DILocation(line: 1010, column: 57, scope: !2510)
!2522 = !DILocalVariable(name: "n", arg: 1, scope: !2523, file: !82, line: 1017, type: !25)
!2523 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 1017, type: !2524, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!32, !25, !6, !6, !6, !76}
!2526 = !{!2522, !2527, !2528, !2529, !2530, !2531}
!2527 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2523, file: !82, line: 1017, type: !6)
!2528 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2523, file: !82, line: 1018, type: !6)
!2529 = !DILocalVariable(name: "arg", arg: 4, scope: !2523, file: !82, line: 1019, type: !6)
!2530 = !DILocalVariable(name: "argsize", arg: 5, scope: !2523, file: !82, line: 1019, type: !76)
!2531 = !DILocalVariable(name: "o", scope: !2523, file: !82, line: 1021, type: !89)
!2532 = !DILocation(line: 1017, column: 28, scope: !2523, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 1012, column: 10, scope: !2510)
!2534 = !DILocation(line: 1017, column: 43, scope: !2523, inlinedAt: !2533)
!2535 = !DILocation(line: 1018, column: 36, scope: !2523, inlinedAt: !2533)
!2536 = !DILocation(line: 1019, column: 36, scope: !2523, inlinedAt: !2533)
!2537 = !DILocation(line: 1019, column: 48, scope: !2523, inlinedAt: !2533)
!2538 = !DILocation(line: 1021, column: 3, scope: !2523, inlinedAt: !2533)
!2539 = !DILocation(line: 1021, column: 30, scope: !2523, inlinedAt: !2533)
!2540 = !DILocation(line: 1021, column: 26, scope: !2523, inlinedAt: !2533)
!2541 = !DILocation(line: 171, column: 45, scope: !858, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 1022, column: 3, scope: !2523, inlinedAt: !2533)
!2543 = !DILocation(line: 172, column: 33, scope: !858, inlinedAt: !2542)
!2544 = !DILocation(line: 172, column: 57, scope: !858, inlinedAt: !2542)
!2545 = !DILocation(line: 176, column: 6, scope: !858, inlinedAt: !2542)
!2546 = !DILocation(line: 176, column: 12, scope: !858, inlinedAt: !2542)
!2547 = !DILocation(line: 177, column: 8, scope: !874, inlinedAt: !2542)
!2548 = !DILocation(line: 177, column: 23, scope: !876, inlinedAt: !2542)
!2549 = !DILocation(line: 177, column: 19, scope: !874, inlinedAt: !2542)
!2550 = !DILocation(line: 178, column: 5, scope: !874, inlinedAt: !2542)
!2551 = !DILocation(line: 179, column: 6, scope: !858, inlinedAt: !2542)
!2552 = !DILocation(line: 179, column: 17, scope: !858, inlinedAt: !2542)
!2553 = !DILocation(line: 180, column: 6, scope: !858, inlinedAt: !2542)
!2554 = !DILocation(line: 180, column: 18, scope: !858, inlinedAt: !2542)
!2555 = !DILocation(line: 1023, column: 10, scope: !2523, inlinedAt: !2533)
!2556 = !DILocation(line: 1024, column: 1, scope: !2523, inlinedAt: !2533)
!2557 = !DILocation(line: 1012, column: 3, scope: !2510)
!2558 = !DILocation(line: 1017, column: 28, scope: !2523)
!2559 = !DILocation(line: 1017, column: 43, scope: !2523)
!2560 = !DILocation(line: 1018, column: 36, scope: !2523)
!2561 = !DILocation(line: 1019, column: 36, scope: !2523)
!2562 = !DILocation(line: 1019, column: 48, scope: !2523)
!2563 = !DILocation(line: 1021, column: 3, scope: !2523)
!2564 = !DILocation(line: 1021, column: 30, scope: !2523)
!2565 = !DILocation(line: 1021, column: 26, scope: !2523)
!2566 = !DILocation(line: 171, column: 45, scope: !858, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 1022, column: 3, scope: !2523)
!2568 = !DILocation(line: 172, column: 33, scope: !858, inlinedAt: !2567)
!2569 = !DILocation(line: 172, column: 57, scope: !858, inlinedAt: !2567)
!2570 = !DILocation(line: 176, column: 6, scope: !858, inlinedAt: !2567)
!2571 = !DILocation(line: 176, column: 12, scope: !858, inlinedAt: !2567)
!2572 = !DILocation(line: 177, column: 8, scope: !874, inlinedAt: !2567)
!2573 = !DILocation(line: 177, column: 23, scope: !876, inlinedAt: !2567)
!2574 = !DILocation(line: 177, column: 19, scope: !874, inlinedAt: !2567)
!2575 = !DILocation(line: 178, column: 5, scope: !874, inlinedAt: !2567)
!2576 = !DILocation(line: 179, column: 6, scope: !858, inlinedAt: !2567)
!2577 = !DILocation(line: 179, column: 17, scope: !858, inlinedAt: !2567)
!2578 = !DILocation(line: 180, column: 6, scope: !858, inlinedAt: !2567)
!2579 = !DILocation(line: 180, column: 18, scope: !858, inlinedAt: !2567)
!2580 = !DILocation(line: 1023, column: 10, scope: !2523)
!2581 = !DILocation(line: 1024, column: 1, scope: !2523)
!2582 = !DILocation(line: 1023, column: 3, scope: !2523)
!2583 = distinct !DISubprogram(name: "quotearg_custom", scope: !82, file: !82, line: 1027, type: !2584, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!32, !6, !6, !6}
!2586 = !{!2587, !2588, !2589}
!2587 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2583, file: !82, line: 1027, type: !6)
!2588 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2583, file: !82, line: 1027, type: !6)
!2589 = !DILocalVariable(name: "arg", arg: 3, scope: !2583, file: !82, line: 1028, type: !6)
!2590 = !DILocation(line: 1027, column: 30, scope: !2583)
!2591 = !DILocation(line: 1027, column: 54, scope: !2583)
!2592 = !DILocation(line: 1028, column: 30, scope: !2583)
!2593 = !DILocation(line: 1009, column: 24, scope: !2510, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 1030, column: 10, scope: !2583)
!2595 = !DILocation(line: 1009, column: 39, scope: !2510, inlinedAt: !2594)
!2596 = !DILocation(line: 1010, column: 32, scope: !2510, inlinedAt: !2594)
!2597 = !DILocation(line: 1010, column: 57, scope: !2510, inlinedAt: !2594)
!2598 = !DILocation(line: 1017, column: 28, scope: !2523, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 1012, column: 10, scope: !2510, inlinedAt: !2594)
!2600 = !DILocation(line: 1017, column: 43, scope: !2523, inlinedAt: !2599)
!2601 = !DILocation(line: 1018, column: 36, scope: !2523, inlinedAt: !2599)
!2602 = !DILocation(line: 1019, column: 36, scope: !2523, inlinedAt: !2599)
!2603 = !DILocation(line: 1019, column: 48, scope: !2523, inlinedAt: !2599)
!2604 = !DILocation(line: 1021, column: 3, scope: !2523, inlinedAt: !2599)
!2605 = !DILocation(line: 1021, column: 30, scope: !2523, inlinedAt: !2599)
!2606 = !DILocation(line: 1021, column: 26, scope: !2523, inlinedAt: !2599)
!2607 = !DILocation(line: 171, column: 45, scope: !858, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 1022, column: 3, scope: !2523, inlinedAt: !2599)
!2609 = !DILocation(line: 172, column: 33, scope: !858, inlinedAt: !2608)
!2610 = !DILocation(line: 172, column: 57, scope: !858, inlinedAt: !2608)
!2611 = !DILocation(line: 176, column: 6, scope: !858, inlinedAt: !2608)
!2612 = !DILocation(line: 176, column: 12, scope: !858, inlinedAt: !2608)
!2613 = !DILocation(line: 177, column: 8, scope: !874, inlinedAt: !2608)
!2614 = !DILocation(line: 177, column: 23, scope: !876, inlinedAt: !2608)
!2615 = !DILocation(line: 177, column: 19, scope: !874, inlinedAt: !2608)
!2616 = !DILocation(line: 178, column: 5, scope: !874, inlinedAt: !2608)
!2617 = !DILocation(line: 179, column: 6, scope: !858, inlinedAt: !2608)
!2618 = !DILocation(line: 179, column: 17, scope: !858, inlinedAt: !2608)
!2619 = !DILocation(line: 180, column: 6, scope: !858, inlinedAt: !2608)
!2620 = !DILocation(line: 180, column: 18, scope: !858, inlinedAt: !2608)
!2621 = !DILocation(line: 1023, column: 10, scope: !2523, inlinedAt: !2599)
!2622 = !DILocation(line: 1024, column: 1, scope: !2523, inlinedAt: !2599)
!2623 = !DILocation(line: 1030, column: 3, scope: !2583)
!2624 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !82, file: !82, line: 1034, type: !2625, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!32, !6, !6, !6, !76}
!2627 = !{!2628, !2629, !2630, !2631}
!2628 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2624, file: !82, line: 1034, type: !6)
!2629 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2624, file: !82, line: 1034, type: !6)
!2630 = !DILocalVariable(name: "arg", arg: 3, scope: !2624, file: !82, line: 1035, type: !6)
!2631 = !DILocalVariable(name: "argsize", arg: 4, scope: !2624, file: !82, line: 1035, type: !76)
!2632 = !DILocation(line: 1034, column: 34, scope: !2624)
!2633 = !DILocation(line: 1034, column: 58, scope: !2624)
!2634 = !DILocation(line: 1035, column: 34, scope: !2624)
!2635 = !DILocation(line: 1035, column: 46, scope: !2624)
!2636 = !DILocation(line: 1017, column: 28, scope: !2523, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 1037, column: 10, scope: !2624)
!2638 = !DILocation(line: 1017, column: 43, scope: !2523, inlinedAt: !2637)
!2639 = !DILocation(line: 1018, column: 36, scope: !2523, inlinedAt: !2637)
!2640 = !DILocation(line: 1019, column: 36, scope: !2523, inlinedAt: !2637)
!2641 = !DILocation(line: 1019, column: 48, scope: !2523, inlinedAt: !2637)
!2642 = !DILocation(line: 1021, column: 3, scope: !2523, inlinedAt: !2637)
!2643 = !DILocation(line: 1021, column: 30, scope: !2523, inlinedAt: !2637)
!2644 = !DILocation(line: 1021, column: 26, scope: !2523, inlinedAt: !2637)
!2645 = !DILocation(line: 171, column: 45, scope: !858, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 1022, column: 3, scope: !2523, inlinedAt: !2637)
!2647 = !DILocation(line: 172, column: 33, scope: !858, inlinedAt: !2646)
!2648 = !DILocation(line: 172, column: 57, scope: !858, inlinedAt: !2646)
!2649 = !DILocation(line: 176, column: 6, scope: !858, inlinedAt: !2646)
!2650 = !DILocation(line: 176, column: 12, scope: !858, inlinedAt: !2646)
!2651 = !DILocation(line: 177, column: 8, scope: !874, inlinedAt: !2646)
!2652 = !DILocation(line: 177, column: 23, scope: !876, inlinedAt: !2646)
!2653 = !DILocation(line: 177, column: 19, scope: !874, inlinedAt: !2646)
!2654 = !DILocation(line: 178, column: 5, scope: !874, inlinedAt: !2646)
!2655 = !DILocation(line: 179, column: 6, scope: !858, inlinedAt: !2646)
!2656 = !DILocation(line: 179, column: 17, scope: !858, inlinedAt: !2646)
!2657 = !DILocation(line: 180, column: 6, scope: !858, inlinedAt: !2646)
!2658 = !DILocation(line: 180, column: 18, scope: !858, inlinedAt: !2646)
!2659 = !DILocation(line: 1023, column: 10, scope: !2523, inlinedAt: !2637)
!2660 = !DILocation(line: 1024, column: 1, scope: !2523, inlinedAt: !2637)
!2661 = !DILocation(line: 1037, column: 3, scope: !2624)
!2662 = distinct !DISubprogram(name: "quote_n_mem", scope: !82, file: !82, line: 1052, type: !2663, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2665)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!6, !25, !6, !76}
!2665 = !{!2666, !2667, !2668}
!2666 = !DILocalVariable(name: "n", arg: 1, scope: !2662, file: !82, line: 1052, type: !25)
!2667 = !DILocalVariable(name: "arg", arg: 2, scope: !2662, file: !82, line: 1052, type: !6)
!2668 = !DILocalVariable(name: "argsize", arg: 3, scope: !2662, file: !82, line: 1052, type: !76)
!2669 = !DILocation(line: 1052, column: 18, scope: !2662)
!2670 = !DILocation(line: 1052, column: 33, scope: !2662)
!2671 = !DILocation(line: 1052, column: 45, scope: !2662)
!2672 = !DILocation(line: 1054, column: 10, scope: !2662)
!2673 = !DILocation(line: 1054, column: 3, scope: !2662)
!2674 = distinct !DISubprogram(name: "quote_mem", scope: !82, file: !82, line: 1058, type: !2675, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!6, !6, !76}
!2677 = !{!2678, !2679}
!2678 = !DILocalVariable(name: "arg", arg: 1, scope: !2674, file: !82, line: 1058, type: !6)
!2679 = !DILocalVariable(name: "argsize", arg: 2, scope: !2674, file: !82, line: 1058, type: !76)
!2680 = !DILocation(line: 1058, column: 24, scope: !2674)
!2681 = !DILocation(line: 1058, column: 36, scope: !2674)
!2682 = !DILocation(line: 1052, column: 18, scope: !2662, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 1060, column: 10, scope: !2674)
!2684 = !DILocation(line: 1052, column: 33, scope: !2662, inlinedAt: !2683)
!2685 = !DILocation(line: 1052, column: 45, scope: !2662, inlinedAt: !2683)
!2686 = !DILocation(line: 1054, column: 10, scope: !2662, inlinedAt: !2683)
!2687 = !DILocation(line: 1060, column: 3, scope: !2674)
!2688 = distinct !DISubprogram(name: "quote_n", scope: !82, file: !82, line: 1064, type: !2689, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2691)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!6, !25, !6}
!2691 = !{!2692, !2693}
!2692 = !DILocalVariable(name: "n", arg: 1, scope: !2688, file: !82, line: 1064, type: !25)
!2693 = !DILocalVariable(name: "arg", arg: 2, scope: !2688, file: !82, line: 1064, type: !6)
!2694 = !DILocation(line: 1064, column: 14, scope: !2688)
!2695 = !DILocation(line: 1064, column: 29, scope: !2688)
!2696 = !DILocation(line: 1052, column: 18, scope: !2662, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 1066, column: 10, scope: !2688)
!2698 = !DILocation(line: 1052, column: 33, scope: !2662, inlinedAt: !2697)
!2699 = !DILocation(line: 1052, column: 45, scope: !2662, inlinedAt: !2697)
!2700 = !DILocation(line: 1054, column: 10, scope: !2662, inlinedAt: !2697)
!2701 = !DILocation(line: 1066, column: 3, scope: !2688)
!2702 = distinct !DISubprogram(name: "quote", scope: !82, file: !82, line: 1070, type: !2703, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!6, !6}
!2705 = !{!2706}
!2706 = !DILocalVariable(name: "arg", arg: 1, scope: !2702, file: !82, line: 1070, type: !6)
!2707 = !DILocation(line: 1070, column: 20, scope: !2702)
!2708 = !DILocation(line: 1064, column: 14, scope: !2688, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 1072, column: 10, scope: !2702)
!2710 = !DILocation(line: 1064, column: 29, scope: !2688, inlinedAt: !2709)
!2711 = !DILocation(line: 1052, column: 18, scope: !2662, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 1066, column: 10, scope: !2688, inlinedAt: !2709)
!2713 = !DILocation(line: 1052, column: 33, scope: !2662, inlinedAt: !2712)
!2714 = !DILocation(line: 1052, column: 45, scope: !2662, inlinedAt: !2712)
!2715 = !DILocation(line: 1054, column: 10, scope: !2662, inlinedAt: !2712)
!2716 = !DILocation(line: 1072, column: 3, scope: !2702)
!2717 = distinct !DISubprogram(name: "version_etc_arn", scope: !522, file: !522, line: 62, type: !2718, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !2776)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !2720, !6, !6, !6, !2775, !76}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2722, line: 49, baseType: !2723)
!2722 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2724, line: 241, size: 1728, elements: !2725)
!2724 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2746, !2747, !2748, !2749, !2753, !2754, !2756, !2760, !2763, !2765, !2766, !2767, !2768, !2769, !2770, !2771}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2723, file: !2724, line: 242, baseType: !25, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2723, file: !2724, line: 247, baseType: !32, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2723, file: !2724, line: 248, baseType: !32, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2723, file: !2724, line: 249, baseType: !32, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2723, file: !2724, line: 250, baseType: !32, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2723, file: !2724, line: 251, baseType: !32, size: 64, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2723, file: !2724, line: 252, baseType: !32, size: 64, offset: 384)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2723, file: !2724, line: 253, baseType: !32, size: 64, offset: 448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2723, file: !2724, line: 254, baseType: !32, size: 64, offset: 512)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2723, file: !2724, line: 256, baseType: !32, size: 64, offset: 576)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2723, file: !2724, line: 257, baseType: !32, size: 64, offset: 640)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2723, file: !2724, line: 258, baseType: !32, size: 64, offset: 704)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2723, file: !2724, line: 260, baseType: !2739, size: 64, offset: 768)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2724, line: 156, size: 192, elements: !2741)
!2741 = !{!2742, !2743, !2745}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2740, file: !2724, line: 157, baseType: !2739, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2740, file: !2724, line: 158, baseType: !2744, size: 64, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2740, file: !2724, line: 162, baseType: !25, size: 32, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2723, file: !2724, line: 262, baseType: !2744, size: 64, offset: 832)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2723, file: !2724, line: 264, baseType: !25, size: 32, offset: 896)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2723, file: !2724, line: 268, baseType: !25, size: 32, offset: 928)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2723, file: !2724, line: 270, baseType: !2750, size: 64, offset: 960)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2751, line: 140, baseType: !2752)
!2751 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2752 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2723, file: !2724, line: 274, baseType: !75, size: 16, offset: 1024)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2723, file: !2724, line: 275, baseType: !2755, size: 8, offset: 1040)
!2755 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2723, file: !2724, line: 276, baseType: !2757, size: 8, offset: 1048)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2758)
!2758 = !{!2759}
!2759 = !DISubrange(count: 1)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2723, file: !2724, line: 280, baseType: !2761, size: 64, offset: 1088)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2724, line: 150, baseType: null)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2723, file: !2724, line: 289, baseType: !2764, size: 64, offset: 1152)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2751, line: 141, baseType: !2752)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2723, file: !2724, line: 297, baseType: !31, size: 64, offset: 1216)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2723, file: !2724, line: 298, baseType: !31, size: 64, offset: 1280)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2723, file: !2724, line: 299, baseType: !31, size: 64, offset: 1344)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2723, file: !2724, line: 300, baseType: !31, size: 64, offset: 1408)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2723, file: !2724, line: 302, baseType: !76, size: 64, offset: 1472)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2723, file: !2724, line: 303, baseType: !25, size: 32, offset: 1536)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2723, file: !2724, line: 305, baseType: !2772, size: 160, offset: 1568)
!2772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2773)
!2773 = !{!2774}
!2774 = !DISubrange(count: 20)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782}
!2777 = !DILocalVariable(name: "stream", arg: 1, scope: !2717, file: !522, line: 62, type: !2720)
!2778 = !DILocalVariable(name: "command_name", arg: 2, scope: !2717, file: !522, line: 63, type: !6)
!2779 = !DILocalVariable(name: "package", arg: 3, scope: !2717, file: !522, line: 63, type: !6)
!2780 = !DILocalVariable(name: "version", arg: 4, scope: !2717, file: !522, line: 64, type: !6)
!2781 = !DILocalVariable(name: "authors", arg: 5, scope: !2717, file: !522, line: 65, type: !2775)
!2782 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2717, file: !522, line: 65, type: !76)
!2783 = !DILocation(line: 62, column: 24, scope: !2717)
!2784 = !DILocation(line: 63, column: 30, scope: !2717)
!2785 = !DILocation(line: 63, column: 56, scope: !2717)
!2786 = !DILocation(line: 64, column: 30, scope: !2717)
!2787 = !DILocation(line: 65, column: 39, scope: !2717)
!2788 = !DILocation(line: 65, column: 55, scope: !2717)
!2789 = !DILocation(line: 67, column: 7, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2717, file: !522, line: 67, column: 7)
!2791 = !DILocation(line: 67, column: 7, scope: !2717)
!2792 = !DILocation(line: 68, column: 5, scope: !2790)
!2793 = !DILocation(line: 70, column: 5, scope: !2790)
!2794 = !DILocation(line: 84, column: 3, scope: !2717)
!2795 = !DILocation(line: 84, column: 3, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2717, file: !522, discriminator: 1)
!2797 = !DILocation(line: 86, column: 3, scope: !2717)
!2798 = !DILocation(line: 86, column: 3, scope: !2796)
!2799 = !DILocation(line: 95, column: 3, scope: !2717)
!2800 = !DILocation(line: 99, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2717, file: !522, line: 96, column: 5)
!2802 = !DILocation(line: 102, column: 7, scope: !2801)
!2803 = !DILocation(line: 102, column: 7, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !2801, file: !522, discriminator: 1)
!2805 = !DILocation(line: 103, column: 7, scope: !2801)
!2806 = !DILocation(line: 106, column: 7, scope: !2801)
!2807 = !DILocation(line: 106, column: 7, scope: !2804)
!2808 = !DILocation(line: 107, column: 7, scope: !2801)
!2809 = !DILocation(line: 110, column: 7, scope: !2801)
!2810 = !DILocation(line: 110, column: 7, scope: !2804)
!2811 = !DILocation(line: 112, column: 7, scope: !2801)
!2812 = !DILocation(line: 117, column: 7, scope: !2801)
!2813 = !DILocation(line: 117, column: 7, scope: !2804)
!2814 = !DILocation(line: 119, column: 7, scope: !2801)
!2815 = !DILocation(line: 124, column: 7, scope: !2801)
!2816 = !DILocation(line: 124, column: 7, scope: !2804)
!2817 = !DILocation(line: 126, column: 7, scope: !2801)
!2818 = !DILocation(line: 131, column: 7, scope: !2801)
!2819 = !DILocation(line: 131, column: 7, scope: !2804)
!2820 = !DILocation(line: 134, column: 7, scope: !2801)
!2821 = !DILocation(line: 139, column: 7, scope: !2801)
!2822 = !DILocation(line: 139, column: 7, scope: !2804)
!2823 = !DILocation(line: 142, column: 7, scope: !2801)
!2824 = !DILocation(line: 147, column: 7, scope: !2801)
!2825 = !DILocation(line: 147, column: 7, scope: !2804)
!2826 = !DILocation(line: 151, column: 7, scope: !2801)
!2827 = !DILocation(line: 156, column: 7, scope: !2801)
!2828 = !DILocation(line: 156, column: 7, scope: !2804)
!2829 = !DILocation(line: 160, column: 7, scope: !2801)
!2830 = !DILocation(line: 167, column: 7, scope: !2801)
!2831 = !DILocation(line: 167, column: 7, scope: !2804)
!2832 = !DILocation(line: 171, column: 7, scope: !2801)
!2833 = !DILocation(line: 173, column: 1, scope: !2717)
!2834 = distinct !DISubprogram(name: "version_etc_ar", scope: !522, file: !522, line: 180, type: !2835, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{null, !2720, !6, !6, !6, !2775}
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2843}
!2838 = !DILocalVariable(name: "stream", arg: 1, scope: !2834, file: !522, line: 180, type: !2720)
!2839 = !DILocalVariable(name: "command_name", arg: 2, scope: !2834, file: !522, line: 181, type: !6)
!2840 = !DILocalVariable(name: "package", arg: 3, scope: !2834, file: !522, line: 181, type: !6)
!2841 = !DILocalVariable(name: "version", arg: 4, scope: !2834, file: !522, line: 182, type: !6)
!2842 = !DILocalVariable(name: "authors", arg: 5, scope: !2834, file: !522, line: 182, type: !2775)
!2843 = !DILocalVariable(name: "n_authors", scope: !2834, file: !522, line: 184, type: !76)
!2844 = !DILocation(line: 180, column: 23, scope: !2834)
!2845 = !DILocation(line: 181, column: 29, scope: !2834)
!2846 = !DILocation(line: 181, column: 55, scope: !2834)
!2847 = !DILocation(line: 182, column: 29, scope: !2834)
!2848 = !DILocation(line: 182, column: 59, scope: !2834)
!2849 = !DILocation(line: 184, column: 10, scope: !2834)
!2850 = !DILocation(line: 186, column: 8, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2834, file: !522, line: 186, column: 3)
!2852 = !DILocation(line: 186, column: 23, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !2854, file: !522, discriminator: 1)
!2854 = distinct !DILexicalBlock(scope: !2851, file: !522, line: 186, column: 3)
!2855 = !DILocation(line: 186, column: 3, scope: !2856)
!2856 = !DILexicalBlockFile(scope: !2851, file: !522, discriminator: 1)
!2857 = !DILocation(line: 186, column: 52, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !2854, file: !522, discriminator: 3)
!2859 = distinct !{!2859, !2860, !2861}
!2860 = !DILocation(line: 186, column: 3, scope: !2851)
!2861 = !DILocation(line: 187, column: 5, scope: !2851)
!2862 = !DILocation(line: 188, column: 3, scope: !2834)
!2863 = !DILocation(line: 189, column: 1, scope: !2834)
!2864 = distinct !DISubprogram(name: "version_etc_va", scope: !522, file: !522, line: 196, type: !2865, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !2874)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !2720, !6, !6, !6, !2867}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !519, line: 189, size: 192, elements: !2869)
!2869 = !{!2870, !2871, !2872, !2873}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2868, file: !519, line: 189, baseType: !95, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2868, file: !519, line: 189, baseType: !95, size: 32, offset: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2868, file: !519, line: 189, baseType: !31, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2868, file: !519, line: 189, baseType: !31, size: 64, offset: 128)
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880, !2881}
!2875 = !DILocalVariable(name: "stream", arg: 1, scope: !2864, file: !522, line: 196, type: !2720)
!2876 = !DILocalVariable(name: "command_name", arg: 2, scope: !2864, file: !522, line: 197, type: !6)
!2877 = !DILocalVariable(name: "package", arg: 3, scope: !2864, file: !522, line: 197, type: !6)
!2878 = !DILocalVariable(name: "version", arg: 4, scope: !2864, file: !522, line: 198, type: !6)
!2879 = !DILocalVariable(name: "authors", arg: 5, scope: !2864, file: !522, line: 198, type: !2867)
!2880 = !DILocalVariable(name: "n_authors", scope: !2864, file: !522, line: 200, type: !76)
!2881 = !DILocalVariable(name: "authtab", scope: !2864, file: !522, line: 201, type: !2882)
!2882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !85)
!2883 = !DILocation(line: 196, column: 23, scope: !2864)
!2884 = !DILocation(line: 197, column: 29, scope: !2864)
!2885 = !DILocation(line: 197, column: 55, scope: !2864)
!2886 = !DILocation(line: 198, column: 29, scope: !2864)
!2887 = !DILocation(line: 198, column: 46, scope: !2864)
!2888 = !DILocation(line: 201, column: 3, scope: !2864)
!2889 = !DILocation(line: 201, column: 15, scope: !2864)
!2890 = !DILocation(line: 200, column: 10, scope: !2864)
!2891 = !DILocation(line: 205, column: 35, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2893, file: !522, discriminator: 1)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !522, line: 203, column: 3)
!2894 = distinct !DILexicalBlock(scope: !2864, file: !522, line: 203, column: 3)
!2895 = !DILocation(line: 205, column: 35, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !2893, file: !522, discriminator: 2)
!2897 = !DILocation(line: 205, column: 35, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2893, file: !522, discriminator: 3)
!2899 = !DILocation(line: 205, column: 35, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2893, file: !522, discriminator: 4)
!2901 = !DILocation(line: 205, column: 14, scope: !2900)
!2902 = !DILocation(line: 205, column: 33, scope: !2900)
!2903 = !DILocation(line: 205, column: 67, scope: !2900)
!2904 = !DILocation(line: 203, column: 3, scope: !2905)
!2905 = !DILexicalBlockFile(scope: !2894, file: !522, discriminator: 1)
!2906 = !DILocation(line: 208, column: 3, scope: !2864)
!2907 = !DILocation(line: 210, column: 1, scope: !2864)
!2908 = distinct !DISubprogram(name: "version_etc", scope: !522, file: !522, line: 227, type: !2909, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !2720, !6, !6, !6, null}
!2911 = !{!2912, !2913, !2914, !2915, !2916}
!2912 = !DILocalVariable(name: "stream", arg: 1, scope: !2908, file: !522, line: 227, type: !2720)
!2913 = !DILocalVariable(name: "command_name", arg: 2, scope: !2908, file: !522, line: 228, type: !6)
!2914 = !DILocalVariable(name: "package", arg: 3, scope: !2908, file: !522, line: 228, type: !6)
!2915 = !DILocalVariable(name: "version", arg: 4, scope: !2908, file: !522, line: 229, type: !6)
!2916 = !DILocalVariable(name: "authors", scope: !2908, file: !522, line: 231, type: !2917)
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2722, line: 80, baseType: !2918)
!2918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2919, line: 50, baseType: !2920)
!2919 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !519, line: 231, baseType: !2921)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2868, size: 192, elements: !2758)
!2922 = !DILocation(line: 227, column: 20, scope: !2908)
!2923 = !DILocation(line: 228, column: 26, scope: !2908)
!2924 = !DILocation(line: 228, column: 52, scope: !2908)
!2925 = !DILocation(line: 229, column: 26, scope: !2908)
!2926 = !DILocation(line: 231, column: 3, scope: !2908)
!2927 = !DILocation(line: 231, column: 11, scope: !2908)
!2928 = !DILocation(line: 233, column: 3, scope: !2908)
!2929 = !DILocation(line: 234, column: 3, scope: !2908)
!2930 = !DILocation(line: 235, column: 3, scope: !2908)
!2931 = !DILocation(line: 236, column: 1, scope: !2908)
!2932 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !522, file: !522, line: 239, type: !680, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !4)
!2933 = !DILocation(line: 245, column: 3, scope: !2932)
!2934 = !DILocation(line: 245, column: 3, scope: !2935)
!2935 = !DILexicalBlockFile(scope: !2932, file: !522, discriminator: 1)
!2936 = !DILocation(line: 251, column: 3, scope: !2932)
!2937 = !DILocation(line: 251, column: 3, scope: !2935)
!2938 = !DILocation(line: 256, column: 3, scope: !2932)
!2939 = !DILocation(line: 256, column: 3, scope: !2935)
!2940 = !DILocation(line: 258, column: 1, scope: !2932)
!2941 = distinct !DISubprogram(name: "xnmalloc", scope: !530, file: !530, line: 105, type: !2942, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!31, !76, !76}
!2944 = !{!2945, !2946}
!2945 = !DILocalVariable(name: "n", arg: 1, scope: !2941, file: !530, line: 105, type: !76)
!2946 = !DILocalVariable(name: "s", arg: 2, scope: !2941, file: !530, line: 105, type: !76)
!2947 = !DILocation(line: 105, column: 18, scope: !2941)
!2948 = !DILocation(line: 105, column: 28, scope: !2941)
!2949 = !DILocation(line: 107, column: 7, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2941, file: !530, line: 107, column: 7)
!2951 = !DILocation(line: 107, column: 7, scope: !2941)
!2952 = !DILocation(line: 108, column: 5, scope: !2950)
!2953 = !DILocation(line: 109, column: 21, scope: !2941)
!2954 = !DILocalVariable(name: "n", arg: 1, scope: !2955, file: !2956, line: 39, type: !76)
!2955 = distinct !DISubprogram(name: "xmalloc", scope: !2956, file: !2956, line: 39, type: !2957, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !2959)
!2956 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!31, !76}
!2959 = !{!2954, !2960}
!2960 = !DILocalVariable(name: "p", scope: !2955, file: !2956, line: 41, type: !31)
!2961 = !DILocation(line: 39, column: 17, scope: !2955, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 109, column: 10, scope: !2941)
!2963 = !DILocation(line: 41, column: 13, scope: !2955, inlinedAt: !2962)
!2964 = !DILocation(line: 41, column: 9, scope: !2955, inlinedAt: !2962)
!2965 = !DILocation(line: 42, column: 8, scope: !2966, inlinedAt: !2962)
!2966 = distinct !DILexicalBlock(scope: !2955, file: !2956, line: 42, column: 7)
!2967 = !DILocation(line: 42, column: 15, scope: !2968, inlinedAt: !2962)
!2968 = !DILexicalBlockFile(scope: !2966, file: !2956, discriminator: 1)
!2969 = !DILocation(line: 42, column: 10, scope: !2966, inlinedAt: !2962)
!2970 = !DILocation(line: 43, column: 5, scope: !2966, inlinedAt: !2962)
!2971 = !DILocation(line: 109, column: 3, scope: !2941)
!2972 = !DILocation(line: 39, column: 17, scope: !2955)
!2973 = !DILocation(line: 41, column: 13, scope: !2955)
!2974 = !DILocation(line: 41, column: 9, scope: !2955)
!2975 = !DILocation(line: 42, column: 8, scope: !2966)
!2976 = !DILocation(line: 42, column: 15, scope: !2968)
!2977 = !DILocation(line: 42, column: 10, scope: !2966)
!2978 = !DILocation(line: 43, column: 5, scope: !2966)
!2979 = !DILocation(line: 44, column: 3, scope: !2955)
!2980 = distinct !DISubprogram(name: "xnrealloc", scope: !530, file: !530, line: 118, type: !2981, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!31, !31, !76, !76}
!2983 = !{!2984, !2985, !2986}
!2984 = !DILocalVariable(name: "p", arg: 1, scope: !2980, file: !530, line: 118, type: !31)
!2985 = !DILocalVariable(name: "n", arg: 2, scope: !2980, file: !530, line: 118, type: !76)
!2986 = !DILocalVariable(name: "s", arg: 3, scope: !2980, file: !530, line: 118, type: !76)
!2987 = !DILocation(line: 118, column: 18, scope: !2980)
!2988 = !DILocation(line: 118, column: 28, scope: !2980)
!2989 = !DILocation(line: 118, column: 38, scope: !2980)
!2990 = !DILocation(line: 120, column: 7, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2980, file: !530, line: 120, column: 7)
!2992 = !DILocation(line: 120, column: 7, scope: !2980)
!2993 = !DILocation(line: 121, column: 5, scope: !2991)
!2994 = !DILocation(line: 122, column: 25, scope: !2980)
!2995 = !DILocalVariable(name: "p", arg: 1, scope: !2996, file: !2956, line: 51, type: !31)
!2996 = distinct !DISubprogram(name: "xrealloc", scope: !2956, file: !2956, line: 51, type: !2997, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!31, !31, !76}
!2999 = !{!2995, !3000}
!3000 = !DILocalVariable(name: "n", arg: 2, scope: !2996, file: !2956, line: 51, type: !76)
!3001 = !DILocation(line: 51, column: 17, scope: !2996, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 122, column: 10, scope: !2980)
!3003 = !DILocation(line: 51, column: 27, scope: !2996, inlinedAt: !3002)
!3004 = !DILocation(line: 53, column: 8, scope: !3005, inlinedAt: !3002)
!3005 = distinct !DILexicalBlock(scope: !2996, file: !2956, line: 53, column: 7)
!3006 = !DILocation(line: 53, column: 13, scope: !3007, inlinedAt: !3002)
!3007 = !DILexicalBlockFile(scope: !3005, file: !2956, discriminator: 1)
!3008 = !DILocation(line: 53, column: 10, scope: !3005, inlinedAt: !3002)
!3009 = !DILocation(line: 57, column: 7, scope: !3010, inlinedAt: !3002)
!3010 = distinct !DILexicalBlock(scope: !3005, file: !2956, line: 54, column: 5)
!3011 = !DILocation(line: 58, column: 7, scope: !3010, inlinedAt: !3002)
!3012 = !DILocation(line: 61, column: 7, scope: !2996, inlinedAt: !3002)
!3013 = !DILocation(line: 62, column: 8, scope: !3014, inlinedAt: !3002)
!3014 = distinct !DILexicalBlock(scope: !2996, file: !2956, line: 62, column: 7)
!3015 = !DILocation(line: 62, column: 13, scope: !3016, inlinedAt: !3002)
!3016 = !DILexicalBlockFile(scope: !3014, file: !2956, discriminator: 1)
!3017 = !DILocation(line: 62, column: 10, scope: !3014, inlinedAt: !3002)
!3018 = !DILocation(line: 63, column: 5, scope: !3014, inlinedAt: !3002)
!3019 = !DILocation(line: 122, column: 3, scope: !2980)
!3020 = !DILocation(line: 51, column: 17, scope: !2996)
!3021 = !DILocation(line: 51, column: 27, scope: !2996)
!3022 = !DILocation(line: 53, column: 8, scope: !3005)
!3023 = !DILocation(line: 53, column: 13, scope: !3007)
!3024 = !DILocation(line: 53, column: 10, scope: !3005)
!3025 = !DILocation(line: 57, column: 7, scope: !3010)
!3026 = !DILocation(line: 58, column: 7, scope: !3010)
!3027 = !DILocation(line: 61, column: 7, scope: !2996)
!3028 = !DILocation(line: 62, column: 8, scope: !3014)
!3029 = !DILocation(line: 62, column: 13, scope: !3016)
!3030 = !DILocation(line: 62, column: 10, scope: !3014)
!3031 = !DILocation(line: 63, column: 5, scope: !3014)
!3032 = !DILocation(line: 65, column: 1, scope: !2996)
!3033 = !DILocation(line: 180, column: 19, scope: !531)
!3034 = !DILocation(line: 180, column: 30, scope: !531)
!3035 = !DILocation(line: 180, column: 41, scope: !531)
!3036 = !DILocation(line: 182, column: 14, scope: !531)
!3037 = !DILocation(line: 182, column: 10, scope: !531)
!3038 = !DILocation(line: 184, column: 9, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !531, file: !530, line: 184, column: 7)
!3040 = !DILocation(line: 184, column: 7, scope: !531)
!3041 = !DILocation(line: 186, column: 13, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !530, line: 186, column: 11)
!3043 = distinct !DILexicalBlock(scope: !3039, file: !530, line: 185, column: 5)
!3044 = !DILocation(line: 186, column: 11, scope: !3043)
!3045 = !DILocation(line: 194, column: 30, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !530, line: 187, column: 9)
!3047 = !DILocation(line: 195, column: 16, scope: !3046)
!3048 = !DILocation(line: 195, column: 13, scope: !3046)
!3049 = !DILocation(line: 196, column: 9, scope: !3046)
!3050 = !DILocation(line: 204, column: 69, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !530, line: 204, column: 11)
!3052 = distinct !DILexicalBlock(scope: !3039, file: !530, line: 199, column: 5)
!3053 = !DILocation(line: 205, column: 11, scope: !3051)
!3054 = !DILocation(line: 204, column: 11, scope: !3052)
!3055 = !DILocation(line: 206, column: 9, scope: !3051)
!3056 = !DILocation(line: 210, column: 7, scope: !531)
!3057 = !DILocation(line: 211, column: 25, scope: !531)
!3058 = !DILocation(line: 51, column: 17, scope: !2996, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 211, column: 10, scope: !531)
!3060 = !DILocation(line: 51, column: 27, scope: !2996, inlinedAt: !3059)
!3061 = !DILocation(line: 53, column: 10, scope: !3005, inlinedAt: !3059)
!3062 = !DILocation(line: 207, column: 14, scope: !3052)
!3063 = !DILocation(line: 207, column: 18, scope: !3052)
!3064 = !DILocation(line: 207, column: 9, scope: !3052)
!3065 = !DILocation(line: 53, column: 8, scope: !3005, inlinedAt: !3059)
!3066 = !DILocation(line: 57, column: 7, scope: !3010, inlinedAt: !3059)
!3067 = !DILocation(line: 58, column: 7, scope: !3010, inlinedAt: !3059)
!3068 = !DILocation(line: 61, column: 7, scope: !2996, inlinedAt: !3059)
!3069 = !DILocation(line: 62, column: 8, scope: !3014, inlinedAt: !3059)
!3070 = !DILocation(line: 62, column: 13, scope: !3016, inlinedAt: !3059)
!3071 = !DILocation(line: 62, column: 10, scope: !3014, inlinedAt: !3059)
!3072 = !DILocation(line: 63, column: 5, scope: !3014, inlinedAt: !3059)
!3073 = !DILocation(line: 211, column: 3, scope: !531)
!3074 = distinct !DISubprogram(name: "xcharalloc", scope: !530, file: !530, line: 220, type: !1989, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3075)
!3075 = !{!3076}
!3076 = !DILocalVariable(name: "n", arg: 1, scope: !3074, file: !530, line: 220, type: !76)
!3077 = !DILocation(line: 220, column: 20, scope: !3074)
!3078 = !DILocation(line: 39, column: 17, scope: !2955, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 222, column: 10, scope: !3074)
!3080 = !DILocation(line: 41, column: 13, scope: !2955, inlinedAt: !3079)
!3081 = !DILocation(line: 41, column: 9, scope: !2955, inlinedAt: !3079)
!3082 = !DILocation(line: 42, column: 8, scope: !2966, inlinedAt: !3079)
!3083 = !DILocation(line: 42, column: 15, scope: !2968, inlinedAt: !3079)
!3084 = !DILocation(line: 42, column: 10, scope: !2966, inlinedAt: !3079)
!3085 = !DILocation(line: 43, column: 5, scope: !2966, inlinedAt: !3079)
!3086 = !DILocation(line: 222, column: 3, scope: !3074)
!3087 = distinct !DISubprogram(name: "x2realloc", scope: !2956, file: !2956, line: 74, type: !3088, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!31, !31, !534}
!3090 = !{!3091, !3092}
!3091 = !DILocalVariable(name: "p", arg: 1, scope: !3087, file: !2956, line: 74, type: !31)
!3092 = !DILocalVariable(name: "pn", arg: 2, scope: !3087, file: !2956, line: 74, type: !534)
!3093 = !DILocation(line: 74, column: 18, scope: !3087)
!3094 = !DILocation(line: 74, column: 29, scope: !3087)
!3095 = !DILocation(line: 180, column: 19, scope: !531, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 76, column: 10, scope: !3087)
!3097 = !DILocation(line: 180, column: 30, scope: !531, inlinedAt: !3096)
!3098 = !DILocation(line: 180, column: 41, scope: !531, inlinedAt: !3096)
!3099 = !DILocation(line: 182, column: 14, scope: !531, inlinedAt: !3096)
!3100 = !DILocation(line: 182, column: 10, scope: !531, inlinedAt: !3096)
!3101 = !DILocation(line: 184, column: 9, scope: !3039, inlinedAt: !3096)
!3102 = !DILocation(line: 184, column: 7, scope: !531, inlinedAt: !3096)
!3103 = !DILocation(line: 186, column: 13, scope: !3042, inlinedAt: !3096)
!3104 = !DILocation(line: 186, column: 11, scope: !3043, inlinedAt: !3096)
!3105 = !DILocation(line: 210, column: 7, scope: !531, inlinedAt: !3096)
!3106 = !DILocation(line: 51, column: 17, scope: !2996, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 211, column: 10, scope: !531, inlinedAt: !3096)
!3108 = !DILocation(line: 51, column: 27, scope: !2996, inlinedAt: !3107)
!3109 = !DILocation(line: 53, column: 10, scope: !3005, inlinedAt: !3107)
!3110 = !DILocation(line: 205, column: 11, scope: !3051, inlinedAt: !3096)
!3111 = !DILocation(line: 204, column: 11, scope: !3052, inlinedAt: !3096)
!3112 = !DILocation(line: 206, column: 9, scope: !3051, inlinedAt: !3096)
!3113 = !DILocation(line: 207, column: 14, scope: !3052, inlinedAt: !3096)
!3114 = !DILocation(line: 207, column: 18, scope: !3052, inlinedAt: !3096)
!3115 = !DILocation(line: 207, column: 9, scope: !3052, inlinedAt: !3096)
!3116 = !DILocation(line: 53, column: 8, scope: !3005, inlinedAt: !3107)
!3117 = !DILocation(line: 57, column: 7, scope: !3010, inlinedAt: !3107)
!3118 = !DILocation(line: 58, column: 7, scope: !3010, inlinedAt: !3107)
!3119 = !DILocation(line: 61, column: 7, scope: !2996, inlinedAt: !3107)
!3120 = !DILocation(line: 62, column: 8, scope: !3014, inlinedAt: !3107)
!3121 = !DILocation(line: 62, column: 13, scope: !3016, inlinedAt: !3107)
!3122 = !DILocation(line: 62, column: 10, scope: !3014, inlinedAt: !3107)
!3123 = !DILocation(line: 63, column: 5, scope: !3014, inlinedAt: !3107)
!3124 = !DILocation(line: 76, column: 3, scope: !3087)
!3125 = distinct !DISubprogram(name: "xzalloc", scope: !2956, file: !2956, line: 84, type: !2957, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3126)
!3126 = !{!3127}
!3127 = !DILocalVariable(name: "s", arg: 1, scope: !3125, file: !2956, line: 84, type: !76)
!3128 = !DILocation(line: 84, column: 17, scope: !3125)
!3129 = !DILocation(line: 39, column: 17, scope: !2955, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 86, column: 18, scope: !3125)
!3131 = !DILocation(line: 41, column: 13, scope: !2955, inlinedAt: !3130)
!3132 = !DILocation(line: 41, column: 9, scope: !2955, inlinedAt: !3130)
!3133 = !DILocation(line: 42, column: 8, scope: !2966, inlinedAt: !3130)
!3134 = !DILocation(line: 42, column: 15, scope: !2968, inlinedAt: !3130)
!3135 = !DILocation(line: 42, column: 10, scope: !2966, inlinedAt: !3130)
!3136 = !DILocation(line: 43, column: 5, scope: !2966, inlinedAt: !3130)
!3137 = !DILocation(line: 86, column: 10, scope: !3125)
!3138 = !DILocation(line: 86, column: 3, scope: !3125)
!3139 = distinct !DISubprogram(name: "xcalloc", scope: !2956, file: !2956, line: 93, type: !2942, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3140)
!3140 = !{!3141, !3142, !3143}
!3141 = !DILocalVariable(name: "n", arg: 1, scope: !3139, file: !2956, line: 93, type: !76)
!3142 = !DILocalVariable(name: "s", arg: 2, scope: !3139, file: !2956, line: 93, type: !76)
!3143 = !DILocalVariable(name: "p", scope: !3139, file: !2956, line: 95, type: !31)
!3144 = !DILocation(line: 93, column: 17, scope: !3139)
!3145 = !DILocation(line: 93, column: 27, scope: !3139)
!3146 = !DILocation(line: 100, column: 7, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3139, file: !2956, line: 100, column: 7)
!3148 = !DILocation(line: 101, column: 7, scope: !3147)
!3149 = !DILocation(line: 101, column: 18, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !3147, file: !2956, discriminator: 1)
!3151 = !DILocation(line: 95, column: 9, scope: !3139)
!3152 = !DILocation(line: 101, column: 16, scope: !3150)
!3153 = !DILocation(line: 100, column: 7, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !3139, file: !2956, discriminator: 1)
!3155 = !DILocation(line: 102, column: 5, scope: !3147)
!3156 = !DILocation(line: 103, column: 3, scope: !3139)
!3157 = distinct !DISubprogram(name: "xmemdup", scope: !2956, file: !2956, line: 111, type: !3158, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!31, !483, !76}
!3160 = !{!3161, !3162}
!3161 = !DILocalVariable(name: "p", arg: 1, scope: !3157, file: !2956, line: 111, type: !483)
!3162 = !DILocalVariable(name: "s", arg: 2, scope: !3157, file: !2956, line: 111, type: !76)
!3163 = !DILocation(line: 111, column: 22, scope: !3157)
!3164 = !DILocation(line: 111, column: 32, scope: !3157)
!3165 = !DILocation(line: 39, column: 17, scope: !2955, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 113, column: 18, scope: !3157)
!3167 = !DILocation(line: 41, column: 13, scope: !2955, inlinedAt: !3166)
!3168 = !DILocation(line: 41, column: 9, scope: !2955, inlinedAt: !3166)
!3169 = !DILocation(line: 42, column: 8, scope: !2966, inlinedAt: !3166)
!3170 = !DILocation(line: 42, column: 15, scope: !2968, inlinedAt: !3166)
!3171 = !DILocation(line: 42, column: 10, scope: !2966, inlinedAt: !3166)
!3172 = !DILocation(line: 43, column: 5, scope: !2966, inlinedAt: !3166)
!3173 = !DILocation(line: 113, column: 10, scope: !3157)
!3174 = !DILocation(line: 113, column: 3, scope: !3157)
!3175 = distinct !DISubprogram(name: "xstrdup", scope: !2956, file: !2956, line: 119, type: !2196, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !526, variables: !3176)
!3176 = !{!3177}
!3177 = !DILocalVariable(name: "string", arg: 1, scope: !3175, file: !2956, line: 119, type: !6)
!3178 = !DILocation(line: 119, column: 22, scope: !3175)
!3179 = !DILocation(line: 121, column: 27, scope: !3175)
!3180 = !DILocation(line: 121, column: 43, scope: !3175)
!3181 = !DILocation(line: 111, column: 22, scope: !3157, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 121, column: 10, scope: !3183)
!3183 = !DILexicalBlockFile(scope: !3175, file: !2956, discriminator: 1)
!3184 = !DILocation(line: 111, column: 32, scope: !3157, inlinedAt: !3182)
!3185 = !DILocation(line: 39, column: 17, scope: !2955, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 113, column: 18, scope: !3157, inlinedAt: !3182)
!3187 = !DILocation(line: 41, column: 13, scope: !2955, inlinedAt: !3186)
!3188 = !DILocation(line: 41, column: 9, scope: !2955, inlinedAt: !3186)
!3189 = !DILocation(line: 42, column: 8, scope: !2966, inlinedAt: !3186)
!3190 = !DILocation(line: 42, column: 15, scope: !2968, inlinedAt: !3186)
!3191 = !DILocation(line: 42, column: 10, scope: !2966, inlinedAt: !3186)
!3192 = !DILocation(line: 43, column: 5, scope: !2966, inlinedAt: !3186)
!3193 = !DILocation(line: 113, column: 10, scope: !3157, inlinedAt: !3182)
!3194 = !DILocation(line: 121, column: 3, scope: !3175)
!3195 = distinct !DISubprogram(name: "xalloc_die", scope: !3196, file: !3196, line: 32, type: !680, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !543, variables: !4)
!3196 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3197 = !DILocation(line: 34, column: 10, scope: !3195)
!3198 = !DILocation(line: 34, column: 33, scope: !3195)
!3199 = !DILocation(line: 34, column: 3, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3195, file: !3196, discriminator: 1)
!3201 = !DILocation(line: 40, column: 3, scope: !3195)
!3202 = distinct !DISubprogram(name: "rpl_calloc", scope: !3203, file: !3203, line: 42, type: !2942, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !545, variables: !3204)
!3203 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3204 = !{!3205, !3206, !3207, !3208}
!3205 = !DILocalVariable(name: "n", arg: 1, scope: !3202, file: !3203, line: 42, type: !76)
!3206 = !DILocalVariable(name: "s", arg: 2, scope: !3202, file: !3203, line: 42, type: !76)
!3207 = !DILocalVariable(name: "result", scope: !3202, file: !3203, line: 44, type: !31)
!3208 = !DILocalVariable(name: "bytes", scope: !3209, file: !3203, line: 56, type: !76)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !3203, line: 53, column: 5)
!3210 = distinct !DILexicalBlock(scope: !3202, file: !3203, line: 47, column: 7)
!3211 = !DILocation(line: 42, column: 20, scope: !3202)
!3212 = !DILocation(line: 42, column: 30, scope: !3202)
!3213 = !DILocation(line: 47, column: 9, scope: !3210)
!3214 = !DILocation(line: 47, column: 19, scope: !3215)
!3215 = !DILexicalBlockFile(scope: !3210, file: !3203, discriminator: 1)
!3216 = !DILocation(line: 47, column: 14, scope: !3210)
!3217 = !DILocation(line: 56, column: 24, scope: !3209)
!3218 = !DILocation(line: 56, column: 14, scope: !3209)
!3219 = !DILocation(line: 57, column: 17, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3209, file: !3203, line: 57, column: 11)
!3221 = !DILocation(line: 57, column: 21, scope: !3220)
!3222 = !DILocation(line: 57, column: 11, scope: !3209)
!3223 = !DILocation(line: 59, column: 11, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !3203, line: 58, column: 9)
!3225 = !DILocation(line: 59, column: 17, scope: !3224)
!3226 = !DILocation(line: 65, column: 12, scope: !3202)
!3227 = !DILocation(line: 44, column: 9, scope: !3202)
!3228 = !DILocation(line: 72, column: 3, scope: !3202)
!3229 = !DILocation(line: 73, column: 1, scope: !3202)
!3230 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3231, file: !3231, line: 334, type: !3232, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !3246)
!3231 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!76, !3234, !6, !76, !3235}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !958, line: 107, baseType: !3237)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !958, line: 95, baseType: !3238)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !958, line: 83, size: 64, elements: !3239)
!3239 = !{!3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3238, file: !958, line: 85, baseType: !25, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3238, file: !958, line: 94, baseType: !3242, size: 32, offset: 32)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3238, file: !958, line: 86, size: 32, elements: !3243)
!3243 = !{!3244, !3245}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3242, file: !958, line: 89, baseType: !95, size: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3242, file: !958, line: 93, baseType: !968, size: 32)
!3246 = !{!3247, !3248, !3249, !3250, !3251, !3252, !3253}
!3247 = !DILocalVariable(name: "pwc", arg: 1, scope: !3230, file: !3231, line: 334, type: !3234)
!3248 = !DILocalVariable(name: "s", arg: 2, scope: !3230, file: !3231, line: 334, type: !6)
!3249 = !DILocalVariable(name: "n", arg: 3, scope: !3230, file: !3231, line: 334, type: !76)
!3250 = !DILocalVariable(name: "ps", arg: 4, scope: !3230, file: !3231, line: 334, type: !3235)
!3251 = !DILocalVariable(name: "ret", scope: !3230, file: !3231, line: 336, type: !76)
!3252 = !DILocalVariable(name: "wc", scope: !3230, file: !3231, line: 337, type: !973)
!3253 = !DILocalVariable(name: "uc", scope: !3254, file: !3231, line: 398, type: !476)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !3231, line: 397, column: 5)
!3255 = distinct !DILexicalBlock(scope: !3230, file: !3231, line: 396, column: 7)
!3256 = !DILocation(line: 334, column: 23, scope: !3230)
!3257 = !DILocation(line: 334, column: 40, scope: !3230)
!3258 = !DILocation(line: 334, column: 50, scope: !3230)
!3259 = !DILocation(line: 334, column: 64, scope: !3230)
!3260 = !DILocation(line: 337, column: 3, scope: !3230)
!3261 = !DILocation(line: 353, column: 9, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3230, file: !3231, line: 353, column: 7)
!3263 = !DILocation(line: 353, column: 7, scope: !3230)
!3264 = !DILocation(line: 388, column: 9, scope: !3230)
!3265 = !DILocation(line: 336, column: 10, scope: !3230)
!3266 = !DILocation(line: 396, column: 19, scope: !3255)
!3267 = !DILocation(line: 396, column: 31, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !3255, file: !3231, discriminator: 1)
!3269 = !DILocation(line: 396, column: 26, scope: !3255)
!3270 = !DILocation(line: 396, column: 41, scope: !3271)
!3271 = !DILexicalBlockFile(scope: !3255, file: !3231, discriminator: 2)
!3272 = !DILocation(line: 396, column: 7, scope: !3273)
!3273 = !DILexicalBlockFile(scope: !3230, file: !3231, discriminator: 2)
!3274 = !DILocation(line: 398, column: 26, scope: !3254)
!3275 = !DILocation(line: 398, column: 21, scope: !3254)
!3276 = !DILocation(line: 399, column: 14, scope: !3254)
!3277 = !DILocation(line: 399, column: 12, scope: !3254)
!3278 = !DILocation(line: 405, column: 1, scope: !3230)
!3279 = distinct !DISubprogram(name: "close_stream", scope: !3280, file: !3280, line: 56, type: !3281, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3323)
!3280 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!25, !3283}
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2722, line: 49, baseType: !3285)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2724, line: 241, size: 1728, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3285, file: !2724, line: 242, baseType: !25, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3285, file: !2724, line: 247, baseType: !32, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3285, file: !2724, line: 248, baseType: !32, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3285, file: !2724, line: 249, baseType: !32, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3285, file: !2724, line: 250, baseType: !32, size: 64, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3285, file: !2724, line: 251, baseType: !32, size: 64, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3285, file: !2724, line: 252, baseType: !32, size: 64, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3285, file: !2724, line: 253, baseType: !32, size: 64, offset: 448)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3285, file: !2724, line: 254, baseType: !32, size: 64, offset: 512)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3285, file: !2724, line: 256, baseType: !32, size: 64, offset: 576)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3285, file: !2724, line: 257, baseType: !32, size: 64, offset: 640)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3285, file: !2724, line: 258, baseType: !32, size: 64, offset: 704)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3285, file: !2724, line: 260, baseType: !3300, size: 64, offset: 768)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2724, line: 156, size: 192, elements: !3302)
!3302 = !{!3303, !3304, !3306}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3301, file: !2724, line: 157, baseType: !3300, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3301, file: !2724, line: 158, baseType: !3305, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3301, file: !2724, line: 162, baseType: !25, size: 32, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3285, file: !2724, line: 262, baseType: !3305, size: 64, offset: 832)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3285, file: !2724, line: 264, baseType: !25, size: 32, offset: 896)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3285, file: !2724, line: 268, baseType: !25, size: 32, offset: 928)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3285, file: !2724, line: 270, baseType: !2750, size: 64, offset: 960)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3285, file: !2724, line: 274, baseType: !75, size: 16, offset: 1024)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3285, file: !2724, line: 275, baseType: !2755, size: 8, offset: 1040)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3285, file: !2724, line: 276, baseType: !2757, size: 8, offset: 1048)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3285, file: !2724, line: 280, baseType: !2761, size: 64, offset: 1088)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3285, file: !2724, line: 289, baseType: !2764, size: 64, offset: 1152)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3285, file: !2724, line: 297, baseType: !31, size: 64, offset: 1216)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3285, file: !2724, line: 298, baseType: !31, size: 64, offset: 1280)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3285, file: !2724, line: 299, baseType: !31, size: 64, offset: 1344)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3285, file: !2724, line: 300, baseType: !31, size: 64, offset: 1408)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3285, file: !2724, line: 302, baseType: !76, size: 64, offset: 1472)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3285, file: !2724, line: 303, baseType: !25, size: 32, offset: 1536)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3285, file: !2724, line: 305, baseType: !2772, size: 160, offset: 1568)
!3323 = !{!3324, !3325, !3327, !3328}
!3324 = !DILocalVariable(name: "stream", arg: 1, scope: !3279, file: !3280, line: 56, type: !3283)
!3325 = !DILocalVariable(name: "some_pending", scope: !3279, file: !3280, line: 58, type: !3326)
!3326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3327 = !DILocalVariable(name: "prev_fail", scope: !3279, file: !3280, line: 59, type: !3326)
!3328 = !DILocalVariable(name: "fclose_fail", scope: !3279, file: !3280, line: 60, type: !3326)
!3329 = !DILocation(line: 56, column: 21, scope: !3279)
!3330 = !DILocation(line: 58, column: 30, scope: !3279)
!3331 = !DILocalVariable(name: "__stream", arg: 1, scope: !3332, file: !3333, line: 132, type: !3283)
!3332 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3333, file: !3333, line: 132, type: !3281, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !3334)
!3333 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3334 = !{!3331}
!3335 = !DILocation(line: 132, column: 1, scope: !3332, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 59, column: 27, scope: !3279)
!3337 = !DILocation(line: 134, column: 10, scope: !3332, inlinedAt: !3336)
!3338 = !{!3339, !699, i64 0}
!3339 = !{!"_IO_FILE", !699, i64 0, !575, i64 8, !575, i64 16, !575, i64 24, !575, i64 32, !575, i64 40, !575, i64 48, !575, i64 56, !575, i64 64, !575, i64 72, !575, i64 80, !575, i64 88, !575, i64 96, !575, i64 104, !699, i64 112, !699, i64 116, !2034, i64 120, !1326, i64 128, !576, i64 130, !576, i64 131, !575, i64 136, !2034, i64 144, !575, i64 152, !575, i64 160, !575, i64 168, !575, i64 176, !2034, i64 184, !699, i64 192, !576, i64 196}
!3340 = !DILocation(line: 59, column: 43, scope: !3279)
!3341 = !DILocation(line: 60, column: 29, scope: !3279)
!3342 = !DILocation(line: 60, column: 45, scope: !3279)
!3343 = !DILocation(line: 70, column: 17, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3279, file: !3280, line: 70, column: 7)
!3345 = !DILocation(line: 70, column: 33, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3344, file: !3280, discriminator: 1)
!3347 = !DILocation(line: 70, column: 53, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !3344, file: !3280, discriminator: 3)
!3349 = !DILocation(line: 70, column: 7, scope: !3350)
!3350 = !DILexicalBlockFile(scope: !3279, file: !3280, discriminator: 3)
!3351 = !DILocation(line: 72, column: 11, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3344, file: !3280, line: 71, column: 5)
!3353 = !DILocation(line: 73, column: 9, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3352, file: !3280, line: 72, column: 11)
!3355 = !DILocation(line: 73, column: 15, scope: !3354)
!3356 = !DILocation(line: 78, column: 1, scope: !3279)
!3357 = distinct !DISubprogram(name: "hard_locale", scope: !3358, file: !3358, line: 38, type: !3359, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3361)
!3358 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!17, !25}
!3361 = !{!3362, !3363, !3364, !3365, !3372, !3373, !3375, !3376, !3378, !3379, !3381}
!3362 = !DILocalVariable(name: "category", arg: 1, scope: !3357, file: !3358, line: 38, type: !25)
!3363 = !DILocalVariable(name: "hard", scope: !3357, file: !3358, line: 40, type: !17)
!3364 = !DILocalVariable(name: "p", scope: !3357, file: !3358, line: 41, type: !6)
!3365 = !DILocalVariable(name: "__s1_len", scope: !3366, file: !3358, line: 47, type: !76)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !3358, line: 47, column: 15)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !3358, line: 47, column: 15)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !3358, line: 46, column: 9)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3358, line: 45, column: 11)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !3358, line: 44, column: 5)
!3371 = distinct !DILexicalBlock(scope: !3357, file: !3358, line: 43, column: 7)
!3372 = !DILocalVariable(name: "__s2_len", scope: !3366, file: !3358, line: 47, type: !76)
!3373 = !DILocalVariable(name: "__s2", scope: !3374, file: !3358, line: 47, type: !485)
!3374 = distinct !DILexicalBlock(scope: !3366, file: !3358, line: 47, column: 15)
!3375 = !DILocalVariable(name: "__result", scope: !3374, file: !3358, line: 47, type: !25)
!3376 = !DILocalVariable(name: "__s1_len", scope: !3377, file: !3358, line: 47, type: !76)
!3377 = distinct !DILexicalBlock(scope: !3367, file: !3358, line: 47, column: 39)
!3378 = !DILocalVariable(name: "__s2_len", scope: !3377, file: !3358, line: 47, type: !76)
!3379 = !DILocalVariable(name: "__s2", scope: !3380, file: !3358, line: 47, type: !485)
!3380 = distinct !DILexicalBlock(scope: !3377, file: !3358, line: 47, column: 39)
!3381 = !DILocalVariable(name: "__result", scope: !3380, file: !3358, line: 47, type: !25)
!3382 = !DILocation(line: 38, column: 18, scope: !3357)
!3383 = !DILocation(line: 40, column: 8, scope: !3357)
!3384 = !DILocation(line: 41, column: 19, scope: !3357)
!3385 = !DILocation(line: 41, column: 15, scope: !3357)
!3386 = !DILocation(line: 43, column: 7, scope: !3371)
!3387 = !DILocation(line: 43, column: 7, scope: !3357)
!3388 = !DILocation(line: 47, column: 15, scope: !3366)
!3389 = !DILocation(line: 47, column: 15, scope: !3374)
!3390 = !DILocation(line: 47, column: 15, scope: !3391)
!3391 = !DILexicalBlockFile(scope: !3374, file: !3358, discriminator: 2)
!3392 = !DILocation(line: 47, column: 15, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !3394, file: !3358, discriminator: 3)
!3394 = distinct !DILexicalBlock(scope: !3374, file: !3358, line: 47, column: 15)
!3395 = !DILocation(line: 47, column: 15, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3394, file: !3358, discriminator: 2)
!3397 = !DILocation(line: 47, column: 15, scope: !3398)
!3398 = !DILexicalBlockFile(scope: !3399, file: !3358, discriminator: 4)
!3399 = distinct !DILexicalBlock(scope: !3394, file: !3358, line: 47, column: 15)
!3400 = !DILocation(line: 47, column: 15, scope: !3401)
!3401 = !DILexicalBlockFile(scope: !3366, file: !3358, discriminator: 11)
!3402 = !DILocation(line: 47, column: 36, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3367, file: !3358, discriminator: 13)
!3404 = !DILocation(line: 47, column: 39, scope: !3377)
!3405 = !DILocation(line: 47, column: 39, scope: !3406)
!3406 = !DILexicalBlockFile(scope: !3377, file: !3358, discriminator: 26)
!3407 = !DILocation(line: 47, column: 59, scope: !3408)
!3408 = !DILexicalBlockFile(scope: !3367, file: !3358, discriminator: 27)
!3409 = !DILocation(line: 47, column: 15, scope: !3410)
!3410 = !DILexicalBlockFile(scope: !3368, file: !3358, discriminator: 27)
!3411 = !DILocation(line: 48, column: 13, scope: !3367)
!3412 = !DILocation(line: 71, column: 3, scope: !3357)
!3413 = distinct !DISubprogram(name: "locale_charset", scope: !478, file: !478, line: 393, type: !3414, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!6}
!3416 = !{!3417, !3418, !3419, !3424}
!3417 = !DILocalVariable(name: "codeset", scope: !3413, file: !478, line: 395, type: !6)
!3418 = !DILocalVariable(name: "aliases", scope: !3413, file: !478, line: 396, type: !6)
!3419 = !DILocalVariable(name: "__s1_len", scope: !3420, file: !478, line: 592, type: !76)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !478, line: 592, column: 9)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !478, line: 592, column: 9)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !478, line: 589, column: 3)
!3423 = distinct !DILexicalBlock(scope: !3413, file: !478, line: 589, column: 3)
!3424 = !DILocalVariable(name: "__s2_len", scope: !3420, file: !478, line: 592, type: !76)
!3425 = !DILocalVariable(name: "buf1", scope: !3426, file: !478, line: 196, type: !3493)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !478, line: 194, column: 21)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !478, line: 193, column: 19)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !478, line: 193, column: 19)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !478, line: 188, column: 17)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !478, line: 181, column: 19)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !478, line: 177, column: 13)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !478, line: 173, column: 15)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !478, line: 161, column: 9)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !478, line: 157, column: 11)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !478, line: 130, column: 5)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !478, line: 129, column: 7)
!3437 = distinct !DISubprogram(name: "get_charset_aliases", scope: !478, file: !478, line: 124, type: !3414, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3438)
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3445, !3446, !3447, !3448, !3489, !3490, !3491, !3425, !3492, !3496, !3497, !3498}
!3439 = !DILocalVariable(name: "cp", scope: !3437, file: !478, line: 126, type: !6)
!3440 = !DILocalVariable(name: "dir", scope: !3435, file: !478, line: 132, type: !6)
!3441 = !DILocalVariable(name: "base", scope: !3435, file: !478, line: 133, type: !6)
!3442 = !DILocalVariable(name: "file_name", scope: !3435, file: !478, line: 134, type: !32)
!3443 = !DILocalVariable(name: "dir_len", scope: !3444, file: !478, line: 144, type: !76)
!3444 = distinct !DILexicalBlock(scope: !3435, file: !478, line: 143, column: 7)
!3445 = !DILocalVariable(name: "base_len", scope: !3444, file: !478, line: 145, type: !76)
!3446 = !DILocalVariable(name: "add_slash", scope: !3444, file: !478, line: 146, type: !25)
!3447 = !DILocalVariable(name: "fd", scope: !3433, file: !478, line: 162, type: !25)
!3448 = !DILocalVariable(name: "fp", scope: !3431, file: !478, line: 178, type: !3449)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2722, line: 49, baseType: !3451)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2724, line: 241, size: 1728, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3451, file: !2724, line: 242, baseType: !25, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3451, file: !2724, line: 247, baseType: !32, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3451, file: !2724, line: 248, baseType: !32, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3451, file: !2724, line: 249, baseType: !32, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3451, file: !2724, line: 250, baseType: !32, size: 64, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3451, file: !2724, line: 251, baseType: !32, size: 64, offset: 320)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3451, file: !2724, line: 252, baseType: !32, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3451, file: !2724, line: 253, baseType: !32, size: 64, offset: 448)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3451, file: !2724, line: 254, baseType: !32, size: 64, offset: 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3451, file: !2724, line: 256, baseType: !32, size: 64, offset: 576)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3451, file: !2724, line: 257, baseType: !32, size: 64, offset: 640)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3451, file: !2724, line: 258, baseType: !32, size: 64, offset: 704)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3451, file: !2724, line: 260, baseType: !3466, size: 64, offset: 768)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2724, line: 156, size: 192, elements: !3468)
!3468 = !{!3469, !3470, !3472}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3467, file: !2724, line: 157, baseType: !3466, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3467, file: !2724, line: 158, baseType: !3471, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3467, file: !2724, line: 162, baseType: !25, size: 32, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3451, file: !2724, line: 262, baseType: !3471, size: 64, offset: 832)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3451, file: !2724, line: 264, baseType: !25, size: 32, offset: 896)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3451, file: !2724, line: 268, baseType: !25, size: 32, offset: 928)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3451, file: !2724, line: 270, baseType: !2750, size: 64, offset: 960)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3451, file: !2724, line: 274, baseType: !75, size: 16, offset: 1024)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3451, file: !2724, line: 275, baseType: !2755, size: 8, offset: 1040)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3451, file: !2724, line: 276, baseType: !2757, size: 8, offset: 1048)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3451, file: !2724, line: 280, baseType: !2761, size: 64, offset: 1088)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3451, file: !2724, line: 289, baseType: !2764, size: 64, offset: 1152)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3451, file: !2724, line: 297, baseType: !31, size: 64, offset: 1216)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3451, file: !2724, line: 298, baseType: !31, size: 64, offset: 1280)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3451, file: !2724, line: 299, baseType: !31, size: 64, offset: 1344)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3451, file: !2724, line: 300, baseType: !31, size: 64, offset: 1408)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3451, file: !2724, line: 302, baseType: !76, size: 64, offset: 1472)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3451, file: !2724, line: 303, baseType: !25, size: 32, offset: 1536)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3451, file: !2724, line: 305, baseType: !2772, size: 160, offset: 1568)
!3489 = !DILocalVariable(name: "res_ptr", scope: !3429, file: !478, line: 190, type: !32)
!3490 = !DILocalVariable(name: "res_size", scope: !3429, file: !478, line: 191, type: !76)
!3491 = !DILocalVariable(name: "c", scope: !3426, file: !478, line: 195, type: !25)
!3492 = !DILocalVariable(name: "buf2", scope: !3426, file: !478, line: 197, type: !3493)
!3493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3494)
!3494 = !{!3495}
!3495 = !DISubrange(count: 51)
!3496 = !DILocalVariable(name: "l1", scope: !3426, file: !478, line: 198, type: !76)
!3497 = !DILocalVariable(name: "l2", scope: !3426, file: !478, line: 198, type: !76)
!3498 = !DILocalVariable(name: "old_res_ptr", scope: !3426, file: !478, line: 199, type: !32)
!3499 = !DILocation(line: 196, column: 28, scope: !3426, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 589, column: 18, scope: !3423)
!3501 = !DILocation(line: 197, column: 28, scope: !3426, inlinedAt: !3500)
!3502 = !DILocation(line: 403, column: 13, scope: !3413)
!3503 = !DILocation(line: 395, column: 15, scope: !3413)
!3504 = !DILocation(line: 584, column: 15, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3413, file: !478, line: 584, column: 7)
!3506 = !DILocation(line: 584, column: 7, scope: !3413)
!3507 = !DILocation(line: 128, column: 8, scope: !3437, inlinedAt: !3500)
!3508 = !DILocation(line: 126, column: 15, scope: !3437, inlinedAt: !3500)
!3509 = !DILocation(line: 129, column: 10, scope: !3436, inlinedAt: !3500)
!3510 = !DILocation(line: 129, column: 7, scope: !3437, inlinedAt: !3500)
!3511 = !DILocation(line: 138, column: 13, scope: !3435, inlinedAt: !3500)
!3512 = !DILocation(line: 132, column: 19, scope: !3435, inlinedAt: !3500)
!3513 = !DILocation(line: 139, column: 15, scope: !3514, inlinedAt: !3500)
!3514 = distinct !DILexicalBlock(scope: !3435, file: !478, line: 139, column: 11)
!3515 = !DILocation(line: 139, column: 23, scope: !3514, inlinedAt: !3500)
!3516 = !DILocation(line: 139, column: 26, scope: !3517, inlinedAt: !3500)
!3517 = !DILexicalBlockFile(scope: !3514, file: !478, discriminator: 1)
!3518 = !DILocation(line: 139, column: 33, scope: !3517, inlinedAt: !3500)
!3519 = !DILocation(line: 139, column: 11, scope: !3520, inlinedAt: !3500)
!3520 = !DILexicalBlockFile(scope: !3435, file: !478, discriminator: 1)
!3521 = !DILocation(line: 140, column: 9, scope: !3514, inlinedAt: !3500)
!3522 = !DILocation(line: 144, column: 26, scope: !3444, inlinedAt: !3500)
!3523 = !DILocation(line: 144, column: 16, scope: !3444, inlinedAt: !3500)
!3524 = !DILocation(line: 145, column: 16, scope: !3444, inlinedAt: !3500)
!3525 = !DILocation(line: 146, column: 34, scope: !3444, inlinedAt: !3500)
!3526 = !DILocation(line: 146, column: 38, scope: !3444, inlinedAt: !3500)
!3527 = !DILocation(line: 146, column: 42, scope: !3528, inlinedAt: !3500)
!3528 = !DILexicalBlockFile(scope: !3444, file: !478, discriminator: 1)
!3529 = !DILocation(line: 146, column: 41, scope: !3528, inlinedAt: !3500)
!3530 = !DILocation(line: 147, column: 48, scope: !3444, inlinedAt: !3500)
!3531 = !DILocation(line: 147, column: 46, scope: !3444, inlinedAt: !3500)
!3532 = !DILocation(line: 147, column: 69, scope: !3444, inlinedAt: !3500)
!3533 = !DILocation(line: 147, column: 30, scope: !3444, inlinedAt: !3500)
!3534 = !DILocation(line: 134, column: 13, scope: !3435, inlinedAt: !3500)
!3535 = !DILocation(line: 148, column: 13, scope: !3444, inlinedAt: !3500)
!3536 = !DILocation(line: 150, column: 13, scope: !3537, inlinedAt: !3500)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !478, line: 149, column: 11)
!3538 = distinct !DILexicalBlock(scope: !3444, file: !478, line: 148, column: 13)
!3539 = !DILocation(line: 151, column: 17, scope: !3537, inlinedAt: !3500)
!3540 = !DILocation(line: 152, column: 34, scope: !3541, inlinedAt: !3500)
!3541 = distinct !DILexicalBlock(scope: !3537, file: !478, line: 151, column: 17)
!3542 = !DILocation(line: 153, column: 41, scope: !3537, inlinedAt: !3500)
!3543 = !DILocation(line: 153, column: 13, scope: !3537, inlinedAt: !3500)
!3544 = !DILocation(line: 157, column: 11, scope: !3435, inlinedAt: !3500)
!3545 = !DILocation(line: 171, column: 16, scope: !3433, inlinedAt: !3500)
!3546 = !DILocation(line: 162, column: 15, scope: !3433, inlinedAt: !3500)
!3547 = !DILocation(line: 173, column: 18, scope: !3432, inlinedAt: !3500)
!3548 = !DILocation(line: 173, column: 15, scope: !3433, inlinedAt: !3500)
!3549 = !DILocation(line: 180, column: 20, scope: !3431, inlinedAt: !3500)
!3550 = !DILocation(line: 178, column: 21, scope: !3431, inlinedAt: !3500)
!3551 = !DILocation(line: 181, column: 22, scope: !3430, inlinedAt: !3500)
!3552 = !DILocation(line: 181, column: 19, scope: !3431, inlinedAt: !3500)
!3553 = !DILocation(line: 190, column: 25, scope: !3429, inlinedAt: !3500)
!3554 = !DILocation(line: 184, column: 19, scope: !3555, inlinedAt: !3500)
!3555 = distinct !DILexicalBlock(scope: !3430, file: !478, line: 182, column: 17)
!3556 = !DILocation(line: 186, column: 17, scope: !3555, inlinedAt: !3500)
!3557 = !DILocation(line: 191, column: 26, scope: !3429, inlinedAt: !3500)
!3558 = !DILocation(line: 196, column: 23, scope: !3426, inlinedAt: !3500)
!3559 = !DILocation(line: 197, column: 23, scope: !3426, inlinedAt: !3500)
!3560 = !DILocalVariable(name: "__fp", arg: 1, scope: !3561, file: !3333, line: 63, type: !3449)
!3561 = distinct !DISubprogram(name: "getc_unlocked", scope: !3333, file: !3333, line: 63, type: !3562, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!25, !3449}
!3564 = !{!3560}
!3565 = !DILocation(line: 63, column: 22, scope: !3561, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 201, column: 27, scope: !3426, inlinedAt: !3500)
!3567 = !DILocation(line: 65, column: 10, scope: !3561, inlinedAt: !3566)
!3568 = !{!3339, !575, i64 8}
!3569 = !{!3339, !575, i64 16}
!3570 = !{!"branch_weights", i32 2000, i32 1}
!3571 = !DILocation(line: 65, column: 10, scope: !3572, inlinedAt: !3566)
!3572 = !DILexicalBlockFile(scope: !3561, file: !3333, discriminator: 1)
!3573 = !DILocation(line: 65, column: 10, scope: !3574, inlinedAt: !3566)
!3574 = !DILexicalBlockFile(scope: !3561, file: !3333, discriminator: 2)
!3575 = !DILocation(line: 65, column: 10, scope: !3576, inlinedAt: !3566)
!3576 = !DILexicalBlockFile(scope: !3561, file: !3333, discriminator: 3)
!3577 = !DILocation(line: 195, column: 27, scope: !3426, inlinedAt: !3500)
!3578 = !DILocation(line: 202, column: 27, scope: !3426, inlinedAt: !3500)
!3579 = !DILocation(line: 63, column: 22, scope: !3561, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 210, column: 33, scope: !3581, inlinedAt: !3500)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !478, line: 207, column: 25)
!3582 = distinct !DILexicalBlock(scope: !3426, file: !478, line: 206, column: 27)
!3583 = !DILocation(line: 65, column: 10, scope: !3561, inlinedAt: !3580)
!3584 = !DILocation(line: 65, column: 10, scope: !3572, inlinedAt: !3580)
!3585 = !DILocation(line: 65, column: 10, scope: !3574, inlinedAt: !3580)
!3586 = !DILocation(line: 65, column: 10, scope: !3576, inlinedAt: !3580)
!3587 = !DILocation(line: 210, column: 29, scope: !3588, inlinedAt: !3500)
!3588 = !DILexicalBlockFile(scope: !3581, file: !478, discriminator: 1)
!3589 = distinct !{!3589, !3590, !3591}
!3590 = !DILocation(line: 193, column: 19, scope: !3428)
!3591 = !DILocation(line: 241, column: 21, scope: !3428)
!3592 = !DILocation(line: 216, column: 23, scope: !3426, inlinedAt: !3500)
!3593 = !DILocation(line: 217, column: 27, scope: !3594, inlinedAt: !3500)
!3594 = distinct !DILexicalBlock(scope: !3426, file: !478, line: 217, column: 27)
!3595 = !DILocation(line: 217, column: 64, scope: !3594, inlinedAt: !3500)
!3596 = !DILocation(line: 217, column: 27, scope: !3426, inlinedAt: !3500)
!3597 = !DILocation(line: 219, column: 28, scope: !3426, inlinedAt: !3500)
!3598 = !DILocation(line: 198, column: 30, scope: !3426, inlinedAt: !3500)
!3599 = !DILocation(line: 220, column: 28, scope: !3426, inlinedAt: !3500)
!3600 = !DILocation(line: 198, column: 34, scope: !3426, inlinedAt: !3500)
!3601 = !DILocation(line: 199, column: 29, scope: !3426, inlinedAt: !3500)
!3602 = !DILocation(line: 222, column: 36, scope: !3603, inlinedAt: !3500)
!3603 = distinct !DILexicalBlock(scope: !3426, file: !478, line: 222, column: 27)
!3604 = !DILocation(line: 222, column: 27, scope: !3426, inlinedAt: !3500)
!3605 = !DILocation(line: 225, column: 63, scope: !3606, inlinedAt: !3500)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !478, line: 223, column: 25)
!3607 = !DILocation(line: 225, column: 46, scope: !3606, inlinedAt: !3500)
!3608 = !DILocation(line: 226, column: 25, scope: !3606, inlinedAt: !3500)
!3609 = !DILocation(line: 229, column: 36, scope: !3610, inlinedAt: !3500)
!3610 = distinct !DILexicalBlock(scope: !3603, file: !478, line: 228, column: 25)
!3611 = !DILocation(line: 230, column: 73, scope: !3610, inlinedAt: !3500)
!3612 = !DILocation(line: 230, column: 46, scope: !3610, inlinedAt: !3500)
!3613 = !DILocation(line: 232, column: 35, scope: !3614, inlinedAt: !3500)
!3614 = distinct !DILexicalBlock(scope: !3426, file: !478, line: 232, column: 27)
!3615 = !DILocation(line: 232, column: 27, scope: !3426, inlinedAt: !3500)
!3616 = !DILocation(line: 236, column: 27, scope: !3617, inlinedAt: !3500)
!3617 = distinct !DILexicalBlock(scope: !3614, file: !478, line: 233, column: 25)
!3618 = !DILocation(line: 237, column: 27, scope: !3617, inlinedAt: !3500)
!3619 = !DILocation(line: 239, column: 39, scope: !3426, inlinedAt: !3500)
!3620 = !DILocation(line: 239, column: 50, scope: !3426, inlinedAt: !3500)
!3621 = !DILocation(line: 239, column: 61, scope: !3426, inlinedAt: !3500)
!3622 = !DILocalVariable(name: "__dest", arg: 1, scope: !3623, file: !3624, line: 107, type: !3627)
!3623 = distinct !DISubprogram(name: "strcpy", scope: !3624, file: !3624, line: 107, type: !3625, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3629)
!3624 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!32, !3627, !3628}
!3627 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!3628 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3629 = !{!3622, !3630}
!3630 = !DILocalVariable(name: "__src", arg: 2, scope: !3623, file: !3624, line: 107, type: !3628)
!3631 = !DILocation(line: 107, column: 1, scope: !3623, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 239, column: 23, scope: !3426, inlinedAt: !3500)
!3633 = !DILocation(line: 109, column: 49, scope: !3623, inlinedAt: !3632)
!3634 = !DILocation(line: 109, column: 10, scope: !3623, inlinedAt: !3632)
!3635 = !DILocation(line: 107, column: 1, scope: !3623, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 240, column: 23, scope: !3426, inlinedAt: !3500)
!3637 = !DILocation(line: 109, column: 49, scope: !3623, inlinedAt: !3636)
!3638 = !DILocation(line: 109, column: 10, scope: !3623, inlinedAt: !3636)
!3639 = !DILocation(line: 241, column: 21, scope: !3427, inlinedAt: !3500)
!3640 = !DILocation(line: 242, column: 19, scope: !3429, inlinedAt: !3500)
!3641 = !DILocation(line: 243, column: 32, scope: !3642, inlinedAt: !3500)
!3642 = distinct !DILexicalBlock(scope: !3429, file: !478, line: 243, column: 23)
!3643 = !DILocation(line: 243, column: 23, scope: !3429, inlinedAt: !3500)
!3644 = !DILocation(line: 247, column: 33, scope: !3645, inlinedAt: !3500)
!3645 = distinct !DILexicalBlock(scope: !3642, file: !478, line: 246, column: 21)
!3646 = !DILocation(line: 247, column: 45, scope: !3645, inlinedAt: !3500)
!3647 = !DILocation(line: 253, column: 11, scope: !3433, inlinedAt: !3500)
!3648 = !DILocation(line: 377, column: 23, scope: !3435, inlinedAt: !3500)
!3649 = !DILocation(line: 378, column: 5, scope: !3435, inlinedAt: !3500)
!3650 = !DILocation(line: 396, column: 15, scope: !3413)
!3651 = !DILocation(line: 590, column: 8, scope: !3422)
!3652 = !DILocation(line: 590, column: 17, scope: !3422)
!3653 = !DILocation(line: 589, column: 3, scope: !3654)
!3654 = !DILexicalBlockFile(scope: !3423, file: !478, discriminator: 1)
!3655 = !DILocation(line: 592, column: 9, scope: !3420)
!3656 = !DILocation(line: 592, column: 35, scope: !3421)
!3657 = !DILocation(line: 593, column: 9, scope: !3421)
!3658 = !DILocation(line: 593, column: 24, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3421, file: !478, discriminator: 1)
!3660 = !DILocation(line: 593, column: 31, scope: !3659)
!3661 = !DILocation(line: 593, column: 34, scope: !3662)
!3662 = !DILexicalBlockFile(scope: !3421, file: !478, discriminator: 2)
!3663 = !DILocation(line: 593, column: 45, scope: !3662)
!3664 = !DILocation(line: 592, column: 9, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !3422, file: !478, discriminator: 1)
!3666 = !DILocation(line: 595, column: 29, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3421, file: !478, line: 594, column: 7)
!3668 = !DILocation(line: 595, column: 27, scope: !3667)
!3669 = !DILocation(line: 595, column: 46, scope: !3667)
!3670 = !DILocation(line: 596, column: 9, scope: !3667)
!3671 = !DILocation(line: 591, column: 19, scope: !3422)
!3672 = !DILocation(line: 591, column: 36, scope: !3422)
!3673 = !DILocation(line: 591, column: 16, scope: !3422)
!3674 = !DILocation(line: 591, column: 52, scope: !3665)
!3675 = !DILocation(line: 591, column: 69, scope: !3422)
!3676 = !DILocation(line: 591, column: 49, scope: !3422)
!3677 = distinct !{!3677, !3678, !3679}
!3678 = !DILocation(line: 589, column: 3, scope: !3423)
!3679 = !DILocation(line: 597, column: 7, scope: !3423)
!3680 = !DILocation(line: 602, column: 7, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3413, file: !478, line: 602, column: 7)
!3682 = !DILocation(line: 602, column: 18, scope: !3681)
!3683 = !DILocation(line: 602, column: 7, scope: !3413)
!3684 = !DILocation(line: 612, column: 3, scope: !3413)
!3685 = distinct !DISubprogram(name: "rpl_fclose", scope: !3686, file: !3686, line: 56, type: !3687, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3729)
!3686 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!25, !3689}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2722, line: 49, baseType: !3691)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2724, line: 241, size: 1728, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3691, file: !2724, line: 242, baseType: !25, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3691, file: !2724, line: 247, baseType: !32, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3691, file: !2724, line: 248, baseType: !32, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3691, file: !2724, line: 249, baseType: !32, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3691, file: !2724, line: 250, baseType: !32, size: 64, offset: 256)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3691, file: !2724, line: 251, baseType: !32, size: 64, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3691, file: !2724, line: 252, baseType: !32, size: 64, offset: 384)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3691, file: !2724, line: 253, baseType: !32, size: 64, offset: 448)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3691, file: !2724, line: 254, baseType: !32, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3691, file: !2724, line: 256, baseType: !32, size: 64, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3691, file: !2724, line: 257, baseType: !32, size: 64, offset: 640)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3691, file: !2724, line: 258, baseType: !32, size: 64, offset: 704)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3691, file: !2724, line: 260, baseType: !3706, size: 64, offset: 768)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2724, line: 156, size: 192, elements: !3708)
!3708 = !{!3709, !3710, !3712}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3707, file: !2724, line: 157, baseType: !3706, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3707, file: !2724, line: 158, baseType: !3711, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3707, file: !2724, line: 162, baseType: !25, size: 32, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3691, file: !2724, line: 262, baseType: !3711, size: 64, offset: 832)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3691, file: !2724, line: 264, baseType: !25, size: 32, offset: 896)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3691, file: !2724, line: 268, baseType: !25, size: 32, offset: 928)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3691, file: !2724, line: 270, baseType: !2750, size: 64, offset: 960)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3691, file: !2724, line: 274, baseType: !75, size: 16, offset: 1024)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3691, file: !2724, line: 275, baseType: !2755, size: 8, offset: 1040)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3691, file: !2724, line: 276, baseType: !2757, size: 8, offset: 1048)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3691, file: !2724, line: 280, baseType: !2761, size: 64, offset: 1088)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3691, file: !2724, line: 289, baseType: !2764, size: 64, offset: 1152)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3691, file: !2724, line: 297, baseType: !31, size: 64, offset: 1216)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3691, file: !2724, line: 298, baseType: !31, size: 64, offset: 1280)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3691, file: !2724, line: 299, baseType: !31, size: 64, offset: 1344)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3691, file: !2724, line: 300, baseType: !31, size: 64, offset: 1408)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3691, file: !2724, line: 302, baseType: !76, size: 64, offset: 1472)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3691, file: !2724, line: 303, baseType: !25, size: 32, offset: 1536)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3691, file: !2724, line: 305, baseType: !2772, size: 160, offset: 1568)
!3729 = !{!3730, !3731, !3732, !3733}
!3730 = !DILocalVariable(name: "fp", arg: 1, scope: !3685, file: !3686, line: 56, type: !3689)
!3731 = !DILocalVariable(name: "saved_errno", scope: !3685, file: !3686, line: 58, type: !25)
!3732 = !DILocalVariable(name: "fd", scope: !3685, file: !3686, line: 59, type: !25)
!3733 = !DILocalVariable(name: "result", scope: !3685, file: !3686, line: 60, type: !25)
!3734 = !DILocation(line: 56, column: 19, scope: !3685)
!3735 = !DILocation(line: 58, column: 7, scope: !3685)
!3736 = !DILocation(line: 60, column: 7, scope: !3685)
!3737 = !DILocation(line: 63, column: 8, scope: !3685)
!3738 = !DILocation(line: 59, column: 7, scope: !3685)
!3739 = !DILocation(line: 64, column: 10, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3685, file: !3686, line: 64, column: 7)
!3741 = !DILocation(line: 64, column: 7, scope: !3685)
!3742 = !DILocation(line: 65, column: 12, scope: !3740)
!3743 = !DILocation(line: 65, column: 5, scope: !3740)
!3744 = !DILocation(line: 70, column: 9, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3685, file: !3686, line: 70, column: 7)
!3746 = !DILocation(line: 70, column: 23, scope: !3745)
!3747 = !DILocation(line: 70, column: 33, scope: !3748)
!3748 = !DILexicalBlockFile(scope: !3745, file: !3686, discriminator: 1)
!3749 = !DILocation(line: 70, column: 26, scope: !3750)
!3750 = !DILexicalBlockFile(scope: !3745, file: !3686, discriminator: 3)
!3751 = !DILocation(line: 70, column: 59, scope: !3748)
!3752 = !DILocation(line: 71, column: 7, scope: !3745)
!3753 = !DILocation(line: 71, column: 10, scope: !3748)
!3754 = !DILocation(line: 70, column: 7, scope: !3755)
!3755 = !DILexicalBlockFile(scope: !3685, file: !3686, discriminator: 2)
!3756 = !DILocation(line: 98, column: 12, scope: !3685)
!3757 = !DILocation(line: 103, column: 7, scope: !3685)
!3758 = !DILocation(line: 72, column: 19, scope: !3745)
!3759 = !DILocation(line: 103, column: 19, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3685, file: !3686, line: 103, column: 7)
!3761 = !DILocation(line: 105, column: 13, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3760, file: !3686, line: 104, column: 5)
!3763 = !DILocation(line: 107, column: 5, scope: !3762)
!3764 = !DILocation(line: 110, column: 1, scope: !3685)
!3765 = distinct !DISubprogram(name: "rpl_fflush", scope: !3766, file: !3766, line: 127, type: !3767, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3809)
!3766 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!25, !3769}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2722, line: 49, baseType: !3771)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2724, line: 241, size: 1728, elements: !3772)
!3772 = !{!3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3771, file: !2724, line: 242, baseType: !25, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3771, file: !2724, line: 247, baseType: !32, size: 64, offset: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3771, file: !2724, line: 248, baseType: !32, size: 64, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3771, file: !2724, line: 249, baseType: !32, size: 64, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3771, file: !2724, line: 250, baseType: !32, size: 64, offset: 256)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3771, file: !2724, line: 251, baseType: !32, size: 64, offset: 320)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3771, file: !2724, line: 252, baseType: !32, size: 64, offset: 384)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3771, file: !2724, line: 253, baseType: !32, size: 64, offset: 448)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3771, file: !2724, line: 254, baseType: !32, size: 64, offset: 512)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3771, file: !2724, line: 256, baseType: !32, size: 64, offset: 576)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3771, file: !2724, line: 257, baseType: !32, size: 64, offset: 640)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3771, file: !2724, line: 258, baseType: !32, size: 64, offset: 704)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3771, file: !2724, line: 260, baseType: !3786, size: 64, offset: 768)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2724, line: 156, size: 192, elements: !3788)
!3788 = !{!3789, !3790, !3792}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3787, file: !2724, line: 157, baseType: !3786, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3787, file: !2724, line: 158, baseType: !3791, size: 64, offset: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3787, file: !2724, line: 162, baseType: !25, size: 32, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3771, file: !2724, line: 262, baseType: !3791, size: 64, offset: 832)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3771, file: !2724, line: 264, baseType: !25, size: 32, offset: 896)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3771, file: !2724, line: 268, baseType: !25, size: 32, offset: 928)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3771, file: !2724, line: 270, baseType: !2750, size: 64, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3771, file: !2724, line: 274, baseType: !75, size: 16, offset: 1024)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3771, file: !2724, line: 275, baseType: !2755, size: 8, offset: 1040)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3771, file: !2724, line: 276, baseType: !2757, size: 8, offset: 1048)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3771, file: !2724, line: 280, baseType: !2761, size: 64, offset: 1088)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3771, file: !2724, line: 289, baseType: !2764, size: 64, offset: 1152)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3771, file: !2724, line: 297, baseType: !31, size: 64, offset: 1216)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3771, file: !2724, line: 298, baseType: !31, size: 64, offset: 1280)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3771, file: !2724, line: 299, baseType: !31, size: 64, offset: 1344)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3771, file: !2724, line: 300, baseType: !31, size: 64, offset: 1408)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3771, file: !2724, line: 302, baseType: !76, size: 64, offset: 1472)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3771, file: !2724, line: 303, baseType: !25, size: 32, offset: 1536)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3771, file: !2724, line: 305, baseType: !2772, size: 160, offset: 1568)
!3809 = !{!3810}
!3810 = !DILocalVariable(name: "stream", arg: 1, scope: !3765, file: !3766, line: 127, type: !3769)
!3811 = !DILocation(line: 127, column: 19, scope: !3765)
!3812 = !DILocation(line: 148, column: 14, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3765, file: !3766, line: 148, column: 7)
!3814 = !DILocation(line: 148, column: 22, scope: !3813)
!3815 = !DILocation(line: 148, column: 27, scope: !3816)
!3816 = !DILexicalBlockFile(scope: !3813, file: !3766, discriminator: 1)
!3817 = !DILocation(line: 148, column: 7, scope: !3818)
!3818 = !DILexicalBlockFile(scope: !3765, file: !3766, discriminator: 1)
!3819 = !DILocation(line: 149, column: 12, scope: !3813)
!3820 = !DILocation(line: 149, column: 5, scope: !3813)
!3821 = !DILocalVariable(name: "fp", arg: 1, scope: !3822, file: !3766, line: 40, type: !3769)
!3822 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3766, file: !3766, line: 40, type: !3823, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !3769}
!3825 = !{!3821}
!3826 = !DILocation(line: 40, column: 48, scope: !3822, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 153, column: 3, scope: !3765)
!3828 = !DILocation(line: 42, column: 11, scope: !3829, inlinedAt: !3827)
!3829 = distinct !DILexicalBlock(scope: !3822, file: !3766, line: 42, column: 7)
!3830 = !DILocation(line: 42, column: 18, scope: !3829, inlinedAt: !3827)
!3831 = !DILocation(line: 42, column: 7, scope: !3822, inlinedAt: !3827)
!3832 = !DILocation(line: 44, column: 5, scope: !3829, inlinedAt: !3827)
!3833 = !DILocation(line: 155, column: 10, scope: !3765)
!3834 = !DILocation(line: 155, column: 3, scope: !3765)
!3835 = !DILocation(line: 229, column: 1, scope: !3765)
!3836 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3837, file: !3837, line: 28, type: !3838, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3881)
!3837 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!25, !3840, !3880, !25}
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2722, line: 49, baseType: !3842)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2724, line: 241, size: 1728, elements: !3843)
!3843 = !{!3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3842, file: !2724, line: 242, baseType: !25, size: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3842, file: !2724, line: 247, baseType: !32, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3842, file: !2724, line: 248, baseType: !32, size: 64, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3842, file: !2724, line: 249, baseType: !32, size: 64, offset: 192)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3842, file: !2724, line: 250, baseType: !32, size: 64, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3842, file: !2724, line: 251, baseType: !32, size: 64, offset: 320)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3842, file: !2724, line: 252, baseType: !32, size: 64, offset: 384)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3842, file: !2724, line: 253, baseType: !32, size: 64, offset: 448)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3842, file: !2724, line: 254, baseType: !32, size: 64, offset: 512)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3842, file: !2724, line: 256, baseType: !32, size: 64, offset: 576)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3842, file: !2724, line: 257, baseType: !32, size: 64, offset: 640)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3842, file: !2724, line: 258, baseType: !32, size: 64, offset: 704)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3842, file: !2724, line: 260, baseType: !3857, size: 64, offset: 768)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2724, line: 156, size: 192, elements: !3859)
!3859 = !{!3860, !3861, !3863}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3858, file: !2724, line: 157, baseType: !3857, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3858, file: !2724, line: 158, baseType: !3862, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3858, file: !2724, line: 162, baseType: !25, size: 32, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3842, file: !2724, line: 262, baseType: !3862, size: 64, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3842, file: !2724, line: 264, baseType: !25, size: 32, offset: 896)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3842, file: !2724, line: 268, baseType: !25, size: 32, offset: 928)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3842, file: !2724, line: 270, baseType: !2750, size: 64, offset: 960)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3842, file: !2724, line: 274, baseType: !75, size: 16, offset: 1024)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3842, file: !2724, line: 275, baseType: !2755, size: 8, offset: 1040)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3842, file: !2724, line: 276, baseType: !2757, size: 8, offset: 1048)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3842, file: !2724, line: 280, baseType: !2761, size: 64, offset: 1088)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3842, file: !2724, line: 289, baseType: !2764, size: 64, offset: 1152)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3842, file: !2724, line: 297, baseType: !31, size: 64, offset: 1216)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3842, file: !2724, line: 298, baseType: !31, size: 64, offset: 1280)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3842, file: !2724, line: 299, baseType: !31, size: 64, offset: 1344)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3842, file: !2724, line: 300, baseType: !31, size: 64, offset: 1408)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3842, file: !2724, line: 302, baseType: !76, size: 64, offset: 1472)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3842, file: !2724, line: 303, baseType: !25, size: 32, offset: 1536)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3842, file: !2724, line: 305, baseType: !2772, size: 160, offset: 1568)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2722, line: 91, baseType: !2750)
!3881 = !{!3882, !3883, !3884, !3885}
!3882 = !DILocalVariable(name: "fp", arg: 1, scope: !3836, file: !3837, line: 28, type: !3840)
!3883 = !DILocalVariable(name: "offset", arg: 2, scope: !3836, file: !3837, line: 28, type: !3880)
!3884 = !DILocalVariable(name: "whence", arg: 3, scope: !3836, file: !3837, line: 28, type: !25)
!3885 = !DILocalVariable(name: "pos", scope: !3886, file: !3837, line: 116, type: !3880)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !3837, line: 112, column: 5)
!3887 = distinct !DILexicalBlock(scope: !3836, file: !3837, line: 51, column: 7)
!3888 = !DILocation(line: 28, column: 15, scope: !3836)
!3889 = !DILocation(line: 28, column: 25, scope: !3836)
!3890 = !DILocation(line: 28, column: 37, scope: !3836)
!3891 = !DILocation(line: 51, column: 11, scope: !3887)
!3892 = !DILocation(line: 51, column: 31, scope: !3887)
!3893 = !DILocation(line: 51, column: 24, scope: !3887)
!3894 = !DILocation(line: 52, column: 7, scope: !3887)
!3895 = !DILocation(line: 52, column: 14, scope: !3896)
!3896 = !DILexicalBlockFile(scope: !3887, file: !3837, discriminator: 1)
!3897 = !{!3339, !575, i64 40}
!3898 = !DILocation(line: 52, column: 35, scope: !3896)
!3899 = !{!3339, !575, i64 32}
!3900 = !DILocation(line: 52, column: 28, scope: !3896)
!3901 = !DILocation(line: 53, column: 7, scope: !3887)
!3902 = !DILocation(line: 53, column: 14, scope: !3896)
!3903 = !{!3339, !575, i64 72}
!3904 = !DILocation(line: 53, column: 28, scope: !3896)
!3905 = !DILocation(line: 51, column: 7, scope: !3906)
!3906 = !DILexicalBlockFile(scope: !3836, file: !3837, discriminator: 1)
!3907 = !DILocation(line: 116, column: 26, scope: !3886)
!3908 = !DILocation(line: 116, column: 19, scope: !3909)
!3909 = !DILexicalBlockFile(scope: !3886, file: !3837, discriminator: 1)
!3910 = !DILocation(line: 116, column: 13, scope: !3886)
!3911 = !DILocation(line: 117, column: 15, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3886, file: !3837, line: 117, column: 11)
!3913 = !DILocation(line: 117, column: 11, scope: !3886)
!3914 = !DILocation(line: 127, column: 11, scope: !3886)
!3915 = !DILocation(line: 127, column: 18, scope: !3886)
!3916 = !DILocation(line: 128, column: 11, scope: !3886)
!3917 = !DILocation(line: 128, column: 19, scope: !3886)
!3918 = !{!3339, !2034, i64 144}
!3919 = !DILocation(line: 159, column: 7, scope: !3886)
!3920 = !DILocation(line: 161, column: 10, scope: !3836)
!3921 = !DILocation(line: 161, column: 3, scope: !3836)
!3922 = !DILocation(line: 162, column: 1, scope: !3836)
