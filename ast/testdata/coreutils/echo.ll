; ModuleID = 'coreutils-8.27/src/echo.bc'
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

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Usage: %s [SHORT-OPTION]... [STRING]...\0A  or:  %s LONG-OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"Echo the STRING(s) to standard output.\0A\0A  -n             do not output the trailing newline\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [132 x i8] c"  -e             enable interpretation of backslash escapes\0A  -E             disable interpretation of backslash escapes (default)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"\0AIf -e is in effect, the following sequences are recognized:\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [229 x i8] c"  \5C\5C      backslash\0A  \5Ca      alert (BEL)\0A  \5Cb      backspace\0A  \5Cc      produce no further output\0A  \5Ce      escape\0A  \5Cf      form feed\0A  \5Cn      new line\0A  \5Cr      carriage return\0A  \5Ct      horizontal tab\0A  \5Cv      vertical tab\0A\00", align 1
@.str.8 = private unnamed_addr constant [110 x i8] c"  \5C0NNN   byte with octal value NNN (1 to 3 digits)\0A  \5CxHH    byte with hexadecimal value HH (1 to 2 digits)\0A\00", align 1
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Brian Fox\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Chet Ramey\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), align 8, !dbg !0
@.str.12 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.21 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.22 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !26
@.str.36 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.37 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.38 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.48, i32 0, i32 0), i8* null], align 16, !dbg !35
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !80
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !87
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !100
@.str.11.49 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.50 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.51 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.52 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.53 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.54 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.55 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !107
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !114
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !102
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !116
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
@.str.16.76 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.77 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.78 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.79 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !122
@.str.1.90 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.100 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.103 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !131
@.str.3.104 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.105 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.106 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.107 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.108 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.109 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !570 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !574, metadata !575), !dbg !576
  %2 = icmp eq i32 %0, 0, !dbg !577
  br i1 %2, label %8, label %3, !dbg !579

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !580, !tbaa !583
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !580
  %6 = load i8*, i8** @program_name, align 8, !dbg !580, !tbaa !583
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !587
  br label %50, !dbg !589

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !591
  %10 = load i8*, i8** @program_name, align 8, !dbg !591, !tbaa !583
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #9, !dbg !593
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !595
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !595, !tbaa !583
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !596
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !597
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !597, !tbaa !583
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !598
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !599
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !599, !tbaa !583
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !600
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !601
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !601, !tbaa !583
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !602
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !603
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !583
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9, !dbg !604
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.7, i64 0, i64 0), i32 5) #9, !dbg !605
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605, !tbaa !583
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #9, !dbg !606
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.8, i64 0, i64 0), i32 5) #9, !dbg !607
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !607, !tbaa !583
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #9, !dbg !608
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #9, !dbg !609
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !610
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !500, metadata !575) #9, !dbg !611
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !500, metadata !575) #9, !dbg !611
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #9, !dbg !613
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !614
  %37 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !616
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !511, metadata !575) #9, !dbg !617
  %38 = icmp eq i8* %37, null, !dbg !618
  br i1 %38, label %45, label %39, !dbg !619

; <label>:39:                                     ; preds = %8
  %40 = tail call i32 @strncmp(i8* nonnull %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #13, !dbg !620
  %41 = icmp eq i32 %40, 0, !dbg !620
  br i1 %41, label %45, label %42, !dbg !622

; <label>:42:                                     ; preds = %39
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #9, !dbg !624
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !626
  br label %45, !dbg !628

; <label>:45:                                     ; preds = %8, %39, %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #9, !dbg !629
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !630
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #9, !dbg !631
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !632
  br label %50

; <label>:50:                                     ; preds = %45, %3
  tail call void @exit(i32 %0) #14, !dbg !633
  unreachable, !dbg !633
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
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #6 !dbg !634 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !639, metadata !575), !dbg !681
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !640, metadata !575), !dbg !682
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !641, metadata !575), !dbg !683
  %3 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !684
  %4 = icmp eq i8* %3, null, !dbg !684
  br i1 %4, label %28, label %5, !dbg !685

; <label>:5:                                      ; preds = %2
  %6 = icmp sgt i32 %0, 1, !dbg !686
  br i1 %6, label %7, label %28, !dbg !688

; <label>:7:                                      ; preds = %5
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !645, metadata !575), !dbg !689
  %8 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !690
  %9 = load i8*, i8** %8, align 8, !dbg !690, !tbaa !583
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !646, metadata !575), !dbg !692
  %10 = load i8, i8* %9, align 1, !dbg !690, !tbaa !693
  %11 = zext i8 %10 to i32, !dbg !690
  %12 = sub nsw i32 45, %11, !dbg !690
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !648, metadata !575), !dbg !692
  %13 = icmp eq i32 %12, 0, !dbg !694
  br i1 %13, label %14, label %25, !dbg !697

; <label>:14:                                     ; preds = %7
  %15 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !699
  %16 = load i8, i8* %15, align 1, !dbg !699, !tbaa !693
  %17 = zext i8 %16 to i32, !dbg !699
  %18 = sub nsw i32 110, %17, !dbg !699
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !648, metadata !575), !dbg !692
  %19 = icmp eq i32 %18, 0, !dbg !702
  br i1 %19, label %20, label %25, !dbg !705

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !707
  %22 = load i8, i8* %21, align 1, !dbg !707, !tbaa !693
  %23 = zext i8 %22 to i32, !dbg !707
  %24 = sub nsw i32 0, %23, !dbg !707
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !648, metadata !575), !dbg !692
  br label %25, !dbg !710

; <label>:25:                                     ; preds = %20, %14, %7
  %26 = phi i32 [ %24, %20 ], [ %18, %14 ], [ %12, %7 ]
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !648, metadata !575), !dbg !692
  %27 = icmp eq i32 %26, 0, !dbg !713
  br label %28

; <label>:28:                                     ; preds = %2, %5, %25
  %29 = phi i1 [ true, %2 ], [ false, %5 ], [ %27, %25 ]
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !649, metadata !575), !dbg !715
  %30 = load i8*, i8** %1, align 8, !dbg !716, !tbaa !583
  tail call void @set_program_name(i8* %30) #9, !dbg !717
  %31 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !718
  %32 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !719
  %33 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !720
  %34 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !721
  %35 = icmp eq i32 %0, 2, !dbg !722
  %36 = and i1 %35, %29, !dbg !724
  %37 = getelementptr inbounds i8*, i8** %1, i64 1
  br i1 %36, label %38, label %49, !dbg !724

; <label>:38:                                     ; preds = %28
  tail call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !655, metadata !575), !dbg !725
  %39 = load i8*, i8** %37, align 8, !dbg !726, !tbaa !583
  %40 = tail call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !726
  %41 = icmp eq i32 %40, 0, !dbg !728
  br i1 %41, label %42, label %43, !dbg !730

; <label>:42:                                     ; preds = %38
  tail call void @usage(i32 0) #15, !dbg !732
  unreachable, !dbg !732

; <label>:43:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !662, metadata !575), !dbg !733
  %44 = tail call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !734
  %45 = icmp eq i32 %44, 0, !dbg !736
  br i1 %45, label %46, label %49, !dbg !738

; <label>:46:                                     ; preds = %43
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !583
  %48 = load i8*, i8** @Version, align 8, !dbg !741, !tbaa !583
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* null) #9, !dbg !742
  br label %313, !dbg !743

; <label>:49:                                     ; preds = %28, %43
  %50 = add nsw i32 %0, -1, !dbg !744
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !639, metadata !575), !dbg !681
  tail call void @llvm.dbg.value(metadata i8** %37, i64 0, metadata !640, metadata !575), !dbg !682
  %51 = icmp sgt i32 %0, 1, !dbg !745
  %52 = and i1 %51, %29, !dbg !747
  br i1 %52, label %53, label %54, !dbg !747

; <label>:53:                                     ; preds = %49
  br label %60, !dbg !681

; <label>:54:                                     ; preds = %114, %49
  %55 = phi i8 [ 1, %49 ], [ %116, %114 ]
  %56 = phi i8** [ %37, %49 ], [ %117, %114 ]
  %57 = phi i32 [ %50, %49 ], [ %118, %114 ]
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !639, metadata !575), !dbg !681
  tail call void @llvm.dbg.value(metadata i8** %56, i64 0, metadata !640, metadata !575), !dbg !682
  %58 = icmp sgt i32 %57, 0, !dbg !748
  br i1 %58, label %59, label %296, !dbg !751

; <label>:59:                                     ; preds = %54
  br label %272, !dbg !752

; <label>:60:                                     ; preds = %53, %104
  %61 = phi i8 [ %87, %104 ], [ 0, %53 ]
  %62 = phi i8 [ %92, %104 ], [ 1, %53 ]
  %63 = phi i8** [ %106, %104 ], [ %37, %53 ]
  %64 = phi i32 [ %105, %104 ], [ %50, %53 ]
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !639, metadata !575), !dbg !681
  tail call void @llvm.dbg.value(metadata i8** %63, i64 0, metadata !640, metadata !575), !dbg !682
  tail call void @llvm.dbg.value(metadata i8 %62, i64 0, metadata !641, metadata !575), !dbg !683
  tail call void @llvm.dbg.value(metadata i8 %61, i64 0, metadata !649, metadata !575), !dbg !715
  %65 = load i8*, i8** %63, align 8, !dbg !754, !tbaa !583
  %66 = load i8, i8* %65, align 1, !dbg !756, !tbaa !693
  %67 = icmp eq i8 %66, 45, !dbg !757
  br i1 %67, label %68, label %109, !dbg !758

; <label>:68:                                     ; preds = %60
  %69 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !760
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !666, metadata !575), !dbg !761
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !669, metadata !575), !dbg !762
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !669, metadata !575), !dbg !762
  %70 = load i8, i8* %69, align 1, !dbg !763, !tbaa !693
  %71 = icmp eq i8 %70, 0, !dbg !767
  br i1 %71, label %109, label %72, !dbg !767

; <label>:72:                                     ; preds = %68
  br label %73, !dbg !769

; <label>:73:                                     ; preds = %72, %77
  %74 = phi i8 [ %80, %77 ], [ %70, %72 ]
  %75 = phi i64 [ %78, %77 ], [ 0, %72 ]
  %76 = sext i8 %74 to i32, !dbg !769
  switch i32 %76, label %108 [
    i32 101, label %77
    i32 69, label %77
    i32 110, label %77
  ], !dbg !770

; <label>:77:                                     ; preds = %73, %73, %73
  %78 = add i64 %75, 1, !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !669, metadata !575), !dbg !762
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !669, metadata !575), !dbg !762
  %79 = getelementptr inbounds i8, i8* %69, i64 %78, !dbg !763
  %80 = load i8, i8* %79, align 1, !dbg !763, !tbaa !693
  %81 = icmp eq i8 %80, 0, !dbg !767
  br i1 %81, label %82, label %73, !dbg !767, !llvm.loop !773

; <label>:82:                                     ; preds = %77
  %83 = icmp eq i64 %78, 0, !dbg !776
  br i1 %83, label %109, label %84, !dbg !778

; <label>:84:                                     ; preds = %82
  br label %86, !dbg !761

; <label>:85:                                     ; preds = %98
  br label %102, !dbg !761

; <label>:86:                                     ; preds = %102, %84
  %87 = phi i8 [ %61, %84 ], [ %103, %102 ]
  %88 = phi i8 [ %62, %84 ], [ %92, %102 ]
  %89 = phi i8* [ %69, %84 ], [ %99, %102 ]
  br label %91, !dbg !761

; <label>:90:                                     ; preds = %98
  br label %91, !dbg !761

; <label>:91:                                     ; preds = %90, %86
  %92 = phi i8 [ %88, %86 ], [ 0, %90 ]
  %93 = phi i8* [ %89, %86 ], [ %99, %90 ]
  br label %94, !dbg !761

; <label>:94:                                     ; preds = %91, %98
  %95 = phi i8* [ %99, %98 ], [ %93, %91 ]
  tail call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !666, metadata !575), !dbg !761
  tail call void @llvm.dbg.value(metadata i8 %92, i64 0, metadata !641, metadata !575), !dbg !683
  tail call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !649, metadata !575), !dbg !715
  %96 = load i8, i8* %95, align 1, !dbg !779, !tbaa !693
  %97 = icmp eq i8 %96, 0, !dbg !781
  br i1 %97, label %104, label %98, !dbg !781

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !782
  tail call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !666, metadata !575), !dbg !761
  %100 = sext i8 %96 to i32, !dbg !783
  switch i32 %100, label %94 [
    i32 101, label %85
    i32 69, label %101
    i32 110, label %90
  ], !dbg !784, !llvm.loop !785

; <label>:101:                                    ; preds = %98
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !649, metadata !575), !dbg !715
  br label %102, !dbg !788

; <label>:102:                                    ; preds = %101, %85
  %103 = phi i8 [ 0, %101 ], [ 1, %85 ]
  br label %86, !dbg !761, !llvm.loop !785

; <label>:104:                                    ; preds = %94
  %105 = add nsw i32 %64, -1, !dbg !790
  tail call void @llvm.dbg.value(metadata i32 %105, i64 0, metadata !639, metadata !575), !dbg !681
  %106 = getelementptr inbounds i8*, i8** %63, i64 1, !dbg !791
  tail call void @llvm.dbg.value(metadata i8** %106, i64 0, metadata !640, metadata !575), !dbg !682
  tail call void @llvm.dbg.value(metadata i32 %105, i64 0, metadata !639, metadata !575), !dbg !681
  tail call void @llvm.dbg.value(metadata i8** %106, i64 0, metadata !640, metadata !575), !dbg !682
  tail call void @llvm.dbg.value(metadata i8 %92, i64 0, metadata !641, metadata !575), !dbg !683
  tail call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !649, metadata !575), !dbg !715
  %107 = icmp sgt i32 %64, 1, !dbg !745
  br i1 %107, label %60, label %109

; <label>:108:                                    ; preds = %73
  br label %114, !dbg !681

; <label>:109:                                    ; preds = %60, %104, %82, %68
  %110 = phi i8 [ %61, %68 ], [ %61, %82 ], [ %61, %60 ], [ %87, %104 ]
  %111 = phi i8 [ %62, %68 ], [ %62, %82 ], [ %62, %60 ], [ %92, %104 ]
  %112 = phi i8** [ %63, %68 ], [ %63, %82 ], [ %63, %60 ], [ %106, %104 ]
  %113 = phi i32 [ %64, %68 ], [ %64, %82 ], [ %64, %60 ], [ %105, %104 ]
  br label %114, !dbg !681

; <label>:114:                                    ; preds = %109, %108
  %115 = phi i8 [ %61, %108 ], [ %110, %109 ]
  %116 = phi i8 [ %62, %108 ], [ %111, %109 ]
  %117 = phi i8** [ %63, %108 ], [ %112, %109 ]
  %118 = phi i32 [ %64, %108 ], [ %113, %109 ]
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !639, metadata !575), !dbg !681
  tail call void @llvm.dbg.value(metadata i8** %117, i64 0, metadata !640, metadata !575), !dbg !682
  tail call void @llvm.dbg.value(metadata i8 %116, i64 0, metadata !641, metadata !575), !dbg !683
  tail call void @llvm.dbg.value(metadata i8 %115, i64 0, metadata !649, metadata !575), !dbg !715
  %119 = and i8 %115, 1, !dbg !792
  %120 = icmp eq i8 %119, 0, !dbg !792
  br i1 %120, label %54, label %121, !dbg !793

; <label>:121:                                    ; preds = %114
  %122 = icmp sgt i32 %118, 0
  br i1 %122, label %123, label %296, !dbg !681

; <label>:123:                                    ; preds = %121
  br label %124, !dbg !681

; <label>:124:                                    ; preds = %267, %123
  %125 = phi i32 [ %118, %123 ], [ %255, %267 ]
  %126 = phi i8** [ %117, %123 ], [ %256, %267 ]
  br label %127, !dbg !681

; <label>:127:                                    ; preds = %124, %270
  tail call void @llvm.dbg.value(metadata i32 %125, i64 0, metadata !639, metadata !575), !dbg !681
  tail call void @llvm.dbg.value(metadata i8** %126, i64 0, metadata !640, metadata !575), !dbg !682
  %128 = load i8*, i8** %126, align 8, !dbg !794, !tbaa !583
  tail call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !670, metadata !575), !dbg !795
  br label %129, !dbg !796

; <label>:129:                                    ; preds = %251, %127
  %130 = phi i8* [ %128, %127 ], [ %240, %251 ]
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !670, metadata !575), !dbg !795
  %131 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !797
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !670, metadata !575), !dbg !795
  %132 = load i8, i8* %130, align 1, !dbg !799, !tbaa !693
  tail call void @llvm.dbg.value(metadata i8 %132, i64 0, metadata !674, metadata !575), !dbg !800
  switch i8 %132, label %239 [
    i8 0, label %254
    i8 92, label %133
  ], !dbg !801

; <label>:133:                                    ; preds = %129
  %134 = load i8, i8* %131, align 1, !dbg !802, !tbaa !693
  %135 = icmp eq i8 %134, 0, !dbg !802
  br i1 %135, label %239, label %136, !dbg !804

; <label>:136:                                    ; preds = %133
  %137 = getelementptr inbounds i8, i8* %130, i64 2, !dbg !806
  tail call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !670, metadata !575), !dbg !795
  tail call void @llvm.dbg.value(metadata i8 %134, i64 0, metadata !674, metadata !575), !dbg !800
  switch i8 %134, label %226 [
    i8 97, label %138
    i8 98, label %139
    i8 99, label %311
    i8 101, label %140
    i8 102, label %141
    i8 110, label %142
    i8 114, label %143
    i8 116, label %144
    i8 118, label %145
    i8 120, label %146
    i8 48, label %196
    i8 49, label %202
    i8 50, label %202
    i8 51, label %202
    i8 52, label %202
    i8 53, label %202
    i8 54, label %202
    i8 55, label %202
    i8 92, label %239
  ], !dbg !807

; <label>:138:                                    ; preds = %136
  tail call void @llvm.dbg.value(metadata i8 7, i64 0, metadata !674, metadata !575), !dbg !800
  br label %239, !dbg !808

; <label>:139:                                    ; preds = %136
  tail call void @llvm.dbg.value(metadata i8 8, i64 0, metadata !674, metadata !575), !dbg !800
  br label %239, !dbg !809

; <label>:140:                                    ; preds = %136
  tail call void @llvm.dbg.value(metadata i8 27, i64 0, metadata !674, metadata !575), !dbg !800
  br label %239, !dbg !810

; <label>:141:                                    ; preds = %136
  tail call void @llvm.dbg.value(metadata i8 12, i64 0, metadata !674, metadata !575), !dbg !800
  br label %239, !dbg !811

; <label>:142:                                    ; preds = %136
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !674, metadata !575), !dbg !800
  br label %239, !dbg !812

; <label>:143:                                    ; preds = %136
  tail call void @llvm.dbg.value(metadata i8 13, i64 0, metadata !674, metadata !575), !dbg !800
  br label %239, !dbg !813

; <label>:144:                                    ; preds = %136
  tail call void @llvm.dbg.value(metadata i8 9, i64 0, metadata !674, metadata !575), !dbg !800
  br label %239, !dbg !814

; <label>:145:                                    ; preds = %136
  tail call void @llvm.dbg.value(metadata i8 11, i64 0, metadata !674, metadata !575), !dbg !800
  br label %239, !dbg !815

; <label>:146:                                    ; preds = %136
  %147 = load i8, i8* %137, align 1, !dbg !816, !tbaa !693
  tail call void @llvm.dbg.value(metadata i8 %147, i64 0, metadata !675, metadata !575), !dbg !817
  %148 = tail call i16** @__ctype_b_loc() #1, !dbg !818
  %149 = load i16*, i16** %148, align 8, !dbg !818, !tbaa !583
  %150 = zext i8 %147 to i64, !dbg !818
  %151 = getelementptr inbounds i16, i16* %149, i64 %150, !dbg !818
  %152 = load i16, i16* %151, align 2, !dbg !818, !tbaa !820
  %153 = and i16 %152, 4096, !dbg !818
  %154 = icmp eq i16 %153, 0, !dbg !818
  br i1 %154, label %191, label %155, !dbg !822

; <label>:155:                                    ; preds = %146
  %156 = getelementptr inbounds i8, i8* %130, i64 3, !dbg !823
  tail call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !670, metadata !575), !dbg !795
  tail call void @llvm.dbg.value(metadata i8 %147, i64 0, metadata !824, metadata !575), !dbg !829
  switch i8 %147, label %157 [
    i8 97, label %165
    i8 65, label %165
    i8 98, label %160
    i8 66, label %160
    i8 99, label %161
    i8 67, label %161
    i8 100, label %162
    i8 68, label %162
    i8 101, label %163
    i8 69, label %163
    i8 102, label %164
    i8 70, label %164
  ], !dbg !831

; <label>:157:                                    ; preds = %155
  %158 = zext i8 %147 to i32, !dbg !832
  %159 = add nsw i32 %158, -48, !dbg !833
  br label %165, !dbg !835

; <label>:160:                                    ; preds = %155, %155
  br label %165, !dbg !836

; <label>:161:                                    ; preds = %155, %155
  br label %165, !dbg !837

; <label>:162:                                    ; preds = %155, %155
  br label %165, !dbg !838

; <label>:163:                                    ; preds = %155, %155
  br label %165, !dbg !839

; <label>:164:                                    ; preds = %155, %155
  br label %165, !dbg !840

; <label>:165:                                    ; preds = %155, %155, %157, %160, %161, %162, %163, %164
  %166 = phi i32 [ %159, %157 ], [ 15, %164 ], [ 14, %163 ], [ 13, %162 ], [ 12, %161 ], [ 11, %160 ], [ 10, %155 ], [ 10, %155 ]
  %167 = load i8, i8* %156, align 1, !dbg !841, !tbaa !693
  tail call void @llvm.dbg.value(metadata i8 %167, i64 0, metadata !675, metadata !575), !dbg !817
  %168 = zext i8 %167 to i64, !dbg !842
  %169 = getelementptr inbounds i16, i16* %149, i64 %168, !dbg !842
  %170 = load i16, i16* %169, align 2, !dbg !842, !tbaa !820
  %171 = and i16 %170, 4096, !dbg !842
  %172 = icmp eq i16 %171, 0, !dbg !842
  br i1 %172, label %187, label %173, !dbg !844

; <label>:173:                                    ; preds = %165
  %174 = getelementptr inbounds i8, i8* %130, i64 4, !dbg !845
  tail call void @llvm.dbg.value(metadata i8* %174, i64 0, metadata !670, metadata !575), !dbg !795
  %175 = shl i32 %166, 4, !dbg !847
  tail call void @llvm.dbg.value(metadata i8 %167, i64 0, metadata !824, metadata !575), !dbg !848
  switch i8 %167, label %176 [
    i8 97, label %184
    i8 65, label %184
    i8 98, label %179
    i8 66, label %179
    i8 99, label %180
    i8 67, label %180
    i8 100, label %181
    i8 68, label %181
    i8 101, label %182
    i8 69, label %182
    i8 102, label %183
    i8 70, label %183
  ], !dbg !850

; <label>:176:                                    ; preds = %173
  %177 = zext i8 %167 to i32, !dbg !851
  %178 = add nsw i32 %177, -48, !dbg !852
  br label %184, !dbg !853

; <label>:179:                                    ; preds = %173, %173
  br label %184, !dbg !854

; <label>:180:                                    ; preds = %173, %173
  br label %184, !dbg !855

; <label>:181:                                    ; preds = %173, %173
  br label %184, !dbg !856

; <label>:182:                                    ; preds = %173, %173
  br label %184, !dbg !857

; <label>:183:                                    ; preds = %173, %173
  br label %184, !dbg !858

; <label>:184:                                    ; preds = %173, %173, %176, %179, %180, %181, %182, %183
  %185 = phi i32 [ %178, %176 ], [ 15, %183 ], [ 14, %182 ], [ 13, %181 ], [ 12, %180 ], [ 11, %179 ], [ 10, %173 ], [ 10, %173 ]
  %186 = add i32 %185, %175, !dbg !859
  br label %187, !dbg !860

; <label>:187:                                    ; preds = %165, %184
  %188 = phi i8* [ %174, %184 ], [ %156, %165 ]
  %189 = phi i32 [ %186, %184 ], [ %166, %165 ]
  %190 = trunc i32 %189 to i8
  tail call void @llvm.dbg.value(metadata i8 %190, i64 0, metadata !674, metadata !575), !dbg !800
  tail call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !670, metadata !575), !dbg !795
  br label %191, !dbg !861

; <label>:191:                                    ; preds = %146, %187
  %192 = phi i32 [ 0, %187 ], [ 17, %146 ]
  %193 = phi i8* [ %188, %187 ], [ %137, %146 ]
  %194 = phi i8 [ %190, %187 ], [ 120, %146 ]
  tail call void @llvm.dbg.value(metadata i8 %194, i64 0, metadata !674, metadata !575), !dbg !800
  tail call void @llvm.dbg.value(metadata i8* %193, i64 0, metadata !670, metadata !575), !dbg !795
  %195 = trunc i32 %192 to i5
  switch i5 %195, label %270 [
    i5 0, label %239
    i5 -15, label %226
  ]

; <label>:196:                                    ; preds = %136
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !674, metadata !575), !dbg !800
  %197 = load i8, i8* %137, align 1, !dbg !862, !tbaa !693
  %198 = and i8 %197, -8, !dbg !864
  %199 = icmp eq i8 %198, 48, !dbg !864
  br i1 %199, label %200, label %239, !dbg !864

; <label>:200:                                    ; preds = %196
  %201 = getelementptr inbounds i8, i8* %130, i64 3, !dbg !865
  tail call void @llvm.dbg.value(metadata i8* %201, i64 0, metadata !670, metadata !575), !dbg !795
  tail call void @llvm.dbg.value(metadata i8 %197, i64 0, metadata !674, metadata !575), !dbg !800
  br label %202, !dbg !866

; <label>:202:                                    ; preds = %136, %136, %136, %136, %136, %136, %136, %200
  %203 = phi i8* [ %137, %136 ], [ %137, %136 ], [ %137, %136 ], [ %137, %136 ], [ %137, %136 ], [ %137, %136 ], [ %137, %136 ], [ %201, %200 ]
  %204 = phi i8 [ %134, %136 ], [ %134, %136 ], [ %134, %136 ], [ %134, %136 ], [ %134, %136 ], [ %134, %136 ], [ %134, %136 ], [ %197, %200 ]
  tail call void @llvm.dbg.value(metadata i8 %204, i64 0, metadata !674, metadata !575), !dbg !800
  tail call void @llvm.dbg.value(metadata i8* %203, i64 0, metadata !670, metadata !575), !dbg !795
  %205 = add i8 %204, -48, !dbg !867
  tail call void @llvm.dbg.value(metadata i8 %205, i64 0, metadata !674, metadata !575), !dbg !800
  %206 = load i8, i8* %203, align 1, !dbg !868, !tbaa !693
  %207 = and i8 %206, -8, !dbg !870
  %208 = icmp eq i8 %207, 48, !dbg !870
  br i1 %208, label %209, label %215, !dbg !870

; <label>:209:                                    ; preds = %202
  %210 = shl i8 %205, 3, !dbg !871
  %211 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !872
  tail call void @llvm.dbg.value(metadata i8* %211, i64 0, metadata !670, metadata !575), !dbg !795
  %212 = add i8 %206, -48, !dbg !873
  %213 = add i8 %212, %210, !dbg !874
  tail call void @llvm.dbg.value(metadata i8 %213, i64 0, metadata !674, metadata !575), !dbg !800
  %214 = load i8, i8* %211, align 1, !tbaa !693
  br label %215, !dbg !875

; <label>:215:                                    ; preds = %209, %202
  %216 = phi i8 [ %214, %209 ], [ %206, %202 ], !dbg !876
  %217 = phi i8* [ %211, %209 ], [ %203, %202 ]
  %218 = phi i8 [ %213, %209 ], [ %205, %202 ]
  tail call void @llvm.dbg.value(metadata i8 %218, i64 0, metadata !674, metadata !575), !dbg !800
  tail call void @llvm.dbg.value(metadata i8* %217, i64 0, metadata !670, metadata !575), !dbg !795
  %219 = and i8 %216, -8, !dbg !878
  %220 = icmp eq i8 %219, 48, !dbg !878
  br i1 %220, label %221, label %239, !dbg !878

; <label>:221:                                    ; preds = %215
  %222 = shl i8 %218, 3, !dbg !879
  %223 = getelementptr inbounds i8, i8* %217, i64 1, !dbg !880
  tail call void @llvm.dbg.value(metadata i8* %223, i64 0, metadata !670, metadata !575), !dbg !795
  %224 = add i8 %216, -48, !dbg !881
  %225 = add i8 %224, %222, !dbg !882
  tail call void @llvm.dbg.value(metadata i8 %225, i64 0, metadata !674, metadata !575), !dbg !800
  br label %239, !dbg !883

; <label>:226:                                    ; preds = %191, %136
  %227 = phi i8* [ %137, %136 ], [ %193, %191 ]
  %228 = phi i8 [ %134, %136 ], [ %194, %191 ]
  tail call void @llvm.dbg.value(metadata i8 %228, i64 0, metadata !674, metadata !575), !dbg !800
  tail call void @llvm.dbg.value(metadata i8* %227, i64 0, metadata !670, metadata !575), !dbg !795
  tail call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !884, metadata !575) #9, !dbg !890
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !892, !tbaa !583
  %230 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %229, i64 0, i32 5, !dbg !892
  %231 = load i8*, i8** %230, align 8, !dbg !892, !tbaa !893
  %232 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %229, i64 0, i32 6, !dbg !892
  %233 = load i8*, i8** %232, align 8, !dbg !892, !tbaa !897
  %234 = icmp ult i8* %231, %233, !dbg !892
  br i1 %234, label %237, label %235, !dbg !892, !prof !898

; <label>:235:                                    ; preds = %226
  %236 = tail call i32 @__overflow(%struct._IO_FILE* %229, i32 92) #9, !dbg !899
  br label %239, !dbg !899

; <label>:237:                                    ; preds = %226
  %238 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !901
  store i8* %238, i8** %230, align 8, !dbg !901, !tbaa !893
  store i8 92, i8* %231, align 1, !dbg !901, !tbaa !693
  br label %239, !dbg !901

; <label>:239:                                    ; preds = %237, %235, %129, %133, %138, %139, %140, %141, %142, %143, %144, %145, %136, %191, %196, %221, %215
  %240 = phi i8* [ %137, %136 ], [ %223, %221 ], [ %217, %215 ], [ %137, %196 ], [ %193, %191 ], [ %137, %145 ], [ %137, %144 ], [ %137, %143 ], [ %137, %142 ], [ %137, %141 ], [ %137, %140 ], [ %137, %139 ], [ %137, %138 ], [ %131, %133 ], [ %131, %129 ], [ %227, %235 ], [ %227, %237 ]
  %241 = phi i8 [ 92, %136 ], [ %225, %221 ], [ %218, %215 ], [ 0, %196 ], [ %194, %191 ], [ 11, %145 ], [ 9, %144 ], [ 13, %143 ], [ 10, %142 ], [ 12, %141 ], [ 27, %140 ], [ 8, %139 ], [ 7, %138 ], [ 92, %133 ], [ %132, %129 ], [ %228, %235 ], [ %228, %237 ]
  tail call void @llvm.dbg.value(metadata i8 %241, i64 0, metadata !674, metadata !575), !dbg !800
  tail call void @llvm.dbg.value(metadata i8* %240, i64 0, metadata !670, metadata !575), !dbg !795
  tail call void @llvm.dbg.value(metadata i32 %249, i64 0, metadata !884, metadata !575) #9, !dbg !903
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !905, !tbaa !583
  %243 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %242, i64 0, i32 5, !dbg !905
  %244 = load i8*, i8** %243, align 8, !dbg !905, !tbaa !893
  %245 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %242, i64 0, i32 6, !dbg !905
  %246 = load i8*, i8** %245, align 8, !dbg !905, !tbaa !897
  %247 = icmp ult i8* %244, %246, !dbg !905
  br i1 %247, label %252, label %248, !dbg !905, !prof !898

; <label>:248:                                    ; preds = %239
  %249 = zext i8 %241 to i32, !dbg !906
  %250 = tail call i32 @__overflow(%struct._IO_FILE* %242, i32 %249) #9, !dbg !907
  br label %251, !dbg !907

; <label>:251:                                    ; preds = %248, %252
  br label %129, !dbg !795, !llvm.loop !908

; <label>:252:                                    ; preds = %239
  %253 = getelementptr inbounds i8, i8* %244, i64 1, !dbg !910
  store i8* %253, i8** %243, align 8, !dbg !910, !tbaa !893
  store i8 %241, i8* %244, align 1, !dbg !910, !tbaa !693
  br label %251, !dbg !910

; <label>:254:                                    ; preds = %129
  %255 = add nsw i32 %125, -1, !dbg !911
  tail call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !639, metadata !575), !dbg !681
  %256 = getelementptr inbounds i8*, i8** %126, i64 1, !dbg !912
  tail call void @llvm.dbg.value(metadata i8** %256, i64 0, metadata !640, metadata !575), !dbg !682
  %257 = icmp sgt i32 %125, 1, !dbg !913
  br i1 %257, label %258, label %295, !dbg !915

; <label>:258:                                    ; preds = %254
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !884, metadata !575) #9, !dbg !916
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !918, !tbaa !583
  %260 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %259, i64 0, i32 5, !dbg !918
  %261 = load i8*, i8** %260, align 8, !dbg !918, !tbaa !893
  %262 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %259, i64 0, i32 6, !dbg !918
  %263 = load i8*, i8** %262, align 8, !dbg !918, !tbaa !897
  %264 = icmp ult i8* %261, %263, !dbg !918
  br i1 %264, label %268, label %265, !dbg !918, !prof !898

; <label>:265:                                    ; preds = %258
  %266 = tail call i32 @__overflow(%struct._IO_FILE* %259, i32 32) #9, !dbg !919
  br label %267, !dbg !919

; <label>:267:                                    ; preds = %265, %268
  br label %124, !dbg !681

; <label>:268:                                    ; preds = %258
  %269 = getelementptr inbounds i8, i8* %261, i64 1, !dbg !920
  store i8* %269, i8** %260, align 8, !dbg !920, !tbaa !893
  store i8 32, i8* %261, align 1, !dbg !920, !tbaa !693
  br label %267, !dbg !920

; <label>:270:                                    ; preds = %191
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !639, metadata !575), !dbg !681
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !640, metadata !575), !dbg !682
  %271 = icmp eq i32 %192, 0
  br i1 %271, label %127, label %312, !llvm.loop !921

; <label>:272:                                    ; preds = %59, %281
  %273 = phi i32 [ %278, %281 ], [ %57, %59 ]
  %274 = phi i8** [ %279, %281 ], [ %56, %59 ]
  %275 = load i8*, i8** %274, align 8, !dbg !752, !tbaa !583
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !583
  %277 = tail call i32 @fputs_unlocked(i8* %275, %struct._IO_FILE* %276) #9, !dbg !752
  %278 = add nsw i32 %273, -1, !dbg !924
  tail call void @llvm.dbg.value(metadata i32 %278, i64 0, metadata !639, metadata !575), !dbg !681
  %279 = getelementptr inbounds i8*, i8** %274, i64 1, !dbg !925
  tail call void @llvm.dbg.value(metadata i8** %279, i64 0, metadata !640, metadata !575), !dbg !682
  %280 = icmp eq i32 %273, 1, !dbg !926
  br i1 %280, label %294, label %283, !dbg !928

; <label>:281:                                    ; preds = %290, %292
  tail call void @llvm.dbg.value(metadata i32 %278, i64 0, metadata !639, metadata !575), !dbg !681
  tail call void @llvm.dbg.value(metadata i8** %279, i64 0, metadata !640, metadata !575), !dbg !682
  %282 = icmp sgt i32 %273, 1, !dbg !748
  br i1 %282, label %272, label %294, !dbg !751, !llvm.loop !929

; <label>:283:                                    ; preds = %272
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !884, metadata !575) #9, !dbg !932
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !934, !tbaa !583
  %285 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %284, i64 0, i32 5, !dbg !934
  %286 = load i8*, i8** %285, align 8, !dbg !934, !tbaa !893
  %287 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %284, i64 0, i32 6, !dbg !934
  %288 = load i8*, i8** %287, align 8, !dbg !934, !tbaa !897
  %289 = icmp ult i8* %286, %288, !dbg !934
  br i1 %289, label %292, label %290, !dbg !934, !prof !898

; <label>:290:                                    ; preds = %283
  %291 = tail call i32 @__overflow(%struct._IO_FILE* %284, i32 32) #9, !dbg !935
  br label %281, !dbg !935

; <label>:292:                                    ; preds = %283
  %293 = getelementptr inbounds i8, i8* %286, i64 1, !dbg !936
  store i8* %293, i8** %285, align 8, !dbg !936, !tbaa !893
  store i8 32, i8* %286, align 1, !dbg !936, !tbaa !693
  br label %281, !dbg !936

; <label>:294:                                    ; preds = %281, %272
  br label %296, !dbg !937

; <label>:295:                                    ; preds = %254
  br label %296, !dbg !937

; <label>:296:                                    ; preds = %295, %294, %121, %54
  %297 = phi i8 [ %55, %54 ], [ %116, %121 ], [ %55, %294 ], [ %116, %295 ]
  %298 = and i8 %297, 1, !dbg !937
  %299 = icmp eq i8 %298, 0, !dbg !937
  br i1 %299, label %313, label %300, !dbg !939

; <label>:300:                                    ; preds = %296
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !884, metadata !575) #9, !dbg !940
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !942, !tbaa !583
  %302 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %301, i64 0, i32 5, !dbg !942
  %303 = load i8*, i8** %302, align 8, !dbg !942, !tbaa !893
  %304 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %301, i64 0, i32 6, !dbg !942
  %305 = load i8*, i8** %304, align 8, !dbg !942, !tbaa !897
  %306 = icmp ult i8* %303, %305, !dbg !942
  br i1 %306, label %309, label %307, !dbg !942, !prof !898

; <label>:307:                                    ; preds = %300
  %308 = tail call i32 @__overflow(%struct._IO_FILE* %301, i32 10) #9, !dbg !943
  br label %313, !dbg !943

; <label>:309:                                    ; preds = %300
  %310 = getelementptr inbounds i8, i8* %303, i64 1, !dbg !944
  store i8* %310, i8** %302, align 8, !dbg !944, !tbaa !893
  store i8 10, i8* %303, align 1, !dbg !944, !tbaa !693
  br label %313, !dbg !944

; <label>:311:                                    ; preds = %136
  br label %313, !dbg !945

; <label>:312:                                    ; preds = %270
  br label %313, !dbg !945

; <label>:313:                                    ; preds = %312, %311, %309, %307, %296, %46
  ret i32 0, !dbg !945
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !946 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !948, metadata !575), !dbg !949
  store i8* %0, i8** @file_name, align 8, !dbg !950, !tbaa !583
  ret void, !dbg !951
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !952 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !956, metadata !957), !dbg !958
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !959, !tbaa !960
  ret void, !dbg !962
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !963 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !970, !tbaa !583
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !971
  %3 = icmp eq i32 %2, 0, !dbg !972
  br i1 %3, label %21, label %4, !dbg !973

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !974, !tbaa !960, !range !976
  %6 = icmp eq i8 %5, 0, !dbg !974
  %7 = tail call i32* @__errno_location() #1, !dbg !977
  br i1 %6, label %11, label %8, !dbg !979

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !980, !tbaa !982
  %10 = icmp eq i32 %9, 32, !dbg !983
  br i1 %10, label %21, label %11, !dbg !984

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 5) #9, !dbg !986
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !967, metadata !575), !dbg !987
  %13 = load i8*, i8** @file_name, align 8, !dbg !988, !tbaa !583
  %14 = icmp eq i8* %13, null, !dbg !988
  %15 = load i32, i32* %7, align 4, !tbaa !982
  br i1 %14, label %18, label %16, !dbg !989

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !990
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.22, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !992
  br label %19, !dbg !994

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.23, i64 0, i64 0), i8* %12) #9, !dbg !995
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !996, !tbaa !982
  tail call void @_exit(i32 %20) #14, !dbg !997
  unreachable, !dbg !997

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !998, !tbaa !583
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !1000
  %24 = icmp eq i32 %23, 0, !dbg !1001
  br i1 %24, label %27, label %25, !dbg !1002

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1003, !tbaa !982
  tail call void @_exit(i32 %26) #14, !dbg !1004
  unreachable, !dbg !1004

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1005
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1006 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1008, metadata !575), !dbg !1011
  %2 = icmp eq i8* %0, null, !dbg !1012
  br i1 %2, label %3, label %6, !dbg !1014

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1015, !tbaa !583
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1017
  tail call void @abort() #14, !dbg !1018
  unreachable, !dbg !1018

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1019
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1009, metadata !575), !dbg !1020
  %8 = icmp ne i8* %7, null, !dbg !1021
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1022
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1024
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1010, metadata !575), !dbg !1025
  %11 = ptrtoint i8* %10 to i64, !dbg !1026
  %12 = ptrtoint i8* %0 to i64, !dbg !1026
  %13 = sub i64 %11, %12, !dbg !1026
  %14 = icmp sgt i64 %13, 6, !dbg !1028
  br i1 %14, label %15, label %24, !dbg !1029

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1030
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.37, i64 0, i64 0), i64 7) #13, !dbg !1030
  %18 = icmp eq i32 %17, 0, !dbg !1032
  br i1 %18, label %19, label %24, !dbg !1033

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1008, metadata !575), !dbg !1011
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.38, i64 0, i64 0), i64 3) #13, !dbg !1034
  %21 = icmp eq i32 %20, 0, !dbg !1037
  br i1 %21, label %22, label %24, !dbg !1038

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1039
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1008, metadata !575), !dbg !1011
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1041, !tbaa !583
  br label %24, !dbg !1042

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1008, metadata !575), !dbg !1011
  store i8* %25, i8** @program_name, align 8, !dbg !1043, !tbaa !583
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1044, !tbaa !583
  ret void, !dbg !1045
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1046 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1051, metadata !575), !dbg !1054
  %2 = tail call i32* @__errno_location() #1, !dbg !1055
  %3 = load i32, i32* %2, align 4, !dbg !1055, !tbaa !982
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1052, metadata !575), !dbg !1056
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1057
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1058
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1058
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !1060
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1060
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1053, metadata !575), !dbg !1061
  store i32 %3, i32* %2, align 4, !dbg !1062, !tbaa !982
  ret %struct.quoting_options* %8, !dbg !1063
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !1064 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1070, metadata !575), !dbg !1071
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1072
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1072
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1073
  %5 = load i32, i32* %4, align 8, !dbg !1073, !tbaa !1075
  ret i32 %5, !dbg !1077
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1078 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1082, metadata !575), !dbg !1084
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1083, metadata !575), !dbg !1085
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1086
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1086
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1087
  store i32 %1, i32* %5, align 8, !dbg !1089, !tbaa !1075
  ret void, !dbg !1090
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1091 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1095, metadata !575), !dbg !1103
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1096, metadata !575), !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1097, metadata !575), !dbg !1105
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1098, metadata !575), !dbg !1106
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1107
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1107
  %6 = lshr i8 %1, 5, !dbg !1108
  %7 = zext i8 %6 to i64, !dbg !1108
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1110
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1099, metadata !575), !dbg !1111
  %9 = and i8 %1, 31, !dbg !1112
  %10 = zext i8 %9 to i32, !dbg !1113
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1101, metadata !575), !dbg !1114
  %11 = load i32, i32* %8, align 4, !dbg !1115, !tbaa !982
  %12 = lshr i32 %11, %10, !dbg !1116
  %13 = and i32 %12, 1, !dbg !1117
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1102, metadata !575), !dbg !1118
  %14 = and i32 %2, 1, !dbg !1119
  %15 = xor i32 %13, %14, !dbg !1120
  %16 = shl i32 %15, %10, !dbg !1121
  %17 = xor i32 %16, %11, !dbg !1122
  store i32 %17, i32* %8, align 4, !dbg !1122, !tbaa !982
  ret i32 %13, !dbg !1123
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1124 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1128, metadata !575), !dbg !1131
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1129, metadata !575), !dbg !1132
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1133
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1128, metadata !575), !dbg !1131
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1128, metadata !575), !dbg !1131
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1136
  %6 = load i32, i32* %5, align 4, !dbg !1136, !tbaa !1137
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1130, metadata !575), !dbg !1138
  store i32 %1, i32* %5, align 4, !dbg !1139, !tbaa !1137
  ret i32 %6, !dbg !1140
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1141 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1145, metadata !575), !dbg !1148
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1146, metadata !575), !dbg !1149
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1147, metadata !575), !dbg !1150
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1151
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1145, metadata !575), !dbg !1148
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1153
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1145, metadata !575), !dbg !1148
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1154
  store i32 10, i32* %6, align 8, !dbg !1155, !tbaa !1075
  %7 = icmp ne i8* %1, null, !dbg !1156
  %8 = icmp ne i8* %2, null, !dbg !1158
  %9 = and i1 %7, %8, !dbg !1160
  br i1 %9, label %11, label %10, !dbg !1160

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1161
  unreachable, !dbg !1161

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1162
  store i8* %1, i8** %12, align 8, !dbg !1163, !tbaa !1164
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1165
  store i8* %2, i8** %13, align 8, !dbg !1166, !tbaa !1167
  ret void, !dbg !1168
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1169 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1173, metadata !575), !dbg !1181
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1174, metadata !575), !dbg !1182
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1175, metadata !575), !dbg !1183
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1176, metadata !575), !dbg !1184
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1177, metadata !575), !dbg !1185
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1186
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1186
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1178, metadata !575), !dbg !1187
  %8 = tail call i32* @__errno_location() #1, !dbg !1188
  %9 = load i32, i32* %8, align 4, !dbg !1188, !tbaa !982
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1179, metadata !575), !dbg !1189
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1190
  %11 = load i32, i32* %10, align 8, !dbg !1190, !tbaa !1075
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1191
  %13 = load i32, i32* %12, align 4, !dbg !1191, !tbaa !1137
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1192
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1193
  %16 = load i8*, i8** %15, align 8, !dbg !1193, !tbaa !1164
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1194
  %18 = load i8*, i8** %17, align 8, !dbg !1194, !tbaa !1167
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1195
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1180, metadata !575), !dbg !1196
  store i32 %9, i32* %8, align 4, !dbg !1197, !tbaa !982
  ret i64 %19, !dbg !1198
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1199 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1205, metadata !575), !dbg !1268
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1206, metadata !575), !dbg !1269
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1207, metadata !575), !dbg !1270
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1208, metadata !575), !dbg !1271
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1209, metadata !575), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1210, metadata !575), !dbg !1273
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1211, metadata !575), !dbg !1274
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1212, metadata !575), !dbg !1275
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1213, metadata !575), !dbg !1276
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1215, metadata !575), !dbg !1277
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1216, metadata !575), !dbg !1278
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1217, metadata !575), !dbg !1279
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1218, metadata !575), !dbg !1280
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1219, metadata !575), !dbg !1281
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1282
  %14 = icmp eq i64 %13, 1, !dbg !1283
  %15 = lshr i32 %5, 1, !dbg !1284
  %16 = trunc i32 %15 to i8, !dbg !1284
  %17 = and i8 %16, 1, !dbg !1284
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1221, metadata !575), !dbg !1284
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1222, metadata !575), !dbg !1285
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1223, metadata !575), !dbg !1286
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1224, metadata !575), !dbg !1287
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1288

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1206, metadata !575), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1224, metadata !575), !dbg !1287
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1223, metadata !575), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1221, metadata !575), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1208, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1219, metadata !575), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1218, metadata !575), !dbg !1280
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1217, metadata !575), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1216, metadata !575), !dbg !1278
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1213, metadata !575), !dbg !1276
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1212, metadata !575), !dbg !1275
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1209, metadata !575), !dbg !1272
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
  ], !dbg !1289

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1209, metadata !575), !dbg !1272
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1221, metadata !575), !dbg !1284
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1221, metadata !575), !dbg !1284
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1209, metadata !575), !dbg !1272
  br label %95, !dbg !1290

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1221, metadata !575), !dbg !1284
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1209, metadata !575), !dbg !1272
  %43 = and i8 %36, 1, !dbg !1292
  %44 = icmp eq i8 %43, 0, !dbg !1292
  br i1 %44, label %45, label %95, !dbg !1290

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1294
  br i1 %46, label %95, label %47, !dbg !1298

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1300, !tbaa !693
  br label %95, !dbg !1300

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.49, i64 0, i64 0), i32 %28), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1212, metadata !575), !dbg !1275
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), i32 %28), !dbg !1306
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1213, metadata !575), !dbg !1276
  br label %51, !dbg !1307

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1213, metadata !575), !dbg !1276
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1212, metadata !575), !dbg !1275
  %54 = and i8 %36, 1, !dbg !1308
  %55 = icmp eq i8 %54, 0, !dbg !1308
  br i1 %55, label %56, label %73, !dbg !1310

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1217, metadata !575), !dbg !1279
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1215, metadata !575), !dbg !1277
  %57 = load i8, i8* %52, align 1, !dbg !1311, !tbaa !693
  %58 = icmp eq i8 %57, 0, !dbg !1315
  br i1 %58, label %73, label %59, !dbg !1315

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1317

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1317
  br i1 %64, label %65, label %67, !dbg !1321

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1323
  store i8 %61, i8* %66, align 1, !dbg !1323, !tbaa !693
  br label %67, !dbg !1323

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1215, metadata !575), !dbg !1277
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1327
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1217, metadata !575), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1217, metadata !575), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1215, metadata !575), !dbg !1277
  %70 = load i8, i8* %69, align 1, !dbg !1311, !tbaa !693
  %71 = icmp eq i8 %70, 0, !dbg !1315
  br i1 %71, label %72, label %60, !dbg !1315, !llvm.loop !1329

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1277

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1219, metadata !575), !dbg !1281
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1217, metadata !575), !dbg !1279
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1218, metadata !575), !dbg !1280
  br label %95, !dbg !1333

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1219, metadata !575), !dbg !1281
  br label %77, !dbg !1334

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1219, metadata !575), !dbg !1281
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1221, metadata !575), !dbg !1284
  br label %79, !dbg !1335

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1221, metadata !575), !dbg !1284
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1219, metadata !575), !dbg !1281
  %82 = and i8 %81, 1, !dbg !1336
  %83 = icmp eq i8 %82, 0, !dbg !1336
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1219, metadata !575), !dbg !1281
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1338
  br label %85, !dbg !1338

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1221, metadata !575), !dbg !1284
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1219, metadata !575), !dbg !1281
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1209, metadata !575), !dbg !1272
  %88 = and i8 %87, 1, !dbg !1339
  %89 = icmp eq i8 %88, 0, !dbg !1339
  br i1 %89, label %90, label %95, !dbg !1341

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1342
  br i1 %91, label %95, label %92, !dbg !1346

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1348, !tbaa !693
  br label %95, !dbg !1348

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1221, metadata !575), !dbg !1284
  br label %95, !dbg !1350

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1351
  unreachable, !dbg !1351

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1221, metadata !575), !dbg !1284
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1219, metadata !575), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1218, metadata !575), !dbg !1280
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1217, metadata !575), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1213, metadata !575), !dbg !1276
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1212, metadata !575), !dbg !1275
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1209, metadata !575), !dbg !1272
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1214, metadata !575), !dbg !1352
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
  br label %123, !dbg !1353

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1206, metadata !575), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1224, metadata !575), !dbg !1287
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1223, metadata !575), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1208, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1216, metadata !575), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1214, metadata !575), !dbg !1352
  %132 = icmp eq i64 %127, -1, !dbg !1354
  br i1 %132, label %135, label %133, !dbg !1356

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1357
  br i1 %134, label %597, label %139, !dbg !1359

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1361
  %137 = load i8, i8* %136, align 1, !dbg !1361, !tbaa !693
  %138 = icmp eq i8 %137, 0, !dbg !1363
  br i1 %138, label %597, label %139, !dbg !1359

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1230, metadata !575), !dbg !1364
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1231, metadata !575), !dbg !1365
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1232, metadata !575), !dbg !1366
  br i1 %109, label %140, label %155, !dbg !1367

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1369
  %142 = and i1 %110, %132, !dbg !1371
  br i1 %142, label %143, label %145, !dbg !1371

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1208, metadata !575), !dbg !1271
  br label %145, !dbg !1373

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1208, metadata !575), !dbg !1271
  %147 = icmp ugt i64 %141, %146, !dbg !1375
  br i1 %147, label %155, label %148, !dbg !1377

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1378
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1379
  %151 = icmp ne i32 %150, 0, !dbg !1380
  %152 = or i1 %151, %112, !dbg !1380
  %153 = xor i1 %151, true, !dbg !1380
  %154 = zext i1 %153 to i8, !dbg !1380
  br i1 %152, label %155, label %644, !dbg !1380

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1230, metadata !575), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1208, metadata !575), !dbg !1271
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1382
  %159 = load i8, i8* %158, align 1, !dbg !1382, !tbaa !693
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1225, metadata !575), !dbg !1383
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
  ], !dbg !1384

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1385

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1386

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1231, metadata !575), !dbg !1365
  %163 = and i8 %128, 1, !dbg !1391
  %164 = icmp eq i8 %163, 0, !dbg !1391
  %165 = and i1 %114, %164, !dbg !1394
  br i1 %165, label %166, label %182, !dbg !1394

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1396
  br i1 %167, label %168, label %170, !dbg !1401

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1403
  store i8 39, i8* %169, align 1, !dbg !1403, !tbaa !693
  br label %170, !dbg !1403

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1215, metadata !575), !dbg !1277
  %172 = icmp ult i64 %171, %131, !dbg !1407
  br i1 %172, label %173, label %175, !dbg !1411

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1413
  store i8 36, i8* %174, align 1, !dbg !1413, !tbaa !693
  br label %175, !dbg !1413

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1215, metadata !575), !dbg !1277
  %177 = icmp ult i64 %176, %131, !dbg !1417
  br i1 %177, label %178, label %180, !dbg !1421

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1423
  store i8 39, i8* %179, align 1, !dbg !1423, !tbaa !693
  br label %180, !dbg !1423

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1425
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1222, metadata !575), !dbg !1285
  br label %182, !dbg !1427

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1215, metadata !575), !dbg !1277
  %185 = icmp ult i64 %183, %131, !dbg !1429
  br i1 %185, label %186, label %188, !dbg !1433

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1435
  store i8 92, i8* %187, align 1, !dbg !1435, !tbaa !693
  br label %188, !dbg !1435

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1215, metadata !575), !dbg !1277
  br i1 %106, label %190, label %476, !dbg !1439

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1441
  %192 = icmp ult i64 %191, %156, !dbg !1443
  br i1 %192, label %193, label %476, !dbg !1444

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1445
  %195 = load i8, i8* %194, align 1, !dbg !1445, !tbaa !693
  %196 = add i8 %195, -48, !dbg !1447
  %197 = icmp ult i8 %196, 10, !dbg !1447
  br i1 %197, label %198, label %476, !dbg !1447

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1448
  br i1 %199, label %200, label %202, !dbg !1453

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1455
  store i8 48, i8* %201, align 1, !dbg !1455, !tbaa !693
  br label %202, !dbg !1455

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1215, metadata !575), !dbg !1277
  %204 = icmp ult i64 %203, %131, !dbg !1459
  br i1 %204, label %205, label %207, !dbg !1463

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1465
  store i8 48, i8* %206, align 1, !dbg !1465, !tbaa !693
  br label %207, !dbg !1465

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1215, metadata !575), !dbg !1277
  br label %476, !dbg !1469

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1470

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1471

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1472

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1474

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1476
  %215 = icmp ult i64 %214, %156, !dbg !1478
  br i1 %215, label %216, label %476, !dbg !1479

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1480
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1482
  %219 = load i8, i8* %218, align 1, !dbg !1482, !tbaa !693
  %220 = icmp eq i8 %219, 63, !dbg !1483
  br i1 %220, label %221, label %476, !dbg !1484

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1486
  %223 = load i8, i8* %222, align 1, !dbg !1486, !tbaa !693
  %224 = sext i8 %223 to i32, !dbg !1486
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
  ], !dbg !1487

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1488

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1225, metadata !575), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1214, metadata !575), !dbg !1352
  %227 = icmp ult i64 %125, %131, !dbg !1490
  br i1 %227, label %228, label %230, !dbg !1494

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1496
  store i8 63, i8* %229, align 1, !dbg !1496, !tbaa !693
  br label %230, !dbg !1496

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1215, metadata !575), !dbg !1277
  %232 = icmp ult i64 %231, %131, !dbg !1500
  br i1 %232, label %233, label %235, !dbg !1504

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1506
  store i8 34, i8* %234, align 1, !dbg !1506, !tbaa !693
  br label %235, !dbg !1506

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1215, metadata !575), !dbg !1277
  %237 = icmp ult i64 %236, %131, !dbg !1510
  br i1 %237, label %238, label %240, !dbg !1514

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1516
  store i8 34, i8* %239, align 1, !dbg !1516, !tbaa !693
  br label %240, !dbg !1516

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1215, metadata !575), !dbg !1277
  %242 = icmp ult i64 %241, %131, !dbg !1520
  br i1 %242, label %243, label %245, !dbg !1524

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1526
  store i8 63, i8* %244, align 1, !dbg !1526, !tbaa !693
  br label %245, !dbg !1526

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1215, metadata !575), !dbg !1277
  br label %476, !dbg !1530

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1229, metadata !575), !dbg !1531
  br label %257, !dbg !1532

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1229, metadata !575), !dbg !1531
  br label %257, !dbg !1533

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1229, metadata !575), !dbg !1531
  br label %255, !dbg !1534

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1229, metadata !575), !dbg !1531
  br label %255, !dbg !1535

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1229, metadata !575), !dbg !1531
  br label %257, !dbg !1536

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1229, metadata !575), !dbg !1531
  br i1 %114, label %253, label %254, !dbg !1537

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1538

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1541

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1229, metadata !575), !dbg !1531
  br i1 %118, label %257, label %644, !dbg !1543

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1229, metadata !575), !dbg !1531
  br i1 %105, label %503, label %476, !dbg !1545

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1546
  br i1 %260, label %261, label %266, !dbg !1548

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1549, !tbaa !693
  %263 = icmp ne i8 %262, 0, !dbg !1551
  %264 = icmp ne i64 %124, 0, !dbg !1552
  %265 = or i1 %264, %263, !dbg !1554
  br i1 %265, label %476, label %272, !dbg !1554

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1555
  %268 = icmp ne i64 %124, 0, !dbg !1552
  %269 = or i1 %268, %267, !dbg !1557
  br i1 %269, label %476, label %272, !dbg !1557

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1552
  br i1 %271, label %272, label %476, !dbg !1559

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1232, metadata !575), !dbg !1366
  br label %273, !dbg !1560

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1232, metadata !575), !dbg !1366
  br i1 %118, label %476, label %644, !dbg !1561

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1223, metadata !575), !dbg !1286
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1232, metadata !575), !dbg !1366
  br i1 %114, label %276, label %476, !dbg !1563

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1564

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1567
  %279 = icmp ne i64 %126, 0, !dbg !1569
  %280 = or i1 %279, %278, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1216, metadata !575), !dbg !1278
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1206, metadata !575), !dbg !1269
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1571
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1206, metadata !575), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1216, metadata !575), !dbg !1278
  %283 = icmp ult i64 %125, %282, !dbg !1572
  br i1 %283, label %284, label %286, !dbg !1576

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1578
  store i8 39, i8* %285, align 1, !dbg !1578, !tbaa !693
  br label %286, !dbg !1578

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1580
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1215, metadata !575), !dbg !1277
  %288 = icmp ult i64 %287, %282, !dbg !1582
  br i1 %288, label %289, label %291, !dbg !1586

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1588
  store i8 92, i8* %290, align 1, !dbg !1588, !tbaa !693
  br label %291, !dbg !1588

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1215, metadata !575), !dbg !1277
  %293 = icmp ult i64 %292, %282, !dbg !1592
  br i1 %293, label %294, label %296, !dbg !1596

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1598
  store i8 39, i8* %295, align 1, !dbg !1598, !tbaa !693
  br label %296, !dbg !1598

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1222, metadata !575), !dbg !1285
  br label %476, !dbg !1602

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1603

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1233, metadata !575), !dbg !1604
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1605
  %301 = load i16*, i16** %300, align 8, !dbg !1605, !tbaa !583
  %302 = zext i8 %159 to i64, !dbg !1605
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1605
  %304 = load i16, i16* %303, align 2, !dbg !1605, !tbaa !820
  %305 = lshr i16 %304, 14, !dbg !1607
  %306 = trunc i16 %305 to i8, !dbg !1607
  %307 = and i8 %306, 1, !dbg !1607
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1236, metadata !575), !dbg !1608
  br label %368, !dbg !1609

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9, !dbg !1610
  store i64 0, i64* %10, align 8, !dbg !1611
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1233, metadata !575), !dbg !1604
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1236, metadata !575), !dbg !1608
  %309 = icmp eq i64 %156, -1, !dbg !1612
  br i1 %309, label %310, label %312, !dbg !1614, !llvm.loop !1615

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1208, metadata !575), !dbg !1271
  br label %312, !dbg !1619, !llvm.loop !1615

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1608

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1236, metadata !575), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1233, metadata !575), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1208, metadata !575), !dbg !1271
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9, !dbg !1620
  %317 = add i64 %315, %124, !dbg !1621
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1622
  %319 = sub i64 %313, %317, !dbg !1623
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1237, metadata !1624), !dbg !1625
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1254, metadata !1624), !dbg !1626
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #9, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1257, metadata !575), !dbg !1628
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1629

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1233, metadata !575), !dbg !1604
  %322 = icmp ugt i64 %313, %317, !dbg !1630
  br i1 %322, label %323, label %351, !dbg !1633

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1634

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1634
  %328 = load i8, i8* %327, align 1, !dbg !1634, !tbaa !693
  %329 = icmp eq i8 %328, 0, !dbg !1636
  br i1 %329, label %348, label %330, !dbg !1637

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1233, metadata !575), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1233, metadata !575), !dbg !1604
  %332 = add i64 %331, %124, !dbg !1640
  %333 = icmp ult i64 %332, %313, !dbg !1630
  br i1 %333, label %324, label %348, !dbg !1633, !llvm.loop !1641

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1643
  %336 = and i1 %116, %335, !dbg !1647
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1258, metadata !575), !dbg !1648
  br i1 %336, label %337, label %355, !dbg !1647

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1649

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1649
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1650
  %342 = load i8, i8* %341, align 1, !dbg !1650, !tbaa !693
  %343 = sext i8 %342 to i32, !dbg !1650
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1651

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1258, metadata !575), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1258, metadata !575), !dbg !1648
  %346 = icmp ult i64 %345, %320, !dbg !1643
  br i1 %346, label %338, label %354, !dbg !1654, !llvm.loop !1656

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1608

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1608

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1608

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1236, metadata !575), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1233, metadata !575), !dbg !1604
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1659
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1660

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1660, !tbaa !982
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1254, metadata !575), !dbg !1626
  %357 = call i32 @iswprint(i32 %356) #9, !dbg !1662
  %358 = icmp eq i32 %357, 0, !dbg !1662
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1236, metadata !575), !dbg !1608
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1663
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1236, metadata !575), !dbg !1608
  %360 = add i64 %320, %315, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1233, metadata !575), !dbg !1604
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1236, metadata !575), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1233, metadata !575), !dbg !1604
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1659
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1237, metadata !1624), !dbg !1625
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1665
  %362 = icmp eq i32 %361, 0, !dbg !1666
  br i1 %362, label %314, label %363, !dbg !1667, !llvm.loop !1615

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1669

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1669
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1236, metadata !575), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1233, metadata !575), !dbg !1604
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !1659
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !1669
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1236, metadata !575), !dbg !1608
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1233, metadata !575), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1208, metadata !575), !dbg !1271
  %372 = and i8 %371, 1, !dbg !1670
  %373 = icmp ne i8 %372, 0, !dbg !1670
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1232, metadata !575), !dbg !1366
  %374 = icmp ult i64 %370, 2, !dbg !1671
  %375 = or i1 %373, %113, !dbg !1672
  %376 = and i1 %374, %375, !dbg !1674
  br i1 %376, label %476, label %377, !dbg !1674

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1265, metadata !575), !dbg !1676
  br label %379, !dbg !1677

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1231, metadata !575), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1230, metadata !575), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1225, metadata !575), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1214, metadata !575), !dbg !1352
  br i1 %375, label %432, label %386, !dbg !1678

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1683

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1231, metadata !575), !dbg !1365
  %388 = and i8 %382, 1, !dbg !1687
  %389 = icmp eq i8 %388, 0, !dbg !1687
  %390 = and i1 %114, %389, !dbg !1690
  br i1 %390, label %391, label %407, !dbg !1690

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1692
  br i1 %392, label %393, label %395, !dbg !1697

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1699
  store i8 39, i8* %394, align 1, !dbg !1699, !tbaa !693
  br label %395, !dbg !1699

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1215, metadata !575), !dbg !1277
  %397 = icmp ult i64 %396, %131, !dbg !1703
  br i1 %397, label %398, label %400, !dbg !1707

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1709
  store i8 36, i8* %399, align 1, !dbg !1709, !tbaa !693
  br label %400, !dbg !1709

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1215, metadata !575), !dbg !1277
  %402 = icmp ult i64 %401, %131, !dbg !1713
  br i1 %402, label %403, label %405, !dbg !1717

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1719
  store i8 39, i8* %404, align 1, !dbg !1719, !tbaa !693
  br label %405, !dbg !1719

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1222, metadata !575), !dbg !1285
  br label %407, !dbg !1723

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1215, metadata !575), !dbg !1277
  %410 = icmp ult i64 %408, %131, !dbg !1725
  br i1 %410, label %411, label %413, !dbg !1729

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1731
  store i8 92, i8* %412, align 1, !dbg !1731, !tbaa !693
  br label %413, !dbg !1731

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1215, metadata !575), !dbg !1277
  %415 = icmp ult i64 %414, %131, !dbg !1735
  br i1 %415, label %416, label %420, !dbg !1739

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1741
  %418 = or i8 %417, 48, !dbg !1741
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1741
  store i8 %418, i8* %419, align 1, !dbg !1741, !tbaa !693
  br label %420, !dbg !1741

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1215, metadata !575), !dbg !1277
  %422 = icmp ult i64 %421, %131, !dbg !1745
  br i1 %422, label %423, label %428, !dbg !1749

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1751
  %425 = and i8 %424, 7, !dbg !1751
  %426 = or i8 %425, 48, !dbg !1751
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1751
  store i8 %426, i8* %427, align 1, !dbg !1751, !tbaa !693
  br label %428, !dbg !1751

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1215, metadata !575), !dbg !1277
  %430 = and i8 %383, 7, !dbg !1755
  %431 = or i8 %430, 48, !dbg !1756
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1225, metadata !575), !dbg !1383
  br label %441, !dbg !1757

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1758
  %434 = icmp eq i8 %433, 0, !dbg !1758
  br i1 %434, label %441, label %435, !dbg !1760

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1761
  br i1 %436, label %437, label %439, !dbg !1766

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1768
  store i8 92, i8* %438, align 1, !dbg !1768, !tbaa !693
  br label %439, !dbg !1768

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1230, metadata !575), !dbg !1364
  br label %441, !dbg !1772

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1231, metadata !575), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1230, metadata !575), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1225, metadata !575), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1215, metadata !575), !dbg !1277
  %447 = add i64 %380, 1, !dbg !1773
  %448 = icmp ugt i64 %378, %447, !dbg !1775
  br i1 %448, label %449, label %541, !dbg !1776

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1777
  %451 = icmp ne i8 %450, 0, !dbg !1777
  %452 = and i8 %446, 1, !dbg !1781
  %453 = icmp eq i8 %452, 0, !dbg !1781
  %454 = and i1 %451, %453, !dbg !1777
  br i1 %454, label %455, label %466, !dbg !1777

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1783
  br i1 %456, label %457, label %459, !dbg !1788

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1790
  store i8 39, i8* %458, align 1, !dbg !1790, !tbaa !693
  br label %459, !dbg !1790

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1215, metadata !575), !dbg !1277
  %461 = icmp ult i64 %460, %131, !dbg !1794
  br i1 %461, label %462, label %464, !dbg !1798

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !1800
  store i8 39, i8* %463, align 1, !dbg !1800, !tbaa !693
  br label %464, !dbg !1800

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1222, metadata !575), !dbg !1285
  br label %466, !dbg !1804

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1215, metadata !575), !dbg !1277
  %469 = icmp ult i64 %467, %131, !dbg !1806
  br i1 %469, label %470, label %472, !dbg !1810

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !1812
  store i8 %444, i8* %471, align 1, !dbg !1812, !tbaa !693
  br label %472, !dbg !1812

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1214, metadata !575), !dbg !1352
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !1816
  %475 = load i8, i8* %474, align 1, !dbg !1816, !tbaa !693
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1225, metadata !575), !dbg !1383
  br label %379, !dbg !1817, !llvm.loop !1819

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1206, metadata !575), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1232, metadata !575), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1231, metadata !575), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1230, metadata !575), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1225, metadata !575), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1223, metadata !575), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1208, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1216, metadata !575), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1214, metadata !575), !dbg !1352
  br i1 %107, label %488, label %487, !dbg !1822

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !1824

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !1825

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !1826
  %491 = zext i8 %490 to i64, !dbg !1826
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1828
  %493 = load i32, i32* %492, align 4, !dbg !1828, !tbaa !982
  %494 = and i8 %483, 31, !dbg !1829
  %495 = zext i8 %494 to i32, !dbg !1830
  %496 = shl i32 1, %495, !dbg !1831
  %497 = and i32 %493, %496, !dbg !1831
  %498 = icmp eq i32 %497, 0, !dbg !1831
  %499 = icmp eq i8 %157, 0, !dbg !1832
  %500 = and i1 %499, %498, !dbg !1833
  br i1 %500, label %542, label %503, !dbg !1833

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !1832
  br i1 %502, label %542, label %503, !dbg !1834

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1206, metadata !575), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1232, metadata !575), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1225, metadata !575), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1223, metadata !575), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1208, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1216, metadata !575), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1214, metadata !575), !dbg !1352
  br i1 %112, label %513, label %644, !dbg !1836

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1231, metadata !575), !dbg !1365
  %514 = and i8 %508, 1, !dbg !1839
  %515 = icmp eq i8 %514, 0, !dbg !1839
  %516 = and i1 %114, %515, !dbg !1842
  br i1 %516, label %517, label %533, !dbg !1842

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !1844
  br i1 %518, label %519, label %521, !dbg !1849

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !1851
  store i8 39, i8* %520, align 1, !dbg !1851, !tbaa !693
  br label %521, !dbg !1851

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1215, metadata !575), !dbg !1277
  %523 = icmp ult i64 %522, %512, !dbg !1855
  br i1 %523, label %524, label %526, !dbg !1859

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !1861
  store i8 36, i8* %525, align 1, !dbg !1861, !tbaa !693
  br label %526, !dbg !1861

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1215, metadata !575), !dbg !1277
  %528 = icmp ult i64 %527, %512, !dbg !1865
  br i1 %528, label %529, label %531, !dbg !1869

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1871
  store i8 39, i8* %530, align 1, !dbg !1871, !tbaa !693
  br label %531, !dbg !1871

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1222, metadata !575), !dbg !1285
  br label %533, !dbg !1875

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1215, metadata !575), !dbg !1277
  %536 = icmp ult i64 %534, %512, !dbg !1877
  br i1 %536, label %537, label %539, !dbg !1881

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !1883
  store i8 92, i8* %538, align 1, !dbg !1883, !tbaa !693
  br label %539, !dbg !1883

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1206, metadata !575), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1232, metadata !575), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1231, metadata !575), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1225, metadata !575), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1223, metadata !575), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1208, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1216, metadata !575), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1214, metadata !575), !dbg !1352
  br label %569, !dbg !1887

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1269

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1206, metadata !575), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1232, metadata !575), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1231, metadata !575), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1225, metadata !575), !dbg !1383
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1223, metadata !575), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1208, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1216, metadata !575), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1214, metadata !575), !dbg !1352
  %553 = and i8 %547, 1, !dbg !1887
  %554 = icmp ne i8 %553, 0, !dbg !1887
  %555 = and i8 %550, 1, !dbg !1891
  %556 = icmp eq i8 %555, 0, !dbg !1891
  %557 = and i1 %554, %556, !dbg !1887
  br i1 %557, label %558, label %569, !dbg !1887

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !1893
  br i1 %559, label %560, label %562, !dbg !1898

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !1900
  store i8 39, i8* %561, align 1, !dbg !1900, !tbaa !693
  br label %562, !dbg !1900

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1215, metadata !575), !dbg !1277
  %564 = icmp ult i64 %563, %552, !dbg !1904
  br i1 %564, label %565, label %567, !dbg !1908

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !1910
  store i8 39, i8* %566, align 1, !dbg !1910, !tbaa !693
  br label %567, !dbg !1910

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1215, metadata !575), !dbg !1277
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1222, metadata !575), !dbg !1285
  br label %569, !dbg !1914

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1222, metadata !575), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1215, metadata !575), !dbg !1277
  %579 = icmp ult i64 %577, %570, !dbg !1916
  br i1 %579, label %580, label %582, !dbg !1920

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !1922
  store i8 %572, i8* %581, align 1, !dbg !1922, !tbaa !693
  br label %582, !dbg !1922

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1215, metadata !575), !dbg !1277
  %584 = and i8 %571, 1, !dbg !1926
  %585 = icmp eq i8 %584, 0, !dbg !1926
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1224, metadata !575), !dbg !1287
  %586 = select i1 %585, i8 0, i8 %130, !dbg !1928
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1224, metadata !575), !dbg !1287
  br label %587, !dbg !1929

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1214, metadata !575), !dbg !1352
  br label %123, !dbg !1932, !llvm.loop !1933

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !1936
  %600 = and i1 %114, %599, !dbg !1938
  %601 = xor i1 %600, true, !dbg !1938
  %602 = or i1 %112, %601, !dbg !1938
  br i1 %602, label %603, label %648, !dbg !1938

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !1939
  %605 = xor i1 %604, true, !dbg !1939
  %606 = and i8 %129, 1, !dbg !1941
  %607 = icmp eq i8 %606, 0, !dbg !1941
  %608 = or i1 %607, %605, !dbg !1939
  br i1 %608, label %618, label %609, !dbg !1939

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !1943
  %611 = icmp eq i8 %610, 0, !dbg !1943
  br i1 %611, label %614, label %612, !dbg !1946

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !1947
  br label %659, !dbg !1948

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !1949
  %616 = icmp ne i64 %126, 0, !dbg !1951
  %617 = and i1 %616, %615, !dbg !1953
  br i1 %617, label %27, label %618, !dbg !1953

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !1954
  %620 = and i1 %619, %112, !dbg !1956
  br i1 %620, label %621, label %638, !dbg !1956

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1217, metadata !575), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1215, metadata !575), !dbg !1277
  %622 = load i8, i8* %100, align 1, !dbg !1957, !tbaa !693
  %623 = icmp eq i8 %622, 0, !dbg !1961
  br i1 %623, label %638, label %624, !dbg !1961

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !1963

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !1963
  br i1 %629, label %630, label %632, !dbg !1967

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !1969
  store i8 %626, i8* %631, align 1, !dbg !1969, !tbaa !693
  br label %632, !dbg !1969

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1215, metadata !575), !dbg !1277
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !1973
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1217, metadata !575), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1217, metadata !575), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1215, metadata !575), !dbg !1277
  %635 = load i8, i8* %634, align 1, !dbg !1957, !tbaa !693
  %636 = icmp eq i8 %635, 0, !dbg !1961
  br i1 %636, label %637, label %625, !dbg !1961, !llvm.loop !1975

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1277

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1215, metadata !575), !dbg !1277
  %640 = icmp ult i64 %639, %131, !dbg !1978
  br i1 %640, label %641, label %659, !dbg !1980

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !1981
  store i8 0, i8* %642, align 1, !dbg !1982, !tbaa !693
  br label %659, !dbg !1981

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1269

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1269

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1269

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1206, metadata !575), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1208, metadata !575), !dbg !1271
  %653 = icmp ne i32 %650, 2, !dbg !1983
  %654 = icmp eq i8 %104, 0, !dbg !1985
  %655 = or i1 %653, %654, !dbg !1987
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1209, metadata !575), !dbg !1272
  %656 = select i1 %655, i32 %650, i32 4, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1209, metadata !575), !dbg !1272
  %657 = and i32 %5, -3, !dbg !1988
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !1989
  br label %659, !dbg !1990

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !1991
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1992 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1996, metadata !575), !dbg !2000
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1997, metadata !575), !dbg !2001
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !2002
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1998, metadata !575), !dbg !2003
  %4 = icmp eq i8* %3, %0, !dbg !2004
  br i1 %4, label %5, label %75, !dbg !2006

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !2007
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1999, metadata !575), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2009, metadata !575), !dbg !2025
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2023, metadata !575), !dbg !2028
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2024, metadata !575), !dbg !2029
  %7 = load i8, i8* %6, align 1, !tbaa !693
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2030
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2030

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2033, metadata !575), !dbg !2047
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2045, metadata !575), !dbg !2051
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2046, metadata !575), !dbg !2052
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !693
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2053
  %15 = icmp eq i32 %14, 84, !dbg !2053
  br i1 %15, label %16, label %72, !dbg !2053

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2056, metadata !575), !dbg !2069
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2067, metadata !575), !dbg !2073
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2068, metadata !575), !dbg !2074
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !693
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2075
  %21 = icmp eq i32 %20, 70, !dbg !2075
  br i1 %21, label %22, label %72, !dbg !2075

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2078, metadata !575), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2088, metadata !575), !dbg !2094
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2089, metadata !575), !dbg !2095
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !693
  %25 = icmp eq i8 %24, 45, !dbg !2096
  br i1 %25, label %26, label %72, !dbg !2099

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2101, metadata !575), !dbg !2112
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2110, metadata !575), !dbg !2116
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2111, metadata !575), !dbg !2117
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !693
  %29 = icmp eq i8 %28, 56, !dbg !2118
  br i1 %29, label %30, label %72, !dbg !2121

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2123, metadata !575), !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2131, metadata !575), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2132, metadata !575), !dbg !2138
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !693
  %33 = icmp eq i8 %32, 0, !dbg !2139
  br i1 %33, label %34, label %72, !dbg !2142

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2144, !tbaa !693
  %36 = icmp eq i8 %35, 96, !dbg !2145
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.53, i64 0, i64 0), !dbg !2144
  br label %75, !dbg !2146

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2033, metadata !575), !dbg !2147
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2045, metadata !575), !dbg !2151
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2046, metadata !575), !dbg !2152
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !693
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2153
  %43 = icmp eq i32 %42, 66, !dbg !2153
  br i1 %43, label %44, label %72, !dbg !2153

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2056, metadata !575), !dbg !2154
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2067, metadata !575), !dbg !2156
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2068, metadata !575), !dbg !2157
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !693
  %47 = icmp eq i8 %46, 49, !dbg !2158
  br i1 %47, label %48, label %72, !dbg !2160

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2078, metadata !575), !dbg !2162
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2088, metadata !575), !dbg !2164
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2089, metadata !575), !dbg !2165
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !693
  %51 = icmp eq i8 %50, 56, !dbg !2166
  br i1 %51, label %52, label %72, !dbg !2167

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2101, metadata !575), !dbg !2168
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2110, metadata !575), !dbg !2170
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2111, metadata !575), !dbg !2171
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !693
  %55 = icmp eq i8 %54, 48, !dbg !2172
  br i1 %55, label %56, label %72, !dbg !2173

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2123, metadata !575), !dbg !2174
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2131, metadata !575), !dbg !2176
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2132, metadata !575), !dbg !2177
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !693
  %59 = icmp eq i8 %58, 51, !dbg !2178
  br i1 %59, label %60, label %72, !dbg !2179

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2180, metadata !575), !dbg !2189
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2187, metadata !575), !dbg !2193
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2188, metadata !575), !dbg !2194
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !693
  %63 = icmp eq i8 %62, 48, !dbg !2195
  br i1 %63, label %64, label %72, !dbg !2198

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2200, metadata !575), !dbg !2208
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2206, metadata !575), !dbg !2212
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2207, metadata !575), !dbg !2213
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !693
  %67 = icmp eq i8 %66, 0, !dbg !2214
  br i1 %67, label %68, label %72, !dbg !2217

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2218, !tbaa !693
  %70 = icmp eq i8 %69, 96, !dbg !2219
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.54, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.55, i64 0, i64 0), !dbg !2218
  br label %75, !dbg !2220

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2221
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), !dbg !2222
  br label %75, !dbg !2223

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2224
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #11

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #11

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2225 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2229, metadata !575), !dbg !2232
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2230, metadata !575), !dbg !2233
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2231, metadata !575), !dbg !2234
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2235, metadata !575) #9, !dbg !2248
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2240, metadata !575) #9, !dbg !2250
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2241, metadata !575) #9, !dbg !2251
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2242, metadata !575) #9, !dbg !2252
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2253
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2253
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2243, metadata !575) #9, !dbg !2254
  %6 = tail call i32* @__errno_location() #1, !dbg !2255
  %7 = load i32, i32* %6, align 4, !dbg !2255, !tbaa !982
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2244, metadata !575) #9, !dbg !2256
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2257
  %9 = load i32, i32* %8, align 4, !dbg !2257, !tbaa !1137
  %10 = or i32 %9, 1, !dbg !2258
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2245, metadata !575) #9, !dbg !2259
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2260
  %12 = load i32, i32* %11, align 8, !dbg !2260, !tbaa !1075
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2261
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2262
  %15 = load i8*, i8** %14, align 8, !dbg !2262, !tbaa !1164
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2263
  %17 = load i8*, i8** %16, align 8, !dbg !2263, !tbaa !1167
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !2264
  %19 = add i64 %18, 1, !dbg !2265
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2246, metadata !575) #9, !dbg !2266
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2267, metadata !575) #9, !dbg !2272
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2274
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2247, metadata !575) #9, !dbg !2275
  %21 = load i32, i32* %11, align 8, !dbg !2276, !tbaa !1075
  %22 = load i8*, i8** %14, align 8, !dbg !2277, !tbaa !1164
  %23 = load i8*, i8** %16, align 8, !dbg !2278, !tbaa !1167
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !2279
  store i32 %7, i32* %6, align 4, !dbg !2280, !tbaa !982
  ret i8* %20, !dbg !2281
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2236 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2235, metadata !575), !dbg !2282
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2240, metadata !575), !dbg !2283
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2241, metadata !575), !dbg !2284
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2242, metadata !575), !dbg !2285
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2286
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2286
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2243, metadata !575), !dbg !2287
  %7 = tail call i32* @__errno_location() #1, !dbg !2288
  %8 = load i32, i32* %7, align 4, !dbg !2288, !tbaa !982
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2244, metadata !575), !dbg !2289
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2290
  %10 = load i32, i32* %9, align 4, !dbg !2290, !tbaa !1137
  %11 = icmp ne i64* %2, null, !dbg !2291
  %12 = xor i1 %11, true, !dbg !2291
  %13 = zext i1 %12 to i32, !dbg !2291
  %14 = or i32 %10, %13, !dbg !2292
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2245, metadata !575), !dbg !2293
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2294
  %16 = load i32, i32* %15, align 8, !dbg !2294, !tbaa !1075
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2295
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2296
  %19 = load i8*, i8** %18, align 8, !dbg !2296, !tbaa !1164
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2297
  %21 = load i8*, i8** %20, align 8, !dbg !2297, !tbaa !1167
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2298
  %23 = add i64 %22, 1, !dbg !2299
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2246, metadata !575), !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2267, metadata !575) #9, !dbg !2301
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2303
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2247, metadata !575), !dbg !2304
  %25 = load i32, i32* %15, align 8, !dbg !2305, !tbaa !1075
  %26 = load i8*, i8** %18, align 8, !dbg !2306, !tbaa !1164
  %27 = load i8*, i8** %20, align 8, !dbg !2307, !tbaa !1167
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2308
  store i32 %8, i32* %7, align 4, !dbg !2309, !tbaa !982
  br i1 %11, label %29, label %30, !dbg !2310

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2311, !tbaa !2313
  br label %30, !dbg !2314

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2315
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2316 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2320, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2318, metadata !575), !dbg !2321
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2319, metadata !575), !dbg !2322
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2319, metadata !575), !dbg !2322
  %2 = load i32, i32* @nslots, align 4, !dbg !2323, !tbaa !982
  %3 = icmp sgt i32 %2, 1, !dbg !2327
  br i1 %3, label %4, label %14, !dbg !2328

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2330

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2330
  %8 = load i8*, i8** %7, align 8, !dbg !2330, !tbaa !2331
  tail call void @free(i8* %8) #9, !dbg !2333
  %9 = add nuw i64 %6, 1, !dbg !2334
  %10 = load i32, i32* @nslots, align 4, !dbg !2323, !tbaa !982
  %11 = sext i32 %10 to i64, !dbg !2327
  %12 = icmp slt i64 %9, %11, !dbg !2327
  br i1 %12, label %5, label %13, !dbg !2328, !llvm.loop !2336

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2339

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2339
  %16 = load i8*, i8** %15, align 8, !dbg !2339, !tbaa !2331
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2341
  br i1 %17, label %19, label %18, !dbg !2342

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #9, !dbg !2343
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2345, !tbaa !2346
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2347, !tbaa !2331
  br label %19, !dbg !2348

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2349
  br i1 %20, label %23, label %21, !dbg !2351

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2352
  tail call void @free(i8* %22) #9, !dbg !2354
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2355, !tbaa !583
  br label %23, !dbg !2356

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2357, !tbaa !982
  ret void, !dbg !2358
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2359 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2363, metadata !575), !dbg !2365
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2364, metadata !575), !dbg !2366
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2367
  ret i8* %3, !dbg !2368
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2369 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2373, metadata !575), !dbg !2387
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2374, metadata !575), !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2375, metadata !575), !dbg !2389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2376, metadata !575), !dbg !2390
  %5 = tail call i32* @__errno_location() #1, !dbg !2391
  %6 = load i32, i32* %5, align 4, !dbg !2391, !tbaa !982
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2377, metadata !575), !dbg !2392
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2393, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2378, metadata !575), !dbg !2394
  %8 = icmp slt i32 %0, 0, !dbg !2395
  br i1 %8, label %9, label %10, !dbg !2397

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2398
  unreachable, !dbg !2398

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2399, !tbaa !982
  %12 = icmp sgt i32 %11, %0, !dbg !2400
  br i1 %12, label %34, label %13, !dbg !2401

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2402
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2403
  br i1 %15, label %16, label %17, !dbg !2405

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2406
  unreachable, !dbg !2406

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2407
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2407
  %20 = add nsw i32 %0, 1, !dbg !2409
  %21 = sext i32 %20 to i64, !dbg !2410
  %22 = shl nsw i64 %21, 4, !dbg !2411
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2412
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2412
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2378, metadata !575), !dbg !2394
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2413, !tbaa !583
  br i1 %14, label %25, label %26, !dbg !2414

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2415, !tbaa.struct !2417
  br label %26, !dbg !2418

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2419, !tbaa !982
  %28 = sext i32 %27 to i64, !dbg !2420
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2420
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2421
  %31 = sub nsw i32 %20, %27, !dbg !2422
  %32 = sext i32 %31 to i64, !dbg !2423
  %33 = shl nsw i64 %32, 4, !dbg !2424
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2421
  store i32 %20, i32* @nslots, align 4, !dbg !2425, !tbaa !982
  br label %34, !dbg !2426

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2378, metadata !575), !dbg !2394
  %36 = sext i32 %0 to i64, !dbg !2427
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2428
  %38 = load i64, i64* %37, align 8, !dbg !2428, !tbaa !2346
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2382, metadata !575), !dbg !2429
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2430
  %40 = load i8*, i8** %39, align 8, !dbg !2430, !tbaa !2331
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2384, metadata !575), !dbg !2431
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2432
  %42 = load i32, i32* %41, align 4, !dbg !2432, !tbaa !1137
  %43 = or i32 %42, 1, !dbg !2433
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2385, metadata !575), !dbg !2434
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2435
  %45 = load i32, i32* %44, align 8, !dbg !2435, !tbaa !1075
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2436
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2437
  %48 = load i8*, i8** %47, align 8, !dbg !2437, !tbaa !1164
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2438
  %50 = load i8*, i8** %49, align 8, !dbg !2438, !tbaa !1167
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2439
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2386, metadata !575), !dbg !2440
  %52 = icmp ugt i64 %38, %51, !dbg !2441
  br i1 %52, label %63, label %53, !dbg !2443

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2444
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2382, metadata !575), !dbg !2429
  store i64 %54, i64* %37, align 8, !dbg !2446, !tbaa !2346
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2447
  br i1 %55, label %57, label %56, !dbg !2449

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2450
  br label %57, !dbg !2450

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2267, metadata !575) #9, !dbg !2451
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2453
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2384, metadata !575), !dbg !2431
  store i8* %58, i8** %39, align 8, !dbg !2454, !tbaa !2331
  %59 = load i32, i32* %44, align 8, !dbg !2455, !tbaa !1075
  %60 = load i8*, i8** %47, align 8, !dbg !2456, !tbaa !1164
  %61 = load i8*, i8** %49, align 8, !dbg !2457, !tbaa !1167
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2458
  br label %63, !dbg !2459

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2384, metadata !575), !dbg !2431
  store i32 %6, i32* %5, align 4, !dbg !2460, !tbaa !982
  ret i8* %64, !dbg !2461
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #11

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #11

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2462 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2466, metadata !575), !dbg !2469
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2467, metadata !575), !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2468, metadata !575), !dbg !2471
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2472
  ret i8* %4, !dbg !2473
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2474 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2478, metadata !575), !dbg !2479
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2363, metadata !575) #9, !dbg !2480
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2364, metadata !575) #9, !dbg !2482
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2483
  ret i8* %2, !dbg !2484
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2485 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2489, metadata !575), !dbg !2491
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2490, metadata !575), !dbg !2492
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2466, metadata !575) #9, !dbg !2493
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2467, metadata !575) #9, !dbg !2495
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2468, metadata !575) #9, !dbg !2496
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2497
  ret i8* %3, !dbg !2498
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2499 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2507, metadata !2513), !dbg !2514
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2503, metadata !575), !dbg !2516
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2504, metadata !575), !dbg !2517
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2505, metadata !575), !dbg !2518
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2519
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2519
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2506, metadata !1624), !dbg !2520
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2512, metadata !575) #9, !dbg !2521
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2522
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2522
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2507, metadata !575) #9, !dbg !2514
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2507, metadata !2523) #9, !dbg !2514
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2514
  %8 = icmp eq i32 %1, 10, !dbg !2524
  br i1 %8, label %9, label %10, !dbg !2526

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2527, !noalias !2528
  unreachable, !dbg !2527

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2507, metadata !2523) #9, !dbg !2514
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2531
  store i32 %1, i32* %11, align 8, !dbg !2531, !alias.scope !2528
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2531
  %13 = bitcast i32* %12 to i8*, !dbg !2531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2531
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2532
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2506, metadata !1624), !dbg !2520
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2533
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2534
  ret i8* %14, !dbg !2535
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2536 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2507, metadata !2513), !dbg !2545
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2540, metadata !575), !dbg !2547
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2541, metadata !575), !dbg !2548
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2542, metadata !575), !dbg !2549
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2543, metadata !575), !dbg !2550
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2551
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2551
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2544, metadata !1624), !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2512, metadata !575) #9, !dbg !2553
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2554
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2554
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2507, metadata !575) #9, !dbg !2545
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2507, metadata !2523) #9, !dbg !2545
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2545
  %9 = icmp eq i32 %1, 10, !dbg !2555
  br i1 %9, label %10, label %11, !dbg !2556

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2557, !noalias !2558
  unreachable, !dbg !2557

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2507, metadata !2523) #9, !dbg !2545
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2561
  store i32 %1, i32* %12, align 8, !dbg !2561, !alias.scope !2558
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2561
  %14 = bitcast i32* %13 to i8*, !dbg !2561
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2561
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2562
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2544, metadata !1624), !dbg !2552
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2563
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2564
  ret i8* %15, !dbg !2565
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2566 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2507, metadata !2513), !dbg !2572
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2570, metadata !575), !dbg !2575
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2571, metadata !575), !dbg !2576
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2503, metadata !575) #9, !dbg !2577
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2504, metadata !575) #9, !dbg !2578
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2505, metadata !575) #9, !dbg !2579
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2580
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2580
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2506, metadata !1624) #9, !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2512, metadata !575) #9, !dbg !2582
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2583
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2583
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2507, metadata !575) #9, !dbg !2572
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2507, metadata !2523) #9, !dbg !2572
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2572
  %7 = icmp eq i32 %0, 10, !dbg !2584
  br i1 %7, label %8, label %9, !dbg !2585

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2586, !noalias !2587
  unreachable, !dbg !2586

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2507, metadata !2523) #9, !dbg !2572
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2590
  store i32 %0, i32* %10, align 8, !dbg !2590, !alias.scope !2587
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2590
  %12 = bitcast i32* %11 to i8*, !dbg !2590
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2590
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2591
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2506, metadata !1624) #9, !dbg !2581
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2592
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2593
  ret i8* %13, !dbg !2594
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2595 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2507, metadata !2513), !dbg !2602
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2599, metadata !575), !dbg !2605
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2600, metadata !575), !dbg !2606
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2601, metadata !575), !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2540, metadata !575) #9, !dbg !2608
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2541, metadata !575) #9, !dbg !2609
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2542, metadata !575) #9, !dbg !2610
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2543, metadata !575) #9, !dbg !2611
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2612
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2612
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2544, metadata !1624) #9, !dbg !2613
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2512, metadata !575) #9, !dbg !2614
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2615
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2615
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2507, metadata !575) #9, !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2507, metadata !2523) #9, !dbg !2602
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2602
  %8 = icmp eq i32 %0, 10, !dbg !2616
  br i1 %8, label %9, label %10, !dbg !2617

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2618, !noalias !2619
  unreachable, !dbg !2618

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2507, metadata !2523) #9, !dbg !2602
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2622
  store i32 %0, i32* %11, align 8, !dbg !2622, !alias.scope !2619
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2622
  %13 = bitcast i32* %12 to i8*, !dbg !2622
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2622
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2623
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2544, metadata !1624) #9, !dbg !2613
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2624
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2625
  ret i8* %14, !dbg !2626
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2627 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2631, metadata !575), !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2632, metadata !575), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2633, metadata !575), !dbg !2637
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2638
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2638
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2639, !tbaa.struct !2640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2634, metadata !1624), !dbg !2641
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1095, metadata !575), !dbg !2642
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1096, metadata !575), !dbg !2644
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1097, metadata !575), !dbg !2645
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1098, metadata !575), !dbg !2646
  %6 = lshr i8 %2, 5, !dbg !2647
  %7 = zext i8 %6 to i64, !dbg !2647
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2648
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1099, metadata !575), !dbg !2649
  %9 = and i8 %2, 31, !dbg !2650
  %10 = zext i8 %9 to i32, !dbg !2651
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1101, metadata !575), !dbg !2652
  %11 = load i32, i32* %8, align 4, !dbg !2653, !tbaa !982
  %12 = lshr i32 %11, %10, !dbg !2654
  %13 = and i32 %12, 1, !dbg !2655
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1102, metadata !575), !dbg !2656
  %14 = xor i32 %13, 1, !dbg !2657
  %15 = shl i32 %14, %10, !dbg !2658
  %16 = xor i32 %15, %11, !dbg !2659
  store i32 %16, i32* %8, align 4, !dbg !2659, !tbaa !982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2634, metadata !1624), !dbg !2641
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2660
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2661
  ret i8* %17, !dbg !2662
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2663 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2667, metadata !575), !dbg !2669
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2668, metadata !575), !dbg !2670
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2631, metadata !575) #9, !dbg !2671
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2632, metadata !575) #9, !dbg !2673
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2633, metadata !575) #9, !dbg !2674
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2675
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2676, !tbaa.struct !2640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2634, metadata !1624) #9, !dbg !2677
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1095, metadata !575) #9, !dbg !2678
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1096, metadata !575) #9, !dbg !2680
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1097, metadata !575) #9, !dbg !2681
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1098, metadata !575) #9, !dbg !2682
  %5 = lshr i8 %1, 5, !dbg !2683
  %6 = zext i8 %5 to i64, !dbg !2683
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2684
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1099, metadata !575) #9, !dbg !2685
  %8 = and i8 %1, 31, !dbg !2686
  %9 = zext i8 %8 to i32, !dbg !2687
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1101, metadata !575) #9, !dbg !2688
  %10 = load i32, i32* %7, align 4, !dbg !2689, !tbaa !982
  %11 = lshr i32 %10, %9, !dbg !2690
  %12 = and i32 %11, 1, !dbg !2691
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1102, metadata !575) #9, !dbg !2692
  %13 = xor i32 %12, 1, !dbg !2693
  %14 = shl i32 %13, %9, !dbg !2694
  %15 = xor i32 %14, %10, !dbg !2695
  store i32 %15, i32* %7, align 4, !dbg !2695, !tbaa !982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2634, metadata !1624) #9, !dbg !2677
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2696
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2697
  ret i8* %16, !dbg !2698
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2699 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2701, metadata !575), !dbg !2702
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2667, metadata !575) #9, !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2668, metadata !575) #9, !dbg !2705
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2631, metadata !575) #9, !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2632, metadata !575) #9, !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2633, metadata !575) #9, !dbg !2709
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2710
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9, !dbg !2710
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2711, !tbaa.struct !2640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2634, metadata !1624) #9, !dbg !2712
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1095, metadata !575) #9, !dbg !2713
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1096, metadata !575) #9, !dbg !2715
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1097, metadata !575) #9, !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1098, metadata !575) #9, !dbg !2717
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2718
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1099, metadata !575) #9, !dbg !2719
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1101, metadata !575) #9, !dbg !2720
  %5 = load i32, i32* %4, align 4, !dbg !2721, !tbaa !982
  %6 = or i32 %5, 67108864, !dbg !2722
  store i32 %6, i32* %4, align 4, !dbg !2722, !tbaa !982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2634, metadata !1624) #9, !dbg !2712
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2723
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9, !dbg !2724
  ret i8* %7, !dbg !2725
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2726 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2728, metadata !575), !dbg !2730
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2729, metadata !575), !dbg !2731
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2631, metadata !575) #9, !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2632, metadata !575) #9, !dbg !2734
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2633, metadata !575) #9, !dbg !2735
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2736
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !2736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2737, !tbaa.struct !2640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2634, metadata !1624) #9, !dbg !2738
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1095, metadata !575) #9, !dbg !2739
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1096, metadata !575) #9, !dbg !2741
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1097, metadata !575) #9, !dbg !2742
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1098, metadata !575) #9, !dbg !2743
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2744
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1099, metadata !575) #9, !dbg !2745
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1101, metadata !575) #9, !dbg !2746
  %6 = load i32, i32* %5, align 4, !dbg !2747, !tbaa !982
  %7 = or i32 %6, 67108864, !dbg !2748
  store i32 %7, i32* %5, align 4, !dbg !2748, !tbaa !982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2634, metadata !1624) #9, !dbg !2738
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2749
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !2750
  ret i8* %8, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2752 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2507, metadata !2513), !dbg !2758
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2754, metadata !575), !dbg !2760
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2755, metadata !575), !dbg !2761
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2756, metadata !575), !dbg !2762
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2763
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2763
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2512, metadata !575) #9, !dbg !2764
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2765
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2765
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2507, metadata !575) #9, !dbg !2758
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2507, metadata !2523) #9, !dbg !2758
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2758
  %9 = icmp eq i32 %1, 10, !dbg !2766
  br i1 %9, label %10, label %11, !dbg !2767

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2768, !noalias !2769
  unreachable, !dbg !2768

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2507, metadata !2523) #9, !dbg !2758
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2772
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2772
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2773
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2774
  store i32 %1, i32* %13, align 8, !dbg !2774
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2774
  %15 = bitcast i32* %14 to i8*, !dbg !2774
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2774
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2757, metadata !1624), !dbg !2775
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1095, metadata !575), !dbg !2776
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1096, metadata !575), !dbg !2778
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1097, metadata !575), !dbg !2779
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1098, metadata !575), !dbg !2780
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2781
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1099, metadata !575), !dbg !2782
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1101, metadata !575), !dbg !2783
  %17 = load i32, i32* %16, align 4, !dbg !2784, !tbaa !982
  %18 = or i32 %17, 67108864, !dbg !2785
  store i32 %18, i32* %16, align 4, !dbg !2785, !tbaa !982
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2757, metadata !1624), !dbg !2775
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2786
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2787
  ret i8* %19, !dbg !2788
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2789 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2793, metadata !575), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2794, metadata !575), !dbg !2798
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2795, metadata !575), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2796, metadata !575), !dbg !2800
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2801, metadata !575) #9, !dbg !2811
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2806, metadata !575) #9, !dbg !2813
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2807, metadata !575) #9, !dbg !2814
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2808, metadata !575) #9, !dbg !2815
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2809, metadata !575) #9, !dbg !2816
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2817
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2817
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2818, !tbaa.struct !2640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2810, metadata !1624) #9, !dbg !2819
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1145, metadata !575) #9, !dbg !2820
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1146, metadata !575) #9, !dbg !2822
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1147, metadata !575) #9, !dbg !2823
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1145, metadata !575) #9, !dbg !2820
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1145, metadata !575) #9, !dbg !2820
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2824
  store i32 10, i32* %7, align 8, !dbg !2825, !tbaa !1075
  %8 = icmp ne i8* %1, null, !dbg !2826
  %9 = icmp ne i8* %2, null, !dbg !2827
  %10 = and i1 %8, %9, !dbg !2828
  br i1 %10, label %12, label %11, !dbg !2828

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2829
  unreachable, !dbg !2829

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2830
  store i8* %1, i8** %13, align 8, !dbg !2831, !tbaa !1164
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2832
  store i8* %2, i8** %14, align 8, !dbg !2833, !tbaa !1167
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2810, metadata !1624) #9, !dbg !2819
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2834
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2835
  ret i8* %15, !dbg !2836
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2802 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2801, metadata !575), !dbg !2837
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2806, metadata !575), !dbg !2838
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2807, metadata !575), !dbg !2839
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2808, metadata !575), !dbg !2840
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2809, metadata !575), !dbg !2841
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2842
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !2842
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2843, !tbaa.struct !2640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2810, metadata !1624), !dbg !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1145, metadata !575) #9, !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1146, metadata !575) #9, !dbg !2847
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1147, metadata !575) #9, !dbg !2848
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1145, metadata !575) #9, !dbg !2845
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1145, metadata !575) #9, !dbg !2845
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2849
  store i32 10, i32* %8, align 8, !dbg !2850, !tbaa !1075
  %9 = icmp ne i8* %1, null, !dbg !2851
  %10 = icmp ne i8* %2, null, !dbg !2852
  %11 = and i1 %9, %10, !dbg !2853
  br i1 %11, label %13, label %12, !dbg !2853

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !2854
  unreachable, !dbg !2854

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2855
  store i8* %1, i8** %14, align 8, !dbg !2856, !tbaa !1164
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2857
  store i8* %2, i8** %15, align 8, !dbg !2858, !tbaa !1167
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2810, metadata !1624), !dbg !2844
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2859
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !2860
  ret i8* %16, !dbg !2861
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2862 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2866, metadata !575), !dbg !2869
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2867, metadata !575), !dbg !2870
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2868, metadata !575), !dbg !2871
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2793, metadata !575) #9, !dbg !2872
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2794, metadata !575) #9, !dbg !2874
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2795, metadata !575) #9, !dbg !2875
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2796, metadata !575) #9, !dbg !2876
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2801, metadata !575) #9, !dbg !2877
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2806, metadata !575) #9, !dbg !2879
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2807, metadata !575) #9, !dbg !2880
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2808, metadata !575) #9, !dbg !2881
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2809, metadata !575) #9, !dbg !2882
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2883
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !2883
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2884, !tbaa.struct !2640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2810, metadata !1624) #9, !dbg !2885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1145, metadata !575) #9, !dbg !2886
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1146, metadata !575) #9, !dbg !2888
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1147, metadata !575) #9, !dbg !2889
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1145, metadata !575) #9, !dbg !2886
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1145, metadata !575) #9, !dbg !2886
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2890
  store i32 10, i32* %6, align 8, !dbg !2891, !tbaa !1075
  %7 = icmp ne i8* %0, null, !dbg !2892
  %8 = icmp ne i8* %1, null, !dbg !2893
  %9 = and i1 %7, %8, !dbg !2894
  br i1 %9, label %11, label %10, !dbg !2894

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2895
  unreachable, !dbg !2895

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2896
  store i8* %0, i8** %12, align 8, !dbg !2897, !tbaa !1164
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2898
  store i8* %1, i8** %13, align 8, !dbg !2899, !tbaa !1167
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2810, metadata !1624) #9, !dbg !2885
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2900
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !2901
  ret i8* %14, !dbg !2902
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2903 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2907, metadata !575), !dbg !2911
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2908, metadata !575), !dbg !2912
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2909, metadata !575), !dbg !2913
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2910, metadata !575), !dbg !2914
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2801, metadata !575) #9, !dbg !2915
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2806, metadata !575) #9, !dbg !2917
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2807, metadata !575) #9, !dbg !2918
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2808, metadata !575) #9, !dbg !2919
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2809, metadata !575) #9, !dbg !2920
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2921
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !2921
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2922, !tbaa.struct !2640
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2810, metadata !1624) #9, !dbg !2923
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1145, metadata !575) #9, !dbg !2924
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1146, metadata !575) #9, !dbg !2926
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1147, metadata !575) #9, !dbg !2927
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1145, metadata !575) #9, !dbg !2924
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1145, metadata !575) #9, !dbg !2924
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2928
  store i32 10, i32* %7, align 8, !dbg !2929, !tbaa !1075
  %8 = icmp ne i8* %0, null, !dbg !2930
  %9 = icmp ne i8* %1, null, !dbg !2931
  %10 = and i1 %8, %9, !dbg !2932
  br i1 %10, label %12, label %11, !dbg !2932

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2933
  unreachable, !dbg !2933

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2934
  store i8* %0, i8** %13, align 8, !dbg !2935, !tbaa !1164
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2936
  store i8* %1, i8** %14, align 8, !dbg !2937, !tbaa !1167
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2810, metadata !1624) #9, !dbg !2923
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2938
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !2939
  ret i8* %15, !dbg !2940
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2941 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2945, metadata !575), !dbg !2948
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2946, metadata !575), !dbg !2949
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2947, metadata !575), !dbg !2950
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2951
  ret i8* %4, !dbg !2952
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2953 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2957, metadata !575), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2958, metadata !575), !dbg !2960
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2945, metadata !575) #9, !dbg !2961
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2946, metadata !575) #9, !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2947, metadata !575) #9, !dbg !2964
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2965
  ret i8* %3, !dbg !2966
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2967 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2971, metadata !575), !dbg !2973
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2972, metadata !575), !dbg !2974
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2945, metadata !575) #9, !dbg !2975
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2946, metadata !575) #9, !dbg !2977
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2947, metadata !575) #9, !dbg !2978
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2979
  ret i8* %3, !dbg !2980
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2981 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2985, metadata !575), !dbg !2986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2971, metadata !575) #9, !dbg !2987
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2972, metadata !575) #9, !dbg !2989
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2945, metadata !575) #9, !dbg !2990
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2946, metadata !575) #9, !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2947, metadata !575) #9, !dbg !2993
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2994
  ret i8* %2, !dbg !2995
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2996 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3056, metadata !575), !dbg !3062
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3057, metadata !575), !dbg !3063
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3058, metadata !575), !dbg !3064
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3059, metadata !575), !dbg !3065
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3060, metadata !575), !dbg !3066
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3061, metadata !575), !dbg !3067
  %7 = icmp eq i8* %1, null, !dbg !3068
  br i1 %7, label %10, label %8, !dbg !3070

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !3071
  br label %12, !dbg !3071

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !3072
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i32 5) #9, !dbg !3073
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !3074
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.61, i64 0, i64 0), i32 5) #9, !dbg !3076
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !3077
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
  ], !dbg !3078

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3079
  unreachable, !dbg !3079

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.62, i64 0, i64 0), i32 5) #9, !dbg !3081
  %20 = load i8*, i8** %4, align 8, !dbg !3081, !tbaa !583
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !3082
  br label %146, !dbg !3084

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.63, i64 0, i64 0), i32 5) #9, !dbg !3085
  %24 = load i8*, i8** %4, align 8, !dbg !3085, !tbaa !583
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3085
  %26 = load i8*, i8** %25, align 8, !dbg !3085, !tbaa !583
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !3086
  br label %146, !dbg !3087

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.64, i64 0, i64 0), i32 5) #9, !dbg !3088
  %30 = load i8*, i8** %4, align 8, !dbg !3088, !tbaa !583
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3088
  %32 = load i8*, i8** %31, align 8, !dbg !3088, !tbaa !583
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3088
  %34 = load i8*, i8** %33, align 8, !dbg !3088, !tbaa !583
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !3089
  br label %146, !dbg !3090

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.65, i64 0, i64 0), i32 5) #9, !dbg !3091
  %38 = load i8*, i8** %4, align 8, !dbg !3091, !tbaa !583
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3091
  %40 = load i8*, i8** %39, align 8, !dbg !3091, !tbaa !583
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3091
  %42 = load i8*, i8** %41, align 8, !dbg !3091, !tbaa !583
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3091
  %44 = load i8*, i8** %43, align 8, !dbg !3091, !tbaa !583
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !3092
  br label %146, !dbg !3093

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.66, i64 0, i64 0), i32 5) #9, !dbg !3094
  %48 = load i8*, i8** %4, align 8, !dbg !3094, !tbaa !583
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3094
  %50 = load i8*, i8** %49, align 8, !dbg !3094, !tbaa !583
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3094
  %52 = load i8*, i8** %51, align 8, !dbg !3094, !tbaa !583
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3094
  %54 = load i8*, i8** %53, align 8, !dbg !3094, !tbaa !583
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3094
  %56 = load i8*, i8** %55, align 8, !dbg !3094, !tbaa !583
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !3095
  br label %146, !dbg !3096

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.67, i64 0, i64 0), i32 5) #9, !dbg !3097
  %60 = load i8*, i8** %4, align 8, !dbg !3097, !tbaa !583
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3097
  %62 = load i8*, i8** %61, align 8, !dbg !3097, !tbaa !583
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3097
  %64 = load i8*, i8** %63, align 8, !dbg !3097, !tbaa !583
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3097
  %66 = load i8*, i8** %65, align 8, !dbg !3097, !tbaa !583
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3097
  %68 = load i8*, i8** %67, align 8, !dbg !3097, !tbaa !583
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3097
  %70 = load i8*, i8** %69, align 8, !dbg !3097, !tbaa !583
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !3098
  br label %146, !dbg !3099

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.68, i64 0, i64 0), i32 5) #9, !dbg !3100
  %74 = load i8*, i8** %4, align 8, !dbg !3100, !tbaa !583
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3100
  %76 = load i8*, i8** %75, align 8, !dbg !3100, !tbaa !583
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3100
  %78 = load i8*, i8** %77, align 8, !dbg !3100, !tbaa !583
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3100
  %80 = load i8*, i8** %79, align 8, !dbg !3100, !tbaa !583
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3100
  %82 = load i8*, i8** %81, align 8, !dbg !3100, !tbaa !583
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3100
  %84 = load i8*, i8** %83, align 8, !dbg !3100, !tbaa !583
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3100
  %86 = load i8*, i8** %85, align 8, !dbg !3100, !tbaa !583
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !3101
  br label %146, !dbg !3102

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.69, i64 0, i64 0), i32 5) #9, !dbg !3103
  %90 = load i8*, i8** %4, align 8, !dbg !3103, !tbaa !583
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3103
  %92 = load i8*, i8** %91, align 8, !dbg !3103, !tbaa !583
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3103
  %94 = load i8*, i8** %93, align 8, !dbg !3103, !tbaa !583
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3103
  %96 = load i8*, i8** %95, align 8, !dbg !3103, !tbaa !583
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3103
  %98 = load i8*, i8** %97, align 8, !dbg !3103, !tbaa !583
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3103
  %100 = load i8*, i8** %99, align 8, !dbg !3103, !tbaa !583
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3103
  %102 = load i8*, i8** %101, align 8, !dbg !3103, !tbaa !583
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3103
  %104 = load i8*, i8** %103, align 8, !dbg !3103, !tbaa !583
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !3104
  br label %146, !dbg !3105

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.70, i64 0, i64 0), i32 5) #9, !dbg !3106
  %108 = load i8*, i8** %4, align 8, !dbg !3106, !tbaa !583
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3106
  %110 = load i8*, i8** %109, align 8, !dbg !3106, !tbaa !583
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3106
  %112 = load i8*, i8** %111, align 8, !dbg !3106, !tbaa !583
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3106
  %114 = load i8*, i8** %113, align 8, !dbg !3106, !tbaa !583
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3106
  %116 = load i8*, i8** %115, align 8, !dbg !3106, !tbaa !583
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3106
  %118 = load i8*, i8** %117, align 8, !dbg !3106, !tbaa !583
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3106
  %120 = load i8*, i8** %119, align 8, !dbg !3106, !tbaa !583
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3106
  %122 = load i8*, i8** %121, align 8, !dbg !3106, !tbaa !583
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3106
  %124 = load i8*, i8** %123, align 8, !dbg !3106, !tbaa !583
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !3107
  br label %146, !dbg !3108

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.71, i64 0, i64 0), i32 5) #9, !dbg !3109
  %128 = load i8*, i8** %4, align 8, !dbg !3109, !tbaa !583
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3109
  %130 = load i8*, i8** %129, align 8, !dbg !3109, !tbaa !583
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3109
  %132 = load i8*, i8** %131, align 8, !dbg !3109, !tbaa !583
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3109
  %134 = load i8*, i8** %133, align 8, !dbg !3109, !tbaa !583
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3109
  %136 = load i8*, i8** %135, align 8, !dbg !3109, !tbaa !583
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3109
  %138 = load i8*, i8** %137, align 8, !dbg !3109, !tbaa !583
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3109
  %140 = load i8*, i8** %139, align 8, !dbg !3109, !tbaa !583
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3109
  %142 = load i8*, i8** %141, align 8, !dbg !3109, !tbaa !583
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3109
  %144 = load i8*, i8** %143, align 8, !dbg !3109, !tbaa !583
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !3110
  br label %146, !dbg !3111

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3112
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3113 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3117, metadata !575), !dbg !3123
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3118, metadata !575), !dbg !3124
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3119, metadata !575), !dbg !3125
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3120, metadata !575), !dbg !3126
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3121, metadata !575), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3122, metadata !575), !dbg !3128
  br label %6, !dbg !3129

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3122, metadata !575), !dbg !3128
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3131
  %9 = load i8*, i8** %8, align 8, !dbg !3131, !tbaa !583
  %10 = icmp eq i8* %9, null, !dbg !3134
  %11 = add i64 %7, 1, !dbg !3136
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3122, metadata !575), !dbg !3128
  br i1 %10, label %12, label %6, !dbg !3134, !llvm.loop !3138

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3141
  ret void, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3143 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3154, metadata !575), !dbg !3162
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3155, metadata !575), !dbg !3163
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3156, metadata !575), !dbg !3164
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3157, metadata !575), !dbg !3165
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3158, metadata !575), !dbg !3166
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3167
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9, !dbg !3167
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3160, metadata !575), !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3159, metadata !575), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3159, metadata !575), !dbg !3169
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3170
  %12 = icmp ult i32 %11, 41, !dbg !3170
  br i1 %12, label %13, label %18, !dbg !3170

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3174
  %15 = sext i32 %11 to i64, !dbg !3174
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3174
  %17 = add i32 %11, 8, !dbg !3174
  store i32 %17, i32* %8, align 8, !dbg !3174
  br label %21, !dbg !3174

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3176
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3176
  store i8* %20, i8** %10, align 8, !dbg !3176
  br label %21, !dbg !3176

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3170
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3178
  %25 = load i8*, i8** %24, align 8, !dbg !3178
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3180
  store i8* %25, i8** %26, align 16, !dbg !3181, !tbaa !583
  %27 = icmp eq i8* %25, null, !dbg !3182
  br i1 %27, label %30, label %28, !dbg !3183

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  %29 = icmp ult i32 %22, 41, !dbg !3170
  br i1 %29, label %35, label %32, !dbg !3170

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3185
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9, !dbg !3186
  ret void, !dbg !3186

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3176
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3176
  store i8* %34, i8** %10, align 8, !dbg !3176
  br label %40, !dbg !3176

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3174
  %37 = sext i32 %22 to i64, !dbg !3174
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3174
  %39 = add i32 %22, 8, !dbg !3174
  store i32 %39, i32* %8, align 8, !dbg !3174
  br label %40, !dbg !3174

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3170
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3178
  %44 = load i8*, i8** %43, align 8, !dbg !3178
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3180
  store i8* %44, i8** %45, align 8, !dbg !3181, !tbaa !583
  %46 = icmp eq i8* %44, null, !dbg !3182
  br i1 %46, label %30, label %47, !dbg !3183

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  %48 = icmp ult i32 %41, 41, !dbg !3170
  br i1 %48, label %52, label %49, !dbg !3170

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3176
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3176
  store i8* %51, i8** %10, align 8, !dbg !3176
  br label %57, !dbg !3176

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3174
  %54 = sext i32 %41 to i64, !dbg !3174
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3174
  %56 = add i32 %41, 8, !dbg !3174
  store i32 %56, i32* %8, align 8, !dbg !3174
  br label %57, !dbg !3174

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3170
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3178
  %61 = load i8*, i8** %60, align 8, !dbg !3178
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3180
  store i8* %61, i8** %62, align 16, !dbg !3181, !tbaa !583
  %63 = icmp eq i8* %61, null, !dbg !3182
  br i1 %63, label %30, label %64, !dbg !3183

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  %65 = icmp ult i32 %58, 41, !dbg !3170
  br i1 %65, label %69, label %66, !dbg !3170

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3176
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3176
  store i8* %68, i8** %10, align 8, !dbg !3176
  br label %74, !dbg !3176

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3174
  %71 = sext i32 %58 to i64, !dbg !3174
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3174
  %73 = add i32 %58, 8, !dbg !3174
  store i32 %73, i32* %8, align 8, !dbg !3174
  br label %74, !dbg !3174

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3170
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3178
  %78 = load i8*, i8** %77, align 8, !dbg !3178
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3180
  store i8* %78, i8** %79, align 8, !dbg !3181, !tbaa !583
  %80 = icmp eq i8* %78, null, !dbg !3182
  br i1 %80, label %30, label %81, !dbg !3183

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  %82 = icmp ult i32 %75, 41, !dbg !3170
  br i1 %82, label %86, label %83, !dbg !3170

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3176
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3176
  store i8* %85, i8** %10, align 8, !dbg !3176
  br label %91, !dbg !3176

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3174
  %88 = sext i32 %75 to i64, !dbg !3174
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3174
  %90 = add i32 %75, 8, !dbg !3174
  store i32 %90, i32* %8, align 8, !dbg !3174
  br label %91, !dbg !3174

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3170
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3178
  %95 = load i8*, i8** %94, align 8, !dbg !3178
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3180
  store i8* %95, i8** %96, align 16, !dbg !3181, !tbaa !583
  %97 = icmp eq i8* %95, null, !dbg !3182
  br i1 %97, label %30, label %98, !dbg !3183

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  %99 = icmp ult i32 %92, 41, !dbg !3170
  br i1 %99, label %103, label %100, !dbg !3170

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3176
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3176
  store i8* %102, i8** %10, align 8, !dbg !3176
  br label %108, !dbg !3176

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3174
  %105 = sext i32 %92 to i64, !dbg !3174
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3174
  %107 = add i32 %92, 8, !dbg !3174
  store i32 %107, i32* %8, align 8, !dbg !3174
  br label %108, !dbg !3174

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3178
  %111 = load i8*, i8** %110, align 8, !dbg !3178
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3180
  store i8* %111, i8** %112, align 8, !dbg !3181, !tbaa !583
  %113 = icmp eq i8* %111, null, !dbg !3182
  br i1 %113, label %30, label %114, !dbg !3183

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  %115 = load i8*, i8** %10, align 8, !dbg !3176
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3176
  store i8* %116, i8** %10, align 8, !dbg !3176
  %117 = bitcast i8* %115 to i8**, !dbg !3178
  %118 = load i8*, i8** %117, align 8, !dbg !3178
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3180
  store i8* %118, i8** %119, align 16, !dbg !3181, !tbaa !583
  %120 = icmp eq i8* %118, null, !dbg !3182
  br i1 %120, label %30, label %121, !dbg !3183

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  %122 = load i8*, i8** %10, align 8, !dbg !3176
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3176
  store i8* %123, i8** %10, align 8, !dbg !3176
  %124 = bitcast i8* %122 to i8**, !dbg !3178
  %125 = load i8*, i8** %124, align 8, !dbg !3178
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3180
  store i8* %125, i8** %126, align 8, !dbg !3181, !tbaa !583
  %127 = icmp eq i8* %125, null, !dbg !3182
  br i1 %127, label %30, label %128, !dbg !3183

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  %129 = load i8*, i8** %10, align 8, !dbg !3176
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3176
  store i8* %130, i8** %10, align 8, !dbg !3176
  %131 = bitcast i8* %129 to i8**, !dbg !3178
  %132 = load i8*, i8** %131, align 8, !dbg !3178
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3180
  store i8* %132, i8** %133, align 16, !dbg !3181, !tbaa !583
  %134 = icmp eq i8* %132, null, !dbg !3182
  br i1 %134, label %30, label %135, !dbg !3183

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  %136 = load i8*, i8** %10, align 8, !dbg !3176
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3176
  store i8* %137, i8** %10, align 8, !dbg !3176
  %138 = bitcast i8* %136 to i8**, !dbg !3178
  %139 = load i8*, i8** %138, align 8, !dbg !3178
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3180
  store i8* %139, i8** %140, align 8, !dbg !3181, !tbaa !583
  %141 = icmp eq i8* %139, null, !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3159, metadata !575), !dbg !3169
  %142 = select i1 %141, i64 9, i64 10, !dbg !3183
  br label %30, !dbg !3183
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3187 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3191, metadata !575), !dbg !3201
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3192, metadata !575), !dbg !3202
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3193, metadata !575), !dbg !3203
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3194, metadata !575), !dbg !3204
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3205
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9, !dbg !3205
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3195, metadata !575), !dbg !3206
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3207
  call void @llvm.va_start(i8* nonnull %6), !dbg !3207
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3208
  call void @llvm.va_end(i8* nonnull %6), !dbg !3209
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9, !dbg !3210
  ret void, !dbg !3210
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3211 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.74, i64 0, i64 0), i32 5) #9, !dbg !3212
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.75, i64 0, i64 0)) #9, !dbg !3213
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.76, i64 0, i64 0), i32 5) #9, !dbg !3215
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.78, i64 0, i64 0)) #9, !dbg !3216
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.79, i64 0, i64 0), i32 5) #9, !dbg !3217
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3217, !tbaa !583
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !3218
  ret void, !dbg !3219
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3220 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3224, metadata !575), !dbg !3226
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3225, metadata !575), !dbg !3227
  %3 = udiv i64 9223372036854775807, %1, !dbg !3228
  %4 = icmp ult i64 %3, %0, !dbg !3228
  br i1 %4, label %5, label %6, !dbg !3230

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3231
  unreachable, !dbg !3231

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3233, metadata !575) #9, !dbg !3240
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !3242
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3239, metadata !575) #9, !dbg !3243
  %9 = icmp eq i8* %8, null, !dbg !3244
  %10 = icmp ne i64 %7, 0, !dbg !3246
  %11 = and i1 %10, %9, !dbg !3248
  br i1 %11, label %12, label %13, !dbg !3248

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3249
  unreachable, !dbg !3249

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3250
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3234 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3233, metadata !575), !dbg !3251
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3252
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3239, metadata !575), !dbg !3253
  %3 = icmp eq i8* %2, null, !dbg !3254
  %4 = icmp ne i64 %0, 0, !dbg !3255
  %5 = and i1 %4, %3, !dbg !3256
  br i1 %5, label %6, label %7, !dbg !3256

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3257
  unreachable, !dbg !3257

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3258
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3259 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3263, metadata !575), !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3264, metadata !575), !dbg !3267
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3265, metadata !575), !dbg !3268
  %4 = udiv i64 9223372036854775807, %2, !dbg !3269
  %5 = icmp ult i64 %4, %1, !dbg !3269
  br i1 %5, label %6, label %7, !dbg !3271

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3272
  unreachable, !dbg !3272

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3273
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3274, metadata !575) #9, !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3279, metadata !575) #9, !dbg !3282
  %9 = icmp eq i64 %8, 0, !dbg !3283
  %10 = icmp ne i8* %0, null, !dbg !3285
  %11 = and i1 %10, %9, !dbg !3287
  br i1 %11, label %12, label %13, !dbg !3287

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !3288
  br label %19, !dbg !3290

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !3291
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3274, metadata !575) #9, !dbg !3280
  %15 = icmp eq i8* %14, null, !dbg !3292
  %16 = icmp ne i64 %8, 0, !dbg !3294
  %17 = and i1 %16, %15, !dbg !3296
  br i1 %17, label %18, label %19, !dbg !3296

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3297
  unreachable, !dbg !3297

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3298
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3275 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3274, metadata !575), !dbg !3299
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3279, metadata !575), !dbg !3300
  %3 = icmp eq i64 %1, 0, !dbg !3301
  %4 = icmp ne i8* %0, null, !dbg !3302
  %5 = and i1 %4, %3, !dbg !3303
  br i1 %5, label %6, label %7, !dbg !3303

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !3304
  br label %13, !dbg !3305

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !3306
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3274, metadata !575), !dbg !3299
  %9 = icmp eq i8* %8, null, !dbg !3307
  %10 = icmp ne i64 %1, 0, !dbg !3308
  %11 = and i1 %10, %9, !dbg !3309
  br i1 %11, label %12, label %13, !dbg !3309

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3310
  unreachable, !dbg !3310

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3311
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !535 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !540, metadata !575), !dbg !3312
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !541, metadata !575), !dbg !3313
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !542, metadata !575), !dbg !3314
  %4 = load i64, i64* %1, align 8, !dbg !3315, !tbaa !2313
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !543, metadata !575), !dbg !3316
  %5 = icmp eq i8* %0, null, !dbg !3317
  br i1 %5, label %6, label %13, !dbg !3319

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3320
  br i1 %7, label %8, label %17, !dbg !3323

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !543, metadata !575), !dbg !3316
  %10 = icmp ugt i64 %2, 128, !dbg !3326
  %11 = zext i1 %10 to i64, !dbg !3326
  %12 = add nuw nsw i64 %9, %11, !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !543, metadata !575), !dbg !3316
  br label %17, !dbg !3328

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3329
  %15 = icmp ugt i64 %14, %4, !dbg !3332
  br i1 %15, label %20, label %16, !dbg !3333

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3334
  unreachable, !dbg !3334

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !3316
  store i64 %18, i64* %1, align 8, !dbg !3335, !tbaa !2313
  %19 = mul i64 %18, %2, !dbg !3336
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3274, metadata !575) #9, !dbg !3337
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3279, metadata !575) #9, !dbg !3339
  br label %27, !dbg !3340

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3341
  %22 = add i64 %4, 1, !dbg !3342
  %23 = add i64 %22, %21, !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !3316
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !3316
  store i64 %23, i64* %1, align 8, !dbg !3335, !tbaa !2313
  %24 = mul i64 %23, %2, !dbg !3336
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3274, metadata !575) #9, !dbg !3337
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3279, metadata !575) #9, !dbg !3339
  %25 = icmp eq i64 %24, 0, !dbg !3344
  br i1 %25, label %26, label %27, !dbg !3340

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !3345
  br label %34, !dbg !3346

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !3347
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3274, metadata !575) #9, !dbg !3337
  %30 = icmp eq i8* %29, null, !dbg !3348
  %31 = icmp ne i64 %28, 0, !dbg !3349
  %32 = and i1 %31, %30, !dbg !3350
  br i1 %32, label %33, label %34, !dbg !3350

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3351
  unreachable, !dbg !3351

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3352
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3353 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3355, metadata !575), !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3233, metadata !575) #9, !dbg !3357
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3359
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3239, metadata !575) #9, !dbg !3360
  %3 = icmp eq i8* %2, null, !dbg !3361
  %4 = icmp ne i64 %0, 0, !dbg !3362
  %5 = and i1 %4, %3, !dbg !3363
  br i1 %5, label %6, label %7, !dbg !3363

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3364
  unreachable, !dbg !3364

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3365
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3366 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3370, metadata !575), !dbg !3372
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3371, metadata !575), !dbg !3373
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !540, metadata !575) #9, !dbg !3374
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !541, metadata !575) #9, !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !542, metadata !575) #9, !dbg !3377
  %3 = load i64, i64* %1, align 8, !dbg !3378, !tbaa !2313
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !543, metadata !575) #9, !dbg !3379
  %4 = icmp eq i8* %0, null, !dbg !3380
  br i1 %4, label %5, label %8, !dbg !3381

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3382
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !543, metadata !575) #9, !dbg !3379
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !543, metadata !575) #9, !dbg !3379
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #9, !dbg !3379
  store i64 %7, i64* %1, align 8, !dbg !3384, !tbaa !2313
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3274, metadata !575) #9, !dbg !3385
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3279, metadata !575) #9, !dbg !3387
  br label %17, !dbg !3388

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3389
  br i1 %9, label %11, label %10, !dbg !3390

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3391
  unreachable, !dbg !3391

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3392
  %13 = add i64 %3, 1, !dbg !3393
  %14 = add i64 %13, %12, !dbg !3394
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #9, !dbg !3379
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #9, !dbg !3379
  store i64 %14, i64* %1, align 8, !dbg !3384, !tbaa !2313
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3274, metadata !575) #9, !dbg !3385
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3279, metadata !575) #9, !dbg !3387
  %15 = icmp eq i64 %14, 0, !dbg !3395
  br i1 %15, label %16, label %17, !dbg !3388

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !3396
  br label %24, !dbg !3397

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !3398
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3274, metadata !575) #9, !dbg !3385
  %20 = icmp eq i8* %19, null, !dbg !3399
  %21 = icmp ne i64 %18, 0, !dbg !3400
  %22 = and i1 %21, %20, !dbg !3401
  br i1 %22, label %23, label %24, !dbg !3401

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3402
  unreachable, !dbg !3402

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3403
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3404 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3406, metadata !575), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3233, metadata !575) #9, !dbg !3408
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3410
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3239, metadata !575) #9, !dbg !3411
  %3 = icmp eq i8* %2, null, !dbg !3412
  %4 = icmp ne i64 %0, 0, !dbg !3413
  %5 = and i1 %4, %3, !dbg !3414
  br i1 %5, label %6, label %7, !dbg !3414

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3415
  unreachable, !dbg !3415

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3416
  ret i8* %2, !dbg !3417
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3418 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3420, metadata !575), !dbg !3423
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3421, metadata !575), !dbg !3424
  %3 = udiv i64 9223372036854775807, %1, !dbg !3425
  %4 = icmp ult i64 %3, %0, !dbg !3425
  br i1 %4, label %8, label %5, !dbg !3427

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3428
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3422, metadata !575), !dbg !3430
  %7 = icmp eq i8* %6, null, !dbg !3431
  br i1 %7, label %8, label %9, !dbg !3432

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3434
  unreachable, !dbg !3434

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3435
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3436 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3440, metadata !575), !dbg !3442
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3441, metadata !575), !dbg !3443
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3233, metadata !575) #9, !dbg !3444
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3446
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3239, metadata !575) #9, !dbg !3447
  %4 = icmp eq i8* %3, null, !dbg !3448
  %5 = icmp ne i64 %1, 0, !dbg !3449
  %6 = and i1 %5, %4, !dbg !3450
  br i1 %6, label %7, label %8, !dbg !3450

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3451
  unreachable, !dbg !3451

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3452
  ret i8* %3, !dbg !3453
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3454 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3456, metadata !575), !dbg !3457
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3458
  %3 = add i64 %2, 1, !dbg !3459
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3440, metadata !575) #9, !dbg !3460
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3441, metadata !575) #9, !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3233, metadata !575) #9, !dbg !3464
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3466
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3239, metadata !575) #9, !dbg !3467
  %5 = icmp eq i8* %4, null, !dbg !3468
  %6 = icmp ne i64 %3, 0, !dbg !3469
  %7 = and i1 %6, %5, !dbg !3470
  br i1 %7, label %8, label %9, !dbg !3470

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3471
  unreachable, !dbg !3471

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3472
  ret i8* %4, !dbg !3473
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3474 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3476, !tbaa !982
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.90, i64 0, i64 0), i32 5) #9, !dbg !3477
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i64 0, i64 0), i8* %2) #9, !dbg !3478
  tail call void @abort() #14, !dbg !3480
  unreachable, !dbg !3480
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3481 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3484, metadata !575), !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3485, metadata !575), !dbg !3491
  %3 = icmp eq i64 %0, 0, !dbg !3492
  %4 = icmp eq i64 %1, 0, !dbg !3493
  %5 = or i1 %3, %4, !dbg !3495
  br i1 %5, label %12, label %6, !dbg !3495

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3496
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3487, metadata !575), !dbg !3497
  %8 = udiv i64 %7, %1, !dbg !3498
  %9 = icmp eq i64 %8, %0, !dbg !3500
  br i1 %9, label %12, label %10, !dbg !3501

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3502
  store i32 12, i32* %11, align 4, !dbg !3504, !tbaa !982
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3484, metadata !575), !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3485, metadata !575), !dbg !3491
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3505
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3486, metadata !575), !dbg !3506
  br label %16, !dbg !3507

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3508
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3509 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3526, metadata !575), !dbg !3535
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3527, metadata !575), !dbg !3536
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3528, metadata !575), !dbg !3537
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3529, metadata !575), !dbg !3538
  %6 = bitcast i32* %5 to i8*, !dbg !3539
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9, !dbg !3539
  %7 = icmp eq i32* %0, null, !dbg !3540
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3526, metadata !575), !dbg !3535
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3542
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3526, metadata !575), !dbg !3535
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3530, metadata !575), !dbg !3544
  %10 = icmp ugt i64 %9, -3, !dbg !3545
  %11 = icmp ne i64 %2, 0, !dbg !3546
  %12 = and i1 %11, %10, !dbg !3548
  br i1 %12, label %13, label %18, !dbg !3548

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3549
  br i1 %14, label %18, label %15, !dbg !3551

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3553, !tbaa !693
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3532, metadata !575), !dbg !3554
  %17 = zext i8 %16 to i32, !dbg !3555
  store i32 %17, i32* %8, align 4, !dbg !3556, !tbaa !982
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9, !dbg !3557
  ret i64 %19, !dbg !3557
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3558 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3603, metadata !575), !dbg !3608
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3609
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3610, metadata !575), !dbg !3613
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3615
  %4 = load i32, i32* %3, align 8, !dbg !3615, !tbaa !3616
  %5 = and i32 %4, 32, !dbg !3615
  %6 = icmp eq i32 %5, 0, !dbg !3617
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3618
  %8 = icmp ne i32 %7, 0, !dbg !3619
  br i1 %6, label %9, label %19, !dbg !3620

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3622
  %11 = icmp ne i64 %2, 0, !dbg !3622
  %12 = or i1 %11, %10, !dbg !3622
  %13 = sext i1 %8 to i32, !dbg !3622
  br i1 %12, label %22, label %14, !dbg !3622

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3624
  %16 = load i32, i32* %15, align 4, !dbg !3624, !tbaa !982
  %17 = icmp ne i32 %16, 9, !dbg !3626
  %18 = sext i1 %17 to i32, !dbg !3626
  br label %22, !dbg !3626

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3628

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3630
  store i32 0, i32* %21, align 4, !dbg !3632, !tbaa !982
  br label %22, !dbg !3630

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3633
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3634 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3639, metadata !575), !dbg !3659
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3640, metadata !575), !dbg !3660
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3661
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3641, metadata !575), !dbg !3662
  %3 = icmp eq i8* %2, null, !dbg !3663
  br i1 %3, label %15, label %4, !dbg !3664

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3649, metadata !575), !dbg !3665
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3650, metadata !575), !dbg !3666
  %5 = load i8, i8* %2, align 1, !dbg !3667, !tbaa !693
  %6 = icmp eq i8 %5, 67, !dbg !3669
  br i1 %6, label %7, label %11, !dbg !3672

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3674
  %9 = load i8, i8* %8, align 1, !dbg !3674, !tbaa !693
  %10 = icmp eq i8 %9, 0, !dbg !3677
  br i1 %10, label %14, label %11, !dbg !3679

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !3655, metadata !575), !dbg !3681
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.100, i64 0, i64 0)) #9, !dbg !3682
  %13 = icmp eq i32 %12, 0, !dbg !3684
  br i1 %13, label %14, label %15, !dbg !3686

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3640, metadata !575), !dbg !3660
  br label %15, !dbg !3688

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !3689
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3690 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3702, metadata !575), !dbg !3776
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3769, metadata !575), !dbg !3778
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3779
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3694, metadata !575), !dbg !3780
  %4 = icmp eq i8* %3, null, !dbg !3781
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.103, i64 0, i64 0), i8* %3, !dbg !3783
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3694, metadata !575), !dbg !3780
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3784, !tbaa !583
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3716, metadata !575) #9, !dbg !3785
  %7 = icmp eq i8* %6, null, !dbg !3786
  br i1 %7, label %8, label %127, !dbg !3787

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.104, i64 0, i64 0)) #9, !dbg !3788
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3717, metadata !575) #9, !dbg !3789
  %10 = icmp eq i8* %9, null, !dbg !3790
  br i1 %10, label %14, label %11, !dbg !3792

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3793, !tbaa !693
  %13 = icmp eq i8 %12, 0, !dbg !3795
  br i1 %13, label %14, label %15, !dbg !3796

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3798

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.105, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3717, metadata !575) #9, !dbg !3789
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !3799
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3720, metadata !575) #9, !dbg !3800
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3722, metadata !575) #9, !dbg !3801
  %18 = icmp eq i64 %17, 0, !dbg !3802
  br i1 %18, label %24, label %19, !dbg !3803

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3804
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3804
  %22 = load i8, i8* %21, align 1, !dbg !3804, !tbaa !693
  %23 = icmp ne i8 %22, 47, !dbg !3806
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3807
  %27 = add i64 %17, 14, !dbg !3808
  %28 = add i64 %27, %26, !dbg !3809
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3810
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3719, metadata !575) #9, !dbg !3811
  %30 = icmp eq i8* %29, null, !dbg !3812
  br i1 %30, label %125, label %31, !dbg !3812

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3813
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3816

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3817, !tbaa !693
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3819
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.106, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3820
  br label %37, !dbg !3821

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3819
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.106, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3820
  br label %37, !dbg !3821

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3822
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3724, metadata !575) #9, !dbg !3823
  %39 = icmp slt i32 %38, 0, !dbg !3824
  br i1 %39, label %123, label %40, !dbg !3825

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.107, i64 0, i64 0)) #9, !dbg !3826
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3725, metadata !575) #9, !dbg !3827
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3828
  br i1 %42, label %48, label %43, !dbg !3829

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3830

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9, !dbg !3831
  br label %123, !dbg !3833

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3766, metadata !575) #9, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3767, metadata !575) #9, !dbg !3834
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9, !dbg !3835
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9, !dbg !3836
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3837, metadata !575) #9, !dbg !3842
  %53 = load i8*, i8** %46, align 8, !dbg !3844, !tbaa !3845
  %54 = load i8*, i8** %47, align 8, !dbg !3844, !tbaa !3846
  %55 = icmp ult i8* %53, %54, !dbg !3844
  br i1 %55, label %58, label %56, !dbg !3844, !prof !898

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3847
  br label %62, !dbg !3847

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3849
  store i8* %59, i8** %46, align 8, !dbg !3849, !tbaa !3845
  %60 = load i8, i8* %53, align 1, !dbg !3849, !tbaa !693
  %61 = zext i8 %60 to i32, !dbg !3849
  br label %62, !dbg !3849

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !3851
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !3768, metadata !575) #9, !dbg !3853
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !3854

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !3855

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3837, metadata !575) #9, !dbg !3855
  %66 = load i8*, i8** %46, align 8, !dbg !3859, !tbaa !3845
  %67 = load i8*, i8** %47, align 8, !dbg !3859, !tbaa !3846
  %68 = icmp ult i8* %66, %67, !dbg !3859
  br i1 %68, label %71, label %69, !dbg !3859, !prof !898

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3860
  br label %75, !dbg !3860

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3861
  store i8* %72, i8** %46, align 8, !dbg !3861, !tbaa !3845
  %73 = load i8, i8* %66, align 1, !dbg !3861, !tbaa !693
  %74 = zext i8 %73 to i32, !dbg !3861
  br label %75, !dbg !3861

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !3862
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !3768, metadata !575) #9, !dbg !3853
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !3863, !llvm.loop !3865

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9, !dbg !3868
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.108, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9, !dbg !3869
  %80 = icmp slt i32 %79, 2, !dbg !3871
  br i1 %80, label %115, label %81, !dbg !3872

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !3873
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !3773, metadata !575) #9, !dbg !3874
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !3875
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3774, metadata !575) #9, !dbg !3876
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3775, metadata !575) #9, !dbg !3877
  %84 = icmp eq i64 %51, 0, !dbg !3878
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !3880

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !3767, metadata !575) #9, !dbg !3834
  %89 = add i64 %86, 2, !dbg !3881
  %90 = call noalias i8* @malloc(i64 %89) #9, !dbg !3883
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !3766, metadata !575) #9, !dbg !3830
  br label %95, !dbg !3884

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !3767, metadata !575) #9, !dbg !3834
  %93 = add i64 %92, 1, !dbg !3887
  %94 = call i8* @realloc(i8* %52, i64 %93) #9, !dbg !3888
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !3766, metadata !575) #9, !dbg !3830
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3766, metadata !575) #9, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !3767, metadata !575) #9, !dbg !3834
  %98 = icmp eq i8* %97, null, !dbg !3889
  br i1 %98, label %99, label %100, !dbg !3891

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3767, metadata !575) #9, !dbg !3834
  call void @free(i8* %52) #9, !dbg !3892
  br label %116, !dbg !3894

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3895
  %102 = xor i64 %83, -1, !dbg !3896
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !3896
  %104 = xor i64 %82, -1, !dbg !3897
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3897
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3898, metadata !575) #9, !dbg !3907
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !3906, metadata !575) #9, !dbg !3907
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9, !dbg !3909
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9, !dbg !3910
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !3898, metadata !575) #9, !dbg !3911
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !3906, metadata !575) #9, !dbg !3911
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9, !dbg !3913
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9, !dbg !3914
  br label %111, !dbg !3915

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !3830

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3766, metadata !575) #9, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3767, metadata !575) #9, !dbg !3834
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3915
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3915
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !3830

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !3830

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3766, metadata !575) #9, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !3767, metadata !575) #9, !dbg !3834
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !3915
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !3915
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3916
  %120 = icmp eq i64 %117, 0, !dbg !3917
  br i1 %120, label %123, label %121, !dbg !3919

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !3920
  store i8 0, i8* %122, align 1, !dbg !3922, !tbaa !693
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !3716, metadata !575) #9, !dbg !3785
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.103, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.103, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.103, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3716, metadata !575) #9, !dbg !3785
  call void @free(i8* %29) #9, !dbg !3923
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.103, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !3716, metadata !575) #9, !dbg !3785
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !3924, !tbaa !583
  br label %127, !dbg !3925

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !3695, metadata !575), !dbg !3926
  %129 = load i8, i8* %128, align 1, !dbg !3927, !tbaa !693
  %130 = icmp eq i8 %129, 0, !dbg !3928
  br i1 %130, label %157, label %131, !dbg !3929

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !3931

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9, !dbg !3931
  %136 = icmp eq i32 %135, 0, !dbg !3932
  br i1 %136, label %143, label %137, !dbg !3933

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !3934
  br i1 %138, label %139, label %147, !dbg !3936

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3937
  %141 = load i8, i8* %140, align 1, !dbg !3937, !tbaa !693
  %142 = icmp eq i8 %141, 0, !dbg !3939
  br i1 %142, label %143, label %147, !dbg !3940

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !3942
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !3944
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3945
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3694, metadata !575), !dbg !3780
  br label %157, !dbg !3946

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !3947
  %149 = add i64 %148, 1, !dbg !3948
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !3949
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !3695, metadata !575), !dbg !3926
  %151 = call i64 @strlen(i8* %150) #13, !dbg !3950
  %152 = add i64 %151, 1, !dbg !3951
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3695, metadata !575), !dbg !3926
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3695, metadata !575), !dbg !3926
  %154 = load i8, i8* %153, align 1, !dbg !3927, !tbaa !693
  %155 = icmp eq i8 %154, 0, !dbg !3928
  br i1 %155, label %156, label %132, !dbg !3929, !llvm.loop !3953

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !3780

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !3694, metadata !575), !dbg !3780
  %159 = load i8, i8* %158, align 1, !dbg !3956, !tbaa !693
  %160 = icmp eq i8 %159, 0, !dbg !3958
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.109, i64 0, i64 0), i8* %158, !dbg !3959
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !3694, metadata !575), !dbg !3780
  ret i8* %161, !dbg !3960
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3961 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4006, metadata !575), !dbg !4010
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4007, metadata !575), !dbg !4011
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4009, metadata !575), !dbg !4012
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4013
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4008, metadata !575), !dbg !4014
  %3 = icmp slt i32 %2, 0, !dbg !4015
  br i1 %3, label %4, label %6, !dbg !4017

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4018
  br label %24, !dbg !4019

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !4020
  %8 = icmp eq i32 %7, 0, !dbg !4020
  br i1 %8, label %13, label %9, !dbg !4022

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4023
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !4025
  %12 = icmp eq i64 %11, -1, !dbg !4027
  br i1 %12, label %16, label %13, !dbg !4028

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !4029
  %15 = icmp eq i32 %14, 0, !dbg !4029
  br i1 %15, label %16, label %18, !dbg !4030

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4007, metadata !575), !dbg !4011
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4032
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4009, metadata !575), !dbg !4012
  br label %24, !dbg !4033

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4034
  %20 = load i32, i32* %19, align 4, !dbg !4034, !tbaa !982
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4007, metadata !575), !dbg !4011
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4007, metadata !575), !dbg !4011
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4032
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4009, metadata !575), !dbg !4012
  %22 = icmp eq i32 %20, 0, !dbg !4035
  br i1 %22, label %24, label %23, !dbg !4033

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4037, !tbaa !982
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4009, metadata !575), !dbg !4012
  br label %24, !dbg !4039

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4040
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4041 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4086, metadata !575), !dbg !4087
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4088
  br i1 %2, label %6, label %3, !dbg !4090

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !4091
  %5 = icmp eq i32 %4, 0, !dbg !4091
  br i1 %5, label %6, label %8, !dbg !4093

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4095
  br label %17, !dbg !4096

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4097, metadata !575) #9, !dbg !4102
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4104
  %10 = load i32, i32* %9, align 8, !dbg !4104, !tbaa !3616
  %11 = and i32 %10, 256, !dbg !4106
  %12 = icmp eq i32 %11, 0, !dbg !4106
  br i1 %12, label %15, label %13, !dbg !4107

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !4108
  br label %15, !dbg !4108

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4109
  br label %17, !dbg !4110

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4111
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4112 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4158, metadata !575), !dbg !4164
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4159, metadata !575), !dbg !4165
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4160, metadata !575), !dbg !4166
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4167
  %5 = load i8*, i8** %4, align 8, !dbg !4167, !tbaa !3846
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4168
  %7 = load i8*, i8** %6, align 8, !dbg !4168, !tbaa !3845
  %8 = icmp eq i8* %5, %7, !dbg !4169
  br i1 %8, label %9, label %28, !dbg !4170

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4171
  %11 = load i8*, i8** %10, align 8, !dbg !4171, !tbaa !893
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4173
  %13 = load i8*, i8** %12, align 8, !dbg !4173, !tbaa !4174
  %14 = icmp eq i8* %11, %13, !dbg !4175
  br i1 %14, label %15, label %28, !dbg !4176

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4177
  %17 = load i8*, i8** %16, align 8, !dbg !4177, !tbaa !4178
  %18 = icmp eq i8* %17, null, !dbg !4179
  br i1 %18, label %19, label %28, !dbg !4180

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !4182
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !4183
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4161, metadata !575), !dbg !4185
  %22 = icmp eq i64 %21, -1, !dbg !4186
  br i1 %22, label %30, label %23, !dbg !4188

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4189
  %25 = load i32, i32* %24, align 8, !dbg !4190, !tbaa !3616
  %26 = and i32 %25, -17, !dbg !4190
  store i32 %26, i32* %24, align 8, !dbg !4190, !tbaa !3616
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4191
  store i64 %21, i64* %27, align 8, !dbg !4192, !tbaa !4193
  br label %30, !dbg !4194

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4195
  br label %30, !dbg !4196

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4197
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

!llvm.dbg.cu = !{!480, !2, !11, !20, !28, !37, !522, !124, !530, !547, !549, !551, !554, !556, !133, !559, !561, !563}
!llvm.ident = !{!565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565}
!llvm.module.flags = !{!566, !567, !568, !569}

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
!480 = distinct !DICompileUnit(language: DW_LANG_C99, file: !481, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !482, retainedTypes: !486, globals: !491)
!481 = !DIFile(filename: "src/echo.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!482 = !{!483, !59}
!483 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !481, line: 31, size: 32, elements: !484)
!484 = !{!485}
!485 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0)
!486 = !{!76, !487, !489, !6, !32, !31, !25, !75, !476}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!491 = !{!492}
!492 = !DIGlobalVariableExpression(var: !493)
!493 = distinct !DIGlobalVariable(name: "infomap", scope: !494, file: !495, line: 632, type: !519, isLocal: true, isDefinition: true)
!494 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !495, file: !495, line: 630, type: !496, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !498)
!495 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!496 = !DISubroutineType(types: !497)
!497 = !{null, !6}
!498 = !{!499, !500, !501, !508, !510, !511, !512, !515, !516, !518}
!499 = !DILocalVariable(name: "program", arg: 1, scope: !494, file: !495, line: 630, type: !6)
!500 = !DILocalVariable(name: "node", scope: !494, file: !495, line: 642, type: !6)
!501 = !DILocalVariable(name: "map_prog", scope: !494, file: !495, line: 643, type: !502)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !494, file: !495, line: 632, size: 128, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !504, file: !495, line: 632, baseType: !6, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !504, file: !495, line: 632, baseType: !6, size: 64, offset: 64)
!508 = !DILocalVariable(name: "__s1_len", scope: !509, file: !495, line: 645, type: !76)
!509 = distinct !DILexicalBlock(scope: !494, file: !495, line: 645, column: 33)
!510 = !DILocalVariable(name: "__s2_len", scope: !509, file: !495, line: 645, type: !76)
!511 = !DILocalVariable(name: "lc_messages", scope: !494, file: !495, line: 655, type: !6)
!512 = !DILocalVariable(name: "__s1_len", scope: !513, file: !495, line: 656, type: !76)
!513 = distinct !DILexicalBlock(scope: !514, file: !495, line: 656, column: 22)
!514 = distinct !DILexicalBlock(scope: !494, file: !495, line: 656, column: 7)
!515 = !DILocalVariable(name: "__s2_len", scope: !513, file: !495, line: 656, type: !76)
!516 = !DILocalVariable(name: "__s2", scope: !517, file: !495, line: 656, type: !489)
!517 = distinct !DILexicalBlock(scope: !513, file: !495, line: 656, column: 22)
!518 = !DILocalVariable(name: "__result", scope: !517, file: !495, line: 656, type: !25)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 896, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 7)
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !524, retainedTypes: !529)
!523 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!524 = !{!525}
!525 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 41, size: 32, elements: !527)
!526 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!527 = !{!528}
!528 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!529 = !{!31}
!530 = distinct !DICompileUnit(language: DW_LANG_C99, file: !531, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !532, retainedTypes: !546)
!531 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!532 = !{!533}
!533 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !535, file: !534, line: 192, size: 32, elements: !544)
!534 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = distinct !DISubprogram(name: "x2nrealloc", scope: !534, file: !534, line: 180, type: !536, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !539)
!536 = !DISubroutineType(types: !537)
!537 = !{!31, !31, !538, !76}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!539 = !{!540, !541, !542, !543}
!540 = !DILocalVariable(name: "p", arg: 1, scope: !535, file: !534, line: 180, type: !31)
!541 = !DILocalVariable(name: "pn", arg: 2, scope: !535, file: !534, line: 180, type: !538)
!542 = !DILocalVariable(name: "s", arg: 3, scope: !535, file: !534, line: 180, type: !76)
!543 = !DILocalVariable(name: "n", scope: !535, file: !534, line: 182, type: !76)
!544 = !{!545}
!545 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!546 = !{!76, !32, !31}
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!548 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !529)
!550 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !553)
!552 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!553 = !{!76}
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!555 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !557, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !558)
!557 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = !{!76, !487, !489, !6}
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!560 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !529)
!562 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !529)
!564 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!566 = !{i32 2, !"Dwarf Version", i32 4}
!567 = !{i32 2, !"Debug Info Version", i32 3}
!568 = !{i32 1, !"PIC Level", i32 2}
!569 = !{i32 1, !"PIE Level", i32 2}
!570 = distinct !DISubprogram(name: "usage", scope: !481, file: !481, line: 35, type: !571, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !480, variables: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !25}
!573 = !{!574}
!574 = !DILocalVariable(name: "status", arg: 1, scope: !570, file: !481, line: 35, type: !25)
!575 = !DIExpression()
!576 = !DILocation(line: 35, column: 12, scope: !570)
!577 = !DILocation(line: 37, column: 14, scope: !578)
!578 = distinct !DILexicalBlock(scope: !570, file: !481, line: 37, column: 7)
!579 = !DILocation(line: 37, column: 7, scope: !570)
!580 = !DILocation(line: 38, column: 5, scope: !581)
!581 = !DILexicalBlockFile(scope: !582, file: !481, discriminator: 1)
!582 = distinct !DILexicalBlock(scope: !578, file: !481, line: 38, column: 5)
!583 = !{!584, !584, i64 0}
!584 = !{!"any pointer", !585, i64 0}
!585 = !{!"omnipotent char", !586, i64 0}
!586 = !{!"Simple C/C++ TBAA"}
!587 = !DILocation(line: 38, column: 5, scope: !588)
!588 = !DILexicalBlockFile(scope: !582, file: !481, discriminator: 3)
!589 = !DILocation(line: 38, column: 5, scope: !590)
!590 = !DILexicalBlockFile(scope: !582, file: !481, discriminator: 2)
!591 = !DILocation(line: 41, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !578, file: !481, line: 40, column: 5)
!593 = !DILocation(line: 41, column: 7, scope: !594)
!594 = !DILexicalBlockFile(scope: !592, file: !481, discriminator: 1)
!595 = !DILocation(line: 45, column: 7, scope: !592)
!596 = !DILocation(line: 45, column: 7, scope: !594)
!597 = !DILocation(line: 50, column: 7, scope: !592)
!598 = !DILocation(line: 50, column: 7, scope: !594)
!599 = !DILocation(line: 58, column: 7, scope: !592)
!600 = !DILocation(line: 58, column: 7, scope: !594)
!601 = !DILocation(line: 59, column: 7, scope: !592)
!602 = !DILocation(line: 59, column: 7, scope: !594)
!603 = !DILocation(line: 60, column: 7, scope: !592)
!604 = !DILocation(line: 60, column: 7, scope: !594)
!605 = !DILocation(line: 65, column: 7, scope: !592)
!606 = !DILocation(line: 65, column: 7, scope: !594)
!607 = !DILocation(line: 77, column: 7, scope: !592)
!608 = !DILocation(line: 77, column: 7, scope: !594)
!609 = !DILocation(line: 81, column: 7, scope: !592)
!610 = !DILocation(line: 81, column: 7, scope: !594)
!611 = !DILocation(line: 642, column: 15, scope: !494, inlinedAt: !612)
!612 = distinct !DILocation(line: 82, column: 7, scope: !592)
!613 = !DILocation(line: 651, column: 3, scope: !494, inlinedAt: !612)
!614 = !DILocation(line: 651, column: 3, scope: !615, inlinedAt: !612)
!615 = !DILexicalBlockFile(scope: !494, file: !495, discriminator: 1)
!616 = !DILocation(line: 655, column: 29, scope: !494, inlinedAt: !612)
!617 = !DILocation(line: 655, column: 15, scope: !494, inlinedAt: !612)
!618 = !DILocation(line: 656, column: 7, scope: !514, inlinedAt: !612)
!619 = !DILocation(line: 656, column: 19, scope: !514, inlinedAt: !612)
!620 = !DILocation(line: 656, column: 22, scope: !621, inlinedAt: !612)
!621 = !DILexicalBlockFile(scope: !514, file: !495, discriminator: 16)
!622 = !DILocation(line: 656, column: 7, scope: !623, inlinedAt: !612)
!623 = !DILexicalBlockFile(scope: !494, file: !495, discriminator: 16)
!624 = !DILocation(line: 662, column: 7, scope: !625, inlinedAt: !612)
!625 = distinct !DILexicalBlock(scope: !514, file: !495, line: 657, column: 5)
!626 = !DILocation(line: 662, column: 7, scope: !627, inlinedAt: !612)
!627 = !DILexicalBlockFile(scope: !625, file: !495, discriminator: 1)
!628 = !DILocation(line: 664, column: 5, scope: !625, inlinedAt: !612)
!629 = !DILocation(line: 665, column: 3, scope: !494, inlinedAt: !612)
!630 = !DILocation(line: 665, column: 3, scope: !615, inlinedAt: !612)
!631 = !DILocation(line: 667, column: 3, scope: !494, inlinedAt: !612)
!632 = !DILocation(line: 667, column: 3, scope: !615, inlinedAt: !612)
!633 = !DILocation(line: 84, column: 3, scope: !570)
!634 = distinct !DISubprogram(name: "main", scope: !481, file: !481, line: 108, type: !635, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !638)
!635 = !DISubroutineType(types: !636)
!636 = !{!25, !25, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!638 = !{!639, !640, !641, !642, !643, !645, !646, !648, !649, !650, !655, !656, !658, !659, !662, !663, !665, !666, !669, !670, !674, !675}
!639 = !DILocalVariable(name: "argc", arg: 1, scope: !634, file: !481, line: 108, type: !25)
!640 = !DILocalVariable(name: "argv", arg: 2, scope: !634, file: !481, line: 108, type: !637)
!641 = !DILocalVariable(name: "display_return", scope: !634, file: !481, line: 110, type: !17)
!642 = !DILocalVariable(name: "allow_options", scope: !634, file: !481, line: 111, type: !17)
!643 = !DILocalVariable(name: "__s1_len", scope: !644, file: !481, line: 113, type: !76)
!644 = distinct !DILexicalBlock(scope: !634, file: !481, line: 113, column: 47)
!645 = !DILocalVariable(name: "__s2_len", scope: !644, file: !481, line: 113, type: !76)
!646 = !DILocalVariable(name: "__s2", scope: !647, file: !481, line: 113, type: !489)
!647 = distinct !DILexicalBlock(scope: !644, file: !481, line: 113, column: 47)
!648 = !DILocalVariable(name: "__result", scope: !647, file: !481, line: 113, type: !25)
!649 = !DILocalVariable(name: "do_v9", scope: !634, file: !481, line: 118, type: !17)
!650 = !DILocalVariable(name: "__s1_len", scope: !651, file: !481, line: 132, type: !76)
!651 = distinct !DILexicalBlock(scope: !652, file: !481, line: 132, column: 11)
!652 = distinct !DILexicalBlock(scope: !653, file: !481, line: 132, column: 11)
!653 = distinct !DILexicalBlock(scope: !654, file: !481, line: 131, column: 5)
!654 = distinct !DILexicalBlock(scope: !634, file: !481, line: 130, column: 7)
!655 = !DILocalVariable(name: "__s2_len", scope: !651, file: !481, line: 132, type: !76)
!656 = !DILocalVariable(name: "__s2", scope: !657, file: !481, line: 132, type: !489)
!657 = distinct !DILexicalBlock(scope: !651, file: !481, line: 132, column: 11)
!658 = !DILocalVariable(name: "__result", scope: !657, file: !481, line: 132, type: !25)
!659 = !DILocalVariable(name: "__s1_len", scope: !660, file: !481, line: 135, type: !76)
!660 = distinct !DILexicalBlock(scope: !661, file: !481, line: 135, column: 11)
!661 = distinct !DILexicalBlock(scope: !653, file: !481, line: 135, column: 11)
!662 = !DILocalVariable(name: "__s2_len", scope: !660, file: !481, line: 135, type: !76)
!663 = !DILocalVariable(name: "__s2", scope: !664, file: !481, line: 135, type: !489)
!664 = distinct !DILexicalBlock(scope: !660, file: !481, line: 135, column: 11)
!665 = !DILocalVariable(name: "__result", scope: !664, file: !481, line: 135, type: !25)
!666 = !DILocalVariable(name: "temp", scope: !667, file: !481, line: 149, type: !6)
!667 = distinct !DILexicalBlock(scope: !668, file: !481, line: 148, column: 7)
!668 = distinct !DILexicalBlock(scope: !634, file: !481, line: 146, column: 7)
!669 = !DILocalVariable(name: "i", scope: !667, file: !481, line: 150, type: !76)
!670 = !DILocalVariable(name: "s", scope: !671, file: !481, line: 196, type: !6)
!671 = distinct !DILexicalBlock(scope: !672, file: !481, line: 195, column: 9)
!672 = distinct !DILexicalBlock(scope: !673, file: !481, line: 193, column: 5)
!673 = distinct !DILexicalBlock(scope: !634, file: !481, line: 192, column: 7)
!674 = !DILocalVariable(name: "c", scope: !671, file: !481, line: 197, type: !476)
!675 = !DILocalVariable(name: "ch", scope: !676, file: !481, line: 216, type: !476)
!676 = distinct !DILexicalBlock(scope: !677, file: !481, line: 215, column: 23)
!677 = distinct !DILexicalBlock(scope: !678, file: !481, line: 204, column: 21)
!678 = distinct !DILexicalBlock(scope: !679, file: !481, line: 202, column: 17)
!679 = distinct !DILexicalBlock(scope: !680, file: !481, line: 201, column: 19)
!680 = distinct !DILexicalBlock(scope: !671, file: !481, line: 200, column: 13)
!681 = !DILocation(line: 108, column: 11, scope: !634)
!682 = !DILocation(line: 108, column: 24, scope: !634)
!683 = !DILocation(line: 110, column: 8, scope: !634)
!684 = !DILocation(line: 112, column: 8, scope: !634)
!685 = !DILocation(line: 113, column: 6, scope: !634)
!686 = !DILocation(line: 113, column: 37, scope: !687)
!687 = !DILexicalBlockFile(scope: !634, file: !481, discriminator: 1)
!688 = !DILocation(line: 113, column: 44, scope: !687)
!689 = !DILocation(line: 113, column: 47, scope: !644)
!690 = !DILocation(line: 113, column: 47, scope: !691)
!691 = !DILexicalBlockFile(scope: !647, file: !481, discriminator: 4)
!692 = !DILocation(line: 113, column: 47, scope: !647)
!693 = !{!585, !585, i64 0}
!694 = !DILocation(line: 113, column: 47, scope: !695)
!695 = !DILexicalBlockFile(scope: !696, file: !481, discriminator: 5)
!696 = distinct !DILexicalBlock(scope: !647, file: !481, line: 113, column: 47)
!697 = !DILocation(line: 113, column: 47, scope: !698)
!698 = !DILexicalBlockFile(scope: !696, file: !481, discriminator: 4)
!699 = !DILocation(line: 113, column: 47, scope: !700)
!700 = !DILexicalBlockFile(scope: !701, file: !481, discriminator: 6)
!701 = distinct !DILexicalBlock(scope: !696, file: !481, line: 113, column: 47)
!702 = !DILocation(line: 113, column: 47, scope: !703)
!703 = !DILexicalBlockFile(scope: !704, file: !481, discriminator: 7)
!704 = distinct !DILexicalBlock(scope: !701, file: !481, line: 113, column: 47)
!705 = !DILocation(line: 113, column: 47, scope: !706)
!706 = !DILexicalBlockFile(scope: !704, file: !481, discriminator: 6)
!707 = !DILocation(line: 113, column: 47, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !481, discriminator: 8)
!709 = distinct !DILexicalBlock(scope: !704, file: !481, line: 113, column: 47)
!710 = !DILocation(line: 113, column: 47, scope: !711)
!711 = !DILexicalBlockFile(scope: !712, file: !481, discriminator: 8)
!712 = distinct !DILexicalBlock(scope: !709, file: !481, line: 113, column: 47)
!713 = !DILocation(line: 113, column: 47, scope: !714)
!714 = !DILexicalBlockFile(scope: !634, file: !481, discriminator: 15)
!715 = !DILocation(line: 118, column: 8, scope: !634)
!716 = !DILocation(line: 121, column: 21, scope: !634)
!717 = !DILocation(line: 121, column: 3, scope: !634)
!718 = !DILocation(line: 122, column: 3, scope: !634)
!719 = !DILocation(line: 123, column: 3, scope: !634)
!720 = !DILocation(line: 124, column: 3, scope: !634)
!721 = !DILocation(line: 126, column: 3, scope: !634)
!722 = !DILocation(line: 130, column: 29, scope: !723)
!723 = !DILexicalBlockFile(scope: !654, file: !481, discriminator: 1)
!724 = !DILocation(line: 130, column: 21, scope: !654)
!725 = !DILocation(line: 132, column: 11, scope: !651)
!726 = !DILocation(line: 132, column: 11, scope: !727)
!727 = !DILexicalBlockFile(scope: !651, file: !481, discriminator: 12)
!728 = !DILocation(line: 132, column: 11, scope: !729)
!729 = !DILexicalBlockFile(scope: !652, file: !481, discriminator: 13)
!730 = !DILocation(line: 132, column: 11, scope: !731)
!731 = !DILexicalBlockFile(scope: !653, file: !481, discriminator: 13)
!732 = !DILocation(line: 133, column: 9, scope: !652)
!733 = !DILocation(line: 135, column: 11, scope: !660)
!734 = !DILocation(line: 135, column: 11, scope: !735)
!735 = !DILexicalBlockFile(scope: !660, file: !481, discriminator: 12)
!736 = !DILocation(line: 135, column: 11, scope: !737)
!737 = !DILexicalBlockFile(scope: !661, file: !481, discriminator: 13)
!738 = !DILocation(line: 135, column: 11, scope: !731)
!739 = !DILocation(line: 137, column: 24, scope: !740)
!740 = distinct !DILexicalBlock(scope: !661, file: !481, line: 136, column: 9)
!741 = !DILocation(line: 137, column: 60, scope: !740)
!742 = !DILocation(line: 137, column: 11, scope: !740)
!743 = !DILocation(line: 139, column: 11, scope: !740)
!744 = !DILocation(line: 143, column: 3, scope: !634)
!745 = !DILocation(line: 147, column: 17, scope: !746)
!746 = !DILexicalBlockFile(scope: !668, file: !481, discriminator: 1)
!747 = !DILocation(line: 146, column: 7, scope: !634)
!748 = !DILocation(line: 259, column: 19, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !481, discriminator: 1)
!750 = distinct !DILexicalBlock(scope: !673, file: !481, line: 258, column: 5)
!751 = !DILocation(line: 259, column: 7, scope: !749)
!752 = !DILocation(line: 261, column: 11, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !481, line: 260, column: 9)
!754 = !DILocation(line: 147, column: 25, scope: !755)
!755 = !DILexicalBlockFile(scope: !668, file: !481, discriminator: 2)
!756 = !DILocation(line: 147, column: 24, scope: !755)
!757 = !DILocation(line: 147, column: 33, scope: !755)
!758 = !DILocation(line: 147, column: 5, scope: !759)
!759 = !DILexicalBlockFile(scope: !668, file: !481, discriminator: 3)
!760 = !DILocation(line: 149, column: 36, scope: !667)
!761 = !DILocation(line: 149, column: 21, scope: !667)
!762 = !DILocation(line: 150, column: 16, scope: !667)
!763 = !DILocation(line: 156, column: 21, scope: !764)
!764 = !DILexicalBlockFile(scope: !765, file: !481, discriminator: 1)
!765 = distinct !DILexicalBlock(scope: !766, file: !481, line: 156, column: 9)
!766 = distinct !DILexicalBlock(scope: !667, file: !481, line: 156, column: 9)
!767 = !DILocation(line: 156, column: 9, scope: !768)
!768 = !DILexicalBlockFile(scope: !766, file: !481, discriminator: 1)
!769 = !DILocation(line: 157, column: 19, scope: !765)
!770 = !DILocation(line: 157, column: 11, scope: !765)
!771 = !DILocation(line: 156, column: 31, scope: !772)
!772 = !DILexicalBlockFile(scope: !765, file: !481, discriminator: 2)
!773 = distinct !{!773, !774, !775}
!774 = !DILocation(line: 156, column: 9, scope: !766)
!775 = !DILocation(line: 163, column: 13, scope: !766)
!776 = !DILocation(line: 165, column: 15, scope: !777)
!777 = distinct !DILexicalBlock(scope: !667, file: !481, line: 165, column: 13)
!778 = !DILocation(line: 165, column: 13, scope: !667)
!779 = !DILocation(line: 170, column: 16, scope: !780)
!780 = !DILexicalBlockFile(scope: !667, file: !481, discriminator: 1)
!781 = !DILocation(line: 170, column: 9, scope: !780)
!782 = !DILocation(line: 171, column: 24, scope: !667)
!783 = !DILocation(line: 171, column: 19, scope: !667)
!784 = !DILocation(line: 171, column: 11, scope: !667)
!785 = distinct !{!785, !786, !787}
!786 = !DILocation(line: 170, column: 9, scope: !667)
!787 = !DILocation(line: 184, column: 13, scope: !667)
!788 = !DILocation(line: 179, column: 15, scope: !789)
!789 = distinct !DILexicalBlock(scope: !667, file: !481, line: 172, column: 13)
!790 = !DILocation(line: 186, column: 13, scope: !667)
!791 = !DILocation(line: 187, column: 13, scope: !667)
!792 = !DILocation(line: 192, column: 7, scope: !673)
!793 = !DILocation(line: 192, column: 7, scope: !634)
!794 = !DILocation(line: 196, column: 27, scope: !671)
!795 = !DILocation(line: 196, column: 23, scope: !671)
!796 = !DILocation(line: 199, column: 11, scope: !671)
!797 = !DILocation(line: 199, column: 25, scope: !798)
!798 = !DILexicalBlockFile(scope: !671, file: !481, discriminator: 1)
!799 = !DILocation(line: 199, column: 23, scope: !798)
!800 = !DILocation(line: 197, column: 25, scope: !671)
!801 = !DILocation(line: 199, column: 11, scope: !798)
!802 = !DILocation(line: 201, column: 32, scope: !803)
!803 = !DILexicalBlockFile(scope: !679, file: !481, discriminator: 1)
!804 = !DILocation(line: 201, column: 19, scope: !805)
!805 = !DILexicalBlockFile(scope: !680, file: !481, discriminator: 1)
!806 = !DILocation(line: 203, column: 33, scope: !678)
!807 = !DILocation(line: 203, column: 19, scope: !678)
!808 = !DILocation(line: 205, column: 41, scope: !677)
!809 = !DILocation(line: 206, column: 41, scope: !677)
!810 = !DILocation(line: 208, column: 43, scope: !677)
!811 = !DILocation(line: 209, column: 41, scope: !677)
!812 = !DILocation(line: 210, column: 41, scope: !677)
!813 = !DILocation(line: 211, column: 41, scope: !677)
!814 = !DILocation(line: 212, column: 41, scope: !677)
!815 = !DILocation(line: 213, column: 41, scope: !677)
!816 = !DILocation(line: 216, column: 44, scope: !676)
!817 = !DILocation(line: 216, column: 39, scope: !676)
!818 = !DILocation(line: 217, column: 31, scope: !819)
!819 = distinct !DILexicalBlock(scope: !676, file: !481, line: 217, column: 29)
!820 = !{!821, !821, i64 0}
!821 = !{!"short", !585, i64 0}
!822 = !DILocation(line: 217, column: 29, scope: !676)
!823 = !DILocation(line: 219, column: 26, scope: !676)
!824 = !DILocalVariable(name: "c", arg: 1, scope: !825, file: !481, line: 89, type: !476)
!825 = distinct !DISubprogram(name: "hextobin", scope: !481, file: !481, line: 89, type: !826, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{!25, !476}
!828 = !{!824}
!829 = !DILocation(line: 89, column: 25, scope: !825, inlinedAt: !830)
!830 = distinct !DILocation(line: 220, column: 29, scope: !676)
!831 = !DILocation(line: 91, column: 3, scope: !825, inlinedAt: !830)
!832 = !DILocation(line: 91, column: 11, scope: !825, inlinedAt: !830)
!833 = !DILocation(line: 93, column: 23, scope: !834, inlinedAt: !830)
!834 = distinct !DILexicalBlock(scope: !825, file: !481, line: 92, column: 5)
!835 = !DILocation(line: 93, column: 14, scope: !834, inlinedAt: !830)
!836 = !DILocation(line: 95, column: 25, scope: !834, inlinedAt: !830)
!837 = !DILocation(line: 96, column: 25, scope: !834, inlinedAt: !830)
!838 = !DILocation(line: 97, column: 25, scope: !834, inlinedAt: !830)
!839 = !DILocation(line: 98, column: 25, scope: !834, inlinedAt: !830)
!840 = !DILocation(line: 99, column: 25, scope: !834, inlinedAt: !830)
!841 = !DILocation(line: 221, column: 30, scope: !676)
!842 = !DILocation(line: 222, column: 29, scope: !843)
!843 = distinct !DILexicalBlock(scope: !676, file: !481, line: 222, column: 29)
!844 = !DILocation(line: 222, column: 29, scope: !676)
!845 = !DILocation(line: 224, column: 30, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !481, line: 223, column: 27)
!847 = !DILocation(line: 225, column: 35, scope: !846)
!848 = !DILocation(line: 89, column: 25, scope: !825, inlinedAt: !849)
!849 = distinct !DILocation(line: 225, column: 42, scope: !846)
!850 = !DILocation(line: 91, column: 3, scope: !825, inlinedAt: !849)
!851 = !DILocation(line: 91, column: 11, scope: !825, inlinedAt: !849)
!852 = !DILocation(line: 93, column: 23, scope: !834, inlinedAt: !849)
!853 = !DILocation(line: 93, column: 14, scope: !834, inlinedAt: !849)
!854 = !DILocation(line: 95, column: 25, scope: !834, inlinedAt: !849)
!855 = !DILocation(line: 96, column: 25, scope: !834, inlinedAt: !849)
!856 = !DILocation(line: 97, column: 25, scope: !834, inlinedAt: !849)
!857 = !DILocation(line: 98, column: 25, scope: !834, inlinedAt: !849)
!858 = !DILocation(line: 99, column: 25, scope: !834, inlinedAt: !849)
!859 = !DILocation(line: 225, column: 40, scope: !846)
!860 = !DILocation(line: 226, column: 27, scope: !846)
!861 = !DILocation(line: 227, column: 23, scope: !677)
!862 = !DILocation(line: 231, column: 37, scope: !863)
!863 = distinct !DILexicalBlock(scope: !677, file: !481, line: 231, column: 27)
!864 = !DILocation(line: 231, column: 40, scope: !863)
!865 = !DILocation(line: 233, column: 29, scope: !677)
!866 = !DILocation(line: 233, column: 23, scope: !677)
!867 = !DILocation(line: 237, column: 25, scope: !677)
!868 = !DILocation(line: 238, column: 34, scope: !869)
!869 = distinct !DILexicalBlock(scope: !677, file: !481, line: 238, column: 27)
!870 = !DILocation(line: 238, column: 37, scope: !869)
!871 = !DILocation(line: 239, column: 31, scope: !869)
!872 = !DILocation(line: 239, column: 40, scope: !869)
!873 = !DILocation(line: 239, column: 43, scope: !869)
!874 = !DILocation(line: 239, column: 35, scope: !869)
!875 = !DILocation(line: 239, column: 25, scope: !869)
!876 = !DILocation(line: 240, column: 34, scope: !877)
!877 = distinct !DILexicalBlock(scope: !677, file: !481, line: 240, column: 27)
!878 = !DILocation(line: 240, column: 37, scope: !877)
!879 = !DILocation(line: 241, column: 31, scope: !877)
!880 = !DILocation(line: 241, column: 40, scope: !877)
!881 = !DILocation(line: 241, column: 43, scope: !877)
!882 = !DILocation(line: 241, column: 35, scope: !877)
!883 = !DILocation(line: 241, column: 25, scope: !877)
!884 = !DILocalVariable(name: "__c", arg: 1, scope: !885, file: !886, line: 105, type: !25)
!885 = distinct !DISubprogram(name: "putchar_unlocked", scope: !886, file: !886, line: 105, type: !887, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !889)
!886 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!887 = !DISubroutineType(types: !888)
!888 = !{!25, !25}
!889 = !{!884}
!890 = !DILocation(line: 105, column: 23, scope: !885, inlinedAt: !891)
!891 = distinct !DILocation(line: 246, column: 31, scope: !677)
!892 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !891)
!893 = !{!894, !584, i64 40}
!894 = !{!"_IO_FILE", !895, i64 0, !584, i64 8, !584, i64 16, !584, i64 24, !584, i64 32, !584, i64 40, !584, i64 48, !584, i64 56, !584, i64 64, !584, i64 72, !584, i64 80, !584, i64 88, !584, i64 96, !584, i64 104, !895, i64 112, !895, i64 116, !896, i64 120, !821, i64 128, !585, i64 130, !585, i64 131, !584, i64 136, !896, i64 144, !584, i64 152, !584, i64 160, !584, i64 168, !584, i64 176, !896, i64 184, !895, i64 192, !585, i64 196}
!895 = !{!"int", !585, i64 0}
!896 = !{!"long", !585, i64 0}
!897 = !{!894, !584, i64 48}
!898 = !{!"branch_weights", i32 2000, i32 1}
!899 = !DILocation(line: 107, column: 10, scope: !900, inlinedAt: !891)
!900 = !DILexicalBlockFile(scope: !885, file: !886, discriminator: 1)
!901 = !DILocation(line: 107, column: 10, scope: !902, inlinedAt: !891)
!902 = !DILexicalBlockFile(scope: !885, file: !886, discriminator: 2)
!903 = !DILocation(line: 105, column: 23, scope: !885, inlinedAt: !904)
!904 = distinct !DILocation(line: 249, column: 15, scope: !680)
!905 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !904)
!906 = !DILocation(line: 249, column: 15, scope: !680)
!907 = !DILocation(line: 107, column: 10, scope: !900, inlinedAt: !904)
!908 = distinct !{!908, !796, !909}
!909 = !DILocation(line: 250, column: 13, scope: !671)
!910 = !DILocation(line: 107, column: 10, scope: !902, inlinedAt: !904)
!911 = !DILocation(line: 251, column: 15, scope: !671)
!912 = !DILocation(line: 252, column: 15, scope: !671)
!913 = !DILocation(line: 253, column: 20, scope: !914)
!914 = distinct !DILexicalBlock(scope: !671, file: !481, line: 253, column: 15)
!915 = !DILocation(line: 253, column: 15, scope: !671)
!916 = !DILocation(line: 105, column: 23, scope: !885, inlinedAt: !917)
!917 = distinct !DILocation(line: 254, column: 13, scope: !914)
!918 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !917)
!919 = !DILocation(line: 107, column: 10, scope: !900, inlinedAt: !917)
!920 = !DILocation(line: 107, column: 10, scope: !902, inlinedAt: !917)
!921 = distinct !{!921, !922, !923}
!922 = !DILocation(line: 194, column: 7, scope: !672)
!923 = !DILocation(line: 255, column: 9, scope: !672)
!924 = !DILocation(line: 262, column: 15, scope: !753)
!925 = !DILocation(line: 263, column: 15, scope: !753)
!926 = !DILocation(line: 264, column: 20, scope: !927)
!927 = distinct !DILexicalBlock(scope: !753, file: !481, line: 264, column: 15)
!928 = !DILocation(line: 264, column: 15, scope: !753)
!929 = distinct !{!929, !930, !931}
!930 = !DILocation(line: 259, column: 7, scope: !750)
!931 = !DILocation(line: 266, column: 9, scope: !750)
!932 = !DILocation(line: 105, column: 23, scope: !885, inlinedAt: !933)
!933 = distinct !DILocation(line: 265, column: 13, scope: !927)
!934 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !933)
!935 = !DILocation(line: 107, column: 10, scope: !900, inlinedAt: !933)
!936 = !DILocation(line: 107, column: 10, scope: !902, inlinedAt: !933)
!937 = !DILocation(line: 269, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !634, file: !481, line: 269, column: 7)
!939 = !DILocation(line: 269, column: 7, scope: !634)
!940 = !DILocation(line: 105, column: 23, scope: !885, inlinedAt: !941)
!941 = distinct !DILocation(line: 270, column: 5, scope: !938)
!942 = !DILocation(line: 107, column: 10, scope: !885, inlinedAt: !941)
!943 = !DILocation(line: 107, column: 10, scope: !900, inlinedAt: !941)
!944 = !DILocation(line: 107, column: 10, scope: !902, inlinedAt: !941)
!945 = !DILocation(line: 272, column: 1, scope: !634)
!946 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !496, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !947)
!947 = !{!948}
!948 = !DILocalVariable(name: "file", arg: 1, scope: !946, file: !16, line: 41, type: !6)
!949 = !DILocation(line: 41, column: 41, scope: !946)
!950 = !DILocation(line: 43, column: 13, scope: !946)
!951 = !DILocation(line: 44, column: 1, scope: !946)
!952 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !953, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !955)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !17}
!955 = !{!956}
!956 = !DILocalVariable(name: "ignore", arg: 1, scope: !952, file: !16, line: 78, type: !17)
!957 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!958 = !DILocation(line: 78, column: 37, scope: !952)
!959 = !DILocation(line: 80, column: 16, scope: !952)
!960 = !{!961, !961, i64 0}
!961 = !{!"_Bool", !585, i64 0}
!962 = !DILocation(line: 81, column: 1, scope: !952)
!963 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !964, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{null}
!966 = !{!967}
!967 = !DILocalVariable(name: "write_error", scope: !968, file: !16, line: 112, type: !6)
!968 = distinct !DILexicalBlock(scope: !969, file: !16, line: 111, column: 5)
!969 = distinct !DILexicalBlock(scope: !963, file: !16, line: 109, column: 7)
!970 = !DILocation(line: 109, column: 21, scope: !969)
!971 = !DILocation(line: 109, column: 7, scope: !969)
!972 = !DILocation(line: 109, column: 29, scope: !969)
!973 = !DILocation(line: 110, column: 7, scope: !969)
!974 = !DILocation(line: 110, column: 12, scope: !975)
!975 = !DILexicalBlockFile(scope: !969, file: !16, discriminator: 1)
!976 = !{i8 0, i8 2}
!977 = !DILocation(line: 114, column: 19, scope: !978)
!978 = distinct !DILexicalBlock(scope: !968, file: !16, line: 113, column: 11)
!979 = !DILocation(line: 110, column: 25, scope: !975)
!980 = !DILocation(line: 110, column: 28, scope: !981)
!981 = !DILexicalBlockFile(scope: !969, file: !16, discriminator: 2)
!982 = !{!895, !895, i64 0}
!983 = !DILocation(line: 110, column: 34, scope: !981)
!984 = !DILocation(line: 109, column: 7, scope: !985)
!985 = !DILexicalBlockFile(scope: !963, file: !16, discriminator: 1)
!986 = !DILocation(line: 112, column: 33, scope: !968)
!987 = !DILocation(line: 112, column: 19, scope: !968)
!988 = !DILocation(line: 113, column: 11, scope: !978)
!989 = !DILocation(line: 113, column: 11, scope: !968)
!990 = !DILocation(line: 114, column: 36, scope: !991)
!991 = !DILexicalBlockFile(scope: !978, file: !16, discriminator: 1)
!992 = !DILocation(line: 114, column: 9, scope: !993)
!993 = !DILexicalBlockFile(scope: !978, file: !16, discriminator: 2)
!994 = !DILocation(line: 114, column: 9, scope: !978)
!995 = !DILocation(line: 117, column: 9, scope: !991)
!996 = !DILocation(line: 119, column: 14, scope: !968)
!997 = !DILocation(line: 119, column: 7, scope: !968)
!998 = !DILocation(line: 122, column: 22, scope: !999)
!999 = distinct !DILexicalBlock(scope: !963, file: !16, line: 122, column: 8)
!1000 = !DILocation(line: 122, column: 8, scope: !999)
!1001 = !DILocation(line: 122, column: 30, scope: !999)
!1002 = !DILocation(line: 122, column: 8, scope: !963)
!1003 = !DILocation(line: 123, column: 13, scope: !999)
!1004 = !DILocation(line: 123, column: 6, scope: !999)
!1005 = !DILocation(line: 124, column: 1, scope: !963)
!1006 = distinct !DISubprogram(name: "set_program_name", scope: !34, file: !34, line: 39, type: !496, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !1007)
!1007 = !{!1008, !1009, !1010}
!1008 = !DILocalVariable(name: "argv0", arg: 1, scope: !1006, file: !34, line: 39, type: !6)
!1009 = !DILocalVariable(name: "slash", scope: !1006, file: !34, line: 46, type: !6)
!1010 = !DILocalVariable(name: "base", scope: !1006, file: !34, line: 47, type: !6)
!1011 = !DILocation(line: 39, column: 31, scope: !1006)
!1012 = !DILocation(line: 51, column: 13, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1006, file: !34, line: 51, column: 7)
!1014 = !DILocation(line: 51, column: 7, scope: !1006)
!1015 = !DILocation(line: 55, column: 14, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1013, file: !34, line: 52, column: 5)
!1017 = !DILocation(line: 54, column: 7, scope: !1016)
!1018 = !DILocation(line: 56, column: 7, scope: !1016)
!1019 = !DILocation(line: 59, column: 11, scope: !1006)
!1020 = !DILocation(line: 46, column: 15, scope: !1006)
!1021 = !DILocation(line: 60, column: 17, scope: !1006)
!1022 = !DILocation(line: 60, column: 33, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1006, file: !34, discriminator: 1)
!1024 = !DILocation(line: 60, column: 11, scope: !1006)
!1025 = !DILocation(line: 47, column: 15, scope: !1006)
!1026 = !DILocation(line: 61, column: 12, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1006, file: !34, line: 61, column: 7)
!1028 = !DILocation(line: 61, column: 20, scope: !1027)
!1029 = !DILocation(line: 61, column: 25, scope: !1027)
!1030 = !DILocation(line: 61, column: 28, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1027, file: !34, discriminator: 1)
!1032 = !DILocation(line: 61, column: 61, scope: !1031)
!1033 = !DILocation(line: 61, column: 7, scope: !1023)
!1034 = !DILocation(line: 64, column: 11, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !34, line: 64, column: 11)
!1036 = distinct !DILexicalBlock(scope: !1027, file: !34, line: 62, column: 5)
!1037 = !DILocation(line: 64, column: 36, scope: !1035)
!1038 = !DILocation(line: 64, column: 11, scope: !1036)
!1039 = !DILocation(line: 66, column: 24, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !34, line: 65, column: 9)
!1041 = !DILocation(line: 70, column: 41, scope: !1040)
!1042 = !DILocation(line: 72, column: 9, scope: !1040)
!1043 = !DILocation(line: 84, column: 16, scope: !1006)
!1044 = !DILocation(line: 90, column: 27, scope: !1006)
!1045 = !DILocation(line: 92, column: 1, scope: !1006)
!1046 = distinct !DISubprogram(name: "clone_quoting_options", scope: !82, file: !82, line: 114, type: !1047, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1050)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!1049, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!1050 = !{!1051, !1052, !1053}
!1051 = !DILocalVariable(name: "o", arg: 1, scope: !1046, file: !82, line: 114, type: !1049)
!1052 = !DILocalVariable(name: "e", scope: !1046, file: !82, line: 116, type: !25)
!1053 = !DILocalVariable(name: "p", scope: !1046, file: !82, line: 117, type: !1049)
!1054 = !DILocation(line: 114, column: 48, scope: !1046)
!1055 = !DILocation(line: 116, column: 11, scope: !1046)
!1056 = !DILocation(line: 116, column: 7, scope: !1046)
!1057 = !DILocation(line: 117, column: 40, scope: !1046)
!1058 = !DILocation(line: 117, column: 40, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1046, file: !82, discriminator: 3)
!1060 = !DILocation(line: 117, column: 31, scope: !1059)
!1061 = !DILocation(line: 117, column: 27, scope: !1046)
!1062 = !DILocation(line: 119, column: 9, scope: !1046)
!1063 = !DILocation(line: 120, column: 3, scope: !1046)
!1064 = distinct !DISubprogram(name: "get_quoting_style", scope: !82, file: !82, line: 125, type: !1065, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1069)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!40, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1069 = !{!1070}
!1070 = !DILocalVariable(name: "o", arg: 1, scope: !1064, file: !82, line: 125, type: !1067)
!1071 = !DILocation(line: 125, column: 50, scope: !1064)
!1072 = !DILocation(line: 127, column: 11, scope: !1064)
!1073 = !DILocation(line: 127, column: 46, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1064, file: !82, discriminator: 3)
!1075 = !{!1076, !585, i64 0}
!1076 = !{!"quoting_options", !585, i64 0, !895, i64 4, !585, i64 8, !584, i64 40, !584, i64 48}
!1077 = !DILocation(line: 127, column: 3, scope: !1074)
!1078 = distinct !DISubprogram(name: "set_quoting_style", scope: !82, file: !82, line: 133, type: !1079, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !1049, !40}
!1081 = !{!1082, !1083}
!1082 = !DILocalVariable(name: "o", arg: 1, scope: !1078, file: !82, line: 133, type: !1049)
!1083 = !DILocalVariable(name: "s", arg: 2, scope: !1078, file: !82, line: 133, type: !40)
!1084 = !DILocation(line: 133, column: 44, scope: !1078)
!1085 = !DILocation(line: 133, column: 66, scope: !1078)
!1086 = !DILocation(line: 135, column: 4, scope: !1078)
!1087 = !DILocation(line: 135, column: 39, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1078, file: !82, discriminator: 3)
!1089 = !DILocation(line: 135, column: 45, scope: !1088)
!1090 = !DILocation(line: 136, column: 1, scope: !1078)
!1091 = distinct !DISubprogram(name: "set_char_quoting", scope: !82, file: !82, line: 144, type: !1092, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1094)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!25, !1049, !8, !25}
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1101, !1102}
!1095 = !DILocalVariable(name: "o", arg: 1, scope: !1091, file: !82, line: 144, type: !1049)
!1096 = !DILocalVariable(name: "c", arg: 2, scope: !1091, file: !82, line: 144, type: !8)
!1097 = !DILocalVariable(name: "i", arg: 3, scope: !1091, file: !82, line: 144, type: !25)
!1098 = !DILocalVariable(name: "uc", scope: !1091, file: !82, line: 146, type: !476)
!1099 = !DILocalVariable(name: "p", scope: !1091, file: !82, line: 147, type: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1101 = !DILocalVariable(name: "shift", scope: !1091, file: !82, line: 149, type: !25)
!1102 = !DILocalVariable(name: "r", scope: !1091, file: !82, line: 150, type: !25)
!1103 = !DILocation(line: 144, column: 43, scope: !1091)
!1104 = !DILocation(line: 144, column: 51, scope: !1091)
!1105 = !DILocation(line: 144, column: 58, scope: !1091)
!1106 = !DILocation(line: 146, column: 17, scope: !1091)
!1107 = !DILocation(line: 148, column: 6, scope: !1091)
!1108 = !DILocation(line: 148, column: 62, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1091, file: !82, discriminator: 3)
!1110 = !DILocation(line: 148, column: 57, scope: !1109)
!1111 = !DILocation(line: 147, column: 17, scope: !1091)
!1112 = !DILocation(line: 149, column: 18, scope: !1091)
!1113 = !DILocation(line: 149, column: 15, scope: !1091)
!1114 = !DILocation(line: 149, column: 7, scope: !1091)
!1115 = !DILocation(line: 150, column: 12, scope: !1091)
!1116 = !DILocation(line: 150, column: 15, scope: !1091)
!1117 = !DILocation(line: 150, column: 25, scope: !1091)
!1118 = !DILocation(line: 150, column: 7, scope: !1091)
!1119 = !DILocation(line: 151, column: 13, scope: !1091)
!1120 = !DILocation(line: 151, column: 18, scope: !1091)
!1121 = !DILocation(line: 151, column: 23, scope: !1091)
!1122 = !DILocation(line: 151, column: 6, scope: !1091)
!1123 = !DILocation(line: 152, column: 3, scope: !1091)
!1124 = distinct !DISubprogram(name: "set_quoting_flags", scope: !82, file: !82, line: 160, type: !1125, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!25, !1049, !25}
!1127 = !{!1128, !1129, !1130}
!1128 = !DILocalVariable(name: "o", arg: 1, scope: !1124, file: !82, line: 160, type: !1049)
!1129 = !DILocalVariable(name: "i", arg: 2, scope: !1124, file: !82, line: 160, type: !25)
!1130 = !DILocalVariable(name: "r", scope: !1124, file: !82, line: 162, type: !25)
!1131 = !DILocation(line: 160, column: 44, scope: !1124)
!1132 = !DILocation(line: 160, column: 51, scope: !1124)
!1133 = !DILocation(line: 163, column: 8, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1124, file: !82, line: 163, column: 7)
!1135 = !DILocation(line: 163, column: 7, scope: !1124)
!1136 = !DILocation(line: 165, column: 10, scope: !1124)
!1137 = !{!1076, !895, i64 4}
!1138 = !DILocation(line: 162, column: 7, scope: !1124)
!1139 = !DILocation(line: 166, column: 12, scope: !1124)
!1140 = !DILocation(line: 167, column: 3, scope: !1124)
!1141 = distinct !DISubprogram(name: "set_custom_quoting", scope: !82, file: !82, line: 171, type: !1142, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1144)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !1049, !6, !6}
!1144 = !{!1145, !1146, !1147}
!1145 = !DILocalVariable(name: "o", arg: 1, scope: !1141, file: !82, line: 171, type: !1049)
!1146 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1141, file: !82, line: 172, type: !6)
!1147 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1141, file: !82, line: 172, type: !6)
!1148 = !DILocation(line: 171, column: 45, scope: !1141)
!1149 = !DILocation(line: 172, column: 33, scope: !1141)
!1150 = !DILocation(line: 172, column: 57, scope: !1141)
!1151 = !DILocation(line: 174, column: 8, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1141, file: !82, line: 174, column: 7)
!1153 = !DILocation(line: 174, column: 7, scope: !1141)
!1154 = !DILocation(line: 176, column: 6, scope: !1141)
!1155 = !DILocation(line: 176, column: 12, scope: !1141)
!1156 = !DILocation(line: 177, column: 8, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1141, file: !82, line: 177, column: 7)
!1158 = !DILocation(line: 177, column: 23, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1157, file: !82, discriminator: 1)
!1160 = !DILocation(line: 177, column: 19, scope: !1157)
!1161 = !DILocation(line: 178, column: 5, scope: !1157)
!1162 = !DILocation(line: 179, column: 6, scope: !1141)
!1163 = !DILocation(line: 179, column: 17, scope: !1141)
!1164 = !{!1076, !584, i64 40}
!1165 = !DILocation(line: 180, column: 6, scope: !1141)
!1166 = !DILocation(line: 180, column: 18, scope: !1141)
!1167 = !{!1076, !584, i64 48}
!1168 = !DILocation(line: 181, column: 1, scope: !1141)
!1169 = distinct !DISubprogram(name: "quotearg_buffer", scope: !82, file: !82, line: 776, type: !1170, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1172)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!76, !32, !76, !6, !76, !1067}
!1172 = !{!1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180}
!1173 = !DILocalVariable(name: "buffer", arg: 1, scope: !1169, file: !82, line: 776, type: !32)
!1174 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1169, file: !82, line: 776, type: !76)
!1175 = !DILocalVariable(name: "arg", arg: 3, scope: !1169, file: !82, line: 777, type: !6)
!1176 = !DILocalVariable(name: "argsize", arg: 4, scope: !1169, file: !82, line: 777, type: !76)
!1177 = !DILocalVariable(name: "o", arg: 5, scope: !1169, file: !82, line: 778, type: !1067)
!1178 = !DILocalVariable(name: "p", scope: !1169, file: !82, line: 780, type: !1067)
!1179 = !DILocalVariable(name: "e", scope: !1169, file: !82, line: 781, type: !25)
!1180 = !DILocalVariable(name: "r", scope: !1169, file: !82, line: 782, type: !76)
!1181 = !DILocation(line: 776, column: 24, scope: !1169)
!1182 = !DILocation(line: 776, column: 39, scope: !1169)
!1183 = !DILocation(line: 777, column: 30, scope: !1169)
!1184 = !DILocation(line: 777, column: 42, scope: !1169)
!1185 = !DILocation(line: 778, column: 48, scope: !1169)
!1186 = !DILocation(line: 780, column: 37, scope: !1169)
!1187 = !DILocation(line: 780, column: 33, scope: !1169)
!1188 = !DILocation(line: 781, column: 11, scope: !1169)
!1189 = !DILocation(line: 781, column: 7, scope: !1169)
!1190 = !DILocation(line: 783, column: 43, scope: !1169)
!1191 = !DILocation(line: 783, column: 53, scope: !1169)
!1192 = !DILocation(line: 783, column: 60, scope: !1169)
!1193 = !DILocation(line: 784, column: 43, scope: !1169)
!1194 = !DILocation(line: 784, column: 58, scope: !1169)
!1195 = !DILocation(line: 782, column: 14, scope: !1169)
!1196 = !DILocation(line: 782, column: 10, scope: !1169)
!1197 = !DILocation(line: 785, column: 9, scope: !1169)
!1198 = !DILocation(line: 786, column: 3, scope: !1169)
!1199 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !82, file: !82, line: 248, type: !1200, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1204)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!76, !32, !76, !6, !76, !40, !25, !1202, !6, !6}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!1204 = !{!1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1229, !1230, !1231, !1232, !1233, !1236, !1237, !1254, !1257, !1258, !1265}
!1205 = !DILocalVariable(name: "buffer", arg: 1, scope: !1199, file: !82, line: 248, type: !32)
!1206 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1199, file: !82, line: 248, type: !76)
!1207 = !DILocalVariable(name: "arg", arg: 3, scope: !1199, file: !82, line: 249, type: !6)
!1208 = !DILocalVariable(name: "argsize", arg: 4, scope: !1199, file: !82, line: 249, type: !76)
!1209 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1199, file: !82, line: 250, type: !40)
!1210 = !DILocalVariable(name: "flags", arg: 6, scope: !1199, file: !82, line: 250, type: !25)
!1211 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1199, file: !82, line: 251, type: !1202)
!1212 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1199, file: !82, line: 252, type: !6)
!1213 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1199, file: !82, line: 253, type: !6)
!1214 = !DILocalVariable(name: "i", scope: !1199, file: !82, line: 255, type: !76)
!1215 = !DILocalVariable(name: "len", scope: !1199, file: !82, line: 256, type: !76)
!1216 = !DILocalVariable(name: "orig_buffersize", scope: !1199, file: !82, line: 257, type: !76)
!1217 = !DILocalVariable(name: "quote_string", scope: !1199, file: !82, line: 258, type: !6)
!1218 = !DILocalVariable(name: "quote_string_len", scope: !1199, file: !82, line: 259, type: !76)
!1219 = !DILocalVariable(name: "backslash_escapes", scope: !1199, file: !82, line: 260, type: !17)
!1220 = !DILocalVariable(name: "unibyte_locale", scope: !1199, file: !82, line: 261, type: !17)
!1221 = !DILocalVariable(name: "elide_outer_quotes", scope: !1199, file: !82, line: 262, type: !17)
!1222 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1199, file: !82, line: 263, type: !17)
!1223 = !DILocalVariable(name: "encountered_single_quote", scope: !1199, file: !82, line: 264, type: !17)
!1224 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1199, file: !82, line: 265, type: !17)
!1225 = !DILocalVariable(name: "c", scope: !1226, file: !82, line: 394, type: !476)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !82, line: 393, column: 5)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !82, line: 392, column: 3)
!1228 = distinct !DILexicalBlock(scope: !1199, file: !82, line: 392, column: 3)
!1229 = !DILocalVariable(name: "esc", scope: !1226, file: !82, line: 395, type: !476)
!1230 = !DILocalVariable(name: "is_right_quote", scope: !1226, file: !82, line: 396, type: !17)
!1231 = !DILocalVariable(name: "escaping", scope: !1226, file: !82, line: 397, type: !17)
!1232 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1226, file: !82, line: 398, type: !17)
!1233 = !DILocalVariable(name: "m", scope: !1234, file: !82, line: 602, type: !76)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !82, line: 600, column: 11)
!1235 = distinct !DILexicalBlock(scope: !1226, file: !82, line: 418, column: 9)
!1236 = !DILocalVariable(name: "printable", scope: !1234, file: !82, line: 604, type: !17)
!1237 = !DILocalVariable(name: "mbstate", scope: !1238, file: !82, line: 613, type: !1240)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !82, line: 612, column: 15)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !82, line: 606, column: 17)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1241, line: 107, baseType: !1242)
!1241 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1241, line: 95, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1241, line: 83, size: 64, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1243, file: !1241, line: 85, baseType: !25, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1243, file: !1241, line: 94, baseType: !1247, size: 32, offset: 32)
!1247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !1241, line: 86, size: 32, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1247, file: !1241, line: 89, baseType: !95, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1247, file: !1241, line: 93, baseType: !1251, size: 32)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1252)
!1252 = !{!1253}
!1253 = !DISubrange(count: 4)
!1254 = !DILocalVariable(name: "w", scope: !1255, file: !82, line: 623, type: !1256)
!1255 = distinct !DILexicalBlock(scope: !1238, file: !82, line: 622, column: 19)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 90, baseType: !25)
!1257 = !DILocalVariable(name: "bytes", scope: !1255, file: !82, line: 624, type: !76)
!1258 = !DILocalVariable(name: "j", scope: !1259, file: !82, line: 649, type: !76)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !82, line: 648, column: 27)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !82, line: 646, column: 29)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !82, line: 641, column: 23)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !82, line: 633, column: 30)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !82, line: 628, column: 30)
!1264 = distinct !DILexicalBlock(scope: !1255, file: !82, line: 626, column: 25)
!1265 = !DILocalVariable(name: "ilim", scope: !1266, file: !82, line: 676, type: !76)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !82, line: 673, column: 15)
!1267 = distinct !DILexicalBlock(scope: !1234, file: !82, line: 672, column: 17)
!1268 = !DILocation(line: 248, column: 33, scope: !1199)
!1269 = !DILocation(line: 248, column: 48, scope: !1199)
!1270 = !DILocation(line: 249, column: 39, scope: !1199)
!1271 = !DILocation(line: 249, column: 51, scope: !1199)
!1272 = !DILocation(line: 250, column: 46, scope: !1199)
!1273 = !DILocation(line: 250, column: 65, scope: !1199)
!1274 = !DILocation(line: 251, column: 47, scope: !1199)
!1275 = !DILocation(line: 252, column: 39, scope: !1199)
!1276 = !DILocation(line: 253, column: 39, scope: !1199)
!1277 = !DILocation(line: 256, column: 10, scope: !1199)
!1278 = !DILocation(line: 257, column: 10, scope: !1199)
!1279 = !DILocation(line: 258, column: 15, scope: !1199)
!1280 = !DILocation(line: 259, column: 10, scope: !1199)
!1281 = !DILocation(line: 260, column: 8, scope: !1199)
!1282 = !DILocation(line: 261, column: 25, scope: !1199)
!1283 = !DILocation(line: 261, column: 36, scope: !1199)
!1284 = !DILocation(line: 262, column: 8, scope: !1199)
!1285 = !DILocation(line: 263, column: 8, scope: !1199)
!1286 = !DILocation(line: 264, column: 8, scope: !1199)
!1287 = !DILocation(line: 265, column: 8, scope: !1199)
!1288 = !DILocation(line: 265, column: 3, scope: !1199)
!1289 = !DILocation(line: 308, column: 3, scope: !1199)
!1290 = !DILocation(line: 315, column: 11, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1199, file: !82, line: 309, column: 5)
!1292 = !DILocation(line: 315, column: 12, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1291, file: !82, line: 315, column: 11)
!1294 = !DILocation(line: 316, column: 9, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1296, file: !82, discriminator: 1)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !82, line: 316, column: 9)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !82, line: 316, column: 9)
!1298 = !DILocation(line: 316, column: 9, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1297, file: !82, discriminator: 1)
!1300 = !DILocation(line: 316, column: 9, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1296, file: !82, discriminator: 2)
!1302 = !DILocation(line: 354, column: 26, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !82, line: 332, column: 11)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !82, line: 331, column: 13)
!1305 = distinct !DILexicalBlock(scope: !1291, file: !82, line: 330, column: 7)
!1306 = !DILocation(line: 355, column: 27, scope: !1303)
!1307 = !DILocation(line: 356, column: 11, scope: !1303)
!1308 = !DILocation(line: 357, column: 14, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !82, line: 357, column: 13)
!1310 = !DILocation(line: 357, column: 13, scope: !1305)
!1311 = !DILocation(line: 358, column: 43, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1313, file: !82, discriminator: 1)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !82, line: 358, column: 11)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !82, line: 358, column: 11)
!1315 = !DILocation(line: 358, column: 11, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1314, file: !82, discriminator: 1)
!1317 = !DILocation(line: 359, column: 13, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1319, file: !82, discriminator: 1)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !82, line: 359, column: 13)
!1320 = distinct !DILexicalBlock(scope: !1313, file: !82, line: 359, column: 13)
!1321 = !DILocation(line: 359, column: 13, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1320, file: !82, discriminator: 1)
!1323 = !DILocation(line: 359, column: 13, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1319, file: !82, discriminator: 2)
!1325 = !DILocation(line: 359, column: 13, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1320, file: !82, discriminator: 3)
!1327 = !DILocation(line: 358, column: 70, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1313, file: !82, discriminator: 2)
!1329 = distinct !{!1329, !1330, !1331}
!1330 = !DILocation(line: 358, column: 11, scope: !1314)
!1331 = !DILocation(line: 359, column: 13, scope: !1314)
!1332 = !DILocation(line: 362, column: 28, scope: !1305)
!1333 = !DILocation(line: 364, column: 7, scope: !1291)
!1334 = !DILocation(line: 367, column: 7, scope: !1291)
!1335 = !DILocation(line: 370, column: 7, scope: !1291)
!1336 = !DILocation(line: 373, column: 12, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1291, file: !82, line: 373, column: 11)
!1338 = !DILocation(line: 373, column: 11, scope: !1291)
!1339 = !DILocation(line: 378, column: 12, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1291, file: !82, line: 378, column: 11)
!1341 = !DILocation(line: 378, column: 11, scope: !1291)
!1342 = !DILocation(line: 379, column: 9, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1344, file: !82, discriminator: 1)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !82, line: 379, column: 9)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !82, line: 379, column: 9)
!1346 = !DILocation(line: 379, column: 9, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1345, file: !82, discriminator: 1)
!1348 = !DILocation(line: 379, column: 9, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1344, file: !82, discriminator: 2)
!1350 = !DILocation(line: 386, column: 7, scope: !1291)
!1351 = !DILocation(line: 389, column: 7, scope: !1291)
!1352 = !DILocation(line: 255, column: 10, scope: !1199)
!1353 = !DILocation(line: 392, column: 8, scope: !1228)
!1354 = !DILocation(line: 392, column: 27, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1227, file: !82, discriminator: 1)
!1356 = !DILocation(line: 392, column: 19, scope: !1355)
!1357 = !DILocation(line: 392, column: 60, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1227, file: !82, discriminator: 3)
!1359 = !DILocation(line: 392, column: 3, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1228, file: !82, discriminator: 4)
!1361 = !DILocation(line: 392, column: 41, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1227, file: !82, discriminator: 2)
!1363 = !DILocation(line: 392, column: 48, scope: !1362)
!1364 = !DILocation(line: 396, column: 12, scope: !1226)
!1365 = !DILocation(line: 397, column: 12, scope: !1226)
!1366 = !DILocation(line: 398, column: 12, scope: !1226)
!1367 = !DILocation(line: 401, column: 11, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1226, file: !82, line: 400, column: 11)
!1369 = !DILocation(line: 403, column: 17, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1368, file: !82, discriminator: 1)
!1371 = !DILocation(line: 404, column: 39, scope: !1368)
!1372 = !DILocation(line: 408, column: 32, scope: !1368)
!1373 = !DILocation(line: 404, column: 19, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1368, file: !82, discriminator: 2)
!1375 = !DILocation(line: 404, column: 15, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1368, file: !82, discriminator: 4)
!1377 = !DILocation(line: 409, column: 11, scope: !1368)
!1378 = !DILocation(line: 409, column: 26, scope: !1370)
!1379 = !DILocation(line: 409, column: 14, scope: !1370)
!1380 = !DILocation(line: 400, column: 11, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1226, file: !82, discriminator: 1)
!1382 = !DILocation(line: 416, column: 11, scope: !1226)
!1383 = !DILocation(line: 394, column: 21, scope: !1226)
!1384 = !DILocation(line: 417, column: 7, scope: !1226)
!1385 = !DILocation(line: 420, column: 15, scope: !1235)
!1386 = !DILocation(line: 422, column: 15, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1388, file: !82, discriminator: 1)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !82, line: 422, column: 15)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !82, line: 421, column: 13)
!1390 = distinct !DILexicalBlock(scope: !1235, file: !82, line: 420, column: 15)
!1391 = !DILocation(line: 422, column: 15, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1393, file: !82, discriminator: 4)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !82, line: 422, column: 15)
!1394 = !DILocation(line: 422, column: 15, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1393, file: !82, discriminator: 3)
!1396 = !DILocation(line: 422, column: 15, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1398, file: !82, discriminator: 6)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !82, line: 422, column: 15)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !82, line: 422, column: 15)
!1400 = distinct !DILexicalBlock(scope: !1393, file: !82, line: 422, column: 15)
!1401 = !DILocation(line: 422, column: 15, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1399, file: !82, discriminator: 6)
!1403 = !DILocation(line: 422, column: 15, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1398, file: !82, discriminator: 7)
!1405 = !DILocation(line: 422, column: 15, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1399, file: !82, discriminator: 8)
!1407 = !DILocation(line: 422, column: 15, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1409, file: !82, discriminator: 11)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !82, line: 422, column: 15)
!1410 = distinct !DILexicalBlock(scope: !1400, file: !82, line: 422, column: 15)
!1411 = !DILocation(line: 422, column: 15, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1410, file: !82, discriminator: 11)
!1413 = !DILocation(line: 422, column: 15, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1409, file: !82, discriminator: 12)
!1415 = !DILocation(line: 422, column: 15, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1410, file: !82, discriminator: 13)
!1417 = !DILocation(line: 422, column: 15, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1419, file: !82, discriminator: 16)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !82, line: 422, column: 15)
!1420 = distinct !DILexicalBlock(scope: !1400, file: !82, line: 422, column: 15)
!1421 = !DILocation(line: 422, column: 15, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1420, file: !82, discriminator: 16)
!1423 = !DILocation(line: 422, column: 15, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1419, file: !82, discriminator: 17)
!1425 = !DILocation(line: 422, column: 15, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1420, file: !82, discriminator: 18)
!1427 = !DILocation(line: 422, column: 15, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1400, file: !82, discriminator: 20)
!1429 = !DILocation(line: 422, column: 15, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1431, file: !82, discriminator: 22)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !82, line: 422, column: 15)
!1432 = distinct !DILexicalBlock(scope: !1388, file: !82, line: 422, column: 15)
!1433 = !DILocation(line: 422, column: 15, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1432, file: !82, discriminator: 22)
!1435 = !DILocation(line: 422, column: 15, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1431, file: !82, discriminator: 23)
!1437 = !DILocation(line: 422, column: 15, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1432, file: !82, discriminator: 24)
!1439 = !DILocation(line: 430, column: 19, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1389, file: !82, line: 429, column: 19)
!1441 = !DILocation(line: 430, column: 24, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1440, file: !82, discriminator: 1)
!1443 = !DILocation(line: 430, column: 28, scope: !1442)
!1444 = !DILocation(line: 430, column: 38, scope: !1442)
!1445 = !DILocation(line: 430, column: 48, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1440, file: !82, discriminator: 2)
!1447 = !DILocation(line: 430, column: 59, scope: !1446)
!1448 = !DILocation(line: 432, column: 19, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1450, file: !82, discriminator: 1)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !82, line: 432, column: 19)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !82, line: 432, column: 19)
!1452 = distinct !DILexicalBlock(scope: !1440, file: !82, line: 431, column: 17)
!1453 = !DILocation(line: 432, column: 19, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1451, file: !82, discriminator: 1)
!1455 = !DILocation(line: 432, column: 19, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1450, file: !82, discriminator: 2)
!1457 = !DILocation(line: 432, column: 19, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1451, file: !82, discriminator: 3)
!1459 = !DILocation(line: 433, column: 19, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1461, file: !82, discriminator: 1)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !82, line: 433, column: 19)
!1462 = distinct !DILexicalBlock(scope: !1452, file: !82, line: 433, column: 19)
!1463 = !DILocation(line: 433, column: 19, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1462, file: !82, discriminator: 1)
!1465 = !DILocation(line: 433, column: 19, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1461, file: !82, discriminator: 2)
!1467 = !DILocation(line: 433, column: 19, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1462, file: !82, discriminator: 3)
!1469 = !DILocation(line: 434, column: 17, scope: !1452)
!1470 = !DILocation(line: 441, column: 20, scope: !1390)
!1471 = !DILocation(line: 446, column: 11, scope: !1235)
!1472 = !DILocation(line: 449, column: 19, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1235, file: !82, line: 447, column: 13)
!1474 = !DILocation(line: 455, column: 19, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1473, file: !82, line: 454, column: 19)
!1476 = !DILocation(line: 455, column: 24, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1475, file: !82, discriminator: 1)
!1478 = !DILocation(line: 455, column: 28, scope: !1477)
!1479 = !DILocation(line: 455, column: 38, scope: !1477)
!1480 = !DILocation(line: 455, column: 47, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1475, file: !82, discriminator: 2)
!1482 = !DILocation(line: 455, column: 41, scope: !1481)
!1483 = !DILocation(line: 455, column: 52, scope: !1481)
!1484 = !DILocation(line: 454, column: 19, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1473, file: !82, discriminator: 1)
!1486 = !DILocation(line: 456, column: 25, scope: !1475)
!1487 = !DILocation(line: 456, column: 17, scope: !1475)
!1488 = !DILocation(line: 463, column: 25, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1475, file: !82, line: 457, column: 19)
!1490 = !DILocation(line: 467, column: 21, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1492, file: !82, discriminator: 1)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !82, line: 467, column: 21)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !82, line: 467, column: 21)
!1494 = !DILocation(line: 467, column: 21, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1493, file: !82, discriminator: 1)
!1496 = !DILocation(line: 467, column: 21, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1492, file: !82, discriminator: 2)
!1498 = !DILocation(line: 467, column: 21, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1493, file: !82, discriminator: 3)
!1500 = !DILocation(line: 468, column: 21, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1502, file: !82, discriminator: 1)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !82, line: 468, column: 21)
!1503 = distinct !DILexicalBlock(scope: !1489, file: !82, line: 468, column: 21)
!1504 = !DILocation(line: 468, column: 21, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1503, file: !82, discriminator: 1)
!1506 = !DILocation(line: 468, column: 21, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1502, file: !82, discriminator: 2)
!1508 = !DILocation(line: 468, column: 21, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1503, file: !82, discriminator: 3)
!1510 = !DILocation(line: 469, column: 21, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1512, file: !82, discriminator: 1)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !82, line: 469, column: 21)
!1513 = distinct !DILexicalBlock(scope: !1489, file: !82, line: 469, column: 21)
!1514 = !DILocation(line: 469, column: 21, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1513, file: !82, discriminator: 1)
!1516 = !DILocation(line: 469, column: 21, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1512, file: !82, discriminator: 2)
!1518 = !DILocation(line: 469, column: 21, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1513, file: !82, discriminator: 3)
!1520 = !DILocation(line: 470, column: 21, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1522, file: !82, discriminator: 1)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !82, line: 470, column: 21)
!1523 = distinct !DILexicalBlock(scope: !1489, file: !82, line: 470, column: 21)
!1524 = !DILocation(line: 470, column: 21, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1523, file: !82, discriminator: 1)
!1526 = !DILocation(line: 470, column: 21, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1522, file: !82, discriminator: 2)
!1528 = !DILocation(line: 470, column: 21, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1523, file: !82, discriminator: 3)
!1530 = !DILocation(line: 471, column: 21, scope: !1489)
!1531 = !DILocation(line: 395, column: 21, scope: !1226)
!1532 = !DILocation(line: 484, column: 31, scope: !1235)
!1533 = !DILocation(line: 485, column: 31, scope: !1235)
!1534 = !DILocation(line: 487, column: 31, scope: !1235)
!1535 = !DILocation(line: 488, column: 31, scope: !1235)
!1536 = !DILocation(line: 489, column: 31, scope: !1235)
!1537 = !DILocation(line: 492, column: 15, scope: !1235)
!1538 = !DILocation(line: 494, column: 19, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !82, line: 493, column: 13)
!1540 = distinct !DILexicalBlock(scope: !1235, file: !82, line: 492, column: 15)
!1541 = !DILocation(line: 501, column: 33, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1235, file: !82, line: 501, column: 15)
!1543 = !DILocation(line: 506, column: 15, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1235, file: !82, line: 505, column: 15)
!1545 = !DILocation(line: 510, column: 15, scope: !1235)
!1546 = !DILocation(line: 518, column: 26, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1235, file: !82, line: 518, column: 15)
!1548 = !DILocation(line: 518, column: 15, scope: !1235)
!1549 = !DILocation(line: 518, column: 40, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1547, file: !82, discriminator: 1)
!1551 = !DILocation(line: 518, column: 47, scope: !1550)
!1552 = !DILocation(line: 522, column: 17, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1235, file: !82, line: 522, column: 15)
!1554 = !DILocation(line: 518, column: 18, scope: !1550)
!1555 = !DILocation(line: 518, column: 65, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1547, file: !82, discriminator: 2)
!1557 = !DILocation(line: 518, column: 15, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1235, file: !82, discriminator: 2)
!1559 = !DILocation(line: 522, column: 15, scope: !1235)
!1560 = !DILocation(line: 526, column: 11, scope: !1235)
!1561 = !DILocation(line: 541, column: 15, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1235, file: !82, line: 540, column: 15)
!1563 = !DILocation(line: 548, column: 15, scope: !1235)
!1564 = !DILocation(line: 550, column: 19, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !82, line: 549, column: 13)
!1566 = distinct !DILexicalBlock(scope: !1235, file: !82, line: 548, column: 15)
!1567 = !DILocation(line: 553, column: 19, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !82, line: 553, column: 19)
!1569 = !DILocation(line: 553, column: 35, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1568, file: !82, discriminator: 1)
!1571 = !DILocation(line: 553, column: 30, scope: !1568)
!1572 = !DILocation(line: 562, column: 15, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1574, file: !82, discriminator: 1)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !82, line: 562, column: 15)
!1575 = distinct !DILexicalBlock(scope: !1565, file: !82, line: 562, column: 15)
!1576 = !DILocation(line: 562, column: 15, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1575, file: !82, discriminator: 1)
!1578 = !DILocation(line: 562, column: 15, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1574, file: !82, discriminator: 2)
!1580 = !DILocation(line: 562, column: 15, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1575, file: !82, discriminator: 3)
!1582 = !DILocation(line: 563, column: 15, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1584, file: !82, discriminator: 1)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !82, line: 563, column: 15)
!1585 = distinct !DILexicalBlock(scope: !1565, file: !82, line: 563, column: 15)
!1586 = !DILocation(line: 563, column: 15, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1585, file: !82, discriminator: 1)
!1588 = !DILocation(line: 563, column: 15, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1584, file: !82, discriminator: 2)
!1590 = !DILocation(line: 563, column: 15, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1585, file: !82, discriminator: 3)
!1592 = !DILocation(line: 564, column: 15, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1594, file: !82, discriminator: 1)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !82, line: 564, column: 15)
!1595 = distinct !DILexicalBlock(scope: !1565, file: !82, line: 564, column: 15)
!1596 = !DILocation(line: 564, column: 15, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1595, file: !82, discriminator: 1)
!1598 = !DILocation(line: 564, column: 15, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1594, file: !82, discriminator: 2)
!1600 = !DILocation(line: 564, column: 15, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1595, file: !82, discriminator: 3)
!1602 = !DILocation(line: 566, column: 13, scope: !1565)
!1603 = !DILocation(line: 606, column: 17, scope: !1234)
!1604 = !DILocation(line: 602, column: 20, scope: !1234)
!1605 = !DILocation(line: 609, column: 29, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1239, file: !82, line: 607, column: 15)
!1607 = !DILocation(line: 609, column: 27, scope: !1606)
!1608 = !DILocation(line: 604, column: 18, scope: !1234)
!1609 = !DILocation(line: 610, column: 15, scope: !1606)
!1610 = !DILocation(line: 613, column: 17, scope: !1238)
!1611 = !DILocation(line: 614, column: 17, scope: !1238)
!1612 = !DILocation(line: 618, column: 29, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1238, file: !82, line: 618, column: 21)
!1614 = !DILocation(line: 618, column: 21, scope: !1238)
!1615 = distinct !{!1615, !1616, !1617}
!1616 = !DILocation(line: 621, column: 17, scope: !1238)
!1617 = !DILocation(line: 667, column: 44, scope: !1238)
!1618 = !DILocation(line: 619, column: 29, scope: !1613)
!1619 = !DILocation(line: 619, column: 19, scope: !1613)
!1620 = !DILocation(line: 623, column: 21, scope: !1255)
!1621 = !DILocation(line: 624, column: 56, scope: !1255)
!1622 = !DILocation(line: 624, column: 50, scope: !1255)
!1623 = !DILocation(line: 625, column: 53, scope: !1255)
!1624 = !DIExpression(DW_OP_deref)
!1625 = !DILocation(line: 613, column: 27, scope: !1238)
!1626 = !DILocation(line: 623, column: 29, scope: !1255)
!1627 = !DILocation(line: 624, column: 36, scope: !1255)
!1628 = !DILocation(line: 624, column: 28, scope: !1255)
!1629 = !DILocation(line: 626, column: 25, scope: !1255)
!1630 = !DILocation(line: 636, column: 38, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1632, file: !82, discriminator: 1)
!1632 = distinct !DILexicalBlock(scope: !1262, file: !82, line: 634, column: 23)
!1633 = !DILocation(line: 636, column: 48, scope: !1631)
!1634 = !DILocation(line: 636, column: 51, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1632, file: !82, discriminator: 2)
!1636 = !DILocation(line: 636, column: 48, scope: !1635)
!1637 = !DILocation(line: 636, column: 25, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1632, file: !82, discriminator: 3)
!1639 = !DILocation(line: 637, column: 28, scope: !1632)
!1640 = !DILocation(line: 636, column: 34, scope: !1631)
!1641 = distinct !{!1641, !1642, !1639}
!1642 = !DILocation(line: 636, column: 25, scope: !1632)
!1643 = !DILocation(line: 650, column: 43, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1645, file: !82, discriminator: 1)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !82, line: 650, column: 29)
!1646 = distinct !DILexicalBlock(scope: !1259, file: !82, line: 650, column: 29)
!1647 = !DILocation(line: 647, column: 29, scope: !1260)
!1648 = !DILocation(line: 649, column: 36, scope: !1259)
!1649 = !DILocation(line: 651, column: 49, scope: !1645)
!1650 = !DILocation(line: 651, column: 39, scope: !1645)
!1651 = !DILocation(line: 651, column: 31, scope: !1645)
!1652 = !DILocation(line: 650, column: 53, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1645, file: !82, discriminator: 2)
!1654 = !DILocation(line: 650, column: 29, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1646, file: !82, discriminator: 1)
!1656 = distinct !{!1656, !1657, !1658}
!1657 = !DILocation(line: 650, column: 29, scope: !1646)
!1658 = !DILocation(line: 659, column: 33, scope: !1646)
!1659 = !DILocation(line: 666, column: 19, scope: !1238)
!1660 = !DILocation(line: 662, column: 41, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1261, file: !82, line: 662, column: 29)
!1662 = !DILocation(line: 662, column: 31, scope: !1661)
!1663 = !DILocation(line: 662, column: 29, scope: !1261)
!1664 = !DILocation(line: 664, column: 27, scope: !1261)
!1665 = !DILocation(line: 667, column: 26, scope: !1238)
!1666 = !DILocation(line: 667, column: 24, scope: !1238)
!1667 = !DILocation(line: 666, column: 19, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1255, file: !82, discriminator: 3)
!1669 = !DILocation(line: 668, column: 15, scope: !1239)
!1670 = !DILocation(line: 670, column: 40, scope: !1234)
!1671 = !DILocation(line: 672, column: 19, scope: !1267)
!1672 = !DILocation(line: 672, column: 45, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1267, file: !82, discriminator: 1)
!1674 = !DILocation(line: 672, column: 23, scope: !1267)
!1675 = !DILocation(line: 676, column: 33, scope: !1266)
!1676 = !DILocation(line: 676, column: 24, scope: !1266)
!1677 = !DILocation(line: 678, column: 17, scope: !1266)
!1678 = !DILocation(line: 680, column: 43, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !82, line: 680, column: 25)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !82, line: 679, column: 19)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !82, line: 678, column: 17)
!1682 = distinct !DILexicalBlock(scope: !1266, file: !82, line: 678, column: 17)
!1683 = !DILocation(line: 682, column: 25, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1685, file: !82, discriminator: 1)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !82, line: 682, column: 25)
!1686 = distinct !DILexicalBlock(scope: !1679, file: !82, line: 681, column: 23)
!1687 = !DILocation(line: 682, column: 25, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1689, file: !82, discriminator: 4)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !82, line: 682, column: 25)
!1690 = !DILocation(line: 682, column: 25, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1689, file: !82, discriminator: 3)
!1692 = !DILocation(line: 682, column: 25, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1694, file: !82, discriminator: 6)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !82, line: 682, column: 25)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !82, line: 682, column: 25)
!1696 = distinct !DILexicalBlock(scope: !1689, file: !82, line: 682, column: 25)
!1697 = !DILocation(line: 682, column: 25, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1695, file: !82, discriminator: 6)
!1699 = !DILocation(line: 682, column: 25, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1694, file: !82, discriminator: 7)
!1701 = !DILocation(line: 682, column: 25, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1695, file: !82, discriminator: 8)
!1703 = !DILocation(line: 682, column: 25, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1705, file: !82, discriminator: 11)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !82, line: 682, column: 25)
!1706 = distinct !DILexicalBlock(scope: !1696, file: !82, line: 682, column: 25)
!1707 = !DILocation(line: 682, column: 25, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1706, file: !82, discriminator: 11)
!1709 = !DILocation(line: 682, column: 25, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1705, file: !82, discriminator: 12)
!1711 = !DILocation(line: 682, column: 25, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1706, file: !82, discriminator: 13)
!1713 = !DILocation(line: 682, column: 25, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1715, file: !82, discriminator: 16)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !82, line: 682, column: 25)
!1716 = distinct !DILexicalBlock(scope: !1696, file: !82, line: 682, column: 25)
!1717 = !DILocation(line: 682, column: 25, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1716, file: !82, discriminator: 16)
!1719 = !DILocation(line: 682, column: 25, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1715, file: !82, discriminator: 17)
!1721 = !DILocation(line: 682, column: 25, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1716, file: !82, discriminator: 18)
!1723 = !DILocation(line: 682, column: 25, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1696, file: !82, discriminator: 20)
!1725 = !DILocation(line: 682, column: 25, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1727, file: !82, discriminator: 22)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !82, line: 682, column: 25)
!1728 = distinct !DILexicalBlock(scope: !1685, file: !82, line: 682, column: 25)
!1729 = !DILocation(line: 682, column: 25, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1728, file: !82, discriminator: 22)
!1731 = !DILocation(line: 682, column: 25, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1727, file: !82, discriminator: 23)
!1733 = !DILocation(line: 682, column: 25, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1728, file: !82, discriminator: 24)
!1735 = !DILocation(line: 683, column: 25, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1737, file: !82, discriminator: 1)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !82, line: 683, column: 25)
!1738 = distinct !DILexicalBlock(scope: !1686, file: !82, line: 683, column: 25)
!1739 = !DILocation(line: 683, column: 25, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1738, file: !82, discriminator: 1)
!1741 = !DILocation(line: 683, column: 25, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1737, file: !82, discriminator: 2)
!1743 = !DILocation(line: 683, column: 25, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1738, file: !82, discriminator: 3)
!1745 = !DILocation(line: 684, column: 25, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1747, file: !82, discriminator: 1)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !82, line: 684, column: 25)
!1748 = distinct !DILexicalBlock(scope: !1686, file: !82, line: 684, column: 25)
!1749 = !DILocation(line: 684, column: 25, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1748, file: !82, discriminator: 1)
!1751 = !DILocation(line: 684, column: 25, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1747, file: !82, discriminator: 2)
!1753 = !DILocation(line: 684, column: 25, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1748, file: !82, discriminator: 3)
!1755 = !DILocation(line: 685, column: 38, scope: !1686)
!1756 = !DILocation(line: 685, column: 33, scope: !1686)
!1757 = !DILocation(line: 686, column: 23, scope: !1686)
!1758 = !DILocation(line: 687, column: 30, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1679, file: !82, line: 687, column: 30)
!1760 = !DILocation(line: 687, column: 30, scope: !1679)
!1761 = !DILocation(line: 689, column: 25, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !82, discriminator: 1)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !82, line: 689, column: 25)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !82, line: 689, column: 25)
!1765 = distinct !DILexicalBlock(scope: !1759, file: !82, line: 688, column: 23)
!1766 = !DILocation(line: 689, column: 25, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1764, file: !82, discriminator: 1)
!1768 = !DILocation(line: 689, column: 25, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1763, file: !82, discriminator: 2)
!1770 = !DILocation(line: 689, column: 25, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1764, file: !82, discriminator: 3)
!1772 = !DILocation(line: 691, column: 23, scope: !1765)
!1773 = !DILocation(line: 692, column: 35, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1680, file: !82, line: 692, column: 25)
!1775 = !DILocation(line: 692, column: 30, scope: !1774)
!1776 = !DILocation(line: 692, column: 25, scope: !1680)
!1777 = !DILocation(line: 694, column: 21, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1779, file: !82, discriminator: 1)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !82, line: 694, column: 21)
!1780 = distinct !DILexicalBlock(scope: !1680, file: !82, line: 694, column: 21)
!1781 = !DILocation(line: 694, column: 21, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1779, file: !82, discriminator: 2)
!1783 = !DILocation(line: 694, column: 21, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1785, file: !82, discriminator: 4)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !82, line: 694, column: 21)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !82, line: 694, column: 21)
!1787 = distinct !DILexicalBlock(scope: !1779, file: !82, line: 694, column: 21)
!1788 = !DILocation(line: 694, column: 21, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1786, file: !82, discriminator: 4)
!1790 = !DILocation(line: 694, column: 21, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1785, file: !82, discriminator: 5)
!1792 = !DILocation(line: 694, column: 21, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1786, file: !82, discriminator: 6)
!1794 = !DILocation(line: 694, column: 21, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1796, file: !82, discriminator: 9)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !82, line: 694, column: 21)
!1797 = distinct !DILexicalBlock(scope: !1787, file: !82, line: 694, column: 21)
!1798 = !DILocation(line: 694, column: 21, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1797, file: !82, discriminator: 9)
!1800 = !DILocation(line: 694, column: 21, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1796, file: !82, discriminator: 10)
!1802 = !DILocation(line: 694, column: 21, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1797, file: !82, discriminator: 11)
!1804 = !DILocation(line: 694, column: 21, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1787, file: !82, discriminator: 13)
!1806 = !DILocation(line: 695, column: 21, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1808, file: !82, discriminator: 1)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !82, line: 695, column: 21)
!1809 = distinct !DILexicalBlock(scope: !1680, file: !82, line: 695, column: 21)
!1810 = !DILocation(line: 695, column: 21, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1809, file: !82, discriminator: 1)
!1812 = !DILocation(line: 695, column: 21, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1808, file: !82, discriminator: 2)
!1814 = !DILocation(line: 695, column: 21, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1809, file: !82, discriminator: 3)
!1816 = !DILocation(line: 696, column: 25, scope: !1680)
!1817 = !DILocation(line: 678, column: 17, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1681, file: !82, discriminator: 1)
!1819 = distinct !{!1819, !1820, !1821}
!1820 = !DILocation(line: 678, column: 17, scope: !1682)
!1821 = !DILocation(line: 697, column: 19, scope: !1682)
!1822 = !DILocation(line: 704, column: 34, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1226, file: !82, line: 704, column: 11)
!1824 = !DILocation(line: 706, column: 14, scope: !1823)
!1825 = !DILocation(line: 707, column: 14, scope: !1823)
!1826 = !DILocation(line: 707, column: 35, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1823, file: !82, discriminator: 1)
!1828 = !DILocation(line: 707, column: 17, scope: !1827)
!1829 = !DILocation(line: 707, column: 53, scope: !1827)
!1830 = !DILocation(line: 707, column: 47, scope: !1827)
!1831 = !DILocation(line: 707, column: 65, scope: !1827)
!1832 = !DILocation(line: 708, column: 15, scope: !1827)
!1833 = !DILocation(line: 708, column: 11, scope: !1823)
!1834 = !DILocation(line: 704, column: 11, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1226, file: !82, discriminator: 2)
!1836 = !DILocation(line: 712, column: 7, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1838, file: !82, discriminator: 1)
!1838 = distinct !DILexicalBlock(scope: !1226, file: !82, line: 712, column: 7)
!1839 = !DILocation(line: 712, column: 7, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1841, file: !82, discriminator: 4)
!1841 = distinct !DILexicalBlock(scope: !1838, file: !82, line: 712, column: 7)
!1842 = !DILocation(line: 712, column: 7, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1841, file: !82, discriminator: 3)
!1844 = !DILocation(line: 712, column: 7, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1846, file: !82, discriminator: 6)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !82, line: 712, column: 7)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !82, line: 712, column: 7)
!1848 = distinct !DILexicalBlock(scope: !1841, file: !82, line: 712, column: 7)
!1849 = !DILocation(line: 712, column: 7, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1847, file: !82, discriminator: 6)
!1851 = !DILocation(line: 712, column: 7, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1846, file: !82, discriminator: 7)
!1853 = !DILocation(line: 712, column: 7, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1847, file: !82, discriminator: 8)
!1855 = !DILocation(line: 712, column: 7, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1857, file: !82, discriminator: 11)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !82, line: 712, column: 7)
!1858 = distinct !DILexicalBlock(scope: !1848, file: !82, line: 712, column: 7)
!1859 = !DILocation(line: 712, column: 7, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1858, file: !82, discriminator: 11)
!1861 = !DILocation(line: 712, column: 7, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1857, file: !82, discriminator: 12)
!1863 = !DILocation(line: 712, column: 7, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1858, file: !82, discriminator: 13)
!1865 = !DILocation(line: 712, column: 7, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1867, file: !82, discriminator: 16)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !82, line: 712, column: 7)
!1868 = distinct !DILexicalBlock(scope: !1848, file: !82, line: 712, column: 7)
!1869 = !DILocation(line: 712, column: 7, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1868, file: !82, discriminator: 16)
!1871 = !DILocation(line: 712, column: 7, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1867, file: !82, discriminator: 17)
!1873 = !DILocation(line: 712, column: 7, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1868, file: !82, discriminator: 18)
!1875 = !DILocation(line: 712, column: 7, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1848, file: !82, discriminator: 20)
!1877 = !DILocation(line: 712, column: 7, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1879, file: !82, discriminator: 22)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !82, line: 712, column: 7)
!1880 = distinct !DILexicalBlock(scope: !1838, file: !82, line: 712, column: 7)
!1881 = !DILocation(line: 712, column: 7, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1880, file: !82, discriminator: 22)
!1883 = !DILocation(line: 712, column: 7, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1879, file: !82, discriminator: 23)
!1885 = !DILocation(line: 712, column: 7, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1880, file: !82, discriminator: 24)
!1887 = !DILocation(line: 715, column: 7, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1889, file: !82, discriminator: 1)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !82, line: 715, column: 7)
!1890 = distinct !DILexicalBlock(scope: !1226, file: !82, line: 715, column: 7)
!1891 = !DILocation(line: 715, column: 7, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1889, file: !82, discriminator: 2)
!1893 = !DILocation(line: 715, column: 7, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1895, file: !82, discriminator: 4)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !82, line: 715, column: 7)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !82, line: 715, column: 7)
!1897 = distinct !DILexicalBlock(scope: !1889, file: !82, line: 715, column: 7)
!1898 = !DILocation(line: 715, column: 7, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1896, file: !82, discriminator: 4)
!1900 = !DILocation(line: 715, column: 7, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1895, file: !82, discriminator: 5)
!1902 = !DILocation(line: 715, column: 7, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1896, file: !82, discriminator: 6)
!1904 = !DILocation(line: 715, column: 7, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1906, file: !82, discriminator: 9)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !82, line: 715, column: 7)
!1907 = distinct !DILexicalBlock(scope: !1897, file: !82, line: 715, column: 7)
!1908 = !DILocation(line: 715, column: 7, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1907, file: !82, discriminator: 9)
!1910 = !DILocation(line: 715, column: 7, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1906, file: !82, discriminator: 10)
!1912 = !DILocation(line: 715, column: 7, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1907, file: !82, discriminator: 11)
!1914 = !DILocation(line: 715, column: 7, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1897, file: !82, discriminator: 13)
!1916 = !DILocation(line: 716, column: 7, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1918, file: !82, discriminator: 1)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !82, line: 716, column: 7)
!1919 = distinct !DILexicalBlock(scope: !1226, file: !82, line: 716, column: 7)
!1920 = !DILocation(line: 716, column: 7, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1919, file: !82, discriminator: 1)
!1922 = !DILocation(line: 716, column: 7, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1918, file: !82, discriminator: 2)
!1924 = !DILocation(line: 716, column: 7, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1919, file: !82, discriminator: 3)
!1926 = !DILocation(line: 718, column: 13, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1226, file: !82, line: 718, column: 11)
!1928 = !DILocation(line: 718, column: 11, scope: !1226)
!1929 = !DILocation(line: 720, column: 5, scope: !1227)
!1930 = !DILocation(line: 392, column: 75, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1227, file: !82, discriminator: 5)
!1932 = !DILocation(line: 392, column: 3, scope: !1931)
!1933 = distinct !{!1933, !1934, !1935}
!1934 = !DILocation(line: 392, column: 3, scope: !1228)
!1935 = !DILocation(line: 720, column: 5, scope: !1228)
!1936 = !DILocation(line: 722, column: 11, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1199, file: !82, line: 722, column: 7)
!1938 = !DILocation(line: 722, column: 16, scope: !1937)
!1939 = !DILocation(line: 730, column: 51, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1199, file: !82, line: 730, column: 7)
!1941 = !DILocation(line: 731, column: 10, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1940, file: !82, discriminator: 1)
!1943 = !DILocation(line: 733, column: 11, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !82, line: 733, column: 11)
!1945 = distinct !DILexicalBlock(scope: !1940, file: !82, line: 732, column: 5)
!1946 = !DILocation(line: 733, column: 11, scope: !1945)
!1947 = !DILocation(line: 734, column: 16, scope: !1944)
!1948 = !DILocation(line: 734, column: 9, scope: !1944)
!1949 = !DILocation(line: 738, column: 18, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1944, file: !82, line: 738, column: 16)
!1951 = !DILocation(line: 738, column: 32, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1950, file: !82, discriminator: 1)
!1953 = !DILocation(line: 738, column: 29, scope: !1950)
!1954 = !DILocation(line: 747, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1199, file: !82, line: 747, column: 7)
!1956 = !DILocation(line: 747, column: 20, scope: !1955)
!1957 = !DILocation(line: 748, column: 12, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1959, file: !82, discriminator: 1)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !82, line: 748, column: 5)
!1960 = distinct !DILexicalBlock(scope: !1955, file: !82, line: 748, column: 5)
!1961 = !DILocation(line: 748, column: 5, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1960, file: !82, discriminator: 1)
!1963 = !DILocation(line: 749, column: 7, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1965, file: !82, discriminator: 1)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !82, line: 749, column: 7)
!1966 = distinct !DILexicalBlock(scope: !1959, file: !82, line: 749, column: 7)
!1967 = !DILocation(line: 749, column: 7, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1966, file: !82, discriminator: 1)
!1969 = !DILocation(line: 749, column: 7, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1965, file: !82, discriminator: 2)
!1971 = !DILocation(line: 749, column: 7, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1966, file: !82, discriminator: 3)
!1973 = !DILocation(line: 748, column: 39, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1959, file: !82, discriminator: 2)
!1975 = distinct !{!1975, !1976, !1977}
!1976 = !DILocation(line: 748, column: 5, scope: !1960)
!1977 = !DILocation(line: 749, column: 7, scope: !1960)
!1978 = !DILocation(line: 751, column: 11, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1199, file: !82, line: 751, column: 7)
!1980 = !DILocation(line: 751, column: 7, scope: !1199)
!1981 = !DILocation(line: 752, column: 5, scope: !1979)
!1982 = !DILocation(line: 752, column: 17, scope: !1979)
!1983 = !DILocation(line: 758, column: 21, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1199, file: !82, line: 758, column: 7)
!1985 = !DILocation(line: 758, column: 54, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1984, file: !82, discriminator: 1)
!1987 = !DILocation(line: 758, column: 51, scope: !1984)
!1988 = !DILocation(line: 762, column: 42, scope: !1199)
!1989 = !DILocation(line: 760, column: 10, scope: !1199)
!1990 = !DILocation(line: 760, column: 3, scope: !1199)
!1991 = !DILocation(line: 764, column: 1, scope: !1199)
!1992 = distinct !DISubprogram(name: "gettext_quote", scope: !82, file: !82, line: 199, type: !1993, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!6, !6, !40}
!1995 = !{!1996, !1997, !1998, !1999}
!1996 = !DILocalVariable(name: "msgid", arg: 1, scope: !1992, file: !82, line: 199, type: !6)
!1997 = !DILocalVariable(name: "s", arg: 2, scope: !1992, file: !82, line: 199, type: !40)
!1998 = !DILocalVariable(name: "translation", scope: !1992, file: !82, line: 201, type: !6)
!1999 = !DILocalVariable(name: "locale_code", scope: !1992, file: !82, line: 202, type: !6)
!2000 = !DILocation(line: 199, column: 28, scope: !1992)
!2001 = !DILocation(line: 199, column: 54, scope: !1992)
!2002 = !DILocation(line: 201, column: 29, scope: !1992)
!2003 = !DILocation(line: 201, column: 15, scope: !1992)
!2004 = !DILocation(line: 204, column: 19, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1992, file: !82, line: 204, column: 7)
!2006 = !DILocation(line: 204, column: 7, scope: !1992)
!2007 = !DILocation(line: 225, column: 17, scope: !1992)
!2008 = !DILocation(line: 202, column: 15, scope: !1992)
!2009 = !DILocalVariable(name: "s2", arg: 2, scope: !2010, file: !2011, line: 160, type: !6)
!2010 = distinct !DISubprogram(name: "strcaseeq0", scope: !2011, file: !2011, line: 160, type: !2012, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2014)
!2011 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2014 = !{!2015, !2009, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024}
!2015 = !DILocalVariable(name: "s1", arg: 1, scope: !2010, file: !2011, line: 160, type: !6)
!2016 = !DILocalVariable(name: "s20", arg: 3, scope: !2010, file: !2011, line: 160, type: !8)
!2017 = !DILocalVariable(name: "s21", arg: 4, scope: !2010, file: !2011, line: 160, type: !8)
!2018 = !DILocalVariable(name: "s22", arg: 5, scope: !2010, file: !2011, line: 160, type: !8)
!2019 = !DILocalVariable(name: "s23", arg: 6, scope: !2010, file: !2011, line: 160, type: !8)
!2020 = !DILocalVariable(name: "s24", arg: 7, scope: !2010, file: !2011, line: 160, type: !8)
!2021 = !DILocalVariable(name: "s25", arg: 8, scope: !2010, file: !2011, line: 160, type: !8)
!2022 = !DILocalVariable(name: "s26", arg: 9, scope: !2010, file: !2011, line: 160, type: !8)
!2023 = !DILocalVariable(name: "s27", arg: 10, scope: !2010, file: !2011, line: 160, type: !8)
!2024 = !DILocalVariable(name: "s28", arg: 11, scope: !2010, file: !2011, line: 160, type: !8)
!2025 = !DILocation(line: 160, column: 41, scope: !2010, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 226, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1992, file: !82, line: 226, column: 7)
!2028 = !DILocation(line: 160, column: 120, scope: !2010, inlinedAt: !2026)
!2029 = !DILocation(line: 160, column: 130, scope: !2010, inlinedAt: !2026)
!2030 = !DILocation(line: 162, column: 7, scope: !2031, inlinedAt: !2026)
!2031 = !DILexicalBlockFile(scope: !2032, file: !2011, discriminator: 1)
!2032 = distinct !DILexicalBlock(scope: !2010, file: !2011, line: 162, column: 7)
!2033 = !DILocalVariable(name: "s2", arg: 2, scope: !2034, file: !2011, line: 146, type: !6)
!2034 = distinct !DISubprogram(name: "strcaseeq1", scope: !2011, file: !2011, line: 146, type: !2035, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2037 = !{!2038, !2033, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046}
!2038 = !DILocalVariable(name: "s1", arg: 1, scope: !2034, file: !2011, line: 146, type: !6)
!2039 = !DILocalVariable(name: "s21", arg: 3, scope: !2034, file: !2011, line: 146, type: !8)
!2040 = !DILocalVariable(name: "s22", arg: 4, scope: !2034, file: !2011, line: 146, type: !8)
!2041 = !DILocalVariable(name: "s23", arg: 5, scope: !2034, file: !2011, line: 146, type: !8)
!2042 = !DILocalVariable(name: "s24", arg: 6, scope: !2034, file: !2011, line: 146, type: !8)
!2043 = !DILocalVariable(name: "s25", arg: 7, scope: !2034, file: !2011, line: 146, type: !8)
!2044 = !DILocalVariable(name: "s26", arg: 8, scope: !2034, file: !2011, line: 146, type: !8)
!2045 = !DILocalVariable(name: "s27", arg: 9, scope: !2034, file: !2011, line: 146, type: !8)
!2046 = !DILocalVariable(name: "s28", arg: 10, scope: !2034, file: !2011, line: 146, type: !8)
!2047 = !DILocation(line: 146, column: 41, scope: !2034, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 167, column: 16, scope: !2049, inlinedAt: !2026)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !2011, line: 164, column: 11)
!2050 = distinct !DILexicalBlock(scope: !2032, file: !2011, line: 163, column: 5)
!2051 = !DILocation(line: 146, column: 110, scope: !2034, inlinedAt: !2048)
!2052 = !DILocation(line: 146, column: 120, scope: !2034, inlinedAt: !2048)
!2053 = !DILocation(line: 148, column: 7, scope: !2054, inlinedAt: !2048)
!2054 = !DILexicalBlockFile(scope: !2055, file: !2011, discriminator: 1)
!2055 = distinct !DILexicalBlock(scope: !2034, file: !2011, line: 148, column: 7)
!2056 = !DILocalVariable(name: "s2", arg: 2, scope: !2057, file: !2011, line: 132, type: !6)
!2057 = distinct !DISubprogram(name: "strcaseeq2", scope: !2011, file: !2011, line: 132, type: !2058, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2060 = !{!2061, !2056, !2062, !2063, !2064, !2065, !2066, !2067, !2068}
!2061 = !DILocalVariable(name: "s1", arg: 1, scope: !2057, file: !2011, line: 132, type: !6)
!2062 = !DILocalVariable(name: "s22", arg: 3, scope: !2057, file: !2011, line: 132, type: !8)
!2063 = !DILocalVariable(name: "s23", arg: 4, scope: !2057, file: !2011, line: 132, type: !8)
!2064 = !DILocalVariable(name: "s24", arg: 5, scope: !2057, file: !2011, line: 132, type: !8)
!2065 = !DILocalVariable(name: "s25", arg: 6, scope: !2057, file: !2011, line: 132, type: !8)
!2066 = !DILocalVariable(name: "s26", arg: 7, scope: !2057, file: !2011, line: 132, type: !8)
!2067 = !DILocalVariable(name: "s27", arg: 8, scope: !2057, file: !2011, line: 132, type: !8)
!2068 = !DILocalVariable(name: "s28", arg: 9, scope: !2057, file: !2011, line: 132, type: !8)
!2069 = !DILocation(line: 132, column: 41, scope: !2057, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 153, column: 16, scope: !2071, inlinedAt: !2048)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !2011, line: 150, column: 11)
!2072 = distinct !DILexicalBlock(scope: !2055, file: !2011, line: 149, column: 5)
!2073 = !DILocation(line: 132, column: 100, scope: !2057, inlinedAt: !2070)
!2074 = !DILocation(line: 132, column: 110, scope: !2057, inlinedAt: !2070)
!2075 = !DILocation(line: 134, column: 7, scope: !2076, inlinedAt: !2070)
!2076 = !DILexicalBlockFile(scope: !2077, file: !2011, discriminator: 1)
!2077 = distinct !DILexicalBlock(scope: !2057, file: !2011, line: 134, column: 7)
!2078 = !DILocalVariable(name: "s2", arg: 2, scope: !2079, file: !2011, line: 118, type: !6)
!2079 = distinct !DISubprogram(name: "strcaseeq3", scope: !2011, file: !2011, line: 118, type: !2080, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2082)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!2082 = !{!2083, !2078, !2084, !2085, !2086, !2087, !2088, !2089}
!2083 = !DILocalVariable(name: "s1", arg: 1, scope: !2079, file: !2011, line: 118, type: !6)
!2084 = !DILocalVariable(name: "s23", arg: 3, scope: !2079, file: !2011, line: 118, type: !8)
!2085 = !DILocalVariable(name: "s24", arg: 4, scope: !2079, file: !2011, line: 118, type: !8)
!2086 = !DILocalVariable(name: "s25", arg: 5, scope: !2079, file: !2011, line: 118, type: !8)
!2087 = !DILocalVariable(name: "s26", arg: 6, scope: !2079, file: !2011, line: 118, type: !8)
!2088 = !DILocalVariable(name: "s27", arg: 7, scope: !2079, file: !2011, line: 118, type: !8)
!2089 = !DILocalVariable(name: "s28", arg: 8, scope: !2079, file: !2011, line: 118, type: !8)
!2090 = !DILocation(line: 118, column: 41, scope: !2079, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 139, column: 16, scope: !2092, inlinedAt: !2070)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !2011, line: 136, column: 11)
!2093 = distinct !DILexicalBlock(scope: !2077, file: !2011, line: 135, column: 5)
!2094 = !DILocation(line: 118, column: 90, scope: !2079, inlinedAt: !2091)
!2095 = !DILocation(line: 118, column: 100, scope: !2079, inlinedAt: !2091)
!2096 = !DILocation(line: 120, column: 7, scope: !2097, inlinedAt: !2091)
!2097 = !DILexicalBlockFile(scope: !2098, file: !2011, discriminator: 2)
!2098 = distinct !DILexicalBlock(scope: !2079, file: !2011, line: 120, column: 7)
!2099 = !DILocation(line: 120, column: 7, scope: !2100, inlinedAt: !2091)
!2100 = !DILexicalBlockFile(scope: !2079, file: !2011, discriminator: 2)
!2101 = !DILocalVariable(name: "s2", arg: 2, scope: !2102, file: !2011, line: 104, type: !6)
!2102 = distinct !DISubprogram(name: "strcaseeq4", scope: !2011, file: !2011, line: 104, type: !2103, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!2105 = !{!2106, !2101, !2107, !2108, !2109, !2110, !2111}
!2106 = !DILocalVariable(name: "s1", arg: 1, scope: !2102, file: !2011, line: 104, type: !6)
!2107 = !DILocalVariable(name: "s24", arg: 3, scope: !2102, file: !2011, line: 104, type: !8)
!2108 = !DILocalVariable(name: "s25", arg: 4, scope: !2102, file: !2011, line: 104, type: !8)
!2109 = !DILocalVariable(name: "s26", arg: 5, scope: !2102, file: !2011, line: 104, type: !8)
!2110 = !DILocalVariable(name: "s27", arg: 6, scope: !2102, file: !2011, line: 104, type: !8)
!2111 = !DILocalVariable(name: "s28", arg: 7, scope: !2102, file: !2011, line: 104, type: !8)
!2112 = !DILocation(line: 104, column: 41, scope: !2102, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 125, column: 16, scope: !2114, inlinedAt: !2091)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !2011, line: 122, column: 11)
!2115 = distinct !DILexicalBlock(scope: !2098, file: !2011, line: 121, column: 5)
!2116 = !DILocation(line: 104, column: 80, scope: !2102, inlinedAt: !2113)
!2117 = !DILocation(line: 104, column: 90, scope: !2102, inlinedAt: !2113)
!2118 = !DILocation(line: 106, column: 7, scope: !2119, inlinedAt: !2113)
!2119 = !DILexicalBlockFile(scope: !2120, file: !2011, discriminator: 2)
!2120 = distinct !DILexicalBlock(scope: !2102, file: !2011, line: 106, column: 7)
!2121 = !DILocation(line: 106, column: 7, scope: !2122, inlinedAt: !2113)
!2122 = !DILexicalBlockFile(scope: !2102, file: !2011, discriminator: 2)
!2123 = !DILocalVariable(name: "s2", arg: 2, scope: !2124, file: !2011, line: 90, type: !6)
!2124 = distinct !DISubprogram(name: "strcaseeq5", scope: !2011, file: !2011, line: 90, type: !2125, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!25, !6, !6, !8, !8, !8, !8}
!2127 = !{!2128, !2123, !2129, !2130, !2131, !2132}
!2128 = !DILocalVariable(name: "s1", arg: 1, scope: !2124, file: !2011, line: 90, type: !6)
!2129 = !DILocalVariable(name: "s25", arg: 3, scope: !2124, file: !2011, line: 90, type: !8)
!2130 = !DILocalVariable(name: "s26", arg: 4, scope: !2124, file: !2011, line: 90, type: !8)
!2131 = !DILocalVariable(name: "s27", arg: 5, scope: !2124, file: !2011, line: 90, type: !8)
!2132 = !DILocalVariable(name: "s28", arg: 6, scope: !2124, file: !2011, line: 90, type: !8)
!2133 = !DILocation(line: 90, column: 41, scope: !2124, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 111, column: 16, scope: !2135, inlinedAt: !2113)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !2011, line: 108, column: 11)
!2136 = distinct !DILexicalBlock(scope: !2120, file: !2011, line: 107, column: 5)
!2137 = !DILocation(line: 90, column: 70, scope: !2124, inlinedAt: !2134)
!2138 = !DILocation(line: 90, column: 80, scope: !2124, inlinedAt: !2134)
!2139 = !DILocation(line: 92, column: 7, scope: !2140, inlinedAt: !2134)
!2140 = !DILexicalBlockFile(scope: !2141, file: !2011, discriminator: 2)
!2141 = distinct !DILexicalBlock(scope: !2124, file: !2011, line: 92, column: 7)
!2142 = !DILocation(line: 92, column: 7, scope: !2143, inlinedAt: !2134)
!2143 = !DILexicalBlockFile(scope: !2124, file: !2011, discriminator: 2)
!2144 = !DILocation(line: 227, column: 12, scope: !2027)
!2145 = !DILocation(line: 227, column: 21, scope: !2027)
!2146 = !DILocation(line: 227, column: 5, scope: !2027)
!2147 = !DILocation(line: 146, column: 41, scope: !2034, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 167, column: 16, scope: !2049, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 228, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1992, file: !82, line: 228, column: 7)
!2151 = !DILocation(line: 146, column: 110, scope: !2034, inlinedAt: !2148)
!2152 = !DILocation(line: 146, column: 120, scope: !2034, inlinedAt: !2148)
!2153 = !DILocation(line: 148, column: 7, scope: !2054, inlinedAt: !2148)
!2154 = !DILocation(line: 132, column: 41, scope: !2057, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 153, column: 16, scope: !2071, inlinedAt: !2148)
!2156 = !DILocation(line: 132, column: 100, scope: !2057, inlinedAt: !2155)
!2157 = !DILocation(line: 132, column: 110, scope: !2057, inlinedAt: !2155)
!2158 = !DILocation(line: 134, column: 7, scope: !2159, inlinedAt: !2155)
!2159 = !DILexicalBlockFile(scope: !2077, file: !2011, discriminator: 2)
!2160 = !DILocation(line: 134, column: 7, scope: !2161, inlinedAt: !2155)
!2161 = !DILexicalBlockFile(scope: !2057, file: !2011, discriminator: 2)
!2162 = !DILocation(line: 118, column: 41, scope: !2079, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 139, column: 16, scope: !2092, inlinedAt: !2155)
!2164 = !DILocation(line: 118, column: 90, scope: !2079, inlinedAt: !2163)
!2165 = !DILocation(line: 118, column: 100, scope: !2079, inlinedAt: !2163)
!2166 = !DILocation(line: 120, column: 7, scope: !2097, inlinedAt: !2163)
!2167 = !DILocation(line: 120, column: 7, scope: !2100, inlinedAt: !2163)
!2168 = !DILocation(line: 104, column: 41, scope: !2102, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 125, column: 16, scope: !2114, inlinedAt: !2163)
!2170 = !DILocation(line: 104, column: 80, scope: !2102, inlinedAt: !2169)
!2171 = !DILocation(line: 104, column: 90, scope: !2102, inlinedAt: !2169)
!2172 = !DILocation(line: 106, column: 7, scope: !2119, inlinedAt: !2169)
!2173 = !DILocation(line: 106, column: 7, scope: !2122, inlinedAt: !2169)
!2174 = !DILocation(line: 90, column: 41, scope: !2124, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 111, column: 16, scope: !2135, inlinedAt: !2169)
!2176 = !DILocation(line: 90, column: 70, scope: !2124, inlinedAt: !2175)
!2177 = !DILocation(line: 90, column: 80, scope: !2124, inlinedAt: !2175)
!2178 = !DILocation(line: 92, column: 7, scope: !2140, inlinedAt: !2175)
!2179 = !DILocation(line: 92, column: 7, scope: !2143, inlinedAt: !2175)
!2180 = !DILocalVariable(name: "s2", arg: 2, scope: !2181, file: !2011, line: 76, type: !6)
!2181 = distinct !DISubprogram(name: "strcaseeq6", scope: !2011, file: !2011, line: 76, type: !2182, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!25, !6, !6, !8, !8, !8}
!2184 = !{!2185, !2180, !2186, !2187, !2188}
!2185 = !DILocalVariable(name: "s1", arg: 1, scope: !2181, file: !2011, line: 76, type: !6)
!2186 = !DILocalVariable(name: "s26", arg: 3, scope: !2181, file: !2011, line: 76, type: !8)
!2187 = !DILocalVariable(name: "s27", arg: 4, scope: !2181, file: !2011, line: 76, type: !8)
!2188 = !DILocalVariable(name: "s28", arg: 5, scope: !2181, file: !2011, line: 76, type: !8)
!2189 = !DILocation(line: 76, column: 41, scope: !2181, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 97, column: 16, scope: !2191, inlinedAt: !2175)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !2011, line: 94, column: 11)
!2192 = distinct !DILexicalBlock(scope: !2141, file: !2011, line: 93, column: 5)
!2193 = !DILocation(line: 76, column: 60, scope: !2181, inlinedAt: !2190)
!2194 = !DILocation(line: 76, column: 70, scope: !2181, inlinedAt: !2190)
!2195 = !DILocation(line: 78, column: 7, scope: !2196, inlinedAt: !2190)
!2196 = !DILexicalBlockFile(scope: !2197, file: !2011, discriminator: 2)
!2197 = distinct !DILexicalBlock(scope: !2181, file: !2011, line: 78, column: 7)
!2198 = !DILocation(line: 78, column: 7, scope: !2199, inlinedAt: !2190)
!2199 = !DILexicalBlockFile(scope: !2181, file: !2011, discriminator: 2)
!2200 = !DILocalVariable(name: "s2", arg: 2, scope: !2201, file: !2011, line: 62, type: !6)
!2201 = distinct !DISubprogram(name: "strcaseeq7", scope: !2011, file: !2011, line: 62, type: !2202, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2204)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!25, !6, !6, !8, !8}
!2204 = !{!2205, !2200, !2206, !2207}
!2205 = !DILocalVariable(name: "s1", arg: 1, scope: !2201, file: !2011, line: 62, type: !6)
!2206 = !DILocalVariable(name: "s27", arg: 3, scope: !2201, file: !2011, line: 62, type: !8)
!2207 = !DILocalVariable(name: "s28", arg: 4, scope: !2201, file: !2011, line: 62, type: !8)
!2208 = !DILocation(line: 62, column: 41, scope: !2201, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 83, column: 16, scope: !2210, inlinedAt: !2190)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !2011, line: 80, column: 11)
!2211 = distinct !DILexicalBlock(scope: !2197, file: !2011, line: 79, column: 5)
!2212 = !DILocation(line: 62, column: 50, scope: !2201, inlinedAt: !2209)
!2213 = !DILocation(line: 62, column: 60, scope: !2201, inlinedAt: !2209)
!2214 = !DILocation(line: 64, column: 7, scope: !2215, inlinedAt: !2209)
!2215 = !DILexicalBlockFile(scope: !2216, file: !2011, discriminator: 2)
!2216 = distinct !DILexicalBlock(scope: !2201, file: !2011, line: 64, column: 7)
!2217 = !DILocation(line: 228, column: 7, scope: !1992)
!2218 = !DILocation(line: 229, column: 12, scope: !2150)
!2219 = !DILocation(line: 229, column: 21, scope: !2150)
!2220 = !DILocation(line: 229, column: 5, scope: !2150)
!2221 = !DILocation(line: 231, column: 13, scope: !1992)
!2222 = !DILocation(line: 231, column: 11, scope: !1992)
!2223 = !DILocation(line: 231, column: 3, scope: !1992)
!2224 = !DILocation(line: 232, column: 1, scope: !1992)
!2225 = distinct !DISubprogram(name: "quotearg_alloc", scope: !82, file: !82, line: 791, type: !2226, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!32, !6, !76, !1067}
!2228 = !{!2229, !2230, !2231}
!2229 = !DILocalVariable(name: "arg", arg: 1, scope: !2225, file: !82, line: 791, type: !6)
!2230 = !DILocalVariable(name: "argsize", arg: 2, scope: !2225, file: !82, line: 791, type: !76)
!2231 = !DILocalVariable(name: "o", arg: 3, scope: !2225, file: !82, line: 792, type: !1067)
!2232 = !DILocation(line: 791, column: 29, scope: !2225)
!2233 = !DILocation(line: 791, column: 41, scope: !2225)
!2234 = !DILocation(line: 792, column: 47, scope: !2225)
!2235 = !DILocalVariable(name: "arg", arg: 1, scope: !2236, file: !82, line: 804, type: !6)
!2236 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 804, type: !2237, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!32, !6, !76, !538, !1067}
!2239 = !{!2235, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247}
!2240 = !DILocalVariable(name: "argsize", arg: 2, scope: !2236, file: !82, line: 804, type: !76)
!2241 = !DILocalVariable(name: "size", arg: 3, scope: !2236, file: !82, line: 804, type: !538)
!2242 = !DILocalVariable(name: "o", arg: 4, scope: !2236, file: !82, line: 805, type: !1067)
!2243 = !DILocalVariable(name: "p", scope: !2236, file: !82, line: 807, type: !1067)
!2244 = !DILocalVariable(name: "e", scope: !2236, file: !82, line: 808, type: !25)
!2245 = !DILocalVariable(name: "flags", scope: !2236, file: !82, line: 810, type: !25)
!2246 = !DILocalVariable(name: "bufsize", scope: !2236, file: !82, line: 811, type: !76)
!2247 = !DILocalVariable(name: "buf", scope: !2236, file: !82, line: 815, type: !32)
!2248 = !DILocation(line: 804, column: 33, scope: !2236, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 794, column: 10, scope: !2225)
!2250 = !DILocation(line: 804, column: 45, scope: !2236, inlinedAt: !2249)
!2251 = !DILocation(line: 804, column: 62, scope: !2236, inlinedAt: !2249)
!2252 = !DILocation(line: 805, column: 51, scope: !2236, inlinedAt: !2249)
!2253 = !DILocation(line: 807, column: 37, scope: !2236, inlinedAt: !2249)
!2254 = !DILocation(line: 807, column: 33, scope: !2236, inlinedAt: !2249)
!2255 = !DILocation(line: 808, column: 11, scope: !2236, inlinedAt: !2249)
!2256 = !DILocation(line: 808, column: 7, scope: !2236, inlinedAt: !2249)
!2257 = !DILocation(line: 810, column: 18, scope: !2236, inlinedAt: !2249)
!2258 = !DILocation(line: 810, column: 24, scope: !2236, inlinedAt: !2249)
!2259 = !DILocation(line: 810, column: 7, scope: !2236, inlinedAt: !2249)
!2260 = !DILocation(line: 811, column: 69, scope: !2236, inlinedAt: !2249)
!2261 = !DILocation(line: 812, column: 53, scope: !2236, inlinedAt: !2249)
!2262 = !DILocation(line: 813, column: 49, scope: !2236, inlinedAt: !2249)
!2263 = !DILocation(line: 814, column: 49, scope: !2236, inlinedAt: !2249)
!2264 = !DILocation(line: 811, column: 20, scope: !2236, inlinedAt: !2249)
!2265 = !DILocation(line: 814, column: 62, scope: !2236, inlinedAt: !2249)
!2266 = !DILocation(line: 811, column: 10, scope: !2236, inlinedAt: !2249)
!2267 = !DILocalVariable(name: "n", arg: 1, scope: !2268, file: !534, line: 220, type: !76)
!2268 = distinct !DISubprogram(name: "xcharalloc", scope: !534, file: !534, line: 220, type: !2269, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!32, !76}
!2271 = !{!2267}
!2272 = !DILocation(line: 220, column: 20, scope: !2268, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 815, column: 15, scope: !2236, inlinedAt: !2249)
!2274 = !DILocation(line: 222, column: 10, scope: !2268, inlinedAt: !2273)
!2275 = !DILocation(line: 815, column: 9, scope: !2236, inlinedAt: !2249)
!2276 = !DILocation(line: 816, column: 60, scope: !2236, inlinedAt: !2249)
!2277 = !DILocation(line: 818, column: 32, scope: !2236, inlinedAt: !2249)
!2278 = !DILocation(line: 818, column: 47, scope: !2236, inlinedAt: !2249)
!2279 = !DILocation(line: 816, column: 3, scope: !2236, inlinedAt: !2249)
!2280 = !DILocation(line: 819, column: 9, scope: !2236, inlinedAt: !2249)
!2281 = !DILocation(line: 794, column: 3, scope: !2225)
!2282 = !DILocation(line: 804, column: 33, scope: !2236)
!2283 = !DILocation(line: 804, column: 45, scope: !2236)
!2284 = !DILocation(line: 804, column: 62, scope: !2236)
!2285 = !DILocation(line: 805, column: 51, scope: !2236)
!2286 = !DILocation(line: 807, column: 37, scope: !2236)
!2287 = !DILocation(line: 807, column: 33, scope: !2236)
!2288 = !DILocation(line: 808, column: 11, scope: !2236)
!2289 = !DILocation(line: 808, column: 7, scope: !2236)
!2290 = !DILocation(line: 810, column: 18, scope: !2236)
!2291 = !DILocation(line: 810, column: 27, scope: !2236)
!2292 = !DILocation(line: 810, column: 24, scope: !2236)
!2293 = !DILocation(line: 810, column: 7, scope: !2236)
!2294 = !DILocation(line: 811, column: 69, scope: !2236)
!2295 = !DILocation(line: 812, column: 53, scope: !2236)
!2296 = !DILocation(line: 813, column: 49, scope: !2236)
!2297 = !DILocation(line: 814, column: 49, scope: !2236)
!2298 = !DILocation(line: 811, column: 20, scope: !2236)
!2299 = !DILocation(line: 814, column: 62, scope: !2236)
!2300 = !DILocation(line: 811, column: 10, scope: !2236)
!2301 = !DILocation(line: 220, column: 20, scope: !2268, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 815, column: 15, scope: !2236)
!2303 = !DILocation(line: 222, column: 10, scope: !2268, inlinedAt: !2302)
!2304 = !DILocation(line: 815, column: 9, scope: !2236)
!2305 = !DILocation(line: 816, column: 60, scope: !2236)
!2306 = !DILocation(line: 818, column: 32, scope: !2236)
!2307 = !DILocation(line: 818, column: 47, scope: !2236)
!2308 = !DILocation(line: 816, column: 3, scope: !2236)
!2309 = !DILocation(line: 819, column: 9, scope: !2236)
!2310 = !DILocation(line: 820, column: 7, scope: !2236)
!2311 = !DILocation(line: 821, column: 11, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2236, file: !82, line: 820, column: 7)
!2313 = !{!896, !896, i64 0}
!2314 = !DILocation(line: 821, column: 5, scope: !2312)
!2315 = !DILocation(line: 822, column: 3, scope: !2236)
!2316 = distinct !DISubprogram(name: "quotearg_free", scope: !82, file: !82, line: 840, type: !964, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2317)
!2317 = !{!2318, !2319}
!2318 = !DILocalVariable(name: "sv", scope: !2316, file: !82, line: 842, type: !109)
!2319 = !DILocalVariable(name: "i", scope: !2316, file: !82, line: 843, type: !25)
!2320 = !DILocation(line: 842, column: 24, scope: !2316)
!2321 = !DILocation(line: 842, column: 19, scope: !2316)
!2322 = !DILocation(line: 843, column: 7, scope: !2316)
!2323 = !DILocation(line: 844, column: 19, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2325, file: !82, discriminator: 1)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !82, line: 844, column: 3)
!2326 = distinct !DILexicalBlock(scope: !2316, file: !82, line: 844, column: 3)
!2327 = !DILocation(line: 844, column: 17, scope: !2324)
!2328 = !DILocation(line: 844, column: 3, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2326, file: !82, discriminator: 1)
!2330 = !DILocation(line: 845, column: 17, scope: !2325)
!2331 = !{!2332, !584, i64 8}
!2332 = !{!"slotvec", !896, i64 0, !584, i64 8}
!2333 = !DILocation(line: 845, column: 5, scope: !2325)
!2334 = !DILocation(line: 844, column: 28, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2325, file: !82, discriminator: 2)
!2336 = distinct !{!2336, !2337, !2338}
!2337 = !DILocation(line: 844, column: 3, scope: !2326)
!2338 = !DILocation(line: 845, column: 20, scope: !2326)
!2339 = !DILocation(line: 846, column: 13, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2316, file: !82, line: 846, column: 7)
!2341 = !DILocation(line: 846, column: 17, scope: !2340)
!2342 = !DILocation(line: 846, column: 7, scope: !2316)
!2343 = !DILocation(line: 848, column: 7, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2340, file: !82, line: 847, column: 5)
!2345 = !DILocation(line: 849, column: 21, scope: !2344)
!2346 = !{!2332, !896, i64 0}
!2347 = !DILocation(line: 850, column: 20, scope: !2344)
!2348 = !DILocation(line: 851, column: 5, scope: !2344)
!2349 = !DILocation(line: 852, column: 10, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2316, file: !82, line: 852, column: 7)
!2351 = !DILocation(line: 852, column: 7, scope: !2316)
!2352 = !DILocation(line: 854, column: 13, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !82, line: 853, column: 5)
!2354 = !DILocation(line: 854, column: 7, scope: !2353)
!2355 = !DILocation(line: 855, column: 15, scope: !2353)
!2356 = !DILocation(line: 856, column: 5, scope: !2353)
!2357 = !DILocation(line: 857, column: 10, scope: !2316)
!2358 = !DILocation(line: 858, column: 1, scope: !2316)
!2359 = distinct !DISubprogram(name: "quotearg_n", scope: !82, file: !82, line: 922, type: !2360, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!32, !25, !6}
!2362 = !{!2363, !2364}
!2363 = !DILocalVariable(name: "n", arg: 1, scope: !2359, file: !82, line: 922, type: !25)
!2364 = !DILocalVariable(name: "arg", arg: 2, scope: !2359, file: !82, line: 922, type: !6)
!2365 = !DILocation(line: 922, column: 17, scope: !2359)
!2366 = !DILocation(line: 922, column: 32, scope: !2359)
!2367 = !DILocation(line: 924, column: 10, scope: !2359)
!2368 = !DILocation(line: 924, column: 3, scope: !2359)
!2369 = distinct !DISubprogram(name: "quotearg_n_options", scope: !82, file: !82, line: 869, type: !2370, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!32, !25, !6, !76, !1067}
!2372 = !{!2373, !2374, !2375, !2376, !2377, !2378, !2379, !2382, !2384, !2385, !2386}
!2373 = !DILocalVariable(name: "n", arg: 1, scope: !2369, file: !82, line: 869, type: !25)
!2374 = !DILocalVariable(name: "arg", arg: 2, scope: !2369, file: !82, line: 869, type: !6)
!2375 = !DILocalVariable(name: "argsize", arg: 3, scope: !2369, file: !82, line: 869, type: !76)
!2376 = !DILocalVariable(name: "options", arg: 4, scope: !2369, file: !82, line: 870, type: !1067)
!2377 = !DILocalVariable(name: "e", scope: !2369, file: !82, line: 872, type: !25)
!2378 = !DILocalVariable(name: "sv", scope: !2369, file: !82, line: 874, type: !109)
!2379 = !DILocalVariable(name: "preallocated", scope: !2380, file: !82, line: 881, type: !17)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !82, line: 880, column: 5)
!2381 = distinct !DILexicalBlock(scope: !2369, file: !82, line: 879, column: 7)
!2382 = !DILocalVariable(name: "size", scope: !2383, file: !82, line: 894, type: !76)
!2383 = distinct !DILexicalBlock(scope: !2369, file: !82, line: 893, column: 3)
!2384 = !DILocalVariable(name: "val", scope: !2383, file: !82, line: 895, type: !32)
!2385 = !DILocalVariable(name: "flags", scope: !2383, file: !82, line: 897, type: !25)
!2386 = !DILocalVariable(name: "qsize", scope: !2383, file: !82, line: 898, type: !76)
!2387 = !DILocation(line: 869, column: 25, scope: !2369)
!2388 = !DILocation(line: 869, column: 40, scope: !2369)
!2389 = !DILocation(line: 869, column: 52, scope: !2369)
!2390 = !DILocation(line: 870, column: 51, scope: !2369)
!2391 = !DILocation(line: 872, column: 11, scope: !2369)
!2392 = !DILocation(line: 872, column: 7, scope: !2369)
!2393 = !DILocation(line: 874, column: 24, scope: !2369)
!2394 = !DILocation(line: 874, column: 19, scope: !2369)
!2395 = !DILocation(line: 876, column: 9, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2369, file: !82, line: 876, column: 7)
!2397 = !DILocation(line: 876, column: 7, scope: !2369)
!2398 = !DILocation(line: 877, column: 5, scope: !2396)
!2399 = !DILocation(line: 879, column: 7, scope: !2381)
!2400 = !DILocation(line: 879, column: 14, scope: !2381)
!2401 = !DILocation(line: 879, column: 7, scope: !2369)
!2402 = !DILocation(line: 881, column: 31, scope: !2380)
!2403 = !DILocation(line: 883, column: 67, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2380, file: !82, line: 883, column: 11)
!2405 = !DILocation(line: 883, column: 11, scope: !2380)
!2406 = !DILocation(line: 884, column: 9, scope: !2404)
!2407 = !DILocation(line: 886, column: 32, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !2380, file: !82, discriminator: 3)
!2409 = !DILocation(line: 886, column: 61, scope: !2408)
!2410 = !DILocation(line: 886, column: 58, scope: !2408)
!2411 = !DILocation(line: 886, column: 66, scope: !2408)
!2412 = !DILocation(line: 886, column: 22, scope: !2408)
!2413 = !DILocation(line: 886, column: 15, scope: !2408)
!2414 = !DILocation(line: 887, column: 11, scope: !2380)
!2415 = !DILocation(line: 888, column: 15, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2380, file: !82, line: 887, column: 11)
!2417 = !{i64 0, i64 8, !2313, i64 8, i64 8, !583}
!2418 = !DILocation(line: 888, column: 9, scope: !2416)
!2419 = !DILocation(line: 889, column: 20, scope: !2380)
!2420 = !DILocation(line: 889, column: 18, scope: !2380)
!2421 = !DILocation(line: 889, column: 7, scope: !2380)
!2422 = !DILocation(line: 889, column: 38, scope: !2380)
!2423 = !DILocation(line: 889, column: 31, scope: !2380)
!2424 = !DILocation(line: 889, column: 48, scope: !2380)
!2425 = !DILocation(line: 890, column: 14, scope: !2380)
!2426 = !DILocation(line: 891, column: 5, scope: !2380)
!2427 = !DILocation(line: 894, column: 19, scope: !2383)
!2428 = !DILocation(line: 894, column: 25, scope: !2383)
!2429 = !DILocation(line: 894, column: 12, scope: !2383)
!2430 = !DILocation(line: 895, column: 23, scope: !2383)
!2431 = !DILocation(line: 895, column: 11, scope: !2383)
!2432 = !DILocation(line: 897, column: 26, scope: !2383)
!2433 = !DILocation(line: 897, column: 32, scope: !2383)
!2434 = !DILocation(line: 897, column: 9, scope: !2383)
!2435 = !DILocation(line: 899, column: 55, scope: !2383)
!2436 = !DILocation(line: 900, column: 46, scope: !2383)
!2437 = !DILocation(line: 901, column: 55, scope: !2383)
!2438 = !DILocation(line: 902, column: 55, scope: !2383)
!2439 = !DILocation(line: 898, column: 20, scope: !2383)
!2440 = !DILocation(line: 898, column: 12, scope: !2383)
!2441 = !DILocation(line: 904, column: 14, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2383, file: !82, line: 904, column: 9)
!2443 = !DILocation(line: 904, column: 9, scope: !2383)
!2444 = !DILocation(line: 906, column: 35, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2442, file: !82, line: 905, column: 7)
!2446 = !DILocation(line: 906, column: 20, scope: !2445)
!2447 = !DILocation(line: 907, column: 17, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !82, line: 907, column: 13)
!2449 = !DILocation(line: 907, column: 13, scope: !2445)
!2450 = !DILocation(line: 908, column: 11, scope: !2448)
!2451 = !DILocation(line: 220, column: 20, scope: !2268, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 909, column: 27, scope: !2445)
!2453 = !DILocation(line: 222, column: 10, scope: !2268, inlinedAt: !2452)
!2454 = !DILocation(line: 909, column: 19, scope: !2445)
!2455 = !DILocation(line: 910, column: 69, scope: !2445)
!2456 = !DILocation(line: 912, column: 44, scope: !2445)
!2457 = !DILocation(line: 913, column: 44, scope: !2445)
!2458 = !DILocation(line: 910, column: 9, scope: !2445)
!2459 = !DILocation(line: 914, column: 7, scope: !2445)
!2460 = !DILocation(line: 916, column: 11, scope: !2383)
!2461 = !DILocation(line: 917, column: 5, scope: !2383)
!2462 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !82, file: !82, line: 928, type: !2463, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!32, !25, !6, !76}
!2465 = !{!2466, !2467, !2468}
!2466 = !DILocalVariable(name: "n", arg: 1, scope: !2462, file: !82, line: 928, type: !25)
!2467 = !DILocalVariable(name: "arg", arg: 2, scope: !2462, file: !82, line: 928, type: !6)
!2468 = !DILocalVariable(name: "argsize", arg: 3, scope: !2462, file: !82, line: 928, type: !76)
!2469 = !DILocation(line: 928, column: 21, scope: !2462)
!2470 = !DILocation(line: 928, column: 36, scope: !2462)
!2471 = !DILocation(line: 928, column: 48, scope: !2462)
!2472 = !DILocation(line: 930, column: 10, scope: !2462)
!2473 = !DILocation(line: 930, column: 3, scope: !2462)
!2474 = distinct !DISubprogram(name: "quotearg", scope: !82, file: !82, line: 934, type: !2475, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!32, !6}
!2477 = !{!2478}
!2478 = !DILocalVariable(name: "arg", arg: 1, scope: !2474, file: !82, line: 934, type: !6)
!2479 = !DILocation(line: 934, column: 23, scope: !2474)
!2480 = !DILocation(line: 922, column: 17, scope: !2359, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 936, column: 10, scope: !2474)
!2482 = !DILocation(line: 922, column: 32, scope: !2359, inlinedAt: !2481)
!2483 = !DILocation(line: 924, column: 10, scope: !2359, inlinedAt: !2481)
!2484 = !DILocation(line: 936, column: 3, scope: !2474)
!2485 = distinct !DISubprogram(name: "quotearg_mem", scope: !82, file: !82, line: 940, type: !2486, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!32, !6, !76}
!2488 = !{!2489, !2490}
!2489 = !DILocalVariable(name: "arg", arg: 1, scope: !2485, file: !82, line: 940, type: !6)
!2490 = !DILocalVariable(name: "argsize", arg: 2, scope: !2485, file: !82, line: 940, type: !76)
!2491 = !DILocation(line: 940, column: 27, scope: !2485)
!2492 = !DILocation(line: 940, column: 39, scope: !2485)
!2493 = !DILocation(line: 928, column: 21, scope: !2462, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 942, column: 10, scope: !2485)
!2495 = !DILocation(line: 928, column: 36, scope: !2462, inlinedAt: !2494)
!2496 = !DILocation(line: 928, column: 48, scope: !2462, inlinedAt: !2494)
!2497 = !DILocation(line: 930, column: 10, scope: !2462, inlinedAt: !2494)
!2498 = !DILocation(line: 942, column: 3, scope: !2485)
!2499 = distinct !DISubprogram(name: "quotearg_n_style", scope: !82, file: !82, line: 946, type: !2500, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!32, !25, !40, !6}
!2502 = !{!2503, !2504, !2505, !2506}
!2503 = !DILocalVariable(name: "n", arg: 1, scope: !2499, file: !82, line: 946, type: !25)
!2504 = !DILocalVariable(name: "s", arg: 2, scope: !2499, file: !82, line: 946, type: !40)
!2505 = !DILocalVariable(name: "arg", arg: 3, scope: !2499, file: !82, line: 946, type: !6)
!2506 = !DILocalVariable(name: "o", scope: !2499, file: !82, line: 948, type: !1068)
!2507 = !DILocalVariable(name: "o", scope: !2508, file: !82, line: 187, type: !89)
!2508 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !82, file: !82, line: 185, type: !2509, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!89, !40}
!2511 = !{!2512, !2507}
!2512 = !DILocalVariable(name: "style", arg: 1, scope: !2508, file: !82, line: 185, type: !40)
!2513 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2514 = !DILocation(line: 187, column: 26, scope: !2508, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 948, column: 36, scope: !2499)
!2516 = !DILocation(line: 946, column: 23, scope: !2499)
!2517 = !DILocation(line: 946, column: 45, scope: !2499)
!2518 = !DILocation(line: 946, column: 60, scope: !2499)
!2519 = !DILocation(line: 948, column: 3, scope: !2499)
!2520 = !DILocation(line: 948, column: 32, scope: !2499)
!2521 = !DILocation(line: 185, column: 48, scope: !2508, inlinedAt: !2515)
!2522 = !DILocation(line: 187, column: 3, scope: !2508, inlinedAt: !2515)
!2523 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2524 = !DILocation(line: 188, column: 13, scope: !2525, inlinedAt: !2515)
!2525 = distinct !DILexicalBlock(scope: !2508, file: !82, line: 188, column: 7)
!2526 = !DILocation(line: 188, column: 7, scope: !2508, inlinedAt: !2515)
!2527 = !DILocation(line: 189, column: 5, scope: !2525, inlinedAt: !2515)
!2528 = !{!2529}
!2529 = distinct !{!2529, !2530, !"quoting_options_from_style: argument 0"}
!2530 = distinct !{!2530, !"quoting_options_from_style"}
!2531 = !DILocation(line: 191, column: 10, scope: !2508, inlinedAt: !2515)
!2532 = !DILocation(line: 192, column: 1, scope: !2508, inlinedAt: !2515)
!2533 = !DILocation(line: 949, column: 10, scope: !2499)
!2534 = !DILocation(line: 950, column: 1, scope: !2499)
!2535 = !DILocation(line: 949, column: 3, scope: !2499)
!2536 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !82, file: !82, line: 953, type: !2537, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!32, !25, !40, !6, !76}
!2539 = !{!2540, !2541, !2542, !2543, !2544}
!2540 = !DILocalVariable(name: "n", arg: 1, scope: !2536, file: !82, line: 953, type: !25)
!2541 = !DILocalVariable(name: "s", arg: 2, scope: !2536, file: !82, line: 953, type: !40)
!2542 = !DILocalVariable(name: "arg", arg: 3, scope: !2536, file: !82, line: 954, type: !6)
!2543 = !DILocalVariable(name: "argsize", arg: 4, scope: !2536, file: !82, line: 954, type: !76)
!2544 = !DILocalVariable(name: "o", scope: !2536, file: !82, line: 956, type: !1068)
!2545 = !DILocation(line: 187, column: 26, scope: !2508, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 956, column: 36, scope: !2536)
!2547 = !DILocation(line: 953, column: 27, scope: !2536)
!2548 = !DILocation(line: 953, column: 49, scope: !2536)
!2549 = !DILocation(line: 954, column: 35, scope: !2536)
!2550 = !DILocation(line: 954, column: 47, scope: !2536)
!2551 = !DILocation(line: 956, column: 3, scope: !2536)
!2552 = !DILocation(line: 956, column: 32, scope: !2536)
!2553 = !DILocation(line: 185, column: 48, scope: !2508, inlinedAt: !2546)
!2554 = !DILocation(line: 187, column: 3, scope: !2508, inlinedAt: !2546)
!2555 = !DILocation(line: 188, column: 13, scope: !2525, inlinedAt: !2546)
!2556 = !DILocation(line: 188, column: 7, scope: !2508, inlinedAt: !2546)
!2557 = !DILocation(line: 189, column: 5, scope: !2525, inlinedAt: !2546)
!2558 = !{!2559}
!2559 = distinct !{!2559, !2560, !"quoting_options_from_style: argument 0"}
!2560 = distinct !{!2560, !"quoting_options_from_style"}
!2561 = !DILocation(line: 191, column: 10, scope: !2508, inlinedAt: !2546)
!2562 = !DILocation(line: 192, column: 1, scope: !2508, inlinedAt: !2546)
!2563 = !DILocation(line: 957, column: 10, scope: !2536)
!2564 = !DILocation(line: 958, column: 1, scope: !2536)
!2565 = !DILocation(line: 957, column: 3, scope: !2536)
!2566 = distinct !DISubprogram(name: "quotearg_style", scope: !82, file: !82, line: 961, type: !2567, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!32, !40, !6}
!2569 = !{!2570, !2571}
!2570 = !DILocalVariable(name: "s", arg: 1, scope: !2566, file: !82, line: 961, type: !40)
!2571 = !DILocalVariable(name: "arg", arg: 2, scope: !2566, file: !82, line: 961, type: !6)
!2572 = !DILocation(line: 187, column: 26, scope: !2508, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 948, column: 36, scope: !2499, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 963, column: 10, scope: !2566)
!2575 = !DILocation(line: 961, column: 36, scope: !2566)
!2576 = !DILocation(line: 961, column: 51, scope: !2566)
!2577 = !DILocation(line: 946, column: 23, scope: !2499, inlinedAt: !2574)
!2578 = !DILocation(line: 946, column: 45, scope: !2499, inlinedAt: !2574)
!2579 = !DILocation(line: 946, column: 60, scope: !2499, inlinedAt: !2574)
!2580 = !DILocation(line: 948, column: 3, scope: !2499, inlinedAt: !2574)
!2581 = !DILocation(line: 948, column: 32, scope: !2499, inlinedAt: !2574)
!2582 = !DILocation(line: 185, column: 48, scope: !2508, inlinedAt: !2573)
!2583 = !DILocation(line: 187, column: 3, scope: !2508, inlinedAt: !2573)
!2584 = !DILocation(line: 188, column: 13, scope: !2525, inlinedAt: !2573)
!2585 = !DILocation(line: 188, column: 7, scope: !2508, inlinedAt: !2573)
!2586 = !DILocation(line: 189, column: 5, scope: !2525, inlinedAt: !2573)
!2587 = !{!2588}
!2588 = distinct !{!2588, !2589, !"quoting_options_from_style: argument 0"}
!2589 = distinct !{!2589, !"quoting_options_from_style"}
!2590 = !DILocation(line: 191, column: 10, scope: !2508, inlinedAt: !2573)
!2591 = !DILocation(line: 192, column: 1, scope: !2508, inlinedAt: !2573)
!2592 = !DILocation(line: 949, column: 10, scope: !2499, inlinedAt: !2574)
!2593 = !DILocation(line: 950, column: 1, scope: !2499, inlinedAt: !2574)
!2594 = !DILocation(line: 963, column: 3, scope: !2566)
!2595 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !82, file: !82, line: 967, type: !2596, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!32, !40, !6, !76}
!2598 = !{!2599, !2600, !2601}
!2599 = !DILocalVariable(name: "s", arg: 1, scope: !2595, file: !82, line: 967, type: !40)
!2600 = !DILocalVariable(name: "arg", arg: 2, scope: !2595, file: !82, line: 967, type: !6)
!2601 = !DILocalVariable(name: "argsize", arg: 3, scope: !2595, file: !82, line: 967, type: !76)
!2602 = !DILocation(line: 187, column: 26, scope: !2508, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 956, column: 36, scope: !2536, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 969, column: 10, scope: !2595)
!2605 = !DILocation(line: 967, column: 40, scope: !2595)
!2606 = !DILocation(line: 967, column: 55, scope: !2595)
!2607 = !DILocation(line: 967, column: 67, scope: !2595)
!2608 = !DILocation(line: 953, column: 27, scope: !2536, inlinedAt: !2604)
!2609 = !DILocation(line: 953, column: 49, scope: !2536, inlinedAt: !2604)
!2610 = !DILocation(line: 954, column: 35, scope: !2536, inlinedAt: !2604)
!2611 = !DILocation(line: 954, column: 47, scope: !2536, inlinedAt: !2604)
!2612 = !DILocation(line: 956, column: 3, scope: !2536, inlinedAt: !2604)
!2613 = !DILocation(line: 956, column: 32, scope: !2536, inlinedAt: !2604)
!2614 = !DILocation(line: 185, column: 48, scope: !2508, inlinedAt: !2603)
!2615 = !DILocation(line: 187, column: 3, scope: !2508, inlinedAt: !2603)
!2616 = !DILocation(line: 188, column: 13, scope: !2525, inlinedAt: !2603)
!2617 = !DILocation(line: 188, column: 7, scope: !2508, inlinedAt: !2603)
!2618 = !DILocation(line: 189, column: 5, scope: !2525, inlinedAt: !2603)
!2619 = !{!2620}
!2620 = distinct !{!2620, !2621, !"quoting_options_from_style: argument 0"}
!2621 = distinct !{!2621, !"quoting_options_from_style"}
!2622 = !DILocation(line: 191, column: 10, scope: !2508, inlinedAt: !2603)
!2623 = !DILocation(line: 192, column: 1, scope: !2508, inlinedAt: !2603)
!2624 = !DILocation(line: 957, column: 10, scope: !2536, inlinedAt: !2604)
!2625 = !DILocation(line: 958, column: 1, scope: !2536, inlinedAt: !2604)
!2626 = !DILocation(line: 969, column: 3, scope: !2595)
!2627 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !82, file: !82, line: 973, type: !2628, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!32, !6, !76, !8}
!2630 = !{!2631, !2632, !2633, !2634}
!2631 = !DILocalVariable(name: "arg", arg: 1, scope: !2627, file: !82, line: 973, type: !6)
!2632 = !DILocalVariable(name: "argsize", arg: 2, scope: !2627, file: !82, line: 973, type: !76)
!2633 = !DILocalVariable(name: "ch", arg: 3, scope: !2627, file: !82, line: 973, type: !8)
!2634 = !DILocalVariable(name: "options", scope: !2627, file: !82, line: 975, type: !89)
!2635 = !DILocation(line: 973, column: 32, scope: !2627)
!2636 = !DILocation(line: 973, column: 44, scope: !2627)
!2637 = !DILocation(line: 973, column: 58, scope: !2627)
!2638 = !DILocation(line: 975, column: 3, scope: !2627)
!2639 = !DILocation(line: 976, column: 13, scope: !2627)
!2640 = !{i64 0, i64 4, !693, i64 4, i64 4, !982, i64 8, i64 32, !693, i64 40, i64 8, !583, i64 48, i64 8, !583}
!2641 = !DILocation(line: 975, column: 26, scope: !2627)
!2642 = !DILocation(line: 144, column: 43, scope: !1091, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 977, column: 3, scope: !2627)
!2644 = !DILocation(line: 144, column: 51, scope: !1091, inlinedAt: !2643)
!2645 = !DILocation(line: 144, column: 58, scope: !1091, inlinedAt: !2643)
!2646 = !DILocation(line: 146, column: 17, scope: !1091, inlinedAt: !2643)
!2647 = !DILocation(line: 148, column: 62, scope: !1109, inlinedAt: !2643)
!2648 = !DILocation(line: 148, column: 57, scope: !1109, inlinedAt: !2643)
!2649 = !DILocation(line: 147, column: 17, scope: !1091, inlinedAt: !2643)
!2650 = !DILocation(line: 149, column: 18, scope: !1091, inlinedAt: !2643)
!2651 = !DILocation(line: 149, column: 15, scope: !1091, inlinedAt: !2643)
!2652 = !DILocation(line: 149, column: 7, scope: !1091, inlinedAt: !2643)
!2653 = !DILocation(line: 150, column: 12, scope: !1091, inlinedAt: !2643)
!2654 = !DILocation(line: 150, column: 15, scope: !1091, inlinedAt: !2643)
!2655 = !DILocation(line: 150, column: 25, scope: !1091, inlinedAt: !2643)
!2656 = !DILocation(line: 150, column: 7, scope: !1091, inlinedAt: !2643)
!2657 = !DILocation(line: 151, column: 18, scope: !1091, inlinedAt: !2643)
!2658 = !DILocation(line: 151, column: 23, scope: !1091, inlinedAt: !2643)
!2659 = !DILocation(line: 151, column: 6, scope: !1091, inlinedAt: !2643)
!2660 = !DILocation(line: 978, column: 10, scope: !2627)
!2661 = !DILocation(line: 979, column: 1, scope: !2627)
!2662 = !DILocation(line: 978, column: 3, scope: !2627)
!2663 = distinct !DISubprogram(name: "quotearg_char", scope: !82, file: !82, line: 982, type: !2664, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!32, !6, !8}
!2666 = !{!2667, !2668}
!2667 = !DILocalVariable(name: "arg", arg: 1, scope: !2663, file: !82, line: 982, type: !6)
!2668 = !DILocalVariable(name: "ch", arg: 2, scope: !2663, file: !82, line: 982, type: !8)
!2669 = !DILocation(line: 982, column: 28, scope: !2663)
!2670 = !DILocation(line: 982, column: 38, scope: !2663)
!2671 = !DILocation(line: 973, column: 32, scope: !2627, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 984, column: 10, scope: !2663)
!2673 = !DILocation(line: 973, column: 44, scope: !2627, inlinedAt: !2672)
!2674 = !DILocation(line: 973, column: 58, scope: !2627, inlinedAt: !2672)
!2675 = !DILocation(line: 975, column: 3, scope: !2627, inlinedAt: !2672)
!2676 = !DILocation(line: 976, column: 13, scope: !2627, inlinedAt: !2672)
!2677 = !DILocation(line: 975, column: 26, scope: !2627, inlinedAt: !2672)
!2678 = !DILocation(line: 144, column: 43, scope: !1091, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 977, column: 3, scope: !2627, inlinedAt: !2672)
!2680 = !DILocation(line: 144, column: 51, scope: !1091, inlinedAt: !2679)
!2681 = !DILocation(line: 144, column: 58, scope: !1091, inlinedAt: !2679)
!2682 = !DILocation(line: 146, column: 17, scope: !1091, inlinedAt: !2679)
!2683 = !DILocation(line: 148, column: 62, scope: !1109, inlinedAt: !2679)
!2684 = !DILocation(line: 148, column: 57, scope: !1109, inlinedAt: !2679)
!2685 = !DILocation(line: 147, column: 17, scope: !1091, inlinedAt: !2679)
!2686 = !DILocation(line: 149, column: 18, scope: !1091, inlinedAt: !2679)
!2687 = !DILocation(line: 149, column: 15, scope: !1091, inlinedAt: !2679)
!2688 = !DILocation(line: 149, column: 7, scope: !1091, inlinedAt: !2679)
!2689 = !DILocation(line: 150, column: 12, scope: !1091, inlinedAt: !2679)
!2690 = !DILocation(line: 150, column: 15, scope: !1091, inlinedAt: !2679)
!2691 = !DILocation(line: 150, column: 25, scope: !1091, inlinedAt: !2679)
!2692 = !DILocation(line: 150, column: 7, scope: !1091, inlinedAt: !2679)
!2693 = !DILocation(line: 151, column: 18, scope: !1091, inlinedAt: !2679)
!2694 = !DILocation(line: 151, column: 23, scope: !1091, inlinedAt: !2679)
!2695 = !DILocation(line: 151, column: 6, scope: !1091, inlinedAt: !2679)
!2696 = !DILocation(line: 978, column: 10, scope: !2627, inlinedAt: !2672)
!2697 = !DILocation(line: 979, column: 1, scope: !2627, inlinedAt: !2672)
!2698 = !DILocation(line: 984, column: 3, scope: !2663)
!2699 = distinct !DISubprogram(name: "quotearg_colon", scope: !82, file: !82, line: 988, type: !2475, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2700)
!2700 = !{!2701}
!2701 = !DILocalVariable(name: "arg", arg: 1, scope: !2699, file: !82, line: 988, type: !6)
!2702 = !DILocation(line: 988, column: 29, scope: !2699)
!2703 = !DILocation(line: 982, column: 28, scope: !2663, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 990, column: 10, scope: !2699)
!2705 = !DILocation(line: 982, column: 38, scope: !2663, inlinedAt: !2704)
!2706 = !DILocation(line: 973, column: 32, scope: !2627, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 984, column: 10, scope: !2663, inlinedAt: !2704)
!2708 = !DILocation(line: 973, column: 44, scope: !2627, inlinedAt: !2707)
!2709 = !DILocation(line: 973, column: 58, scope: !2627, inlinedAt: !2707)
!2710 = !DILocation(line: 975, column: 3, scope: !2627, inlinedAt: !2707)
!2711 = !DILocation(line: 976, column: 13, scope: !2627, inlinedAt: !2707)
!2712 = !DILocation(line: 975, column: 26, scope: !2627, inlinedAt: !2707)
!2713 = !DILocation(line: 144, column: 43, scope: !1091, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 977, column: 3, scope: !2627, inlinedAt: !2707)
!2715 = !DILocation(line: 144, column: 51, scope: !1091, inlinedAt: !2714)
!2716 = !DILocation(line: 144, column: 58, scope: !1091, inlinedAt: !2714)
!2717 = !DILocation(line: 146, column: 17, scope: !1091, inlinedAt: !2714)
!2718 = !DILocation(line: 148, column: 57, scope: !1109, inlinedAt: !2714)
!2719 = !DILocation(line: 147, column: 17, scope: !1091, inlinedAt: !2714)
!2720 = !DILocation(line: 149, column: 7, scope: !1091, inlinedAt: !2714)
!2721 = !DILocation(line: 150, column: 12, scope: !1091, inlinedAt: !2714)
!2722 = !DILocation(line: 151, column: 6, scope: !1091, inlinedAt: !2714)
!2723 = !DILocation(line: 978, column: 10, scope: !2627, inlinedAt: !2707)
!2724 = !DILocation(line: 979, column: 1, scope: !2627, inlinedAt: !2707)
!2725 = !DILocation(line: 990, column: 3, scope: !2699)
!2726 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !82, file: !82, line: 994, type: !2486, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2727)
!2727 = !{!2728, !2729}
!2728 = !DILocalVariable(name: "arg", arg: 1, scope: !2726, file: !82, line: 994, type: !6)
!2729 = !DILocalVariable(name: "argsize", arg: 2, scope: !2726, file: !82, line: 994, type: !76)
!2730 = !DILocation(line: 994, column: 33, scope: !2726)
!2731 = !DILocation(line: 994, column: 45, scope: !2726)
!2732 = !DILocation(line: 973, column: 32, scope: !2627, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 996, column: 10, scope: !2726)
!2734 = !DILocation(line: 973, column: 44, scope: !2627, inlinedAt: !2733)
!2735 = !DILocation(line: 973, column: 58, scope: !2627, inlinedAt: !2733)
!2736 = !DILocation(line: 975, column: 3, scope: !2627, inlinedAt: !2733)
!2737 = !DILocation(line: 976, column: 13, scope: !2627, inlinedAt: !2733)
!2738 = !DILocation(line: 975, column: 26, scope: !2627, inlinedAt: !2733)
!2739 = !DILocation(line: 144, column: 43, scope: !1091, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 977, column: 3, scope: !2627, inlinedAt: !2733)
!2741 = !DILocation(line: 144, column: 51, scope: !1091, inlinedAt: !2740)
!2742 = !DILocation(line: 144, column: 58, scope: !1091, inlinedAt: !2740)
!2743 = !DILocation(line: 146, column: 17, scope: !1091, inlinedAt: !2740)
!2744 = !DILocation(line: 148, column: 57, scope: !1109, inlinedAt: !2740)
!2745 = !DILocation(line: 147, column: 17, scope: !1091, inlinedAt: !2740)
!2746 = !DILocation(line: 149, column: 7, scope: !1091, inlinedAt: !2740)
!2747 = !DILocation(line: 150, column: 12, scope: !1091, inlinedAt: !2740)
!2748 = !DILocation(line: 151, column: 6, scope: !1091, inlinedAt: !2740)
!2749 = !DILocation(line: 978, column: 10, scope: !2627, inlinedAt: !2733)
!2750 = !DILocation(line: 979, column: 1, scope: !2627, inlinedAt: !2733)
!2751 = !DILocation(line: 996, column: 3, scope: !2726)
!2752 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !82, file: !82, line: 1000, type: !2500, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2753)
!2753 = !{!2754, !2755, !2756, !2757}
!2754 = !DILocalVariable(name: "n", arg: 1, scope: !2752, file: !82, line: 1000, type: !25)
!2755 = !DILocalVariable(name: "s", arg: 2, scope: !2752, file: !82, line: 1000, type: !40)
!2756 = !DILocalVariable(name: "arg", arg: 3, scope: !2752, file: !82, line: 1000, type: !6)
!2757 = !DILocalVariable(name: "options", scope: !2752, file: !82, line: 1002, type: !89)
!2758 = !DILocation(line: 187, column: 26, scope: !2508, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 1003, column: 13, scope: !2752)
!2760 = !DILocation(line: 1000, column: 29, scope: !2752)
!2761 = !DILocation(line: 1000, column: 51, scope: !2752)
!2762 = !DILocation(line: 1000, column: 66, scope: !2752)
!2763 = !DILocation(line: 1002, column: 3, scope: !2752)
!2764 = !DILocation(line: 185, column: 48, scope: !2508, inlinedAt: !2759)
!2765 = !DILocation(line: 187, column: 3, scope: !2508, inlinedAt: !2759)
!2766 = !DILocation(line: 188, column: 13, scope: !2525, inlinedAt: !2759)
!2767 = !DILocation(line: 188, column: 7, scope: !2508, inlinedAt: !2759)
!2768 = !DILocation(line: 189, column: 5, scope: !2525, inlinedAt: !2759)
!2769 = !{!2770}
!2770 = distinct !{!2770, !2771, !"quoting_options_from_style: argument 0"}
!2771 = distinct !{!2771, !"quoting_options_from_style"}
!2772 = !DILocation(line: 191, column: 10, scope: !2508, inlinedAt: !2759)
!2773 = !DILocation(line: 192, column: 1, scope: !2508, inlinedAt: !2759)
!2774 = !DILocation(line: 1003, column: 13, scope: !2752)
!2775 = !DILocation(line: 1002, column: 26, scope: !2752)
!2776 = !DILocation(line: 144, column: 43, scope: !1091, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 1004, column: 3, scope: !2752)
!2778 = !DILocation(line: 144, column: 51, scope: !1091, inlinedAt: !2777)
!2779 = !DILocation(line: 144, column: 58, scope: !1091, inlinedAt: !2777)
!2780 = !DILocation(line: 146, column: 17, scope: !1091, inlinedAt: !2777)
!2781 = !DILocation(line: 148, column: 57, scope: !1109, inlinedAt: !2777)
!2782 = !DILocation(line: 147, column: 17, scope: !1091, inlinedAt: !2777)
!2783 = !DILocation(line: 149, column: 7, scope: !1091, inlinedAt: !2777)
!2784 = !DILocation(line: 150, column: 12, scope: !1091, inlinedAt: !2777)
!2785 = !DILocation(line: 151, column: 6, scope: !1091, inlinedAt: !2777)
!2786 = !DILocation(line: 1005, column: 10, scope: !2752)
!2787 = !DILocation(line: 1006, column: 1, scope: !2752)
!2788 = !DILocation(line: 1005, column: 3, scope: !2752)
!2789 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !82, file: !82, line: 1009, type: !2790, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!32, !25, !6, !6, !6}
!2792 = !{!2793, !2794, !2795, !2796}
!2793 = !DILocalVariable(name: "n", arg: 1, scope: !2789, file: !82, line: 1009, type: !25)
!2794 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2789, file: !82, line: 1009, type: !6)
!2795 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2789, file: !82, line: 1010, type: !6)
!2796 = !DILocalVariable(name: "arg", arg: 4, scope: !2789, file: !82, line: 1010, type: !6)
!2797 = !DILocation(line: 1009, column: 24, scope: !2789)
!2798 = !DILocation(line: 1009, column: 39, scope: !2789)
!2799 = !DILocation(line: 1010, column: 32, scope: !2789)
!2800 = !DILocation(line: 1010, column: 57, scope: !2789)
!2801 = !DILocalVariable(name: "n", arg: 1, scope: !2802, file: !82, line: 1017, type: !25)
!2802 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 1017, type: !2803, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!32, !25, !6, !6, !6, !76}
!2805 = !{!2801, !2806, !2807, !2808, !2809, !2810}
!2806 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2802, file: !82, line: 1017, type: !6)
!2807 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2802, file: !82, line: 1018, type: !6)
!2808 = !DILocalVariable(name: "arg", arg: 4, scope: !2802, file: !82, line: 1019, type: !6)
!2809 = !DILocalVariable(name: "argsize", arg: 5, scope: !2802, file: !82, line: 1019, type: !76)
!2810 = !DILocalVariable(name: "o", scope: !2802, file: !82, line: 1021, type: !89)
!2811 = !DILocation(line: 1017, column: 28, scope: !2802, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 1012, column: 10, scope: !2789)
!2813 = !DILocation(line: 1017, column: 43, scope: !2802, inlinedAt: !2812)
!2814 = !DILocation(line: 1018, column: 36, scope: !2802, inlinedAt: !2812)
!2815 = !DILocation(line: 1019, column: 36, scope: !2802, inlinedAt: !2812)
!2816 = !DILocation(line: 1019, column: 48, scope: !2802, inlinedAt: !2812)
!2817 = !DILocation(line: 1021, column: 3, scope: !2802, inlinedAt: !2812)
!2818 = !DILocation(line: 1021, column: 30, scope: !2802, inlinedAt: !2812)
!2819 = !DILocation(line: 1021, column: 26, scope: !2802, inlinedAt: !2812)
!2820 = !DILocation(line: 171, column: 45, scope: !1141, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 1022, column: 3, scope: !2802, inlinedAt: !2812)
!2822 = !DILocation(line: 172, column: 33, scope: !1141, inlinedAt: !2821)
!2823 = !DILocation(line: 172, column: 57, scope: !1141, inlinedAt: !2821)
!2824 = !DILocation(line: 176, column: 6, scope: !1141, inlinedAt: !2821)
!2825 = !DILocation(line: 176, column: 12, scope: !1141, inlinedAt: !2821)
!2826 = !DILocation(line: 177, column: 8, scope: !1157, inlinedAt: !2821)
!2827 = !DILocation(line: 177, column: 23, scope: !1159, inlinedAt: !2821)
!2828 = !DILocation(line: 177, column: 19, scope: !1157, inlinedAt: !2821)
!2829 = !DILocation(line: 178, column: 5, scope: !1157, inlinedAt: !2821)
!2830 = !DILocation(line: 179, column: 6, scope: !1141, inlinedAt: !2821)
!2831 = !DILocation(line: 179, column: 17, scope: !1141, inlinedAt: !2821)
!2832 = !DILocation(line: 180, column: 6, scope: !1141, inlinedAt: !2821)
!2833 = !DILocation(line: 180, column: 18, scope: !1141, inlinedAt: !2821)
!2834 = !DILocation(line: 1023, column: 10, scope: !2802, inlinedAt: !2812)
!2835 = !DILocation(line: 1024, column: 1, scope: !2802, inlinedAt: !2812)
!2836 = !DILocation(line: 1012, column: 3, scope: !2789)
!2837 = !DILocation(line: 1017, column: 28, scope: !2802)
!2838 = !DILocation(line: 1017, column: 43, scope: !2802)
!2839 = !DILocation(line: 1018, column: 36, scope: !2802)
!2840 = !DILocation(line: 1019, column: 36, scope: !2802)
!2841 = !DILocation(line: 1019, column: 48, scope: !2802)
!2842 = !DILocation(line: 1021, column: 3, scope: !2802)
!2843 = !DILocation(line: 1021, column: 30, scope: !2802)
!2844 = !DILocation(line: 1021, column: 26, scope: !2802)
!2845 = !DILocation(line: 171, column: 45, scope: !1141, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 1022, column: 3, scope: !2802)
!2847 = !DILocation(line: 172, column: 33, scope: !1141, inlinedAt: !2846)
!2848 = !DILocation(line: 172, column: 57, scope: !1141, inlinedAt: !2846)
!2849 = !DILocation(line: 176, column: 6, scope: !1141, inlinedAt: !2846)
!2850 = !DILocation(line: 176, column: 12, scope: !1141, inlinedAt: !2846)
!2851 = !DILocation(line: 177, column: 8, scope: !1157, inlinedAt: !2846)
!2852 = !DILocation(line: 177, column: 23, scope: !1159, inlinedAt: !2846)
!2853 = !DILocation(line: 177, column: 19, scope: !1157, inlinedAt: !2846)
!2854 = !DILocation(line: 178, column: 5, scope: !1157, inlinedAt: !2846)
!2855 = !DILocation(line: 179, column: 6, scope: !1141, inlinedAt: !2846)
!2856 = !DILocation(line: 179, column: 17, scope: !1141, inlinedAt: !2846)
!2857 = !DILocation(line: 180, column: 6, scope: !1141, inlinedAt: !2846)
!2858 = !DILocation(line: 180, column: 18, scope: !1141, inlinedAt: !2846)
!2859 = !DILocation(line: 1023, column: 10, scope: !2802)
!2860 = !DILocation(line: 1024, column: 1, scope: !2802)
!2861 = !DILocation(line: 1023, column: 3, scope: !2802)
!2862 = distinct !DISubprogram(name: "quotearg_custom", scope: !82, file: !82, line: 1027, type: !2863, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!32, !6, !6, !6}
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2862, file: !82, line: 1027, type: !6)
!2867 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2862, file: !82, line: 1027, type: !6)
!2868 = !DILocalVariable(name: "arg", arg: 3, scope: !2862, file: !82, line: 1028, type: !6)
!2869 = !DILocation(line: 1027, column: 30, scope: !2862)
!2870 = !DILocation(line: 1027, column: 54, scope: !2862)
!2871 = !DILocation(line: 1028, column: 30, scope: !2862)
!2872 = !DILocation(line: 1009, column: 24, scope: !2789, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 1030, column: 10, scope: !2862)
!2874 = !DILocation(line: 1009, column: 39, scope: !2789, inlinedAt: !2873)
!2875 = !DILocation(line: 1010, column: 32, scope: !2789, inlinedAt: !2873)
!2876 = !DILocation(line: 1010, column: 57, scope: !2789, inlinedAt: !2873)
!2877 = !DILocation(line: 1017, column: 28, scope: !2802, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 1012, column: 10, scope: !2789, inlinedAt: !2873)
!2879 = !DILocation(line: 1017, column: 43, scope: !2802, inlinedAt: !2878)
!2880 = !DILocation(line: 1018, column: 36, scope: !2802, inlinedAt: !2878)
!2881 = !DILocation(line: 1019, column: 36, scope: !2802, inlinedAt: !2878)
!2882 = !DILocation(line: 1019, column: 48, scope: !2802, inlinedAt: !2878)
!2883 = !DILocation(line: 1021, column: 3, scope: !2802, inlinedAt: !2878)
!2884 = !DILocation(line: 1021, column: 30, scope: !2802, inlinedAt: !2878)
!2885 = !DILocation(line: 1021, column: 26, scope: !2802, inlinedAt: !2878)
!2886 = !DILocation(line: 171, column: 45, scope: !1141, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 1022, column: 3, scope: !2802, inlinedAt: !2878)
!2888 = !DILocation(line: 172, column: 33, scope: !1141, inlinedAt: !2887)
!2889 = !DILocation(line: 172, column: 57, scope: !1141, inlinedAt: !2887)
!2890 = !DILocation(line: 176, column: 6, scope: !1141, inlinedAt: !2887)
!2891 = !DILocation(line: 176, column: 12, scope: !1141, inlinedAt: !2887)
!2892 = !DILocation(line: 177, column: 8, scope: !1157, inlinedAt: !2887)
!2893 = !DILocation(line: 177, column: 23, scope: !1159, inlinedAt: !2887)
!2894 = !DILocation(line: 177, column: 19, scope: !1157, inlinedAt: !2887)
!2895 = !DILocation(line: 178, column: 5, scope: !1157, inlinedAt: !2887)
!2896 = !DILocation(line: 179, column: 6, scope: !1141, inlinedAt: !2887)
!2897 = !DILocation(line: 179, column: 17, scope: !1141, inlinedAt: !2887)
!2898 = !DILocation(line: 180, column: 6, scope: !1141, inlinedAt: !2887)
!2899 = !DILocation(line: 180, column: 18, scope: !1141, inlinedAt: !2887)
!2900 = !DILocation(line: 1023, column: 10, scope: !2802, inlinedAt: !2878)
!2901 = !DILocation(line: 1024, column: 1, scope: !2802, inlinedAt: !2878)
!2902 = !DILocation(line: 1030, column: 3, scope: !2862)
!2903 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !82, file: !82, line: 1034, type: !2904, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!32, !6, !6, !6, !76}
!2906 = !{!2907, !2908, !2909, !2910}
!2907 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2903, file: !82, line: 1034, type: !6)
!2908 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2903, file: !82, line: 1034, type: !6)
!2909 = !DILocalVariable(name: "arg", arg: 3, scope: !2903, file: !82, line: 1035, type: !6)
!2910 = !DILocalVariable(name: "argsize", arg: 4, scope: !2903, file: !82, line: 1035, type: !76)
!2911 = !DILocation(line: 1034, column: 34, scope: !2903)
!2912 = !DILocation(line: 1034, column: 58, scope: !2903)
!2913 = !DILocation(line: 1035, column: 34, scope: !2903)
!2914 = !DILocation(line: 1035, column: 46, scope: !2903)
!2915 = !DILocation(line: 1017, column: 28, scope: !2802, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 1037, column: 10, scope: !2903)
!2917 = !DILocation(line: 1017, column: 43, scope: !2802, inlinedAt: !2916)
!2918 = !DILocation(line: 1018, column: 36, scope: !2802, inlinedAt: !2916)
!2919 = !DILocation(line: 1019, column: 36, scope: !2802, inlinedAt: !2916)
!2920 = !DILocation(line: 1019, column: 48, scope: !2802, inlinedAt: !2916)
!2921 = !DILocation(line: 1021, column: 3, scope: !2802, inlinedAt: !2916)
!2922 = !DILocation(line: 1021, column: 30, scope: !2802, inlinedAt: !2916)
!2923 = !DILocation(line: 1021, column: 26, scope: !2802, inlinedAt: !2916)
!2924 = !DILocation(line: 171, column: 45, scope: !1141, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 1022, column: 3, scope: !2802, inlinedAt: !2916)
!2926 = !DILocation(line: 172, column: 33, scope: !1141, inlinedAt: !2925)
!2927 = !DILocation(line: 172, column: 57, scope: !1141, inlinedAt: !2925)
!2928 = !DILocation(line: 176, column: 6, scope: !1141, inlinedAt: !2925)
!2929 = !DILocation(line: 176, column: 12, scope: !1141, inlinedAt: !2925)
!2930 = !DILocation(line: 177, column: 8, scope: !1157, inlinedAt: !2925)
!2931 = !DILocation(line: 177, column: 23, scope: !1159, inlinedAt: !2925)
!2932 = !DILocation(line: 177, column: 19, scope: !1157, inlinedAt: !2925)
!2933 = !DILocation(line: 178, column: 5, scope: !1157, inlinedAt: !2925)
!2934 = !DILocation(line: 179, column: 6, scope: !1141, inlinedAt: !2925)
!2935 = !DILocation(line: 179, column: 17, scope: !1141, inlinedAt: !2925)
!2936 = !DILocation(line: 180, column: 6, scope: !1141, inlinedAt: !2925)
!2937 = !DILocation(line: 180, column: 18, scope: !1141, inlinedAt: !2925)
!2938 = !DILocation(line: 1023, column: 10, scope: !2802, inlinedAt: !2916)
!2939 = !DILocation(line: 1024, column: 1, scope: !2802, inlinedAt: !2916)
!2940 = !DILocation(line: 1037, column: 3, scope: !2903)
!2941 = distinct !DISubprogram(name: "quote_n_mem", scope: !82, file: !82, line: 1052, type: !2942, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!6, !25, !6, !76}
!2944 = !{!2945, !2946, !2947}
!2945 = !DILocalVariable(name: "n", arg: 1, scope: !2941, file: !82, line: 1052, type: !25)
!2946 = !DILocalVariable(name: "arg", arg: 2, scope: !2941, file: !82, line: 1052, type: !6)
!2947 = !DILocalVariable(name: "argsize", arg: 3, scope: !2941, file: !82, line: 1052, type: !76)
!2948 = !DILocation(line: 1052, column: 18, scope: !2941)
!2949 = !DILocation(line: 1052, column: 33, scope: !2941)
!2950 = !DILocation(line: 1052, column: 45, scope: !2941)
!2951 = !DILocation(line: 1054, column: 10, scope: !2941)
!2952 = !DILocation(line: 1054, column: 3, scope: !2941)
!2953 = distinct !DISubprogram(name: "quote_mem", scope: !82, file: !82, line: 1058, type: !2954, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!6, !6, !76}
!2956 = !{!2957, !2958}
!2957 = !DILocalVariable(name: "arg", arg: 1, scope: !2953, file: !82, line: 1058, type: !6)
!2958 = !DILocalVariable(name: "argsize", arg: 2, scope: !2953, file: !82, line: 1058, type: !76)
!2959 = !DILocation(line: 1058, column: 24, scope: !2953)
!2960 = !DILocation(line: 1058, column: 36, scope: !2953)
!2961 = !DILocation(line: 1052, column: 18, scope: !2941, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 1060, column: 10, scope: !2953)
!2963 = !DILocation(line: 1052, column: 33, scope: !2941, inlinedAt: !2962)
!2964 = !DILocation(line: 1052, column: 45, scope: !2941, inlinedAt: !2962)
!2965 = !DILocation(line: 1054, column: 10, scope: !2941, inlinedAt: !2962)
!2966 = !DILocation(line: 1060, column: 3, scope: !2953)
!2967 = distinct !DISubprogram(name: "quote_n", scope: !82, file: !82, line: 1064, type: !2968, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!6, !25, !6}
!2970 = !{!2971, !2972}
!2971 = !DILocalVariable(name: "n", arg: 1, scope: !2967, file: !82, line: 1064, type: !25)
!2972 = !DILocalVariable(name: "arg", arg: 2, scope: !2967, file: !82, line: 1064, type: !6)
!2973 = !DILocation(line: 1064, column: 14, scope: !2967)
!2974 = !DILocation(line: 1064, column: 29, scope: !2967)
!2975 = !DILocation(line: 1052, column: 18, scope: !2941, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 1066, column: 10, scope: !2967)
!2977 = !DILocation(line: 1052, column: 33, scope: !2941, inlinedAt: !2976)
!2978 = !DILocation(line: 1052, column: 45, scope: !2941, inlinedAt: !2976)
!2979 = !DILocation(line: 1054, column: 10, scope: !2941, inlinedAt: !2976)
!2980 = !DILocation(line: 1066, column: 3, scope: !2967)
!2981 = distinct !DISubprogram(name: "quote", scope: !82, file: !82, line: 1070, type: !2982, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!6, !6}
!2984 = !{!2985}
!2985 = !DILocalVariable(name: "arg", arg: 1, scope: !2981, file: !82, line: 1070, type: !6)
!2986 = !DILocation(line: 1070, column: 20, scope: !2981)
!2987 = !DILocation(line: 1064, column: 14, scope: !2967, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 1072, column: 10, scope: !2981)
!2989 = !DILocation(line: 1064, column: 29, scope: !2967, inlinedAt: !2988)
!2990 = !DILocation(line: 1052, column: 18, scope: !2941, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 1066, column: 10, scope: !2967, inlinedAt: !2988)
!2992 = !DILocation(line: 1052, column: 33, scope: !2941, inlinedAt: !2991)
!2993 = !DILocation(line: 1052, column: 45, scope: !2941, inlinedAt: !2991)
!2994 = !DILocation(line: 1054, column: 10, scope: !2941, inlinedAt: !2991)
!2995 = !DILocation(line: 1072, column: 3, scope: !2981)
!2996 = distinct !DISubprogram(name: "version_etc_arn", scope: !526, file: !526, line: 62, type: !2997, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !3055)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !2999, !6, !6, !6, !3054, !76}
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3001, line: 49, baseType: !3002)
!3001 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3003, line: 241, size: 1728, elements: !3004)
!3003 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3004 = !{!3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3025, !3026, !3027, !3028, !3032, !3033, !3035, !3039, !3042, !3044, !3045, !3046, !3047, !3048, !3049, !3050}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3002, file: !3003, line: 242, baseType: !25, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3002, file: !3003, line: 247, baseType: !32, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3002, file: !3003, line: 248, baseType: !32, size: 64, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3002, file: !3003, line: 249, baseType: !32, size: 64, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3002, file: !3003, line: 250, baseType: !32, size: 64, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3002, file: !3003, line: 251, baseType: !32, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3002, file: !3003, line: 252, baseType: !32, size: 64, offset: 384)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3002, file: !3003, line: 253, baseType: !32, size: 64, offset: 448)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3002, file: !3003, line: 254, baseType: !32, size: 64, offset: 512)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3002, file: !3003, line: 256, baseType: !32, size: 64, offset: 576)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3002, file: !3003, line: 257, baseType: !32, size: 64, offset: 640)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3002, file: !3003, line: 258, baseType: !32, size: 64, offset: 704)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3002, file: !3003, line: 260, baseType: !3018, size: 64, offset: 768)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3003, line: 156, size: 192, elements: !3020)
!3020 = !{!3021, !3022, !3024}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3019, file: !3003, line: 157, baseType: !3018, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3019, file: !3003, line: 158, baseType: !3023, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3019, file: !3003, line: 162, baseType: !25, size: 32, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3002, file: !3003, line: 262, baseType: !3023, size: 64, offset: 832)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3002, file: !3003, line: 264, baseType: !25, size: 32, offset: 896)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3002, file: !3003, line: 268, baseType: !25, size: 32, offset: 928)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3002, file: !3003, line: 270, baseType: !3029, size: 64, offset: 960)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !3030, line: 140, baseType: !3031)
!3030 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3031 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3002, file: !3003, line: 274, baseType: !75, size: 16, offset: 1024)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3002, file: !3003, line: 275, baseType: !3034, size: 8, offset: 1040)
!3034 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3002, file: !3003, line: 276, baseType: !3036, size: 8, offset: 1048)
!3036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !3037)
!3037 = !{!3038}
!3038 = !DISubrange(count: 1)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3002, file: !3003, line: 280, baseType: !3040, size: 64, offset: 1088)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3003, line: 150, baseType: null)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3002, file: !3003, line: 289, baseType: !3043, size: 64, offset: 1152)
!3043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !3030, line: 141, baseType: !3031)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3002, file: !3003, line: 297, baseType: !31, size: 64, offset: 1216)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3002, file: !3003, line: 298, baseType: !31, size: 64, offset: 1280)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3002, file: !3003, line: 299, baseType: !31, size: 64, offset: 1344)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3002, file: !3003, line: 300, baseType: !31, size: 64, offset: 1408)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3002, file: !3003, line: 302, baseType: !76, size: 64, offset: 1472)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3002, file: !3003, line: 303, baseType: !25, size: 32, offset: 1536)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3002, file: !3003, line: 305, baseType: !3051, size: 160, offset: 1568)
!3051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !3052)
!3052 = !{!3053}
!3053 = !DISubrange(count: 20)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3061}
!3056 = !DILocalVariable(name: "stream", arg: 1, scope: !2996, file: !526, line: 62, type: !2999)
!3057 = !DILocalVariable(name: "command_name", arg: 2, scope: !2996, file: !526, line: 63, type: !6)
!3058 = !DILocalVariable(name: "package", arg: 3, scope: !2996, file: !526, line: 63, type: !6)
!3059 = !DILocalVariable(name: "version", arg: 4, scope: !2996, file: !526, line: 64, type: !6)
!3060 = !DILocalVariable(name: "authors", arg: 5, scope: !2996, file: !526, line: 65, type: !3054)
!3061 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2996, file: !526, line: 65, type: !76)
!3062 = !DILocation(line: 62, column: 24, scope: !2996)
!3063 = !DILocation(line: 63, column: 30, scope: !2996)
!3064 = !DILocation(line: 63, column: 56, scope: !2996)
!3065 = !DILocation(line: 64, column: 30, scope: !2996)
!3066 = !DILocation(line: 65, column: 39, scope: !2996)
!3067 = !DILocation(line: 65, column: 55, scope: !2996)
!3068 = !DILocation(line: 67, column: 7, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2996, file: !526, line: 67, column: 7)
!3070 = !DILocation(line: 67, column: 7, scope: !2996)
!3071 = !DILocation(line: 68, column: 5, scope: !3069)
!3072 = !DILocation(line: 70, column: 5, scope: !3069)
!3073 = !DILocation(line: 84, column: 3, scope: !2996)
!3074 = !DILocation(line: 84, column: 3, scope: !3075)
!3075 = !DILexicalBlockFile(scope: !2996, file: !526, discriminator: 1)
!3076 = !DILocation(line: 86, column: 3, scope: !2996)
!3077 = !DILocation(line: 86, column: 3, scope: !3075)
!3078 = !DILocation(line: 95, column: 3, scope: !2996)
!3079 = !DILocation(line: 99, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2996, file: !526, line: 96, column: 5)
!3081 = !DILocation(line: 102, column: 7, scope: !3080)
!3082 = !DILocation(line: 102, column: 7, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3080, file: !526, discriminator: 1)
!3084 = !DILocation(line: 103, column: 7, scope: !3080)
!3085 = !DILocation(line: 106, column: 7, scope: !3080)
!3086 = !DILocation(line: 106, column: 7, scope: !3083)
!3087 = !DILocation(line: 107, column: 7, scope: !3080)
!3088 = !DILocation(line: 110, column: 7, scope: !3080)
!3089 = !DILocation(line: 110, column: 7, scope: !3083)
!3090 = !DILocation(line: 112, column: 7, scope: !3080)
!3091 = !DILocation(line: 117, column: 7, scope: !3080)
!3092 = !DILocation(line: 117, column: 7, scope: !3083)
!3093 = !DILocation(line: 119, column: 7, scope: !3080)
!3094 = !DILocation(line: 124, column: 7, scope: !3080)
!3095 = !DILocation(line: 124, column: 7, scope: !3083)
!3096 = !DILocation(line: 126, column: 7, scope: !3080)
!3097 = !DILocation(line: 131, column: 7, scope: !3080)
!3098 = !DILocation(line: 131, column: 7, scope: !3083)
!3099 = !DILocation(line: 134, column: 7, scope: !3080)
!3100 = !DILocation(line: 139, column: 7, scope: !3080)
!3101 = !DILocation(line: 139, column: 7, scope: !3083)
!3102 = !DILocation(line: 142, column: 7, scope: !3080)
!3103 = !DILocation(line: 147, column: 7, scope: !3080)
!3104 = !DILocation(line: 147, column: 7, scope: !3083)
!3105 = !DILocation(line: 151, column: 7, scope: !3080)
!3106 = !DILocation(line: 156, column: 7, scope: !3080)
!3107 = !DILocation(line: 156, column: 7, scope: !3083)
!3108 = !DILocation(line: 160, column: 7, scope: !3080)
!3109 = !DILocation(line: 167, column: 7, scope: !3080)
!3110 = !DILocation(line: 167, column: 7, scope: !3083)
!3111 = !DILocation(line: 171, column: 7, scope: !3080)
!3112 = !DILocation(line: 173, column: 1, scope: !2996)
!3113 = distinct !DISubprogram(name: "version_etc_ar", scope: !526, file: !526, line: 180, type: !3114, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !2999, !6, !6, !6, !3054}
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3122}
!3117 = !DILocalVariable(name: "stream", arg: 1, scope: !3113, file: !526, line: 180, type: !2999)
!3118 = !DILocalVariable(name: "command_name", arg: 2, scope: !3113, file: !526, line: 181, type: !6)
!3119 = !DILocalVariable(name: "package", arg: 3, scope: !3113, file: !526, line: 181, type: !6)
!3120 = !DILocalVariable(name: "version", arg: 4, scope: !3113, file: !526, line: 182, type: !6)
!3121 = !DILocalVariable(name: "authors", arg: 5, scope: !3113, file: !526, line: 182, type: !3054)
!3122 = !DILocalVariable(name: "n_authors", scope: !3113, file: !526, line: 184, type: !76)
!3123 = !DILocation(line: 180, column: 23, scope: !3113)
!3124 = !DILocation(line: 181, column: 29, scope: !3113)
!3125 = !DILocation(line: 181, column: 55, scope: !3113)
!3126 = !DILocation(line: 182, column: 29, scope: !3113)
!3127 = !DILocation(line: 182, column: 59, scope: !3113)
!3128 = !DILocation(line: 184, column: 10, scope: !3113)
!3129 = !DILocation(line: 186, column: 8, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3113, file: !526, line: 186, column: 3)
!3131 = !DILocation(line: 186, column: 23, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3133, file: !526, discriminator: 1)
!3133 = distinct !DILexicalBlock(scope: !3130, file: !526, line: 186, column: 3)
!3134 = !DILocation(line: 186, column: 3, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !3130, file: !526, discriminator: 1)
!3136 = !DILocation(line: 186, column: 52, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3133, file: !526, discriminator: 3)
!3138 = distinct !{!3138, !3139, !3140}
!3139 = !DILocation(line: 186, column: 3, scope: !3130)
!3140 = !DILocation(line: 187, column: 5, scope: !3130)
!3141 = !DILocation(line: 188, column: 3, scope: !3113)
!3142 = !DILocation(line: 189, column: 1, scope: !3113)
!3143 = distinct !DISubprogram(name: "version_etc_va", scope: !526, file: !526, line: 196, type: !3144, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !3153)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{null, !2999, !6, !6, !6, !3146}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !523, line: 189, size: 192, elements: !3148)
!3148 = !{!3149, !3150, !3151, !3152}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3147, file: !523, line: 189, baseType: !95, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3147, file: !523, line: 189, baseType: !95, size: 32, offset: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3147, file: !523, line: 189, baseType: !31, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3147, file: !523, line: 189, baseType: !31, size: 64, offset: 128)
!3153 = !{!3154, !3155, !3156, !3157, !3158, !3159, !3160}
!3154 = !DILocalVariable(name: "stream", arg: 1, scope: !3143, file: !526, line: 196, type: !2999)
!3155 = !DILocalVariable(name: "command_name", arg: 2, scope: !3143, file: !526, line: 197, type: !6)
!3156 = !DILocalVariable(name: "package", arg: 3, scope: !3143, file: !526, line: 197, type: !6)
!3157 = !DILocalVariable(name: "version", arg: 4, scope: !3143, file: !526, line: 198, type: !6)
!3158 = !DILocalVariable(name: "authors", arg: 5, scope: !3143, file: !526, line: 198, type: !3146)
!3159 = !DILocalVariable(name: "n_authors", scope: !3143, file: !526, line: 200, type: !76)
!3160 = !DILocalVariable(name: "authtab", scope: !3143, file: !526, line: 201, type: !3161)
!3161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !85)
!3162 = !DILocation(line: 196, column: 23, scope: !3143)
!3163 = !DILocation(line: 197, column: 29, scope: !3143)
!3164 = !DILocation(line: 197, column: 55, scope: !3143)
!3165 = !DILocation(line: 198, column: 29, scope: !3143)
!3166 = !DILocation(line: 198, column: 46, scope: !3143)
!3167 = !DILocation(line: 201, column: 3, scope: !3143)
!3168 = !DILocation(line: 201, column: 15, scope: !3143)
!3169 = !DILocation(line: 200, column: 10, scope: !3143)
!3170 = !DILocation(line: 205, column: 35, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !3172, file: !526, discriminator: 1)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !526, line: 203, column: 3)
!3173 = distinct !DILexicalBlock(scope: !3143, file: !526, line: 203, column: 3)
!3174 = !DILocation(line: 205, column: 35, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3172, file: !526, discriminator: 2)
!3176 = !DILocation(line: 205, column: 35, scope: !3177)
!3177 = !DILexicalBlockFile(scope: !3172, file: !526, discriminator: 3)
!3178 = !DILocation(line: 205, column: 35, scope: !3179)
!3179 = !DILexicalBlockFile(scope: !3172, file: !526, discriminator: 4)
!3180 = !DILocation(line: 205, column: 14, scope: !3179)
!3181 = !DILocation(line: 205, column: 33, scope: !3179)
!3182 = !DILocation(line: 205, column: 67, scope: !3179)
!3183 = !DILocation(line: 203, column: 3, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !3173, file: !526, discriminator: 1)
!3185 = !DILocation(line: 208, column: 3, scope: !3143)
!3186 = !DILocation(line: 210, column: 1, scope: !3143)
!3187 = distinct !DISubprogram(name: "version_etc", scope: !526, file: !526, line: 227, type: !3188, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !2999, !6, !6, !6, null}
!3190 = !{!3191, !3192, !3193, !3194, !3195}
!3191 = !DILocalVariable(name: "stream", arg: 1, scope: !3187, file: !526, line: 227, type: !2999)
!3192 = !DILocalVariable(name: "command_name", arg: 2, scope: !3187, file: !526, line: 228, type: !6)
!3193 = !DILocalVariable(name: "package", arg: 3, scope: !3187, file: !526, line: 228, type: !6)
!3194 = !DILocalVariable(name: "version", arg: 4, scope: !3187, file: !526, line: 229, type: !6)
!3195 = !DILocalVariable(name: "authors", scope: !3187, file: !526, line: 231, type: !3196)
!3196 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3001, line: 80, baseType: !3197)
!3197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3198, line: 50, baseType: !3199)
!3198 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !523, line: 231, baseType: !3200)
!3200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3147, size: 192, elements: !3037)
!3201 = !DILocation(line: 227, column: 20, scope: !3187)
!3202 = !DILocation(line: 228, column: 26, scope: !3187)
!3203 = !DILocation(line: 228, column: 52, scope: !3187)
!3204 = !DILocation(line: 229, column: 26, scope: !3187)
!3205 = !DILocation(line: 231, column: 3, scope: !3187)
!3206 = !DILocation(line: 231, column: 11, scope: !3187)
!3207 = !DILocation(line: 233, column: 3, scope: !3187)
!3208 = !DILocation(line: 234, column: 3, scope: !3187)
!3209 = !DILocation(line: 235, column: 3, scope: !3187)
!3210 = !DILocation(line: 236, column: 1, scope: !3187)
!3211 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !526, file: !526, line: 239, type: !964, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !4)
!3212 = !DILocation(line: 245, column: 3, scope: !3211)
!3213 = !DILocation(line: 245, column: 3, scope: !3214)
!3214 = !DILexicalBlockFile(scope: !3211, file: !526, discriminator: 1)
!3215 = !DILocation(line: 251, column: 3, scope: !3211)
!3216 = !DILocation(line: 251, column: 3, scope: !3214)
!3217 = !DILocation(line: 256, column: 3, scope: !3211)
!3218 = !DILocation(line: 256, column: 3, scope: !3214)
!3219 = !DILocation(line: 258, column: 1, scope: !3211)
!3220 = distinct !DISubprogram(name: "xnmalloc", scope: !534, file: !534, line: 105, type: !3221, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!31, !76, !76}
!3223 = !{!3224, !3225}
!3224 = !DILocalVariable(name: "n", arg: 1, scope: !3220, file: !534, line: 105, type: !76)
!3225 = !DILocalVariable(name: "s", arg: 2, scope: !3220, file: !534, line: 105, type: !76)
!3226 = !DILocation(line: 105, column: 18, scope: !3220)
!3227 = !DILocation(line: 105, column: 28, scope: !3220)
!3228 = !DILocation(line: 107, column: 7, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3220, file: !534, line: 107, column: 7)
!3230 = !DILocation(line: 107, column: 7, scope: !3220)
!3231 = !DILocation(line: 108, column: 5, scope: !3229)
!3232 = !DILocation(line: 109, column: 21, scope: !3220)
!3233 = !DILocalVariable(name: "n", arg: 1, scope: !3234, file: !3235, line: 39, type: !76)
!3234 = distinct !DISubprogram(name: "xmalloc", scope: !3235, file: !3235, line: 39, type: !3236, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3238)
!3235 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!31, !76}
!3238 = !{!3233, !3239}
!3239 = !DILocalVariable(name: "p", scope: !3234, file: !3235, line: 41, type: !31)
!3240 = !DILocation(line: 39, column: 17, scope: !3234, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 109, column: 10, scope: !3220)
!3242 = !DILocation(line: 41, column: 13, scope: !3234, inlinedAt: !3241)
!3243 = !DILocation(line: 41, column: 9, scope: !3234, inlinedAt: !3241)
!3244 = !DILocation(line: 42, column: 8, scope: !3245, inlinedAt: !3241)
!3245 = distinct !DILexicalBlock(scope: !3234, file: !3235, line: 42, column: 7)
!3246 = !DILocation(line: 42, column: 15, scope: !3247, inlinedAt: !3241)
!3247 = !DILexicalBlockFile(scope: !3245, file: !3235, discriminator: 1)
!3248 = !DILocation(line: 42, column: 10, scope: !3245, inlinedAt: !3241)
!3249 = !DILocation(line: 43, column: 5, scope: !3245, inlinedAt: !3241)
!3250 = !DILocation(line: 109, column: 3, scope: !3220)
!3251 = !DILocation(line: 39, column: 17, scope: !3234)
!3252 = !DILocation(line: 41, column: 13, scope: !3234)
!3253 = !DILocation(line: 41, column: 9, scope: !3234)
!3254 = !DILocation(line: 42, column: 8, scope: !3245)
!3255 = !DILocation(line: 42, column: 15, scope: !3247)
!3256 = !DILocation(line: 42, column: 10, scope: !3245)
!3257 = !DILocation(line: 43, column: 5, scope: !3245)
!3258 = !DILocation(line: 44, column: 3, scope: !3234)
!3259 = distinct !DISubprogram(name: "xnrealloc", scope: !534, file: !534, line: 118, type: !3260, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!31, !31, !76, !76}
!3262 = !{!3263, !3264, !3265}
!3263 = !DILocalVariable(name: "p", arg: 1, scope: !3259, file: !534, line: 118, type: !31)
!3264 = !DILocalVariable(name: "n", arg: 2, scope: !3259, file: !534, line: 118, type: !76)
!3265 = !DILocalVariable(name: "s", arg: 3, scope: !3259, file: !534, line: 118, type: !76)
!3266 = !DILocation(line: 118, column: 18, scope: !3259)
!3267 = !DILocation(line: 118, column: 28, scope: !3259)
!3268 = !DILocation(line: 118, column: 38, scope: !3259)
!3269 = !DILocation(line: 120, column: 7, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3259, file: !534, line: 120, column: 7)
!3271 = !DILocation(line: 120, column: 7, scope: !3259)
!3272 = !DILocation(line: 121, column: 5, scope: !3270)
!3273 = !DILocation(line: 122, column: 25, scope: !3259)
!3274 = !DILocalVariable(name: "p", arg: 1, scope: !3275, file: !3235, line: 51, type: !31)
!3275 = distinct !DISubprogram(name: "xrealloc", scope: !3235, file: !3235, line: 51, type: !3276, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!31, !31, !76}
!3278 = !{!3274, !3279}
!3279 = !DILocalVariable(name: "n", arg: 2, scope: !3275, file: !3235, line: 51, type: !76)
!3280 = !DILocation(line: 51, column: 17, scope: !3275, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 122, column: 10, scope: !3259)
!3282 = !DILocation(line: 51, column: 27, scope: !3275, inlinedAt: !3281)
!3283 = !DILocation(line: 53, column: 8, scope: !3284, inlinedAt: !3281)
!3284 = distinct !DILexicalBlock(scope: !3275, file: !3235, line: 53, column: 7)
!3285 = !DILocation(line: 53, column: 13, scope: !3286, inlinedAt: !3281)
!3286 = !DILexicalBlockFile(scope: !3284, file: !3235, discriminator: 1)
!3287 = !DILocation(line: 53, column: 10, scope: !3284, inlinedAt: !3281)
!3288 = !DILocation(line: 57, column: 7, scope: !3289, inlinedAt: !3281)
!3289 = distinct !DILexicalBlock(scope: !3284, file: !3235, line: 54, column: 5)
!3290 = !DILocation(line: 58, column: 7, scope: !3289, inlinedAt: !3281)
!3291 = !DILocation(line: 61, column: 7, scope: !3275, inlinedAt: !3281)
!3292 = !DILocation(line: 62, column: 8, scope: !3293, inlinedAt: !3281)
!3293 = distinct !DILexicalBlock(scope: !3275, file: !3235, line: 62, column: 7)
!3294 = !DILocation(line: 62, column: 13, scope: !3295, inlinedAt: !3281)
!3295 = !DILexicalBlockFile(scope: !3293, file: !3235, discriminator: 1)
!3296 = !DILocation(line: 62, column: 10, scope: !3293, inlinedAt: !3281)
!3297 = !DILocation(line: 63, column: 5, scope: !3293, inlinedAt: !3281)
!3298 = !DILocation(line: 122, column: 3, scope: !3259)
!3299 = !DILocation(line: 51, column: 17, scope: !3275)
!3300 = !DILocation(line: 51, column: 27, scope: !3275)
!3301 = !DILocation(line: 53, column: 8, scope: !3284)
!3302 = !DILocation(line: 53, column: 13, scope: !3286)
!3303 = !DILocation(line: 53, column: 10, scope: !3284)
!3304 = !DILocation(line: 57, column: 7, scope: !3289)
!3305 = !DILocation(line: 58, column: 7, scope: !3289)
!3306 = !DILocation(line: 61, column: 7, scope: !3275)
!3307 = !DILocation(line: 62, column: 8, scope: !3293)
!3308 = !DILocation(line: 62, column: 13, scope: !3295)
!3309 = !DILocation(line: 62, column: 10, scope: !3293)
!3310 = !DILocation(line: 63, column: 5, scope: !3293)
!3311 = !DILocation(line: 65, column: 1, scope: !3275)
!3312 = !DILocation(line: 180, column: 19, scope: !535)
!3313 = !DILocation(line: 180, column: 30, scope: !535)
!3314 = !DILocation(line: 180, column: 41, scope: !535)
!3315 = !DILocation(line: 182, column: 14, scope: !535)
!3316 = !DILocation(line: 182, column: 10, scope: !535)
!3317 = !DILocation(line: 184, column: 9, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !535, file: !534, line: 184, column: 7)
!3319 = !DILocation(line: 184, column: 7, scope: !535)
!3320 = !DILocation(line: 186, column: 13, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !534, line: 186, column: 11)
!3322 = distinct !DILexicalBlock(scope: !3318, file: !534, line: 185, column: 5)
!3323 = !DILocation(line: 186, column: 11, scope: !3322)
!3324 = !DILocation(line: 194, column: 30, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3321, file: !534, line: 187, column: 9)
!3326 = !DILocation(line: 195, column: 16, scope: !3325)
!3327 = !DILocation(line: 195, column: 13, scope: !3325)
!3328 = !DILocation(line: 196, column: 9, scope: !3325)
!3329 = !DILocation(line: 204, column: 69, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !534, line: 204, column: 11)
!3331 = distinct !DILexicalBlock(scope: !3318, file: !534, line: 199, column: 5)
!3332 = !DILocation(line: 205, column: 11, scope: !3330)
!3333 = !DILocation(line: 204, column: 11, scope: !3331)
!3334 = !DILocation(line: 206, column: 9, scope: !3330)
!3335 = !DILocation(line: 210, column: 7, scope: !535)
!3336 = !DILocation(line: 211, column: 25, scope: !535)
!3337 = !DILocation(line: 51, column: 17, scope: !3275, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 211, column: 10, scope: !535)
!3339 = !DILocation(line: 51, column: 27, scope: !3275, inlinedAt: !3338)
!3340 = !DILocation(line: 53, column: 10, scope: !3284, inlinedAt: !3338)
!3341 = !DILocation(line: 207, column: 14, scope: !3331)
!3342 = !DILocation(line: 207, column: 18, scope: !3331)
!3343 = !DILocation(line: 207, column: 9, scope: !3331)
!3344 = !DILocation(line: 53, column: 8, scope: !3284, inlinedAt: !3338)
!3345 = !DILocation(line: 57, column: 7, scope: !3289, inlinedAt: !3338)
!3346 = !DILocation(line: 58, column: 7, scope: !3289, inlinedAt: !3338)
!3347 = !DILocation(line: 61, column: 7, scope: !3275, inlinedAt: !3338)
!3348 = !DILocation(line: 62, column: 8, scope: !3293, inlinedAt: !3338)
!3349 = !DILocation(line: 62, column: 13, scope: !3295, inlinedAt: !3338)
!3350 = !DILocation(line: 62, column: 10, scope: !3293, inlinedAt: !3338)
!3351 = !DILocation(line: 63, column: 5, scope: !3293, inlinedAt: !3338)
!3352 = !DILocation(line: 211, column: 3, scope: !535)
!3353 = distinct !DISubprogram(name: "xcharalloc", scope: !534, file: !534, line: 220, type: !2269, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3354)
!3354 = !{!3355}
!3355 = !DILocalVariable(name: "n", arg: 1, scope: !3353, file: !534, line: 220, type: !76)
!3356 = !DILocation(line: 220, column: 20, scope: !3353)
!3357 = !DILocation(line: 39, column: 17, scope: !3234, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 222, column: 10, scope: !3353)
!3359 = !DILocation(line: 41, column: 13, scope: !3234, inlinedAt: !3358)
!3360 = !DILocation(line: 41, column: 9, scope: !3234, inlinedAt: !3358)
!3361 = !DILocation(line: 42, column: 8, scope: !3245, inlinedAt: !3358)
!3362 = !DILocation(line: 42, column: 15, scope: !3247, inlinedAt: !3358)
!3363 = !DILocation(line: 42, column: 10, scope: !3245, inlinedAt: !3358)
!3364 = !DILocation(line: 43, column: 5, scope: !3245, inlinedAt: !3358)
!3365 = !DILocation(line: 222, column: 3, scope: !3353)
!3366 = distinct !DISubprogram(name: "x2realloc", scope: !3235, file: !3235, line: 74, type: !3367, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!31, !31, !538}
!3369 = !{!3370, !3371}
!3370 = !DILocalVariable(name: "p", arg: 1, scope: !3366, file: !3235, line: 74, type: !31)
!3371 = !DILocalVariable(name: "pn", arg: 2, scope: !3366, file: !3235, line: 74, type: !538)
!3372 = !DILocation(line: 74, column: 18, scope: !3366)
!3373 = !DILocation(line: 74, column: 29, scope: !3366)
!3374 = !DILocation(line: 180, column: 19, scope: !535, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 76, column: 10, scope: !3366)
!3376 = !DILocation(line: 180, column: 30, scope: !535, inlinedAt: !3375)
!3377 = !DILocation(line: 180, column: 41, scope: !535, inlinedAt: !3375)
!3378 = !DILocation(line: 182, column: 14, scope: !535, inlinedAt: !3375)
!3379 = !DILocation(line: 182, column: 10, scope: !535, inlinedAt: !3375)
!3380 = !DILocation(line: 184, column: 9, scope: !3318, inlinedAt: !3375)
!3381 = !DILocation(line: 184, column: 7, scope: !535, inlinedAt: !3375)
!3382 = !DILocation(line: 186, column: 13, scope: !3321, inlinedAt: !3375)
!3383 = !DILocation(line: 186, column: 11, scope: !3322, inlinedAt: !3375)
!3384 = !DILocation(line: 210, column: 7, scope: !535, inlinedAt: !3375)
!3385 = !DILocation(line: 51, column: 17, scope: !3275, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 211, column: 10, scope: !535, inlinedAt: !3375)
!3387 = !DILocation(line: 51, column: 27, scope: !3275, inlinedAt: !3386)
!3388 = !DILocation(line: 53, column: 10, scope: !3284, inlinedAt: !3386)
!3389 = !DILocation(line: 205, column: 11, scope: !3330, inlinedAt: !3375)
!3390 = !DILocation(line: 204, column: 11, scope: !3331, inlinedAt: !3375)
!3391 = !DILocation(line: 206, column: 9, scope: !3330, inlinedAt: !3375)
!3392 = !DILocation(line: 207, column: 14, scope: !3331, inlinedAt: !3375)
!3393 = !DILocation(line: 207, column: 18, scope: !3331, inlinedAt: !3375)
!3394 = !DILocation(line: 207, column: 9, scope: !3331, inlinedAt: !3375)
!3395 = !DILocation(line: 53, column: 8, scope: !3284, inlinedAt: !3386)
!3396 = !DILocation(line: 57, column: 7, scope: !3289, inlinedAt: !3386)
!3397 = !DILocation(line: 58, column: 7, scope: !3289, inlinedAt: !3386)
!3398 = !DILocation(line: 61, column: 7, scope: !3275, inlinedAt: !3386)
!3399 = !DILocation(line: 62, column: 8, scope: !3293, inlinedAt: !3386)
!3400 = !DILocation(line: 62, column: 13, scope: !3295, inlinedAt: !3386)
!3401 = !DILocation(line: 62, column: 10, scope: !3293, inlinedAt: !3386)
!3402 = !DILocation(line: 63, column: 5, scope: !3293, inlinedAt: !3386)
!3403 = !DILocation(line: 76, column: 3, scope: !3366)
!3404 = distinct !DISubprogram(name: "xzalloc", scope: !3235, file: !3235, line: 84, type: !3236, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3405)
!3405 = !{!3406}
!3406 = !DILocalVariable(name: "s", arg: 1, scope: !3404, file: !3235, line: 84, type: !76)
!3407 = !DILocation(line: 84, column: 17, scope: !3404)
!3408 = !DILocation(line: 39, column: 17, scope: !3234, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 86, column: 18, scope: !3404)
!3410 = !DILocation(line: 41, column: 13, scope: !3234, inlinedAt: !3409)
!3411 = !DILocation(line: 41, column: 9, scope: !3234, inlinedAt: !3409)
!3412 = !DILocation(line: 42, column: 8, scope: !3245, inlinedAt: !3409)
!3413 = !DILocation(line: 42, column: 15, scope: !3247, inlinedAt: !3409)
!3414 = !DILocation(line: 42, column: 10, scope: !3245, inlinedAt: !3409)
!3415 = !DILocation(line: 43, column: 5, scope: !3245, inlinedAt: !3409)
!3416 = !DILocation(line: 86, column: 10, scope: !3404)
!3417 = !DILocation(line: 86, column: 3, scope: !3404)
!3418 = distinct !DISubprogram(name: "xcalloc", scope: !3235, file: !3235, line: 93, type: !3221, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3419)
!3419 = !{!3420, !3421, !3422}
!3420 = !DILocalVariable(name: "n", arg: 1, scope: !3418, file: !3235, line: 93, type: !76)
!3421 = !DILocalVariable(name: "s", arg: 2, scope: !3418, file: !3235, line: 93, type: !76)
!3422 = !DILocalVariable(name: "p", scope: !3418, file: !3235, line: 95, type: !31)
!3423 = !DILocation(line: 93, column: 17, scope: !3418)
!3424 = !DILocation(line: 93, column: 27, scope: !3418)
!3425 = !DILocation(line: 100, column: 7, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3418, file: !3235, line: 100, column: 7)
!3427 = !DILocation(line: 101, column: 7, scope: !3426)
!3428 = !DILocation(line: 101, column: 18, scope: !3429)
!3429 = !DILexicalBlockFile(scope: !3426, file: !3235, discriminator: 1)
!3430 = !DILocation(line: 95, column: 9, scope: !3418)
!3431 = !DILocation(line: 101, column: 16, scope: !3429)
!3432 = !DILocation(line: 100, column: 7, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3418, file: !3235, discriminator: 1)
!3434 = !DILocation(line: 102, column: 5, scope: !3426)
!3435 = !DILocation(line: 103, column: 3, scope: !3418)
!3436 = distinct !DISubprogram(name: "xmemdup", scope: !3235, file: !3235, line: 111, type: !3437, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!31, !487, !76}
!3439 = !{!3440, !3441}
!3440 = !DILocalVariable(name: "p", arg: 1, scope: !3436, file: !3235, line: 111, type: !487)
!3441 = !DILocalVariable(name: "s", arg: 2, scope: !3436, file: !3235, line: 111, type: !76)
!3442 = !DILocation(line: 111, column: 22, scope: !3436)
!3443 = !DILocation(line: 111, column: 32, scope: !3436)
!3444 = !DILocation(line: 39, column: 17, scope: !3234, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 113, column: 18, scope: !3436)
!3446 = !DILocation(line: 41, column: 13, scope: !3234, inlinedAt: !3445)
!3447 = !DILocation(line: 41, column: 9, scope: !3234, inlinedAt: !3445)
!3448 = !DILocation(line: 42, column: 8, scope: !3245, inlinedAt: !3445)
!3449 = !DILocation(line: 42, column: 15, scope: !3247, inlinedAt: !3445)
!3450 = !DILocation(line: 42, column: 10, scope: !3245, inlinedAt: !3445)
!3451 = !DILocation(line: 43, column: 5, scope: !3245, inlinedAt: !3445)
!3452 = !DILocation(line: 113, column: 10, scope: !3436)
!3453 = !DILocation(line: 113, column: 3, scope: !3436)
!3454 = distinct !DISubprogram(name: "xstrdup", scope: !3235, file: !3235, line: 119, type: !2475, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !3455)
!3455 = !{!3456}
!3456 = !DILocalVariable(name: "string", arg: 1, scope: !3454, file: !3235, line: 119, type: !6)
!3457 = !DILocation(line: 119, column: 22, scope: !3454)
!3458 = !DILocation(line: 121, column: 27, scope: !3454)
!3459 = !DILocation(line: 121, column: 43, scope: !3454)
!3460 = !DILocation(line: 111, column: 22, scope: !3436, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 121, column: 10, scope: !3462)
!3462 = !DILexicalBlockFile(scope: !3454, file: !3235, discriminator: 1)
!3463 = !DILocation(line: 111, column: 32, scope: !3436, inlinedAt: !3461)
!3464 = !DILocation(line: 39, column: 17, scope: !3234, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 113, column: 18, scope: !3436, inlinedAt: !3461)
!3466 = !DILocation(line: 41, column: 13, scope: !3234, inlinedAt: !3465)
!3467 = !DILocation(line: 41, column: 9, scope: !3234, inlinedAt: !3465)
!3468 = !DILocation(line: 42, column: 8, scope: !3245, inlinedAt: !3465)
!3469 = !DILocation(line: 42, column: 15, scope: !3247, inlinedAt: !3465)
!3470 = !DILocation(line: 42, column: 10, scope: !3245, inlinedAt: !3465)
!3471 = !DILocation(line: 43, column: 5, scope: !3245, inlinedAt: !3465)
!3472 = !DILocation(line: 113, column: 10, scope: !3436, inlinedAt: !3461)
!3473 = !DILocation(line: 121, column: 3, scope: !3454)
!3474 = distinct !DISubprogram(name: "xalloc_die", scope: !3475, file: !3475, line: 32, type: !964, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !547, variables: !4)
!3475 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3476 = !DILocation(line: 34, column: 10, scope: !3474)
!3477 = !DILocation(line: 34, column: 33, scope: !3474)
!3478 = !DILocation(line: 34, column: 3, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !3474, file: !3475, discriminator: 1)
!3480 = !DILocation(line: 40, column: 3, scope: !3474)
!3481 = distinct !DISubprogram(name: "rpl_calloc", scope: !3482, file: !3482, line: 42, type: !3221, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !3483)
!3482 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3483 = !{!3484, !3485, !3486, !3487}
!3484 = !DILocalVariable(name: "n", arg: 1, scope: !3481, file: !3482, line: 42, type: !76)
!3485 = !DILocalVariable(name: "s", arg: 2, scope: !3481, file: !3482, line: 42, type: !76)
!3486 = !DILocalVariable(name: "result", scope: !3481, file: !3482, line: 44, type: !31)
!3487 = !DILocalVariable(name: "bytes", scope: !3488, file: !3482, line: 56, type: !76)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !3482, line: 53, column: 5)
!3489 = distinct !DILexicalBlock(scope: !3481, file: !3482, line: 47, column: 7)
!3490 = !DILocation(line: 42, column: 20, scope: !3481)
!3491 = !DILocation(line: 42, column: 30, scope: !3481)
!3492 = !DILocation(line: 47, column: 9, scope: !3489)
!3493 = !DILocation(line: 47, column: 19, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !3489, file: !3482, discriminator: 1)
!3495 = !DILocation(line: 47, column: 14, scope: !3489)
!3496 = !DILocation(line: 56, column: 24, scope: !3488)
!3497 = !DILocation(line: 56, column: 14, scope: !3488)
!3498 = !DILocation(line: 57, column: 17, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3488, file: !3482, line: 57, column: 11)
!3500 = !DILocation(line: 57, column: 21, scope: !3499)
!3501 = !DILocation(line: 57, column: 11, scope: !3488)
!3502 = !DILocation(line: 59, column: 11, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3499, file: !3482, line: 58, column: 9)
!3504 = !DILocation(line: 59, column: 17, scope: !3503)
!3505 = !DILocation(line: 65, column: 12, scope: !3481)
!3506 = !DILocation(line: 44, column: 9, scope: !3481)
!3507 = !DILocation(line: 72, column: 3, scope: !3481)
!3508 = !DILocation(line: 73, column: 1, scope: !3481)
!3509 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3510, file: !3510, line: 334, type: !3511, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !3525)
!3510 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!76, !3513, !6, !76, !3514}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1241, line: 107, baseType: !3516)
!3516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1241, line: 95, baseType: !3517)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1241, line: 83, size: 64, elements: !3518)
!3518 = !{!3519, !3520}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3517, file: !1241, line: 85, baseType: !25, size: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3517, file: !1241, line: 94, baseType: !3521, size: 32, offset: 32)
!3521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3517, file: !1241, line: 86, size: 32, elements: !3522)
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3521, file: !1241, line: 89, baseType: !95, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3521, file: !1241, line: 93, baseType: !1251, size: 32)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532}
!3526 = !DILocalVariable(name: "pwc", arg: 1, scope: !3509, file: !3510, line: 334, type: !3513)
!3527 = !DILocalVariable(name: "s", arg: 2, scope: !3509, file: !3510, line: 334, type: !6)
!3528 = !DILocalVariable(name: "n", arg: 3, scope: !3509, file: !3510, line: 334, type: !76)
!3529 = !DILocalVariable(name: "ps", arg: 4, scope: !3509, file: !3510, line: 334, type: !3514)
!3530 = !DILocalVariable(name: "ret", scope: !3509, file: !3510, line: 336, type: !76)
!3531 = !DILocalVariable(name: "wc", scope: !3509, file: !3510, line: 337, type: !1256)
!3532 = !DILocalVariable(name: "uc", scope: !3533, file: !3510, line: 398, type: !476)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !3510, line: 397, column: 5)
!3534 = distinct !DILexicalBlock(scope: !3509, file: !3510, line: 396, column: 7)
!3535 = !DILocation(line: 334, column: 23, scope: !3509)
!3536 = !DILocation(line: 334, column: 40, scope: !3509)
!3537 = !DILocation(line: 334, column: 50, scope: !3509)
!3538 = !DILocation(line: 334, column: 64, scope: !3509)
!3539 = !DILocation(line: 337, column: 3, scope: !3509)
!3540 = !DILocation(line: 353, column: 9, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3509, file: !3510, line: 353, column: 7)
!3542 = !DILocation(line: 353, column: 7, scope: !3509)
!3543 = !DILocation(line: 388, column: 9, scope: !3509)
!3544 = !DILocation(line: 336, column: 10, scope: !3509)
!3545 = !DILocation(line: 396, column: 19, scope: !3534)
!3546 = !DILocation(line: 396, column: 31, scope: !3547)
!3547 = !DILexicalBlockFile(scope: !3534, file: !3510, discriminator: 1)
!3548 = !DILocation(line: 396, column: 26, scope: !3534)
!3549 = !DILocation(line: 396, column: 41, scope: !3550)
!3550 = !DILexicalBlockFile(scope: !3534, file: !3510, discriminator: 2)
!3551 = !DILocation(line: 396, column: 7, scope: !3552)
!3552 = !DILexicalBlockFile(scope: !3509, file: !3510, discriminator: 2)
!3553 = !DILocation(line: 398, column: 26, scope: !3533)
!3554 = !DILocation(line: 398, column: 21, scope: !3533)
!3555 = !DILocation(line: 399, column: 14, scope: !3533)
!3556 = !DILocation(line: 399, column: 12, scope: !3533)
!3557 = !DILocation(line: 405, column: 1, scope: !3509)
!3558 = distinct !DISubprogram(name: "close_stream", scope: !3559, file: !3559, line: 56, type: !3560, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3602)
!3559 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!25, !3562}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3001, line: 49, baseType: !3564)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3003, line: 241, size: 1728, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3564, file: !3003, line: 242, baseType: !25, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3564, file: !3003, line: 247, baseType: !32, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3564, file: !3003, line: 248, baseType: !32, size: 64, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3564, file: !3003, line: 249, baseType: !32, size: 64, offset: 192)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3564, file: !3003, line: 250, baseType: !32, size: 64, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3564, file: !3003, line: 251, baseType: !32, size: 64, offset: 320)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3564, file: !3003, line: 252, baseType: !32, size: 64, offset: 384)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3564, file: !3003, line: 253, baseType: !32, size: 64, offset: 448)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3564, file: !3003, line: 254, baseType: !32, size: 64, offset: 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3564, file: !3003, line: 256, baseType: !32, size: 64, offset: 576)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3564, file: !3003, line: 257, baseType: !32, size: 64, offset: 640)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3564, file: !3003, line: 258, baseType: !32, size: 64, offset: 704)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3564, file: !3003, line: 260, baseType: !3579, size: 64, offset: 768)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3003, line: 156, size: 192, elements: !3581)
!3581 = !{!3582, !3583, !3585}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3580, file: !3003, line: 157, baseType: !3579, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3580, file: !3003, line: 158, baseType: !3584, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3580, file: !3003, line: 162, baseType: !25, size: 32, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3564, file: !3003, line: 262, baseType: !3584, size: 64, offset: 832)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3564, file: !3003, line: 264, baseType: !25, size: 32, offset: 896)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3564, file: !3003, line: 268, baseType: !25, size: 32, offset: 928)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3564, file: !3003, line: 270, baseType: !3029, size: 64, offset: 960)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3564, file: !3003, line: 274, baseType: !75, size: 16, offset: 1024)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3564, file: !3003, line: 275, baseType: !3034, size: 8, offset: 1040)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3564, file: !3003, line: 276, baseType: !3036, size: 8, offset: 1048)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3564, file: !3003, line: 280, baseType: !3040, size: 64, offset: 1088)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3564, file: !3003, line: 289, baseType: !3043, size: 64, offset: 1152)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3564, file: !3003, line: 297, baseType: !31, size: 64, offset: 1216)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3564, file: !3003, line: 298, baseType: !31, size: 64, offset: 1280)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3564, file: !3003, line: 299, baseType: !31, size: 64, offset: 1344)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3564, file: !3003, line: 300, baseType: !31, size: 64, offset: 1408)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3564, file: !3003, line: 302, baseType: !76, size: 64, offset: 1472)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3564, file: !3003, line: 303, baseType: !25, size: 32, offset: 1536)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3564, file: !3003, line: 305, baseType: !3051, size: 160, offset: 1568)
!3602 = !{!3603, !3604, !3606, !3607}
!3603 = !DILocalVariable(name: "stream", arg: 1, scope: !3558, file: !3559, line: 56, type: !3562)
!3604 = !DILocalVariable(name: "some_pending", scope: !3558, file: !3559, line: 58, type: !3605)
!3605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3606 = !DILocalVariable(name: "prev_fail", scope: !3558, file: !3559, line: 59, type: !3605)
!3607 = !DILocalVariable(name: "fclose_fail", scope: !3558, file: !3559, line: 60, type: !3605)
!3608 = !DILocation(line: 56, column: 21, scope: !3558)
!3609 = !DILocation(line: 58, column: 30, scope: !3558)
!3610 = !DILocalVariable(name: "__stream", arg: 1, scope: !3611, file: !886, line: 132, type: !3562)
!3611 = distinct !DISubprogram(name: "ferror_unlocked", scope: !886, file: !886, line: 132, type: !3560, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3612)
!3612 = !{!3610}
!3613 = !DILocation(line: 132, column: 1, scope: !3611, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 59, column: 27, scope: !3558)
!3615 = !DILocation(line: 134, column: 10, scope: !3611, inlinedAt: !3614)
!3616 = !{!894, !895, i64 0}
!3617 = !DILocation(line: 59, column: 43, scope: !3558)
!3618 = !DILocation(line: 60, column: 29, scope: !3558)
!3619 = !DILocation(line: 60, column: 45, scope: !3558)
!3620 = !DILocation(line: 70, column: 17, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3558, file: !3559, line: 70, column: 7)
!3622 = !DILocation(line: 70, column: 33, scope: !3623)
!3623 = !DILexicalBlockFile(scope: !3621, file: !3559, discriminator: 1)
!3624 = !DILocation(line: 70, column: 53, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !3621, file: !3559, discriminator: 3)
!3626 = !DILocation(line: 70, column: 7, scope: !3627)
!3627 = !DILexicalBlockFile(scope: !3558, file: !3559, discriminator: 3)
!3628 = !DILocation(line: 72, column: 11, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3621, file: !3559, line: 71, column: 5)
!3630 = !DILocation(line: 73, column: 9, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3629, file: !3559, line: 72, column: 11)
!3632 = !DILocation(line: 73, column: 15, scope: !3631)
!3633 = !DILocation(line: 78, column: 1, scope: !3558)
!3634 = distinct !DISubprogram(name: "hard_locale", scope: !3635, file: !3635, line: 38, type: !3636, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3638)
!3635 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!17, !25}
!3638 = !{!3639, !3640, !3641, !3642, !3649, !3650, !3652, !3653, !3655, !3656, !3658}
!3639 = !DILocalVariable(name: "category", arg: 1, scope: !3634, file: !3635, line: 38, type: !25)
!3640 = !DILocalVariable(name: "hard", scope: !3634, file: !3635, line: 40, type: !17)
!3641 = !DILocalVariable(name: "p", scope: !3634, file: !3635, line: 41, type: !6)
!3642 = !DILocalVariable(name: "__s1_len", scope: !3643, file: !3635, line: 47, type: !76)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !3635, line: 47, column: 15)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !3635, line: 47, column: 15)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !3635, line: 46, column: 9)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !3635, line: 45, column: 11)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !3635, line: 44, column: 5)
!3648 = distinct !DILexicalBlock(scope: !3634, file: !3635, line: 43, column: 7)
!3649 = !DILocalVariable(name: "__s2_len", scope: !3643, file: !3635, line: 47, type: !76)
!3650 = !DILocalVariable(name: "__s2", scope: !3651, file: !3635, line: 47, type: !489)
!3651 = distinct !DILexicalBlock(scope: !3643, file: !3635, line: 47, column: 15)
!3652 = !DILocalVariable(name: "__result", scope: !3651, file: !3635, line: 47, type: !25)
!3653 = !DILocalVariable(name: "__s1_len", scope: !3654, file: !3635, line: 47, type: !76)
!3654 = distinct !DILexicalBlock(scope: !3644, file: !3635, line: 47, column: 39)
!3655 = !DILocalVariable(name: "__s2_len", scope: !3654, file: !3635, line: 47, type: !76)
!3656 = !DILocalVariable(name: "__s2", scope: !3657, file: !3635, line: 47, type: !489)
!3657 = distinct !DILexicalBlock(scope: !3654, file: !3635, line: 47, column: 39)
!3658 = !DILocalVariable(name: "__result", scope: !3657, file: !3635, line: 47, type: !25)
!3659 = !DILocation(line: 38, column: 18, scope: !3634)
!3660 = !DILocation(line: 40, column: 8, scope: !3634)
!3661 = !DILocation(line: 41, column: 19, scope: !3634)
!3662 = !DILocation(line: 41, column: 15, scope: !3634)
!3663 = !DILocation(line: 43, column: 7, scope: !3648)
!3664 = !DILocation(line: 43, column: 7, scope: !3634)
!3665 = !DILocation(line: 47, column: 15, scope: !3643)
!3666 = !DILocation(line: 47, column: 15, scope: !3651)
!3667 = !DILocation(line: 47, column: 15, scope: !3668)
!3668 = !DILexicalBlockFile(scope: !3651, file: !3635, discriminator: 2)
!3669 = !DILocation(line: 47, column: 15, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !3671, file: !3635, discriminator: 3)
!3671 = distinct !DILexicalBlock(scope: !3651, file: !3635, line: 47, column: 15)
!3672 = !DILocation(line: 47, column: 15, scope: !3673)
!3673 = !DILexicalBlockFile(scope: !3671, file: !3635, discriminator: 2)
!3674 = !DILocation(line: 47, column: 15, scope: !3675)
!3675 = !DILexicalBlockFile(scope: !3676, file: !3635, discriminator: 4)
!3676 = distinct !DILexicalBlock(scope: !3671, file: !3635, line: 47, column: 15)
!3677 = !DILocation(line: 47, column: 15, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !3643, file: !3635, discriminator: 11)
!3679 = !DILocation(line: 47, column: 36, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !3644, file: !3635, discriminator: 13)
!3681 = !DILocation(line: 47, column: 39, scope: !3654)
!3682 = !DILocation(line: 47, column: 39, scope: !3683)
!3683 = !DILexicalBlockFile(scope: !3654, file: !3635, discriminator: 26)
!3684 = !DILocation(line: 47, column: 59, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !3644, file: !3635, discriminator: 27)
!3686 = !DILocation(line: 47, column: 15, scope: !3687)
!3687 = !DILexicalBlockFile(scope: !3645, file: !3635, discriminator: 27)
!3688 = !DILocation(line: 48, column: 13, scope: !3644)
!3689 = !DILocation(line: 71, column: 3, scope: !3634)
!3690 = distinct !DISubprogram(name: "locale_charset", scope: !478, file: !478, line: 393, type: !3691, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!6}
!3693 = !{!3694, !3695, !3696, !3701}
!3694 = !DILocalVariable(name: "codeset", scope: !3690, file: !478, line: 395, type: !6)
!3695 = !DILocalVariable(name: "aliases", scope: !3690, file: !478, line: 396, type: !6)
!3696 = !DILocalVariable(name: "__s1_len", scope: !3697, file: !478, line: 592, type: !76)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !478, line: 592, column: 9)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !478, line: 592, column: 9)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !478, line: 589, column: 3)
!3700 = distinct !DILexicalBlock(scope: !3690, file: !478, line: 589, column: 3)
!3701 = !DILocalVariable(name: "__s2_len", scope: !3697, file: !478, line: 592, type: !76)
!3702 = !DILocalVariable(name: "buf1", scope: !3703, file: !478, line: 196, type: !3770)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !478, line: 194, column: 21)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !478, line: 193, column: 19)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !478, line: 193, column: 19)
!3706 = distinct !DILexicalBlock(scope: !3707, file: !478, line: 188, column: 17)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !478, line: 181, column: 19)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !478, line: 177, column: 13)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !478, line: 173, column: 15)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !478, line: 161, column: 9)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !478, line: 157, column: 11)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !478, line: 130, column: 5)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !478, line: 129, column: 7)
!3714 = distinct !DISubprogram(name: "get_charset_aliases", scope: !478, file: !478, line: 124, type: !3691, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3715)
!3715 = !{!3716, !3717, !3718, !3719, !3720, !3722, !3723, !3724, !3725, !3766, !3767, !3768, !3702, !3769, !3773, !3774, !3775}
!3716 = !DILocalVariable(name: "cp", scope: !3714, file: !478, line: 126, type: !6)
!3717 = !DILocalVariable(name: "dir", scope: !3712, file: !478, line: 132, type: !6)
!3718 = !DILocalVariable(name: "base", scope: !3712, file: !478, line: 133, type: !6)
!3719 = !DILocalVariable(name: "file_name", scope: !3712, file: !478, line: 134, type: !32)
!3720 = !DILocalVariable(name: "dir_len", scope: !3721, file: !478, line: 144, type: !76)
!3721 = distinct !DILexicalBlock(scope: !3712, file: !478, line: 143, column: 7)
!3722 = !DILocalVariable(name: "base_len", scope: !3721, file: !478, line: 145, type: !76)
!3723 = !DILocalVariable(name: "add_slash", scope: !3721, file: !478, line: 146, type: !25)
!3724 = !DILocalVariable(name: "fd", scope: !3710, file: !478, line: 162, type: !25)
!3725 = !DILocalVariable(name: "fp", scope: !3708, file: !478, line: 178, type: !3726)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3001, line: 49, baseType: !3728)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3003, line: 241, size: 1728, elements: !3729)
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3728, file: !3003, line: 242, baseType: !25, size: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3728, file: !3003, line: 247, baseType: !32, size: 64, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3728, file: !3003, line: 248, baseType: !32, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3728, file: !3003, line: 249, baseType: !32, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3728, file: !3003, line: 250, baseType: !32, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3728, file: !3003, line: 251, baseType: !32, size: 64, offset: 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3728, file: !3003, line: 252, baseType: !32, size: 64, offset: 384)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3728, file: !3003, line: 253, baseType: !32, size: 64, offset: 448)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3728, file: !3003, line: 254, baseType: !32, size: 64, offset: 512)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3728, file: !3003, line: 256, baseType: !32, size: 64, offset: 576)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3728, file: !3003, line: 257, baseType: !32, size: 64, offset: 640)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3728, file: !3003, line: 258, baseType: !32, size: 64, offset: 704)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3728, file: !3003, line: 260, baseType: !3743, size: 64, offset: 768)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3003, line: 156, size: 192, elements: !3745)
!3745 = !{!3746, !3747, !3749}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3744, file: !3003, line: 157, baseType: !3743, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3744, file: !3003, line: 158, baseType: !3748, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3744, file: !3003, line: 162, baseType: !25, size: 32, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3728, file: !3003, line: 262, baseType: !3748, size: 64, offset: 832)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3728, file: !3003, line: 264, baseType: !25, size: 32, offset: 896)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3728, file: !3003, line: 268, baseType: !25, size: 32, offset: 928)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3728, file: !3003, line: 270, baseType: !3029, size: 64, offset: 960)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3728, file: !3003, line: 274, baseType: !75, size: 16, offset: 1024)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3728, file: !3003, line: 275, baseType: !3034, size: 8, offset: 1040)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3728, file: !3003, line: 276, baseType: !3036, size: 8, offset: 1048)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3728, file: !3003, line: 280, baseType: !3040, size: 64, offset: 1088)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3728, file: !3003, line: 289, baseType: !3043, size: 64, offset: 1152)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3728, file: !3003, line: 297, baseType: !31, size: 64, offset: 1216)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3728, file: !3003, line: 298, baseType: !31, size: 64, offset: 1280)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3728, file: !3003, line: 299, baseType: !31, size: 64, offset: 1344)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3728, file: !3003, line: 300, baseType: !31, size: 64, offset: 1408)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3728, file: !3003, line: 302, baseType: !76, size: 64, offset: 1472)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3728, file: !3003, line: 303, baseType: !25, size: 32, offset: 1536)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3728, file: !3003, line: 305, baseType: !3051, size: 160, offset: 1568)
!3766 = !DILocalVariable(name: "res_ptr", scope: !3706, file: !478, line: 190, type: !32)
!3767 = !DILocalVariable(name: "res_size", scope: !3706, file: !478, line: 191, type: !76)
!3768 = !DILocalVariable(name: "c", scope: !3703, file: !478, line: 195, type: !25)
!3769 = !DILocalVariable(name: "buf2", scope: !3703, file: !478, line: 197, type: !3770)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3771)
!3771 = !{!3772}
!3772 = !DISubrange(count: 51)
!3773 = !DILocalVariable(name: "l1", scope: !3703, file: !478, line: 198, type: !76)
!3774 = !DILocalVariable(name: "l2", scope: !3703, file: !478, line: 198, type: !76)
!3775 = !DILocalVariable(name: "old_res_ptr", scope: !3703, file: !478, line: 199, type: !32)
!3776 = !DILocation(line: 196, column: 28, scope: !3703, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 589, column: 18, scope: !3700)
!3778 = !DILocation(line: 197, column: 28, scope: !3703, inlinedAt: !3777)
!3779 = !DILocation(line: 403, column: 13, scope: !3690)
!3780 = !DILocation(line: 395, column: 15, scope: !3690)
!3781 = !DILocation(line: 584, column: 15, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3690, file: !478, line: 584, column: 7)
!3783 = !DILocation(line: 584, column: 7, scope: !3690)
!3784 = !DILocation(line: 128, column: 8, scope: !3714, inlinedAt: !3777)
!3785 = !DILocation(line: 126, column: 15, scope: !3714, inlinedAt: !3777)
!3786 = !DILocation(line: 129, column: 10, scope: !3713, inlinedAt: !3777)
!3787 = !DILocation(line: 129, column: 7, scope: !3714, inlinedAt: !3777)
!3788 = !DILocation(line: 138, column: 13, scope: !3712, inlinedAt: !3777)
!3789 = !DILocation(line: 132, column: 19, scope: !3712, inlinedAt: !3777)
!3790 = !DILocation(line: 139, column: 15, scope: !3791, inlinedAt: !3777)
!3791 = distinct !DILexicalBlock(scope: !3712, file: !478, line: 139, column: 11)
!3792 = !DILocation(line: 139, column: 23, scope: !3791, inlinedAt: !3777)
!3793 = !DILocation(line: 139, column: 26, scope: !3794, inlinedAt: !3777)
!3794 = !DILexicalBlockFile(scope: !3791, file: !478, discriminator: 1)
!3795 = !DILocation(line: 139, column: 33, scope: !3794, inlinedAt: !3777)
!3796 = !DILocation(line: 139, column: 11, scope: !3797, inlinedAt: !3777)
!3797 = !DILexicalBlockFile(scope: !3712, file: !478, discriminator: 1)
!3798 = !DILocation(line: 140, column: 9, scope: !3791, inlinedAt: !3777)
!3799 = !DILocation(line: 144, column: 26, scope: !3721, inlinedAt: !3777)
!3800 = !DILocation(line: 144, column: 16, scope: !3721, inlinedAt: !3777)
!3801 = !DILocation(line: 145, column: 16, scope: !3721, inlinedAt: !3777)
!3802 = !DILocation(line: 146, column: 34, scope: !3721, inlinedAt: !3777)
!3803 = !DILocation(line: 146, column: 38, scope: !3721, inlinedAt: !3777)
!3804 = !DILocation(line: 146, column: 42, scope: !3805, inlinedAt: !3777)
!3805 = !DILexicalBlockFile(scope: !3721, file: !478, discriminator: 1)
!3806 = !DILocation(line: 146, column: 41, scope: !3805, inlinedAt: !3777)
!3807 = !DILocation(line: 147, column: 48, scope: !3721, inlinedAt: !3777)
!3808 = !DILocation(line: 147, column: 46, scope: !3721, inlinedAt: !3777)
!3809 = !DILocation(line: 147, column: 69, scope: !3721, inlinedAt: !3777)
!3810 = !DILocation(line: 147, column: 30, scope: !3721, inlinedAt: !3777)
!3811 = !DILocation(line: 134, column: 13, scope: !3712, inlinedAt: !3777)
!3812 = !DILocation(line: 148, column: 13, scope: !3721, inlinedAt: !3777)
!3813 = !DILocation(line: 150, column: 13, scope: !3814, inlinedAt: !3777)
!3814 = distinct !DILexicalBlock(scope: !3815, file: !478, line: 149, column: 11)
!3815 = distinct !DILexicalBlock(scope: !3721, file: !478, line: 148, column: 13)
!3816 = !DILocation(line: 151, column: 17, scope: !3814, inlinedAt: !3777)
!3817 = !DILocation(line: 152, column: 34, scope: !3818, inlinedAt: !3777)
!3818 = distinct !DILexicalBlock(scope: !3814, file: !478, line: 151, column: 17)
!3819 = !DILocation(line: 153, column: 41, scope: !3814, inlinedAt: !3777)
!3820 = !DILocation(line: 153, column: 13, scope: !3814, inlinedAt: !3777)
!3821 = !DILocation(line: 157, column: 11, scope: !3712, inlinedAt: !3777)
!3822 = !DILocation(line: 171, column: 16, scope: !3710, inlinedAt: !3777)
!3823 = !DILocation(line: 162, column: 15, scope: !3710, inlinedAt: !3777)
!3824 = !DILocation(line: 173, column: 18, scope: !3709, inlinedAt: !3777)
!3825 = !DILocation(line: 173, column: 15, scope: !3710, inlinedAt: !3777)
!3826 = !DILocation(line: 180, column: 20, scope: !3708, inlinedAt: !3777)
!3827 = !DILocation(line: 178, column: 21, scope: !3708, inlinedAt: !3777)
!3828 = !DILocation(line: 181, column: 22, scope: !3707, inlinedAt: !3777)
!3829 = !DILocation(line: 181, column: 19, scope: !3708, inlinedAt: !3777)
!3830 = !DILocation(line: 190, column: 25, scope: !3706, inlinedAt: !3777)
!3831 = !DILocation(line: 184, column: 19, scope: !3832, inlinedAt: !3777)
!3832 = distinct !DILexicalBlock(scope: !3707, file: !478, line: 182, column: 17)
!3833 = !DILocation(line: 186, column: 17, scope: !3832, inlinedAt: !3777)
!3834 = !DILocation(line: 191, column: 26, scope: !3706, inlinedAt: !3777)
!3835 = !DILocation(line: 196, column: 23, scope: !3703, inlinedAt: !3777)
!3836 = !DILocation(line: 197, column: 23, scope: !3703, inlinedAt: !3777)
!3837 = !DILocalVariable(name: "__fp", arg: 1, scope: !3838, file: !886, line: 63, type: !3726)
!3838 = distinct !DISubprogram(name: "getc_unlocked", scope: !886, file: !886, line: 63, type: !3839, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!25, !3726}
!3841 = !{!3837}
!3842 = !DILocation(line: 63, column: 22, scope: !3838, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 201, column: 27, scope: !3703, inlinedAt: !3777)
!3844 = !DILocation(line: 65, column: 10, scope: !3838, inlinedAt: !3843)
!3845 = !{!894, !584, i64 8}
!3846 = !{!894, !584, i64 16}
!3847 = !DILocation(line: 65, column: 10, scope: !3848, inlinedAt: !3843)
!3848 = !DILexicalBlockFile(scope: !3838, file: !886, discriminator: 1)
!3849 = !DILocation(line: 65, column: 10, scope: !3850, inlinedAt: !3843)
!3850 = !DILexicalBlockFile(scope: !3838, file: !886, discriminator: 2)
!3851 = !DILocation(line: 65, column: 10, scope: !3852, inlinedAt: !3843)
!3852 = !DILexicalBlockFile(scope: !3838, file: !886, discriminator: 3)
!3853 = !DILocation(line: 195, column: 27, scope: !3703, inlinedAt: !3777)
!3854 = !DILocation(line: 202, column: 27, scope: !3703, inlinedAt: !3777)
!3855 = !DILocation(line: 63, column: 22, scope: !3838, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 210, column: 33, scope: !3857, inlinedAt: !3777)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !478, line: 207, column: 25)
!3858 = distinct !DILexicalBlock(scope: !3703, file: !478, line: 206, column: 27)
!3859 = !DILocation(line: 65, column: 10, scope: !3838, inlinedAt: !3856)
!3860 = !DILocation(line: 65, column: 10, scope: !3848, inlinedAt: !3856)
!3861 = !DILocation(line: 65, column: 10, scope: !3850, inlinedAt: !3856)
!3862 = !DILocation(line: 65, column: 10, scope: !3852, inlinedAt: !3856)
!3863 = !DILocation(line: 210, column: 29, scope: !3864, inlinedAt: !3777)
!3864 = !DILexicalBlockFile(scope: !3857, file: !478, discriminator: 1)
!3865 = distinct !{!3865, !3866, !3867}
!3866 = !DILocation(line: 193, column: 19, scope: !3705)
!3867 = !DILocation(line: 241, column: 21, scope: !3705)
!3868 = !DILocation(line: 216, column: 23, scope: !3703, inlinedAt: !3777)
!3869 = !DILocation(line: 217, column: 27, scope: !3870, inlinedAt: !3777)
!3870 = distinct !DILexicalBlock(scope: !3703, file: !478, line: 217, column: 27)
!3871 = !DILocation(line: 217, column: 64, scope: !3870, inlinedAt: !3777)
!3872 = !DILocation(line: 217, column: 27, scope: !3703, inlinedAt: !3777)
!3873 = !DILocation(line: 219, column: 28, scope: !3703, inlinedAt: !3777)
!3874 = !DILocation(line: 198, column: 30, scope: !3703, inlinedAt: !3777)
!3875 = !DILocation(line: 220, column: 28, scope: !3703, inlinedAt: !3777)
!3876 = !DILocation(line: 198, column: 34, scope: !3703, inlinedAt: !3777)
!3877 = !DILocation(line: 199, column: 29, scope: !3703, inlinedAt: !3777)
!3878 = !DILocation(line: 222, column: 36, scope: !3879, inlinedAt: !3777)
!3879 = distinct !DILexicalBlock(scope: !3703, file: !478, line: 222, column: 27)
!3880 = !DILocation(line: 222, column: 27, scope: !3703, inlinedAt: !3777)
!3881 = !DILocation(line: 225, column: 63, scope: !3882, inlinedAt: !3777)
!3882 = distinct !DILexicalBlock(scope: !3879, file: !478, line: 223, column: 25)
!3883 = !DILocation(line: 225, column: 46, scope: !3882, inlinedAt: !3777)
!3884 = !DILocation(line: 226, column: 25, scope: !3882, inlinedAt: !3777)
!3885 = !DILocation(line: 229, column: 36, scope: !3886, inlinedAt: !3777)
!3886 = distinct !DILexicalBlock(scope: !3879, file: !478, line: 228, column: 25)
!3887 = !DILocation(line: 230, column: 73, scope: !3886, inlinedAt: !3777)
!3888 = !DILocation(line: 230, column: 46, scope: !3886, inlinedAt: !3777)
!3889 = !DILocation(line: 232, column: 35, scope: !3890, inlinedAt: !3777)
!3890 = distinct !DILexicalBlock(scope: !3703, file: !478, line: 232, column: 27)
!3891 = !DILocation(line: 232, column: 27, scope: !3703, inlinedAt: !3777)
!3892 = !DILocation(line: 236, column: 27, scope: !3893, inlinedAt: !3777)
!3893 = distinct !DILexicalBlock(scope: !3890, file: !478, line: 233, column: 25)
!3894 = !DILocation(line: 237, column: 27, scope: !3893, inlinedAt: !3777)
!3895 = !DILocation(line: 239, column: 39, scope: !3703, inlinedAt: !3777)
!3896 = !DILocation(line: 239, column: 50, scope: !3703, inlinedAt: !3777)
!3897 = !DILocation(line: 239, column: 61, scope: !3703, inlinedAt: !3777)
!3898 = !DILocalVariable(name: "__dest", arg: 1, scope: !3899, file: !3900, line: 107, type: !3903)
!3899 = distinct !DISubprogram(name: "strcpy", scope: !3900, file: !3900, line: 107, type: !3901, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3905)
!3900 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!32, !3903, !3904}
!3903 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!3904 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3905 = !{!3898, !3906}
!3906 = !DILocalVariable(name: "__src", arg: 2, scope: !3899, file: !3900, line: 107, type: !3904)
!3907 = !DILocation(line: 107, column: 1, scope: !3899, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 239, column: 23, scope: !3703, inlinedAt: !3777)
!3909 = !DILocation(line: 109, column: 49, scope: !3899, inlinedAt: !3908)
!3910 = !DILocation(line: 109, column: 10, scope: !3899, inlinedAt: !3908)
!3911 = !DILocation(line: 107, column: 1, scope: !3899, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 240, column: 23, scope: !3703, inlinedAt: !3777)
!3913 = !DILocation(line: 109, column: 49, scope: !3899, inlinedAt: !3912)
!3914 = !DILocation(line: 109, column: 10, scope: !3899, inlinedAt: !3912)
!3915 = !DILocation(line: 241, column: 21, scope: !3704, inlinedAt: !3777)
!3916 = !DILocation(line: 242, column: 19, scope: !3706, inlinedAt: !3777)
!3917 = !DILocation(line: 243, column: 32, scope: !3918, inlinedAt: !3777)
!3918 = distinct !DILexicalBlock(scope: !3706, file: !478, line: 243, column: 23)
!3919 = !DILocation(line: 243, column: 23, scope: !3706, inlinedAt: !3777)
!3920 = !DILocation(line: 247, column: 33, scope: !3921, inlinedAt: !3777)
!3921 = distinct !DILexicalBlock(scope: !3918, file: !478, line: 246, column: 21)
!3922 = !DILocation(line: 247, column: 45, scope: !3921, inlinedAt: !3777)
!3923 = !DILocation(line: 253, column: 11, scope: !3710, inlinedAt: !3777)
!3924 = !DILocation(line: 377, column: 23, scope: !3712, inlinedAt: !3777)
!3925 = !DILocation(line: 378, column: 5, scope: !3712, inlinedAt: !3777)
!3926 = !DILocation(line: 396, column: 15, scope: !3690)
!3927 = !DILocation(line: 590, column: 8, scope: !3699)
!3928 = !DILocation(line: 590, column: 17, scope: !3699)
!3929 = !DILocation(line: 589, column: 3, scope: !3930)
!3930 = !DILexicalBlockFile(scope: !3700, file: !478, discriminator: 1)
!3931 = !DILocation(line: 592, column: 9, scope: !3697)
!3932 = !DILocation(line: 592, column: 35, scope: !3698)
!3933 = !DILocation(line: 593, column: 9, scope: !3698)
!3934 = !DILocation(line: 593, column: 24, scope: !3935)
!3935 = !DILexicalBlockFile(scope: !3698, file: !478, discriminator: 1)
!3936 = !DILocation(line: 593, column: 31, scope: !3935)
!3937 = !DILocation(line: 593, column: 34, scope: !3938)
!3938 = !DILexicalBlockFile(scope: !3698, file: !478, discriminator: 2)
!3939 = !DILocation(line: 593, column: 45, scope: !3938)
!3940 = !DILocation(line: 592, column: 9, scope: !3941)
!3941 = !DILexicalBlockFile(scope: !3699, file: !478, discriminator: 1)
!3942 = !DILocation(line: 595, column: 29, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3698, file: !478, line: 594, column: 7)
!3944 = !DILocation(line: 595, column: 27, scope: !3943)
!3945 = !DILocation(line: 595, column: 46, scope: !3943)
!3946 = !DILocation(line: 596, column: 9, scope: !3943)
!3947 = !DILocation(line: 591, column: 19, scope: !3699)
!3948 = !DILocation(line: 591, column: 36, scope: !3699)
!3949 = !DILocation(line: 591, column: 16, scope: !3699)
!3950 = !DILocation(line: 591, column: 52, scope: !3941)
!3951 = !DILocation(line: 591, column: 69, scope: !3699)
!3952 = !DILocation(line: 591, column: 49, scope: !3699)
!3953 = distinct !{!3953, !3954, !3955}
!3954 = !DILocation(line: 589, column: 3, scope: !3700)
!3955 = !DILocation(line: 597, column: 7, scope: !3700)
!3956 = !DILocation(line: 602, column: 7, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3690, file: !478, line: 602, column: 7)
!3958 = !DILocation(line: 602, column: 18, scope: !3957)
!3959 = !DILocation(line: 602, column: 7, scope: !3690)
!3960 = !DILocation(line: 612, column: 3, scope: !3690)
!3961 = distinct !DISubprogram(name: "rpl_fclose", scope: !3962, file: !3962, line: 56, type: !3963, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !4005)
!3962 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!25, !3965}
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3001, line: 49, baseType: !3967)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3003, line: 241, size: 1728, elements: !3968)
!3968 = !{!3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3967, file: !3003, line: 242, baseType: !25, size: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3967, file: !3003, line: 247, baseType: !32, size: 64, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3967, file: !3003, line: 248, baseType: !32, size: 64, offset: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3967, file: !3003, line: 249, baseType: !32, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3967, file: !3003, line: 250, baseType: !32, size: 64, offset: 256)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3967, file: !3003, line: 251, baseType: !32, size: 64, offset: 320)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3967, file: !3003, line: 252, baseType: !32, size: 64, offset: 384)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3967, file: !3003, line: 253, baseType: !32, size: 64, offset: 448)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3967, file: !3003, line: 254, baseType: !32, size: 64, offset: 512)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3967, file: !3003, line: 256, baseType: !32, size: 64, offset: 576)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3967, file: !3003, line: 257, baseType: !32, size: 64, offset: 640)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3967, file: !3003, line: 258, baseType: !32, size: 64, offset: 704)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3967, file: !3003, line: 260, baseType: !3982, size: 64, offset: 768)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3003, line: 156, size: 192, elements: !3984)
!3984 = !{!3985, !3986, !3988}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3983, file: !3003, line: 157, baseType: !3982, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3983, file: !3003, line: 158, baseType: !3987, size: 64, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3983, file: !3003, line: 162, baseType: !25, size: 32, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3967, file: !3003, line: 262, baseType: !3987, size: 64, offset: 832)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3967, file: !3003, line: 264, baseType: !25, size: 32, offset: 896)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3967, file: !3003, line: 268, baseType: !25, size: 32, offset: 928)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3967, file: !3003, line: 270, baseType: !3029, size: 64, offset: 960)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3967, file: !3003, line: 274, baseType: !75, size: 16, offset: 1024)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3967, file: !3003, line: 275, baseType: !3034, size: 8, offset: 1040)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3967, file: !3003, line: 276, baseType: !3036, size: 8, offset: 1048)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3967, file: !3003, line: 280, baseType: !3040, size: 64, offset: 1088)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3967, file: !3003, line: 289, baseType: !3043, size: 64, offset: 1152)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3967, file: !3003, line: 297, baseType: !31, size: 64, offset: 1216)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3967, file: !3003, line: 298, baseType: !31, size: 64, offset: 1280)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3967, file: !3003, line: 299, baseType: !31, size: 64, offset: 1344)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3967, file: !3003, line: 300, baseType: !31, size: 64, offset: 1408)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3967, file: !3003, line: 302, baseType: !76, size: 64, offset: 1472)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3967, file: !3003, line: 303, baseType: !25, size: 32, offset: 1536)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3967, file: !3003, line: 305, baseType: !3051, size: 160, offset: 1568)
!4005 = !{!4006, !4007, !4008, !4009}
!4006 = !DILocalVariable(name: "fp", arg: 1, scope: !3961, file: !3962, line: 56, type: !3965)
!4007 = !DILocalVariable(name: "saved_errno", scope: !3961, file: !3962, line: 58, type: !25)
!4008 = !DILocalVariable(name: "fd", scope: !3961, file: !3962, line: 59, type: !25)
!4009 = !DILocalVariable(name: "result", scope: !3961, file: !3962, line: 60, type: !25)
!4010 = !DILocation(line: 56, column: 19, scope: !3961)
!4011 = !DILocation(line: 58, column: 7, scope: !3961)
!4012 = !DILocation(line: 60, column: 7, scope: !3961)
!4013 = !DILocation(line: 63, column: 8, scope: !3961)
!4014 = !DILocation(line: 59, column: 7, scope: !3961)
!4015 = !DILocation(line: 64, column: 10, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3961, file: !3962, line: 64, column: 7)
!4017 = !DILocation(line: 64, column: 7, scope: !3961)
!4018 = !DILocation(line: 65, column: 12, scope: !4016)
!4019 = !DILocation(line: 65, column: 5, scope: !4016)
!4020 = !DILocation(line: 70, column: 9, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3961, file: !3962, line: 70, column: 7)
!4022 = !DILocation(line: 70, column: 23, scope: !4021)
!4023 = !DILocation(line: 70, column: 33, scope: !4024)
!4024 = !DILexicalBlockFile(scope: !4021, file: !3962, discriminator: 1)
!4025 = !DILocation(line: 70, column: 26, scope: !4026)
!4026 = !DILexicalBlockFile(scope: !4021, file: !3962, discriminator: 3)
!4027 = !DILocation(line: 70, column: 59, scope: !4024)
!4028 = !DILocation(line: 71, column: 7, scope: !4021)
!4029 = !DILocation(line: 71, column: 10, scope: !4024)
!4030 = !DILocation(line: 70, column: 7, scope: !4031)
!4031 = !DILexicalBlockFile(scope: !3961, file: !3962, discriminator: 2)
!4032 = !DILocation(line: 98, column: 12, scope: !3961)
!4033 = !DILocation(line: 103, column: 7, scope: !3961)
!4034 = !DILocation(line: 72, column: 19, scope: !4021)
!4035 = !DILocation(line: 103, column: 19, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !3961, file: !3962, line: 103, column: 7)
!4037 = !DILocation(line: 105, column: 13, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4036, file: !3962, line: 104, column: 5)
!4039 = !DILocation(line: 107, column: 5, scope: !4038)
!4040 = !DILocation(line: 110, column: 1, scope: !3961)
!4041 = distinct !DISubprogram(name: "rpl_fflush", scope: !4042, file: !4042, line: 127, type: !4043, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !4085)
!4042 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!25, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3001, line: 49, baseType: !4047)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3003, line: 241, size: 1728, elements: !4048)
!4048 = !{!4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4047, file: !3003, line: 242, baseType: !25, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4047, file: !3003, line: 247, baseType: !32, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4047, file: !3003, line: 248, baseType: !32, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4047, file: !3003, line: 249, baseType: !32, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4047, file: !3003, line: 250, baseType: !32, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4047, file: !3003, line: 251, baseType: !32, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4047, file: !3003, line: 252, baseType: !32, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4047, file: !3003, line: 253, baseType: !32, size: 64, offset: 448)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4047, file: !3003, line: 254, baseType: !32, size: 64, offset: 512)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4047, file: !3003, line: 256, baseType: !32, size: 64, offset: 576)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4047, file: !3003, line: 257, baseType: !32, size: 64, offset: 640)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4047, file: !3003, line: 258, baseType: !32, size: 64, offset: 704)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4047, file: !3003, line: 260, baseType: !4062, size: 64, offset: 768)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3003, line: 156, size: 192, elements: !4064)
!4064 = !{!4065, !4066, !4068}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4063, file: !3003, line: 157, baseType: !4062, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4063, file: !3003, line: 158, baseType: !4067, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4063, file: !3003, line: 162, baseType: !25, size: 32, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4047, file: !3003, line: 262, baseType: !4067, size: 64, offset: 832)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4047, file: !3003, line: 264, baseType: !25, size: 32, offset: 896)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4047, file: !3003, line: 268, baseType: !25, size: 32, offset: 928)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4047, file: !3003, line: 270, baseType: !3029, size: 64, offset: 960)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4047, file: !3003, line: 274, baseType: !75, size: 16, offset: 1024)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4047, file: !3003, line: 275, baseType: !3034, size: 8, offset: 1040)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4047, file: !3003, line: 276, baseType: !3036, size: 8, offset: 1048)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4047, file: !3003, line: 280, baseType: !3040, size: 64, offset: 1088)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4047, file: !3003, line: 289, baseType: !3043, size: 64, offset: 1152)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4047, file: !3003, line: 297, baseType: !31, size: 64, offset: 1216)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4047, file: !3003, line: 298, baseType: !31, size: 64, offset: 1280)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4047, file: !3003, line: 299, baseType: !31, size: 64, offset: 1344)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4047, file: !3003, line: 300, baseType: !31, size: 64, offset: 1408)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4047, file: !3003, line: 302, baseType: !76, size: 64, offset: 1472)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4047, file: !3003, line: 303, baseType: !25, size: 32, offset: 1536)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4047, file: !3003, line: 305, baseType: !3051, size: 160, offset: 1568)
!4085 = !{!4086}
!4086 = !DILocalVariable(name: "stream", arg: 1, scope: !4041, file: !4042, line: 127, type: !4045)
!4087 = !DILocation(line: 127, column: 19, scope: !4041)
!4088 = !DILocation(line: 148, column: 14, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4041, file: !4042, line: 148, column: 7)
!4090 = !DILocation(line: 148, column: 22, scope: !4089)
!4091 = !DILocation(line: 148, column: 27, scope: !4092)
!4092 = !DILexicalBlockFile(scope: !4089, file: !4042, discriminator: 1)
!4093 = !DILocation(line: 148, column: 7, scope: !4094)
!4094 = !DILexicalBlockFile(scope: !4041, file: !4042, discriminator: 1)
!4095 = !DILocation(line: 149, column: 12, scope: !4089)
!4096 = !DILocation(line: 149, column: 5, scope: !4089)
!4097 = !DILocalVariable(name: "fp", arg: 1, scope: !4098, file: !4042, line: 40, type: !4045)
!4098 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4042, file: !4042, line: 40, type: !4099, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !4045}
!4101 = !{!4097}
!4102 = !DILocation(line: 40, column: 48, scope: !4098, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 153, column: 3, scope: !4041)
!4104 = !DILocation(line: 42, column: 11, scope: !4105, inlinedAt: !4103)
!4105 = distinct !DILexicalBlock(scope: !4098, file: !4042, line: 42, column: 7)
!4106 = !DILocation(line: 42, column: 18, scope: !4105, inlinedAt: !4103)
!4107 = !DILocation(line: 42, column: 7, scope: !4098, inlinedAt: !4103)
!4108 = !DILocation(line: 44, column: 5, scope: !4105, inlinedAt: !4103)
!4109 = !DILocation(line: 155, column: 10, scope: !4041)
!4110 = !DILocation(line: 155, column: 3, scope: !4041)
!4111 = !DILocation(line: 229, column: 1, scope: !4041)
!4112 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4113, file: !4113, line: 28, type: !4114, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !4157)
!4113 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!25, !4116, !4156, !25}
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3001, line: 49, baseType: !4118)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3003, line: 241, size: 1728, elements: !4119)
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4118, file: !3003, line: 242, baseType: !25, size: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4118, file: !3003, line: 247, baseType: !32, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4118, file: !3003, line: 248, baseType: !32, size: 64, offset: 128)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4118, file: !3003, line: 249, baseType: !32, size: 64, offset: 192)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4118, file: !3003, line: 250, baseType: !32, size: 64, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4118, file: !3003, line: 251, baseType: !32, size: 64, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4118, file: !3003, line: 252, baseType: !32, size: 64, offset: 384)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4118, file: !3003, line: 253, baseType: !32, size: 64, offset: 448)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4118, file: !3003, line: 254, baseType: !32, size: 64, offset: 512)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4118, file: !3003, line: 256, baseType: !32, size: 64, offset: 576)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4118, file: !3003, line: 257, baseType: !32, size: 64, offset: 640)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4118, file: !3003, line: 258, baseType: !32, size: 64, offset: 704)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4118, file: !3003, line: 260, baseType: !4133, size: 64, offset: 768)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3003, line: 156, size: 192, elements: !4135)
!4135 = !{!4136, !4137, !4139}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4134, file: !3003, line: 157, baseType: !4133, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4134, file: !3003, line: 158, baseType: !4138, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4134, file: !3003, line: 162, baseType: !25, size: 32, offset: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4118, file: !3003, line: 262, baseType: !4138, size: 64, offset: 832)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4118, file: !3003, line: 264, baseType: !25, size: 32, offset: 896)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4118, file: !3003, line: 268, baseType: !25, size: 32, offset: 928)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4118, file: !3003, line: 270, baseType: !3029, size: 64, offset: 960)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4118, file: !3003, line: 274, baseType: !75, size: 16, offset: 1024)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4118, file: !3003, line: 275, baseType: !3034, size: 8, offset: 1040)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4118, file: !3003, line: 276, baseType: !3036, size: 8, offset: 1048)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4118, file: !3003, line: 280, baseType: !3040, size: 64, offset: 1088)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4118, file: !3003, line: 289, baseType: !3043, size: 64, offset: 1152)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4118, file: !3003, line: 297, baseType: !31, size: 64, offset: 1216)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4118, file: !3003, line: 298, baseType: !31, size: 64, offset: 1280)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4118, file: !3003, line: 299, baseType: !31, size: 64, offset: 1344)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4118, file: !3003, line: 300, baseType: !31, size: 64, offset: 1408)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4118, file: !3003, line: 302, baseType: !76, size: 64, offset: 1472)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4118, file: !3003, line: 303, baseType: !25, size: 32, offset: 1536)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4118, file: !3003, line: 305, baseType: !3051, size: 160, offset: 1568)
!4156 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3001, line: 91, baseType: !3029)
!4157 = !{!4158, !4159, !4160, !4161}
!4158 = !DILocalVariable(name: "fp", arg: 1, scope: !4112, file: !4113, line: 28, type: !4116)
!4159 = !DILocalVariable(name: "offset", arg: 2, scope: !4112, file: !4113, line: 28, type: !4156)
!4160 = !DILocalVariable(name: "whence", arg: 3, scope: !4112, file: !4113, line: 28, type: !25)
!4161 = !DILocalVariable(name: "pos", scope: !4162, file: !4113, line: 116, type: !4156)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !4113, line: 112, column: 5)
!4163 = distinct !DILexicalBlock(scope: !4112, file: !4113, line: 51, column: 7)
!4164 = !DILocation(line: 28, column: 15, scope: !4112)
!4165 = !DILocation(line: 28, column: 25, scope: !4112)
!4166 = !DILocation(line: 28, column: 37, scope: !4112)
!4167 = !DILocation(line: 51, column: 11, scope: !4163)
!4168 = !DILocation(line: 51, column: 31, scope: !4163)
!4169 = !DILocation(line: 51, column: 24, scope: !4163)
!4170 = !DILocation(line: 52, column: 7, scope: !4163)
!4171 = !DILocation(line: 52, column: 14, scope: !4172)
!4172 = !DILexicalBlockFile(scope: !4163, file: !4113, discriminator: 1)
!4173 = !DILocation(line: 52, column: 35, scope: !4172)
!4174 = !{!894, !584, i64 32}
!4175 = !DILocation(line: 52, column: 28, scope: !4172)
!4176 = !DILocation(line: 53, column: 7, scope: !4163)
!4177 = !DILocation(line: 53, column: 14, scope: !4172)
!4178 = !{!894, !584, i64 72}
!4179 = !DILocation(line: 53, column: 28, scope: !4172)
!4180 = !DILocation(line: 51, column: 7, scope: !4181)
!4181 = !DILexicalBlockFile(scope: !4112, file: !4113, discriminator: 1)
!4182 = !DILocation(line: 116, column: 26, scope: !4162)
!4183 = !DILocation(line: 116, column: 19, scope: !4184)
!4184 = !DILexicalBlockFile(scope: !4162, file: !4113, discriminator: 1)
!4185 = !DILocation(line: 116, column: 13, scope: !4162)
!4186 = !DILocation(line: 117, column: 15, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4162, file: !4113, line: 117, column: 11)
!4188 = !DILocation(line: 117, column: 11, scope: !4162)
!4189 = !DILocation(line: 127, column: 11, scope: !4162)
!4190 = !DILocation(line: 127, column: 18, scope: !4162)
!4191 = !DILocation(line: 128, column: 11, scope: !4162)
!4192 = !DILocation(line: 128, column: 19, scope: !4162)
!4193 = !{!894, !896, i64 144}
!4194 = !DILocation(line: 159, column: 7, scope: !4162)
!4195 = !DILocation(line: 161, column: 10, scope: !4112)
!4196 = !DILocation(line: 161, column: 3, scope: !4112)
!4197 = !DILocation(line: 162, column: 1, scope: !4112)
