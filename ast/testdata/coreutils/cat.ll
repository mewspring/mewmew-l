; ModuleID = 'coreutils-8.27/src/cat.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Concatenate FILE(s) to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [335 x i8] c"\0A  -A, --show-all           equivalent to -vET\0A  -b, --number-nonblank    number nonempty output lines, overrides -n\0A  -e                       equivalent to -vE\0A  -E, --show-ends          display $ at end of each line\0A  -n, --number             number all output lines\0A  -s, --squeeze-blank      suppress repeated empty output lines\0A\00", align 1
@.str.4 = private unnamed_addr constant [212 x i8] c"  -t                       equivalent to -vT\0A  -T, --show-tabs          display TAB characters as ^I\0A  -u                       (ignored)\0A  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [137 x i8] c"\0AExamples:\0A  %s f - g  Output f's contents, then standard input, then g's contents.\0A  %s        Copy standard input to standard output.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"benstuvAET\00", align 1
@main.long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 69 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.23 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@infile = internal unnamed_addr global i8* null, align 8, !dbg !52
@optind = external local_unnamed_addr global i32, align 4
@input_desc = internal unnamed_addr global i32 0, align 4, !dbg !54
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"%s: input file is output file\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@newlines2 = internal unnamed_addr global i32 0, align 4, !dbg !86
@.str.47 = private unnamed_addr constant [22 x i8] c"cannot do ioctl on %s\00", align 1
@line_num_start = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), align 8, !dbg !90
@line_buf = internal global [20 x i8] c"                 0\09\00", align 16, !dbg !92
@line_num_print = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 12), align 8, !dbg !97
@.str.29 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"number-nonblank\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"squeeze-blank\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"show-nonprinting\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"show-ends\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"show-tabs\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"show-all\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), align 8, !dbg !193
@.str.31 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !199
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !204
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !207
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !214
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.60, i32 0, i32 0), i8* null], align 16, !dbg !221
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !249
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !254
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !266
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.62 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.64 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.65 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.66 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.67 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !273
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !280
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !268
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !282
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.81 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.94 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.98 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.99 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !288
@.str.1.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.120 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.123 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !297
@.str.3.124 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.125 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.126 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.127 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.128 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.129 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !734 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !738, metadata !739), !dbg !740
  %2 = icmp eq i32 %0, 0, !dbg !741
  br i1 %2, label %8, label %3, !dbg !743

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !744, !tbaa !747
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !744
  %6 = load i8*, i8** @program_name, align 8, !dbg !744, !tbaa !747
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !751
  br label %48, !dbg !753

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !755
  %10 = load i8*, i8** @program_name, align 8, !dbg !755, !tbaa !747
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !757
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !759
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !759, !tbaa !747
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !760
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !761
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !747
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !766
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([335 x i8], [335 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !768
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !768, !tbaa !747
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !769
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !770
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !770, !tbaa !747
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !771
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !772
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !772, !tbaa !747
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !773
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !774
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !774, !tbaa !747
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !775
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !776
  %31 = load i8*, i8** @program_name, align 8, !dbg !776, !tbaa !747
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* %31, i8* %31) #10, !dbg !777
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !64, metadata !739) #10, !dbg !778
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !64, metadata !739) #10, !dbg !778
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !780
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !781
  %35 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !783
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !75, metadata !739) #10, !dbg !784
  %36 = icmp eq i8* %35, null, !dbg !785
  br i1 %36, label %43, label %37, !dbg !786

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #13, !dbg !787
  %39 = icmp eq i32 %38, 0, !dbg !787
  br i1 %39, label %43, label %40, !dbg !789

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !791
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !793
  br label %43, !dbg !795

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !796
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !797
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !798
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #10, !dbg !799
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #14, !dbg !800
  unreachable, !dbg !800
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !100, metadata !739), !dbg !801
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !101, metadata !739), !dbg !802
  %5 = tail call i32 @getpagesize() #1, !dbg !803
  %6 = sext i32 %5 to i64, !dbg !803
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !104, metadata !739), !dbg !804
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !107, metadata !739), !dbg !805
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !120, metadata !739), !dbg !806
  %7 = bitcast %struct.stat* %4 to i8*, !dbg !807
  call void @llvm.lifetime.start(i64 144, i8* nonnull %7) #10, !dbg !807
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !159, metadata !739), !dbg !808
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !160, metadata !739), !dbg !809
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !161, metadata !739), !dbg !810
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !162, metadata !739), !dbg !811
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !163, metadata !739), !dbg !812
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !164, metadata !739), !dbg !813
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !165, metadata !739), !dbg !814
  %8 = load i8*, i8** %1, align 8, !dbg !815, !tbaa !747
  tail call void @set_program_name(i8* %8) #10, !dbg !816
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !817
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !818
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !819
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !820
  br label %13, !dbg !821

; <label>:13:                                     ; preds = %30, %2
  %14 = phi i8 [ 0, %2 ], [ %31, %30 ]
  %15 = phi i8 [ 0, %2 ], [ %32, %30 ]
  %16 = phi i8 [ 0, %2 ], [ %33, %30 ]
  %17 = phi i8 [ 0, %2 ], [ %34, %30 ]
  %18 = phi i8 [ 0, %2 ], [ %35, %30 ]
  %19 = phi i8 [ 0, %2 ], [ %36, %30 ]
  tail call void @llvm.dbg.value(metadata i8 %19, i64 0, metadata !159, metadata !739), !dbg !808
  tail call void @llvm.dbg.value(metadata i8 %18, i64 0, metadata !160, metadata !739), !dbg !809
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !161, metadata !739), !dbg !810
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !162, metadata !739), !dbg !811
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !164, metadata !739), !dbg !813
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !163, metadata !739), !dbg !812
  %20 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null) #10, !dbg !822
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !109, metadata !739), !dbg !824
  switch i32 %20, label %41 [
    i32 -1, label %42
    i32 98, label %21
    i32 101, label %22
    i32 110, label %23
    i32 115, label %24
    i32 116, label %25
    i32 117, label %30
    i32 118, label %26
    i32 65, label %27
    i32 69, label %28
    i32 84, label %29
    i32 -130, label %37
    i32 -131, label %38
  ], !dbg !825

; <label>:21:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !159, metadata !739), !dbg !808
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !160, metadata !739), !dbg !809
  br label %30, !dbg !826

; <label>:22:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !162, metadata !739), !dbg !811
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !163, metadata !739), !dbg !812
  br label %30, !dbg !829

; <label>:23:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !159, metadata !739), !dbg !808
  br label %30, !dbg !830

; <label>:24:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !161, metadata !739), !dbg !810
  br label %30, !dbg !831

; <label>:25:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !164, metadata !739), !dbg !813
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !163, metadata !739), !dbg !812
  br label %30, !dbg !832

; <label>:26:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !163, metadata !739), !dbg !812
  br label %30, !dbg !833

; <label>:27:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !163, metadata !739), !dbg !812
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !162, metadata !739), !dbg !811
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !164, metadata !739), !dbg !813
  br label %30, !dbg !834

; <label>:28:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !162, metadata !739), !dbg !811
  br label %30, !dbg !835

; <label>:29:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !164, metadata !739), !dbg !813
  br label %30, !dbg !836

; <label>:30:                                     ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %21, %13
  %31 = phi i8 [ %14, %29 ], [ %14, %28 ], [ 1, %27 ], [ 1, %26 ], [ 1, %25 ], [ %14, %24 ], [ %14, %23 ], [ 1, %22 ], [ %14, %21 ], [ %14, %13 ]
  %32 = phi i8 [ 1, %29 ], [ %15, %28 ], [ 1, %27 ], [ %15, %26 ], [ 1, %25 ], [ %15, %24 ], [ %15, %23 ], [ %15, %22 ], [ %15, %21 ], [ %15, %13 ]
  %33 = phi i8 [ %16, %29 ], [ 1, %28 ], [ 1, %27 ], [ %16, %26 ], [ %16, %25 ], [ %16, %24 ], [ %16, %23 ], [ 1, %22 ], [ %16, %21 ], [ %16, %13 ]
  %34 = phi i8 [ %17, %29 ], [ %17, %28 ], [ %17, %27 ], [ %17, %26 ], [ %17, %25 ], [ 1, %24 ], [ %17, %23 ], [ %17, %22 ], [ %17, %21 ], [ %17, %13 ]
  %35 = phi i8 [ %18, %29 ], [ %18, %28 ], [ %18, %27 ], [ %18, %26 ], [ %18, %25 ], [ %18, %24 ], [ %18, %23 ], [ %18, %22 ], [ 1, %21 ], [ %18, %13 ]
  %36 = phi i8 [ %19, %29 ], [ %19, %28 ], [ %19, %27 ], [ %19, %26 ], [ %19, %25 ], [ %19, %24 ], [ 1, %23 ], [ %19, %22 ], [ 1, %21 ], [ %19, %13 ]
  br label %13, !dbg !808, !llvm.loop !837

; <label>:37:                                     ; preds = %13
  tail call void @usage(i32 0) #15, !dbg !839
  unreachable, !dbg !839

; <label>:38:                                     ; preds = %13
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !840, !tbaa !747
  %40 = load i8*, i8** @Version, align 8, !dbg !840, !tbaa !747
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* null) #10, !dbg !840
  tail call void @exit(i32 0) #14, !dbg !841
  unreachable, !dbg !840

; <label>:41:                                     ; preds = %13
  tail call void @usage(i32 1) #15, !dbg !843
  unreachable, !dbg !843

; <label>:42:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !121, metadata !844), !dbg !845
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !846, metadata !739) #10, !dbg !854
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !853, metadata !739) #10, !dbg !854
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !857, metadata !844), !dbg !862
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !857, metadata !844), !dbg !864
  %43 = call i32 @__fxstat(i32 1, i32 1, %struct.stat* nonnull %4) #10, !dbg !866
  %44 = icmp slt i32 %43, 0, !dbg !867
  br i1 %44, label %45, label %49, !dbg !868

; <label>:45:                                     ; preds = %42
  %46 = tail call i32* @__errno_location() #1, !dbg !869
  %47 = load i32, i32* %46, align 4, !dbg !869, !tbaa !870
  %48 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !872
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* %48) #10, !dbg !874
  unreachable, !dbg !869

; <label>:49:                                     ; preds = %42
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !121, metadata !844), !dbg !845
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 9, !dbg !876
  %51 = load i64, i64* %50, align 8, !dbg !876, !tbaa !877
  %52 = icmp sgt i64 %51, 0, !dbg !876
  %53 = icmp ult i64 %51, 2305843009213693953, !dbg !881
  %54 = and i1 %52, %53, !dbg !876
  %55 = and i1 %52, %53, !dbg !876
  %56 = xor i1 %55, true, !dbg !876
  %57 = icmp slt i64 %51, 131072, !dbg !883
  %58 = or i1 %57, %56, !dbg !876
  %59 = select i1 %54, i64 %51, i64 512, !dbg !885
  %60 = select i1 %58, i64 131072, i64 %59, !dbg !876
  call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !102, metadata !739), !dbg !887
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0, !dbg !888
  %62 = load i64, i64* %61, align 8, !dbg !888, !tbaa !889
  call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !111, metadata !739), !dbg !890
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1, !dbg !891
  %64 = load i64, i64* %63, align 8, !dbg !891, !tbaa !892
  call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !116, metadata !739), !dbg !893
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !894
  %66 = load i32, i32* %65, align 8, !dbg !894, !tbaa !895
  %67 = and i32 %66, 61440, !dbg !894
  %68 = icmp eq i32 %67, 32768, !dbg !894
  %69 = icmp eq i8 %19, 0, !dbg !896
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !165, metadata !739), !dbg !814
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8** @infile, align 8, !dbg !898, !tbaa !747
  %70 = load i32, i32* @optind, align 4, !dbg !899, !tbaa !870
  call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !110, metadata !739), !dbg !900
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8
  %72 = or i8 %15, %14
  %73 = or i8 %72, %16
  %74 = or i8 %73, %17
  %75 = or i8 %74, %19
  %76 = icmp eq i8 %75, 0
  %77 = add nsw i64 %6, -1
  %78 = add nsw i64 %6, 18
  %79 = add i64 %78, %60
  %80 = icmp eq i8 %14, 0
  %81 = icmp ne i8 %15, 0
  %82 = icmp ne i8 %18, 0
  %83 = icmp eq i8 %16, 0
  %84 = bitcast i32* %3 to i8*
  %85 = icmp eq i8 %17, 0
  %86 = or i1 %82, %69
  %87 = xor i1 %81, true
  %88 = sext i32 %70 to i64, !dbg !901
  %89 = sext i32 %0 to i64, !dbg !901
  br label %90, !dbg !901, !llvm.loop !902

; <label>:90:                                     ; preds = %491, %49
  %91 = phi i64 [ %494, %491 ], [ %88, %49 ]
  %92 = phi i8 [ %492, %491 ], [ 0, %49 ]
  %93 = phi i8 [ %493, %491 ], [ 1, %49 ]
  call void @llvm.dbg.value(metadata i8 %93, i64 0, metadata !107, metadata !739), !dbg !805
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !110, metadata !739), !dbg !900
  call void @llvm.dbg.value(metadata i8 %92, i64 0, metadata !120, metadata !739), !dbg !806
  %94 = icmp slt i64 %91, %89, !dbg !904
  br i1 %94, label %97, label %95, !dbg !906

; <label>:95:                                     ; preds = %90
  %96 = load i8*, i8** @infile, align 8, !tbaa !747
  br label %102, !dbg !906

; <label>:97:                                     ; preds = %90
  %98 = getelementptr inbounds i8*, i8** %1, i64 %91, !dbg !907
  %99 = bitcast i8** %98 to i64*, !dbg !907
  %100 = load i64, i64* %99, align 8, !dbg !907, !tbaa !747
  store i64 %100, i64* bitcast (i8** @infile to i64*), align 8, !dbg !908, !tbaa !747
  %101 = inttoptr i64 %100 to i8*, !dbg !909
  br label %102, !dbg !909

; <label>:102:                                    ; preds = %95, %97
  %103 = phi i8* [ %96, %95 ], [ %101, %97 ], !dbg !910
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !170, metadata !739), !dbg !912
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !171, metadata !739), !dbg !913
  %104 = load i8, i8* %103, align 1, !dbg !914, !tbaa !916
  %105 = icmp eq i8 %104, 45, !dbg !917
  br i1 %105, label %106, label %111, !dbg !920

; <label>:106:                                    ; preds = %102
  %107 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !922
  %108 = load i8, i8* %107, align 1, !dbg !922, !tbaa !916
  %109 = icmp eq i8 %108, 0, !dbg !925
  br i1 %109, label %110, label %111, !dbg !927

; <label>:110:                                    ; preds = %106
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !120, metadata !739), !dbg !806
  store i32 0, i32* @input_desc, align 4, !dbg !929, !tbaa !870
  br label %119, !dbg !931

; <label>:111:                                    ; preds = %102, %106
  %112 = call i32 (i8*, i32, ...) @open(i8* %103, i32 0) #10, !dbg !932
  store i32 %112, i32* @input_desc, align 4, !dbg !933, !tbaa !870
  %113 = icmp slt i32 %112, 0, !dbg !934
  br i1 %113, label %114, label %119, !dbg !936

; <label>:114:                                    ; preds = %111
  %115 = tail call i32* @__errno_location() #1, !dbg !937
  %116 = load i32, i32* %115, align 4, !dbg !937, !tbaa !870
  %117 = load i8*, i8** @infile, align 8, !dbg !939, !tbaa !747
  %118 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %117) #10, !dbg !940
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %118) #10, !dbg !942
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !107, metadata !739), !dbg !805
  br label %491, !dbg !944

; <label>:119:                                    ; preds = %110, %111
  %120 = phi i32 [ 0, %110 ], [ %112, %111 ], !dbg !945
  %121 = phi i8 [ 1, %110 ], [ %92, %111 ]
  call void @llvm.dbg.value(metadata i8 %121, i64 0, metadata !120, metadata !739), !dbg !806
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !121, metadata !844), !dbg !845
  call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !846, metadata !739) #10, !dbg !947
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !853, metadata !739) #10, !dbg !947
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !857, metadata !844), !dbg !862
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !857, metadata !844), !dbg !864
  %122 = call i32 @__fxstat(i32 1, i32 %120, %struct.stat* nonnull %4) #10, !dbg !949
  %123 = icmp slt i32 %122, 0, !dbg !950
  br i1 %123, label %124, label %129, !dbg !951

; <label>:124:                                    ; preds = %119
  %125 = tail call i32* @__errno_location() #1, !dbg !952
  %126 = load i32, i32* %125, align 4, !dbg !952, !tbaa !870
  %127 = load i8*, i8** @infile, align 8, !dbg !954, !tbaa !747
  %128 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %127) #10, !dbg !955
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %128) #10, !dbg !957
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !107, metadata !739), !dbg !805
  br label %473, !dbg !959

; <label>:129:                                    ; preds = %119
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !121, metadata !844), !dbg !845
  %130 = load i64, i64* %50, align 8, !dbg !960, !tbaa !877
  %131 = icmp sgt i64 %130, 0, !dbg !960
  %132 = icmp ult i64 %130, 2305843009213693953, !dbg !961
  %133 = and i1 %131, %132, !dbg !960
  %134 = and i1 %131, %132, !dbg !960
  %135 = xor i1 %134, true, !dbg !960
  %136 = icmp slt i64 %130, 131072, !dbg !962
  %137 = or i1 %136, %135, !dbg !960
  %138 = select i1 %133, i64 %130, i64 512, !dbg !963
  %139 = select i1 %137, i64 131072, i64 %138, !dbg !960
  call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !103, metadata !739), !dbg !964
  %140 = load i32, i32* @input_desc, align 4, !dbg !965, !tbaa !870
  call void @fdadvise(i32 %140, i64 0, i64 0, i32 2) #10, !dbg !966
  %141 = load i64, i64* %61, align 8, !dbg !967
  %142 = icmp eq i64 %141, %62, !dbg !970
  %143 = and i1 %68, %142, !dbg !971
  %144 = load i64, i64* %63, align 8, !dbg !972
  %145 = icmp eq i64 %144, %64, !dbg !974
  %146 = and i1 %143, %145, !dbg !971
  br i1 %146, label %147, label %156, !dbg !971

; <label>:147:                                    ; preds = %129
  %148 = load i32, i32* @input_desc, align 4, !dbg !975, !tbaa !870
  %149 = call i64 @lseek(i32 %148, i64 0, i32 1) #10, !dbg !976
  %150 = load i64, i64* %71, align 8, !dbg !977, !tbaa !978
  %151 = icmp slt i64 %149, %150, !dbg !979
  br i1 %151, label %152, label %156, !dbg !980

; <label>:152:                                    ; preds = %147
  %153 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !982
  %154 = load i8*, i8** @infile, align 8, !dbg !984, !tbaa !747
  %155 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %154) #10, !dbg !985
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %153, i8* %155) #10, !dbg !987
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !107, metadata !739), !dbg !805
  br label %473, !dbg !989

; <label>:156:                                    ; preds = %147, %129
  br i1 %76, label %157, label %183, !dbg !990

; <label>:157:                                    ; preds = %156
  %158 = icmp ugt i64 %139, %60, !dbg !992
  %159 = select i1 %158, i64 %139, i64 %60, !dbg !992
  call void @llvm.dbg.value(metadata i64 %159, i64 0, metadata !103, metadata !739), !dbg !964
  %160 = add i64 %77, %159, !dbg !994
  %161 = call noalias i8* @xmalloc(i64 %160) #10, !dbg !995
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !105, metadata !739), !dbg !996
  tail call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !997, metadata !739), !dbg !1005
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1002, metadata !739), !dbg !1007
  tail call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !1003, metadata !739), !dbg !1008
  %162 = getelementptr inbounds i8, i8* %161, i64 %6, !dbg !1009
  %163 = getelementptr inbounds i8, i8* %162, i64 -1, !dbg !1010
  tail call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !1004, metadata !739), !dbg !1011
  %164 = ptrtoint i8* %163 to i64, !dbg !1012
  %165 = urem i64 %164, %6, !dbg !1013
  %166 = sub i64 0, %165, !dbg !1014
  %167 = getelementptr inbounds i8, i8* %163, i64 %166, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %167, i64 0, metadata !1015, metadata !739) #10, !dbg !1025
  call void @llvm.dbg.value(metadata i64 %159, i64 0, metadata !1020, metadata !739) #10, !dbg !1028
  br label %168, !dbg !1029

; <label>:168:                                    ; preds = %176, %157
  %169 = load i32, i32* @input_desc, align 4, !dbg !1030, !tbaa !870
  %170 = call i64 @safe_read(i32 %169, i8* %167, i64 %159) #10, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1021, metadata !739) #10, !dbg !1032
  switch i64 %170, label %176 [
    i64 -1, label %171
    i64 0, label %468
  ], !dbg !1033

; <label>:171:                                    ; preds = %168
  %172 = tail call i32* @__errno_location() #1, !dbg !1034
  %173 = load i32, i32* %172, align 4, !dbg !1034, !tbaa !870
  %174 = load i8*, i8** @infile, align 8, !dbg !1037, !tbaa !747
  %175 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %174) #10, !dbg !1038
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %175) #10, !dbg !1040
  br label %469, !dbg !1042

; <label>:176:                                    ; preds = %168
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1022, metadata !739) #10, !dbg !1043
  %177 = call i64 @full_write(i32 1, i8* %167, i64 %170) #10, !dbg !1044
  %178 = icmp eq i64 %177, %170, !dbg !1046
  br i1 %178, label %168, label %179, !dbg !1047, !llvm.loop !1048

; <label>:179:                                    ; preds = %176
  %180 = tail call i32* @__errno_location() #1, !dbg !1051
  %181 = load i32, i32* %180, align 4, !dbg !1051, !tbaa !870
  %182 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1052
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %181, i8* %182) #10, !dbg !1054
  unreachable, !dbg !1051

; <label>:183:                                    ; preds = %156
  %184 = add i64 %139, %6, !dbg !1056
  %185 = call noalias i8* @xmalloc(i64 %184) #10, !dbg !1058
  call void @llvm.dbg.value(metadata i8* %185, i64 0, metadata !105, metadata !739), !dbg !996
  %186 = shl i64 %139, 2, !dbg !1059
  %187 = add i64 %79, %186, !dbg !1060
  %188 = call noalias i8* @xmalloc(i64 %187) #10, !dbg !1061
  call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !106, metadata !739), !dbg !1062
  tail call void @llvm.dbg.value(metadata i8* %185, i64 0, metadata !997, metadata !739), !dbg !1063
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1002, metadata !739), !dbg !1065
  tail call void @llvm.dbg.value(metadata i8* %185, i64 0, metadata !1003, metadata !739), !dbg !1066
  %189 = getelementptr inbounds i8, i8* %185, i64 %6, !dbg !1067
  %190 = getelementptr inbounds i8, i8* %189, i64 -1, !dbg !1068
  tail call void @llvm.dbg.value(metadata i8* %190, i64 0, metadata !1004, metadata !739), !dbg !1069
  %191 = ptrtoint i8* %190 to i64, !dbg !1070
  %192 = urem i64 %191, %6, !dbg !1071
  %193 = sub i64 0, %192, !dbg !1072
  %194 = getelementptr inbounds i8, i8* %190, i64 %193, !dbg !1072
  tail call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !997, metadata !739), !dbg !1073
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1002, metadata !739), !dbg !1075
  tail call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !1003, metadata !739), !dbg !1076
  %195 = getelementptr inbounds i8, i8* %188, i64 %6, !dbg !1077
  %196 = getelementptr inbounds i8, i8* %195, i64 -1, !dbg !1078
  tail call void @llvm.dbg.value(metadata i8* %196, i64 0, metadata !1004, metadata !739), !dbg !1079
  %197 = ptrtoint i8* %196 to i64, !dbg !1080
  %198 = urem i64 %197, %6, !dbg !1081
  %199 = sub i64 0, %198, !dbg !1082
  %200 = getelementptr inbounds i8, i8* %196, i64 %199, !dbg !1082
  call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !1083, metadata !739) #10, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !1088, metadata !739) #10, !dbg !1117
  call void @llvm.dbg.value(metadata i8* %200, i64 0, metadata !1089, metadata !739) #10, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !1090, metadata !739) #10, !dbg !1119
  call void @llvm.dbg.value(metadata i1 %80, i64 0, metadata !1091, metadata !1120) #10, !dbg !1121
  call void @llvm.dbg.value(metadata i1 %81, i64 0, metadata !1092, metadata !1120) #10, !dbg !1122
  call void @llvm.dbg.value(metadata i1 %82, i64 0, metadata !1094, metadata !1120) #10, !dbg !1123
  call void @llvm.dbg.value(metadata i1 %83, i64 0, metadata !1095, metadata !1120) #10, !dbg !1124
  %201 = load i32, i32* @newlines2, align 4, !dbg !1125, !tbaa !870
  call void @llvm.dbg.value(metadata i32 %201, i64 0, metadata !1102, metadata !739) #10, !dbg !1126
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1103, metadata !739) #10, !dbg !1127
  call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !1099, metadata !739) #10, !dbg !1128
  %202 = getelementptr inbounds i8, i8* %194, i64 1, !dbg !1129
  call void @llvm.dbg.value(metadata i8* %202, i64 0, metadata !1098, metadata !739) #10, !dbg !1130
  call void @llvm.dbg.value(metadata i8* %200, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %203 = ptrtoint i8* %200 to i64, !dbg !1132
  %204 = getelementptr inbounds i8, i8* %200, i64 %60
  br label %210, !dbg !1133

; <label>:205:                                    ; preds = %456
  br label %206, !dbg !1127

; <label>:206:                                    ; preds = %205, %209
  %207 = phi i64 [ %447, %205 ], [ %398, %209 ]
  %208 = phi i8* [ %448, %205 ], [ %399, %209 ]
  br label %210, !dbg !1127

; <label>:209:                                    ; preds = %434
  br label %206, !dbg !1127

; <label>:210:                                    ; preds = %206, %183
  %211 = phi i64 [ %203, %183 ], [ %207, %206 ]
  %212 = phi i8* [ %202, %183 ], [ %208, %206 ]
  %213 = phi i8* [ %194, %183 ], [ %355, %206 ]
  %214 = phi i32 [ %201, %183 ], [ -1, %206 ]
  %215 = phi i8 [ 1, %183 ], [ %357, %206 ]
  call void @llvm.dbg.value(metadata i8 %215, i64 0, metadata !1103, metadata !739) #10, !dbg !1127
  call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !1102, metadata !739) #10, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !1099, metadata !739) #10, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %212, i64 0, metadata !1098, metadata !739) #10, !dbg !1130
  br label %216, !dbg !1134, !llvm.loop !1135

; <label>:216:                                    ; preds = %352, %210
  %217 = phi i64 [ %211, %210 ], [ %353, %352 ]
  %218 = phi i8* [ %212, %210 ], [ %358, %352 ]
  %219 = phi i8* [ %213, %210 ], [ %355, %352 ]
  %220 = phi i32 [ %214, %210 ], [ %356, %352 ]
  %221 = phi i8 [ %215, %210 ], [ %357, %352 ]
  call void @llvm.dbg.value(metadata i8 %221, i64 0, metadata !1103, metadata !739) #10, !dbg !1127
  call void @llvm.dbg.value(metadata i32 %220, i64 0, metadata !1102, metadata !739) #10, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !1099, metadata !739) #10, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %218, i64 0, metadata !1098, metadata !739) #10, !dbg !1130
  %222 = inttoptr i64 %217 to i8*, !dbg !1138
  call void @llvm.dbg.value(metadata i8* %222, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %223 = icmp ugt i8* %204, %222, !dbg !1139
  br i1 %223, label %241, label %224, !dbg !1140, !llvm.loop !1141

; <label>:224:                                    ; preds = %216
  br label %225, !dbg !1144

; <label>:225:                                    ; preds = %224, %233
  %226 = phi i8* [ %234, %233 ], [ %200, %224 ]
  call void @llvm.dbg.value(metadata i8* %226, i64 0, metadata !1104, metadata !739) #10, !dbg !1144
  %227 = call i64 @full_write(i32 1, i8* %226, i64 %60) #10, !dbg !1145
  %228 = icmp eq i64 %227, %60, !dbg !1148
  br i1 %228, label %233, label %229, !dbg !1149

; <label>:229:                                    ; preds = %225
  %230 = tail call i32* @__errno_location() #1, !dbg !1150
  %231 = load i32, i32* %230, align 4, !dbg !1150, !tbaa !870
  %232 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1151
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %231, i8* %232) #10, !dbg !1153
  unreachable, !dbg !1150

; <label>:233:                                    ; preds = %225
  %234 = getelementptr inbounds i8, i8* %226, i64 %60, !dbg !1155
  call void @llvm.dbg.value(metadata i8* %234, i64 0, metadata !1104, metadata !739) #10, !dbg !1144
  %235 = ptrtoint i8* %234 to i64, !dbg !1156
  %236 = sub i64 %217, %235, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1109, metadata !739) #10, !dbg !1157
  %237 = icmp ult i64 %236, %60, !dbg !1158
  br i1 %237, label %238, label %225, !dbg !1159, !llvm.loop !1141

; <label>:238:                                    ; preds = %233
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %200, i8* %234, i64 %236, i32 1, i1 false) #10, !dbg !1161
  %239 = getelementptr inbounds i8, i8* %200, i64 %236, !dbg !1162
  call void @llvm.dbg.value(metadata i8* %239, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %240 = ptrtoint i8* %239 to i64, !dbg !1163
  br label %241, !dbg !1164

; <label>:241:                                    ; preds = %238, %216
  %242 = phi i64 [ %217, %216 ], [ %240, %238 ]
  %243 = icmp ugt i8* %218, %219, !dbg !1165
  br i1 %243, label %244, label %303, !dbg !1166

; <label>:244:                                    ; preds = %241
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1110, metadata !739) #10, !dbg !1167
  call void @llvm.lifetime.start(i64 4, i8* nonnull %84) #10, !dbg !1168
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1113, metadata !739) #10, !dbg !1169
  store i32 0, i32* %3, align 4, !dbg !1169, !tbaa !870
  %245 = and i8 %221, 1, !dbg !1170
  %246 = icmp eq i8 %245, 0, !dbg !1170
  br i1 %246, label %262, label %247, !dbg !1172

; <label>:247:                                    ; preds = %244
  %248 = load i32, i32* @input_desc, align 4, !dbg !1173, !tbaa !870
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !1113, metadata !844) #10, !dbg !1169
  %249 = call i32 (i32, i64, ...) @ioctl(i32 %248, i64 21531, i32* nonnull %3) #10, !dbg !1175
  %250 = icmp slt i32 %249, 0, !dbg !1176
  br i1 %250, label %251, label %258, !dbg !1177

; <label>:251:                                    ; preds = %247
  %252 = tail call i32* @__errno_location() #1, !dbg !1179
  %253 = load i32, i32* %252, align 4, !dbg !1179, !tbaa !870
  switch i32 %253, label %254 [
    i32 95, label %258
    i32 25, label %258
    i32 22, label %258
    i32 19, label %258
    i32 38, label %258
  ], !dbg !1182

; <label>:254:                                    ; preds = %251
  %255 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !1183
  %256 = load i8*, i8** @infile, align 8, !dbg !1186, !tbaa !747
  %257 = call i8* @quotearg_style(i32 4, i8* %256) #10, !dbg !1186
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %253, i8* %255, i8* %257) #10, !dbg !1187
  br label %466, !dbg !1189

; <label>:258:                                    ; preds = %251, %251, %251, %251, %251, %247
  %259 = phi i8 [ 0, %251 ], [ 0, %251 ], [ 0, %251 ], [ 0, %251 ], [ 0, %251 ], [ %221, %247 ]
  %260 = load i32, i32* %3, align 4, !dbg !1190, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %259, i64 0, metadata !1103, metadata !739) #10, !dbg !1127
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !1113, metadata !739) #10, !dbg !1169
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1110, metadata !739) #10, !dbg !1167
  %261 = icmp eq i32 %260, 0, !dbg !1192
  br i1 %261, label %262, label %273, !dbg !1193

; <label>:262:                                    ; preds = %258, %244
  %263 = phi i8 [ %259, %258 ], [ %221, %244 ]
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1100, metadata !844) #10, !dbg !1131
  call void @llvm.dbg.value(metadata i8* %200, i64 0, metadata !1194, metadata !739) #10, !dbg !1201
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1199, metadata !739) #10, !dbg !1204
  %264 = sub i64 %242, %203, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %264, i64 0, metadata !1200, metadata !739) #10, !dbg !1206
  %265 = icmp eq i64 %264, 0, !dbg !1207
  br i1 %265, label %273, label %266, !dbg !1209

; <label>:266:                                    ; preds = %262
  %267 = call i64 @full_write(i32 1, i8* %200, i64 %264) #10, !dbg !1210
  %268 = icmp eq i64 %267, %264, !dbg !1213
  br i1 %268, label %273, label %269, !dbg !1214

; <label>:269:                                    ; preds = %266
  %270 = tail call i32* @__errno_location() #1, !dbg !1215
  %271 = load i32, i32* %270, align 4, !dbg !1215, !tbaa !870
  %272 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1216
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %271, i8* %272) #10, !dbg !1218
  unreachable, !dbg !1215

; <label>:273:                                    ; preds = %266, %262, %258
  %274 = phi i8 [ %259, %258 ], [ %263, %262 ], [ %263, %266 ]
  %275 = phi i64 [ %242, %258 ], [ %242, %262 ], [ %203, %266 ]
  %276 = load i32, i32* @input_desc, align 4, !dbg !1220, !tbaa !870
  %277 = call i64 @safe_read(i32 %276, i8* %194, i64 %139) #10, !dbg !1221
  call void @llvm.dbg.value(metadata i64 %277, i64 0, metadata !1101, metadata !739) #10, !dbg !1222
  switch i64 %277, label %301 [
    i64 -1, label %278
    i64 0, label %291
  ], !dbg !1223

; <label>:278:                                    ; preds = %273
  %279 = tail call i32* @__errno_location() #1, !dbg !1224
  %280 = load i32, i32* %279, align 4, !dbg !1224, !tbaa !870
  %281 = load i8*, i8** @infile, align 8, !dbg !1227, !tbaa !747
  %282 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %281) #10, !dbg !1228
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %282) #10, !dbg !1230
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1100, metadata !844) #10, !dbg !1131
  call void @llvm.dbg.value(metadata i8* %200, i64 0, metadata !1194, metadata !739) #10, !dbg !1232
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1199, metadata !739) #10, !dbg !1234
  %283 = sub i64 %275, %203, !dbg !1235
  call void @llvm.dbg.value(metadata i64 %283, i64 0, metadata !1200, metadata !739) #10, !dbg !1236
  %284 = icmp eq i64 %283, 0, !dbg !1237
  br i1 %284, label %466, label %285, !dbg !1238

; <label>:285:                                    ; preds = %278
  %286 = call i64 @full_write(i32 1, i8* %200, i64 %283) #10, !dbg !1239
  %287 = icmp eq i64 %286, %283, !dbg !1240
  br i1 %287, label %466, label %288, !dbg !1241

; <label>:288:                                    ; preds = %285
  %289 = load i32, i32* %279, align 4, !dbg !1242, !tbaa !870
  %290 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1243
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %289, i8* %290) #10, !dbg !1244
  unreachable, !dbg !1242

; <label>:291:                                    ; preds = %273
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1100, metadata !844) #10, !dbg !1131
  call void @llvm.dbg.value(metadata i8* %200, i64 0, metadata !1194, metadata !739) #10, !dbg !1245
  call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1199, metadata !739) #10, !dbg !1249
  %292 = sub i64 %275, %203, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1200, metadata !739) #10, !dbg !1251
  %293 = icmp eq i64 %292, 0, !dbg !1252
  br i1 %293, label %466, label %294, !dbg !1253

; <label>:294:                                    ; preds = %291
  %295 = call i64 @full_write(i32 1, i8* %200, i64 %292) #10, !dbg !1254
  %296 = icmp eq i64 %295, %292, !dbg !1255
  br i1 %296, label %466, label %297, !dbg !1256

; <label>:297:                                    ; preds = %294
  %298 = tail call i32* @__errno_location() #1, !dbg !1257
  %299 = load i32, i32* %298, align 4, !dbg !1257, !tbaa !870
  %300 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1258
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %299, i8* %300) #10, !dbg !1259
  unreachable, !dbg !1257

; <label>:301:                                    ; preds = %273
  call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !1098, metadata !739) #10, !dbg !1130
  %302 = getelementptr inbounds i8, i8* %194, i64 %277, !dbg !1260
  call void @llvm.dbg.value(metadata i8* %302, i64 0, metadata !1099, metadata !739) #10, !dbg !1128
  store i8 10, i8* %302, align 1, !dbg !1261, !tbaa !916
  call void @llvm.dbg.value(metadata i8 %259, i64 0, metadata !1103, metadata !739) #10, !dbg !1127
  call void @llvm.dbg.value(metadata i8* %302, i64 0, metadata !1099, metadata !739) #10, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !1098, metadata !739) #10, !dbg !1130
  call void @llvm.lifetime.end(i64 4, i8* nonnull %84) #10, !dbg !1262
  br label %352

; <label>:303:                                    ; preds = %241
  %304 = add nsw i32 %220, 1, !dbg !1263
  call void @llvm.dbg.value(metadata i32 %304, i64 0, metadata !1102, metadata !739) #10, !dbg !1126
  %305 = icmp sgt i32 %220, -1, !dbg !1266
  br i1 %305, label %306, label %340, !dbg !1267

; <label>:306:                                    ; preds = %303
  %307 = icmp eq i32 %220, 0, !dbg !1268
  %308 = or i1 %85, %307, !dbg !1271
  %309 = select i1 %307, i32 %304, i32 2, !dbg !1271
  br i1 %308, label %310, label %352, !dbg !1271

; <label>:310:                                    ; preds = %306
  call void @llvm.dbg.value(metadata i32 %309, i64 0, metadata !1102, metadata !739) #10, !dbg !1126
  br i1 %86, label %340, label %311, !dbg !1272

; <label>:311:                                    ; preds = %310
  %312 = load i8*, i8** @line_num_start, align 8
  br label %313, !dbg !1274, !llvm.loop !1280

; <label>:313:                                    ; preds = %318, %311
  %314 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %311 ], [ %319, %318 ]
  call void @llvm.dbg.value(metadata i8* %314, i64 0, metadata !1277, metadata !739) #10, !dbg !1283
  %315 = load i8, i8* %314, align 1, !dbg !1284, !tbaa !916
  %316 = add i8 %315, 1, !dbg !1284
  store i8 %316, i8* %314, align 1, !dbg !1284, !tbaa !916
  %317 = icmp slt i8 %315, 57, !dbg !1287
  br i1 %317, label %332, label %318, !dbg !1288

; <label>:318:                                    ; preds = %313
  %319 = getelementptr inbounds i8, i8* %314, i64 -1, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %319, i64 0, metadata !1277, metadata !739) #10, !dbg !1283
  store i8 48, i8* %314, align 1, !dbg !1290, !tbaa !916
  %320 = icmp ult i8* %319, %312, !dbg !1291
  br i1 %320, label %321, label %313, !dbg !1292, !llvm.loop !1280

; <label>:321:                                    ; preds = %318
  %322 = icmp ugt i8* %312, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1294
  br i1 %322, label %323, label %325, !dbg !1296

; <label>:323:                                    ; preds = %321
  %324 = getelementptr inbounds i8, i8* %312, i64 -1, !dbg !1297
  store i8* %324, i8** @line_num_start, align 8, !dbg !1297, !tbaa !747
  store i8 49, i8* %324, align 1, !dbg !1298, !tbaa !916
  br label %326, !dbg !1299

; <label>:325:                                    ; preds = %321
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 16, !dbg !1300, !tbaa !916
  br label %326

; <label>:326:                                    ; preds = %325, %323
  %327 = phi i8* [ %312, %325 ], [ %324, %323 ], !dbg !1301
  %328 = load i8*, i8** @line_num_print, align 8, !dbg !1303, !tbaa !747
  %329 = icmp ult i8* %327, %328, !dbg !1304
  br i1 %329, label %330, label %334, !dbg !1305

; <label>:330:                                    ; preds = %326
  %331 = getelementptr inbounds i8, i8* %328, i64 -1, !dbg !1306
  store i8* %331, i8** @line_num_print, align 8, !dbg !1306, !tbaa !747
  br label %334, !dbg !1307

; <label>:332:                                    ; preds = %313
  %333 = load i8*, i8** @line_num_print, align 8, !tbaa !747
  br label %334, !dbg !1308

; <label>:334:                                    ; preds = %332, %330, %326
  %335 = phi i8* [ %333, %332 ], [ %328, %326 ], [ %331, %330 ], !dbg !1309
  %336 = inttoptr i64 %242 to i8*, !dbg !1308
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  call void @llvm.dbg.value(metadata i8* %336, i64 0, metadata !1310, metadata !739) #10, !dbg !1319
  call void @llvm.dbg.value(metadata i8* %335, i64 0, metadata !1318, metadata !739) #10, !dbg !1319
  %337 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %336, i1 false) #10, !dbg !1321
  %338 = call i8* @__stpcpy_chk(i8* nonnull %336, i8* nonnull %335, i64 %337) #10, !dbg !1322
  call void @llvm.dbg.value(metadata i8* %338, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %339 = ptrtoint i8* %338 to i64, !dbg !1323
  br label %340, !dbg !1324

; <label>:340:                                    ; preds = %334, %310, %303
  %341 = phi i64 [ %242, %310 ], [ %339, %334 ], [ %242, %303 ]
  %342 = phi i32 [ %309, %310 ], [ %309, %334 ], [ %304, %303 ]
  call void @llvm.dbg.value(metadata i32 %342, i64 0, metadata !1102, metadata !739) #10, !dbg !1126
  br i1 %83, label %347, label %343, !dbg !1325

; <label>:343:                                    ; preds = %340
  %344 = inttoptr i64 %341 to i8*, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %344, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %345 = getelementptr inbounds i8, i8* %344, i64 1, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %345, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %346 = ptrtoint i8* %345 to i64, !dbg !1326
  store i8 36, i8* %344, align 1, !dbg !1328, !tbaa !916
  br label %347, !dbg !1329

; <label>:347:                                    ; preds = %340, %343
  %348 = phi i64 [ %346, %343 ], [ %341, %340 ]
  %349 = inttoptr i64 %348 to i8*, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %349, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %350 = getelementptr inbounds i8, i8* %349, i64 1, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %350, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %351 = ptrtoint i8* %350 to i64, !dbg !1330
  store i8 10, i8* %349, align 1, !dbg !1331, !tbaa !916
  br label %352

; <label>:352:                                    ; preds = %347, %306, %301
  %353 = phi i64 [ %275, %301 ], [ %351, %347 ], [ %242, %306 ]
  %354 = phi i8* [ %194, %301 ], [ %218, %347 ], [ %218, %306 ]
  %355 = phi i8* [ %302, %301 ], [ %219, %347 ], [ %219, %306 ]
  %356 = phi i32 [ %220, %301 ], [ %342, %347 ], [ 2, %306 ]
  %357 = phi i8 [ %274, %301 ], [ %221, %347 ], [ %221, %306 ]
  %358 = getelementptr inbounds i8, i8* %354, i64 1
  %359 = load i8, i8* %354, align 1, !tbaa !916
  call void @llvm.dbg.value(metadata i8 %357, i64 0, metadata !1103, metadata !739) #10, !dbg !1127
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1102, metadata !739) #10, !dbg !1126
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1097, metadata !739) #10, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %355, i64 0, metadata !1099, metadata !739) #10, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %358, i64 0, metadata !1098, metadata !739) #10, !dbg !1130
  %360 = icmp eq i8 %359, 10, !dbg !1333
  br i1 %360, label %216, label %361, !dbg !1334, !llvm.loop !1135

; <label>:361:                                    ; preds = %352
  %362 = icmp slt i32 %356, 0, !dbg !1336
  %363 = or i1 %69, %362, !dbg !1336
  br i1 %363, label %393, label %364, !dbg !1336

; <label>:364:                                    ; preds = %361
  %365 = load i8*, i8** @line_num_start, align 8
  br label %366, !dbg !1338, !llvm.loop !1280

; <label>:366:                                    ; preds = %371, %364
  %367 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %364 ], [ %372, %371 ]
  call void @llvm.dbg.value(metadata i8* %367, i64 0, metadata !1277, metadata !739) #10, !dbg !1341
  %368 = load i8, i8* %367, align 1, !dbg !1342, !tbaa !916
  %369 = add i8 %368, 1, !dbg !1342
  store i8 %369, i8* %367, align 1, !dbg !1342, !tbaa !916
  %370 = icmp slt i8 %368, 57, !dbg !1343
  br i1 %370, label %385, label %371, !dbg !1344

; <label>:371:                                    ; preds = %366
  %372 = getelementptr inbounds i8, i8* %367, i64 -1, !dbg !1345
  call void @llvm.dbg.value(metadata i8* %372, i64 0, metadata !1277, metadata !739) #10, !dbg !1341
  store i8 48, i8* %367, align 1, !dbg !1346, !tbaa !916
  %373 = icmp ult i8* %372, %365, !dbg !1347
  br i1 %373, label %374, label %366, !dbg !1348, !llvm.loop !1280

; <label>:374:                                    ; preds = %371
  %375 = icmp ugt i8* %365, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1349
  br i1 %375, label %376, label %378, !dbg !1350

; <label>:376:                                    ; preds = %374
  %377 = getelementptr inbounds i8, i8* %365, i64 -1, !dbg !1351
  store i8* %377, i8** @line_num_start, align 8, !dbg !1351, !tbaa !747
  store i8 49, i8* %377, align 1, !dbg !1352, !tbaa !916
  br label %379, !dbg !1353

; <label>:378:                                    ; preds = %374
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 16, !dbg !1354, !tbaa !916
  br label %379

; <label>:379:                                    ; preds = %378, %376
  %380 = phi i8* [ %365, %378 ], [ %377, %376 ], !dbg !1355
  %381 = load i8*, i8** @line_num_print, align 8, !dbg !1356, !tbaa !747
  %382 = icmp ult i8* %380, %381, !dbg !1357
  br i1 %382, label %383, label %387, !dbg !1358

; <label>:383:                                    ; preds = %379
  %384 = getelementptr inbounds i8, i8* %381, i64 -1, !dbg !1359
  store i8* %384, i8** @line_num_print, align 8, !dbg !1359, !tbaa !747
  br label %387, !dbg !1360

; <label>:385:                                    ; preds = %366
  %386 = load i8*, i8** @line_num_print, align 8, !tbaa !747
  br label %387, !dbg !1361

; <label>:387:                                    ; preds = %385, %383, %379
  %388 = phi i8* [ %386, %385 ], [ %381, %379 ], [ %384, %383 ], !dbg !1362
  %389 = inttoptr i64 %353 to i8*, !dbg !1361
  call void @llvm.dbg.value(metadata i8* %389, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  call void @llvm.dbg.value(metadata i8* %389, i64 0, metadata !1310, metadata !739) #10, !dbg !1363
  call void @llvm.dbg.value(metadata i8* %388, i64 0, metadata !1318, metadata !739) #10, !dbg !1363
  %390 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %389, i1 false) #10, !dbg !1365
  %391 = call i8* @__stpcpy_chk(i8* nonnull %389, i8* nonnull %388, i64 %390) #10, !dbg !1366
  call void @llvm.dbg.value(metadata i8* %391, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %392 = ptrtoint i8* %391 to i64, !dbg !1367
  br label %393, !dbg !1368

; <label>:393:                                    ; preds = %387, %361
  %394 = phi i64 [ %353, %361 ], [ %392, %387 ]
  br i1 %80, label %396, label %395, !dbg !1369

; <label>:395:                                    ; preds = %393
  br label %397, !dbg !1332

; <label>:396:                                    ; preds = %393
  br label %446, !dbg !1332

; <label>:397:                                    ; preds = %395, %441
  %398 = phi i64 [ %443, %441 ], [ %394, %395 ]
  %399 = phi i8* [ %444, %441 ], [ %358, %395 ]
  %400 = phi i8 [ %445, %441 ], [ %359, %395 ]
  call void @llvm.dbg.value(metadata i8 %400, i64 0, metadata !1097, metadata !739) #10, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %399, i64 0, metadata !1098, metadata !739) #10, !dbg !1130
  %401 = icmp ugt i8 %400, 31, !dbg !1370
  br i1 %401, label %402, label %428, !dbg !1375

; <label>:402:                                    ; preds = %397
  %403 = icmp ult i8 %400, 127, !dbg !1376
  br i1 %403, label %404, label %407, !dbg !1379

; <label>:404:                                    ; preds = %402
  %405 = inttoptr i64 %398 to i8*, !dbg !1380
  call void @llvm.dbg.value(metadata i8* %405, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %406 = getelementptr inbounds i8, i8* %405, i64 1, !dbg !1380
  call void @llvm.dbg.value(metadata i8* %406, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 %400, i8* %405, align 1, !dbg !1381, !tbaa !916
  br label %441, !dbg !1382

; <label>:407:                                    ; preds = %402
  %408 = icmp eq i8 %400, 127, !dbg !1383
  %409 = inttoptr i64 %398 to i8*
  call void @llvm.dbg.value(metadata i8* %409, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %410 = getelementptr inbounds i8, i8* %409, i64 1
  call void @llvm.dbg.value(metadata i8* %410, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  br i1 %408, label %411, label %413, !dbg !1385

; <label>:411:                                    ; preds = %407
  store i8 94, i8* %409, align 1, !dbg !1386, !tbaa !916
  call void @llvm.dbg.value(metadata i8* %410, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %412 = getelementptr inbounds i8, i8* %409, i64 2, !dbg !1388
  call void @llvm.dbg.value(metadata i8* %412, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 63, i8* %410, align 1, !dbg !1389, !tbaa !916
  br label %441, !dbg !1390

; <label>:413:                                    ; preds = %407
  store i8 77, i8* %409, align 1, !dbg !1391, !tbaa !916
  call void @llvm.dbg.value(metadata i8* %410, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %414 = getelementptr inbounds i8, i8* %409, i64 2, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %414, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 45, i8* %410, align 1, !dbg !1394, !tbaa !916
  %415 = icmp ugt i8 %400, -97, !dbg !1395
  br i1 %415, label %416, label %424, !dbg !1397

; <label>:416:                                    ; preds = %413
  %417 = icmp eq i8 %400, -1, !dbg !1398
  br i1 %417, label %421, label %418, !dbg !1401

; <label>:418:                                    ; preds = %416
  %419 = xor i8 %400, -128, !dbg !1402
  call void @llvm.dbg.value(metadata i8* %414, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %420 = getelementptr inbounds i8, i8* %409, i64 3, !dbg !1403
  call void @llvm.dbg.value(metadata i8* %420, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 %419, i8* %414, align 1, !dbg !1404, !tbaa !916
  br label %441, !dbg !1405

; <label>:421:                                    ; preds = %416
  call void @llvm.dbg.value(metadata i8* %414, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %422 = getelementptr inbounds i8, i8* %409, i64 3, !dbg !1406
  call void @llvm.dbg.value(metadata i8* %422, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 94, i8* %414, align 1, !dbg !1408, !tbaa !916
  call void @llvm.dbg.value(metadata i8* %422, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %423 = getelementptr inbounds i8, i8* %409, i64 4, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %423, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 63, i8* %422, align 1, !dbg !1410, !tbaa !916
  br label %441

; <label>:424:                                    ; preds = %413
  call void @llvm.dbg.value(metadata i8* %414, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %425 = getelementptr inbounds i8, i8* %409, i64 3, !dbg !1411
  call void @llvm.dbg.value(metadata i8* %425, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 94, i8* %414, align 1, !dbg !1413, !tbaa !916
  %426 = add i8 %400, -64, !dbg !1414
  call void @llvm.dbg.value(metadata i8* %425, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %427 = getelementptr inbounds i8, i8* %409, i64 4, !dbg !1415
  call void @llvm.dbg.value(metadata i8* %427, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 %426, i8* %425, align 1, !dbg !1416, !tbaa !916
  br label %441

; <label>:428:                                    ; preds = %397
  %429 = icmp ne i8 %400, 9, !dbg !1417
  %430 = or i1 %81, %429, !dbg !1417
  br i1 %430, label %434, label %431, !dbg !1417

; <label>:431:                                    ; preds = %428
  %432 = inttoptr i64 %398 to i8*, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %432, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %433 = getelementptr inbounds i8, i8* %432, i64 1, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %433, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 9, i8* %432, align 1, !dbg !1420, !tbaa !916
  br label %441, !dbg !1421

; <label>:434:                                    ; preds = %428
  %435 = icmp eq i8 %400, 10, !dbg !1422
  br i1 %435, label %209, label %436, !dbg !1424, !llvm.loop !1425

; <label>:436:                                    ; preds = %434
  %437 = inttoptr i64 %398 to i8*, !dbg !1428
  call void @llvm.dbg.value(metadata i8* %437, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %438 = getelementptr inbounds i8, i8* %437, i64 1, !dbg !1428
  call void @llvm.dbg.value(metadata i8* %438, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 94, i8* %437, align 1, !dbg !1430, !tbaa !916
  %439 = add i8 %400, 64, !dbg !1431
  call void @llvm.dbg.value(metadata i8* %438, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %440 = getelementptr inbounds i8, i8* %437, i64 2, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %440, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 %439, i8* %438, align 1, !dbg !1433, !tbaa !916
  br label %441

; <label>:441:                                    ; preds = %436, %431, %424, %421, %418, %411, %404
  %442 = phi i8* [ %406, %404 ], [ %412, %411 ], [ %423, %421 ], [ %420, %418 ], [ %427, %424 ], [ %440, %436 ], [ %433, %431 ]
  %443 = ptrtoint i8* %442 to i64
  %444 = getelementptr inbounds i8, i8* %399, i64 1, !dbg !1434
  call void @llvm.dbg.value(metadata i8* %444, i64 0, metadata !1098, metadata !739) #10, !dbg !1130
  %445 = load i8, i8* %399, align 1, !dbg !1435, !tbaa !916
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1097, metadata !739) #10, !dbg !1332
  br label %397, !dbg !1436, !llvm.loop !1438

; <label>:446:                                    ; preds = %396, %461
  %447 = phi i64 [ %463, %461 ], [ %394, %396 ]
  %448 = phi i8* [ %464, %461 ], [ %358, %396 ]
  %449 = phi i8 [ %465, %461 ], [ %359, %396 ]
  call void @llvm.dbg.value(metadata i8 %449, i64 0, metadata !1097, metadata !739) #10, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %448, i64 0, metadata !1098, metadata !739) #10, !dbg !1130
  %450 = icmp ne i8 %449, 9, !dbg !1441
  %451 = or i1 %450, %87, !dbg !1441
  br i1 %451, label %456, label %452, !dbg !1441

; <label>:452:                                    ; preds = %446
  %453 = inttoptr i64 %447 to i8*, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %453, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %454 = getelementptr inbounds i8, i8* %453, i64 1, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %454, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 94, i8* %453, align 1, !dbg !1447, !tbaa !916
  call void @llvm.dbg.value(metadata i8* %454, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %455 = getelementptr inbounds i8, i8* %453, i64 2, !dbg !1448
  call void @llvm.dbg.value(metadata i8* %455, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 73, i8* %454, align 1, !dbg !1449, !tbaa !916
  br label %461, !dbg !1450

; <label>:456:                                    ; preds = %446
  %457 = icmp eq i8 %449, 10, !dbg !1451
  br i1 %457, label %205, label %458, !dbg !1453, !llvm.loop !1425

; <label>:458:                                    ; preds = %456
  %459 = inttoptr i64 %447 to i8*, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %459, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  %460 = getelementptr inbounds i8, i8* %459, i64 1, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %460, i64 0, metadata !1100, metadata !739) #10, !dbg !1131
  store i8 %449, i8* %459, align 1, !dbg !1455, !tbaa !916
  br label %461

; <label>:461:                                    ; preds = %458, %452
  %462 = phi i8* [ %460, %458 ], [ %455, %452 ]
  %463 = ptrtoint i8* %462 to i64
  %464 = getelementptr inbounds i8, i8* %448, i64 1, !dbg !1456
  call void @llvm.dbg.value(metadata i8* %464, i64 0, metadata !1098, metadata !739) #10, !dbg !1130
  %465 = load i8, i8* %448, align 1, !dbg !1457, !tbaa !916
  call void @llvm.dbg.value(metadata i8 %465, i64 0, metadata !1097, metadata !739) #10, !dbg !1332
  br label %446, !dbg !1458, !llvm.loop !1460

; <label>:466:                                    ; preds = %254, %278, %285, %291, %294
  %467 = phi i8 [ 0, %254 ], [ 0, %285 ], [ 0, %278 ], [ 1, %294 ], [ 1, %291 ]
  store i32 %220, i32* @newlines2, align 4, !tbaa !870
  call void @llvm.dbg.value(metadata i8 %259, i64 0, metadata !1103, metadata !739) #10, !dbg !1127
  call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !1098, metadata !739) #10, !dbg !1130
  call void @llvm.lifetime.end(i64 4, i8* nonnull %84) #10, !dbg !1262
  call void @free(i8* %188) #10, !dbg !1463
  br label %469

; <label>:468:                                    ; preds = %168
  br label %469

; <label>:469:                                    ; preds = %468, %171, %466
  %470 = phi i8 [ %467, %466 ], [ 0, %171 ], [ 1, %468 ]
  %471 = phi i8* [ %185, %466 ], [ %161, %171 ], [ %161, %468 ]
  %472 = and i8 %470, %93
  call void @llvm.dbg.value(metadata i8* %471, i64 0, metadata !105, metadata !739), !dbg !996
  call void @llvm.dbg.value(metadata i8 %472, i64 0, metadata !107, metadata !739), !dbg !805
  call void @free(i8* %471) #10, !dbg !1464
  br label %473, !dbg !1464

; <label>:473:                                    ; preds = %469, %152, %124
  %474 = phi i8 [ 0, %124 ], [ 0, %152 ], [ %472, %469 ]
  call void @llvm.dbg.value(metadata i8 %474, i64 0, metadata !107, metadata !739), !dbg !805
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !177, metadata !739), !dbg !1465
  %475 = load i8*, i8** @infile, align 8, !dbg !1466, !tbaa !747
  call void @llvm.dbg.value(metadata i8* %475, i64 0, metadata !178, metadata !739), !dbg !1468
  %476 = load i8, i8* %475, align 1, !dbg !1466, !tbaa !916
  %477 = icmp eq i8 %476, 45, !dbg !1469
  br i1 %477, label %478, label %482, !dbg !1472

; <label>:478:                                    ; preds = %473
  %479 = getelementptr inbounds i8, i8* %475, i64 1, !dbg !1474
  %480 = load i8, i8* %479, align 1, !dbg !1474, !tbaa !916
  %481 = icmp eq i8 %480, 0, !dbg !1477
  br i1 %481, label %491, label %482, !dbg !1479

; <label>:482:                                    ; preds = %473, %478
  %483 = load i32, i32* @input_desc, align 4, !dbg !1480, !tbaa !870
  %484 = call i32 @close(i32 %483) #10, !dbg !1482
  %485 = icmp slt i32 %484, 0, !dbg !1483
  br i1 %485, label %486, label %491, !dbg !1484

; <label>:486:                                    ; preds = %482
  %487 = tail call i32* @__errno_location() #1, !dbg !1486
  %488 = load i32, i32* %487, align 4, !dbg !1486, !tbaa !870
  %489 = load i8*, i8** @infile, align 8, !dbg !1488, !tbaa !747
  %490 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %489) #10, !dbg !1489
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %488, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %490) #10, !dbg !1491
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !107, metadata !739), !dbg !805
  br label %491, !dbg !1493

; <label>:491:                                    ; preds = %478, %482, %486, %114
  %492 = phi i8 [ %121, %478 ], [ %121, %486 ], [ %121, %482 ], [ %92, %114 ]
  %493 = phi i8 [ %474, %478 ], [ 0, %486 ], [ %474, %482 ], [ 0, %114 ]
  call void @llvm.dbg.value(metadata i8 %493, i64 0, metadata !107, metadata !739), !dbg !805
  call void @llvm.dbg.value(metadata i8 %492, i64 0, metadata !120, metadata !739), !dbg !806
  %494 = add nsw i64 %91, 1, !dbg !1494
  %495 = icmp slt i64 %494, %89, !dbg !1495
  br i1 %495, label %90, label %496, !dbg !1496, !llvm.loop !902

; <label>:496:                                    ; preds = %491
  %497 = and i8 %492, 1, !dbg !1497
  %498 = icmp eq i8 %497, 0, !dbg !1497
  br i1 %498, label %506, label %499, !dbg !1499

; <label>:499:                                    ; preds = %496
  %500 = call i32 @close(i32 0) #10, !dbg !1500
  %501 = icmp slt i32 %500, 0, !dbg !1502
  br i1 %501, label %502, label %506, !dbg !1503

; <label>:502:                                    ; preds = %499
  %503 = tail call i32* @__errno_location() #1, !dbg !1504
  %504 = load i32, i32* %503, align 4, !dbg !1504, !tbaa !870
  %505 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !1505
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %504, i8* %505) #10, !dbg !1506
  unreachable, !dbg !1504

; <label>:506:                                    ; preds = %496, %499
  %507 = and i8 %493, 1, !dbg !1508
  %508 = xor i8 %507, 1, !dbg !1508
  %509 = zext i8 %508 to i32, !dbg !1508
  call void @llvm.lifetime.end(i64 144, i8* nonnull %7) #10, !dbg !1509
  ret i32 %509, !dbg !1509
}

; Function Attrs: nounwind readnone
declare i32 @getpagesize() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1510 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1512, metadata !739), !dbg !1513
  store i8* %0, i8** @file_name, align 8, !dbg !1514, !tbaa !747
  ret void, !dbg !1515
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1516 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1520, metadata !1120), !dbg !1521
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1522, !tbaa !1523
  ret void, !dbg !1525
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1526 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1531, !tbaa !747
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1532
  %3 = icmp eq i32 %2, 0, !dbg !1533
  br i1 %3, label %21, label %4, !dbg !1534

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1535, !tbaa !1523, !range !1537
  %6 = icmp eq i8 %5, 0, !dbg !1535
  %7 = tail call i32* @__errno_location() #1, !dbg !1538
  br i1 %6, label %11, label %8, !dbg !1540

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1541, !tbaa !870
  %10 = icmp eq i32 %9, 32, !dbg !1543
  br i1 %10, label %21, label %11, !dbg !1544

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !1546
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1528, metadata !739), !dbg !1547
  %13 = load i8*, i8** @file_name, align 8, !dbg !1548, !tbaa !747
  %14 = icmp eq i8* %13, null, !dbg !1548
  %15 = load i32, i32* %7, align 4, !tbaa !870
  br i1 %14, label %18, label %16, !dbg !1549

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1550
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1552
  br label %19, !dbg !1554

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #10, !dbg !1555
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1556, !tbaa !870
  tail call void @_exit(i32 %20) #14, !dbg !1557
  unreachable, !dbg !1557

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1558, !tbaa !747
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1560
  %24 = icmp eq i32 %23, 0, !dbg !1561
  br i1 %24, label %27, label %25, !dbg !1562

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1563, !tbaa !870
  tail call void @_exit(i32 %26) #14, !dbg !1564
  unreachable, !dbg !1564

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1565
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1566 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1574, metadata !739), !dbg !1580
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1575, metadata !739), !dbg !1581
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1576, metadata !739), !dbg !1582
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1577, metadata !739), !dbg !1583
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1584
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1578, metadata !739), !dbg !1584
  ret void, !dbg !1585
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1586 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1638, metadata !739), !dbg !1640
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1639, metadata !739), !dbg !1641
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1642
  br i1 %3, label %7, label %4, !dbg !1644

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1645
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1574, metadata !739) #10, !dbg !1646
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1575, metadata !739) #10, !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1576, metadata !739) #10, !dbg !1650
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1577, metadata !739) #10, !dbg !1651
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1578, metadata !739) #10, !dbg !1652
  br label %7, !dbg !1653

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1654
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @full_write(i32, i8*, i64) local_unnamed_addr #6 !dbg !1655 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1658, metadata !739), !dbg !1665
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1659, metadata !739), !dbg !1666
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1660, metadata !739), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1661, metadata !739), !dbg !1668
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1662, metadata !739), !dbg !1669
  %4 = icmp eq i64 %2, 0, !dbg !1670
  br i1 %4, label %20, label %5, !dbg !1672

; <label>:5:                                      ; preds = %3
  br label %6, !dbg !1667

; <label>:6:                                      ; preds = %5, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %5 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %5 ]
  %9 = phi i64 [ %16, %13 ], [ %2, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1660, metadata !739), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1662, metadata !739), !dbg !1669
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1661, metadata !739), !dbg !1668
  %10 = tail call i64 @safe_write(i32 %0, i8* %8, i64 %9) #10, !dbg !1673
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1663, metadata !739), !dbg !1674
  switch i64 %10, label %13 [
    i64 -1, label %18
    i64 0, label %11
  ], !dbg !1675

; <label>:11:                                     ; preds = %6
  %12 = tail call i32* @__errno_location() #1, !dbg !1676
  store i32 28, i32* %12, align 4, !dbg !1679, !tbaa !870
  br label %20, !dbg !1680

; <label>:13:                                     ; preds = %6
  %14 = add i64 %10, %7, !dbg !1681
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1661, metadata !739), !dbg !1668
  %15 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !1682
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1662, metadata !739), !dbg !1669
  %16 = sub i64 %9, %10, !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1660, metadata !739), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !1660, metadata !739), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !1662, metadata !739), !dbg !1669
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !1661, metadata !739), !dbg !1668
  %17 = icmp eq i64 %16, 0, !dbg !1670
  br i1 %17, label %18, label %6, !llvm.loop !1684

; <label>:18:                                     ; preds = %6, %13
  %19 = phi i64 [ %7, %6 ], [ %14, %13 ]
  br label %20, !dbg !1668

; <label>:20:                                     ; preds = %18, %11, %3
  %21 = phi i64 [ 0, %3 ], [ %7, %11 ], [ %19, %18 ]
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !1661, metadata !739), !dbg !1668
  ret i64 %21, !dbg !1687
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1688 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1690, metadata !739), !dbg !1693
  %2 = icmp eq i8* %0, null, !dbg !1694
  br i1 %2, label %3, label %6, !dbg !1696

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1697, !tbaa !747
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1699
  tail call void @abort() #14, !dbg !1700
  unreachable, !dbg !1700

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1701
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1691, metadata !739), !dbg !1702
  %8 = icmp ne i8* %7, null, !dbg !1703
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1704
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1706
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1692, metadata !739), !dbg !1707
  %11 = ptrtoint i8* %10 to i64, !dbg !1708
  %12 = ptrtoint i8* %0 to i64, !dbg !1708
  %13 = sub i64 %11, %12, !dbg !1708
  %14 = icmp sgt i64 %13, 6, !dbg !1710
  br i1 %14, label %15, label %24, !dbg !1711

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1712
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #13, !dbg !1712
  %18 = icmp eq i32 %17, 0, !dbg !1714
  br i1 %18, label %19, label %24, !dbg !1715

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1690, metadata !739), !dbg !1693
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #13, !dbg !1716
  %21 = icmp eq i32 %20, 0, !dbg !1719
  br i1 %21, label %22, label %24, !dbg !1720

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1721
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1690, metadata !739), !dbg !1693
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1723, !tbaa !747
  br label %24, !dbg !1724

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1690, metadata !739), !dbg !1693
  store i8* %25, i8** @program_name, align 8, !dbg !1725, !tbaa !747
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1726, !tbaa !747
  ret void, !dbg !1727
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1728 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1733, metadata !739), !dbg !1736
  %2 = tail call i32* @__errno_location() #1, !dbg !1737
  %3 = load i32, i32* %2, align 4, !dbg !1737, !tbaa !870
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1734, metadata !739), !dbg !1738
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1739
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1740
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1740
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1742
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1735, metadata !739), !dbg !1743
  store i32 %3, i32* %2, align 4, !dbg !1744, !tbaa !870
  ret %struct.quoting_options* %8, !dbg !1745
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1746 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1752, metadata !739), !dbg !1753
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1754
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1754
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1755
  %5 = load i32, i32* %4, align 8, !dbg !1755, !tbaa !1757
  ret i32 %5, !dbg !1759
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1760 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1764, metadata !739), !dbg !1766
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1765, metadata !739), !dbg !1767
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1768
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1768
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1769
  store i32 %1, i32* %5, align 8, !dbg !1771, !tbaa !1757
  ret void, !dbg !1772
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1773 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1777, metadata !739), !dbg !1785
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1778, metadata !739), !dbg !1786
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1779, metadata !739), !dbg !1787
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1780, metadata !739), !dbg !1788
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1789
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1789
  %6 = lshr i8 %1, 5, !dbg !1790
  %7 = zext i8 %6 to i64, !dbg !1790
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1792
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1781, metadata !739), !dbg !1793
  %9 = and i8 %1, 31, !dbg !1794
  %10 = zext i8 %9 to i32, !dbg !1795
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1783, metadata !739), !dbg !1796
  %11 = load i32, i32* %8, align 4, !dbg !1797, !tbaa !870
  %12 = lshr i32 %11, %10, !dbg !1798
  %13 = and i32 %12, 1, !dbg !1799
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1784, metadata !739), !dbg !1800
  %14 = and i32 %2, 1, !dbg !1801
  %15 = xor i32 %13, %14, !dbg !1802
  %16 = shl i32 %15, %10, !dbg !1803
  %17 = xor i32 %16, %11, !dbg !1804
  store i32 %17, i32* %8, align 4, !dbg !1804, !tbaa !870
  ret i32 %13, !dbg !1805
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1806 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1810, metadata !739), !dbg !1813
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1811, metadata !739), !dbg !1814
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1815
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1810, metadata !739), !dbg !1813
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1817
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1810, metadata !739), !dbg !1813
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1818
  %6 = load i32, i32* %5, align 4, !dbg !1818, !tbaa !1819
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1812, metadata !739), !dbg !1820
  store i32 %1, i32* %5, align 4, !dbg !1821, !tbaa !1819
  ret i32 %6, !dbg !1822
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1823 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1827, metadata !739), !dbg !1830
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1828, metadata !739), !dbg !1831
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1829, metadata !739), !dbg !1832
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1827, metadata !739), !dbg !1830
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1835
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1827, metadata !739), !dbg !1830
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1836
  store i32 10, i32* %6, align 8, !dbg !1837, !tbaa !1757
  %7 = icmp ne i8* %1, null, !dbg !1838
  %8 = icmp ne i8* %2, null, !dbg !1840
  %9 = and i1 %7, %8, !dbg !1842
  br i1 %9, label %11, label %10, !dbg !1842

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1843
  unreachable, !dbg !1843

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1844
  store i8* %1, i8** %12, align 8, !dbg !1845, !tbaa !1846
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1847
  store i8* %2, i8** %13, align 8, !dbg !1848, !tbaa !1849
  ret void, !dbg !1850
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1851 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1855, metadata !739), !dbg !1863
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1856, metadata !739), !dbg !1864
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1857, metadata !739), !dbg !1865
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1858, metadata !739), !dbg !1866
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1859, metadata !739), !dbg !1867
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1868
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1860, metadata !739), !dbg !1869
  %8 = tail call i32* @__errno_location() #1, !dbg !1870
  %9 = load i32, i32* %8, align 4, !dbg !1870, !tbaa !870
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1861, metadata !739), !dbg !1871
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1872
  %11 = load i32, i32* %10, align 8, !dbg !1872, !tbaa !1757
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1873
  %13 = load i32, i32* %12, align 4, !dbg !1873, !tbaa !1819
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1874
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1875
  %16 = load i8*, i8** %15, align 8, !dbg !1875, !tbaa !1846
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1876
  %18 = load i8*, i8** %17, align 8, !dbg !1876, !tbaa !1849
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1877
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1862, metadata !739), !dbg !1878
  store i32 %9, i32* %8, align 4, !dbg !1879, !tbaa !870
  ret i64 %19, !dbg !1880
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1881 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1887, metadata !739), !dbg !1950
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1888, metadata !739), !dbg !1951
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1889, metadata !739), !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1890, metadata !739), !dbg !1953
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1891, metadata !739), !dbg !1954
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1892, metadata !739), !dbg !1955
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1893, metadata !739), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1894, metadata !739), !dbg !1957
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1895, metadata !739), !dbg !1958
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1897, metadata !739), !dbg !1959
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1898, metadata !739), !dbg !1960
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1899, metadata !739), !dbg !1961
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1900, metadata !739), !dbg !1962
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1901, metadata !739), !dbg !1963
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1964
  %14 = icmp eq i64 %13, 1, !dbg !1965
  %15 = lshr i32 %5, 1, !dbg !1966
  %16 = trunc i32 %15 to i8, !dbg !1966
  %17 = and i8 %16, 1, !dbg !1966
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1903, metadata !739), !dbg !1966
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !739), !dbg !1967
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1905, metadata !739), !dbg !1968
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1906, metadata !739), !dbg !1969
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1970

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1888, metadata !739), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1906, metadata !739), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1905, metadata !739), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1903, metadata !739), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1890, metadata !739), !dbg !1953
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1901, metadata !739), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1900, metadata !739), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1899, metadata !739), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1898, metadata !739), !dbg !1960
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1895, metadata !739), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1894, metadata !739), !dbg !1957
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1891, metadata !739), !dbg !1954
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
  ], !dbg !1971

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1891, metadata !739), !dbg !1954
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1903, metadata !739), !dbg !1966
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1903, metadata !739), !dbg !1966
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1891, metadata !739), !dbg !1954
  br label %95, !dbg !1972

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1903, metadata !739), !dbg !1966
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1891, metadata !739), !dbg !1954
  %43 = and i8 %36, 1, !dbg !1974
  %44 = icmp eq i8 %43, 0, !dbg !1974
  br i1 %44, label %45, label %95, !dbg !1972

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1976
  br i1 %46, label %95, label %47, !dbg !1980

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1982, !tbaa !916
  br label %95, !dbg !1982

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 %28), !dbg !1984
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1894, metadata !739), !dbg !1957
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), i32 %28), !dbg !1988
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1895, metadata !739), !dbg !1958
  br label %51, !dbg !1989

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1895, metadata !739), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1894, metadata !739), !dbg !1957
  %54 = and i8 %36, 1, !dbg !1990
  %55 = icmp eq i8 %54, 0, !dbg !1990
  br i1 %55, label %56, label %73, !dbg !1992

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1899, metadata !739), !dbg !1961
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1897, metadata !739), !dbg !1959
  %57 = load i8, i8* %52, align 1, !dbg !1993, !tbaa !916
  %58 = icmp eq i8 %57, 0, !dbg !1997
  br i1 %58, label %73, label %59, !dbg !1997

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1999

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1999
  br i1 %64, label %65, label %67, !dbg !2003

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2005
  store i8 %61, i8* %66, align 1, !dbg !2005, !tbaa !916
  br label %67, !dbg !2005

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1897, metadata !739), !dbg !1959
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1899, metadata !739), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1899, metadata !739), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1897, metadata !739), !dbg !1959
  %70 = load i8, i8* %69, align 1, !dbg !1993, !tbaa !916
  %71 = icmp eq i8 %70, 0, !dbg !1997
  br i1 %71, label %72, label %60, !dbg !1997, !llvm.loop !2011

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1959

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1901, metadata !739), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1899, metadata !739), !dbg !1961
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1900, metadata !739), !dbg !1962
  br label %95, !dbg !2015

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1901, metadata !739), !dbg !1963
  br label %77, !dbg !2016

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1901, metadata !739), !dbg !1963
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1903, metadata !739), !dbg !1966
  br label %79, !dbg !2017

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1903, metadata !739), !dbg !1966
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1901, metadata !739), !dbg !1963
  %82 = and i8 %81, 1, !dbg !2018
  %83 = icmp eq i8 %82, 0, !dbg !2018
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1901, metadata !739), !dbg !1963
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2020
  br label %85, !dbg !2020

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1903, metadata !739), !dbg !1966
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1901, metadata !739), !dbg !1963
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1891, metadata !739), !dbg !1954
  %88 = and i8 %87, 1, !dbg !2021
  %89 = icmp eq i8 %88, 0, !dbg !2021
  br i1 %89, label %90, label %95, !dbg !2023

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2024
  br i1 %91, label %95, label %92, !dbg !2028

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2030, !tbaa !916
  br label %95, !dbg !2030

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1903, metadata !739), !dbg !1966
  br label %95, !dbg !2032

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2033
  unreachable, !dbg !2033

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1903, metadata !739), !dbg !1966
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1901, metadata !739), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1900, metadata !739), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1899, metadata !739), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1895, metadata !739), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1894, metadata !739), !dbg !1957
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1891, metadata !739), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1896, metadata !739), !dbg !2034
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
  br label %123, !dbg !2035

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1888, metadata !739), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1906, metadata !739), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1905, metadata !739), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1890, metadata !739), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1898, metadata !739), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1896, metadata !739), !dbg !2034
  %132 = icmp eq i64 %127, -1, !dbg !2036
  br i1 %132, label %135, label %133, !dbg !2038

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2039
  br i1 %134, label %597, label %139, !dbg !2041

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2043
  %137 = load i8, i8* %136, align 1, !dbg !2043, !tbaa !916
  %138 = icmp eq i8 %137, 0, !dbg !2045
  br i1 %138, label %597, label %139, !dbg !2041

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1912, metadata !739), !dbg !2046
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1913, metadata !739), !dbg !2047
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1914, metadata !739), !dbg !2048
  br i1 %109, label %140, label %155, !dbg !2049

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2051
  %142 = and i1 %110, %132, !dbg !2053
  br i1 %142, label %143, label %145, !dbg !2053

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1890, metadata !739), !dbg !1953
  br label %145, !dbg !2055

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1890, metadata !739), !dbg !1953
  %147 = icmp ugt i64 %141, %146, !dbg !2057
  br i1 %147, label %155, label %148, !dbg !2059

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2060
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2061
  %151 = icmp ne i32 %150, 0, !dbg !2062
  %152 = or i1 %151, %112, !dbg !2062
  %153 = xor i1 %151, true, !dbg !2062
  %154 = zext i1 %153 to i8, !dbg !2062
  br i1 %152, label %155, label %644, !dbg !2062

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1912, metadata !739), !dbg !2046
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1890, metadata !739), !dbg !1953
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2064
  %159 = load i8, i8* %158, align 1, !dbg !2064, !tbaa !916
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1907, metadata !739), !dbg !2065
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
  ], !dbg !2066

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2067

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2068

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1913, metadata !739), !dbg !2047
  %163 = and i8 %128, 1, !dbg !2073
  %164 = icmp eq i8 %163, 0, !dbg !2073
  %165 = and i1 %114, %164, !dbg !2076
  br i1 %165, label %166, label %182, !dbg !2076

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2078
  br i1 %167, label %168, label %170, !dbg !2083

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2085
  store i8 39, i8* %169, align 1, !dbg !2085, !tbaa !916
  br label %170, !dbg !2085

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1897, metadata !739), !dbg !1959
  %172 = icmp ult i64 %171, %131, !dbg !2089
  br i1 %172, label %173, label %175, !dbg !2093

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2095
  store i8 36, i8* %174, align 1, !dbg !2095, !tbaa !916
  br label %175, !dbg !2095

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1897, metadata !739), !dbg !1959
  %177 = icmp ult i64 %176, %131, !dbg !2099
  br i1 %177, label %178, label %180, !dbg !2103

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2105
  store i8 39, i8* %179, align 1, !dbg !2105, !tbaa !916
  br label %180, !dbg !2105

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1904, metadata !739), !dbg !1967
  br label %182, !dbg !2109

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1897, metadata !739), !dbg !1959
  %185 = icmp ult i64 %183, %131, !dbg !2111
  br i1 %185, label %186, label %188, !dbg !2115

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2117
  store i8 92, i8* %187, align 1, !dbg !2117, !tbaa !916
  br label %188, !dbg !2117

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1897, metadata !739), !dbg !1959
  br i1 %106, label %190, label %476, !dbg !2121

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2123
  %192 = icmp ult i64 %191, %156, !dbg !2125
  br i1 %192, label %193, label %476, !dbg !2126

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2127
  %195 = load i8, i8* %194, align 1, !dbg !2127, !tbaa !916
  %196 = add i8 %195, -48, !dbg !2129
  %197 = icmp ult i8 %196, 10, !dbg !2129
  br i1 %197, label %198, label %476, !dbg !2129

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2130
  br i1 %199, label %200, label %202, !dbg !2135

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2137
  store i8 48, i8* %201, align 1, !dbg !2137, !tbaa !916
  br label %202, !dbg !2137

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1897, metadata !739), !dbg !1959
  %204 = icmp ult i64 %203, %131, !dbg !2141
  br i1 %204, label %205, label %207, !dbg !2145

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2147
  store i8 48, i8* %206, align 1, !dbg !2147, !tbaa !916
  br label %207, !dbg !2147

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1897, metadata !739), !dbg !1959
  br label %476, !dbg !2151

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2152

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2153

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2154

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2156

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2158
  %215 = icmp ult i64 %214, %156, !dbg !2160
  br i1 %215, label %216, label %476, !dbg !2161

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2162
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2164
  %219 = load i8, i8* %218, align 1, !dbg !2164, !tbaa !916
  %220 = icmp eq i8 %219, 63, !dbg !2165
  br i1 %220, label %221, label %476, !dbg !2166

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2168
  %223 = load i8, i8* %222, align 1, !dbg !2168, !tbaa !916
  %224 = sext i8 %223 to i32, !dbg !2168
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
  ], !dbg !2169

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2170

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1907, metadata !739), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1896, metadata !739), !dbg !2034
  %227 = icmp ult i64 %125, %131, !dbg !2172
  br i1 %227, label %228, label %230, !dbg !2176

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2178
  store i8 63, i8* %229, align 1, !dbg !2178, !tbaa !916
  br label %230, !dbg !2178

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2180
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1897, metadata !739), !dbg !1959
  %232 = icmp ult i64 %231, %131, !dbg !2182
  br i1 %232, label %233, label %235, !dbg !2186

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2188
  store i8 34, i8* %234, align 1, !dbg !2188, !tbaa !916
  br label %235, !dbg !2188

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1897, metadata !739), !dbg !1959
  %237 = icmp ult i64 %236, %131, !dbg !2192
  br i1 %237, label %238, label %240, !dbg !2196

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2198
  store i8 34, i8* %239, align 1, !dbg !2198, !tbaa !916
  br label %240, !dbg !2198

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1897, metadata !739), !dbg !1959
  %242 = icmp ult i64 %241, %131, !dbg !2202
  br i1 %242, label %243, label %245, !dbg !2206

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2208
  store i8 63, i8* %244, align 1, !dbg !2208, !tbaa !916
  br label %245, !dbg !2208

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1897, metadata !739), !dbg !1959
  br label %476, !dbg !2212

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1911, metadata !739), !dbg !2213
  br label %257, !dbg !2214

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1911, metadata !739), !dbg !2213
  br label %257, !dbg !2215

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1911, metadata !739), !dbg !2213
  br label %255, !dbg !2216

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1911, metadata !739), !dbg !2213
  br label %255, !dbg !2217

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1911, metadata !739), !dbg !2213
  br label %257, !dbg !2218

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1911, metadata !739), !dbg !2213
  br i1 %114, label %253, label %254, !dbg !2219

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2220

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2223

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1911, metadata !739), !dbg !2213
  br i1 %118, label %257, label %644, !dbg !2225

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1911, metadata !739), !dbg !2213
  br i1 %105, label %503, label %476, !dbg !2227

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2228
  br i1 %260, label %261, label %266, !dbg !2230

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2231, !tbaa !916
  %263 = icmp ne i8 %262, 0, !dbg !2233
  %264 = icmp ne i64 %124, 0, !dbg !2234
  %265 = or i1 %264, %263, !dbg !2236
  br i1 %265, label %476, label %272, !dbg !2236

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2237
  %268 = icmp ne i64 %124, 0, !dbg !2234
  %269 = or i1 %268, %267, !dbg !2239
  br i1 %269, label %476, label %272, !dbg !2239

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2234
  br i1 %271, label %272, label %476, !dbg !2241

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1914, metadata !739), !dbg !2048
  br label %273, !dbg !2242

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1914, metadata !739), !dbg !2048
  br i1 %118, label %476, label %644, !dbg !2243

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1905, metadata !739), !dbg !1968
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1914, metadata !739), !dbg !2048
  br i1 %114, label %276, label %476, !dbg !2245

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2246

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2249
  %279 = icmp ne i64 %126, 0, !dbg !2251
  %280 = or i1 %279, %278, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1898, metadata !739), !dbg !1960
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1888, metadata !739), !dbg !1951
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2253
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1888, metadata !739), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1898, metadata !739), !dbg !1960
  %283 = icmp ult i64 %125, %282, !dbg !2254
  br i1 %283, label %284, label %286, !dbg !2258

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2260
  store i8 39, i8* %285, align 1, !dbg !2260, !tbaa !916
  br label %286, !dbg !2260

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1897, metadata !739), !dbg !1959
  %288 = icmp ult i64 %287, %282, !dbg !2264
  br i1 %288, label %289, label %291, !dbg !2268

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2270
  store i8 92, i8* %290, align 1, !dbg !2270, !tbaa !916
  br label %291, !dbg !2270

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1897, metadata !739), !dbg !1959
  %293 = icmp ult i64 %292, %282, !dbg !2274
  br i1 %293, label %294, label %296, !dbg !2278

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2280
  store i8 39, i8* %295, align 1, !dbg !2280, !tbaa !916
  br label %296, !dbg !2280

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !739), !dbg !1967
  br label %476, !dbg !2284

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2285

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1915, metadata !739), !dbg !2286
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2287
  %301 = load i16*, i16** %300, align 8, !dbg !2287, !tbaa !747
  %302 = zext i8 %159 to i64, !dbg !2287
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2287
  %304 = load i16, i16* %303, align 2, !dbg !2287, !tbaa !2289
  %305 = lshr i16 %304, 14, !dbg !2291
  %306 = trunc i16 %305 to i8, !dbg !2291
  %307 = and i8 %306, 1, !dbg !2291
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1918, metadata !739), !dbg !2292
  br label %368, !dbg !2293

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2294
  store i64 0, i64* %10, align 8, !dbg !2295
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1915, metadata !739), !dbg !2286
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1918, metadata !739), !dbg !2292
  %309 = icmp eq i64 %156, -1, !dbg !2296
  br i1 %309, label %310, label %312, !dbg !2298, !llvm.loop !2299

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2302
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1890, metadata !739), !dbg !1953
  br label %312, !dbg !2303, !llvm.loop !2299

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2292

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1918, metadata !739), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1915, metadata !739), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1890, metadata !739), !dbg !1953
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2304
  %317 = add i64 %315, %124, !dbg !2305
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2306
  %319 = sub i64 %313, %317, !dbg !2307
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1919, metadata !844), !dbg !2308
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1936, metadata !844), !dbg !2309
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1939, metadata !739), !dbg !2311
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2312

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1915, metadata !739), !dbg !2286
  %322 = icmp ugt i64 %313, %317, !dbg !2313
  br i1 %322, label %323, label %351, !dbg !2316

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2317

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2317
  %328 = load i8, i8* %327, align 1, !dbg !2317, !tbaa !916
  %329 = icmp eq i8 %328, 0, !dbg !2319
  br i1 %329, label %348, label %330, !dbg !2320

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1915, metadata !739), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1915, metadata !739), !dbg !2286
  %332 = add i64 %331, %124, !dbg !2323
  %333 = icmp ult i64 %332, %313, !dbg !2313
  br i1 %333, label %324, label %348, !dbg !2316, !llvm.loop !2324

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2326
  %336 = and i1 %116, %335, !dbg !2330
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1940, metadata !739), !dbg !2331
  br i1 %336, label %337, label %355, !dbg !2330

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2332

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2332
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2333
  %342 = load i8, i8* %341, align 1, !dbg !2333, !tbaa !916
  %343 = sext i8 %342 to i32, !dbg !2333
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2334

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1940, metadata !739), !dbg !2331
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1940, metadata !739), !dbg !2331
  %346 = icmp ult i64 %345, %320, !dbg !2326
  br i1 %346, label %338, label %354, !dbg !2337, !llvm.loop !2339

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2292

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2292

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2292

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1918, metadata !739), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1915, metadata !739), !dbg !2286
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2342
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2343

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2343, !tbaa !870
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1936, metadata !739), !dbg !2309
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2345
  %358 = icmp eq i32 %357, 0, !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1918, metadata !739), !dbg !2292
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2346
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1918, metadata !739), !dbg !2292
  %360 = add i64 %320, %315, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1915, metadata !739), !dbg !2286
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1918, metadata !739), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1915, metadata !739), !dbg !2286
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2342
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1919, metadata !844), !dbg !2308
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2348
  %362 = icmp eq i32 %361, 0, !dbg !2349
  br i1 %362, label %314, label %363, !dbg !2350, !llvm.loop !2299

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2352

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2352
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1918, metadata !739), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1915, metadata !739), !dbg !2286
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2342
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2352
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1918, metadata !739), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1915, metadata !739), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1890, metadata !739), !dbg !1953
  %372 = and i8 %371, 1, !dbg !2353
  %373 = icmp ne i8 %372, 0, !dbg !2353
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1914, metadata !739), !dbg !2048
  %374 = icmp ult i64 %370, 2, !dbg !2354
  %375 = or i1 %373, %113, !dbg !2355
  %376 = and i1 %374, %375, !dbg !2357
  br i1 %376, label %476, label %377, !dbg !2357

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1947, metadata !739), !dbg !2359
  br label %379, !dbg !2360

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1913, metadata !739), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1912, metadata !739), !dbg !2046
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1907, metadata !739), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1896, metadata !739), !dbg !2034
  br i1 %375, label %432, label %386, !dbg !2361

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2366

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1913, metadata !739), !dbg !2047
  %388 = and i8 %382, 1, !dbg !2370
  %389 = icmp eq i8 %388, 0, !dbg !2370
  %390 = and i1 %114, %389, !dbg !2373
  br i1 %390, label %391, label %407, !dbg !2373

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2375
  br i1 %392, label %393, label %395, !dbg !2380

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2382
  store i8 39, i8* %394, align 1, !dbg !2382, !tbaa !916
  br label %395, !dbg !2382

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1897, metadata !739), !dbg !1959
  %397 = icmp ult i64 %396, %131, !dbg !2386
  br i1 %397, label %398, label %400, !dbg !2390

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2392
  store i8 36, i8* %399, align 1, !dbg !2392, !tbaa !916
  br label %400, !dbg !2392

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1897, metadata !739), !dbg !1959
  %402 = icmp ult i64 %401, %131, !dbg !2396
  br i1 %402, label %403, label %405, !dbg !2400

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2402
  store i8 39, i8* %404, align 1, !dbg !2402, !tbaa !916
  br label %405, !dbg !2402

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1904, metadata !739), !dbg !1967
  br label %407, !dbg !2406

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1897, metadata !739), !dbg !1959
  %410 = icmp ult i64 %408, %131, !dbg !2408
  br i1 %410, label %411, label %413, !dbg !2412

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2414
  store i8 92, i8* %412, align 1, !dbg !2414, !tbaa !916
  br label %413, !dbg !2414

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1897, metadata !739), !dbg !1959
  %415 = icmp ult i64 %414, %131, !dbg !2418
  br i1 %415, label %416, label %420, !dbg !2422

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2424
  %418 = or i8 %417, 48, !dbg !2424
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2424
  store i8 %418, i8* %419, align 1, !dbg !2424, !tbaa !916
  br label %420, !dbg !2424

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1897, metadata !739), !dbg !1959
  %422 = icmp ult i64 %421, %131, !dbg !2428
  br i1 %422, label %423, label %428, !dbg !2432

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2434
  %425 = and i8 %424, 7, !dbg !2434
  %426 = or i8 %425, 48, !dbg !2434
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2434
  store i8 %426, i8* %427, align 1, !dbg !2434, !tbaa !916
  br label %428, !dbg !2434

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1897, metadata !739), !dbg !1959
  %430 = and i8 %383, 7, !dbg !2438
  %431 = or i8 %430, 48, !dbg !2439
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1907, metadata !739), !dbg !2065
  br label %441, !dbg !2440

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2441
  %434 = icmp eq i8 %433, 0, !dbg !2441
  br i1 %434, label %441, label %435, !dbg !2443

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2444
  br i1 %436, label %437, label %439, !dbg !2449

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2451
  store i8 92, i8* %438, align 1, !dbg !2451, !tbaa !916
  br label %439, !dbg !2451

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1912, metadata !739), !dbg !2046
  br label %441, !dbg !2455

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1913, metadata !739), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1912, metadata !739), !dbg !2046
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1907, metadata !739), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1897, metadata !739), !dbg !1959
  %447 = add i64 %380, 1, !dbg !2456
  %448 = icmp ugt i64 %378, %447, !dbg !2458
  br i1 %448, label %449, label %541, !dbg !2459

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2460
  %451 = icmp ne i8 %450, 0, !dbg !2460
  %452 = and i8 %446, 1, !dbg !2464
  %453 = icmp eq i8 %452, 0, !dbg !2464
  %454 = and i1 %451, %453, !dbg !2460
  br i1 %454, label %455, label %466, !dbg !2460

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2466
  br i1 %456, label %457, label %459, !dbg !2471

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2473
  store i8 39, i8* %458, align 1, !dbg !2473, !tbaa !916
  br label %459, !dbg !2473

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1897, metadata !739), !dbg !1959
  %461 = icmp ult i64 %460, %131, !dbg !2477
  br i1 %461, label %462, label %464, !dbg !2481

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2483
  store i8 39, i8* %463, align 1, !dbg !2483, !tbaa !916
  br label %464, !dbg !2483

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !739), !dbg !1967
  br label %466, !dbg !2487

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1897, metadata !739), !dbg !1959
  %469 = icmp ult i64 %467, %131, !dbg !2489
  br i1 %469, label %470, label %472, !dbg !2493

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2495
  store i8 %444, i8* %471, align 1, !dbg !2495, !tbaa !916
  br label %472, !dbg !2495

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1896, metadata !739), !dbg !2034
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2499
  %475 = load i8, i8* %474, align 1, !dbg !2499, !tbaa !916
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1907, metadata !739), !dbg !2065
  br label %379, !dbg !2500, !llvm.loop !2502

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1888, metadata !739), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1914, metadata !739), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1913, metadata !739), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1912, metadata !739), !dbg !2046
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1907, metadata !739), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1905, metadata !739), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1890, metadata !739), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1898, metadata !739), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1896, metadata !739), !dbg !2034
  br i1 %107, label %488, label %487, !dbg !2505

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2507

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2508

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2509
  %491 = zext i8 %490 to i64, !dbg !2509
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2511
  %493 = load i32, i32* %492, align 4, !dbg !2511, !tbaa !870
  %494 = and i8 %483, 31, !dbg !2512
  %495 = zext i8 %494 to i32, !dbg !2513
  %496 = shl i32 1, %495, !dbg !2514
  %497 = and i32 %493, %496, !dbg !2514
  %498 = icmp eq i32 %497, 0, !dbg !2514
  %499 = icmp eq i8 %157, 0, !dbg !2515
  %500 = and i1 %499, %498, !dbg !2516
  br i1 %500, label %542, label %503, !dbg !2516

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2515
  br i1 %502, label %542, label %503, !dbg !2517

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1888, metadata !739), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1914, metadata !739), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1907, metadata !739), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1905, metadata !739), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1890, metadata !739), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1898, metadata !739), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1896, metadata !739), !dbg !2034
  br i1 %112, label %513, label %644, !dbg !2519

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1913, metadata !739), !dbg !2047
  %514 = and i8 %508, 1, !dbg !2522
  %515 = icmp eq i8 %514, 0, !dbg !2522
  %516 = and i1 %114, %515, !dbg !2525
  br i1 %516, label %517, label %533, !dbg !2525

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2527
  br i1 %518, label %519, label %521, !dbg !2532

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2534
  store i8 39, i8* %520, align 1, !dbg !2534, !tbaa !916
  br label %521, !dbg !2534

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1897, metadata !739), !dbg !1959
  %523 = icmp ult i64 %522, %512, !dbg !2538
  br i1 %523, label %524, label %526, !dbg !2542

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2544
  store i8 36, i8* %525, align 1, !dbg !2544, !tbaa !916
  br label %526, !dbg !2544

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2546
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1897, metadata !739), !dbg !1959
  %528 = icmp ult i64 %527, %512, !dbg !2548
  br i1 %528, label %529, label %531, !dbg !2552

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2554
  store i8 39, i8* %530, align 1, !dbg !2554, !tbaa !916
  br label %531, !dbg !2554

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1904, metadata !739), !dbg !1967
  br label %533, !dbg !2558

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1897, metadata !739), !dbg !1959
  %536 = icmp ult i64 %534, %512, !dbg !2560
  br i1 %536, label %537, label %539, !dbg !2564

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2566
  store i8 92, i8* %538, align 1, !dbg !2566, !tbaa !916
  br label %539, !dbg !2566

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1888, metadata !739), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1914, metadata !739), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1913, metadata !739), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1907, metadata !739), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1905, metadata !739), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1890, metadata !739), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1898, metadata !739), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1896, metadata !739), !dbg !2034
  br label %569, !dbg !2570

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1951

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1888, metadata !739), !dbg !1951
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1914, metadata !739), !dbg !2048
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1913, metadata !739), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1907, metadata !739), !dbg !2065
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1905, metadata !739), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1890, metadata !739), !dbg !1953
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1898, metadata !739), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1896, metadata !739), !dbg !2034
  %553 = and i8 %547, 1, !dbg !2570
  %554 = icmp ne i8 %553, 0, !dbg !2570
  %555 = and i8 %550, 1, !dbg !2574
  %556 = icmp eq i8 %555, 0, !dbg !2574
  %557 = and i1 %554, %556, !dbg !2570
  br i1 %557, label %558, label %569, !dbg !2570

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2576
  br i1 %559, label %560, label %562, !dbg !2581

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2583
  store i8 39, i8* %561, align 1, !dbg !2583, !tbaa !916
  br label %562, !dbg !2583

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1897, metadata !739), !dbg !1959
  %564 = icmp ult i64 %563, %552, !dbg !2587
  br i1 %564, label %565, label %567, !dbg !2591

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2593
  store i8 39, i8* %566, align 1, !dbg !2593, !tbaa !916
  br label %567, !dbg !2593

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1897, metadata !739), !dbg !1959
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1904, metadata !739), !dbg !1967
  br label %569, !dbg !2597

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1904, metadata !739), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1897, metadata !739), !dbg !1959
  %579 = icmp ult i64 %577, %570, !dbg !2599
  br i1 %579, label %580, label %582, !dbg !2603

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2605
  store i8 %572, i8* %581, align 1, !dbg !2605, !tbaa !916
  br label %582, !dbg !2605

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2607
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1897, metadata !739), !dbg !1959
  %584 = and i8 %571, 1, !dbg !2609
  %585 = icmp eq i8 %584, 0, !dbg !2609
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1906, metadata !739), !dbg !1969
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2611
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1906, metadata !739), !dbg !1969
  br label %587, !dbg !2612

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1896, metadata !739), !dbg !2034
  br label %123, !dbg !2615, !llvm.loop !2616

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2619
  %600 = and i1 %114, %599, !dbg !2621
  %601 = xor i1 %600, true, !dbg !2621
  %602 = or i1 %112, %601, !dbg !2621
  br i1 %602, label %603, label %648, !dbg !2621

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2622
  %605 = xor i1 %604, true, !dbg !2622
  %606 = and i8 %129, 1, !dbg !2624
  %607 = icmp eq i8 %606, 0, !dbg !2624
  %608 = or i1 %607, %605, !dbg !2622
  br i1 %608, label %618, label %609, !dbg !2622

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2626
  %611 = icmp eq i8 %610, 0, !dbg !2626
  br i1 %611, label %614, label %612, !dbg !2629

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2630
  br label %659, !dbg !2631

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2632
  %616 = icmp ne i64 %126, 0, !dbg !2634
  %617 = and i1 %616, %615, !dbg !2636
  br i1 %617, label %27, label %618, !dbg !2636

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2637
  %620 = and i1 %619, %112, !dbg !2639
  br i1 %620, label %621, label %638, !dbg !2639

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1899, metadata !739), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1897, metadata !739), !dbg !1959
  %622 = load i8, i8* %100, align 1, !dbg !2640, !tbaa !916
  %623 = icmp eq i8 %622, 0, !dbg !2644
  br i1 %623, label %638, label %624, !dbg !2644

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2646

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2646
  br i1 %629, label %630, label %632, !dbg !2650

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2652
  store i8 %626, i8* %631, align 1, !dbg !2652, !tbaa !916
  br label %632, !dbg !2652

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2654
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1897, metadata !739), !dbg !1959
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1899, metadata !739), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1899, metadata !739), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1897, metadata !739), !dbg !1959
  %635 = load i8, i8* %634, align 1, !dbg !2640, !tbaa !916
  %636 = icmp eq i8 %635, 0, !dbg !2644
  br i1 %636, label %637, label %625, !dbg !2644, !llvm.loop !2658

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1959

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1897, metadata !739), !dbg !1959
  %640 = icmp ult i64 %639, %131, !dbg !2661
  br i1 %640, label %641, label %659, !dbg !2663

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2664
  store i8 0, i8* %642, align 1, !dbg !2665, !tbaa !916
  br label %659, !dbg !2664

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1951

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1951

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1951

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1888, metadata !739), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1890, metadata !739), !dbg !1953
  %653 = icmp ne i32 %650, 2, !dbg !2666
  %654 = icmp eq i8 %104, 0, !dbg !2668
  %655 = or i1 %653, %654, !dbg !2670
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1891, metadata !739), !dbg !1954
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2670
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1891, metadata !739), !dbg !1954
  %657 = and i32 %5, -3, !dbg !2671
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2672
  br label %659, !dbg !2673

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2674
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2675 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2679, metadata !739), !dbg !2683
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2680, metadata !739), !dbg !2684
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2685
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2681, metadata !739), !dbg !2686
  %4 = icmp eq i8* %3, %0, !dbg !2687
  br i1 %4, label %5, label %75, !dbg !2689

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2690
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2682, metadata !739), !dbg !2691
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2692, metadata !739), !dbg !2708
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2706, metadata !739), !dbg !2711
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2707, metadata !739), !dbg !2712
  %7 = load i8, i8* %6, align 1, !tbaa !916
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2713
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2713

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2716, metadata !739), !dbg !2730
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2728, metadata !739), !dbg !2734
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2729, metadata !739), !dbg !2735
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !916
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2736
  %15 = icmp eq i32 %14, 84, !dbg !2736
  br i1 %15, label %16, label %72, !dbg !2736

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2739, metadata !739), !dbg !2752
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2750, metadata !739), !dbg !2756
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2751, metadata !739), !dbg !2757
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !916
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2758
  %21 = icmp eq i32 %20, 70, !dbg !2758
  br i1 %21, label %22, label %72, !dbg !2758

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2761, metadata !739), !dbg !2773
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2771, metadata !739), !dbg !2777
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2772, metadata !739), !dbg !2778
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !916
  %25 = icmp eq i8 %24, 45, !dbg !2779
  br i1 %25, label %26, label %72, !dbg !2782

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2784, metadata !739), !dbg !2795
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2793, metadata !739), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2794, metadata !739), !dbg !2800
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !916
  %29 = icmp eq i8 %28, 56, !dbg !2801
  br i1 %29, label %30, label %72, !dbg !2804

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2806, metadata !739), !dbg !2816
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2814, metadata !739), !dbg !2820
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2815, metadata !739), !dbg !2821
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !916
  %33 = icmp eq i8 %32, 0, !dbg !2822
  br i1 %33, label %34, label %72, !dbg !2825

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2827, !tbaa !916
  %36 = icmp eq i8 %35, 96, !dbg !2828
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.64, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.65, i64 0, i64 0), !dbg !2827
  br label %75, !dbg !2829

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2716, metadata !739), !dbg !2830
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2728, metadata !739), !dbg !2834
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2729, metadata !739), !dbg !2835
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !916
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2836
  %43 = icmp eq i32 %42, 66, !dbg !2836
  br i1 %43, label %44, label %72, !dbg !2836

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2739, metadata !739), !dbg !2837
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2750, metadata !739), !dbg !2839
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2751, metadata !739), !dbg !2840
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !916
  %47 = icmp eq i8 %46, 49, !dbg !2841
  br i1 %47, label %48, label %72, !dbg !2843

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2761, metadata !739), !dbg !2845
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2771, metadata !739), !dbg !2847
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2772, metadata !739), !dbg !2848
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !916
  %51 = icmp eq i8 %50, 56, !dbg !2849
  br i1 %51, label %52, label %72, !dbg !2850

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2784, metadata !739), !dbg !2851
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2793, metadata !739), !dbg !2853
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2794, metadata !739), !dbg !2854
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !916
  %55 = icmp eq i8 %54, 48, !dbg !2855
  br i1 %55, label %56, label %72, !dbg !2856

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2806, metadata !739), !dbg !2857
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2814, metadata !739), !dbg !2859
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2815, metadata !739), !dbg !2860
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !916
  %59 = icmp eq i8 %58, 51, !dbg !2861
  br i1 %59, label %60, label %72, !dbg !2862

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2863, metadata !739), !dbg !2872
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2870, metadata !739), !dbg !2876
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2871, metadata !739), !dbg !2877
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !916
  %63 = icmp eq i8 %62, 48, !dbg !2878
  br i1 %63, label %64, label %72, !dbg !2881

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2883, metadata !739), !dbg !2891
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2889, metadata !739), !dbg !2895
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2890, metadata !739), !dbg !2896
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !916
  %67 = icmp eq i8 %66, 0, !dbg !2897
  br i1 %67, label %68, label %72, !dbg !2900

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2901, !tbaa !916
  %70 = icmp eq i8 %69, 96, !dbg !2902
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.67, i64 0, i64 0), !dbg !2901
  br label %75, !dbg !2903

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2904
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), !dbg !2905
  br label %75, !dbg !2906

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2907
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2908 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2912, metadata !739), !dbg !2915
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2913, metadata !739), !dbg !2916
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2914, metadata !739), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2918, metadata !739) #10, !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2923, metadata !739) #10, !dbg !2933
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2924, metadata !739) #10, !dbg !2934
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2925, metadata !739) #10, !dbg !2935
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2936
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2936
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2926, metadata !739) #10, !dbg !2937
  %6 = tail call i32* @__errno_location() #1, !dbg !2938
  %7 = load i32, i32* %6, align 4, !dbg !2938, !tbaa !870
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2927, metadata !739) #10, !dbg !2939
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2940
  %9 = load i32, i32* %8, align 4, !dbg !2940, !tbaa !1819
  %10 = or i32 %9, 1, !dbg !2941
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2928, metadata !739) #10, !dbg !2942
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2943
  %12 = load i32, i32* %11, align 8, !dbg !2943, !tbaa !1757
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2944
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2945
  %15 = load i8*, i8** %14, align 8, !dbg !2945, !tbaa !1846
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2946
  %17 = load i8*, i8** %16, align 8, !dbg !2946, !tbaa !1849
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2947
  %19 = add i64 %18, 1, !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2929, metadata !739) #10, !dbg !2949
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2950, metadata !739) #10, !dbg !2955
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2957
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2930, metadata !739) #10, !dbg !2958
  %21 = load i32, i32* %11, align 8, !dbg !2959, !tbaa !1757
  %22 = load i8*, i8** %14, align 8, !dbg !2960, !tbaa !1846
  %23 = load i8*, i8** %16, align 8, !dbg !2961, !tbaa !1849
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2962
  store i32 %7, i32* %6, align 4, !dbg !2963, !tbaa !870
  ret i8* %20, !dbg !2964
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2919 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2918, metadata !739), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2923, metadata !739), !dbg !2966
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2924, metadata !739), !dbg !2967
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2925, metadata !739), !dbg !2968
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2969
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2969
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2926, metadata !739), !dbg !2970
  %7 = tail call i32* @__errno_location() #1, !dbg !2971
  %8 = load i32, i32* %7, align 4, !dbg !2971, !tbaa !870
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2927, metadata !739), !dbg !2972
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2973
  %10 = load i32, i32* %9, align 4, !dbg !2973, !tbaa !1819
  %11 = icmp ne i64* %2, null, !dbg !2974
  %12 = xor i1 %11, true, !dbg !2974
  %13 = zext i1 %12 to i32, !dbg !2974
  %14 = or i32 %10, %13, !dbg !2975
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2928, metadata !739), !dbg !2976
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2977
  %16 = load i32, i32* %15, align 8, !dbg !2977, !tbaa !1757
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2978
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2979
  %19 = load i8*, i8** %18, align 8, !dbg !2979, !tbaa !1846
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2980
  %21 = load i8*, i8** %20, align 8, !dbg !2980, !tbaa !1849
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2981
  %23 = add i64 %22, 1, !dbg !2982
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2929, metadata !739), !dbg !2983
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2950, metadata !739) #10, !dbg !2984
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2986
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2930, metadata !739), !dbg !2987
  %25 = load i32, i32* %15, align 8, !dbg !2988, !tbaa !1757
  %26 = load i8*, i8** %18, align 8, !dbg !2989, !tbaa !1846
  %27 = load i8*, i8** %20, align 8, !dbg !2990, !tbaa !1849
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2991
  store i32 %8, i32* %7, align 4, !dbg !2992, !tbaa !870
  br i1 %11, label %29, label %30, !dbg !2993

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2994, !tbaa !2996
  br label %30, !dbg !2997

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2998
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2999 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3003, !tbaa !747
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3001, metadata !739), !dbg !3004
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3002, metadata !739), !dbg !3005
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3002, metadata !739), !dbg !3005
  %2 = load i32, i32* @nslots, align 4, !dbg !3006, !tbaa !870
  %3 = icmp sgt i32 %2, 1, !dbg !3010
  br i1 %3, label %4, label %14, !dbg !3011

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3013

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3013
  %8 = load i8*, i8** %7, align 8, !dbg !3013, !tbaa !3014
  tail call void @free(i8* %8) #10, !dbg !3016
  %9 = add nuw i64 %6, 1, !dbg !3017
  %10 = load i32, i32* @nslots, align 4, !dbg !3006, !tbaa !870
  %11 = sext i32 %10 to i64, !dbg !3010
  %12 = icmp slt i64 %9, %11, !dbg !3010
  br i1 %12, label %5, label %13, !dbg !3011, !llvm.loop !3019

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3022

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3022
  %16 = load i8*, i8** %15, align 8, !dbg !3022, !tbaa !3014
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3024
  br i1 %17, label %19, label %18, !dbg !3025

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3026
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3028, !tbaa !3029
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3030, !tbaa !3014
  br label %19, !dbg !3031

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3032
  br i1 %20, label %23, label %21, !dbg !3034

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3035
  tail call void @free(i8* %22) #10, !dbg !3037
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3038, !tbaa !747
  br label %23, !dbg !3039

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3040, !tbaa !870
  ret void, !dbg !3041
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3042 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3046, metadata !739), !dbg !3048
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3047, metadata !739), !dbg !3049
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3050
  ret i8* %3, !dbg !3051
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3052 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3056, metadata !739), !dbg !3070
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3057, metadata !739), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3058, metadata !739), !dbg !3072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3059, metadata !739), !dbg !3073
  %5 = tail call i32* @__errno_location() #1, !dbg !3074
  %6 = load i32, i32* %5, align 4, !dbg !3074, !tbaa !870
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3060, metadata !739), !dbg !3075
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3076, !tbaa !747
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3061, metadata !739), !dbg !3077
  %8 = icmp slt i32 %0, 0, !dbg !3078
  br i1 %8, label %9, label %10, !dbg !3080

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3081
  unreachable, !dbg !3081

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3082, !tbaa !870
  %12 = icmp sgt i32 %11, %0, !dbg !3083
  br i1 %12, label %34, label %13, !dbg !3084

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3085
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3086
  br i1 %15, label %16, label %17, !dbg !3088

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3089
  unreachable, !dbg !3089

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3090
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3090
  %20 = add nsw i32 %0, 1, !dbg !3092
  %21 = sext i32 %20 to i64, !dbg !3093
  %22 = shl nsw i64 %21, 4, !dbg !3094
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3095
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3095
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3061, metadata !739), !dbg !3077
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3096, !tbaa !747
  br i1 %14, label %25, label %26, !dbg !3097

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3098, !tbaa.struct !3100
  br label %26, !dbg !3101

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3102, !tbaa !870
  %28 = sext i32 %27 to i64, !dbg !3103
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3103
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3104
  %31 = sub nsw i32 %20, %27, !dbg !3105
  %32 = sext i32 %31 to i64, !dbg !3106
  %33 = shl nsw i64 %32, 4, !dbg !3107
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3104
  store i32 %20, i32* @nslots, align 4, !dbg !3108, !tbaa !870
  br label %34, !dbg !3109

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3061, metadata !739), !dbg !3077
  %36 = sext i32 %0 to i64, !dbg !3110
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3111
  %38 = load i64, i64* %37, align 8, !dbg !3111, !tbaa !3029
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3065, metadata !739), !dbg !3112
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3113
  %40 = load i8*, i8** %39, align 8, !dbg !3113, !tbaa !3014
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3067, metadata !739), !dbg !3114
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3115
  %42 = load i32, i32* %41, align 4, !dbg !3115, !tbaa !1819
  %43 = or i32 %42, 1, !dbg !3116
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3068, metadata !739), !dbg !3117
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3118
  %45 = load i32, i32* %44, align 8, !dbg !3118, !tbaa !1757
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3119
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3120
  %48 = load i8*, i8** %47, align 8, !dbg !3120, !tbaa !1846
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3121
  %50 = load i8*, i8** %49, align 8, !dbg !3121, !tbaa !1849
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3122
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3069, metadata !739), !dbg !3123
  %52 = icmp ugt i64 %38, %51, !dbg !3124
  br i1 %52, label %63, label %53, !dbg !3126

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3065, metadata !739), !dbg !3112
  store i64 %54, i64* %37, align 8, !dbg !3129, !tbaa !3029
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3130
  br i1 %55, label %57, label %56, !dbg !3132

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3133
  br label %57, !dbg !3133

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2950, metadata !739) #10, !dbg !3134
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3136
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3067, metadata !739), !dbg !3114
  store i8* %58, i8** %39, align 8, !dbg !3137, !tbaa !3014
  %59 = load i32, i32* %44, align 8, !dbg !3138, !tbaa !1757
  %60 = load i8*, i8** %47, align 8, !dbg !3139, !tbaa !1846
  %61 = load i8*, i8** %49, align 8, !dbg !3140, !tbaa !1849
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3141
  br label %63, !dbg !3142

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3067, metadata !739), !dbg !3114
  store i32 %6, i32* %5, align 4, !dbg !3143, !tbaa !870
  ret i8* %64, !dbg !3144
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3145 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3149, metadata !739), !dbg !3152
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3150, metadata !739), !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3151, metadata !739), !dbg !3154
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3155
  ret i8* %4, !dbg !3156
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3157 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3161, metadata !739), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3046, metadata !739) #10, !dbg !3163
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3047, metadata !739) #10, !dbg !3165
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3166
  ret i8* %2, !dbg !3167
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3168 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3172, metadata !739), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3173, metadata !739), !dbg !3175
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3149, metadata !739) #10, !dbg !3176
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3150, metadata !739) #10, !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3151, metadata !739) #10, !dbg !3179
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3180
  ret i8* %3, !dbg !3181
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3182 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3190, metadata !3196), !dbg !3197
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3186, metadata !739), !dbg !3199
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3187, metadata !739), !dbg !3200
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3188, metadata !739), !dbg !3201
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3202
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3202
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3189, metadata !844), !dbg !3203
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3195, metadata !739) #10, !dbg !3204
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3205
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3205
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3190, metadata !739) #10, !dbg !3197
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3190, metadata !3206) #10, !dbg !3197
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3197
  %8 = icmp eq i32 %1, 10, !dbg !3207
  br i1 %8, label %9, label %10, !dbg !3209

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3210, !noalias !3211
  unreachable, !dbg !3210

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3190, metadata !3206) #10, !dbg !3197
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3214
  store i32 %1, i32* %11, align 8, !dbg !3214, !alias.scope !3211
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3214
  %13 = bitcast i32* %12 to i8*, !dbg !3214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3214
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3215
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3189, metadata !844), !dbg !3203
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3216
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3217
  ret i8* %14, !dbg !3218
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3219 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3190, metadata !3196), !dbg !3228
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3223, metadata !739), !dbg !3230
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3224, metadata !739), !dbg !3231
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3225, metadata !739), !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3226, metadata !739), !dbg !3233
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3234
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3234
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3227, metadata !844), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3195, metadata !739) #10, !dbg !3236
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3237
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3237
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3190, metadata !739) #10, !dbg !3228
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3190, metadata !3206) #10, !dbg !3228
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3228
  %9 = icmp eq i32 %1, 10, !dbg !3238
  br i1 %9, label %10, label %11, !dbg !3239

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3240, !noalias !3241
  unreachable, !dbg !3240

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3190, metadata !3206) #10, !dbg !3228
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3244
  store i32 %1, i32* %12, align 8, !dbg !3244, !alias.scope !3241
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3244
  %14 = bitcast i32* %13 to i8*, !dbg !3244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3244
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3245
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3227, metadata !844), !dbg !3235
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3246
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3247
  ret i8* %15, !dbg !3248
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3249 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3190, metadata !3196), !dbg !3255
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3253, metadata !739), !dbg !3258
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3254, metadata !739), !dbg !3259
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3186, metadata !739) #10, !dbg !3260
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3187, metadata !739) #10, !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3188, metadata !739) #10, !dbg !3262
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3263
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3263
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3189, metadata !844) #10, !dbg !3264
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3195, metadata !739) #10, !dbg !3265
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3266
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3266
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3190, metadata !739) #10, !dbg !3255
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3190, metadata !3206) #10, !dbg !3255
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3255
  %7 = icmp eq i32 %0, 10, !dbg !3267
  br i1 %7, label %8, label %9, !dbg !3268

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3269, !noalias !3270
  unreachable, !dbg !3269

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3190, metadata !3206) #10, !dbg !3255
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3273
  store i32 %0, i32* %10, align 8, !dbg !3273, !alias.scope !3270
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3273
  %12 = bitcast i32* %11 to i8*, !dbg !3273
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3273
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3274
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3189, metadata !844) #10, !dbg !3264
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3275
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3276
  ret i8* %13, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3278 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3190, metadata !3196), !dbg !3285
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3282, metadata !739), !dbg !3288
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3283, metadata !739), !dbg !3289
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3284, metadata !739), !dbg !3290
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3223, metadata !739) #10, !dbg !3291
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3224, metadata !739) #10, !dbg !3292
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3225, metadata !739) #10, !dbg !3293
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3226, metadata !739) #10, !dbg !3294
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3295
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3295
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3227, metadata !844) #10, !dbg !3296
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3195, metadata !739) #10, !dbg !3297
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3298
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3298
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3190, metadata !739) #10, !dbg !3285
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3190, metadata !3206) #10, !dbg !3285
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3285
  %8 = icmp eq i32 %0, 10, !dbg !3299
  br i1 %8, label %9, label %10, !dbg !3300

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3301, !noalias !3302
  unreachable, !dbg !3301

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3190, metadata !3206) #10, !dbg !3285
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3305
  store i32 %0, i32* %11, align 8, !dbg !3305, !alias.scope !3302
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3305
  %13 = bitcast i32* %12 to i8*, !dbg !3305
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3305
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3306
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3227, metadata !844) #10, !dbg !3296
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3307
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3308
  ret i8* %14, !dbg !3309
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3310 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3314, metadata !739), !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3315, metadata !739), !dbg !3319
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3316, metadata !739), !dbg !3320
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3321
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3322, !tbaa.struct !3323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3317, metadata !844), !dbg !3324
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1777, metadata !739), !dbg !3325
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1778, metadata !739), !dbg !3327
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1779, metadata !739), !dbg !3328
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1780, metadata !739), !dbg !3329
  %6 = lshr i8 %2, 5, !dbg !3330
  %7 = zext i8 %6 to i64, !dbg !3330
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3331
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1781, metadata !739), !dbg !3332
  %9 = and i8 %2, 31, !dbg !3333
  %10 = zext i8 %9 to i32, !dbg !3334
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1783, metadata !739), !dbg !3335
  %11 = load i32, i32* %8, align 4, !dbg !3336, !tbaa !870
  %12 = lshr i32 %11, %10, !dbg !3337
  %13 = and i32 %12, 1, !dbg !3338
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1784, metadata !739), !dbg !3339
  %14 = xor i32 %13, 1, !dbg !3340
  %15 = shl i32 %14, %10, !dbg !3341
  %16 = xor i32 %15, %11, !dbg !3342
  store i32 %16, i32* %8, align 4, !dbg !3342, !tbaa !870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3317, metadata !844), !dbg !3324
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3343
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3344
  ret i8* %17, !dbg !3345
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3346 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3350, metadata !739), !dbg !3352
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3351, metadata !739), !dbg !3353
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3314, metadata !739) #10, !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3315, metadata !739) #10, !dbg !3356
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3316, metadata !739) #10, !dbg !3357
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3358
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3358
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3359, !tbaa.struct !3323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3317, metadata !844) #10, !dbg !3360
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1777, metadata !739) #10, !dbg !3361
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1778, metadata !739) #10, !dbg !3363
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1779, metadata !739) #10, !dbg !3364
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1780, metadata !739) #10, !dbg !3365
  %5 = lshr i8 %1, 5, !dbg !3366
  %6 = zext i8 %5 to i64, !dbg !3366
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3367
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1781, metadata !739) #10, !dbg !3368
  %8 = and i8 %1, 31, !dbg !3369
  %9 = zext i8 %8 to i32, !dbg !3370
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1783, metadata !739) #10, !dbg !3371
  %10 = load i32, i32* %7, align 4, !dbg !3372, !tbaa !870
  %11 = lshr i32 %10, %9, !dbg !3373
  %12 = and i32 %11, 1, !dbg !3374
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1784, metadata !739) #10, !dbg !3375
  %13 = xor i32 %12, 1, !dbg !3376
  %14 = shl i32 %13, %9, !dbg !3377
  %15 = xor i32 %14, %10, !dbg !3378
  store i32 %15, i32* %7, align 4, !dbg !3378, !tbaa !870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3317, metadata !844) #10, !dbg !3360
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3379
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3380
  ret i8* %16, !dbg !3381
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3382 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3384, metadata !739), !dbg !3385
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3350, metadata !739) #10, !dbg !3386
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3351, metadata !739) #10, !dbg !3388
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3314, metadata !739) #10, !dbg !3389
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3315, metadata !739) #10, !dbg !3391
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3316, metadata !739) #10, !dbg !3392
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3393
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3393
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3394, !tbaa.struct !3323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3317, metadata !844) #10, !dbg !3395
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1777, metadata !739) #10, !dbg !3396
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1778, metadata !739) #10, !dbg !3398
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1779, metadata !739) #10, !dbg !3399
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1780, metadata !739) #10, !dbg !3400
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3401
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1781, metadata !739) #10, !dbg !3402
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1783, metadata !739) #10, !dbg !3403
  %5 = load i32, i32* %4, align 4, !dbg !3404, !tbaa !870
  %6 = or i32 %5, 67108864, !dbg !3405
  store i32 %6, i32* %4, align 4, !dbg !3405, !tbaa !870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3317, metadata !844) #10, !dbg !3395
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3406
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3407
  ret i8* %7, !dbg !3408
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3409 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3411, metadata !739), !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3412, metadata !739), !dbg !3414
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3314, metadata !739) #10, !dbg !3415
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3315, metadata !739) #10, !dbg !3417
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3316, metadata !739) #10, !dbg !3418
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3419
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3420, !tbaa.struct !3323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3317, metadata !844) #10, !dbg !3421
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1777, metadata !739) #10, !dbg !3422
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1778, metadata !739) #10, !dbg !3424
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1779, metadata !739) #10, !dbg !3425
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1780, metadata !739) #10, !dbg !3426
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3427
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1781, metadata !739) #10, !dbg !3428
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1783, metadata !739) #10, !dbg !3429
  %6 = load i32, i32* %5, align 4, !dbg !3430, !tbaa !870
  %7 = or i32 %6, 67108864, !dbg !3431
  store i32 %7, i32* %5, align 4, !dbg !3431, !tbaa !870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3317, metadata !844) #10, !dbg !3421
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3432
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3433
  ret i8* %8, !dbg !3434
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3435 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3190, metadata !3196), !dbg !3441
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3437, metadata !739), !dbg !3443
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3438, metadata !739), !dbg !3444
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3439, metadata !739), !dbg !3445
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3446
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3446
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3195, metadata !739) #10, !dbg !3447
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3448
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3448
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3190, metadata !739) #10, !dbg !3441
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3190, metadata !3206) #10, !dbg !3441
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3441
  %9 = icmp eq i32 %1, 10, !dbg !3449
  br i1 %9, label %10, label %11, !dbg !3450

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3451, !noalias !3452
  unreachable, !dbg !3451

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3190, metadata !3206) #10, !dbg !3441
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3455
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3455
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3456
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3457
  store i32 %1, i32* %13, align 8, !dbg !3457
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3457
  %15 = bitcast i32* %14 to i8*, !dbg !3457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3457
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3440, metadata !844), !dbg !3458
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1777, metadata !739), !dbg !3459
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1778, metadata !739), !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1779, metadata !739), !dbg !3462
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1780, metadata !739), !dbg !3463
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3464
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1781, metadata !739), !dbg !3465
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1783, metadata !739), !dbg !3466
  %17 = load i32, i32* %16, align 4, !dbg !3467, !tbaa !870
  %18 = or i32 %17, 67108864, !dbg !3468
  store i32 %18, i32* %16, align 4, !dbg !3468, !tbaa !870
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3440, metadata !844), !dbg !3458
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3469
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3470
  ret i8* %19, !dbg !3471
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3472 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3476, metadata !739), !dbg !3480
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3477, metadata !739), !dbg !3481
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3478, metadata !739), !dbg !3482
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3479, metadata !739), !dbg !3483
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3484, metadata !739) #10, !dbg !3494
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3489, metadata !739) #10, !dbg !3496
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3490, metadata !739) #10, !dbg !3497
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3491, metadata !739) #10, !dbg !3498
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3492, metadata !739) #10, !dbg !3499
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3500
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3501, !tbaa.struct !3323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3493, metadata !844) #10, !dbg !3502
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1827, metadata !739) #10, !dbg !3503
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1828, metadata !739) #10, !dbg !3505
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1829, metadata !739) #10, !dbg !3506
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1827, metadata !739) #10, !dbg !3503
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1827, metadata !739) #10, !dbg !3503
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3507
  store i32 10, i32* %7, align 8, !dbg !3508, !tbaa !1757
  %8 = icmp ne i8* %1, null, !dbg !3509
  %9 = icmp ne i8* %2, null, !dbg !3510
  %10 = and i1 %8, %9, !dbg !3511
  br i1 %10, label %12, label %11, !dbg !3511

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3512
  unreachable, !dbg !3512

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3513
  store i8* %1, i8** %13, align 8, !dbg !3514, !tbaa !1846
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3515
  store i8* %2, i8** %14, align 8, !dbg !3516, !tbaa !1849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3493, metadata !844) #10, !dbg !3502
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3517
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3518
  ret i8* %15, !dbg !3519
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3485 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3484, metadata !739), !dbg !3520
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3489, metadata !739), !dbg !3521
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3490, metadata !739), !dbg !3522
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3491, metadata !739), !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3492, metadata !739), !dbg !3524
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3525
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3526, !tbaa.struct !3323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3493, metadata !844), !dbg !3527
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1827, metadata !739) #10, !dbg !3528
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1828, metadata !739) #10, !dbg !3530
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1829, metadata !739) #10, !dbg !3531
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1827, metadata !739) #10, !dbg !3528
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1827, metadata !739) #10, !dbg !3528
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3532
  store i32 10, i32* %8, align 8, !dbg !3533, !tbaa !1757
  %9 = icmp ne i8* %1, null, !dbg !3534
  %10 = icmp ne i8* %2, null, !dbg !3535
  %11 = and i1 %9, %10, !dbg !3536
  br i1 %11, label %13, label %12, !dbg !3536

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3537
  unreachable, !dbg !3537

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3538
  store i8* %1, i8** %14, align 8, !dbg !3539, !tbaa !1846
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3540
  store i8* %2, i8** %15, align 8, !dbg !3541, !tbaa !1849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3493, metadata !844), !dbg !3527
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3542
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3543
  ret i8* %16, !dbg !3544
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3545 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3549, metadata !739), !dbg !3552
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3550, metadata !739), !dbg !3553
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3551, metadata !739), !dbg !3554
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3476, metadata !739) #10, !dbg !3555
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3477, metadata !739) #10, !dbg !3557
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3478, metadata !739) #10, !dbg !3558
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3479, metadata !739) #10, !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3484, metadata !739) #10, !dbg !3560
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3489, metadata !739) #10, !dbg !3562
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3490, metadata !739) #10, !dbg !3563
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3491, metadata !739) #10, !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3492, metadata !739) #10, !dbg !3565
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3566
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3567, !tbaa.struct !3323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3493, metadata !844) #10, !dbg !3568
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1827, metadata !739) #10, !dbg !3569
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1828, metadata !739) #10, !dbg !3571
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1829, metadata !739) #10, !dbg !3572
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1827, metadata !739) #10, !dbg !3569
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1827, metadata !739) #10, !dbg !3569
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3573
  store i32 10, i32* %6, align 8, !dbg !3574, !tbaa !1757
  %7 = icmp ne i8* %0, null, !dbg !3575
  %8 = icmp ne i8* %1, null, !dbg !3576
  %9 = and i1 %7, %8, !dbg !3577
  br i1 %9, label %11, label %10, !dbg !3577

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3578
  unreachable, !dbg !3578

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3579
  store i8* %0, i8** %12, align 8, !dbg !3580, !tbaa !1846
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3581
  store i8* %1, i8** %13, align 8, !dbg !3582, !tbaa !1849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3493, metadata !844) #10, !dbg !3568
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3583
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3584
  ret i8* %14, !dbg !3585
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3586 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3590, metadata !739), !dbg !3594
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3591, metadata !739), !dbg !3595
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3592, metadata !739), !dbg !3596
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3593, metadata !739), !dbg !3597
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3484, metadata !739) #10, !dbg !3598
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3489, metadata !739) #10, !dbg !3600
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3490, metadata !739) #10, !dbg !3601
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3491, metadata !739) #10, !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3492, metadata !739) #10, !dbg !3603
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3604
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3605, !tbaa.struct !3323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3493, metadata !844) #10, !dbg !3606
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1827, metadata !739) #10, !dbg !3607
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1828, metadata !739) #10, !dbg !3609
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1829, metadata !739) #10, !dbg !3610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1827, metadata !739) #10, !dbg !3607
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1827, metadata !739) #10, !dbg !3607
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3611
  store i32 10, i32* %7, align 8, !dbg !3612, !tbaa !1757
  %8 = icmp ne i8* %0, null, !dbg !3613
  %9 = icmp ne i8* %1, null, !dbg !3614
  %10 = and i1 %8, %9, !dbg !3615
  br i1 %10, label %12, label %11, !dbg !3615

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3616
  unreachable, !dbg !3616

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3617
  store i8* %0, i8** %13, align 8, !dbg !3618, !tbaa !1846
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3619
  store i8* %1, i8** %14, align 8, !dbg !3620, !tbaa !1849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3493, metadata !844) #10, !dbg !3606
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3621
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3622
  ret i8* %15, !dbg !3623
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3624 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3628, metadata !739), !dbg !3631
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3629, metadata !739), !dbg !3632
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3630, metadata !739), !dbg !3633
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3634
  ret i8* %4, !dbg !3635
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3636 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3640, metadata !739), !dbg !3642
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3641, metadata !739), !dbg !3643
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3628, metadata !739) #10, !dbg !3644
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3629, metadata !739) #10, !dbg !3646
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3630, metadata !739) #10, !dbg !3647
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3648
  ret i8* %3, !dbg !3649
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3650 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3654, metadata !739), !dbg !3656
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3655, metadata !739), !dbg !3657
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3628, metadata !739) #10, !dbg !3658
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3629, metadata !739) #10, !dbg !3660
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3630, metadata !739) #10, !dbg !3661
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3662
  ret i8* %3, !dbg !3663
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3664 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3668, metadata !739), !dbg !3669
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3654, metadata !739) #10, !dbg !3670
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3655, metadata !739) #10, !dbg !3672
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3628, metadata !739) #10, !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3629, metadata !739) #10, !dbg !3675
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3630, metadata !739) #10, !dbg !3676
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3677
  ret i8* %2, !dbg !3678
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 !dbg !656 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !660, metadata !739), !dbg !3679
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !661, metadata !739), !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !662, metadata !739), !dbg !3681
  br label %4, !dbg !3682

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6, !dbg !3681

; <label>:6:                                      ; preds = %4, %9
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !662, metadata !739), !dbg !3681
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #10, !dbg !3683
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !663, metadata !739), !dbg !3684
  %8 = icmp sgt i64 %7, -1, !dbg !3685
  br i1 %8, label %17, label %9, !dbg !3687

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1, !dbg !3688
  %11 = load i32, i32* %10, align 4, !dbg !3688, !tbaa !870
  %12 = icmp eq i32 %11, 4, !dbg !3688
  br i1 %12, label %6, label %13, !dbg !3690, !llvm.loop !3691

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3694
  %15 = icmp ugt i64 %5, 2147475456, !dbg !3696
  %16 = and i1 %15, %14, !dbg !3698
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19, !dbg !3699

; <label>:18:                                     ; preds = %13
  br label %19, !dbg !3699

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7, !dbg !3699
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_write(i32, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !675 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !679, metadata !739), !dbg !3700
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !680, metadata !739), !dbg !3701
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !681, metadata !739), !dbg !3702
  br label %4, !dbg !3703

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6, !dbg !3702

; <label>:6:                                      ; preds = %4, %9
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !681, metadata !739), !dbg !3702
  %7 = tail call i64 @write(i32 %0, i8* %1, i64 %5) #10, !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !682, metadata !739), !dbg !3705
  %8 = icmp sgt i64 %7, -1, !dbg !3706
  br i1 %8, label %17, label %9, !dbg !3708

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1, !dbg !3709
  %11 = load i32, i32* %10, align 4, !dbg !3709, !tbaa !870
  %12 = icmp eq i32 %11, 4, !dbg !3709
  br i1 %12, label %6, label %13, !dbg !3711, !llvm.loop !3712

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3715
  %15 = icmp ugt i64 %5, 2147475456, !dbg !3717
  %16 = and i1 %15, %14, !dbg !3719
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19, !dbg !3720

; <label>:18:                                     ; preds = %13
  br label %19, !dbg !3720

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7, !dbg !3720
}

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3721 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3766, metadata !739), !dbg !3772
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3767, metadata !739), !dbg !3773
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3768, metadata !739), !dbg !3774
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3769, metadata !739), !dbg !3775
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3770, metadata !739), !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3771, metadata !739), !dbg !3777
  %7 = icmp eq i8* %1, null, !dbg !3778
  br i1 %7, label %10, label %8, !dbg !3780

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3781
  br label %12, !dbg !3781

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3782
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #10, !dbg !3783
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3784
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.81, i64 0, i64 0), i32 5) #10, !dbg !3786
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3787
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
  ], !dbg !3788

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3789
  unreachable, !dbg !3789

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #10, !dbg !3791
  %20 = load i8*, i8** %4, align 8, !dbg !3791, !tbaa !747
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3792
  br label %146, !dbg !3794

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.83, i64 0, i64 0), i32 5) #10, !dbg !3795
  %24 = load i8*, i8** %4, align 8, !dbg !3795, !tbaa !747
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3795
  %26 = load i8*, i8** %25, align 8, !dbg !3795, !tbaa !747
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3796
  br label %146, !dbg !3797

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #10, !dbg !3798
  %30 = load i8*, i8** %4, align 8, !dbg !3798, !tbaa !747
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3798
  %32 = load i8*, i8** %31, align 8, !dbg !3798, !tbaa !747
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3798
  %34 = load i8*, i8** %33, align 8, !dbg !3798, !tbaa !747
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3799
  br label %146, !dbg !3800

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #10, !dbg !3801
  %38 = load i8*, i8** %4, align 8, !dbg !3801, !tbaa !747
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3801
  %40 = load i8*, i8** %39, align 8, !dbg !3801, !tbaa !747
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3801
  %42 = load i8*, i8** %41, align 8, !dbg !3801, !tbaa !747
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3801
  %44 = load i8*, i8** %43, align 8, !dbg !3801, !tbaa !747
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3802
  br label %146, !dbg !3803

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #10, !dbg !3804
  %48 = load i8*, i8** %4, align 8, !dbg !3804, !tbaa !747
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3804
  %50 = load i8*, i8** %49, align 8, !dbg !3804, !tbaa !747
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3804
  %52 = load i8*, i8** %51, align 8, !dbg !3804, !tbaa !747
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3804
  %54 = load i8*, i8** %53, align 8, !dbg !3804, !tbaa !747
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3804
  %56 = load i8*, i8** %55, align 8, !dbg !3804, !tbaa !747
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3805
  br label %146, !dbg !3806

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #10, !dbg !3807
  %60 = load i8*, i8** %4, align 8, !dbg !3807, !tbaa !747
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3807
  %62 = load i8*, i8** %61, align 8, !dbg !3807, !tbaa !747
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3807
  %64 = load i8*, i8** %63, align 8, !dbg !3807, !tbaa !747
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3807
  %66 = load i8*, i8** %65, align 8, !dbg !3807, !tbaa !747
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3807
  %68 = load i8*, i8** %67, align 8, !dbg !3807, !tbaa !747
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3807
  %70 = load i8*, i8** %69, align 8, !dbg !3807, !tbaa !747
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3808
  br label %146, !dbg !3809

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #10, !dbg !3810
  %74 = load i8*, i8** %4, align 8, !dbg !3810, !tbaa !747
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3810
  %76 = load i8*, i8** %75, align 8, !dbg !3810, !tbaa !747
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3810
  %78 = load i8*, i8** %77, align 8, !dbg !3810, !tbaa !747
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3810
  %80 = load i8*, i8** %79, align 8, !dbg !3810, !tbaa !747
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3810
  %82 = load i8*, i8** %81, align 8, !dbg !3810, !tbaa !747
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3810
  %84 = load i8*, i8** %83, align 8, !dbg !3810, !tbaa !747
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3810
  %86 = load i8*, i8** %85, align 8, !dbg !3810, !tbaa !747
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3811
  br label %146, !dbg !3812

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #10, !dbg !3813
  %90 = load i8*, i8** %4, align 8, !dbg !3813, !tbaa !747
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3813
  %92 = load i8*, i8** %91, align 8, !dbg !3813, !tbaa !747
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3813
  %94 = load i8*, i8** %93, align 8, !dbg !3813, !tbaa !747
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3813
  %96 = load i8*, i8** %95, align 8, !dbg !3813, !tbaa !747
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3813
  %98 = load i8*, i8** %97, align 8, !dbg !3813, !tbaa !747
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3813
  %100 = load i8*, i8** %99, align 8, !dbg !3813, !tbaa !747
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3813
  %102 = load i8*, i8** %101, align 8, !dbg !3813, !tbaa !747
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3813
  %104 = load i8*, i8** %103, align 8, !dbg !3813, !tbaa !747
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3814
  br label %146, !dbg !3815

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #10, !dbg !3816
  %108 = load i8*, i8** %4, align 8, !dbg !3816, !tbaa !747
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3816
  %110 = load i8*, i8** %109, align 8, !dbg !3816, !tbaa !747
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3816
  %112 = load i8*, i8** %111, align 8, !dbg !3816, !tbaa !747
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3816
  %114 = load i8*, i8** %113, align 8, !dbg !3816, !tbaa !747
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3816
  %116 = load i8*, i8** %115, align 8, !dbg !3816, !tbaa !747
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3816
  %118 = load i8*, i8** %117, align 8, !dbg !3816, !tbaa !747
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3816
  %120 = load i8*, i8** %119, align 8, !dbg !3816, !tbaa !747
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3816
  %122 = load i8*, i8** %121, align 8, !dbg !3816, !tbaa !747
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3816
  %124 = load i8*, i8** %123, align 8, !dbg !3816, !tbaa !747
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3817
  br label %146, !dbg !3818

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #10, !dbg !3819
  %128 = load i8*, i8** %4, align 8, !dbg !3819, !tbaa !747
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3819
  %130 = load i8*, i8** %129, align 8, !dbg !3819, !tbaa !747
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3819
  %132 = load i8*, i8** %131, align 8, !dbg !3819, !tbaa !747
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3819
  %134 = load i8*, i8** %133, align 8, !dbg !3819, !tbaa !747
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3819
  %136 = load i8*, i8** %135, align 8, !dbg !3819, !tbaa !747
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3819
  %138 = load i8*, i8** %137, align 8, !dbg !3819, !tbaa !747
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3819
  %140 = load i8*, i8** %139, align 8, !dbg !3819, !tbaa !747
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3819
  %142 = load i8*, i8** %141, align 8, !dbg !3819, !tbaa !747
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3819
  %144 = load i8*, i8** %143, align 8, !dbg !3819, !tbaa !747
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3820
  br label %146, !dbg !3821

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3822
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3823 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3827, metadata !739), !dbg !3833
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3828, metadata !739), !dbg !3834
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3829, metadata !739), !dbg !3835
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3830, metadata !739), !dbg !3836
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3831, metadata !739), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3832, metadata !739), !dbg !3838
  br label %6, !dbg !3839

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3832, metadata !739), !dbg !3838
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3841
  %9 = load i8*, i8** %8, align 8, !dbg !3841, !tbaa !747
  %10 = icmp eq i8* %9, null, !dbg !3844
  %11 = add i64 %7, 1, !dbg !3846
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3832, metadata !739), !dbg !3838
  br i1 %10, label %12, label %6, !dbg !3844, !llvm.loop !3848

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3851
  ret void, !dbg !3852
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3853 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3864, metadata !739), !dbg !3872
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3865, metadata !739), !dbg !3873
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3866, metadata !739), !dbg !3874
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3867, metadata !739), !dbg !3875
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3868, metadata !739), !dbg !3876
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3877
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3877
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3870, metadata !739), !dbg !3878
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3869, metadata !739), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3869, metadata !739), !dbg !3879
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3880
  %12 = icmp ult i32 %11, 41, !dbg !3880
  br i1 %12, label %13, label %18, !dbg !3880

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3884
  %15 = sext i32 %11 to i64, !dbg !3884
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3884
  %17 = add i32 %11, 8, !dbg !3884
  store i32 %17, i32* %8, align 8, !dbg !3884
  br label %21, !dbg !3884

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3886
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3886
  store i8* %20, i8** %10, align 8, !dbg !3886
  br label %21, !dbg !3886

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3880
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3888
  %25 = load i8*, i8** %24, align 8, !dbg !3888
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3890
  store i8* %25, i8** %26, align 16, !dbg !3891, !tbaa !747
  %27 = icmp eq i8* %25, null, !dbg !3892
  br i1 %27, label %30, label %28, !dbg !3893

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  %29 = icmp ult i32 %22, 41, !dbg !3880
  br i1 %29, label %35, label %32, !dbg !3880

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3895
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3896
  ret void, !dbg !3896

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3886
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3886
  store i8* %34, i8** %10, align 8, !dbg !3886
  br label %40, !dbg !3886

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3884
  %37 = sext i32 %22 to i64, !dbg !3884
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3884
  %39 = add i32 %22, 8, !dbg !3884
  store i32 %39, i32* %8, align 8, !dbg !3884
  br label %40, !dbg !3884

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3880
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3888
  %44 = load i8*, i8** %43, align 8, !dbg !3888
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3890
  store i8* %44, i8** %45, align 8, !dbg !3891, !tbaa !747
  %46 = icmp eq i8* %44, null, !dbg !3892
  br i1 %46, label %30, label %47, !dbg !3893

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  %48 = icmp ult i32 %41, 41, !dbg !3880
  br i1 %48, label %52, label %49, !dbg !3880

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3886
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3886
  store i8* %51, i8** %10, align 8, !dbg !3886
  br label %57, !dbg !3886

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3884
  %54 = sext i32 %41 to i64, !dbg !3884
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3884
  %56 = add i32 %41, 8, !dbg !3884
  store i32 %56, i32* %8, align 8, !dbg !3884
  br label %57, !dbg !3884

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3880
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3888
  %61 = load i8*, i8** %60, align 8, !dbg !3888
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3890
  store i8* %61, i8** %62, align 16, !dbg !3891, !tbaa !747
  %63 = icmp eq i8* %61, null, !dbg !3892
  br i1 %63, label %30, label %64, !dbg !3893

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  %65 = icmp ult i32 %58, 41, !dbg !3880
  br i1 %65, label %69, label %66, !dbg !3880

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3886
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3886
  store i8* %68, i8** %10, align 8, !dbg !3886
  br label %74, !dbg !3886

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3884
  %71 = sext i32 %58 to i64, !dbg !3884
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3884
  %73 = add i32 %58, 8, !dbg !3884
  store i32 %73, i32* %8, align 8, !dbg !3884
  br label %74, !dbg !3884

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3880
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3888
  %78 = load i8*, i8** %77, align 8, !dbg !3888
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3890
  store i8* %78, i8** %79, align 8, !dbg !3891, !tbaa !747
  %80 = icmp eq i8* %78, null, !dbg !3892
  br i1 %80, label %30, label %81, !dbg !3893

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  %82 = icmp ult i32 %75, 41, !dbg !3880
  br i1 %82, label %86, label %83, !dbg !3880

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3886
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3886
  store i8* %85, i8** %10, align 8, !dbg !3886
  br label %91, !dbg !3886

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3884
  %88 = sext i32 %75 to i64, !dbg !3884
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3884
  %90 = add i32 %75, 8, !dbg !3884
  store i32 %90, i32* %8, align 8, !dbg !3884
  br label %91, !dbg !3884

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3880
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3888
  %95 = load i8*, i8** %94, align 8, !dbg !3888
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3890
  store i8* %95, i8** %96, align 16, !dbg !3891, !tbaa !747
  %97 = icmp eq i8* %95, null, !dbg !3892
  br i1 %97, label %30, label %98, !dbg !3893

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  %99 = icmp ult i32 %92, 41, !dbg !3880
  br i1 %99, label %103, label %100, !dbg !3880

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3886
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3886
  store i8* %102, i8** %10, align 8, !dbg !3886
  br label %108, !dbg !3886

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3884
  %105 = sext i32 %92 to i64, !dbg !3884
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3884
  %107 = add i32 %92, 8, !dbg !3884
  store i32 %107, i32* %8, align 8, !dbg !3884
  br label %108, !dbg !3884

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3888
  %111 = load i8*, i8** %110, align 8, !dbg !3888
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3890
  store i8* %111, i8** %112, align 8, !dbg !3891, !tbaa !747
  %113 = icmp eq i8* %111, null, !dbg !3892
  br i1 %113, label %30, label %114, !dbg !3893

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  %115 = load i8*, i8** %10, align 8, !dbg !3886
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3886
  store i8* %116, i8** %10, align 8, !dbg !3886
  %117 = bitcast i8* %115 to i8**, !dbg !3888
  %118 = load i8*, i8** %117, align 8, !dbg !3888
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3890
  store i8* %118, i8** %119, align 16, !dbg !3891, !tbaa !747
  %120 = icmp eq i8* %118, null, !dbg !3892
  br i1 %120, label %30, label %121, !dbg !3893

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  %122 = load i8*, i8** %10, align 8, !dbg !3886
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3886
  store i8* %123, i8** %10, align 8, !dbg !3886
  %124 = bitcast i8* %122 to i8**, !dbg !3888
  %125 = load i8*, i8** %124, align 8, !dbg !3888
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3890
  store i8* %125, i8** %126, align 8, !dbg !3891, !tbaa !747
  %127 = icmp eq i8* %125, null, !dbg !3892
  br i1 %127, label %30, label %128, !dbg !3893

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  %129 = load i8*, i8** %10, align 8, !dbg !3886
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3886
  store i8* %130, i8** %10, align 8, !dbg !3886
  %131 = bitcast i8* %129 to i8**, !dbg !3888
  %132 = load i8*, i8** %131, align 8, !dbg !3888
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3890
  store i8* %132, i8** %133, align 16, !dbg !3891, !tbaa !747
  %134 = icmp eq i8* %132, null, !dbg !3892
  br i1 %134, label %30, label %135, !dbg !3893

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  %136 = load i8*, i8** %10, align 8, !dbg !3886
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3886
  store i8* %137, i8** %10, align 8, !dbg !3886
  %138 = bitcast i8* %136 to i8**, !dbg !3888
  %139 = load i8*, i8** %138, align 8, !dbg !3888
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3890
  store i8* %139, i8** %140, align 8, !dbg !3891, !tbaa !747
  %141 = icmp eq i8* %139, null, !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3869, metadata !739), !dbg !3879
  %142 = select i1 %141, i64 9, i64 10, !dbg !3893
  br label %30, !dbg !3893
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3897 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3901, metadata !739), !dbg !3911
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3902, metadata !739), !dbg !3912
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3903, metadata !739), !dbg !3913
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3904, metadata !739), !dbg !3914
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3915
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3915
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3905, metadata !739), !dbg !3916
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3917
  call void @llvm.va_start(i8* nonnull %6), !dbg !3917
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3918
  call void @llvm.va_end(i8* nonnull %6), !dbg !3919
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3920
  ret void, !dbg !3920
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3921 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.94, i64 0, i64 0), i32 5) #10, !dbg !3922
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.95, i64 0, i64 0)) #10, !dbg !3923
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #10, !dbg !3925
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.98, i64 0, i64 0)) #10, !dbg !3926
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.99, i64 0, i64 0), i32 5) #10, !dbg !3927
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3927, !tbaa !747
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3928
  ret void, !dbg !3929
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3930 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3934, metadata !739), !dbg !3936
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3935, metadata !739), !dbg !3937
  %3 = udiv i64 9223372036854775807, %1, !dbg !3938
  %4 = icmp ult i64 %3, %0, !dbg !3938
  br i1 %4, label %5, label %6, !dbg !3940

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3941
  unreachable, !dbg !3941

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3942
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3943, metadata !739) #10, !dbg !3950
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3952
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3949, metadata !739) #10, !dbg !3953
  %9 = icmp eq i8* %8, null, !dbg !3954
  %10 = icmp ne i64 %7, 0, !dbg !3956
  %11 = and i1 %10, %9, !dbg !3958
  br i1 %11, label %12, label %13, !dbg !3958

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3959
  unreachable, !dbg !3959

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3960
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3944 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3943, metadata !739), !dbg !3961
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3962
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3949, metadata !739), !dbg !3963
  %3 = icmp eq i8* %2, null, !dbg !3964
  %4 = icmp ne i64 %0, 0, !dbg !3965
  %5 = and i1 %4, %3, !dbg !3966
  br i1 %5, label %6, label %7, !dbg !3966

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3967
  unreachable, !dbg !3967

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3968
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3969 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3973, metadata !739), !dbg !3976
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3974, metadata !739), !dbg !3977
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3975, metadata !739), !dbg !3978
  %4 = udiv i64 9223372036854775807, %2, !dbg !3979
  %5 = icmp ult i64 %4, %1, !dbg !3979
  br i1 %5, label %6, label %7, !dbg !3981

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3982
  unreachable, !dbg !3982

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3983
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3984, metadata !739) #10, !dbg !3990
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3989, metadata !739) #10, !dbg !3992
  %9 = icmp eq i64 %8, 0, !dbg !3993
  %10 = icmp ne i8* %0, null, !dbg !3995
  %11 = and i1 %10, %9, !dbg !3997
  br i1 %11, label %12, label %13, !dbg !3997

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3998
  br label %19, !dbg !4000

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4001
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3984, metadata !739) #10, !dbg !3990
  %15 = icmp eq i8* %14, null, !dbg !4002
  %16 = icmp ne i64 %8, 0, !dbg !4004
  %17 = and i1 %16, %15, !dbg !4006
  br i1 %17, label %18, label %19, !dbg !4006

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4007
  unreachable, !dbg !4007

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4008
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3985 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3984, metadata !739), !dbg !4009
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3989, metadata !739), !dbg !4010
  %3 = icmp eq i64 %1, 0, !dbg !4011
  %4 = icmp ne i8* %0, null, !dbg !4012
  %5 = and i1 %4, %3, !dbg !4013
  br i1 %5, label %6, label %7, !dbg !4013

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4014
  br label %13, !dbg !4015

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4016
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3984, metadata !739), !dbg !4009
  %9 = icmp eq i8* %8, null, !dbg !4017
  %10 = icmp ne i64 %1, 0, !dbg !4018
  %11 = and i1 %10, %9, !dbg !4019
  br i1 %11, label %12, label %13, !dbg !4019

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4020
  unreachable, !dbg !4020

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4021
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !699 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !704, metadata !739), !dbg !4022
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !705, metadata !739), !dbg !4023
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !706, metadata !739), !dbg !4024
  %4 = load i64, i64* %1, align 8, !dbg !4025, !tbaa !2996
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !707, metadata !739), !dbg !4026
  %5 = icmp eq i8* %0, null, !dbg !4027
  br i1 %5, label %6, label %13, !dbg !4029

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4030
  br i1 %7, label %8, label %17, !dbg !4033

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4034
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !707, metadata !739), !dbg !4026
  %10 = icmp ugt i64 %2, 128, !dbg !4036
  %11 = zext i1 %10 to i64, !dbg !4036
  %12 = add nuw nsw i64 %9, %11, !dbg !4037
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !707, metadata !739), !dbg !4026
  br label %17, !dbg !4038

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4039
  %15 = icmp ugt i64 %14, %4, !dbg !4042
  br i1 %15, label %20, label %16, !dbg !4043

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4044
  unreachable, !dbg !4044

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !707, metadata !739), !dbg !4026
  store i64 %18, i64* %1, align 8, !dbg !4045, !tbaa !2996
  %19 = mul i64 %18, %2, !dbg !4046
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3984, metadata !739) #10, !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3989, metadata !739) #10, !dbg !4049
  br label %27, !dbg !4050

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4051
  %22 = add i64 %4, 1, !dbg !4052
  %23 = add i64 %22, %21, !dbg !4053
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !707, metadata !739), !dbg !4026
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !707, metadata !739), !dbg !4026
  store i64 %23, i64* %1, align 8, !dbg !4045, !tbaa !2996
  %24 = mul i64 %23, %2, !dbg !4046
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3984, metadata !739) #10, !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3989, metadata !739) #10, !dbg !4049
  %25 = icmp eq i64 %24, 0, !dbg !4054
  br i1 %25, label %26, label %27, !dbg !4050

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4055
  br label %34, !dbg !4056

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4057
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3984, metadata !739) #10, !dbg !4047
  %30 = icmp eq i8* %29, null, !dbg !4058
  %31 = icmp ne i64 %28, 0, !dbg !4059
  %32 = and i1 %31, %30, !dbg !4060
  br i1 %32, label %33, label %34, !dbg !4060

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4061
  unreachable, !dbg !4061

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4062
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4063 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4065, metadata !739), !dbg !4066
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3943, metadata !739) #10, !dbg !4067
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4069
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3949, metadata !739) #10, !dbg !4070
  %3 = icmp eq i8* %2, null, !dbg !4071
  %4 = icmp ne i64 %0, 0, !dbg !4072
  %5 = and i1 %4, %3, !dbg !4073
  br i1 %5, label %6, label %7, !dbg !4073

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4074
  unreachable, !dbg !4074

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4075
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4076 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4080, metadata !739), !dbg !4082
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4081, metadata !739), !dbg !4083
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !704, metadata !739) #10, !dbg !4084
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !705, metadata !739) #10, !dbg !4086
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !706, metadata !739) #10, !dbg !4087
  %3 = load i64, i64* %1, align 8, !dbg !4088, !tbaa !2996
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !707, metadata !739) #10, !dbg !4089
  %4 = icmp eq i8* %0, null, !dbg !4090
  br i1 %4, label %5, label %8, !dbg !4091

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4092
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !707, metadata !739) #10, !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !707, metadata !739) #10, !dbg !4089
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4093
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !707, metadata !739) #10, !dbg !4089
  store i64 %7, i64* %1, align 8, !dbg !4094, !tbaa !2996
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3984, metadata !739) #10, !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3989, metadata !739) #10, !dbg !4097
  br label %17, !dbg !4098

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4099
  br i1 %9, label %11, label %10, !dbg !4100

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4101
  unreachable, !dbg !4101

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4102
  %13 = add i64 %3, 1, !dbg !4103
  %14 = add i64 %13, %12, !dbg !4104
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !707, metadata !739) #10, !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !707, metadata !739) #10, !dbg !4089
  store i64 %14, i64* %1, align 8, !dbg !4094, !tbaa !2996
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3984, metadata !739) #10, !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3989, metadata !739) #10, !dbg !4097
  %15 = icmp eq i64 %14, 0, !dbg !4105
  br i1 %15, label %16, label %17, !dbg !4098

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4106
  br label %24, !dbg !4107

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4108
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3984, metadata !739) #10, !dbg !4095
  %20 = icmp eq i8* %19, null, !dbg !4109
  %21 = icmp ne i64 %18, 0, !dbg !4110
  %22 = and i1 %21, %20, !dbg !4111
  br i1 %22, label %23, label %24, !dbg !4111

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4112
  unreachable, !dbg !4112

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4113
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4114 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4116, metadata !739), !dbg !4117
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3943, metadata !739) #10, !dbg !4118
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4120
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3949, metadata !739) #10, !dbg !4121
  %3 = icmp eq i8* %2, null, !dbg !4122
  %4 = icmp ne i64 %0, 0, !dbg !4123
  %5 = and i1 %4, %3, !dbg !4124
  br i1 %5, label %6, label %7, !dbg !4124

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4125
  unreachable, !dbg !4125

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4126
  ret i8* %2, !dbg !4127
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4128 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4130, metadata !739), !dbg !4133
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4131, metadata !739), !dbg !4134
  %3 = udiv i64 9223372036854775807, %1, !dbg !4135
  %4 = icmp ult i64 %3, %0, !dbg !4135
  br i1 %4, label %8, label %5, !dbg !4137

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4138
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4132, metadata !739), !dbg !4140
  %7 = icmp eq i8* %6, null, !dbg !4141
  br i1 %7, label %8, label %9, !dbg !4142

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4144
  unreachable, !dbg !4144

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4145
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4146 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4148, metadata !739), !dbg !4150
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4149, metadata !739), !dbg !4151
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3943, metadata !739) #10, !dbg !4152
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4154
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3949, metadata !739) #10, !dbg !4155
  %4 = icmp eq i8* %3, null, !dbg !4156
  %5 = icmp ne i64 %1, 0, !dbg !4157
  %6 = and i1 %5, %4, !dbg !4158
  br i1 %6, label %7, label %8, !dbg !4158

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4159
  unreachable, !dbg !4159

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4160
  ret i8* %3, !dbg !4161
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4162 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4164, metadata !739), !dbg !4165
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4166
  %3 = add i64 %2, 1, !dbg !4167
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4148, metadata !739) #10, !dbg !4168
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4149, metadata !739) #10, !dbg !4171
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3943, metadata !739) #10, !dbg !4172
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4174
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3949, metadata !739) #10, !dbg !4175
  %5 = icmp eq i8* %4, null, !dbg !4176
  %6 = icmp ne i64 %3, 0, !dbg !4177
  %7 = and i1 %6, %5, !dbg !4178
  br i1 %7, label %8, label %9, !dbg !4178

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4179
  unreachable, !dbg !4179

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4180
  ret i8* %4, !dbg !4181
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4182 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4184, !tbaa !870
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #10, !dbg !4185
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* %2) #10, !dbg !4186
  tail call void @abort() #14, !dbg !4188
  unreachable, !dbg !4188
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4189 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4192, metadata !739), !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4193, metadata !739), !dbg !4199
  %3 = icmp eq i64 %0, 0, !dbg !4200
  %4 = icmp eq i64 %1, 0, !dbg !4201
  %5 = or i1 %3, %4, !dbg !4203
  br i1 %5, label %12, label %6, !dbg !4203

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4204
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4195, metadata !739), !dbg !4205
  %8 = udiv i64 %7, %1, !dbg !4206
  %9 = icmp eq i64 %8, %0, !dbg !4208
  br i1 %9, label %12, label %10, !dbg !4209

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4210
  store i32 12, i32* %11, align 4, !dbg !4212, !tbaa !870
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4192, metadata !739), !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4193, metadata !739), !dbg !4199
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4213
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4194, metadata !739), !dbg !4214
  br label %16, !dbg !4215

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4216
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4217 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4234, metadata !739), !dbg !4243
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4235, metadata !739), !dbg !4244
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4236, metadata !739), !dbg !4245
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4237, metadata !739), !dbg !4246
  %6 = bitcast i32* %5 to i8*, !dbg !4247
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4247
  %7 = icmp eq i32* %0, null, !dbg !4248
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4234, metadata !739), !dbg !4243
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4250
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4234, metadata !739), !dbg !4243
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4251
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4238, metadata !739), !dbg !4252
  %10 = icmp ugt i64 %9, -3, !dbg !4253
  %11 = icmp ne i64 %2, 0, !dbg !4254
  %12 = and i1 %11, %10, !dbg !4256
  br i1 %12, label %13, label %18, !dbg !4256

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4257
  br i1 %14, label %18, label %15, !dbg !4259

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4261, !tbaa !916
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4240, metadata !739), !dbg !4262
  %17 = zext i8 %16 to i32, !dbg !4263
  store i32 %17, i32* %8, align 4, !dbg !4264, !tbaa !870
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4265
  ret i64 %19, !dbg !4265
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4266 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4311, metadata !739), !dbg !4316
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4317
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4318, metadata !739), !dbg !4322
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4324
  %4 = load i32, i32* %3, align 8, !dbg !4324, !tbaa !4325
  %5 = and i32 %4, 32, !dbg !4324
  %6 = icmp eq i32 %5, 0, !dbg !4327
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4328
  %8 = icmp ne i32 %7, 0, !dbg !4329
  br i1 %6, label %9, label %19, !dbg !4330

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4332
  %11 = icmp ne i64 %2, 0, !dbg !4332
  %12 = or i1 %11, %10, !dbg !4332
  %13 = sext i1 %8 to i32, !dbg !4332
  br i1 %12, label %22, label %14, !dbg !4332

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4334
  %16 = load i32, i32* %15, align 4, !dbg !4334, !tbaa !870
  %17 = icmp ne i32 %16, 9, !dbg !4336
  %18 = sext i1 %17 to i32, !dbg !4336
  br label %22, !dbg !4336

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4338

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4340
  store i32 0, i32* %21, align 4, !dbg !4342, !tbaa !870
  br label %22, !dbg !4340

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4343
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4344 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4349, metadata !739), !dbg !4369
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4350, metadata !739), !dbg !4370
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4371
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4351, metadata !739), !dbg !4372
  %3 = icmp eq i8* %2, null, !dbg !4373
  br i1 %3, label %15, label %4, !dbg !4374

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4359, metadata !739), !dbg !4375
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4360, metadata !739), !dbg !4376
  %5 = load i8, i8* %2, align 1, !dbg !4377, !tbaa !916
  %6 = icmp eq i8 %5, 67, !dbg !4379
  br i1 %6, label %7, label %11, !dbg !4382

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4384
  %9 = load i8, i8* %8, align 1, !dbg !4384, !tbaa !916
  %10 = icmp eq i8 %9, 0, !dbg !4387
  br i1 %10, label %14, label %11, !dbg !4389

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4365, metadata !739), !dbg !4391
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.120, i64 0, i64 0)) #10, !dbg !4392
  %13 = icmp eq i32 %12, 0, !dbg !4394
  br i1 %13, label %14, label %15, !dbg !4396

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4350, metadata !739), !dbg !4370
  br label %15, !dbg !4398

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4399
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4400 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4412, metadata !739), !dbg !4486
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4479, metadata !739), !dbg !4488
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4489
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4404, metadata !739), !dbg !4490
  %4 = icmp eq i8* %3, null, !dbg !4491
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), i8* %3, !dbg !4493
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4404, metadata !739), !dbg !4490
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4494, !tbaa !747
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4426, metadata !739) #10, !dbg !4495
  %7 = icmp eq i8* %6, null, !dbg !4496
  br i1 %7, label %8, label %127, !dbg !4497

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.124, i64 0, i64 0)) #10, !dbg !4498
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4427, metadata !739) #10, !dbg !4499
  %10 = icmp eq i8* %9, null, !dbg !4500
  br i1 %10, label %14, label %11, !dbg !4502

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4503, !tbaa !916
  %13 = icmp eq i8 %12, 0, !dbg !4505
  br i1 %13, label %14, label %15, !dbg !4506

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4508

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.125, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4427, metadata !739) #10, !dbg !4499
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4509
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4430, metadata !739) #10, !dbg !4510
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4432, metadata !739) #10, !dbg !4511
  %18 = icmp eq i64 %17, 0, !dbg !4512
  br i1 %18, label %24, label %19, !dbg !4513

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4514
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4514
  %22 = load i8, i8* %21, align 1, !dbg !4514, !tbaa !916
  %23 = icmp ne i8 %22, 47, !dbg !4516
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4517
  %27 = add i64 %17, 14, !dbg !4518
  %28 = add i64 %27, %26, !dbg !4519
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4520
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4429, metadata !739) #10, !dbg !4521
  %30 = icmp eq i8* %29, null, !dbg !4522
  br i1 %30, label %125, label %31, !dbg !4522

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4523
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4526

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4527, !tbaa !916
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4529
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.126, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4530
  br label %37, !dbg !4531

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4529
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.126, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4530
  br label %37, !dbg !4531

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4532
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4434, metadata !739) #10, !dbg !4533
  %39 = icmp slt i32 %38, 0, !dbg !4534
  br i1 %39, label %123, label %40, !dbg !4535

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.127, i64 0, i64 0)) #10, !dbg !4536
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4435, metadata !739) #10, !dbg !4537
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4538
  br i1 %42, label %48, label %43, !dbg !4539

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4540

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4541
  br label %123, !dbg !4543

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4476, metadata !739) #10, !dbg !4540
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4477, metadata !739) #10, !dbg !4544
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4545
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4546
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4547, metadata !739) #10, !dbg !4552
  %53 = load i8*, i8** %46, align 8, !dbg !4554, !tbaa !4555
  %54 = load i8*, i8** %47, align 8, !dbg !4554, !tbaa !4556
  %55 = icmp ult i8* %53, %54, !dbg !4554
  br i1 %55, label %58, label %56, !dbg !4554, !prof !4557

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4558
  br label %62, !dbg !4558

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4560
  store i8* %59, i8** %46, align 8, !dbg !4560, !tbaa !4555
  %60 = load i8, i8* %53, align 1, !dbg !4560, !tbaa !916
  %61 = zext i8 %60 to i32, !dbg !4560
  br label %62, !dbg !4560

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4562
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4478, metadata !739) #10, !dbg !4564
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4565

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4566

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4547, metadata !739) #10, !dbg !4566
  %66 = load i8*, i8** %46, align 8, !dbg !4570, !tbaa !4555
  %67 = load i8*, i8** %47, align 8, !dbg !4570, !tbaa !4556
  %68 = icmp ult i8* %66, %67, !dbg !4570
  br i1 %68, label %71, label %69, !dbg !4570, !prof !4557

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4571
  br label %75, !dbg !4571

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4572
  store i8* %72, i8** %46, align 8, !dbg !4572, !tbaa !4555
  %73 = load i8, i8* %66, align 1, !dbg !4572, !tbaa !916
  %74 = zext i8 %73 to i32, !dbg !4572
  br label %75, !dbg !4572

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4573
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4478, metadata !739) #10, !dbg !4564
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4574, !llvm.loop !4576

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4579
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.128, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4580
  %80 = icmp slt i32 %79, 2, !dbg !4582
  br i1 %80, label %115, label %81, !dbg !4583

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4584
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4483, metadata !739) #10, !dbg !4585
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4586
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4484, metadata !739) #10, !dbg !4587
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4485, metadata !739) #10, !dbg !4588
  %84 = icmp eq i64 %51, 0, !dbg !4589
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4591

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4477, metadata !739) #10, !dbg !4544
  %89 = add i64 %86, 2, !dbg !4592
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4594
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4476, metadata !739) #10, !dbg !4540
  br label %95, !dbg !4595

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4596
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4477, metadata !739) #10, !dbg !4544
  %93 = add i64 %92, 1, !dbg !4598
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4599
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4476, metadata !739) #10, !dbg !4540
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4476, metadata !739) #10, !dbg !4540
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4477, metadata !739) #10, !dbg !4544
  %98 = icmp eq i8* %97, null, !dbg !4600
  br i1 %98, label %99, label %100, !dbg !4602

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4477, metadata !739) #10, !dbg !4544
  call void @free(i8* %52) #10, !dbg !4603
  br label %116, !dbg !4605

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4606
  %102 = xor i64 %83, -1, !dbg !4607
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4607
  %104 = xor i64 %82, -1, !dbg !4608
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4608
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4609, metadata !739) #10, !dbg !4613
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4612, metadata !739) #10, !dbg !4613
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4615
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4616
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4609, metadata !739) #10, !dbg !4617
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4612, metadata !739) #10, !dbg !4617
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4619
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4620
  br label %111, !dbg !4621

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4540

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4476, metadata !739) #10, !dbg !4540
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4477, metadata !739) #10, !dbg !4544
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4621
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4621
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4540

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4540

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4476, metadata !739) #10, !dbg !4540
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4477, metadata !739) #10, !dbg !4544
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4621
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4621
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4622
  %120 = icmp eq i64 %117, 0, !dbg !4623
  br i1 %120, label %123, label %121, !dbg !4625

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4626
  store i8 0, i8* %122, align 1, !dbg !4628, !tbaa !916
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4426, metadata !739) #10, !dbg !4495
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4426, metadata !739) #10, !dbg !4495
  call void @free(i8* %29) #10, !dbg !4629
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.123, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4426, metadata !739) #10, !dbg !4495
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4630, !tbaa !747
  br label %127, !dbg !4631

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4405, metadata !739), !dbg !4632
  %129 = load i8, i8* %128, align 1, !dbg !4633, !tbaa !916
  %130 = icmp eq i8 %129, 0, !dbg !4634
  br i1 %130, label %157, label %131, !dbg !4635

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4637

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4637
  %136 = icmp eq i32 %135, 0, !dbg !4638
  br i1 %136, label %143, label %137, !dbg !4639

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4640
  br i1 %138, label %139, label %147, !dbg !4642

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4643
  %141 = load i8, i8* %140, align 1, !dbg !4643, !tbaa !916
  %142 = icmp eq i8 %141, 0, !dbg !4645
  br i1 %142, label %143, label %147, !dbg !4646

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4648
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4650
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4651
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4404, metadata !739), !dbg !4490
  br label %157, !dbg !4652

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4653
  %149 = add i64 %148, 1, !dbg !4654
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4655
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4405, metadata !739), !dbg !4632
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4656
  %152 = add i64 %151, 1, !dbg !4657
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4658
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4405, metadata !739), !dbg !4632
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4405, metadata !739), !dbg !4632
  %154 = load i8, i8* %153, align 1, !dbg !4633, !tbaa !916
  %155 = icmp eq i8 %154, 0, !dbg !4634
  br i1 %155, label %156, label %132, !dbg !4635, !llvm.loop !4659

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4490

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4404, metadata !739), !dbg !4490
  %159 = load i8, i8* %158, align 1, !dbg !4662, !tbaa !916
  %160 = icmp eq i8 %159, 0, !dbg !4664
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i64 0, i64 0), i8* %158, !dbg !4665
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4404, metadata !739), !dbg !4490
  ret i8* %161, !dbg !4666
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4667 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4712, metadata !739), !dbg !4716
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4713, metadata !739), !dbg !4717
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4715, metadata !739), !dbg !4718
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4719
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4714, metadata !739), !dbg !4720
  %3 = icmp slt i32 %2, 0, !dbg !4721
  br i1 %3, label %4, label %6, !dbg !4723

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4724
  br label %24, !dbg !4725

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4726
  %8 = icmp eq i32 %7, 0, !dbg !4726
  br i1 %8, label %13, label %9, !dbg !4728

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4729
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4731
  %12 = icmp eq i64 %11, -1, !dbg !4733
  br i1 %12, label %16, label %13, !dbg !4734

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4735
  %15 = icmp eq i32 %14, 0, !dbg !4735
  br i1 %15, label %16, label %18, !dbg !4736

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4713, metadata !739), !dbg !4717
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4738
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4715, metadata !739), !dbg !4718
  br label %24, !dbg !4739

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4740
  %20 = load i32, i32* %19, align 4, !dbg !4740, !tbaa !870
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4713, metadata !739), !dbg !4717
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4713, metadata !739), !dbg !4717
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4738
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4715, metadata !739), !dbg !4718
  %22 = icmp eq i32 %20, 0, !dbg !4741
  br i1 %22, label %24, label %23, !dbg !4739

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4743, !tbaa !870
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4715, metadata !739), !dbg !4718
  br label %24, !dbg !4745

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4746
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4747 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4792, metadata !739), !dbg !4793
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4794
  br i1 %2, label %6, label %3, !dbg !4796

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4797
  %5 = icmp eq i32 %4, 0, !dbg !4797
  br i1 %5, label %6, label %8, !dbg !4799

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4801
  br label %17, !dbg !4802

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4803, metadata !739) #10, !dbg !4808
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4810
  %10 = load i32, i32* %9, align 8, !dbg !4810, !tbaa !4325
  %11 = and i32 %10, 256, !dbg !4812
  %12 = icmp eq i32 %11, 0, !dbg !4812
  br i1 %12, label %15, label %13, !dbg !4813

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4814
  br label %15, !dbg !4814

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4815
  br label %17, !dbg !4816

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4817
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4818 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4863, metadata !739), !dbg !4869
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4864, metadata !739), !dbg !4870
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4865, metadata !739), !dbg !4871
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4872
  %5 = load i8*, i8** %4, align 8, !dbg !4872, !tbaa !4556
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4873
  %7 = load i8*, i8** %6, align 8, !dbg !4873, !tbaa !4555
  %8 = icmp eq i8* %5, %7, !dbg !4874
  br i1 %8, label %9, label %28, !dbg !4875

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4876
  %11 = load i8*, i8** %10, align 8, !dbg !4876, !tbaa !4878
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4879
  %13 = load i8*, i8** %12, align 8, !dbg !4879, !tbaa !4880
  %14 = icmp eq i8* %11, %13, !dbg !4881
  br i1 %14, label %15, label %28, !dbg !4882

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4883
  %17 = load i8*, i8** %16, align 8, !dbg !4883, !tbaa !4884
  %18 = icmp eq i8* %17, null, !dbg !4885
  br i1 %18, label %19, label %28, !dbg !4886

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4888
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4889
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4866, metadata !739), !dbg !4891
  %22 = icmp eq i64 %21, -1, !dbg !4892
  br i1 %22, label %30, label %23, !dbg !4894

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4895
  %25 = load i32, i32* %24, align 8, !dbg !4896, !tbaa !4325
  %26 = and i32 %25, -17, !dbg !4896
  store i32 %26, i32* %24, align 8, !dbg !4896, !tbaa !4325
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4897
  store i64 %21, i64* %27, align 8, !dbg !4898, !tbaa !4899
  br label %30, !dbg !4900

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4901
  br label %30, !dbg !4902

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4903
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
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!10, !195, !201, !209, !645, !648, !216, !223, !651, !671, !686, !290, !694, !711, !713, !715, !718, !720, !299, !723, !725, !727}
!llvm.ident = !{!729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729, !729}
!llvm.module.flags = !{!730, !731, !732, !733}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 548, type: !181, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 503, type: !4, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !99)
!3 = !DIFile(filename: "src/cat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !39, globals: !51)
!11 = !{!12, !26, !35}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 32, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!15 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!16 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!17 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!18 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!19 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!20 = !DIEnumerator(name: "c_quoting_style", value: 5)
!21 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!22 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!23 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!24 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!25 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 45, size: 32, elements: !28)
!27 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!28 = !{!29, !30, !31, !32, !33, !34}
!29 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!30 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!31 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!32 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!33 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!34 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 73, size: 32, elements: !37)
!36 = !DIFile(filename: "src/ioblksize.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!37 = !{!38}
!38 = !DIEnumerator(name: "IO_BUFSIZE", value: 131072)
!39 = !{!8, !40, !41, !44, !46, !49}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 62, baseType: !43)
!42 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!43 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!51 = !{!0, !52, !54, !56, !86, !88, !90, !92, !97}
!52 = !DIGlobalVariableExpression(var: !53)
!53 = distinct !DIGlobalVariable(name: "infile", scope: !10, file: !3, line: 52, type: !49, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55)
!55 = distinct !DIGlobalVariable(name: "input_desc", scope: !10, file: !3, line: 55, type: !6, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57)
!57 = distinct !DIGlobalVariable(name: "infomap", scope: !58, file: !59, line: 632, type: !83, isLocal: true, isDefinition: true)
!58 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !59, file: !59, line: 630, type: !60, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !62)
!59 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!60 = !DISubroutineType(types: !61)
!61 = !{null, !49}
!62 = !{!63, !64, !65, !72, !74, !75, !76, !79, !80, !82}
!63 = !DILocalVariable(name: "program", arg: 1, scope: !58, file: !59, line: 630, type: !49)
!64 = !DILocalVariable(name: "node", scope: !58, file: !59, line: 642, type: !49)
!65 = !DILocalVariable(name: "map_prog", scope: !58, file: !59, line: 643, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !58, file: !59, line: 632, size: 128, elements: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !68, file: !59, line: 632, baseType: !49, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !68, file: !59, line: 632, baseType: !49, size: 64, offset: 64)
!72 = !DILocalVariable(name: "__s1_len", scope: !73, file: !59, line: 645, type: !41)
!73 = distinct !DILexicalBlock(scope: !58, file: !59, line: 645, column: 33)
!74 = !DILocalVariable(name: "__s2_len", scope: !73, file: !59, line: 645, type: !41)
!75 = !DILocalVariable(name: "lc_messages", scope: !58, file: !59, line: 655, type: !49)
!76 = !DILocalVariable(name: "__s1_len", scope: !77, file: !59, line: 656, type: !41)
!77 = distinct !DILexicalBlock(scope: !78, file: !59, line: 656, column: 22)
!78 = distinct !DILexicalBlock(scope: !58, file: !59, line: 656, column: 7)
!79 = !DILocalVariable(name: "__s2_len", scope: !77, file: !59, line: 656, type: !41)
!80 = !DILocalVariable(name: "__s2", scope: !81, file: !59, line: 656, type: !46)
!81 = distinct !DILexicalBlock(scope: !77, file: !59, line: 656, column: 22)
!82 = !DILocalVariable(name: "__result", scope: !81, file: !59, line: 656, type: !6)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 896, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 7)
!86 = !DIGlobalVariableExpression(var: !87)
!87 = distinct !DIGlobalVariable(name: "newlines2", scope: !10, file: !3, line: 79, type: !6, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "line_num_end", scope: !10, file: !3, line: 76, type: !8, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "line_num_start", scope: !10, file: !3, line: 73, type: !8, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "line_buf", scope: !10, file: !3, line: 61, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 20)
!97 = !DIGlobalVariableExpression(var: !98)
!98 = distinct !DIGlobalVariable(name: "line_num_print", scope: !10, file: !3, line: 70, type: !8, isLocal: true, isDefinition: true)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !109, !110, !111, !116, !119, !120, !121, !159, !160, !161, !162, !163, !164, !165, !166, !170, !171, !173, !174, !177, !178, !180}
!100 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 503, type: !6)
!101 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 503, type: !7)
!102 = !DILocalVariable(name: "outsize", scope: !2, file: !3, line: 506, type: !41)
!103 = !DILocalVariable(name: "insize", scope: !2, file: !3, line: 509, type: !41)
!104 = !DILocalVariable(name: "page_size", scope: !2, file: !3, line: 511, type: !41)
!105 = !DILocalVariable(name: "inbuf", scope: !2, file: !3, line: 514, type: !8)
!106 = !DILocalVariable(name: "outbuf", scope: !2, file: !3, line: 517, type: !8)
!107 = !DILocalVariable(name: "ok", scope: !2, file: !3, line: 519, type: !108)
!108 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!109 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 520, type: !6)
!110 = !DILocalVariable(name: "argind", scope: !2, file: !3, line: 523, type: !6)
!111 = !DILocalVariable(name: "out_dev", scope: !2, file: !3, line: 526, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !113, line: 60, baseType: !114)
!113 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !115, line: 133, baseType: !43)
!115 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!116 = !DILocalVariable(name: "out_ino", scope: !2, file: !3, line: 529, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !113, line: 48, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !115, line: 136, baseType: !43)
!119 = !DILocalVariable(name: "out_isreg", scope: !2, file: !3, line: 532, type: !108)
!120 = !DILocalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 535, type: !108)
!121 = !DILocalVariable(name: "stat_buf", scope: !2, file: !3, line: 537, type: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !123, line: 46, size: 1152, elements: !124)
!123 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!124 = !{!125, !126, !127, !129, !132, !134, !136, !137, !138, !141, !143, !145, !153, !154, !155}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !122, file: !123, line: 48, baseType: !114, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !122, file: !123, line: 53, baseType: !118, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !122, file: !123, line: 61, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !115, line: 139, baseType: !43)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !122, file: !123, line: 62, baseType: !130, size: 32, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !115, line: 138, baseType: !131)
!131 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !122, file: !123, line: 64, baseType: !133, size: 32, offset: 224)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !115, line: 134, baseType: !131)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !122, file: !123, line: 65, baseType: !135, size: 32, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !115, line: 135, baseType: !131)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !122, file: !123, line: 67, baseType: !6, size: 32, offset: 288)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !122, file: !123, line: 69, baseType: !114, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !122, file: !123, line: 74, baseType: !139, size: 64, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !115, line: 140, baseType: !140)
!140 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !122, file: !123, line: 78, baseType: !142, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !115, line: 162, baseType: !140)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !122, file: !123, line: 80, baseType: !144, size: 64, offset: 512)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !115, line: 167, baseType: !140)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !122, file: !123, line: 91, baseType: !146, size: 128, offset: 576)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !147, line: 8, size: 128, elements: !148)
!147 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !{!149, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !146, file: !147, line: 10, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !115, line: 148, baseType: !140)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !146, file: !147, line: 11, baseType: !152, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !115, line: 184, baseType: !140)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !122, file: !123, line: 92, baseType: !146, size: 128, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !122, file: !123, line: 93, baseType: !146, size: 128, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !122, file: !123, line: 106, baseType: !156, size: 192, offset: 960)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 192, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 3)
!159 = !DILocalVariable(name: "number", scope: !2, file: !3, line: 540, type: !108)
!160 = !DILocalVariable(name: "number_nonblank", scope: !2, file: !3, line: 541, type: !108)
!161 = !DILocalVariable(name: "squeeze_blank", scope: !2, file: !3, line: 542, type: !108)
!162 = !DILocalVariable(name: "show_ends", scope: !2, file: !3, line: 543, type: !108)
!163 = !DILocalVariable(name: "show_nonprinting", scope: !2, file: !3, line: 544, type: !108)
!164 = !DILocalVariable(name: "show_tabs", scope: !2, file: !3, line: 545, type: !108)
!165 = !DILocalVariable(name: "file_open_mode", scope: !2, file: !3, line: 546, type: !6)
!166 = !DILocalVariable(name: "__s1_len", scope: !167, file: !3, line: 663, type: !41)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 663, column: 11)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 663, column: 11)
!169 = distinct !DILexicalBlock(scope: !2, file: !3, line: 659, column: 5)
!170 = !DILocalVariable(name: "__s2_len", scope: !167, file: !3, line: 663, type: !41)
!171 = !DILocalVariable(name: "__s2", scope: !172, file: !3, line: 663, type: !46)
!172 = distinct !DILexicalBlock(scope: !167, file: !3, line: 663, column: 11)
!173 = !DILocalVariable(name: "__result", scope: !172, file: !3, line: 663, type: !6)
!174 = !DILocalVariable(name: "__s1_len", scope: !175, file: !3, line: 755, type: !41)
!175 = distinct !DILexicalBlock(scope: !176, file: !3, line: 755, column: 12)
!176 = distinct !DILexicalBlock(scope: !169, file: !3, line: 755, column: 11)
!177 = !DILocalVariable(name: "__s2_len", scope: !175, file: !3, line: 755, type: !41)
!178 = !DILocalVariable(name: "__s2", scope: !179, file: !3, line: 755, type: !46)
!179 = distinct !DILexicalBlock(scope: !175, file: !3, line: 755, column: 12)
!180 = !DILocalVariable(name: "__result", scope: !179, file: !3, line: 755, type: !6)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 2560, elements: !191)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !184, line: 104, size: 256, elements: !185)
!184 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!185 = !{!186, !187, !188, !190}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !184, line: 106, baseType: !49, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !183, file: !184, line: 109, baseType: !6, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !183, file: !184, line: 110, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !183, file: !184, line: 111, baseType: !6, size: 32, offset: 192)
!191 = !{!192}
!192 = !DISubrange(count: 10)
!193 = !DIGlobalVariableExpression(var: !194)
!194 = distinct !DIGlobalVariable(name: "Version", scope: !195, file: !196, line: 2, type: !49, isLocal: false, isDefinition: true)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, globals: !198)
!196 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!197 = !{}
!198 = !{!193}
!199 = !DIGlobalVariableExpression(var: !200)
!200 = distinct !DIGlobalVariable(name: "file_name", scope: !201, file: !206, line: 36, type: !49, isLocal: true, isDefinition: true)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, globals: !203)
!202 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!203 = !{!199, !204}
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !201, file: !206, line: 46, type: !108, isLocal: true, isDefinition: true)
!206 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!207 = !DIGlobalVariableExpression(var: !208)
!208 = distinct !DIGlobalVariable(name: "exit_failure", scope: !209, file: !212, line: 24, type: !213, isLocal: false, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, globals: !211)
!210 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!211 = !{!207}
!212 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!213 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!214 = !DIGlobalVariableExpression(var: !215)
!215 = distinct !DIGlobalVariable(name: "program_name", scope: !216, file: !220, line: 33, type: !49, isLocal: false, isDefinition: true)
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !218, globals: !219)
!217 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!218 = !{!40, !8}
!219 = !{!214}
!220 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!221 = !DIGlobalVariableExpression(var: !222)
!222 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !223, file: !251, line: 77, type: !284, isLocal: false, isDefinition: true)
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !225, retainedTypes: !246, globals: !248)
!224 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!225 = !{!12, !226, !231}
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 242, size: 32, elements: !227)
!227 = !{!228, !229, !230}
!228 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!229 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!230 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !232, line: 46, size: 32, elements: !233)
!232 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!234 = !DIEnumerator(name: "_ISupper", value: 256)
!235 = !DIEnumerator(name: "_ISlower", value: 512)
!236 = !DIEnumerator(name: "_ISalpha", value: 1024)
!237 = !DIEnumerator(name: "_ISdigit", value: 2048)
!238 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!239 = !DIEnumerator(name: "_ISspace", value: 8192)
!240 = !DIEnumerator(name: "_ISprint", value: 16384)
!241 = !DIEnumerator(name: "_ISgraph", value: 32768)
!242 = !DIEnumerator(name: "_ISblank", value: 1)
!243 = !DIEnumerator(name: "_IScntrl", value: 2)
!244 = !DIEnumerator(name: "_ISpunct", value: 4)
!245 = !DIEnumerator(name: "_ISalnum", value: 8)
!246 = !{!6, !247, !41, !8}
!247 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!248 = !{!221, !249, !254, !266, !268, !273, !280, !282}
!249 = !DIGlobalVariableExpression(var: !250)
!250 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !223, file: !251, line: 93, type: !252, isLocal: false, isDefinition: true)
!251 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 320, elements: !191)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!254 = !DIGlobalVariableExpression(var: !255)
!255 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !223, file: !251, line: 1043, type: !256, isLocal: false, isDefinition: true)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !251, line: 57, size: 448, elements: !257)
!257 = !{!258, !259, !260, !264, !265}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !256, file: !251, line: 60, baseType: !12, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !251, line: 63, baseType: !6, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !256, file: !251, line: 67, baseType: !261, size: 256, offset: 64)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 8)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !256, file: !251, line: 70, baseType: !49, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !256, file: !251, line: 73, baseType: !49, size: 64, offset: 384)
!266 = !DIGlobalVariableExpression(var: !267)
!267 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !223, file: !251, line: 108, type: !256, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269)
!269 = distinct !DIGlobalVariable(name: "slot0", scope: !223, file: !251, line: 834, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 256)
!273 = !DIGlobalVariableExpression(var: !274)
!274 = distinct !DIGlobalVariable(name: "slotvec", scope: !223, file: !251, line: 837, type: !275, isLocal: true, isDefinition: true)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !251, line: 826, size: 128, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !276, file: !251, line: 828, baseType: !41, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !276, file: !251, line: 829, baseType: !8, size: 64, offset: 64)
!280 = !DIGlobalVariableExpression(var: !281)
!281 = distinct !DIGlobalVariable(name: "nslots", scope: !223, file: !251, line: 835, type: !6, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283)
!283 = distinct !DIGlobalVariable(name: "slotvec0", scope: !223, file: !251, line: 836, type: !276, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 704, elements: !286)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!286 = !{!287}
!287 = !DISubrange(count: 11)
!288 = !DIGlobalVariableExpression(var: !289)
!289 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !290, file: !293, line: 26, type: !294, isLocal: false, isDefinition: true)
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, globals: !292)
!291 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!292 = !{!288}
!293 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 376, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 47)
!297 = !DIGlobalVariableExpression(var: !298)
!298 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !299, file: !643, line: 120, type: !644, isLocal: true, isDefinition: true)
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !301, retainedTypes: !640, globals: !642)
!300 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!301 = !{!302}
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 41, size: 32, elements: !304)
!303 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!305 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!306 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!307 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!308 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!309 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!310 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!311 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!312 = !DIEnumerator(name: "DAY_1", value: 131079)
!313 = !DIEnumerator(name: "DAY_2", value: 131080)
!314 = !DIEnumerator(name: "DAY_3", value: 131081)
!315 = !DIEnumerator(name: "DAY_4", value: 131082)
!316 = !DIEnumerator(name: "DAY_5", value: 131083)
!317 = !DIEnumerator(name: "DAY_6", value: 131084)
!318 = !DIEnumerator(name: "DAY_7", value: 131085)
!319 = !DIEnumerator(name: "ABMON_1", value: 131086)
!320 = !DIEnumerator(name: "ABMON_2", value: 131087)
!321 = !DIEnumerator(name: "ABMON_3", value: 131088)
!322 = !DIEnumerator(name: "ABMON_4", value: 131089)
!323 = !DIEnumerator(name: "ABMON_5", value: 131090)
!324 = !DIEnumerator(name: "ABMON_6", value: 131091)
!325 = !DIEnumerator(name: "ABMON_7", value: 131092)
!326 = !DIEnumerator(name: "ABMON_8", value: 131093)
!327 = !DIEnumerator(name: "ABMON_9", value: 131094)
!328 = !DIEnumerator(name: "ABMON_10", value: 131095)
!329 = !DIEnumerator(name: "ABMON_11", value: 131096)
!330 = !DIEnumerator(name: "ABMON_12", value: 131097)
!331 = !DIEnumerator(name: "MON_1", value: 131098)
!332 = !DIEnumerator(name: "MON_2", value: 131099)
!333 = !DIEnumerator(name: "MON_3", value: 131100)
!334 = !DIEnumerator(name: "MON_4", value: 131101)
!335 = !DIEnumerator(name: "MON_5", value: 131102)
!336 = !DIEnumerator(name: "MON_6", value: 131103)
!337 = !DIEnumerator(name: "MON_7", value: 131104)
!338 = !DIEnumerator(name: "MON_8", value: 131105)
!339 = !DIEnumerator(name: "MON_9", value: 131106)
!340 = !DIEnumerator(name: "MON_10", value: 131107)
!341 = !DIEnumerator(name: "MON_11", value: 131108)
!342 = !DIEnumerator(name: "MON_12", value: 131109)
!343 = !DIEnumerator(name: "AM_STR", value: 131110)
!344 = !DIEnumerator(name: "PM_STR", value: 131111)
!345 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!346 = !DIEnumerator(name: "D_FMT", value: 131113)
!347 = !DIEnumerator(name: "T_FMT", value: 131114)
!348 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!349 = !DIEnumerator(name: "ERA", value: 131116)
!350 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!351 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!352 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!353 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!354 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!355 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!356 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!357 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!358 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!359 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!360 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!361 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!362 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!363 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!364 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!365 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!366 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!367 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!368 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!369 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!370 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!371 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!372 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!373 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!374 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!375 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!376 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!377 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!378 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!379 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!380 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!381 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!382 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!383 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!384 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!385 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!386 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!387 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!388 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!389 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!390 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!391 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!392 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!393 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!394 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!395 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!396 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!397 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!398 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!399 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!400 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!401 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!402 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!403 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!404 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!405 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!406 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!407 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!408 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!409 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!410 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!411 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!412 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!413 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!414 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!415 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!416 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!417 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!418 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!419 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!420 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!421 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!422 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!423 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!424 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!425 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!426 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!427 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!428 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!429 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!430 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!431 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!432 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!433 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!434 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!435 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!436 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!437 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!438 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!439 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!440 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!441 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!442 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!443 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!444 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!445 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!446 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!447 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!448 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!449 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!450 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!451 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!452 = !DIEnumerator(name: "CODESET", value: 14)
!453 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!454 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!455 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!456 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!488 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!499 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!500 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!501 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!502 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!503 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!504 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!505 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!506 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!507 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!508 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!509 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!510 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!511 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!512 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!513 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!514 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!515 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!516 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!517 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!518 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!519 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!523 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!524 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!525 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!526 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!527 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!528 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!529 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!530 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!531 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!532 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!533 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!534 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!535 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!536 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!537 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!538 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!539 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!540 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!541 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!542 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!543 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!544 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!545 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!546 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!552 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!553 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!556 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!563 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!564 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!567 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!568 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!569 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!570 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!571 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!572 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!573 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!574 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!575 = !DIEnumerator(name: "THOUSEP", value: 65537)
!576 = !DIEnumerator(name: "__GROUPING", value: 65538)
!577 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!578 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!579 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!580 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!581 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!582 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!583 = !DIEnumerator(name: "__YESSTR", value: 327682)
!584 = !DIEnumerator(name: "__NOSTR", value: 327683)
!585 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!586 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!587 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!588 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!589 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!590 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!591 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!592 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!593 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!594 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!595 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!596 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!597 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!598 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!599 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!600 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!601 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!602 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!603 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!604 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!605 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!606 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!607 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!608 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!609 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!610 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!611 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!612 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!613 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!614 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!615 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!616 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!617 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!618 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!619 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!620 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!621 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!624 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!625 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!627 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!628 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!629 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!630 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!631 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!638 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!639 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!640 = !{!40, !8, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!642 = !{!297}
!643 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!644 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!645 = distinct !DICompileUnit(language: DW_LANG_C99, file: !646, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !647)
!646 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!647 = !{!26}
!648 = distinct !DICompileUnit(language: DW_LANG_C99, file: !649, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !650)
!649 = !DIFile(filename: "./lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!650 = !{!49, !41}
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !653)
!652 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!653 = !{!654}
!654 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !656, file: !655, line: 62, size: 32, elements: !669)
!655 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!656 = distinct !DISubprogram(name: "safe_read", scope: !655, file: !655, line: 56, type: !657, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{!41, !6, !40, !41}
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(name: "fd", arg: 1, scope: !656, file: !655, line: 56, type: !6)
!661 = !DILocalVariable(name: "buf", arg: 2, scope: !656, file: !655, line: 56, type: !40)
!662 = !DILocalVariable(name: "count", arg: 3, scope: !656, file: !655, line: 56, type: !41)
!663 = !DILocalVariable(name: "result", scope: !664, file: !655, line: 66, type: !667)
!664 = distinct !DILexicalBlock(scope: !665, file: !655, line: 65, column: 5)
!665 = distinct !DILexicalBlock(scope: !666, file: !655, line: 64, column: 3)
!666 = distinct !DILexicalBlock(scope: !656, file: !655, line: 64, column: 3)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !113, line: 109, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !115, line: 181, baseType: !140)
!669 = !{!670}
!670 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!671 = distinct !DICompileUnit(language: DW_LANG_C99, file: !672, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !673)
!672 = !DIFile(filename: "./lib/safe-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!673 = !{!674}
!674 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !675, file: !652, line: 62, size: 32, elements: !669)
!675 = distinct !DISubprogram(name: "safe_write", scope: !652, file: !652, line: 56, type: !676, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !678)
!676 = !DISubroutineType(types: !677)
!677 = !{!41, !6, !44, !41}
!678 = !{!679, !680, !681, !682}
!679 = !DILocalVariable(name: "fd", arg: 1, scope: !675, file: !652, line: 56, type: !6)
!680 = !DILocalVariable(name: "buf", arg: 2, scope: !675, file: !652, line: 56, type: !44)
!681 = !DILocalVariable(name: "count", arg: 3, scope: !675, file: !652, line: 56, type: !41)
!682 = !DILocalVariable(name: "result", scope: !683, file: !652, line: 66, type: !667)
!683 = distinct !DILexicalBlock(scope: !684, file: !652, line: 65, column: 5)
!684 = distinct !DILexicalBlock(scope: !685, file: !652, line: 64, column: 3)
!685 = distinct !DILexicalBlock(scope: !675, file: !652, line: 64, column: 3)
!686 = distinct !DICompileUnit(language: DW_LANG_C99, file: !687, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !688, retainedTypes: !693)
!687 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!688 = !{!689}
!689 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !690, line: 41, size: 32, elements: !691)
!690 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!691 = !{!692}
!692 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!693 = !{!40}
!694 = distinct !DICompileUnit(language: DW_LANG_C99, file: !695, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !696, retainedTypes: !710)
!695 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!696 = !{!697}
!697 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !699, file: !698, line: 192, size: 32, elements: !708)
!698 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!699 = distinct !DISubprogram(name: "x2nrealloc", scope: !698, file: !698, line: 180, type: !700, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !703)
!700 = !DISubroutineType(types: !701)
!701 = !{!40, !40, !702, !41}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!703 = !{!704, !705, !706, !707}
!704 = !DILocalVariable(name: "p", arg: 1, scope: !699, file: !698, line: 180, type: !40)
!705 = !DILocalVariable(name: "pn", arg: 2, scope: !699, file: !698, line: 180, type: !702)
!706 = !DILocalVariable(name: "s", arg: 3, scope: !699, file: !698, line: 180, type: !41)
!707 = !DILocalVariable(name: "n", scope: !699, file: !698, line: 182, type: !41)
!708 = !{!709}
!709 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!710 = !{!41, !8, !40}
!711 = distinct !DICompileUnit(language: DW_LANG_C99, file: !712, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197)
!712 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!713 = distinct !DICompileUnit(language: DW_LANG_C99, file: !714, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !693)
!714 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!715 = distinct !DICompileUnit(language: DW_LANG_C99, file: !716, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !717)
!716 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!717 = !{!41}
!718 = distinct !DICompileUnit(language: DW_LANG_C99, file: !719, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197)
!719 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!720 = distinct !DICompileUnit(language: DW_LANG_C99, file: !721, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !722)
!721 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!722 = !{!41, !44, !46, !49}
!723 = distinct !DICompileUnit(language: DW_LANG_C99, file: !724, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197)
!724 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!725 = distinct !DICompileUnit(language: DW_LANG_C99, file: !726, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !693)
!726 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!727 = distinct !DICompileUnit(language: DW_LANG_C99, file: !728, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !693)
!728 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!729 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!730 = !{i32 2, !"Dwarf Version", i32 4}
!731 = !{i32 2, !"Debug Info Version", i32 3}
!732 = !{i32 1, !"PIC Level", i32 2}
!733 = !{i32 1, !"PIE Level", i32 2}
!734 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 82, type: !735, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !10, variables: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !6}
!737 = !{!738}
!738 = !DILocalVariable(name: "status", arg: 1, scope: !734, file: !3, line: 82, type: !6)
!739 = !DIExpression()
!740 = !DILocation(line: 82, column: 12, scope: !734)
!741 = !DILocation(line: 84, column: 14, scope: !742)
!742 = distinct !DILexicalBlock(scope: !734, file: !3, line: 84, column: 7)
!743 = !DILocation(line: 84, column: 7, scope: !734)
!744 = !DILocation(line: 85, column: 5, scope: !745)
!745 = !DILexicalBlockFile(scope: !746, file: !3, discriminator: 1)
!746 = distinct !DILexicalBlock(scope: !742, file: !3, line: 85, column: 5)
!747 = !{!748, !748, i64 0}
!748 = !{!"any pointer", !749, i64 0}
!749 = !{!"omnipotent char", !750, i64 0}
!750 = !{!"Simple C/C++ TBAA"}
!751 = !DILocation(line: 85, column: 5, scope: !752)
!752 = !DILexicalBlockFile(scope: !746, file: !3, discriminator: 3)
!753 = !DILocation(line: 85, column: 5, scope: !754)
!754 = !DILexicalBlockFile(scope: !746, file: !3, discriminator: 2)
!755 = !DILocation(line: 88, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !742, file: !3, line: 87, column: 5)
!757 = !DILocation(line: 88, column: 7, scope: !758)
!758 = !DILexicalBlockFile(scope: !756, file: !3, discriminator: 1)
!759 = !DILocation(line: 92, column: 7, scope: !756)
!760 = !DILocation(line: 92, column: 7, scope: !758)
!761 = !DILocation(line: 580, column: 3, scope: !762, inlinedAt: !765)
!762 = distinct !DISubprogram(name: "emit_stdin_note", scope: !59, file: !59, line: 578, type: !763, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !197)
!763 = !DISubroutineType(types: !764)
!764 = !{null}
!765 = distinct !DILocation(line: 96, column: 7, scope: !756)
!766 = !DILocation(line: 580, column: 3, scope: !767, inlinedAt: !765)
!767 = !DILexicalBlockFile(scope: !762, file: !59, discriminator: 1)
!768 = !DILocation(line: 98, column: 7, scope: !756)
!769 = !DILocation(line: 98, column: 7, scope: !758)
!770 = !DILocation(line: 107, column: 7, scope: !756)
!771 = !DILocation(line: 107, column: 7, scope: !758)
!772 = !DILocation(line: 113, column: 7, scope: !756)
!773 = !DILocation(line: 113, column: 7, scope: !758)
!774 = !DILocation(line: 114, column: 7, scope: !756)
!775 = !DILocation(line: 114, column: 7, scope: !758)
!776 = !DILocation(line: 115, column: 7, scope: !756)
!777 = !DILocation(line: 115, column: 7, scope: !758)
!778 = !DILocation(line: 642, column: 15, scope: !58, inlinedAt: !779)
!779 = distinct !DILocation(line: 122, column: 7, scope: !756)
!780 = !DILocation(line: 651, column: 3, scope: !58, inlinedAt: !779)
!781 = !DILocation(line: 651, column: 3, scope: !782, inlinedAt: !779)
!782 = !DILexicalBlockFile(scope: !58, file: !59, discriminator: 1)
!783 = !DILocation(line: 655, column: 29, scope: !58, inlinedAt: !779)
!784 = !DILocation(line: 655, column: 15, scope: !58, inlinedAt: !779)
!785 = !DILocation(line: 656, column: 7, scope: !78, inlinedAt: !779)
!786 = !DILocation(line: 656, column: 19, scope: !78, inlinedAt: !779)
!787 = !DILocation(line: 656, column: 22, scope: !788, inlinedAt: !779)
!788 = !DILexicalBlockFile(scope: !78, file: !59, discriminator: 16)
!789 = !DILocation(line: 656, column: 7, scope: !790, inlinedAt: !779)
!790 = !DILexicalBlockFile(scope: !58, file: !59, discriminator: 16)
!791 = !DILocation(line: 662, column: 7, scope: !792, inlinedAt: !779)
!792 = distinct !DILexicalBlock(scope: !78, file: !59, line: 657, column: 5)
!793 = !DILocation(line: 662, column: 7, scope: !794, inlinedAt: !779)
!794 = !DILexicalBlockFile(scope: !792, file: !59, discriminator: 1)
!795 = !DILocation(line: 664, column: 5, scope: !792, inlinedAt: !779)
!796 = !DILocation(line: 665, column: 3, scope: !58, inlinedAt: !779)
!797 = !DILocation(line: 665, column: 3, scope: !782, inlinedAt: !779)
!798 = !DILocation(line: 667, column: 3, scope: !58, inlinedAt: !779)
!799 = !DILocation(line: 667, column: 3, scope: !782, inlinedAt: !779)
!800 = !DILocation(line: 124, column: 3, scope: !734)
!801 = !DILocation(line: 503, column: 11, scope: !2)
!802 = !DILocation(line: 503, column: 24, scope: !2)
!803 = !DILocation(line: 511, column: 22, scope: !2)
!804 = !DILocation(line: 511, column: 10, scope: !2)
!805 = !DILocation(line: 519, column: 8, scope: !2)
!806 = !DILocation(line: 535, column: 8, scope: !2)
!807 = !DILocation(line: 537, column: 3, scope: !2)
!808 = !DILocation(line: 540, column: 8, scope: !2)
!809 = !DILocation(line: 541, column: 8, scope: !2)
!810 = !DILocation(line: 542, column: 8, scope: !2)
!811 = !DILocation(line: 543, column: 8, scope: !2)
!812 = !DILocation(line: 544, column: 8, scope: !2)
!813 = !DILocation(line: 545, column: 8, scope: !2)
!814 = !DILocation(line: 546, column: 7, scope: !2)
!815 = !DILocation(line: 563, column: 21, scope: !2)
!816 = !DILocation(line: 563, column: 3, scope: !2)
!817 = !DILocation(line: 564, column: 3, scope: !2)
!818 = !DILocation(line: 565, column: 3, scope: !2)
!819 = !DILocation(line: 566, column: 3, scope: !2)
!820 = !DILocation(line: 572, column: 3, scope: !2)
!821 = !DILocation(line: 576, column: 3, scope: !2)
!822 = !DILocation(line: 576, column: 15, scope: !823)
!823 = !DILexicalBlockFile(scope: !2, file: !3, discriminator: 1)
!824 = !DILocation(line: 520, column: 7, scope: !2)
!825 = !DILocation(line: 576, column: 3, scope: !823)
!826 = !DILocation(line: 584, column: 11, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 580, column: 9)
!828 = distinct !DILexicalBlock(scope: !2, file: !3, line: 578, column: 5)
!829 = !DILocation(line: 589, column: 11, scope: !827)
!830 = !DILocation(line: 593, column: 11, scope: !827)
!831 = !DILocation(line: 597, column: 11, scope: !827)
!832 = !DILocation(line: 602, column: 11, scope: !827)
!833 = !DILocation(line: 610, column: 11, scope: !827)
!834 = !DILocation(line: 616, column: 11, scope: !827)
!835 = !DILocation(line: 620, column: 11, scope: !827)
!836 = !DILocation(line: 624, column: 11, scope: !827)
!837 = distinct !{!837, !821, !838}
!838 = !DILocation(line: 633, column: 5, scope: !2)
!839 = !DILocation(line: 626, column: 9, scope: !827)
!840 = !DILocation(line: 628, column: 9, scope: !827)
!841 = !DILocation(line: 628, column: 9, scope: !842)
!842 = !DILexicalBlockFile(scope: !827, file: !3, discriminator: 1)
!843 = !DILocation(line: 631, column: 11, scope: !827)
!844 = !DIExpression(DW_OP_deref)
!845 = !DILocation(line: 537, column: 15, scope: !2)
!846 = !DILocalVariable(name: "__fd", arg: 1, scope: !847, file: !848, line: 463, type: !6)
!847 = distinct !DISubprogram(name: "fstat", scope: !848, file: !848, line: 463, type: !849, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !852)
!848 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!849 = !DISubroutineType(types: !850)
!850 = !{!6, !6, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!852 = !{!846, !853}
!853 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !847, file: !848, line: 463, type: !851)
!854 = !DILocation(line: 463, column: 1, scope: !847, inlinedAt: !855)
!855 = distinct !DILocation(line: 637, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !2, file: !3, line: 637, column: 7)
!857 = !DILocalVariable(name: "sb", arg: 1, scope: !858, file: !36, line: 75, type: !122)
!858 = distinct !DISubprogram(name: "io_blksize", scope: !36, file: !36, line: 75, type: !859, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!41, !122}
!861 = !{!857}
!862 = !DILocation(line: 75, column: 25, scope: !858, inlinedAt: !863)
!863 = distinct !DILocation(line: 640, column: 13, scope: !2)
!864 = !DILocation(line: 75, column: 25, scope: !858, inlinedAt: !865)
!865 = distinct !DILocation(line: 687, column: 16, scope: !169)
!866 = !DILocation(line: 465, column: 10, scope: !847, inlinedAt: !855)
!867 = !DILocation(line: 637, column: 40, scope: !856)
!868 = !DILocation(line: 637, column: 7, scope: !2)
!869 = !DILocation(line: 638, column: 5, scope: !856)
!870 = !{!871, !871, i64 0}
!871 = !{!"int", !749, i64 0}
!872 = !DILocation(line: 638, column: 5, scope: !873)
!873 = !DILexicalBlockFile(scope: !856, file: !3, discriminator: 1)
!874 = !DILocation(line: 638, column: 5, scope: !875)
!875 = !DILexicalBlockFile(scope: !856, file: !3, discriminator: 2)
!876 = !DILocation(line: 77, column: 10, scope: !858, inlinedAt: !863)
!877 = !{!878, !879, i64 56}
!878 = !{!"stat", !879, i64 0, !879, i64 8, !879, i64 16, !871, i64 24, !871, i64 28, !871, i64 32, !871, i64 36, !879, i64 40, !879, i64 48, !879, i64 56, !879, i64 64, !880, i64 72, !880, i64 88, !880, i64 104, !749, i64 120}
!879 = !{!"long", !749, i64 0}
!880 = !{!"timespec", !879, i64 0, !879, i64 8}
!881 = !DILocation(line: 77, column: 10, scope: !882, inlinedAt: !863)
!882 = !DILexicalBlockFile(scope: !858, file: !36, discriminator: 1)
!883 = !DILocation(line: 77, column: 10, scope: !884, inlinedAt: !863)
!884 = !DILexicalBlockFile(scope: !858, file: !36, discriminator: 2)
!885 = !DILocation(line: 77, column: 10, scope: !886, inlinedAt: !863)
!886 = !DILexicalBlockFile(scope: !858, file: !36, discriminator: 6)
!887 = !DILocation(line: 506, column: 10, scope: !2)
!888 = !DILocation(line: 641, column: 22, scope: !2)
!889 = !{!878, !879, i64 0}
!890 = !DILocation(line: 526, column: 9, scope: !2)
!891 = !DILocation(line: 642, column: 22, scope: !2)
!892 = !{!878, !879, i64 8}
!893 = !DILocation(line: 529, column: 9, scope: !2)
!894 = !DILocation(line: 643, column: 15, scope: !2)
!895 = !{!878, !871, i64 24}
!896 = !DILocation(line: 645, column: 17, scope: !897)
!897 = distinct !DILexicalBlock(scope: !2, file: !3, line: 645, column: 7)
!898 = !DILocation(line: 655, column: 10, scope: !2)
!899 = !DILocation(line: 656, column: 12, scope: !2)
!900 = !DILocation(line: 523, column: 7, scope: !2)
!901 = !DILocation(line: 658, column: 3, scope: !2)
!902 = distinct !{!902, !901, !903}
!903 = !DILocation(line: 761, column: 25, scope: !2)
!904 = !DILocation(line: 660, column: 18, scope: !905)
!905 = distinct !DILexicalBlock(scope: !169, file: !3, line: 660, column: 11)
!906 = !DILocation(line: 660, column: 11, scope: !169)
!907 = !DILocation(line: 661, column: 18, scope: !905)
!908 = !DILocation(line: 661, column: 16, scope: !905)
!909 = !DILocation(line: 661, column: 9, scope: !905)
!910 = !DILocation(line: 672, column: 30, scope: !911)
!911 = distinct !DILexicalBlock(scope: !168, file: !3, line: 671, column: 9)
!912 = !DILocation(line: 663, column: 11, scope: !167)
!913 = !DILocation(line: 663, column: 11, scope: !172)
!914 = !DILocation(line: 663, column: 11, scope: !915)
!915 = !DILexicalBlockFile(scope: !172, file: !3, discriminator: 2)
!916 = !{!749, !749, i64 0}
!917 = !DILocation(line: 663, column: 11, scope: !918)
!918 = !DILexicalBlockFile(scope: !919, file: !3, discriminator: 3)
!919 = distinct !DILexicalBlock(scope: !172, file: !3, line: 663, column: 11)
!920 = !DILocation(line: 663, column: 11, scope: !921)
!921 = !DILexicalBlockFile(scope: !919, file: !3, discriminator: 2)
!922 = !DILocation(line: 663, column: 11, scope: !923)
!923 = !DILexicalBlockFile(scope: !924, file: !3, discriminator: 4)
!924 = distinct !DILexicalBlock(scope: !919, file: !3, line: 663, column: 11)
!925 = !DILocation(line: 663, column: 11, scope: !926)
!926 = !DILexicalBlockFile(scope: !168, file: !3, discriminator: 13)
!927 = !DILocation(line: 663, column: 11, scope: !928)
!928 = !DILexicalBlockFile(scope: !169, file: !3, discriminator: 13)
!929 = !DILocation(line: 666, column: 22, scope: !930)
!930 = distinct !DILexicalBlock(scope: !168, file: !3, line: 664, column: 9)
!931 = !DILocation(line: 667, column: 15, scope: !930)
!932 = !DILocation(line: 672, column: 24, scope: !911)
!933 = !DILocation(line: 672, column: 22, scope: !911)
!934 = !DILocation(line: 673, column: 26, scope: !935)
!935 = distinct !DILexicalBlock(scope: !911, file: !3, line: 673, column: 15)
!936 = !DILocation(line: 673, column: 15, scope: !911)
!937 = !DILocation(line: 675, column: 25, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 674, column: 13)
!939 = !DILocation(line: 675, column: 38, scope: !938)
!940 = !DILocation(line: 675, column: 38, scope: !941)
!941 = !DILexicalBlockFile(scope: !938, file: !3, discriminator: 1)
!942 = !DILocation(line: 675, column: 15, scope: !943)
!943 = !DILexicalBlockFile(scope: !938, file: !3, discriminator: 2)
!944 = !DILocation(line: 677, column: 15, scope: !938)
!945 = !DILocation(line: 681, column: 18, scope: !946)
!946 = distinct !DILexicalBlock(scope: !169, file: !3, line: 681, column: 11)
!947 = !DILocation(line: 463, column: 1, scope: !847, inlinedAt: !948)
!948 = distinct !DILocation(line: 681, column: 11, scope: !946)
!949 = !DILocation(line: 465, column: 10, scope: !847, inlinedAt: !948)
!950 = !DILocation(line: 681, column: 41, scope: !946)
!951 = !DILocation(line: 681, column: 11, scope: !169)
!952 = !DILocation(line: 683, column: 21, scope: !953)
!953 = distinct !DILexicalBlock(scope: !946, file: !3, line: 682, column: 9)
!954 = !DILocation(line: 683, column: 34, scope: !953)
!955 = !DILocation(line: 683, column: 34, scope: !956)
!956 = !DILexicalBlockFile(scope: !953, file: !3, discriminator: 1)
!957 = !DILocation(line: 683, column: 11, scope: !958)
!958 = !DILexicalBlockFile(scope: !953, file: !3, discriminator: 2)
!959 = !DILocation(line: 685, column: 11, scope: !953)
!960 = !DILocation(line: 77, column: 10, scope: !858, inlinedAt: !865)
!961 = !DILocation(line: 77, column: 10, scope: !882, inlinedAt: !865)
!962 = !DILocation(line: 77, column: 10, scope: !884, inlinedAt: !865)
!963 = !DILocation(line: 77, column: 10, scope: !886, inlinedAt: !865)
!964 = !DILocation(line: 509, column: 10, scope: !2)
!965 = !DILocation(line: 689, column: 17, scope: !169)
!966 = !DILocation(line: 689, column: 7, scope: !169)
!967 = !DILocation(line: 696, column: 23, scope: !968)
!968 = !DILexicalBlockFile(scope: !969, file: !3, discriminator: 1)
!969 = distinct !DILexicalBlock(scope: !169, file: !3, line: 695, column: 11)
!970 = !DILocation(line: 696, column: 30, scope: !968)
!971 = !DILocation(line: 696, column: 11, scope: !969)
!972 = !DILocation(line: 696, column: 53, scope: !973)
!973 = !DILexicalBlockFile(scope: !969, file: !3, discriminator: 2)
!974 = !DILocation(line: 696, column: 60, scope: !973)
!975 = !DILocation(line: 697, column: 21, scope: !968)
!976 = !DILocation(line: 697, column: 14, scope: !968)
!977 = !DILocation(line: 697, column: 57, scope: !968)
!978 = !{!878, !879, i64 48}
!979 = !DILocation(line: 697, column: 46, scope: !968)
!980 = !DILocation(line: 695, column: 11, scope: !981)
!981 = !DILexicalBlockFile(scope: !169, file: !3, discriminator: 1)
!982 = !DILocation(line: 699, column: 24, scope: !983)
!983 = distinct !DILexicalBlock(scope: !969, file: !3, line: 698, column: 9)
!984 = !DILocation(line: 699, column: 60, scope: !983)
!985 = !DILocation(line: 699, column: 60, scope: !986)
!986 = !DILexicalBlockFile(scope: !983, file: !3, discriminator: 1)
!987 = !DILocation(line: 699, column: 11, scope: !988)
!988 = !DILexicalBlockFile(scope: !983, file: !3, discriminator: 2)
!989 = !DILocation(line: 701, column: 11, scope: !983)
!990 = !DILocation(line: 707, column: 21, scope: !991)
!991 = distinct !DILexicalBlock(scope: !169, file: !3, line: 707, column: 11)
!992 = !DILocation(line: 710, column: 20, scope: !993)
!993 = distinct !DILexicalBlock(scope: !991, file: !3, line: 709, column: 9)
!994 = !DILocation(line: 711, column: 47, scope: !993)
!995 = !DILocation(line: 711, column: 19, scope: !993)
!996 = !DILocation(line: 514, column: 9, scope: !2)
!997 = !DILocalVariable(name: "ptr", arg: 1, scope: !998, file: !59, line: 498, type: !44)
!998 = distinct !DISubprogram(name: "ptr_align", scope: !59, file: !59, line: 498, type: !999, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!40, !44, !41}
!1001 = !{!997, !1002, !1003, !1004}
!1002 = !DILocalVariable(name: "alignment", arg: 2, scope: !998, file: !59, line: 498, type: !41)
!1003 = !DILocalVariable(name: "p0", scope: !998, file: !59, line: 500, type: !49)
!1004 = !DILocalVariable(name: "p1", scope: !998, file: !59, line: 501, type: !49)
!1005 = !DILocation(line: 498, column: 24, scope: !998, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 713, column: 29, scope: !993)
!1007 = !DILocation(line: 498, column: 36, scope: !998, inlinedAt: !1006)
!1008 = !DILocation(line: 500, column: 15, scope: !998, inlinedAt: !1006)
!1009 = !DILocation(line: 501, column: 23, scope: !998, inlinedAt: !1006)
!1010 = !DILocation(line: 501, column: 35, scope: !998, inlinedAt: !1006)
!1011 = !DILocation(line: 501, column: 15, scope: !998, inlinedAt: !1006)
!1012 = !DILocation(line: 502, column: 25, scope: !998, inlinedAt: !1006)
!1013 = !DILocation(line: 502, column: 37, scope: !998, inlinedAt: !1006)
!1014 = !DILocation(line: 502, column: 23, scope: !998, inlinedAt: !1006)
!1015 = !DILocalVariable(name: "buf", arg: 1, scope: !1016, file: !3, line: 154, type: !8)
!1016 = distinct !DISubprogram(name: "simple_cat", scope: !3, file: !3, line: 152, type: !1017, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !1019)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!108, !8, !41}
!1019 = !{!1015, !1020, !1021, !1022}
!1020 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1016, file: !3, line: 158, type: !41)
!1021 = !DILocalVariable(name: "n_read", scope: !1016, file: !3, line: 161, type: !41)
!1022 = !DILocalVariable(name: "n", scope: !1023, file: !3, line: 185, type: !41)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 183, column: 7)
!1024 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 166, column: 5)
!1025 = !DILocation(line: 154, column: 12, scope: !1016, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 713, column: 17, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !993, file: !3, discriminator: 1)
!1028 = !DILocation(line: 158, column: 13, scope: !1016, inlinedAt: !1026)
!1029 = !DILocation(line: 165, column: 3, scope: !1016, inlinedAt: !1026)
!1030 = !DILocation(line: 169, column: 27, scope: !1024, inlinedAt: !1026)
!1031 = !DILocation(line: 169, column: 16, scope: !1024, inlinedAt: !1026)
!1032 = !DILocation(line: 161, column: 10, scope: !1016, inlinedAt: !1026)
!1033 = !DILocation(line: 170, column: 11, scope: !1024, inlinedAt: !1026)
!1034 = !DILocation(line: 172, column: 21, scope: !1035, inlinedAt: !1026)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 171, column: 9)
!1036 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 170, column: 11)
!1037 = !DILocation(line: 172, column: 34, scope: !1035, inlinedAt: !1026)
!1038 = !DILocation(line: 172, column: 34, scope: !1039, inlinedAt: !1026)
!1039 = !DILexicalBlockFile(scope: !1035, file: !3, discriminator: 1)
!1040 = !DILocation(line: 172, column: 11, scope: !1041, inlinedAt: !1026)
!1041 = !DILexicalBlockFile(scope: !1035, file: !3, discriminator: 2)
!1042 = !DILocation(line: 173, column: 11, scope: !1035, inlinedAt: !1026)
!1043 = !DILocation(line: 185, column: 16, scope: !1023, inlinedAt: !1026)
!1044 = !DILocation(line: 186, column: 13, scope: !1045, inlinedAt: !1026)
!1045 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 186, column: 13)
!1046 = !DILocation(line: 186, column: 48, scope: !1045, inlinedAt: !1026)
!1047 = !DILocation(line: 186, column: 13, scope: !1023, inlinedAt: !1026)
!1048 = distinct !{!1048, !1049, !1050}
!1049 = !DILocation(line: 165, column: 3, scope: !1016)
!1050 = !DILocation(line: 189, column: 5, scope: !1016)
!1051 = !DILocation(line: 187, column: 11, scope: !1045, inlinedAt: !1026)
!1052 = !DILocation(line: 187, column: 11, scope: !1053, inlinedAt: !1026)
!1053 = !DILexicalBlockFile(scope: !1045, file: !3, discriminator: 1)
!1054 = !DILocation(line: 187, column: 11, scope: !1055, inlinedAt: !1026)
!1055 = !DILexicalBlockFile(scope: !1045, file: !3, discriminator: 2)
!1056 = !DILocation(line: 717, column: 51, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !991, file: !3, line: 716, column: 9)
!1058 = !DILocation(line: 717, column: 19, scope: !1057)
!1059 = !DILocation(line: 741, column: 50, scope: !1057)
!1060 = !DILocation(line: 742, column: 41, scope: !1057)
!1061 = !DILocation(line: 741, column: 20, scope: !1057)
!1062 = !DILocation(line: 517, column: 9, scope: !2)
!1063 = !DILocation(line: 498, column: 24, scope: !998, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 744, column: 22, scope: !1057)
!1065 = !DILocation(line: 498, column: 36, scope: !998, inlinedAt: !1064)
!1066 = !DILocation(line: 500, column: 15, scope: !998, inlinedAt: !1064)
!1067 = !DILocation(line: 501, column: 23, scope: !998, inlinedAt: !1064)
!1068 = !DILocation(line: 501, column: 35, scope: !998, inlinedAt: !1064)
!1069 = !DILocation(line: 501, column: 15, scope: !998, inlinedAt: !1064)
!1070 = !DILocation(line: 502, column: 25, scope: !998, inlinedAt: !1064)
!1071 = !DILocation(line: 502, column: 37, scope: !998, inlinedAt: !1064)
!1072 = !DILocation(line: 502, column: 23, scope: !998, inlinedAt: !1064)
!1073 = !DILocation(line: 498, column: 24, scope: !998, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 745, column: 22, scope: !1057)
!1075 = !DILocation(line: 498, column: 36, scope: !998, inlinedAt: !1074)
!1076 = !DILocation(line: 500, column: 15, scope: !998, inlinedAt: !1074)
!1077 = !DILocation(line: 501, column: 23, scope: !998, inlinedAt: !1074)
!1078 = !DILocation(line: 501, column: 35, scope: !998, inlinedAt: !1074)
!1079 = !DILocation(line: 501, column: 15, scope: !998, inlinedAt: !1074)
!1080 = !DILocation(line: 502, column: 25, scope: !998, inlinedAt: !1074)
!1081 = !DILocation(line: 502, column: 37, scope: !998, inlinedAt: !1074)
!1082 = !DILocation(line: 502, column: 23, scope: !998, inlinedAt: !1074)
!1083 = !DILocalVariable(name: "inbuf", arg: 1, scope: !1084, file: !3, line: 218, type: !8)
!1084 = distinct !DISubprogram(name: "cat", scope: !3, file: !3, line: 216, type: !1085, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!108, !8, !41, !8, !41, !108, !108, !108, !108, !108, !108}
!1087 = !{!1083, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1109, !1110, !1113}
!1088 = !DILocalVariable(name: "insize", arg: 2, scope: !1084, file: !3, line: 221, type: !41)
!1089 = !DILocalVariable(name: "outbuf", arg: 3, scope: !1084, file: !3, line: 224, type: !8)
!1090 = !DILocalVariable(name: "outsize", arg: 4, scope: !1084, file: !3, line: 227, type: !41)
!1091 = !DILocalVariable(name: "show_nonprinting", arg: 5, scope: !1084, file: !3, line: 230, type: !108)
!1092 = !DILocalVariable(name: "show_tabs", arg: 6, scope: !1084, file: !3, line: 231, type: !108)
!1093 = !DILocalVariable(name: "number", arg: 7, scope: !1084, file: !3, line: 232, type: !108)
!1094 = !DILocalVariable(name: "number_nonblank", arg: 8, scope: !1084, file: !3, line: 233, type: !108)
!1095 = !DILocalVariable(name: "show_ends", arg: 9, scope: !1084, file: !3, line: 234, type: !108)
!1096 = !DILocalVariable(name: "squeeze_blank", arg: 10, scope: !1084, file: !3, line: 235, type: !108)
!1097 = !DILocalVariable(name: "ch", scope: !1084, file: !3, line: 238, type: !48)
!1098 = !DILocalVariable(name: "bpin", scope: !1084, file: !3, line: 241, type: !8)
!1099 = !DILocalVariable(name: "eob", scope: !1084, file: !3, line: 245, type: !8)
!1100 = !DILocalVariable(name: "bpout", scope: !1084, file: !3, line: 248, type: !8)
!1101 = !DILocalVariable(name: "n_read", scope: !1084, file: !3, line: 251, type: !41)
!1102 = !DILocalVariable(name: "newlines", scope: !1084, file: !3, line: 258, type: !6)
!1103 = !DILocalVariable(name: "use_fionread", scope: !1084, file: !3, line: 263, type: !108)
!1104 = !DILocalVariable(name: "wp", scope: !1105, file: !3, line: 282, type: !8)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 281, column: 13)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 280, column: 15)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 277, column: 9)
!1108 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 275, column: 5)
!1109 = !DILocalVariable(name: "remaining_bytes", scope: !1105, file: !3, line: 283, type: !41)
!1110 = !DILocalVariable(name: "input_pending", scope: !1111, file: !3, line: 304, type: !108)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 303, column: 13)
!1112 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 302, column: 15)
!1113 = !DILocalVariable(name: "n_to_read", scope: !1111, file: !3, line: 306, type: !6)
!1114 = !DILocation(line: 218, column: 12, scope: !1084, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 744, column: 17, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1057, file: !3, discriminator: 1)
!1117 = !DILocation(line: 221, column: 13, scope: !1084, inlinedAt: !1115)
!1118 = !DILocation(line: 224, column: 12, scope: !1084, inlinedAt: !1115)
!1119 = !DILocation(line: 227, column: 13, scope: !1084, inlinedAt: !1115)
!1120 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1121 = !DILocation(line: 230, column: 11, scope: !1084, inlinedAt: !1115)
!1122 = !DILocation(line: 231, column: 11, scope: !1084, inlinedAt: !1115)
!1123 = !DILocation(line: 233, column: 11, scope: !1084, inlinedAt: !1115)
!1124 = !DILocation(line: 234, column: 11, scope: !1084, inlinedAt: !1115)
!1125 = !DILocation(line: 258, column: 18, scope: !1084, inlinedAt: !1115)
!1126 = !DILocation(line: 258, column: 7, scope: !1084, inlinedAt: !1115)
!1127 = !DILocation(line: 263, column: 8, scope: !1084, inlinedAt: !1115)
!1128 = !DILocation(line: 245, column: 9, scope: !1084, inlinedAt: !1115)
!1129 = !DILocation(line: 270, column: 14, scope: !1084, inlinedAt: !1115)
!1130 = !DILocation(line: 241, column: 9, scope: !1084, inlinedAt: !1115)
!1131 = !DILocation(line: 248, column: 9, scope: !1084, inlinedAt: !1115)
!1132 = !DILocation(line: 272, column: 9, scope: !1084, inlinedAt: !1115)
!1133 = !DILocation(line: 274, column: 3, scope: !1084, inlinedAt: !1115)
!1134 = !DILocation(line: 276, column: 7, scope: !1108, inlinedAt: !1115)
!1135 = distinct !{!1135, !1136, !1137}
!1136 = !DILocation(line: 276, column: 7, scope: !1108)
!1137 = !DILocation(line: 410, column: 24, scope: !1108)
!1138 = !DILocation(line: 280, column: 35, scope: !1106, inlinedAt: !1115)
!1139 = !DILocation(line: 280, column: 32, scope: !1106, inlinedAt: !1115)
!1140 = !DILocation(line: 280, column: 15, scope: !1107, inlinedAt: !1115)
!1141 = distinct !{!1141, !1142, !1143}
!1142 = !DILocation(line: 284, column: 15, scope: !1105)
!1143 = !DILocation(line: 291, column: 48, scope: !1105)
!1144 = !DILocation(line: 282, column: 21, scope: !1105, inlinedAt: !1115)
!1145 = !DILocation(line: 286, column: 23, scope: !1146, inlinedAt: !1115)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 286, column: 23)
!1147 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 285, column: 17)
!1148 = !DILocation(line: 286, column: 63, scope: !1146, inlinedAt: !1115)
!1149 = !DILocation(line: 286, column: 23, scope: !1147, inlinedAt: !1115)
!1150 = !DILocation(line: 287, column: 21, scope: !1146, inlinedAt: !1115)
!1151 = !DILocation(line: 287, column: 21, scope: !1152, inlinedAt: !1115)
!1152 = !DILexicalBlockFile(scope: !1146, file: !3, discriminator: 1)
!1153 = !DILocation(line: 287, column: 21, scope: !1154, inlinedAt: !1115)
!1154 = !DILexicalBlockFile(scope: !1146, file: !3, discriminator: 2)
!1155 = !DILocation(line: 288, column: 22, scope: !1147, inlinedAt: !1115)
!1156 = !DILocation(line: 289, column: 43, scope: !1147, inlinedAt: !1115)
!1157 = !DILocation(line: 283, column: 22, scope: !1105, inlinedAt: !1115)
!1158 = !DILocation(line: 291, column: 30, scope: !1105, inlinedAt: !1115)
!1159 = !DILocation(line: 290, column: 17, scope: !1160, inlinedAt: !1115)
!1160 = !DILexicalBlockFile(scope: !1147, file: !3, discriminator: 1)
!1161 = !DILocation(line: 296, column: 15, scope: !1105, inlinedAt: !1115)
!1162 = !DILocation(line: 297, column: 30, scope: !1105, inlinedAt: !1115)
!1163 = !DILocation(line: 297, column: 21, scope: !1105, inlinedAt: !1115)
!1164 = !DILocation(line: 298, column: 13, scope: !1105, inlinedAt: !1115)
!1165 = !DILocation(line: 302, column: 20, scope: !1112, inlinedAt: !1115)
!1166 = !DILocation(line: 302, column: 15, scope: !1107, inlinedAt: !1115)
!1167 = !DILocation(line: 304, column: 20, scope: !1111, inlinedAt: !1115)
!1168 = !DILocation(line: 306, column: 15, scope: !1111, inlinedAt: !1115)
!1169 = !DILocation(line: 306, column: 19, scope: !1111, inlinedAt: !1115)
!1170 = !DILocation(line: 312, column: 19, scope: !1171, inlinedAt: !1115)
!1171 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 312, column: 19)
!1172 = !DILocation(line: 313, column: 19, scope: !1171, inlinedAt: !1115)
!1173 = !DILocation(line: 313, column: 29, scope: !1174, inlinedAt: !1115)
!1174 = !DILexicalBlockFile(scope: !1171, file: !3, discriminator: 1)
!1175 = !DILocation(line: 313, column: 22, scope: !1174, inlinedAt: !1115)
!1176 = !DILocation(line: 313, column: 63, scope: !1174, inlinedAt: !1115)
!1177 = !DILocation(line: 312, column: 19, scope: !1178, inlinedAt: !1115)
!1178 = !DILexicalBlockFile(scope: !1111, file: !3, discriminator: 1)
!1179 = !DILocation(line: 321, column: 23, scope: !1180, inlinedAt: !1115)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 321, column: 23)
!1181 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 314, column: 17)
!1182 = !DILocation(line: 321, column: 43, scope: !1180, inlinedAt: !1115)
!1183 = !DILocation(line: 327, column: 40, scope: !1184, inlinedAt: !1115)
!1184 = !DILexicalBlockFile(scope: !1185, file: !3, discriminator: 1)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 326, column: 21)
!1186 = !DILocation(line: 328, column: 30, scope: !1185, inlinedAt: !1115)
!1187 = !DILocation(line: 327, column: 23, scope: !1188, inlinedAt: !1115)
!1188 = !DILexicalBlockFile(scope: !1185, file: !3, discriminator: 2)
!1189 = !DILocation(line: 330, column: 23, scope: !1185, inlinedAt: !1115)
!1190 = !DILocation(line: 333, column: 19, scope: !1191, inlinedAt: !1115)
!1191 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 333, column: 19)
!1192 = !DILocation(line: 333, column: 19, scope: !1111, inlinedAt: !1115)
!1193 = !DILocation(line: 337, column: 19, scope: !1111, inlinedAt: !1115)
!1194 = !DILocalVariable(name: "outbuf", arg: 1, scope: !1195, file: !3, line: 197, type: !8)
!1195 = distinct !DISubprogram(name: "write_pending", scope: !3, file: !3, line: 197, type: !1196, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !8, !7}
!1198 = !{!1194, !1199, !1200}
!1199 = !DILocalVariable(name: "bpout", arg: 2, scope: !1195, file: !3, line: 197, type: !7)
!1200 = !DILocalVariable(name: "n_write", scope: !1195, file: !3, line: 199, type: !41)
!1201 = !DILocation(line: 197, column: 22, scope: !1195, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 338, column: 17, scope: !1203, inlinedAt: !1115)
!1203 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 337, column: 19)
!1204 = !DILocation(line: 197, column: 37, scope: !1195, inlinedAt: !1202)
!1205 = !DILocation(line: 199, column: 27, scope: !1195, inlinedAt: !1202)
!1206 = !DILocation(line: 199, column: 10, scope: !1195, inlinedAt: !1202)
!1207 = !DILocation(line: 200, column: 9, scope: !1208, inlinedAt: !1202)
!1208 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 200, column: 7)
!1209 = !DILocation(line: 200, column: 7, scope: !1195, inlinedAt: !1202)
!1210 = !DILocation(line: 202, column: 11, scope: !1211, inlinedAt: !1202)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 202, column: 11)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 201, column: 5)
!1213 = !DILocation(line: 202, column: 55, scope: !1211, inlinedAt: !1202)
!1214 = !DILocation(line: 202, column: 11, scope: !1212, inlinedAt: !1202)
!1215 = !DILocation(line: 203, column: 9, scope: !1211, inlinedAt: !1202)
!1216 = !DILocation(line: 203, column: 9, scope: !1217, inlinedAt: !1202)
!1217 = !DILexicalBlockFile(scope: !1211, file: !3, discriminator: 1)
!1218 = !DILocation(line: 203, column: 9, scope: !1219, inlinedAt: !1202)
!1219 = !DILexicalBlockFile(scope: !1211, file: !3, discriminator: 2)
!1220 = !DILocation(line: 342, column: 35, scope: !1111, inlinedAt: !1115)
!1221 = !DILocation(line: 342, column: 24, scope: !1111, inlinedAt: !1115)
!1222 = !DILocation(line: 251, column: 10, scope: !1084, inlinedAt: !1115)
!1223 = !DILocation(line: 343, column: 19, scope: !1111, inlinedAt: !1115)
!1224 = !DILocation(line: 345, column: 29, scope: !1225, inlinedAt: !1115)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 344, column: 17)
!1226 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 343, column: 19)
!1227 = !DILocation(line: 345, column: 42, scope: !1225, inlinedAt: !1115)
!1228 = !DILocation(line: 345, column: 42, scope: !1229, inlinedAt: !1115)
!1229 = !DILexicalBlockFile(scope: !1225, file: !3, discriminator: 1)
!1230 = !DILocation(line: 345, column: 19, scope: !1231, inlinedAt: !1115)
!1231 = !DILexicalBlockFile(scope: !1225, file: !3, discriminator: 2)
!1232 = !DILocation(line: 197, column: 22, scope: !1195, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 346, column: 19, scope: !1225, inlinedAt: !1115)
!1234 = !DILocation(line: 197, column: 37, scope: !1195, inlinedAt: !1233)
!1235 = !DILocation(line: 199, column: 27, scope: !1195, inlinedAt: !1233)
!1236 = !DILocation(line: 199, column: 10, scope: !1195, inlinedAt: !1233)
!1237 = !DILocation(line: 200, column: 9, scope: !1208, inlinedAt: !1233)
!1238 = !DILocation(line: 200, column: 7, scope: !1195, inlinedAt: !1233)
!1239 = !DILocation(line: 202, column: 11, scope: !1211, inlinedAt: !1233)
!1240 = !DILocation(line: 202, column: 55, scope: !1211, inlinedAt: !1233)
!1241 = !DILocation(line: 202, column: 11, scope: !1212, inlinedAt: !1233)
!1242 = !DILocation(line: 203, column: 9, scope: !1211, inlinedAt: !1233)
!1243 = !DILocation(line: 203, column: 9, scope: !1217, inlinedAt: !1233)
!1244 = !DILocation(line: 203, column: 9, scope: !1219, inlinedAt: !1233)
!1245 = !DILocation(line: 197, column: 22, scope: !1195, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 352, column: 19, scope: !1247, inlinedAt: !1115)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 351, column: 17)
!1248 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 350, column: 19)
!1249 = !DILocation(line: 197, column: 37, scope: !1195, inlinedAt: !1246)
!1250 = !DILocation(line: 199, column: 27, scope: !1195, inlinedAt: !1246)
!1251 = !DILocation(line: 199, column: 10, scope: !1195, inlinedAt: !1246)
!1252 = !DILocation(line: 200, column: 9, scope: !1208, inlinedAt: !1246)
!1253 = !DILocation(line: 200, column: 7, scope: !1195, inlinedAt: !1246)
!1254 = !DILocation(line: 202, column: 11, scope: !1211, inlinedAt: !1246)
!1255 = !DILocation(line: 202, column: 55, scope: !1211, inlinedAt: !1246)
!1256 = !DILocation(line: 202, column: 11, scope: !1212, inlinedAt: !1246)
!1257 = !DILocation(line: 203, column: 9, scope: !1211, inlinedAt: !1246)
!1258 = !DILocation(line: 203, column: 9, scope: !1217, inlinedAt: !1246)
!1259 = !DILocation(line: 203, column: 9, scope: !1219, inlinedAt: !1246)
!1260 = !DILocation(line: 361, column: 26, scope: !1111, inlinedAt: !1115)
!1261 = !DILocation(line: 362, column: 20, scope: !1111, inlinedAt: !1115)
!1262 = !DILocation(line: 363, column: 13, scope: !1112, inlinedAt: !1115)
!1263 = !DILocation(line: 371, column: 19, scope: !1264, inlinedAt: !1115)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 371, column: 19)
!1265 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 365, column: 13)
!1266 = !DILocation(line: 371, column: 30, scope: !1264, inlinedAt: !1115)
!1267 = !DILocation(line: 371, column: 19, scope: !1265, inlinedAt: !1115)
!1268 = !DILocation(line: 373, column: 32, scope: !1269, inlinedAt: !1115)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 373, column: 23)
!1270 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 372, column: 17)
!1271 = !DILocation(line: 373, column: 23, scope: !1270, inlinedAt: !1115)
!1272 = !DILocation(line: 392, column: 30, scope: !1273, inlinedAt: !1115)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 392, column: 23)
!1274 = !DILocation(line: 133, column: 3, scope: !1275, inlinedAt: !1278)
!1275 = distinct !DISubprogram(name: "next_line_num", scope: !3, file: !3, line: 130, type: !763, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !1276)
!1276 = !{!1277}
!1277 = !DILocalVariable(name: "endp", scope: !1275, file: !3, line: 132, type: !8)
!1278 = distinct !DILocation(line: 394, column: 23, scope: !1279, inlinedAt: !1115)
!1279 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 393, column: 21)
!1280 = distinct !{!1280, !1281, !1282}
!1281 = !DILocation(line: 133, column: 3, scope: !1275)
!1282 = !DILocation(line: 139, column: 32, scope: !1275)
!1283 = !DILocation(line: 132, column: 9, scope: !1275, inlinedAt: !1278)
!1284 = !DILocation(line: 135, column: 18, scope: !1285, inlinedAt: !1278)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 135, column: 11)
!1286 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 134, column: 5)
!1287 = !DILocation(line: 135, column: 21, scope: !1285, inlinedAt: !1278)
!1288 = !DILocation(line: 135, column: 11, scope: !1286, inlinedAt: !1278)
!1289 = !DILocation(line: 137, column: 12, scope: !1286, inlinedAt: !1278)
!1290 = !DILocation(line: 137, column: 15, scope: !1286, inlinedAt: !1278)
!1291 = !DILocation(line: 139, column: 15, scope: !1275, inlinedAt: !1278)
!1292 = !DILocation(line: 138, column: 5, scope: !1293, inlinedAt: !1278)
!1293 = !DILexicalBlockFile(scope: !1286, file: !3, discriminator: 1)
!1294 = !DILocation(line: 140, column: 22, scope: !1295, inlinedAt: !1278)
!1295 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 140, column: 7)
!1296 = !DILocation(line: 140, column: 7, scope: !1275, inlinedAt: !1278)
!1297 = !DILocation(line: 141, column: 6, scope: !1295, inlinedAt: !1278)
!1298 = !DILocation(line: 141, column: 23, scope: !1295, inlinedAt: !1278)
!1299 = !DILocation(line: 141, column: 5, scope: !1295, inlinedAt: !1278)
!1300 = !DILocation(line: 143, column: 15, scope: !1295, inlinedAt: !1278)
!1301 = !DILocation(line: 144, column: 7, scope: !1302, inlinedAt: !1278)
!1302 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 144, column: 7)
!1303 = !DILocation(line: 144, column: 24, scope: !1302, inlinedAt: !1278)
!1304 = !DILocation(line: 144, column: 22, scope: !1302, inlinedAt: !1278)
!1305 = !DILocation(line: 144, column: 7, scope: !1275, inlinedAt: !1278)
!1306 = !DILocation(line: 145, column: 19, scope: !1302, inlinedAt: !1278)
!1307 = !DILocation(line: 145, column: 5, scope: !1302, inlinedAt: !1278)
!1308 = !DILocation(line: 395, column: 39, scope: !1279, inlinedAt: !1115)
!1309 = !DILocation(line: 395, column: 46, scope: !1279, inlinedAt: !1115)
!1310 = !DILocalVariable(name: "__dest", arg: 1, scope: !1311, file: !1312, line: 114, type: !1315)
!1311 = distinct !DISubprogram(name: "stpcpy", scope: !1312, file: !1312, line: 114, type: !1313, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !10, variables: !1317)
!1312 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!8, !1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!1316 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!1317 = !{!1310, !1318}
!1318 = !DILocalVariable(name: "__src", arg: 2, scope: !1311, file: !1312, line: 114, type: !1316)
!1319 = !DILocation(line: 114, column: 1, scope: !1311, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 395, column: 31, scope: !1279, inlinedAt: !1115)
!1321 = !DILocation(line: 116, column: 49, scope: !1311, inlinedAt: !1320)
!1322 = !DILocation(line: 116, column: 10, scope: !1311, inlinedAt: !1320)
!1323 = !DILocation(line: 395, column: 29, scope: !1279, inlinedAt: !1115)
!1324 = !DILocation(line: 396, column: 21, scope: !1279, inlinedAt: !1115)
!1325 = !DILocation(line: 401, column: 19, scope: !1265, inlinedAt: !1115)
!1326 = !DILocation(line: 402, column: 23, scope: !1327, inlinedAt: !1115)
!1327 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 401, column: 19)
!1328 = !DILocation(line: 402, column: 26, scope: !1327, inlinedAt: !1115)
!1329 = !DILocation(line: 402, column: 17, scope: !1327, inlinedAt: !1115)
!1330 = !DILocation(line: 406, column: 21, scope: !1265, inlinedAt: !1115)
!1331 = !DILocation(line: 406, column: 24, scope: !1265, inlinedAt: !1115)
!1332 = !DILocation(line: 238, column: 17, scope: !1084, inlinedAt: !1115)
!1333 = !DILocation(line: 410, column: 17, scope: !1108, inlinedAt: !1115)
!1334 = !DILocation(line: 409, column: 9, scope: !1335, inlinedAt: !1115)
!1335 = !DILexicalBlockFile(scope: !1107, file: !3, discriminator: 1)
!1336 = !DILocation(line: 414, column: 25, scope: !1337, inlinedAt: !1115)
!1337 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 414, column: 11)
!1338 = !DILocation(line: 133, column: 3, scope: !1275, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 416, column: 11, scope: !1340, inlinedAt: !1115)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 415, column: 9)
!1341 = !DILocation(line: 132, column: 9, scope: !1275, inlinedAt: !1339)
!1342 = !DILocation(line: 135, column: 18, scope: !1285, inlinedAt: !1339)
!1343 = !DILocation(line: 135, column: 21, scope: !1285, inlinedAt: !1339)
!1344 = !DILocation(line: 135, column: 11, scope: !1286, inlinedAt: !1339)
!1345 = !DILocation(line: 137, column: 12, scope: !1286, inlinedAt: !1339)
!1346 = !DILocation(line: 137, column: 15, scope: !1286, inlinedAt: !1339)
!1347 = !DILocation(line: 139, column: 15, scope: !1275, inlinedAt: !1339)
!1348 = !DILocation(line: 138, column: 5, scope: !1293, inlinedAt: !1339)
!1349 = !DILocation(line: 140, column: 22, scope: !1295, inlinedAt: !1339)
!1350 = !DILocation(line: 140, column: 7, scope: !1275, inlinedAt: !1339)
!1351 = !DILocation(line: 141, column: 6, scope: !1295, inlinedAt: !1339)
!1352 = !DILocation(line: 141, column: 23, scope: !1295, inlinedAt: !1339)
!1353 = !DILocation(line: 141, column: 5, scope: !1295, inlinedAt: !1339)
!1354 = !DILocation(line: 143, column: 15, scope: !1295, inlinedAt: !1339)
!1355 = !DILocation(line: 144, column: 7, scope: !1302, inlinedAt: !1339)
!1356 = !DILocation(line: 144, column: 24, scope: !1302, inlinedAt: !1339)
!1357 = !DILocation(line: 144, column: 22, scope: !1302, inlinedAt: !1339)
!1358 = !DILocation(line: 144, column: 7, scope: !1275, inlinedAt: !1339)
!1359 = !DILocation(line: 145, column: 19, scope: !1302, inlinedAt: !1339)
!1360 = !DILocation(line: 145, column: 5, scope: !1302, inlinedAt: !1339)
!1361 = !DILocation(line: 417, column: 27, scope: !1340, inlinedAt: !1115)
!1362 = !DILocation(line: 417, column: 34, scope: !1340, inlinedAt: !1115)
!1363 = !DILocation(line: 114, column: 1, scope: !1311, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 417, column: 19, scope: !1340, inlinedAt: !1115)
!1365 = !DILocation(line: 116, column: 49, scope: !1311, inlinedAt: !1364)
!1366 = !DILocation(line: 116, column: 10, scope: !1311, inlinedAt: !1364)
!1367 = !DILocation(line: 417, column: 17, scope: !1340, inlinedAt: !1115)
!1368 = !DILocation(line: 418, column: 9, scope: !1340, inlinedAt: !1115)
!1369 = !DILocation(line: 428, column: 11, scope: !1108, inlinedAt: !1115)
!1370 = !DILocation(line: 432, column: 22, scope: !1371, inlinedAt: !1115)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 432, column: 19)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 431, column: 13)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 429, column: 9)
!1374 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 428, column: 11)
!1375 = !DILocation(line: 432, column: 19, scope: !1372, inlinedAt: !1115)
!1376 = !DILocation(line: 434, column: 26, scope: !1377, inlinedAt: !1115)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 434, column: 23)
!1378 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 433, column: 17)
!1379 = !DILocation(line: 434, column: 23, scope: !1378, inlinedAt: !1115)
!1380 = !DILocation(line: 435, column: 27, scope: !1377, inlinedAt: !1115)
!1381 = !DILocation(line: 435, column: 30, scope: !1377, inlinedAt: !1115)
!1382 = !DILocation(line: 435, column: 21, scope: !1377, inlinedAt: !1115)
!1383 = !DILocation(line: 436, column: 31, scope: !1384, inlinedAt: !1115)
!1384 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 436, column: 28)
!1385 = !DILocation(line: 436, column: 28, scope: !1377, inlinedAt: !1115)
!1386 = !DILocation(line: 438, column: 32, scope: !1387, inlinedAt: !1115)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 437, column: 21)
!1388 = !DILocation(line: 439, column: 29, scope: !1387, inlinedAt: !1115)
!1389 = !DILocation(line: 439, column: 32, scope: !1387, inlinedAt: !1115)
!1390 = !DILocation(line: 440, column: 21, scope: !1387, inlinedAt: !1115)
!1391 = !DILocation(line: 443, column: 32, scope: !1392, inlinedAt: !1115)
!1392 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 442, column: 21)
!1393 = !DILocation(line: 444, column: 29, scope: !1392, inlinedAt: !1115)
!1394 = !DILocation(line: 444, column: 32, scope: !1392, inlinedAt: !1115)
!1395 = !DILocation(line: 445, column: 30, scope: !1396, inlinedAt: !1115)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 445, column: 27)
!1397 = !DILocation(line: 445, column: 27, scope: !1392, inlinedAt: !1115)
!1398 = !DILocation(line: 447, column: 34, scope: !1399, inlinedAt: !1115)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 447, column: 31)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 446, column: 25)
!1401 = !DILocation(line: 447, column: 31, scope: !1400, inlinedAt: !1115)
!1402 = !DILocation(line: 448, column: 43, scope: !1399, inlinedAt: !1115)
!1403 = !DILocation(line: 448, column: 35, scope: !1399, inlinedAt: !1115)
!1404 = !DILocation(line: 448, column: 38, scope: !1399, inlinedAt: !1115)
!1405 = !DILocation(line: 448, column: 29, scope: !1399, inlinedAt: !1115)
!1406 = !DILocation(line: 451, column: 37, scope: !1407, inlinedAt: !1115)
!1407 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 450, column: 29)
!1408 = !DILocation(line: 451, column: 40, scope: !1407, inlinedAt: !1115)
!1409 = !DILocation(line: 452, column: 37, scope: !1407, inlinedAt: !1115)
!1410 = !DILocation(line: 452, column: 40, scope: !1407, inlinedAt: !1115)
!1411 = !DILocation(line: 457, column: 33, scope: !1412, inlinedAt: !1115)
!1412 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 456, column: 25)
!1413 = !DILocation(line: 457, column: 36, scope: !1412, inlinedAt: !1115)
!1414 = !DILocation(line: 458, column: 47, scope: !1412, inlinedAt: !1115)
!1415 = !DILocation(line: 458, column: 33, scope: !1412, inlinedAt: !1115)
!1416 = !DILocation(line: 458, column: 36, scope: !1412, inlinedAt: !1115)
!1417 = !DILocation(line: 462, column: 35, scope: !1418, inlinedAt: !1115)
!1418 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 462, column: 24)
!1419 = !DILocation(line: 463, column: 23, scope: !1418, inlinedAt: !1115)
!1420 = !DILocation(line: 463, column: 26, scope: !1418, inlinedAt: !1115)
!1421 = !DILocation(line: 463, column: 17, scope: !1418, inlinedAt: !1115)
!1422 = !DILocation(line: 464, column: 27, scope: !1423, inlinedAt: !1115)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 464, column: 24)
!1424 = !DILocation(line: 464, column: 24, scope: !1418, inlinedAt: !1115)
!1425 = distinct !{!1425, !1426, !1427}
!1426 = !DILocation(line: 274, column: 3, scope: !1084)
!1427 = !DILocation(line: 499, column: 5, scope: !1084)
!1428 = !DILocation(line: 471, column: 25, scope: !1429, inlinedAt: !1115)
!1429 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 470, column: 17)
!1430 = !DILocation(line: 471, column: 28, scope: !1429, inlinedAt: !1115)
!1431 = !DILocation(line: 472, column: 33, scope: !1429, inlinedAt: !1115)
!1432 = !DILocation(line: 472, column: 25, scope: !1429, inlinedAt: !1115)
!1433 = !DILocation(line: 472, column: 28, scope: !1429, inlinedAt: !1115)
!1434 = !DILocation(line: 475, column: 25, scope: !1372, inlinedAt: !1115)
!1435 = !DILocation(line: 475, column: 20, scope: !1372, inlinedAt: !1115)
!1436 = !DILocation(line: 430, column: 11, scope: !1437, inlinedAt: !1115)
!1437 = !DILexicalBlockFile(scope: !1373, file: !3, discriminator: 2)
!1438 = distinct !{!1438, !1439, !1440}
!1439 = !DILocation(line: 430, column: 11, scope: !1373)
!1440 = !DILocation(line: 476, column: 13, scope: !1373)
!1441 = !DILocation(line: 483, column: 30, scope: !1442, inlinedAt: !1115)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 483, column: 19)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 482, column: 13)
!1444 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 479, column: 9)
!1445 = !DILocation(line: 485, column: 25, scope: !1446, inlinedAt: !1115)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 484, column: 17)
!1447 = !DILocation(line: 485, column: 28, scope: !1446, inlinedAt: !1115)
!1448 = !DILocation(line: 486, column: 25, scope: !1446, inlinedAt: !1115)
!1449 = !DILocation(line: 486, column: 28, scope: !1446, inlinedAt: !1115)
!1450 = !DILocation(line: 487, column: 17, scope: !1446, inlinedAt: !1115)
!1451 = !DILocation(line: 488, column: 27, scope: !1452, inlinedAt: !1115)
!1452 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 488, column: 24)
!1453 = !DILocation(line: 488, column: 24, scope: !1442, inlinedAt: !1115)
!1454 = !DILocation(line: 489, column: 23, scope: !1452, inlinedAt: !1115)
!1455 = !DILocation(line: 489, column: 26, scope: !1452, inlinedAt: !1115)
!1456 = !DILocation(line: 496, column: 25, scope: !1443, inlinedAt: !1115)
!1457 = !DILocation(line: 496, column: 20, scope: !1443, inlinedAt: !1115)
!1458 = !DILocation(line: 481, column: 11, scope: !1459, inlinedAt: !1115)
!1459 = !DILexicalBlockFile(scope: !1444, file: !3, discriminator: 2)
!1460 = distinct !{!1460, !1461, !1462}
!1461 = !DILocation(line: 481, column: 11, scope: !1444)
!1462 = !DILocation(line: 497, column: 13, scope: !1444)
!1463 = !DILocation(line: 749, column: 11, scope: !1057)
!1464 = !DILocation(line: 752, column: 7, scope: !169)
!1465 = !DILocation(line: 755, column: 12, scope: !175)
!1466 = !DILocation(line: 755, column: 12, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !179, file: !3, discriminator: 2)
!1468 = !DILocation(line: 755, column: 12, scope: !179)
!1469 = !DILocation(line: 755, column: 12, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1471, file: !3, discriminator: 3)
!1471 = distinct !DILexicalBlock(scope: !179, file: !3, line: 755, column: 12)
!1472 = !DILocation(line: 755, column: 12, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1471, file: !3, discriminator: 2)
!1474 = !DILocation(line: 755, column: 12, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1476, file: !3, discriminator: 4)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 755, column: 12)
!1477 = !DILocation(line: 755, column: 12, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !176, file: !3, discriminator: 13)
!1479 = !DILocation(line: 755, column: 32, scope: !1478)
!1480 = !DILocation(line: 755, column: 42, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !176, file: !3, discriminator: 14)
!1482 = !DILocation(line: 755, column: 35, scope: !1481)
!1483 = !DILocation(line: 755, column: 54, scope: !1481)
!1484 = !DILocation(line: 755, column: 11, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !169, file: !3, discriminator: 14)
!1486 = !DILocation(line: 757, column: 21, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !176, file: !3, line: 756, column: 9)
!1488 = !DILocation(line: 757, column: 34, scope: !1487)
!1489 = !DILocation(line: 757, column: 34, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1487, file: !3, discriminator: 1)
!1491 = !DILocation(line: 757, column: 11, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1487, file: !3, discriminator: 2)
!1493 = !DILocation(line: 759, column: 9, scope: !1487)
!1494 = !DILocation(line: 761, column: 10, scope: !2)
!1495 = !DILocation(line: 761, column: 19, scope: !2)
!1496 = !DILocation(line: 760, column: 5, scope: !981)
!1497 = !DILocation(line: 763, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !2, file: !3, line: 763, column: 7)
!1499 = !DILocation(line: 763, column: 23, scope: !1498)
!1500 = !DILocation(line: 763, column: 26, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1498, file: !3, discriminator: 1)
!1502 = !DILocation(line: 763, column: 47, scope: !1501)
!1503 = !DILocation(line: 763, column: 7, scope: !823)
!1504 = !DILocation(line: 764, column: 5, scope: !1498)
!1505 = !DILocation(line: 764, column: 5, scope: !1501)
!1506 = !DILocation(line: 764, column: 5, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1498, file: !3, discriminator: 2)
!1508 = !DILocation(line: 766, column: 10, scope: !2)
!1509 = !DILocation(line: 767, column: 1, scope: !2)
!1510 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !206, file: !206, line: 41, type: !60, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !201, variables: !1511)
!1511 = !{!1512}
!1512 = !DILocalVariable(name: "file", arg: 1, scope: !1510, file: !206, line: 41, type: !49)
!1513 = !DILocation(line: 41, column: 41, scope: !1510)
!1514 = !DILocation(line: 43, column: 13, scope: !1510)
!1515 = !DILocation(line: 44, column: 1, scope: !1510)
!1516 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !206, file: !206, line: 78, type: !1517, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !201, variables: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !108}
!1519 = !{!1520}
!1520 = !DILocalVariable(name: "ignore", arg: 1, scope: !1516, file: !206, line: 78, type: !108)
!1521 = !DILocation(line: 78, column: 37, scope: !1516)
!1522 = !DILocation(line: 80, column: 16, scope: !1516)
!1523 = !{!1524, !1524, i64 0}
!1524 = !{!"_Bool", !749, i64 0}
!1525 = !DILocation(line: 81, column: 1, scope: !1516)
!1526 = distinct !DISubprogram(name: "close_stdout", scope: !206, file: !206, line: 107, type: !763, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !201, variables: !1527)
!1527 = !{!1528}
!1528 = !DILocalVariable(name: "write_error", scope: !1529, file: !206, line: 112, type: !49)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !206, line: 111, column: 5)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !206, line: 109, column: 7)
!1531 = !DILocation(line: 109, column: 21, scope: !1530)
!1532 = !DILocation(line: 109, column: 7, scope: !1530)
!1533 = !DILocation(line: 109, column: 29, scope: !1530)
!1534 = !DILocation(line: 110, column: 7, scope: !1530)
!1535 = !DILocation(line: 110, column: 12, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1530, file: !206, discriminator: 1)
!1537 = !{i8 0, i8 2}
!1538 = !DILocation(line: 114, column: 19, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1529, file: !206, line: 113, column: 11)
!1540 = !DILocation(line: 110, column: 25, scope: !1536)
!1541 = !DILocation(line: 110, column: 28, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1530, file: !206, discriminator: 2)
!1543 = !DILocation(line: 110, column: 34, scope: !1542)
!1544 = !DILocation(line: 109, column: 7, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1526, file: !206, discriminator: 1)
!1546 = !DILocation(line: 112, column: 33, scope: !1529)
!1547 = !DILocation(line: 112, column: 19, scope: !1529)
!1548 = !DILocation(line: 113, column: 11, scope: !1539)
!1549 = !DILocation(line: 113, column: 11, scope: !1529)
!1550 = !DILocation(line: 114, column: 36, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1539, file: !206, discriminator: 1)
!1552 = !DILocation(line: 114, column: 9, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1539, file: !206, discriminator: 2)
!1554 = !DILocation(line: 114, column: 9, scope: !1539)
!1555 = !DILocation(line: 117, column: 9, scope: !1551)
!1556 = !DILocation(line: 119, column: 14, scope: !1529)
!1557 = !DILocation(line: 119, column: 7, scope: !1529)
!1558 = !DILocation(line: 122, column: 22, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1526, file: !206, line: 122, column: 8)
!1560 = !DILocation(line: 122, column: 8, scope: !1559)
!1561 = !DILocation(line: 122, column: 30, scope: !1559)
!1562 = !DILocation(line: 122, column: 8, scope: !1526)
!1563 = !DILocation(line: 123, column: 13, scope: !1559)
!1564 = !DILocation(line: 123, column: 6, scope: !1559)
!1565 = !DILocation(line: 124, column: 1, scope: !1526)
!1566 = distinct !DISubprogram(name: "fdadvise", scope: !1567, file: !1567, line: 31, type: !1568, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !1573)
!1567 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !6, !1570, !1570, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1571, line: 91, baseType: !139)
!1571 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !27, line: 52, baseType: !26)
!1573 = !{!1574, !1575, !1576, !1577, !1578}
!1574 = !DILocalVariable(name: "fd", arg: 1, scope: !1566, file: !1567, line: 31, type: !6)
!1575 = !DILocalVariable(name: "offset", arg: 2, scope: !1566, file: !1567, line: 31, type: !1570)
!1576 = !DILocalVariable(name: "len", arg: 3, scope: !1566, file: !1567, line: 31, type: !1570)
!1577 = !DILocalVariable(name: "advice", arg: 4, scope: !1566, file: !1567, line: 31, type: !1572)
!1578 = !DILocalVariable(name: "__x", scope: !1579, file: !1567, line: 34, type: !6)
!1579 = distinct !DILexicalBlock(scope: !1566, file: !1567, line: 34, column: 3)
!1580 = !DILocation(line: 31, column: 15, scope: !1566)
!1581 = !DILocation(line: 31, column: 25, scope: !1566)
!1582 = !DILocation(line: 31, column: 39, scope: !1566)
!1583 = !DILocation(line: 31, column: 54, scope: !1566)
!1584 = !DILocation(line: 34, column: 3, scope: !1579)
!1585 = !DILocation(line: 36, column: 1, scope: !1566)
!1586 = distinct !DISubprogram(name: "fadvise", scope: !1567, file: !1567, line: 39, type: !1587, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !645, variables: !1637)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !1589, !1572}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1571, line: 49, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1592, line: 241, size: 1728, elements: !1593)
!1592 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1614, !1615, !1616, !1617, !1618, !1619, !1621, !1625, !1628, !1630, !1631, !1632, !1633, !1634, !1635, !1636}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1591, file: !1592, line: 242, baseType: !6, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1591, file: !1592, line: 247, baseType: !8, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1591, file: !1592, line: 248, baseType: !8, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1591, file: !1592, line: 249, baseType: !8, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1591, file: !1592, line: 250, baseType: !8, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1591, file: !1592, line: 251, baseType: !8, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1591, file: !1592, line: 252, baseType: !8, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1591, file: !1592, line: 253, baseType: !8, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1591, file: !1592, line: 254, baseType: !8, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1591, file: !1592, line: 256, baseType: !8, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1591, file: !1592, line: 257, baseType: !8, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1591, file: !1592, line: 258, baseType: !8, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1591, file: !1592, line: 260, baseType: !1607, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1592, line: 156, size: 192, elements: !1609)
!1609 = !{!1610, !1611, !1613}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1608, file: !1592, line: 157, baseType: !1607, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1608, file: !1592, line: 158, baseType: !1612, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1608, file: !1592, line: 162, baseType: !6, size: 32, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1591, file: !1592, line: 262, baseType: !1612, size: 64, offset: 832)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1591, file: !1592, line: 264, baseType: !6, size: 32, offset: 896)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1591, file: !1592, line: 268, baseType: !6, size: 32, offset: 928)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1591, file: !1592, line: 270, baseType: !139, size: 64, offset: 960)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1591, file: !1592, line: 274, baseType: !247, size: 16, offset: 1024)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1591, file: !1592, line: 275, baseType: !1620, size: 8, offset: 1040)
!1620 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1591, file: !1592, line: 276, baseType: !1622, size: 8, offset: 1048)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !1623)
!1623 = !{!1624}
!1624 = !DISubrange(count: 1)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1591, file: !1592, line: 280, baseType: !1626, size: 64, offset: 1088)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1592, line: 150, baseType: null)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1591, file: !1592, line: 289, baseType: !1629, size: 64, offset: 1152)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !115, line: 141, baseType: !140)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1591, file: !1592, line: 297, baseType: !40, size: 64, offset: 1216)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1591, file: !1592, line: 298, baseType: !40, size: 64, offset: 1280)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1591, file: !1592, line: 299, baseType: !40, size: 64, offset: 1344)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1591, file: !1592, line: 300, baseType: !40, size: 64, offset: 1408)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1591, file: !1592, line: 302, baseType: !41, size: 64, offset: 1472)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1591, file: !1592, line: 303, baseType: !6, size: 32, offset: 1536)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1591, file: !1592, line: 305, baseType: !94, size: 160, offset: 1568)
!1637 = !{!1638, !1639}
!1638 = !DILocalVariable(name: "fp", arg: 1, scope: !1586, file: !1567, line: 39, type: !1589)
!1639 = !DILocalVariable(name: "advice", arg: 2, scope: !1586, file: !1567, line: 39, type: !1572)
!1640 = !DILocation(line: 39, column: 16, scope: !1586)
!1641 = !DILocation(line: 39, column: 30, scope: !1586)
!1642 = !DILocation(line: 41, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1586, file: !1567, line: 41, column: 7)
!1644 = !DILocation(line: 41, column: 7, scope: !1586)
!1645 = !DILocation(line: 42, column: 15, scope: !1643)
!1646 = !DILocation(line: 31, column: 15, scope: !1566, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 42, column: 5, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1643, file: !1567, discriminator: 1)
!1649 = !DILocation(line: 31, column: 25, scope: !1566, inlinedAt: !1647)
!1650 = !DILocation(line: 31, column: 39, scope: !1566, inlinedAt: !1647)
!1651 = !DILocation(line: 31, column: 54, scope: !1566, inlinedAt: !1647)
!1652 = !DILocation(line: 34, column: 3, scope: !1579, inlinedAt: !1647)
!1653 = !DILocation(line: 42, column: 5, scope: !1643)
!1654 = !DILocation(line: 43, column: 1, scope: !1586)
!1655 = distinct !DISubprogram(name: "full_write", scope: !1656, file: !1656, line: 58, type: !676, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !648, variables: !1657)
!1656 = !DIFile(filename: "lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663}
!1658 = !DILocalVariable(name: "fd", arg: 1, scope: !1655, file: !1656, line: 58, type: !6)
!1659 = !DILocalVariable(name: "buf", arg: 2, scope: !1655, file: !1656, line: 58, type: !44)
!1660 = !DILocalVariable(name: "count", arg: 3, scope: !1655, file: !1656, line: 58, type: !41)
!1661 = !DILocalVariable(name: "total", scope: !1655, file: !1656, line: 60, type: !41)
!1662 = !DILocalVariable(name: "ptr", scope: !1655, file: !1656, line: 61, type: !49)
!1663 = !DILocalVariable(name: "n_rw", scope: !1664, file: !1656, line: 65, type: !41)
!1664 = distinct !DILexicalBlock(scope: !1655, file: !1656, line: 64, column: 5)
!1665 = !DILocation(line: 58, column: 14, scope: !1655)
!1666 = !DILocation(line: 58, column: 30, scope: !1655)
!1667 = !DILocation(line: 58, column: 42, scope: !1655)
!1668 = !DILocation(line: 60, column: 10, scope: !1655)
!1669 = !DILocation(line: 61, column: 15, scope: !1655)
!1670 = !DILocation(line: 63, column: 16, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1655, file: !1656, discriminator: 1)
!1672 = !DILocation(line: 63, column: 3, scope: !1671)
!1673 = !DILocation(line: 65, column: 21, scope: !1664)
!1674 = !DILocation(line: 65, column: 14, scope: !1664)
!1675 = !DILocation(line: 66, column: 11, scope: !1664)
!1676 = !DILocation(line: 70, column: 11, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !1656, line: 69, column: 9)
!1678 = distinct !DILexicalBlock(scope: !1664, file: !1656, line: 68, column: 11)
!1679 = !DILocation(line: 70, column: 17, scope: !1677)
!1680 = !DILocation(line: 71, column: 11, scope: !1677)
!1681 = !DILocation(line: 73, column: 13, scope: !1664)
!1682 = !DILocation(line: 74, column: 11, scope: !1664)
!1683 = !DILocation(line: 75, column: 13, scope: !1664)
!1684 = distinct !{!1684, !1685, !1686}
!1685 = !DILocation(line: 63, column: 3, scope: !1655)
!1686 = !DILocation(line: 76, column: 5, scope: !1655)
!1687 = !DILocation(line: 78, column: 3, scope: !1655)
!1688 = distinct !DISubprogram(name: "set_program_name", scope: !220, file: !220, line: 39, type: !60, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !216, variables: !1689)
!1689 = !{!1690, !1691, !1692}
!1690 = !DILocalVariable(name: "argv0", arg: 1, scope: !1688, file: !220, line: 39, type: !49)
!1691 = !DILocalVariable(name: "slash", scope: !1688, file: !220, line: 46, type: !49)
!1692 = !DILocalVariable(name: "base", scope: !1688, file: !220, line: 47, type: !49)
!1693 = !DILocation(line: 39, column: 31, scope: !1688)
!1694 = !DILocation(line: 51, column: 13, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1688, file: !220, line: 51, column: 7)
!1696 = !DILocation(line: 51, column: 7, scope: !1688)
!1697 = !DILocation(line: 55, column: 14, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !220, line: 52, column: 5)
!1699 = !DILocation(line: 54, column: 7, scope: !1698)
!1700 = !DILocation(line: 56, column: 7, scope: !1698)
!1701 = !DILocation(line: 59, column: 11, scope: !1688)
!1702 = !DILocation(line: 46, column: 15, scope: !1688)
!1703 = !DILocation(line: 60, column: 17, scope: !1688)
!1704 = !DILocation(line: 60, column: 33, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1688, file: !220, discriminator: 1)
!1706 = !DILocation(line: 60, column: 11, scope: !1688)
!1707 = !DILocation(line: 47, column: 15, scope: !1688)
!1708 = !DILocation(line: 61, column: 12, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1688, file: !220, line: 61, column: 7)
!1710 = !DILocation(line: 61, column: 20, scope: !1709)
!1711 = !DILocation(line: 61, column: 25, scope: !1709)
!1712 = !DILocation(line: 61, column: 28, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1709, file: !220, discriminator: 1)
!1714 = !DILocation(line: 61, column: 61, scope: !1713)
!1715 = !DILocation(line: 61, column: 7, scope: !1705)
!1716 = !DILocation(line: 64, column: 11, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !220, line: 64, column: 11)
!1718 = distinct !DILexicalBlock(scope: !1709, file: !220, line: 62, column: 5)
!1719 = !DILocation(line: 64, column: 36, scope: !1717)
!1720 = !DILocation(line: 64, column: 11, scope: !1718)
!1721 = !DILocation(line: 66, column: 24, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !220, line: 65, column: 9)
!1723 = !DILocation(line: 70, column: 41, scope: !1722)
!1724 = !DILocation(line: 72, column: 9, scope: !1722)
!1725 = !DILocation(line: 84, column: 16, scope: !1688)
!1726 = !DILocation(line: 90, column: 27, scope: !1688)
!1727 = !DILocation(line: 92, column: 1, scope: !1688)
!1728 = distinct !DISubprogram(name: "clone_quoting_options", scope: !251, file: !251, line: 114, type: !1729, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !1732)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!1731, !1731}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1732 = !{!1733, !1734, !1735}
!1733 = !DILocalVariable(name: "o", arg: 1, scope: !1728, file: !251, line: 114, type: !1731)
!1734 = !DILocalVariable(name: "e", scope: !1728, file: !251, line: 116, type: !6)
!1735 = !DILocalVariable(name: "p", scope: !1728, file: !251, line: 117, type: !1731)
!1736 = !DILocation(line: 114, column: 48, scope: !1728)
!1737 = !DILocation(line: 116, column: 11, scope: !1728)
!1738 = !DILocation(line: 116, column: 7, scope: !1728)
!1739 = !DILocation(line: 117, column: 40, scope: !1728)
!1740 = !DILocation(line: 117, column: 40, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1728, file: !251, discriminator: 3)
!1742 = !DILocation(line: 117, column: 31, scope: !1741)
!1743 = !DILocation(line: 117, column: 27, scope: !1728)
!1744 = !DILocation(line: 119, column: 9, scope: !1728)
!1745 = !DILocation(line: 120, column: 3, scope: !1728)
!1746 = distinct !DISubprogram(name: "get_quoting_style", scope: !251, file: !251, line: 125, type: !1747, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !1751)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!12, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!1751 = !{!1752}
!1752 = !DILocalVariable(name: "o", arg: 1, scope: !1746, file: !251, line: 125, type: !1749)
!1753 = !DILocation(line: 125, column: 50, scope: !1746)
!1754 = !DILocation(line: 127, column: 11, scope: !1746)
!1755 = !DILocation(line: 127, column: 46, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1746, file: !251, discriminator: 3)
!1757 = !{!1758, !749, i64 0}
!1758 = !{!"quoting_options", !749, i64 0, !871, i64 4, !749, i64 8, !748, i64 40, !748, i64 48}
!1759 = !DILocation(line: 127, column: 3, scope: !1756)
!1760 = distinct !DISubprogram(name: "set_quoting_style", scope: !251, file: !251, line: 133, type: !1761, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1731, !12}
!1763 = !{!1764, !1765}
!1764 = !DILocalVariable(name: "o", arg: 1, scope: !1760, file: !251, line: 133, type: !1731)
!1765 = !DILocalVariable(name: "s", arg: 2, scope: !1760, file: !251, line: 133, type: !12)
!1766 = !DILocation(line: 133, column: 44, scope: !1760)
!1767 = !DILocation(line: 133, column: 66, scope: !1760)
!1768 = !DILocation(line: 135, column: 4, scope: !1760)
!1769 = !DILocation(line: 135, column: 39, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1760, file: !251, discriminator: 3)
!1771 = !DILocation(line: 135, column: 45, scope: !1770)
!1772 = !DILocation(line: 136, column: 1, scope: !1760)
!1773 = distinct !DISubprogram(name: "set_char_quoting", scope: !251, file: !251, line: 144, type: !1774, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!6, !1731, !9, !6}
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1783, !1784}
!1777 = !DILocalVariable(name: "o", arg: 1, scope: !1773, file: !251, line: 144, type: !1731)
!1778 = !DILocalVariable(name: "c", arg: 2, scope: !1773, file: !251, line: 144, type: !9)
!1779 = !DILocalVariable(name: "i", arg: 3, scope: !1773, file: !251, line: 144, type: !6)
!1780 = !DILocalVariable(name: "uc", scope: !1773, file: !251, line: 146, type: !48)
!1781 = !DILocalVariable(name: "p", scope: !1773, file: !251, line: 147, type: !1782)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!1783 = !DILocalVariable(name: "shift", scope: !1773, file: !251, line: 149, type: !6)
!1784 = !DILocalVariable(name: "r", scope: !1773, file: !251, line: 150, type: !6)
!1785 = !DILocation(line: 144, column: 43, scope: !1773)
!1786 = !DILocation(line: 144, column: 51, scope: !1773)
!1787 = !DILocation(line: 144, column: 58, scope: !1773)
!1788 = !DILocation(line: 146, column: 17, scope: !1773)
!1789 = !DILocation(line: 148, column: 6, scope: !1773)
!1790 = !DILocation(line: 148, column: 62, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1773, file: !251, discriminator: 3)
!1792 = !DILocation(line: 148, column: 57, scope: !1791)
!1793 = !DILocation(line: 147, column: 17, scope: !1773)
!1794 = !DILocation(line: 149, column: 18, scope: !1773)
!1795 = !DILocation(line: 149, column: 15, scope: !1773)
!1796 = !DILocation(line: 149, column: 7, scope: !1773)
!1797 = !DILocation(line: 150, column: 12, scope: !1773)
!1798 = !DILocation(line: 150, column: 15, scope: !1773)
!1799 = !DILocation(line: 150, column: 25, scope: !1773)
!1800 = !DILocation(line: 150, column: 7, scope: !1773)
!1801 = !DILocation(line: 151, column: 13, scope: !1773)
!1802 = !DILocation(line: 151, column: 18, scope: !1773)
!1803 = !DILocation(line: 151, column: 23, scope: !1773)
!1804 = !DILocation(line: 151, column: 6, scope: !1773)
!1805 = !DILocation(line: 152, column: 3, scope: !1773)
!1806 = distinct !DISubprogram(name: "set_quoting_flags", scope: !251, file: !251, line: 160, type: !1807, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!6, !1731, !6}
!1809 = !{!1810, !1811, !1812}
!1810 = !DILocalVariable(name: "o", arg: 1, scope: !1806, file: !251, line: 160, type: !1731)
!1811 = !DILocalVariable(name: "i", arg: 2, scope: !1806, file: !251, line: 160, type: !6)
!1812 = !DILocalVariable(name: "r", scope: !1806, file: !251, line: 162, type: !6)
!1813 = !DILocation(line: 160, column: 44, scope: !1806)
!1814 = !DILocation(line: 160, column: 51, scope: !1806)
!1815 = !DILocation(line: 163, column: 8, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1806, file: !251, line: 163, column: 7)
!1817 = !DILocation(line: 163, column: 7, scope: !1806)
!1818 = !DILocation(line: 165, column: 10, scope: !1806)
!1819 = !{!1758, !871, i64 4}
!1820 = !DILocation(line: 162, column: 7, scope: !1806)
!1821 = !DILocation(line: 166, column: 12, scope: !1806)
!1822 = !DILocation(line: 167, column: 3, scope: !1806)
!1823 = distinct !DISubprogram(name: "set_custom_quoting", scope: !251, file: !251, line: 171, type: !1824, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !1731, !49, !49}
!1826 = !{!1827, !1828, !1829}
!1827 = !DILocalVariable(name: "o", arg: 1, scope: !1823, file: !251, line: 171, type: !1731)
!1828 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1823, file: !251, line: 172, type: !49)
!1829 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1823, file: !251, line: 172, type: !49)
!1830 = !DILocation(line: 171, column: 45, scope: !1823)
!1831 = !DILocation(line: 172, column: 33, scope: !1823)
!1832 = !DILocation(line: 172, column: 57, scope: !1823)
!1833 = !DILocation(line: 174, column: 8, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 174, column: 7)
!1835 = !DILocation(line: 174, column: 7, scope: !1823)
!1836 = !DILocation(line: 176, column: 6, scope: !1823)
!1837 = !DILocation(line: 176, column: 12, scope: !1823)
!1838 = !DILocation(line: 177, column: 8, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1823, file: !251, line: 177, column: 7)
!1840 = !DILocation(line: 177, column: 23, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1839, file: !251, discriminator: 1)
!1842 = !DILocation(line: 177, column: 19, scope: !1839)
!1843 = !DILocation(line: 178, column: 5, scope: !1839)
!1844 = !DILocation(line: 179, column: 6, scope: !1823)
!1845 = !DILocation(line: 179, column: 17, scope: !1823)
!1846 = !{!1758, !748, i64 40}
!1847 = !DILocation(line: 180, column: 6, scope: !1823)
!1848 = !DILocation(line: 180, column: 18, scope: !1823)
!1849 = !{!1758, !748, i64 48}
!1850 = !DILocation(line: 181, column: 1, scope: !1823)
!1851 = distinct !DISubprogram(name: "quotearg_buffer", scope: !251, file: !251, line: 776, type: !1852, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !1854)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!41, !8, !41, !49, !41, !1749}
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1855 = !DILocalVariable(name: "buffer", arg: 1, scope: !1851, file: !251, line: 776, type: !8)
!1856 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1851, file: !251, line: 776, type: !41)
!1857 = !DILocalVariable(name: "arg", arg: 3, scope: !1851, file: !251, line: 777, type: !49)
!1858 = !DILocalVariable(name: "argsize", arg: 4, scope: !1851, file: !251, line: 777, type: !41)
!1859 = !DILocalVariable(name: "o", arg: 5, scope: !1851, file: !251, line: 778, type: !1749)
!1860 = !DILocalVariable(name: "p", scope: !1851, file: !251, line: 780, type: !1749)
!1861 = !DILocalVariable(name: "e", scope: !1851, file: !251, line: 781, type: !6)
!1862 = !DILocalVariable(name: "r", scope: !1851, file: !251, line: 782, type: !41)
!1863 = !DILocation(line: 776, column: 24, scope: !1851)
!1864 = !DILocation(line: 776, column: 39, scope: !1851)
!1865 = !DILocation(line: 777, column: 30, scope: !1851)
!1866 = !DILocation(line: 777, column: 42, scope: !1851)
!1867 = !DILocation(line: 778, column: 48, scope: !1851)
!1868 = !DILocation(line: 780, column: 37, scope: !1851)
!1869 = !DILocation(line: 780, column: 33, scope: !1851)
!1870 = !DILocation(line: 781, column: 11, scope: !1851)
!1871 = !DILocation(line: 781, column: 7, scope: !1851)
!1872 = !DILocation(line: 783, column: 43, scope: !1851)
!1873 = !DILocation(line: 783, column: 53, scope: !1851)
!1874 = !DILocation(line: 783, column: 60, scope: !1851)
!1875 = !DILocation(line: 784, column: 43, scope: !1851)
!1876 = !DILocation(line: 784, column: 58, scope: !1851)
!1877 = !DILocation(line: 782, column: 14, scope: !1851)
!1878 = !DILocation(line: 782, column: 10, scope: !1851)
!1879 = !DILocation(line: 785, column: 9, scope: !1851)
!1880 = !DILocation(line: 786, column: 3, scope: !1851)
!1881 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !251, file: !251, line: 248, type: !1882, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !1886)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!41, !8, !41, !49, !41, !12, !6, !1884, !49, !49}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1911, !1912, !1913, !1914, !1915, !1918, !1919, !1936, !1939, !1940, !1947}
!1887 = !DILocalVariable(name: "buffer", arg: 1, scope: !1881, file: !251, line: 248, type: !8)
!1888 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1881, file: !251, line: 248, type: !41)
!1889 = !DILocalVariable(name: "arg", arg: 3, scope: !1881, file: !251, line: 249, type: !49)
!1890 = !DILocalVariable(name: "argsize", arg: 4, scope: !1881, file: !251, line: 249, type: !41)
!1891 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1881, file: !251, line: 250, type: !12)
!1892 = !DILocalVariable(name: "flags", arg: 6, scope: !1881, file: !251, line: 250, type: !6)
!1893 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1881, file: !251, line: 251, type: !1884)
!1894 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1881, file: !251, line: 252, type: !49)
!1895 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1881, file: !251, line: 253, type: !49)
!1896 = !DILocalVariable(name: "i", scope: !1881, file: !251, line: 255, type: !41)
!1897 = !DILocalVariable(name: "len", scope: !1881, file: !251, line: 256, type: !41)
!1898 = !DILocalVariable(name: "orig_buffersize", scope: !1881, file: !251, line: 257, type: !41)
!1899 = !DILocalVariable(name: "quote_string", scope: !1881, file: !251, line: 258, type: !49)
!1900 = !DILocalVariable(name: "quote_string_len", scope: !1881, file: !251, line: 259, type: !41)
!1901 = !DILocalVariable(name: "backslash_escapes", scope: !1881, file: !251, line: 260, type: !108)
!1902 = !DILocalVariable(name: "unibyte_locale", scope: !1881, file: !251, line: 261, type: !108)
!1903 = !DILocalVariable(name: "elide_outer_quotes", scope: !1881, file: !251, line: 262, type: !108)
!1904 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1881, file: !251, line: 263, type: !108)
!1905 = !DILocalVariable(name: "encountered_single_quote", scope: !1881, file: !251, line: 264, type: !108)
!1906 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1881, file: !251, line: 265, type: !108)
!1907 = !DILocalVariable(name: "c", scope: !1908, file: !251, line: 394, type: !48)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !251, line: 393, column: 5)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !251, line: 392, column: 3)
!1910 = distinct !DILexicalBlock(scope: !1881, file: !251, line: 392, column: 3)
!1911 = !DILocalVariable(name: "esc", scope: !1908, file: !251, line: 395, type: !48)
!1912 = !DILocalVariable(name: "is_right_quote", scope: !1908, file: !251, line: 396, type: !108)
!1913 = !DILocalVariable(name: "escaping", scope: !1908, file: !251, line: 397, type: !108)
!1914 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1908, file: !251, line: 398, type: !108)
!1915 = !DILocalVariable(name: "m", scope: !1916, file: !251, line: 602, type: !41)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !251, line: 600, column: 11)
!1917 = distinct !DILexicalBlock(scope: !1908, file: !251, line: 418, column: 9)
!1918 = !DILocalVariable(name: "printable", scope: !1916, file: !251, line: 604, type: !108)
!1919 = !DILocalVariable(name: "mbstate", scope: !1920, file: !251, line: 613, type: !1922)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !251, line: 612, column: 15)
!1921 = distinct !DILexicalBlock(scope: !1916, file: !251, line: 606, column: 17)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1923, line: 107, baseType: !1924)
!1923 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1923, line: 95, baseType: !1925)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1923, line: 83, size: 64, elements: !1926)
!1926 = !{!1927, !1928}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1925, file: !1923, line: 85, baseType: !6, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1925, file: !1923, line: 94, baseType: !1929, size: 32, offset: 32)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1925, file: !1923, line: 86, size: 32, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1929, file: !1923, line: 89, baseType: !131, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1929, file: !1923, line: 93, baseType: !1933, size: 32)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !1934)
!1934 = !{!1935}
!1935 = !DISubrange(count: 4)
!1936 = !DILocalVariable(name: "w", scope: !1937, file: !251, line: 623, type: !1938)
!1937 = distinct !DILexicalBlock(scope: !1920, file: !251, line: 622, column: 19)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !42, line: 90, baseType: !6)
!1939 = !DILocalVariable(name: "bytes", scope: !1937, file: !251, line: 624, type: !41)
!1940 = !DILocalVariable(name: "j", scope: !1941, file: !251, line: 649, type: !41)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !251, line: 648, column: 27)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !251, line: 646, column: 29)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !251, line: 641, column: 23)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !251, line: 633, column: 30)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !251, line: 628, column: 30)
!1946 = distinct !DILexicalBlock(scope: !1937, file: !251, line: 626, column: 25)
!1947 = !DILocalVariable(name: "ilim", scope: !1948, file: !251, line: 676, type: !41)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !251, line: 673, column: 15)
!1949 = distinct !DILexicalBlock(scope: !1916, file: !251, line: 672, column: 17)
!1950 = !DILocation(line: 248, column: 33, scope: !1881)
!1951 = !DILocation(line: 248, column: 48, scope: !1881)
!1952 = !DILocation(line: 249, column: 39, scope: !1881)
!1953 = !DILocation(line: 249, column: 51, scope: !1881)
!1954 = !DILocation(line: 250, column: 46, scope: !1881)
!1955 = !DILocation(line: 250, column: 65, scope: !1881)
!1956 = !DILocation(line: 251, column: 47, scope: !1881)
!1957 = !DILocation(line: 252, column: 39, scope: !1881)
!1958 = !DILocation(line: 253, column: 39, scope: !1881)
!1959 = !DILocation(line: 256, column: 10, scope: !1881)
!1960 = !DILocation(line: 257, column: 10, scope: !1881)
!1961 = !DILocation(line: 258, column: 15, scope: !1881)
!1962 = !DILocation(line: 259, column: 10, scope: !1881)
!1963 = !DILocation(line: 260, column: 8, scope: !1881)
!1964 = !DILocation(line: 261, column: 25, scope: !1881)
!1965 = !DILocation(line: 261, column: 36, scope: !1881)
!1966 = !DILocation(line: 262, column: 8, scope: !1881)
!1967 = !DILocation(line: 263, column: 8, scope: !1881)
!1968 = !DILocation(line: 264, column: 8, scope: !1881)
!1969 = !DILocation(line: 265, column: 8, scope: !1881)
!1970 = !DILocation(line: 265, column: 3, scope: !1881)
!1971 = !DILocation(line: 308, column: 3, scope: !1881)
!1972 = !DILocation(line: 315, column: 11, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1881, file: !251, line: 309, column: 5)
!1974 = !DILocation(line: 315, column: 12, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1973, file: !251, line: 315, column: 11)
!1976 = !DILocation(line: 316, column: 9, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1978, file: !251, discriminator: 1)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !251, line: 316, column: 9)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !251, line: 316, column: 9)
!1980 = !DILocation(line: 316, column: 9, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1979, file: !251, discriminator: 1)
!1982 = !DILocation(line: 316, column: 9, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1978, file: !251, discriminator: 2)
!1984 = !DILocation(line: 354, column: 26, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !251, line: 332, column: 11)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !251, line: 331, column: 13)
!1987 = distinct !DILexicalBlock(scope: !1973, file: !251, line: 330, column: 7)
!1988 = !DILocation(line: 355, column: 27, scope: !1985)
!1989 = !DILocation(line: 356, column: 11, scope: !1985)
!1990 = !DILocation(line: 357, column: 14, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !251, line: 357, column: 13)
!1992 = !DILocation(line: 357, column: 13, scope: !1987)
!1993 = !DILocation(line: 358, column: 43, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1995, file: !251, discriminator: 1)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !251, line: 358, column: 11)
!1996 = distinct !DILexicalBlock(scope: !1991, file: !251, line: 358, column: 11)
!1997 = !DILocation(line: 358, column: 11, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1996, file: !251, discriminator: 1)
!1999 = !DILocation(line: 359, column: 13, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !2001, file: !251, discriminator: 1)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !251, line: 359, column: 13)
!2002 = distinct !DILexicalBlock(scope: !1995, file: !251, line: 359, column: 13)
!2003 = !DILocation(line: 359, column: 13, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2002, file: !251, discriminator: 1)
!2005 = !DILocation(line: 359, column: 13, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !2001, file: !251, discriminator: 2)
!2007 = !DILocation(line: 359, column: 13, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !2002, file: !251, discriminator: 3)
!2009 = !DILocation(line: 358, column: 70, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !1995, file: !251, discriminator: 2)
!2011 = distinct !{!2011, !2012, !2013}
!2012 = !DILocation(line: 358, column: 11, scope: !1996)
!2013 = !DILocation(line: 359, column: 13, scope: !1996)
!2014 = !DILocation(line: 362, column: 28, scope: !1987)
!2015 = !DILocation(line: 364, column: 7, scope: !1973)
!2016 = !DILocation(line: 367, column: 7, scope: !1973)
!2017 = !DILocation(line: 370, column: 7, scope: !1973)
!2018 = !DILocation(line: 373, column: 12, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1973, file: !251, line: 373, column: 11)
!2020 = !DILocation(line: 373, column: 11, scope: !1973)
!2021 = !DILocation(line: 378, column: 12, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1973, file: !251, line: 378, column: 11)
!2023 = !DILocation(line: 378, column: 11, scope: !1973)
!2024 = !DILocation(line: 379, column: 9, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2026, file: !251, discriminator: 1)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !251, line: 379, column: 9)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !251, line: 379, column: 9)
!2028 = !DILocation(line: 379, column: 9, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2027, file: !251, discriminator: 1)
!2030 = !DILocation(line: 379, column: 9, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2026, file: !251, discriminator: 2)
!2032 = !DILocation(line: 386, column: 7, scope: !1973)
!2033 = !DILocation(line: 389, column: 7, scope: !1973)
!2034 = !DILocation(line: 255, column: 10, scope: !1881)
!2035 = !DILocation(line: 392, column: 8, scope: !1910)
!2036 = !DILocation(line: 392, column: 27, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !1909, file: !251, discriminator: 1)
!2038 = !DILocation(line: 392, column: 19, scope: !2037)
!2039 = !DILocation(line: 392, column: 60, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !1909, file: !251, discriminator: 3)
!2041 = !DILocation(line: 392, column: 3, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !1910, file: !251, discriminator: 4)
!2043 = !DILocation(line: 392, column: 41, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !1909, file: !251, discriminator: 2)
!2045 = !DILocation(line: 392, column: 48, scope: !2044)
!2046 = !DILocation(line: 396, column: 12, scope: !1908)
!2047 = !DILocation(line: 397, column: 12, scope: !1908)
!2048 = !DILocation(line: 398, column: 12, scope: !1908)
!2049 = !DILocation(line: 401, column: 11, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1908, file: !251, line: 400, column: 11)
!2051 = !DILocation(line: 403, column: 17, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2050, file: !251, discriminator: 1)
!2053 = !DILocation(line: 404, column: 39, scope: !2050)
!2054 = !DILocation(line: 408, column: 32, scope: !2050)
!2055 = !DILocation(line: 404, column: 19, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2050, file: !251, discriminator: 2)
!2057 = !DILocation(line: 404, column: 15, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2050, file: !251, discriminator: 4)
!2059 = !DILocation(line: 409, column: 11, scope: !2050)
!2060 = !DILocation(line: 409, column: 26, scope: !2052)
!2061 = !DILocation(line: 409, column: 14, scope: !2052)
!2062 = !DILocation(line: 400, column: 11, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !1908, file: !251, discriminator: 1)
!2064 = !DILocation(line: 416, column: 11, scope: !1908)
!2065 = !DILocation(line: 394, column: 21, scope: !1908)
!2066 = !DILocation(line: 417, column: 7, scope: !1908)
!2067 = !DILocation(line: 420, column: 15, scope: !1917)
!2068 = !DILocation(line: 422, column: 15, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2070, file: !251, discriminator: 1)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !251, line: 422, column: 15)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !251, line: 421, column: 13)
!2072 = distinct !DILexicalBlock(scope: !1917, file: !251, line: 420, column: 15)
!2073 = !DILocation(line: 422, column: 15, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2075, file: !251, discriminator: 4)
!2075 = distinct !DILexicalBlock(scope: !2070, file: !251, line: 422, column: 15)
!2076 = !DILocation(line: 422, column: 15, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2075, file: !251, discriminator: 3)
!2078 = !DILocation(line: 422, column: 15, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2080, file: !251, discriminator: 6)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !251, line: 422, column: 15)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !251, line: 422, column: 15)
!2082 = distinct !DILexicalBlock(scope: !2075, file: !251, line: 422, column: 15)
!2083 = !DILocation(line: 422, column: 15, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2081, file: !251, discriminator: 6)
!2085 = !DILocation(line: 422, column: 15, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2080, file: !251, discriminator: 7)
!2087 = !DILocation(line: 422, column: 15, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2081, file: !251, discriminator: 8)
!2089 = !DILocation(line: 422, column: 15, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2091, file: !251, discriminator: 11)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !251, line: 422, column: 15)
!2092 = distinct !DILexicalBlock(scope: !2082, file: !251, line: 422, column: 15)
!2093 = !DILocation(line: 422, column: 15, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2092, file: !251, discriminator: 11)
!2095 = !DILocation(line: 422, column: 15, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2091, file: !251, discriminator: 12)
!2097 = !DILocation(line: 422, column: 15, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2092, file: !251, discriminator: 13)
!2099 = !DILocation(line: 422, column: 15, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2101, file: !251, discriminator: 16)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !251, line: 422, column: 15)
!2102 = distinct !DILexicalBlock(scope: !2082, file: !251, line: 422, column: 15)
!2103 = !DILocation(line: 422, column: 15, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2102, file: !251, discriminator: 16)
!2105 = !DILocation(line: 422, column: 15, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2101, file: !251, discriminator: 17)
!2107 = !DILocation(line: 422, column: 15, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2102, file: !251, discriminator: 18)
!2109 = !DILocation(line: 422, column: 15, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2082, file: !251, discriminator: 20)
!2111 = !DILocation(line: 422, column: 15, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2113, file: !251, discriminator: 22)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !251, line: 422, column: 15)
!2114 = distinct !DILexicalBlock(scope: !2070, file: !251, line: 422, column: 15)
!2115 = !DILocation(line: 422, column: 15, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2114, file: !251, discriminator: 22)
!2117 = !DILocation(line: 422, column: 15, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2113, file: !251, discriminator: 23)
!2119 = !DILocation(line: 422, column: 15, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2114, file: !251, discriminator: 24)
!2121 = !DILocation(line: 430, column: 19, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2071, file: !251, line: 429, column: 19)
!2123 = !DILocation(line: 430, column: 24, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2122, file: !251, discriminator: 1)
!2125 = !DILocation(line: 430, column: 28, scope: !2124)
!2126 = !DILocation(line: 430, column: 38, scope: !2124)
!2127 = !DILocation(line: 430, column: 48, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2122, file: !251, discriminator: 2)
!2129 = !DILocation(line: 430, column: 59, scope: !2128)
!2130 = !DILocation(line: 432, column: 19, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2132, file: !251, discriminator: 1)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !251, line: 432, column: 19)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !251, line: 432, column: 19)
!2134 = distinct !DILexicalBlock(scope: !2122, file: !251, line: 431, column: 17)
!2135 = !DILocation(line: 432, column: 19, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2133, file: !251, discriminator: 1)
!2137 = !DILocation(line: 432, column: 19, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2132, file: !251, discriminator: 2)
!2139 = !DILocation(line: 432, column: 19, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2133, file: !251, discriminator: 3)
!2141 = !DILocation(line: 433, column: 19, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2143, file: !251, discriminator: 1)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !251, line: 433, column: 19)
!2144 = distinct !DILexicalBlock(scope: !2134, file: !251, line: 433, column: 19)
!2145 = !DILocation(line: 433, column: 19, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2144, file: !251, discriminator: 1)
!2147 = !DILocation(line: 433, column: 19, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !2143, file: !251, discriminator: 2)
!2149 = !DILocation(line: 433, column: 19, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2144, file: !251, discriminator: 3)
!2151 = !DILocation(line: 434, column: 17, scope: !2134)
!2152 = !DILocation(line: 441, column: 20, scope: !2072)
!2153 = !DILocation(line: 446, column: 11, scope: !1917)
!2154 = !DILocation(line: 449, column: 19, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !1917, file: !251, line: 447, column: 13)
!2156 = !DILocation(line: 455, column: 19, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2155, file: !251, line: 454, column: 19)
!2158 = !DILocation(line: 455, column: 24, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2157, file: !251, discriminator: 1)
!2160 = !DILocation(line: 455, column: 28, scope: !2159)
!2161 = !DILocation(line: 455, column: 38, scope: !2159)
!2162 = !DILocation(line: 455, column: 47, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2157, file: !251, discriminator: 2)
!2164 = !DILocation(line: 455, column: 41, scope: !2163)
!2165 = !DILocation(line: 455, column: 52, scope: !2163)
!2166 = !DILocation(line: 454, column: 19, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2155, file: !251, discriminator: 1)
!2168 = !DILocation(line: 456, column: 25, scope: !2157)
!2169 = !DILocation(line: 456, column: 17, scope: !2157)
!2170 = !DILocation(line: 463, column: 25, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2157, file: !251, line: 457, column: 19)
!2172 = !DILocation(line: 467, column: 21, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2174, file: !251, discriminator: 1)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !251, line: 467, column: 21)
!2175 = distinct !DILexicalBlock(scope: !2171, file: !251, line: 467, column: 21)
!2176 = !DILocation(line: 467, column: 21, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2175, file: !251, discriminator: 1)
!2178 = !DILocation(line: 467, column: 21, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2174, file: !251, discriminator: 2)
!2180 = !DILocation(line: 467, column: 21, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2175, file: !251, discriminator: 3)
!2182 = !DILocation(line: 468, column: 21, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2184, file: !251, discriminator: 1)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !251, line: 468, column: 21)
!2185 = distinct !DILexicalBlock(scope: !2171, file: !251, line: 468, column: 21)
!2186 = !DILocation(line: 468, column: 21, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2185, file: !251, discriminator: 1)
!2188 = !DILocation(line: 468, column: 21, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2184, file: !251, discriminator: 2)
!2190 = !DILocation(line: 468, column: 21, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2185, file: !251, discriminator: 3)
!2192 = !DILocation(line: 469, column: 21, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2194, file: !251, discriminator: 1)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !251, line: 469, column: 21)
!2195 = distinct !DILexicalBlock(scope: !2171, file: !251, line: 469, column: 21)
!2196 = !DILocation(line: 469, column: 21, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2195, file: !251, discriminator: 1)
!2198 = !DILocation(line: 469, column: 21, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2194, file: !251, discriminator: 2)
!2200 = !DILocation(line: 469, column: 21, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2195, file: !251, discriminator: 3)
!2202 = !DILocation(line: 470, column: 21, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2204, file: !251, discriminator: 1)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !251, line: 470, column: 21)
!2205 = distinct !DILexicalBlock(scope: !2171, file: !251, line: 470, column: 21)
!2206 = !DILocation(line: 470, column: 21, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2205, file: !251, discriminator: 1)
!2208 = !DILocation(line: 470, column: 21, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2204, file: !251, discriminator: 2)
!2210 = !DILocation(line: 470, column: 21, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2205, file: !251, discriminator: 3)
!2212 = !DILocation(line: 471, column: 21, scope: !2171)
!2213 = !DILocation(line: 395, column: 21, scope: !1908)
!2214 = !DILocation(line: 484, column: 31, scope: !1917)
!2215 = !DILocation(line: 485, column: 31, scope: !1917)
!2216 = !DILocation(line: 487, column: 31, scope: !1917)
!2217 = !DILocation(line: 488, column: 31, scope: !1917)
!2218 = !DILocation(line: 489, column: 31, scope: !1917)
!2219 = !DILocation(line: 492, column: 15, scope: !1917)
!2220 = !DILocation(line: 494, column: 19, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !251, line: 493, column: 13)
!2222 = distinct !DILexicalBlock(scope: !1917, file: !251, line: 492, column: 15)
!2223 = !DILocation(line: 501, column: 33, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1917, file: !251, line: 501, column: 15)
!2225 = !DILocation(line: 506, column: 15, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !1917, file: !251, line: 505, column: 15)
!2227 = !DILocation(line: 510, column: 15, scope: !1917)
!2228 = !DILocation(line: 518, column: 26, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !1917, file: !251, line: 518, column: 15)
!2230 = !DILocation(line: 518, column: 15, scope: !1917)
!2231 = !DILocation(line: 518, column: 40, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2229, file: !251, discriminator: 1)
!2233 = !DILocation(line: 518, column: 47, scope: !2232)
!2234 = !DILocation(line: 522, column: 17, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1917, file: !251, line: 522, column: 15)
!2236 = !DILocation(line: 518, column: 18, scope: !2232)
!2237 = !DILocation(line: 518, column: 65, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2229, file: !251, discriminator: 2)
!2239 = !DILocation(line: 518, column: 15, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !1917, file: !251, discriminator: 2)
!2241 = !DILocation(line: 522, column: 15, scope: !1917)
!2242 = !DILocation(line: 526, column: 11, scope: !1917)
!2243 = !DILocation(line: 541, column: 15, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !1917, file: !251, line: 540, column: 15)
!2245 = !DILocation(line: 548, column: 15, scope: !1917)
!2246 = !DILocation(line: 550, column: 19, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !251, line: 549, column: 13)
!2248 = distinct !DILexicalBlock(scope: !1917, file: !251, line: 548, column: 15)
!2249 = !DILocation(line: 553, column: 19, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !251, line: 553, column: 19)
!2251 = !DILocation(line: 553, column: 35, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2250, file: !251, discriminator: 1)
!2253 = !DILocation(line: 553, column: 30, scope: !2250)
!2254 = !DILocation(line: 562, column: 15, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2256, file: !251, discriminator: 1)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !251, line: 562, column: 15)
!2257 = distinct !DILexicalBlock(scope: !2247, file: !251, line: 562, column: 15)
!2258 = !DILocation(line: 562, column: 15, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2257, file: !251, discriminator: 1)
!2260 = !DILocation(line: 562, column: 15, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2256, file: !251, discriminator: 2)
!2262 = !DILocation(line: 562, column: 15, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !2257, file: !251, discriminator: 3)
!2264 = !DILocation(line: 563, column: 15, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2266, file: !251, discriminator: 1)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !251, line: 563, column: 15)
!2267 = distinct !DILexicalBlock(scope: !2247, file: !251, line: 563, column: 15)
!2268 = !DILocation(line: 563, column: 15, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2267, file: !251, discriminator: 1)
!2270 = !DILocation(line: 563, column: 15, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2266, file: !251, discriminator: 2)
!2272 = !DILocation(line: 563, column: 15, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2267, file: !251, discriminator: 3)
!2274 = !DILocation(line: 564, column: 15, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2276, file: !251, discriminator: 1)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !251, line: 564, column: 15)
!2277 = distinct !DILexicalBlock(scope: !2247, file: !251, line: 564, column: 15)
!2278 = !DILocation(line: 564, column: 15, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2277, file: !251, discriminator: 1)
!2280 = !DILocation(line: 564, column: 15, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2276, file: !251, discriminator: 2)
!2282 = !DILocation(line: 564, column: 15, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2277, file: !251, discriminator: 3)
!2284 = !DILocation(line: 566, column: 13, scope: !2247)
!2285 = !DILocation(line: 606, column: 17, scope: !1916)
!2286 = !DILocation(line: 602, column: 20, scope: !1916)
!2287 = !DILocation(line: 609, column: 29, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !1921, file: !251, line: 607, column: 15)
!2289 = !{!2290, !2290, i64 0}
!2290 = !{!"short", !749, i64 0}
!2291 = !DILocation(line: 609, column: 27, scope: !2288)
!2292 = !DILocation(line: 604, column: 18, scope: !1916)
!2293 = !DILocation(line: 610, column: 15, scope: !2288)
!2294 = !DILocation(line: 613, column: 17, scope: !1920)
!2295 = !DILocation(line: 614, column: 17, scope: !1920)
!2296 = !DILocation(line: 618, column: 29, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !1920, file: !251, line: 618, column: 21)
!2298 = !DILocation(line: 618, column: 21, scope: !1920)
!2299 = distinct !{!2299, !2300, !2301}
!2300 = !DILocation(line: 621, column: 17, scope: !1920)
!2301 = !DILocation(line: 667, column: 44, scope: !1920)
!2302 = !DILocation(line: 619, column: 29, scope: !2297)
!2303 = !DILocation(line: 619, column: 19, scope: !2297)
!2304 = !DILocation(line: 623, column: 21, scope: !1937)
!2305 = !DILocation(line: 624, column: 56, scope: !1937)
!2306 = !DILocation(line: 624, column: 50, scope: !1937)
!2307 = !DILocation(line: 625, column: 53, scope: !1937)
!2308 = !DILocation(line: 613, column: 27, scope: !1920)
!2309 = !DILocation(line: 623, column: 29, scope: !1937)
!2310 = !DILocation(line: 624, column: 36, scope: !1937)
!2311 = !DILocation(line: 624, column: 28, scope: !1937)
!2312 = !DILocation(line: 626, column: 25, scope: !1937)
!2313 = !DILocation(line: 636, column: 38, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2315, file: !251, discriminator: 1)
!2315 = distinct !DILexicalBlock(scope: !1944, file: !251, line: 634, column: 23)
!2316 = !DILocation(line: 636, column: 48, scope: !2314)
!2317 = !DILocation(line: 636, column: 51, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2315, file: !251, discriminator: 2)
!2319 = !DILocation(line: 636, column: 48, scope: !2318)
!2320 = !DILocation(line: 636, column: 25, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2315, file: !251, discriminator: 3)
!2322 = !DILocation(line: 637, column: 28, scope: !2315)
!2323 = !DILocation(line: 636, column: 34, scope: !2314)
!2324 = distinct !{!2324, !2325, !2322}
!2325 = !DILocation(line: 636, column: 25, scope: !2315)
!2326 = !DILocation(line: 650, column: 43, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2328, file: !251, discriminator: 1)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !251, line: 650, column: 29)
!2329 = distinct !DILexicalBlock(scope: !1941, file: !251, line: 650, column: 29)
!2330 = !DILocation(line: 647, column: 29, scope: !1942)
!2331 = !DILocation(line: 649, column: 36, scope: !1941)
!2332 = !DILocation(line: 651, column: 49, scope: !2328)
!2333 = !DILocation(line: 651, column: 39, scope: !2328)
!2334 = !DILocation(line: 651, column: 31, scope: !2328)
!2335 = !DILocation(line: 650, column: 53, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2328, file: !251, discriminator: 2)
!2337 = !DILocation(line: 650, column: 29, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2329, file: !251, discriminator: 1)
!2339 = distinct !{!2339, !2340, !2341}
!2340 = !DILocation(line: 650, column: 29, scope: !2329)
!2341 = !DILocation(line: 659, column: 33, scope: !2329)
!2342 = !DILocation(line: 666, column: 19, scope: !1920)
!2343 = !DILocation(line: 662, column: 41, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !1943, file: !251, line: 662, column: 29)
!2345 = !DILocation(line: 662, column: 31, scope: !2344)
!2346 = !DILocation(line: 662, column: 29, scope: !1943)
!2347 = !DILocation(line: 664, column: 27, scope: !1943)
!2348 = !DILocation(line: 667, column: 26, scope: !1920)
!2349 = !DILocation(line: 667, column: 24, scope: !1920)
!2350 = !DILocation(line: 666, column: 19, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !1937, file: !251, discriminator: 3)
!2352 = !DILocation(line: 668, column: 15, scope: !1921)
!2353 = !DILocation(line: 670, column: 40, scope: !1916)
!2354 = !DILocation(line: 672, column: 19, scope: !1949)
!2355 = !DILocation(line: 672, column: 45, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !1949, file: !251, discriminator: 1)
!2357 = !DILocation(line: 672, column: 23, scope: !1949)
!2358 = !DILocation(line: 676, column: 33, scope: !1948)
!2359 = !DILocation(line: 676, column: 24, scope: !1948)
!2360 = !DILocation(line: 678, column: 17, scope: !1948)
!2361 = !DILocation(line: 680, column: 43, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !251, line: 680, column: 25)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !251, line: 679, column: 19)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !251, line: 678, column: 17)
!2365 = distinct !DILexicalBlock(scope: !1948, file: !251, line: 678, column: 17)
!2366 = !DILocation(line: 682, column: 25, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2368, file: !251, discriminator: 1)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !251, line: 682, column: 25)
!2369 = distinct !DILexicalBlock(scope: !2362, file: !251, line: 681, column: 23)
!2370 = !DILocation(line: 682, column: 25, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2372, file: !251, discriminator: 4)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !251, line: 682, column: 25)
!2373 = !DILocation(line: 682, column: 25, scope: !2374)
!2374 = !DILexicalBlockFile(scope: !2372, file: !251, discriminator: 3)
!2375 = !DILocation(line: 682, column: 25, scope: !2376)
!2376 = !DILexicalBlockFile(scope: !2377, file: !251, discriminator: 6)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !251, line: 682, column: 25)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !251, line: 682, column: 25)
!2379 = distinct !DILexicalBlock(scope: !2372, file: !251, line: 682, column: 25)
!2380 = !DILocation(line: 682, column: 25, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2378, file: !251, discriminator: 6)
!2382 = !DILocation(line: 682, column: 25, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2377, file: !251, discriminator: 7)
!2384 = !DILocation(line: 682, column: 25, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2378, file: !251, discriminator: 8)
!2386 = !DILocation(line: 682, column: 25, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !2388, file: !251, discriminator: 11)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !251, line: 682, column: 25)
!2389 = distinct !DILexicalBlock(scope: !2379, file: !251, line: 682, column: 25)
!2390 = !DILocation(line: 682, column: 25, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2389, file: !251, discriminator: 11)
!2392 = !DILocation(line: 682, column: 25, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2388, file: !251, discriminator: 12)
!2394 = !DILocation(line: 682, column: 25, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2389, file: !251, discriminator: 13)
!2396 = !DILocation(line: 682, column: 25, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2398, file: !251, discriminator: 16)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !251, line: 682, column: 25)
!2399 = distinct !DILexicalBlock(scope: !2379, file: !251, line: 682, column: 25)
!2400 = !DILocation(line: 682, column: 25, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2399, file: !251, discriminator: 16)
!2402 = !DILocation(line: 682, column: 25, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2398, file: !251, discriminator: 17)
!2404 = !DILocation(line: 682, column: 25, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2399, file: !251, discriminator: 18)
!2406 = !DILocation(line: 682, column: 25, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !2379, file: !251, discriminator: 20)
!2408 = !DILocation(line: 682, column: 25, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2410, file: !251, discriminator: 22)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !251, line: 682, column: 25)
!2411 = distinct !DILexicalBlock(scope: !2368, file: !251, line: 682, column: 25)
!2412 = !DILocation(line: 682, column: 25, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2411, file: !251, discriminator: 22)
!2414 = !DILocation(line: 682, column: 25, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2410, file: !251, discriminator: 23)
!2416 = !DILocation(line: 682, column: 25, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2411, file: !251, discriminator: 24)
!2418 = !DILocation(line: 683, column: 25, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2420, file: !251, discriminator: 1)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !251, line: 683, column: 25)
!2421 = distinct !DILexicalBlock(scope: !2369, file: !251, line: 683, column: 25)
!2422 = !DILocation(line: 683, column: 25, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2421, file: !251, discriminator: 1)
!2424 = !DILocation(line: 683, column: 25, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !2420, file: !251, discriminator: 2)
!2426 = !DILocation(line: 683, column: 25, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2421, file: !251, discriminator: 3)
!2428 = !DILocation(line: 684, column: 25, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2430, file: !251, discriminator: 1)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !251, line: 684, column: 25)
!2431 = distinct !DILexicalBlock(scope: !2369, file: !251, line: 684, column: 25)
!2432 = !DILocation(line: 684, column: 25, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !2431, file: !251, discriminator: 1)
!2434 = !DILocation(line: 684, column: 25, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2430, file: !251, discriminator: 2)
!2436 = !DILocation(line: 684, column: 25, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2431, file: !251, discriminator: 3)
!2438 = !DILocation(line: 685, column: 38, scope: !2369)
!2439 = !DILocation(line: 685, column: 33, scope: !2369)
!2440 = !DILocation(line: 686, column: 23, scope: !2369)
!2441 = !DILocation(line: 687, column: 30, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2362, file: !251, line: 687, column: 30)
!2443 = !DILocation(line: 687, column: 30, scope: !2362)
!2444 = !DILocation(line: 689, column: 25, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2446, file: !251, discriminator: 1)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !251, line: 689, column: 25)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !251, line: 689, column: 25)
!2448 = distinct !DILexicalBlock(scope: !2442, file: !251, line: 688, column: 23)
!2449 = !DILocation(line: 689, column: 25, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2447, file: !251, discriminator: 1)
!2451 = !DILocation(line: 689, column: 25, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2446, file: !251, discriminator: 2)
!2453 = !DILocation(line: 689, column: 25, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2447, file: !251, discriminator: 3)
!2455 = !DILocation(line: 691, column: 23, scope: !2448)
!2456 = !DILocation(line: 692, column: 35, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2363, file: !251, line: 692, column: 25)
!2458 = !DILocation(line: 692, column: 30, scope: !2457)
!2459 = !DILocation(line: 692, column: 25, scope: !2363)
!2460 = !DILocation(line: 694, column: 21, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2462, file: !251, discriminator: 1)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !251, line: 694, column: 21)
!2463 = distinct !DILexicalBlock(scope: !2363, file: !251, line: 694, column: 21)
!2464 = !DILocation(line: 694, column: 21, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2462, file: !251, discriminator: 2)
!2466 = !DILocation(line: 694, column: 21, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2468, file: !251, discriminator: 4)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !251, line: 694, column: 21)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !251, line: 694, column: 21)
!2470 = distinct !DILexicalBlock(scope: !2462, file: !251, line: 694, column: 21)
!2471 = !DILocation(line: 694, column: 21, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2469, file: !251, discriminator: 4)
!2473 = !DILocation(line: 694, column: 21, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !2468, file: !251, discriminator: 5)
!2475 = !DILocation(line: 694, column: 21, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2469, file: !251, discriminator: 6)
!2477 = !DILocation(line: 694, column: 21, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !2479, file: !251, discriminator: 9)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !251, line: 694, column: 21)
!2480 = distinct !DILexicalBlock(scope: !2470, file: !251, line: 694, column: 21)
!2481 = !DILocation(line: 694, column: 21, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2480, file: !251, discriminator: 9)
!2483 = !DILocation(line: 694, column: 21, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2479, file: !251, discriminator: 10)
!2485 = !DILocation(line: 694, column: 21, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2480, file: !251, discriminator: 11)
!2487 = !DILocation(line: 694, column: 21, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2470, file: !251, discriminator: 13)
!2489 = !DILocation(line: 695, column: 21, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2491, file: !251, discriminator: 1)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !251, line: 695, column: 21)
!2492 = distinct !DILexicalBlock(scope: !2363, file: !251, line: 695, column: 21)
!2493 = !DILocation(line: 695, column: 21, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2492, file: !251, discriminator: 1)
!2495 = !DILocation(line: 695, column: 21, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2491, file: !251, discriminator: 2)
!2497 = !DILocation(line: 695, column: 21, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2492, file: !251, discriminator: 3)
!2499 = !DILocation(line: 696, column: 25, scope: !2363)
!2500 = !DILocation(line: 678, column: 17, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2364, file: !251, discriminator: 1)
!2502 = distinct !{!2502, !2503, !2504}
!2503 = !DILocation(line: 678, column: 17, scope: !2365)
!2504 = !DILocation(line: 697, column: 19, scope: !2365)
!2505 = !DILocation(line: 704, column: 34, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !1908, file: !251, line: 704, column: 11)
!2507 = !DILocation(line: 706, column: 14, scope: !2506)
!2508 = !DILocation(line: 707, column: 14, scope: !2506)
!2509 = !DILocation(line: 707, column: 35, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2506, file: !251, discriminator: 1)
!2511 = !DILocation(line: 707, column: 17, scope: !2510)
!2512 = !DILocation(line: 707, column: 53, scope: !2510)
!2513 = !DILocation(line: 707, column: 47, scope: !2510)
!2514 = !DILocation(line: 707, column: 65, scope: !2510)
!2515 = !DILocation(line: 708, column: 15, scope: !2510)
!2516 = !DILocation(line: 708, column: 11, scope: !2506)
!2517 = !DILocation(line: 704, column: 11, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !1908, file: !251, discriminator: 2)
!2519 = !DILocation(line: 712, column: 7, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2521, file: !251, discriminator: 1)
!2521 = distinct !DILexicalBlock(scope: !1908, file: !251, line: 712, column: 7)
!2522 = !DILocation(line: 712, column: 7, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !2524, file: !251, discriminator: 4)
!2524 = distinct !DILexicalBlock(scope: !2521, file: !251, line: 712, column: 7)
!2525 = !DILocation(line: 712, column: 7, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2524, file: !251, discriminator: 3)
!2527 = !DILocation(line: 712, column: 7, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2529, file: !251, discriminator: 6)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !251, line: 712, column: 7)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !251, line: 712, column: 7)
!2531 = distinct !DILexicalBlock(scope: !2524, file: !251, line: 712, column: 7)
!2532 = !DILocation(line: 712, column: 7, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2530, file: !251, discriminator: 6)
!2534 = !DILocation(line: 712, column: 7, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2529, file: !251, discriminator: 7)
!2536 = !DILocation(line: 712, column: 7, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2530, file: !251, discriminator: 8)
!2538 = !DILocation(line: 712, column: 7, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2540, file: !251, discriminator: 11)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !251, line: 712, column: 7)
!2541 = distinct !DILexicalBlock(scope: !2531, file: !251, line: 712, column: 7)
!2542 = !DILocation(line: 712, column: 7, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !2541, file: !251, discriminator: 11)
!2544 = !DILocation(line: 712, column: 7, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2540, file: !251, discriminator: 12)
!2546 = !DILocation(line: 712, column: 7, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2541, file: !251, discriminator: 13)
!2548 = !DILocation(line: 712, column: 7, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2550, file: !251, discriminator: 16)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !251, line: 712, column: 7)
!2551 = distinct !DILexicalBlock(scope: !2531, file: !251, line: 712, column: 7)
!2552 = !DILocation(line: 712, column: 7, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2551, file: !251, discriminator: 16)
!2554 = !DILocation(line: 712, column: 7, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2550, file: !251, discriminator: 17)
!2556 = !DILocation(line: 712, column: 7, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2551, file: !251, discriminator: 18)
!2558 = !DILocation(line: 712, column: 7, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2531, file: !251, discriminator: 20)
!2560 = !DILocation(line: 712, column: 7, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2562, file: !251, discriminator: 22)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !251, line: 712, column: 7)
!2563 = distinct !DILexicalBlock(scope: !2521, file: !251, line: 712, column: 7)
!2564 = !DILocation(line: 712, column: 7, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2563, file: !251, discriminator: 22)
!2566 = !DILocation(line: 712, column: 7, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2562, file: !251, discriminator: 23)
!2568 = !DILocation(line: 712, column: 7, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2563, file: !251, discriminator: 24)
!2570 = !DILocation(line: 715, column: 7, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2572, file: !251, discriminator: 1)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !251, line: 715, column: 7)
!2573 = distinct !DILexicalBlock(scope: !1908, file: !251, line: 715, column: 7)
!2574 = !DILocation(line: 715, column: 7, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !2572, file: !251, discriminator: 2)
!2576 = !DILocation(line: 715, column: 7, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !2578, file: !251, discriminator: 4)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !251, line: 715, column: 7)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !251, line: 715, column: 7)
!2580 = distinct !DILexicalBlock(scope: !2572, file: !251, line: 715, column: 7)
!2581 = !DILocation(line: 715, column: 7, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2579, file: !251, discriminator: 4)
!2583 = !DILocation(line: 715, column: 7, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2578, file: !251, discriminator: 5)
!2585 = !DILocation(line: 715, column: 7, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2579, file: !251, discriminator: 6)
!2587 = !DILocation(line: 715, column: 7, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !2589, file: !251, discriminator: 9)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !251, line: 715, column: 7)
!2590 = distinct !DILexicalBlock(scope: !2580, file: !251, line: 715, column: 7)
!2591 = !DILocation(line: 715, column: 7, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2590, file: !251, discriminator: 9)
!2593 = !DILocation(line: 715, column: 7, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !2589, file: !251, discriminator: 10)
!2595 = !DILocation(line: 715, column: 7, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !2590, file: !251, discriminator: 11)
!2597 = !DILocation(line: 715, column: 7, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2580, file: !251, discriminator: 13)
!2599 = !DILocation(line: 716, column: 7, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2601, file: !251, discriminator: 1)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !251, line: 716, column: 7)
!2602 = distinct !DILexicalBlock(scope: !1908, file: !251, line: 716, column: 7)
!2603 = !DILocation(line: 716, column: 7, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2602, file: !251, discriminator: 1)
!2605 = !DILocation(line: 716, column: 7, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2601, file: !251, discriminator: 2)
!2607 = !DILocation(line: 716, column: 7, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2602, file: !251, discriminator: 3)
!2609 = !DILocation(line: 718, column: 13, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !1908, file: !251, line: 718, column: 11)
!2611 = !DILocation(line: 718, column: 11, scope: !1908)
!2612 = !DILocation(line: 720, column: 5, scope: !1909)
!2613 = !DILocation(line: 392, column: 75, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !1909, file: !251, discriminator: 5)
!2615 = !DILocation(line: 392, column: 3, scope: !2614)
!2616 = distinct !{!2616, !2617, !2618}
!2617 = !DILocation(line: 392, column: 3, scope: !1910)
!2618 = !DILocation(line: 720, column: 5, scope: !1910)
!2619 = !DILocation(line: 722, column: 11, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !1881, file: !251, line: 722, column: 7)
!2621 = !DILocation(line: 722, column: 16, scope: !2620)
!2622 = !DILocation(line: 730, column: 51, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !1881, file: !251, line: 730, column: 7)
!2624 = !DILocation(line: 731, column: 10, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2623, file: !251, discriminator: 1)
!2626 = !DILocation(line: 733, column: 11, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !251, line: 733, column: 11)
!2628 = distinct !DILexicalBlock(scope: !2623, file: !251, line: 732, column: 5)
!2629 = !DILocation(line: 733, column: 11, scope: !2628)
!2630 = !DILocation(line: 734, column: 16, scope: !2627)
!2631 = !DILocation(line: 734, column: 9, scope: !2627)
!2632 = !DILocation(line: 738, column: 18, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2627, file: !251, line: 738, column: 16)
!2634 = !DILocation(line: 738, column: 32, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2633, file: !251, discriminator: 1)
!2636 = !DILocation(line: 738, column: 29, scope: !2633)
!2637 = !DILocation(line: 747, column: 7, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !1881, file: !251, line: 747, column: 7)
!2639 = !DILocation(line: 747, column: 20, scope: !2638)
!2640 = !DILocation(line: 748, column: 12, scope: !2641)
!2641 = !DILexicalBlockFile(scope: !2642, file: !251, discriminator: 1)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !251, line: 748, column: 5)
!2643 = distinct !DILexicalBlock(scope: !2638, file: !251, line: 748, column: 5)
!2644 = !DILocation(line: 748, column: 5, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2643, file: !251, discriminator: 1)
!2646 = !DILocation(line: 749, column: 7, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2648, file: !251, discriminator: 1)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !251, line: 749, column: 7)
!2649 = distinct !DILexicalBlock(scope: !2642, file: !251, line: 749, column: 7)
!2650 = !DILocation(line: 749, column: 7, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2649, file: !251, discriminator: 1)
!2652 = !DILocation(line: 749, column: 7, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2648, file: !251, discriminator: 2)
!2654 = !DILocation(line: 749, column: 7, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2649, file: !251, discriminator: 3)
!2656 = !DILocation(line: 748, column: 39, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !2642, file: !251, discriminator: 2)
!2658 = distinct !{!2658, !2659, !2660}
!2659 = !DILocation(line: 748, column: 5, scope: !2643)
!2660 = !DILocation(line: 749, column: 7, scope: !2643)
!2661 = !DILocation(line: 751, column: 11, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !1881, file: !251, line: 751, column: 7)
!2663 = !DILocation(line: 751, column: 7, scope: !1881)
!2664 = !DILocation(line: 752, column: 5, scope: !2662)
!2665 = !DILocation(line: 752, column: 17, scope: !2662)
!2666 = !DILocation(line: 758, column: 21, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !1881, file: !251, line: 758, column: 7)
!2668 = !DILocation(line: 758, column: 54, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2667, file: !251, discriminator: 1)
!2670 = !DILocation(line: 758, column: 51, scope: !2667)
!2671 = !DILocation(line: 762, column: 42, scope: !1881)
!2672 = !DILocation(line: 760, column: 10, scope: !1881)
!2673 = !DILocation(line: 760, column: 3, scope: !1881)
!2674 = !DILocation(line: 764, column: 1, scope: !1881)
!2675 = distinct !DISubprogram(name: "gettext_quote", scope: !251, file: !251, line: 199, type: !2676, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!49, !49, !12}
!2678 = !{!2679, !2680, !2681, !2682}
!2679 = !DILocalVariable(name: "msgid", arg: 1, scope: !2675, file: !251, line: 199, type: !49)
!2680 = !DILocalVariable(name: "s", arg: 2, scope: !2675, file: !251, line: 199, type: !12)
!2681 = !DILocalVariable(name: "translation", scope: !2675, file: !251, line: 201, type: !49)
!2682 = !DILocalVariable(name: "locale_code", scope: !2675, file: !251, line: 202, type: !49)
!2683 = !DILocation(line: 199, column: 28, scope: !2675)
!2684 = !DILocation(line: 199, column: 54, scope: !2675)
!2685 = !DILocation(line: 201, column: 29, scope: !2675)
!2686 = !DILocation(line: 201, column: 15, scope: !2675)
!2687 = !DILocation(line: 204, column: 19, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2675, file: !251, line: 204, column: 7)
!2689 = !DILocation(line: 204, column: 7, scope: !2675)
!2690 = !DILocation(line: 225, column: 17, scope: !2675)
!2691 = !DILocation(line: 202, column: 15, scope: !2675)
!2692 = !DILocalVariable(name: "s2", arg: 2, scope: !2693, file: !2694, line: 160, type: !49)
!2693 = distinct !DISubprogram(name: "strcaseeq0", scope: !2694, file: !2694, line: 160, type: !2695, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2697)
!2694 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!6, !49, !49, !9, !9, !9, !9, !9, !9, !9, !9, !9}
!2697 = !{!2698, !2692, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707}
!2698 = !DILocalVariable(name: "s1", arg: 1, scope: !2693, file: !2694, line: 160, type: !49)
!2699 = !DILocalVariable(name: "s20", arg: 3, scope: !2693, file: !2694, line: 160, type: !9)
!2700 = !DILocalVariable(name: "s21", arg: 4, scope: !2693, file: !2694, line: 160, type: !9)
!2701 = !DILocalVariable(name: "s22", arg: 5, scope: !2693, file: !2694, line: 160, type: !9)
!2702 = !DILocalVariable(name: "s23", arg: 6, scope: !2693, file: !2694, line: 160, type: !9)
!2703 = !DILocalVariable(name: "s24", arg: 7, scope: !2693, file: !2694, line: 160, type: !9)
!2704 = !DILocalVariable(name: "s25", arg: 8, scope: !2693, file: !2694, line: 160, type: !9)
!2705 = !DILocalVariable(name: "s26", arg: 9, scope: !2693, file: !2694, line: 160, type: !9)
!2706 = !DILocalVariable(name: "s27", arg: 10, scope: !2693, file: !2694, line: 160, type: !9)
!2707 = !DILocalVariable(name: "s28", arg: 11, scope: !2693, file: !2694, line: 160, type: !9)
!2708 = !DILocation(line: 160, column: 41, scope: !2693, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 226, column: 7, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2675, file: !251, line: 226, column: 7)
!2711 = !DILocation(line: 160, column: 120, scope: !2693, inlinedAt: !2709)
!2712 = !DILocation(line: 160, column: 130, scope: !2693, inlinedAt: !2709)
!2713 = !DILocation(line: 162, column: 7, scope: !2714, inlinedAt: !2709)
!2714 = !DILexicalBlockFile(scope: !2715, file: !2694, discriminator: 1)
!2715 = distinct !DILexicalBlock(scope: !2693, file: !2694, line: 162, column: 7)
!2716 = !DILocalVariable(name: "s2", arg: 2, scope: !2717, file: !2694, line: 146, type: !49)
!2717 = distinct !DISubprogram(name: "strcaseeq1", scope: !2694, file: !2694, line: 146, type: !2718, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!6, !49, !49, !9, !9, !9, !9, !9, !9, !9, !9}
!2720 = !{!2721, !2716, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729}
!2721 = !DILocalVariable(name: "s1", arg: 1, scope: !2717, file: !2694, line: 146, type: !49)
!2722 = !DILocalVariable(name: "s21", arg: 3, scope: !2717, file: !2694, line: 146, type: !9)
!2723 = !DILocalVariable(name: "s22", arg: 4, scope: !2717, file: !2694, line: 146, type: !9)
!2724 = !DILocalVariable(name: "s23", arg: 5, scope: !2717, file: !2694, line: 146, type: !9)
!2725 = !DILocalVariable(name: "s24", arg: 6, scope: !2717, file: !2694, line: 146, type: !9)
!2726 = !DILocalVariable(name: "s25", arg: 7, scope: !2717, file: !2694, line: 146, type: !9)
!2727 = !DILocalVariable(name: "s26", arg: 8, scope: !2717, file: !2694, line: 146, type: !9)
!2728 = !DILocalVariable(name: "s27", arg: 9, scope: !2717, file: !2694, line: 146, type: !9)
!2729 = !DILocalVariable(name: "s28", arg: 10, scope: !2717, file: !2694, line: 146, type: !9)
!2730 = !DILocation(line: 146, column: 41, scope: !2717, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 167, column: 16, scope: !2732, inlinedAt: !2709)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !2694, line: 164, column: 11)
!2733 = distinct !DILexicalBlock(scope: !2715, file: !2694, line: 163, column: 5)
!2734 = !DILocation(line: 146, column: 110, scope: !2717, inlinedAt: !2731)
!2735 = !DILocation(line: 146, column: 120, scope: !2717, inlinedAt: !2731)
!2736 = !DILocation(line: 148, column: 7, scope: !2737, inlinedAt: !2731)
!2737 = !DILexicalBlockFile(scope: !2738, file: !2694, discriminator: 1)
!2738 = distinct !DILexicalBlock(scope: !2717, file: !2694, line: 148, column: 7)
!2739 = !DILocalVariable(name: "s2", arg: 2, scope: !2740, file: !2694, line: 132, type: !49)
!2740 = distinct !DISubprogram(name: "strcaseeq2", scope: !2694, file: !2694, line: 132, type: !2741, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!6, !49, !49, !9, !9, !9, !9, !9, !9, !9}
!2743 = !{!2744, !2739, !2745, !2746, !2747, !2748, !2749, !2750, !2751}
!2744 = !DILocalVariable(name: "s1", arg: 1, scope: !2740, file: !2694, line: 132, type: !49)
!2745 = !DILocalVariable(name: "s22", arg: 3, scope: !2740, file: !2694, line: 132, type: !9)
!2746 = !DILocalVariable(name: "s23", arg: 4, scope: !2740, file: !2694, line: 132, type: !9)
!2747 = !DILocalVariable(name: "s24", arg: 5, scope: !2740, file: !2694, line: 132, type: !9)
!2748 = !DILocalVariable(name: "s25", arg: 6, scope: !2740, file: !2694, line: 132, type: !9)
!2749 = !DILocalVariable(name: "s26", arg: 7, scope: !2740, file: !2694, line: 132, type: !9)
!2750 = !DILocalVariable(name: "s27", arg: 8, scope: !2740, file: !2694, line: 132, type: !9)
!2751 = !DILocalVariable(name: "s28", arg: 9, scope: !2740, file: !2694, line: 132, type: !9)
!2752 = !DILocation(line: 132, column: 41, scope: !2740, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 153, column: 16, scope: !2754, inlinedAt: !2731)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !2694, line: 150, column: 11)
!2755 = distinct !DILexicalBlock(scope: !2738, file: !2694, line: 149, column: 5)
!2756 = !DILocation(line: 132, column: 100, scope: !2740, inlinedAt: !2753)
!2757 = !DILocation(line: 132, column: 110, scope: !2740, inlinedAt: !2753)
!2758 = !DILocation(line: 134, column: 7, scope: !2759, inlinedAt: !2753)
!2759 = !DILexicalBlockFile(scope: !2760, file: !2694, discriminator: 1)
!2760 = distinct !DILexicalBlock(scope: !2740, file: !2694, line: 134, column: 7)
!2761 = !DILocalVariable(name: "s2", arg: 2, scope: !2762, file: !2694, line: 118, type: !49)
!2762 = distinct !DISubprogram(name: "strcaseeq3", scope: !2694, file: !2694, line: 118, type: !2763, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2765)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!6, !49, !49, !9, !9, !9, !9, !9, !9}
!2765 = !{!2766, !2761, !2767, !2768, !2769, !2770, !2771, !2772}
!2766 = !DILocalVariable(name: "s1", arg: 1, scope: !2762, file: !2694, line: 118, type: !49)
!2767 = !DILocalVariable(name: "s23", arg: 3, scope: !2762, file: !2694, line: 118, type: !9)
!2768 = !DILocalVariable(name: "s24", arg: 4, scope: !2762, file: !2694, line: 118, type: !9)
!2769 = !DILocalVariable(name: "s25", arg: 5, scope: !2762, file: !2694, line: 118, type: !9)
!2770 = !DILocalVariable(name: "s26", arg: 6, scope: !2762, file: !2694, line: 118, type: !9)
!2771 = !DILocalVariable(name: "s27", arg: 7, scope: !2762, file: !2694, line: 118, type: !9)
!2772 = !DILocalVariable(name: "s28", arg: 8, scope: !2762, file: !2694, line: 118, type: !9)
!2773 = !DILocation(line: 118, column: 41, scope: !2762, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 139, column: 16, scope: !2775, inlinedAt: !2753)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !2694, line: 136, column: 11)
!2776 = distinct !DILexicalBlock(scope: !2760, file: !2694, line: 135, column: 5)
!2777 = !DILocation(line: 118, column: 90, scope: !2762, inlinedAt: !2774)
!2778 = !DILocation(line: 118, column: 100, scope: !2762, inlinedAt: !2774)
!2779 = !DILocation(line: 120, column: 7, scope: !2780, inlinedAt: !2774)
!2780 = !DILexicalBlockFile(scope: !2781, file: !2694, discriminator: 2)
!2781 = distinct !DILexicalBlock(scope: !2762, file: !2694, line: 120, column: 7)
!2782 = !DILocation(line: 120, column: 7, scope: !2783, inlinedAt: !2774)
!2783 = !DILexicalBlockFile(scope: !2762, file: !2694, discriminator: 2)
!2784 = !DILocalVariable(name: "s2", arg: 2, scope: !2785, file: !2694, line: 104, type: !49)
!2785 = distinct !DISubprogram(name: "strcaseeq4", scope: !2694, file: !2694, line: 104, type: !2786, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!6, !49, !49, !9, !9, !9, !9, !9}
!2788 = !{!2789, !2784, !2790, !2791, !2792, !2793, !2794}
!2789 = !DILocalVariable(name: "s1", arg: 1, scope: !2785, file: !2694, line: 104, type: !49)
!2790 = !DILocalVariable(name: "s24", arg: 3, scope: !2785, file: !2694, line: 104, type: !9)
!2791 = !DILocalVariable(name: "s25", arg: 4, scope: !2785, file: !2694, line: 104, type: !9)
!2792 = !DILocalVariable(name: "s26", arg: 5, scope: !2785, file: !2694, line: 104, type: !9)
!2793 = !DILocalVariable(name: "s27", arg: 6, scope: !2785, file: !2694, line: 104, type: !9)
!2794 = !DILocalVariable(name: "s28", arg: 7, scope: !2785, file: !2694, line: 104, type: !9)
!2795 = !DILocation(line: 104, column: 41, scope: !2785, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 125, column: 16, scope: !2797, inlinedAt: !2774)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !2694, line: 122, column: 11)
!2798 = distinct !DILexicalBlock(scope: !2781, file: !2694, line: 121, column: 5)
!2799 = !DILocation(line: 104, column: 80, scope: !2785, inlinedAt: !2796)
!2800 = !DILocation(line: 104, column: 90, scope: !2785, inlinedAt: !2796)
!2801 = !DILocation(line: 106, column: 7, scope: !2802, inlinedAt: !2796)
!2802 = !DILexicalBlockFile(scope: !2803, file: !2694, discriminator: 2)
!2803 = distinct !DILexicalBlock(scope: !2785, file: !2694, line: 106, column: 7)
!2804 = !DILocation(line: 106, column: 7, scope: !2805, inlinedAt: !2796)
!2805 = !DILexicalBlockFile(scope: !2785, file: !2694, discriminator: 2)
!2806 = !DILocalVariable(name: "s2", arg: 2, scope: !2807, file: !2694, line: 90, type: !49)
!2807 = distinct !DISubprogram(name: "strcaseeq5", scope: !2694, file: !2694, line: 90, type: !2808, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!6, !49, !49, !9, !9, !9, !9}
!2810 = !{!2811, !2806, !2812, !2813, !2814, !2815}
!2811 = !DILocalVariable(name: "s1", arg: 1, scope: !2807, file: !2694, line: 90, type: !49)
!2812 = !DILocalVariable(name: "s25", arg: 3, scope: !2807, file: !2694, line: 90, type: !9)
!2813 = !DILocalVariable(name: "s26", arg: 4, scope: !2807, file: !2694, line: 90, type: !9)
!2814 = !DILocalVariable(name: "s27", arg: 5, scope: !2807, file: !2694, line: 90, type: !9)
!2815 = !DILocalVariable(name: "s28", arg: 6, scope: !2807, file: !2694, line: 90, type: !9)
!2816 = !DILocation(line: 90, column: 41, scope: !2807, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 111, column: 16, scope: !2818, inlinedAt: !2796)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !2694, line: 108, column: 11)
!2819 = distinct !DILexicalBlock(scope: !2803, file: !2694, line: 107, column: 5)
!2820 = !DILocation(line: 90, column: 70, scope: !2807, inlinedAt: !2817)
!2821 = !DILocation(line: 90, column: 80, scope: !2807, inlinedAt: !2817)
!2822 = !DILocation(line: 92, column: 7, scope: !2823, inlinedAt: !2817)
!2823 = !DILexicalBlockFile(scope: !2824, file: !2694, discriminator: 2)
!2824 = distinct !DILexicalBlock(scope: !2807, file: !2694, line: 92, column: 7)
!2825 = !DILocation(line: 92, column: 7, scope: !2826, inlinedAt: !2817)
!2826 = !DILexicalBlockFile(scope: !2807, file: !2694, discriminator: 2)
!2827 = !DILocation(line: 227, column: 12, scope: !2710)
!2828 = !DILocation(line: 227, column: 21, scope: !2710)
!2829 = !DILocation(line: 227, column: 5, scope: !2710)
!2830 = !DILocation(line: 146, column: 41, scope: !2717, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 167, column: 16, scope: !2732, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 228, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2675, file: !251, line: 228, column: 7)
!2834 = !DILocation(line: 146, column: 110, scope: !2717, inlinedAt: !2831)
!2835 = !DILocation(line: 146, column: 120, scope: !2717, inlinedAt: !2831)
!2836 = !DILocation(line: 148, column: 7, scope: !2737, inlinedAt: !2831)
!2837 = !DILocation(line: 132, column: 41, scope: !2740, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 153, column: 16, scope: !2754, inlinedAt: !2831)
!2839 = !DILocation(line: 132, column: 100, scope: !2740, inlinedAt: !2838)
!2840 = !DILocation(line: 132, column: 110, scope: !2740, inlinedAt: !2838)
!2841 = !DILocation(line: 134, column: 7, scope: !2842, inlinedAt: !2838)
!2842 = !DILexicalBlockFile(scope: !2760, file: !2694, discriminator: 2)
!2843 = !DILocation(line: 134, column: 7, scope: !2844, inlinedAt: !2838)
!2844 = !DILexicalBlockFile(scope: !2740, file: !2694, discriminator: 2)
!2845 = !DILocation(line: 118, column: 41, scope: !2762, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 139, column: 16, scope: !2775, inlinedAt: !2838)
!2847 = !DILocation(line: 118, column: 90, scope: !2762, inlinedAt: !2846)
!2848 = !DILocation(line: 118, column: 100, scope: !2762, inlinedAt: !2846)
!2849 = !DILocation(line: 120, column: 7, scope: !2780, inlinedAt: !2846)
!2850 = !DILocation(line: 120, column: 7, scope: !2783, inlinedAt: !2846)
!2851 = !DILocation(line: 104, column: 41, scope: !2785, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 125, column: 16, scope: !2797, inlinedAt: !2846)
!2853 = !DILocation(line: 104, column: 80, scope: !2785, inlinedAt: !2852)
!2854 = !DILocation(line: 104, column: 90, scope: !2785, inlinedAt: !2852)
!2855 = !DILocation(line: 106, column: 7, scope: !2802, inlinedAt: !2852)
!2856 = !DILocation(line: 106, column: 7, scope: !2805, inlinedAt: !2852)
!2857 = !DILocation(line: 90, column: 41, scope: !2807, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 111, column: 16, scope: !2818, inlinedAt: !2852)
!2859 = !DILocation(line: 90, column: 70, scope: !2807, inlinedAt: !2858)
!2860 = !DILocation(line: 90, column: 80, scope: !2807, inlinedAt: !2858)
!2861 = !DILocation(line: 92, column: 7, scope: !2823, inlinedAt: !2858)
!2862 = !DILocation(line: 92, column: 7, scope: !2826, inlinedAt: !2858)
!2863 = !DILocalVariable(name: "s2", arg: 2, scope: !2864, file: !2694, line: 76, type: !49)
!2864 = distinct !DISubprogram(name: "strcaseeq6", scope: !2694, file: !2694, line: 76, type: !2865, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!6, !49, !49, !9, !9, !9}
!2867 = !{!2868, !2863, !2869, !2870, !2871}
!2868 = !DILocalVariable(name: "s1", arg: 1, scope: !2864, file: !2694, line: 76, type: !49)
!2869 = !DILocalVariable(name: "s26", arg: 3, scope: !2864, file: !2694, line: 76, type: !9)
!2870 = !DILocalVariable(name: "s27", arg: 4, scope: !2864, file: !2694, line: 76, type: !9)
!2871 = !DILocalVariable(name: "s28", arg: 5, scope: !2864, file: !2694, line: 76, type: !9)
!2872 = !DILocation(line: 76, column: 41, scope: !2864, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 97, column: 16, scope: !2874, inlinedAt: !2858)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !2694, line: 94, column: 11)
!2875 = distinct !DILexicalBlock(scope: !2824, file: !2694, line: 93, column: 5)
!2876 = !DILocation(line: 76, column: 60, scope: !2864, inlinedAt: !2873)
!2877 = !DILocation(line: 76, column: 70, scope: !2864, inlinedAt: !2873)
!2878 = !DILocation(line: 78, column: 7, scope: !2879, inlinedAt: !2873)
!2879 = !DILexicalBlockFile(scope: !2880, file: !2694, discriminator: 2)
!2880 = distinct !DILexicalBlock(scope: !2864, file: !2694, line: 78, column: 7)
!2881 = !DILocation(line: 78, column: 7, scope: !2882, inlinedAt: !2873)
!2882 = !DILexicalBlockFile(scope: !2864, file: !2694, discriminator: 2)
!2883 = !DILocalVariable(name: "s2", arg: 2, scope: !2884, file: !2694, line: 62, type: !49)
!2884 = distinct !DISubprogram(name: "strcaseeq7", scope: !2694, file: !2694, line: 62, type: !2885, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!6, !49, !49, !9, !9}
!2887 = !{!2888, !2883, !2889, !2890}
!2888 = !DILocalVariable(name: "s1", arg: 1, scope: !2884, file: !2694, line: 62, type: !49)
!2889 = !DILocalVariable(name: "s27", arg: 3, scope: !2884, file: !2694, line: 62, type: !9)
!2890 = !DILocalVariable(name: "s28", arg: 4, scope: !2884, file: !2694, line: 62, type: !9)
!2891 = !DILocation(line: 62, column: 41, scope: !2884, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 83, column: 16, scope: !2893, inlinedAt: !2873)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !2694, line: 80, column: 11)
!2894 = distinct !DILexicalBlock(scope: !2880, file: !2694, line: 79, column: 5)
!2895 = !DILocation(line: 62, column: 50, scope: !2884, inlinedAt: !2892)
!2896 = !DILocation(line: 62, column: 60, scope: !2884, inlinedAt: !2892)
!2897 = !DILocation(line: 64, column: 7, scope: !2898, inlinedAt: !2892)
!2898 = !DILexicalBlockFile(scope: !2899, file: !2694, discriminator: 2)
!2899 = distinct !DILexicalBlock(scope: !2884, file: !2694, line: 64, column: 7)
!2900 = !DILocation(line: 228, column: 7, scope: !2675)
!2901 = !DILocation(line: 229, column: 12, scope: !2833)
!2902 = !DILocation(line: 229, column: 21, scope: !2833)
!2903 = !DILocation(line: 229, column: 5, scope: !2833)
!2904 = !DILocation(line: 231, column: 13, scope: !2675)
!2905 = !DILocation(line: 231, column: 11, scope: !2675)
!2906 = !DILocation(line: 231, column: 3, scope: !2675)
!2907 = !DILocation(line: 232, column: 1, scope: !2675)
!2908 = distinct !DISubprogram(name: "quotearg_alloc", scope: !251, file: !251, line: 791, type: !2909, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!8, !49, !41, !1749}
!2911 = !{!2912, !2913, !2914}
!2912 = !DILocalVariable(name: "arg", arg: 1, scope: !2908, file: !251, line: 791, type: !49)
!2913 = !DILocalVariable(name: "argsize", arg: 2, scope: !2908, file: !251, line: 791, type: !41)
!2914 = !DILocalVariable(name: "o", arg: 3, scope: !2908, file: !251, line: 792, type: !1749)
!2915 = !DILocation(line: 791, column: 29, scope: !2908)
!2916 = !DILocation(line: 791, column: 41, scope: !2908)
!2917 = !DILocation(line: 792, column: 47, scope: !2908)
!2918 = !DILocalVariable(name: "arg", arg: 1, scope: !2919, file: !251, line: 804, type: !49)
!2919 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !251, file: !251, line: 804, type: !2920, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!8, !49, !41, !702, !1749}
!2922 = !{!2918, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930}
!2923 = !DILocalVariable(name: "argsize", arg: 2, scope: !2919, file: !251, line: 804, type: !41)
!2924 = !DILocalVariable(name: "size", arg: 3, scope: !2919, file: !251, line: 804, type: !702)
!2925 = !DILocalVariable(name: "o", arg: 4, scope: !2919, file: !251, line: 805, type: !1749)
!2926 = !DILocalVariable(name: "p", scope: !2919, file: !251, line: 807, type: !1749)
!2927 = !DILocalVariable(name: "e", scope: !2919, file: !251, line: 808, type: !6)
!2928 = !DILocalVariable(name: "flags", scope: !2919, file: !251, line: 810, type: !6)
!2929 = !DILocalVariable(name: "bufsize", scope: !2919, file: !251, line: 811, type: !41)
!2930 = !DILocalVariable(name: "buf", scope: !2919, file: !251, line: 815, type: !8)
!2931 = !DILocation(line: 804, column: 33, scope: !2919, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 794, column: 10, scope: !2908)
!2933 = !DILocation(line: 804, column: 45, scope: !2919, inlinedAt: !2932)
!2934 = !DILocation(line: 804, column: 62, scope: !2919, inlinedAt: !2932)
!2935 = !DILocation(line: 805, column: 51, scope: !2919, inlinedAt: !2932)
!2936 = !DILocation(line: 807, column: 37, scope: !2919, inlinedAt: !2932)
!2937 = !DILocation(line: 807, column: 33, scope: !2919, inlinedAt: !2932)
!2938 = !DILocation(line: 808, column: 11, scope: !2919, inlinedAt: !2932)
!2939 = !DILocation(line: 808, column: 7, scope: !2919, inlinedAt: !2932)
!2940 = !DILocation(line: 810, column: 18, scope: !2919, inlinedAt: !2932)
!2941 = !DILocation(line: 810, column: 24, scope: !2919, inlinedAt: !2932)
!2942 = !DILocation(line: 810, column: 7, scope: !2919, inlinedAt: !2932)
!2943 = !DILocation(line: 811, column: 69, scope: !2919, inlinedAt: !2932)
!2944 = !DILocation(line: 812, column: 53, scope: !2919, inlinedAt: !2932)
!2945 = !DILocation(line: 813, column: 49, scope: !2919, inlinedAt: !2932)
!2946 = !DILocation(line: 814, column: 49, scope: !2919, inlinedAt: !2932)
!2947 = !DILocation(line: 811, column: 20, scope: !2919, inlinedAt: !2932)
!2948 = !DILocation(line: 814, column: 62, scope: !2919, inlinedAt: !2932)
!2949 = !DILocation(line: 811, column: 10, scope: !2919, inlinedAt: !2932)
!2950 = !DILocalVariable(name: "n", arg: 1, scope: !2951, file: !698, line: 220, type: !41)
!2951 = distinct !DISubprogram(name: "xcharalloc", scope: !698, file: !698, line: 220, type: !2952, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!8, !41}
!2954 = !{!2950}
!2955 = !DILocation(line: 220, column: 20, scope: !2951, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 815, column: 15, scope: !2919, inlinedAt: !2932)
!2957 = !DILocation(line: 222, column: 10, scope: !2951, inlinedAt: !2956)
!2958 = !DILocation(line: 815, column: 9, scope: !2919, inlinedAt: !2932)
!2959 = !DILocation(line: 816, column: 60, scope: !2919, inlinedAt: !2932)
!2960 = !DILocation(line: 818, column: 32, scope: !2919, inlinedAt: !2932)
!2961 = !DILocation(line: 818, column: 47, scope: !2919, inlinedAt: !2932)
!2962 = !DILocation(line: 816, column: 3, scope: !2919, inlinedAt: !2932)
!2963 = !DILocation(line: 819, column: 9, scope: !2919, inlinedAt: !2932)
!2964 = !DILocation(line: 794, column: 3, scope: !2908)
!2965 = !DILocation(line: 804, column: 33, scope: !2919)
!2966 = !DILocation(line: 804, column: 45, scope: !2919)
!2967 = !DILocation(line: 804, column: 62, scope: !2919)
!2968 = !DILocation(line: 805, column: 51, scope: !2919)
!2969 = !DILocation(line: 807, column: 37, scope: !2919)
!2970 = !DILocation(line: 807, column: 33, scope: !2919)
!2971 = !DILocation(line: 808, column: 11, scope: !2919)
!2972 = !DILocation(line: 808, column: 7, scope: !2919)
!2973 = !DILocation(line: 810, column: 18, scope: !2919)
!2974 = !DILocation(line: 810, column: 27, scope: !2919)
!2975 = !DILocation(line: 810, column: 24, scope: !2919)
!2976 = !DILocation(line: 810, column: 7, scope: !2919)
!2977 = !DILocation(line: 811, column: 69, scope: !2919)
!2978 = !DILocation(line: 812, column: 53, scope: !2919)
!2979 = !DILocation(line: 813, column: 49, scope: !2919)
!2980 = !DILocation(line: 814, column: 49, scope: !2919)
!2981 = !DILocation(line: 811, column: 20, scope: !2919)
!2982 = !DILocation(line: 814, column: 62, scope: !2919)
!2983 = !DILocation(line: 811, column: 10, scope: !2919)
!2984 = !DILocation(line: 220, column: 20, scope: !2951, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 815, column: 15, scope: !2919)
!2986 = !DILocation(line: 222, column: 10, scope: !2951, inlinedAt: !2985)
!2987 = !DILocation(line: 815, column: 9, scope: !2919)
!2988 = !DILocation(line: 816, column: 60, scope: !2919)
!2989 = !DILocation(line: 818, column: 32, scope: !2919)
!2990 = !DILocation(line: 818, column: 47, scope: !2919)
!2991 = !DILocation(line: 816, column: 3, scope: !2919)
!2992 = !DILocation(line: 819, column: 9, scope: !2919)
!2993 = !DILocation(line: 820, column: 7, scope: !2919)
!2994 = !DILocation(line: 821, column: 11, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2919, file: !251, line: 820, column: 7)
!2996 = !{!879, !879, i64 0}
!2997 = !DILocation(line: 821, column: 5, scope: !2995)
!2998 = !DILocation(line: 822, column: 3, scope: !2919)
!2999 = distinct !DISubprogram(name: "quotearg_free", scope: !251, file: !251, line: 840, type: !763, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3000)
!3000 = !{!3001, !3002}
!3001 = !DILocalVariable(name: "sv", scope: !2999, file: !251, line: 842, type: !275)
!3002 = !DILocalVariable(name: "i", scope: !2999, file: !251, line: 843, type: !6)
!3003 = !DILocation(line: 842, column: 24, scope: !2999)
!3004 = !DILocation(line: 842, column: 19, scope: !2999)
!3005 = !DILocation(line: 843, column: 7, scope: !2999)
!3006 = !DILocation(line: 844, column: 19, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !3008, file: !251, discriminator: 1)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !251, line: 844, column: 3)
!3009 = distinct !DILexicalBlock(scope: !2999, file: !251, line: 844, column: 3)
!3010 = !DILocation(line: 844, column: 17, scope: !3007)
!3011 = !DILocation(line: 844, column: 3, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3009, file: !251, discriminator: 1)
!3013 = !DILocation(line: 845, column: 17, scope: !3008)
!3014 = !{!3015, !748, i64 8}
!3015 = !{!"slotvec", !879, i64 0, !748, i64 8}
!3016 = !DILocation(line: 845, column: 5, scope: !3008)
!3017 = !DILocation(line: 844, column: 28, scope: !3018)
!3018 = !DILexicalBlockFile(scope: !3008, file: !251, discriminator: 2)
!3019 = distinct !{!3019, !3020, !3021}
!3020 = !DILocation(line: 844, column: 3, scope: !3009)
!3021 = !DILocation(line: 845, column: 20, scope: !3009)
!3022 = !DILocation(line: 846, column: 13, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2999, file: !251, line: 846, column: 7)
!3024 = !DILocation(line: 846, column: 17, scope: !3023)
!3025 = !DILocation(line: 846, column: 7, scope: !2999)
!3026 = !DILocation(line: 848, column: 7, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !251, line: 847, column: 5)
!3028 = !DILocation(line: 849, column: 21, scope: !3027)
!3029 = !{!3015, !879, i64 0}
!3030 = !DILocation(line: 850, column: 20, scope: !3027)
!3031 = !DILocation(line: 851, column: 5, scope: !3027)
!3032 = !DILocation(line: 852, column: 10, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2999, file: !251, line: 852, column: 7)
!3034 = !DILocation(line: 852, column: 7, scope: !2999)
!3035 = !DILocation(line: 854, column: 13, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3033, file: !251, line: 853, column: 5)
!3037 = !DILocation(line: 854, column: 7, scope: !3036)
!3038 = !DILocation(line: 855, column: 15, scope: !3036)
!3039 = !DILocation(line: 856, column: 5, scope: !3036)
!3040 = !DILocation(line: 857, column: 10, scope: !2999)
!3041 = !DILocation(line: 858, column: 1, scope: !2999)
!3042 = distinct !DISubprogram(name: "quotearg_n", scope: !251, file: !251, line: 922, type: !3043, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3045)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!8, !6, !49}
!3045 = !{!3046, !3047}
!3046 = !DILocalVariable(name: "n", arg: 1, scope: !3042, file: !251, line: 922, type: !6)
!3047 = !DILocalVariable(name: "arg", arg: 2, scope: !3042, file: !251, line: 922, type: !49)
!3048 = !DILocation(line: 922, column: 17, scope: !3042)
!3049 = !DILocation(line: 922, column: 32, scope: !3042)
!3050 = !DILocation(line: 924, column: 10, scope: !3042)
!3051 = !DILocation(line: 924, column: 3, scope: !3042)
!3052 = distinct !DISubprogram(name: "quotearg_n_options", scope: !251, file: !251, line: 869, type: !3053, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!8, !6, !49, !41, !1749}
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3061, !3062, !3065, !3067, !3068, !3069}
!3056 = !DILocalVariable(name: "n", arg: 1, scope: !3052, file: !251, line: 869, type: !6)
!3057 = !DILocalVariable(name: "arg", arg: 2, scope: !3052, file: !251, line: 869, type: !49)
!3058 = !DILocalVariable(name: "argsize", arg: 3, scope: !3052, file: !251, line: 869, type: !41)
!3059 = !DILocalVariable(name: "options", arg: 4, scope: !3052, file: !251, line: 870, type: !1749)
!3060 = !DILocalVariable(name: "e", scope: !3052, file: !251, line: 872, type: !6)
!3061 = !DILocalVariable(name: "sv", scope: !3052, file: !251, line: 874, type: !275)
!3062 = !DILocalVariable(name: "preallocated", scope: !3063, file: !251, line: 881, type: !108)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !251, line: 880, column: 5)
!3064 = distinct !DILexicalBlock(scope: !3052, file: !251, line: 879, column: 7)
!3065 = !DILocalVariable(name: "size", scope: !3066, file: !251, line: 894, type: !41)
!3066 = distinct !DILexicalBlock(scope: !3052, file: !251, line: 893, column: 3)
!3067 = !DILocalVariable(name: "val", scope: !3066, file: !251, line: 895, type: !8)
!3068 = !DILocalVariable(name: "flags", scope: !3066, file: !251, line: 897, type: !6)
!3069 = !DILocalVariable(name: "qsize", scope: !3066, file: !251, line: 898, type: !41)
!3070 = !DILocation(line: 869, column: 25, scope: !3052)
!3071 = !DILocation(line: 869, column: 40, scope: !3052)
!3072 = !DILocation(line: 869, column: 52, scope: !3052)
!3073 = !DILocation(line: 870, column: 51, scope: !3052)
!3074 = !DILocation(line: 872, column: 11, scope: !3052)
!3075 = !DILocation(line: 872, column: 7, scope: !3052)
!3076 = !DILocation(line: 874, column: 24, scope: !3052)
!3077 = !DILocation(line: 874, column: 19, scope: !3052)
!3078 = !DILocation(line: 876, column: 9, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3052, file: !251, line: 876, column: 7)
!3080 = !DILocation(line: 876, column: 7, scope: !3052)
!3081 = !DILocation(line: 877, column: 5, scope: !3079)
!3082 = !DILocation(line: 879, column: 7, scope: !3064)
!3083 = !DILocation(line: 879, column: 14, scope: !3064)
!3084 = !DILocation(line: 879, column: 7, scope: !3052)
!3085 = !DILocation(line: 881, column: 31, scope: !3063)
!3086 = !DILocation(line: 883, column: 67, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3063, file: !251, line: 883, column: 11)
!3088 = !DILocation(line: 883, column: 11, scope: !3063)
!3089 = !DILocation(line: 884, column: 9, scope: !3087)
!3090 = !DILocation(line: 886, column: 32, scope: !3091)
!3091 = !DILexicalBlockFile(scope: !3063, file: !251, discriminator: 3)
!3092 = !DILocation(line: 886, column: 61, scope: !3091)
!3093 = !DILocation(line: 886, column: 58, scope: !3091)
!3094 = !DILocation(line: 886, column: 66, scope: !3091)
!3095 = !DILocation(line: 886, column: 22, scope: !3091)
!3096 = !DILocation(line: 886, column: 15, scope: !3091)
!3097 = !DILocation(line: 887, column: 11, scope: !3063)
!3098 = !DILocation(line: 888, column: 15, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3063, file: !251, line: 887, column: 11)
!3100 = !{i64 0, i64 8, !2996, i64 8, i64 8, !747}
!3101 = !DILocation(line: 888, column: 9, scope: !3099)
!3102 = !DILocation(line: 889, column: 20, scope: !3063)
!3103 = !DILocation(line: 889, column: 18, scope: !3063)
!3104 = !DILocation(line: 889, column: 7, scope: !3063)
!3105 = !DILocation(line: 889, column: 38, scope: !3063)
!3106 = !DILocation(line: 889, column: 31, scope: !3063)
!3107 = !DILocation(line: 889, column: 48, scope: !3063)
!3108 = !DILocation(line: 890, column: 14, scope: !3063)
!3109 = !DILocation(line: 891, column: 5, scope: !3063)
!3110 = !DILocation(line: 894, column: 19, scope: !3066)
!3111 = !DILocation(line: 894, column: 25, scope: !3066)
!3112 = !DILocation(line: 894, column: 12, scope: !3066)
!3113 = !DILocation(line: 895, column: 23, scope: !3066)
!3114 = !DILocation(line: 895, column: 11, scope: !3066)
!3115 = !DILocation(line: 897, column: 26, scope: !3066)
!3116 = !DILocation(line: 897, column: 32, scope: !3066)
!3117 = !DILocation(line: 897, column: 9, scope: !3066)
!3118 = !DILocation(line: 899, column: 55, scope: !3066)
!3119 = !DILocation(line: 900, column: 46, scope: !3066)
!3120 = !DILocation(line: 901, column: 55, scope: !3066)
!3121 = !DILocation(line: 902, column: 55, scope: !3066)
!3122 = !DILocation(line: 898, column: 20, scope: !3066)
!3123 = !DILocation(line: 898, column: 12, scope: !3066)
!3124 = !DILocation(line: 904, column: 14, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3066, file: !251, line: 904, column: 9)
!3126 = !DILocation(line: 904, column: 9, scope: !3066)
!3127 = !DILocation(line: 906, column: 35, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3125, file: !251, line: 905, column: 7)
!3129 = !DILocation(line: 906, column: 20, scope: !3128)
!3130 = !DILocation(line: 907, column: 17, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3128, file: !251, line: 907, column: 13)
!3132 = !DILocation(line: 907, column: 13, scope: !3128)
!3133 = !DILocation(line: 908, column: 11, scope: !3131)
!3134 = !DILocation(line: 220, column: 20, scope: !2951, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 909, column: 27, scope: !3128)
!3136 = !DILocation(line: 222, column: 10, scope: !2951, inlinedAt: !3135)
!3137 = !DILocation(line: 909, column: 19, scope: !3128)
!3138 = !DILocation(line: 910, column: 69, scope: !3128)
!3139 = !DILocation(line: 912, column: 44, scope: !3128)
!3140 = !DILocation(line: 913, column: 44, scope: !3128)
!3141 = !DILocation(line: 910, column: 9, scope: !3128)
!3142 = !DILocation(line: 914, column: 7, scope: !3128)
!3143 = !DILocation(line: 916, column: 11, scope: !3066)
!3144 = !DILocation(line: 917, column: 5, scope: !3066)
!3145 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !251, file: !251, line: 928, type: !3146, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!8, !6, !49, !41}
!3148 = !{!3149, !3150, !3151}
!3149 = !DILocalVariable(name: "n", arg: 1, scope: !3145, file: !251, line: 928, type: !6)
!3150 = !DILocalVariable(name: "arg", arg: 2, scope: !3145, file: !251, line: 928, type: !49)
!3151 = !DILocalVariable(name: "argsize", arg: 3, scope: !3145, file: !251, line: 928, type: !41)
!3152 = !DILocation(line: 928, column: 21, scope: !3145)
!3153 = !DILocation(line: 928, column: 36, scope: !3145)
!3154 = !DILocation(line: 928, column: 48, scope: !3145)
!3155 = !DILocation(line: 930, column: 10, scope: !3145)
!3156 = !DILocation(line: 930, column: 3, scope: !3145)
!3157 = distinct !DISubprogram(name: "quotearg", scope: !251, file: !251, line: 934, type: !3158, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!8, !49}
!3160 = !{!3161}
!3161 = !DILocalVariable(name: "arg", arg: 1, scope: !3157, file: !251, line: 934, type: !49)
!3162 = !DILocation(line: 934, column: 23, scope: !3157)
!3163 = !DILocation(line: 922, column: 17, scope: !3042, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 936, column: 10, scope: !3157)
!3165 = !DILocation(line: 922, column: 32, scope: !3042, inlinedAt: !3164)
!3166 = !DILocation(line: 924, column: 10, scope: !3042, inlinedAt: !3164)
!3167 = !DILocation(line: 936, column: 3, scope: !3157)
!3168 = distinct !DISubprogram(name: "quotearg_mem", scope: !251, file: !251, line: 940, type: !3169, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3171)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!8, !49, !41}
!3171 = !{!3172, !3173}
!3172 = !DILocalVariable(name: "arg", arg: 1, scope: !3168, file: !251, line: 940, type: !49)
!3173 = !DILocalVariable(name: "argsize", arg: 2, scope: !3168, file: !251, line: 940, type: !41)
!3174 = !DILocation(line: 940, column: 27, scope: !3168)
!3175 = !DILocation(line: 940, column: 39, scope: !3168)
!3176 = !DILocation(line: 928, column: 21, scope: !3145, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 942, column: 10, scope: !3168)
!3178 = !DILocation(line: 928, column: 36, scope: !3145, inlinedAt: !3177)
!3179 = !DILocation(line: 928, column: 48, scope: !3145, inlinedAt: !3177)
!3180 = !DILocation(line: 930, column: 10, scope: !3145, inlinedAt: !3177)
!3181 = !DILocation(line: 942, column: 3, scope: !3168)
!3182 = distinct !DISubprogram(name: "quotearg_n_style", scope: !251, file: !251, line: 946, type: !3183, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!8, !6, !12, !49}
!3185 = !{!3186, !3187, !3188, !3189}
!3186 = !DILocalVariable(name: "n", arg: 1, scope: !3182, file: !251, line: 946, type: !6)
!3187 = !DILocalVariable(name: "s", arg: 2, scope: !3182, file: !251, line: 946, type: !12)
!3188 = !DILocalVariable(name: "arg", arg: 3, scope: !3182, file: !251, line: 946, type: !49)
!3189 = !DILocalVariable(name: "o", scope: !3182, file: !251, line: 948, type: !1750)
!3190 = !DILocalVariable(name: "o", scope: !3191, file: !251, line: 187, type: !256)
!3191 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !251, file: !251, line: 185, type: !3192, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!256, !12}
!3194 = !{!3195, !3190}
!3195 = !DILocalVariable(name: "style", arg: 1, scope: !3191, file: !251, line: 185, type: !12)
!3196 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3197 = !DILocation(line: 187, column: 26, scope: !3191, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 948, column: 36, scope: !3182)
!3199 = !DILocation(line: 946, column: 23, scope: !3182)
!3200 = !DILocation(line: 946, column: 45, scope: !3182)
!3201 = !DILocation(line: 946, column: 60, scope: !3182)
!3202 = !DILocation(line: 948, column: 3, scope: !3182)
!3203 = !DILocation(line: 948, column: 32, scope: !3182)
!3204 = !DILocation(line: 185, column: 48, scope: !3191, inlinedAt: !3198)
!3205 = !DILocation(line: 187, column: 3, scope: !3191, inlinedAt: !3198)
!3206 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3207 = !DILocation(line: 188, column: 13, scope: !3208, inlinedAt: !3198)
!3208 = distinct !DILexicalBlock(scope: !3191, file: !251, line: 188, column: 7)
!3209 = !DILocation(line: 188, column: 7, scope: !3191, inlinedAt: !3198)
!3210 = !DILocation(line: 189, column: 5, scope: !3208, inlinedAt: !3198)
!3211 = !{!3212}
!3212 = distinct !{!3212, !3213, !"quoting_options_from_style: argument 0"}
!3213 = distinct !{!3213, !"quoting_options_from_style"}
!3214 = !DILocation(line: 191, column: 10, scope: !3191, inlinedAt: !3198)
!3215 = !DILocation(line: 192, column: 1, scope: !3191, inlinedAt: !3198)
!3216 = !DILocation(line: 949, column: 10, scope: !3182)
!3217 = !DILocation(line: 950, column: 1, scope: !3182)
!3218 = !DILocation(line: 949, column: 3, scope: !3182)
!3219 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !251, file: !251, line: 953, type: !3220, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3222)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!8, !6, !12, !49, !41}
!3222 = !{!3223, !3224, !3225, !3226, !3227}
!3223 = !DILocalVariable(name: "n", arg: 1, scope: !3219, file: !251, line: 953, type: !6)
!3224 = !DILocalVariable(name: "s", arg: 2, scope: !3219, file: !251, line: 953, type: !12)
!3225 = !DILocalVariable(name: "arg", arg: 3, scope: !3219, file: !251, line: 954, type: !49)
!3226 = !DILocalVariable(name: "argsize", arg: 4, scope: !3219, file: !251, line: 954, type: !41)
!3227 = !DILocalVariable(name: "o", scope: !3219, file: !251, line: 956, type: !1750)
!3228 = !DILocation(line: 187, column: 26, scope: !3191, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 956, column: 36, scope: !3219)
!3230 = !DILocation(line: 953, column: 27, scope: !3219)
!3231 = !DILocation(line: 953, column: 49, scope: !3219)
!3232 = !DILocation(line: 954, column: 35, scope: !3219)
!3233 = !DILocation(line: 954, column: 47, scope: !3219)
!3234 = !DILocation(line: 956, column: 3, scope: !3219)
!3235 = !DILocation(line: 956, column: 32, scope: !3219)
!3236 = !DILocation(line: 185, column: 48, scope: !3191, inlinedAt: !3229)
!3237 = !DILocation(line: 187, column: 3, scope: !3191, inlinedAt: !3229)
!3238 = !DILocation(line: 188, column: 13, scope: !3208, inlinedAt: !3229)
!3239 = !DILocation(line: 188, column: 7, scope: !3191, inlinedAt: !3229)
!3240 = !DILocation(line: 189, column: 5, scope: !3208, inlinedAt: !3229)
!3241 = !{!3242}
!3242 = distinct !{!3242, !3243, !"quoting_options_from_style: argument 0"}
!3243 = distinct !{!3243, !"quoting_options_from_style"}
!3244 = !DILocation(line: 191, column: 10, scope: !3191, inlinedAt: !3229)
!3245 = !DILocation(line: 192, column: 1, scope: !3191, inlinedAt: !3229)
!3246 = !DILocation(line: 957, column: 10, scope: !3219)
!3247 = !DILocation(line: 958, column: 1, scope: !3219)
!3248 = !DILocation(line: 957, column: 3, scope: !3219)
!3249 = distinct !DISubprogram(name: "quotearg_style", scope: !251, file: !251, line: 961, type: !3250, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3252)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!8, !12, !49}
!3252 = !{!3253, !3254}
!3253 = !DILocalVariable(name: "s", arg: 1, scope: !3249, file: !251, line: 961, type: !12)
!3254 = !DILocalVariable(name: "arg", arg: 2, scope: !3249, file: !251, line: 961, type: !49)
!3255 = !DILocation(line: 187, column: 26, scope: !3191, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 948, column: 36, scope: !3182, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 963, column: 10, scope: !3249)
!3258 = !DILocation(line: 961, column: 36, scope: !3249)
!3259 = !DILocation(line: 961, column: 51, scope: !3249)
!3260 = !DILocation(line: 946, column: 23, scope: !3182, inlinedAt: !3257)
!3261 = !DILocation(line: 946, column: 45, scope: !3182, inlinedAt: !3257)
!3262 = !DILocation(line: 946, column: 60, scope: !3182, inlinedAt: !3257)
!3263 = !DILocation(line: 948, column: 3, scope: !3182, inlinedAt: !3257)
!3264 = !DILocation(line: 948, column: 32, scope: !3182, inlinedAt: !3257)
!3265 = !DILocation(line: 185, column: 48, scope: !3191, inlinedAt: !3256)
!3266 = !DILocation(line: 187, column: 3, scope: !3191, inlinedAt: !3256)
!3267 = !DILocation(line: 188, column: 13, scope: !3208, inlinedAt: !3256)
!3268 = !DILocation(line: 188, column: 7, scope: !3191, inlinedAt: !3256)
!3269 = !DILocation(line: 189, column: 5, scope: !3208, inlinedAt: !3256)
!3270 = !{!3271}
!3271 = distinct !{!3271, !3272, !"quoting_options_from_style: argument 0"}
!3272 = distinct !{!3272, !"quoting_options_from_style"}
!3273 = !DILocation(line: 191, column: 10, scope: !3191, inlinedAt: !3256)
!3274 = !DILocation(line: 192, column: 1, scope: !3191, inlinedAt: !3256)
!3275 = !DILocation(line: 949, column: 10, scope: !3182, inlinedAt: !3257)
!3276 = !DILocation(line: 950, column: 1, scope: !3182, inlinedAt: !3257)
!3277 = !DILocation(line: 963, column: 3, scope: !3249)
!3278 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !251, file: !251, line: 967, type: !3279, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!8, !12, !49, !41}
!3281 = !{!3282, !3283, !3284}
!3282 = !DILocalVariable(name: "s", arg: 1, scope: !3278, file: !251, line: 967, type: !12)
!3283 = !DILocalVariable(name: "arg", arg: 2, scope: !3278, file: !251, line: 967, type: !49)
!3284 = !DILocalVariable(name: "argsize", arg: 3, scope: !3278, file: !251, line: 967, type: !41)
!3285 = !DILocation(line: 187, column: 26, scope: !3191, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 956, column: 36, scope: !3219, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 969, column: 10, scope: !3278)
!3288 = !DILocation(line: 967, column: 40, scope: !3278)
!3289 = !DILocation(line: 967, column: 55, scope: !3278)
!3290 = !DILocation(line: 967, column: 67, scope: !3278)
!3291 = !DILocation(line: 953, column: 27, scope: !3219, inlinedAt: !3287)
!3292 = !DILocation(line: 953, column: 49, scope: !3219, inlinedAt: !3287)
!3293 = !DILocation(line: 954, column: 35, scope: !3219, inlinedAt: !3287)
!3294 = !DILocation(line: 954, column: 47, scope: !3219, inlinedAt: !3287)
!3295 = !DILocation(line: 956, column: 3, scope: !3219, inlinedAt: !3287)
!3296 = !DILocation(line: 956, column: 32, scope: !3219, inlinedAt: !3287)
!3297 = !DILocation(line: 185, column: 48, scope: !3191, inlinedAt: !3286)
!3298 = !DILocation(line: 187, column: 3, scope: !3191, inlinedAt: !3286)
!3299 = !DILocation(line: 188, column: 13, scope: !3208, inlinedAt: !3286)
!3300 = !DILocation(line: 188, column: 7, scope: !3191, inlinedAt: !3286)
!3301 = !DILocation(line: 189, column: 5, scope: !3208, inlinedAt: !3286)
!3302 = !{!3303}
!3303 = distinct !{!3303, !3304, !"quoting_options_from_style: argument 0"}
!3304 = distinct !{!3304, !"quoting_options_from_style"}
!3305 = !DILocation(line: 191, column: 10, scope: !3191, inlinedAt: !3286)
!3306 = !DILocation(line: 192, column: 1, scope: !3191, inlinedAt: !3286)
!3307 = !DILocation(line: 957, column: 10, scope: !3219, inlinedAt: !3287)
!3308 = !DILocation(line: 958, column: 1, scope: !3219, inlinedAt: !3287)
!3309 = !DILocation(line: 969, column: 3, scope: !3278)
!3310 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !251, file: !251, line: 973, type: !3311, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!8, !49, !41, !9}
!3313 = !{!3314, !3315, !3316, !3317}
!3314 = !DILocalVariable(name: "arg", arg: 1, scope: !3310, file: !251, line: 973, type: !49)
!3315 = !DILocalVariable(name: "argsize", arg: 2, scope: !3310, file: !251, line: 973, type: !41)
!3316 = !DILocalVariable(name: "ch", arg: 3, scope: !3310, file: !251, line: 973, type: !9)
!3317 = !DILocalVariable(name: "options", scope: !3310, file: !251, line: 975, type: !256)
!3318 = !DILocation(line: 973, column: 32, scope: !3310)
!3319 = !DILocation(line: 973, column: 44, scope: !3310)
!3320 = !DILocation(line: 973, column: 58, scope: !3310)
!3321 = !DILocation(line: 975, column: 3, scope: !3310)
!3322 = !DILocation(line: 976, column: 13, scope: !3310)
!3323 = !{i64 0, i64 4, !916, i64 4, i64 4, !870, i64 8, i64 32, !916, i64 40, i64 8, !747, i64 48, i64 8, !747}
!3324 = !DILocation(line: 975, column: 26, scope: !3310)
!3325 = !DILocation(line: 144, column: 43, scope: !1773, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 977, column: 3, scope: !3310)
!3327 = !DILocation(line: 144, column: 51, scope: !1773, inlinedAt: !3326)
!3328 = !DILocation(line: 144, column: 58, scope: !1773, inlinedAt: !3326)
!3329 = !DILocation(line: 146, column: 17, scope: !1773, inlinedAt: !3326)
!3330 = !DILocation(line: 148, column: 62, scope: !1791, inlinedAt: !3326)
!3331 = !DILocation(line: 148, column: 57, scope: !1791, inlinedAt: !3326)
!3332 = !DILocation(line: 147, column: 17, scope: !1773, inlinedAt: !3326)
!3333 = !DILocation(line: 149, column: 18, scope: !1773, inlinedAt: !3326)
!3334 = !DILocation(line: 149, column: 15, scope: !1773, inlinedAt: !3326)
!3335 = !DILocation(line: 149, column: 7, scope: !1773, inlinedAt: !3326)
!3336 = !DILocation(line: 150, column: 12, scope: !1773, inlinedAt: !3326)
!3337 = !DILocation(line: 150, column: 15, scope: !1773, inlinedAt: !3326)
!3338 = !DILocation(line: 150, column: 25, scope: !1773, inlinedAt: !3326)
!3339 = !DILocation(line: 150, column: 7, scope: !1773, inlinedAt: !3326)
!3340 = !DILocation(line: 151, column: 18, scope: !1773, inlinedAt: !3326)
!3341 = !DILocation(line: 151, column: 23, scope: !1773, inlinedAt: !3326)
!3342 = !DILocation(line: 151, column: 6, scope: !1773, inlinedAt: !3326)
!3343 = !DILocation(line: 978, column: 10, scope: !3310)
!3344 = !DILocation(line: 979, column: 1, scope: !3310)
!3345 = !DILocation(line: 978, column: 3, scope: !3310)
!3346 = distinct !DISubprogram(name: "quotearg_char", scope: !251, file: !251, line: 982, type: !3347, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3349)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!8, !49, !9}
!3349 = !{!3350, !3351}
!3350 = !DILocalVariable(name: "arg", arg: 1, scope: !3346, file: !251, line: 982, type: !49)
!3351 = !DILocalVariable(name: "ch", arg: 2, scope: !3346, file: !251, line: 982, type: !9)
!3352 = !DILocation(line: 982, column: 28, scope: !3346)
!3353 = !DILocation(line: 982, column: 38, scope: !3346)
!3354 = !DILocation(line: 973, column: 32, scope: !3310, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 984, column: 10, scope: !3346)
!3356 = !DILocation(line: 973, column: 44, scope: !3310, inlinedAt: !3355)
!3357 = !DILocation(line: 973, column: 58, scope: !3310, inlinedAt: !3355)
!3358 = !DILocation(line: 975, column: 3, scope: !3310, inlinedAt: !3355)
!3359 = !DILocation(line: 976, column: 13, scope: !3310, inlinedAt: !3355)
!3360 = !DILocation(line: 975, column: 26, scope: !3310, inlinedAt: !3355)
!3361 = !DILocation(line: 144, column: 43, scope: !1773, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 977, column: 3, scope: !3310, inlinedAt: !3355)
!3363 = !DILocation(line: 144, column: 51, scope: !1773, inlinedAt: !3362)
!3364 = !DILocation(line: 144, column: 58, scope: !1773, inlinedAt: !3362)
!3365 = !DILocation(line: 146, column: 17, scope: !1773, inlinedAt: !3362)
!3366 = !DILocation(line: 148, column: 62, scope: !1791, inlinedAt: !3362)
!3367 = !DILocation(line: 148, column: 57, scope: !1791, inlinedAt: !3362)
!3368 = !DILocation(line: 147, column: 17, scope: !1773, inlinedAt: !3362)
!3369 = !DILocation(line: 149, column: 18, scope: !1773, inlinedAt: !3362)
!3370 = !DILocation(line: 149, column: 15, scope: !1773, inlinedAt: !3362)
!3371 = !DILocation(line: 149, column: 7, scope: !1773, inlinedAt: !3362)
!3372 = !DILocation(line: 150, column: 12, scope: !1773, inlinedAt: !3362)
!3373 = !DILocation(line: 150, column: 15, scope: !1773, inlinedAt: !3362)
!3374 = !DILocation(line: 150, column: 25, scope: !1773, inlinedAt: !3362)
!3375 = !DILocation(line: 150, column: 7, scope: !1773, inlinedAt: !3362)
!3376 = !DILocation(line: 151, column: 18, scope: !1773, inlinedAt: !3362)
!3377 = !DILocation(line: 151, column: 23, scope: !1773, inlinedAt: !3362)
!3378 = !DILocation(line: 151, column: 6, scope: !1773, inlinedAt: !3362)
!3379 = !DILocation(line: 978, column: 10, scope: !3310, inlinedAt: !3355)
!3380 = !DILocation(line: 979, column: 1, scope: !3310, inlinedAt: !3355)
!3381 = !DILocation(line: 984, column: 3, scope: !3346)
!3382 = distinct !DISubprogram(name: "quotearg_colon", scope: !251, file: !251, line: 988, type: !3158, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3383)
!3383 = !{!3384}
!3384 = !DILocalVariable(name: "arg", arg: 1, scope: !3382, file: !251, line: 988, type: !49)
!3385 = !DILocation(line: 988, column: 29, scope: !3382)
!3386 = !DILocation(line: 982, column: 28, scope: !3346, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 990, column: 10, scope: !3382)
!3388 = !DILocation(line: 982, column: 38, scope: !3346, inlinedAt: !3387)
!3389 = !DILocation(line: 973, column: 32, scope: !3310, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 984, column: 10, scope: !3346, inlinedAt: !3387)
!3391 = !DILocation(line: 973, column: 44, scope: !3310, inlinedAt: !3390)
!3392 = !DILocation(line: 973, column: 58, scope: !3310, inlinedAt: !3390)
!3393 = !DILocation(line: 975, column: 3, scope: !3310, inlinedAt: !3390)
!3394 = !DILocation(line: 976, column: 13, scope: !3310, inlinedAt: !3390)
!3395 = !DILocation(line: 975, column: 26, scope: !3310, inlinedAt: !3390)
!3396 = !DILocation(line: 144, column: 43, scope: !1773, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 977, column: 3, scope: !3310, inlinedAt: !3390)
!3398 = !DILocation(line: 144, column: 51, scope: !1773, inlinedAt: !3397)
!3399 = !DILocation(line: 144, column: 58, scope: !1773, inlinedAt: !3397)
!3400 = !DILocation(line: 146, column: 17, scope: !1773, inlinedAt: !3397)
!3401 = !DILocation(line: 148, column: 57, scope: !1791, inlinedAt: !3397)
!3402 = !DILocation(line: 147, column: 17, scope: !1773, inlinedAt: !3397)
!3403 = !DILocation(line: 149, column: 7, scope: !1773, inlinedAt: !3397)
!3404 = !DILocation(line: 150, column: 12, scope: !1773, inlinedAt: !3397)
!3405 = !DILocation(line: 151, column: 6, scope: !1773, inlinedAt: !3397)
!3406 = !DILocation(line: 978, column: 10, scope: !3310, inlinedAt: !3390)
!3407 = !DILocation(line: 979, column: 1, scope: !3310, inlinedAt: !3390)
!3408 = !DILocation(line: 990, column: 3, scope: !3382)
!3409 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !251, file: !251, line: 994, type: !3169, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3410)
!3410 = !{!3411, !3412}
!3411 = !DILocalVariable(name: "arg", arg: 1, scope: !3409, file: !251, line: 994, type: !49)
!3412 = !DILocalVariable(name: "argsize", arg: 2, scope: !3409, file: !251, line: 994, type: !41)
!3413 = !DILocation(line: 994, column: 33, scope: !3409)
!3414 = !DILocation(line: 994, column: 45, scope: !3409)
!3415 = !DILocation(line: 973, column: 32, scope: !3310, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 996, column: 10, scope: !3409)
!3417 = !DILocation(line: 973, column: 44, scope: !3310, inlinedAt: !3416)
!3418 = !DILocation(line: 973, column: 58, scope: !3310, inlinedAt: !3416)
!3419 = !DILocation(line: 975, column: 3, scope: !3310, inlinedAt: !3416)
!3420 = !DILocation(line: 976, column: 13, scope: !3310, inlinedAt: !3416)
!3421 = !DILocation(line: 975, column: 26, scope: !3310, inlinedAt: !3416)
!3422 = !DILocation(line: 144, column: 43, scope: !1773, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 977, column: 3, scope: !3310, inlinedAt: !3416)
!3424 = !DILocation(line: 144, column: 51, scope: !1773, inlinedAt: !3423)
!3425 = !DILocation(line: 144, column: 58, scope: !1773, inlinedAt: !3423)
!3426 = !DILocation(line: 146, column: 17, scope: !1773, inlinedAt: !3423)
!3427 = !DILocation(line: 148, column: 57, scope: !1791, inlinedAt: !3423)
!3428 = !DILocation(line: 147, column: 17, scope: !1773, inlinedAt: !3423)
!3429 = !DILocation(line: 149, column: 7, scope: !1773, inlinedAt: !3423)
!3430 = !DILocation(line: 150, column: 12, scope: !1773, inlinedAt: !3423)
!3431 = !DILocation(line: 151, column: 6, scope: !1773, inlinedAt: !3423)
!3432 = !DILocation(line: 978, column: 10, scope: !3310, inlinedAt: !3416)
!3433 = !DILocation(line: 979, column: 1, scope: !3310, inlinedAt: !3416)
!3434 = !DILocation(line: 996, column: 3, scope: !3409)
!3435 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !251, file: !251, line: 1000, type: !3183, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3436)
!3436 = !{!3437, !3438, !3439, !3440}
!3437 = !DILocalVariable(name: "n", arg: 1, scope: !3435, file: !251, line: 1000, type: !6)
!3438 = !DILocalVariable(name: "s", arg: 2, scope: !3435, file: !251, line: 1000, type: !12)
!3439 = !DILocalVariable(name: "arg", arg: 3, scope: !3435, file: !251, line: 1000, type: !49)
!3440 = !DILocalVariable(name: "options", scope: !3435, file: !251, line: 1002, type: !256)
!3441 = !DILocation(line: 187, column: 26, scope: !3191, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 1003, column: 13, scope: !3435)
!3443 = !DILocation(line: 1000, column: 29, scope: !3435)
!3444 = !DILocation(line: 1000, column: 51, scope: !3435)
!3445 = !DILocation(line: 1000, column: 66, scope: !3435)
!3446 = !DILocation(line: 1002, column: 3, scope: !3435)
!3447 = !DILocation(line: 185, column: 48, scope: !3191, inlinedAt: !3442)
!3448 = !DILocation(line: 187, column: 3, scope: !3191, inlinedAt: !3442)
!3449 = !DILocation(line: 188, column: 13, scope: !3208, inlinedAt: !3442)
!3450 = !DILocation(line: 188, column: 7, scope: !3191, inlinedAt: !3442)
!3451 = !DILocation(line: 189, column: 5, scope: !3208, inlinedAt: !3442)
!3452 = !{!3453}
!3453 = distinct !{!3453, !3454, !"quoting_options_from_style: argument 0"}
!3454 = distinct !{!3454, !"quoting_options_from_style"}
!3455 = !DILocation(line: 191, column: 10, scope: !3191, inlinedAt: !3442)
!3456 = !DILocation(line: 192, column: 1, scope: !3191, inlinedAt: !3442)
!3457 = !DILocation(line: 1003, column: 13, scope: !3435)
!3458 = !DILocation(line: 1002, column: 26, scope: !3435)
!3459 = !DILocation(line: 144, column: 43, scope: !1773, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 1004, column: 3, scope: !3435)
!3461 = !DILocation(line: 144, column: 51, scope: !1773, inlinedAt: !3460)
!3462 = !DILocation(line: 144, column: 58, scope: !1773, inlinedAt: !3460)
!3463 = !DILocation(line: 146, column: 17, scope: !1773, inlinedAt: !3460)
!3464 = !DILocation(line: 148, column: 57, scope: !1791, inlinedAt: !3460)
!3465 = !DILocation(line: 147, column: 17, scope: !1773, inlinedAt: !3460)
!3466 = !DILocation(line: 149, column: 7, scope: !1773, inlinedAt: !3460)
!3467 = !DILocation(line: 150, column: 12, scope: !1773, inlinedAt: !3460)
!3468 = !DILocation(line: 151, column: 6, scope: !1773, inlinedAt: !3460)
!3469 = !DILocation(line: 1005, column: 10, scope: !3435)
!3470 = !DILocation(line: 1006, column: 1, scope: !3435)
!3471 = !DILocation(line: 1005, column: 3, scope: !3435)
!3472 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !251, file: !251, line: 1009, type: !3473, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!8, !6, !49, !49, !49}
!3475 = !{!3476, !3477, !3478, !3479}
!3476 = !DILocalVariable(name: "n", arg: 1, scope: !3472, file: !251, line: 1009, type: !6)
!3477 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3472, file: !251, line: 1009, type: !49)
!3478 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3472, file: !251, line: 1010, type: !49)
!3479 = !DILocalVariable(name: "arg", arg: 4, scope: !3472, file: !251, line: 1010, type: !49)
!3480 = !DILocation(line: 1009, column: 24, scope: !3472)
!3481 = !DILocation(line: 1009, column: 39, scope: !3472)
!3482 = !DILocation(line: 1010, column: 32, scope: !3472)
!3483 = !DILocation(line: 1010, column: 57, scope: !3472)
!3484 = !DILocalVariable(name: "n", arg: 1, scope: !3485, file: !251, line: 1017, type: !6)
!3485 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !251, file: !251, line: 1017, type: !3486, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3488)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!8, !6, !49, !49, !49, !41}
!3488 = !{!3484, !3489, !3490, !3491, !3492, !3493}
!3489 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3485, file: !251, line: 1017, type: !49)
!3490 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3485, file: !251, line: 1018, type: !49)
!3491 = !DILocalVariable(name: "arg", arg: 4, scope: !3485, file: !251, line: 1019, type: !49)
!3492 = !DILocalVariable(name: "argsize", arg: 5, scope: !3485, file: !251, line: 1019, type: !41)
!3493 = !DILocalVariable(name: "o", scope: !3485, file: !251, line: 1021, type: !256)
!3494 = !DILocation(line: 1017, column: 28, scope: !3485, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 1012, column: 10, scope: !3472)
!3496 = !DILocation(line: 1017, column: 43, scope: !3485, inlinedAt: !3495)
!3497 = !DILocation(line: 1018, column: 36, scope: !3485, inlinedAt: !3495)
!3498 = !DILocation(line: 1019, column: 36, scope: !3485, inlinedAt: !3495)
!3499 = !DILocation(line: 1019, column: 48, scope: !3485, inlinedAt: !3495)
!3500 = !DILocation(line: 1021, column: 3, scope: !3485, inlinedAt: !3495)
!3501 = !DILocation(line: 1021, column: 30, scope: !3485, inlinedAt: !3495)
!3502 = !DILocation(line: 1021, column: 26, scope: !3485, inlinedAt: !3495)
!3503 = !DILocation(line: 171, column: 45, scope: !1823, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 1022, column: 3, scope: !3485, inlinedAt: !3495)
!3505 = !DILocation(line: 172, column: 33, scope: !1823, inlinedAt: !3504)
!3506 = !DILocation(line: 172, column: 57, scope: !1823, inlinedAt: !3504)
!3507 = !DILocation(line: 176, column: 6, scope: !1823, inlinedAt: !3504)
!3508 = !DILocation(line: 176, column: 12, scope: !1823, inlinedAt: !3504)
!3509 = !DILocation(line: 177, column: 8, scope: !1839, inlinedAt: !3504)
!3510 = !DILocation(line: 177, column: 23, scope: !1841, inlinedAt: !3504)
!3511 = !DILocation(line: 177, column: 19, scope: !1839, inlinedAt: !3504)
!3512 = !DILocation(line: 178, column: 5, scope: !1839, inlinedAt: !3504)
!3513 = !DILocation(line: 179, column: 6, scope: !1823, inlinedAt: !3504)
!3514 = !DILocation(line: 179, column: 17, scope: !1823, inlinedAt: !3504)
!3515 = !DILocation(line: 180, column: 6, scope: !1823, inlinedAt: !3504)
!3516 = !DILocation(line: 180, column: 18, scope: !1823, inlinedAt: !3504)
!3517 = !DILocation(line: 1023, column: 10, scope: !3485, inlinedAt: !3495)
!3518 = !DILocation(line: 1024, column: 1, scope: !3485, inlinedAt: !3495)
!3519 = !DILocation(line: 1012, column: 3, scope: !3472)
!3520 = !DILocation(line: 1017, column: 28, scope: !3485)
!3521 = !DILocation(line: 1017, column: 43, scope: !3485)
!3522 = !DILocation(line: 1018, column: 36, scope: !3485)
!3523 = !DILocation(line: 1019, column: 36, scope: !3485)
!3524 = !DILocation(line: 1019, column: 48, scope: !3485)
!3525 = !DILocation(line: 1021, column: 3, scope: !3485)
!3526 = !DILocation(line: 1021, column: 30, scope: !3485)
!3527 = !DILocation(line: 1021, column: 26, scope: !3485)
!3528 = !DILocation(line: 171, column: 45, scope: !1823, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 1022, column: 3, scope: !3485)
!3530 = !DILocation(line: 172, column: 33, scope: !1823, inlinedAt: !3529)
!3531 = !DILocation(line: 172, column: 57, scope: !1823, inlinedAt: !3529)
!3532 = !DILocation(line: 176, column: 6, scope: !1823, inlinedAt: !3529)
!3533 = !DILocation(line: 176, column: 12, scope: !1823, inlinedAt: !3529)
!3534 = !DILocation(line: 177, column: 8, scope: !1839, inlinedAt: !3529)
!3535 = !DILocation(line: 177, column: 23, scope: !1841, inlinedAt: !3529)
!3536 = !DILocation(line: 177, column: 19, scope: !1839, inlinedAt: !3529)
!3537 = !DILocation(line: 178, column: 5, scope: !1839, inlinedAt: !3529)
!3538 = !DILocation(line: 179, column: 6, scope: !1823, inlinedAt: !3529)
!3539 = !DILocation(line: 179, column: 17, scope: !1823, inlinedAt: !3529)
!3540 = !DILocation(line: 180, column: 6, scope: !1823, inlinedAt: !3529)
!3541 = !DILocation(line: 180, column: 18, scope: !1823, inlinedAt: !3529)
!3542 = !DILocation(line: 1023, column: 10, scope: !3485)
!3543 = !DILocation(line: 1024, column: 1, scope: !3485)
!3544 = !DILocation(line: 1023, column: 3, scope: !3485)
!3545 = distinct !DISubprogram(name: "quotearg_custom", scope: !251, file: !251, line: 1027, type: !3546, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!8, !49, !49, !49}
!3548 = !{!3549, !3550, !3551}
!3549 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3545, file: !251, line: 1027, type: !49)
!3550 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3545, file: !251, line: 1027, type: !49)
!3551 = !DILocalVariable(name: "arg", arg: 3, scope: !3545, file: !251, line: 1028, type: !49)
!3552 = !DILocation(line: 1027, column: 30, scope: !3545)
!3553 = !DILocation(line: 1027, column: 54, scope: !3545)
!3554 = !DILocation(line: 1028, column: 30, scope: !3545)
!3555 = !DILocation(line: 1009, column: 24, scope: !3472, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 1030, column: 10, scope: !3545)
!3557 = !DILocation(line: 1009, column: 39, scope: !3472, inlinedAt: !3556)
!3558 = !DILocation(line: 1010, column: 32, scope: !3472, inlinedAt: !3556)
!3559 = !DILocation(line: 1010, column: 57, scope: !3472, inlinedAt: !3556)
!3560 = !DILocation(line: 1017, column: 28, scope: !3485, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 1012, column: 10, scope: !3472, inlinedAt: !3556)
!3562 = !DILocation(line: 1017, column: 43, scope: !3485, inlinedAt: !3561)
!3563 = !DILocation(line: 1018, column: 36, scope: !3485, inlinedAt: !3561)
!3564 = !DILocation(line: 1019, column: 36, scope: !3485, inlinedAt: !3561)
!3565 = !DILocation(line: 1019, column: 48, scope: !3485, inlinedAt: !3561)
!3566 = !DILocation(line: 1021, column: 3, scope: !3485, inlinedAt: !3561)
!3567 = !DILocation(line: 1021, column: 30, scope: !3485, inlinedAt: !3561)
!3568 = !DILocation(line: 1021, column: 26, scope: !3485, inlinedAt: !3561)
!3569 = !DILocation(line: 171, column: 45, scope: !1823, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 1022, column: 3, scope: !3485, inlinedAt: !3561)
!3571 = !DILocation(line: 172, column: 33, scope: !1823, inlinedAt: !3570)
!3572 = !DILocation(line: 172, column: 57, scope: !1823, inlinedAt: !3570)
!3573 = !DILocation(line: 176, column: 6, scope: !1823, inlinedAt: !3570)
!3574 = !DILocation(line: 176, column: 12, scope: !1823, inlinedAt: !3570)
!3575 = !DILocation(line: 177, column: 8, scope: !1839, inlinedAt: !3570)
!3576 = !DILocation(line: 177, column: 23, scope: !1841, inlinedAt: !3570)
!3577 = !DILocation(line: 177, column: 19, scope: !1839, inlinedAt: !3570)
!3578 = !DILocation(line: 178, column: 5, scope: !1839, inlinedAt: !3570)
!3579 = !DILocation(line: 179, column: 6, scope: !1823, inlinedAt: !3570)
!3580 = !DILocation(line: 179, column: 17, scope: !1823, inlinedAt: !3570)
!3581 = !DILocation(line: 180, column: 6, scope: !1823, inlinedAt: !3570)
!3582 = !DILocation(line: 180, column: 18, scope: !1823, inlinedAt: !3570)
!3583 = !DILocation(line: 1023, column: 10, scope: !3485, inlinedAt: !3561)
!3584 = !DILocation(line: 1024, column: 1, scope: !3485, inlinedAt: !3561)
!3585 = !DILocation(line: 1030, column: 3, scope: !3545)
!3586 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !251, file: !251, line: 1034, type: !3587, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!8, !49, !49, !49, !41}
!3589 = !{!3590, !3591, !3592, !3593}
!3590 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3586, file: !251, line: 1034, type: !49)
!3591 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3586, file: !251, line: 1034, type: !49)
!3592 = !DILocalVariable(name: "arg", arg: 3, scope: !3586, file: !251, line: 1035, type: !49)
!3593 = !DILocalVariable(name: "argsize", arg: 4, scope: !3586, file: !251, line: 1035, type: !41)
!3594 = !DILocation(line: 1034, column: 34, scope: !3586)
!3595 = !DILocation(line: 1034, column: 58, scope: !3586)
!3596 = !DILocation(line: 1035, column: 34, scope: !3586)
!3597 = !DILocation(line: 1035, column: 46, scope: !3586)
!3598 = !DILocation(line: 1017, column: 28, scope: !3485, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 1037, column: 10, scope: !3586)
!3600 = !DILocation(line: 1017, column: 43, scope: !3485, inlinedAt: !3599)
!3601 = !DILocation(line: 1018, column: 36, scope: !3485, inlinedAt: !3599)
!3602 = !DILocation(line: 1019, column: 36, scope: !3485, inlinedAt: !3599)
!3603 = !DILocation(line: 1019, column: 48, scope: !3485, inlinedAt: !3599)
!3604 = !DILocation(line: 1021, column: 3, scope: !3485, inlinedAt: !3599)
!3605 = !DILocation(line: 1021, column: 30, scope: !3485, inlinedAt: !3599)
!3606 = !DILocation(line: 1021, column: 26, scope: !3485, inlinedAt: !3599)
!3607 = !DILocation(line: 171, column: 45, scope: !1823, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 1022, column: 3, scope: !3485, inlinedAt: !3599)
!3609 = !DILocation(line: 172, column: 33, scope: !1823, inlinedAt: !3608)
!3610 = !DILocation(line: 172, column: 57, scope: !1823, inlinedAt: !3608)
!3611 = !DILocation(line: 176, column: 6, scope: !1823, inlinedAt: !3608)
!3612 = !DILocation(line: 176, column: 12, scope: !1823, inlinedAt: !3608)
!3613 = !DILocation(line: 177, column: 8, scope: !1839, inlinedAt: !3608)
!3614 = !DILocation(line: 177, column: 23, scope: !1841, inlinedAt: !3608)
!3615 = !DILocation(line: 177, column: 19, scope: !1839, inlinedAt: !3608)
!3616 = !DILocation(line: 178, column: 5, scope: !1839, inlinedAt: !3608)
!3617 = !DILocation(line: 179, column: 6, scope: !1823, inlinedAt: !3608)
!3618 = !DILocation(line: 179, column: 17, scope: !1823, inlinedAt: !3608)
!3619 = !DILocation(line: 180, column: 6, scope: !1823, inlinedAt: !3608)
!3620 = !DILocation(line: 180, column: 18, scope: !1823, inlinedAt: !3608)
!3621 = !DILocation(line: 1023, column: 10, scope: !3485, inlinedAt: !3599)
!3622 = !DILocation(line: 1024, column: 1, scope: !3485, inlinedAt: !3599)
!3623 = !DILocation(line: 1037, column: 3, scope: !3586)
!3624 = distinct !DISubprogram(name: "quote_n_mem", scope: !251, file: !251, line: 1052, type: !3625, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!49, !6, !49, !41}
!3627 = !{!3628, !3629, !3630}
!3628 = !DILocalVariable(name: "n", arg: 1, scope: !3624, file: !251, line: 1052, type: !6)
!3629 = !DILocalVariable(name: "arg", arg: 2, scope: !3624, file: !251, line: 1052, type: !49)
!3630 = !DILocalVariable(name: "argsize", arg: 3, scope: !3624, file: !251, line: 1052, type: !41)
!3631 = !DILocation(line: 1052, column: 18, scope: !3624)
!3632 = !DILocation(line: 1052, column: 33, scope: !3624)
!3633 = !DILocation(line: 1052, column: 45, scope: !3624)
!3634 = !DILocation(line: 1054, column: 10, scope: !3624)
!3635 = !DILocation(line: 1054, column: 3, scope: !3624)
!3636 = distinct !DISubprogram(name: "quote_mem", scope: !251, file: !251, line: 1058, type: !3637, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3639)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!49, !49, !41}
!3639 = !{!3640, !3641}
!3640 = !DILocalVariable(name: "arg", arg: 1, scope: !3636, file: !251, line: 1058, type: !49)
!3641 = !DILocalVariable(name: "argsize", arg: 2, scope: !3636, file: !251, line: 1058, type: !41)
!3642 = !DILocation(line: 1058, column: 24, scope: !3636)
!3643 = !DILocation(line: 1058, column: 36, scope: !3636)
!3644 = !DILocation(line: 1052, column: 18, scope: !3624, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 1060, column: 10, scope: !3636)
!3646 = !DILocation(line: 1052, column: 33, scope: !3624, inlinedAt: !3645)
!3647 = !DILocation(line: 1052, column: 45, scope: !3624, inlinedAt: !3645)
!3648 = !DILocation(line: 1054, column: 10, scope: !3624, inlinedAt: !3645)
!3649 = !DILocation(line: 1060, column: 3, scope: !3636)
!3650 = distinct !DISubprogram(name: "quote_n", scope: !251, file: !251, line: 1064, type: !3651, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!49, !6, !49}
!3653 = !{!3654, !3655}
!3654 = !DILocalVariable(name: "n", arg: 1, scope: !3650, file: !251, line: 1064, type: !6)
!3655 = !DILocalVariable(name: "arg", arg: 2, scope: !3650, file: !251, line: 1064, type: !49)
!3656 = !DILocation(line: 1064, column: 14, scope: !3650)
!3657 = !DILocation(line: 1064, column: 29, scope: !3650)
!3658 = !DILocation(line: 1052, column: 18, scope: !3624, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 1066, column: 10, scope: !3650)
!3660 = !DILocation(line: 1052, column: 33, scope: !3624, inlinedAt: !3659)
!3661 = !DILocation(line: 1052, column: 45, scope: !3624, inlinedAt: !3659)
!3662 = !DILocation(line: 1054, column: 10, scope: !3624, inlinedAt: !3659)
!3663 = !DILocation(line: 1066, column: 3, scope: !3650)
!3664 = distinct !DISubprogram(name: "quote", scope: !251, file: !251, line: 1070, type: !3665, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !223, variables: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!49, !49}
!3667 = !{!3668}
!3668 = !DILocalVariable(name: "arg", arg: 1, scope: !3664, file: !251, line: 1070, type: !49)
!3669 = !DILocation(line: 1070, column: 20, scope: !3664)
!3670 = !DILocation(line: 1064, column: 14, scope: !3650, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 1072, column: 10, scope: !3664)
!3672 = !DILocation(line: 1064, column: 29, scope: !3650, inlinedAt: !3671)
!3673 = !DILocation(line: 1052, column: 18, scope: !3624, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 1066, column: 10, scope: !3650, inlinedAt: !3671)
!3675 = !DILocation(line: 1052, column: 33, scope: !3624, inlinedAt: !3674)
!3676 = !DILocation(line: 1052, column: 45, scope: !3624, inlinedAt: !3674)
!3677 = !DILocation(line: 1054, column: 10, scope: !3624, inlinedAt: !3674)
!3678 = !DILocation(line: 1072, column: 3, scope: !3664)
!3679 = !DILocation(line: 56, column: 14, scope: !656)
!3680 = !DILocation(line: 56, column: 30, scope: !656)
!3681 = !DILocation(line: 56, column: 42, scope: !656)
!3682 = !DILocation(line: 64, column: 3, scope: !656)
!3683 = !DILocation(line: 66, column: 24, scope: !664)
!3684 = !DILocation(line: 66, column: 15, scope: !664)
!3685 = !DILocation(line: 68, column: 13, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !664, file: !655, line: 68, column: 11)
!3687 = !DILocation(line: 68, column: 11, scope: !664)
!3688 = !DILocation(line: 70, column: 16, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3686, file: !655, line: 70, column: 16)
!3690 = !DILocation(line: 70, column: 16, scope: !3686)
!3691 = distinct !{!3691, !3692, !3693}
!3692 = !DILocation(line: 64, column: 3, scope: !666)
!3693 = !DILocation(line: 76, column: 5, scope: !666)
!3694 = !DILocation(line: 72, column: 22, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3689, file: !655, line: 72, column: 16)
!3696 = !DILocation(line: 72, column: 54, scope: !3697)
!3697 = !DILexicalBlockFile(scope: !3695, file: !655, discriminator: 1)
!3698 = !DILocation(line: 72, column: 32, scope: !3695)
!3699 = !DILocation(line: 77, column: 1, scope: !656)
!3700 = !DILocation(line: 56, column: 14, scope: !675)
!3701 = !DILocation(line: 56, column: 30, scope: !675)
!3702 = !DILocation(line: 56, column: 42, scope: !675)
!3703 = !DILocation(line: 64, column: 3, scope: !675)
!3704 = !DILocation(line: 66, column: 24, scope: !683)
!3705 = !DILocation(line: 66, column: 15, scope: !683)
!3706 = !DILocation(line: 68, column: 13, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !683, file: !652, line: 68, column: 11)
!3708 = !DILocation(line: 68, column: 11, scope: !683)
!3709 = !DILocation(line: 70, column: 16, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3707, file: !652, line: 70, column: 16)
!3711 = !DILocation(line: 70, column: 16, scope: !3707)
!3712 = distinct !{!3712, !3713, !3714}
!3713 = !DILocation(line: 64, column: 3, scope: !685)
!3714 = !DILocation(line: 76, column: 5, scope: !685)
!3715 = !DILocation(line: 72, column: 22, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3710, file: !652, line: 72, column: 16)
!3717 = !DILocation(line: 72, column: 54, scope: !3718)
!3718 = !DILexicalBlockFile(scope: !3716, file: !652, discriminator: 1)
!3719 = !DILocation(line: 72, column: 32, scope: !3716)
!3720 = !DILocation(line: 77, column: 1, scope: !675)
!3721 = distinct !DISubprogram(name: "version_etc_arn", scope: !690, file: !690, line: 62, type: !3722, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !3765)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3724, !49, !49, !49, !3764, !41}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1571, line: 49, baseType: !3726)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1592, line: 241, size: 1728, elements: !3727)
!3727 = !{!3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3726, file: !1592, line: 242, baseType: !6, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3726, file: !1592, line: 247, baseType: !8, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3726, file: !1592, line: 248, baseType: !8, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3726, file: !1592, line: 249, baseType: !8, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3726, file: !1592, line: 250, baseType: !8, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3726, file: !1592, line: 251, baseType: !8, size: 64, offset: 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3726, file: !1592, line: 252, baseType: !8, size: 64, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3726, file: !1592, line: 253, baseType: !8, size: 64, offset: 448)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3726, file: !1592, line: 254, baseType: !8, size: 64, offset: 512)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3726, file: !1592, line: 256, baseType: !8, size: 64, offset: 576)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3726, file: !1592, line: 257, baseType: !8, size: 64, offset: 640)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3726, file: !1592, line: 258, baseType: !8, size: 64, offset: 704)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3726, file: !1592, line: 260, baseType: !3741, size: 64, offset: 768)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1592, line: 156, size: 192, elements: !3743)
!3743 = !{!3744, !3745, !3747}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3742, file: !1592, line: 157, baseType: !3741, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3742, file: !1592, line: 158, baseType: !3746, size: 64, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3742, file: !1592, line: 162, baseType: !6, size: 32, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3726, file: !1592, line: 262, baseType: !3746, size: 64, offset: 832)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3726, file: !1592, line: 264, baseType: !6, size: 32, offset: 896)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3726, file: !1592, line: 268, baseType: !6, size: 32, offset: 928)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3726, file: !1592, line: 270, baseType: !139, size: 64, offset: 960)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3726, file: !1592, line: 274, baseType: !247, size: 16, offset: 1024)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3726, file: !1592, line: 275, baseType: !1620, size: 8, offset: 1040)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3726, file: !1592, line: 276, baseType: !1622, size: 8, offset: 1048)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3726, file: !1592, line: 280, baseType: !1626, size: 64, offset: 1088)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3726, file: !1592, line: 289, baseType: !1629, size: 64, offset: 1152)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3726, file: !1592, line: 297, baseType: !40, size: 64, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3726, file: !1592, line: 298, baseType: !40, size: 64, offset: 1280)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3726, file: !1592, line: 299, baseType: !40, size: 64, offset: 1344)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3726, file: !1592, line: 300, baseType: !40, size: 64, offset: 1408)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3726, file: !1592, line: 302, baseType: !41, size: 64, offset: 1472)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3726, file: !1592, line: 303, baseType: !6, size: 32, offset: 1536)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3726, file: !1592, line: 305, baseType: !94, size: 160, offset: 1568)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3771}
!3766 = !DILocalVariable(name: "stream", arg: 1, scope: !3721, file: !690, line: 62, type: !3724)
!3767 = !DILocalVariable(name: "command_name", arg: 2, scope: !3721, file: !690, line: 63, type: !49)
!3768 = !DILocalVariable(name: "package", arg: 3, scope: !3721, file: !690, line: 63, type: !49)
!3769 = !DILocalVariable(name: "version", arg: 4, scope: !3721, file: !690, line: 64, type: !49)
!3770 = !DILocalVariable(name: "authors", arg: 5, scope: !3721, file: !690, line: 65, type: !3764)
!3771 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3721, file: !690, line: 65, type: !41)
!3772 = !DILocation(line: 62, column: 24, scope: !3721)
!3773 = !DILocation(line: 63, column: 30, scope: !3721)
!3774 = !DILocation(line: 63, column: 56, scope: !3721)
!3775 = !DILocation(line: 64, column: 30, scope: !3721)
!3776 = !DILocation(line: 65, column: 39, scope: !3721)
!3777 = !DILocation(line: 65, column: 55, scope: !3721)
!3778 = !DILocation(line: 67, column: 7, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3721, file: !690, line: 67, column: 7)
!3780 = !DILocation(line: 67, column: 7, scope: !3721)
!3781 = !DILocation(line: 68, column: 5, scope: !3779)
!3782 = !DILocation(line: 70, column: 5, scope: !3779)
!3783 = !DILocation(line: 84, column: 3, scope: !3721)
!3784 = !DILocation(line: 84, column: 3, scope: !3785)
!3785 = !DILexicalBlockFile(scope: !3721, file: !690, discriminator: 1)
!3786 = !DILocation(line: 86, column: 3, scope: !3721)
!3787 = !DILocation(line: 86, column: 3, scope: !3785)
!3788 = !DILocation(line: 95, column: 3, scope: !3721)
!3789 = !DILocation(line: 99, column: 7, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3721, file: !690, line: 96, column: 5)
!3791 = !DILocation(line: 102, column: 7, scope: !3790)
!3792 = !DILocation(line: 102, column: 7, scope: !3793)
!3793 = !DILexicalBlockFile(scope: !3790, file: !690, discriminator: 1)
!3794 = !DILocation(line: 103, column: 7, scope: !3790)
!3795 = !DILocation(line: 106, column: 7, scope: !3790)
!3796 = !DILocation(line: 106, column: 7, scope: !3793)
!3797 = !DILocation(line: 107, column: 7, scope: !3790)
!3798 = !DILocation(line: 110, column: 7, scope: !3790)
!3799 = !DILocation(line: 110, column: 7, scope: !3793)
!3800 = !DILocation(line: 112, column: 7, scope: !3790)
!3801 = !DILocation(line: 117, column: 7, scope: !3790)
!3802 = !DILocation(line: 117, column: 7, scope: !3793)
!3803 = !DILocation(line: 119, column: 7, scope: !3790)
!3804 = !DILocation(line: 124, column: 7, scope: !3790)
!3805 = !DILocation(line: 124, column: 7, scope: !3793)
!3806 = !DILocation(line: 126, column: 7, scope: !3790)
!3807 = !DILocation(line: 131, column: 7, scope: !3790)
!3808 = !DILocation(line: 131, column: 7, scope: !3793)
!3809 = !DILocation(line: 134, column: 7, scope: !3790)
!3810 = !DILocation(line: 139, column: 7, scope: !3790)
!3811 = !DILocation(line: 139, column: 7, scope: !3793)
!3812 = !DILocation(line: 142, column: 7, scope: !3790)
!3813 = !DILocation(line: 147, column: 7, scope: !3790)
!3814 = !DILocation(line: 147, column: 7, scope: !3793)
!3815 = !DILocation(line: 151, column: 7, scope: !3790)
!3816 = !DILocation(line: 156, column: 7, scope: !3790)
!3817 = !DILocation(line: 156, column: 7, scope: !3793)
!3818 = !DILocation(line: 160, column: 7, scope: !3790)
!3819 = !DILocation(line: 167, column: 7, scope: !3790)
!3820 = !DILocation(line: 167, column: 7, scope: !3793)
!3821 = !DILocation(line: 171, column: 7, scope: !3790)
!3822 = !DILocation(line: 173, column: 1, scope: !3721)
!3823 = distinct !DISubprogram(name: "version_etc_ar", scope: !690, file: !690, line: 180, type: !3824, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !3826)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !3724, !49, !49, !49, !3764}
!3826 = !{!3827, !3828, !3829, !3830, !3831, !3832}
!3827 = !DILocalVariable(name: "stream", arg: 1, scope: !3823, file: !690, line: 180, type: !3724)
!3828 = !DILocalVariable(name: "command_name", arg: 2, scope: !3823, file: !690, line: 181, type: !49)
!3829 = !DILocalVariable(name: "package", arg: 3, scope: !3823, file: !690, line: 181, type: !49)
!3830 = !DILocalVariable(name: "version", arg: 4, scope: !3823, file: !690, line: 182, type: !49)
!3831 = !DILocalVariable(name: "authors", arg: 5, scope: !3823, file: !690, line: 182, type: !3764)
!3832 = !DILocalVariable(name: "n_authors", scope: !3823, file: !690, line: 184, type: !41)
!3833 = !DILocation(line: 180, column: 23, scope: !3823)
!3834 = !DILocation(line: 181, column: 29, scope: !3823)
!3835 = !DILocation(line: 181, column: 55, scope: !3823)
!3836 = !DILocation(line: 182, column: 29, scope: !3823)
!3837 = !DILocation(line: 182, column: 59, scope: !3823)
!3838 = !DILocation(line: 184, column: 10, scope: !3823)
!3839 = !DILocation(line: 186, column: 8, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3823, file: !690, line: 186, column: 3)
!3841 = !DILocation(line: 186, column: 23, scope: !3842)
!3842 = !DILexicalBlockFile(scope: !3843, file: !690, discriminator: 1)
!3843 = distinct !DILexicalBlock(scope: !3840, file: !690, line: 186, column: 3)
!3844 = !DILocation(line: 186, column: 3, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3840, file: !690, discriminator: 1)
!3846 = !DILocation(line: 186, column: 52, scope: !3847)
!3847 = !DILexicalBlockFile(scope: !3843, file: !690, discriminator: 3)
!3848 = distinct !{!3848, !3849, !3850}
!3849 = !DILocation(line: 186, column: 3, scope: !3840)
!3850 = !DILocation(line: 187, column: 5, scope: !3840)
!3851 = !DILocation(line: 188, column: 3, scope: !3823)
!3852 = !DILocation(line: 189, column: 1, scope: !3823)
!3853 = distinct !DISubprogram(name: "version_etc_va", scope: !690, file: !690, line: 196, type: !3854, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !3863)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{null, !3724, !49, !49, !49, !3856}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !687, line: 189, size: 192, elements: !3858)
!3858 = !{!3859, !3860, !3861, !3862}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3857, file: !687, line: 189, baseType: !131, size: 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3857, file: !687, line: 189, baseType: !131, size: 32, offset: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3857, file: !687, line: 189, baseType: !40, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3857, file: !687, line: 189, baseType: !40, size: 64, offset: 128)
!3863 = !{!3864, !3865, !3866, !3867, !3868, !3869, !3870}
!3864 = !DILocalVariable(name: "stream", arg: 1, scope: !3853, file: !690, line: 196, type: !3724)
!3865 = !DILocalVariable(name: "command_name", arg: 2, scope: !3853, file: !690, line: 197, type: !49)
!3866 = !DILocalVariable(name: "package", arg: 3, scope: !3853, file: !690, line: 197, type: !49)
!3867 = !DILocalVariable(name: "version", arg: 4, scope: !3853, file: !690, line: 198, type: !49)
!3868 = !DILocalVariable(name: "authors", arg: 5, scope: !3853, file: !690, line: 198, type: !3856)
!3869 = !DILocalVariable(name: "n_authors", scope: !3853, file: !690, line: 200, type: !41)
!3870 = !DILocalVariable(name: "authtab", scope: !3853, file: !690, line: 201, type: !3871)
!3871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 640, elements: !191)
!3872 = !DILocation(line: 196, column: 23, scope: !3853)
!3873 = !DILocation(line: 197, column: 29, scope: !3853)
!3874 = !DILocation(line: 197, column: 55, scope: !3853)
!3875 = !DILocation(line: 198, column: 29, scope: !3853)
!3876 = !DILocation(line: 198, column: 46, scope: !3853)
!3877 = !DILocation(line: 201, column: 3, scope: !3853)
!3878 = !DILocation(line: 201, column: 15, scope: !3853)
!3879 = !DILocation(line: 200, column: 10, scope: !3853)
!3880 = !DILocation(line: 205, column: 35, scope: !3881)
!3881 = !DILexicalBlockFile(scope: !3882, file: !690, discriminator: 1)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !690, line: 203, column: 3)
!3883 = distinct !DILexicalBlock(scope: !3853, file: !690, line: 203, column: 3)
!3884 = !DILocation(line: 205, column: 35, scope: !3885)
!3885 = !DILexicalBlockFile(scope: !3882, file: !690, discriminator: 2)
!3886 = !DILocation(line: 205, column: 35, scope: !3887)
!3887 = !DILexicalBlockFile(scope: !3882, file: !690, discriminator: 3)
!3888 = !DILocation(line: 205, column: 35, scope: !3889)
!3889 = !DILexicalBlockFile(scope: !3882, file: !690, discriminator: 4)
!3890 = !DILocation(line: 205, column: 14, scope: !3889)
!3891 = !DILocation(line: 205, column: 33, scope: !3889)
!3892 = !DILocation(line: 205, column: 67, scope: !3889)
!3893 = !DILocation(line: 203, column: 3, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !3883, file: !690, discriminator: 1)
!3895 = !DILocation(line: 208, column: 3, scope: !3853)
!3896 = !DILocation(line: 210, column: 1, scope: !3853)
!3897 = distinct !DISubprogram(name: "version_etc", scope: !690, file: !690, line: 227, type: !3898, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !3900)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{null, !3724, !49, !49, !49, null}
!3900 = !{!3901, !3902, !3903, !3904, !3905}
!3901 = !DILocalVariable(name: "stream", arg: 1, scope: !3897, file: !690, line: 227, type: !3724)
!3902 = !DILocalVariable(name: "command_name", arg: 2, scope: !3897, file: !690, line: 228, type: !49)
!3903 = !DILocalVariable(name: "package", arg: 3, scope: !3897, file: !690, line: 228, type: !49)
!3904 = !DILocalVariable(name: "version", arg: 4, scope: !3897, file: !690, line: 229, type: !49)
!3905 = !DILocalVariable(name: "authors", scope: !3897, file: !690, line: 231, type: !3906)
!3906 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1571, line: 80, baseType: !3907)
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3908, line: 50, baseType: !3909)
!3908 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !687, line: 231, baseType: !3910)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3857, size: 192, elements: !1623)
!3911 = !DILocation(line: 227, column: 20, scope: !3897)
!3912 = !DILocation(line: 228, column: 26, scope: !3897)
!3913 = !DILocation(line: 228, column: 52, scope: !3897)
!3914 = !DILocation(line: 229, column: 26, scope: !3897)
!3915 = !DILocation(line: 231, column: 3, scope: !3897)
!3916 = !DILocation(line: 231, column: 11, scope: !3897)
!3917 = !DILocation(line: 233, column: 3, scope: !3897)
!3918 = !DILocation(line: 234, column: 3, scope: !3897)
!3919 = !DILocation(line: 235, column: 3, scope: !3897)
!3920 = !DILocation(line: 236, column: 1, scope: !3897)
!3921 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !690, file: !690, line: 239, type: !763, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !197)
!3922 = !DILocation(line: 245, column: 3, scope: !3921)
!3923 = !DILocation(line: 245, column: 3, scope: !3924)
!3924 = !DILexicalBlockFile(scope: !3921, file: !690, discriminator: 1)
!3925 = !DILocation(line: 251, column: 3, scope: !3921)
!3926 = !DILocation(line: 251, column: 3, scope: !3924)
!3927 = !DILocation(line: 256, column: 3, scope: !3921)
!3928 = !DILocation(line: 256, column: 3, scope: !3924)
!3929 = !DILocation(line: 258, column: 1, scope: !3921)
!3930 = distinct !DISubprogram(name: "xnmalloc", scope: !698, file: !698, line: 105, type: !3931, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!40, !41, !41}
!3933 = !{!3934, !3935}
!3934 = !DILocalVariable(name: "n", arg: 1, scope: !3930, file: !698, line: 105, type: !41)
!3935 = !DILocalVariable(name: "s", arg: 2, scope: !3930, file: !698, line: 105, type: !41)
!3936 = !DILocation(line: 105, column: 18, scope: !3930)
!3937 = !DILocation(line: 105, column: 28, scope: !3930)
!3938 = !DILocation(line: 107, column: 7, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3930, file: !698, line: 107, column: 7)
!3940 = !DILocation(line: 107, column: 7, scope: !3930)
!3941 = !DILocation(line: 108, column: 5, scope: !3939)
!3942 = !DILocation(line: 109, column: 21, scope: !3930)
!3943 = !DILocalVariable(name: "n", arg: 1, scope: !3944, file: !3945, line: 39, type: !41)
!3944 = distinct !DISubprogram(name: "xmalloc", scope: !3945, file: !3945, line: 39, type: !3946, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !3948)
!3945 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!40, !41}
!3948 = !{!3943, !3949}
!3949 = !DILocalVariable(name: "p", scope: !3944, file: !3945, line: 41, type: !40)
!3950 = !DILocation(line: 39, column: 17, scope: !3944, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 109, column: 10, scope: !3930)
!3952 = !DILocation(line: 41, column: 13, scope: !3944, inlinedAt: !3951)
!3953 = !DILocation(line: 41, column: 9, scope: !3944, inlinedAt: !3951)
!3954 = !DILocation(line: 42, column: 8, scope: !3955, inlinedAt: !3951)
!3955 = distinct !DILexicalBlock(scope: !3944, file: !3945, line: 42, column: 7)
!3956 = !DILocation(line: 42, column: 15, scope: !3957, inlinedAt: !3951)
!3957 = !DILexicalBlockFile(scope: !3955, file: !3945, discriminator: 1)
!3958 = !DILocation(line: 42, column: 10, scope: !3955, inlinedAt: !3951)
!3959 = !DILocation(line: 43, column: 5, scope: !3955, inlinedAt: !3951)
!3960 = !DILocation(line: 109, column: 3, scope: !3930)
!3961 = !DILocation(line: 39, column: 17, scope: !3944)
!3962 = !DILocation(line: 41, column: 13, scope: !3944)
!3963 = !DILocation(line: 41, column: 9, scope: !3944)
!3964 = !DILocation(line: 42, column: 8, scope: !3955)
!3965 = !DILocation(line: 42, column: 15, scope: !3957)
!3966 = !DILocation(line: 42, column: 10, scope: !3955)
!3967 = !DILocation(line: 43, column: 5, scope: !3955)
!3968 = !DILocation(line: 44, column: 3, scope: !3944)
!3969 = distinct !DISubprogram(name: "xnrealloc", scope: !698, file: !698, line: 118, type: !3970, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !3972)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!40, !40, !41, !41}
!3972 = !{!3973, !3974, !3975}
!3973 = !DILocalVariable(name: "p", arg: 1, scope: !3969, file: !698, line: 118, type: !40)
!3974 = !DILocalVariable(name: "n", arg: 2, scope: !3969, file: !698, line: 118, type: !41)
!3975 = !DILocalVariable(name: "s", arg: 3, scope: !3969, file: !698, line: 118, type: !41)
!3976 = !DILocation(line: 118, column: 18, scope: !3969)
!3977 = !DILocation(line: 118, column: 28, scope: !3969)
!3978 = !DILocation(line: 118, column: 38, scope: !3969)
!3979 = !DILocation(line: 120, column: 7, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3969, file: !698, line: 120, column: 7)
!3981 = !DILocation(line: 120, column: 7, scope: !3969)
!3982 = !DILocation(line: 121, column: 5, scope: !3980)
!3983 = !DILocation(line: 122, column: 25, scope: !3969)
!3984 = !DILocalVariable(name: "p", arg: 1, scope: !3985, file: !3945, line: 51, type: !40)
!3985 = distinct !DISubprogram(name: "xrealloc", scope: !3945, file: !3945, line: 51, type: !3986, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !3988)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!40, !40, !41}
!3988 = !{!3984, !3989}
!3989 = !DILocalVariable(name: "n", arg: 2, scope: !3985, file: !3945, line: 51, type: !41)
!3990 = !DILocation(line: 51, column: 17, scope: !3985, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 122, column: 10, scope: !3969)
!3992 = !DILocation(line: 51, column: 27, scope: !3985, inlinedAt: !3991)
!3993 = !DILocation(line: 53, column: 8, scope: !3994, inlinedAt: !3991)
!3994 = distinct !DILexicalBlock(scope: !3985, file: !3945, line: 53, column: 7)
!3995 = !DILocation(line: 53, column: 13, scope: !3996, inlinedAt: !3991)
!3996 = !DILexicalBlockFile(scope: !3994, file: !3945, discriminator: 1)
!3997 = !DILocation(line: 53, column: 10, scope: !3994, inlinedAt: !3991)
!3998 = !DILocation(line: 57, column: 7, scope: !3999, inlinedAt: !3991)
!3999 = distinct !DILexicalBlock(scope: !3994, file: !3945, line: 54, column: 5)
!4000 = !DILocation(line: 58, column: 7, scope: !3999, inlinedAt: !3991)
!4001 = !DILocation(line: 61, column: 7, scope: !3985, inlinedAt: !3991)
!4002 = !DILocation(line: 62, column: 8, scope: !4003, inlinedAt: !3991)
!4003 = distinct !DILexicalBlock(scope: !3985, file: !3945, line: 62, column: 7)
!4004 = !DILocation(line: 62, column: 13, scope: !4005, inlinedAt: !3991)
!4005 = !DILexicalBlockFile(scope: !4003, file: !3945, discriminator: 1)
!4006 = !DILocation(line: 62, column: 10, scope: !4003, inlinedAt: !3991)
!4007 = !DILocation(line: 63, column: 5, scope: !4003, inlinedAt: !3991)
!4008 = !DILocation(line: 122, column: 3, scope: !3969)
!4009 = !DILocation(line: 51, column: 17, scope: !3985)
!4010 = !DILocation(line: 51, column: 27, scope: !3985)
!4011 = !DILocation(line: 53, column: 8, scope: !3994)
!4012 = !DILocation(line: 53, column: 13, scope: !3996)
!4013 = !DILocation(line: 53, column: 10, scope: !3994)
!4014 = !DILocation(line: 57, column: 7, scope: !3999)
!4015 = !DILocation(line: 58, column: 7, scope: !3999)
!4016 = !DILocation(line: 61, column: 7, scope: !3985)
!4017 = !DILocation(line: 62, column: 8, scope: !4003)
!4018 = !DILocation(line: 62, column: 13, scope: !4005)
!4019 = !DILocation(line: 62, column: 10, scope: !4003)
!4020 = !DILocation(line: 63, column: 5, scope: !4003)
!4021 = !DILocation(line: 65, column: 1, scope: !3985)
!4022 = !DILocation(line: 180, column: 19, scope: !699)
!4023 = !DILocation(line: 180, column: 30, scope: !699)
!4024 = !DILocation(line: 180, column: 41, scope: !699)
!4025 = !DILocation(line: 182, column: 14, scope: !699)
!4026 = !DILocation(line: 182, column: 10, scope: !699)
!4027 = !DILocation(line: 184, column: 9, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !699, file: !698, line: 184, column: 7)
!4029 = !DILocation(line: 184, column: 7, scope: !699)
!4030 = !DILocation(line: 186, column: 13, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !698, line: 186, column: 11)
!4032 = distinct !DILexicalBlock(scope: !4028, file: !698, line: 185, column: 5)
!4033 = !DILocation(line: 186, column: 11, scope: !4032)
!4034 = !DILocation(line: 194, column: 30, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4031, file: !698, line: 187, column: 9)
!4036 = !DILocation(line: 195, column: 16, scope: !4035)
!4037 = !DILocation(line: 195, column: 13, scope: !4035)
!4038 = !DILocation(line: 196, column: 9, scope: !4035)
!4039 = !DILocation(line: 204, column: 69, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !698, line: 204, column: 11)
!4041 = distinct !DILexicalBlock(scope: !4028, file: !698, line: 199, column: 5)
!4042 = !DILocation(line: 205, column: 11, scope: !4040)
!4043 = !DILocation(line: 204, column: 11, scope: !4041)
!4044 = !DILocation(line: 206, column: 9, scope: !4040)
!4045 = !DILocation(line: 210, column: 7, scope: !699)
!4046 = !DILocation(line: 211, column: 25, scope: !699)
!4047 = !DILocation(line: 51, column: 17, scope: !3985, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 211, column: 10, scope: !699)
!4049 = !DILocation(line: 51, column: 27, scope: !3985, inlinedAt: !4048)
!4050 = !DILocation(line: 53, column: 10, scope: !3994, inlinedAt: !4048)
!4051 = !DILocation(line: 207, column: 14, scope: !4041)
!4052 = !DILocation(line: 207, column: 18, scope: !4041)
!4053 = !DILocation(line: 207, column: 9, scope: !4041)
!4054 = !DILocation(line: 53, column: 8, scope: !3994, inlinedAt: !4048)
!4055 = !DILocation(line: 57, column: 7, scope: !3999, inlinedAt: !4048)
!4056 = !DILocation(line: 58, column: 7, scope: !3999, inlinedAt: !4048)
!4057 = !DILocation(line: 61, column: 7, scope: !3985, inlinedAt: !4048)
!4058 = !DILocation(line: 62, column: 8, scope: !4003, inlinedAt: !4048)
!4059 = !DILocation(line: 62, column: 13, scope: !4005, inlinedAt: !4048)
!4060 = !DILocation(line: 62, column: 10, scope: !4003, inlinedAt: !4048)
!4061 = !DILocation(line: 63, column: 5, scope: !4003, inlinedAt: !4048)
!4062 = !DILocation(line: 211, column: 3, scope: !699)
!4063 = distinct !DISubprogram(name: "xcharalloc", scope: !698, file: !698, line: 220, type: !2952, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !4064)
!4064 = !{!4065}
!4065 = !DILocalVariable(name: "n", arg: 1, scope: !4063, file: !698, line: 220, type: !41)
!4066 = !DILocation(line: 220, column: 20, scope: !4063)
!4067 = !DILocation(line: 39, column: 17, scope: !3944, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 222, column: 10, scope: !4063)
!4069 = !DILocation(line: 41, column: 13, scope: !3944, inlinedAt: !4068)
!4070 = !DILocation(line: 41, column: 9, scope: !3944, inlinedAt: !4068)
!4071 = !DILocation(line: 42, column: 8, scope: !3955, inlinedAt: !4068)
!4072 = !DILocation(line: 42, column: 15, scope: !3957, inlinedAt: !4068)
!4073 = !DILocation(line: 42, column: 10, scope: !3955, inlinedAt: !4068)
!4074 = !DILocation(line: 43, column: 5, scope: !3955, inlinedAt: !4068)
!4075 = !DILocation(line: 222, column: 3, scope: !4063)
!4076 = distinct !DISubprogram(name: "x2realloc", scope: !3945, file: !3945, line: 74, type: !4077, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !4079)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!40, !40, !702}
!4079 = !{!4080, !4081}
!4080 = !DILocalVariable(name: "p", arg: 1, scope: !4076, file: !3945, line: 74, type: !40)
!4081 = !DILocalVariable(name: "pn", arg: 2, scope: !4076, file: !3945, line: 74, type: !702)
!4082 = !DILocation(line: 74, column: 18, scope: !4076)
!4083 = !DILocation(line: 74, column: 29, scope: !4076)
!4084 = !DILocation(line: 180, column: 19, scope: !699, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 76, column: 10, scope: !4076)
!4086 = !DILocation(line: 180, column: 30, scope: !699, inlinedAt: !4085)
!4087 = !DILocation(line: 180, column: 41, scope: !699, inlinedAt: !4085)
!4088 = !DILocation(line: 182, column: 14, scope: !699, inlinedAt: !4085)
!4089 = !DILocation(line: 182, column: 10, scope: !699, inlinedAt: !4085)
!4090 = !DILocation(line: 184, column: 9, scope: !4028, inlinedAt: !4085)
!4091 = !DILocation(line: 184, column: 7, scope: !699, inlinedAt: !4085)
!4092 = !DILocation(line: 186, column: 13, scope: !4031, inlinedAt: !4085)
!4093 = !DILocation(line: 186, column: 11, scope: !4032, inlinedAt: !4085)
!4094 = !DILocation(line: 210, column: 7, scope: !699, inlinedAt: !4085)
!4095 = !DILocation(line: 51, column: 17, scope: !3985, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 211, column: 10, scope: !699, inlinedAt: !4085)
!4097 = !DILocation(line: 51, column: 27, scope: !3985, inlinedAt: !4096)
!4098 = !DILocation(line: 53, column: 10, scope: !3994, inlinedAt: !4096)
!4099 = !DILocation(line: 205, column: 11, scope: !4040, inlinedAt: !4085)
!4100 = !DILocation(line: 204, column: 11, scope: !4041, inlinedAt: !4085)
!4101 = !DILocation(line: 206, column: 9, scope: !4040, inlinedAt: !4085)
!4102 = !DILocation(line: 207, column: 14, scope: !4041, inlinedAt: !4085)
!4103 = !DILocation(line: 207, column: 18, scope: !4041, inlinedAt: !4085)
!4104 = !DILocation(line: 207, column: 9, scope: !4041, inlinedAt: !4085)
!4105 = !DILocation(line: 53, column: 8, scope: !3994, inlinedAt: !4096)
!4106 = !DILocation(line: 57, column: 7, scope: !3999, inlinedAt: !4096)
!4107 = !DILocation(line: 58, column: 7, scope: !3999, inlinedAt: !4096)
!4108 = !DILocation(line: 61, column: 7, scope: !3985, inlinedAt: !4096)
!4109 = !DILocation(line: 62, column: 8, scope: !4003, inlinedAt: !4096)
!4110 = !DILocation(line: 62, column: 13, scope: !4005, inlinedAt: !4096)
!4111 = !DILocation(line: 62, column: 10, scope: !4003, inlinedAt: !4096)
!4112 = !DILocation(line: 63, column: 5, scope: !4003, inlinedAt: !4096)
!4113 = !DILocation(line: 76, column: 3, scope: !4076)
!4114 = distinct !DISubprogram(name: "xzalloc", scope: !3945, file: !3945, line: 84, type: !3946, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !4115)
!4115 = !{!4116}
!4116 = !DILocalVariable(name: "s", arg: 1, scope: !4114, file: !3945, line: 84, type: !41)
!4117 = !DILocation(line: 84, column: 17, scope: !4114)
!4118 = !DILocation(line: 39, column: 17, scope: !3944, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 86, column: 18, scope: !4114)
!4120 = !DILocation(line: 41, column: 13, scope: !3944, inlinedAt: !4119)
!4121 = !DILocation(line: 41, column: 9, scope: !3944, inlinedAt: !4119)
!4122 = !DILocation(line: 42, column: 8, scope: !3955, inlinedAt: !4119)
!4123 = !DILocation(line: 42, column: 15, scope: !3957, inlinedAt: !4119)
!4124 = !DILocation(line: 42, column: 10, scope: !3955, inlinedAt: !4119)
!4125 = !DILocation(line: 43, column: 5, scope: !3955, inlinedAt: !4119)
!4126 = !DILocation(line: 86, column: 10, scope: !4114)
!4127 = !DILocation(line: 86, column: 3, scope: !4114)
!4128 = distinct !DISubprogram(name: "xcalloc", scope: !3945, file: !3945, line: 93, type: !3931, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !4129)
!4129 = !{!4130, !4131, !4132}
!4130 = !DILocalVariable(name: "n", arg: 1, scope: !4128, file: !3945, line: 93, type: !41)
!4131 = !DILocalVariable(name: "s", arg: 2, scope: !4128, file: !3945, line: 93, type: !41)
!4132 = !DILocalVariable(name: "p", scope: !4128, file: !3945, line: 95, type: !40)
!4133 = !DILocation(line: 93, column: 17, scope: !4128)
!4134 = !DILocation(line: 93, column: 27, scope: !4128)
!4135 = !DILocation(line: 100, column: 7, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4128, file: !3945, line: 100, column: 7)
!4137 = !DILocation(line: 101, column: 7, scope: !4136)
!4138 = !DILocation(line: 101, column: 18, scope: !4139)
!4139 = !DILexicalBlockFile(scope: !4136, file: !3945, discriminator: 1)
!4140 = !DILocation(line: 95, column: 9, scope: !4128)
!4141 = !DILocation(line: 101, column: 16, scope: !4139)
!4142 = !DILocation(line: 100, column: 7, scope: !4143)
!4143 = !DILexicalBlockFile(scope: !4128, file: !3945, discriminator: 1)
!4144 = !DILocation(line: 102, column: 5, scope: !4136)
!4145 = !DILocation(line: 103, column: 3, scope: !4128)
!4146 = distinct !DISubprogram(name: "xmemdup", scope: !3945, file: !3945, line: 111, type: !999, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !4147)
!4147 = !{!4148, !4149}
!4148 = !DILocalVariable(name: "p", arg: 1, scope: !4146, file: !3945, line: 111, type: !44)
!4149 = !DILocalVariable(name: "s", arg: 2, scope: !4146, file: !3945, line: 111, type: !41)
!4150 = !DILocation(line: 111, column: 22, scope: !4146)
!4151 = !DILocation(line: 111, column: 32, scope: !4146)
!4152 = !DILocation(line: 39, column: 17, scope: !3944, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 113, column: 18, scope: !4146)
!4154 = !DILocation(line: 41, column: 13, scope: !3944, inlinedAt: !4153)
!4155 = !DILocation(line: 41, column: 9, scope: !3944, inlinedAt: !4153)
!4156 = !DILocation(line: 42, column: 8, scope: !3955, inlinedAt: !4153)
!4157 = !DILocation(line: 42, column: 15, scope: !3957, inlinedAt: !4153)
!4158 = !DILocation(line: 42, column: 10, scope: !3955, inlinedAt: !4153)
!4159 = !DILocation(line: 43, column: 5, scope: !3955, inlinedAt: !4153)
!4160 = !DILocation(line: 113, column: 10, scope: !4146)
!4161 = !DILocation(line: 113, column: 3, scope: !4146)
!4162 = distinct !DISubprogram(name: "xstrdup", scope: !3945, file: !3945, line: 119, type: !3158, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !694, variables: !4163)
!4163 = !{!4164}
!4164 = !DILocalVariable(name: "string", arg: 1, scope: !4162, file: !3945, line: 119, type: !49)
!4165 = !DILocation(line: 119, column: 22, scope: !4162)
!4166 = !DILocation(line: 121, column: 27, scope: !4162)
!4167 = !DILocation(line: 121, column: 43, scope: !4162)
!4168 = !DILocation(line: 111, column: 22, scope: !4146, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 121, column: 10, scope: !4170)
!4170 = !DILexicalBlockFile(scope: !4162, file: !3945, discriminator: 1)
!4171 = !DILocation(line: 111, column: 32, scope: !4146, inlinedAt: !4169)
!4172 = !DILocation(line: 39, column: 17, scope: !3944, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 113, column: 18, scope: !4146, inlinedAt: !4169)
!4174 = !DILocation(line: 41, column: 13, scope: !3944, inlinedAt: !4173)
!4175 = !DILocation(line: 41, column: 9, scope: !3944, inlinedAt: !4173)
!4176 = !DILocation(line: 42, column: 8, scope: !3955, inlinedAt: !4173)
!4177 = !DILocation(line: 42, column: 15, scope: !3957, inlinedAt: !4173)
!4178 = !DILocation(line: 42, column: 10, scope: !3955, inlinedAt: !4173)
!4179 = !DILocation(line: 43, column: 5, scope: !3955, inlinedAt: !4173)
!4180 = !DILocation(line: 113, column: 10, scope: !4146, inlinedAt: !4169)
!4181 = !DILocation(line: 121, column: 3, scope: !4162)
!4182 = distinct !DISubprogram(name: "xalloc_die", scope: !4183, file: !4183, line: 32, type: !763, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !711, variables: !197)
!4183 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4184 = !DILocation(line: 34, column: 10, scope: !4182)
!4185 = !DILocation(line: 34, column: 33, scope: !4182)
!4186 = !DILocation(line: 34, column: 3, scope: !4187)
!4187 = !DILexicalBlockFile(scope: !4182, file: !4183, discriminator: 1)
!4188 = !DILocation(line: 40, column: 3, scope: !4182)
!4189 = distinct !DISubprogram(name: "rpl_calloc", scope: !4190, file: !4190, line: 42, type: !3931, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !713, variables: !4191)
!4190 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4191 = !{!4192, !4193, !4194, !4195}
!4192 = !DILocalVariable(name: "n", arg: 1, scope: !4189, file: !4190, line: 42, type: !41)
!4193 = !DILocalVariable(name: "s", arg: 2, scope: !4189, file: !4190, line: 42, type: !41)
!4194 = !DILocalVariable(name: "result", scope: !4189, file: !4190, line: 44, type: !40)
!4195 = !DILocalVariable(name: "bytes", scope: !4196, file: !4190, line: 56, type: !41)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !4190, line: 53, column: 5)
!4197 = distinct !DILexicalBlock(scope: !4189, file: !4190, line: 47, column: 7)
!4198 = !DILocation(line: 42, column: 20, scope: !4189)
!4199 = !DILocation(line: 42, column: 30, scope: !4189)
!4200 = !DILocation(line: 47, column: 9, scope: !4197)
!4201 = !DILocation(line: 47, column: 19, scope: !4202)
!4202 = !DILexicalBlockFile(scope: !4197, file: !4190, discriminator: 1)
!4203 = !DILocation(line: 47, column: 14, scope: !4197)
!4204 = !DILocation(line: 56, column: 24, scope: !4196)
!4205 = !DILocation(line: 56, column: 14, scope: !4196)
!4206 = !DILocation(line: 57, column: 17, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4196, file: !4190, line: 57, column: 11)
!4208 = !DILocation(line: 57, column: 21, scope: !4207)
!4209 = !DILocation(line: 57, column: 11, scope: !4196)
!4210 = !DILocation(line: 59, column: 11, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4207, file: !4190, line: 58, column: 9)
!4212 = !DILocation(line: 59, column: 17, scope: !4211)
!4213 = !DILocation(line: 65, column: 12, scope: !4189)
!4214 = !DILocation(line: 44, column: 9, scope: !4189)
!4215 = !DILocation(line: 72, column: 3, scope: !4189)
!4216 = !DILocation(line: 73, column: 1, scope: !4189)
!4217 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4218, file: !4218, line: 334, type: !4219, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !4233)
!4218 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!41, !4221, !49, !41, !4222}
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1923, line: 107, baseType: !4224)
!4224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1923, line: 95, baseType: !4225)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1923, line: 83, size: 64, elements: !4226)
!4226 = !{!4227, !4228}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4225, file: !1923, line: 85, baseType: !6, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4225, file: !1923, line: 94, baseType: !4229, size: 32, offset: 32)
!4229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4225, file: !1923, line: 86, size: 32, elements: !4230)
!4230 = !{!4231, !4232}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4229, file: !1923, line: 89, baseType: !131, size: 32)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4229, file: !1923, line: 93, baseType: !1933, size: 32)
!4233 = !{!4234, !4235, !4236, !4237, !4238, !4239, !4240}
!4234 = !DILocalVariable(name: "pwc", arg: 1, scope: !4217, file: !4218, line: 334, type: !4221)
!4235 = !DILocalVariable(name: "s", arg: 2, scope: !4217, file: !4218, line: 334, type: !49)
!4236 = !DILocalVariable(name: "n", arg: 3, scope: !4217, file: !4218, line: 334, type: !41)
!4237 = !DILocalVariable(name: "ps", arg: 4, scope: !4217, file: !4218, line: 334, type: !4222)
!4238 = !DILocalVariable(name: "ret", scope: !4217, file: !4218, line: 336, type: !41)
!4239 = !DILocalVariable(name: "wc", scope: !4217, file: !4218, line: 337, type: !1938)
!4240 = !DILocalVariable(name: "uc", scope: !4241, file: !4218, line: 398, type: !48)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !4218, line: 397, column: 5)
!4242 = distinct !DILexicalBlock(scope: !4217, file: !4218, line: 396, column: 7)
!4243 = !DILocation(line: 334, column: 23, scope: !4217)
!4244 = !DILocation(line: 334, column: 40, scope: !4217)
!4245 = !DILocation(line: 334, column: 50, scope: !4217)
!4246 = !DILocation(line: 334, column: 64, scope: !4217)
!4247 = !DILocation(line: 337, column: 3, scope: !4217)
!4248 = !DILocation(line: 353, column: 9, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4217, file: !4218, line: 353, column: 7)
!4250 = !DILocation(line: 353, column: 7, scope: !4217)
!4251 = !DILocation(line: 388, column: 9, scope: !4217)
!4252 = !DILocation(line: 336, column: 10, scope: !4217)
!4253 = !DILocation(line: 396, column: 19, scope: !4242)
!4254 = !DILocation(line: 396, column: 31, scope: !4255)
!4255 = !DILexicalBlockFile(scope: !4242, file: !4218, discriminator: 1)
!4256 = !DILocation(line: 396, column: 26, scope: !4242)
!4257 = !DILocation(line: 396, column: 41, scope: !4258)
!4258 = !DILexicalBlockFile(scope: !4242, file: !4218, discriminator: 2)
!4259 = !DILocation(line: 396, column: 7, scope: !4260)
!4260 = !DILexicalBlockFile(scope: !4217, file: !4218, discriminator: 2)
!4261 = !DILocation(line: 398, column: 26, scope: !4241)
!4262 = !DILocation(line: 398, column: 21, scope: !4241)
!4263 = !DILocation(line: 399, column: 14, scope: !4241)
!4264 = !DILocation(line: 399, column: 12, scope: !4241)
!4265 = !DILocation(line: 405, column: 1, scope: !4217)
!4266 = distinct !DISubprogram(name: "close_stream", scope: !4267, file: !4267, line: 56, type: !4268, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !718, variables: !4310)
!4267 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!6, !4270}
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1571, line: 49, baseType: !4272)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1592, line: 241, size: 1728, elements: !4273)
!4273 = !{!4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4272, file: !1592, line: 242, baseType: !6, size: 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4272, file: !1592, line: 247, baseType: !8, size: 64, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4272, file: !1592, line: 248, baseType: !8, size: 64, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4272, file: !1592, line: 249, baseType: !8, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4272, file: !1592, line: 250, baseType: !8, size: 64, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4272, file: !1592, line: 251, baseType: !8, size: 64, offset: 320)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4272, file: !1592, line: 252, baseType: !8, size: 64, offset: 384)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4272, file: !1592, line: 253, baseType: !8, size: 64, offset: 448)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4272, file: !1592, line: 254, baseType: !8, size: 64, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4272, file: !1592, line: 256, baseType: !8, size: 64, offset: 576)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4272, file: !1592, line: 257, baseType: !8, size: 64, offset: 640)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4272, file: !1592, line: 258, baseType: !8, size: 64, offset: 704)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4272, file: !1592, line: 260, baseType: !4287, size: 64, offset: 768)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1592, line: 156, size: 192, elements: !4289)
!4289 = !{!4290, !4291, !4293}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4288, file: !1592, line: 157, baseType: !4287, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4288, file: !1592, line: 158, baseType: !4292, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4288, file: !1592, line: 162, baseType: !6, size: 32, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4272, file: !1592, line: 262, baseType: !4292, size: 64, offset: 832)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4272, file: !1592, line: 264, baseType: !6, size: 32, offset: 896)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4272, file: !1592, line: 268, baseType: !6, size: 32, offset: 928)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4272, file: !1592, line: 270, baseType: !139, size: 64, offset: 960)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4272, file: !1592, line: 274, baseType: !247, size: 16, offset: 1024)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4272, file: !1592, line: 275, baseType: !1620, size: 8, offset: 1040)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4272, file: !1592, line: 276, baseType: !1622, size: 8, offset: 1048)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4272, file: !1592, line: 280, baseType: !1626, size: 64, offset: 1088)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4272, file: !1592, line: 289, baseType: !1629, size: 64, offset: 1152)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4272, file: !1592, line: 297, baseType: !40, size: 64, offset: 1216)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4272, file: !1592, line: 298, baseType: !40, size: 64, offset: 1280)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4272, file: !1592, line: 299, baseType: !40, size: 64, offset: 1344)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4272, file: !1592, line: 300, baseType: !40, size: 64, offset: 1408)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4272, file: !1592, line: 302, baseType: !41, size: 64, offset: 1472)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4272, file: !1592, line: 303, baseType: !6, size: 32, offset: 1536)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4272, file: !1592, line: 305, baseType: !94, size: 160, offset: 1568)
!4310 = !{!4311, !4312, !4314, !4315}
!4311 = !DILocalVariable(name: "stream", arg: 1, scope: !4266, file: !4267, line: 56, type: !4270)
!4312 = !DILocalVariable(name: "some_pending", scope: !4266, file: !4267, line: 58, type: !4313)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!4314 = !DILocalVariable(name: "prev_fail", scope: !4266, file: !4267, line: 59, type: !4313)
!4315 = !DILocalVariable(name: "fclose_fail", scope: !4266, file: !4267, line: 60, type: !4313)
!4316 = !DILocation(line: 56, column: 21, scope: !4266)
!4317 = !DILocation(line: 58, column: 30, scope: !4266)
!4318 = !DILocalVariable(name: "__stream", arg: 1, scope: !4319, file: !4320, line: 132, type: !4270)
!4319 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4320, file: !4320, line: 132, type: !4268, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !718, variables: !4321)
!4320 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4321 = !{!4318}
!4322 = !DILocation(line: 132, column: 1, scope: !4319, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 59, column: 27, scope: !4266)
!4324 = !DILocation(line: 134, column: 10, scope: !4319, inlinedAt: !4323)
!4325 = !{!4326, !871, i64 0}
!4326 = !{!"_IO_FILE", !871, i64 0, !748, i64 8, !748, i64 16, !748, i64 24, !748, i64 32, !748, i64 40, !748, i64 48, !748, i64 56, !748, i64 64, !748, i64 72, !748, i64 80, !748, i64 88, !748, i64 96, !748, i64 104, !871, i64 112, !871, i64 116, !879, i64 120, !2290, i64 128, !749, i64 130, !749, i64 131, !748, i64 136, !879, i64 144, !748, i64 152, !748, i64 160, !748, i64 168, !748, i64 176, !879, i64 184, !871, i64 192, !749, i64 196}
!4327 = !DILocation(line: 59, column: 43, scope: !4266)
!4328 = !DILocation(line: 60, column: 29, scope: !4266)
!4329 = !DILocation(line: 60, column: 45, scope: !4266)
!4330 = !DILocation(line: 70, column: 17, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4266, file: !4267, line: 70, column: 7)
!4332 = !DILocation(line: 70, column: 33, scope: !4333)
!4333 = !DILexicalBlockFile(scope: !4331, file: !4267, discriminator: 1)
!4334 = !DILocation(line: 70, column: 53, scope: !4335)
!4335 = !DILexicalBlockFile(scope: !4331, file: !4267, discriminator: 3)
!4336 = !DILocation(line: 70, column: 7, scope: !4337)
!4337 = !DILexicalBlockFile(scope: !4266, file: !4267, discriminator: 3)
!4338 = !DILocation(line: 72, column: 11, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4331, file: !4267, line: 71, column: 5)
!4340 = !DILocation(line: 73, column: 9, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4339, file: !4267, line: 72, column: 11)
!4342 = !DILocation(line: 73, column: 15, scope: !4341)
!4343 = !DILocation(line: 78, column: 1, scope: !4266)
!4344 = distinct !DISubprogram(name: "hard_locale", scope: !4345, file: !4345, line: 38, type: !4346, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !720, variables: !4348)
!4345 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!108, !6}
!4348 = !{!4349, !4350, !4351, !4352, !4359, !4360, !4362, !4363, !4365, !4366, !4368}
!4349 = !DILocalVariable(name: "category", arg: 1, scope: !4344, file: !4345, line: 38, type: !6)
!4350 = !DILocalVariable(name: "hard", scope: !4344, file: !4345, line: 40, type: !108)
!4351 = !DILocalVariable(name: "p", scope: !4344, file: !4345, line: 41, type: !49)
!4352 = !DILocalVariable(name: "__s1_len", scope: !4353, file: !4345, line: 47, type: !41)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !4345, line: 47, column: 15)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !4345, line: 47, column: 15)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !4345, line: 46, column: 9)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !4345, line: 45, column: 11)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !4345, line: 44, column: 5)
!4358 = distinct !DILexicalBlock(scope: !4344, file: !4345, line: 43, column: 7)
!4359 = !DILocalVariable(name: "__s2_len", scope: !4353, file: !4345, line: 47, type: !41)
!4360 = !DILocalVariable(name: "__s2", scope: !4361, file: !4345, line: 47, type: !46)
!4361 = distinct !DILexicalBlock(scope: !4353, file: !4345, line: 47, column: 15)
!4362 = !DILocalVariable(name: "__result", scope: !4361, file: !4345, line: 47, type: !6)
!4363 = !DILocalVariable(name: "__s1_len", scope: !4364, file: !4345, line: 47, type: !41)
!4364 = distinct !DILexicalBlock(scope: !4354, file: !4345, line: 47, column: 39)
!4365 = !DILocalVariable(name: "__s2_len", scope: !4364, file: !4345, line: 47, type: !41)
!4366 = !DILocalVariable(name: "__s2", scope: !4367, file: !4345, line: 47, type: !46)
!4367 = distinct !DILexicalBlock(scope: !4364, file: !4345, line: 47, column: 39)
!4368 = !DILocalVariable(name: "__result", scope: !4367, file: !4345, line: 47, type: !6)
!4369 = !DILocation(line: 38, column: 18, scope: !4344)
!4370 = !DILocation(line: 40, column: 8, scope: !4344)
!4371 = !DILocation(line: 41, column: 19, scope: !4344)
!4372 = !DILocation(line: 41, column: 15, scope: !4344)
!4373 = !DILocation(line: 43, column: 7, scope: !4358)
!4374 = !DILocation(line: 43, column: 7, scope: !4344)
!4375 = !DILocation(line: 47, column: 15, scope: !4353)
!4376 = !DILocation(line: 47, column: 15, scope: !4361)
!4377 = !DILocation(line: 47, column: 15, scope: !4378)
!4378 = !DILexicalBlockFile(scope: !4361, file: !4345, discriminator: 2)
!4379 = !DILocation(line: 47, column: 15, scope: !4380)
!4380 = !DILexicalBlockFile(scope: !4381, file: !4345, discriminator: 3)
!4381 = distinct !DILexicalBlock(scope: !4361, file: !4345, line: 47, column: 15)
!4382 = !DILocation(line: 47, column: 15, scope: !4383)
!4383 = !DILexicalBlockFile(scope: !4381, file: !4345, discriminator: 2)
!4384 = !DILocation(line: 47, column: 15, scope: !4385)
!4385 = !DILexicalBlockFile(scope: !4386, file: !4345, discriminator: 4)
!4386 = distinct !DILexicalBlock(scope: !4381, file: !4345, line: 47, column: 15)
!4387 = !DILocation(line: 47, column: 15, scope: !4388)
!4388 = !DILexicalBlockFile(scope: !4353, file: !4345, discriminator: 11)
!4389 = !DILocation(line: 47, column: 36, scope: !4390)
!4390 = !DILexicalBlockFile(scope: !4354, file: !4345, discriminator: 13)
!4391 = !DILocation(line: 47, column: 39, scope: !4364)
!4392 = !DILocation(line: 47, column: 39, scope: !4393)
!4393 = !DILexicalBlockFile(scope: !4364, file: !4345, discriminator: 26)
!4394 = !DILocation(line: 47, column: 59, scope: !4395)
!4395 = !DILexicalBlockFile(scope: !4354, file: !4345, discriminator: 27)
!4396 = !DILocation(line: 47, column: 15, scope: !4397)
!4397 = !DILexicalBlockFile(scope: !4355, file: !4345, discriminator: 27)
!4398 = !DILocation(line: 48, column: 13, scope: !4354)
!4399 = !DILocation(line: 71, column: 3, scope: !4344)
!4400 = distinct !DISubprogram(name: "locale_charset", scope: !643, file: !643, line: 393, type: !4401, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !299, variables: !4403)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!49}
!4403 = !{!4404, !4405, !4406, !4411}
!4404 = !DILocalVariable(name: "codeset", scope: !4400, file: !643, line: 395, type: !49)
!4405 = !DILocalVariable(name: "aliases", scope: !4400, file: !643, line: 396, type: !49)
!4406 = !DILocalVariable(name: "__s1_len", scope: !4407, file: !643, line: 592, type: !41)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !643, line: 592, column: 9)
!4408 = distinct !DILexicalBlock(scope: !4409, file: !643, line: 592, column: 9)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !643, line: 589, column: 3)
!4410 = distinct !DILexicalBlock(scope: !4400, file: !643, line: 589, column: 3)
!4411 = !DILocalVariable(name: "__s2_len", scope: !4407, file: !643, line: 592, type: !41)
!4412 = !DILocalVariable(name: "buf1", scope: !4413, file: !643, line: 196, type: !4480)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !643, line: 194, column: 21)
!4414 = distinct !DILexicalBlock(scope: !4415, file: !643, line: 193, column: 19)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !643, line: 193, column: 19)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !643, line: 188, column: 17)
!4417 = distinct !DILexicalBlock(scope: !4418, file: !643, line: 181, column: 19)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !643, line: 177, column: 13)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !643, line: 173, column: 15)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !643, line: 161, column: 9)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !643, line: 157, column: 11)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !643, line: 130, column: 5)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !643, line: 129, column: 7)
!4424 = distinct !DISubprogram(name: "get_charset_aliases", scope: !643, file: !643, line: 124, type: !4401, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !299, variables: !4425)
!4425 = !{!4426, !4427, !4428, !4429, !4430, !4432, !4433, !4434, !4435, !4476, !4477, !4478, !4412, !4479, !4483, !4484, !4485}
!4426 = !DILocalVariable(name: "cp", scope: !4424, file: !643, line: 126, type: !49)
!4427 = !DILocalVariable(name: "dir", scope: !4422, file: !643, line: 132, type: !49)
!4428 = !DILocalVariable(name: "base", scope: !4422, file: !643, line: 133, type: !49)
!4429 = !DILocalVariable(name: "file_name", scope: !4422, file: !643, line: 134, type: !8)
!4430 = !DILocalVariable(name: "dir_len", scope: !4431, file: !643, line: 144, type: !41)
!4431 = distinct !DILexicalBlock(scope: !4422, file: !643, line: 143, column: 7)
!4432 = !DILocalVariable(name: "base_len", scope: !4431, file: !643, line: 145, type: !41)
!4433 = !DILocalVariable(name: "add_slash", scope: !4431, file: !643, line: 146, type: !6)
!4434 = !DILocalVariable(name: "fd", scope: !4420, file: !643, line: 162, type: !6)
!4435 = !DILocalVariable(name: "fp", scope: !4418, file: !643, line: 178, type: !4436)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1571, line: 49, baseType: !4438)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1592, line: 241, size: 1728, elements: !4439)
!4439 = !{!4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4438, file: !1592, line: 242, baseType: !6, size: 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4438, file: !1592, line: 247, baseType: !8, size: 64, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4438, file: !1592, line: 248, baseType: !8, size: 64, offset: 128)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4438, file: !1592, line: 249, baseType: !8, size: 64, offset: 192)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4438, file: !1592, line: 250, baseType: !8, size: 64, offset: 256)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4438, file: !1592, line: 251, baseType: !8, size: 64, offset: 320)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4438, file: !1592, line: 252, baseType: !8, size: 64, offset: 384)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4438, file: !1592, line: 253, baseType: !8, size: 64, offset: 448)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4438, file: !1592, line: 254, baseType: !8, size: 64, offset: 512)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4438, file: !1592, line: 256, baseType: !8, size: 64, offset: 576)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4438, file: !1592, line: 257, baseType: !8, size: 64, offset: 640)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4438, file: !1592, line: 258, baseType: !8, size: 64, offset: 704)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4438, file: !1592, line: 260, baseType: !4453, size: 64, offset: 768)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1592, line: 156, size: 192, elements: !4455)
!4455 = !{!4456, !4457, !4459}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4454, file: !1592, line: 157, baseType: !4453, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4454, file: !1592, line: 158, baseType: !4458, size: 64, offset: 64)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4454, file: !1592, line: 162, baseType: !6, size: 32, offset: 128)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4438, file: !1592, line: 262, baseType: !4458, size: 64, offset: 832)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4438, file: !1592, line: 264, baseType: !6, size: 32, offset: 896)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4438, file: !1592, line: 268, baseType: !6, size: 32, offset: 928)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4438, file: !1592, line: 270, baseType: !139, size: 64, offset: 960)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4438, file: !1592, line: 274, baseType: !247, size: 16, offset: 1024)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4438, file: !1592, line: 275, baseType: !1620, size: 8, offset: 1040)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4438, file: !1592, line: 276, baseType: !1622, size: 8, offset: 1048)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4438, file: !1592, line: 280, baseType: !1626, size: 64, offset: 1088)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4438, file: !1592, line: 289, baseType: !1629, size: 64, offset: 1152)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4438, file: !1592, line: 297, baseType: !40, size: 64, offset: 1216)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4438, file: !1592, line: 298, baseType: !40, size: 64, offset: 1280)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4438, file: !1592, line: 299, baseType: !40, size: 64, offset: 1344)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4438, file: !1592, line: 300, baseType: !40, size: 64, offset: 1408)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4438, file: !1592, line: 302, baseType: !41, size: 64, offset: 1472)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4438, file: !1592, line: 303, baseType: !6, size: 32, offset: 1536)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4438, file: !1592, line: 305, baseType: !94, size: 160, offset: 1568)
!4476 = !DILocalVariable(name: "res_ptr", scope: !4416, file: !643, line: 190, type: !8)
!4477 = !DILocalVariable(name: "res_size", scope: !4416, file: !643, line: 191, type: !41)
!4478 = !DILocalVariable(name: "c", scope: !4413, file: !643, line: 195, type: !6)
!4479 = !DILocalVariable(name: "buf2", scope: !4413, file: !643, line: 197, type: !4480)
!4480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 408, elements: !4481)
!4481 = !{!4482}
!4482 = !DISubrange(count: 51)
!4483 = !DILocalVariable(name: "l1", scope: !4413, file: !643, line: 198, type: !41)
!4484 = !DILocalVariable(name: "l2", scope: !4413, file: !643, line: 198, type: !41)
!4485 = !DILocalVariable(name: "old_res_ptr", scope: !4413, file: !643, line: 199, type: !8)
!4486 = !DILocation(line: 196, column: 28, scope: !4413, inlinedAt: !4487)
!4487 = distinct !DILocation(line: 589, column: 18, scope: !4410)
!4488 = !DILocation(line: 197, column: 28, scope: !4413, inlinedAt: !4487)
!4489 = !DILocation(line: 403, column: 13, scope: !4400)
!4490 = !DILocation(line: 395, column: 15, scope: !4400)
!4491 = !DILocation(line: 584, column: 15, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4400, file: !643, line: 584, column: 7)
!4493 = !DILocation(line: 584, column: 7, scope: !4400)
!4494 = !DILocation(line: 128, column: 8, scope: !4424, inlinedAt: !4487)
!4495 = !DILocation(line: 126, column: 15, scope: !4424, inlinedAt: !4487)
!4496 = !DILocation(line: 129, column: 10, scope: !4423, inlinedAt: !4487)
!4497 = !DILocation(line: 129, column: 7, scope: !4424, inlinedAt: !4487)
!4498 = !DILocation(line: 138, column: 13, scope: !4422, inlinedAt: !4487)
!4499 = !DILocation(line: 132, column: 19, scope: !4422, inlinedAt: !4487)
!4500 = !DILocation(line: 139, column: 15, scope: !4501, inlinedAt: !4487)
!4501 = distinct !DILexicalBlock(scope: !4422, file: !643, line: 139, column: 11)
!4502 = !DILocation(line: 139, column: 23, scope: !4501, inlinedAt: !4487)
!4503 = !DILocation(line: 139, column: 26, scope: !4504, inlinedAt: !4487)
!4504 = !DILexicalBlockFile(scope: !4501, file: !643, discriminator: 1)
!4505 = !DILocation(line: 139, column: 33, scope: !4504, inlinedAt: !4487)
!4506 = !DILocation(line: 139, column: 11, scope: !4507, inlinedAt: !4487)
!4507 = !DILexicalBlockFile(scope: !4422, file: !643, discriminator: 1)
!4508 = !DILocation(line: 140, column: 9, scope: !4501, inlinedAt: !4487)
!4509 = !DILocation(line: 144, column: 26, scope: !4431, inlinedAt: !4487)
!4510 = !DILocation(line: 144, column: 16, scope: !4431, inlinedAt: !4487)
!4511 = !DILocation(line: 145, column: 16, scope: !4431, inlinedAt: !4487)
!4512 = !DILocation(line: 146, column: 34, scope: !4431, inlinedAt: !4487)
!4513 = !DILocation(line: 146, column: 38, scope: !4431, inlinedAt: !4487)
!4514 = !DILocation(line: 146, column: 42, scope: !4515, inlinedAt: !4487)
!4515 = !DILexicalBlockFile(scope: !4431, file: !643, discriminator: 1)
!4516 = !DILocation(line: 146, column: 41, scope: !4515, inlinedAt: !4487)
!4517 = !DILocation(line: 147, column: 48, scope: !4431, inlinedAt: !4487)
!4518 = !DILocation(line: 147, column: 46, scope: !4431, inlinedAt: !4487)
!4519 = !DILocation(line: 147, column: 69, scope: !4431, inlinedAt: !4487)
!4520 = !DILocation(line: 147, column: 30, scope: !4431, inlinedAt: !4487)
!4521 = !DILocation(line: 134, column: 13, scope: !4422, inlinedAt: !4487)
!4522 = !DILocation(line: 148, column: 13, scope: !4431, inlinedAt: !4487)
!4523 = !DILocation(line: 150, column: 13, scope: !4524, inlinedAt: !4487)
!4524 = distinct !DILexicalBlock(scope: !4525, file: !643, line: 149, column: 11)
!4525 = distinct !DILexicalBlock(scope: !4431, file: !643, line: 148, column: 13)
!4526 = !DILocation(line: 151, column: 17, scope: !4524, inlinedAt: !4487)
!4527 = !DILocation(line: 152, column: 34, scope: !4528, inlinedAt: !4487)
!4528 = distinct !DILexicalBlock(scope: !4524, file: !643, line: 151, column: 17)
!4529 = !DILocation(line: 153, column: 41, scope: !4524, inlinedAt: !4487)
!4530 = !DILocation(line: 153, column: 13, scope: !4524, inlinedAt: !4487)
!4531 = !DILocation(line: 157, column: 11, scope: !4422, inlinedAt: !4487)
!4532 = !DILocation(line: 171, column: 16, scope: !4420, inlinedAt: !4487)
!4533 = !DILocation(line: 162, column: 15, scope: !4420, inlinedAt: !4487)
!4534 = !DILocation(line: 173, column: 18, scope: !4419, inlinedAt: !4487)
!4535 = !DILocation(line: 173, column: 15, scope: !4420, inlinedAt: !4487)
!4536 = !DILocation(line: 180, column: 20, scope: !4418, inlinedAt: !4487)
!4537 = !DILocation(line: 178, column: 21, scope: !4418, inlinedAt: !4487)
!4538 = !DILocation(line: 181, column: 22, scope: !4417, inlinedAt: !4487)
!4539 = !DILocation(line: 181, column: 19, scope: !4418, inlinedAt: !4487)
!4540 = !DILocation(line: 190, column: 25, scope: !4416, inlinedAt: !4487)
!4541 = !DILocation(line: 184, column: 19, scope: !4542, inlinedAt: !4487)
!4542 = distinct !DILexicalBlock(scope: !4417, file: !643, line: 182, column: 17)
!4543 = !DILocation(line: 186, column: 17, scope: !4542, inlinedAt: !4487)
!4544 = !DILocation(line: 191, column: 26, scope: !4416, inlinedAt: !4487)
!4545 = !DILocation(line: 196, column: 23, scope: !4413, inlinedAt: !4487)
!4546 = !DILocation(line: 197, column: 23, scope: !4413, inlinedAt: !4487)
!4547 = !DILocalVariable(name: "__fp", arg: 1, scope: !4548, file: !4320, line: 63, type: !4436)
!4548 = distinct !DISubprogram(name: "getc_unlocked", scope: !4320, file: !4320, line: 63, type: !4549, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !299, variables: !4551)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!6, !4436}
!4551 = !{!4547}
!4552 = !DILocation(line: 63, column: 22, scope: !4548, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 201, column: 27, scope: !4413, inlinedAt: !4487)
!4554 = !DILocation(line: 65, column: 10, scope: !4548, inlinedAt: !4553)
!4555 = !{!4326, !748, i64 8}
!4556 = !{!4326, !748, i64 16}
!4557 = !{!"branch_weights", i32 2000, i32 1}
!4558 = !DILocation(line: 65, column: 10, scope: !4559, inlinedAt: !4553)
!4559 = !DILexicalBlockFile(scope: !4548, file: !4320, discriminator: 1)
!4560 = !DILocation(line: 65, column: 10, scope: !4561, inlinedAt: !4553)
!4561 = !DILexicalBlockFile(scope: !4548, file: !4320, discriminator: 2)
!4562 = !DILocation(line: 65, column: 10, scope: !4563, inlinedAt: !4553)
!4563 = !DILexicalBlockFile(scope: !4548, file: !4320, discriminator: 3)
!4564 = !DILocation(line: 195, column: 27, scope: !4413, inlinedAt: !4487)
!4565 = !DILocation(line: 202, column: 27, scope: !4413, inlinedAt: !4487)
!4566 = !DILocation(line: 63, column: 22, scope: !4548, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 210, column: 33, scope: !4568, inlinedAt: !4487)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !643, line: 207, column: 25)
!4569 = distinct !DILexicalBlock(scope: !4413, file: !643, line: 206, column: 27)
!4570 = !DILocation(line: 65, column: 10, scope: !4548, inlinedAt: !4567)
!4571 = !DILocation(line: 65, column: 10, scope: !4559, inlinedAt: !4567)
!4572 = !DILocation(line: 65, column: 10, scope: !4561, inlinedAt: !4567)
!4573 = !DILocation(line: 65, column: 10, scope: !4563, inlinedAt: !4567)
!4574 = !DILocation(line: 210, column: 29, scope: !4575, inlinedAt: !4487)
!4575 = !DILexicalBlockFile(scope: !4568, file: !643, discriminator: 1)
!4576 = distinct !{!4576, !4577, !4578}
!4577 = !DILocation(line: 193, column: 19, scope: !4415)
!4578 = !DILocation(line: 241, column: 21, scope: !4415)
!4579 = !DILocation(line: 216, column: 23, scope: !4413, inlinedAt: !4487)
!4580 = !DILocation(line: 217, column: 27, scope: !4581, inlinedAt: !4487)
!4581 = distinct !DILexicalBlock(scope: !4413, file: !643, line: 217, column: 27)
!4582 = !DILocation(line: 217, column: 64, scope: !4581, inlinedAt: !4487)
!4583 = !DILocation(line: 217, column: 27, scope: !4413, inlinedAt: !4487)
!4584 = !DILocation(line: 219, column: 28, scope: !4413, inlinedAt: !4487)
!4585 = !DILocation(line: 198, column: 30, scope: !4413, inlinedAt: !4487)
!4586 = !DILocation(line: 220, column: 28, scope: !4413, inlinedAt: !4487)
!4587 = !DILocation(line: 198, column: 34, scope: !4413, inlinedAt: !4487)
!4588 = !DILocation(line: 199, column: 29, scope: !4413, inlinedAt: !4487)
!4589 = !DILocation(line: 222, column: 36, scope: !4590, inlinedAt: !4487)
!4590 = distinct !DILexicalBlock(scope: !4413, file: !643, line: 222, column: 27)
!4591 = !DILocation(line: 222, column: 27, scope: !4413, inlinedAt: !4487)
!4592 = !DILocation(line: 225, column: 63, scope: !4593, inlinedAt: !4487)
!4593 = distinct !DILexicalBlock(scope: !4590, file: !643, line: 223, column: 25)
!4594 = !DILocation(line: 225, column: 46, scope: !4593, inlinedAt: !4487)
!4595 = !DILocation(line: 226, column: 25, scope: !4593, inlinedAt: !4487)
!4596 = !DILocation(line: 229, column: 36, scope: !4597, inlinedAt: !4487)
!4597 = distinct !DILexicalBlock(scope: !4590, file: !643, line: 228, column: 25)
!4598 = !DILocation(line: 230, column: 73, scope: !4597, inlinedAt: !4487)
!4599 = !DILocation(line: 230, column: 46, scope: !4597, inlinedAt: !4487)
!4600 = !DILocation(line: 232, column: 35, scope: !4601, inlinedAt: !4487)
!4601 = distinct !DILexicalBlock(scope: !4413, file: !643, line: 232, column: 27)
!4602 = !DILocation(line: 232, column: 27, scope: !4413, inlinedAt: !4487)
!4603 = !DILocation(line: 236, column: 27, scope: !4604, inlinedAt: !4487)
!4604 = distinct !DILexicalBlock(scope: !4601, file: !643, line: 233, column: 25)
!4605 = !DILocation(line: 237, column: 27, scope: !4604, inlinedAt: !4487)
!4606 = !DILocation(line: 239, column: 39, scope: !4413, inlinedAt: !4487)
!4607 = !DILocation(line: 239, column: 50, scope: !4413, inlinedAt: !4487)
!4608 = !DILocation(line: 239, column: 61, scope: !4413, inlinedAt: !4487)
!4609 = !DILocalVariable(name: "__dest", arg: 1, scope: !4610, file: !1312, line: 107, type: !1315)
!4610 = distinct !DISubprogram(name: "strcpy", scope: !1312, file: !1312, line: 107, type: !1313, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !299, variables: !4611)
!4611 = !{!4609, !4612}
!4612 = !DILocalVariable(name: "__src", arg: 2, scope: !4610, file: !1312, line: 107, type: !1316)
!4613 = !DILocation(line: 107, column: 1, scope: !4610, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 239, column: 23, scope: !4413, inlinedAt: !4487)
!4615 = !DILocation(line: 109, column: 49, scope: !4610, inlinedAt: !4614)
!4616 = !DILocation(line: 109, column: 10, scope: !4610, inlinedAt: !4614)
!4617 = !DILocation(line: 107, column: 1, scope: !4610, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 240, column: 23, scope: !4413, inlinedAt: !4487)
!4619 = !DILocation(line: 109, column: 49, scope: !4610, inlinedAt: !4618)
!4620 = !DILocation(line: 109, column: 10, scope: !4610, inlinedAt: !4618)
!4621 = !DILocation(line: 241, column: 21, scope: !4414, inlinedAt: !4487)
!4622 = !DILocation(line: 242, column: 19, scope: !4416, inlinedAt: !4487)
!4623 = !DILocation(line: 243, column: 32, scope: !4624, inlinedAt: !4487)
!4624 = distinct !DILexicalBlock(scope: !4416, file: !643, line: 243, column: 23)
!4625 = !DILocation(line: 243, column: 23, scope: !4416, inlinedAt: !4487)
!4626 = !DILocation(line: 247, column: 33, scope: !4627, inlinedAt: !4487)
!4627 = distinct !DILexicalBlock(scope: !4624, file: !643, line: 246, column: 21)
!4628 = !DILocation(line: 247, column: 45, scope: !4627, inlinedAt: !4487)
!4629 = !DILocation(line: 253, column: 11, scope: !4420, inlinedAt: !4487)
!4630 = !DILocation(line: 377, column: 23, scope: !4422, inlinedAt: !4487)
!4631 = !DILocation(line: 378, column: 5, scope: !4422, inlinedAt: !4487)
!4632 = !DILocation(line: 396, column: 15, scope: !4400)
!4633 = !DILocation(line: 590, column: 8, scope: !4409)
!4634 = !DILocation(line: 590, column: 17, scope: !4409)
!4635 = !DILocation(line: 589, column: 3, scope: !4636)
!4636 = !DILexicalBlockFile(scope: !4410, file: !643, discriminator: 1)
!4637 = !DILocation(line: 592, column: 9, scope: !4407)
!4638 = !DILocation(line: 592, column: 35, scope: !4408)
!4639 = !DILocation(line: 593, column: 9, scope: !4408)
!4640 = !DILocation(line: 593, column: 24, scope: !4641)
!4641 = !DILexicalBlockFile(scope: !4408, file: !643, discriminator: 1)
!4642 = !DILocation(line: 593, column: 31, scope: !4641)
!4643 = !DILocation(line: 593, column: 34, scope: !4644)
!4644 = !DILexicalBlockFile(scope: !4408, file: !643, discriminator: 2)
!4645 = !DILocation(line: 593, column: 45, scope: !4644)
!4646 = !DILocation(line: 592, column: 9, scope: !4647)
!4647 = !DILexicalBlockFile(scope: !4409, file: !643, discriminator: 1)
!4648 = !DILocation(line: 595, column: 29, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4408, file: !643, line: 594, column: 7)
!4650 = !DILocation(line: 595, column: 27, scope: !4649)
!4651 = !DILocation(line: 595, column: 46, scope: !4649)
!4652 = !DILocation(line: 596, column: 9, scope: !4649)
!4653 = !DILocation(line: 591, column: 19, scope: !4409)
!4654 = !DILocation(line: 591, column: 36, scope: !4409)
!4655 = !DILocation(line: 591, column: 16, scope: !4409)
!4656 = !DILocation(line: 591, column: 52, scope: !4647)
!4657 = !DILocation(line: 591, column: 69, scope: !4409)
!4658 = !DILocation(line: 591, column: 49, scope: !4409)
!4659 = distinct !{!4659, !4660, !4661}
!4660 = !DILocation(line: 589, column: 3, scope: !4410)
!4661 = !DILocation(line: 597, column: 7, scope: !4410)
!4662 = !DILocation(line: 602, column: 7, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4400, file: !643, line: 602, column: 7)
!4664 = !DILocation(line: 602, column: 18, scope: !4663)
!4665 = !DILocation(line: 602, column: 7, scope: !4400)
!4666 = !DILocation(line: 612, column: 3, scope: !4400)
!4667 = distinct !DISubprogram(name: "rpl_fclose", scope: !4668, file: !4668, line: 56, type: !4669, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !723, variables: !4711)
!4668 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!6, !4671}
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1571, line: 49, baseType: !4673)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1592, line: 241, size: 1728, elements: !4674)
!4674 = !{!4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4673, file: !1592, line: 242, baseType: !6, size: 32)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4673, file: !1592, line: 247, baseType: !8, size: 64, offset: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4673, file: !1592, line: 248, baseType: !8, size: 64, offset: 128)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4673, file: !1592, line: 249, baseType: !8, size: 64, offset: 192)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4673, file: !1592, line: 250, baseType: !8, size: 64, offset: 256)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4673, file: !1592, line: 251, baseType: !8, size: 64, offset: 320)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4673, file: !1592, line: 252, baseType: !8, size: 64, offset: 384)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4673, file: !1592, line: 253, baseType: !8, size: 64, offset: 448)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4673, file: !1592, line: 254, baseType: !8, size: 64, offset: 512)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4673, file: !1592, line: 256, baseType: !8, size: 64, offset: 576)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4673, file: !1592, line: 257, baseType: !8, size: 64, offset: 640)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4673, file: !1592, line: 258, baseType: !8, size: 64, offset: 704)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4673, file: !1592, line: 260, baseType: !4688, size: 64, offset: 768)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1592, line: 156, size: 192, elements: !4690)
!4690 = !{!4691, !4692, !4694}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4689, file: !1592, line: 157, baseType: !4688, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4689, file: !1592, line: 158, baseType: !4693, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4689, file: !1592, line: 162, baseType: !6, size: 32, offset: 128)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4673, file: !1592, line: 262, baseType: !4693, size: 64, offset: 832)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4673, file: !1592, line: 264, baseType: !6, size: 32, offset: 896)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4673, file: !1592, line: 268, baseType: !6, size: 32, offset: 928)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4673, file: !1592, line: 270, baseType: !139, size: 64, offset: 960)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4673, file: !1592, line: 274, baseType: !247, size: 16, offset: 1024)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4673, file: !1592, line: 275, baseType: !1620, size: 8, offset: 1040)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4673, file: !1592, line: 276, baseType: !1622, size: 8, offset: 1048)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4673, file: !1592, line: 280, baseType: !1626, size: 64, offset: 1088)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4673, file: !1592, line: 289, baseType: !1629, size: 64, offset: 1152)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4673, file: !1592, line: 297, baseType: !40, size: 64, offset: 1216)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4673, file: !1592, line: 298, baseType: !40, size: 64, offset: 1280)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4673, file: !1592, line: 299, baseType: !40, size: 64, offset: 1344)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4673, file: !1592, line: 300, baseType: !40, size: 64, offset: 1408)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4673, file: !1592, line: 302, baseType: !41, size: 64, offset: 1472)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4673, file: !1592, line: 303, baseType: !6, size: 32, offset: 1536)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4673, file: !1592, line: 305, baseType: !94, size: 160, offset: 1568)
!4711 = !{!4712, !4713, !4714, !4715}
!4712 = !DILocalVariable(name: "fp", arg: 1, scope: !4667, file: !4668, line: 56, type: !4671)
!4713 = !DILocalVariable(name: "saved_errno", scope: !4667, file: !4668, line: 58, type: !6)
!4714 = !DILocalVariable(name: "fd", scope: !4667, file: !4668, line: 59, type: !6)
!4715 = !DILocalVariable(name: "result", scope: !4667, file: !4668, line: 60, type: !6)
!4716 = !DILocation(line: 56, column: 19, scope: !4667)
!4717 = !DILocation(line: 58, column: 7, scope: !4667)
!4718 = !DILocation(line: 60, column: 7, scope: !4667)
!4719 = !DILocation(line: 63, column: 8, scope: !4667)
!4720 = !DILocation(line: 59, column: 7, scope: !4667)
!4721 = !DILocation(line: 64, column: 10, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4667, file: !4668, line: 64, column: 7)
!4723 = !DILocation(line: 64, column: 7, scope: !4667)
!4724 = !DILocation(line: 65, column: 12, scope: !4722)
!4725 = !DILocation(line: 65, column: 5, scope: !4722)
!4726 = !DILocation(line: 70, column: 9, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4667, file: !4668, line: 70, column: 7)
!4728 = !DILocation(line: 70, column: 23, scope: !4727)
!4729 = !DILocation(line: 70, column: 33, scope: !4730)
!4730 = !DILexicalBlockFile(scope: !4727, file: !4668, discriminator: 1)
!4731 = !DILocation(line: 70, column: 26, scope: !4732)
!4732 = !DILexicalBlockFile(scope: !4727, file: !4668, discriminator: 3)
!4733 = !DILocation(line: 70, column: 59, scope: !4730)
!4734 = !DILocation(line: 71, column: 7, scope: !4727)
!4735 = !DILocation(line: 71, column: 10, scope: !4730)
!4736 = !DILocation(line: 70, column: 7, scope: !4737)
!4737 = !DILexicalBlockFile(scope: !4667, file: !4668, discriminator: 2)
!4738 = !DILocation(line: 98, column: 12, scope: !4667)
!4739 = !DILocation(line: 103, column: 7, scope: !4667)
!4740 = !DILocation(line: 72, column: 19, scope: !4727)
!4741 = !DILocation(line: 103, column: 19, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4667, file: !4668, line: 103, column: 7)
!4743 = !DILocation(line: 105, column: 13, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4742, file: !4668, line: 104, column: 5)
!4745 = !DILocation(line: 107, column: 5, scope: !4744)
!4746 = !DILocation(line: 110, column: 1, scope: !4667)
!4747 = distinct !DISubprogram(name: "rpl_fflush", scope: !4748, file: !4748, line: 127, type: !4749, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !725, variables: !4791)
!4748 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!6, !4751}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1571, line: 49, baseType: !4753)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1592, line: 241, size: 1728, elements: !4754)
!4754 = !{!4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4753, file: !1592, line: 242, baseType: !6, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4753, file: !1592, line: 247, baseType: !8, size: 64, offset: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4753, file: !1592, line: 248, baseType: !8, size: 64, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4753, file: !1592, line: 249, baseType: !8, size: 64, offset: 192)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4753, file: !1592, line: 250, baseType: !8, size: 64, offset: 256)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4753, file: !1592, line: 251, baseType: !8, size: 64, offset: 320)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4753, file: !1592, line: 252, baseType: !8, size: 64, offset: 384)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4753, file: !1592, line: 253, baseType: !8, size: 64, offset: 448)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4753, file: !1592, line: 254, baseType: !8, size: 64, offset: 512)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4753, file: !1592, line: 256, baseType: !8, size: 64, offset: 576)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4753, file: !1592, line: 257, baseType: !8, size: 64, offset: 640)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4753, file: !1592, line: 258, baseType: !8, size: 64, offset: 704)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4753, file: !1592, line: 260, baseType: !4768, size: 64, offset: 768)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1592, line: 156, size: 192, elements: !4770)
!4770 = !{!4771, !4772, !4774}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4769, file: !1592, line: 157, baseType: !4768, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4769, file: !1592, line: 158, baseType: !4773, size: 64, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4769, file: !1592, line: 162, baseType: !6, size: 32, offset: 128)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4753, file: !1592, line: 262, baseType: !4773, size: 64, offset: 832)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4753, file: !1592, line: 264, baseType: !6, size: 32, offset: 896)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4753, file: !1592, line: 268, baseType: !6, size: 32, offset: 928)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4753, file: !1592, line: 270, baseType: !139, size: 64, offset: 960)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4753, file: !1592, line: 274, baseType: !247, size: 16, offset: 1024)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4753, file: !1592, line: 275, baseType: !1620, size: 8, offset: 1040)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4753, file: !1592, line: 276, baseType: !1622, size: 8, offset: 1048)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4753, file: !1592, line: 280, baseType: !1626, size: 64, offset: 1088)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4753, file: !1592, line: 289, baseType: !1629, size: 64, offset: 1152)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4753, file: !1592, line: 297, baseType: !40, size: 64, offset: 1216)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4753, file: !1592, line: 298, baseType: !40, size: 64, offset: 1280)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4753, file: !1592, line: 299, baseType: !40, size: 64, offset: 1344)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4753, file: !1592, line: 300, baseType: !40, size: 64, offset: 1408)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4753, file: !1592, line: 302, baseType: !41, size: 64, offset: 1472)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4753, file: !1592, line: 303, baseType: !6, size: 32, offset: 1536)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4753, file: !1592, line: 305, baseType: !94, size: 160, offset: 1568)
!4791 = !{!4792}
!4792 = !DILocalVariable(name: "stream", arg: 1, scope: !4747, file: !4748, line: 127, type: !4751)
!4793 = !DILocation(line: 127, column: 19, scope: !4747)
!4794 = !DILocation(line: 148, column: 14, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4747, file: !4748, line: 148, column: 7)
!4796 = !DILocation(line: 148, column: 22, scope: !4795)
!4797 = !DILocation(line: 148, column: 27, scope: !4798)
!4798 = !DILexicalBlockFile(scope: !4795, file: !4748, discriminator: 1)
!4799 = !DILocation(line: 148, column: 7, scope: !4800)
!4800 = !DILexicalBlockFile(scope: !4747, file: !4748, discriminator: 1)
!4801 = !DILocation(line: 149, column: 12, scope: !4795)
!4802 = !DILocation(line: 149, column: 5, scope: !4795)
!4803 = !DILocalVariable(name: "fp", arg: 1, scope: !4804, file: !4748, line: 40, type: !4751)
!4804 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4748, file: !4748, line: 40, type: !4805, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !725, variables: !4807)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{null, !4751}
!4807 = !{!4803}
!4808 = !DILocation(line: 40, column: 48, scope: !4804, inlinedAt: !4809)
!4809 = distinct !DILocation(line: 153, column: 3, scope: !4747)
!4810 = !DILocation(line: 42, column: 11, scope: !4811, inlinedAt: !4809)
!4811 = distinct !DILexicalBlock(scope: !4804, file: !4748, line: 42, column: 7)
!4812 = !DILocation(line: 42, column: 18, scope: !4811, inlinedAt: !4809)
!4813 = !DILocation(line: 42, column: 7, scope: !4804, inlinedAt: !4809)
!4814 = !DILocation(line: 44, column: 5, scope: !4811, inlinedAt: !4809)
!4815 = !DILocation(line: 155, column: 10, scope: !4747)
!4816 = !DILocation(line: 155, column: 3, scope: !4747)
!4817 = !DILocation(line: 229, column: 1, scope: !4747)
!4818 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4819, file: !4819, line: 28, type: !4820, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !727, variables: !4862)
!4819 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!6, !4822, !1570, !6}
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1571, line: 49, baseType: !4824)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1592, line: 241, size: 1728, elements: !4825)
!4825 = !{!4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4824, file: !1592, line: 242, baseType: !6, size: 32)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4824, file: !1592, line: 247, baseType: !8, size: 64, offset: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4824, file: !1592, line: 248, baseType: !8, size: 64, offset: 128)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4824, file: !1592, line: 249, baseType: !8, size: 64, offset: 192)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4824, file: !1592, line: 250, baseType: !8, size: 64, offset: 256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4824, file: !1592, line: 251, baseType: !8, size: 64, offset: 320)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4824, file: !1592, line: 252, baseType: !8, size: 64, offset: 384)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4824, file: !1592, line: 253, baseType: !8, size: 64, offset: 448)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4824, file: !1592, line: 254, baseType: !8, size: 64, offset: 512)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4824, file: !1592, line: 256, baseType: !8, size: 64, offset: 576)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4824, file: !1592, line: 257, baseType: !8, size: 64, offset: 640)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4824, file: !1592, line: 258, baseType: !8, size: 64, offset: 704)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4824, file: !1592, line: 260, baseType: !4839, size: 64, offset: 768)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1592, line: 156, size: 192, elements: !4841)
!4841 = !{!4842, !4843, !4845}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4840, file: !1592, line: 157, baseType: !4839, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4840, file: !1592, line: 158, baseType: !4844, size: 64, offset: 64)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4840, file: !1592, line: 162, baseType: !6, size: 32, offset: 128)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4824, file: !1592, line: 262, baseType: !4844, size: 64, offset: 832)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4824, file: !1592, line: 264, baseType: !6, size: 32, offset: 896)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4824, file: !1592, line: 268, baseType: !6, size: 32, offset: 928)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4824, file: !1592, line: 270, baseType: !139, size: 64, offset: 960)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4824, file: !1592, line: 274, baseType: !247, size: 16, offset: 1024)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4824, file: !1592, line: 275, baseType: !1620, size: 8, offset: 1040)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4824, file: !1592, line: 276, baseType: !1622, size: 8, offset: 1048)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4824, file: !1592, line: 280, baseType: !1626, size: 64, offset: 1088)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4824, file: !1592, line: 289, baseType: !1629, size: 64, offset: 1152)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4824, file: !1592, line: 297, baseType: !40, size: 64, offset: 1216)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4824, file: !1592, line: 298, baseType: !40, size: 64, offset: 1280)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4824, file: !1592, line: 299, baseType: !40, size: 64, offset: 1344)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4824, file: !1592, line: 300, baseType: !40, size: 64, offset: 1408)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4824, file: !1592, line: 302, baseType: !41, size: 64, offset: 1472)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4824, file: !1592, line: 303, baseType: !6, size: 32, offset: 1536)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4824, file: !1592, line: 305, baseType: !94, size: 160, offset: 1568)
!4862 = !{!4863, !4864, !4865, !4866}
!4863 = !DILocalVariable(name: "fp", arg: 1, scope: !4818, file: !4819, line: 28, type: !4822)
!4864 = !DILocalVariable(name: "offset", arg: 2, scope: !4818, file: !4819, line: 28, type: !1570)
!4865 = !DILocalVariable(name: "whence", arg: 3, scope: !4818, file: !4819, line: 28, type: !6)
!4866 = !DILocalVariable(name: "pos", scope: !4867, file: !4819, line: 116, type: !1570)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !4819, line: 112, column: 5)
!4868 = distinct !DILexicalBlock(scope: !4818, file: !4819, line: 51, column: 7)
!4869 = !DILocation(line: 28, column: 15, scope: !4818)
!4870 = !DILocation(line: 28, column: 25, scope: !4818)
!4871 = !DILocation(line: 28, column: 37, scope: !4818)
!4872 = !DILocation(line: 51, column: 11, scope: !4868)
!4873 = !DILocation(line: 51, column: 31, scope: !4868)
!4874 = !DILocation(line: 51, column: 24, scope: !4868)
!4875 = !DILocation(line: 52, column: 7, scope: !4868)
!4876 = !DILocation(line: 52, column: 14, scope: !4877)
!4877 = !DILexicalBlockFile(scope: !4868, file: !4819, discriminator: 1)
!4878 = !{!4326, !748, i64 40}
!4879 = !DILocation(line: 52, column: 35, scope: !4877)
!4880 = !{!4326, !748, i64 32}
!4881 = !DILocation(line: 52, column: 28, scope: !4877)
!4882 = !DILocation(line: 53, column: 7, scope: !4868)
!4883 = !DILocation(line: 53, column: 14, scope: !4877)
!4884 = !{!4326, !748, i64 72}
!4885 = !DILocation(line: 53, column: 28, scope: !4877)
!4886 = !DILocation(line: 51, column: 7, scope: !4887)
!4887 = !DILexicalBlockFile(scope: !4818, file: !4819, discriminator: 1)
!4888 = !DILocation(line: 116, column: 26, scope: !4867)
!4889 = !DILocation(line: 116, column: 19, scope: !4890)
!4890 = !DILexicalBlockFile(scope: !4867, file: !4819, discriminator: 1)
!4891 = !DILocation(line: 116, column: 13, scope: !4867)
!4892 = !DILocation(line: 117, column: 15, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4867, file: !4819, line: 117, column: 11)
!4894 = !DILocation(line: 117, column: 11, scope: !4867)
!4895 = !DILocation(line: 127, column: 11, scope: !4867)
!4896 = !DILocation(line: 127, column: 18, scope: !4867)
!4897 = !DILocation(line: 128, column: 11, scope: !4867)
!4898 = !DILocation(line: 128, column: 19, scope: !4867)
!4899 = !{!4326, !879, i64 144}
!4900 = !DILocation(line: 159, column: 7, scope: !4867)
!4901 = !DILocation(line: 161, column: 10, scope: !4818)
!4902 = !DILocation(line: 161, column: 3, scope: !4818)
!4903 = !DILocation(line: 162, column: 1, scope: !4818)
