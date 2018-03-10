; ModuleID = 'coreutils-8.27/src/nohup.bc'
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
@.str.1 = private unnamed_addr constant [45 x i8] c"Usage: %s COMMAND [ARG]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Run COMMAND, ignoring hangup signals.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [291 x i8] c"\0AIf standard input is a terminal, redirect it from an unreadable file.\0AIf standard output is a terminal, append output to 'nohup.out' if possible,\0A'$HOME/nohup.out' otherwise.\0AIf standard error is a terminal, redirect it to standard output.\0ATo save output to FILE, use '%s COMMAND > FILE'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nohup\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"failed to render standard input unusable\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"ignoring input\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"nohup.out\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"ignoring input and appending output to %s\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"appending output to %s\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"failed to set the copy of stderr to close on exec\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"ignoring input and redirecting stderr to stdout\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"redirecting stderr to stdout\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"failed to redirect standard error\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !0
@.str.29 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.47 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.48, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.49, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.48 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.49 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.54 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.60, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.66, i32 0, i32 0), i8* null], align 16, !dbg !53
@.str.57 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.58 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.59 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.60 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.61 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.62 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.63 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.64 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.65 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.66 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.67 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.69 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.70 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.71 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.72 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.73 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
@.str.80 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.82 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.83 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.96 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.97 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.98 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.99 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.100 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.101 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.112 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !149
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !186
@.str.3.132 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.133 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.134 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.135 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.136 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !649 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !651, metadata !652), !dbg !653
  %2 = icmp eq i32 %0, 0, !dbg !654
  br i1 %2, label %8, label %3, !dbg !656

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !657, !tbaa !660
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !657
  %6 = load i8*, i8** @program_name, align 8, !dbg !657, !tbaa !660
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !664
  br label %41, !dbg !666

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !668
  %10 = load i8*, i8** @program_name, align 8, !dbg !668, !tbaa !660
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !670
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !672
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !660
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !673
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !674
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !674, !tbaa !660
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !675
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !676
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !676, !tbaa !660
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !677
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([291 x i8], [291 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !678
  %22 = load i8*, i8** @program_name, align 8, !dbg !678, !tbaa !660
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* %22) #10, !dbg !679
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !680
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !681
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !566, metadata !652) #10, !dbg !682
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !566, metadata !652) #10, !dbg !682
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !684
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0)) #10, !dbg !685
  %28 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !687
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !577, metadata !652) #10, !dbg !688
  %29 = icmp eq i8* %28, null, !dbg !689
  br i1 %29, label %36, label %30, !dbg !690

; <label>:30:                                     ; preds = %8
  %31 = tail call i32 @strncmp(i8* nonnull %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 3) #13, !dbg !691
  %32 = icmp eq i32 %31, 0, !dbg !691
  br i1 %32, label %36, label %33, !dbg !693

; <label>:33:                                     ; preds = %30
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.40, i64 0, i64 0), i32 5) #10, !dbg !695
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !697
  br label %36, !dbg !699

; <label>:36:                                     ; preds = %8, %30, %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !700
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !701
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !702
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0)) #10, !dbg !703
  br label %41

; <label>:41:                                     ; preds = %36, %3
  tail call void @exit(i32 %0) #14, !dbg !704
  unreachable, !dbg !704
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !705 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !710, metadata !652), !dbg !740
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !711, metadata !652), !dbg !741
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !712, metadata !652), !dbg !742
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !713, metadata !652), !dbg !743
  %3 = load i8*, i8** %1, align 8, !dbg !744, !tbaa !660
  tail call void @set_program_name(i8* %3) #10, !dbg !745
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !746
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !747
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !748
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !749
  %8 = icmp ne i8* %7, null, !dbg !749
  %9 = select i1 %8, i32 127, i32 125, !dbg !749
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !718, metadata !652), !dbg !750
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !751, metadata !652), !dbg !754
  store volatile i32 %9, i32* @exit_failure, align 4, !dbg !756, !tbaa !758
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !760
  %11 = load i8*, i8** @Version, align 8, !dbg !761, !tbaa !660
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %11, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #10, !dbg !762
  %12 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !763
  %13 = icmp eq i32 %12, -1, !dbg !765
  br i1 %13, label %15, label %14, !dbg !766

; <label>:14:                                     ; preds = %2
  tail call void @usage(i32 %9) #15, !dbg !767
  unreachable, !dbg !767

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* @optind, align 4, !dbg !768, !tbaa !758
  %17 = icmp slt i32 %16, %0, !dbg !770
  br i1 %17, label %20, label %18, !dbg !771

; <label>:18:                                     ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !772
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #10, !dbg !774
  tail call void @usage(i32 %9) #15, !dbg !776
  unreachable, !dbg !776

; <label>:20:                                     ; preds = %15
  %21 = tail call i32 @isatty(i32 0) #10, !dbg !777
  %22 = icmp ne i32 %21, 0, !dbg !777
  %23 = tail call i32 @isatty(i32 1) #10, !dbg !778
  %24 = icmp ne i32 %23, 0, !dbg !778
  br i1 %24, label %29, label %25, !dbg !779

; <label>:25:                                     ; preds = %20
  %26 = tail call i32* @__errno_location() #1, !dbg !780
  %27 = load i32, i32* %26, align 4, !dbg !780, !tbaa !758
  %28 = icmp eq i32 %27, 9, !dbg !782
  br label %29

; <label>:29:                                     ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  %31 = tail call i32 @isatty(i32 2) #10, !dbg !783
  %32 = icmp ne i32 %31, 0, !dbg !783
  br i1 %22, label %33, label %45, !dbg !784

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 @fd_reopen(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 1, i32 0) #10, !dbg !785
  %35 = icmp slt i32 %34, 0, !dbg !789
  br i1 %35, label %36, label %40, !dbg !790

; <label>:36:                                     ; preds = %33
  %37 = tail call i32* @__errno_location() #1, !dbg !791
  %38 = load i32, i32* %37, align 4, !dbg !791, !tbaa !758
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !792
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %38, i8* %39) #10, !dbg !793
  br label %40, !dbg !795

; <label>:40:                                     ; preds = %36, %33
  %41 = or i32 %31, %23, !dbg !796
  %42 = icmp eq i32 %41, 0, !dbg !796
  br i1 %42, label %43, label %45, !dbg !796

; <label>:43:                                     ; preds = %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !798
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %44) #10, !dbg !799
  br label %45, !dbg !801

; <label>:45:                                     ; preds = %40, %43, %29
  br i1 %24, label %48, label %46, !dbg !802

; <label>:46:                                     ; preds = %45
  %47 = and i1 %30, %32, !dbg !803
  br i1 %47, label %51, label %91, !dbg !803

; <label>:48:                                     ; preds = %45
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !719, metadata !652), !dbg !805
  tail call void @llvm.dbg.value(metadata i32 1089, i64 0, metadata !723, metadata !652), !dbg !806
  tail call void @llvm.dbg.value(metadata i32 384, i64 0, metadata !724, metadata !652), !dbg !807
  %49 = tail call i32 @umask(i32 -385) #10, !dbg !808
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !729, metadata !652), !dbg !809
  %50 = tail call i32 @fd_reopen(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 1089, i32 384) #10, !dbg !810
  br label %54, !dbg !811

; <label>:51:                                     ; preds = %46
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !719, metadata !652), !dbg !805
  tail call void @llvm.dbg.value(metadata i32 1089, i64 0, metadata !723, metadata !652), !dbg !806
  tail call void @llvm.dbg.value(metadata i32 384, i64 0, metadata !724, metadata !652), !dbg !807
  %52 = tail call i32 @umask(i32 -385) #10, !dbg !808
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !729, metadata !652), !dbg !809
  %53 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 1089, i32 384) #10, !dbg !813
  br label %54, !dbg !814

; <label>:54:                                     ; preds = %51, %48
  %55 = phi i32 [ %49, %48 ], [ %52, %51 ]
  %56 = phi i32 [ %50, %48 ], [ %53, %51 ], !dbg !816
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !712, metadata !652), !dbg !742
  %57 = icmp slt i32 %56, 0, !dbg !818
  br i1 %57, label %58, label %83, !dbg !819

; <label>:58:                                     ; preds = %54
  %59 = tail call i32* @__errno_location() #1, !dbg !820
  %60 = load i32, i32* %59, align 4, !dbg !820, !tbaa !758
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !730, metadata !652), !dbg !821
  %61 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !822
  tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !733, metadata !652), !dbg !823
  %62 = icmp eq i8* %61, null, !dbg !824
  br i1 %62, label %74, label %63, !dbg !826

; <label>:63:                                     ; preds = %58
  %64 = tail call i8* @file_name_concat(i8* nonnull %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** null) #10, !dbg !827
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !719, metadata !652), !dbg !805
  br i1 %24, label %65, label %67, !dbg !829

; <label>:65:                                     ; preds = %63
  %66 = tail call i32 @fd_reopen(i32 1, i8* %64, i32 1089, i32 384) #10, !dbg !830
  br label %69, !dbg !831

; <label>:67:                                     ; preds = %63
  %68 = tail call i32 (i8*, i32, ...) @open(i8* %64, i32 1089, i32 384) #10, !dbg !833
  br label %69, !dbg !834

; <label>:69:                                     ; preds = %65, %67
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !712, metadata !652), !dbg !742
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !719, metadata !652), !dbg !805
  %71 = icmp slt i32 %70, 0, !dbg !836
  br i1 %71, label %72, label %83, !dbg !837

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %59, align 4, !tbaa !758
  br label %74, !dbg !837

; <label>:74:                                     ; preds = %72, %58
  %75 = phi i32 [ %73, %72 ], [ %60, %58 ], !dbg !838
  %76 = phi i8* [ %64, %72 ], [ null, %58 ]
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !734, metadata !652), !dbg !839
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !840
  %78 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !841
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %60, i8* %77, i8* %78) #10, !dbg !843
  %79 = icmp eq i8* %76, null, !dbg !845
  br i1 %79, label %141, label %80, !dbg !847

; <label>:80:                                     ; preds = %74
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !848
  %82 = tail call i8* @quotearg_style(i32 4, i8* nonnull %76) #10, !dbg !849
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %75, i8* %81, i8* %82) #10, !dbg !850
  br label %141, !dbg !852

; <label>:83:                                     ; preds = %54, %69
  %84 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), %54 ], [ %64, %69 ]
  %85 = phi i8* [ null, %54 ], [ %64, %69 ]
  %86 = phi i32 [ %56, %54 ], [ %70, %69 ]
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !712, metadata !652), !dbg !742
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !719, metadata !652), !dbg !805
  tail call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !722, metadata !652), !dbg !853
  %87 = tail call i32 @umask(i32 %55) #10, !dbg !854
  %88 = select i1 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), !dbg !855
  %89 = tail call i8* @dcgettext(i8* null, i8* %88, i32 5) #10, !dbg !855
  %90 = tail call i8* @quotearg_style(i32 4, i8* %84) #10, !dbg !856
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %89, i8* %90) #10, !dbg !857
  tail call void @free(i8* %85) #10, !dbg !858
  br label %91

; <label>:91:                                     ; preds = %46, %83
  %92 = phi i32 [ 1, %46 ], [ %86, %83 ]
  tail call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !712, metadata !652), !dbg !742
  br i1 %32, label %93, label %117, !dbg !859

; <label>:93:                                     ; preds = %91
  %94 = tail call i32 @dup_safer(i32 2) #10, !dbg !860
  tail call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !713, metadata !652), !dbg !743
  %95 = icmp sgt i32 %94, -1, !dbg !863
  br i1 %95, label %96, label %103, !dbg !865

; <label>:96:                                     ; preds = %93
  %97 = tail call i32 @set_cloexec_flag(i32 %94, i1 zeroext true) #10, !dbg !866
  %98 = icmp eq i32 %97, 0, !dbg !868
  br i1 %98, label %103, label %99, !dbg !869

; <label>:99:                                     ; preds = %96
  %100 = tail call i32* @__errno_location() #1, !dbg !871
  %101 = load i32, i32* %100, align 4, !dbg !871, !tbaa !758
  %102 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !872
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %101, i8* %102) #10, !dbg !873
  br label %103, !dbg !874

; <label>:103:                                    ; preds = %96, %99, %93
  br i1 %24, label %107, label %104, !dbg !875

; <label>:104:                                    ; preds = %103
  %105 = select i1 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), !dbg !876
  %106 = tail call i8* @dcgettext(i8* null, i8* %105, i32 5) #10, !dbg !876
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %106) #10, !dbg !878
  br label %107, !dbg !878

; <label>:107:                                    ; preds = %104, %103
  %108 = tail call i32 @dup2(i32 %92, i32 2) #10, !dbg !879
  %109 = icmp slt i32 %108, 0, !dbg !881
  br i1 %109, label %110, label %114, !dbg !882

; <label>:110:                                    ; preds = %107
  %111 = tail call i32* @__errno_location() #1, !dbg !883
  %112 = load i32, i32* %111, align 4, !dbg !883, !tbaa !758
  %113 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !884
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %112, i8* %113) #10, !dbg !885
  br label %114, !dbg !887

; <label>:114:                                    ; preds = %110, %107
  br i1 %30, label %115, label %117, !dbg !888

; <label>:115:                                    ; preds = %114
  %116 = tail call i32 @close(i32 %92) #10, !dbg !889
  br label %117, !dbg !889

; <label>:117:                                    ; preds = %114, %115, %91
  %118 = phi i32 [ %94, %115 ], [ %94, %114 ], [ 2, %91 ]
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !713, metadata !652), !dbg !743
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !891, !tbaa !660
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %119, i64 0, metadata !893, metadata !652), !dbg !951
  %120 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %119, i64 0, i32 0, !dbg !953
  %121 = load i32, i32* %120, align 8, !dbg !953, !tbaa !954
  %122 = and i32 %121, 32, !dbg !953
  %123 = icmp eq i32 %122, 0, !dbg !891
  br i1 %123, label %124, label %141, !dbg !958

; <label>:124:                                    ; preds = %117
  %125 = tail call void (i32)* @signal(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*)) #10, !dbg !959
  %126 = load i32, i32* @optind, align 4, !dbg !960, !tbaa !758
  %127 = sext i32 %126 to i64, !dbg !961
  %128 = getelementptr inbounds i8*, i8** %1, i64 %127, !dbg !961
  tail call void @llvm.dbg.value(metadata i8** %128, i64 0, metadata !737, metadata !652), !dbg !962
  %129 = load i8*, i8** %128, align 8, !dbg !963, !tbaa !660
  %130 = tail call i32 @execvp(i8* %129, i8** %128) #10, !dbg !964
  %131 = tail call i32* @__errno_location() #1, !dbg !965
  %132 = load i32, i32* %131, align 4, !dbg !965, !tbaa !758
  %133 = icmp eq i32 %132, 2, !dbg !966
  %134 = select i1 %133, i32 127, i32 126, !dbg !965
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !738, metadata !652), !dbg !967
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !739, metadata !652), !dbg !968
  %135 = tail call i32 @dup2(i32 %118, i32 2) #10, !dbg !969
  %136 = icmp eq i32 %135, 2, !dbg !971
  br i1 %136, label %137, label %141, !dbg !972

; <label>:137:                                    ; preds = %124
  %138 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !973
  %139 = load i8*, i8** %128, align 8, !dbg !974, !tbaa !660
  %140 = tail call i8* @quotearg_style(i32 4, i8* %139) #10, !dbg !975
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %132, i8* %138, i8* %140) #10, !dbg !977
  br label %141, !dbg !979

; <label>:141:                                    ; preds = %80, %74, %124, %137, %117
  %142 = phi i32 [ %9, %117 ], [ %134, %137 ], [ %134, %124 ], [ %9, %74 ], [ %9, %80 ]
  ret i32 %142, !dbg !980
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @umask(i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_cloexec_flag(i32, i1 zeroext) local_unnamed_addr #6 !dbg !981 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !986, metadata !652), !dbg !992
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !987, metadata !993), !dbg !994
  %3 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1, i32 0) #10, !dbg !995
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !988, metadata !652), !dbg !996
  %4 = icmp sgt i32 %3, -1, !dbg !997
  br i1 %4, label %5, label %14, !dbg !998

; <label>:5:                                      ; preds = %2
  %6 = or i32 %3, 1, !dbg !999
  %7 = and i32 %3, -2, !dbg !1001
  %8 = select i1 %1, i32 %6, i32 %7, !dbg !1003
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !989, metadata !652), !dbg !1004
  %9 = icmp eq i32 %3, %8, !dbg !1005
  br i1 %9, label %14, label %10, !dbg !1007

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 2, i32 %8) #10, !dbg !1008
  %12 = icmp eq i32 %11, -1, !dbg !1010
  %13 = sext i1 %12 to i32, !dbg !1011
  ret i32 %13, !dbg !1011

; <label>:14:                                     ; preds = %2, %5
  %15 = phi i32 [ 0, %5 ], [ -1, %2 ]
  ret i32 %15, !dbg !1012
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_cloexec(i32) local_unnamed_addr #6 !dbg !1013 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1017, metadata !652), !dbg !1018
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1030, i32 0) #10, !dbg !1019
  ret i32 %2, !dbg !1020
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1021 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1023, metadata !652), !dbg !1024
  store i8* %0, i8** @file_name, align 8, !dbg !1025, !tbaa !660
  ret void, !dbg !1026
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1027 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1031, metadata !993), !dbg !1032
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1033, !tbaa !1034
  ret void, !dbg !1036
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1037 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1044, !tbaa !660
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1045
  %3 = icmp eq i32 %2, 0, !dbg !1046
  br i1 %3, label %21, label %4, !dbg !1047

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1048, !tbaa !1034, !range !1050
  %6 = icmp eq i8 %5, 0, !dbg !1048
  %7 = tail call i32* @__errno_location() #1, !dbg !1051
  br i1 %6, label %11, label %8, !dbg !1053

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1054, !tbaa !758
  %10 = icmp eq i32 %9, 32, !dbg !1056
  br i1 %10, label %21, label %11, !dbg !1057

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !1059
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1041, metadata !652), !dbg !1060
  %13 = load i8*, i8** @file_name, align 8, !dbg !1061, !tbaa !660
  %14 = icmp eq i8* %13, null, !dbg !1061
  %15 = load i32, i32* %7, align 4, !tbaa !758
  br i1 %14, label %18, label %16, !dbg !1062

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1063
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1065
  br label %19, !dbg !1067

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #10, !dbg !1068
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1069, !tbaa !758
  tail call void @_exit(i32 %20) #14, !dbg !1070
  unreachable, !dbg !1070

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1071, !tbaa !660
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1073
  %24 = icmp eq i32 %23, 0, !dbg !1074
  br i1 %24, label %27, label %25, !dbg !1075

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1076, !tbaa !758
  tail call void @_exit(i32 %26) #14, !dbg !1077
  unreachable, !dbg !1077

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1078
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_reopen(i32, i8* nocapture readonly, i32, i32) local_unnamed_addr #6 !dbg !1079 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1084, metadata !652), !dbg !1093
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1085, metadata !652), !dbg !1094
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1086, metadata !652), !dbg !1095
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1087, metadata !652), !dbg !1096
  %5 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %2, i32 %3) #10, !dbg !1097
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1088, metadata !652), !dbg !1098
  %6 = icmp eq i32 %5, %0, !dbg !1099
  %7 = icmp slt i32 %5, 0, !dbg !1100
  %8 = or i1 %6, %7, !dbg !1102
  br i1 %8, label %14, label %9, !dbg !1102

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @dup2(i32 %5, i32 %0) #10, !dbg !1103
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1089, metadata !652), !dbg !1104
  %11 = tail call i32* @__errno_location() #1, !dbg !1105
  %12 = load i32, i32* %11, align 4, !dbg !1105, !tbaa !758
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1092, metadata !652), !dbg !1106
  %13 = tail call i32 @close(i32 %5) #10, !dbg !1107
  store i32 %12, i32* %11, align 4, !dbg !1108, !tbaa !758
  br label %14

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ]
  ret i32 %15, !dbg !1109
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @file_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1110 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1115, metadata !652), !dbg !1119
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1116, metadata !652), !dbg !1120
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1117, metadata !652), !dbg !1121
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #10, !dbg !1122
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1118, metadata !652), !dbg !1123
  %5 = icmp eq i8* %4, null, !dbg !1124
  br i1 %5, label %6, label %7, !dbg !1126

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !1127
  unreachable, !dbg !1127

; <label>:7:                                      ; preds = %3
  ret i8* %4, !dbg !1128
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1129 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1132, metadata !652), !dbg !1143
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1133, metadata !652), !dbg !1144
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1134, metadata !652), !dbg !1145
  %4 = tail call i8* @last_component(i8* %0) #13, !dbg !1146
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1135, metadata !652), !dbg !1147
  %5 = tail call i64 @base_len(i8* %4) #13, !dbg !1148
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1136, metadata !652), !dbg !1149
  %6 = ptrtoint i8* %4 to i64, !dbg !1150
  %7 = ptrtoint i8* %0 to i64, !dbg !1150
  %8 = sub i64 %6, %7, !dbg !1150
  %9 = add i64 %8, %5, !dbg !1151
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1137, metadata !652), !dbg !1152
  %10 = icmp eq i64 %5, 0, !dbg !1153
  br i1 %10, label %16, label %11, !dbg !1154

; <label>:11:                                     ; preds = %3
  %12 = add i64 %5, -1, !dbg !1155
  %13 = getelementptr inbounds i8, i8* %4, i64 %12, !dbg !1155
  %14 = load i8, i8* %13, align 1, !dbg !1155, !tbaa !1157
  %15 = icmp ne i8 %14, 47, !dbg !1158
  br label %16

; <label>:16:                                     ; preds = %3, %11
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1138, metadata !652), !dbg !1159
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1160, metadata !652), !dbg !1165
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1160, metadata !652), !dbg !1165
  br label %18, !dbg !1167

; <label>:18:                                     ; preds = %18, %16
  %19 = phi i8* [ %1, %16 ], [ %22, %18 ]
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1160, metadata !652), !dbg !1165
  %20 = load i8, i8* %19, align 1, !dbg !1169, !tbaa !1157
  %21 = icmp eq i8 %20, 47, !dbg !1169
  %22 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1172
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1160, metadata !652), !dbg !1165
  br i1 %21, label %18, label %23, !dbg !1174, !llvm.loop !1176

; <label>:23:                                     ; preds = %18
  %24 = zext i1 %17 to i64, !dbg !1179
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1139, metadata !652), !dbg !1181
  %25 = tail call i64 @strlen(i8* %19) #13, !dbg !1182
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1140, metadata !652), !dbg !1183
  %26 = add i64 %9, 1, !dbg !1184
  %27 = add i64 %26, %24, !dbg !1185
  %28 = add i64 %27, %25, !dbg !1186
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !1187
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1141, metadata !652), !dbg !1188
  %30 = icmp eq i8* %29, null, !dbg !1189
  br i1 %30, label %44, label %31, !dbg !1191

; <label>:31:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1192, metadata !652) #10, !dbg !1202
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1200, metadata !652) #10, !dbg !1202
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1201, metadata !652) #10, !dbg !1202
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %29, i1 false) #10, !dbg !1204
  %33 = tail call i8* @__mempcpy_chk(i8* nonnull %29, i8* nonnull %0, i64 %9, i64 %32) #10, !dbg !1205
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1142, metadata !652), !dbg !1206
  store i8 47, i8* %33, align 1, !dbg !1207, !tbaa !1157
  %34 = getelementptr inbounds i8, i8* %33, i64 %24, !dbg !1208
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1142, metadata !652), !dbg !1206
  %35 = icmp eq i8** %2, null, !dbg !1209
  br i1 %35, label %41, label %36, !dbg !1211

; <label>:36:                                     ; preds = %31
  %37 = load i8, i8* %1, align 1, !dbg !1212, !tbaa !1157
  %38 = icmp eq i8 %37, 47, !dbg !1212
  %39 = sext i1 %38 to i64, !dbg !1213
  %40 = getelementptr inbounds i8, i8* %34, i64 %39, !dbg !1213
  store i8* %40, i8** %2, align 8, !dbg !1215, !tbaa !660
  br label %41, !dbg !1216

; <label>:41:                                     ; preds = %31, %36
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1192, metadata !652) #10, !dbg !1217
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1200, metadata !652) #10, !dbg !1217
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1201, metadata !652) #10, !dbg !1217
  %42 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %34, i1 false) #10, !dbg !1219
  %43 = tail call i8* @__mempcpy_chk(i8* nonnull %34, i8* nonnull %19, i64 %25, i64 %42) #10, !dbg !1220
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1142, metadata !652), !dbg !1206
  store i8 0, i8* %43, align 1, !dbg !1221, !tbaa !1157
  br label %44, !dbg !1222

; <label>:44:                                     ; preds = %23, %41
  %45 = phi i8* [ %29, %41 ], [ null, %23 ]
  ret i8* %45, !dbg !1223
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !1224 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1228, metadata !652), !dbg !1251
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1229, metadata !652), !dbg !1252
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1230, metadata !652), !dbg !1253
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1231, metadata !652), !dbg !1254
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1232, metadata !652), !dbg !1255
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !1233, metadata !652), !dbg !1256
  %8 = load i32, i32* @opterr, align 4, !dbg !1257, !tbaa !758
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1235, metadata !652), !dbg !1258
  store i32 0, i32* @opterr, align 4, !dbg !1259, !tbaa !758
  %9 = icmp eq i32 %0, 2, !dbg !1260
  br i1 %9, label %10, label %17, !dbg !1261

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !1262
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !1234, metadata !652), !dbg !1264
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1265

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !1267
  br label %17, !dbg !1268

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1269
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #10, !dbg !1269
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1236, metadata !652), !dbg !1270
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1271
  call void @llvm.va_start(i8* nonnull %14), !dbg !1271
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1272, !tbaa !660
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !1273
  call void @exit(i32 0) #14, !dbg !1274
  unreachable, !dbg !1274

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1275, !tbaa !758
  store i32 0, i32* @optind, align 4, !dbg !1276, !tbaa !758
  ret void, !dbg !1277
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1278 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1280, metadata !652), !dbg !1283
  %2 = icmp eq i8* %0, null, !dbg !1284
  br i1 %2, label %3, label %6, !dbg !1286

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1287, !tbaa !660
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1289
  tail call void @abort() #14, !dbg !1290
  unreachable, !dbg !1290

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1291
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1281, metadata !652), !dbg !1292
  %8 = icmp ne i8* %7, null, !dbg !1293
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1294
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1296
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1282, metadata !652), !dbg !1297
  %11 = ptrtoint i8* %10 to i64, !dbg !1298
  %12 = ptrtoint i8* %0 to i64, !dbg !1298
  %13 = sub i64 %11, %12, !dbg !1298
  %14 = icmp sgt i64 %13, 6, !dbg !1300
  br i1 %14, label %15, label %24, !dbg !1301

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1302
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.55, i64 0, i64 0), i64 7) #13, !dbg !1302
  %18 = icmp eq i32 %17, 0, !dbg !1304
  br i1 %18, label %19, label %24, !dbg !1305

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1280, metadata !652), !dbg !1283
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i64 3) #13, !dbg !1306
  %21 = icmp eq i32 %20, 0, !dbg !1309
  br i1 %21, label %22, label %24, !dbg !1310

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1311
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1280, metadata !652), !dbg !1283
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1313, !tbaa !660
  br label %24, !dbg !1314

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1280, metadata !652), !dbg !1283
  store i8* %25, i8** @program_name, align 8, !dbg !1315, !tbaa !660
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1316, !tbaa !660
  ret void, !dbg !1317
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1318 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1323, metadata !652), !dbg !1326
  %2 = tail call i32* @__errno_location() #1, !dbg !1327
  %3 = load i32, i32* %2, align 4, !dbg !1327, !tbaa !758
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1324, metadata !652), !dbg !1328
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1329
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1330
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1330
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1332
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1332
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1325, metadata !652), !dbg !1333
  store i32 %3, i32* %2, align 4, !dbg !1334, !tbaa !758
  ret %struct.quoting_options* %8, !dbg !1335
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1336 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1342, metadata !652), !dbg !1343
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1344
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1344
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1345
  %5 = load i32, i32* %4, align 8, !dbg !1345, !tbaa !1347
  ret i32 %5, !dbg !1349
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1350 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1354, metadata !652), !dbg !1356
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1355, metadata !652), !dbg !1357
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1358
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1358
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1359
  store i32 %1, i32* %5, align 8, !dbg !1361, !tbaa !1347
  ret void, !dbg !1362
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1363 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1367, metadata !652), !dbg !1375
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1368, metadata !652), !dbg !1376
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1369, metadata !652), !dbg !1377
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1370, metadata !652), !dbg !1378
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1379
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1379
  %6 = lshr i8 %1, 5, !dbg !1380
  %7 = zext i8 %6 to i64, !dbg !1380
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1382
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1371, metadata !652), !dbg !1383
  %9 = and i8 %1, 31, !dbg !1384
  %10 = zext i8 %9 to i32, !dbg !1385
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1373, metadata !652), !dbg !1386
  %11 = load i32, i32* %8, align 4, !dbg !1387, !tbaa !758
  %12 = lshr i32 %11, %10, !dbg !1388
  %13 = and i32 %12, 1, !dbg !1389
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1374, metadata !652), !dbg !1390
  %14 = and i32 %2, 1, !dbg !1391
  %15 = xor i32 %13, %14, !dbg !1392
  %16 = shl i32 %15, %10, !dbg !1393
  %17 = xor i32 %16, %11, !dbg !1394
  store i32 %17, i32* %8, align 4, !dbg !1394, !tbaa !758
  ret i32 %13, !dbg !1395
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1396 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1400, metadata !652), !dbg !1403
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1401, metadata !652), !dbg !1404
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1405
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1400, metadata !652), !dbg !1403
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1407
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1400, metadata !652), !dbg !1403
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1408
  %6 = load i32, i32* %5, align 4, !dbg !1408, !tbaa !1409
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1402, metadata !652), !dbg !1410
  store i32 %1, i32* %5, align 4, !dbg !1411, !tbaa !1409
  ret i32 %6, !dbg !1412
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1413 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1417, metadata !652), !dbg !1420
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1418, metadata !652), !dbg !1421
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1419, metadata !652), !dbg !1422
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1423
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1417, metadata !652), !dbg !1420
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1425
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1417, metadata !652), !dbg !1420
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1426
  store i32 10, i32* %6, align 8, !dbg !1427, !tbaa !1347
  %7 = icmp ne i8* %1, null, !dbg !1428
  %8 = icmp ne i8* %2, null, !dbg !1430
  %9 = and i1 %7, %8, !dbg !1432
  br i1 %9, label %11, label %10, !dbg !1432

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1433
  unreachable, !dbg !1433

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1434
  store i8* %1, i8** %12, align 8, !dbg !1435, !tbaa !1436
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1437
  store i8* %2, i8** %13, align 8, !dbg !1438, !tbaa !1439
  ret void, !dbg !1440
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1441 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1445, metadata !652), !dbg !1453
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1446, metadata !652), !dbg !1454
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1447, metadata !652), !dbg !1455
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1448, metadata !652), !dbg !1456
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1449, metadata !652), !dbg !1457
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1458
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1458
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1450, metadata !652), !dbg !1459
  %8 = tail call i32* @__errno_location() #1, !dbg !1460
  %9 = load i32, i32* %8, align 4, !dbg !1460, !tbaa !758
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1451, metadata !652), !dbg !1461
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1462
  %11 = load i32, i32* %10, align 8, !dbg !1462, !tbaa !1347
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1463
  %13 = load i32, i32* %12, align 4, !dbg !1463, !tbaa !1409
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1464
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1465
  %16 = load i8*, i8** %15, align 8, !dbg !1465, !tbaa !1436
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1466
  %18 = load i8*, i8** %17, align 8, !dbg !1466, !tbaa !1439
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1467
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1452, metadata !652), !dbg !1468
  store i32 %9, i32* %8, align 4, !dbg !1469, !tbaa !758
  ret i64 %19, !dbg !1470
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1471 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1477, metadata !652), !dbg !1540
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1478, metadata !652), !dbg !1541
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1479, metadata !652), !dbg !1542
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1480, metadata !652), !dbg !1543
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1481, metadata !652), !dbg !1544
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1482, metadata !652), !dbg !1545
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1483, metadata !652), !dbg !1546
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1484, metadata !652), !dbg !1547
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1485, metadata !652), !dbg !1548
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1487, metadata !652), !dbg !1549
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1488, metadata !652), !dbg !1550
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1489, metadata !652), !dbg !1551
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1490, metadata !652), !dbg !1552
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1491, metadata !652), !dbg !1553
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1554
  %14 = icmp eq i64 %13, 1, !dbg !1555
  %15 = lshr i32 %5, 1, !dbg !1556
  %16 = trunc i32 %15 to i8, !dbg !1556
  %17 = and i8 %16, 1, !dbg !1556
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1493, metadata !652), !dbg !1556
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1494, metadata !652), !dbg !1557
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1495, metadata !652), !dbg !1558
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1496, metadata !652), !dbg !1559
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1560

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1478, metadata !652), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1496, metadata !652), !dbg !1559
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1495, metadata !652), !dbg !1558
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1493, metadata !652), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1480, metadata !652), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1491, metadata !652), !dbg !1553
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1490, metadata !652), !dbg !1552
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1489, metadata !652), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1488, metadata !652), !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1485, metadata !652), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1484, metadata !652), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1481, metadata !652), !dbg !1544
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
  ], !dbg !1561

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1481, metadata !652), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1493, metadata !652), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1493, metadata !652), !dbg !1556
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1481, metadata !652), !dbg !1544
  br label %95, !dbg !1562

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1493, metadata !652), !dbg !1556
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1481, metadata !652), !dbg !1544
  %43 = and i8 %36, 1, !dbg !1564
  %44 = icmp eq i8 %43, 0, !dbg !1564
  br i1 %44, label %45, label %95, !dbg !1562

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1566
  br i1 %46, label %95, label %47, !dbg !1570

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1572, !tbaa !1157
  br label %95, !dbg !1572

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), i32 %28), !dbg !1574
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1484, metadata !652), !dbg !1547
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), i32 %28), !dbg !1578
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1485, metadata !652), !dbg !1548
  br label %51, !dbg !1579

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1485, metadata !652), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1484, metadata !652), !dbg !1547
  %54 = and i8 %36, 1, !dbg !1580
  %55 = icmp eq i8 %54, 0, !dbg !1580
  br i1 %55, label %56, label %73, !dbg !1582

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1489, metadata !652), !dbg !1551
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1487, metadata !652), !dbg !1549
  %57 = load i8, i8* %52, align 1, !dbg !1583, !tbaa !1157
  %58 = icmp eq i8 %57, 0, !dbg !1587
  br i1 %58, label %73, label %59, !dbg !1587

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1589

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1589
  br i1 %64, label %65, label %67, !dbg !1593

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1595
  store i8 %61, i8* %66, align 1, !dbg !1595, !tbaa !1157
  br label %67, !dbg !1595

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1487, metadata !652), !dbg !1549
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1599
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1489, metadata !652), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1489, metadata !652), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1487, metadata !652), !dbg !1549
  %70 = load i8, i8* %69, align 1, !dbg !1583, !tbaa !1157
  %71 = icmp eq i8 %70, 0, !dbg !1587
  br i1 %71, label %72, label %60, !dbg !1587, !llvm.loop !1601

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1549

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1491, metadata !652), !dbg !1553
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1489, metadata !652), !dbg !1551
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1490, metadata !652), !dbg !1552
  br label %95, !dbg !1605

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1491, metadata !652), !dbg !1553
  br label %77, !dbg !1606

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1491, metadata !652), !dbg !1553
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1493, metadata !652), !dbg !1556
  br label %79, !dbg !1607

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1493, metadata !652), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1491, metadata !652), !dbg !1553
  %82 = and i8 %81, 1, !dbg !1608
  %83 = icmp eq i8 %82, 0, !dbg !1608
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1491, metadata !652), !dbg !1553
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1610
  br label %85, !dbg !1610

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1493, metadata !652), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1491, metadata !652), !dbg !1553
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1481, metadata !652), !dbg !1544
  %88 = and i8 %87, 1, !dbg !1611
  %89 = icmp eq i8 %88, 0, !dbg !1611
  br i1 %89, label %90, label %95, !dbg !1613

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1614
  br i1 %91, label %95, label %92, !dbg !1618

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1620, !tbaa !1157
  br label %95, !dbg !1620

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1493, metadata !652), !dbg !1556
  br label %95, !dbg !1622

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1623
  unreachable, !dbg !1623

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1493, metadata !652), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1491, metadata !652), !dbg !1553
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1490, metadata !652), !dbg !1552
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1489, metadata !652), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1485, metadata !652), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1484, metadata !652), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1481, metadata !652), !dbg !1544
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1486, metadata !652), !dbg !1624
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
  br label %123, !dbg !1625

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1478, metadata !652), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1496, metadata !652), !dbg !1559
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1495, metadata !652), !dbg !1558
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1480, metadata !652), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1488, metadata !652), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1486, metadata !652), !dbg !1624
  %132 = icmp eq i64 %127, -1, !dbg !1626
  br i1 %132, label %135, label %133, !dbg !1628

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1629
  br i1 %134, label %597, label %139, !dbg !1631

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1633
  %137 = load i8, i8* %136, align 1, !dbg !1633, !tbaa !1157
  %138 = icmp eq i8 %137, 0, !dbg !1635
  br i1 %138, label %597, label %139, !dbg !1631

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1502, metadata !652), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1503, metadata !652), !dbg !1637
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1504, metadata !652), !dbg !1638
  br i1 %109, label %140, label %155, !dbg !1639

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1641
  %142 = and i1 %110, %132, !dbg !1643
  br i1 %142, label %143, label %145, !dbg !1643

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1480, metadata !652), !dbg !1543
  br label %145, !dbg !1645

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1480, metadata !652), !dbg !1543
  %147 = icmp ugt i64 %141, %146, !dbg !1647
  br i1 %147, label %155, label %148, !dbg !1649

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1650
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1651
  %151 = icmp ne i32 %150, 0, !dbg !1652
  %152 = or i1 %151, %112, !dbg !1652
  %153 = xor i1 %151, true, !dbg !1652
  %154 = zext i1 %153 to i8, !dbg !1652
  br i1 %152, label %155, label %644, !dbg !1652

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1502, metadata !652), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1480, metadata !652), !dbg !1543
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1654
  %159 = load i8, i8* %158, align 1, !dbg !1654, !tbaa !1157
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1497, metadata !652), !dbg !1655
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
  ], !dbg !1656

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1657

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1658

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1503, metadata !652), !dbg !1637
  %163 = and i8 %128, 1, !dbg !1663
  %164 = icmp eq i8 %163, 0, !dbg !1663
  %165 = and i1 %114, %164, !dbg !1666
  br i1 %165, label %166, label %182, !dbg !1666

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1668
  br i1 %167, label %168, label %170, !dbg !1673

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1675
  store i8 39, i8* %169, align 1, !dbg !1675, !tbaa !1157
  br label %170, !dbg !1675

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1487, metadata !652), !dbg !1549
  %172 = icmp ult i64 %171, %131, !dbg !1679
  br i1 %172, label %173, label %175, !dbg !1683

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1685
  store i8 36, i8* %174, align 1, !dbg !1685, !tbaa !1157
  br label %175, !dbg !1685

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1487, metadata !652), !dbg !1549
  %177 = icmp ult i64 %176, %131, !dbg !1689
  br i1 %177, label %178, label %180, !dbg !1693

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1695
  store i8 39, i8* %179, align 1, !dbg !1695, !tbaa !1157
  br label %180, !dbg !1695

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1494, metadata !652), !dbg !1557
  br label %182, !dbg !1699

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1487, metadata !652), !dbg !1549
  %185 = icmp ult i64 %183, %131, !dbg !1701
  br i1 %185, label %186, label %188, !dbg !1705

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1707
  store i8 92, i8* %187, align 1, !dbg !1707, !tbaa !1157
  br label %188, !dbg !1707

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1487, metadata !652), !dbg !1549
  br i1 %106, label %190, label %476, !dbg !1711

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1713
  %192 = icmp ult i64 %191, %156, !dbg !1715
  br i1 %192, label %193, label %476, !dbg !1716

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1717
  %195 = load i8, i8* %194, align 1, !dbg !1717, !tbaa !1157
  %196 = add i8 %195, -48, !dbg !1719
  %197 = icmp ult i8 %196, 10, !dbg !1719
  br i1 %197, label %198, label %476, !dbg !1719

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1720
  br i1 %199, label %200, label %202, !dbg !1725

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1727
  store i8 48, i8* %201, align 1, !dbg !1727, !tbaa !1157
  br label %202, !dbg !1727

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1487, metadata !652), !dbg !1549
  %204 = icmp ult i64 %203, %131, !dbg !1731
  br i1 %204, label %205, label %207, !dbg !1735

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1737
  store i8 48, i8* %206, align 1, !dbg !1737, !tbaa !1157
  br label %207, !dbg !1737

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1487, metadata !652), !dbg !1549
  br label %476, !dbg !1741

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1742

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1743

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1744

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1746

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1748
  %215 = icmp ult i64 %214, %156, !dbg !1750
  br i1 %215, label %216, label %476, !dbg !1751

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1752
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1754
  %219 = load i8, i8* %218, align 1, !dbg !1754, !tbaa !1157
  %220 = icmp eq i8 %219, 63, !dbg !1755
  br i1 %220, label %221, label %476, !dbg !1756

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1758
  %223 = load i8, i8* %222, align 1, !dbg !1758, !tbaa !1157
  %224 = sext i8 %223 to i32, !dbg !1758
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
  ], !dbg !1759

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1760

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1497, metadata !652), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1486, metadata !652), !dbg !1624
  %227 = icmp ult i64 %125, %131, !dbg !1762
  br i1 %227, label %228, label %230, !dbg !1766

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1768
  store i8 63, i8* %229, align 1, !dbg !1768, !tbaa !1157
  br label %230, !dbg !1768

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1487, metadata !652), !dbg !1549
  %232 = icmp ult i64 %231, %131, !dbg !1772
  br i1 %232, label %233, label %235, !dbg !1776

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1778
  store i8 34, i8* %234, align 1, !dbg !1778, !tbaa !1157
  br label %235, !dbg !1778

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1487, metadata !652), !dbg !1549
  %237 = icmp ult i64 %236, %131, !dbg !1782
  br i1 %237, label %238, label %240, !dbg !1786

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1788
  store i8 34, i8* %239, align 1, !dbg !1788, !tbaa !1157
  br label %240, !dbg !1788

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1487, metadata !652), !dbg !1549
  %242 = icmp ult i64 %241, %131, !dbg !1792
  br i1 %242, label %243, label %245, !dbg !1796

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1798
  store i8 63, i8* %244, align 1, !dbg !1798, !tbaa !1157
  br label %245, !dbg !1798

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1487, metadata !652), !dbg !1549
  br label %476, !dbg !1802

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1501, metadata !652), !dbg !1803
  br label %257, !dbg !1804

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1501, metadata !652), !dbg !1803
  br label %257, !dbg !1805

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1501, metadata !652), !dbg !1803
  br label %255, !dbg !1806

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1501, metadata !652), !dbg !1803
  br label %255, !dbg !1807

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1501, metadata !652), !dbg !1803
  br label %257, !dbg !1808

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1501, metadata !652), !dbg !1803
  br i1 %114, label %253, label %254, !dbg !1809

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1810

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1813

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1501, metadata !652), !dbg !1803
  br i1 %118, label %257, label %644, !dbg !1815

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1501, metadata !652), !dbg !1803
  br i1 %105, label %503, label %476, !dbg !1817

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1818
  br i1 %260, label %261, label %266, !dbg !1820

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1821, !tbaa !1157
  %263 = icmp ne i8 %262, 0, !dbg !1823
  %264 = icmp ne i64 %124, 0, !dbg !1824
  %265 = or i1 %264, %263, !dbg !1826
  br i1 %265, label %476, label %272, !dbg !1826

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1827
  %268 = icmp ne i64 %124, 0, !dbg !1824
  %269 = or i1 %268, %267, !dbg !1829
  br i1 %269, label %476, label %272, !dbg !1829

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1824
  br i1 %271, label %272, label %476, !dbg !1831

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1504, metadata !652), !dbg !1638
  br label %273, !dbg !1832

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1504, metadata !652), !dbg !1638
  br i1 %118, label %476, label %644, !dbg !1833

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1495, metadata !652), !dbg !1558
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1504, metadata !652), !dbg !1638
  br i1 %114, label %276, label %476, !dbg !1835

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1836

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1839
  %279 = icmp ne i64 %126, 0, !dbg !1841
  %280 = or i1 %279, %278, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1488, metadata !652), !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1478, metadata !652), !dbg !1541
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1843
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1478, metadata !652), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1488, metadata !652), !dbg !1550
  %283 = icmp ult i64 %125, %282, !dbg !1844
  br i1 %283, label %284, label %286, !dbg !1848

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1850
  store i8 39, i8* %285, align 1, !dbg !1850, !tbaa !1157
  br label %286, !dbg !1850

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1487, metadata !652), !dbg !1549
  %288 = icmp ult i64 %287, %282, !dbg !1854
  br i1 %288, label %289, label %291, !dbg !1858

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1860
  store i8 92, i8* %290, align 1, !dbg !1860, !tbaa !1157
  br label %291, !dbg !1860

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1487, metadata !652), !dbg !1549
  %293 = icmp ult i64 %292, %282, !dbg !1864
  br i1 %293, label %294, label %296, !dbg !1868

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1870
  store i8 39, i8* %295, align 1, !dbg !1870, !tbaa !1157
  br label %296, !dbg !1870

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1494, metadata !652), !dbg !1557
  br label %476, !dbg !1874

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1875

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1505, metadata !652), !dbg !1876
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1877
  %301 = load i16*, i16** %300, align 8, !dbg !1877, !tbaa !660
  %302 = zext i8 %159 to i64, !dbg !1877
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1877
  %304 = load i16, i16* %303, align 2, !dbg !1877, !tbaa !1879
  %305 = lshr i16 %304, 14, !dbg !1880
  %306 = trunc i16 %305 to i8, !dbg !1880
  %307 = and i8 %306, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1508, metadata !652), !dbg !1881
  br label %368, !dbg !1882

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1883
  store i64 0, i64* %10, align 8, !dbg !1884
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1505, metadata !652), !dbg !1876
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1508, metadata !652), !dbg !1881
  %309 = icmp eq i64 %156, -1, !dbg !1885
  br i1 %309, label %310, label %312, !dbg !1887, !llvm.loop !1888

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1480, metadata !652), !dbg !1543
  br label %312, !dbg !1892, !llvm.loop !1888

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1881

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1508, metadata !652), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1505, metadata !652), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1480, metadata !652), !dbg !1543
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1893
  %317 = add i64 %315, %124, !dbg !1894
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1895
  %319 = sub i64 %313, %317, !dbg !1896
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1509, metadata !1897), !dbg !1898
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1526, metadata !1897), !dbg !1899
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1529, metadata !652), !dbg !1901
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1902

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1505, metadata !652), !dbg !1876
  %322 = icmp ugt i64 %313, %317, !dbg !1903
  br i1 %322, label %323, label %351, !dbg !1906

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1907

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1907
  %328 = load i8, i8* %327, align 1, !dbg !1907, !tbaa !1157
  %329 = icmp eq i8 %328, 0, !dbg !1909
  br i1 %329, label %348, label %330, !dbg !1910

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1505, metadata !652), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1505, metadata !652), !dbg !1876
  %332 = add i64 %331, %124, !dbg !1913
  %333 = icmp ult i64 %332, %313, !dbg !1903
  br i1 %333, label %324, label %348, !dbg !1906, !llvm.loop !1914

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1916
  %336 = and i1 %116, %335, !dbg !1920
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1530, metadata !652), !dbg !1921
  br i1 %336, label %337, label %355, !dbg !1920

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1922

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1922
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1923
  %342 = load i8, i8* %341, align 1, !dbg !1923, !tbaa !1157
  %343 = sext i8 %342 to i32, !dbg !1923
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1924

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1530, metadata !652), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1530, metadata !652), !dbg !1921
  %346 = icmp ult i64 %345, %320, !dbg !1916
  br i1 %346, label %338, label %354, !dbg !1927, !llvm.loop !1929

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1881

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1881

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1881

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1508, metadata !652), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1505, metadata !652), !dbg !1876
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1932
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1933

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1933, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1526, metadata !652), !dbg !1899
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1935
  %358 = icmp eq i32 %357, 0, !dbg !1935
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1508, metadata !652), !dbg !1881
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1936
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1508, metadata !652), !dbg !1881
  %360 = add i64 %320, %315, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1505, metadata !652), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1508, metadata !652), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1505, metadata !652), !dbg !1876
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1932
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1509, metadata !1897), !dbg !1898
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1938
  %362 = icmp eq i32 %361, 0, !dbg !1939
  br i1 %362, label %314, label %363, !dbg !1940, !llvm.loop !1888

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1942

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1942
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1508, metadata !652), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1505, metadata !652), !dbg !1876
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1932
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1942
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1508, metadata !652), !dbg !1881
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1505, metadata !652), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1480, metadata !652), !dbg !1543
  %372 = and i8 %371, 1, !dbg !1943
  %373 = icmp ne i8 %372, 0, !dbg !1943
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1504, metadata !652), !dbg !1638
  %374 = icmp ult i64 %370, 2, !dbg !1944
  %375 = or i1 %373, %113, !dbg !1945
  %376 = and i1 %374, %375, !dbg !1947
  br i1 %376, label %476, label %377, !dbg !1947

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1537, metadata !652), !dbg !1949
  br label %379, !dbg !1950

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1503, metadata !652), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1502, metadata !652), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1497, metadata !652), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1486, metadata !652), !dbg !1624
  br i1 %375, label %432, label %386, !dbg !1951

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1956

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1503, metadata !652), !dbg !1637
  %388 = and i8 %382, 1, !dbg !1960
  %389 = icmp eq i8 %388, 0, !dbg !1960
  %390 = and i1 %114, %389, !dbg !1963
  br i1 %390, label %391, label %407, !dbg !1963

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1965
  br i1 %392, label %393, label %395, !dbg !1970

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1972
  store i8 39, i8* %394, align 1, !dbg !1972, !tbaa !1157
  br label %395, !dbg !1972

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1487, metadata !652), !dbg !1549
  %397 = icmp ult i64 %396, %131, !dbg !1976
  br i1 %397, label %398, label %400, !dbg !1980

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1982
  store i8 36, i8* %399, align 1, !dbg !1982, !tbaa !1157
  br label %400, !dbg !1982

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1487, metadata !652), !dbg !1549
  %402 = icmp ult i64 %401, %131, !dbg !1986
  br i1 %402, label %403, label %405, !dbg !1990

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1992
  store i8 39, i8* %404, align 1, !dbg !1992, !tbaa !1157
  br label %405, !dbg !1992

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1494, metadata !652), !dbg !1557
  br label %407, !dbg !1996

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1487, metadata !652), !dbg !1549
  %410 = icmp ult i64 %408, %131, !dbg !1998
  br i1 %410, label %411, label %413, !dbg !2002

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2004
  store i8 92, i8* %412, align 1, !dbg !2004, !tbaa !1157
  br label %413, !dbg !2004

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1487, metadata !652), !dbg !1549
  %415 = icmp ult i64 %414, %131, !dbg !2008
  br i1 %415, label %416, label %420, !dbg !2012

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2014
  %418 = or i8 %417, 48, !dbg !2014
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2014
  store i8 %418, i8* %419, align 1, !dbg !2014, !tbaa !1157
  br label %420, !dbg !2014

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1487, metadata !652), !dbg !1549
  %422 = icmp ult i64 %421, %131, !dbg !2018
  br i1 %422, label %423, label %428, !dbg !2022

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2024
  %425 = and i8 %424, 7, !dbg !2024
  %426 = or i8 %425, 48, !dbg !2024
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2024
  store i8 %426, i8* %427, align 1, !dbg !2024, !tbaa !1157
  br label %428, !dbg !2024

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1487, metadata !652), !dbg !1549
  %430 = and i8 %383, 7, !dbg !2028
  %431 = or i8 %430, 48, !dbg !2029
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1497, metadata !652), !dbg !1655
  br label %441, !dbg !2030

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2031
  %434 = icmp eq i8 %433, 0, !dbg !2031
  br i1 %434, label %441, label %435, !dbg !2033

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2034
  br i1 %436, label %437, label %439, !dbg !2039

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2041
  store i8 92, i8* %438, align 1, !dbg !2041, !tbaa !1157
  br label %439, !dbg !2041

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1502, metadata !652), !dbg !1636
  br label %441, !dbg !2045

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1503, metadata !652), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1502, metadata !652), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1497, metadata !652), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1487, metadata !652), !dbg !1549
  %447 = add i64 %380, 1, !dbg !2046
  %448 = icmp ugt i64 %378, %447, !dbg !2048
  br i1 %448, label %449, label %541, !dbg !2049

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2050
  %451 = icmp ne i8 %450, 0, !dbg !2050
  %452 = and i8 %446, 1, !dbg !2054
  %453 = icmp eq i8 %452, 0, !dbg !2054
  %454 = and i1 %451, %453, !dbg !2050
  br i1 %454, label %455, label %466, !dbg !2050

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2056
  br i1 %456, label %457, label %459, !dbg !2061

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2063
  store i8 39, i8* %458, align 1, !dbg !2063, !tbaa !1157
  br label %459, !dbg !2063

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1487, metadata !652), !dbg !1549
  %461 = icmp ult i64 %460, %131, !dbg !2067
  br i1 %461, label %462, label %464, !dbg !2071

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2073
  store i8 39, i8* %463, align 1, !dbg !2073, !tbaa !1157
  br label %464, !dbg !2073

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1494, metadata !652), !dbg !1557
  br label %466, !dbg !2077

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1487, metadata !652), !dbg !1549
  %469 = icmp ult i64 %467, %131, !dbg !2079
  br i1 %469, label %470, label %472, !dbg !2083

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2085
  store i8 %444, i8* %471, align 1, !dbg !2085, !tbaa !1157
  br label %472, !dbg !2085

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1486, metadata !652), !dbg !1624
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2089
  %475 = load i8, i8* %474, align 1, !dbg !2089, !tbaa !1157
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1497, metadata !652), !dbg !1655
  br label %379, !dbg !2090, !llvm.loop !2092

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1478, metadata !652), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1504, metadata !652), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1503, metadata !652), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1502, metadata !652), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1497, metadata !652), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1495, metadata !652), !dbg !1558
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1480, metadata !652), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1488, metadata !652), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1486, metadata !652), !dbg !1624
  br i1 %107, label %488, label %487, !dbg !2095

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2097

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2098

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2099
  %491 = zext i8 %490 to i64, !dbg !2099
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2101
  %493 = load i32, i32* %492, align 4, !dbg !2101, !tbaa !758
  %494 = and i8 %483, 31, !dbg !2102
  %495 = zext i8 %494 to i32, !dbg !2103
  %496 = shl i32 1, %495, !dbg !2104
  %497 = and i32 %493, %496, !dbg !2104
  %498 = icmp eq i32 %497, 0, !dbg !2104
  %499 = icmp eq i8 %157, 0, !dbg !2105
  %500 = and i1 %499, %498, !dbg !2106
  br i1 %500, label %542, label %503, !dbg !2106

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2105
  br i1 %502, label %542, label %503, !dbg !2107

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1478, metadata !652), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1504, metadata !652), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1497, metadata !652), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1495, metadata !652), !dbg !1558
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1480, metadata !652), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1488, metadata !652), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1486, metadata !652), !dbg !1624
  br i1 %112, label %513, label %644, !dbg !2109

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1503, metadata !652), !dbg !1637
  %514 = and i8 %508, 1, !dbg !2112
  %515 = icmp eq i8 %514, 0, !dbg !2112
  %516 = and i1 %114, %515, !dbg !2115
  br i1 %516, label %517, label %533, !dbg !2115

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2117
  br i1 %518, label %519, label %521, !dbg !2122

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2124
  store i8 39, i8* %520, align 1, !dbg !2124, !tbaa !1157
  br label %521, !dbg !2124

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1487, metadata !652), !dbg !1549
  %523 = icmp ult i64 %522, %512, !dbg !2128
  br i1 %523, label %524, label %526, !dbg !2132

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2134
  store i8 36, i8* %525, align 1, !dbg !2134, !tbaa !1157
  br label %526, !dbg !2134

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1487, metadata !652), !dbg !1549
  %528 = icmp ult i64 %527, %512, !dbg !2138
  br i1 %528, label %529, label %531, !dbg !2142

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2144
  store i8 39, i8* %530, align 1, !dbg !2144, !tbaa !1157
  br label %531, !dbg !2144

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1494, metadata !652), !dbg !1557
  br label %533, !dbg !2148

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1487, metadata !652), !dbg !1549
  %536 = icmp ult i64 %534, %512, !dbg !2150
  br i1 %536, label %537, label %539, !dbg !2154

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2156
  store i8 92, i8* %538, align 1, !dbg !2156, !tbaa !1157
  br label %539, !dbg !2156

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1478, metadata !652), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1504, metadata !652), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1503, metadata !652), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1497, metadata !652), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1495, metadata !652), !dbg !1558
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1480, metadata !652), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1488, metadata !652), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1486, metadata !652), !dbg !1624
  br label %569, !dbg !2160

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1541

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1478, metadata !652), !dbg !1541
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1504, metadata !652), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1503, metadata !652), !dbg !1637
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1497, metadata !652), !dbg !1655
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1495, metadata !652), !dbg !1558
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1480, metadata !652), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1488, metadata !652), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1486, metadata !652), !dbg !1624
  %553 = and i8 %547, 1, !dbg !2160
  %554 = icmp ne i8 %553, 0, !dbg !2160
  %555 = and i8 %550, 1, !dbg !2164
  %556 = icmp eq i8 %555, 0, !dbg !2164
  %557 = and i1 %554, %556, !dbg !2160
  br i1 %557, label %558, label %569, !dbg !2160

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2166
  br i1 %559, label %560, label %562, !dbg !2171

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2173
  store i8 39, i8* %561, align 1, !dbg !2173, !tbaa !1157
  br label %562, !dbg !2173

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1487, metadata !652), !dbg !1549
  %564 = icmp ult i64 %563, %552, !dbg !2177
  br i1 %564, label %565, label %567, !dbg !2181

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2183
  store i8 39, i8* %566, align 1, !dbg !2183, !tbaa !1157
  br label %567, !dbg !2183

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1487, metadata !652), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1494, metadata !652), !dbg !1557
  br label %569, !dbg !2187

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1494, metadata !652), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1487, metadata !652), !dbg !1549
  %579 = icmp ult i64 %577, %570, !dbg !2189
  br i1 %579, label %580, label %582, !dbg !2193

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2195
  store i8 %572, i8* %581, align 1, !dbg !2195, !tbaa !1157
  br label %582, !dbg !2195

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1487, metadata !652), !dbg !1549
  %584 = and i8 %571, 1, !dbg !2199
  %585 = icmp eq i8 %584, 0, !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1496, metadata !652), !dbg !1559
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2201
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1496, metadata !652), !dbg !1559
  br label %587, !dbg !2202

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1486, metadata !652), !dbg !1624
  br label %123, !dbg !2205, !llvm.loop !2206

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2209
  %600 = and i1 %114, %599, !dbg !2211
  %601 = xor i1 %600, true, !dbg !2211
  %602 = or i1 %112, %601, !dbg !2211
  br i1 %602, label %603, label %648, !dbg !2211

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2212
  %605 = xor i1 %604, true, !dbg !2212
  %606 = and i8 %129, 1, !dbg !2214
  %607 = icmp eq i8 %606, 0, !dbg !2214
  %608 = or i1 %607, %605, !dbg !2212
  br i1 %608, label %618, label %609, !dbg !2212

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2216
  %611 = icmp eq i8 %610, 0, !dbg !2216
  br i1 %611, label %614, label %612, !dbg !2219

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2220
  br label %659, !dbg !2221

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2222
  %616 = icmp ne i64 %126, 0, !dbg !2224
  %617 = and i1 %616, %615, !dbg !2226
  br i1 %617, label %27, label %618, !dbg !2226

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2227
  %620 = and i1 %619, %112, !dbg !2229
  br i1 %620, label %621, label %638, !dbg !2229

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1489, metadata !652), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1487, metadata !652), !dbg !1549
  %622 = load i8, i8* %100, align 1, !dbg !2230, !tbaa !1157
  %623 = icmp eq i8 %622, 0, !dbg !2234
  br i1 %623, label %638, label %624, !dbg !2234

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2236

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2236
  br i1 %629, label %630, label %632, !dbg !2240

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2242
  store i8 %626, i8* %631, align 1, !dbg !2242, !tbaa !1157
  br label %632, !dbg !2242

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1487, metadata !652), !dbg !1549
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2246
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1489, metadata !652), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1489, metadata !652), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1487, metadata !652), !dbg !1549
  %635 = load i8, i8* %634, align 1, !dbg !2230, !tbaa !1157
  %636 = icmp eq i8 %635, 0, !dbg !2234
  br i1 %636, label %637, label %625, !dbg !2234, !llvm.loop !2248

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1549

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1487, metadata !652), !dbg !1549
  %640 = icmp ult i64 %639, %131, !dbg !2251
  br i1 %640, label %641, label %659, !dbg !2253

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2254
  store i8 0, i8* %642, align 1, !dbg !2255, !tbaa !1157
  br label %659, !dbg !2254

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1541

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1541

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1541

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1478, metadata !652), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1480, metadata !652), !dbg !1543
  %653 = icmp ne i32 %650, 2, !dbg !2256
  %654 = icmp eq i8 %104, 0, !dbg !2258
  %655 = or i1 %653, %654, !dbg !2260
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1481, metadata !652), !dbg !1544
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2260
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1481, metadata !652), !dbg !1544
  %657 = and i32 %5, -3, !dbg !2261
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2262
  br label %659, !dbg !2263

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2264
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2265 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2269, metadata !652), !dbg !2273
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2270, metadata !652), !dbg !2274
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2275
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2271, metadata !652), !dbg !2276
  %4 = icmp eq i8* %3, %0, !dbg !2277
  br i1 %4, label %5, label %75, !dbg !2279

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2280
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2272, metadata !652), !dbg !2281
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2282, metadata !652), !dbg !2298
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2296, metadata !652), !dbg !2301
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2297, metadata !652), !dbg !2302
  %7 = load i8, i8* %6, align 1, !tbaa !1157
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2303
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2303

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2306, metadata !652), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2318, metadata !652), !dbg !2324
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2319, metadata !652), !dbg !2325
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1157
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2326
  %15 = icmp eq i32 %14, 84, !dbg !2326
  br i1 %15, label %16, label %72, !dbg !2326

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2329, metadata !652), !dbg !2342
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2340, metadata !652), !dbg !2346
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2341, metadata !652), !dbg !2347
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1157
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2348
  %21 = icmp eq i32 %20, 70, !dbg !2348
  br i1 %21, label %22, label %72, !dbg !2348

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2351, metadata !652), !dbg !2363
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2361, metadata !652), !dbg !2367
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2362, metadata !652), !dbg !2368
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1157
  %25 = icmp eq i8 %24, 45, !dbg !2369
  br i1 %25, label %26, label %72, !dbg !2372

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2374, metadata !652), !dbg !2385
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2383, metadata !652), !dbg !2389
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2384, metadata !652), !dbg !2390
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1157
  %29 = icmp eq i8 %28, 56, !dbg !2391
  br i1 %29, label %30, label %72, !dbg !2394

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2396, metadata !652), !dbg !2406
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2404, metadata !652), !dbg !2410
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2405, metadata !652), !dbg !2411
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1157
  %33 = icmp eq i8 %32, 0, !dbg !2412
  br i1 %33, label %34, label %72, !dbg !2415

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2417, !tbaa !1157
  %36 = icmp eq i8 %35, 96, !dbg !2418
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.70, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.71, i64 0, i64 0), !dbg !2417
  br label %75, !dbg !2419

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2306, metadata !652), !dbg !2420
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2318, metadata !652), !dbg !2424
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2319, metadata !652), !dbg !2425
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1157
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2426
  %43 = icmp eq i32 %42, 66, !dbg !2426
  br i1 %43, label %44, label %72, !dbg !2426

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2329, metadata !652), !dbg !2427
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2340, metadata !652), !dbg !2429
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2341, metadata !652), !dbg !2430
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1157
  %47 = icmp eq i8 %46, 49, !dbg !2431
  br i1 %47, label %48, label %72, !dbg !2433

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2351, metadata !652), !dbg !2435
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2361, metadata !652), !dbg !2437
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2362, metadata !652), !dbg !2438
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1157
  %51 = icmp eq i8 %50, 56, !dbg !2439
  br i1 %51, label %52, label %72, !dbg !2440

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2374, metadata !652), !dbg !2441
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2383, metadata !652), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2384, metadata !652), !dbg !2444
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1157
  %55 = icmp eq i8 %54, 48, !dbg !2445
  br i1 %55, label %56, label %72, !dbg !2446

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2396, metadata !652), !dbg !2447
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2404, metadata !652), !dbg !2449
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2405, metadata !652), !dbg !2450
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1157
  %59 = icmp eq i8 %58, 51, !dbg !2451
  br i1 %59, label %60, label %72, !dbg !2452

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2453, metadata !652), !dbg !2462
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2460, metadata !652), !dbg !2466
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2461, metadata !652), !dbg !2467
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1157
  %63 = icmp eq i8 %62, 48, !dbg !2468
  br i1 %63, label %64, label %72, !dbg !2471

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2473, metadata !652), !dbg !2481
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2479, metadata !652), !dbg !2485
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2480, metadata !652), !dbg !2486
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1157
  %67 = icmp eq i8 %66, 0, !dbg !2487
  br i1 %67, label %68, label %72, !dbg !2490

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2491, !tbaa !1157
  %70 = icmp eq i8 %69, 96, !dbg !2492
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.73, i64 0, i64 0), !dbg !2491
  br label %75, !dbg !2493

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2494
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), !dbg !2495
  br label %75, !dbg !2496

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2497
}

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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2498 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2502, metadata !652), !dbg !2505
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2503, metadata !652), !dbg !2506
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2504, metadata !652), !dbg !2507
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2508, metadata !652) #10, !dbg !2521
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2513, metadata !652) #10, !dbg !2523
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2514, metadata !652) #10, !dbg !2524
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2515, metadata !652) #10, !dbg !2525
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2526
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2526
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2516, metadata !652) #10, !dbg !2527
  %6 = tail call i32* @__errno_location() #1, !dbg !2528
  %7 = load i32, i32* %6, align 4, !dbg !2528, !tbaa !758
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2517, metadata !652) #10, !dbg !2529
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2530
  %9 = load i32, i32* %8, align 4, !dbg !2530, !tbaa !1409
  %10 = or i32 %9, 1, !dbg !2531
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2518, metadata !652) #10, !dbg !2532
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2533
  %12 = load i32, i32* %11, align 8, !dbg !2533, !tbaa !1347
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2534
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2535
  %15 = load i8*, i8** %14, align 8, !dbg !2535, !tbaa !1436
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2536
  %17 = load i8*, i8** %16, align 8, !dbg !2536, !tbaa !1439
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2537
  %19 = add i64 %18, 1, !dbg !2538
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2519, metadata !652) #10, !dbg !2539
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2540, metadata !652) #10, !dbg !2545
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2547
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2520, metadata !652) #10, !dbg !2548
  %21 = load i32, i32* %11, align 8, !dbg !2549, !tbaa !1347
  %22 = load i8*, i8** %14, align 8, !dbg !2550, !tbaa !1436
  %23 = load i8*, i8** %16, align 8, !dbg !2551, !tbaa !1439
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2552
  store i32 %7, i32* %6, align 4, !dbg !2553, !tbaa !758
  ret i8* %20, !dbg !2554
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2509 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2508, metadata !652), !dbg !2555
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2513, metadata !652), !dbg !2556
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2514, metadata !652), !dbg !2557
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2515, metadata !652), !dbg !2558
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2559
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2559
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2516, metadata !652), !dbg !2560
  %7 = tail call i32* @__errno_location() #1, !dbg !2561
  %8 = load i32, i32* %7, align 4, !dbg !2561, !tbaa !758
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2517, metadata !652), !dbg !2562
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2563
  %10 = load i32, i32* %9, align 4, !dbg !2563, !tbaa !1409
  %11 = icmp ne i64* %2, null, !dbg !2564
  %12 = xor i1 %11, true, !dbg !2564
  %13 = zext i1 %12 to i32, !dbg !2564
  %14 = or i32 %10, %13, !dbg !2565
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2518, metadata !652), !dbg !2566
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2567
  %16 = load i32, i32* %15, align 8, !dbg !2567, !tbaa !1347
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2568
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2569
  %19 = load i8*, i8** %18, align 8, !dbg !2569, !tbaa !1436
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2570
  %21 = load i8*, i8** %20, align 8, !dbg !2570, !tbaa !1439
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2571
  %23 = add i64 %22, 1, !dbg !2572
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2519, metadata !652), !dbg !2573
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2540, metadata !652) #10, !dbg !2574
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2576
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2520, metadata !652), !dbg !2577
  %25 = load i32, i32* %15, align 8, !dbg !2578, !tbaa !1347
  %26 = load i8*, i8** %18, align 8, !dbg !2579, !tbaa !1436
  %27 = load i8*, i8** %20, align 8, !dbg !2580, !tbaa !1439
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2581
  store i32 %8, i32* %7, align 4, !dbg !2582, !tbaa !758
  br i1 %11, label %29, label %30, !dbg !2583

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2584, !tbaa !2586
  br label %30, !dbg !2587

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2588
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2589 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2593, !tbaa !660
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2591, metadata !652), !dbg !2594
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2592, metadata !652), !dbg !2595
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2592, metadata !652), !dbg !2595
  %2 = load i32, i32* @nslots, align 4, !dbg !2596, !tbaa !758
  %3 = icmp sgt i32 %2, 1, !dbg !2600
  br i1 %3, label %4, label %14, !dbg !2601

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2603

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2603
  %8 = load i8*, i8** %7, align 8, !dbg !2603, !tbaa !2604
  tail call void @free(i8* %8) #10, !dbg !2606
  %9 = add nuw i64 %6, 1, !dbg !2607
  %10 = load i32, i32* @nslots, align 4, !dbg !2596, !tbaa !758
  %11 = sext i32 %10 to i64, !dbg !2600
  %12 = icmp slt i64 %9, %11, !dbg !2600
  br i1 %12, label %5, label %13, !dbg !2601, !llvm.loop !2609

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2612

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2612
  %16 = load i8*, i8** %15, align 8, !dbg !2612, !tbaa !2604
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2614
  br i1 %17, label %19, label %18, !dbg !2615

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2616
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2618, !tbaa !2619
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2620, !tbaa !2604
  br label %19, !dbg !2621

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2622
  br i1 %20, label %23, label %21, !dbg !2624

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2625
  tail call void @free(i8* %22) #10, !dbg !2627
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2628, !tbaa !660
  br label %23, !dbg !2629

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2630, !tbaa !758
  ret void, !dbg !2631
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2632 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2636, metadata !652), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2637, metadata !652), !dbg !2639
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2640
  ret i8* %3, !dbg !2641
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2642 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2646, metadata !652), !dbg !2660
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2647, metadata !652), !dbg !2661
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2648, metadata !652), !dbg !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2649, metadata !652), !dbg !2663
  %5 = tail call i32* @__errno_location() #1, !dbg !2664
  %6 = load i32, i32* %5, align 4, !dbg !2664, !tbaa !758
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2650, metadata !652), !dbg !2665
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2666, !tbaa !660
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2651, metadata !652), !dbg !2667
  %8 = icmp slt i32 %0, 0, !dbg !2668
  br i1 %8, label %9, label %10, !dbg !2670

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2671
  unreachable, !dbg !2671

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2672, !tbaa !758
  %12 = icmp sgt i32 %11, %0, !dbg !2673
  br i1 %12, label %34, label %13, !dbg !2674

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2675
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2676
  br i1 %15, label %16, label %17, !dbg !2678

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2679
  unreachable, !dbg !2679

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2680
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2680
  %20 = add nsw i32 %0, 1, !dbg !2682
  %21 = sext i32 %20 to i64, !dbg !2683
  %22 = shl nsw i64 %21, 4, !dbg !2684
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2685
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2685
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2651, metadata !652), !dbg !2667
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2686, !tbaa !660
  br i1 %14, label %25, label %26, !dbg !2687

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2688, !tbaa.struct !2690
  br label %26, !dbg !2691

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2692, !tbaa !758
  %28 = sext i32 %27 to i64, !dbg !2693
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2693
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2694
  %31 = sub nsw i32 %20, %27, !dbg !2695
  %32 = sext i32 %31 to i64, !dbg !2696
  %33 = shl nsw i64 %32, 4, !dbg !2697
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2694
  store i32 %20, i32* @nslots, align 4, !dbg !2698, !tbaa !758
  br label %34, !dbg !2699

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2651, metadata !652), !dbg !2667
  %36 = sext i32 %0 to i64, !dbg !2700
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2701
  %38 = load i64, i64* %37, align 8, !dbg !2701, !tbaa !2619
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2655, metadata !652), !dbg !2702
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2703
  %40 = load i8*, i8** %39, align 8, !dbg !2703, !tbaa !2604
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2657, metadata !652), !dbg !2704
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2705
  %42 = load i32, i32* %41, align 4, !dbg !2705, !tbaa !1409
  %43 = or i32 %42, 1, !dbg !2706
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2658, metadata !652), !dbg !2707
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2708
  %45 = load i32, i32* %44, align 8, !dbg !2708, !tbaa !1347
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2709
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2710
  %48 = load i8*, i8** %47, align 8, !dbg !2710, !tbaa !1436
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2711
  %50 = load i8*, i8** %49, align 8, !dbg !2711, !tbaa !1439
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2659, metadata !652), !dbg !2713
  %52 = icmp ugt i64 %38, %51, !dbg !2714
  br i1 %52, label %63, label %53, !dbg !2716

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2717
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2655, metadata !652), !dbg !2702
  store i64 %54, i64* %37, align 8, !dbg !2719, !tbaa !2619
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2720
  br i1 %55, label %57, label %56, !dbg !2722

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2723
  br label %57, !dbg !2723

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2540, metadata !652) #10, !dbg !2724
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2726
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2657, metadata !652), !dbg !2704
  store i8* %58, i8** %39, align 8, !dbg !2727, !tbaa !2604
  %59 = load i32, i32* %44, align 8, !dbg !2728, !tbaa !1347
  %60 = load i8*, i8** %47, align 8, !dbg !2729, !tbaa !1436
  %61 = load i8*, i8** %49, align 8, !dbg !2730, !tbaa !1439
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2731
  br label %63, !dbg !2732

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2657, metadata !652), !dbg !2704
  store i32 %6, i32* %5, align 4, !dbg !2733, !tbaa !758
  ret i8* %64, !dbg !2734
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2735 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2739, metadata !652), !dbg !2742
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2740, metadata !652), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2741, metadata !652), !dbg !2744
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2745
  ret i8* %4, !dbg !2746
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2747 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2751, metadata !652), !dbg !2752
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2636, metadata !652) #10, !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2637, metadata !652) #10, !dbg !2755
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2756
  ret i8* %2, !dbg !2757
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2758 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2762, metadata !652), !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2763, metadata !652), !dbg !2765
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2739, metadata !652) #10, !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2740, metadata !652) #10, !dbg !2768
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2741, metadata !652) #10, !dbg !2769
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2770
  ret i8* %3, !dbg !2771
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2772 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2780, metadata !2786), !dbg !2787
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2776, metadata !652), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2777, metadata !652), !dbg !2790
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2778, metadata !652), !dbg !2791
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2792
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2792
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2779, metadata !1897), !dbg !2793
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2785, metadata !652) #10, !dbg !2794
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2795
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2795
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2780, metadata !652) #10, !dbg !2787
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2780, metadata !2796) #10, !dbg !2787
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2787
  %8 = icmp eq i32 %1, 10, !dbg !2797
  br i1 %8, label %9, label %10, !dbg !2799

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2800, !noalias !2801
  unreachable, !dbg !2800

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2780, metadata !2796) #10, !dbg !2787
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2804
  store i32 %1, i32* %11, align 8, !dbg !2804, !alias.scope !2801
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2804
  %13 = bitcast i32* %12 to i8*, !dbg !2804
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2804
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2805
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2779, metadata !1897), !dbg !2793
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2806
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2807
  ret i8* %14, !dbg !2808
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2809 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2780, metadata !2786), !dbg !2818
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2813, metadata !652), !dbg !2820
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2814, metadata !652), !dbg !2821
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2815, metadata !652), !dbg !2822
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2816, metadata !652), !dbg !2823
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2824
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2824
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2817, metadata !1897), !dbg !2825
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2785, metadata !652) #10, !dbg !2826
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2827
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2827
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2780, metadata !652) #10, !dbg !2818
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2780, metadata !2796) #10, !dbg !2818
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2818
  %9 = icmp eq i32 %1, 10, !dbg !2828
  br i1 %9, label %10, label %11, !dbg !2829

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2830, !noalias !2831
  unreachable, !dbg !2830

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2780, metadata !2796) #10, !dbg !2818
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2834
  store i32 %1, i32* %12, align 8, !dbg !2834, !alias.scope !2831
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2834
  %14 = bitcast i32* %13 to i8*, !dbg !2834
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2834
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2835
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2817, metadata !1897), !dbg !2825
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2836
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2837
  ret i8* %15, !dbg !2838
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2839 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2780, metadata !2786), !dbg !2845
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2843, metadata !652), !dbg !2848
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2844, metadata !652), !dbg !2849
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2776, metadata !652) #10, !dbg !2850
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2777, metadata !652) #10, !dbg !2851
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2778, metadata !652) #10, !dbg !2852
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2853
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2853
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2779, metadata !1897) #10, !dbg !2854
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2785, metadata !652) #10, !dbg !2855
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2856
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2856
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2780, metadata !652) #10, !dbg !2845
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2780, metadata !2796) #10, !dbg !2845
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2845
  %7 = icmp eq i32 %0, 10, !dbg !2857
  br i1 %7, label %8, label %9, !dbg !2858

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2859, !noalias !2860
  unreachable, !dbg !2859

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2780, metadata !2796) #10, !dbg !2845
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2863
  store i32 %0, i32* %10, align 8, !dbg !2863, !alias.scope !2860
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2863
  %12 = bitcast i32* %11 to i8*, !dbg !2863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2863
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2864
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2779, metadata !1897) #10, !dbg !2854
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2865
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2866
  ret i8* %13, !dbg !2867
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2868 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2780, metadata !2786), !dbg !2875
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2872, metadata !652), !dbg !2878
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2873, metadata !652), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2874, metadata !652), !dbg !2880
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2813, metadata !652) #10, !dbg !2881
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2814, metadata !652) #10, !dbg !2882
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2815, metadata !652) #10, !dbg !2883
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2816, metadata !652) #10, !dbg !2884
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2885
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2817, metadata !1897) #10, !dbg !2886
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2785, metadata !652) #10, !dbg !2887
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2888
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2888
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2780, metadata !652) #10, !dbg !2875
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2780, metadata !2796) #10, !dbg !2875
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2875
  %8 = icmp eq i32 %0, 10, !dbg !2889
  br i1 %8, label %9, label %10, !dbg !2890

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2891, !noalias !2892
  unreachable, !dbg !2891

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2780, metadata !2796) #10, !dbg !2875
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2895
  store i32 %0, i32* %11, align 8, !dbg !2895, !alias.scope !2892
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2895
  %13 = bitcast i32* %12 to i8*, !dbg !2895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2895
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2896
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2817, metadata !1897) #10, !dbg !2886
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2897
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2898
  ret i8* %14, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2900 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2904, metadata !652), !dbg !2908
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2905, metadata !652), !dbg !2909
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2906, metadata !652), !dbg !2910
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2911
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2911
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2912, !tbaa.struct !2913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2907, metadata !1897), !dbg !2914
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1367, metadata !652), !dbg !2915
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1368, metadata !652), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1369, metadata !652), !dbg !2918
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1370, metadata !652), !dbg !2919
  %6 = lshr i8 %2, 5, !dbg !2920
  %7 = zext i8 %6 to i64, !dbg !2920
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2921
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1371, metadata !652), !dbg !2922
  %9 = and i8 %2, 31, !dbg !2923
  %10 = zext i8 %9 to i32, !dbg !2924
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1373, metadata !652), !dbg !2925
  %11 = load i32, i32* %8, align 4, !dbg !2926, !tbaa !758
  %12 = lshr i32 %11, %10, !dbg !2927
  %13 = and i32 %12, 1, !dbg !2928
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1374, metadata !652), !dbg !2929
  %14 = xor i32 %13, 1, !dbg !2930
  %15 = shl i32 %14, %10, !dbg !2931
  %16 = xor i32 %15, %11, !dbg !2932
  store i32 %16, i32* %8, align 4, !dbg !2932, !tbaa !758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2907, metadata !1897), !dbg !2914
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2933
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2934
  ret i8* %17, !dbg !2935
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2936 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2940, metadata !652), !dbg !2942
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2941, metadata !652), !dbg !2943
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2904, metadata !652) #10, !dbg !2944
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2905, metadata !652) #10, !dbg !2946
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2906, metadata !652) #10, !dbg !2947
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2949, !tbaa.struct !2913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2907, metadata !1897) #10, !dbg !2950
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1367, metadata !652) #10, !dbg !2951
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1368, metadata !652) #10, !dbg !2953
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1369, metadata !652) #10, !dbg !2954
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1370, metadata !652) #10, !dbg !2955
  %5 = lshr i8 %1, 5, !dbg !2956
  %6 = zext i8 %5 to i64, !dbg !2956
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2957
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1371, metadata !652) #10, !dbg !2958
  %8 = and i8 %1, 31, !dbg !2959
  %9 = zext i8 %8 to i32, !dbg !2960
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1373, metadata !652) #10, !dbg !2961
  %10 = load i32, i32* %7, align 4, !dbg !2962, !tbaa !758
  %11 = lshr i32 %10, %9, !dbg !2963
  %12 = and i32 %11, 1, !dbg !2964
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1374, metadata !652) #10, !dbg !2965
  %13 = xor i32 %12, 1, !dbg !2966
  %14 = shl i32 %13, %9, !dbg !2967
  %15 = xor i32 %14, %10, !dbg !2968
  store i32 %15, i32* %7, align 4, !dbg !2968, !tbaa !758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2907, metadata !1897) #10, !dbg !2950
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2969
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2970
  ret i8* %16, !dbg !2971
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2972 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2974, metadata !652), !dbg !2975
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2940, metadata !652) #10, !dbg !2976
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2941, metadata !652) #10, !dbg !2978
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2904, metadata !652) #10, !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2905, metadata !652) #10, !dbg !2981
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2906, metadata !652) #10, !dbg !2982
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2983
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2983
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2984, !tbaa.struct !2913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2907, metadata !1897) #10, !dbg !2985
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1367, metadata !652) #10, !dbg !2986
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1368, metadata !652) #10, !dbg !2988
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1369, metadata !652) #10, !dbg !2989
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1370, metadata !652) #10, !dbg !2990
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2991
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1371, metadata !652) #10, !dbg !2992
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1373, metadata !652) #10, !dbg !2993
  %5 = load i32, i32* %4, align 4, !dbg !2994, !tbaa !758
  %6 = or i32 %5, 67108864, !dbg !2995
  store i32 %6, i32* %4, align 4, !dbg !2995, !tbaa !758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2907, metadata !1897) #10, !dbg !2985
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2996
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2997
  ret i8* %7, !dbg !2998
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2999 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3001, metadata !652), !dbg !3003
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3002, metadata !652), !dbg !3004
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2904, metadata !652) #10, !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2905, metadata !652) #10, !dbg !3007
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2906, metadata !652) #10, !dbg !3008
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3009
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3009
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3010, !tbaa.struct !2913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2907, metadata !1897) #10, !dbg !3011
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1367, metadata !652) #10, !dbg !3012
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1368, metadata !652) #10, !dbg !3014
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1369, metadata !652) #10, !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1370, metadata !652) #10, !dbg !3016
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3017
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1371, metadata !652) #10, !dbg !3018
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1373, metadata !652) #10, !dbg !3019
  %6 = load i32, i32* %5, align 4, !dbg !3020, !tbaa !758
  %7 = or i32 %6, 67108864, !dbg !3021
  store i32 %7, i32* %5, align 4, !dbg !3021, !tbaa !758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2907, metadata !1897) #10, !dbg !3011
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3022
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3023
  ret i8* %8, !dbg !3024
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3025 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2780, metadata !2786), !dbg !3031
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3027, metadata !652), !dbg !3033
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3028, metadata !652), !dbg !3034
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3029, metadata !652), !dbg !3035
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3036
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3036
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2785, metadata !652) #10, !dbg !3037
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3038
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3038
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2780, metadata !652) #10, !dbg !3031
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2780, metadata !2796) #10, !dbg !3031
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3031
  %9 = icmp eq i32 %1, 10, !dbg !3039
  br i1 %9, label %10, label %11, !dbg !3040

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3041, !noalias !3042
  unreachable, !dbg !3041

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2780, metadata !2796) #10, !dbg !3031
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3045
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3046
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3047
  store i32 %1, i32* %13, align 8, !dbg !3047
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3047
  %15 = bitcast i32* %14 to i8*, !dbg !3047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3047
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3030, metadata !1897), !dbg !3048
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1367, metadata !652), !dbg !3049
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1368, metadata !652), !dbg !3051
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1369, metadata !652), !dbg !3052
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1370, metadata !652), !dbg !3053
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3054
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1371, metadata !652), !dbg !3055
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1373, metadata !652), !dbg !3056
  %17 = load i32, i32* %16, align 4, !dbg !3057, !tbaa !758
  %18 = or i32 %17, 67108864, !dbg !3058
  store i32 %18, i32* %16, align 4, !dbg !3058, !tbaa !758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3030, metadata !1897), !dbg !3048
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3059
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3060
  ret i8* %19, !dbg !3061
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3062 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3066, metadata !652), !dbg !3070
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3067, metadata !652), !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3068, metadata !652), !dbg !3072
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3069, metadata !652), !dbg !3073
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3074, metadata !652) #10, !dbg !3084
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3079, metadata !652) #10, !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3080, metadata !652) #10, !dbg !3087
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3081, metadata !652) #10, !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3082, metadata !652) #10, !dbg !3089
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3090
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3090
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3091, !tbaa.struct !2913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3083, metadata !1897) #10, !dbg !3092
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1417, metadata !652) #10, !dbg !3093
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1418, metadata !652) #10, !dbg !3095
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1419, metadata !652) #10, !dbg !3096
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1417, metadata !652) #10, !dbg !3093
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1417, metadata !652) #10, !dbg !3093
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3097
  store i32 10, i32* %7, align 8, !dbg !3098, !tbaa !1347
  %8 = icmp ne i8* %1, null, !dbg !3099
  %9 = icmp ne i8* %2, null, !dbg !3100
  %10 = and i1 %8, %9, !dbg !3101
  br i1 %10, label %12, label %11, !dbg !3101

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3102
  unreachable, !dbg !3102

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3103
  store i8* %1, i8** %13, align 8, !dbg !3104, !tbaa !1436
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3105
  store i8* %2, i8** %14, align 8, !dbg !3106, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3083, metadata !1897) #10, !dbg !3092
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3107
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3108
  ret i8* %15, !dbg !3109
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3075 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3074, metadata !652), !dbg !3110
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3079, metadata !652), !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3080, metadata !652), !dbg !3112
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3081, metadata !652), !dbg !3113
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3082, metadata !652), !dbg !3114
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3115
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3116, !tbaa.struct !2913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3083, metadata !1897), !dbg !3117
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1417, metadata !652) #10, !dbg !3118
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1418, metadata !652) #10, !dbg !3120
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1419, metadata !652) #10, !dbg !3121
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1417, metadata !652) #10, !dbg !3118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1417, metadata !652) #10, !dbg !3118
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3122
  store i32 10, i32* %8, align 8, !dbg !3123, !tbaa !1347
  %9 = icmp ne i8* %1, null, !dbg !3124
  %10 = icmp ne i8* %2, null, !dbg !3125
  %11 = and i1 %9, %10, !dbg !3126
  br i1 %11, label %13, label %12, !dbg !3126

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3127
  unreachable, !dbg !3127

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3128
  store i8* %1, i8** %14, align 8, !dbg !3129, !tbaa !1436
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3130
  store i8* %2, i8** %15, align 8, !dbg !3131, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3083, metadata !1897), !dbg !3117
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3132
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3133
  ret i8* %16, !dbg !3134
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3135 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3139, metadata !652), !dbg !3142
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3140, metadata !652), !dbg !3143
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3141, metadata !652), !dbg !3144
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3066, metadata !652) #10, !dbg !3145
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3067, metadata !652) #10, !dbg !3147
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3068, metadata !652) #10, !dbg !3148
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3069, metadata !652) #10, !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3074, metadata !652) #10, !dbg !3150
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3079, metadata !652) #10, !dbg !3152
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3080, metadata !652) #10, !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3081, metadata !652) #10, !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3082, metadata !652) #10, !dbg !3155
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3156
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3156
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3157, !tbaa.struct !2913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3083, metadata !1897) #10, !dbg !3158
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1417, metadata !652) #10, !dbg !3159
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1418, metadata !652) #10, !dbg !3161
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1419, metadata !652) #10, !dbg !3162
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1417, metadata !652) #10, !dbg !3159
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1417, metadata !652) #10, !dbg !3159
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3163
  store i32 10, i32* %6, align 8, !dbg !3164, !tbaa !1347
  %7 = icmp ne i8* %0, null, !dbg !3165
  %8 = icmp ne i8* %1, null, !dbg !3166
  %9 = and i1 %7, %8, !dbg !3167
  br i1 %9, label %11, label %10, !dbg !3167

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3168
  unreachable, !dbg !3168

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3169
  store i8* %0, i8** %12, align 8, !dbg !3170, !tbaa !1436
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3171
  store i8* %1, i8** %13, align 8, !dbg !3172, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3083, metadata !1897) #10, !dbg !3158
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3173
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3174
  ret i8* %14, !dbg !3175
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3176 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3180, metadata !652), !dbg !3184
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3181, metadata !652), !dbg !3185
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3182, metadata !652), !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3183, metadata !652), !dbg !3187
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3074, metadata !652) #10, !dbg !3188
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3079, metadata !652) #10, !dbg !3190
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3080, metadata !652) #10, !dbg !3191
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3081, metadata !652) #10, !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3082, metadata !652) #10, !dbg !3193
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3194
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3195, !tbaa.struct !2913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3083, metadata !1897) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1417, metadata !652) #10, !dbg !3197
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1418, metadata !652) #10, !dbg !3199
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1419, metadata !652) #10, !dbg !3200
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1417, metadata !652) #10, !dbg !3197
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1417, metadata !652) #10, !dbg !3197
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3201
  store i32 10, i32* %7, align 8, !dbg !3202, !tbaa !1347
  %8 = icmp ne i8* %0, null, !dbg !3203
  %9 = icmp ne i8* %1, null, !dbg !3204
  %10 = and i1 %8, %9, !dbg !3205
  br i1 %10, label %12, label %11, !dbg !3205

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3206
  unreachable, !dbg !3206

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3207
  store i8* %0, i8** %13, align 8, !dbg !3208, !tbaa !1436
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3209
  store i8* %1, i8** %14, align 8, !dbg !3210, !tbaa !1439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3083, metadata !1897) #10, !dbg !3196
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3211
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3212
  ret i8* %15, !dbg !3213
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3214 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3218, metadata !652), !dbg !3221
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3219, metadata !652), !dbg !3222
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3220, metadata !652), !dbg !3223
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3224
  ret i8* %4, !dbg !3225
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3226 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3230, metadata !652), !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3231, metadata !652), !dbg !3233
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3218, metadata !652) #10, !dbg !3234
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3219, metadata !652) #10, !dbg !3236
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3220, metadata !652) #10, !dbg !3237
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3238
  ret i8* %3, !dbg !3239
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3240 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3244, metadata !652), !dbg !3246
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3245, metadata !652), !dbg !3247
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3218, metadata !652) #10, !dbg !3248
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3219, metadata !652) #10, !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3220, metadata !652) #10, !dbg !3251
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3252
  ret i8* %3, !dbg !3253
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3254 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3256, metadata !652), !dbg !3257
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3244, metadata !652) #10, !dbg !3258
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3245, metadata !652) #10, !dbg !3260
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3218, metadata !652) #10, !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3219, metadata !652) #10, !dbg !3263
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3220, metadata !652) #10, !dbg !3264
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3265
  ret i8* %2, !dbg !3266
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3270, metadata !652), !dbg !3271
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10, !dbg !3272
  ret i32 %2, !dbg !3273
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3274 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3319, metadata !652), !dbg !3325
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3320, metadata !652), !dbg !3326
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3321, metadata !652), !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3322, metadata !652), !dbg !3328
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3323, metadata !652), !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3324, metadata !652), !dbg !3330
  %7 = icmp eq i8* %1, null, !dbg !3331
  br i1 %7, label %10, label %8, !dbg !3333

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3334
  br label %12, !dbg !3334

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.81, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3335
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i32 5) #10, !dbg !3336
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3337
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.83, i64 0, i64 0), i32 5) #10, !dbg !3339
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3340
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
  ], !dbg !3341

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3342
  unreachable, !dbg !3342

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.84, i64 0, i64 0), i32 5) #10, !dbg !3344
  %20 = load i8*, i8** %4, align 8, !dbg !3344, !tbaa !660
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3345
  br label %146, !dbg !3347

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.85, i64 0, i64 0), i32 5) #10, !dbg !3348
  %24 = load i8*, i8** %4, align 8, !dbg !3348, !tbaa !660
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3348
  %26 = load i8*, i8** %25, align 8, !dbg !3348, !tbaa !660
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3349
  br label %146, !dbg !3350

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.86, i64 0, i64 0), i32 5) #10, !dbg !3351
  %30 = load i8*, i8** %4, align 8, !dbg !3351, !tbaa !660
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3351
  %32 = load i8*, i8** %31, align 8, !dbg !3351, !tbaa !660
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3351
  %34 = load i8*, i8** %33, align 8, !dbg !3351, !tbaa !660
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3352
  br label %146, !dbg !3353

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.87, i64 0, i64 0), i32 5) #10, !dbg !3354
  %38 = load i8*, i8** %4, align 8, !dbg !3354, !tbaa !660
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3354
  %40 = load i8*, i8** %39, align 8, !dbg !3354, !tbaa !660
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3354
  %42 = load i8*, i8** %41, align 8, !dbg !3354, !tbaa !660
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3354
  %44 = load i8*, i8** %43, align 8, !dbg !3354, !tbaa !660
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3355
  br label %146, !dbg !3356

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.88, i64 0, i64 0), i32 5) #10, !dbg !3357
  %48 = load i8*, i8** %4, align 8, !dbg !3357, !tbaa !660
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3357
  %50 = load i8*, i8** %49, align 8, !dbg !3357, !tbaa !660
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3357
  %52 = load i8*, i8** %51, align 8, !dbg !3357, !tbaa !660
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3357
  %54 = load i8*, i8** %53, align 8, !dbg !3357, !tbaa !660
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3357
  %56 = load i8*, i8** %55, align 8, !dbg !3357, !tbaa !660
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3358
  br label %146, !dbg !3359

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.89, i64 0, i64 0), i32 5) #10, !dbg !3360
  %60 = load i8*, i8** %4, align 8, !dbg !3360, !tbaa !660
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3360
  %62 = load i8*, i8** %61, align 8, !dbg !3360, !tbaa !660
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3360
  %64 = load i8*, i8** %63, align 8, !dbg !3360, !tbaa !660
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3360
  %66 = load i8*, i8** %65, align 8, !dbg !3360, !tbaa !660
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3360
  %68 = load i8*, i8** %67, align 8, !dbg !3360, !tbaa !660
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3360
  %70 = load i8*, i8** %69, align 8, !dbg !3360, !tbaa !660
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3361
  br label %146, !dbg !3362

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.90, i64 0, i64 0), i32 5) #10, !dbg !3363
  %74 = load i8*, i8** %4, align 8, !dbg !3363, !tbaa !660
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3363
  %76 = load i8*, i8** %75, align 8, !dbg !3363, !tbaa !660
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3363
  %78 = load i8*, i8** %77, align 8, !dbg !3363, !tbaa !660
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3363
  %80 = load i8*, i8** %79, align 8, !dbg !3363, !tbaa !660
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3363
  %82 = load i8*, i8** %81, align 8, !dbg !3363, !tbaa !660
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3363
  %84 = load i8*, i8** %83, align 8, !dbg !3363, !tbaa !660
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3363
  %86 = load i8*, i8** %85, align 8, !dbg !3363, !tbaa !660
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3364
  br label %146, !dbg !3365

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.91, i64 0, i64 0), i32 5) #10, !dbg !3366
  %90 = load i8*, i8** %4, align 8, !dbg !3366, !tbaa !660
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3366
  %92 = load i8*, i8** %91, align 8, !dbg !3366, !tbaa !660
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3366
  %94 = load i8*, i8** %93, align 8, !dbg !3366, !tbaa !660
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3366
  %96 = load i8*, i8** %95, align 8, !dbg !3366, !tbaa !660
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3366
  %98 = load i8*, i8** %97, align 8, !dbg !3366, !tbaa !660
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3366
  %100 = load i8*, i8** %99, align 8, !dbg !3366, !tbaa !660
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3366
  %102 = load i8*, i8** %101, align 8, !dbg !3366, !tbaa !660
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3366
  %104 = load i8*, i8** %103, align 8, !dbg !3366, !tbaa !660
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3367
  br label %146, !dbg !3368

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.92, i64 0, i64 0), i32 5) #10, !dbg !3369
  %108 = load i8*, i8** %4, align 8, !dbg !3369, !tbaa !660
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3369
  %110 = load i8*, i8** %109, align 8, !dbg !3369, !tbaa !660
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3369
  %112 = load i8*, i8** %111, align 8, !dbg !3369, !tbaa !660
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3369
  %114 = load i8*, i8** %113, align 8, !dbg !3369, !tbaa !660
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3369
  %116 = load i8*, i8** %115, align 8, !dbg !3369, !tbaa !660
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3369
  %118 = load i8*, i8** %117, align 8, !dbg !3369, !tbaa !660
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3369
  %120 = load i8*, i8** %119, align 8, !dbg !3369, !tbaa !660
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3369
  %122 = load i8*, i8** %121, align 8, !dbg !3369, !tbaa !660
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3369
  %124 = load i8*, i8** %123, align 8, !dbg !3369, !tbaa !660
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3370
  br label %146, !dbg !3371

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.93, i64 0, i64 0), i32 5) #10, !dbg !3372
  %128 = load i8*, i8** %4, align 8, !dbg !3372, !tbaa !660
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3372
  %130 = load i8*, i8** %129, align 8, !dbg !3372, !tbaa !660
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3372
  %132 = load i8*, i8** %131, align 8, !dbg !3372, !tbaa !660
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3372
  %134 = load i8*, i8** %133, align 8, !dbg !3372, !tbaa !660
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3372
  %136 = load i8*, i8** %135, align 8, !dbg !3372, !tbaa !660
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3372
  %138 = load i8*, i8** %137, align 8, !dbg !3372, !tbaa !660
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3372
  %140 = load i8*, i8** %139, align 8, !dbg !3372, !tbaa !660
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3372
  %142 = load i8*, i8** %141, align 8, !dbg !3372, !tbaa !660
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3372
  %144 = load i8*, i8** %143, align 8, !dbg !3372, !tbaa !660
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3373
  br label %146, !dbg !3374

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3375
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3376 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3380, metadata !652), !dbg !3386
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3381, metadata !652), !dbg !3387
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3382, metadata !652), !dbg !3388
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3383, metadata !652), !dbg !3389
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3384, metadata !652), !dbg !3390
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3385, metadata !652), !dbg !3391
  br label %6, !dbg !3392

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3385, metadata !652), !dbg !3391
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3394
  %9 = load i8*, i8** %8, align 8, !dbg !3394, !tbaa !660
  %10 = icmp eq i8* %9, null, !dbg !3397
  %11 = add i64 %7, 1, !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3385, metadata !652), !dbg !3391
  br i1 %10, label %12, label %6, !dbg !3397, !llvm.loop !3401

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3404
  ret void, !dbg !3405
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3406 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3417, metadata !652), !dbg !3425
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3418, metadata !652), !dbg !3426
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3419, metadata !652), !dbg !3427
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3420, metadata !652), !dbg !3428
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3421, metadata !652), !dbg !3429
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3430
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3430
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3423, metadata !652), !dbg !3431
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3422, metadata !652), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3422, metadata !652), !dbg !3432
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3433
  %12 = icmp ult i32 %11, 41, !dbg !3433
  br i1 %12, label %13, label %18, !dbg !3433

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3437
  %15 = sext i32 %11 to i64, !dbg !3437
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3437
  %17 = add i32 %11, 8, !dbg !3437
  store i32 %17, i32* %8, align 8, !dbg !3437
  br label %21, !dbg !3437

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3439
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3439
  store i8* %20, i8** %10, align 8, !dbg !3439
  br label %21, !dbg !3439

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3433
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3441
  %25 = load i8*, i8** %24, align 8, !dbg !3441
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3443
  store i8* %25, i8** %26, align 16, !dbg !3444, !tbaa !660
  %27 = icmp eq i8* %25, null, !dbg !3445
  br i1 %27, label %30, label %28, !dbg !3446

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  %29 = icmp ult i32 %22, 41, !dbg !3433
  br i1 %29, label %35, label %32, !dbg !3433

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3448
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3449
  ret void, !dbg !3449

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3439
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3439
  store i8* %34, i8** %10, align 8, !dbg !3439
  br label %40, !dbg !3439

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3437
  %37 = sext i32 %22 to i64, !dbg !3437
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3437
  %39 = add i32 %22, 8, !dbg !3437
  store i32 %39, i32* %8, align 8, !dbg !3437
  br label %40, !dbg !3437

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3433
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3441
  %44 = load i8*, i8** %43, align 8, !dbg !3441
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3443
  store i8* %44, i8** %45, align 8, !dbg !3444, !tbaa !660
  %46 = icmp eq i8* %44, null, !dbg !3445
  br i1 %46, label %30, label %47, !dbg !3446

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  %48 = icmp ult i32 %41, 41, !dbg !3433
  br i1 %48, label %52, label %49, !dbg !3433

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3439
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3439
  store i8* %51, i8** %10, align 8, !dbg !3439
  br label %57, !dbg !3439

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3437
  %54 = sext i32 %41 to i64, !dbg !3437
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3437
  %56 = add i32 %41, 8, !dbg !3437
  store i32 %56, i32* %8, align 8, !dbg !3437
  br label %57, !dbg !3437

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3433
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3441
  %61 = load i8*, i8** %60, align 8, !dbg !3441
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3443
  store i8* %61, i8** %62, align 16, !dbg !3444, !tbaa !660
  %63 = icmp eq i8* %61, null, !dbg !3445
  br i1 %63, label %30, label %64, !dbg !3446

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  %65 = icmp ult i32 %58, 41, !dbg !3433
  br i1 %65, label %69, label %66, !dbg !3433

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3439
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3439
  store i8* %68, i8** %10, align 8, !dbg !3439
  br label %74, !dbg !3439

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3437
  %71 = sext i32 %58 to i64, !dbg !3437
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3437
  %73 = add i32 %58, 8, !dbg !3437
  store i32 %73, i32* %8, align 8, !dbg !3437
  br label %74, !dbg !3437

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3433
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3441
  %78 = load i8*, i8** %77, align 8, !dbg !3441
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3443
  store i8* %78, i8** %79, align 8, !dbg !3444, !tbaa !660
  %80 = icmp eq i8* %78, null, !dbg !3445
  br i1 %80, label %30, label %81, !dbg !3446

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  %82 = icmp ult i32 %75, 41, !dbg !3433
  br i1 %82, label %86, label %83, !dbg !3433

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3439
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3439
  store i8* %85, i8** %10, align 8, !dbg !3439
  br label %91, !dbg !3439

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3437
  %88 = sext i32 %75 to i64, !dbg !3437
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3437
  %90 = add i32 %75, 8, !dbg !3437
  store i32 %90, i32* %8, align 8, !dbg !3437
  br label %91, !dbg !3437

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3433
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3441
  %95 = load i8*, i8** %94, align 8, !dbg !3441
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3443
  store i8* %95, i8** %96, align 16, !dbg !3444, !tbaa !660
  %97 = icmp eq i8* %95, null, !dbg !3445
  br i1 %97, label %30, label %98, !dbg !3446

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  %99 = icmp ult i32 %92, 41, !dbg !3433
  br i1 %99, label %103, label %100, !dbg !3433

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3439
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3439
  store i8* %102, i8** %10, align 8, !dbg !3439
  br label %108, !dbg !3439

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3437
  %105 = sext i32 %92 to i64, !dbg !3437
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3437
  %107 = add i32 %92, 8, !dbg !3437
  store i32 %107, i32* %8, align 8, !dbg !3437
  br label %108, !dbg !3437

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3441
  %111 = load i8*, i8** %110, align 8, !dbg !3441
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3443
  store i8* %111, i8** %112, align 8, !dbg !3444, !tbaa !660
  %113 = icmp eq i8* %111, null, !dbg !3445
  br i1 %113, label %30, label %114, !dbg !3446

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  %115 = load i8*, i8** %10, align 8, !dbg !3439
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3439
  store i8* %116, i8** %10, align 8, !dbg !3439
  %117 = bitcast i8* %115 to i8**, !dbg !3441
  %118 = load i8*, i8** %117, align 8, !dbg !3441
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3443
  store i8* %118, i8** %119, align 16, !dbg !3444, !tbaa !660
  %120 = icmp eq i8* %118, null, !dbg !3445
  br i1 %120, label %30, label %121, !dbg !3446

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  %122 = load i8*, i8** %10, align 8, !dbg !3439
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3439
  store i8* %123, i8** %10, align 8, !dbg !3439
  %124 = bitcast i8* %122 to i8**, !dbg !3441
  %125 = load i8*, i8** %124, align 8, !dbg !3441
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3443
  store i8* %125, i8** %126, align 8, !dbg !3444, !tbaa !660
  %127 = icmp eq i8* %125, null, !dbg !3445
  br i1 %127, label %30, label %128, !dbg !3446

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  %129 = load i8*, i8** %10, align 8, !dbg !3439
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3439
  store i8* %130, i8** %10, align 8, !dbg !3439
  %131 = bitcast i8* %129 to i8**, !dbg !3441
  %132 = load i8*, i8** %131, align 8, !dbg !3441
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3443
  store i8* %132, i8** %133, align 16, !dbg !3444, !tbaa !660
  %134 = icmp eq i8* %132, null, !dbg !3445
  br i1 %134, label %30, label %135, !dbg !3446

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  %136 = load i8*, i8** %10, align 8, !dbg !3439
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3439
  store i8* %137, i8** %10, align 8, !dbg !3439
  %138 = bitcast i8* %136 to i8**, !dbg !3441
  %139 = load i8*, i8** %138, align 8, !dbg !3441
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3443
  store i8* %139, i8** %140, align 8, !dbg !3444, !tbaa !660
  %141 = icmp eq i8* %139, null, !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3422, metadata !652), !dbg !3432
  %142 = select i1 %141, i64 9, i64 10, !dbg !3446
  br label %30, !dbg !3446
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3450 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3454, metadata !652), !dbg !3463
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3455, metadata !652), !dbg !3464
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3456, metadata !652), !dbg !3465
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3457, metadata !652), !dbg !3466
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3467
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3467
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3458, metadata !652), !dbg !3468
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3469
  call void @llvm.va_start(i8* nonnull %6), !dbg !3469
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3470
  call void @llvm.va_end(i8* nonnull %6), !dbg !3471
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3472
  ret void, !dbg !3472
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3473 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.96, i64 0, i64 0), i32 5) #10, !dbg !3474
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.97, i64 0, i64 0)) #10, !dbg !3475
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.98, i64 0, i64 0), i32 5) #10, !dbg !3477
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.99, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.100, i64 0, i64 0)) #10, !dbg !3478
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.101, i64 0, i64 0), i32 5) #10, !dbg !3479
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3479, !tbaa !660
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3480
  ret void, !dbg !3481
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3482 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3486, metadata !652), !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3487, metadata !652), !dbg !3489
  %3 = udiv i64 9223372036854775807, %1, !dbg !3490
  %4 = icmp ult i64 %3, %0, !dbg !3490
  br i1 %4, label %5, label %6, !dbg !3492

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3493
  unreachable, !dbg !3493

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3494
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3495, metadata !652) #10, !dbg !3502
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3504
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3501, metadata !652) #10, !dbg !3505
  %9 = icmp eq i8* %8, null, !dbg !3506
  %10 = icmp ne i64 %7, 0, !dbg !3508
  %11 = and i1 %10, %9, !dbg !3510
  br i1 %11, label %12, label %13, !dbg !3510

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3511
  unreachable, !dbg !3511

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3512
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3496 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3495, metadata !652), !dbg !3513
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3514
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3501, metadata !652), !dbg !3515
  %3 = icmp eq i8* %2, null, !dbg !3516
  %4 = icmp ne i64 %0, 0, !dbg !3517
  %5 = and i1 %4, %3, !dbg !3518
  br i1 %5, label %6, label %7, !dbg !3518

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3519
  unreachable, !dbg !3519

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3520
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3521 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3525, metadata !652), !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3526, metadata !652), !dbg !3529
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3527, metadata !652), !dbg !3530
  %4 = udiv i64 9223372036854775807, %2, !dbg !3531
  %5 = icmp ult i64 %4, %1, !dbg !3531
  br i1 %5, label %6, label %7, !dbg !3533

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3534
  unreachable, !dbg !3534

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3535
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3536, metadata !652) #10, !dbg !3542
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3541, metadata !652) #10, !dbg !3544
  %9 = icmp eq i64 %8, 0, !dbg !3545
  %10 = icmp ne i8* %0, null, !dbg !3547
  %11 = and i1 %10, %9, !dbg !3549
  br i1 %11, label %12, label %13, !dbg !3549

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3550
  br label %19, !dbg !3552

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3553
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3536, metadata !652) #10, !dbg !3542
  %15 = icmp eq i8* %14, null, !dbg !3554
  %16 = icmp ne i64 %8, 0, !dbg !3556
  %17 = and i1 %16, %15, !dbg !3558
  br i1 %17, label %18, label %19, !dbg !3558

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3559
  unreachable, !dbg !3559

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3560
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3537 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3536, metadata !652), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3541, metadata !652), !dbg !3562
  %3 = icmp eq i64 %1, 0, !dbg !3563
  %4 = icmp ne i8* %0, null, !dbg !3564
  %5 = and i1 %4, %3, !dbg !3565
  br i1 %5, label %6, label %7, !dbg !3565

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3566
  br label %13, !dbg !3567

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3568
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3536, metadata !652), !dbg !3561
  %9 = icmp eq i8* %8, null, !dbg !3569
  %10 = icmp ne i64 %1, 0, !dbg !3570
  %11 = and i1 %10, %9, !dbg !3571
  br i1 %11, label %12, label %13, !dbg !3571

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3572
  unreachable, !dbg !3572

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3573
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !611 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !616, metadata !652), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !617, metadata !652), !dbg !3575
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !618, metadata !652), !dbg !3576
  %4 = load i64, i64* %1, align 8, !dbg !3577, !tbaa !2586
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !619, metadata !652), !dbg !3578
  %5 = icmp eq i8* %0, null, !dbg !3579
  br i1 %5, label %6, label %13, !dbg !3581

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3582
  br i1 %7, label %8, label %17, !dbg !3585

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3586
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !619, metadata !652), !dbg !3578
  %10 = icmp ugt i64 %2, 128, !dbg !3588
  %11 = zext i1 %10 to i64, !dbg !3588
  %12 = add nuw nsw i64 %9, %11, !dbg !3589
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !619, metadata !652), !dbg !3578
  br label %17, !dbg !3590

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3591
  %15 = icmp ugt i64 %14, %4, !dbg !3594
  br i1 %15, label %20, label %16, !dbg !3595

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3596
  unreachable, !dbg !3596

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !619, metadata !652), !dbg !3578
  store i64 %18, i64* %1, align 8, !dbg !3597, !tbaa !2586
  %19 = mul i64 %18, %2, !dbg !3598
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3536, metadata !652) #10, !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3541, metadata !652) #10, !dbg !3601
  br label %27, !dbg !3602

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3603
  %22 = add i64 %4, 1, !dbg !3604
  %23 = add i64 %22, %21, !dbg !3605
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !619, metadata !652), !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !619, metadata !652), !dbg !3578
  store i64 %23, i64* %1, align 8, !dbg !3597, !tbaa !2586
  %24 = mul i64 %23, %2, !dbg !3598
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3536, metadata !652) #10, !dbg !3599
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3541, metadata !652) #10, !dbg !3601
  %25 = icmp eq i64 %24, 0, !dbg !3606
  br i1 %25, label %26, label %27, !dbg !3602

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3607
  br label %34, !dbg !3608

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3609
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3536, metadata !652) #10, !dbg !3599
  %30 = icmp eq i8* %29, null, !dbg !3610
  %31 = icmp ne i64 %28, 0, !dbg !3611
  %32 = and i1 %31, %30, !dbg !3612
  br i1 %32, label %33, label %34, !dbg !3612

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3613
  unreachable, !dbg !3613

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3614
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3615 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3617, metadata !652), !dbg !3618
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3495, metadata !652) #10, !dbg !3619
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3621
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3501, metadata !652) #10, !dbg !3622
  %3 = icmp eq i8* %2, null, !dbg !3623
  %4 = icmp ne i64 %0, 0, !dbg !3624
  %5 = and i1 %4, %3, !dbg !3625
  br i1 %5, label %6, label %7, !dbg !3625

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3626
  unreachable, !dbg !3626

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3627
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3628 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3632, metadata !652), !dbg !3634
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3633, metadata !652), !dbg !3635
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !616, metadata !652) #10, !dbg !3636
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !617, metadata !652) #10, !dbg !3638
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !618, metadata !652) #10, !dbg !3639
  %3 = load i64, i64* %1, align 8, !dbg !3640, !tbaa !2586
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !619, metadata !652) #10, !dbg !3641
  %4 = icmp eq i8* %0, null, !dbg !3642
  br i1 %4, label %5, label %8, !dbg !3643

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3644
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !619, metadata !652) #10, !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !619, metadata !652) #10, !dbg !3641
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !619, metadata !652) #10, !dbg !3641
  store i64 %7, i64* %1, align 8, !dbg !3646, !tbaa !2586
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3536, metadata !652) #10, !dbg !3647
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3541, metadata !652) #10, !dbg !3649
  br label %17, !dbg !3650

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3651
  br i1 %9, label %11, label %10, !dbg !3652

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3653
  unreachable, !dbg !3653

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3654
  %13 = add i64 %3, 1, !dbg !3655
  %14 = add i64 %13, %12, !dbg !3656
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !619, metadata !652) #10, !dbg !3641
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !619, metadata !652) #10, !dbg !3641
  store i64 %14, i64* %1, align 8, !dbg !3646, !tbaa !2586
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3536, metadata !652) #10, !dbg !3647
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3541, metadata !652) #10, !dbg !3649
  %15 = icmp eq i64 %14, 0, !dbg !3657
  br i1 %15, label %16, label %17, !dbg !3650

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3658
  br label %24, !dbg !3659

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3660
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3536, metadata !652) #10, !dbg !3647
  %20 = icmp eq i8* %19, null, !dbg !3661
  %21 = icmp ne i64 %18, 0, !dbg !3662
  %22 = and i1 %21, %20, !dbg !3663
  br i1 %22, label %23, label %24, !dbg !3663

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3664
  unreachable, !dbg !3664

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3665
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3666 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3668, metadata !652), !dbg !3669
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3495, metadata !652) #10, !dbg !3670
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3672
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3501, metadata !652) #10, !dbg !3673
  %3 = icmp eq i8* %2, null, !dbg !3674
  %4 = icmp ne i64 %0, 0, !dbg !3675
  %5 = and i1 %4, %3, !dbg !3676
  br i1 %5, label %6, label %7, !dbg !3676

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3677
  unreachable, !dbg !3677

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3678
  ret i8* %2, !dbg !3679
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3680 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3682, metadata !652), !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3683, metadata !652), !dbg !3686
  %3 = udiv i64 9223372036854775807, %1, !dbg !3687
  %4 = icmp ult i64 %3, %0, !dbg !3687
  br i1 %4, label %8, label %5, !dbg !3689

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3690
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3684, metadata !652), !dbg !3692
  %7 = icmp eq i8* %6, null, !dbg !3693
  br i1 %7, label %8, label %9, !dbg !3694

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3696
  unreachable, !dbg !3696

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3697
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3698 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3702, metadata !652), !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3703, metadata !652), !dbg !3705
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3495, metadata !652) #10, !dbg !3706
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3708
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3501, metadata !652) #10, !dbg !3709
  %4 = icmp eq i8* %3, null, !dbg !3710
  %5 = icmp ne i64 %1, 0, !dbg !3711
  %6 = and i1 %5, %4, !dbg !3712
  br i1 %6, label %7, label %8, !dbg !3712

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3713
  unreachable, !dbg !3713

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3714
  ret i8* %3, !dbg !3715
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3716 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3718, metadata !652), !dbg !3719
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3720
  %3 = add i64 %2, 1, !dbg !3721
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3702, metadata !652) #10, !dbg !3722
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3703, metadata !652) #10, !dbg !3725
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3495, metadata !652) #10, !dbg !3726
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3728
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3501, metadata !652) #10, !dbg !3729
  %5 = icmp eq i8* %4, null, !dbg !3730
  %6 = icmp ne i64 %3, 0, !dbg !3731
  %7 = and i1 %6, %5, !dbg !3732
  br i1 %7, label %8, label %9, !dbg !3732

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3733
  unreachable, !dbg !3733

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3734
  ret i8* %4, !dbg !3735
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3736 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3738, !tbaa !758
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.112, i64 0, i64 0), i32 5) #10, !dbg !3739
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i64 0, i64 0), i8* %2) #10, !dbg !3740
  tail call void @abort() #14, !dbg !3742
  unreachable, !dbg !3742
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3743 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3746, metadata !652), !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3747, metadata !652), !dbg !3753
  %3 = icmp eq i64 %0, 0, !dbg !3754
  %4 = icmp eq i64 %1, 0, !dbg !3755
  %5 = or i1 %3, %4, !dbg !3757
  br i1 %5, label %12, label %6, !dbg !3757

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3758
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3749, metadata !652), !dbg !3759
  %8 = udiv i64 %7, %1, !dbg !3760
  %9 = icmp eq i64 %8, %0, !dbg !3762
  br i1 %9, label %12, label %10, !dbg !3763

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !3764
  store i32 12, i32* %11, align 4, !dbg !3766, !tbaa !758
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3746, metadata !652), !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3747, metadata !652), !dbg !3753
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3767
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3748, metadata !652), !dbg !3768
  br label %16, !dbg !3769

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3770
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !151 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !159, metadata !652), !dbg !3771
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !160, metadata !652), !dbg !3772
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3773
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10, !dbg !3773
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !161, metadata !652), !dbg !3774
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !174, metadata !652), !dbg !3775
  call void @llvm.va_start(i8* nonnull %4), !dbg !3776
  %5 = icmp eq i32 %1, 1030, !dbg !3777
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !3777

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !3778

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3779
  %12 = load i8*, i8** %11, align 16, !dbg !3779
  %13 = sext i32 %7 to i64, !dbg !3779
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !3779
  %15 = add i32 %7, 8, !dbg !3779
  store i32 %15, i32* %6, align 16, !dbg !3779
  br label %20, !dbg !3779

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3781
  %18 = load i8*, i8** %17, align 8, !dbg !3781
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !3781
  store i8* %19, i8** %17, align 8, !dbg !3781
  br label %20, !dbg !3781

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !3783
  %23 = load i32, i32* %22, align 4, !dbg !3783
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !175, metadata !652), !dbg !3785
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3786, !tbaa !758
  %25 = icmp sgt i32 %24, -1, !dbg !3788
  br i1 %25, label %26, label %39, !dbg !3789

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10, !dbg !3790
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !174, metadata !652), !dbg !3775
  %28 = icmp sgt i32 %27, -1, !dbg !3792
  br i1 %28, label %36, label %29, !dbg !3794

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1, !dbg !3795
  %31 = load i32, i32* %30, align 4, !dbg !3795, !tbaa !758
  %32 = icmp eq i32 %31, 22, !dbg !3797
  br i1 %32, label %33, label %36, !dbg !3798

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3800
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !174, metadata !652), !dbg !3775
  %35 = icmp slt i32 %34, 0, !dbg !3802
  br i1 %35, label %75, label %36, !dbg !3804

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !174, metadata !652), !dbg !3775
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !758
  br label %42, !dbg !3805

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3806
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !174, metadata !652), !dbg !3775
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !3807
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !174, metadata !652), !dbg !3775
  %45 = icmp sgt i32 %44, -1, !dbg !3809
  %46 = icmp eq i32 %43, -1, !dbg !3810
  %47 = and i1 %45, %46, !dbg !3811
  br i1 %47, label %48, label %75, !dbg !3811

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !178, metadata !652), !dbg !3813
  %50 = icmp slt i32 %49, 0, !dbg !3814
  br i1 %50, label %55, label %51, !dbg !3815

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !3816
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #10, !dbg !3818
  %54 = icmp eq i32 %53, -1, !dbg !3819
  br i1 %54, label %55, label %75, !dbg !3820

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1, !dbg !3822
  %57 = load i32, i32* %56, align 4, !dbg !3822, !tbaa !758
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !181, metadata !652), !dbg !3823
  %58 = call i32 @close(i32 %44) #10, !dbg !3824
  store i32 %57, i32* %56, align 4, !dbg !3825, !tbaa !758
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !174, metadata !652), !dbg !3775
  br label %75, !dbg !3826

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !3827

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3828
  %62 = load i8*, i8** %61, align 16, !dbg !3828
  %63 = sext i32 %7 to i64, !dbg !3828
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !3828
  %65 = add i32 %7, 8, !dbg !3828
  store i32 %65, i32* %6, align 16, !dbg !3828
  br label %70, !dbg !3828

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3830
  %68 = load i8*, i8** %67, align 8, !dbg !3830
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !3830
  store i8* %69, i8** %67, align 8, !dbg !3830
  br label %70, !dbg !3830

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !3832
  %73 = load i8*, i8** %72, align 8, !dbg !3832
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !184, metadata !652), !dbg !3834
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #10, !dbg !3835
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !174, metadata !652), !dbg !3775
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !174, metadata !652), !dbg !3775
  call void @llvm.va_end(i8* nonnull %4), !dbg !3836
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10, !dbg !3837
  ret i32 %76, !dbg !3838
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3839 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3856, metadata !652), !dbg !3865
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3857, metadata !652), !dbg !3866
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3858, metadata !652), !dbg !3867
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3859, metadata !652), !dbg !3868
  %6 = bitcast i32* %5 to i8*, !dbg !3869
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !3869
  %7 = icmp eq i32* %0, null, !dbg !3870
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3856, metadata !652), !dbg !3865
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3872
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3856, metadata !652), !dbg !3865
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3873
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3860, metadata !652), !dbg !3874
  %10 = icmp ugt i64 %9, -3, !dbg !3875
  %11 = icmp ne i64 %2, 0, !dbg !3876
  %12 = and i1 %11, %10, !dbg !3878
  br i1 %12, label %13, label %18, !dbg !3878

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3879
  br i1 %14, label %18, label %15, !dbg !3881

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3883, !tbaa !1157
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3862, metadata !652), !dbg !3884
  %17 = zext i8 %16 to i32, !dbg !3885
  store i32 %17, i32* %8, align 4, !dbg !3886, !tbaa !758
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !3887
  ret i64 %19, !dbg !3887
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3888 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3933, metadata !652), !dbg !3938
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3939
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3940, metadata !652), !dbg !3943
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3945
  %4 = load i32, i32* %3, align 8, !dbg !3945, !tbaa !954
  %5 = and i32 %4, 32, !dbg !3945
  %6 = icmp eq i32 %5, 0, !dbg !3946
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3947
  %8 = icmp ne i32 %7, 0, !dbg !3948
  br i1 %6, label %9, label %19, !dbg !3949

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !3951
  %11 = icmp ne i64 %2, 0, !dbg !3951
  %12 = or i1 %11, %10, !dbg !3951
  %13 = sext i1 %8 to i32, !dbg !3951
  br i1 %12, label %22, label %14, !dbg !3951

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !3953
  %16 = load i32, i32* %15, align 4, !dbg !3953, !tbaa !758
  %17 = icmp ne i32 %16, 9, !dbg !3955
  %18 = sext i1 %17 to i32, !dbg !3955
  br label %22, !dbg !3955

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3957

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !3959
  store i32 0, i32* %21, align 4, !dbg !3961, !tbaa !758
  br label %22, !dbg !3959

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3962
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #11 !dbg !3963 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3966, metadata !652), !dbg !3970
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3967, metadata !652), !dbg !3971
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3969, metadata !652), !dbg !3972
  br label %2, !dbg !3973

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3967, metadata !652), !dbg !3971
  %4 = load i8, i8* %3, align 1, !dbg !3974, !tbaa !1157
  %5 = icmp eq i8 %4, 47, !dbg !3974
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3976
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3967, metadata !652), !dbg !3971
  br i1 %5, label %2, label %7, !dbg !3977, !llvm.loop !3978

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !3972

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !3979
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !3969, metadata !652), !dbg !3972
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3968, metadata !652), !dbg !3983
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3967, metadata !652), !dbg !3971
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !3984

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !3986
  %15 = icmp eq i8 %14, 0, !dbg !3986
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3967, metadata !652), !dbg !3971
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3969, metadata !652), !dbg !3972
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !3990
  %17 = select i1 %15, i8 %12, i8 0, !dbg !3990
  br label %18, !dbg !3990

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !3969, metadata !652), !dbg !3972
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3967, metadata !652), !dbg !3971
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3991
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !3968, metadata !652), !dbg !3983
  %22 = load i8, i8* %21, align 1, !tbaa !1157
  br label %8, !dbg !3993, !llvm.loop !3994

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !3997
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #11 !dbg !3998 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4002, metadata !652), !dbg !4005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4004, metadata !652), !dbg !4006
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4007
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4003, metadata !652), !dbg !4009
  br label %3, !dbg !4010

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4003, metadata !652), !dbg !4009
  %5 = icmp ugt i64 %4, 1, !dbg !4011
  br i1 %5, label %6, label %11, !dbg !4014

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !4015
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !4015
  %9 = load i8, i8* %8, align 1, !dbg !4015, !tbaa !1157
  %10 = icmp eq i8 %9, 47, !dbg !4015
  br i1 %10, label %3, label %11, !dbg !4017, !llvm.loop !4019

; <label>:11:                                     ; preds = %3, %6
  ret i64 %4, !dbg !4022
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4023 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4028, metadata !652), !dbg !4048
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4029, metadata !652), !dbg !4049
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4050
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4030, metadata !652), !dbg !4051
  %3 = icmp eq i8* %2, null, !dbg !4052
  br i1 %3, label %15, label %4, !dbg !4053

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4038, metadata !652), !dbg !4054
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4039, metadata !652), !dbg !4055
  %5 = load i8, i8* %2, align 1, !dbg !4056, !tbaa !1157
  %6 = icmp eq i8 %5, 67, !dbg !4058
  br i1 %6, label %7, label %11, !dbg !4061

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4063
  %9 = load i8, i8* %8, align 1, !dbg !4063, !tbaa !1157
  %10 = icmp eq i8 %9, 0, !dbg !4066
  br i1 %10, label %14, label %11, !dbg !4068

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4044, metadata !652), !dbg !4070
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0)) #10, !dbg !4071
  %13 = icmp eq i32 %12, 0, !dbg !4073
  br i1 %13, label %14, label %15, !dbg !4075

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4029, metadata !652), !dbg !4049
  br label %15, !dbg !4077

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4078
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4079 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4091, metadata !652), !dbg !4165
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4158, metadata !652), !dbg !4167
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4168
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4083, metadata !652), !dbg !4169
  %4 = icmp eq i8* %3, null, !dbg !4170
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), i8* %3, !dbg !4172
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4083, metadata !652), !dbg !4169
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4173, !tbaa !660
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4105, metadata !652) #10, !dbg !4174
  %7 = icmp eq i8* %6, null, !dbg !4175
  br i1 %7, label %8, label %127, !dbg !4176

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.132, i64 0, i64 0)) #10, !dbg !4177
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4106, metadata !652) #10, !dbg !4178
  %10 = icmp eq i8* %9, null, !dbg !4179
  br i1 %10, label %14, label %11, !dbg !4181

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4182, !tbaa !1157
  %13 = icmp eq i8 %12, 0, !dbg !4184
  br i1 %13, label %14, label %15, !dbg !4185

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4187

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.133, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4106, metadata !652) #10, !dbg !4178
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4109, metadata !652) #10, !dbg !4189
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4111, metadata !652) #10, !dbg !4190
  %18 = icmp eq i64 %17, 0, !dbg !4191
  br i1 %18, label %24, label %19, !dbg !4192

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4193
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4193
  %22 = load i8, i8* %21, align 1, !dbg !4193, !tbaa !1157
  %23 = icmp ne i8 %22, 47, !dbg !4195
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4196
  %27 = add i64 %17, 14, !dbg !4197
  %28 = add i64 %27, %26, !dbg !4198
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4199
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4108, metadata !652) #10, !dbg !4200
  %30 = icmp eq i8* %29, null, !dbg !4201
  br i1 %30, label %125, label %31, !dbg !4201

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4202
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4205

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4206, !tbaa !1157
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4208
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.134, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4209
  br label %37, !dbg !4210

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4208
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.134, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4209
  br label %37, !dbg !4210

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4211
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4113, metadata !652) #10, !dbg !4212
  %39 = icmp slt i32 %38, 0, !dbg !4213
  br i1 %39, label %123, label %40, !dbg !4214

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.135, i64 0, i64 0)) #10, !dbg !4215
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4114, metadata !652) #10, !dbg !4216
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4217
  br i1 %42, label %48, label %43, !dbg !4218

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4219

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4220
  br label %123, !dbg !4222

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4155, metadata !652) #10, !dbg !4219
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4156, metadata !652) #10, !dbg !4223
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4224
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4225
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4226, metadata !652) #10, !dbg !4231
  %53 = load i8*, i8** %46, align 8, !dbg !4233, !tbaa !4234
  %54 = load i8*, i8** %47, align 8, !dbg !4233, !tbaa !4235
  %55 = icmp ult i8* %53, %54, !dbg !4233
  br i1 %55, label %58, label %56, !dbg !4233, !prof !4236

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4237
  br label %62, !dbg !4237

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4239
  store i8* %59, i8** %46, align 8, !dbg !4239, !tbaa !4234
  %60 = load i8, i8* %53, align 1, !dbg !4239, !tbaa !1157
  %61 = zext i8 %60 to i32, !dbg !4239
  br label %62, !dbg !4239

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4241
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4157, metadata !652) #10, !dbg !4243
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4244

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4245

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4226, metadata !652) #10, !dbg !4245
  %66 = load i8*, i8** %46, align 8, !dbg !4249, !tbaa !4234
  %67 = load i8*, i8** %47, align 8, !dbg !4249, !tbaa !4235
  %68 = icmp ult i8* %66, %67, !dbg !4249
  br i1 %68, label %71, label %69, !dbg !4249, !prof !4236

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4250
  br label %75, !dbg !4250

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4251
  store i8* %72, i8** %46, align 8, !dbg !4251, !tbaa !4234
  %73 = load i8, i8* %66, align 1, !dbg !4251, !tbaa !1157
  %74 = zext i8 %73 to i32, !dbg !4251
  br label %75, !dbg !4251

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4252
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4157, metadata !652) #10, !dbg !4243
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4253, !llvm.loop !4255

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4258
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.136, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4259
  %80 = icmp slt i32 %79, 2, !dbg !4261
  br i1 %80, label %115, label %81, !dbg !4262

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4263
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4162, metadata !652) #10, !dbg !4264
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4265
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4163, metadata !652) #10, !dbg !4266
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4164, metadata !652) #10, !dbg !4267
  %84 = icmp eq i64 %51, 0, !dbg !4268
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4270

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4156, metadata !652) #10, !dbg !4223
  %89 = add i64 %86, 2, !dbg !4271
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4273
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4155, metadata !652) #10, !dbg !4219
  br label %95, !dbg !4274

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4275
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4156, metadata !652) #10, !dbg !4223
  %93 = add i64 %92, 1, !dbg !4277
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4278
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4155, metadata !652) #10, !dbg !4219
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4155, metadata !652) #10, !dbg !4219
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4156, metadata !652) #10, !dbg !4223
  %98 = icmp eq i8* %97, null, !dbg !4279
  br i1 %98, label %99, label %100, !dbg !4281

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4156, metadata !652) #10, !dbg !4223
  call void @free(i8* %52) #10, !dbg !4282
  br label %116, !dbg !4284

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4285
  %102 = xor i64 %83, -1, !dbg !4286
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4286
  %104 = xor i64 %82, -1, !dbg !4287
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4287
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4288, metadata !652) #10, !dbg !4296
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4295, metadata !652) #10, !dbg !4296
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4298
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4299
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4288, metadata !652) #10, !dbg !4300
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4295, metadata !652) #10, !dbg !4300
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4302
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4303
  br label %111, !dbg !4304

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4219

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4155, metadata !652) #10, !dbg !4219
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4156, metadata !652) #10, !dbg !4223
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4304
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4304
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4219

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4219

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4155, metadata !652) #10, !dbg !4219
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4156, metadata !652) #10, !dbg !4223
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4304
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4304
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4305
  %120 = icmp eq i64 %117, 0, !dbg !4306
  br i1 %120, label %123, label %121, !dbg !4308

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4309
  store i8 0, i8* %122, align 1, !dbg !4311, !tbaa !1157
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4105, metadata !652) #10, !dbg !4174
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4105, metadata !652) #10, !dbg !4174
  call void @free(i8* %29) #10, !dbg !4312
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4105, metadata !652) #10, !dbg !4174
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4313, !tbaa !660
  br label %127, !dbg !4314

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4084, metadata !652), !dbg !4315
  %129 = load i8, i8* %128, align 1, !dbg !4316, !tbaa !1157
  %130 = icmp eq i8 %129, 0, !dbg !4317
  br i1 %130, label %157, label %131, !dbg !4318

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4320

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4320
  %136 = icmp eq i32 %135, 0, !dbg !4321
  br i1 %136, label %143, label %137, !dbg !4322

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4323
  br i1 %138, label %139, label %147, !dbg !4325

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4326
  %141 = load i8, i8* %140, align 1, !dbg !4326, !tbaa !1157
  %142 = icmp eq i8 %141, 0, !dbg !4328
  br i1 %142, label %143, label %147, !dbg !4329

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4331
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4333
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4334
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4083, metadata !652), !dbg !4169
  br label %157, !dbg !4335

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4336
  %149 = add i64 %148, 1, !dbg !4337
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4338
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4084, metadata !652), !dbg !4315
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4339
  %152 = add i64 %151, 1, !dbg !4340
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4341
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4084, metadata !652), !dbg !4315
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4084, metadata !652), !dbg !4315
  %154 = load i8, i8* %153, align 1, !dbg !4316, !tbaa !1157
  %155 = icmp eq i8 %154, 0, !dbg !4317
  br i1 %155, label %156, label %132, !dbg !4318, !llvm.loop !4342

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4169

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4083, metadata !652), !dbg !4169
  %159 = load i8, i8* %158, align 1, !dbg !4345, !tbaa !1157
  %160 = icmp eq i8 %159, 0, !dbg !4347
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i64 0, i64 0), i8* %158, !dbg !4348
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4083, metadata !652), !dbg !4169
  ret i8* %161, !dbg !4349
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4350 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4395, metadata !652), !dbg !4399
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4396, metadata !652), !dbg !4400
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4398, metadata !652), !dbg !4401
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4402
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4397, metadata !652), !dbg !4403
  %3 = icmp slt i32 %2, 0, !dbg !4404
  br i1 %3, label %4, label %6, !dbg !4406

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4407
  br label %24, !dbg !4408

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4409
  %8 = icmp eq i32 %7, 0, !dbg !4409
  br i1 %8, label %13, label %9, !dbg !4411

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4412
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4414
  %12 = icmp eq i64 %11, -1, !dbg !4416
  br i1 %12, label %16, label %13, !dbg !4417

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4418
  %15 = icmp eq i32 %14, 0, !dbg !4418
  br i1 %15, label %16, label %18, !dbg !4419

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4396, metadata !652), !dbg !4400
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4421
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4398, metadata !652), !dbg !4401
  br label %24, !dbg !4422

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4423
  %20 = load i32, i32* %19, align 4, !dbg !4423, !tbaa !758
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4396, metadata !652), !dbg !4400
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4396, metadata !652), !dbg !4400
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4421
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4398, metadata !652), !dbg !4401
  %22 = icmp eq i32 %20, 0, !dbg !4424
  br i1 %22, label %24, label %23, !dbg !4422

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4426, !tbaa !758
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4398, metadata !652), !dbg !4401
  br label %24, !dbg !4428

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4429
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4430 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4475, metadata !652), !dbg !4476
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4477
  br i1 %2, label %6, label %3, !dbg !4479

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4480
  %5 = icmp eq i32 %4, 0, !dbg !4480
  br i1 %5, label %6, label %8, !dbg !4482

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4484
  br label %17, !dbg !4485

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4486, metadata !652) #10, !dbg !4491
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4493
  %10 = load i32, i32* %9, align 8, !dbg !4493, !tbaa !954
  %11 = and i32 %10, 256, !dbg !4495
  %12 = icmp eq i32 %11, 0, !dbg !4495
  br i1 %12, label %15, label %13, !dbg !4496

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4497
  br label %15, !dbg !4497

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4498
  br label %17, !dbg !4499

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4500
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4501 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4547, metadata !652), !dbg !4553
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4548, metadata !652), !dbg !4554
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4549, metadata !652), !dbg !4555
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4556
  %5 = load i8*, i8** %4, align 8, !dbg !4556, !tbaa !4235
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4557
  %7 = load i8*, i8** %6, align 8, !dbg !4557, !tbaa !4234
  %8 = icmp eq i8* %5, %7, !dbg !4558
  br i1 %8, label %9, label %28, !dbg !4559

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4560
  %11 = load i8*, i8** %10, align 8, !dbg !4560, !tbaa !4562
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4563
  %13 = load i8*, i8** %12, align 8, !dbg !4563, !tbaa !4564
  %14 = icmp eq i8* %11, %13, !dbg !4565
  br i1 %14, label %15, label %28, !dbg !4566

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4567
  %17 = load i8*, i8** %16, align 8, !dbg !4567, !tbaa !4568
  %18 = icmp eq i8* %17, null, !dbg !4569
  br i1 %18, label %19, label %28, !dbg !4570

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4572
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4573
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4550, metadata !652), !dbg !4575
  %22 = icmp eq i64 %21, -1, !dbg !4576
  br i1 %22, label %30, label %23, !dbg !4578

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4579
  %25 = load i32, i32* %24, align 8, !dbg !4580, !tbaa !954
  %26 = and i32 %25, -17, !dbg !4580
  store i32 %26, i32* %24, align 8, !dbg !4580, !tbaa !954
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4581
  store i64 %21, i64* %27, align 8, !dbg !4582, !tbaa !4583
  br label %30, !dbg !4584

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4585
  br label %30, !dbg !4586

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4587
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

!llvm.dbg.cu = !{!535, !2, !588, !11, !20, !590, !592, !595, !28, !46, !55, !597, !599, !142, !606, !623, !625, !155, !627, !630, !632, !635, !188, !638, !640, !642}
!llvm.ident = !{!644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644, !644}
!llvm.module.flags = !{!645, !646, !647, !648}

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
!150 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !151, file: !152, line: 335, type: !25, isLocal: true, isDefinition: true)
!151 = distinct !DISubprogram(name: "rpl_fcntl", scope: !152, file: !152, line: 272, type: !153, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !155, variables: !158)
!152 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!153 = !DISubroutineType(types: !154)
!154 = !{!25, !25, !25, null}
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !157)
!156 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!157 = !{!149}
!158 = !{!159, !160, !161, !174, !175, !178, !181, !184}
!159 = !DILocalVariable(name: "fd", arg: 1, scope: !151, file: !152, line: 272, type: !25)
!160 = !DILocalVariable(name: "action", arg: 2, scope: !151, file: !152, line: 272, type: !25)
!161 = !DILocalVariable(name: "arg", scope: !151, file: !152, line: 274, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !163, line: 30, baseType: !164)
!163 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !156, line: 274, baseType: !165)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 192, elements: !172)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !156, line: 274, size: 192, elements: !167)
!167 = !{!168, !169, !170, !171}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !166, file: !156, line: 274, baseType: !113, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !166, file: !156, line: 274, baseType: !113, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !166, file: !156, line: 274, baseType: !49, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !166, file: !156, line: 274, baseType: !49, size: 64, offset: 128)
!172 = !{!173}
!173 = !DISubrange(count: 1)
!174 = !DILocalVariable(name: "result", scope: !151, file: !152, line: 275, type: !25)
!175 = !DILocalVariable(name: "target", scope: !176, file: !152, line: 322, type: !25)
!176 = distinct !DILexicalBlock(scope: !177, file: !152, line: 321, column: 7)
!177 = distinct !DILexicalBlock(scope: !151, file: !152, line: 278, column: 5)
!178 = !DILocalVariable(name: "flags", scope: !179, file: !152, line: 359, type: !25)
!179 = distinct !DILexicalBlock(scope: !180, file: !152, line: 358, column: 11)
!180 = distinct !DILexicalBlock(scope: !176, file: !152, line: 357, column: 13)
!181 = !DILocalVariable(name: "saved_errno", scope: !182, file: !152, line: 362, type: !25)
!182 = distinct !DILexicalBlock(scope: !183, file: !152, line: 361, column: 15)
!183 = distinct !DILexicalBlock(scope: !179, file: !152, line: 360, column: 17)
!184 = !DILocalVariable(name: "p", scope: !185, file: !152, line: 404, type: !49)
!185 = distinct !DILexicalBlock(scope: !177, file: !152, line: 402, column: 7)
!186 = !DIGlobalVariableExpression(var: !187)
!187 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !188, file: !533, line: 120, type: !534, isLocal: true, isDefinition: true)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !190, retainedTypes: !529, globals: !532)
!189 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!190 = !{!191}
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !192, line: 41, size: 32, elements: !193)
!192 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!194 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!195 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!196 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!197 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!198 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!199 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!200 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!201 = !DIEnumerator(name: "DAY_1", value: 131079)
!202 = !DIEnumerator(name: "DAY_2", value: 131080)
!203 = !DIEnumerator(name: "DAY_3", value: 131081)
!204 = !DIEnumerator(name: "DAY_4", value: 131082)
!205 = !DIEnumerator(name: "DAY_5", value: 131083)
!206 = !DIEnumerator(name: "DAY_6", value: 131084)
!207 = !DIEnumerator(name: "DAY_7", value: 131085)
!208 = !DIEnumerator(name: "ABMON_1", value: 131086)
!209 = !DIEnumerator(name: "ABMON_2", value: 131087)
!210 = !DIEnumerator(name: "ABMON_3", value: 131088)
!211 = !DIEnumerator(name: "ABMON_4", value: 131089)
!212 = !DIEnumerator(name: "ABMON_5", value: 131090)
!213 = !DIEnumerator(name: "ABMON_6", value: 131091)
!214 = !DIEnumerator(name: "ABMON_7", value: 131092)
!215 = !DIEnumerator(name: "ABMON_8", value: 131093)
!216 = !DIEnumerator(name: "ABMON_9", value: 131094)
!217 = !DIEnumerator(name: "ABMON_10", value: 131095)
!218 = !DIEnumerator(name: "ABMON_11", value: 131096)
!219 = !DIEnumerator(name: "ABMON_12", value: 131097)
!220 = !DIEnumerator(name: "MON_1", value: 131098)
!221 = !DIEnumerator(name: "MON_2", value: 131099)
!222 = !DIEnumerator(name: "MON_3", value: 131100)
!223 = !DIEnumerator(name: "MON_4", value: 131101)
!224 = !DIEnumerator(name: "MON_5", value: 131102)
!225 = !DIEnumerator(name: "MON_6", value: 131103)
!226 = !DIEnumerator(name: "MON_7", value: 131104)
!227 = !DIEnumerator(name: "MON_8", value: 131105)
!228 = !DIEnumerator(name: "MON_9", value: 131106)
!229 = !DIEnumerator(name: "MON_10", value: 131107)
!230 = !DIEnumerator(name: "MON_11", value: 131108)
!231 = !DIEnumerator(name: "MON_12", value: 131109)
!232 = !DIEnumerator(name: "AM_STR", value: 131110)
!233 = !DIEnumerator(name: "PM_STR", value: 131111)
!234 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!235 = !DIEnumerator(name: "D_FMT", value: 131113)
!236 = !DIEnumerator(name: "T_FMT", value: 131114)
!237 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!238 = !DIEnumerator(name: "ERA", value: 131116)
!239 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!240 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!241 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!242 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!243 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!244 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!245 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!246 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!247 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!248 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!249 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!250 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!251 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!252 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!253 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!254 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!255 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!256 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!257 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!258 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!259 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!260 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!261 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!262 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!263 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!264 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!265 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!266 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!267 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!268 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!269 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!270 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!271 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!272 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!273 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!274 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!275 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!276 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!277 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!278 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!279 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!280 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!281 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!282 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!283 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!284 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!285 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!286 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!287 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!288 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!289 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!290 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!291 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!292 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!293 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!294 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!295 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!296 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!297 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!298 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!299 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!300 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!301 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!302 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!303 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!304 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!305 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!306 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!307 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!308 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!309 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!310 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!311 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!312 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!313 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!314 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!315 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!316 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!317 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!318 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!319 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!320 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!321 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!322 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!323 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!324 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!325 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!326 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!327 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!328 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!329 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!330 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!331 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!332 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!333 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!334 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!335 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!336 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!337 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!338 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!339 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!340 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!341 = !DIEnumerator(name: "CODESET", value: 14)
!342 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!343 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!344 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!345 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!388 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!389 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!390 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!391 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!397 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!398 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!400 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!401 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!402 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!413 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!414 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!415 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!416 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!417 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!418 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!419 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!420 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!421 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!422 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!423 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!424 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!425 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!426 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!427 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!428 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!429 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!430 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!431 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!432 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!433 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!434 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!435 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!452 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!453 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!456 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!457 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!458 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!459 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!460 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!461 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!462 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!463 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!464 = !DIEnumerator(name: "THOUSEP", value: 65537)
!465 = !DIEnumerator(name: "__GROUPING", value: 65538)
!466 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!467 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!468 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!469 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!470 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!471 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!472 = !DIEnumerator(name: "__YESSTR", value: 327682)
!473 = !DIEnumerator(name: "__NOSTR", value: 327683)
!474 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!475 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!476 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!477 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!478 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!479 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!480 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!481 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!482 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!483 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!484 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!485 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!486 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!487 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!488 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!489 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!490 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!491 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!492 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!493 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!494 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!495 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!496 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!497 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!498 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!499 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!500 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!501 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!502 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!503 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!504 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!505 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!506 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!507 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!508 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!509 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!510 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!514 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!527 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!528 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!529 = !{!49, !50, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!532 = !{!186}
!533 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!534 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!535 = distinct !DICompileUnit(language: DW_LANG_C99, file: !536, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !537, retainedTypes: !548, globals: !558)
!536 = !DIFile(filename: "src/nohup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!537 = !{!538, !541, !58}
!538 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !536, line: 39, size: 32, elements: !539)
!539 = !{!540}
!540 = !DIEnumerator(name: "POSIX_NOHUP_FAILURE", value: 127)
!541 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !542, line: 87, size: 32, elements: !543)
!542 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!543 = !{!544, !545, !546, !547}
!544 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!545 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!546 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!547 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!548 = !{!6, !49, !549, !94, !554, !556}
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !550, line: 84, baseType: !551)
!550 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !25}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!558 = !{!559}
!559 = !DIGlobalVariableExpression(var: !560)
!560 = distinct !DIGlobalVariable(name: "infomap", scope: !561, file: !542, line: 632, type: !585, isLocal: true, isDefinition: true)
!561 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !542, file: !542, line: 630, type: !562, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !564)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !6}
!564 = !{!565, !566, !567, !574, !576, !577, !578, !581, !582, !584}
!565 = !DILocalVariable(name: "program", arg: 1, scope: !561, file: !542, line: 630, type: !6)
!566 = !DILocalVariable(name: "node", scope: !561, file: !542, line: 642, type: !6)
!567 = !DILocalVariable(name: "map_prog", scope: !561, file: !542, line: 643, type: !568)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !561, file: !542, line: 632, size: 128, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !570, file: !542, line: 632, baseType: !6, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !570, file: !542, line: 632, baseType: !6, size: 64, offset: 64)
!574 = !DILocalVariable(name: "__s1_len", scope: !575, file: !542, line: 645, type: !94)
!575 = distinct !DILexicalBlock(scope: !561, file: !542, line: 645, column: 33)
!576 = !DILocalVariable(name: "__s2_len", scope: !575, file: !542, line: 645, type: !94)
!577 = !DILocalVariable(name: "lc_messages", scope: !561, file: !542, line: 655, type: !6)
!578 = !DILocalVariable(name: "__s1_len", scope: !579, file: !542, line: 656, type: !94)
!579 = distinct !DILexicalBlock(scope: !580, file: !542, line: 656, column: 22)
!580 = distinct !DILexicalBlock(scope: !561, file: !542, line: 656, column: 7)
!581 = !DILocalVariable(name: "__s2_len", scope: !579, file: !542, line: 656, type: !94)
!582 = !DILocalVariable(name: "__s2", scope: !583, file: !542, line: 656, type: !556)
!583 = distinct !DILexicalBlock(scope: !579, file: !542, line: 656, column: 22)
!584 = !DILocalVariable(name: "__result", scope: !583, file: !542, line: 656, type: !25)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 896, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 7)
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!589 = !DIFile(filename: "./lib/cloexec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!591 = !DIFile(filename: "./lib/fd-reopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !594)
!593 = !DIFile(filename: "./lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = !{!49}
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !594)
!596 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!598 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !601, retainedTypes: !594)
!600 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!601 = !{!602}
!602 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !603, line: 41, size: 32, elements: !604)
!603 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = !{!605}
!605 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !608, retainedTypes: !622)
!607 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = !{!609}
!609 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !611, file: !610, line: 192, size: 32, elements: !620)
!610 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = distinct !DISubprogram(name: "x2nrealloc", scope: !610, file: !610, line: 180, type: !612, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !615)
!612 = !DISubroutineType(types: !613)
!613 = !{!49, !49, !614, !94}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!615 = !{!616, !617, !618, !619}
!616 = !DILocalVariable(name: "p", arg: 1, scope: !611, file: !610, line: 180, type: !49)
!617 = !DILocalVariable(name: "pn", arg: 2, scope: !611, file: !610, line: 180, type: !614)
!618 = !DILocalVariable(name: "s", arg: 3, scope: !611, file: !610, line: 180, type: !94)
!619 = !DILocalVariable(name: "n", scope: !611, file: !610, line: 182, type: !94)
!620 = !{!621}
!621 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!622 = !{!94, !50, !49}
!623 = distinct !DICompileUnit(language: DW_LANG_C99, file: !624, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!624 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!625 = distinct !DICompileUnit(language: DW_LANG_C99, file: !626, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !594)
!626 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !629)
!628 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!629 = !{!94}
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!631 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!632 = distinct !DICompileUnit(language: DW_LANG_C99, file: !633, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !634)
!633 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!634 = !{!50}
!635 = distinct !DICompileUnit(language: DW_LANG_C99, file: !636, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !637)
!636 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!637 = !{!94, !554, !556, !6}
!638 = distinct !DICompileUnit(language: DW_LANG_C99, file: !639, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!639 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!640 = distinct !DICompileUnit(language: DW_LANG_C99, file: !641, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !594)
!641 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!642 = distinct !DICompileUnit(language: DW_LANG_C99, file: !643, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !594)
!643 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!644 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!645 = !{i32 2, !"Dwarf Version", i32 4}
!646 = !{i32 2, !"Debug Info Version", i32 3}
!647 = !{i32 1, !"PIC Level", i32 2}
!648 = !{i32 1, !"PIE Level", i32 2}
!649 = distinct !DISubprogram(name: "usage", scope: !536, file: !536, line: 46, type: !552, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !535, variables: !650)
!650 = !{!651}
!651 = !DILocalVariable(name: "status", arg: 1, scope: !649, file: !536, line: 46, type: !25)
!652 = !DIExpression()
!653 = !DILocation(line: 46, column: 12, scope: !649)
!654 = !DILocation(line: 48, column: 14, scope: !655)
!655 = distinct !DILexicalBlock(scope: !649, file: !536, line: 48, column: 7)
!656 = !DILocation(line: 48, column: 7, scope: !649)
!657 = !DILocation(line: 49, column: 5, scope: !658)
!658 = !DILexicalBlockFile(scope: !659, file: !536, discriminator: 1)
!659 = distinct !DILexicalBlock(scope: !655, file: !536, line: 49, column: 5)
!660 = !{!661, !661, i64 0}
!661 = !{!"any pointer", !662, i64 0}
!662 = !{!"omnipotent char", !663, i64 0}
!663 = !{!"Simple C/C++ TBAA"}
!664 = !DILocation(line: 49, column: 5, scope: !665)
!665 = !DILexicalBlockFile(scope: !659, file: !536, discriminator: 3)
!666 = !DILocation(line: 49, column: 5, scope: !667)
!667 = !DILexicalBlockFile(scope: !659, file: !536, discriminator: 2)
!668 = !DILocation(line: 52, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !655, file: !536, line: 51, column: 5)
!670 = !DILocation(line: 52, column: 7, scope: !671)
!671 = !DILexicalBlockFile(scope: !669, file: !536, discriminator: 1)
!672 = !DILocation(line: 58, column: 7, scope: !669)
!673 = !DILocation(line: 58, column: 7, scope: !671)
!674 = !DILocation(line: 62, column: 7, scope: !669)
!675 = !DILocation(line: 62, column: 7, scope: !671)
!676 = !DILocation(line: 63, column: 7, scope: !669)
!677 = !DILocation(line: 63, column: 7, scope: !671)
!678 = !DILocation(line: 64, column: 7, scope: !669)
!679 = !DILocation(line: 64, column: 7, scope: !671)
!680 = !DILocation(line: 71, column: 7, scope: !669)
!681 = !DILocation(line: 71, column: 7, scope: !671)
!682 = !DILocation(line: 642, column: 15, scope: !561, inlinedAt: !683)
!683 = distinct !DILocation(line: 72, column: 7, scope: !669)
!684 = !DILocation(line: 651, column: 3, scope: !561, inlinedAt: !683)
!685 = !DILocation(line: 651, column: 3, scope: !686, inlinedAt: !683)
!686 = !DILexicalBlockFile(scope: !561, file: !542, discriminator: 1)
!687 = !DILocation(line: 655, column: 29, scope: !561, inlinedAt: !683)
!688 = !DILocation(line: 655, column: 15, scope: !561, inlinedAt: !683)
!689 = !DILocation(line: 656, column: 7, scope: !580, inlinedAt: !683)
!690 = !DILocation(line: 656, column: 19, scope: !580, inlinedAt: !683)
!691 = !DILocation(line: 656, column: 22, scope: !692, inlinedAt: !683)
!692 = !DILexicalBlockFile(scope: !580, file: !542, discriminator: 16)
!693 = !DILocation(line: 656, column: 7, scope: !694, inlinedAt: !683)
!694 = !DILexicalBlockFile(scope: !561, file: !542, discriminator: 16)
!695 = !DILocation(line: 662, column: 7, scope: !696, inlinedAt: !683)
!696 = distinct !DILexicalBlock(scope: !580, file: !542, line: 657, column: 5)
!697 = !DILocation(line: 662, column: 7, scope: !698, inlinedAt: !683)
!698 = !DILexicalBlockFile(scope: !696, file: !542, discriminator: 1)
!699 = !DILocation(line: 664, column: 5, scope: !696, inlinedAt: !683)
!700 = !DILocation(line: 665, column: 3, scope: !561, inlinedAt: !683)
!701 = !DILocation(line: 665, column: 3, scope: !686, inlinedAt: !683)
!702 = !DILocation(line: 667, column: 3, scope: !561, inlinedAt: !683)
!703 = !DILocation(line: 667, column: 3, scope: !686, inlinedAt: !683)
!704 = !DILocation(line: 74, column: 3, scope: !649)
!705 = distinct !DISubprogram(name: "main", scope: !536, file: !536, line: 78, type: !706, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !709)
!706 = !DISubroutineType(types: !707)
!707 = !{!25, !25, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !722, !723, !724, !729, !730, !733, !734, !737, !738, !739}
!710 = !DILocalVariable(name: "argc", arg: 1, scope: !705, file: !536, line: 78, type: !25)
!711 = !DILocalVariable(name: "argv", arg: 2, scope: !705, file: !536, line: 78, type: !708)
!712 = !DILocalVariable(name: "out_fd", scope: !705, file: !536, line: 80, type: !25)
!713 = !DILocalVariable(name: "saved_stderr_fd", scope: !705, file: !536, line: 81, type: !25)
!714 = !DILocalVariable(name: "ignoring_input", scope: !705, file: !536, line: 82, type: !17)
!715 = !DILocalVariable(name: "redirecting_stdout", scope: !705, file: !536, line: 83, type: !17)
!716 = !DILocalVariable(name: "stdout_is_closed", scope: !705, file: !536, line: 84, type: !17)
!717 = !DILocalVariable(name: "redirecting_stderr", scope: !705, file: !536, line: 85, type: !17)
!718 = !DILocalVariable(name: "exit_internal_failure", scope: !705, file: !536, line: 86, type: !25)
!719 = !DILocalVariable(name: "in_home", scope: !720, file: !536, line: 137, type: !50)
!720 = distinct !DILexicalBlock(scope: !721, file: !536, line: 136, column: 5)
!721 = distinct !DILexicalBlock(scope: !705, file: !536, line: 135, column: 7)
!722 = !DILocalVariable(name: "file", scope: !720, file: !536, line: 138, type: !6)
!723 = !DILocalVariable(name: "flags", scope: !720, file: !536, line: 139, type: !25)
!724 = !DILocalVariable(name: "mode", scope: !720, file: !536, line: 140, type: !725)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !726, line: 70, baseType: !727)
!726 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !728, line: 138, baseType: !113)
!728 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!729 = !DILocalVariable(name: "umask_value", scope: !720, file: !536, line: 141, type: !725)
!730 = !DILocalVariable(name: "saved_errno", scope: !731, file: !536, line: 148, type: !25)
!731 = distinct !DILexicalBlock(scope: !732, file: !536, line: 147, column: 9)
!732 = distinct !DILexicalBlock(scope: !720, file: !536, line: 146, column: 11)
!733 = !DILocalVariable(name: "home", scope: !731, file: !536, line: 149, type: !6)
!734 = !DILocalVariable(name: "saved_errno2", scope: !735, file: !536, line: 159, type: !25)
!735 = distinct !DILexicalBlock(scope: !736, file: !536, line: 158, column: 13)
!736 = distinct !DILexicalBlock(scope: !731, file: !536, line: 157, column: 15)
!737 = !DILocalVariable(name: "cmd", scope: !705, file: !536, line: 217, type: !708)
!738 = !DILocalVariable(name: "exit_status", scope: !705, file: !536, line: 219, type: !25)
!739 = !DILocalVariable(name: "saved_errno", scope: !705, file: !536, line: 220, type: !25)
!740 = !DILocation(line: 78, column: 11, scope: !705)
!741 = !DILocation(line: 78, column: 24, scope: !705)
!742 = !DILocation(line: 80, column: 7, scope: !705)
!743 = !DILocation(line: 81, column: 7, scope: !705)
!744 = !DILocation(line: 89, column: 21, scope: !705)
!745 = !DILocation(line: 89, column: 3, scope: !705)
!746 = !DILocation(line: 90, column: 3, scope: !705)
!747 = !DILocation(line: 91, column: 3, scope: !705)
!748 = !DILocation(line: 92, column: 3, scope: !705)
!749 = !DILocation(line: 98, column: 28, scope: !705)
!750 = !DILocation(line: 86, column: 7, scope: !705)
!751 = !DILocalVariable(name: "status", arg: 1, scope: !752, file: !542, line: 99, type: !25)
!752 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !542, file: !542, line: 99, type: !552, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !753)
!753 = !{!751}
!754 = !DILocation(line: 99, column: 30, scope: !752, inlinedAt: !755)
!755 = distinct !DILocation(line: 100, column: 3, scope: !705)
!756 = !DILocation(line: 102, column: 18, scope: !757, inlinedAt: !755)
!757 = distinct !DILexicalBlock(scope: !752, file: !542, line: 101, column: 7)
!758 = !{!759, !759, i64 0}
!759 = !{!"int", !662, i64 0}
!760 = !DILocation(line: 101, column: 3, scope: !705)
!761 = !DILocation(line: 103, column: 63, scope: !705)
!762 = !DILocation(line: 103, column: 3, scope: !705)
!763 = !DILocation(line: 105, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !705, file: !536, line: 105, column: 7)
!765 = !DILocation(line: 105, column: 49, scope: !764)
!766 = !DILocation(line: 105, column: 7, scope: !705)
!767 = !DILocation(line: 106, column: 5, scope: !764)
!768 = !DILocation(line: 108, column: 15, scope: !769)
!769 = distinct !DILexicalBlock(scope: !705, file: !536, line: 108, column: 7)
!770 = !DILocation(line: 108, column: 12, scope: !769)
!771 = !DILocation(line: 108, column: 7, scope: !705)
!772 = !DILocation(line: 110, column: 20, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !536, line: 109, column: 5)
!774 = !DILocation(line: 110, column: 7, scope: !775)
!775 = !DILexicalBlockFile(scope: !773, file: !536, discriminator: 1)
!776 = !DILocation(line: 111, column: 7, scope: !773)
!777 = !DILocation(line: 114, column: 20, scope: !705)
!778 = !DILocation(line: 115, column: 24, scope: !705)
!779 = !DILocation(line: 116, column: 43, scope: !705)
!780 = !DILocation(line: 116, column: 46, scope: !781)
!781 = !DILexicalBlockFile(scope: !705, file: !536, discriminator: 1)
!782 = !DILocation(line: 116, column: 52, scope: !781)
!783 = !DILocation(line: 117, column: 24, scope: !705)
!784 = !DILocation(line: 122, column: 7, scope: !705)
!785 = !DILocation(line: 124, column: 11, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !536, line: 124, column: 11)
!787 = distinct !DILexicalBlock(scope: !788, file: !536, line: 123, column: 5)
!788 = distinct !DILexicalBlock(scope: !705, file: !536, line: 122, column: 7)
!789 = !DILocation(line: 124, column: 62, scope: !786)
!790 = !DILocation(line: 124, column: 11, scope: !787)
!791 = !DILocation(line: 125, column: 39, scope: !786)
!792 = !DILocation(line: 126, column: 16, scope: !786)
!793 = !DILocation(line: 125, column: 9, scope: !794)
!794 = !DILexicalBlockFile(scope: !786, file: !536, discriminator: 1)
!795 = !DILocation(line: 125, column: 9, scope: !786)
!796 = !DILocation(line: 127, column: 31, scope: !797)
!797 = distinct !DILexicalBlock(scope: !787, file: !536, line: 127, column: 11)
!798 = !DILocation(line: 128, column: 22, scope: !797)
!799 = !DILocation(line: 128, column: 9, scope: !800)
!800 = !DILexicalBlockFile(scope: !797, file: !536, discriminator: 1)
!801 = !DILocation(line: 128, column: 9, scope: !797)
!802 = !DILocation(line: 135, column: 26, scope: !721)
!803 = !DILocation(line: 135, column: 49, scope: !804)
!804 = !DILexicalBlockFile(scope: !721, file: !536, discriminator: 1)
!805 = !DILocation(line: 137, column: 13, scope: !720)
!806 = !DILocation(line: 139, column: 11, scope: !720)
!807 = !DILocation(line: 140, column: 14, scope: !720)
!808 = !DILocation(line: 141, column: 28, scope: !720)
!809 = !DILocation(line: 141, column: 14, scope: !720)
!810 = !DILocation(line: 143, column: 19, scope: !720)
!811 = !DILocation(line: 142, column: 17, scope: !812)
!812 = !DILexicalBlockFile(scope: !720, file: !536, discriminator: 1)
!813 = !DILocation(line: 144, column: 19, scope: !720)
!814 = !DILocation(line: 142, column: 17, scope: !815)
!815 = !DILexicalBlockFile(scope: !720, file: !536, discriminator: 2)
!816 = !DILocation(line: 142, column: 17, scope: !817)
!817 = !DILexicalBlockFile(scope: !720, file: !536, discriminator: 3)
!818 = !DILocation(line: 146, column: 18, scope: !732)
!819 = !DILocation(line: 146, column: 11, scope: !720)
!820 = !DILocation(line: 148, column: 29, scope: !731)
!821 = !DILocation(line: 148, column: 15, scope: !731)
!822 = !DILocation(line: 149, column: 30, scope: !731)
!823 = !DILocation(line: 149, column: 23, scope: !731)
!824 = !DILocation(line: 150, column: 15, scope: !825)
!825 = distinct !DILexicalBlock(scope: !731, file: !536, line: 150, column: 15)
!826 = !DILocation(line: 150, column: 15, scope: !731)
!827 = !DILocation(line: 152, column: 25, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !536, line: 151, column: 13)
!829 = !DILocation(line: 153, column: 25, scope: !828)
!830 = !DILocation(line: 154, column: 27, scope: !828)
!831 = !DILocation(line: 153, column: 25, scope: !832)
!832 = !DILexicalBlockFile(scope: !828, file: !536, discriminator: 1)
!833 = !DILocation(line: 155, column: 27, scope: !828)
!834 = !DILocation(line: 153, column: 25, scope: !835)
!835 = !DILexicalBlockFile(scope: !828, file: !536, discriminator: 2)
!836 = !DILocation(line: 157, column: 22, scope: !736)
!837 = !DILocation(line: 157, column: 15, scope: !731)
!838 = !DILocation(line: 159, column: 34, scope: !735)
!839 = !DILocation(line: 159, column: 19, scope: !735)
!840 = !DILocation(line: 160, column: 38, scope: !735)
!841 = !DILocation(line: 160, column: 62, scope: !842)
!842 = !DILexicalBlockFile(scope: !735, file: !536, discriminator: 1)
!843 = !DILocation(line: 160, column: 15, scope: !844)
!844 = !DILexicalBlockFile(scope: !735, file: !536, discriminator: 2)
!845 = !DILocation(line: 161, column: 19, scope: !846)
!846 = distinct !DILexicalBlock(scope: !735, file: !536, line: 161, column: 19)
!847 = !DILocation(line: 161, column: 19, scope: !735)
!848 = !DILocation(line: 162, column: 41, scope: !846)
!849 = !DILocation(line: 163, column: 24, scope: !846)
!850 = !DILocation(line: 162, column: 17, scope: !851)
!851 = !DILexicalBlockFile(scope: !846, file: !536, discriminator: 1)
!852 = !DILocation(line: 162, column: 17, scope: !846)
!853 = !DILocation(line: 138, column: 19, scope: !720)
!854 = !DILocation(line: 169, column: 7, scope: !720)
!855 = !DILocation(line: 171, column: 14, scope: !720)
!856 = !DILocation(line: 174, column: 14, scope: !720)
!857 = !DILocation(line: 170, column: 7, scope: !720)
!858 = !DILocation(line: 175, column: 7, scope: !720)
!859 = !DILocation(line: 179, column: 7, scope: !705)
!860 = !DILocation(line: 185, column: 25, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !536, line: 180, column: 5)
!862 = distinct !DILexicalBlock(scope: !705, file: !536, line: 179, column: 7)
!863 = !DILocation(line: 187, column: 13, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !536, line: 187, column: 11)
!865 = !DILocation(line: 188, column: 11, scope: !864)
!866 = !DILocation(line: 188, column: 14, scope: !867)
!867 = !DILexicalBlockFile(scope: !864, file: !536, discriminator: 1)
!868 = !DILocation(line: 188, column: 55, scope: !867)
!869 = !DILocation(line: 187, column: 11, scope: !870)
!870 = !DILexicalBlockFile(scope: !861, file: !536, discriminator: 1)
!871 = !DILocation(line: 189, column: 39, scope: !864)
!872 = !DILocation(line: 190, column: 16, scope: !864)
!873 = !DILocation(line: 189, column: 9, scope: !867)
!874 = !DILocation(line: 189, column: 9, scope: !864)
!875 = !DILocation(line: 192, column: 11, scope: !861)
!876 = !DILocation(line: 194, column: 16, scope: !877)
!877 = distinct !DILexicalBlock(scope: !861, file: !536, line: 192, column: 11)
!878 = !DILocation(line: 193, column: 9, scope: !877)
!879 = !DILocation(line: 198, column: 11, scope: !880)
!880 = distinct !DILexicalBlock(scope: !861, file: !536, line: 198, column: 11)
!881 = !DILocation(line: 198, column: 40, scope: !880)
!882 = !DILocation(line: 198, column: 11, scope: !861)
!883 = !DILocation(line: 199, column: 39, scope: !880)
!884 = !DILocation(line: 200, column: 16, scope: !880)
!885 = !DILocation(line: 199, column: 9, scope: !886)
!886 = !DILexicalBlockFile(scope: !880, file: !536, discriminator: 1)
!887 = !DILocation(line: 199, column: 9, scope: !880)
!888 = !DILocation(line: 202, column: 11, scope: !861)
!889 = !DILocation(line: 203, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !861, file: !536, line: 202, column: 11)
!891 = !DILocation(line: 212, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !705, file: !536, line: 212, column: 7)
!893 = !DILocalVariable(name: "__stream", arg: 1, scope: !894, file: !895, line: 132, type: !898)
!894 = distinct !DISubprogram(name: "ferror_unlocked", scope: !895, file: !895, line: 132, type: !896, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !950)
!895 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!896 = !DISubroutineType(types: !897)
!897 = !{!25, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 49, baseType: !901)
!900 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 241, size: 1728, elements: !903)
!902 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!903 = !{!904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !924, !925, !926, !927, !930, !931, !933, !935, !938, !940, !941, !942, !943, !944, !945, !946}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !901, file: !902, line: 242, baseType: !25, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !901, file: !902, line: 247, baseType: !50, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !901, file: !902, line: 248, baseType: !50, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !901, file: !902, line: 249, baseType: !50, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !901, file: !902, line: 250, baseType: !50, size: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !901, file: !902, line: 251, baseType: !50, size: 64, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !901, file: !902, line: 252, baseType: !50, size: 64, offset: 384)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !901, file: !902, line: 253, baseType: !50, size: 64, offset: 448)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !901, file: !902, line: 254, baseType: !50, size: 64, offset: 512)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !901, file: !902, line: 256, baseType: !50, size: 64, offset: 576)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !901, file: !902, line: 257, baseType: !50, size: 64, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !901, file: !902, line: 258, baseType: !50, size: 64, offset: 704)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !901, file: !902, line: 260, baseType: !917, size: 64, offset: 768)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !902, line: 156, size: 192, elements: !919)
!919 = !{!920, !921, !923}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !918, file: !902, line: 157, baseType: !917, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !918, file: !902, line: 158, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !918, file: !902, line: 162, baseType: !25, size: 32, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !901, file: !902, line: 262, baseType: !922, size: 64, offset: 832)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !901, file: !902, line: 264, baseType: !25, size: 32, offset: 896)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !901, file: !902, line: 268, baseType: !25, size: 32, offset: 928)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !901, file: !902, line: 270, baseType: !928, size: 64, offset: 960)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !728, line: 140, baseType: !929)
!929 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !901, file: !902, line: 274, baseType: !93, size: 16, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !901, file: !902, line: 275, baseType: !932, size: 8, offset: 1040)
!932 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !901, file: !902, line: 276, baseType: !934, size: 8, offset: 1048)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !172)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !901, file: !902, line: 280, baseType: !936, size: 64, offset: 1088)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !902, line: 150, baseType: null)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !901, file: !902, line: 289, baseType: !939, size: 64, offset: 1152)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !728, line: 141, baseType: !929)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !901, file: !902, line: 297, baseType: !49, size: 64, offset: 1216)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !901, file: !902, line: 298, baseType: !49, size: 64, offset: 1280)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !901, file: !902, line: 299, baseType: !49, size: 64, offset: 1344)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !901, file: !902, line: 300, baseType: !49, size: 64, offset: 1408)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !901, file: !902, line: 302, baseType: !94, size: 64, offset: 1472)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !901, file: !902, line: 303, baseType: !25, size: 32, offset: 1536)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !901, file: !902, line: 305, baseType: !947, size: 160, offset: 1568)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 20)
!950 = !{!893}
!951 = !DILocation(line: 132, column: 1, scope: !894, inlinedAt: !952)
!952 = distinct !DILocation(line: 212, column: 7, scope: !892)
!953 = !DILocation(line: 134, column: 10, scope: !894, inlinedAt: !952)
!954 = !{!955, !759, i64 0}
!955 = !{!"_IO_FILE", !759, i64 0, !661, i64 8, !661, i64 16, !661, i64 24, !661, i64 32, !661, i64 40, !661, i64 48, !661, i64 56, !661, i64 64, !661, i64 72, !661, i64 80, !661, i64 88, !661, i64 96, !661, i64 104, !759, i64 112, !759, i64 116, !956, i64 120, !957, i64 128, !662, i64 130, !662, i64 131, !661, i64 136, !956, i64 144, !661, i64 152, !661, i64 160, !661, i64 168, !661, i64 176, !956, i64 184, !759, i64 192, !662, i64 196}
!956 = !{!"long", !662, i64 0}
!957 = !{!"short", !662, i64 0}
!958 = !DILocation(line: 212, column: 7, scope: !705)
!959 = !DILocation(line: 215, column: 3, scope: !705)
!960 = !DILocation(line: 217, column: 23, scope: !705)
!961 = !DILocation(line: 217, column: 21, scope: !705)
!962 = !DILocation(line: 217, column: 10, scope: !705)
!963 = !DILocation(line: 218, column: 11, scope: !705)
!964 = !DILocation(line: 218, column: 3, scope: !705)
!965 = !DILocation(line: 219, column: 21, scope: !705)
!966 = !DILocation(line: 219, column: 27, scope: !705)
!967 = !DILocation(line: 219, column: 7, scope: !705)
!968 = !DILocation(line: 220, column: 7, scope: !705)
!969 = !DILocation(line: 228, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !705, file: !536, line: 228, column: 7)
!971 = !DILocation(line: 228, column: 45, scope: !970)
!972 = !DILocation(line: 228, column: 7, scope: !705)
!973 = !DILocation(line: 229, column: 28, scope: !970)
!974 = !DILocation(line: 229, column: 59, scope: !970)
!975 = !DILocation(line: 229, column: 59, scope: !976)
!976 = !DILexicalBlockFile(scope: !970, file: !536, discriminator: 1)
!977 = !DILocation(line: 229, column: 5, scope: !978)
!978 = !DILexicalBlockFile(scope: !970, file: !536, discriminator: 2)
!979 = !DILocation(line: 229, column: 5, scope: !970)
!980 = !DILocation(line: 232, column: 1, scope: !781)
!981 = distinct !DISubprogram(name: "set_cloexec_flag", scope: !982, file: !982, line: 39, type: !983, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !985)
!982 = !DIFile(filename: "lib/cloexec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!983 = !DISubroutineType(types: !984)
!984 = !{!25, !25, !17}
!985 = !{!986, !987, !988, !989}
!986 = !DILocalVariable(name: "desc", arg: 1, scope: !981, file: !982, line: 39, type: !25)
!987 = !DILocalVariable(name: "value", arg: 2, scope: !981, file: !982, line: 39, type: !17)
!988 = !DILocalVariable(name: "flags", scope: !981, file: !982, line: 43, type: !25)
!989 = !DILocalVariable(name: "newflags", scope: !990, file: !982, line: 47, type: !25)
!990 = distinct !DILexicalBlock(scope: !991, file: !982, line: 46, column: 5)
!991 = distinct !DILexicalBlock(scope: !981, file: !982, line: 45, column: 7)
!992 = !DILocation(line: 39, column: 23, scope: !981)
!993 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!994 = !DILocation(line: 39, column: 34, scope: !981)
!995 = !DILocation(line: 43, column: 15, scope: !981)
!996 = !DILocation(line: 43, column: 7, scope: !981)
!997 = !DILocation(line: 45, column: 9, scope: !991)
!998 = !DILocation(line: 45, column: 7, scope: !981)
!999 = !DILocation(line: 47, column: 37, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !990, file: !982, discriminator: 1)
!1001 = !DILocation(line: 47, column: 58, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !990, file: !982, discriminator: 2)
!1003 = !DILocation(line: 47, column: 23, scope: !990)
!1004 = !DILocation(line: 47, column: 11, scope: !990)
!1005 = !DILocation(line: 49, column: 17, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !990, file: !982, line: 49, column: 11)
!1007 = !DILocation(line: 50, column: 11, scope: !1006)
!1008 = !DILocation(line: 50, column: 14, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1006, file: !982, discriminator: 1)
!1010 = !DILocation(line: 50, column: 46, scope: !1009)
!1011 = !DILocation(line: 49, column: 11, scope: !1000)
!1012 = !DILocation(line: 72, column: 1, scope: !981)
!1013 = distinct !DISubprogram(name: "dup_cloexec", scope: !982, file: !982, line: 80, type: !1014, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !1016)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!25, !25}
!1016 = !{!1017}
!1017 = !DILocalVariable(name: "fd", arg: 1, scope: !1013, file: !982, line: 80, type: !25)
!1018 = !DILocation(line: 80, column: 18, scope: !1013)
!1019 = !DILocation(line: 82, column: 10, scope: !1013)
!1020 = !DILocation(line: 82, column: 3, scope: !1013)
!1021 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !562, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !1022)
!1022 = !{!1023}
!1023 = !DILocalVariable(name: "file", arg: 1, scope: !1021, file: !16, line: 41, type: !6)
!1024 = !DILocation(line: 41, column: 41, scope: !1021)
!1025 = !DILocation(line: 43, column: 13, scope: !1021)
!1026 = !DILocation(line: 44, column: 1, scope: !1021)
!1027 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !1028, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !17}
!1030 = !{!1031}
!1031 = !DILocalVariable(name: "ignore", arg: 1, scope: !1027, file: !16, line: 78, type: !17)
!1032 = !DILocation(line: 78, column: 37, scope: !1027)
!1033 = !DILocation(line: 80, column: 16, scope: !1027)
!1034 = !{!1035, !1035, i64 0}
!1035 = !{!"_Bool", !662, i64 0}
!1036 = !DILocation(line: 81, column: 1, scope: !1027)
!1037 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !1038, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !1040)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null}
!1040 = !{!1041}
!1041 = !DILocalVariable(name: "write_error", scope: !1042, file: !16, line: 112, type: !6)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !16, line: 111, column: 5)
!1043 = distinct !DILexicalBlock(scope: !1037, file: !16, line: 109, column: 7)
!1044 = !DILocation(line: 109, column: 21, scope: !1043)
!1045 = !DILocation(line: 109, column: 7, scope: !1043)
!1046 = !DILocation(line: 109, column: 29, scope: !1043)
!1047 = !DILocation(line: 110, column: 7, scope: !1043)
!1048 = !DILocation(line: 110, column: 12, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1043, file: !16, discriminator: 1)
!1050 = !{i8 0, i8 2}
!1051 = !DILocation(line: 114, column: 19, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1042, file: !16, line: 113, column: 11)
!1053 = !DILocation(line: 110, column: 25, scope: !1049)
!1054 = !DILocation(line: 110, column: 28, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1043, file: !16, discriminator: 2)
!1056 = !DILocation(line: 110, column: 34, scope: !1055)
!1057 = !DILocation(line: 109, column: 7, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1037, file: !16, discriminator: 1)
!1059 = !DILocation(line: 112, column: 33, scope: !1042)
!1060 = !DILocation(line: 112, column: 19, scope: !1042)
!1061 = !DILocation(line: 113, column: 11, scope: !1052)
!1062 = !DILocation(line: 113, column: 11, scope: !1042)
!1063 = !DILocation(line: 114, column: 36, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1052, file: !16, discriminator: 1)
!1065 = !DILocation(line: 114, column: 9, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1052, file: !16, discriminator: 2)
!1067 = !DILocation(line: 114, column: 9, scope: !1052)
!1068 = !DILocation(line: 117, column: 9, scope: !1064)
!1069 = !DILocation(line: 119, column: 14, scope: !1042)
!1070 = !DILocation(line: 119, column: 7, scope: !1042)
!1071 = !DILocation(line: 122, column: 22, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1037, file: !16, line: 122, column: 8)
!1073 = !DILocation(line: 122, column: 8, scope: !1072)
!1074 = !DILocation(line: 122, column: 30, scope: !1072)
!1075 = !DILocation(line: 122, column: 8, scope: !1037)
!1076 = !DILocation(line: 123, column: 13, scope: !1072)
!1077 = !DILocation(line: 123, column: 6, scope: !1072)
!1078 = !DILocation(line: 124, column: 1, scope: !1037)
!1079 = distinct !DISubprogram(name: "fd_reopen", scope: !1080, file: !1080, line: 32, type: !1081, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !1083)
!1080 = !DIFile(filename: "lib/fd-reopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!25, !25, !6, !25, !725}
!1083 = !{!1084, !1085, !1086, !1087, !1088, !1089, !1092}
!1084 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !1079, file: !1080, line: 32, type: !25)
!1085 = !DILocalVariable(name: "file", arg: 2, scope: !1079, file: !1080, line: 32, type: !6)
!1086 = !DILocalVariable(name: "flags", arg: 3, scope: !1079, file: !1080, line: 32, type: !25)
!1087 = !DILocalVariable(name: "mode", arg: 4, scope: !1079, file: !1080, line: 32, type: !725)
!1088 = !DILocalVariable(name: "fd", scope: !1079, file: !1080, line: 34, type: !25)
!1089 = !DILocalVariable(name: "fd2", scope: !1090, file: !1080, line: 40, type: !25)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !1080, line: 39, column: 5)
!1091 = distinct !DILexicalBlock(scope: !1079, file: !1080, line: 36, column: 7)
!1092 = !DILocalVariable(name: "saved_errno", scope: !1090, file: !1080, line: 41, type: !25)
!1093 = !DILocation(line: 32, column: 16, scope: !1079)
!1094 = !DILocation(line: 32, column: 40, scope: !1079)
!1095 = !DILocation(line: 32, column: 50, scope: !1079)
!1096 = !DILocation(line: 32, column: 64, scope: !1079)
!1097 = !DILocation(line: 34, column: 12, scope: !1079)
!1098 = !DILocation(line: 34, column: 7, scope: !1079)
!1099 = !DILocation(line: 36, column: 10, scope: !1091)
!1100 = !DILocation(line: 36, column: 30, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1091, file: !1080, discriminator: 1)
!1102 = !DILocation(line: 36, column: 24, scope: !1091)
!1103 = !DILocation(line: 40, column: 17, scope: !1090)
!1104 = !DILocation(line: 40, column: 11, scope: !1090)
!1105 = !DILocation(line: 41, column: 25, scope: !1090)
!1106 = !DILocation(line: 41, column: 11, scope: !1090)
!1107 = !DILocation(line: 42, column: 7, scope: !1090)
!1108 = !DILocation(line: 43, column: 13, scope: !1090)
!1109 = !DILocation(line: 46, column: 1, scope: !1079)
!1110 = distinct !DISubprogram(name: "file_name_concat", scope: !1111, file: !1111, line: 35, type: !1112, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !592, variables: !1114)
!1111 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!50, !6, !6, !708}
!1114 = !{!1115, !1116, !1117, !1118}
!1115 = !DILocalVariable(name: "dir", arg: 1, scope: !1110, file: !1111, line: 35, type: !6)
!1116 = !DILocalVariable(name: "abase", arg: 2, scope: !1110, file: !1111, line: 35, type: !6)
!1117 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1110, file: !1111, line: 35, type: !708)
!1118 = !DILocalVariable(name: "p", scope: !1110, file: !1111, line: 37, type: !50)
!1119 = !DILocation(line: 35, column: 31, scope: !1110)
!1120 = !DILocation(line: 35, column: 48, scope: !1110)
!1121 = !DILocation(line: 35, column: 62, scope: !1110)
!1122 = !DILocation(line: 37, column: 13, scope: !1110)
!1123 = !DILocation(line: 37, column: 9, scope: !1110)
!1124 = !DILocation(line: 38, column: 9, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1110, file: !1111, line: 38, column: 7)
!1126 = !DILocation(line: 38, column: 7, scope: !1110)
!1127 = !DILocation(line: 39, column: 5, scope: !1125)
!1128 = !DILocation(line: 40, column: 3, scope: !1110)
!1129 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1130, file: !1130, line: 61, type: !1112, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !1131)
!1130 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142}
!1132 = !DILocalVariable(name: "dir", arg: 1, scope: !1129, file: !1130, line: 61, type: !6)
!1133 = !DILocalVariable(name: "abase", arg: 2, scope: !1129, file: !1130, line: 61, type: !6)
!1134 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1129, file: !1130, line: 61, type: !708)
!1135 = !DILocalVariable(name: "dirbase", scope: !1129, file: !1130, line: 63, type: !6)
!1136 = !DILocalVariable(name: "dirbaselen", scope: !1129, file: !1130, line: 64, type: !94)
!1137 = !DILocalVariable(name: "dirlen", scope: !1129, file: !1130, line: 65, type: !94)
!1138 = !DILocalVariable(name: "needs_separator", scope: !1129, file: !1130, line: 66, type: !94)
!1139 = !DILocalVariable(name: "base", scope: !1129, file: !1130, line: 68, type: !6)
!1140 = !DILocalVariable(name: "baselen", scope: !1129, file: !1130, line: 69, type: !94)
!1141 = !DILocalVariable(name: "p_concat", scope: !1129, file: !1130, line: 71, type: !50)
!1142 = !DILocalVariable(name: "p", scope: !1129, file: !1130, line: 72, type: !50)
!1143 = !DILocation(line: 61, column: 32, scope: !1129)
!1144 = !DILocation(line: 61, column: 49, scope: !1129)
!1145 = !DILocation(line: 61, column: 63, scope: !1129)
!1146 = !DILocation(line: 63, column: 25, scope: !1129)
!1147 = !DILocation(line: 63, column: 15, scope: !1129)
!1148 = !DILocation(line: 64, column: 23, scope: !1129)
!1149 = !DILocation(line: 64, column: 10, scope: !1129)
!1150 = !DILocation(line: 65, column: 27, scope: !1129)
!1151 = !DILocation(line: 65, column: 33, scope: !1129)
!1152 = !DILocation(line: 65, column: 10, scope: !1129)
!1153 = !DILocation(line: 66, column: 29, scope: !1129)
!1154 = !DILocation(line: 66, column: 40, scope: !1129)
!1155 = !DILocation(line: 66, column: 45, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1129, file: !1130, discriminator: 1)
!1157 = !{!662, !662, i64 0}
!1158 = !DILocation(line: 66, column: 43, scope: !1156)
!1159 = !DILocation(line: 66, column: 10, scope: !1129)
!1160 = !DILocalVariable(name: "f", arg: 1, scope: !1161, file: !1130, line: 38, type: !6)
!1161 = distinct !DISubprogram(name: "longest_relative_suffix", scope: !1130, file: !1130, line: 38, type: !1162, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!6, !6}
!1164 = !{!1160}
!1165 = !DILocation(line: 38, column: 38, scope: !1161, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 68, column: 22, scope: !1129)
!1167 = !DILocation(line: 40, column: 8, scope: !1168, inlinedAt: !1166)
!1168 = distinct !DILexicalBlock(scope: !1161, file: !1130, line: 40, column: 3)
!1169 = !DILocation(line: 40, column: 41, scope: !1170, inlinedAt: !1166)
!1170 = !DILexicalBlockFile(scope: !1171, file: !1130, discriminator: 1)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !1130, line: 40, column: 3)
!1172 = !DILocation(line: 40, column: 56, scope: !1173, inlinedAt: !1166)
!1173 = !DILexicalBlockFile(scope: !1171, file: !1130, discriminator: 2)
!1174 = !DILocation(line: 40, column: 3, scope: !1175, inlinedAt: !1166)
!1175 = !DILexicalBlockFile(scope: !1168, file: !1130, discriminator: 1)
!1176 = distinct !{!1176, !1177, !1178}
!1177 = !DILocation(line: 40, column: 3, scope: !1168)
!1178 = !DILocation(line: 41, column: 5, scope: !1168)
!1179 = !DILocation(line: 66, column: 28, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1129, file: !1130, discriminator: 2)
!1181 = !DILocation(line: 68, column: 15, scope: !1129)
!1182 = !DILocation(line: 69, column: 20, scope: !1129)
!1183 = !DILocation(line: 69, column: 10, scope: !1129)
!1184 = !DILocation(line: 71, column: 35, scope: !1129)
!1185 = !DILocation(line: 71, column: 53, scope: !1129)
!1186 = !DILocation(line: 71, column: 63, scope: !1129)
!1187 = !DILocation(line: 71, column: 20, scope: !1129)
!1188 = !DILocation(line: 71, column: 9, scope: !1129)
!1189 = !DILocation(line: 74, column: 16, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1129, file: !1130, line: 74, column: 7)
!1191 = !DILocation(line: 74, column: 7, scope: !1129)
!1192 = !DILocalVariable(name: "__dest", arg: 1, scope: !1193, file: !1194, line: 64, type: !1197)
!1193 = distinct !DISubprogram(name: "mempcpy", scope: !1194, file: !1194, line: 64, type: !1195, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !1199)
!1194 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!49, !1197, !1198, !94}
!1197 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!1198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !554)
!1199 = !{!1192, !1200, !1201}
!1200 = !DILocalVariable(name: "__src", arg: 2, scope: !1193, file: !1194, line: 64, type: !1198)
!1201 = !DILocalVariable(name: "__len", arg: 3, scope: !1193, file: !1194, line: 64, type: !94)
!1202 = !DILocation(line: 64, column: 1, scope: !1193, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 77, column: 7, scope: !1129)
!1204 = !DILocation(line: 67, column: 57, scope: !1193, inlinedAt: !1203)
!1205 = !DILocation(line: 67, column: 10, scope: !1193, inlinedAt: !1203)
!1206 = !DILocation(line: 72, column: 9, scope: !1129)
!1207 = !DILocation(line: 78, column: 6, scope: !1129)
!1208 = !DILocation(line: 79, column: 5, scope: !1129)
!1209 = !DILocation(line: 81, column: 7, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1129, file: !1130, line: 81, column: 7)
!1211 = !DILocation(line: 81, column: 7, scope: !1129)
!1212 = !DILocation(line: 82, column: 27, scope: !1210)
!1213 = !DILocation(line: 82, column: 25, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1210, file: !1130, discriminator: 2)
!1215 = !DILocation(line: 82, column: 21, scope: !1214)
!1216 = !DILocation(line: 82, column: 5, scope: !1214)
!1217 = !DILocation(line: 64, column: 1, scope: !1193, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 84, column: 7, scope: !1129)
!1219 = !DILocation(line: 67, column: 57, scope: !1193, inlinedAt: !1218)
!1220 = !DILocation(line: 67, column: 10, scope: !1193, inlinedAt: !1218)
!1221 = !DILocation(line: 85, column: 6, scope: !1129)
!1222 = !DILocation(line: 87, column: 3, scope: !1129)
!1223 = !DILocation(line: 88, column: 1, scope: !1129)
!1224 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !1225, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !25, !708, !6, !6, !6, !551, null}
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236}
!1228 = !DILocalVariable(name: "argc", arg: 1, scope: !1224, file: !31, line: 44, type: !25)
!1229 = !DILocalVariable(name: "argv", arg: 2, scope: !1224, file: !31, line: 45, type: !708)
!1230 = !DILocalVariable(name: "command_name", arg: 3, scope: !1224, file: !31, line: 46, type: !6)
!1231 = !DILocalVariable(name: "package", arg: 4, scope: !1224, file: !31, line: 47, type: !6)
!1232 = !DILocalVariable(name: "version", arg: 5, scope: !1224, file: !31, line: 48, type: !6)
!1233 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1224, file: !31, line: 49, type: !551)
!1234 = !DILocalVariable(name: "c", scope: !1224, file: !31, line: 52, type: !25)
!1235 = !DILocalVariable(name: "saved_opterr", scope: !1224, file: !31, line: 53, type: !25)
!1236 = !DILocalVariable(name: "authors", scope: !1237, file: !31, line: 71, type: !1241)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !31, line: 70, column: 11)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !31, line: 64, column: 9)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !31, line: 62, column: 5)
!1240 = distinct !DILexicalBlock(scope: !1224, file: !31, line: 60, column: 7)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !900, line: 80, baseType: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !163, line: 50, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !1244)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 192, elements: !172)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1245, file: !29, line: 71, baseType: !113, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1245, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1245, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1245, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!1251 = !DILocation(line: 44, column: 25, scope: !1224)
!1252 = !DILocation(line: 45, column: 28, scope: !1224)
!1253 = !DILocation(line: 46, column: 33, scope: !1224)
!1254 = !DILocation(line: 47, column: 33, scope: !1224)
!1255 = !DILocation(line: 48, column: 33, scope: !1224)
!1256 = !DILocation(line: 49, column: 28, scope: !1224)
!1257 = !DILocation(line: 55, column: 18, scope: !1224)
!1258 = !DILocation(line: 53, column: 7, scope: !1224)
!1259 = !DILocation(line: 58, column: 10, scope: !1224)
!1260 = !DILocation(line: 60, column: 12, scope: !1240)
!1261 = !DILocation(line: 61, column: 7, scope: !1240)
!1262 = !DILocation(line: 61, column: 15, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1240, file: !31, discriminator: 1)
!1264 = !DILocation(line: 52, column: 7, scope: !1224)
!1265 = !DILocation(line: 60, column: 7, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1224, file: !31, discriminator: 1)
!1267 = !DILocation(line: 66, column: 11, scope: !1238)
!1268 = !DILocation(line: 67, column: 11, scope: !1238)
!1269 = !DILocation(line: 71, column: 13, scope: !1237)
!1270 = !DILocation(line: 71, column: 21, scope: !1237)
!1271 = !DILocation(line: 72, column: 13, scope: !1237)
!1272 = !DILocation(line: 73, column: 29, scope: !1237)
!1273 = !DILocation(line: 73, column: 13, scope: !1237)
!1274 = !DILocation(line: 74, column: 13, scope: !1237)
!1275 = !DILocation(line: 84, column: 10, scope: !1224)
!1276 = !DILocation(line: 88, column: 10, scope: !1224)
!1277 = !DILocation(line: 89, column: 1, scope: !1224)
!1278 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !562, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !1279)
!1279 = !{!1280, !1281, !1282}
!1280 = !DILocalVariable(name: "argv0", arg: 1, scope: !1278, file: !52, line: 39, type: !6)
!1281 = !DILocalVariable(name: "slash", scope: !1278, file: !52, line: 46, type: !6)
!1282 = !DILocalVariable(name: "base", scope: !1278, file: !52, line: 47, type: !6)
!1283 = !DILocation(line: 39, column: 31, scope: !1278)
!1284 = !DILocation(line: 51, column: 13, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1278, file: !52, line: 51, column: 7)
!1286 = !DILocation(line: 51, column: 7, scope: !1278)
!1287 = !DILocation(line: 55, column: 14, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !52, line: 52, column: 5)
!1289 = !DILocation(line: 54, column: 7, scope: !1288)
!1290 = !DILocation(line: 56, column: 7, scope: !1288)
!1291 = !DILocation(line: 59, column: 11, scope: !1278)
!1292 = !DILocation(line: 46, column: 15, scope: !1278)
!1293 = !DILocation(line: 60, column: 17, scope: !1278)
!1294 = !DILocation(line: 60, column: 33, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1278, file: !52, discriminator: 1)
!1296 = !DILocation(line: 60, column: 11, scope: !1278)
!1297 = !DILocation(line: 47, column: 15, scope: !1278)
!1298 = !DILocation(line: 61, column: 12, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1278, file: !52, line: 61, column: 7)
!1300 = !DILocation(line: 61, column: 20, scope: !1299)
!1301 = !DILocation(line: 61, column: 25, scope: !1299)
!1302 = !DILocation(line: 61, column: 28, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1299, file: !52, discriminator: 1)
!1304 = !DILocation(line: 61, column: 61, scope: !1303)
!1305 = !DILocation(line: 61, column: 7, scope: !1295)
!1306 = !DILocation(line: 64, column: 11, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !52, line: 64, column: 11)
!1308 = distinct !DILexicalBlock(scope: !1299, file: !52, line: 62, column: 5)
!1309 = !DILocation(line: 64, column: 36, scope: !1307)
!1310 = !DILocation(line: 64, column: 11, scope: !1308)
!1311 = !DILocation(line: 66, column: 24, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !52, line: 65, column: 9)
!1313 = !DILocation(line: 70, column: 41, scope: !1312)
!1314 = !DILocation(line: 72, column: 9, scope: !1312)
!1315 = !DILocation(line: 84, column: 16, scope: !1278)
!1316 = !DILocation(line: 90, column: 27, scope: !1278)
!1317 = !DILocation(line: 92, column: 1, scope: !1278)
!1318 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !1319, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1322)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!1321, !1321}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1322 = !{!1323, !1324, !1325}
!1323 = !DILocalVariable(name: "o", arg: 1, scope: !1318, file: !100, line: 114, type: !1321)
!1324 = !DILocalVariable(name: "e", scope: !1318, file: !100, line: 116, type: !25)
!1325 = !DILocalVariable(name: "p", scope: !1318, file: !100, line: 117, type: !1321)
!1326 = !DILocation(line: 114, column: 48, scope: !1318)
!1327 = !DILocation(line: 116, column: 11, scope: !1318)
!1328 = !DILocation(line: 116, column: 7, scope: !1318)
!1329 = !DILocation(line: 117, column: 40, scope: !1318)
!1330 = !DILocation(line: 117, column: 40, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1318, file: !100, discriminator: 3)
!1332 = !DILocation(line: 117, column: 31, scope: !1331)
!1333 = !DILocation(line: 117, column: 27, scope: !1318)
!1334 = !DILocation(line: 119, column: 9, scope: !1318)
!1335 = !DILocation(line: 120, column: 3, scope: !1318)
!1336 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !1337, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1341)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!58, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1341 = !{!1342}
!1342 = !DILocalVariable(name: "o", arg: 1, scope: !1336, file: !100, line: 125, type: !1339)
!1343 = !DILocation(line: 125, column: 50, scope: !1336)
!1344 = !DILocation(line: 127, column: 11, scope: !1336)
!1345 = !DILocation(line: 127, column: 46, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1336, file: !100, discriminator: 3)
!1347 = !{!1348, !662, i64 0}
!1348 = !{!"quoting_options", !662, i64 0, !759, i64 4, !662, i64 8, !661, i64 40, !661, i64 48}
!1349 = !DILocation(line: 127, column: 3, scope: !1346)
!1350 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !1351, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !1321, !58}
!1353 = !{!1354, !1355}
!1354 = !DILocalVariable(name: "o", arg: 1, scope: !1350, file: !100, line: 133, type: !1321)
!1355 = !DILocalVariable(name: "s", arg: 2, scope: !1350, file: !100, line: 133, type: !58)
!1356 = !DILocation(line: 133, column: 44, scope: !1350)
!1357 = !DILocation(line: 133, column: 66, scope: !1350)
!1358 = !DILocation(line: 135, column: 4, scope: !1350)
!1359 = !DILocation(line: 135, column: 39, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1350, file: !100, discriminator: 3)
!1361 = !DILocation(line: 135, column: 45, scope: !1360)
!1362 = !DILocation(line: 136, column: 1, scope: !1350)
!1363 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !1364, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!25, !1321, !8, !25}
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1373, !1374}
!1367 = !DILocalVariable(name: "o", arg: 1, scope: !1363, file: !100, line: 144, type: !1321)
!1368 = !DILocalVariable(name: "c", arg: 2, scope: !1363, file: !100, line: 144, type: !8)
!1369 = !DILocalVariable(name: "i", arg: 3, scope: !1363, file: !100, line: 144, type: !25)
!1370 = !DILocalVariable(name: "uc", scope: !1363, file: !100, line: 146, type: !531)
!1371 = !DILocalVariable(name: "p", scope: !1363, file: !100, line: 147, type: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1373 = !DILocalVariable(name: "shift", scope: !1363, file: !100, line: 149, type: !25)
!1374 = !DILocalVariable(name: "r", scope: !1363, file: !100, line: 150, type: !25)
!1375 = !DILocation(line: 144, column: 43, scope: !1363)
!1376 = !DILocation(line: 144, column: 51, scope: !1363)
!1377 = !DILocation(line: 144, column: 58, scope: !1363)
!1378 = !DILocation(line: 146, column: 17, scope: !1363)
!1379 = !DILocation(line: 148, column: 6, scope: !1363)
!1380 = !DILocation(line: 148, column: 62, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1363, file: !100, discriminator: 3)
!1382 = !DILocation(line: 148, column: 57, scope: !1381)
!1383 = !DILocation(line: 147, column: 17, scope: !1363)
!1384 = !DILocation(line: 149, column: 18, scope: !1363)
!1385 = !DILocation(line: 149, column: 15, scope: !1363)
!1386 = !DILocation(line: 149, column: 7, scope: !1363)
!1387 = !DILocation(line: 150, column: 12, scope: !1363)
!1388 = !DILocation(line: 150, column: 15, scope: !1363)
!1389 = !DILocation(line: 150, column: 25, scope: !1363)
!1390 = !DILocation(line: 150, column: 7, scope: !1363)
!1391 = !DILocation(line: 151, column: 13, scope: !1363)
!1392 = !DILocation(line: 151, column: 18, scope: !1363)
!1393 = !DILocation(line: 151, column: 23, scope: !1363)
!1394 = !DILocation(line: 151, column: 6, scope: !1363)
!1395 = !DILocation(line: 152, column: 3, scope: !1363)
!1396 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !1397, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!25, !1321, !25}
!1399 = !{!1400, !1401, !1402}
!1400 = !DILocalVariable(name: "o", arg: 1, scope: !1396, file: !100, line: 160, type: !1321)
!1401 = !DILocalVariable(name: "i", arg: 2, scope: !1396, file: !100, line: 160, type: !25)
!1402 = !DILocalVariable(name: "r", scope: !1396, file: !100, line: 162, type: !25)
!1403 = !DILocation(line: 160, column: 44, scope: !1396)
!1404 = !DILocation(line: 160, column: 51, scope: !1396)
!1405 = !DILocation(line: 163, column: 8, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1396, file: !100, line: 163, column: 7)
!1407 = !DILocation(line: 163, column: 7, scope: !1396)
!1408 = !DILocation(line: 165, column: 10, scope: !1396)
!1409 = !{!1348, !759, i64 4}
!1410 = !DILocation(line: 162, column: 7, scope: !1396)
!1411 = !DILocation(line: 166, column: 12, scope: !1396)
!1412 = !DILocation(line: 167, column: 3, scope: !1396)
!1413 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !1414, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1416)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !1321, !6, !6}
!1416 = !{!1417, !1418, !1419}
!1417 = !DILocalVariable(name: "o", arg: 1, scope: !1413, file: !100, line: 171, type: !1321)
!1418 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1413, file: !100, line: 172, type: !6)
!1419 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1413, file: !100, line: 172, type: !6)
!1420 = !DILocation(line: 171, column: 45, scope: !1413)
!1421 = !DILocation(line: 172, column: 33, scope: !1413)
!1422 = !DILocation(line: 172, column: 57, scope: !1413)
!1423 = !DILocation(line: 174, column: 8, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1413, file: !100, line: 174, column: 7)
!1425 = !DILocation(line: 174, column: 7, scope: !1413)
!1426 = !DILocation(line: 176, column: 6, scope: !1413)
!1427 = !DILocation(line: 176, column: 12, scope: !1413)
!1428 = !DILocation(line: 177, column: 8, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1413, file: !100, line: 177, column: 7)
!1430 = !DILocation(line: 177, column: 23, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1429, file: !100, discriminator: 1)
!1432 = !DILocation(line: 177, column: 19, scope: !1429)
!1433 = !DILocation(line: 178, column: 5, scope: !1429)
!1434 = !DILocation(line: 179, column: 6, scope: !1413)
!1435 = !DILocation(line: 179, column: 17, scope: !1413)
!1436 = !{!1348, !661, i64 40}
!1437 = !DILocation(line: 180, column: 6, scope: !1413)
!1438 = !DILocation(line: 180, column: 18, scope: !1413)
!1439 = !{!1348, !661, i64 48}
!1440 = !DILocation(line: 181, column: 1, scope: !1413)
!1441 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !1442, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1444)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!94, !50, !94, !6, !94, !1339}
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452}
!1445 = !DILocalVariable(name: "buffer", arg: 1, scope: !1441, file: !100, line: 776, type: !50)
!1446 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1441, file: !100, line: 776, type: !94)
!1447 = !DILocalVariable(name: "arg", arg: 3, scope: !1441, file: !100, line: 777, type: !6)
!1448 = !DILocalVariable(name: "argsize", arg: 4, scope: !1441, file: !100, line: 777, type: !94)
!1449 = !DILocalVariable(name: "o", arg: 5, scope: !1441, file: !100, line: 778, type: !1339)
!1450 = !DILocalVariable(name: "p", scope: !1441, file: !100, line: 780, type: !1339)
!1451 = !DILocalVariable(name: "e", scope: !1441, file: !100, line: 781, type: !25)
!1452 = !DILocalVariable(name: "r", scope: !1441, file: !100, line: 782, type: !94)
!1453 = !DILocation(line: 776, column: 24, scope: !1441)
!1454 = !DILocation(line: 776, column: 39, scope: !1441)
!1455 = !DILocation(line: 777, column: 30, scope: !1441)
!1456 = !DILocation(line: 777, column: 42, scope: !1441)
!1457 = !DILocation(line: 778, column: 48, scope: !1441)
!1458 = !DILocation(line: 780, column: 37, scope: !1441)
!1459 = !DILocation(line: 780, column: 33, scope: !1441)
!1460 = !DILocation(line: 781, column: 11, scope: !1441)
!1461 = !DILocation(line: 781, column: 7, scope: !1441)
!1462 = !DILocation(line: 783, column: 43, scope: !1441)
!1463 = !DILocation(line: 783, column: 53, scope: !1441)
!1464 = !DILocation(line: 783, column: 60, scope: !1441)
!1465 = !DILocation(line: 784, column: 43, scope: !1441)
!1466 = !DILocation(line: 784, column: 58, scope: !1441)
!1467 = !DILocation(line: 782, column: 14, scope: !1441)
!1468 = !DILocation(line: 782, column: 10, scope: !1441)
!1469 = !DILocation(line: 785, column: 9, scope: !1441)
!1470 = !DILocation(line: 786, column: 3, scope: !1441)
!1471 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !1472, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1476)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!94, !50, !94, !6, !94, !58, !25, !1474, !6, !6}
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1501, !1502, !1503, !1504, !1505, !1508, !1509, !1526, !1529, !1530, !1537}
!1477 = !DILocalVariable(name: "buffer", arg: 1, scope: !1471, file: !100, line: 248, type: !50)
!1478 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1471, file: !100, line: 248, type: !94)
!1479 = !DILocalVariable(name: "arg", arg: 3, scope: !1471, file: !100, line: 249, type: !6)
!1480 = !DILocalVariable(name: "argsize", arg: 4, scope: !1471, file: !100, line: 249, type: !94)
!1481 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1471, file: !100, line: 250, type: !58)
!1482 = !DILocalVariable(name: "flags", arg: 6, scope: !1471, file: !100, line: 250, type: !25)
!1483 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1471, file: !100, line: 251, type: !1474)
!1484 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1471, file: !100, line: 252, type: !6)
!1485 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1471, file: !100, line: 253, type: !6)
!1486 = !DILocalVariable(name: "i", scope: !1471, file: !100, line: 255, type: !94)
!1487 = !DILocalVariable(name: "len", scope: !1471, file: !100, line: 256, type: !94)
!1488 = !DILocalVariable(name: "orig_buffersize", scope: !1471, file: !100, line: 257, type: !94)
!1489 = !DILocalVariable(name: "quote_string", scope: !1471, file: !100, line: 258, type: !6)
!1490 = !DILocalVariable(name: "quote_string_len", scope: !1471, file: !100, line: 259, type: !94)
!1491 = !DILocalVariable(name: "backslash_escapes", scope: !1471, file: !100, line: 260, type: !17)
!1492 = !DILocalVariable(name: "unibyte_locale", scope: !1471, file: !100, line: 261, type: !17)
!1493 = !DILocalVariable(name: "elide_outer_quotes", scope: !1471, file: !100, line: 262, type: !17)
!1494 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1471, file: !100, line: 263, type: !17)
!1495 = !DILocalVariable(name: "encountered_single_quote", scope: !1471, file: !100, line: 264, type: !17)
!1496 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1471, file: !100, line: 265, type: !17)
!1497 = !DILocalVariable(name: "c", scope: !1498, file: !100, line: 394, type: !531)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !100, line: 393, column: 5)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !100, line: 392, column: 3)
!1500 = distinct !DILexicalBlock(scope: !1471, file: !100, line: 392, column: 3)
!1501 = !DILocalVariable(name: "esc", scope: !1498, file: !100, line: 395, type: !531)
!1502 = !DILocalVariable(name: "is_right_quote", scope: !1498, file: !100, line: 396, type: !17)
!1503 = !DILocalVariable(name: "escaping", scope: !1498, file: !100, line: 397, type: !17)
!1504 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1498, file: !100, line: 398, type: !17)
!1505 = !DILocalVariable(name: "m", scope: !1506, file: !100, line: 602, type: !94)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 600, column: 11)
!1507 = distinct !DILexicalBlock(scope: !1498, file: !100, line: 418, column: 9)
!1508 = !DILocalVariable(name: "printable", scope: !1506, file: !100, line: 604, type: !17)
!1509 = !DILocalVariable(name: "mbstate", scope: !1510, file: !100, line: 613, type: !1512)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !100, line: 612, column: 15)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !100, line: 606, column: 17)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1513, line: 107, baseType: !1514)
!1513 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1513, line: 95, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1513, line: 83, size: 64, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1515, file: !1513, line: 85, baseType: !25, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1515, file: !1513, line: 94, baseType: !1519, size: 32, offset: 32)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1515, file: !1513, line: 86, size: 32, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1519, file: !1513, line: 89, baseType: !113, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1519, file: !1513, line: 93, baseType: !1523, size: 32)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1524)
!1524 = !{!1525}
!1525 = !DISubrange(count: 4)
!1526 = !DILocalVariable(name: "w", scope: !1527, file: !100, line: 623, type: !1528)
!1527 = distinct !DILexicalBlock(scope: !1510, file: !100, line: 622, column: 19)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1529 = !DILocalVariable(name: "bytes", scope: !1527, file: !100, line: 624, type: !94)
!1530 = !DILocalVariable(name: "j", scope: !1531, file: !100, line: 649, type: !94)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !100, line: 648, column: 27)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !100, line: 646, column: 29)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !100, line: 641, column: 23)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !100, line: 633, column: 30)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !100, line: 628, column: 30)
!1536 = distinct !DILexicalBlock(scope: !1527, file: !100, line: 626, column: 25)
!1537 = !DILocalVariable(name: "ilim", scope: !1538, file: !100, line: 676, type: !94)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !100, line: 673, column: 15)
!1539 = distinct !DILexicalBlock(scope: !1506, file: !100, line: 672, column: 17)
!1540 = !DILocation(line: 248, column: 33, scope: !1471)
!1541 = !DILocation(line: 248, column: 48, scope: !1471)
!1542 = !DILocation(line: 249, column: 39, scope: !1471)
!1543 = !DILocation(line: 249, column: 51, scope: !1471)
!1544 = !DILocation(line: 250, column: 46, scope: !1471)
!1545 = !DILocation(line: 250, column: 65, scope: !1471)
!1546 = !DILocation(line: 251, column: 47, scope: !1471)
!1547 = !DILocation(line: 252, column: 39, scope: !1471)
!1548 = !DILocation(line: 253, column: 39, scope: !1471)
!1549 = !DILocation(line: 256, column: 10, scope: !1471)
!1550 = !DILocation(line: 257, column: 10, scope: !1471)
!1551 = !DILocation(line: 258, column: 15, scope: !1471)
!1552 = !DILocation(line: 259, column: 10, scope: !1471)
!1553 = !DILocation(line: 260, column: 8, scope: !1471)
!1554 = !DILocation(line: 261, column: 25, scope: !1471)
!1555 = !DILocation(line: 261, column: 36, scope: !1471)
!1556 = !DILocation(line: 262, column: 8, scope: !1471)
!1557 = !DILocation(line: 263, column: 8, scope: !1471)
!1558 = !DILocation(line: 264, column: 8, scope: !1471)
!1559 = !DILocation(line: 265, column: 8, scope: !1471)
!1560 = !DILocation(line: 265, column: 3, scope: !1471)
!1561 = !DILocation(line: 308, column: 3, scope: !1471)
!1562 = !DILocation(line: 315, column: 11, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1471, file: !100, line: 309, column: 5)
!1564 = !DILocation(line: 315, column: 12, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1563, file: !100, line: 315, column: 11)
!1566 = !DILocation(line: 316, column: 9, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1568, file: !100, discriminator: 1)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !100, line: 316, column: 9)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !100, line: 316, column: 9)
!1570 = !DILocation(line: 316, column: 9, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1569, file: !100, discriminator: 1)
!1572 = !DILocation(line: 316, column: 9, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1568, file: !100, discriminator: 2)
!1574 = !DILocation(line: 354, column: 26, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !100, line: 332, column: 11)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !100, line: 331, column: 13)
!1577 = distinct !DILexicalBlock(scope: !1563, file: !100, line: 330, column: 7)
!1578 = !DILocation(line: 355, column: 27, scope: !1575)
!1579 = !DILocation(line: 356, column: 11, scope: !1575)
!1580 = !DILocation(line: 357, column: 14, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !100, line: 357, column: 13)
!1582 = !DILocation(line: 357, column: 13, scope: !1577)
!1583 = !DILocation(line: 358, column: 43, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1585, file: !100, discriminator: 1)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !100, line: 358, column: 11)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !100, line: 358, column: 11)
!1587 = !DILocation(line: 358, column: 11, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1586, file: !100, discriminator: 1)
!1589 = !DILocation(line: 359, column: 13, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1591, file: !100, discriminator: 1)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !100, line: 359, column: 13)
!1592 = distinct !DILexicalBlock(scope: !1585, file: !100, line: 359, column: 13)
!1593 = !DILocation(line: 359, column: 13, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1592, file: !100, discriminator: 1)
!1595 = !DILocation(line: 359, column: 13, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1591, file: !100, discriminator: 2)
!1597 = !DILocation(line: 359, column: 13, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1592, file: !100, discriminator: 3)
!1599 = !DILocation(line: 358, column: 70, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1585, file: !100, discriminator: 2)
!1601 = distinct !{!1601, !1602, !1603}
!1602 = !DILocation(line: 358, column: 11, scope: !1586)
!1603 = !DILocation(line: 359, column: 13, scope: !1586)
!1604 = !DILocation(line: 362, column: 28, scope: !1577)
!1605 = !DILocation(line: 364, column: 7, scope: !1563)
!1606 = !DILocation(line: 367, column: 7, scope: !1563)
!1607 = !DILocation(line: 370, column: 7, scope: !1563)
!1608 = !DILocation(line: 373, column: 12, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1563, file: !100, line: 373, column: 11)
!1610 = !DILocation(line: 373, column: 11, scope: !1563)
!1611 = !DILocation(line: 378, column: 12, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1563, file: !100, line: 378, column: 11)
!1613 = !DILocation(line: 378, column: 11, scope: !1563)
!1614 = !DILocation(line: 379, column: 9, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1616, file: !100, discriminator: 1)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !100, line: 379, column: 9)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !100, line: 379, column: 9)
!1618 = !DILocation(line: 379, column: 9, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1617, file: !100, discriminator: 1)
!1620 = !DILocation(line: 379, column: 9, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1616, file: !100, discriminator: 2)
!1622 = !DILocation(line: 386, column: 7, scope: !1563)
!1623 = !DILocation(line: 389, column: 7, scope: !1563)
!1624 = !DILocation(line: 255, column: 10, scope: !1471)
!1625 = !DILocation(line: 392, column: 8, scope: !1500)
!1626 = !DILocation(line: 392, column: 27, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1499, file: !100, discriminator: 1)
!1628 = !DILocation(line: 392, column: 19, scope: !1627)
!1629 = !DILocation(line: 392, column: 60, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1499, file: !100, discriminator: 3)
!1631 = !DILocation(line: 392, column: 3, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1500, file: !100, discriminator: 4)
!1633 = !DILocation(line: 392, column: 41, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1499, file: !100, discriminator: 2)
!1635 = !DILocation(line: 392, column: 48, scope: !1634)
!1636 = !DILocation(line: 396, column: 12, scope: !1498)
!1637 = !DILocation(line: 397, column: 12, scope: !1498)
!1638 = !DILocation(line: 398, column: 12, scope: !1498)
!1639 = !DILocation(line: 401, column: 11, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1498, file: !100, line: 400, column: 11)
!1641 = !DILocation(line: 403, column: 17, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1640, file: !100, discriminator: 1)
!1643 = !DILocation(line: 404, column: 39, scope: !1640)
!1644 = !DILocation(line: 408, column: 32, scope: !1640)
!1645 = !DILocation(line: 404, column: 19, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1640, file: !100, discriminator: 2)
!1647 = !DILocation(line: 404, column: 15, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1640, file: !100, discriminator: 4)
!1649 = !DILocation(line: 409, column: 11, scope: !1640)
!1650 = !DILocation(line: 409, column: 26, scope: !1642)
!1651 = !DILocation(line: 409, column: 14, scope: !1642)
!1652 = !DILocation(line: 400, column: 11, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1498, file: !100, discriminator: 1)
!1654 = !DILocation(line: 416, column: 11, scope: !1498)
!1655 = !DILocation(line: 394, column: 21, scope: !1498)
!1656 = !DILocation(line: 417, column: 7, scope: !1498)
!1657 = !DILocation(line: 420, column: 15, scope: !1507)
!1658 = !DILocation(line: 422, column: 15, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1660, file: !100, discriminator: 1)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !100, line: 422, column: 15)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !100, line: 421, column: 13)
!1662 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 420, column: 15)
!1663 = !DILocation(line: 422, column: 15, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1665, file: !100, discriminator: 4)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 422, column: 15)
!1666 = !DILocation(line: 422, column: 15, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1665, file: !100, discriminator: 3)
!1668 = !DILocation(line: 422, column: 15, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1670, file: !100, discriminator: 6)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !100, line: 422, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !100, line: 422, column: 15)
!1672 = distinct !DILexicalBlock(scope: !1665, file: !100, line: 422, column: 15)
!1673 = !DILocation(line: 422, column: 15, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1671, file: !100, discriminator: 6)
!1675 = !DILocation(line: 422, column: 15, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1670, file: !100, discriminator: 7)
!1677 = !DILocation(line: 422, column: 15, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1671, file: !100, discriminator: 8)
!1679 = !DILocation(line: 422, column: 15, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1681, file: !100, discriminator: 11)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !100, line: 422, column: 15)
!1682 = distinct !DILexicalBlock(scope: !1672, file: !100, line: 422, column: 15)
!1683 = !DILocation(line: 422, column: 15, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1682, file: !100, discriminator: 11)
!1685 = !DILocation(line: 422, column: 15, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1681, file: !100, discriminator: 12)
!1687 = !DILocation(line: 422, column: 15, scope: !1688)
!1688 = !DILexicalBlockFile(scope: !1682, file: !100, discriminator: 13)
!1689 = !DILocation(line: 422, column: 15, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1691, file: !100, discriminator: 16)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !100, line: 422, column: 15)
!1692 = distinct !DILexicalBlock(scope: !1672, file: !100, line: 422, column: 15)
!1693 = !DILocation(line: 422, column: 15, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1692, file: !100, discriminator: 16)
!1695 = !DILocation(line: 422, column: 15, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1691, file: !100, discriminator: 17)
!1697 = !DILocation(line: 422, column: 15, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1692, file: !100, discriminator: 18)
!1699 = !DILocation(line: 422, column: 15, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1672, file: !100, discriminator: 20)
!1701 = !DILocation(line: 422, column: 15, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1703, file: !100, discriminator: 22)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !100, line: 422, column: 15)
!1704 = distinct !DILexicalBlock(scope: !1660, file: !100, line: 422, column: 15)
!1705 = !DILocation(line: 422, column: 15, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1704, file: !100, discriminator: 22)
!1707 = !DILocation(line: 422, column: 15, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1703, file: !100, discriminator: 23)
!1709 = !DILocation(line: 422, column: 15, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1704, file: !100, discriminator: 24)
!1711 = !DILocation(line: 430, column: 19, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1661, file: !100, line: 429, column: 19)
!1713 = !DILocation(line: 430, column: 24, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1712, file: !100, discriminator: 1)
!1715 = !DILocation(line: 430, column: 28, scope: !1714)
!1716 = !DILocation(line: 430, column: 38, scope: !1714)
!1717 = !DILocation(line: 430, column: 48, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1712, file: !100, discriminator: 2)
!1719 = !DILocation(line: 430, column: 59, scope: !1718)
!1720 = !DILocation(line: 432, column: 19, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1722, file: !100, discriminator: 1)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !100, line: 432, column: 19)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !100, line: 432, column: 19)
!1724 = distinct !DILexicalBlock(scope: !1712, file: !100, line: 431, column: 17)
!1725 = !DILocation(line: 432, column: 19, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1723, file: !100, discriminator: 1)
!1727 = !DILocation(line: 432, column: 19, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1722, file: !100, discriminator: 2)
!1729 = !DILocation(line: 432, column: 19, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1723, file: !100, discriminator: 3)
!1731 = !DILocation(line: 433, column: 19, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1733, file: !100, discriminator: 1)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !100, line: 433, column: 19)
!1734 = distinct !DILexicalBlock(scope: !1724, file: !100, line: 433, column: 19)
!1735 = !DILocation(line: 433, column: 19, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1734, file: !100, discriminator: 1)
!1737 = !DILocation(line: 433, column: 19, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1733, file: !100, discriminator: 2)
!1739 = !DILocation(line: 433, column: 19, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1734, file: !100, discriminator: 3)
!1741 = !DILocation(line: 434, column: 17, scope: !1724)
!1742 = !DILocation(line: 441, column: 20, scope: !1662)
!1743 = !DILocation(line: 446, column: 11, scope: !1507)
!1744 = !DILocation(line: 449, column: 19, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 447, column: 13)
!1746 = !DILocation(line: 455, column: 19, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1745, file: !100, line: 454, column: 19)
!1748 = !DILocation(line: 455, column: 24, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1747, file: !100, discriminator: 1)
!1750 = !DILocation(line: 455, column: 28, scope: !1749)
!1751 = !DILocation(line: 455, column: 38, scope: !1749)
!1752 = !DILocation(line: 455, column: 47, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1747, file: !100, discriminator: 2)
!1754 = !DILocation(line: 455, column: 41, scope: !1753)
!1755 = !DILocation(line: 455, column: 52, scope: !1753)
!1756 = !DILocation(line: 454, column: 19, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1745, file: !100, discriminator: 1)
!1758 = !DILocation(line: 456, column: 25, scope: !1747)
!1759 = !DILocation(line: 456, column: 17, scope: !1747)
!1760 = !DILocation(line: 463, column: 25, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1747, file: !100, line: 457, column: 19)
!1762 = !DILocation(line: 467, column: 21, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1764, file: !100, discriminator: 1)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !100, line: 467, column: 21)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !100, line: 467, column: 21)
!1766 = !DILocation(line: 467, column: 21, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1765, file: !100, discriminator: 1)
!1768 = !DILocation(line: 467, column: 21, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1764, file: !100, discriminator: 2)
!1770 = !DILocation(line: 467, column: 21, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1765, file: !100, discriminator: 3)
!1772 = !DILocation(line: 468, column: 21, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1774, file: !100, discriminator: 1)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !100, line: 468, column: 21)
!1775 = distinct !DILexicalBlock(scope: !1761, file: !100, line: 468, column: 21)
!1776 = !DILocation(line: 468, column: 21, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1775, file: !100, discriminator: 1)
!1778 = !DILocation(line: 468, column: 21, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1774, file: !100, discriminator: 2)
!1780 = !DILocation(line: 468, column: 21, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1775, file: !100, discriminator: 3)
!1782 = !DILocation(line: 469, column: 21, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1784, file: !100, discriminator: 1)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !100, line: 469, column: 21)
!1785 = distinct !DILexicalBlock(scope: !1761, file: !100, line: 469, column: 21)
!1786 = !DILocation(line: 469, column: 21, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1785, file: !100, discriminator: 1)
!1788 = !DILocation(line: 469, column: 21, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1784, file: !100, discriminator: 2)
!1790 = !DILocation(line: 469, column: 21, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1785, file: !100, discriminator: 3)
!1792 = !DILocation(line: 470, column: 21, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1794, file: !100, discriminator: 1)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !100, line: 470, column: 21)
!1795 = distinct !DILexicalBlock(scope: !1761, file: !100, line: 470, column: 21)
!1796 = !DILocation(line: 470, column: 21, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1795, file: !100, discriminator: 1)
!1798 = !DILocation(line: 470, column: 21, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1794, file: !100, discriminator: 2)
!1800 = !DILocation(line: 470, column: 21, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1795, file: !100, discriminator: 3)
!1802 = !DILocation(line: 471, column: 21, scope: !1761)
!1803 = !DILocation(line: 395, column: 21, scope: !1498)
!1804 = !DILocation(line: 484, column: 31, scope: !1507)
!1805 = !DILocation(line: 485, column: 31, scope: !1507)
!1806 = !DILocation(line: 487, column: 31, scope: !1507)
!1807 = !DILocation(line: 488, column: 31, scope: !1507)
!1808 = !DILocation(line: 489, column: 31, scope: !1507)
!1809 = !DILocation(line: 492, column: 15, scope: !1507)
!1810 = !DILocation(line: 494, column: 19, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !100, line: 493, column: 13)
!1812 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 492, column: 15)
!1813 = !DILocation(line: 501, column: 33, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 501, column: 15)
!1815 = !DILocation(line: 506, column: 15, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 505, column: 15)
!1817 = !DILocation(line: 510, column: 15, scope: !1507)
!1818 = !DILocation(line: 518, column: 26, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 518, column: 15)
!1820 = !DILocation(line: 518, column: 15, scope: !1507)
!1821 = !DILocation(line: 518, column: 40, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1819, file: !100, discriminator: 1)
!1823 = !DILocation(line: 518, column: 47, scope: !1822)
!1824 = !DILocation(line: 522, column: 17, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 522, column: 15)
!1826 = !DILocation(line: 518, column: 18, scope: !1822)
!1827 = !DILocation(line: 518, column: 65, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1819, file: !100, discriminator: 2)
!1829 = !DILocation(line: 518, column: 15, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1507, file: !100, discriminator: 2)
!1831 = !DILocation(line: 522, column: 15, scope: !1507)
!1832 = !DILocation(line: 526, column: 11, scope: !1507)
!1833 = !DILocation(line: 541, column: 15, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 540, column: 15)
!1835 = !DILocation(line: 548, column: 15, scope: !1507)
!1836 = !DILocation(line: 550, column: 19, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !100, line: 549, column: 13)
!1838 = distinct !DILexicalBlock(scope: !1507, file: !100, line: 548, column: 15)
!1839 = !DILocation(line: 553, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !100, line: 553, column: 19)
!1841 = !DILocation(line: 553, column: 35, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1840, file: !100, discriminator: 1)
!1843 = !DILocation(line: 553, column: 30, scope: !1840)
!1844 = !DILocation(line: 562, column: 15, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1846, file: !100, discriminator: 1)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !100, line: 562, column: 15)
!1847 = distinct !DILexicalBlock(scope: !1837, file: !100, line: 562, column: 15)
!1848 = !DILocation(line: 562, column: 15, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1847, file: !100, discriminator: 1)
!1850 = !DILocation(line: 562, column: 15, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1846, file: !100, discriminator: 2)
!1852 = !DILocation(line: 562, column: 15, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1847, file: !100, discriminator: 3)
!1854 = !DILocation(line: 563, column: 15, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1856, file: !100, discriminator: 1)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !100, line: 563, column: 15)
!1857 = distinct !DILexicalBlock(scope: !1837, file: !100, line: 563, column: 15)
!1858 = !DILocation(line: 563, column: 15, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1857, file: !100, discriminator: 1)
!1860 = !DILocation(line: 563, column: 15, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1856, file: !100, discriminator: 2)
!1862 = !DILocation(line: 563, column: 15, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1857, file: !100, discriminator: 3)
!1864 = !DILocation(line: 564, column: 15, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1866, file: !100, discriminator: 1)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !100, line: 564, column: 15)
!1867 = distinct !DILexicalBlock(scope: !1837, file: !100, line: 564, column: 15)
!1868 = !DILocation(line: 564, column: 15, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1867, file: !100, discriminator: 1)
!1870 = !DILocation(line: 564, column: 15, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1866, file: !100, discriminator: 2)
!1872 = !DILocation(line: 564, column: 15, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1867, file: !100, discriminator: 3)
!1874 = !DILocation(line: 566, column: 13, scope: !1837)
!1875 = !DILocation(line: 606, column: 17, scope: !1506)
!1876 = !DILocation(line: 602, column: 20, scope: !1506)
!1877 = !DILocation(line: 609, column: 29, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1511, file: !100, line: 607, column: 15)
!1879 = !{!957, !957, i64 0}
!1880 = !DILocation(line: 609, column: 27, scope: !1878)
!1881 = !DILocation(line: 604, column: 18, scope: !1506)
!1882 = !DILocation(line: 610, column: 15, scope: !1878)
!1883 = !DILocation(line: 613, column: 17, scope: !1510)
!1884 = !DILocation(line: 614, column: 17, scope: !1510)
!1885 = !DILocation(line: 618, column: 29, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1510, file: !100, line: 618, column: 21)
!1887 = !DILocation(line: 618, column: 21, scope: !1510)
!1888 = distinct !{!1888, !1889, !1890}
!1889 = !DILocation(line: 621, column: 17, scope: !1510)
!1890 = !DILocation(line: 667, column: 44, scope: !1510)
!1891 = !DILocation(line: 619, column: 29, scope: !1886)
!1892 = !DILocation(line: 619, column: 19, scope: !1886)
!1893 = !DILocation(line: 623, column: 21, scope: !1527)
!1894 = !DILocation(line: 624, column: 56, scope: !1527)
!1895 = !DILocation(line: 624, column: 50, scope: !1527)
!1896 = !DILocation(line: 625, column: 53, scope: !1527)
!1897 = !DIExpression(DW_OP_deref)
!1898 = !DILocation(line: 613, column: 27, scope: !1510)
!1899 = !DILocation(line: 623, column: 29, scope: !1527)
!1900 = !DILocation(line: 624, column: 36, scope: !1527)
!1901 = !DILocation(line: 624, column: 28, scope: !1527)
!1902 = !DILocation(line: 626, column: 25, scope: !1527)
!1903 = !DILocation(line: 636, column: 38, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1905, file: !100, discriminator: 1)
!1905 = distinct !DILexicalBlock(scope: !1534, file: !100, line: 634, column: 23)
!1906 = !DILocation(line: 636, column: 48, scope: !1904)
!1907 = !DILocation(line: 636, column: 51, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1905, file: !100, discriminator: 2)
!1909 = !DILocation(line: 636, column: 48, scope: !1908)
!1910 = !DILocation(line: 636, column: 25, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1905, file: !100, discriminator: 3)
!1912 = !DILocation(line: 637, column: 28, scope: !1905)
!1913 = !DILocation(line: 636, column: 34, scope: !1904)
!1914 = distinct !{!1914, !1915, !1912}
!1915 = !DILocation(line: 636, column: 25, scope: !1905)
!1916 = !DILocation(line: 650, column: 43, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1918, file: !100, discriminator: 1)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !100, line: 650, column: 29)
!1919 = distinct !DILexicalBlock(scope: !1531, file: !100, line: 650, column: 29)
!1920 = !DILocation(line: 647, column: 29, scope: !1532)
!1921 = !DILocation(line: 649, column: 36, scope: !1531)
!1922 = !DILocation(line: 651, column: 49, scope: !1918)
!1923 = !DILocation(line: 651, column: 39, scope: !1918)
!1924 = !DILocation(line: 651, column: 31, scope: !1918)
!1925 = !DILocation(line: 650, column: 53, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1918, file: !100, discriminator: 2)
!1927 = !DILocation(line: 650, column: 29, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1919, file: !100, discriminator: 1)
!1929 = distinct !{!1929, !1930, !1931}
!1930 = !DILocation(line: 650, column: 29, scope: !1919)
!1931 = !DILocation(line: 659, column: 33, scope: !1919)
!1932 = !DILocation(line: 666, column: 19, scope: !1510)
!1933 = !DILocation(line: 662, column: 41, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1533, file: !100, line: 662, column: 29)
!1935 = !DILocation(line: 662, column: 31, scope: !1934)
!1936 = !DILocation(line: 662, column: 29, scope: !1533)
!1937 = !DILocation(line: 664, column: 27, scope: !1533)
!1938 = !DILocation(line: 667, column: 26, scope: !1510)
!1939 = !DILocation(line: 667, column: 24, scope: !1510)
!1940 = !DILocation(line: 666, column: 19, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1527, file: !100, discriminator: 3)
!1942 = !DILocation(line: 668, column: 15, scope: !1511)
!1943 = !DILocation(line: 670, column: 40, scope: !1506)
!1944 = !DILocation(line: 672, column: 19, scope: !1539)
!1945 = !DILocation(line: 672, column: 45, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1539, file: !100, discriminator: 1)
!1947 = !DILocation(line: 672, column: 23, scope: !1539)
!1948 = !DILocation(line: 676, column: 33, scope: !1538)
!1949 = !DILocation(line: 676, column: 24, scope: !1538)
!1950 = !DILocation(line: 678, column: 17, scope: !1538)
!1951 = !DILocation(line: 680, column: 43, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !100, line: 680, column: 25)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !100, line: 679, column: 19)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !100, line: 678, column: 17)
!1955 = distinct !DILexicalBlock(scope: !1538, file: !100, line: 678, column: 17)
!1956 = !DILocation(line: 682, column: 25, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1958, file: !100, discriminator: 1)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !100, line: 682, column: 25)
!1959 = distinct !DILexicalBlock(scope: !1952, file: !100, line: 681, column: 23)
!1960 = !DILocation(line: 682, column: 25, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1962, file: !100, discriminator: 4)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !100, line: 682, column: 25)
!1963 = !DILocation(line: 682, column: 25, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1962, file: !100, discriminator: 3)
!1965 = !DILocation(line: 682, column: 25, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1967, file: !100, discriminator: 6)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !100, line: 682, column: 25)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !100, line: 682, column: 25)
!1969 = distinct !DILexicalBlock(scope: !1962, file: !100, line: 682, column: 25)
!1970 = !DILocation(line: 682, column: 25, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1968, file: !100, discriminator: 6)
!1972 = !DILocation(line: 682, column: 25, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1967, file: !100, discriminator: 7)
!1974 = !DILocation(line: 682, column: 25, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1968, file: !100, discriminator: 8)
!1976 = !DILocation(line: 682, column: 25, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1978, file: !100, discriminator: 11)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !100, line: 682, column: 25)
!1979 = distinct !DILexicalBlock(scope: !1969, file: !100, line: 682, column: 25)
!1980 = !DILocation(line: 682, column: 25, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1979, file: !100, discriminator: 11)
!1982 = !DILocation(line: 682, column: 25, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1978, file: !100, discriminator: 12)
!1984 = !DILocation(line: 682, column: 25, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1979, file: !100, discriminator: 13)
!1986 = !DILocation(line: 682, column: 25, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1988, file: !100, discriminator: 16)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !100, line: 682, column: 25)
!1989 = distinct !DILexicalBlock(scope: !1969, file: !100, line: 682, column: 25)
!1990 = !DILocation(line: 682, column: 25, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1989, file: !100, discriminator: 16)
!1992 = !DILocation(line: 682, column: 25, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1988, file: !100, discriminator: 17)
!1994 = !DILocation(line: 682, column: 25, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1989, file: !100, discriminator: 18)
!1996 = !DILocation(line: 682, column: 25, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1969, file: !100, discriminator: 20)
!1998 = !DILocation(line: 682, column: 25, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !2000, file: !100, discriminator: 22)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !100, line: 682, column: 25)
!2001 = distinct !DILexicalBlock(scope: !1958, file: !100, line: 682, column: 25)
!2002 = !DILocation(line: 682, column: 25, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !2001, file: !100, discriminator: 22)
!2004 = !DILocation(line: 682, column: 25, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2000, file: !100, discriminator: 23)
!2006 = !DILocation(line: 682, column: 25, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2001, file: !100, discriminator: 24)
!2008 = !DILocation(line: 683, column: 25, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2010, file: !100, discriminator: 1)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !100, line: 683, column: 25)
!2011 = distinct !DILexicalBlock(scope: !1959, file: !100, line: 683, column: 25)
!2012 = !DILocation(line: 683, column: 25, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2011, file: !100, discriminator: 1)
!2014 = !DILocation(line: 683, column: 25, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2010, file: !100, discriminator: 2)
!2016 = !DILocation(line: 683, column: 25, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2011, file: !100, discriminator: 3)
!2018 = !DILocation(line: 684, column: 25, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2020, file: !100, discriminator: 1)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !100, line: 684, column: 25)
!2021 = distinct !DILexicalBlock(scope: !1959, file: !100, line: 684, column: 25)
!2022 = !DILocation(line: 684, column: 25, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2021, file: !100, discriminator: 1)
!2024 = !DILocation(line: 684, column: 25, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2020, file: !100, discriminator: 2)
!2026 = !DILocation(line: 684, column: 25, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2021, file: !100, discriminator: 3)
!2028 = !DILocation(line: 685, column: 38, scope: !1959)
!2029 = !DILocation(line: 685, column: 33, scope: !1959)
!2030 = !DILocation(line: 686, column: 23, scope: !1959)
!2031 = !DILocation(line: 687, column: 30, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1952, file: !100, line: 687, column: 30)
!2033 = !DILocation(line: 687, column: 30, scope: !1952)
!2034 = !DILocation(line: 689, column: 25, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2036, file: !100, discriminator: 1)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !100, line: 689, column: 25)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !100, line: 689, column: 25)
!2038 = distinct !DILexicalBlock(scope: !2032, file: !100, line: 688, column: 23)
!2039 = !DILocation(line: 689, column: 25, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2037, file: !100, discriminator: 1)
!2041 = !DILocation(line: 689, column: 25, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2036, file: !100, discriminator: 2)
!2043 = !DILocation(line: 689, column: 25, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2037, file: !100, discriminator: 3)
!2045 = !DILocation(line: 691, column: 23, scope: !2038)
!2046 = !DILocation(line: 692, column: 35, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1953, file: !100, line: 692, column: 25)
!2048 = !DILocation(line: 692, column: 30, scope: !2047)
!2049 = !DILocation(line: 692, column: 25, scope: !1953)
!2050 = !DILocation(line: 694, column: 21, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2052, file: !100, discriminator: 1)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !100, line: 694, column: 21)
!2053 = distinct !DILexicalBlock(scope: !1953, file: !100, line: 694, column: 21)
!2054 = !DILocation(line: 694, column: 21, scope: !2055)
!2055 = !DILexicalBlockFile(scope: !2052, file: !100, discriminator: 2)
!2056 = !DILocation(line: 694, column: 21, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !2058, file: !100, discriminator: 4)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !100, line: 694, column: 21)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !100, line: 694, column: 21)
!2060 = distinct !DILexicalBlock(scope: !2052, file: !100, line: 694, column: 21)
!2061 = !DILocation(line: 694, column: 21, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2059, file: !100, discriminator: 4)
!2063 = !DILocation(line: 694, column: 21, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2058, file: !100, discriminator: 5)
!2065 = !DILocation(line: 694, column: 21, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2059, file: !100, discriminator: 6)
!2067 = !DILocation(line: 694, column: 21, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2069, file: !100, discriminator: 9)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !100, line: 694, column: 21)
!2070 = distinct !DILexicalBlock(scope: !2060, file: !100, line: 694, column: 21)
!2071 = !DILocation(line: 694, column: 21, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2070, file: !100, discriminator: 9)
!2073 = !DILocation(line: 694, column: 21, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2069, file: !100, discriminator: 10)
!2075 = !DILocation(line: 694, column: 21, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !2070, file: !100, discriminator: 11)
!2077 = !DILocation(line: 694, column: 21, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2060, file: !100, discriminator: 13)
!2079 = !DILocation(line: 695, column: 21, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2081, file: !100, discriminator: 1)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !100, line: 695, column: 21)
!2082 = distinct !DILexicalBlock(scope: !1953, file: !100, line: 695, column: 21)
!2083 = !DILocation(line: 695, column: 21, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2082, file: !100, discriminator: 1)
!2085 = !DILocation(line: 695, column: 21, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2081, file: !100, discriminator: 2)
!2087 = !DILocation(line: 695, column: 21, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2082, file: !100, discriminator: 3)
!2089 = !DILocation(line: 696, column: 25, scope: !1953)
!2090 = !DILocation(line: 678, column: 17, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !1954, file: !100, discriminator: 1)
!2092 = distinct !{!2092, !2093, !2094}
!2093 = !DILocation(line: 678, column: 17, scope: !1955)
!2094 = !DILocation(line: 697, column: 19, scope: !1955)
!2095 = !DILocation(line: 704, column: 34, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1498, file: !100, line: 704, column: 11)
!2097 = !DILocation(line: 706, column: 14, scope: !2096)
!2098 = !DILocation(line: 707, column: 14, scope: !2096)
!2099 = !DILocation(line: 707, column: 35, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2096, file: !100, discriminator: 1)
!2101 = !DILocation(line: 707, column: 17, scope: !2100)
!2102 = !DILocation(line: 707, column: 53, scope: !2100)
!2103 = !DILocation(line: 707, column: 47, scope: !2100)
!2104 = !DILocation(line: 707, column: 65, scope: !2100)
!2105 = !DILocation(line: 708, column: 15, scope: !2100)
!2106 = !DILocation(line: 708, column: 11, scope: !2096)
!2107 = !DILocation(line: 704, column: 11, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !1498, file: !100, discriminator: 2)
!2109 = !DILocation(line: 712, column: 7, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2111, file: !100, discriminator: 1)
!2111 = distinct !DILexicalBlock(scope: !1498, file: !100, line: 712, column: 7)
!2112 = !DILocation(line: 712, column: 7, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2114, file: !100, discriminator: 4)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !100, line: 712, column: 7)
!2115 = !DILocation(line: 712, column: 7, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2114, file: !100, discriminator: 3)
!2117 = !DILocation(line: 712, column: 7, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2119, file: !100, discriminator: 6)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !100, line: 712, column: 7)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !100, line: 712, column: 7)
!2121 = distinct !DILexicalBlock(scope: !2114, file: !100, line: 712, column: 7)
!2122 = !DILocation(line: 712, column: 7, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2120, file: !100, discriminator: 6)
!2124 = !DILocation(line: 712, column: 7, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2119, file: !100, discriminator: 7)
!2126 = !DILocation(line: 712, column: 7, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2120, file: !100, discriminator: 8)
!2128 = !DILocation(line: 712, column: 7, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2130, file: !100, discriminator: 11)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !100, line: 712, column: 7)
!2131 = distinct !DILexicalBlock(scope: !2121, file: !100, line: 712, column: 7)
!2132 = !DILocation(line: 712, column: 7, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2131, file: !100, discriminator: 11)
!2134 = !DILocation(line: 712, column: 7, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2130, file: !100, discriminator: 12)
!2136 = !DILocation(line: 712, column: 7, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2131, file: !100, discriminator: 13)
!2138 = !DILocation(line: 712, column: 7, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2140, file: !100, discriminator: 16)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !100, line: 712, column: 7)
!2141 = distinct !DILexicalBlock(scope: !2121, file: !100, line: 712, column: 7)
!2142 = !DILocation(line: 712, column: 7, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2141, file: !100, discriminator: 16)
!2144 = !DILocation(line: 712, column: 7, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2140, file: !100, discriminator: 17)
!2146 = !DILocation(line: 712, column: 7, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2141, file: !100, discriminator: 18)
!2148 = !DILocation(line: 712, column: 7, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2121, file: !100, discriminator: 20)
!2150 = !DILocation(line: 712, column: 7, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2152, file: !100, discriminator: 22)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !100, line: 712, column: 7)
!2153 = distinct !DILexicalBlock(scope: !2111, file: !100, line: 712, column: 7)
!2154 = !DILocation(line: 712, column: 7, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2153, file: !100, discriminator: 22)
!2156 = !DILocation(line: 712, column: 7, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2152, file: !100, discriminator: 23)
!2158 = !DILocation(line: 712, column: 7, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2153, file: !100, discriminator: 24)
!2160 = !DILocation(line: 715, column: 7, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2162, file: !100, discriminator: 1)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !100, line: 715, column: 7)
!2163 = distinct !DILexicalBlock(scope: !1498, file: !100, line: 715, column: 7)
!2164 = !DILocation(line: 715, column: 7, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2162, file: !100, discriminator: 2)
!2166 = !DILocation(line: 715, column: 7, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2168, file: !100, discriminator: 4)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !100, line: 715, column: 7)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !100, line: 715, column: 7)
!2170 = distinct !DILexicalBlock(scope: !2162, file: !100, line: 715, column: 7)
!2171 = !DILocation(line: 715, column: 7, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2169, file: !100, discriminator: 4)
!2173 = !DILocation(line: 715, column: 7, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2168, file: !100, discriminator: 5)
!2175 = !DILocation(line: 715, column: 7, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2169, file: !100, discriminator: 6)
!2177 = !DILocation(line: 715, column: 7, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2179, file: !100, discriminator: 9)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !100, line: 715, column: 7)
!2180 = distinct !DILexicalBlock(scope: !2170, file: !100, line: 715, column: 7)
!2181 = !DILocation(line: 715, column: 7, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2180, file: !100, discriminator: 9)
!2183 = !DILocation(line: 715, column: 7, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2179, file: !100, discriminator: 10)
!2185 = !DILocation(line: 715, column: 7, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2180, file: !100, discriminator: 11)
!2187 = !DILocation(line: 715, column: 7, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2170, file: !100, discriminator: 13)
!2189 = !DILocation(line: 716, column: 7, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2191, file: !100, discriminator: 1)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !100, line: 716, column: 7)
!2192 = distinct !DILexicalBlock(scope: !1498, file: !100, line: 716, column: 7)
!2193 = !DILocation(line: 716, column: 7, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2192, file: !100, discriminator: 1)
!2195 = !DILocation(line: 716, column: 7, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2191, file: !100, discriminator: 2)
!2197 = !DILocation(line: 716, column: 7, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2192, file: !100, discriminator: 3)
!2199 = !DILocation(line: 718, column: 13, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1498, file: !100, line: 718, column: 11)
!2201 = !DILocation(line: 718, column: 11, scope: !1498)
!2202 = !DILocation(line: 720, column: 5, scope: !1499)
!2203 = !DILocation(line: 392, column: 75, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !1499, file: !100, discriminator: 5)
!2205 = !DILocation(line: 392, column: 3, scope: !2204)
!2206 = distinct !{!2206, !2207, !2208}
!2207 = !DILocation(line: 392, column: 3, scope: !1500)
!2208 = !DILocation(line: 720, column: 5, scope: !1500)
!2209 = !DILocation(line: 722, column: 11, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !1471, file: !100, line: 722, column: 7)
!2211 = !DILocation(line: 722, column: 16, scope: !2210)
!2212 = !DILocation(line: 730, column: 51, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !1471, file: !100, line: 730, column: 7)
!2214 = !DILocation(line: 731, column: 10, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2213, file: !100, discriminator: 1)
!2216 = !DILocation(line: 733, column: 11, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !100, line: 733, column: 11)
!2218 = distinct !DILexicalBlock(scope: !2213, file: !100, line: 732, column: 5)
!2219 = !DILocation(line: 733, column: 11, scope: !2218)
!2220 = !DILocation(line: 734, column: 16, scope: !2217)
!2221 = !DILocation(line: 734, column: 9, scope: !2217)
!2222 = !DILocation(line: 738, column: 18, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2217, file: !100, line: 738, column: 16)
!2224 = !DILocation(line: 738, column: 32, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2223, file: !100, discriminator: 1)
!2226 = !DILocation(line: 738, column: 29, scope: !2223)
!2227 = !DILocation(line: 747, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !1471, file: !100, line: 747, column: 7)
!2229 = !DILocation(line: 747, column: 20, scope: !2228)
!2230 = !DILocation(line: 748, column: 12, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2232, file: !100, discriminator: 1)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !100, line: 748, column: 5)
!2233 = distinct !DILexicalBlock(scope: !2228, file: !100, line: 748, column: 5)
!2234 = !DILocation(line: 748, column: 5, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2233, file: !100, discriminator: 1)
!2236 = !DILocation(line: 749, column: 7, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2238, file: !100, discriminator: 1)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !100, line: 749, column: 7)
!2239 = distinct !DILexicalBlock(scope: !2232, file: !100, line: 749, column: 7)
!2240 = !DILocation(line: 749, column: 7, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2239, file: !100, discriminator: 1)
!2242 = !DILocation(line: 749, column: 7, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2238, file: !100, discriminator: 2)
!2244 = !DILocation(line: 749, column: 7, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2239, file: !100, discriminator: 3)
!2246 = !DILocation(line: 748, column: 39, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2232, file: !100, discriminator: 2)
!2248 = distinct !{!2248, !2249, !2250}
!2249 = !DILocation(line: 748, column: 5, scope: !2233)
!2250 = !DILocation(line: 749, column: 7, scope: !2233)
!2251 = !DILocation(line: 751, column: 11, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !1471, file: !100, line: 751, column: 7)
!2253 = !DILocation(line: 751, column: 7, scope: !1471)
!2254 = !DILocation(line: 752, column: 5, scope: !2252)
!2255 = !DILocation(line: 752, column: 17, scope: !2252)
!2256 = !DILocation(line: 758, column: 21, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !1471, file: !100, line: 758, column: 7)
!2258 = !DILocation(line: 758, column: 54, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2257, file: !100, discriminator: 1)
!2260 = !DILocation(line: 758, column: 51, scope: !2257)
!2261 = !DILocation(line: 762, column: 42, scope: !1471)
!2262 = !DILocation(line: 760, column: 10, scope: !1471)
!2263 = !DILocation(line: 760, column: 3, scope: !1471)
!2264 = !DILocation(line: 764, column: 1, scope: !1471)
!2265 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !2266, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!6, !6, !58}
!2268 = !{!2269, !2270, !2271, !2272}
!2269 = !DILocalVariable(name: "msgid", arg: 1, scope: !2265, file: !100, line: 199, type: !6)
!2270 = !DILocalVariable(name: "s", arg: 2, scope: !2265, file: !100, line: 199, type: !58)
!2271 = !DILocalVariable(name: "translation", scope: !2265, file: !100, line: 201, type: !6)
!2272 = !DILocalVariable(name: "locale_code", scope: !2265, file: !100, line: 202, type: !6)
!2273 = !DILocation(line: 199, column: 28, scope: !2265)
!2274 = !DILocation(line: 199, column: 54, scope: !2265)
!2275 = !DILocation(line: 201, column: 29, scope: !2265)
!2276 = !DILocation(line: 201, column: 15, scope: !2265)
!2277 = !DILocation(line: 204, column: 19, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2265, file: !100, line: 204, column: 7)
!2279 = !DILocation(line: 204, column: 7, scope: !2265)
!2280 = !DILocation(line: 225, column: 17, scope: !2265)
!2281 = !DILocation(line: 202, column: 15, scope: !2265)
!2282 = !DILocalVariable(name: "s2", arg: 2, scope: !2283, file: !2284, line: 160, type: !6)
!2283 = distinct !DISubprogram(name: "strcaseeq0", scope: !2284, file: !2284, line: 160, type: !2285, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2287)
!2284 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2287 = !{!2288, !2282, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297}
!2288 = !DILocalVariable(name: "s1", arg: 1, scope: !2283, file: !2284, line: 160, type: !6)
!2289 = !DILocalVariable(name: "s20", arg: 3, scope: !2283, file: !2284, line: 160, type: !8)
!2290 = !DILocalVariable(name: "s21", arg: 4, scope: !2283, file: !2284, line: 160, type: !8)
!2291 = !DILocalVariable(name: "s22", arg: 5, scope: !2283, file: !2284, line: 160, type: !8)
!2292 = !DILocalVariable(name: "s23", arg: 6, scope: !2283, file: !2284, line: 160, type: !8)
!2293 = !DILocalVariable(name: "s24", arg: 7, scope: !2283, file: !2284, line: 160, type: !8)
!2294 = !DILocalVariable(name: "s25", arg: 8, scope: !2283, file: !2284, line: 160, type: !8)
!2295 = !DILocalVariable(name: "s26", arg: 9, scope: !2283, file: !2284, line: 160, type: !8)
!2296 = !DILocalVariable(name: "s27", arg: 10, scope: !2283, file: !2284, line: 160, type: !8)
!2297 = !DILocalVariable(name: "s28", arg: 11, scope: !2283, file: !2284, line: 160, type: !8)
!2298 = !DILocation(line: 160, column: 41, scope: !2283, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 226, column: 7, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2265, file: !100, line: 226, column: 7)
!2301 = !DILocation(line: 160, column: 120, scope: !2283, inlinedAt: !2299)
!2302 = !DILocation(line: 160, column: 130, scope: !2283, inlinedAt: !2299)
!2303 = !DILocation(line: 162, column: 7, scope: !2304, inlinedAt: !2299)
!2304 = !DILexicalBlockFile(scope: !2305, file: !2284, discriminator: 1)
!2305 = distinct !DILexicalBlock(scope: !2283, file: !2284, line: 162, column: 7)
!2306 = !DILocalVariable(name: "s2", arg: 2, scope: !2307, file: !2284, line: 146, type: !6)
!2307 = distinct !DISubprogram(name: "strcaseeq1", scope: !2284, file: !2284, line: 146, type: !2308, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2310 = !{!2311, !2306, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319}
!2311 = !DILocalVariable(name: "s1", arg: 1, scope: !2307, file: !2284, line: 146, type: !6)
!2312 = !DILocalVariable(name: "s21", arg: 3, scope: !2307, file: !2284, line: 146, type: !8)
!2313 = !DILocalVariable(name: "s22", arg: 4, scope: !2307, file: !2284, line: 146, type: !8)
!2314 = !DILocalVariable(name: "s23", arg: 5, scope: !2307, file: !2284, line: 146, type: !8)
!2315 = !DILocalVariable(name: "s24", arg: 6, scope: !2307, file: !2284, line: 146, type: !8)
!2316 = !DILocalVariable(name: "s25", arg: 7, scope: !2307, file: !2284, line: 146, type: !8)
!2317 = !DILocalVariable(name: "s26", arg: 8, scope: !2307, file: !2284, line: 146, type: !8)
!2318 = !DILocalVariable(name: "s27", arg: 9, scope: !2307, file: !2284, line: 146, type: !8)
!2319 = !DILocalVariable(name: "s28", arg: 10, scope: !2307, file: !2284, line: 146, type: !8)
!2320 = !DILocation(line: 146, column: 41, scope: !2307, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 167, column: 16, scope: !2322, inlinedAt: !2299)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !2284, line: 164, column: 11)
!2323 = distinct !DILexicalBlock(scope: !2305, file: !2284, line: 163, column: 5)
!2324 = !DILocation(line: 146, column: 110, scope: !2307, inlinedAt: !2321)
!2325 = !DILocation(line: 146, column: 120, scope: !2307, inlinedAt: !2321)
!2326 = !DILocation(line: 148, column: 7, scope: !2327, inlinedAt: !2321)
!2327 = !DILexicalBlockFile(scope: !2328, file: !2284, discriminator: 1)
!2328 = distinct !DILexicalBlock(scope: !2307, file: !2284, line: 148, column: 7)
!2329 = !DILocalVariable(name: "s2", arg: 2, scope: !2330, file: !2284, line: 132, type: !6)
!2330 = distinct !DISubprogram(name: "strcaseeq2", scope: !2284, file: !2284, line: 132, type: !2331, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2333)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2333 = !{!2334, !2329, !2335, !2336, !2337, !2338, !2339, !2340, !2341}
!2334 = !DILocalVariable(name: "s1", arg: 1, scope: !2330, file: !2284, line: 132, type: !6)
!2335 = !DILocalVariable(name: "s22", arg: 3, scope: !2330, file: !2284, line: 132, type: !8)
!2336 = !DILocalVariable(name: "s23", arg: 4, scope: !2330, file: !2284, line: 132, type: !8)
!2337 = !DILocalVariable(name: "s24", arg: 5, scope: !2330, file: !2284, line: 132, type: !8)
!2338 = !DILocalVariable(name: "s25", arg: 6, scope: !2330, file: !2284, line: 132, type: !8)
!2339 = !DILocalVariable(name: "s26", arg: 7, scope: !2330, file: !2284, line: 132, type: !8)
!2340 = !DILocalVariable(name: "s27", arg: 8, scope: !2330, file: !2284, line: 132, type: !8)
!2341 = !DILocalVariable(name: "s28", arg: 9, scope: !2330, file: !2284, line: 132, type: !8)
!2342 = !DILocation(line: 132, column: 41, scope: !2330, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 153, column: 16, scope: !2344, inlinedAt: !2321)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !2284, line: 150, column: 11)
!2345 = distinct !DILexicalBlock(scope: !2328, file: !2284, line: 149, column: 5)
!2346 = !DILocation(line: 132, column: 100, scope: !2330, inlinedAt: !2343)
!2347 = !DILocation(line: 132, column: 110, scope: !2330, inlinedAt: !2343)
!2348 = !DILocation(line: 134, column: 7, scope: !2349, inlinedAt: !2343)
!2349 = !DILexicalBlockFile(scope: !2350, file: !2284, discriminator: 1)
!2350 = distinct !DILexicalBlock(scope: !2330, file: !2284, line: 134, column: 7)
!2351 = !DILocalVariable(name: "s2", arg: 2, scope: !2352, file: !2284, line: 118, type: !6)
!2352 = distinct !DISubprogram(name: "strcaseeq3", scope: !2284, file: !2284, line: 118, type: !2353, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!2355 = !{!2356, !2351, !2357, !2358, !2359, !2360, !2361, !2362}
!2356 = !DILocalVariable(name: "s1", arg: 1, scope: !2352, file: !2284, line: 118, type: !6)
!2357 = !DILocalVariable(name: "s23", arg: 3, scope: !2352, file: !2284, line: 118, type: !8)
!2358 = !DILocalVariable(name: "s24", arg: 4, scope: !2352, file: !2284, line: 118, type: !8)
!2359 = !DILocalVariable(name: "s25", arg: 5, scope: !2352, file: !2284, line: 118, type: !8)
!2360 = !DILocalVariable(name: "s26", arg: 6, scope: !2352, file: !2284, line: 118, type: !8)
!2361 = !DILocalVariable(name: "s27", arg: 7, scope: !2352, file: !2284, line: 118, type: !8)
!2362 = !DILocalVariable(name: "s28", arg: 8, scope: !2352, file: !2284, line: 118, type: !8)
!2363 = !DILocation(line: 118, column: 41, scope: !2352, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 139, column: 16, scope: !2365, inlinedAt: !2343)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !2284, line: 136, column: 11)
!2366 = distinct !DILexicalBlock(scope: !2350, file: !2284, line: 135, column: 5)
!2367 = !DILocation(line: 118, column: 90, scope: !2352, inlinedAt: !2364)
!2368 = !DILocation(line: 118, column: 100, scope: !2352, inlinedAt: !2364)
!2369 = !DILocation(line: 120, column: 7, scope: !2370, inlinedAt: !2364)
!2370 = !DILexicalBlockFile(scope: !2371, file: !2284, discriminator: 2)
!2371 = distinct !DILexicalBlock(scope: !2352, file: !2284, line: 120, column: 7)
!2372 = !DILocation(line: 120, column: 7, scope: !2373, inlinedAt: !2364)
!2373 = !DILexicalBlockFile(scope: !2352, file: !2284, discriminator: 2)
!2374 = !DILocalVariable(name: "s2", arg: 2, scope: !2375, file: !2284, line: 104, type: !6)
!2375 = distinct !DISubprogram(name: "strcaseeq4", scope: !2284, file: !2284, line: 104, type: !2376, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!2378 = !{!2379, !2374, !2380, !2381, !2382, !2383, !2384}
!2379 = !DILocalVariable(name: "s1", arg: 1, scope: !2375, file: !2284, line: 104, type: !6)
!2380 = !DILocalVariable(name: "s24", arg: 3, scope: !2375, file: !2284, line: 104, type: !8)
!2381 = !DILocalVariable(name: "s25", arg: 4, scope: !2375, file: !2284, line: 104, type: !8)
!2382 = !DILocalVariable(name: "s26", arg: 5, scope: !2375, file: !2284, line: 104, type: !8)
!2383 = !DILocalVariable(name: "s27", arg: 6, scope: !2375, file: !2284, line: 104, type: !8)
!2384 = !DILocalVariable(name: "s28", arg: 7, scope: !2375, file: !2284, line: 104, type: !8)
!2385 = !DILocation(line: 104, column: 41, scope: !2375, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 125, column: 16, scope: !2387, inlinedAt: !2364)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !2284, line: 122, column: 11)
!2388 = distinct !DILexicalBlock(scope: !2371, file: !2284, line: 121, column: 5)
!2389 = !DILocation(line: 104, column: 80, scope: !2375, inlinedAt: !2386)
!2390 = !DILocation(line: 104, column: 90, scope: !2375, inlinedAt: !2386)
!2391 = !DILocation(line: 106, column: 7, scope: !2392, inlinedAt: !2386)
!2392 = !DILexicalBlockFile(scope: !2393, file: !2284, discriminator: 2)
!2393 = distinct !DILexicalBlock(scope: !2375, file: !2284, line: 106, column: 7)
!2394 = !DILocation(line: 106, column: 7, scope: !2395, inlinedAt: !2386)
!2395 = !DILexicalBlockFile(scope: !2375, file: !2284, discriminator: 2)
!2396 = !DILocalVariable(name: "s2", arg: 2, scope: !2397, file: !2284, line: 90, type: !6)
!2397 = distinct !DISubprogram(name: "strcaseeq5", scope: !2284, file: !2284, line: 90, type: !2398, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!25, !6, !6, !8, !8, !8, !8}
!2400 = !{!2401, !2396, !2402, !2403, !2404, !2405}
!2401 = !DILocalVariable(name: "s1", arg: 1, scope: !2397, file: !2284, line: 90, type: !6)
!2402 = !DILocalVariable(name: "s25", arg: 3, scope: !2397, file: !2284, line: 90, type: !8)
!2403 = !DILocalVariable(name: "s26", arg: 4, scope: !2397, file: !2284, line: 90, type: !8)
!2404 = !DILocalVariable(name: "s27", arg: 5, scope: !2397, file: !2284, line: 90, type: !8)
!2405 = !DILocalVariable(name: "s28", arg: 6, scope: !2397, file: !2284, line: 90, type: !8)
!2406 = !DILocation(line: 90, column: 41, scope: !2397, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 111, column: 16, scope: !2408, inlinedAt: !2386)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !2284, line: 108, column: 11)
!2409 = distinct !DILexicalBlock(scope: !2393, file: !2284, line: 107, column: 5)
!2410 = !DILocation(line: 90, column: 70, scope: !2397, inlinedAt: !2407)
!2411 = !DILocation(line: 90, column: 80, scope: !2397, inlinedAt: !2407)
!2412 = !DILocation(line: 92, column: 7, scope: !2413, inlinedAt: !2407)
!2413 = !DILexicalBlockFile(scope: !2414, file: !2284, discriminator: 2)
!2414 = distinct !DILexicalBlock(scope: !2397, file: !2284, line: 92, column: 7)
!2415 = !DILocation(line: 92, column: 7, scope: !2416, inlinedAt: !2407)
!2416 = !DILexicalBlockFile(scope: !2397, file: !2284, discriminator: 2)
!2417 = !DILocation(line: 227, column: 12, scope: !2300)
!2418 = !DILocation(line: 227, column: 21, scope: !2300)
!2419 = !DILocation(line: 227, column: 5, scope: !2300)
!2420 = !DILocation(line: 146, column: 41, scope: !2307, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 167, column: 16, scope: !2322, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 228, column: 7, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2265, file: !100, line: 228, column: 7)
!2424 = !DILocation(line: 146, column: 110, scope: !2307, inlinedAt: !2421)
!2425 = !DILocation(line: 146, column: 120, scope: !2307, inlinedAt: !2421)
!2426 = !DILocation(line: 148, column: 7, scope: !2327, inlinedAt: !2421)
!2427 = !DILocation(line: 132, column: 41, scope: !2330, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 153, column: 16, scope: !2344, inlinedAt: !2421)
!2429 = !DILocation(line: 132, column: 100, scope: !2330, inlinedAt: !2428)
!2430 = !DILocation(line: 132, column: 110, scope: !2330, inlinedAt: !2428)
!2431 = !DILocation(line: 134, column: 7, scope: !2432, inlinedAt: !2428)
!2432 = !DILexicalBlockFile(scope: !2350, file: !2284, discriminator: 2)
!2433 = !DILocation(line: 134, column: 7, scope: !2434, inlinedAt: !2428)
!2434 = !DILexicalBlockFile(scope: !2330, file: !2284, discriminator: 2)
!2435 = !DILocation(line: 118, column: 41, scope: !2352, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 139, column: 16, scope: !2365, inlinedAt: !2428)
!2437 = !DILocation(line: 118, column: 90, scope: !2352, inlinedAt: !2436)
!2438 = !DILocation(line: 118, column: 100, scope: !2352, inlinedAt: !2436)
!2439 = !DILocation(line: 120, column: 7, scope: !2370, inlinedAt: !2436)
!2440 = !DILocation(line: 120, column: 7, scope: !2373, inlinedAt: !2436)
!2441 = !DILocation(line: 104, column: 41, scope: !2375, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 125, column: 16, scope: !2387, inlinedAt: !2436)
!2443 = !DILocation(line: 104, column: 80, scope: !2375, inlinedAt: !2442)
!2444 = !DILocation(line: 104, column: 90, scope: !2375, inlinedAt: !2442)
!2445 = !DILocation(line: 106, column: 7, scope: !2392, inlinedAt: !2442)
!2446 = !DILocation(line: 106, column: 7, scope: !2395, inlinedAt: !2442)
!2447 = !DILocation(line: 90, column: 41, scope: !2397, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 111, column: 16, scope: !2408, inlinedAt: !2442)
!2449 = !DILocation(line: 90, column: 70, scope: !2397, inlinedAt: !2448)
!2450 = !DILocation(line: 90, column: 80, scope: !2397, inlinedAt: !2448)
!2451 = !DILocation(line: 92, column: 7, scope: !2413, inlinedAt: !2448)
!2452 = !DILocation(line: 92, column: 7, scope: !2416, inlinedAt: !2448)
!2453 = !DILocalVariable(name: "s2", arg: 2, scope: !2454, file: !2284, line: 76, type: !6)
!2454 = distinct !DISubprogram(name: "strcaseeq6", scope: !2284, file: !2284, line: 76, type: !2455, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!25, !6, !6, !8, !8, !8}
!2457 = !{!2458, !2453, !2459, !2460, !2461}
!2458 = !DILocalVariable(name: "s1", arg: 1, scope: !2454, file: !2284, line: 76, type: !6)
!2459 = !DILocalVariable(name: "s26", arg: 3, scope: !2454, file: !2284, line: 76, type: !8)
!2460 = !DILocalVariable(name: "s27", arg: 4, scope: !2454, file: !2284, line: 76, type: !8)
!2461 = !DILocalVariable(name: "s28", arg: 5, scope: !2454, file: !2284, line: 76, type: !8)
!2462 = !DILocation(line: 76, column: 41, scope: !2454, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 97, column: 16, scope: !2464, inlinedAt: !2448)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !2284, line: 94, column: 11)
!2465 = distinct !DILexicalBlock(scope: !2414, file: !2284, line: 93, column: 5)
!2466 = !DILocation(line: 76, column: 60, scope: !2454, inlinedAt: !2463)
!2467 = !DILocation(line: 76, column: 70, scope: !2454, inlinedAt: !2463)
!2468 = !DILocation(line: 78, column: 7, scope: !2469, inlinedAt: !2463)
!2469 = !DILexicalBlockFile(scope: !2470, file: !2284, discriminator: 2)
!2470 = distinct !DILexicalBlock(scope: !2454, file: !2284, line: 78, column: 7)
!2471 = !DILocation(line: 78, column: 7, scope: !2472, inlinedAt: !2463)
!2472 = !DILexicalBlockFile(scope: !2454, file: !2284, discriminator: 2)
!2473 = !DILocalVariable(name: "s2", arg: 2, scope: !2474, file: !2284, line: 62, type: !6)
!2474 = distinct !DISubprogram(name: "strcaseeq7", scope: !2284, file: !2284, line: 62, type: !2475, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!25, !6, !6, !8, !8}
!2477 = !{!2478, !2473, !2479, !2480}
!2478 = !DILocalVariable(name: "s1", arg: 1, scope: !2474, file: !2284, line: 62, type: !6)
!2479 = !DILocalVariable(name: "s27", arg: 3, scope: !2474, file: !2284, line: 62, type: !8)
!2480 = !DILocalVariable(name: "s28", arg: 4, scope: !2474, file: !2284, line: 62, type: !8)
!2481 = !DILocation(line: 62, column: 41, scope: !2474, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 83, column: 16, scope: !2483, inlinedAt: !2463)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !2284, line: 80, column: 11)
!2484 = distinct !DILexicalBlock(scope: !2470, file: !2284, line: 79, column: 5)
!2485 = !DILocation(line: 62, column: 50, scope: !2474, inlinedAt: !2482)
!2486 = !DILocation(line: 62, column: 60, scope: !2474, inlinedAt: !2482)
!2487 = !DILocation(line: 64, column: 7, scope: !2488, inlinedAt: !2482)
!2488 = !DILexicalBlockFile(scope: !2489, file: !2284, discriminator: 2)
!2489 = distinct !DILexicalBlock(scope: !2474, file: !2284, line: 64, column: 7)
!2490 = !DILocation(line: 228, column: 7, scope: !2265)
!2491 = !DILocation(line: 229, column: 12, scope: !2423)
!2492 = !DILocation(line: 229, column: 21, scope: !2423)
!2493 = !DILocation(line: 229, column: 5, scope: !2423)
!2494 = !DILocation(line: 231, column: 13, scope: !2265)
!2495 = !DILocation(line: 231, column: 11, scope: !2265)
!2496 = !DILocation(line: 231, column: 3, scope: !2265)
!2497 = !DILocation(line: 232, column: 1, scope: !2265)
!2498 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !2499, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!50, !6, !94, !1339}
!2501 = !{!2502, !2503, !2504}
!2502 = !DILocalVariable(name: "arg", arg: 1, scope: !2498, file: !100, line: 791, type: !6)
!2503 = !DILocalVariable(name: "argsize", arg: 2, scope: !2498, file: !100, line: 791, type: !94)
!2504 = !DILocalVariable(name: "o", arg: 3, scope: !2498, file: !100, line: 792, type: !1339)
!2505 = !DILocation(line: 791, column: 29, scope: !2498)
!2506 = !DILocation(line: 791, column: 41, scope: !2498)
!2507 = !DILocation(line: 792, column: 47, scope: !2498)
!2508 = !DILocalVariable(name: "arg", arg: 1, scope: !2509, file: !100, line: 804, type: !6)
!2509 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !2510, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!50, !6, !94, !614, !1339}
!2512 = !{!2508, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520}
!2513 = !DILocalVariable(name: "argsize", arg: 2, scope: !2509, file: !100, line: 804, type: !94)
!2514 = !DILocalVariable(name: "size", arg: 3, scope: !2509, file: !100, line: 804, type: !614)
!2515 = !DILocalVariable(name: "o", arg: 4, scope: !2509, file: !100, line: 805, type: !1339)
!2516 = !DILocalVariable(name: "p", scope: !2509, file: !100, line: 807, type: !1339)
!2517 = !DILocalVariable(name: "e", scope: !2509, file: !100, line: 808, type: !25)
!2518 = !DILocalVariable(name: "flags", scope: !2509, file: !100, line: 810, type: !25)
!2519 = !DILocalVariable(name: "bufsize", scope: !2509, file: !100, line: 811, type: !94)
!2520 = !DILocalVariable(name: "buf", scope: !2509, file: !100, line: 815, type: !50)
!2521 = !DILocation(line: 804, column: 33, scope: !2509, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 794, column: 10, scope: !2498)
!2523 = !DILocation(line: 804, column: 45, scope: !2509, inlinedAt: !2522)
!2524 = !DILocation(line: 804, column: 62, scope: !2509, inlinedAt: !2522)
!2525 = !DILocation(line: 805, column: 51, scope: !2509, inlinedAt: !2522)
!2526 = !DILocation(line: 807, column: 37, scope: !2509, inlinedAt: !2522)
!2527 = !DILocation(line: 807, column: 33, scope: !2509, inlinedAt: !2522)
!2528 = !DILocation(line: 808, column: 11, scope: !2509, inlinedAt: !2522)
!2529 = !DILocation(line: 808, column: 7, scope: !2509, inlinedAt: !2522)
!2530 = !DILocation(line: 810, column: 18, scope: !2509, inlinedAt: !2522)
!2531 = !DILocation(line: 810, column: 24, scope: !2509, inlinedAt: !2522)
!2532 = !DILocation(line: 810, column: 7, scope: !2509, inlinedAt: !2522)
!2533 = !DILocation(line: 811, column: 69, scope: !2509, inlinedAt: !2522)
!2534 = !DILocation(line: 812, column: 53, scope: !2509, inlinedAt: !2522)
!2535 = !DILocation(line: 813, column: 49, scope: !2509, inlinedAt: !2522)
!2536 = !DILocation(line: 814, column: 49, scope: !2509, inlinedAt: !2522)
!2537 = !DILocation(line: 811, column: 20, scope: !2509, inlinedAt: !2522)
!2538 = !DILocation(line: 814, column: 62, scope: !2509, inlinedAt: !2522)
!2539 = !DILocation(line: 811, column: 10, scope: !2509, inlinedAt: !2522)
!2540 = !DILocalVariable(name: "n", arg: 1, scope: !2541, file: !610, line: 220, type: !94)
!2541 = distinct !DISubprogram(name: "xcharalloc", scope: !610, file: !610, line: 220, type: !2542, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!50, !94}
!2544 = !{!2540}
!2545 = !DILocation(line: 220, column: 20, scope: !2541, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 815, column: 15, scope: !2509, inlinedAt: !2522)
!2547 = !DILocation(line: 222, column: 10, scope: !2541, inlinedAt: !2546)
!2548 = !DILocation(line: 815, column: 9, scope: !2509, inlinedAt: !2522)
!2549 = !DILocation(line: 816, column: 60, scope: !2509, inlinedAt: !2522)
!2550 = !DILocation(line: 818, column: 32, scope: !2509, inlinedAt: !2522)
!2551 = !DILocation(line: 818, column: 47, scope: !2509, inlinedAt: !2522)
!2552 = !DILocation(line: 816, column: 3, scope: !2509, inlinedAt: !2522)
!2553 = !DILocation(line: 819, column: 9, scope: !2509, inlinedAt: !2522)
!2554 = !DILocation(line: 794, column: 3, scope: !2498)
!2555 = !DILocation(line: 804, column: 33, scope: !2509)
!2556 = !DILocation(line: 804, column: 45, scope: !2509)
!2557 = !DILocation(line: 804, column: 62, scope: !2509)
!2558 = !DILocation(line: 805, column: 51, scope: !2509)
!2559 = !DILocation(line: 807, column: 37, scope: !2509)
!2560 = !DILocation(line: 807, column: 33, scope: !2509)
!2561 = !DILocation(line: 808, column: 11, scope: !2509)
!2562 = !DILocation(line: 808, column: 7, scope: !2509)
!2563 = !DILocation(line: 810, column: 18, scope: !2509)
!2564 = !DILocation(line: 810, column: 27, scope: !2509)
!2565 = !DILocation(line: 810, column: 24, scope: !2509)
!2566 = !DILocation(line: 810, column: 7, scope: !2509)
!2567 = !DILocation(line: 811, column: 69, scope: !2509)
!2568 = !DILocation(line: 812, column: 53, scope: !2509)
!2569 = !DILocation(line: 813, column: 49, scope: !2509)
!2570 = !DILocation(line: 814, column: 49, scope: !2509)
!2571 = !DILocation(line: 811, column: 20, scope: !2509)
!2572 = !DILocation(line: 814, column: 62, scope: !2509)
!2573 = !DILocation(line: 811, column: 10, scope: !2509)
!2574 = !DILocation(line: 220, column: 20, scope: !2541, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 815, column: 15, scope: !2509)
!2576 = !DILocation(line: 222, column: 10, scope: !2541, inlinedAt: !2575)
!2577 = !DILocation(line: 815, column: 9, scope: !2509)
!2578 = !DILocation(line: 816, column: 60, scope: !2509)
!2579 = !DILocation(line: 818, column: 32, scope: !2509)
!2580 = !DILocation(line: 818, column: 47, scope: !2509)
!2581 = !DILocation(line: 816, column: 3, scope: !2509)
!2582 = !DILocation(line: 819, column: 9, scope: !2509)
!2583 = !DILocation(line: 820, column: 7, scope: !2509)
!2584 = !DILocation(line: 821, column: 11, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2509, file: !100, line: 820, column: 7)
!2586 = !{!956, !956, i64 0}
!2587 = !DILocation(line: 821, column: 5, scope: !2585)
!2588 = !DILocation(line: 822, column: 3, scope: !2509)
!2589 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !1038, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2590)
!2590 = !{!2591, !2592}
!2591 = !DILocalVariable(name: "sv", scope: !2589, file: !100, line: 842, type: !127)
!2592 = !DILocalVariable(name: "i", scope: !2589, file: !100, line: 843, type: !25)
!2593 = !DILocation(line: 842, column: 24, scope: !2589)
!2594 = !DILocation(line: 842, column: 19, scope: !2589)
!2595 = !DILocation(line: 843, column: 7, scope: !2589)
!2596 = !DILocation(line: 844, column: 19, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2598, file: !100, discriminator: 1)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !100, line: 844, column: 3)
!2599 = distinct !DILexicalBlock(scope: !2589, file: !100, line: 844, column: 3)
!2600 = !DILocation(line: 844, column: 17, scope: !2597)
!2601 = !DILocation(line: 844, column: 3, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2599, file: !100, discriminator: 1)
!2603 = !DILocation(line: 845, column: 17, scope: !2598)
!2604 = !{!2605, !661, i64 8}
!2605 = !{!"slotvec", !956, i64 0, !661, i64 8}
!2606 = !DILocation(line: 845, column: 5, scope: !2598)
!2607 = !DILocation(line: 844, column: 28, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2598, file: !100, discriminator: 2)
!2609 = distinct !{!2609, !2610, !2611}
!2610 = !DILocation(line: 844, column: 3, scope: !2599)
!2611 = !DILocation(line: 845, column: 20, scope: !2599)
!2612 = !DILocation(line: 846, column: 13, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2589, file: !100, line: 846, column: 7)
!2614 = !DILocation(line: 846, column: 17, scope: !2613)
!2615 = !DILocation(line: 846, column: 7, scope: !2589)
!2616 = !DILocation(line: 848, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2613, file: !100, line: 847, column: 5)
!2618 = !DILocation(line: 849, column: 21, scope: !2617)
!2619 = !{!2605, !956, i64 0}
!2620 = !DILocation(line: 850, column: 20, scope: !2617)
!2621 = !DILocation(line: 851, column: 5, scope: !2617)
!2622 = !DILocation(line: 852, column: 10, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2589, file: !100, line: 852, column: 7)
!2624 = !DILocation(line: 852, column: 7, scope: !2589)
!2625 = !DILocation(line: 854, column: 13, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !100, line: 853, column: 5)
!2627 = !DILocation(line: 854, column: 7, scope: !2626)
!2628 = !DILocation(line: 855, column: 15, scope: !2626)
!2629 = !DILocation(line: 856, column: 5, scope: !2626)
!2630 = !DILocation(line: 857, column: 10, scope: !2589)
!2631 = !DILocation(line: 858, column: 1, scope: !2589)
!2632 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !2633, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!50, !25, !6}
!2635 = !{!2636, !2637}
!2636 = !DILocalVariable(name: "n", arg: 1, scope: !2632, file: !100, line: 922, type: !25)
!2637 = !DILocalVariable(name: "arg", arg: 2, scope: !2632, file: !100, line: 922, type: !6)
!2638 = !DILocation(line: 922, column: 17, scope: !2632)
!2639 = !DILocation(line: 922, column: 32, scope: !2632)
!2640 = !DILocation(line: 924, column: 10, scope: !2632)
!2641 = !DILocation(line: 924, column: 3, scope: !2632)
!2642 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !2643, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!50, !25, !6, !94, !1339}
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651, !2652, !2655, !2657, !2658, !2659}
!2646 = !DILocalVariable(name: "n", arg: 1, scope: !2642, file: !100, line: 869, type: !25)
!2647 = !DILocalVariable(name: "arg", arg: 2, scope: !2642, file: !100, line: 869, type: !6)
!2648 = !DILocalVariable(name: "argsize", arg: 3, scope: !2642, file: !100, line: 869, type: !94)
!2649 = !DILocalVariable(name: "options", arg: 4, scope: !2642, file: !100, line: 870, type: !1339)
!2650 = !DILocalVariable(name: "e", scope: !2642, file: !100, line: 872, type: !25)
!2651 = !DILocalVariable(name: "sv", scope: !2642, file: !100, line: 874, type: !127)
!2652 = !DILocalVariable(name: "preallocated", scope: !2653, file: !100, line: 881, type: !17)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !100, line: 880, column: 5)
!2654 = distinct !DILexicalBlock(scope: !2642, file: !100, line: 879, column: 7)
!2655 = !DILocalVariable(name: "size", scope: !2656, file: !100, line: 894, type: !94)
!2656 = distinct !DILexicalBlock(scope: !2642, file: !100, line: 893, column: 3)
!2657 = !DILocalVariable(name: "val", scope: !2656, file: !100, line: 895, type: !50)
!2658 = !DILocalVariable(name: "flags", scope: !2656, file: !100, line: 897, type: !25)
!2659 = !DILocalVariable(name: "qsize", scope: !2656, file: !100, line: 898, type: !94)
!2660 = !DILocation(line: 869, column: 25, scope: !2642)
!2661 = !DILocation(line: 869, column: 40, scope: !2642)
!2662 = !DILocation(line: 869, column: 52, scope: !2642)
!2663 = !DILocation(line: 870, column: 51, scope: !2642)
!2664 = !DILocation(line: 872, column: 11, scope: !2642)
!2665 = !DILocation(line: 872, column: 7, scope: !2642)
!2666 = !DILocation(line: 874, column: 24, scope: !2642)
!2667 = !DILocation(line: 874, column: 19, scope: !2642)
!2668 = !DILocation(line: 876, column: 9, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2642, file: !100, line: 876, column: 7)
!2670 = !DILocation(line: 876, column: 7, scope: !2642)
!2671 = !DILocation(line: 877, column: 5, scope: !2669)
!2672 = !DILocation(line: 879, column: 7, scope: !2654)
!2673 = !DILocation(line: 879, column: 14, scope: !2654)
!2674 = !DILocation(line: 879, column: 7, scope: !2642)
!2675 = !DILocation(line: 881, column: 31, scope: !2653)
!2676 = !DILocation(line: 883, column: 67, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2653, file: !100, line: 883, column: 11)
!2678 = !DILocation(line: 883, column: 11, scope: !2653)
!2679 = !DILocation(line: 884, column: 9, scope: !2677)
!2680 = !DILocation(line: 886, column: 32, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2653, file: !100, discriminator: 3)
!2682 = !DILocation(line: 886, column: 61, scope: !2681)
!2683 = !DILocation(line: 886, column: 58, scope: !2681)
!2684 = !DILocation(line: 886, column: 66, scope: !2681)
!2685 = !DILocation(line: 886, column: 22, scope: !2681)
!2686 = !DILocation(line: 886, column: 15, scope: !2681)
!2687 = !DILocation(line: 887, column: 11, scope: !2653)
!2688 = !DILocation(line: 888, column: 15, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2653, file: !100, line: 887, column: 11)
!2690 = !{i64 0, i64 8, !2586, i64 8, i64 8, !660}
!2691 = !DILocation(line: 888, column: 9, scope: !2689)
!2692 = !DILocation(line: 889, column: 20, scope: !2653)
!2693 = !DILocation(line: 889, column: 18, scope: !2653)
!2694 = !DILocation(line: 889, column: 7, scope: !2653)
!2695 = !DILocation(line: 889, column: 38, scope: !2653)
!2696 = !DILocation(line: 889, column: 31, scope: !2653)
!2697 = !DILocation(line: 889, column: 48, scope: !2653)
!2698 = !DILocation(line: 890, column: 14, scope: !2653)
!2699 = !DILocation(line: 891, column: 5, scope: !2653)
!2700 = !DILocation(line: 894, column: 19, scope: !2656)
!2701 = !DILocation(line: 894, column: 25, scope: !2656)
!2702 = !DILocation(line: 894, column: 12, scope: !2656)
!2703 = !DILocation(line: 895, column: 23, scope: !2656)
!2704 = !DILocation(line: 895, column: 11, scope: !2656)
!2705 = !DILocation(line: 897, column: 26, scope: !2656)
!2706 = !DILocation(line: 897, column: 32, scope: !2656)
!2707 = !DILocation(line: 897, column: 9, scope: !2656)
!2708 = !DILocation(line: 899, column: 55, scope: !2656)
!2709 = !DILocation(line: 900, column: 46, scope: !2656)
!2710 = !DILocation(line: 901, column: 55, scope: !2656)
!2711 = !DILocation(line: 902, column: 55, scope: !2656)
!2712 = !DILocation(line: 898, column: 20, scope: !2656)
!2713 = !DILocation(line: 898, column: 12, scope: !2656)
!2714 = !DILocation(line: 904, column: 14, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2656, file: !100, line: 904, column: 9)
!2716 = !DILocation(line: 904, column: 9, scope: !2656)
!2717 = !DILocation(line: 906, column: 35, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2715, file: !100, line: 905, column: 7)
!2719 = !DILocation(line: 906, column: 20, scope: !2718)
!2720 = !DILocation(line: 907, column: 17, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2718, file: !100, line: 907, column: 13)
!2722 = !DILocation(line: 907, column: 13, scope: !2718)
!2723 = !DILocation(line: 908, column: 11, scope: !2721)
!2724 = !DILocation(line: 220, column: 20, scope: !2541, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 909, column: 27, scope: !2718)
!2726 = !DILocation(line: 222, column: 10, scope: !2541, inlinedAt: !2725)
!2727 = !DILocation(line: 909, column: 19, scope: !2718)
!2728 = !DILocation(line: 910, column: 69, scope: !2718)
!2729 = !DILocation(line: 912, column: 44, scope: !2718)
!2730 = !DILocation(line: 913, column: 44, scope: !2718)
!2731 = !DILocation(line: 910, column: 9, scope: !2718)
!2732 = !DILocation(line: 914, column: 7, scope: !2718)
!2733 = !DILocation(line: 916, column: 11, scope: !2656)
!2734 = !DILocation(line: 917, column: 5, scope: !2656)
!2735 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !2736, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!50, !25, !6, !94}
!2738 = !{!2739, !2740, !2741}
!2739 = !DILocalVariable(name: "n", arg: 1, scope: !2735, file: !100, line: 928, type: !25)
!2740 = !DILocalVariable(name: "arg", arg: 2, scope: !2735, file: !100, line: 928, type: !6)
!2741 = !DILocalVariable(name: "argsize", arg: 3, scope: !2735, file: !100, line: 928, type: !94)
!2742 = !DILocation(line: 928, column: 21, scope: !2735)
!2743 = !DILocation(line: 928, column: 36, scope: !2735)
!2744 = !DILocation(line: 928, column: 48, scope: !2735)
!2745 = !DILocation(line: 930, column: 10, scope: !2735)
!2746 = !DILocation(line: 930, column: 3, scope: !2735)
!2747 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !2748, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!50, !6}
!2750 = !{!2751}
!2751 = !DILocalVariable(name: "arg", arg: 1, scope: !2747, file: !100, line: 934, type: !6)
!2752 = !DILocation(line: 934, column: 23, scope: !2747)
!2753 = !DILocation(line: 922, column: 17, scope: !2632, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 936, column: 10, scope: !2747)
!2755 = !DILocation(line: 922, column: 32, scope: !2632, inlinedAt: !2754)
!2756 = !DILocation(line: 924, column: 10, scope: !2632, inlinedAt: !2754)
!2757 = !DILocation(line: 936, column: 3, scope: !2747)
!2758 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !2759, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!50, !6, !94}
!2761 = !{!2762, !2763}
!2762 = !DILocalVariable(name: "arg", arg: 1, scope: !2758, file: !100, line: 940, type: !6)
!2763 = !DILocalVariable(name: "argsize", arg: 2, scope: !2758, file: !100, line: 940, type: !94)
!2764 = !DILocation(line: 940, column: 27, scope: !2758)
!2765 = !DILocation(line: 940, column: 39, scope: !2758)
!2766 = !DILocation(line: 928, column: 21, scope: !2735, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 942, column: 10, scope: !2758)
!2768 = !DILocation(line: 928, column: 36, scope: !2735, inlinedAt: !2767)
!2769 = !DILocation(line: 928, column: 48, scope: !2735, inlinedAt: !2767)
!2770 = !DILocation(line: 930, column: 10, scope: !2735, inlinedAt: !2767)
!2771 = !DILocation(line: 942, column: 3, scope: !2758)
!2772 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !2773, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!50, !25, !58, !6}
!2775 = !{!2776, !2777, !2778, !2779}
!2776 = !DILocalVariable(name: "n", arg: 1, scope: !2772, file: !100, line: 946, type: !25)
!2777 = !DILocalVariable(name: "s", arg: 2, scope: !2772, file: !100, line: 946, type: !58)
!2778 = !DILocalVariable(name: "arg", arg: 3, scope: !2772, file: !100, line: 946, type: !6)
!2779 = !DILocalVariable(name: "o", scope: !2772, file: !100, line: 948, type: !1340)
!2780 = !DILocalVariable(name: "o", scope: !2781, file: !100, line: 187, type: !107)
!2781 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2782, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!107, !58}
!2784 = !{!2785, !2780}
!2785 = !DILocalVariable(name: "style", arg: 1, scope: !2781, file: !100, line: 185, type: !58)
!2786 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2787 = !DILocation(line: 187, column: 26, scope: !2781, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 948, column: 36, scope: !2772)
!2789 = !DILocation(line: 946, column: 23, scope: !2772)
!2790 = !DILocation(line: 946, column: 45, scope: !2772)
!2791 = !DILocation(line: 946, column: 60, scope: !2772)
!2792 = !DILocation(line: 948, column: 3, scope: !2772)
!2793 = !DILocation(line: 948, column: 32, scope: !2772)
!2794 = !DILocation(line: 185, column: 48, scope: !2781, inlinedAt: !2788)
!2795 = !DILocation(line: 187, column: 3, scope: !2781, inlinedAt: !2788)
!2796 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2797 = !DILocation(line: 188, column: 13, scope: !2798, inlinedAt: !2788)
!2798 = distinct !DILexicalBlock(scope: !2781, file: !100, line: 188, column: 7)
!2799 = !DILocation(line: 188, column: 7, scope: !2781, inlinedAt: !2788)
!2800 = !DILocation(line: 189, column: 5, scope: !2798, inlinedAt: !2788)
!2801 = !{!2802}
!2802 = distinct !{!2802, !2803, !"quoting_options_from_style: argument 0"}
!2803 = distinct !{!2803, !"quoting_options_from_style"}
!2804 = !DILocation(line: 191, column: 10, scope: !2781, inlinedAt: !2788)
!2805 = !DILocation(line: 192, column: 1, scope: !2781, inlinedAt: !2788)
!2806 = !DILocation(line: 949, column: 10, scope: !2772)
!2807 = !DILocation(line: 950, column: 1, scope: !2772)
!2808 = !DILocation(line: 949, column: 3, scope: !2772)
!2809 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2810, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!50, !25, !58, !6, !94}
!2812 = !{!2813, !2814, !2815, !2816, !2817}
!2813 = !DILocalVariable(name: "n", arg: 1, scope: !2809, file: !100, line: 953, type: !25)
!2814 = !DILocalVariable(name: "s", arg: 2, scope: !2809, file: !100, line: 953, type: !58)
!2815 = !DILocalVariable(name: "arg", arg: 3, scope: !2809, file: !100, line: 954, type: !6)
!2816 = !DILocalVariable(name: "argsize", arg: 4, scope: !2809, file: !100, line: 954, type: !94)
!2817 = !DILocalVariable(name: "o", scope: !2809, file: !100, line: 956, type: !1340)
!2818 = !DILocation(line: 187, column: 26, scope: !2781, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 956, column: 36, scope: !2809)
!2820 = !DILocation(line: 953, column: 27, scope: !2809)
!2821 = !DILocation(line: 953, column: 49, scope: !2809)
!2822 = !DILocation(line: 954, column: 35, scope: !2809)
!2823 = !DILocation(line: 954, column: 47, scope: !2809)
!2824 = !DILocation(line: 956, column: 3, scope: !2809)
!2825 = !DILocation(line: 956, column: 32, scope: !2809)
!2826 = !DILocation(line: 185, column: 48, scope: !2781, inlinedAt: !2819)
!2827 = !DILocation(line: 187, column: 3, scope: !2781, inlinedAt: !2819)
!2828 = !DILocation(line: 188, column: 13, scope: !2798, inlinedAt: !2819)
!2829 = !DILocation(line: 188, column: 7, scope: !2781, inlinedAt: !2819)
!2830 = !DILocation(line: 189, column: 5, scope: !2798, inlinedAt: !2819)
!2831 = !{!2832}
!2832 = distinct !{!2832, !2833, !"quoting_options_from_style: argument 0"}
!2833 = distinct !{!2833, !"quoting_options_from_style"}
!2834 = !DILocation(line: 191, column: 10, scope: !2781, inlinedAt: !2819)
!2835 = !DILocation(line: 192, column: 1, scope: !2781, inlinedAt: !2819)
!2836 = !DILocation(line: 957, column: 10, scope: !2809)
!2837 = !DILocation(line: 958, column: 1, scope: !2809)
!2838 = !DILocation(line: 957, column: 3, scope: !2809)
!2839 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2840, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!50, !58, !6}
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "s", arg: 1, scope: !2839, file: !100, line: 961, type: !58)
!2844 = !DILocalVariable(name: "arg", arg: 2, scope: !2839, file: !100, line: 961, type: !6)
!2845 = !DILocation(line: 187, column: 26, scope: !2781, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 948, column: 36, scope: !2772, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 963, column: 10, scope: !2839)
!2848 = !DILocation(line: 961, column: 36, scope: !2839)
!2849 = !DILocation(line: 961, column: 51, scope: !2839)
!2850 = !DILocation(line: 946, column: 23, scope: !2772, inlinedAt: !2847)
!2851 = !DILocation(line: 946, column: 45, scope: !2772, inlinedAt: !2847)
!2852 = !DILocation(line: 946, column: 60, scope: !2772, inlinedAt: !2847)
!2853 = !DILocation(line: 948, column: 3, scope: !2772, inlinedAt: !2847)
!2854 = !DILocation(line: 948, column: 32, scope: !2772, inlinedAt: !2847)
!2855 = !DILocation(line: 185, column: 48, scope: !2781, inlinedAt: !2846)
!2856 = !DILocation(line: 187, column: 3, scope: !2781, inlinedAt: !2846)
!2857 = !DILocation(line: 188, column: 13, scope: !2798, inlinedAt: !2846)
!2858 = !DILocation(line: 188, column: 7, scope: !2781, inlinedAt: !2846)
!2859 = !DILocation(line: 189, column: 5, scope: !2798, inlinedAt: !2846)
!2860 = !{!2861}
!2861 = distinct !{!2861, !2862, !"quoting_options_from_style: argument 0"}
!2862 = distinct !{!2862, !"quoting_options_from_style"}
!2863 = !DILocation(line: 191, column: 10, scope: !2781, inlinedAt: !2846)
!2864 = !DILocation(line: 192, column: 1, scope: !2781, inlinedAt: !2846)
!2865 = !DILocation(line: 949, column: 10, scope: !2772, inlinedAt: !2847)
!2866 = !DILocation(line: 950, column: 1, scope: !2772, inlinedAt: !2847)
!2867 = !DILocation(line: 963, column: 3, scope: !2839)
!2868 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2869, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!50, !58, !6, !94}
!2871 = !{!2872, !2873, !2874}
!2872 = !DILocalVariable(name: "s", arg: 1, scope: !2868, file: !100, line: 967, type: !58)
!2873 = !DILocalVariable(name: "arg", arg: 2, scope: !2868, file: !100, line: 967, type: !6)
!2874 = !DILocalVariable(name: "argsize", arg: 3, scope: !2868, file: !100, line: 967, type: !94)
!2875 = !DILocation(line: 187, column: 26, scope: !2781, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 956, column: 36, scope: !2809, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 969, column: 10, scope: !2868)
!2878 = !DILocation(line: 967, column: 40, scope: !2868)
!2879 = !DILocation(line: 967, column: 55, scope: !2868)
!2880 = !DILocation(line: 967, column: 67, scope: !2868)
!2881 = !DILocation(line: 953, column: 27, scope: !2809, inlinedAt: !2877)
!2882 = !DILocation(line: 953, column: 49, scope: !2809, inlinedAt: !2877)
!2883 = !DILocation(line: 954, column: 35, scope: !2809, inlinedAt: !2877)
!2884 = !DILocation(line: 954, column: 47, scope: !2809, inlinedAt: !2877)
!2885 = !DILocation(line: 956, column: 3, scope: !2809, inlinedAt: !2877)
!2886 = !DILocation(line: 956, column: 32, scope: !2809, inlinedAt: !2877)
!2887 = !DILocation(line: 185, column: 48, scope: !2781, inlinedAt: !2876)
!2888 = !DILocation(line: 187, column: 3, scope: !2781, inlinedAt: !2876)
!2889 = !DILocation(line: 188, column: 13, scope: !2798, inlinedAt: !2876)
!2890 = !DILocation(line: 188, column: 7, scope: !2781, inlinedAt: !2876)
!2891 = !DILocation(line: 189, column: 5, scope: !2798, inlinedAt: !2876)
!2892 = !{!2893}
!2893 = distinct !{!2893, !2894, !"quoting_options_from_style: argument 0"}
!2894 = distinct !{!2894, !"quoting_options_from_style"}
!2895 = !DILocation(line: 191, column: 10, scope: !2781, inlinedAt: !2876)
!2896 = !DILocation(line: 192, column: 1, scope: !2781, inlinedAt: !2876)
!2897 = !DILocation(line: 957, column: 10, scope: !2809, inlinedAt: !2877)
!2898 = !DILocation(line: 958, column: 1, scope: !2809, inlinedAt: !2877)
!2899 = !DILocation(line: 969, column: 3, scope: !2868)
!2900 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2901, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!50, !6, !94, !8}
!2903 = !{!2904, !2905, !2906, !2907}
!2904 = !DILocalVariable(name: "arg", arg: 1, scope: !2900, file: !100, line: 973, type: !6)
!2905 = !DILocalVariable(name: "argsize", arg: 2, scope: !2900, file: !100, line: 973, type: !94)
!2906 = !DILocalVariable(name: "ch", arg: 3, scope: !2900, file: !100, line: 973, type: !8)
!2907 = !DILocalVariable(name: "options", scope: !2900, file: !100, line: 975, type: !107)
!2908 = !DILocation(line: 973, column: 32, scope: !2900)
!2909 = !DILocation(line: 973, column: 44, scope: !2900)
!2910 = !DILocation(line: 973, column: 58, scope: !2900)
!2911 = !DILocation(line: 975, column: 3, scope: !2900)
!2912 = !DILocation(line: 976, column: 13, scope: !2900)
!2913 = !{i64 0, i64 4, !1157, i64 4, i64 4, !758, i64 8, i64 32, !1157, i64 40, i64 8, !660, i64 48, i64 8, !660}
!2914 = !DILocation(line: 975, column: 26, scope: !2900)
!2915 = !DILocation(line: 144, column: 43, scope: !1363, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 977, column: 3, scope: !2900)
!2917 = !DILocation(line: 144, column: 51, scope: !1363, inlinedAt: !2916)
!2918 = !DILocation(line: 144, column: 58, scope: !1363, inlinedAt: !2916)
!2919 = !DILocation(line: 146, column: 17, scope: !1363, inlinedAt: !2916)
!2920 = !DILocation(line: 148, column: 62, scope: !1381, inlinedAt: !2916)
!2921 = !DILocation(line: 148, column: 57, scope: !1381, inlinedAt: !2916)
!2922 = !DILocation(line: 147, column: 17, scope: !1363, inlinedAt: !2916)
!2923 = !DILocation(line: 149, column: 18, scope: !1363, inlinedAt: !2916)
!2924 = !DILocation(line: 149, column: 15, scope: !1363, inlinedAt: !2916)
!2925 = !DILocation(line: 149, column: 7, scope: !1363, inlinedAt: !2916)
!2926 = !DILocation(line: 150, column: 12, scope: !1363, inlinedAt: !2916)
!2927 = !DILocation(line: 150, column: 15, scope: !1363, inlinedAt: !2916)
!2928 = !DILocation(line: 150, column: 25, scope: !1363, inlinedAt: !2916)
!2929 = !DILocation(line: 150, column: 7, scope: !1363, inlinedAt: !2916)
!2930 = !DILocation(line: 151, column: 18, scope: !1363, inlinedAt: !2916)
!2931 = !DILocation(line: 151, column: 23, scope: !1363, inlinedAt: !2916)
!2932 = !DILocation(line: 151, column: 6, scope: !1363, inlinedAt: !2916)
!2933 = !DILocation(line: 978, column: 10, scope: !2900)
!2934 = !DILocation(line: 979, column: 1, scope: !2900)
!2935 = !DILocation(line: 978, column: 3, scope: !2900)
!2936 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2937, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!50, !6, !8}
!2939 = !{!2940, !2941}
!2940 = !DILocalVariable(name: "arg", arg: 1, scope: !2936, file: !100, line: 982, type: !6)
!2941 = !DILocalVariable(name: "ch", arg: 2, scope: !2936, file: !100, line: 982, type: !8)
!2942 = !DILocation(line: 982, column: 28, scope: !2936)
!2943 = !DILocation(line: 982, column: 38, scope: !2936)
!2944 = !DILocation(line: 973, column: 32, scope: !2900, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 984, column: 10, scope: !2936)
!2946 = !DILocation(line: 973, column: 44, scope: !2900, inlinedAt: !2945)
!2947 = !DILocation(line: 973, column: 58, scope: !2900, inlinedAt: !2945)
!2948 = !DILocation(line: 975, column: 3, scope: !2900, inlinedAt: !2945)
!2949 = !DILocation(line: 976, column: 13, scope: !2900, inlinedAt: !2945)
!2950 = !DILocation(line: 975, column: 26, scope: !2900, inlinedAt: !2945)
!2951 = !DILocation(line: 144, column: 43, scope: !1363, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 977, column: 3, scope: !2900, inlinedAt: !2945)
!2953 = !DILocation(line: 144, column: 51, scope: !1363, inlinedAt: !2952)
!2954 = !DILocation(line: 144, column: 58, scope: !1363, inlinedAt: !2952)
!2955 = !DILocation(line: 146, column: 17, scope: !1363, inlinedAt: !2952)
!2956 = !DILocation(line: 148, column: 62, scope: !1381, inlinedAt: !2952)
!2957 = !DILocation(line: 148, column: 57, scope: !1381, inlinedAt: !2952)
!2958 = !DILocation(line: 147, column: 17, scope: !1363, inlinedAt: !2952)
!2959 = !DILocation(line: 149, column: 18, scope: !1363, inlinedAt: !2952)
!2960 = !DILocation(line: 149, column: 15, scope: !1363, inlinedAt: !2952)
!2961 = !DILocation(line: 149, column: 7, scope: !1363, inlinedAt: !2952)
!2962 = !DILocation(line: 150, column: 12, scope: !1363, inlinedAt: !2952)
!2963 = !DILocation(line: 150, column: 15, scope: !1363, inlinedAt: !2952)
!2964 = !DILocation(line: 150, column: 25, scope: !1363, inlinedAt: !2952)
!2965 = !DILocation(line: 150, column: 7, scope: !1363, inlinedAt: !2952)
!2966 = !DILocation(line: 151, column: 18, scope: !1363, inlinedAt: !2952)
!2967 = !DILocation(line: 151, column: 23, scope: !1363, inlinedAt: !2952)
!2968 = !DILocation(line: 151, column: 6, scope: !1363, inlinedAt: !2952)
!2969 = !DILocation(line: 978, column: 10, scope: !2900, inlinedAt: !2945)
!2970 = !DILocation(line: 979, column: 1, scope: !2900, inlinedAt: !2945)
!2971 = !DILocation(line: 984, column: 3, scope: !2936)
!2972 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !2748, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2973)
!2973 = !{!2974}
!2974 = !DILocalVariable(name: "arg", arg: 1, scope: !2972, file: !100, line: 988, type: !6)
!2975 = !DILocation(line: 988, column: 29, scope: !2972)
!2976 = !DILocation(line: 982, column: 28, scope: !2936, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 990, column: 10, scope: !2972)
!2978 = !DILocation(line: 982, column: 38, scope: !2936, inlinedAt: !2977)
!2979 = !DILocation(line: 973, column: 32, scope: !2900, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 984, column: 10, scope: !2936, inlinedAt: !2977)
!2981 = !DILocation(line: 973, column: 44, scope: !2900, inlinedAt: !2980)
!2982 = !DILocation(line: 973, column: 58, scope: !2900, inlinedAt: !2980)
!2983 = !DILocation(line: 975, column: 3, scope: !2900, inlinedAt: !2980)
!2984 = !DILocation(line: 976, column: 13, scope: !2900, inlinedAt: !2980)
!2985 = !DILocation(line: 975, column: 26, scope: !2900, inlinedAt: !2980)
!2986 = !DILocation(line: 144, column: 43, scope: !1363, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 977, column: 3, scope: !2900, inlinedAt: !2980)
!2988 = !DILocation(line: 144, column: 51, scope: !1363, inlinedAt: !2987)
!2989 = !DILocation(line: 144, column: 58, scope: !1363, inlinedAt: !2987)
!2990 = !DILocation(line: 146, column: 17, scope: !1363, inlinedAt: !2987)
!2991 = !DILocation(line: 148, column: 57, scope: !1381, inlinedAt: !2987)
!2992 = !DILocation(line: 147, column: 17, scope: !1363, inlinedAt: !2987)
!2993 = !DILocation(line: 149, column: 7, scope: !1363, inlinedAt: !2987)
!2994 = !DILocation(line: 150, column: 12, scope: !1363, inlinedAt: !2987)
!2995 = !DILocation(line: 151, column: 6, scope: !1363, inlinedAt: !2987)
!2996 = !DILocation(line: 978, column: 10, scope: !2900, inlinedAt: !2980)
!2997 = !DILocation(line: 979, column: 1, scope: !2900, inlinedAt: !2980)
!2998 = !DILocation(line: 990, column: 3, scope: !2972)
!2999 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !2759, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !3000)
!3000 = !{!3001, !3002}
!3001 = !DILocalVariable(name: "arg", arg: 1, scope: !2999, file: !100, line: 994, type: !6)
!3002 = !DILocalVariable(name: "argsize", arg: 2, scope: !2999, file: !100, line: 994, type: !94)
!3003 = !DILocation(line: 994, column: 33, scope: !2999)
!3004 = !DILocation(line: 994, column: 45, scope: !2999)
!3005 = !DILocation(line: 973, column: 32, scope: !2900, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 996, column: 10, scope: !2999)
!3007 = !DILocation(line: 973, column: 44, scope: !2900, inlinedAt: !3006)
!3008 = !DILocation(line: 973, column: 58, scope: !2900, inlinedAt: !3006)
!3009 = !DILocation(line: 975, column: 3, scope: !2900, inlinedAt: !3006)
!3010 = !DILocation(line: 976, column: 13, scope: !2900, inlinedAt: !3006)
!3011 = !DILocation(line: 975, column: 26, scope: !2900, inlinedAt: !3006)
!3012 = !DILocation(line: 144, column: 43, scope: !1363, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 977, column: 3, scope: !2900, inlinedAt: !3006)
!3014 = !DILocation(line: 144, column: 51, scope: !1363, inlinedAt: !3013)
!3015 = !DILocation(line: 144, column: 58, scope: !1363, inlinedAt: !3013)
!3016 = !DILocation(line: 146, column: 17, scope: !1363, inlinedAt: !3013)
!3017 = !DILocation(line: 148, column: 57, scope: !1381, inlinedAt: !3013)
!3018 = !DILocation(line: 147, column: 17, scope: !1363, inlinedAt: !3013)
!3019 = !DILocation(line: 149, column: 7, scope: !1363, inlinedAt: !3013)
!3020 = !DILocation(line: 150, column: 12, scope: !1363, inlinedAt: !3013)
!3021 = !DILocation(line: 151, column: 6, scope: !1363, inlinedAt: !3013)
!3022 = !DILocation(line: 978, column: 10, scope: !2900, inlinedAt: !3006)
!3023 = !DILocation(line: 979, column: 1, scope: !2900, inlinedAt: !3006)
!3024 = !DILocation(line: 996, column: 3, scope: !2999)
!3025 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !2773, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !3026)
!3026 = !{!3027, !3028, !3029, !3030}
!3027 = !DILocalVariable(name: "n", arg: 1, scope: !3025, file: !100, line: 1000, type: !25)
!3028 = !DILocalVariable(name: "s", arg: 2, scope: !3025, file: !100, line: 1000, type: !58)
!3029 = !DILocalVariable(name: "arg", arg: 3, scope: !3025, file: !100, line: 1000, type: !6)
!3030 = !DILocalVariable(name: "options", scope: !3025, file: !100, line: 1002, type: !107)
!3031 = !DILocation(line: 187, column: 26, scope: !2781, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 1003, column: 13, scope: !3025)
!3033 = !DILocation(line: 1000, column: 29, scope: !3025)
!3034 = !DILocation(line: 1000, column: 51, scope: !3025)
!3035 = !DILocation(line: 1000, column: 66, scope: !3025)
!3036 = !DILocation(line: 1002, column: 3, scope: !3025)
!3037 = !DILocation(line: 185, column: 48, scope: !2781, inlinedAt: !3032)
!3038 = !DILocation(line: 187, column: 3, scope: !2781, inlinedAt: !3032)
!3039 = !DILocation(line: 188, column: 13, scope: !2798, inlinedAt: !3032)
!3040 = !DILocation(line: 188, column: 7, scope: !2781, inlinedAt: !3032)
!3041 = !DILocation(line: 189, column: 5, scope: !2798, inlinedAt: !3032)
!3042 = !{!3043}
!3043 = distinct !{!3043, !3044, !"quoting_options_from_style: argument 0"}
!3044 = distinct !{!3044, !"quoting_options_from_style"}
!3045 = !DILocation(line: 191, column: 10, scope: !2781, inlinedAt: !3032)
!3046 = !DILocation(line: 192, column: 1, scope: !2781, inlinedAt: !3032)
!3047 = !DILocation(line: 1003, column: 13, scope: !3025)
!3048 = !DILocation(line: 1002, column: 26, scope: !3025)
!3049 = !DILocation(line: 144, column: 43, scope: !1363, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 1004, column: 3, scope: !3025)
!3051 = !DILocation(line: 144, column: 51, scope: !1363, inlinedAt: !3050)
!3052 = !DILocation(line: 144, column: 58, scope: !1363, inlinedAt: !3050)
!3053 = !DILocation(line: 146, column: 17, scope: !1363, inlinedAt: !3050)
!3054 = !DILocation(line: 148, column: 57, scope: !1381, inlinedAt: !3050)
!3055 = !DILocation(line: 147, column: 17, scope: !1363, inlinedAt: !3050)
!3056 = !DILocation(line: 149, column: 7, scope: !1363, inlinedAt: !3050)
!3057 = !DILocation(line: 150, column: 12, scope: !1363, inlinedAt: !3050)
!3058 = !DILocation(line: 151, column: 6, scope: !1363, inlinedAt: !3050)
!3059 = !DILocation(line: 1005, column: 10, scope: !3025)
!3060 = !DILocation(line: 1006, column: 1, scope: !3025)
!3061 = !DILocation(line: 1005, column: 3, scope: !3025)
!3062 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !3063, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!50, !25, !6, !6, !6}
!3065 = !{!3066, !3067, !3068, !3069}
!3066 = !DILocalVariable(name: "n", arg: 1, scope: !3062, file: !100, line: 1009, type: !25)
!3067 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3062, file: !100, line: 1009, type: !6)
!3068 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3062, file: !100, line: 1010, type: !6)
!3069 = !DILocalVariable(name: "arg", arg: 4, scope: !3062, file: !100, line: 1010, type: !6)
!3070 = !DILocation(line: 1009, column: 24, scope: !3062)
!3071 = !DILocation(line: 1009, column: 39, scope: !3062)
!3072 = !DILocation(line: 1010, column: 32, scope: !3062)
!3073 = !DILocation(line: 1010, column: 57, scope: !3062)
!3074 = !DILocalVariable(name: "n", arg: 1, scope: !3075, file: !100, line: 1017, type: !25)
!3075 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !3076, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!50, !25, !6, !6, !6, !94}
!3078 = !{!3074, !3079, !3080, !3081, !3082, !3083}
!3079 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3075, file: !100, line: 1017, type: !6)
!3080 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3075, file: !100, line: 1018, type: !6)
!3081 = !DILocalVariable(name: "arg", arg: 4, scope: !3075, file: !100, line: 1019, type: !6)
!3082 = !DILocalVariable(name: "argsize", arg: 5, scope: !3075, file: !100, line: 1019, type: !94)
!3083 = !DILocalVariable(name: "o", scope: !3075, file: !100, line: 1021, type: !107)
!3084 = !DILocation(line: 1017, column: 28, scope: !3075, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 1012, column: 10, scope: !3062)
!3086 = !DILocation(line: 1017, column: 43, scope: !3075, inlinedAt: !3085)
!3087 = !DILocation(line: 1018, column: 36, scope: !3075, inlinedAt: !3085)
!3088 = !DILocation(line: 1019, column: 36, scope: !3075, inlinedAt: !3085)
!3089 = !DILocation(line: 1019, column: 48, scope: !3075, inlinedAt: !3085)
!3090 = !DILocation(line: 1021, column: 3, scope: !3075, inlinedAt: !3085)
!3091 = !DILocation(line: 1021, column: 30, scope: !3075, inlinedAt: !3085)
!3092 = !DILocation(line: 1021, column: 26, scope: !3075, inlinedAt: !3085)
!3093 = !DILocation(line: 171, column: 45, scope: !1413, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 1022, column: 3, scope: !3075, inlinedAt: !3085)
!3095 = !DILocation(line: 172, column: 33, scope: !1413, inlinedAt: !3094)
!3096 = !DILocation(line: 172, column: 57, scope: !1413, inlinedAt: !3094)
!3097 = !DILocation(line: 176, column: 6, scope: !1413, inlinedAt: !3094)
!3098 = !DILocation(line: 176, column: 12, scope: !1413, inlinedAt: !3094)
!3099 = !DILocation(line: 177, column: 8, scope: !1429, inlinedAt: !3094)
!3100 = !DILocation(line: 177, column: 23, scope: !1431, inlinedAt: !3094)
!3101 = !DILocation(line: 177, column: 19, scope: !1429, inlinedAt: !3094)
!3102 = !DILocation(line: 178, column: 5, scope: !1429, inlinedAt: !3094)
!3103 = !DILocation(line: 179, column: 6, scope: !1413, inlinedAt: !3094)
!3104 = !DILocation(line: 179, column: 17, scope: !1413, inlinedAt: !3094)
!3105 = !DILocation(line: 180, column: 6, scope: !1413, inlinedAt: !3094)
!3106 = !DILocation(line: 180, column: 18, scope: !1413, inlinedAt: !3094)
!3107 = !DILocation(line: 1023, column: 10, scope: !3075, inlinedAt: !3085)
!3108 = !DILocation(line: 1024, column: 1, scope: !3075, inlinedAt: !3085)
!3109 = !DILocation(line: 1012, column: 3, scope: !3062)
!3110 = !DILocation(line: 1017, column: 28, scope: !3075)
!3111 = !DILocation(line: 1017, column: 43, scope: !3075)
!3112 = !DILocation(line: 1018, column: 36, scope: !3075)
!3113 = !DILocation(line: 1019, column: 36, scope: !3075)
!3114 = !DILocation(line: 1019, column: 48, scope: !3075)
!3115 = !DILocation(line: 1021, column: 3, scope: !3075)
!3116 = !DILocation(line: 1021, column: 30, scope: !3075)
!3117 = !DILocation(line: 1021, column: 26, scope: !3075)
!3118 = !DILocation(line: 171, column: 45, scope: !1413, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 1022, column: 3, scope: !3075)
!3120 = !DILocation(line: 172, column: 33, scope: !1413, inlinedAt: !3119)
!3121 = !DILocation(line: 172, column: 57, scope: !1413, inlinedAt: !3119)
!3122 = !DILocation(line: 176, column: 6, scope: !1413, inlinedAt: !3119)
!3123 = !DILocation(line: 176, column: 12, scope: !1413, inlinedAt: !3119)
!3124 = !DILocation(line: 177, column: 8, scope: !1429, inlinedAt: !3119)
!3125 = !DILocation(line: 177, column: 23, scope: !1431, inlinedAt: !3119)
!3126 = !DILocation(line: 177, column: 19, scope: !1429, inlinedAt: !3119)
!3127 = !DILocation(line: 178, column: 5, scope: !1429, inlinedAt: !3119)
!3128 = !DILocation(line: 179, column: 6, scope: !1413, inlinedAt: !3119)
!3129 = !DILocation(line: 179, column: 17, scope: !1413, inlinedAt: !3119)
!3130 = !DILocation(line: 180, column: 6, scope: !1413, inlinedAt: !3119)
!3131 = !DILocation(line: 180, column: 18, scope: !1413, inlinedAt: !3119)
!3132 = !DILocation(line: 1023, column: 10, scope: !3075)
!3133 = !DILocation(line: 1024, column: 1, scope: !3075)
!3134 = !DILocation(line: 1023, column: 3, scope: !3075)
!3135 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !3136, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!50, !6, !6, !6}
!3138 = !{!3139, !3140, !3141}
!3139 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3135, file: !100, line: 1027, type: !6)
!3140 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3135, file: !100, line: 1027, type: !6)
!3141 = !DILocalVariable(name: "arg", arg: 3, scope: !3135, file: !100, line: 1028, type: !6)
!3142 = !DILocation(line: 1027, column: 30, scope: !3135)
!3143 = !DILocation(line: 1027, column: 54, scope: !3135)
!3144 = !DILocation(line: 1028, column: 30, scope: !3135)
!3145 = !DILocation(line: 1009, column: 24, scope: !3062, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 1030, column: 10, scope: !3135)
!3147 = !DILocation(line: 1009, column: 39, scope: !3062, inlinedAt: !3146)
!3148 = !DILocation(line: 1010, column: 32, scope: !3062, inlinedAt: !3146)
!3149 = !DILocation(line: 1010, column: 57, scope: !3062, inlinedAt: !3146)
!3150 = !DILocation(line: 1017, column: 28, scope: !3075, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 1012, column: 10, scope: !3062, inlinedAt: !3146)
!3152 = !DILocation(line: 1017, column: 43, scope: !3075, inlinedAt: !3151)
!3153 = !DILocation(line: 1018, column: 36, scope: !3075, inlinedAt: !3151)
!3154 = !DILocation(line: 1019, column: 36, scope: !3075, inlinedAt: !3151)
!3155 = !DILocation(line: 1019, column: 48, scope: !3075, inlinedAt: !3151)
!3156 = !DILocation(line: 1021, column: 3, scope: !3075, inlinedAt: !3151)
!3157 = !DILocation(line: 1021, column: 30, scope: !3075, inlinedAt: !3151)
!3158 = !DILocation(line: 1021, column: 26, scope: !3075, inlinedAt: !3151)
!3159 = !DILocation(line: 171, column: 45, scope: !1413, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 1022, column: 3, scope: !3075, inlinedAt: !3151)
!3161 = !DILocation(line: 172, column: 33, scope: !1413, inlinedAt: !3160)
!3162 = !DILocation(line: 172, column: 57, scope: !1413, inlinedAt: !3160)
!3163 = !DILocation(line: 176, column: 6, scope: !1413, inlinedAt: !3160)
!3164 = !DILocation(line: 176, column: 12, scope: !1413, inlinedAt: !3160)
!3165 = !DILocation(line: 177, column: 8, scope: !1429, inlinedAt: !3160)
!3166 = !DILocation(line: 177, column: 23, scope: !1431, inlinedAt: !3160)
!3167 = !DILocation(line: 177, column: 19, scope: !1429, inlinedAt: !3160)
!3168 = !DILocation(line: 178, column: 5, scope: !1429, inlinedAt: !3160)
!3169 = !DILocation(line: 179, column: 6, scope: !1413, inlinedAt: !3160)
!3170 = !DILocation(line: 179, column: 17, scope: !1413, inlinedAt: !3160)
!3171 = !DILocation(line: 180, column: 6, scope: !1413, inlinedAt: !3160)
!3172 = !DILocation(line: 180, column: 18, scope: !1413, inlinedAt: !3160)
!3173 = !DILocation(line: 1023, column: 10, scope: !3075, inlinedAt: !3151)
!3174 = !DILocation(line: 1024, column: 1, scope: !3075, inlinedAt: !3151)
!3175 = !DILocation(line: 1030, column: 3, scope: !3135)
!3176 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !3177, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!50, !6, !6, !6, !94}
!3179 = !{!3180, !3181, !3182, !3183}
!3180 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3176, file: !100, line: 1034, type: !6)
!3181 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3176, file: !100, line: 1034, type: !6)
!3182 = !DILocalVariable(name: "arg", arg: 3, scope: !3176, file: !100, line: 1035, type: !6)
!3183 = !DILocalVariable(name: "argsize", arg: 4, scope: !3176, file: !100, line: 1035, type: !94)
!3184 = !DILocation(line: 1034, column: 34, scope: !3176)
!3185 = !DILocation(line: 1034, column: 58, scope: !3176)
!3186 = !DILocation(line: 1035, column: 34, scope: !3176)
!3187 = !DILocation(line: 1035, column: 46, scope: !3176)
!3188 = !DILocation(line: 1017, column: 28, scope: !3075, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 1037, column: 10, scope: !3176)
!3190 = !DILocation(line: 1017, column: 43, scope: !3075, inlinedAt: !3189)
!3191 = !DILocation(line: 1018, column: 36, scope: !3075, inlinedAt: !3189)
!3192 = !DILocation(line: 1019, column: 36, scope: !3075, inlinedAt: !3189)
!3193 = !DILocation(line: 1019, column: 48, scope: !3075, inlinedAt: !3189)
!3194 = !DILocation(line: 1021, column: 3, scope: !3075, inlinedAt: !3189)
!3195 = !DILocation(line: 1021, column: 30, scope: !3075, inlinedAt: !3189)
!3196 = !DILocation(line: 1021, column: 26, scope: !3075, inlinedAt: !3189)
!3197 = !DILocation(line: 171, column: 45, scope: !1413, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 1022, column: 3, scope: !3075, inlinedAt: !3189)
!3199 = !DILocation(line: 172, column: 33, scope: !1413, inlinedAt: !3198)
!3200 = !DILocation(line: 172, column: 57, scope: !1413, inlinedAt: !3198)
!3201 = !DILocation(line: 176, column: 6, scope: !1413, inlinedAt: !3198)
!3202 = !DILocation(line: 176, column: 12, scope: !1413, inlinedAt: !3198)
!3203 = !DILocation(line: 177, column: 8, scope: !1429, inlinedAt: !3198)
!3204 = !DILocation(line: 177, column: 23, scope: !1431, inlinedAt: !3198)
!3205 = !DILocation(line: 177, column: 19, scope: !1429, inlinedAt: !3198)
!3206 = !DILocation(line: 178, column: 5, scope: !1429, inlinedAt: !3198)
!3207 = !DILocation(line: 179, column: 6, scope: !1413, inlinedAt: !3198)
!3208 = !DILocation(line: 179, column: 17, scope: !1413, inlinedAt: !3198)
!3209 = !DILocation(line: 180, column: 6, scope: !1413, inlinedAt: !3198)
!3210 = !DILocation(line: 180, column: 18, scope: !1413, inlinedAt: !3198)
!3211 = !DILocation(line: 1023, column: 10, scope: !3075, inlinedAt: !3189)
!3212 = !DILocation(line: 1024, column: 1, scope: !3075, inlinedAt: !3189)
!3213 = !DILocation(line: 1037, column: 3, scope: !3176)
!3214 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !3215, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!6, !25, !6, !94}
!3217 = !{!3218, !3219, !3220}
!3218 = !DILocalVariable(name: "n", arg: 1, scope: !3214, file: !100, line: 1052, type: !25)
!3219 = !DILocalVariable(name: "arg", arg: 2, scope: !3214, file: !100, line: 1052, type: !6)
!3220 = !DILocalVariable(name: "argsize", arg: 3, scope: !3214, file: !100, line: 1052, type: !94)
!3221 = !DILocation(line: 1052, column: 18, scope: !3214)
!3222 = !DILocation(line: 1052, column: 33, scope: !3214)
!3223 = !DILocation(line: 1052, column: 45, scope: !3214)
!3224 = !DILocation(line: 1054, column: 10, scope: !3214)
!3225 = !DILocation(line: 1054, column: 3, scope: !3214)
!3226 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !3227, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!6, !6, !94}
!3229 = !{!3230, !3231}
!3230 = !DILocalVariable(name: "arg", arg: 1, scope: !3226, file: !100, line: 1058, type: !6)
!3231 = !DILocalVariable(name: "argsize", arg: 2, scope: !3226, file: !100, line: 1058, type: !94)
!3232 = !DILocation(line: 1058, column: 24, scope: !3226)
!3233 = !DILocation(line: 1058, column: 36, scope: !3226)
!3234 = !DILocation(line: 1052, column: 18, scope: !3214, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 1060, column: 10, scope: !3226)
!3236 = !DILocation(line: 1052, column: 33, scope: !3214, inlinedAt: !3235)
!3237 = !DILocation(line: 1052, column: 45, scope: !3214, inlinedAt: !3235)
!3238 = !DILocation(line: 1054, column: 10, scope: !3214, inlinedAt: !3235)
!3239 = !DILocation(line: 1060, column: 3, scope: !3226)
!3240 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !3241, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!6, !25, !6}
!3243 = !{!3244, !3245}
!3244 = !DILocalVariable(name: "n", arg: 1, scope: !3240, file: !100, line: 1064, type: !25)
!3245 = !DILocalVariable(name: "arg", arg: 2, scope: !3240, file: !100, line: 1064, type: !6)
!3246 = !DILocation(line: 1064, column: 14, scope: !3240)
!3247 = !DILocation(line: 1064, column: 29, scope: !3240)
!3248 = !DILocation(line: 1052, column: 18, scope: !3214, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 1066, column: 10, scope: !3240)
!3250 = !DILocation(line: 1052, column: 33, scope: !3214, inlinedAt: !3249)
!3251 = !DILocation(line: 1052, column: 45, scope: !3214, inlinedAt: !3249)
!3252 = !DILocation(line: 1054, column: 10, scope: !3214, inlinedAt: !3249)
!3253 = !DILocation(line: 1066, column: 3, scope: !3240)
!3254 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !1162, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !3255)
!3255 = !{!3256}
!3256 = !DILocalVariable(name: "arg", arg: 1, scope: !3254, file: !100, line: 1070, type: !6)
!3257 = !DILocation(line: 1070, column: 20, scope: !3254)
!3258 = !DILocation(line: 1064, column: 14, scope: !3240, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 1072, column: 10, scope: !3254)
!3260 = !DILocation(line: 1064, column: 29, scope: !3240, inlinedAt: !3259)
!3261 = !DILocation(line: 1052, column: 18, scope: !3214, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 1066, column: 10, scope: !3240, inlinedAt: !3259)
!3263 = !DILocation(line: 1052, column: 33, scope: !3214, inlinedAt: !3262)
!3264 = !DILocation(line: 1052, column: 45, scope: !3214, inlinedAt: !3262)
!3265 = !DILocation(line: 1054, column: 10, scope: !3214, inlinedAt: !3262)
!3266 = !DILocation(line: 1072, column: 3, scope: !3254)
!3267 = distinct !DISubprogram(name: "dup_safer", scope: !3268, file: !3268, line: 31, type: !1014, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3269)
!3268 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3269 = !{!3270}
!3270 = !DILocalVariable(name: "fd", arg: 1, scope: !3267, file: !3268, line: 31, type: !25)
!3271 = !DILocation(line: 31, column: 16, scope: !3267)
!3272 = !DILocation(line: 33, column: 10, scope: !3267)
!3273 = !DILocation(line: 33, column: 3, scope: !3267)
!3274 = distinct !DISubprogram(name: "version_etc_arn", scope: !603, file: !603, line: 62, type: !3275, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !3318)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{null, !3277, !6, !6, !6, !3317, !94}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 49, baseType: !3279)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 241, size: 1728, elements: !3280)
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3279, file: !902, line: 242, baseType: !25, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3279, file: !902, line: 247, baseType: !50, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3279, file: !902, line: 248, baseType: !50, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3279, file: !902, line: 249, baseType: !50, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3279, file: !902, line: 250, baseType: !50, size: 64, offset: 256)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3279, file: !902, line: 251, baseType: !50, size: 64, offset: 320)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3279, file: !902, line: 252, baseType: !50, size: 64, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3279, file: !902, line: 253, baseType: !50, size: 64, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3279, file: !902, line: 254, baseType: !50, size: 64, offset: 512)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3279, file: !902, line: 256, baseType: !50, size: 64, offset: 576)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3279, file: !902, line: 257, baseType: !50, size: 64, offset: 640)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3279, file: !902, line: 258, baseType: !50, size: 64, offset: 704)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3279, file: !902, line: 260, baseType: !3294, size: 64, offset: 768)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !902, line: 156, size: 192, elements: !3296)
!3296 = !{!3297, !3298, !3300}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3295, file: !902, line: 157, baseType: !3294, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3295, file: !902, line: 158, baseType: !3299, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3295, file: !902, line: 162, baseType: !25, size: 32, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3279, file: !902, line: 262, baseType: !3299, size: 64, offset: 832)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3279, file: !902, line: 264, baseType: !25, size: 32, offset: 896)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3279, file: !902, line: 268, baseType: !25, size: 32, offset: 928)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3279, file: !902, line: 270, baseType: !928, size: 64, offset: 960)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3279, file: !902, line: 274, baseType: !93, size: 16, offset: 1024)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3279, file: !902, line: 275, baseType: !932, size: 8, offset: 1040)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3279, file: !902, line: 276, baseType: !934, size: 8, offset: 1048)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3279, file: !902, line: 280, baseType: !936, size: 64, offset: 1088)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3279, file: !902, line: 289, baseType: !939, size: 64, offset: 1152)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3279, file: !902, line: 297, baseType: !49, size: 64, offset: 1216)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3279, file: !902, line: 298, baseType: !49, size: 64, offset: 1280)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3279, file: !902, line: 299, baseType: !49, size: 64, offset: 1344)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3279, file: !902, line: 300, baseType: !49, size: 64, offset: 1408)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3279, file: !902, line: 302, baseType: !94, size: 64, offset: 1472)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3279, file: !902, line: 303, baseType: !25, size: 32, offset: 1536)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3279, file: !902, line: 305, baseType: !947, size: 160, offset: 1568)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324}
!3319 = !DILocalVariable(name: "stream", arg: 1, scope: !3274, file: !603, line: 62, type: !3277)
!3320 = !DILocalVariable(name: "command_name", arg: 2, scope: !3274, file: !603, line: 63, type: !6)
!3321 = !DILocalVariable(name: "package", arg: 3, scope: !3274, file: !603, line: 63, type: !6)
!3322 = !DILocalVariable(name: "version", arg: 4, scope: !3274, file: !603, line: 64, type: !6)
!3323 = !DILocalVariable(name: "authors", arg: 5, scope: !3274, file: !603, line: 65, type: !3317)
!3324 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3274, file: !603, line: 65, type: !94)
!3325 = !DILocation(line: 62, column: 24, scope: !3274)
!3326 = !DILocation(line: 63, column: 30, scope: !3274)
!3327 = !DILocation(line: 63, column: 56, scope: !3274)
!3328 = !DILocation(line: 64, column: 30, scope: !3274)
!3329 = !DILocation(line: 65, column: 39, scope: !3274)
!3330 = !DILocation(line: 65, column: 55, scope: !3274)
!3331 = !DILocation(line: 67, column: 7, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3274, file: !603, line: 67, column: 7)
!3333 = !DILocation(line: 67, column: 7, scope: !3274)
!3334 = !DILocation(line: 68, column: 5, scope: !3332)
!3335 = !DILocation(line: 70, column: 5, scope: !3332)
!3336 = !DILocation(line: 84, column: 3, scope: !3274)
!3337 = !DILocation(line: 84, column: 3, scope: !3338)
!3338 = !DILexicalBlockFile(scope: !3274, file: !603, discriminator: 1)
!3339 = !DILocation(line: 86, column: 3, scope: !3274)
!3340 = !DILocation(line: 86, column: 3, scope: !3338)
!3341 = !DILocation(line: 95, column: 3, scope: !3274)
!3342 = !DILocation(line: 99, column: 7, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3274, file: !603, line: 96, column: 5)
!3344 = !DILocation(line: 102, column: 7, scope: !3343)
!3345 = !DILocation(line: 102, column: 7, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3343, file: !603, discriminator: 1)
!3347 = !DILocation(line: 103, column: 7, scope: !3343)
!3348 = !DILocation(line: 106, column: 7, scope: !3343)
!3349 = !DILocation(line: 106, column: 7, scope: !3346)
!3350 = !DILocation(line: 107, column: 7, scope: !3343)
!3351 = !DILocation(line: 110, column: 7, scope: !3343)
!3352 = !DILocation(line: 110, column: 7, scope: !3346)
!3353 = !DILocation(line: 112, column: 7, scope: !3343)
!3354 = !DILocation(line: 117, column: 7, scope: !3343)
!3355 = !DILocation(line: 117, column: 7, scope: !3346)
!3356 = !DILocation(line: 119, column: 7, scope: !3343)
!3357 = !DILocation(line: 124, column: 7, scope: !3343)
!3358 = !DILocation(line: 124, column: 7, scope: !3346)
!3359 = !DILocation(line: 126, column: 7, scope: !3343)
!3360 = !DILocation(line: 131, column: 7, scope: !3343)
!3361 = !DILocation(line: 131, column: 7, scope: !3346)
!3362 = !DILocation(line: 134, column: 7, scope: !3343)
!3363 = !DILocation(line: 139, column: 7, scope: !3343)
!3364 = !DILocation(line: 139, column: 7, scope: !3346)
!3365 = !DILocation(line: 142, column: 7, scope: !3343)
!3366 = !DILocation(line: 147, column: 7, scope: !3343)
!3367 = !DILocation(line: 147, column: 7, scope: !3346)
!3368 = !DILocation(line: 151, column: 7, scope: !3343)
!3369 = !DILocation(line: 156, column: 7, scope: !3343)
!3370 = !DILocation(line: 156, column: 7, scope: !3346)
!3371 = !DILocation(line: 160, column: 7, scope: !3343)
!3372 = !DILocation(line: 167, column: 7, scope: !3343)
!3373 = !DILocation(line: 167, column: 7, scope: !3346)
!3374 = !DILocation(line: 171, column: 7, scope: !3343)
!3375 = !DILocation(line: 173, column: 1, scope: !3274)
!3376 = distinct !DISubprogram(name: "version_etc_ar", scope: !603, file: !603, line: 180, type: !3377, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !3277, !6, !6, !6, !3317}
!3379 = !{!3380, !3381, !3382, !3383, !3384, !3385}
!3380 = !DILocalVariable(name: "stream", arg: 1, scope: !3376, file: !603, line: 180, type: !3277)
!3381 = !DILocalVariable(name: "command_name", arg: 2, scope: !3376, file: !603, line: 181, type: !6)
!3382 = !DILocalVariable(name: "package", arg: 3, scope: !3376, file: !603, line: 181, type: !6)
!3383 = !DILocalVariable(name: "version", arg: 4, scope: !3376, file: !603, line: 182, type: !6)
!3384 = !DILocalVariable(name: "authors", arg: 5, scope: !3376, file: !603, line: 182, type: !3317)
!3385 = !DILocalVariable(name: "n_authors", scope: !3376, file: !603, line: 184, type: !94)
!3386 = !DILocation(line: 180, column: 23, scope: !3376)
!3387 = !DILocation(line: 181, column: 29, scope: !3376)
!3388 = !DILocation(line: 181, column: 55, scope: !3376)
!3389 = !DILocation(line: 182, column: 29, scope: !3376)
!3390 = !DILocation(line: 182, column: 59, scope: !3376)
!3391 = !DILocation(line: 184, column: 10, scope: !3376)
!3392 = !DILocation(line: 186, column: 8, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3376, file: !603, line: 186, column: 3)
!3394 = !DILocation(line: 186, column: 23, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3396, file: !603, discriminator: 1)
!3396 = distinct !DILexicalBlock(scope: !3393, file: !603, line: 186, column: 3)
!3397 = !DILocation(line: 186, column: 3, scope: !3398)
!3398 = !DILexicalBlockFile(scope: !3393, file: !603, discriminator: 1)
!3399 = !DILocation(line: 186, column: 52, scope: !3400)
!3400 = !DILexicalBlockFile(scope: !3396, file: !603, discriminator: 3)
!3401 = distinct !{!3401, !3402, !3403}
!3402 = !DILocation(line: 186, column: 3, scope: !3393)
!3403 = !DILocation(line: 187, column: 5, scope: !3393)
!3404 = !DILocation(line: 188, column: 3, scope: !3376)
!3405 = !DILocation(line: 189, column: 1, scope: !3376)
!3406 = distinct !DISubprogram(name: "version_etc_va", scope: !603, file: !603, line: 196, type: !3407, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !3416)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3277, !6, !6, !6, !3409}
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !600, line: 189, size: 192, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3410, file: !600, line: 189, baseType: !113, size: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3410, file: !600, line: 189, baseType: !113, size: 32, offset: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3410, file: !600, line: 189, baseType: !49, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3410, file: !600, line: 189, baseType: !49, size: 64, offset: 128)
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3422, !3423}
!3417 = !DILocalVariable(name: "stream", arg: 1, scope: !3406, file: !603, line: 196, type: !3277)
!3418 = !DILocalVariable(name: "command_name", arg: 2, scope: !3406, file: !603, line: 197, type: !6)
!3419 = !DILocalVariable(name: "package", arg: 3, scope: !3406, file: !603, line: 197, type: !6)
!3420 = !DILocalVariable(name: "version", arg: 4, scope: !3406, file: !603, line: 198, type: !6)
!3421 = !DILocalVariable(name: "authors", arg: 5, scope: !3406, file: !603, line: 198, type: !3409)
!3422 = !DILocalVariable(name: "n_authors", scope: !3406, file: !603, line: 200, type: !94)
!3423 = !DILocalVariable(name: "authtab", scope: !3406, file: !603, line: 201, type: !3424)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!3425 = !DILocation(line: 196, column: 23, scope: !3406)
!3426 = !DILocation(line: 197, column: 29, scope: !3406)
!3427 = !DILocation(line: 197, column: 55, scope: !3406)
!3428 = !DILocation(line: 198, column: 29, scope: !3406)
!3429 = !DILocation(line: 198, column: 46, scope: !3406)
!3430 = !DILocation(line: 201, column: 3, scope: !3406)
!3431 = !DILocation(line: 201, column: 15, scope: !3406)
!3432 = !DILocation(line: 200, column: 10, scope: !3406)
!3433 = !DILocation(line: 205, column: 35, scope: !3434)
!3434 = !DILexicalBlockFile(scope: !3435, file: !603, discriminator: 1)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !603, line: 203, column: 3)
!3436 = distinct !DILexicalBlock(scope: !3406, file: !603, line: 203, column: 3)
!3437 = !DILocation(line: 205, column: 35, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !3435, file: !603, discriminator: 2)
!3439 = !DILocation(line: 205, column: 35, scope: !3440)
!3440 = !DILexicalBlockFile(scope: !3435, file: !603, discriminator: 3)
!3441 = !DILocation(line: 205, column: 35, scope: !3442)
!3442 = !DILexicalBlockFile(scope: !3435, file: !603, discriminator: 4)
!3443 = !DILocation(line: 205, column: 14, scope: !3442)
!3444 = !DILocation(line: 205, column: 33, scope: !3442)
!3445 = !DILocation(line: 205, column: 67, scope: !3442)
!3446 = !DILocation(line: 203, column: 3, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !3436, file: !603, discriminator: 1)
!3448 = !DILocation(line: 208, column: 3, scope: !3406)
!3449 = !DILocation(line: 210, column: 1, scope: !3406)
!3450 = distinct !DISubprogram(name: "version_etc", scope: !603, file: !603, line: 227, type: !3451, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{null, !3277, !6, !6, !6, null}
!3453 = !{!3454, !3455, !3456, !3457, !3458}
!3454 = !DILocalVariable(name: "stream", arg: 1, scope: !3450, file: !603, line: 227, type: !3277)
!3455 = !DILocalVariable(name: "command_name", arg: 2, scope: !3450, file: !603, line: 228, type: !6)
!3456 = !DILocalVariable(name: "package", arg: 3, scope: !3450, file: !603, line: 228, type: !6)
!3457 = !DILocalVariable(name: "version", arg: 4, scope: !3450, file: !603, line: 229, type: !6)
!3458 = !DILocalVariable(name: "authors", scope: !3450, file: !603, line: 231, type: !3459)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !900, line: 80, baseType: !3460)
!3460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !163, line: 50, baseType: !3461)
!3461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !600, line: 231, baseType: !3462)
!3462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3410, size: 192, elements: !172)
!3463 = !DILocation(line: 227, column: 20, scope: !3450)
!3464 = !DILocation(line: 228, column: 26, scope: !3450)
!3465 = !DILocation(line: 228, column: 52, scope: !3450)
!3466 = !DILocation(line: 229, column: 26, scope: !3450)
!3467 = !DILocation(line: 231, column: 3, scope: !3450)
!3468 = !DILocation(line: 231, column: 11, scope: !3450)
!3469 = !DILocation(line: 233, column: 3, scope: !3450)
!3470 = !DILocation(line: 234, column: 3, scope: !3450)
!3471 = !DILocation(line: 235, column: 3, scope: !3450)
!3472 = !DILocation(line: 236, column: 1, scope: !3450)
!3473 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !603, file: !603, line: 239, type: !1038, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !4)
!3474 = !DILocation(line: 245, column: 3, scope: !3473)
!3475 = !DILocation(line: 245, column: 3, scope: !3476)
!3476 = !DILexicalBlockFile(scope: !3473, file: !603, discriminator: 1)
!3477 = !DILocation(line: 251, column: 3, scope: !3473)
!3478 = !DILocation(line: 251, column: 3, scope: !3476)
!3479 = !DILocation(line: 256, column: 3, scope: !3473)
!3480 = !DILocation(line: 256, column: 3, scope: !3476)
!3481 = !DILocation(line: 258, column: 1, scope: !3473)
!3482 = distinct !DISubprogram(name: "xnmalloc", scope: !610, file: !610, line: 105, type: !3483, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!49, !94, !94}
!3485 = !{!3486, !3487}
!3486 = !DILocalVariable(name: "n", arg: 1, scope: !3482, file: !610, line: 105, type: !94)
!3487 = !DILocalVariable(name: "s", arg: 2, scope: !3482, file: !610, line: 105, type: !94)
!3488 = !DILocation(line: 105, column: 18, scope: !3482)
!3489 = !DILocation(line: 105, column: 28, scope: !3482)
!3490 = !DILocation(line: 107, column: 7, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3482, file: !610, line: 107, column: 7)
!3492 = !DILocation(line: 107, column: 7, scope: !3482)
!3493 = !DILocation(line: 108, column: 5, scope: !3491)
!3494 = !DILocation(line: 109, column: 21, scope: !3482)
!3495 = !DILocalVariable(name: "n", arg: 1, scope: !3496, file: !3497, line: 39, type: !94)
!3496 = distinct !DISubprogram(name: "xmalloc", scope: !3497, file: !3497, line: 39, type: !3498, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3500)
!3497 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!49, !94}
!3500 = !{!3495, !3501}
!3501 = !DILocalVariable(name: "p", scope: !3496, file: !3497, line: 41, type: !49)
!3502 = !DILocation(line: 39, column: 17, scope: !3496, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 109, column: 10, scope: !3482)
!3504 = !DILocation(line: 41, column: 13, scope: !3496, inlinedAt: !3503)
!3505 = !DILocation(line: 41, column: 9, scope: !3496, inlinedAt: !3503)
!3506 = !DILocation(line: 42, column: 8, scope: !3507, inlinedAt: !3503)
!3507 = distinct !DILexicalBlock(scope: !3496, file: !3497, line: 42, column: 7)
!3508 = !DILocation(line: 42, column: 15, scope: !3509, inlinedAt: !3503)
!3509 = !DILexicalBlockFile(scope: !3507, file: !3497, discriminator: 1)
!3510 = !DILocation(line: 42, column: 10, scope: !3507, inlinedAt: !3503)
!3511 = !DILocation(line: 43, column: 5, scope: !3507, inlinedAt: !3503)
!3512 = !DILocation(line: 109, column: 3, scope: !3482)
!3513 = !DILocation(line: 39, column: 17, scope: !3496)
!3514 = !DILocation(line: 41, column: 13, scope: !3496)
!3515 = !DILocation(line: 41, column: 9, scope: !3496)
!3516 = !DILocation(line: 42, column: 8, scope: !3507)
!3517 = !DILocation(line: 42, column: 15, scope: !3509)
!3518 = !DILocation(line: 42, column: 10, scope: !3507)
!3519 = !DILocation(line: 43, column: 5, scope: !3507)
!3520 = !DILocation(line: 44, column: 3, scope: !3496)
!3521 = distinct !DISubprogram(name: "xnrealloc", scope: !610, file: !610, line: 118, type: !3522, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3524)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!49, !49, !94, !94}
!3524 = !{!3525, !3526, !3527}
!3525 = !DILocalVariable(name: "p", arg: 1, scope: !3521, file: !610, line: 118, type: !49)
!3526 = !DILocalVariable(name: "n", arg: 2, scope: !3521, file: !610, line: 118, type: !94)
!3527 = !DILocalVariable(name: "s", arg: 3, scope: !3521, file: !610, line: 118, type: !94)
!3528 = !DILocation(line: 118, column: 18, scope: !3521)
!3529 = !DILocation(line: 118, column: 28, scope: !3521)
!3530 = !DILocation(line: 118, column: 38, scope: !3521)
!3531 = !DILocation(line: 120, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3521, file: !610, line: 120, column: 7)
!3533 = !DILocation(line: 120, column: 7, scope: !3521)
!3534 = !DILocation(line: 121, column: 5, scope: !3532)
!3535 = !DILocation(line: 122, column: 25, scope: !3521)
!3536 = !DILocalVariable(name: "p", arg: 1, scope: !3537, file: !3497, line: 51, type: !49)
!3537 = distinct !DISubprogram(name: "xrealloc", scope: !3497, file: !3497, line: 51, type: !3538, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!49, !49, !94}
!3540 = !{!3536, !3541}
!3541 = !DILocalVariable(name: "n", arg: 2, scope: !3537, file: !3497, line: 51, type: !94)
!3542 = !DILocation(line: 51, column: 17, scope: !3537, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 122, column: 10, scope: !3521)
!3544 = !DILocation(line: 51, column: 27, scope: !3537, inlinedAt: !3543)
!3545 = !DILocation(line: 53, column: 8, scope: !3546, inlinedAt: !3543)
!3546 = distinct !DILexicalBlock(scope: !3537, file: !3497, line: 53, column: 7)
!3547 = !DILocation(line: 53, column: 13, scope: !3548, inlinedAt: !3543)
!3548 = !DILexicalBlockFile(scope: !3546, file: !3497, discriminator: 1)
!3549 = !DILocation(line: 53, column: 10, scope: !3546, inlinedAt: !3543)
!3550 = !DILocation(line: 57, column: 7, scope: !3551, inlinedAt: !3543)
!3551 = distinct !DILexicalBlock(scope: !3546, file: !3497, line: 54, column: 5)
!3552 = !DILocation(line: 58, column: 7, scope: !3551, inlinedAt: !3543)
!3553 = !DILocation(line: 61, column: 7, scope: !3537, inlinedAt: !3543)
!3554 = !DILocation(line: 62, column: 8, scope: !3555, inlinedAt: !3543)
!3555 = distinct !DILexicalBlock(scope: !3537, file: !3497, line: 62, column: 7)
!3556 = !DILocation(line: 62, column: 13, scope: !3557, inlinedAt: !3543)
!3557 = !DILexicalBlockFile(scope: !3555, file: !3497, discriminator: 1)
!3558 = !DILocation(line: 62, column: 10, scope: !3555, inlinedAt: !3543)
!3559 = !DILocation(line: 63, column: 5, scope: !3555, inlinedAt: !3543)
!3560 = !DILocation(line: 122, column: 3, scope: !3521)
!3561 = !DILocation(line: 51, column: 17, scope: !3537)
!3562 = !DILocation(line: 51, column: 27, scope: !3537)
!3563 = !DILocation(line: 53, column: 8, scope: !3546)
!3564 = !DILocation(line: 53, column: 13, scope: !3548)
!3565 = !DILocation(line: 53, column: 10, scope: !3546)
!3566 = !DILocation(line: 57, column: 7, scope: !3551)
!3567 = !DILocation(line: 58, column: 7, scope: !3551)
!3568 = !DILocation(line: 61, column: 7, scope: !3537)
!3569 = !DILocation(line: 62, column: 8, scope: !3555)
!3570 = !DILocation(line: 62, column: 13, scope: !3557)
!3571 = !DILocation(line: 62, column: 10, scope: !3555)
!3572 = !DILocation(line: 63, column: 5, scope: !3555)
!3573 = !DILocation(line: 65, column: 1, scope: !3537)
!3574 = !DILocation(line: 180, column: 19, scope: !611)
!3575 = !DILocation(line: 180, column: 30, scope: !611)
!3576 = !DILocation(line: 180, column: 41, scope: !611)
!3577 = !DILocation(line: 182, column: 14, scope: !611)
!3578 = !DILocation(line: 182, column: 10, scope: !611)
!3579 = !DILocation(line: 184, column: 9, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !611, file: !610, line: 184, column: 7)
!3581 = !DILocation(line: 184, column: 7, scope: !611)
!3582 = !DILocation(line: 186, column: 13, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !610, line: 186, column: 11)
!3584 = distinct !DILexicalBlock(scope: !3580, file: !610, line: 185, column: 5)
!3585 = !DILocation(line: 186, column: 11, scope: !3584)
!3586 = !DILocation(line: 194, column: 30, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3583, file: !610, line: 187, column: 9)
!3588 = !DILocation(line: 195, column: 16, scope: !3587)
!3589 = !DILocation(line: 195, column: 13, scope: !3587)
!3590 = !DILocation(line: 196, column: 9, scope: !3587)
!3591 = !DILocation(line: 204, column: 69, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !610, line: 204, column: 11)
!3593 = distinct !DILexicalBlock(scope: !3580, file: !610, line: 199, column: 5)
!3594 = !DILocation(line: 205, column: 11, scope: !3592)
!3595 = !DILocation(line: 204, column: 11, scope: !3593)
!3596 = !DILocation(line: 206, column: 9, scope: !3592)
!3597 = !DILocation(line: 210, column: 7, scope: !611)
!3598 = !DILocation(line: 211, column: 25, scope: !611)
!3599 = !DILocation(line: 51, column: 17, scope: !3537, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 211, column: 10, scope: !611)
!3601 = !DILocation(line: 51, column: 27, scope: !3537, inlinedAt: !3600)
!3602 = !DILocation(line: 53, column: 10, scope: !3546, inlinedAt: !3600)
!3603 = !DILocation(line: 207, column: 14, scope: !3593)
!3604 = !DILocation(line: 207, column: 18, scope: !3593)
!3605 = !DILocation(line: 207, column: 9, scope: !3593)
!3606 = !DILocation(line: 53, column: 8, scope: !3546, inlinedAt: !3600)
!3607 = !DILocation(line: 57, column: 7, scope: !3551, inlinedAt: !3600)
!3608 = !DILocation(line: 58, column: 7, scope: !3551, inlinedAt: !3600)
!3609 = !DILocation(line: 61, column: 7, scope: !3537, inlinedAt: !3600)
!3610 = !DILocation(line: 62, column: 8, scope: !3555, inlinedAt: !3600)
!3611 = !DILocation(line: 62, column: 13, scope: !3557, inlinedAt: !3600)
!3612 = !DILocation(line: 62, column: 10, scope: !3555, inlinedAt: !3600)
!3613 = !DILocation(line: 63, column: 5, scope: !3555, inlinedAt: !3600)
!3614 = !DILocation(line: 211, column: 3, scope: !611)
!3615 = distinct !DISubprogram(name: "xcharalloc", scope: !610, file: !610, line: 220, type: !2542, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3616)
!3616 = !{!3617}
!3617 = !DILocalVariable(name: "n", arg: 1, scope: !3615, file: !610, line: 220, type: !94)
!3618 = !DILocation(line: 220, column: 20, scope: !3615)
!3619 = !DILocation(line: 39, column: 17, scope: !3496, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 222, column: 10, scope: !3615)
!3621 = !DILocation(line: 41, column: 13, scope: !3496, inlinedAt: !3620)
!3622 = !DILocation(line: 41, column: 9, scope: !3496, inlinedAt: !3620)
!3623 = !DILocation(line: 42, column: 8, scope: !3507, inlinedAt: !3620)
!3624 = !DILocation(line: 42, column: 15, scope: !3509, inlinedAt: !3620)
!3625 = !DILocation(line: 42, column: 10, scope: !3507, inlinedAt: !3620)
!3626 = !DILocation(line: 43, column: 5, scope: !3507, inlinedAt: !3620)
!3627 = !DILocation(line: 222, column: 3, scope: !3615)
!3628 = distinct !DISubprogram(name: "x2realloc", scope: !3497, file: !3497, line: 74, type: !3629, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!49, !49, !614}
!3631 = !{!3632, !3633}
!3632 = !DILocalVariable(name: "p", arg: 1, scope: !3628, file: !3497, line: 74, type: !49)
!3633 = !DILocalVariable(name: "pn", arg: 2, scope: !3628, file: !3497, line: 74, type: !614)
!3634 = !DILocation(line: 74, column: 18, scope: !3628)
!3635 = !DILocation(line: 74, column: 29, scope: !3628)
!3636 = !DILocation(line: 180, column: 19, scope: !611, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 76, column: 10, scope: !3628)
!3638 = !DILocation(line: 180, column: 30, scope: !611, inlinedAt: !3637)
!3639 = !DILocation(line: 180, column: 41, scope: !611, inlinedAt: !3637)
!3640 = !DILocation(line: 182, column: 14, scope: !611, inlinedAt: !3637)
!3641 = !DILocation(line: 182, column: 10, scope: !611, inlinedAt: !3637)
!3642 = !DILocation(line: 184, column: 9, scope: !3580, inlinedAt: !3637)
!3643 = !DILocation(line: 184, column: 7, scope: !611, inlinedAt: !3637)
!3644 = !DILocation(line: 186, column: 13, scope: !3583, inlinedAt: !3637)
!3645 = !DILocation(line: 186, column: 11, scope: !3584, inlinedAt: !3637)
!3646 = !DILocation(line: 210, column: 7, scope: !611, inlinedAt: !3637)
!3647 = !DILocation(line: 51, column: 17, scope: !3537, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 211, column: 10, scope: !611, inlinedAt: !3637)
!3649 = !DILocation(line: 51, column: 27, scope: !3537, inlinedAt: !3648)
!3650 = !DILocation(line: 53, column: 10, scope: !3546, inlinedAt: !3648)
!3651 = !DILocation(line: 205, column: 11, scope: !3592, inlinedAt: !3637)
!3652 = !DILocation(line: 204, column: 11, scope: !3593, inlinedAt: !3637)
!3653 = !DILocation(line: 206, column: 9, scope: !3592, inlinedAt: !3637)
!3654 = !DILocation(line: 207, column: 14, scope: !3593, inlinedAt: !3637)
!3655 = !DILocation(line: 207, column: 18, scope: !3593, inlinedAt: !3637)
!3656 = !DILocation(line: 207, column: 9, scope: !3593, inlinedAt: !3637)
!3657 = !DILocation(line: 53, column: 8, scope: !3546, inlinedAt: !3648)
!3658 = !DILocation(line: 57, column: 7, scope: !3551, inlinedAt: !3648)
!3659 = !DILocation(line: 58, column: 7, scope: !3551, inlinedAt: !3648)
!3660 = !DILocation(line: 61, column: 7, scope: !3537, inlinedAt: !3648)
!3661 = !DILocation(line: 62, column: 8, scope: !3555, inlinedAt: !3648)
!3662 = !DILocation(line: 62, column: 13, scope: !3557, inlinedAt: !3648)
!3663 = !DILocation(line: 62, column: 10, scope: !3555, inlinedAt: !3648)
!3664 = !DILocation(line: 63, column: 5, scope: !3555, inlinedAt: !3648)
!3665 = !DILocation(line: 76, column: 3, scope: !3628)
!3666 = distinct !DISubprogram(name: "xzalloc", scope: !3497, file: !3497, line: 84, type: !3498, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3667)
!3667 = !{!3668}
!3668 = !DILocalVariable(name: "s", arg: 1, scope: !3666, file: !3497, line: 84, type: !94)
!3669 = !DILocation(line: 84, column: 17, scope: !3666)
!3670 = !DILocation(line: 39, column: 17, scope: !3496, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 86, column: 18, scope: !3666)
!3672 = !DILocation(line: 41, column: 13, scope: !3496, inlinedAt: !3671)
!3673 = !DILocation(line: 41, column: 9, scope: !3496, inlinedAt: !3671)
!3674 = !DILocation(line: 42, column: 8, scope: !3507, inlinedAt: !3671)
!3675 = !DILocation(line: 42, column: 15, scope: !3509, inlinedAt: !3671)
!3676 = !DILocation(line: 42, column: 10, scope: !3507, inlinedAt: !3671)
!3677 = !DILocation(line: 43, column: 5, scope: !3507, inlinedAt: !3671)
!3678 = !DILocation(line: 86, column: 10, scope: !3666)
!3679 = !DILocation(line: 86, column: 3, scope: !3666)
!3680 = distinct !DISubprogram(name: "xcalloc", scope: !3497, file: !3497, line: 93, type: !3483, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3681)
!3681 = !{!3682, !3683, !3684}
!3682 = !DILocalVariable(name: "n", arg: 1, scope: !3680, file: !3497, line: 93, type: !94)
!3683 = !DILocalVariable(name: "s", arg: 2, scope: !3680, file: !3497, line: 93, type: !94)
!3684 = !DILocalVariable(name: "p", scope: !3680, file: !3497, line: 95, type: !49)
!3685 = !DILocation(line: 93, column: 17, scope: !3680)
!3686 = !DILocation(line: 93, column: 27, scope: !3680)
!3687 = !DILocation(line: 100, column: 7, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3680, file: !3497, line: 100, column: 7)
!3689 = !DILocation(line: 101, column: 7, scope: !3688)
!3690 = !DILocation(line: 101, column: 18, scope: !3691)
!3691 = !DILexicalBlockFile(scope: !3688, file: !3497, discriminator: 1)
!3692 = !DILocation(line: 95, column: 9, scope: !3680)
!3693 = !DILocation(line: 101, column: 16, scope: !3691)
!3694 = !DILocation(line: 100, column: 7, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !3680, file: !3497, discriminator: 1)
!3696 = !DILocation(line: 102, column: 5, scope: !3688)
!3697 = !DILocation(line: 103, column: 3, scope: !3680)
!3698 = distinct !DISubprogram(name: "xmemdup", scope: !3497, file: !3497, line: 111, type: !3699, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!49, !554, !94}
!3701 = !{!3702, !3703}
!3702 = !DILocalVariable(name: "p", arg: 1, scope: !3698, file: !3497, line: 111, type: !554)
!3703 = !DILocalVariable(name: "s", arg: 2, scope: !3698, file: !3497, line: 111, type: !94)
!3704 = !DILocation(line: 111, column: 22, scope: !3698)
!3705 = !DILocation(line: 111, column: 32, scope: !3698)
!3706 = !DILocation(line: 39, column: 17, scope: !3496, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 113, column: 18, scope: !3698)
!3708 = !DILocation(line: 41, column: 13, scope: !3496, inlinedAt: !3707)
!3709 = !DILocation(line: 41, column: 9, scope: !3496, inlinedAt: !3707)
!3710 = !DILocation(line: 42, column: 8, scope: !3507, inlinedAt: !3707)
!3711 = !DILocation(line: 42, column: 15, scope: !3509, inlinedAt: !3707)
!3712 = !DILocation(line: 42, column: 10, scope: !3507, inlinedAt: !3707)
!3713 = !DILocation(line: 43, column: 5, scope: !3507, inlinedAt: !3707)
!3714 = !DILocation(line: 113, column: 10, scope: !3698)
!3715 = !DILocation(line: 113, column: 3, scope: !3698)
!3716 = distinct !DISubprogram(name: "xstrdup", scope: !3497, file: !3497, line: 119, type: !2748, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !3717)
!3717 = !{!3718}
!3718 = !DILocalVariable(name: "string", arg: 1, scope: !3716, file: !3497, line: 119, type: !6)
!3719 = !DILocation(line: 119, column: 22, scope: !3716)
!3720 = !DILocation(line: 121, column: 27, scope: !3716)
!3721 = !DILocation(line: 121, column: 43, scope: !3716)
!3722 = !DILocation(line: 111, column: 22, scope: !3698, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 121, column: 10, scope: !3724)
!3724 = !DILexicalBlockFile(scope: !3716, file: !3497, discriminator: 1)
!3725 = !DILocation(line: 111, column: 32, scope: !3698, inlinedAt: !3723)
!3726 = !DILocation(line: 39, column: 17, scope: !3496, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 113, column: 18, scope: !3698, inlinedAt: !3723)
!3728 = !DILocation(line: 41, column: 13, scope: !3496, inlinedAt: !3727)
!3729 = !DILocation(line: 41, column: 9, scope: !3496, inlinedAt: !3727)
!3730 = !DILocation(line: 42, column: 8, scope: !3507, inlinedAt: !3727)
!3731 = !DILocation(line: 42, column: 15, scope: !3509, inlinedAt: !3727)
!3732 = !DILocation(line: 42, column: 10, scope: !3507, inlinedAt: !3727)
!3733 = !DILocation(line: 43, column: 5, scope: !3507, inlinedAt: !3727)
!3734 = !DILocation(line: 113, column: 10, scope: !3698, inlinedAt: !3723)
!3735 = !DILocation(line: 121, column: 3, scope: !3716)
!3736 = distinct !DISubprogram(name: "xalloc_die", scope: !3737, file: !3737, line: 32, type: !1038, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !623, variables: !4)
!3737 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3738 = !DILocation(line: 34, column: 10, scope: !3736)
!3739 = !DILocation(line: 34, column: 33, scope: !3736)
!3740 = !DILocation(line: 34, column: 3, scope: !3741)
!3741 = !DILexicalBlockFile(scope: !3736, file: !3737, discriminator: 1)
!3742 = !DILocation(line: 40, column: 3, scope: !3736)
!3743 = distinct !DISubprogram(name: "rpl_calloc", scope: !3744, file: !3744, line: 42, type: !3483, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !625, variables: !3745)
!3744 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3745 = !{!3746, !3747, !3748, !3749}
!3746 = !DILocalVariable(name: "n", arg: 1, scope: !3743, file: !3744, line: 42, type: !94)
!3747 = !DILocalVariable(name: "s", arg: 2, scope: !3743, file: !3744, line: 42, type: !94)
!3748 = !DILocalVariable(name: "result", scope: !3743, file: !3744, line: 44, type: !49)
!3749 = !DILocalVariable(name: "bytes", scope: !3750, file: !3744, line: 56, type: !94)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !3744, line: 53, column: 5)
!3751 = distinct !DILexicalBlock(scope: !3743, file: !3744, line: 47, column: 7)
!3752 = !DILocation(line: 42, column: 20, scope: !3743)
!3753 = !DILocation(line: 42, column: 30, scope: !3743)
!3754 = !DILocation(line: 47, column: 9, scope: !3751)
!3755 = !DILocation(line: 47, column: 19, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3751, file: !3744, discriminator: 1)
!3757 = !DILocation(line: 47, column: 14, scope: !3751)
!3758 = !DILocation(line: 56, column: 24, scope: !3750)
!3759 = !DILocation(line: 56, column: 14, scope: !3750)
!3760 = !DILocation(line: 57, column: 17, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3750, file: !3744, line: 57, column: 11)
!3762 = !DILocation(line: 57, column: 21, scope: !3761)
!3763 = !DILocation(line: 57, column: 11, scope: !3750)
!3764 = !DILocation(line: 59, column: 11, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3761, file: !3744, line: 58, column: 9)
!3766 = !DILocation(line: 59, column: 17, scope: !3765)
!3767 = !DILocation(line: 65, column: 12, scope: !3743)
!3768 = !DILocation(line: 44, column: 9, scope: !3743)
!3769 = !DILocation(line: 72, column: 3, scope: !3743)
!3770 = !DILocation(line: 73, column: 1, scope: !3743)
!3771 = !DILocation(line: 272, column: 16, scope: !151)
!3772 = !DILocation(line: 272, column: 24, scope: !151)
!3773 = !DILocation(line: 274, column: 3, scope: !151)
!3774 = !DILocation(line: 274, column: 11, scope: !151)
!3775 = !DILocation(line: 275, column: 7, scope: !151)
!3776 = !DILocation(line: 276, column: 3, scope: !151)
!3777 = !DILocation(line: 277, column: 3, scope: !151)
!3778 = !DILocation(line: 322, column: 22, scope: !176)
!3779 = !DILocation(line: 322, column: 22, scope: !3780)
!3780 = !DILexicalBlockFile(scope: !176, file: !152, discriminator: 1)
!3781 = !DILocation(line: 322, column: 22, scope: !3782)
!3782 = !DILexicalBlockFile(scope: !176, file: !152, discriminator: 2)
!3783 = !DILocation(line: 322, column: 22, scope: !3784)
!3784 = !DILexicalBlockFile(scope: !176, file: !152, discriminator: 3)
!3785 = !DILocation(line: 322, column: 13, scope: !176)
!3786 = !DILocation(line: 336, column: 18, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !176, file: !152, line: 336, column: 13)
!3788 = !DILocation(line: 336, column: 15, scope: !3787)
!3789 = !DILocation(line: 336, column: 13, scope: !176)
!3790 = !DILocation(line: 338, column: 22, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3787, file: !152, line: 337, column: 11)
!3792 = !DILocation(line: 339, column: 19, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3791, file: !152, line: 339, column: 17)
!3794 = !DILocation(line: 339, column: 29, scope: !3793)
!3795 = !DILocation(line: 339, column: 32, scope: !3796)
!3796 = !DILexicalBlockFile(scope: !3793, file: !152, discriminator: 1)
!3797 = !DILocation(line: 339, column: 38, scope: !3796)
!3798 = !DILocation(line: 339, column: 17, scope: !3799)
!3799 = !DILexicalBlockFile(scope: !3791, file: !152, discriminator: 1)
!3800 = !DILocation(line: 349, column: 26, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3793, file: !152, line: 348, column: 15)
!3802 = !DILocation(line: 350, column: 28, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3801, file: !152, line: 350, column: 21)
!3804 = !DILocation(line: 350, column: 21, scope: !3801)
!3805 = !DILocation(line: 354, column: 11, scope: !3791)
!3806 = !DILocation(line: 356, column: 20, scope: !3787)
!3807 = !DILocation(line: 357, column: 28, scope: !3808)
!3808 = !DILexicalBlockFile(scope: !180, file: !152, discriminator: 1)
!3809 = !DILocation(line: 357, column: 15, scope: !180)
!3810 = !DILocation(line: 357, column: 47, scope: !3808)
!3811 = !DILocation(line: 357, column: 25, scope: !180)
!3812 = !DILocation(line: 359, column: 25, scope: !179)
!3813 = !DILocation(line: 359, column: 17, scope: !179)
!3814 = !DILocation(line: 360, column: 23, scope: !183)
!3815 = !DILocation(line: 360, column: 27, scope: !183)
!3816 = !DILocation(line: 360, column: 60, scope: !3817)
!3817 = !DILexicalBlockFile(scope: !183, file: !152, discriminator: 1)
!3818 = !DILocation(line: 360, column: 30, scope: !3817)
!3819 = !DILocation(line: 360, column: 74, scope: !3817)
!3820 = !DILocation(line: 360, column: 17, scope: !3821)
!3821 = !DILexicalBlockFile(scope: !179, file: !152, discriminator: 1)
!3822 = !DILocation(line: 362, column: 35, scope: !182)
!3823 = !DILocation(line: 362, column: 21, scope: !182)
!3824 = !DILocation(line: 363, column: 17, scope: !182)
!3825 = !DILocation(line: 364, column: 23, scope: !182)
!3826 = !DILocation(line: 366, column: 15, scope: !182)
!3827 = !DILocation(line: 404, column: 19, scope: !185)
!3828 = !DILocation(line: 404, column: 19, scope: !3829)
!3829 = !DILexicalBlockFile(scope: !185, file: !152, discriminator: 1)
!3830 = !DILocation(line: 404, column: 19, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !185, file: !152, discriminator: 2)
!3832 = !DILocation(line: 404, column: 19, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !185, file: !152, discriminator: 3)
!3834 = !DILocation(line: 404, column: 15, scope: !185)
!3835 = !DILocation(line: 405, column: 18, scope: !185)
!3836 = !DILocation(line: 412, column: 3, scope: !151)
!3837 = !DILocation(line: 414, column: 1, scope: !151)
!3838 = !DILocation(line: 413, column: 3, scope: !151)
!3839 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3840, file: !3840, line: 334, type: !3841, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !3855)
!3840 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!94, !3843, !6, !94, !3844}
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1513, line: 107, baseType: !3846)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1513, line: 95, baseType: !3847)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1513, line: 83, size: 64, elements: !3848)
!3848 = !{!3849, !3850}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3847, file: !1513, line: 85, baseType: !25, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3847, file: !1513, line: 94, baseType: !3851, size: 32, offset: 32)
!3851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3847, file: !1513, line: 86, size: 32, elements: !3852)
!3852 = !{!3853, !3854}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3851, file: !1513, line: 89, baseType: !113, size: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3851, file: !1513, line: 93, baseType: !1523, size: 32)
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861, !3862}
!3856 = !DILocalVariable(name: "pwc", arg: 1, scope: !3839, file: !3840, line: 334, type: !3843)
!3857 = !DILocalVariable(name: "s", arg: 2, scope: !3839, file: !3840, line: 334, type: !6)
!3858 = !DILocalVariable(name: "n", arg: 3, scope: !3839, file: !3840, line: 334, type: !94)
!3859 = !DILocalVariable(name: "ps", arg: 4, scope: !3839, file: !3840, line: 334, type: !3844)
!3860 = !DILocalVariable(name: "ret", scope: !3839, file: !3840, line: 336, type: !94)
!3861 = !DILocalVariable(name: "wc", scope: !3839, file: !3840, line: 337, type: !1528)
!3862 = !DILocalVariable(name: "uc", scope: !3863, file: !3840, line: 398, type: !531)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !3840, line: 397, column: 5)
!3864 = distinct !DILexicalBlock(scope: !3839, file: !3840, line: 396, column: 7)
!3865 = !DILocation(line: 334, column: 23, scope: !3839)
!3866 = !DILocation(line: 334, column: 40, scope: !3839)
!3867 = !DILocation(line: 334, column: 50, scope: !3839)
!3868 = !DILocation(line: 334, column: 64, scope: !3839)
!3869 = !DILocation(line: 337, column: 3, scope: !3839)
!3870 = !DILocation(line: 353, column: 9, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3839, file: !3840, line: 353, column: 7)
!3872 = !DILocation(line: 353, column: 7, scope: !3839)
!3873 = !DILocation(line: 388, column: 9, scope: !3839)
!3874 = !DILocation(line: 336, column: 10, scope: !3839)
!3875 = !DILocation(line: 396, column: 19, scope: !3864)
!3876 = !DILocation(line: 396, column: 31, scope: !3877)
!3877 = !DILexicalBlockFile(scope: !3864, file: !3840, discriminator: 1)
!3878 = !DILocation(line: 396, column: 26, scope: !3864)
!3879 = !DILocation(line: 396, column: 41, scope: !3880)
!3880 = !DILexicalBlockFile(scope: !3864, file: !3840, discriminator: 2)
!3881 = !DILocation(line: 396, column: 7, scope: !3882)
!3882 = !DILexicalBlockFile(scope: !3839, file: !3840, discriminator: 2)
!3883 = !DILocation(line: 398, column: 26, scope: !3863)
!3884 = !DILocation(line: 398, column: 21, scope: !3863)
!3885 = !DILocation(line: 399, column: 14, scope: !3863)
!3886 = !DILocation(line: 399, column: 12, scope: !3863)
!3887 = !DILocation(line: 405, column: 1, scope: !3839)
!3888 = distinct !DISubprogram(name: "close_stream", scope: !3889, file: !3889, line: 56, type: !3890, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3932)
!3889 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!25, !3892}
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 49, baseType: !3894)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 241, size: 1728, elements: !3895)
!3895 = !{!3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3894, file: !902, line: 242, baseType: !25, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3894, file: !902, line: 247, baseType: !50, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3894, file: !902, line: 248, baseType: !50, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3894, file: !902, line: 249, baseType: !50, size: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3894, file: !902, line: 250, baseType: !50, size: 64, offset: 256)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3894, file: !902, line: 251, baseType: !50, size: 64, offset: 320)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3894, file: !902, line: 252, baseType: !50, size: 64, offset: 384)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3894, file: !902, line: 253, baseType: !50, size: 64, offset: 448)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3894, file: !902, line: 254, baseType: !50, size: 64, offset: 512)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3894, file: !902, line: 256, baseType: !50, size: 64, offset: 576)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3894, file: !902, line: 257, baseType: !50, size: 64, offset: 640)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3894, file: !902, line: 258, baseType: !50, size: 64, offset: 704)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3894, file: !902, line: 260, baseType: !3909, size: 64, offset: 768)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !902, line: 156, size: 192, elements: !3911)
!3911 = !{!3912, !3913, !3915}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3910, file: !902, line: 157, baseType: !3909, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3910, file: !902, line: 158, baseType: !3914, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3910, file: !902, line: 162, baseType: !25, size: 32, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3894, file: !902, line: 262, baseType: !3914, size: 64, offset: 832)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3894, file: !902, line: 264, baseType: !25, size: 32, offset: 896)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3894, file: !902, line: 268, baseType: !25, size: 32, offset: 928)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3894, file: !902, line: 270, baseType: !928, size: 64, offset: 960)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3894, file: !902, line: 274, baseType: !93, size: 16, offset: 1024)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3894, file: !902, line: 275, baseType: !932, size: 8, offset: 1040)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3894, file: !902, line: 276, baseType: !934, size: 8, offset: 1048)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3894, file: !902, line: 280, baseType: !936, size: 64, offset: 1088)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3894, file: !902, line: 289, baseType: !939, size: 64, offset: 1152)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3894, file: !902, line: 297, baseType: !49, size: 64, offset: 1216)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3894, file: !902, line: 298, baseType: !49, size: 64, offset: 1280)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3894, file: !902, line: 299, baseType: !49, size: 64, offset: 1344)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3894, file: !902, line: 300, baseType: !49, size: 64, offset: 1408)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3894, file: !902, line: 302, baseType: !94, size: 64, offset: 1472)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3894, file: !902, line: 303, baseType: !25, size: 32, offset: 1536)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3894, file: !902, line: 305, baseType: !947, size: 160, offset: 1568)
!3932 = !{!3933, !3934, !3936, !3937}
!3933 = !DILocalVariable(name: "stream", arg: 1, scope: !3888, file: !3889, line: 56, type: !3892)
!3934 = !DILocalVariable(name: "some_pending", scope: !3888, file: !3889, line: 58, type: !3935)
!3935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3936 = !DILocalVariable(name: "prev_fail", scope: !3888, file: !3889, line: 59, type: !3935)
!3937 = !DILocalVariable(name: "fclose_fail", scope: !3888, file: !3889, line: 60, type: !3935)
!3938 = !DILocation(line: 56, column: 21, scope: !3888)
!3939 = !DILocation(line: 58, column: 30, scope: !3888)
!3940 = !DILocalVariable(name: "__stream", arg: 1, scope: !3941, file: !895, line: 132, type: !3892)
!3941 = distinct !DISubprogram(name: "ferror_unlocked", scope: !895, file: !895, line: 132, type: !3890, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !3942)
!3942 = !{!3940}
!3943 = !DILocation(line: 132, column: 1, scope: !3941, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 59, column: 27, scope: !3888)
!3945 = !DILocation(line: 134, column: 10, scope: !3941, inlinedAt: !3944)
!3946 = !DILocation(line: 59, column: 43, scope: !3888)
!3947 = !DILocation(line: 60, column: 29, scope: !3888)
!3948 = !DILocation(line: 60, column: 45, scope: !3888)
!3949 = !DILocation(line: 70, column: 17, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3888, file: !3889, line: 70, column: 7)
!3951 = !DILocation(line: 70, column: 33, scope: !3952)
!3952 = !DILexicalBlockFile(scope: !3950, file: !3889, discriminator: 1)
!3953 = !DILocation(line: 70, column: 53, scope: !3954)
!3954 = !DILexicalBlockFile(scope: !3950, file: !3889, discriminator: 3)
!3955 = !DILocation(line: 70, column: 7, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3888, file: !3889, discriminator: 3)
!3957 = !DILocation(line: 72, column: 11, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3950, file: !3889, line: 71, column: 5)
!3959 = !DILocation(line: 73, column: 9, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3958, file: !3889, line: 72, column: 11)
!3961 = !DILocation(line: 73, column: 15, scope: !3960)
!3962 = !DILocation(line: 78, column: 1, scope: !3888)
!3963 = distinct !DISubprogram(name: "last_component", scope: !3964, file: !3964, line: 30, type: !2748, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !3965)
!3964 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3965 = !{!3966, !3967, !3968, !3969}
!3966 = !DILocalVariable(name: "name", arg: 1, scope: !3963, file: !3964, line: 30, type: !6)
!3967 = !DILocalVariable(name: "base", scope: !3963, file: !3964, line: 32, type: !6)
!3968 = !DILocalVariable(name: "p", scope: !3963, file: !3964, line: 33, type: !6)
!3969 = !DILocalVariable(name: "saw_slash", scope: !3963, file: !3964, line: 34, type: !17)
!3970 = !DILocation(line: 30, column: 29, scope: !3963)
!3971 = !DILocation(line: 32, column: 15, scope: !3963)
!3972 = !DILocation(line: 34, column: 8, scope: !3963)
!3973 = !DILocation(line: 36, column: 3, scope: !3963)
!3974 = !DILocation(line: 36, column: 10, scope: !3975)
!3975 = !DILexicalBlockFile(scope: !3963, file: !3964, discriminator: 1)
!3976 = !DILocation(line: 37, column: 9, scope: !3963)
!3977 = !DILocation(line: 36, column: 3, scope: !3975)
!3978 = distinct !{!3978, !3973, !3976}
!3979 = !DILocation(line: 39, column: 18, scope: !3980)
!3980 = !DILexicalBlockFile(scope: !3981, file: !3964, discriminator: 1)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !3964, line: 39, column: 3)
!3982 = distinct !DILexicalBlock(scope: !3963, file: !3964, line: 39, column: 3)
!3983 = !DILocation(line: 33, column: 15, scope: !3963)
!3984 = !DILocation(line: 39, column: 3, scope: !3985)
!3985 = !DILexicalBlockFile(scope: !3982, file: !3964, discriminator: 1)
!3986 = !DILocation(line: 43, column: 16, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !3964, line: 43, column: 16)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !3964, line: 41, column: 11)
!3989 = distinct !DILexicalBlock(scope: !3981, file: !3964, line: 40, column: 5)
!3990 = !DILocation(line: 43, column: 16, scope: !3988)
!3991 = !DILocation(line: 39, column: 23, scope: !3992)
!3992 = !DILexicalBlockFile(scope: !3981, file: !3964, discriminator: 2)
!3993 = !DILocation(line: 39, column: 3, scope: !3992)
!3994 = distinct !{!3994, !3995, !3996}
!3995 = !DILocation(line: 39, column: 3, scope: !3982)
!3996 = !DILocation(line: 48, column: 5, scope: !3982)
!3997 = !DILocation(line: 50, column: 3, scope: !3963)
!3998 = distinct !DISubprogram(name: "base_len", scope: !3964, file: !3964, line: 58, type: !3999, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!94, !6}
!4001 = !{!4002, !4003, !4004}
!4002 = !DILocalVariable(name: "name", arg: 1, scope: !3998, file: !3964, line: 58, type: !6)
!4003 = !DILocalVariable(name: "len", scope: !3998, file: !3964, line: 60, type: !94)
!4004 = !DILocalVariable(name: "prefix_len", scope: !3998, file: !3964, line: 61, type: !94)
!4005 = !DILocation(line: 58, column: 23, scope: !3998)
!4006 = !DILocation(line: 61, column: 10, scope: !3998)
!4007 = !DILocation(line: 63, column: 14, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3998, file: !3964, line: 63, column: 3)
!4009 = !DILocation(line: 60, column: 10, scope: !3998)
!4010 = !DILocation(line: 63, column: 8, scope: !4008)
!4011 = !DILocation(line: 63, column: 32, scope: !4012)
!4012 = !DILexicalBlockFile(scope: !4013, file: !3964, discriminator: 1)
!4013 = distinct !DILexicalBlock(scope: !4008, file: !3964, line: 63, column: 3)
!4014 = !DILocation(line: 63, column: 38, scope: !4012)
!4015 = !DILocation(line: 63, column: 41, scope: !4016)
!4016 = !DILexicalBlockFile(scope: !4013, file: !3964, discriminator: 2)
!4017 = !DILocation(line: 63, column: 3, scope: !4018)
!4018 = !DILexicalBlockFile(scope: !4008, file: !3964, discriminator: 3)
!4019 = distinct !{!4019, !4020, !4021}
!4020 = !DILocation(line: 63, column: 3, scope: !4008)
!4021 = !DILocation(line: 64, column: 5, scope: !4008)
!4022 = !DILocation(line: 74, column: 3, scope: !3998)
!4023 = distinct !DISubprogram(name: "hard_locale", scope: !4024, file: !4024, line: 38, type: !4025, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !4027)
!4024 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!17, !25}
!4027 = !{!4028, !4029, !4030, !4031, !4038, !4039, !4041, !4042, !4044, !4045, !4047}
!4028 = !DILocalVariable(name: "category", arg: 1, scope: !4023, file: !4024, line: 38, type: !25)
!4029 = !DILocalVariable(name: "hard", scope: !4023, file: !4024, line: 40, type: !17)
!4030 = !DILocalVariable(name: "p", scope: !4023, file: !4024, line: 41, type: !6)
!4031 = !DILocalVariable(name: "__s1_len", scope: !4032, file: !4024, line: 47, type: !94)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !4024, line: 47, column: 15)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !4024, line: 47, column: 15)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !4024, line: 46, column: 9)
!4035 = distinct !DILexicalBlock(scope: !4036, file: !4024, line: 45, column: 11)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !4024, line: 44, column: 5)
!4037 = distinct !DILexicalBlock(scope: !4023, file: !4024, line: 43, column: 7)
!4038 = !DILocalVariable(name: "__s2_len", scope: !4032, file: !4024, line: 47, type: !94)
!4039 = !DILocalVariable(name: "__s2", scope: !4040, file: !4024, line: 47, type: !556)
!4040 = distinct !DILexicalBlock(scope: !4032, file: !4024, line: 47, column: 15)
!4041 = !DILocalVariable(name: "__result", scope: !4040, file: !4024, line: 47, type: !25)
!4042 = !DILocalVariable(name: "__s1_len", scope: !4043, file: !4024, line: 47, type: !94)
!4043 = distinct !DILexicalBlock(scope: !4033, file: !4024, line: 47, column: 39)
!4044 = !DILocalVariable(name: "__s2_len", scope: !4043, file: !4024, line: 47, type: !94)
!4045 = !DILocalVariable(name: "__s2", scope: !4046, file: !4024, line: 47, type: !556)
!4046 = distinct !DILexicalBlock(scope: !4043, file: !4024, line: 47, column: 39)
!4047 = !DILocalVariable(name: "__result", scope: !4046, file: !4024, line: 47, type: !25)
!4048 = !DILocation(line: 38, column: 18, scope: !4023)
!4049 = !DILocation(line: 40, column: 8, scope: !4023)
!4050 = !DILocation(line: 41, column: 19, scope: !4023)
!4051 = !DILocation(line: 41, column: 15, scope: !4023)
!4052 = !DILocation(line: 43, column: 7, scope: !4037)
!4053 = !DILocation(line: 43, column: 7, scope: !4023)
!4054 = !DILocation(line: 47, column: 15, scope: !4032)
!4055 = !DILocation(line: 47, column: 15, scope: !4040)
!4056 = !DILocation(line: 47, column: 15, scope: !4057)
!4057 = !DILexicalBlockFile(scope: !4040, file: !4024, discriminator: 2)
!4058 = !DILocation(line: 47, column: 15, scope: !4059)
!4059 = !DILexicalBlockFile(scope: !4060, file: !4024, discriminator: 3)
!4060 = distinct !DILexicalBlock(scope: !4040, file: !4024, line: 47, column: 15)
!4061 = !DILocation(line: 47, column: 15, scope: !4062)
!4062 = !DILexicalBlockFile(scope: !4060, file: !4024, discriminator: 2)
!4063 = !DILocation(line: 47, column: 15, scope: !4064)
!4064 = !DILexicalBlockFile(scope: !4065, file: !4024, discriminator: 4)
!4065 = distinct !DILexicalBlock(scope: !4060, file: !4024, line: 47, column: 15)
!4066 = !DILocation(line: 47, column: 15, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4032, file: !4024, discriminator: 11)
!4068 = !DILocation(line: 47, column: 36, scope: !4069)
!4069 = !DILexicalBlockFile(scope: !4033, file: !4024, discriminator: 13)
!4070 = !DILocation(line: 47, column: 39, scope: !4043)
!4071 = !DILocation(line: 47, column: 39, scope: !4072)
!4072 = !DILexicalBlockFile(scope: !4043, file: !4024, discriminator: 26)
!4073 = !DILocation(line: 47, column: 59, scope: !4074)
!4074 = !DILexicalBlockFile(scope: !4033, file: !4024, discriminator: 27)
!4075 = !DILocation(line: 47, column: 15, scope: !4076)
!4076 = !DILexicalBlockFile(scope: !4034, file: !4024, discriminator: 27)
!4077 = !DILocation(line: 48, column: 13, scope: !4033)
!4078 = !DILocation(line: 71, column: 3, scope: !4023)
!4079 = distinct !DISubprogram(name: "locale_charset", scope: !533, file: !533, line: 393, type: !4080, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !188, variables: !4082)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!6}
!4082 = !{!4083, !4084, !4085, !4090}
!4083 = !DILocalVariable(name: "codeset", scope: !4079, file: !533, line: 395, type: !6)
!4084 = !DILocalVariable(name: "aliases", scope: !4079, file: !533, line: 396, type: !6)
!4085 = !DILocalVariable(name: "__s1_len", scope: !4086, file: !533, line: 592, type: !94)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !533, line: 592, column: 9)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !533, line: 592, column: 9)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !533, line: 589, column: 3)
!4089 = distinct !DILexicalBlock(scope: !4079, file: !533, line: 589, column: 3)
!4090 = !DILocalVariable(name: "__s2_len", scope: !4086, file: !533, line: 592, type: !94)
!4091 = !DILocalVariable(name: "buf1", scope: !4092, file: !533, line: 196, type: !4159)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !533, line: 194, column: 21)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !533, line: 193, column: 19)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !533, line: 193, column: 19)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !533, line: 188, column: 17)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !533, line: 181, column: 19)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !533, line: 177, column: 13)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !533, line: 173, column: 15)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !533, line: 161, column: 9)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !533, line: 157, column: 11)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !533, line: 130, column: 5)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !533, line: 129, column: 7)
!4103 = distinct !DISubprogram(name: "get_charset_aliases", scope: !533, file: !533, line: 124, type: !4080, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !188, variables: !4104)
!4104 = !{!4105, !4106, !4107, !4108, !4109, !4111, !4112, !4113, !4114, !4155, !4156, !4157, !4091, !4158, !4162, !4163, !4164}
!4105 = !DILocalVariable(name: "cp", scope: !4103, file: !533, line: 126, type: !6)
!4106 = !DILocalVariable(name: "dir", scope: !4101, file: !533, line: 132, type: !6)
!4107 = !DILocalVariable(name: "base", scope: !4101, file: !533, line: 133, type: !6)
!4108 = !DILocalVariable(name: "file_name", scope: !4101, file: !533, line: 134, type: !50)
!4109 = !DILocalVariable(name: "dir_len", scope: !4110, file: !533, line: 144, type: !94)
!4110 = distinct !DILexicalBlock(scope: !4101, file: !533, line: 143, column: 7)
!4111 = !DILocalVariable(name: "base_len", scope: !4110, file: !533, line: 145, type: !94)
!4112 = !DILocalVariable(name: "add_slash", scope: !4110, file: !533, line: 146, type: !25)
!4113 = !DILocalVariable(name: "fd", scope: !4099, file: !533, line: 162, type: !25)
!4114 = !DILocalVariable(name: "fp", scope: !4097, file: !533, line: 178, type: !4115)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 49, baseType: !4117)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 241, size: 1728, elements: !4118)
!4118 = !{!4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4117, file: !902, line: 242, baseType: !25, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4117, file: !902, line: 247, baseType: !50, size: 64, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4117, file: !902, line: 248, baseType: !50, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4117, file: !902, line: 249, baseType: !50, size: 64, offset: 192)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4117, file: !902, line: 250, baseType: !50, size: 64, offset: 256)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4117, file: !902, line: 251, baseType: !50, size: 64, offset: 320)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4117, file: !902, line: 252, baseType: !50, size: 64, offset: 384)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4117, file: !902, line: 253, baseType: !50, size: 64, offset: 448)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4117, file: !902, line: 254, baseType: !50, size: 64, offset: 512)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4117, file: !902, line: 256, baseType: !50, size: 64, offset: 576)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4117, file: !902, line: 257, baseType: !50, size: 64, offset: 640)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4117, file: !902, line: 258, baseType: !50, size: 64, offset: 704)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4117, file: !902, line: 260, baseType: !4132, size: 64, offset: 768)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !902, line: 156, size: 192, elements: !4134)
!4134 = !{!4135, !4136, !4138}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4133, file: !902, line: 157, baseType: !4132, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4133, file: !902, line: 158, baseType: !4137, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4133, file: !902, line: 162, baseType: !25, size: 32, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4117, file: !902, line: 262, baseType: !4137, size: 64, offset: 832)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4117, file: !902, line: 264, baseType: !25, size: 32, offset: 896)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4117, file: !902, line: 268, baseType: !25, size: 32, offset: 928)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4117, file: !902, line: 270, baseType: !928, size: 64, offset: 960)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4117, file: !902, line: 274, baseType: !93, size: 16, offset: 1024)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4117, file: !902, line: 275, baseType: !932, size: 8, offset: 1040)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4117, file: !902, line: 276, baseType: !934, size: 8, offset: 1048)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4117, file: !902, line: 280, baseType: !936, size: 64, offset: 1088)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4117, file: !902, line: 289, baseType: !939, size: 64, offset: 1152)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4117, file: !902, line: 297, baseType: !49, size: 64, offset: 1216)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4117, file: !902, line: 298, baseType: !49, size: 64, offset: 1280)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4117, file: !902, line: 299, baseType: !49, size: 64, offset: 1344)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4117, file: !902, line: 300, baseType: !49, size: 64, offset: 1408)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4117, file: !902, line: 302, baseType: !94, size: 64, offset: 1472)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4117, file: !902, line: 303, baseType: !25, size: 32, offset: 1536)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4117, file: !902, line: 305, baseType: !947, size: 160, offset: 1568)
!4155 = !DILocalVariable(name: "res_ptr", scope: !4095, file: !533, line: 190, type: !50)
!4156 = !DILocalVariable(name: "res_size", scope: !4095, file: !533, line: 191, type: !94)
!4157 = !DILocalVariable(name: "c", scope: !4092, file: !533, line: 195, type: !25)
!4158 = !DILocalVariable(name: "buf2", scope: !4092, file: !533, line: 197, type: !4159)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !4160)
!4160 = !{!4161}
!4161 = !DISubrange(count: 51)
!4162 = !DILocalVariable(name: "l1", scope: !4092, file: !533, line: 198, type: !94)
!4163 = !DILocalVariable(name: "l2", scope: !4092, file: !533, line: 198, type: !94)
!4164 = !DILocalVariable(name: "old_res_ptr", scope: !4092, file: !533, line: 199, type: !50)
!4165 = !DILocation(line: 196, column: 28, scope: !4092, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 589, column: 18, scope: !4089)
!4167 = !DILocation(line: 197, column: 28, scope: !4092, inlinedAt: !4166)
!4168 = !DILocation(line: 403, column: 13, scope: !4079)
!4169 = !DILocation(line: 395, column: 15, scope: !4079)
!4170 = !DILocation(line: 584, column: 15, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4079, file: !533, line: 584, column: 7)
!4172 = !DILocation(line: 584, column: 7, scope: !4079)
!4173 = !DILocation(line: 128, column: 8, scope: !4103, inlinedAt: !4166)
!4174 = !DILocation(line: 126, column: 15, scope: !4103, inlinedAt: !4166)
!4175 = !DILocation(line: 129, column: 10, scope: !4102, inlinedAt: !4166)
!4176 = !DILocation(line: 129, column: 7, scope: !4103, inlinedAt: !4166)
!4177 = !DILocation(line: 138, column: 13, scope: !4101, inlinedAt: !4166)
!4178 = !DILocation(line: 132, column: 19, scope: !4101, inlinedAt: !4166)
!4179 = !DILocation(line: 139, column: 15, scope: !4180, inlinedAt: !4166)
!4180 = distinct !DILexicalBlock(scope: !4101, file: !533, line: 139, column: 11)
!4181 = !DILocation(line: 139, column: 23, scope: !4180, inlinedAt: !4166)
!4182 = !DILocation(line: 139, column: 26, scope: !4183, inlinedAt: !4166)
!4183 = !DILexicalBlockFile(scope: !4180, file: !533, discriminator: 1)
!4184 = !DILocation(line: 139, column: 33, scope: !4183, inlinedAt: !4166)
!4185 = !DILocation(line: 139, column: 11, scope: !4186, inlinedAt: !4166)
!4186 = !DILexicalBlockFile(scope: !4101, file: !533, discriminator: 1)
!4187 = !DILocation(line: 140, column: 9, scope: !4180, inlinedAt: !4166)
!4188 = !DILocation(line: 144, column: 26, scope: !4110, inlinedAt: !4166)
!4189 = !DILocation(line: 144, column: 16, scope: !4110, inlinedAt: !4166)
!4190 = !DILocation(line: 145, column: 16, scope: !4110, inlinedAt: !4166)
!4191 = !DILocation(line: 146, column: 34, scope: !4110, inlinedAt: !4166)
!4192 = !DILocation(line: 146, column: 38, scope: !4110, inlinedAt: !4166)
!4193 = !DILocation(line: 146, column: 42, scope: !4194, inlinedAt: !4166)
!4194 = !DILexicalBlockFile(scope: !4110, file: !533, discriminator: 1)
!4195 = !DILocation(line: 146, column: 41, scope: !4194, inlinedAt: !4166)
!4196 = !DILocation(line: 147, column: 48, scope: !4110, inlinedAt: !4166)
!4197 = !DILocation(line: 147, column: 46, scope: !4110, inlinedAt: !4166)
!4198 = !DILocation(line: 147, column: 69, scope: !4110, inlinedAt: !4166)
!4199 = !DILocation(line: 147, column: 30, scope: !4110, inlinedAt: !4166)
!4200 = !DILocation(line: 134, column: 13, scope: !4101, inlinedAt: !4166)
!4201 = !DILocation(line: 148, column: 13, scope: !4110, inlinedAt: !4166)
!4202 = !DILocation(line: 150, column: 13, scope: !4203, inlinedAt: !4166)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !533, line: 149, column: 11)
!4204 = distinct !DILexicalBlock(scope: !4110, file: !533, line: 148, column: 13)
!4205 = !DILocation(line: 151, column: 17, scope: !4203, inlinedAt: !4166)
!4206 = !DILocation(line: 152, column: 34, scope: !4207, inlinedAt: !4166)
!4207 = distinct !DILexicalBlock(scope: !4203, file: !533, line: 151, column: 17)
!4208 = !DILocation(line: 153, column: 41, scope: !4203, inlinedAt: !4166)
!4209 = !DILocation(line: 153, column: 13, scope: !4203, inlinedAt: !4166)
!4210 = !DILocation(line: 157, column: 11, scope: !4101, inlinedAt: !4166)
!4211 = !DILocation(line: 171, column: 16, scope: !4099, inlinedAt: !4166)
!4212 = !DILocation(line: 162, column: 15, scope: !4099, inlinedAt: !4166)
!4213 = !DILocation(line: 173, column: 18, scope: !4098, inlinedAt: !4166)
!4214 = !DILocation(line: 173, column: 15, scope: !4099, inlinedAt: !4166)
!4215 = !DILocation(line: 180, column: 20, scope: !4097, inlinedAt: !4166)
!4216 = !DILocation(line: 178, column: 21, scope: !4097, inlinedAt: !4166)
!4217 = !DILocation(line: 181, column: 22, scope: !4096, inlinedAt: !4166)
!4218 = !DILocation(line: 181, column: 19, scope: !4097, inlinedAt: !4166)
!4219 = !DILocation(line: 190, column: 25, scope: !4095, inlinedAt: !4166)
!4220 = !DILocation(line: 184, column: 19, scope: !4221, inlinedAt: !4166)
!4221 = distinct !DILexicalBlock(scope: !4096, file: !533, line: 182, column: 17)
!4222 = !DILocation(line: 186, column: 17, scope: !4221, inlinedAt: !4166)
!4223 = !DILocation(line: 191, column: 26, scope: !4095, inlinedAt: !4166)
!4224 = !DILocation(line: 196, column: 23, scope: !4092, inlinedAt: !4166)
!4225 = !DILocation(line: 197, column: 23, scope: !4092, inlinedAt: !4166)
!4226 = !DILocalVariable(name: "__fp", arg: 1, scope: !4227, file: !895, line: 63, type: !4115)
!4227 = distinct !DISubprogram(name: "getc_unlocked", scope: !895, file: !895, line: 63, type: !4228, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !188, variables: !4230)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!25, !4115}
!4230 = !{!4226}
!4231 = !DILocation(line: 63, column: 22, scope: !4227, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 201, column: 27, scope: !4092, inlinedAt: !4166)
!4233 = !DILocation(line: 65, column: 10, scope: !4227, inlinedAt: !4232)
!4234 = !{!955, !661, i64 8}
!4235 = !{!955, !661, i64 16}
!4236 = !{!"branch_weights", i32 2000, i32 1}
!4237 = !DILocation(line: 65, column: 10, scope: !4238, inlinedAt: !4232)
!4238 = !DILexicalBlockFile(scope: !4227, file: !895, discriminator: 1)
!4239 = !DILocation(line: 65, column: 10, scope: !4240, inlinedAt: !4232)
!4240 = !DILexicalBlockFile(scope: !4227, file: !895, discriminator: 2)
!4241 = !DILocation(line: 65, column: 10, scope: !4242, inlinedAt: !4232)
!4242 = !DILexicalBlockFile(scope: !4227, file: !895, discriminator: 3)
!4243 = !DILocation(line: 195, column: 27, scope: !4092, inlinedAt: !4166)
!4244 = !DILocation(line: 202, column: 27, scope: !4092, inlinedAt: !4166)
!4245 = !DILocation(line: 63, column: 22, scope: !4227, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 210, column: 33, scope: !4247, inlinedAt: !4166)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !533, line: 207, column: 25)
!4248 = distinct !DILexicalBlock(scope: !4092, file: !533, line: 206, column: 27)
!4249 = !DILocation(line: 65, column: 10, scope: !4227, inlinedAt: !4246)
!4250 = !DILocation(line: 65, column: 10, scope: !4238, inlinedAt: !4246)
!4251 = !DILocation(line: 65, column: 10, scope: !4240, inlinedAt: !4246)
!4252 = !DILocation(line: 65, column: 10, scope: !4242, inlinedAt: !4246)
!4253 = !DILocation(line: 210, column: 29, scope: !4254, inlinedAt: !4166)
!4254 = !DILexicalBlockFile(scope: !4247, file: !533, discriminator: 1)
!4255 = distinct !{!4255, !4256, !4257}
!4256 = !DILocation(line: 193, column: 19, scope: !4094)
!4257 = !DILocation(line: 241, column: 21, scope: !4094)
!4258 = !DILocation(line: 216, column: 23, scope: !4092, inlinedAt: !4166)
!4259 = !DILocation(line: 217, column: 27, scope: !4260, inlinedAt: !4166)
!4260 = distinct !DILexicalBlock(scope: !4092, file: !533, line: 217, column: 27)
!4261 = !DILocation(line: 217, column: 64, scope: !4260, inlinedAt: !4166)
!4262 = !DILocation(line: 217, column: 27, scope: !4092, inlinedAt: !4166)
!4263 = !DILocation(line: 219, column: 28, scope: !4092, inlinedAt: !4166)
!4264 = !DILocation(line: 198, column: 30, scope: !4092, inlinedAt: !4166)
!4265 = !DILocation(line: 220, column: 28, scope: !4092, inlinedAt: !4166)
!4266 = !DILocation(line: 198, column: 34, scope: !4092, inlinedAt: !4166)
!4267 = !DILocation(line: 199, column: 29, scope: !4092, inlinedAt: !4166)
!4268 = !DILocation(line: 222, column: 36, scope: !4269, inlinedAt: !4166)
!4269 = distinct !DILexicalBlock(scope: !4092, file: !533, line: 222, column: 27)
!4270 = !DILocation(line: 222, column: 27, scope: !4092, inlinedAt: !4166)
!4271 = !DILocation(line: 225, column: 63, scope: !4272, inlinedAt: !4166)
!4272 = distinct !DILexicalBlock(scope: !4269, file: !533, line: 223, column: 25)
!4273 = !DILocation(line: 225, column: 46, scope: !4272, inlinedAt: !4166)
!4274 = !DILocation(line: 226, column: 25, scope: !4272, inlinedAt: !4166)
!4275 = !DILocation(line: 229, column: 36, scope: !4276, inlinedAt: !4166)
!4276 = distinct !DILexicalBlock(scope: !4269, file: !533, line: 228, column: 25)
!4277 = !DILocation(line: 230, column: 73, scope: !4276, inlinedAt: !4166)
!4278 = !DILocation(line: 230, column: 46, scope: !4276, inlinedAt: !4166)
!4279 = !DILocation(line: 232, column: 35, scope: !4280, inlinedAt: !4166)
!4280 = distinct !DILexicalBlock(scope: !4092, file: !533, line: 232, column: 27)
!4281 = !DILocation(line: 232, column: 27, scope: !4092, inlinedAt: !4166)
!4282 = !DILocation(line: 236, column: 27, scope: !4283, inlinedAt: !4166)
!4283 = distinct !DILexicalBlock(scope: !4280, file: !533, line: 233, column: 25)
!4284 = !DILocation(line: 237, column: 27, scope: !4283, inlinedAt: !4166)
!4285 = !DILocation(line: 239, column: 39, scope: !4092, inlinedAt: !4166)
!4286 = !DILocation(line: 239, column: 50, scope: !4092, inlinedAt: !4166)
!4287 = !DILocation(line: 239, column: 61, scope: !4092, inlinedAt: !4166)
!4288 = !DILocalVariable(name: "__dest", arg: 1, scope: !4289, file: !1194, line: 107, type: !4292)
!4289 = distinct !DISubprogram(name: "strcpy", scope: !1194, file: !1194, line: 107, type: !4290, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !188, variables: !4294)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!50, !4292, !4293}
!4292 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!4293 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!4294 = !{!4288, !4295}
!4295 = !DILocalVariable(name: "__src", arg: 2, scope: !4289, file: !1194, line: 107, type: !4293)
!4296 = !DILocation(line: 107, column: 1, scope: !4289, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 239, column: 23, scope: !4092, inlinedAt: !4166)
!4298 = !DILocation(line: 109, column: 49, scope: !4289, inlinedAt: !4297)
!4299 = !DILocation(line: 109, column: 10, scope: !4289, inlinedAt: !4297)
!4300 = !DILocation(line: 107, column: 1, scope: !4289, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 240, column: 23, scope: !4092, inlinedAt: !4166)
!4302 = !DILocation(line: 109, column: 49, scope: !4289, inlinedAt: !4301)
!4303 = !DILocation(line: 109, column: 10, scope: !4289, inlinedAt: !4301)
!4304 = !DILocation(line: 241, column: 21, scope: !4093, inlinedAt: !4166)
!4305 = !DILocation(line: 242, column: 19, scope: !4095, inlinedAt: !4166)
!4306 = !DILocation(line: 243, column: 32, scope: !4307, inlinedAt: !4166)
!4307 = distinct !DILexicalBlock(scope: !4095, file: !533, line: 243, column: 23)
!4308 = !DILocation(line: 243, column: 23, scope: !4095, inlinedAt: !4166)
!4309 = !DILocation(line: 247, column: 33, scope: !4310, inlinedAt: !4166)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !533, line: 246, column: 21)
!4311 = !DILocation(line: 247, column: 45, scope: !4310, inlinedAt: !4166)
!4312 = !DILocation(line: 253, column: 11, scope: !4099, inlinedAt: !4166)
!4313 = !DILocation(line: 377, column: 23, scope: !4101, inlinedAt: !4166)
!4314 = !DILocation(line: 378, column: 5, scope: !4101, inlinedAt: !4166)
!4315 = !DILocation(line: 396, column: 15, scope: !4079)
!4316 = !DILocation(line: 590, column: 8, scope: !4088)
!4317 = !DILocation(line: 590, column: 17, scope: !4088)
!4318 = !DILocation(line: 589, column: 3, scope: !4319)
!4319 = !DILexicalBlockFile(scope: !4089, file: !533, discriminator: 1)
!4320 = !DILocation(line: 592, column: 9, scope: !4086)
!4321 = !DILocation(line: 592, column: 35, scope: !4087)
!4322 = !DILocation(line: 593, column: 9, scope: !4087)
!4323 = !DILocation(line: 593, column: 24, scope: !4324)
!4324 = !DILexicalBlockFile(scope: !4087, file: !533, discriminator: 1)
!4325 = !DILocation(line: 593, column: 31, scope: !4324)
!4326 = !DILocation(line: 593, column: 34, scope: !4327)
!4327 = !DILexicalBlockFile(scope: !4087, file: !533, discriminator: 2)
!4328 = !DILocation(line: 593, column: 45, scope: !4327)
!4329 = !DILocation(line: 592, column: 9, scope: !4330)
!4330 = !DILexicalBlockFile(scope: !4088, file: !533, discriminator: 1)
!4331 = !DILocation(line: 595, column: 29, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4087, file: !533, line: 594, column: 7)
!4333 = !DILocation(line: 595, column: 27, scope: !4332)
!4334 = !DILocation(line: 595, column: 46, scope: !4332)
!4335 = !DILocation(line: 596, column: 9, scope: !4332)
!4336 = !DILocation(line: 591, column: 19, scope: !4088)
!4337 = !DILocation(line: 591, column: 36, scope: !4088)
!4338 = !DILocation(line: 591, column: 16, scope: !4088)
!4339 = !DILocation(line: 591, column: 52, scope: !4330)
!4340 = !DILocation(line: 591, column: 69, scope: !4088)
!4341 = !DILocation(line: 591, column: 49, scope: !4088)
!4342 = distinct !{!4342, !4343, !4344}
!4343 = !DILocation(line: 589, column: 3, scope: !4089)
!4344 = !DILocation(line: 597, column: 7, scope: !4089)
!4345 = !DILocation(line: 602, column: 7, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4079, file: !533, line: 602, column: 7)
!4347 = !DILocation(line: 602, column: 18, scope: !4346)
!4348 = !DILocation(line: 602, column: 7, scope: !4079)
!4349 = !DILocation(line: 612, column: 3, scope: !4079)
!4350 = distinct !DISubprogram(name: "rpl_fclose", scope: !4351, file: !4351, line: 56, type: !4352, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !4394)
!4351 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!25, !4354}
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 49, baseType: !4356)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 241, size: 1728, elements: !4357)
!4357 = !{!4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4356, file: !902, line: 242, baseType: !25, size: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4356, file: !902, line: 247, baseType: !50, size: 64, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4356, file: !902, line: 248, baseType: !50, size: 64, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4356, file: !902, line: 249, baseType: !50, size: 64, offset: 192)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4356, file: !902, line: 250, baseType: !50, size: 64, offset: 256)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4356, file: !902, line: 251, baseType: !50, size: 64, offset: 320)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4356, file: !902, line: 252, baseType: !50, size: 64, offset: 384)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4356, file: !902, line: 253, baseType: !50, size: 64, offset: 448)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4356, file: !902, line: 254, baseType: !50, size: 64, offset: 512)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4356, file: !902, line: 256, baseType: !50, size: 64, offset: 576)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4356, file: !902, line: 257, baseType: !50, size: 64, offset: 640)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4356, file: !902, line: 258, baseType: !50, size: 64, offset: 704)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4356, file: !902, line: 260, baseType: !4371, size: 64, offset: 768)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !902, line: 156, size: 192, elements: !4373)
!4373 = !{!4374, !4375, !4377}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4372, file: !902, line: 157, baseType: !4371, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4372, file: !902, line: 158, baseType: !4376, size: 64, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4372, file: !902, line: 162, baseType: !25, size: 32, offset: 128)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4356, file: !902, line: 262, baseType: !4376, size: 64, offset: 832)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4356, file: !902, line: 264, baseType: !25, size: 32, offset: 896)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4356, file: !902, line: 268, baseType: !25, size: 32, offset: 928)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4356, file: !902, line: 270, baseType: !928, size: 64, offset: 960)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4356, file: !902, line: 274, baseType: !93, size: 16, offset: 1024)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4356, file: !902, line: 275, baseType: !932, size: 8, offset: 1040)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4356, file: !902, line: 276, baseType: !934, size: 8, offset: 1048)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4356, file: !902, line: 280, baseType: !936, size: 64, offset: 1088)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4356, file: !902, line: 289, baseType: !939, size: 64, offset: 1152)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4356, file: !902, line: 297, baseType: !49, size: 64, offset: 1216)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4356, file: !902, line: 298, baseType: !49, size: 64, offset: 1280)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4356, file: !902, line: 299, baseType: !49, size: 64, offset: 1344)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4356, file: !902, line: 300, baseType: !49, size: 64, offset: 1408)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4356, file: !902, line: 302, baseType: !94, size: 64, offset: 1472)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4356, file: !902, line: 303, baseType: !25, size: 32, offset: 1536)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4356, file: !902, line: 305, baseType: !947, size: 160, offset: 1568)
!4394 = !{!4395, !4396, !4397, !4398}
!4395 = !DILocalVariable(name: "fp", arg: 1, scope: !4350, file: !4351, line: 56, type: !4354)
!4396 = !DILocalVariable(name: "saved_errno", scope: !4350, file: !4351, line: 58, type: !25)
!4397 = !DILocalVariable(name: "fd", scope: !4350, file: !4351, line: 59, type: !25)
!4398 = !DILocalVariable(name: "result", scope: !4350, file: !4351, line: 60, type: !25)
!4399 = !DILocation(line: 56, column: 19, scope: !4350)
!4400 = !DILocation(line: 58, column: 7, scope: !4350)
!4401 = !DILocation(line: 60, column: 7, scope: !4350)
!4402 = !DILocation(line: 63, column: 8, scope: !4350)
!4403 = !DILocation(line: 59, column: 7, scope: !4350)
!4404 = !DILocation(line: 64, column: 10, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4350, file: !4351, line: 64, column: 7)
!4406 = !DILocation(line: 64, column: 7, scope: !4350)
!4407 = !DILocation(line: 65, column: 12, scope: !4405)
!4408 = !DILocation(line: 65, column: 5, scope: !4405)
!4409 = !DILocation(line: 70, column: 9, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4350, file: !4351, line: 70, column: 7)
!4411 = !DILocation(line: 70, column: 23, scope: !4410)
!4412 = !DILocation(line: 70, column: 33, scope: !4413)
!4413 = !DILexicalBlockFile(scope: !4410, file: !4351, discriminator: 1)
!4414 = !DILocation(line: 70, column: 26, scope: !4415)
!4415 = !DILexicalBlockFile(scope: !4410, file: !4351, discriminator: 3)
!4416 = !DILocation(line: 70, column: 59, scope: !4413)
!4417 = !DILocation(line: 71, column: 7, scope: !4410)
!4418 = !DILocation(line: 71, column: 10, scope: !4413)
!4419 = !DILocation(line: 70, column: 7, scope: !4420)
!4420 = !DILexicalBlockFile(scope: !4350, file: !4351, discriminator: 2)
!4421 = !DILocation(line: 98, column: 12, scope: !4350)
!4422 = !DILocation(line: 103, column: 7, scope: !4350)
!4423 = !DILocation(line: 72, column: 19, scope: !4410)
!4424 = !DILocation(line: 103, column: 19, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4350, file: !4351, line: 103, column: 7)
!4426 = !DILocation(line: 105, column: 13, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4425, file: !4351, line: 104, column: 5)
!4428 = !DILocation(line: 107, column: 5, scope: !4427)
!4429 = !DILocation(line: 110, column: 1, scope: !4350)
!4430 = distinct !DISubprogram(name: "rpl_fflush", scope: !4431, file: !4431, line: 127, type: !4432, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !640, variables: !4474)
!4431 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!25, !4434}
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 49, baseType: !4436)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 241, size: 1728, elements: !4437)
!4437 = !{!4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4436, file: !902, line: 242, baseType: !25, size: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4436, file: !902, line: 247, baseType: !50, size: 64, offset: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4436, file: !902, line: 248, baseType: !50, size: 64, offset: 128)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4436, file: !902, line: 249, baseType: !50, size: 64, offset: 192)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4436, file: !902, line: 250, baseType: !50, size: 64, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4436, file: !902, line: 251, baseType: !50, size: 64, offset: 320)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4436, file: !902, line: 252, baseType: !50, size: 64, offset: 384)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4436, file: !902, line: 253, baseType: !50, size: 64, offset: 448)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4436, file: !902, line: 254, baseType: !50, size: 64, offset: 512)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4436, file: !902, line: 256, baseType: !50, size: 64, offset: 576)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4436, file: !902, line: 257, baseType: !50, size: 64, offset: 640)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4436, file: !902, line: 258, baseType: !50, size: 64, offset: 704)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4436, file: !902, line: 260, baseType: !4451, size: 64, offset: 768)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !902, line: 156, size: 192, elements: !4453)
!4453 = !{!4454, !4455, !4457}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4452, file: !902, line: 157, baseType: !4451, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4452, file: !902, line: 158, baseType: !4456, size: 64, offset: 64)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4452, file: !902, line: 162, baseType: !25, size: 32, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4436, file: !902, line: 262, baseType: !4456, size: 64, offset: 832)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4436, file: !902, line: 264, baseType: !25, size: 32, offset: 896)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4436, file: !902, line: 268, baseType: !25, size: 32, offset: 928)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4436, file: !902, line: 270, baseType: !928, size: 64, offset: 960)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4436, file: !902, line: 274, baseType: !93, size: 16, offset: 1024)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4436, file: !902, line: 275, baseType: !932, size: 8, offset: 1040)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4436, file: !902, line: 276, baseType: !934, size: 8, offset: 1048)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4436, file: !902, line: 280, baseType: !936, size: 64, offset: 1088)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4436, file: !902, line: 289, baseType: !939, size: 64, offset: 1152)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4436, file: !902, line: 297, baseType: !49, size: 64, offset: 1216)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4436, file: !902, line: 298, baseType: !49, size: 64, offset: 1280)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4436, file: !902, line: 299, baseType: !49, size: 64, offset: 1344)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4436, file: !902, line: 300, baseType: !49, size: 64, offset: 1408)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4436, file: !902, line: 302, baseType: !94, size: 64, offset: 1472)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4436, file: !902, line: 303, baseType: !25, size: 32, offset: 1536)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4436, file: !902, line: 305, baseType: !947, size: 160, offset: 1568)
!4474 = !{!4475}
!4475 = !DILocalVariable(name: "stream", arg: 1, scope: !4430, file: !4431, line: 127, type: !4434)
!4476 = !DILocation(line: 127, column: 19, scope: !4430)
!4477 = !DILocation(line: 148, column: 14, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4430, file: !4431, line: 148, column: 7)
!4479 = !DILocation(line: 148, column: 22, scope: !4478)
!4480 = !DILocation(line: 148, column: 27, scope: !4481)
!4481 = !DILexicalBlockFile(scope: !4478, file: !4431, discriminator: 1)
!4482 = !DILocation(line: 148, column: 7, scope: !4483)
!4483 = !DILexicalBlockFile(scope: !4430, file: !4431, discriminator: 1)
!4484 = !DILocation(line: 149, column: 12, scope: !4478)
!4485 = !DILocation(line: 149, column: 5, scope: !4478)
!4486 = !DILocalVariable(name: "fp", arg: 1, scope: !4487, file: !4431, line: 40, type: !4434)
!4487 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4431, file: !4431, line: 40, type: !4488, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !640, variables: !4490)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !4434}
!4490 = !{!4486}
!4491 = !DILocation(line: 40, column: 48, scope: !4487, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 153, column: 3, scope: !4430)
!4493 = !DILocation(line: 42, column: 11, scope: !4494, inlinedAt: !4492)
!4494 = distinct !DILexicalBlock(scope: !4487, file: !4431, line: 42, column: 7)
!4495 = !DILocation(line: 42, column: 18, scope: !4494, inlinedAt: !4492)
!4496 = !DILocation(line: 42, column: 7, scope: !4487, inlinedAt: !4492)
!4497 = !DILocation(line: 44, column: 5, scope: !4494, inlinedAt: !4492)
!4498 = !DILocation(line: 155, column: 10, scope: !4430)
!4499 = !DILocation(line: 155, column: 3, scope: !4430)
!4500 = !DILocation(line: 229, column: 1, scope: !4430)
!4501 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4502, file: !4502, line: 28, type: !4503, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !642, variables: !4546)
!4502 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!25, !4505, !4545, !25}
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 49, baseType: !4507)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 241, size: 1728, elements: !4508)
!4508 = !{!4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4507, file: !902, line: 242, baseType: !25, size: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4507, file: !902, line: 247, baseType: !50, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4507, file: !902, line: 248, baseType: !50, size: 64, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4507, file: !902, line: 249, baseType: !50, size: 64, offset: 192)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4507, file: !902, line: 250, baseType: !50, size: 64, offset: 256)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4507, file: !902, line: 251, baseType: !50, size: 64, offset: 320)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4507, file: !902, line: 252, baseType: !50, size: 64, offset: 384)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4507, file: !902, line: 253, baseType: !50, size: 64, offset: 448)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4507, file: !902, line: 254, baseType: !50, size: 64, offset: 512)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4507, file: !902, line: 256, baseType: !50, size: 64, offset: 576)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4507, file: !902, line: 257, baseType: !50, size: 64, offset: 640)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4507, file: !902, line: 258, baseType: !50, size: 64, offset: 704)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4507, file: !902, line: 260, baseType: !4522, size: 64, offset: 768)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !902, line: 156, size: 192, elements: !4524)
!4524 = !{!4525, !4526, !4528}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4523, file: !902, line: 157, baseType: !4522, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4523, file: !902, line: 158, baseType: !4527, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4523, file: !902, line: 162, baseType: !25, size: 32, offset: 128)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4507, file: !902, line: 262, baseType: !4527, size: 64, offset: 832)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4507, file: !902, line: 264, baseType: !25, size: 32, offset: 896)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4507, file: !902, line: 268, baseType: !25, size: 32, offset: 928)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4507, file: !902, line: 270, baseType: !928, size: 64, offset: 960)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4507, file: !902, line: 274, baseType: !93, size: 16, offset: 1024)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4507, file: !902, line: 275, baseType: !932, size: 8, offset: 1040)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4507, file: !902, line: 276, baseType: !934, size: 8, offset: 1048)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4507, file: !902, line: 280, baseType: !936, size: 64, offset: 1088)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4507, file: !902, line: 289, baseType: !939, size: 64, offset: 1152)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4507, file: !902, line: 297, baseType: !49, size: 64, offset: 1216)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4507, file: !902, line: 298, baseType: !49, size: 64, offset: 1280)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4507, file: !902, line: 299, baseType: !49, size: 64, offset: 1344)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4507, file: !902, line: 300, baseType: !49, size: 64, offset: 1408)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4507, file: !902, line: 302, baseType: !94, size: 64, offset: 1472)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4507, file: !902, line: 303, baseType: !25, size: 32, offset: 1536)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4507, file: !902, line: 305, baseType: !947, size: 160, offset: 1568)
!4545 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !900, line: 91, baseType: !928)
!4546 = !{!4547, !4548, !4549, !4550}
!4547 = !DILocalVariable(name: "fp", arg: 1, scope: !4501, file: !4502, line: 28, type: !4505)
!4548 = !DILocalVariable(name: "offset", arg: 2, scope: !4501, file: !4502, line: 28, type: !4545)
!4549 = !DILocalVariable(name: "whence", arg: 3, scope: !4501, file: !4502, line: 28, type: !25)
!4550 = !DILocalVariable(name: "pos", scope: !4551, file: !4502, line: 116, type: !4545)
!4551 = distinct !DILexicalBlock(scope: !4552, file: !4502, line: 112, column: 5)
!4552 = distinct !DILexicalBlock(scope: !4501, file: !4502, line: 51, column: 7)
!4553 = !DILocation(line: 28, column: 15, scope: !4501)
!4554 = !DILocation(line: 28, column: 25, scope: !4501)
!4555 = !DILocation(line: 28, column: 37, scope: !4501)
!4556 = !DILocation(line: 51, column: 11, scope: !4552)
!4557 = !DILocation(line: 51, column: 31, scope: !4552)
!4558 = !DILocation(line: 51, column: 24, scope: !4552)
!4559 = !DILocation(line: 52, column: 7, scope: !4552)
!4560 = !DILocation(line: 52, column: 14, scope: !4561)
!4561 = !DILexicalBlockFile(scope: !4552, file: !4502, discriminator: 1)
!4562 = !{!955, !661, i64 40}
!4563 = !DILocation(line: 52, column: 35, scope: !4561)
!4564 = !{!955, !661, i64 32}
!4565 = !DILocation(line: 52, column: 28, scope: !4561)
!4566 = !DILocation(line: 53, column: 7, scope: !4552)
!4567 = !DILocation(line: 53, column: 14, scope: !4561)
!4568 = !{!955, !661, i64 72}
!4569 = !DILocation(line: 53, column: 28, scope: !4561)
!4570 = !DILocation(line: 51, column: 7, scope: !4571)
!4571 = !DILexicalBlockFile(scope: !4501, file: !4502, discriminator: 1)
!4572 = !DILocation(line: 116, column: 26, scope: !4551)
!4573 = !DILocation(line: 116, column: 19, scope: !4574)
!4574 = !DILexicalBlockFile(scope: !4551, file: !4502, discriminator: 1)
!4575 = !DILocation(line: 116, column: 13, scope: !4551)
!4576 = !DILocation(line: 117, column: 15, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4551, file: !4502, line: 117, column: 11)
!4578 = !DILocation(line: 117, column: 11, scope: !4551)
!4579 = !DILocation(line: 127, column: 11, scope: !4551)
!4580 = !DILocation(line: 127, column: 18, scope: !4551)
!4581 = !DILocation(line: 128, column: 11, scope: !4551)
!4582 = !DILocation(line: 128, column: 19, scope: !4551)
!4583 = !{!955, !956, i64 144}
!4584 = !DILocation(line: 159, column: 7, scope: !4551)
!4585 = !DILocation(line: 161, column: 10, scope: !4501)
!4586 = !DILocation(line: 161, column: 3, scope: !4501)
!4587 = !DILocation(line: 162, column: 1, scope: !4501)
